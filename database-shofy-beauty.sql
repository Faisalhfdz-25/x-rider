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
INSERT INTO `activations` VALUES (1,1,'oipCwuZm1pLe9rvpemxU5Dqyz1IrAAIp',1,'2024-04-26 03:16:11','2024-04-26 03:16:11','2024-04-26 03:16:11');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
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
INSERT INTO `announcements` VALUES (1,'Announcement 1','Enjoy free shipping on all orders over $99! Shop now and save on delivery costs.',0,NULL,NULL,0,1,'2024-04-26 10:16:25',NULL,1,'2024-04-26 03:16:25','2024-04-26 03:16:25'),(2,'Announcement 2','Need assistance? Our customer support is available 24/7 to help you with any questions or concerns.',0,NULL,NULL,0,1,'2024-04-26 10:16:25',NULL,1,'2024-04-26 03:16:25','2024-04-26 03:16:25'),(3,'Announcement 3','Shop with confidence! We offer a hassle-free 30 days return service for your peace of mind.',0,NULL,NULL,0,1,'2024-04-26 10:16:25',NULL,1,'2024-04-26 03:16:25','2024-04-26 03:16:25');
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
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Architecto quis praesentium eum. Sed doloremque repellat ipsa ipsum veniam enim.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-04-26 03:16:19','2024-04-26 03:16:19'),(2,'Fashion',0,'Animi itaque repellat autem assumenda delectus voluptatem enim quas. Officia adipisci fugit est. Commodi fugiat repellendus earum. Dolores aut debitis qui.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:16:19','2024-04-26 03:16:19'),(3,'Electronic',0,'Itaque voluptatem hic dolore nostrum rerum. Asperiores fugiat et distinctio sed ab molestiae magnam ad. Consequuntur eaque nemo saepe iure harum dolores soluta. Nemo ut tenetur id incidunt non amet.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:16:19','2024-04-26 03:16:19'),(4,'Commercial',0,'Soluta mollitia veritatis ratione necessitatibus. Earum exercitationem vitae aperiam magnam. Incidunt blanditiis accusantium blanditiis iste.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:16:19','2024-04-26 03:16:19'),(5,'Organic Fruits',0,'Et et sint a autem est. Qui aut sit ea omnis vel fugiat autem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:16:19','2024-04-26 03:16:19'),(6,'Ecological',0,'Molestiae libero voluptatem nulla reprehenderit. Voluptatem architecto quidem ut qui alias repellendus ut quam. Totam ut et dolorem et officiis adipisci.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-04-26 03:16:19','2024-04-26 03:16:19');
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
INSERT INTO `contacts` VALUES (1,'Ms. Ettie Heller II','barton.alysha@example.org','270-740-6619','9024 Wilderman Lake\nHarrisville, CO 78158-0855','Libero est et voluptatem sit sequi quia.','Consequatur et iusto amet reprehenderit omnis odio dolorem. Qui eveniet odit sunt atque eius. Placeat quia ipsa quibusdam asperiores dignissimos ab. Laborum voluptatem mollitia nihil et. Qui qui voluptas ipsa est fugiat. Maiores provident omnis odio repellendus aliquid odit. Eligendi quia nostrum ut debitis doloribus.',NULL,'read','2024-04-26 03:16:16','2024-04-26 03:16:16'),(2,'Al Herman','carlo.bradtke@example.net','404.427.4913','6110 Alden Mountains\nKendallbury, HI 57475','Facere nam magnam rem quisquam quia.','Inventore vel et aut velit hic. Quo voluptas est rerum laboriosam unde. Libero illo voluptates illum excepturi velit ipsum. Tempora libero et quasi omnis numquam. Rerum rerum quis illum enim quam qui enim. Nemo totam dolores tenetur perspiciatis est ipsum quia. Unde et nisi voluptatem culpa fuga qui iure. Error quos aut eum animi ut molestiae tempora. Aut quia est a sed quia veritatis. Fugiat cumque vel voluptatem laborum.',NULL,'read','2024-04-26 03:16:16','2024-04-26 03:16:16'),(3,'Chelsie Weimann','uabernathy@example.net','(920) 634-1788','772 Bauch Ramp\nStokesburgh, UT 26701-3036','Quas quia ut vero saepe.','Itaque mollitia nesciunt tempore ad ipsum fugit. Similique adipisci hic quos temporibus. At similique odio quo deserunt earum velit. Molestiae in neque ducimus asperiores non qui. Est quod molestias corporis in nihil enim impedit laborum. Sint doloremque nostrum laudantium. Repellat voluptates error omnis. Est atque quis perspiciatis sunt sapiente. Voluptas dolore repellat aspernatur doloremque. Nostrum ad ad optio consequatur a et.',NULL,'unread','2024-04-26 03:16:16','2024-04-26 03:16:16'),(4,'Savannah Koch','kihn.kameron@example.org','917.524.1187','146 Prosacco Lake Suite 194\nStiedemannberg, WV 74215','Dolores nemo sit quis cum.','Illum earum voluptas eos quis possimus consequuntur. Ducimus ea quibusdam beatae aut facere dolorem. Consequatur sint aliquam iure qui voluptatem expedita. Perferendis quia qui aut voluptatem tenetur enim voluptatibus. Iste enim est dignissimos. Ad nemo natus ea. Mollitia rerum animi aliquid aut. Nostrum aut eum voluptatem vitae. Quibusdam omnis delectus veniam dolorem. Amet sequi quis occaecati. Necessitatibus officia ad voluptas ab omnis eos veritatis.',NULL,'unread','2024-04-26 03:16:16','2024-04-26 03:16:16'),(5,'Demarco Prosacco','norma28@example.net','(443) 366-0489','329 Crawford Courts\nVincenzotown, MA 91348-7439','Ipsum perspiciatis et maiores ut ratione amet.','Error aperiam facere voluptatum accusantium provident nihil odit. Quisquam dolores quod nesciunt id esse. Unde omnis expedita voluptatem beatae dolorum nobis aperiam rem. Consequuntur sunt molestiae accusamus aperiam itaque sunt. Ducimus quis occaecati dolor aliquid. Animi necessitatibus vero voluptatum. Quo odit et ducimus. Odit doloribus sed vero. Consequuntur unde odit minima ut. Quas ut sit beatae. Nisi consequuntur rerum quis doloribus doloremque est est.',NULL,'unread','2024-04-26 03:16:16','2024-04-26 03:16:16'),(6,'Nelda Parker','tessie62@example.com','(848) 626-3433','892 Kunde Place\nWest Monty, MA 65437','Soluta sit voluptas ut.','Animi porro non est magnam iure inventore dicta sunt. Unde dolores eos recusandae quis. Debitis quasi similique deserunt sed. Repellat ea facere in rerum eaque. Sint voluptatem non suscipit est non deleniti maxime. Id voluptates id voluptate ipsam est. Est odit ipsa ut ea aliquam ipsam autem. Modi aut voluptatem omnis eligendi sed voluptatibus dignissimos. Quas velit rerum qui quo minus.',NULL,'read','2024-04-26 03:16:16','2024-04-26 03:16:16'),(7,'Dr. Bobbie Hills','lia.anderson@example.net','818.217.7532','1946 Parker Skyway Suite 223\nIsacmouth, NH 32567','Quasi est sed magnam laborum non.','Porro id at quia mollitia consequatur perspiciatis minus. Qui impedit voluptas est architecto esse. Ut et blanditiis reprehenderit culpa occaecati. At facere magnam velit et sit. Omnis et officia nobis. Quod ratione saepe incidunt qui sint odit quasi. Laboriosam sapiente dicta ut libero. Eligendi praesentium magnam quos. Et quasi enim debitis itaque tempora ratione. Explicabo qui omnis rerum. Porro dolores maiores eos sint et consequuntur. Nemo non veritatis rerum labore sequi ut id iusto.',NULL,'read','2024-04-26 03:16:16','2024-04-26 03:16:16'),(8,'Sienna Cassin III','adrian.mann@example.net','+1 (929) 556-7826','8635 Mann Cliff\nEast Jeanneborough, NH 43427','Ut eius voluptas sit consequatur.','Omnis consectetur nisi placeat sint accusantium dignissimos dolor. Repellendus blanditiis quaerat qui dolorem doloribus. Illum est officiis pariatur vel ex voluptate. Voluptatibus hic dolorem natus nam et sint voluptatem. Optio id itaque explicabo non praesentium ut. Fugit fuga aut ducimus neque id. Dicta quia nisi quia molestiae. Provident in consequuntur possimus saepe soluta rerum. Ut aut reprehenderit id dolor ea aut nihil. Officiis nihil cum eos sint.',NULL,'unread','2024-04-26 03:16:16','2024-04-26 03:16:16'),(9,'Florida Brown','schamberger.dorthy@example.com','737-323-6068','38270 Swift Ferry Apt. 404\nWest Priscillaton, NH 00081-8519','Amet est quisquam aperiam ea sequi dolorem iusto.','Qui ipsa reiciendis consequatur. Iste consequuntur in aut sit omnis id veritatis. Error sit provident voluptatem dolore corporis necessitatibus sed. At distinctio libero deserunt iusto. Alias consequatur iure quae veniam et magni. Ipsa ea commodi vero dolorem atque vel exercitationem. Ut ea sequi placeat impedit. Molestiae officia qui nihil quisquam ipsum quo odit. Eum animi esse fuga qui nihil. Quo placeat sit qui culpa fugit id.',NULL,'unread','2024-04-26 03:16:16','2024-04-26 03:16:16'),(10,'Amelie Pouros','brando.jacobson@example.com','+1-772-864-6437','175 Jessica Cliff Suite 933\nHicklechester, KS 84603-0372','Qui cum libero qui ipsum.','Quae at nostrum consequatur voluptatem. Qui tempora minima fugiat. Enim sunt deleniti et in velit error libero. Explicabo tempora accusantium culpa dolorem sapiente laborum neque. Eveniet maxime repudiandae tenetur neque accusantium. Nostrum ex et ut reiciendis praesentium. Reiciendis porro dolor est laborum corrupti.',NULL,'unread','2024-04-26 03:16:16','2024-04-26 03:16:16');
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
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2024-04-26 03:16:11','2024-04-26 03:16:11');
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
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(2,'EUR','€',0,2,1,0,0.84,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(3,'VND','₫',0,0,2,0,23203,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(4,'NGN','₦',1,2,2,0,895.52,'2024-04-26 03:16:11','2024-04-26 03:16:11');
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
INSERT INTO `ec_customer_addresses` VALUES (1,'Prof. Enoch Breitenberg','customer@botble.com','+14352286108','GL','Pennsylvania','Schoenshire','5797 Lauren Spur Apt. 595',1,1,'2024-04-26 03:16:12','2024-04-26 03:16:12','71626'),(2,'Prof. Enoch Breitenberg','customer@botble.com','+18542415937','PR','Hawaii','West Lamar','5647 Sheridan Curve',1,0,'2024-04-26 03:16:12','2024-04-26 03:16:12','55709-4949'),(3,'Dr. Caterina Batz Sr.','vendor@botble.com','+14343541938','AQ','New York','North Ezra','229 Bridie Loop Apt. 532',2,1,'2024-04-26 03:16:13','2024-04-26 03:16:13','86094-5538'),(4,'Dr. Caterina Batz Sr.','vendor@botble.com','+16692685618','LB','Alaska','East Jeromyhaven','8085 Theodore Forest Suite 443',2,0,'2024-04-26 03:16:13','2024-04-26 03:16:13','39069-1565'),(5,'Ole Torphy','prohaska.kyleigh@example.net','+15205528395','PA','Michigan','Serenamouth','756 Hessel Course',3,1,'2024-04-26 03:16:13','2024-04-26 03:16:13','53430'),(6,'Delbert Mitchell','leffler.maverick@example.org','+19529585426','KP','Connecticut','Felixchester','566 Verda Mountain',4,1,'2024-04-26 03:16:13','2024-04-26 03:16:13','71788-3640'),(7,'Imani Hand','joannie86@example.net','+13414892417','SC','Virginia','Lehnerchester','6327 Mckayla Knoll',5,1,'2024-04-26 03:16:14','2024-04-26 03:16:14','46072'),(8,'Kianna Feeney','lemke.marianna@example.org','+12154390491','PL','Hawaii','New Austin','1526 Adell Street',6,1,'2024-04-26 03:16:14','2024-04-26 03:16:14','35986'),(9,'Elta Towne','kcruickshank@example.org','+13306591066','TV','Oregon','Hauckshire','85651 Goldner Village',7,1,'2024-04-26 03:16:14','2024-04-26 03:16:14','17472-6010'),(10,'Ms. Sydnee Fisher','jude.legros@example.com','+14847962327','MD','Indiana','New Alden','6500 Schmidt Crescent',8,1,'2024-04-26 03:16:15','2024-04-26 03:16:15','08317'),(11,'Dr. Ronaldo Waelchi','marta.robel@example.net','+17547003630','BL','Michigan','New Tommieland','850 Stacy Gateway',9,1,'2024-04-26 03:16:15','2024-04-26 03:16:15','10751'),(12,'Ephraim Cummings','arch.kihn@example.net','+14588844865','TT','Alaska','New Spencerfort','20166 Arnoldo Plaza Apt. 083',10,1,'2024-04-26 03:16:15','2024-04-26 03:16:15','16741');
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
INSERT INTO `ec_customers` VALUES (1,'Prof. Enoch Breitenberg','customer@botble.com','$2y$12$7NtIFbKrahIiV9LgtAqnn..085PY45IIbz.3nIDkVjbVvtOSZcq2O','main/customers/10.jpg','1991-04-13','+13044323336',NULL,'2024-04-26 03:16:12','2024-04-26 03:16:12','2024-04-26 10:16:12',NULL,0,NULL,'activated',NULL),(2,'Dr. Caterina Batz Sr.','vendor@botble.com','$2y$12$1P5hgLST9zvSTzt1JNgT6eCzYuvgFn8zZ0bZy8SNecraqtHAQ5p66','main/customers/3.jpg','1976-04-21','+19098882874',NULL,'2024-04-26 03:16:13','2024-04-26 03:16:22','2024-04-26 10:16:12',NULL,1,'2024-04-26 10:16:22','activated',NULL),(3,'Ole Torphy','prohaska.kyleigh@example.net','$2y$12$plQMoA6QUWFkXshQSLUIJeghoNe3NvhvDpsFiIw3CtpJjclHCEho6','main/customers/1.jpg','1985-04-25','+12489574766',NULL,'2024-04-26 03:16:13','2024-04-26 03:16:23','2024-04-26 10:16:12',NULL,1,'2024-04-26 10:16:22','activated',NULL),(4,'Delbert Mitchell','leffler.maverick@example.org','$2y$12$LJs.edSDL9LEb9AolyJOseXwn/GEEF3cbYZXq0FLmkRN8WpxNxtjS','main/customers/2.jpg','1989-03-30','+18603552841',NULL,'2024-04-26 03:16:13','2024-04-26 03:16:23','2024-04-26 10:16:12',NULL,1,'2024-04-26 10:16:22','activated',NULL),(5,'Imani Hand','joannie86@example.net','$2y$12$Hcjw7HDGwoId0giwTQaTpuzDPT6NanA1r6IwokDSqNQLBpd3al8N6','main/customers/3.jpg','1980-04-21','+19594472600',NULL,'2024-04-26 03:16:14','2024-04-26 03:16:23','2024-04-26 10:16:12',NULL,1,'2024-04-26 10:16:22','activated',NULL),(6,'Kianna Feeney','lemke.marianna@example.org','$2y$12$x/7Z8Pm/xDzfaJXPZCLdguoUHnVLMvwkOGqQ2DIiqa9z0eK4oekHi','main/customers/4.jpg','1976-04-10','+18288705236',NULL,'2024-04-26 03:16:14','2024-04-26 03:16:24','2024-04-26 10:16:12',NULL,1,'2024-04-26 10:16:22','activated',NULL),(7,'Elta Towne','kcruickshank@example.org','$2y$12$HTRVCKdgoHHHKuZvaUJri..dTStTmyrfUnaOURB2vr4ddZeEIm1zq','main/customers/5.jpg','1981-04-20','+19868863718',NULL,'2024-04-26 03:16:14','2024-04-26 03:16:24','2024-04-26 10:16:12',NULL,1,'2024-04-26 10:16:22','activated',NULL),(8,'Ms. Sydnee Fisher','jude.legros@example.com','$2y$12$gXaCqAb114FAzFEFgYzxlu4lW.7gIdHQQk8PK4Ns5YOPCMu8KRG9G','main/customers/6.jpg','1995-04-06','+19074228154',NULL,'2024-04-26 03:16:15','2024-04-26 03:16:25','2024-04-26 10:16:12',NULL,1,'2024-04-26 10:16:22','activated',NULL),(9,'Dr. Ronaldo Waelchi','marta.robel@example.net','$2y$12$6wX6adu7Y9YFYh0QbBVweOGJ.BfmrgG2VNJrec8VhUQ6vKTPPfogG','main/customers/7.jpg','1992-04-09','+19295447696',NULL,'2024-04-26 03:16:15','2024-04-26 03:16:25','2024-04-26 10:16:12',NULL,0,NULL,'activated',NULL),(10,'Ephraim Cummings','arch.kihn@example.net','$2y$12$kgQJ98.ekKzVnlBZ4fKl0.PWQgRtwxAe4OKPFTQlUseJikoFFuQs2','main/customers/8.jpg','2002-03-29','+17159262696',NULL,'2024-04-26 03:16:15','2024-04-26 03:16:25','2024-04-26 10:16:12',NULL,0,NULL,'activated',NULL);
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
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','ULF71B0WC21Z','2024-04-25 10:16:20','2024-04-29 10:16:20',NULL,0,973,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-26 03:16:20','2024-04-26 03:16:20',NULL,NULL),(2,'Discount 2','EMNUNVIVYXR0','2024-04-25 10:16:20','2024-05-26 10:16:20',NULL,0,288,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-04-26 03:16:20','2024-04-26 03:16:20',NULL,NULL),(3,'Discount 3','FDGCCF8ORMSU','2024-04-25 10:16:20',NULL,NULL,0,964,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-26 03:16:20','2024-04-26 03:16:20',NULL,NULL),(4,'Discount 4','HNRFCSZXCGEN','2024-04-25 10:16:20','2024-05-04 10:16:20',NULL,0,174,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-04-26 03:16:20','2024-04-26 03:16:20',NULL,NULL),(5,'Discount 5','UIP7A5KRCZES','2024-04-25 10:16:20','2024-05-10 10:16:20',NULL,0,186,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-04-26 03:16:20','2024-04-26 03:16:20',NULL,NULL),(6,'Discount 6','L6E6JFRCGA3Q','2024-04-25 10:16:20',NULL,NULL,0,911,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-26 03:16:20','2024-04-26 03:16:20',NULL,NULL),(7,'Discount 7','6VN7GLNNDUT5','2024-04-25 10:16:20','2024-05-23 10:16:20',NULL,0,63,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-04-26 03:16:20','2024-04-26 03:16:20',NULL,NULL),(8,'Discount 8','OYF9GB9P6SBL','2024-04-25 10:16:20',NULL,NULL,0,152,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-04-26 03:16:20','2024-04-26 03:16:20',NULL,NULL),(9,'Discount 9','1DYGXKGOHP1Q','2024-04-25 10:16:20',NULL,NULL,0,559,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-04-26 03:16:20','2024-04-26 03:16:20',NULL,NULL),(10,'Discount 10','HIDTESUDSWXZ','2024-04-25 10:16:20','2024-05-11 10:16:20',NULL,0,812,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-04-26 03:16:20','2024-04-26 03:16:20',NULL,NULL);
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
INSERT INTO `ec_flash_sale_products` VALUES (1,1,522.6,13,4),(1,2,52.92,7,5),(1,3,495,14,2),(1,4,213.7344,20,1),(1,5,426.36,18,4),(1,6,19.2,12,4),(1,7,727.08,11,5),(1,8,21.76,6,2),(1,9,530.62,13,1),(1,10,98.8,17,3);
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
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-05-21 00:00:00','published','2024-04-26 03:16:32','2024-04-26 03:16:32');
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
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(1,2,'2 Year',10,9999,0,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(1,3,'3 Year',20,9999,0,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(2,4,'4GB',0,9999,0,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(2,5,'8GB',10,9999,0,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(2,6,'16GB',20,9999,0,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(3,7,'Core i5',0,9999,0,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(3,8,'Core i7',10,9999,0,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(3,9,'Core i9',20,9999,0,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(4,10,'128GB',0,9999,0,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(4,11,'256GB',10,9999,0,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(4,12,'512GB',20,9999,0,'2024-04-26 03:16:20','2024-04-26 03:16:20');
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
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-04-26 03:16:20','2024-04-26 03:16:20');
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
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-04-26 03:16:11','2024-04-26 03:16:11',0),(2,'Size','size','text',1,1,1,'published',1,'2024-04-26 03:16:11','2024-04-26 03:16:11',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-04-26 03:16:11','2024-04-26 03:16:11',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-04-26 03:16:11','2024-04-26 03:16:11',0);
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
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(6,2,'S','s',NULL,NULL,1,1,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(7,2,'M','m',NULL,NULL,0,2,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(8,2,'L','l',NULL,NULL,0,3,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-04-26 03:16:11','2024-04-26 03:16:11'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-04-26 03:16:11','2024-04-26 03:16:11');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Discover Skincare',0,NULL,'published',0,'beauty/product-categories/1.jpg',1,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(2,'Clothing',0,NULL,'published',1,'beauty/product-categories/4.jpg',1,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(3,'Men\'s Clothing',2,NULL,'published',0,NULL,0,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(4,'T-Shirts',3,NULL,'published',0,NULL,0,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(5,'Jeans',3,NULL,'published',1,NULL,0,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(6,'Suits',3,NULL,'published',2,NULL,0,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(7,'Women\'s Clothing',2,NULL,'published',1,'beauty/product-categories/2.jpg',1,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(8,'Dresses',7,NULL,'published',0,NULL,0,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(9,'Blouses',7,NULL,'published',1,NULL,0,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(10,'Pants',7,NULL,'published',2,NULL,0,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(11,'Accessories',0,NULL,'published',2,'beauty/product-categories/5.jpg',1,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(12,'Hats',11,NULL,'published',0,NULL,0,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(13,'Scarves',11,NULL,'published',1,NULL,0,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(14,'Jewelry',11,NULL,'published',2,NULL,0,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(15,'Shoes',0,NULL,'published',3,'beauty/product-categories/6.jpg',1,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(16,'Sportswear',0,NULL,'published',4,NULL,0,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(17,'Activewear',16,NULL,'published',0,NULL,0,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL),(18,'Running Shoes',16,NULL,'published',1,'beauty/product-categories/3.jpg',1,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL,NULL);
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
INSERT INTO `ec_product_category_product` VALUES (1,2),(1,4),(1,13),(1,15),(1,17),(1,25),(1,30),(1,32),(1,34),(1,40),(2,1),(2,5),(2,11),(2,14),(2,16),(2,20),(2,21),(2,36),(2,38),(2,39),(2,40),(3,2),(3,15),(3,16),(3,20),(3,23),(3,26),(3,40),(3,43),(4,3),(4,5),(4,9),(4,14),(4,23),(4,30),(4,31),(4,35),(4,41),(4,43),(5,7),(5,9),(5,22),(5,29),(5,32),(5,35),(5,38),(5,39),(6,3),(6,4),(6,10),(6,11),(6,13),(6,17),(6,20),(6,22),(6,33),(6,35),(6,37),(7,4),(7,10),(7,21),(7,22),(7,33),(7,34),(7,36),(8,11),(8,12),(8,13),(8,18),(8,26),(8,27),(8,30),(8,31),(8,38),(8,39),(8,41),(9,2),(9,5),(9,6),(9,11),(9,26),(9,27),(9,36),(10,2),(10,5),(10,6),(10,8),(10,9),(10,14),(10,17),(10,18),(10,25),(10,33),(10,41),(10,42),(11,3),(11,14),(11,15),(11,18),(11,19),(11,29),(11,36),(12,1),(12,12),(12,23),(12,31),(12,40),(12,41),(13,10),(13,15),(13,19),(13,21),(13,24),(13,25),(13,27),(13,28),(14,7),(14,9),(14,12),(14,19),(14,20),(14,28),(14,29),(14,32),(14,34),(14,35),(14,42),(14,43),(15,6),(15,8),(15,13),(15,17),(15,18),(15,24),(15,26),(15,28),(15,30),(15,37),(16,1),(16,6),(16,7),(16,8),(16,16),(16,21),(16,24),(16,32),(16,37),(17,3),(17,7),(17,12),(17,16),(17,19),(17,23),(17,24),(17,27),(17,28),(17,38),(17,42),(18,1),(18,4),(18,8),(18,10),(18,22),(18,25),(18,29),(18,31),(18,33),(18,34),(18,37),(18,39),(18,42),(18,43);
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
INSERT INTO `ec_product_collection_products` VALUES (1,4),(1,6),(1,12),(1,14),(1,20),(1,23),(1,25),(1,28),(1,29),(1,30),(1,43),(2,1),(2,2),(2,5),(2,17),(2,19),(2,32),(2,41),(3,7),(3,8),(3,9),(3,10),(3,11),(3,15),(3,18),(3,24),(3,35),(3,37),(3,38),(3,40),(4,3),(4,13),(4,16),(4,21),(4,22),(4,26),(4,27),(4,31),(4,33),(4,34),(4,36),(4,39),(4,42);
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
INSERT INTO `ec_product_collections` VALUES (1,'Trendy Wardrobe Essentials','trendy-wardrobe-essentials',NULL,NULL,'published','2024-04-26 03:16:26','2024-04-26 03:16:26',0),(2,'Fashion Forward Finds','fashion-forward-finds',NULL,NULL,'published','2024-04-26 03:16:26','2024-04-26 03:16:26',0),(3,'Chic &amp; Stylish Collection','chic-stylish-collection',NULL,NULL,'published','2024-04-26 03:16:26','2024-04-26 03:16:26',0),(4,'Weekly Fashion Picks','weekly-fashion-picks',NULL,NULL,'published','2024-04-26 03:16:26','2024-04-26 03:16:26',0);
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
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,4,0,0.00,'fixed',1),(1,6,0,0.00,'fixed',1),(1,16,0,0.00,'fixed',1),(1,18,0,0.00,'fixed',1),(1,19,0,0.00,'fixed',1),(1,25,0,0.00,'fixed',1),(1,35,0,0.00,'fixed',1),(2,5,0,0.00,'fixed',1),(2,8,0,0.00,'fixed',1),(2,23,0,0.00,'fixed',1),(2,25,0,0.00,'fixed',1),(2,31,0,0.00,'fixed',1),(2,34,0,0.00,'fixed',1),(2,37,0,0.00,'fixed',1),(3,6,0,0.00,'fixed',1),(3,11,0,0.00,'fixed',1),(3,28,0,0.00,'fixed',1),(3,30,0,0.00,'fixed',1),(3,32,0,0.00,'fixed',1),(3,34,0,0.00,'fixed',1),(3,42,0,0.00,'fixed',1),(4,7,0,0.00,'fixed',1),(4,8,0,0.00,'fixed',1),(4,9,0,0.00,'fixed',1),(4,11,0,0.00,'fixed',1),(4,14,0,0.00,'fixed',1),(4,15,0,0.00,'fixed',1),(4,39,0,0.00,'fixed',1),(5,1,0,0.00,'fixed',1),(5,4,0,0.00,'fixed',1),(5,6,0,0.00,'fixed',1),(5,15,0,0.00,'fixed',1),(5,21,0,0.00,'fixed',1),(5,35,0,0.00,'fixed',1),(5,37,0,0.00,'fixed',1),(6,1,0,0.00,'fixed',1),(6,7,0,0.00,'fixed',1),(6,9,0,0.00,'fixed',1),(6,31,0,0.00,'fixed',1),(6,38,0,0.00,'fixed',1),(6,39,0,0.00,'fixed',1),(7,3,0,0.00,'fixed',1),(7,13,0,0.00,'fixed',1),(7,23,0,0.00,'fixed',1),(7,28,0,0.00,'fixed',1),(7,32,0,0.00,'fixed',1),(7,39,0,0.00,'fixed',1),(7,43,0,0.00,'fixed',1),(8,6,0,0.00,'fixed',1),(8,12,0,0.00,'fixed',1),(8,23,0,0.00,'fixed',1),(8,25,0,0.00,'fixed',1),(8,29,0,0.00,'fixed',1),(8,36,0,0.00,'fixed',1),(9,17,0,0.00,'fixed',1),(9,20,0,0.00,'fixed',1),(9,29,0,0.00,'fixed',1),(9,32,0,0.00,'fixed',1),(9,33,0,0.00,'fixed',1),(9,38,0,0.00,'fixed',1),(10,5,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,7,0,0.00,'fixed',1),(10,17,0,0.00,'fixed',1),(10,19,0,0.00,'fixed',1),(10,22,0,0.00,'fixed',1),(10,42,0,0.00,'fixed',1),(11,8,0,0.00,'fixed',1),(11,10,0,0.00,'fixed',1),(11,13,0,0.00,'fixed',1),(11,14,0,0.00,'fixed',1),(11,18,0,0.00,'fixed',1),(11,42,0,0.00,'fixed',1),(12,2,0,0.00,'fixed',1),(12,4,0,0.00,'fixed',1),(12,13,0,0.00,'fixed',1),(12,14,0,0.00,'fixed',1),(12,26,0,0.00,'fixed',1),(12,28,0,0.00,'fixed',1),(12,36,0,0.00,'fixed',1),(13,5,0,0.00,'fixed',1),(13,16,0,0.00,'fixed',1),(13,26,0,0.00,'fixed',1),(13,28,0,0.00,'fixed',1),(13,30,0,0.00,'fixed',1),(13,35,0,0.00,'fixed',1),(14,2,0,0.00,'fixed',1),(14,4,0,0.00,'fixed',1),(14,13,0,0.00,'fixed',1),(14,20,0,0.00,'fixed',1),(14,21,0,0.00,'fixed',1),(14,28,0,0.00,'fixed',1),(15,10,0,0.00,'fixed',1),(15,16,0,0.00,'fixed',1),(15,32,0,0.00,'fixed',1),(15,40,0,0.00,'fixed',1),(15,42,0,0.00,'fixed',1),(15,43,0,0.00,'fixed',1),(16,7,0,0.00,'fixed',1),(16,20,0,0.00,'fixed',1),(16,23,0,0.00,'fixed',1),(16,31,0,0.00,'fixed',1),(16,39,0,0.00,'fixed',1),(16,43,0,0.00,'fixed',1),(17,5,0,0.00,'fixed',1),(17,11,0,0.00,'fixed',1),(17,14,0,0.00,'fixed',1),(17,20,0,0.00,'fixed',1),(17,26,0,0.00,'fixed',1),(17,36,0,0.00,'fixed',1),(17,39,0,0.00,'fixed',1),(18,6,0,0.00,'fixed',1),(18,9,0,0.00,'fixed',1),(18,25,0,0.00,'fixed',1),(18,33,0,0.00,'fixed',1),(18,36,0,0.00,'fixed',1),(19,1,0,0.00,'fixed',1),(19,13,0,0.00,'fixed',1),(19,21,0,0.00,'fixed',1),(19,30,0,0.00,'fixed',1),(19,39,0,0.00,'fixed',1),(19,40,0,0.00,'fixed',1),(19,41,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,5,0,0.00,'fixed',1),(20,16,0,0.00,'fixed',1),(20,21,0,0.00,'fixed',1),(20,23,0,0.00,'fixed',1),(20,29,0,0.00,'fixed',1),(20,40,0,0.00,'fixed',1),(21,4,0,0.00,'fixed',1),(21,14,0,0.00,'fixed',1),(21,16,0,0.00,'fixed',1),(21,17,0,0.00,'fixed',1),(21,19,0,0.00,'fixed',1),(21,28,0,0.00,'fixed',1),(21,31,0,0.00,'fixed',1),(22,11,0,0.00,'fixed',1),(22,12,0,0.00,'fixed',1),(22,16,0,0.00,'fixed',1),(22,26,0,0.00,'fixed',1),(22,29,0,0.00,'fixed',1),(22,32,0,0.00,'fixed',1),(22,33,0,0.00,'fixed',1),(23,1,0,0.00,'fixed',1),(23,5,0,0.00,'fixed',1),(23,6,0,0.00,'fixed',1),(23,17,0,0.00,'fixed',1),(23,19,0,0.00,'fixed',1),(23,20,0,0.00,'fixed',1),(23,32,0,0.00,'fixed',1),(24,13,0,0.00,'fixed',1),(24,16,0,0.00,'fixed',1),(24,27,0,0.00,'fixed',1),(24,29,0,0.00,'fixed',1),(24,30,0,0.00,'fixed',1),(24,38,0,0.00,'fixed',1),(25,12,0,0.00,'fixed',1),(25,15,0,0.00,'fixed',1),(25,23,0,0.00,'fixed',1),(25,33,0,0.00,'fixed',1),(25,37,0,0.00,'fixed',1),(26,1,0,0.00,'fixed',1),(26,7,0,0.00,'fixed',1),(26,13,0,0.00,'fixed',1),(26,33,0,0.00,'fixed',1),(26,36,0,0.00,'fixed',1),(26,38,0,0.00,'fixed',1),(26,42,0,0.00,'fixed',1),(27,1,0,0.00,'fixed',1),(27,14,0,0.00,'fixed',1),(27,18,0,0.00,'fixed',1),(27,19,0,0.00,'fixed',1),(27,25,0,0.00,'fixed',1),(27,36,0,0.00,'fixed',1),(27,40,0,0.00,'fixed',1),(28,4,0,0.00,'fixed',1),(28,6,0,0.00,'fixed',1),(28,19,0,0.00,'fixed',1),(28,22,0,0.00,'fixed',1),(28,32,0,0.00,'fixed',1),(28,33,0,0.00,'fixed',1),(28,42,0,0.00,'fixed',1),(29,13,0,0.00,'fixed',1),(29,24,0,0.00,'fixed',1),(29,25,0,0.00,'fixed',1),(29,30,0,0.00,'fixed',1),(29,32,0,0.00,'fixed',1),(29,39,0,0.00,'fixed',1),(30,11,0,0.00,'fixed',1),(30,19,0,0.00,'fixed',1),(30,33,0,0.00,'fixed',1),(30,34,0,0.00,'fixed',1),(30,35,0,0.00,'fixed',1),(30,39,0,0.00,'fixed',1),(30,40,0,0.00,'fixed',1),(31,13,0,0.00,'fixed',1),(31,15,0,0.00,'fixed',1),(31,18,0,0.00,'fixed',1),(31,23,0,0.00,'fixed',1),(31,27,0,0.00,'fixed',1),(31,32,0,0.00,'fixed',1),(31,43,0,0.00,'fixed',1),(32,1,0,0.00,'fixed',1),(32,5,0,0.00,'fixed',1),(32,13,0,0.00,'fixed',1),(32,24,0,0.00,'fixed',1),(32,30,0,0.00,'fixed',1),(32,33,0,0.00,'fixed',1),(32,37,0,0.00,'fixed',1),(33,8,0,0.00,'fixed',1),(33,15,0,0.00,'fixed',1),(33,25,0,0.00,'fixed',1),(33,37,0,0.00,'fixed',1),(33,42,0,0.00,'fixed',1),(34,20,0,0.00,'fixed',1),(34,25,0,0.00,'fixed',1),(34,37,0,0.00,'fixed',1),(34,40,0,0.00,'fixed',1),(34,41,0,0.00,'fixed',1),(34,42,0,0.00,'fixed',1),(35,1,0,0.00,'fixed',1),(35,6,0,0.00,'fixed',1),(35,18,0,0.00,'fixed',1),(35,20,0,0.00,'fixed',1),(35,21,0,0.00,'fixed',1),(35,37,0,0.00,'fixed',1),(35,43,0,0.00,'fixed',1),(36,1,0,0.00,'fixed',1),(36,3,0,0.00,'fixed',1),(36,10,0,0.00,'fixed',1),(36,15,0,0.00,'fixed',1),(36,31,0,0.00,'fixed',1),(36,38,0,0.00,'fixed',1),(37,5,0,0.00,'fixed',1),(37,22,0,0.00,'fixed',1),(37,24,0,0.00,'fixed',1),(37,27,0,0.00,'fixed',1),(37,30,0,0.00,'fixed',1),(37,36,0,0.00,'fixed',1),(38,1,0,0.00,'fixed',1),(38,3,0,0.00,'fixed',1),(38,19,0,0.00,'fixed',1),(38,25,0,0.00,'fixed',1),(38,33,0,0.00,'fixed',1),(38,37,0,0.00,'fixed',1),(39,2,0,0.00,'fixed',1),(39,5,0,0.00,'fixed',1),(39,11,0,0.00,'fixed',1),(39,16,0,0.00,'fixed',1),(39,26,0,0.00,'fixed',1),(39,27,0,0.00,'fixed',1),(39,32,0,0.00,'fixed',1),(40,6,0,0.00,'fixed',1),(40,8,0,0.00,'fixed',1),(40,17,0,0.00,'fixed',1),(40,23,0,0.00,'fixed',1),(40,26,0,0.00,'fixed',1),(40,36,0,0.00,'fixed',1),(40,41,0,0.00,'fixed',1),(41,1,0,0.00,'fixed',1),(41,4,0,0.00,'fixed',1),(41,7,0,0.00,'fixed',1),(41,8,0,0.00,'fixed',1),(41,12,0,0.00,'fixed',1),(41,19,0,0.00,'fixed',1),(41,39,0,0.00,'fixed',1),(42,4,0,0.00,'fixed',1),(42,10,0,0.00,'fixed',1),(42,19,0,0.00,'fixed',1),(42,25,0,0.00,'fixed',1),(42,29,0,0.00,'fixed',1),(42,35,0,0.00,'fixed',1),(42,39,0,0.00,'fixed',1),(43,10,0,0.00,'fixed',1),(43,16,0,0.00,'fixed',1),(43,21,0,0.00,'fixed',1),(43,27,0,0.00,'fixed',1),(43,32,0,0.00,'fixed',1),(43,33,0,0.00,'fixed',1),(43,38,0,0.00,'fixed',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(2,4,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(3,8,'ecommerce/digital-product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(4,8,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(5,12,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(6,12,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(7,16,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(8,16,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(9,20,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(10,20,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(11,24,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(12,24,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(13,28,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(14,28,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(15,32,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(16,32,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(17,36,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(18,36,'ecommerce/digital-product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(19,40,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(20,40,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(21,44,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(22,45,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(23,59,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32'),(24,66,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-04-26 10:16:32\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-04-26 03:16:32','2024-04-26 03:16:32');
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
INSERT INTO `ec_product_label_products` VALUES (1,27),(2,6),(2,12),(2,15),(2,18),(2,24),(2,36),(2,39),(3,3),(3,9),(3,21),(3,30),(3,33),(3,42);
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
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2024-04-26 03:16:11','2024-04-26 03:16:11'),(2,'New','#006554','published','2024-04-26 03:16:11','2024-04-26 03:16:11'),(3,'Sale','#9A3B00','published','2024-04-26 03:16:11','2024-04-26 03:16:11');
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
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,3),(1,4),(2,2),(2,3),(2,5),(3,4),(3,5),(3,6),(4,3),(4,4),(4,6),(5,1),(5,2),(5,3),(6,3),(6,5),(6,6),(7,1),(7,2),(7,5),(8,1),(8,3),(8,6),(9,2),(9,4),(9,6),(10,1),(10,4),(10,6),(11,1),(11,3),(11,5),(12,4),(12,5),(12,6),(13,2),(13,5),(13,6),(14,1),(14,2),(14,6),(15,1),(15,2),(15,5),(16,3),(16,4),(16,5),(17,1),(17,4),(17,5),(18,1),(18,2),(18,6),(19,1),(19,4),(19,6),(20,2),(20,4),(20,5),(21,1),(21,2),(21,4),(22,1),(22,2),(22,3),(23,1),(23,4),(23,5),(24,1),(24,2),(24,3),(25,1),(25,3),(25,5),(26,2),(26,4),(26,5),(27,1),(27,3),(27,6),(28,3),(28,4),(28,6),(29,1),(29,2),(29,6),(30,1),(30,3),(30,4),(31,1),(31,3),(31,6),(32,2),(32,3),(32,5),(33,1),(33,3),(33,4),(34,3),(34,4),(34,6),(35,2),(35,3),(35,6),(36,1),(36,2),(36,6),(37,3),(37,4),(37,6),(38,1),(38,3),(38,4),(39,3),(39,4),(39,5),(40,1),(40,3),(40,5),(41,1),(41,3),(41,5),(42,1),(42,3),(42,6),(43,2),(43,4),(43,5);
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
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-04-26 03:16:16','2024-04-26 03:16:16'),(2,'Mobile',NULL,'published','2024-04-26 03:16:16','2024-04-26 03:16:16'),(3,'Iphone',NULL,'published','2024-04-26 03:16:16','2024-04-26 03:16:16'),(4,'Printer',NULL,'published','2024-04-26 03:16:16','2024-04-26 03:16:16'),(5,'Office',NULL,'published','2024-04-26 03:16:16','2024-04-26 03:16:16'),(6,'IT',NULL,'published','2024-04-26 03:16:16','2024-04-26 03:16:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (7,1,4),(15,1,8),(25,1,13),(1,2,1),(17,2,9),(29,2,15),(9,3,5),(21,3,11),(27,4,14),(3,5,2),(5,5,3),(11,5,6),(13,5,7),(19,5,10),(23,5,12),(31,5,16),(12,6,6),(22,6,11),(24,6,12),(28,6,14),(30,6,15),(2,7,1),(10,7,5),(4,8,2),(6,8,3),(8,8,4),(14,8,7),(16,8,8),(18,8,9),(20,8,10),(32,8,16),(26,10,13),(37,11,19),(59,11,30),(43,12,22),(45,12,23),(39,13,20),(55,13,28),(57,13,29),(33,14,17),(53,14,27),(61,14,31),(35,15,18),(41,15,21),(47,15,24),(49,15,25),(51,15,26),(36,16,18),(56,16,28),(46,17,23),(34,18,17),(40,18,20),(42,18,21),(44,18,22),(48,18,24),(50,18,25),(58,19,29),(62,19,31),(38,20,19),(52,20,26),(54,20,27),(60,20,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,44,4,1),(2,45,4,0),(3,46,7,1),(4,47,9,1),(5,48,9,0),(6,49,9,0),(7,50,11,1),(8,51,11,0),(9,52,14,1),(10,53,14,0),(11,54,14,0),(12,55,15,1),(13,56,15,0),(14,57,17,1),(15,58,17,0),(16,59,20,1),(17,60,22,1),(18,61,22,0),(19,62,22,0),(20,63,23,1),(21,64,23,0),(22,65,23,0),(23,66,24,1),(24,67,26,1),(25,68,29,1),(26,69,38,1),(27,70,41,1),(28,71,42,1),(29,72,42,0),(30,73,43,1),(31,74,43,0);
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
INSERT INTO `ec_product_with_attribute_set` VALUES (1,4,0),(2,4,0),(1,7,0),(2,7,0),(1,9,0),(2,9,0),(1,11,0),(2,11,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,17,0),(2,17,0),(1,20,0),(2,20,0),(3,22,0),(4,22,0),(3,23,0),(4,23,0),(3,24,0),(4,24,0),(3,26,0),(4,26,0),(3,29,0),(4,29,0),(3,38,0),(4,38,0),(3,41,0),(4,41,0),(3,42,0),(4,42,0),(3,43,0),(4,43,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Vintage Denim Jacket','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-1.png\"]','QK-104',0,13,0,1,1,5,0,0,2037,804,NULL,NULL,16.00,16.00,11.00,579.00,NULL,111468,'2024-04-26 03:16:28','2024-04-26 03:16:28','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(2,'Floral Maxi Dress','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-2.png\"]','SF-159',0,13,0,1,1,5,0,0,314,98,NULL,NULL,20.00,17.00,17.00,755.00,NULL,124071,'2024-04-26 03:16:28','2024-04-26 03:16:28','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(3,'Leather Ankle Boots','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]','CS-147',0,19,0,1,1,5,0,0,1442,750,NULL,NULL,16.00,18.00,20.00,754.00,NULL,128920,'2024-04-26 03:16:28','2024-04-26 03:16:28','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(4,'Knit Turtleneck Sweater (Digital)','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\"]','XT-132-A1',0,15,0,1,0,1,0,0,506,445.28,NULL,NULL,13.00,11.00,14.00,639.00,NULL,190294,'2024-04-26 03:16:28','2024-04-26 03:16:30','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(5,'Classic Aviator Sunglasses','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\"]','GJ-129',0,20,0,1,1,5,0,0,2048,748,NULL,NULL,13.00,16.00,20.00,651.00,NULL,68258,'2024-04-26 03:16:28','2024-04-26 03:16:28','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(6,'Tailored Wool Blazer','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]','YR-167',0,15,0,1,0,2,0,0,1668,40,NULL,NULL,13.00,11.00,14.00,781.00,NULL,148589,'2024-04-26 03:16:28','2024-04-26 03:16:28','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(7,'Bohemian Fringe Handbag','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-1.png\"]','LS-170-A1',0,10,0,1,0,4,0,0,876,NULL,NULL,NULL,16.00,12.00,15.00,868.00,NULL,113151,'2024-04-26 03:16:29','2024-04-26 03:16:31','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(8,'Silk Scarf with Geometric Print (Digital)','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-6.png\"]','UF-154',0,16,0,1,0,5,0,0,1591,34,NULL,NULL,19.00,12.00,17.00,582.00,NULL,155961,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(9,'High-Waisted Wide Leg Trousers','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\"]','GS-174-A1',0,15,0,1,0,2,0,0,1234,NULL,NULL,NULL,16.00,10.00,19.00,598.00,NULL,151039,'2024-04-26 03:16:29','2024-04-26 03:16:31','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(10,'Embroidered Boho Blouse','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]','42-195',0,17,0,1,1,3,0,0,641,260,NULL,NULL,10.00,15.00,13.00,823.00,NULL,157499,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(11,'Statement Chunky Necklace','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-2.png\"]','RH-114-A1',0,12,0,1,1,4,0,0,2069,NULL,NULL,NULL,20.00,17.00,17.00,759.00,NULL,58063,'2024-04-26 03:16:29','2024-04-26 03:16:31','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(12,'Chic Fedora Hat (Digital)','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]','W4-167',0,13,0,1,1,2,0,0,1509,162,NULL,NULL,12.00,11.00,20.00,769.00,NULL,75269,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(13,'Strappy Block Heel Sandals','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\"]','U0-111',0,14,0,1,1,5,0,0,2336,423,NULL,NULL,20.00,18.00,13.00,828.00,NULL,128051,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(14,'Velvet Evening Gown','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-4.png\"]','29-161-A1',0,13,0,1,1,1,0,0,2227,NULL,NULL,NULL,20.00,18.00,20.00,611.00,NULL,79351,'2024-04-26 03:16:29','2024-04-26 03:16:31','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(15,'Quilted Crossbody Bag','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]','HZ-180-A1',0,15,0,1,0,3,0,0,1966,NULL,NULL,NULL,17.00,18.00,16.00,539.00,NULL,23562,'2024-04-26 03:16:29','2024-04-26 03:16:31','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(16,'Distressed Skinny Jeans (Digital)','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-2.png\"]','KH-151',0,20,0,1,0,1,0,0,1807,897,NULL,NULL,15.00,14.00,13.00,828.00,NULL,4524,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(17,'Lace-Up Combat Boots','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]','8V-140-A1',0,13,0,1,0,3,0,0,414,NULL,NULL,NULL,16.00,14.00,12.00,819.00,NULL,53578,'2024-04-26 03:16:29','2024-04-26 03:16:31','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(18,'Cotton Striped T-Shirt Dress','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-6.png\"]','B7-187',0,19,0,1,1,2,0,0,884,410,NULL,NULL,18.00,20.00,10.00,747.00,NULL,111385,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(19,'Printed Palazzo Pants','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-3.png\"]','IT-103',0,10,0,1,1,4,0,0,743,68,NULL,NULL,20.00,18.00,11.00,543.00,NULL,67947,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(20,'Structured Satchel Bag (Digital)','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-2.png\"]','SF-103-A1',0,11,0,1,0,3,0,0,1379,1089.41,NULL,NULL,20.00,15.00,17.00,682.00,NULL,177920,'2024-04-26 03:16:29','2024-04-26 03:16:31','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(21,'Off-Shoulder Ruffle Top','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-5.png\"]','O3-160',0,16,0,1,0,4,0,0,1941,1354,NULL,NULL,11.00,18.00,10.00,587.00,NULL,29680,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(22,'Suede Pointed-Toe Pumps','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]','OD-191-A1',0,12,0,1,0,2,0,0,355,NULL,NULL,NULL,10.00,17.00,17.00,546.00,NULL,87457,'2024-04-26 03:16:29','2024-04-26 03:16:31','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(23,'Cropped Cable Knit Sweater','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\"]','WF-191-A1',0,17,0,1,0,4,0,0,806,NULL,NULL,NULL,12.00,13.00,14.00,637.00,NULL,62846,'2024-04-26 03:16:29','2024-04-26 03:16:31','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(24,'Athleisure Jogger Pants (Digital)','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]','SQ-142-A1',0,11,0,1,0,5,0,0,2123,1740.86,NULL,NULL,10.00,11.00,19.00,880.00,NULL,3029,'2024-04-26 03:16:29','2024-04-26 03:16:31','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(25,'Leopard Print Midi Skirt','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\"]','Z9-110',0,19,0,1,0,3,0,0,1355,82,NULL,NULL,13.00,16.00,14.00,573.00,NULL,87996,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(26,'Retro Cat-Eye Sunglasses','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]','DG-180-A1',0,16,0,1,0,4,0,0,2314,NULL,NULL,NULL,19.00,15.00,11.00,882.00,NULL,136918,'2024-04-26 03:16:29','2024-04-26 03:16:32','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(27,'Faux Fur Trimmed Coat','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-1.png\"]','ZW-166',0,10,0,1,1,1,0,0,1994,1689,NULL,NULL,15.00,15.00,13.00,597.00,NULL,127650,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(28,'Boho Fringed Kimono (Digital)','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-4.png\"]','YE-151',0,18,0,1,1,2,0,0,1608,20,NULL,NULL,18.00,16.00,11.00,842.00,NULL,11178,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(29,'Ruffled Wrap Dress','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-3.png\"]','LB-172-A1',0,13,0,1,1,2,0,0,2221,NULL,NULL,NULL,19.00,11.00,19.00,674.00,NULL,157999,'2024-04-26 03:16:29','2024-04-26 03:16:32','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(30,'Beaded Evening Clutch','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]','BA-120',0,15,0,1,0,5,0,0,2368,2153,NULL,NULL,18.00,16.00,17.00,769.00,NULL,19341,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(31,'Wide Brim Floppy Hat','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\"]','4M-170',0,20,0,1,1,2,0,0,1866,1665,NULL,NULL,14.00,17.00,14.00,588.00,NULL,95789,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(32,'Denim Overall Jumpsuit (Digital)','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-3.png\"]','WX-159',0,14,0,1,1,4,0,0,808,238,NULL,NULL,15.00,11.00,15.00,793.00,NULL,25748,'2024-04-26 03:16:29','2024-04-26 03:16:29','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(33,'Embellished Ballet Flats','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-1.png\"]','UT-178',0,16,0,1,0,1,0,0,751,292,NULL,NULL,12.00,11.00,15.00,558.00,NULL,89714,'2024-04-26 03:16:30','2024-04-26 03:16:30','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(34,'Pleated Midi Skirt','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]','EH-112',0,15,0,1,0,4,0,0,2481,1072,NULL,NULL,13.00,15.00,20.00,745.00,NULL,116001,'2024-04-26 03:16:30','2024-04-26 03:16:30','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(35,'Velour Tracksuit Set','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]','U7-127',0,10,0,1,0,2,0,0,1974,1372,NULL,NULL,15.00,12.00,12.00,649.00,NULL,149361,'2024-04-26 03:16:30','2024-04-26 03:16:30','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(36,'Geometric Patterned Cardigan (Digital)','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\"]','OX-192',0,13,0,1,1,5,0,0,1410,726,NULL,NULL,10.00,11.00,18.00,760.00,NULL,55752,'2024-04-26 03:16:30','2024-04-26 03:16:30','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(37,'Buckle Detail Ankle Booties','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-5.png\"]','1N-143',0,13,0,1,1,1,0,0,663,48,NULL,NULL,13.00,20.00,13.00,597.00,NULL,74637,'2024-04-26 03:16:30','2024-04-26 03:16:30','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(38,'Embroidered Bomber Jacket','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-4.png\"]','5Q-101-A1',0,20,0,1,0,3,0,0,1580,NULL,NULL,NULL,16.00,12.00,18.00,633.00,NULL,84165,'2024-04-26 03:16:30','2024-04-26 03:16:32','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(39,'Cowl Neck Knit Poncho','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-2.png\"]','MG-156',0,19,0,1,1,3,0,0,1000,878,NULL,NULL,15.00,18.00,14.00,669.00,NULL,182960,'2024-04-26 03:16:30','2024-04-26 03:16:30','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(40,'Chunky Knit Infinity Scarf (Digital)','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-5.png\"]','MI-157',0,16,0,1,1,3,0,0,941,738,NULL,NULL,10.00,10.00,19.00,760.00,NULL,129380,'2024-04-26 03:16:30','2024-04-26 03:16:30','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(41,'Retro High-Top Sneakers','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]','BY-119-A1',0,15,0,1,1,2,0,0,883,NULL,NULL,NULL,15.00,16.00,20.00,606.00,NULL,131291,'2024-04-26 03:16:30','2024-04-26 03:16:32','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(42,'Faux Leather Leggings','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\",\"beauty\\/products\\/product-5.png\"]','6I-188-A1',0,12,0,1,0,2,0,0,1898,NULL,NULL,NULL,15.00,18.00,11.00,515.00,NULL,140242,'2024-04-26 03:16:30','2024-04-26 03:16:32','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(43,'Metallic Pleated Maxi Skirt','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-2.png\"]','YK-172-A1',0,17,0,1,0,4,0,0,302,NULL,NULL,NULL,20.00,14.00,17.00,866.00,NULL,97810,'2024-04-26 03:16:30','2024-04-26 03:16:32','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(44,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','XT-132-A1',0,15,0,1,0,1,1,0,506,445.28,NULL,NULL,13.00,11.00,14.00,639.00,NULL,0,'2024-04-26 03:16:30','2024-04-26 03:16:30','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(45,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-8.png\"]','XT-132-A1-A2',0,15,0,1,0,1,1,0,506,425.04,NULL,NULL,13.00,11.00,14.00,639.00,NULL,0,'2024-04-26 03:16:30','2024-04-26 03:16:30','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0),(46,'Bohemian Fringe Handbag',NULL,NULL,'published','[\"beauty\\/products\\/product-5.png\"]','LS-170-A1',0,10,0,1,0,4,1,0,876,NULL,NULL,NULL,16.00,12.00,15.00,868.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(47,'High-Waisted Wide Leg Trousers',NULL,NULL,'published','[\"beauty\\/products\\/product-6.png\"]','GS-174-A1',0,15,0,1,0,2,1,0,1234,NULL,NULL,NULL,16.00,10.00,19.00,598.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(48,'High-Waisted Wide Leg Trousers',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','GS-174-A1-A2',0,15,0,1,0,2,1,0,1234,NULL,NULL,NULL,16.00,10.00,19.00,598.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(49,'High-Waisted Wide Leg Trousers',NULL,NULL,'published','[\"beauty\\/products\\/product-8.png\"]','GS-174-A1-A3',0,15,0,1,0,2,1,0,1234,NULL,NULL,NULL,16.00,10.00,19.00,598.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(50,'Statement Chunky Necklace',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','RH-114-A1',0,12,0,1,0,4,1,0,2069,NULL,NULL,NULL,20.00,17.00,17.00,759.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(51,'Statement Chunky Necklace',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','RH-114-A1-A2',0,12,0,1,0,4,1,0,2069,NULL,NULL,NULL,20.00,17.00,17.00,759.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(52,'Velvet Evening Gown',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','29-161-A1',0,13,0,1,0,1,1,0,2227,NULL,NULL,NULL,20.00,18.00,20.00,611.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(53,'Velvet Evening Gown',NULL,NULL,'published','[\"beauty\\/products\\/product-7.png\"]','29-161-A1-A2',0,13,0,1,0,1,1,0,2227,NULL,NULL,NULL,20.00,18.00,20.00,611.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(54,'Velvet Evening Gown',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','29-161-A1-A3',0,13,0,1,0,1,1,0,2227,NULL,NULL,NULL,20.00,18.00,20.00,611.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(55,'Quilted Crossbody Bag',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','HZ-180-A1',0,15,0,1,0,3,1,0,1966,NULL,NULL,NULL,17.00,18.00,16.00,539.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(56,'Quilted Crossbody Bag',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','HZ-180-A1-A2',0,15,0,1,0,3,1,0,1966,NULL,NULL,NULL,17.00,18.00,16.00,539.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(57,'Lace-Up Combat Boots',NULL,NULL,'published','[\"beauty\\/products\\/product-7.png\"]','8V-140-A1',0,13,0,1,0,3,1,0,414,NULL,NULL,NULL,16.00,14.00,12.00,819.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(58,'Lace-Up Combat Boots',NULL,NULL,'published','[\"beauty\\/products\\/product-6.png\"]','8V-140-A1-A2',0,13,0,1,0,3,1,0,414,NULL,NULL,NULL,16.00,14.00,12.00,819.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(59,'Structured Satchel Bag (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-8.png\"]','SF-103-A1',0,11,0,1,0,3,1,0,1379,1089.41,NULL,NULL,20.00,15.00,17.00,682.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(60,'Suede Pointed-Toe Pumps',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','OD-191-A1',0,12,0,1,0,2,1,0,355,NULL,NULL,NULL,10.00,17.00,17.00,546.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(61,'Suede Pointed-Toe Pumps',NULL,NULL,'published','[\"beauty\\/products\\/product-5.png\"]','OD-191-A1-A2',0,12,0,1,0,2,1,0,355,NULL,NULL,NULL,10.00,17.00,17.00,546.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(62,'Suede Pointed-Toe Pumps',NULL,NULL,'published','[\"beauty\\/products\\/product-6.png\"]','OD-191-A1-A3',0,12,0,1,0,2,1,0,355,NULL,NULL,NULL,10.00,17.00,17.00,546.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(63,'Cropped Cable Knit Sweater',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','WF-191-A1',0,17,0,1,0,4,1,0,806,NULL,NULL,NULL,12.00,13.00,14.00,637.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(64,'Cropped Cable Knit Sweater',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','WF-191-A1-A2',0,17,0,1,0,4,1,0,806,NULL,NULL,NULL,12.00,13.00,14.00,637.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(65,'Cropped Cable Knit Sweater',NULL,NULL,'published','[\"beauty\\/products\\/product-5.png\"]','WF-191-A1-A3',0,17,0,1,0,4,1,0,806,NULL,NULL,NULL,12.00,13.00,14.00,637.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(66,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"beauty\\/products\\/product-7.png\"]','SQ-142-A1',0,11,0,1,0,5,1,0,2123,1740.86,NULL,NULL,10.00,11.00,19.00,880.00,NULL,0,'2024-04-26 03:16:31','2024-04-26 03:16:31','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL),(67,'Retro Cat-Eye Sunglasses',NULL,NULL,'published','[\"beauty\\/products\\/product-2.png\"]','DG-180-A1',0,16,0,1,0,4,1,0,2314,NULL,NULL,NULL,19.00,15.00,11.00,882.00,NULL,0,'2024-04-26 03:16:32','2024-04-26 03:16:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(68,'Ruffled Wrap Dress',NULL,NULL,'published','[\"beauty\\/products\\/product-7.png\"]','LB-172-A1',0,13,0,1,0,2,1,0,2221,NULL,NULL,NULL,19.00,11.00,19.00,674.00,NULL,0,'2024-04-26 03:16:32','2024-04-26 03:16:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(69,'Embroidered Bomber Jacket',NULL,NULL,'published','[\"beauty\\/products\\/product-7.png\"]','5Q-101-A1',0,20,0,1,0,3,1,0,1580,NULL,NULL,NULL,16.00,12.00,18.00,633.00,NULL,0,'2024-04-26 03:16:32','2024-04-26 03:16:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(70,'Retro High-Top Sneakers',NULL,NULL,'published','[\"beauty\\/products\\/product-3.png\"]','BY-119-A1',0,15,0,1,0,2,1,0,883,NULL,NULL,NULL,15.00,16.00,20.00,606.00,NULL,0,'2024-04-26 03:16:32','2024-04-26 03:16:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(71,'Faux Leather Leggings',NULL,NULL,'published','[\"beauty\\/products\\/product-6.png\"]','6I-188-A1',0,12,0,1,0,2,1,0,1898,NULL,NULL,NULL,15.00,18.00,11.00,515.00,NULL,0,'2024-04-26 03:16:32','2024-04-26 03:16:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(72,'Faux Leather Leggings',NULL,NULL,'published','[\"beauty\\/products\\/product-4.png\"]','6I-188-A1-A2',0,12,0,1,0,2,1,0,1898,NULL,NULL,NULL,15.00,18.00,11.00,515.00,NULL,0,'2024-04-26 03:16:32','2024-04-26 03:16:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0),(73,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"beauty\\/products\\/product-1.png\"]','YK-172-A1',0,17,0,1,0,4,1,0,302,NULL,NULL,NULL,20.00,14.00,17.00,866.00,NULL,0,'2024-04-26 03:16:32','2024-04-26 03:16:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL),(74,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"beauty\\/products\\/product-7.png\"]','YK-172-A1-A2',0,17,0,1,0,4,1,0,302,NULL,NULL,NULL,20.00,14.00,17.00,866.00,NULL,0,'2024-04-26 03:16:32','2024-04-26 03:16:32','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0);
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
INSERT INTO `ec_reviews` VALUES (1,4,NULL,NULL,39,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(2,10,NULL,NULL,43,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(3,8,NULL,NULL,37,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(4,6,NULL,NULL,10,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(5,9,NULL,NULL,9,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(6,2,NULL,NULL,6,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(7,2,NULL,NULL,13,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(8,2,NULL,NULL,9,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(9,7,NULL,NULL,14,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(10,9,NULL,NULL,43,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(11,6,NULL,NULL,20,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(12,1,NULL,NULL,3,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\"]'),(13,10,NULL,NULL,4,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(14,10,NULL,NULL,36,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\"]'),(15,9,NULL,NULL,31,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(17,7,NULL,NULL,9,4.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(18,6,NULL,NULL,5,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(19,2,NULL,NULL,22,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(20,7,NULL,NULL,4,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(21,3,NULL,NULL,30,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\"]'),(22,3,NULL,NULL,23,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\"]'),(23,9,NULL,NULL,8,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(24,6,NULL,NULL,11,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(25,3,NULL,NULL,14,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(26,3,NULL,NULL,2,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\"]'),(27,3,NULL,NULL,3,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(28,4,NULL,NULL,29,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(29,9,NULL,NULL,15,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(30,2,NULL,NULL,17,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\"]'),(31,8,NULL,NULL,30,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(32,1,NULL,NULL,18,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(33,9,NULL,NULL,6,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(34,4,NULL,NULL,20,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\"]'),(35,8,NULL,NULL,11,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\"]'),(36,9,NULL,NULL,16,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(37,3,NULL,NULL,8,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(38,1,NULL,NULL,8,4.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(41,4,NULL,NULL,12,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(42,10,NULL,NULL,31,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(43,2,NULL,NULL,15,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(44,7,NULL,NULL,35,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\"]'),(45,10,NULL,NULL,30,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(46,6,NULL,NULL,26,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\"]'),(47,9,NULL,NULL,29,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(48,8,NULL,NULL,19,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(49,1,NULL,NULL,6,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(50,4,NULL,NULL,4,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(51,10,NULL,NULL,40,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(52,1,NULL,NULL,24,5.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(55,2,NULL,NULL,28,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(56,8,NULL,NULL,8,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(57,4,NULL,NULL,37,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(58,3,NULL,NULL,26,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(59,8,NULL,NULL,16,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(60,7,NULL,NULL,37,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\"]'),(61,10,NULL,NULL,39,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(62,7,NULL,NULL,12,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(63,2,NULL,NULL,34,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(64,1,NULL,NULL,35,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\"]'),(66,3,NULL,NULL,37,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(67,1,NULL,NULL,5,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(68,7,NULL,NULL,33,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(69,6,NULL,NULL,23,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(71,7,NULL,NULL,27,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(72,6,NULL,NULL,38,4.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(73,5,NULL,NULL,16,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(74,2,NULL,NULL,19,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(75,3,NULL,NULL,15,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\"]'),(77,10,NULL,NULL,13,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(79,3,NULL,NULL,34,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\"]'),(80,9,NULL,NULL,14,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(81,10,NULL,NULL,27,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(82,5,NULL,NULL,19,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(83,6,NULL,NULL,8,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(84,1,NULL,NULL,26,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(86,1,NULL,NULL,13,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(88,1,NULL,NULL,7,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(89,10,NULL,NULL,15,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\"]'),(90,7,NULL,NULL,39,1.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\"]'),(91,1,NULL,NULL,21,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(92,2,NULL,NULL,40,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(93,10,NULL,NULL,35,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(94,4,NULL,NULL,14,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(95,5,NULL,NULL,33,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(96,1,NULL,NULL,37,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(97,9,NULL,NULL,19,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(98,6,NULL,NULL,24,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(99,3,NULL,NULL,4,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(100,1,NULL,NULL,39,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(101,5,NULL,NULL,24,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(102,2,NULL,NULL,38,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(103,8,NULL,NULL,31,3.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(104,3,NULL,NULL,17,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(105,5,NULL,NULL,41,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(106,4,NULL,NULL,9,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(107,1,NULL,NULL,30,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\"]'),(108,7,NULL,NULL,13,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(109,7,NULL,NULL,19,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(110,2,NULL,NULL,26,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(111,4,NULL,NULL,31,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(112,6,NULL,NULL,4,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(113,9,NULL,NULL,24,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(114,1,NULL,NULL,22,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(115,10,NULL,NULL,24,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(116,4,NULL,NULL,42,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(118,8,NULL,NULL,23,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(119,10,NULL,NULL,17,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(121,7,NULL,NULL,7,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(122,6,NULL,NULL,1,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(124,9,NULL,NULL,5,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(125,10,NULL,NULL,22,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(127,2,NULL,NULL,23,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(129,3,NULL,NULL,19,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(132,9,NULL,NULL,26,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(133,10,NULL,NULL,41,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(135,9,NULL,NULL,34,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(136,2,NULL,NULL,42,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(138,9,NULL,NULL,22,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(139,7,NULL,NULL,22,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(140,10,NULL,NULL,14,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(141,2,NULL,NULL,5,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\"]'),(144,9,NULL,NULL,28,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(146,5,NULL,NULL,22,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(148,7,NULL,NULL,20,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(149,4,NULL,NULL,3,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(150,1,NULL,NULL,43,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(152,9,NULL,NULL,17,1.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\"]'),(153,8,NULL,NULL,28,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\"]'),(154,10,NULL,NULL,29,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(155,5,NULL,NULL,13,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(156,10,NULL,NULL,10,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(158,8,NULL,NULL,12,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\"]'),(159,4,NULL,NULL,22,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(160,3,NULL,NULL,18,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(162,10,NULL,NULL,34,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(164,10,NULL,NULL,2,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(165,2,NULL,NULL,39,3.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(166,6,NULL,NULL,2,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(168,9,NULL,NULL,38,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(169,3,NULL,NULL,10,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(170,8,NULL,NULL,38,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(171,1,NULL,NULL,14,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(172,7,NULL,NULL,23,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\"]'),(176,5,NULL,NULL,25,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(177,5,NULL,NULL,27,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(178,3,NULL,NULL,13,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\"]'),(179,9,NULL,NULL,40,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\"]'),(180,8,NULL,NULL,40,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(181,6,NULL,NULL,31,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(182,6,NULL,NULL,12,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(183,10,NULL,NULL,21,3.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(184,6,NULL,NULL,14,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\"]'),(185,10,NULL,NULL,26,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(186,7,NULL,NULL,40,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(187,7,NULL,NULL,11,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(190,5,NULL,NULL,7,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(191,8,NULL,NULL,29,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(192,7,NULL,NULL,3,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(194,9,NULL,NULL,41,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(196,5,NULL,NULL,10,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(198,9,NULL,NULL,3,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(199,6,NULL,NULL,13,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(201,9,NULL,NULL,39,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(202,2,NULL,NULL,2,2.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(203,5,NULL,NULL,32,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(204,2,NULL,NULL,32,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\"]'),(205,9,NULL,NULL,37,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(207,3,NULL,NULL,38,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(209,10,NULL,NULL,37,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(210,3,NULL,NULL,35,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(212,3,NULL,NULL,11,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(214,8,NULL,NULL,15,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(216,3,NULL,NULL,42,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(217,6,NULL,NULL,42,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\"]'),(218,1,NULL,NULL,29,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(219,5,NULL,NULL,3,1.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\"]'),(220,3,NULL,NULL,36,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(221,6,NULL,NULL,33,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(222,6,NULL,NULL,39,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(223,9,NULL,NULL,18,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\"]'),(227,2,NULL,NULL,10,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(229,10,NULL,NULL,16,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\"]'),(232,8,NULL,NULL,21,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(233,8,NULL,NULL,27,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\"]'),(234,1,NULL,NULL,38,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(235,5,NULL,NULL,4,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\"]'),(238,6,NULL,NULL,15,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(240,3,NULL,NULL,29,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(243,7,NULL,NULL,17,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\"]'),(246,9,NULL,NULL,2,4.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(247,8,NULL,NULL,34,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(248,7,NULL,NULL,5,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(253,4,NULL,NULL,2,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(254,3,NULL,NULL,24,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(257,8,NULL,NULL,13,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\"]'),(259,9,NULL,NULL,30,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(260,4,NULL,NULL,6,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(261,7,NULL,NULL,24,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(263,2,NULL,NULL,41,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\"]'),(264,10,NULL,NULL,23,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\"]'),(267,10,NULL,NULL,20,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(270,7,NULL,NULL,29,3.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(272,3,NULL,NULL,12,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(273,3,NULL,NULL,9,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(274,6,NULL,NULL,17,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(283,3,NULL,NULL,39,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(284,4,NULL,NULL,32,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(285,4,NULL,NULL,5,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(286,6,NULL,NULL,21,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(291,2,NULL,NULL,30,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\"]'),(292,10,NULL,NULL,8,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(293,8,NULL,NULL,43,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\"]'),(294,9,NULL,NULL,23,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(298,7,NULL,NULL,15,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(301,5,NULL,NULL,12,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(302,4,NULL,NULL,7,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(304,1,NULL,NULL,17,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(306,4,NULL,NULL,35,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(308,8,NULL,NULL,24,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(311,5,NULL,NULL,6,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(312,6,NULL,NULL,29,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(317,10,NULL,NULL,28,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(318,2,NULL,NULL,35,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(319,5,NULL,NULL,34,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(320,5,NULL,NULL,28,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\"]'),(322,3,NULL,NULL,25,2.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(323,5,NULL,NULL,42,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(327,4,NULL,NULL,19,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\"]'),(328,8,NULL,NULL,26,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(329,5,NULL,NULL,8,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(331,10,NULL,NULL,32,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(333,7,NULL,NULL,36,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(334,8,NULL,NULL,18,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(335,5,NULL,NULL,21,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(339,4,NULL,NULL,36,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(345,8,NULL,NULL,17,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(346,5,NULL,NULL,18,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(347,4,NULL,NULL,40,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\"]'),(352,8,NULL,NULL,1,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(353,6,NULL,NULL,37,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(355,5,NULL,NULL,20,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(359,7,NULL,NULL,8,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(361,6,NULL,NULL,6,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(363,9,NULL,NULL,42,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(370,4,NULL,NULL,17,4.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(372,1,NULL,NULL,2,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(374,6,NULL,NULL,30,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(376,3,NULL,NULL,32,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\"]'),(379,4,NULL,NULL,8,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(381,2,NULL,NULL,21,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(383,5,NULL,NULL,11,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(387,3,NULL,NULL,5,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(388,3,NULL,NULL,7,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(389,8,NULL,NULL,10,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\"]'),(390,5,NULL,NULL,30,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(392,7,NULL,NULL,42,2.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(397,6,NULL,NULL,19,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(399,4,NULL,NULL,25,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\"]'),(403,3,NULL,NULL,33,3.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(405,9,NULL,NULL,1,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\"]'),(406,10,NULL,NULL,25,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(409,6,NULL,NULL,27,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(413,7,NULL,NULL,41,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(416,4,NULL,NULL,26,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(417,5,NULL,NULL,40,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(418,2,NULL,NULL,20,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\"]'),(420,3,NULL,NULL,31,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(421,1,NULL,NULL,12,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(424,6,NULL,NULL,3,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\"]'),(431,7,NULL,NULL,1,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(432,4,NULL,NULL,23,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(433,6,NULL,NULL,32,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(436,2,NULL,NULL,27,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\"]'),(437,4,NULL,NULL,34,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\"]'),(439,1,NULL,NULL,41,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(441,2,NULL,NULL,14,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(442,2,NULL,NULL,3,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(444,6,NULL,NULL,9,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(446,2,NULL,NULL,8,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(451,6,NULL,NULL,43,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(453,9,NULL,NULL,32,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\"]'),(454,5,NULL,NULL,38,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\"]'),(459,10,NULL,NULL,38,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(461,3,NULL,NULL,21,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(465,8,NULL,NULL,42,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(466,1,NULL,NULL,25,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(472,8,NULL,NULL,9,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\"]'),(474,2,NULL,NULL,12,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(484,3,NULL,NULL,40,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\"]'),(488,4,NULL,NULL,27,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(491,8,NULL,NULL,41,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(496,6,NULL,NULL,25,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(497,3,NULL,NULL,27,5.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(504,8,NULL,NULL,20,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\"]'),(509,8,NULL,NULL,25,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(514,2,NULL,NULL,1,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(518,10,NULL,NULL,12,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(519,3,NULL,NULL,1,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(521,6,NULL,NULL,41,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(522,4,NULL,NULL,43,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(530,7,NULL,NULL,16,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(531,2,NULL,NULL,16,5.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(533,1,NULL,NULL,15,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(534,7,NULL,NULL,25,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\"]'),(535,8,NULL,NULL,3,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(536,1,NULL,NULL,23,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(538,7,NULL,NULL,2,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\"]'),(540,9,NULL,NULL,4,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\"]'),(547,3,NULL,NULL,6,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\"]'),(555,5,NULL,NULL,5,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(562,8,NULL,NULL,4,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(565,4,NULL,NULL,28,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(567,7,NULL,NULL,34,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(571,4,NULL,NULL,41,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(576,2,NULL,NULL,7,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(581,2,NULL,NULL,36,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(582,8,NULL,NULL,33,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(587,10,NULL,NULL,11,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(588,2,NULL,NULL,11,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\"]'),(589,10,NULL,NULL,3,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(594,10,NULL,NULL,5,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(606,7,NULL,NULL,26,1.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\"]'),(608,9,NULL,NULL,11,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(610,3,NULL,NULL,16,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(611,5,NULL,NULL,29,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(613,1,NULL,NULL,11,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(614,8,NULL,NULL,35,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(617,10,NULL,NULL,9,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(620,9,NULL,NULL,36,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(622,5,NULL,NULL,43,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(625,8,NULL,NULL,7,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(626,7,NULL,NULL,28,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\"]'),(629,9,NULL,NULL,20,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(631,2,NULL,NULL,18,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(633,1,NULL,NULL,20,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(644,9,NULL,NULL,33,2.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(645,3,NULL,NULL,43,4.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(649,6,NULL,NULL,28,1.00,'Best ecommerce CMS online store!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\"]'),(650,5,NULL,NULL,36,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(655,3,NULL,NULL,41,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(658,2,NULL,NULL,25,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(661,7,NULL,NULL,31,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(662,10,NULL,NULL,42,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(665,8,NULL,NULL,5,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\"]'),(670,8,NULL,NULL,36,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\"]'),(673,10,NULL,NULL,1,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\"]'),(675,1,NULL,NULL,28,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(684,7,NULL,NULL,30,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(692,4,NULL,NULL,10,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(703,1,NULL,NULL,42,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(710,2,NULL,NULL,33,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(716,9,NULL,NULL,21,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(718,9,NULL,NULL,13,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(722,7,NULL,NULL,10,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\"]'),(727,10,NULL,NULL,7,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(728,4,NULL,NULL,11,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(729,1,NULL,NULL,40,4.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(748,4,NULL,NULL,13,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\"]'),(749,1,NULL,NULL,33,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\"]'),(756,4,NULL,NULL,24,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(762,4,NULL,NULL,18,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(763,5,NULL,NULL,2,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(767,7,NULL,NULL,18,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(768,5,NULL,NULL,17,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(778,6,NULL,NULL,34,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(795,1,NULL,NULL,1,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(817,3,NULL,NULL,20,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(825,1,NULL,NULL,27,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(826,4,NULL,NULL,15,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\"]'),(830,1,NULL,NULL,36,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(843,1,NULL,NULL,16,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(847,8,NULL,NULL,32,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\"]'),(850,6,NULL,NULL,36,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(854,1,NULL,NULL,9,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(860,5,NULL,NULL,1,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(885,5,NULL,NULL,9,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-6.png\"]'),(888,5,NULL,NULL,39,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\"]'),(891,8,NULL,NULL,2,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(892,5,NULL,NULL,26,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\"]'),(910,2,NULL,NULL,24,4.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-7.png\"]'),(913,6,NULL,NULL,22,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\"]'),(924,1,NULL,NULL,31,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(926,7,NULL,NULL,32,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\"]'),(940,1,NULL,NULL,10,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-8.png\"]'),(942,3,NULL,NULL,22,5.00,'Good app, good backup service and support. Good documentation.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(948,7,NULL,NULL,21,2.00,'Clean & perfect source code','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(952,6,NULL,NULL,7,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(954,7,NULL,NULL,6,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(955,4,NULL,NULL,38,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(970,9,NULL,NULL,7,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(973,6,NULL,NULL,18,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(979,2,NULL,NULL,31,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(989,7,NULL,NULL,38,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-04-26 03:16:36','2024-04-26 03:16:36','[\"beauty\\/products\\/product-4.png\"]');
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
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-04-26 03:16:16','2024-04-26 03:16:16');
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
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-04-26 03:16:16','2024-04-26 03:16:16');
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
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-04-26 03:16:20','2024-04-26 03:16:20');
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
INSERT INTO `ec_tax_products` VALUES (1,5),(1,9),(1,12),(1,21),(1,22),(1,25),(1,27),(1,28),(1,29),(1,34),(1,36),(1,38),(1,39),(1,43),(2,1),(2,2),(2,3),(2,4),(2,6),(2,7),(2,8),(2,14),(2,15),(2,16),(2,17),(2,19),(2,26),(2,31),(2,35),(2,40),(2,41),(3,10),(3,11),(3,13),(3,18),(3,20),(3,23),(3,24),(3,30),(3,32),(3,33),(3,37),(3,42);
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
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-04-26 03:16:16','2024-04-26 03:16:16'),(2,'None',0.000000,2,'published','2024-04-26 03:16:16','2024-04-26 03:16:16'),(3,'Import Tax',15.000000,3,'published','2024-04-26 03:16:16','2024-04-26 03:16:16');
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
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-04-26 03:16:11','2024-04-26 03:16:11',NULL),(2,'PAYMENT',1,'published','2024-04-26 03:16:11','2024-04-26 03:16:11',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-04-26 03:16:11','2024-04-26 03:16:11',NULL);
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
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-04-26 03:16:11','2024-04-26 03:16:11'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-04-26 03:16:11','2024-04-26 03:16:11'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-04-26 03:16:11','2024-04-26 03:16:11'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-04-26 03:16:11','2024-04-26 03:16:11'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-04-26 03:16:11','2024-04-26 03:16:11'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-04-26 03:16:11','2024-04-26 03:16:11'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-04-26 03:16:11','2024-04-26 03:16:11'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-04-26 03:16:11','2024-04-26 03:16:11'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-04-26 03:16:11','2024-04-26 03:16:11'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-04-26 03:16:11','2024-04-26 03:16:11');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Radiant Reflections','With gently smiling jaws!\' \'I\'m sure I\'m not looking for eggs, I know is, something comes at me like that!\' \'I couldn\'t help it,\' said Alice, who felt very glad to get out of breath, and till the.',1,0,'beauty/galleries/1.jpg',1,'published','2024-04-26 03:16:33','2024-04-26 03:16:33'),(2,'Glamour Grove','Caterpillar. \'Well, perhaps not,\' said the Queen. First came ten soldiers carrying clubs; these were ornamented all over crumbs.\' \'You\'re wrong about the crumbs,\' said the Mock Turtle. \'Certainly.',1,0,'beauty/galleries/2.jpg',1,'published','2024-04-26 03:16:33','2024-04-26 03:16:33'),(3,'Serene Styles Showcase','Gryphon. \'Then, you know,\' said the King, going up to her ear. \'You\'re thinking about something, my dear, I think?\' \'I had NOT!\' cried the Mouse, who seemed ready to ask his neighbour to tell.',1,0,'beauty/galleries/3.jpg',1,'published','2024-04-26 03:16:33','2024-04-26 03:16:33'),(4,'Allure Alcove','I get\" is the same words as before, \'It\'s all her wonderful Adventures, till she was quite a long way. So they couldn\'t get them out with his whiskers!\' For some minutes the whole window!\' \'Sure, it.',1,0,'beauty/galleries/4.jpg',1,'published','2024-04-26 03:16:33','2024-04-26 03:16:33'),(5,'Glamour Galleria','Alice had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury.',1,0,'beauty/galleries/5.jpg',1,'published','2024-04-26 03:16:33','2024-04-26 03:16:33'),(6,'Beauty Boulevard','March Hare. \'Yes, please do!\' pleaded Alice. \'And ever since that,\' the Hatter added as an explanation. \'Oh, you\'re sure to make out which were the verses on his spectacles. \'Where shall I begin.',1,0,'beauty/galleries/6.jpg',1,'published','2024-04-26 03:16:33','2024-04-26 03:16:33');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"I eat one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' said Alice in a low curtain she had tired herself out with his head!\' or \'Off with her head! Off--\'.\"},{\"img\":\"beauty\\/galleries\\/2.jpg\",\"description\":\"Alice soon came to ME, and told me he was gone, and the whole party swam to the game. CHAPTER IX. The Mock Turtle replied; \'and then the Mock Turtle said with some surprise that the poor child, \'for.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Alice, \'as all the while, and fighting for the first sentence in her hand, watching the setting sun, and thinking of little birds and animals that had made the whole head appeared, and then hurried.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:16:33','2024-04-26 03:16:33'),(2,'[{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"I eat one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' said Alice in a low curtain she had tired herself out with his head!\' or \'Off with her head! Off--\'.\"},{\"img\":\"beauty\\/galleries\\/2.jpg\",\"description\":\"Alice soon came to ME, and told me he was gone, and the whole party swam to the game. CHAPTER IX. The Mock Turtle replied; \'and then the Mock Turtle said with some surprise that the poor child, \'for.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Alice, \'as all the while, and fighting for the first sentence in her hand, watching the setting sun, and thinking of little birds and animals that had made the whole head appeared, and then hurried.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:16:33','2024-04-26 03:16:33'),(3,'[{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"I eat one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' said Alice in a low curtain she had tired herself out with his head!\' or \'Off with her head! Off--\'.\"},{\"img\":\"beauty\\/galleries\\/2.jpg\",\"description\":\"Alice soon came to ME, and told me he was gone, and the whole party swam to the game. CHAPTER IX. The Mock Turtle replied; \'and then the Mock Turtle said with some surprise that the poor child, \'for.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Alice, \'as all the while, and fighting for the first sentence in her hand, watching the setting sun, and thinking of little birds and animals that had made the whole head appeared, and then hurried.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:16:33','2024-04-26 03:16:33'),(4,'[{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"I eat one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' said Alice in a low curtain she had tired herself out with his head!\' or \'Off with her head! Off--\'.\"},{\"img\":\"beauty\\/galleries\\/2.jpg\",\"description\":\"Alice soon came to ME, and told me he was gone, and the whole party swam to the game. CHAPTER IX. The Mock Turtle replied; \'and then the Mock Turtle said with some surprise that the poor child, \'for.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Alice, \'as all the while, and fighting for the first sentence in her hand, watching the setting sun, and thinking of little birds and animals that had made the whole head appeared, and then hurried.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:16:33','2024-04-26 03:16:33'),(5,'[{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"I eat one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' said Alice in a low curtain she had tired herself out with his head!\' or \'Off with her head! Off--\'.\"},{\"img\":\"beauty\\/galleries\\/2.jpg\",\"description\":\"Alice soon came to ME, and told me he was gone, and the whole party swam to the game. CHAPTER IX. The Mock Turtle replied; \'and then the Mock Turtle said with some surprise that the poor child, \'for.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Alice, \'as all the while, and fighting for the first sentence in her hand, watching the setting sun, and thinking of little birds and animals that had made the whole head appeared, and then hurried.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:16:33','2024-04-26 03:16:33'),(6,'[{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"I eat one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' said Alice in a low curtain she had tired herself out with his head!\' or \'Off with her head! Off--\'.\"},{\"img\":\"beauty\\/galleries\\/2.jpg\",\"description\":\"Alice soon came to ME, and told me he was gone, and the whole party swam to the game. CHAPTER IX. The Mock Turtle replied; \'and then the Mock Turtle said with some surprise that the poor child, \'for.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Alice, \'as all the while, and fighting for the first sentence in her hand, watching the setting sun, and thinking of little birds and animals that had made the whole head appeared, and then hurried.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-04-26 03:16:33','2024-04-26 03:16:33');
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
INSERT INTO `language_meta` VALUES (1,'en_US','da3dc29e5905d857fcc31921f67d3d22',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','1ad10666f8a49055a097a7608cac0250',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','668290a300e4e50d72d2567a79825ac3',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','18b40e960512ce2c3e055ac66fb06a43',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','06257b56f10f12e70734c22ff6f5b928',3,'Botble\\Menu\\Models\\Menu');
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',15820,'main/general/404.png','[]','2024-04-26 03:16:09','2024-04-26 03:16:09',NULL),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-04-26 03:16:09','2024-04-26 03:16:09',NULL),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-04-26 03:16:09','2024-04-26 03:16:09',NULL),(4,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2024-04-26 03:16:09','2024-04-26 03:16:09',NULL),(5,0,'cta-shape-1','cta-shape-1',2,'image/png',22860,'main/general/cta-shape-1.png','[]','2024-04-26 03:16:09','2024-04-26 03:16:09',NULL),(6,0,'cta-shape-2','cta-shape-2',2,'image/png',16796,'main/general/cta-shape-2.png','[]','2024-04-26 03:16:09','2024-04-26 03:16:09',NULL),(7,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-04-26 03:16:09','2024-04-26 03:16:09',NULL),(8,0,'favicon','favicon',2,'image/png',1831,'main/general/favicon.png','[]','2024-04-26 03:16:09','2024-04-26 03:16:09',NULL),(9,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-04-26 03:16:09','2024-04-26 03:16:09',NULL),(10,0,'logo-white','logo-white',2,'image/png',22020,'main/general/logo-white.png','[]','2024-04-26 03:16:09','2024-04-26 03:16:09',NULL),(11,0,'logo','logo',2,'image/png',22398,'main/general/logo.png','[]','2024-04-26 03:16:10','2024-04-26 03:16:10',NULL),(12,0,'newsletter-popup','newsletter-popup',2,'image/png',17253,'main/general/newsletter-popup.png','[]','2024-04-26 03:16:10','2024-04-26 03:16:10',NULL),(13,0,'placeholder','placeholder',2,'image/png',2100,'main/general/placeholder.png','[]','2024-04-26 03:16:10','2024-04-26 03:16:10',NULL),(14,0,'preloader-icon','preloader-icon',2,'image/png',4182,'main/general/preloader-icon.png','[]','2024-04-26 03:16:10','2024-04-26 03:16:10',NULL),(15,0,'signature','signature',2,'image/png',2117,'main/general/signature.png','[]','2024-04-26 03:16:10','2024-04-26 03:16:10',NULL),(16,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-04-26 03:16:10','2024-04-26 03:16:10',NULL),(27,0,'1','1',4,'image/png',948,'main/brands/1.png','[]','2024-04-26 03:16:11','2024-04-26 03:16:11',NULL),(28,0,'2','2',4,'image/png',948,'main/brands/2.png','[]','2024-04-26 03:16:11','2024-04-26 03:16:11',NULL),(29,0,'3','3',4,'image/png',948,'main/brands/3.png','[]','2024-04-26 03:16:11','2024-04-26 03:16:11',NULL),(30,0,'4','4',4,'image/png',948,'main/brands/4.png','[]','2024-04-26 03:16:11','2024-04-26 03:16:11',NULL),(31,0,'5','5',4,'image/png',948,'main/brands/5.png','[]','2024-04-26 03:16:11','2024-04-26 03:16:11',NULL),(32,0,'1','1',5,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-04-26 03:16:11','2024-04-26 03:16:11',NULL),(33,0,'10','10',5,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-04-26 03:16:12','2024-04-26 03:16:12',NULL),(34,0,'2','2',5,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-04-26 03:16:12','2024-04-26 03:16:12',NULL),(35,0,'3','3',5,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-04-26 03:16:12','2024-04-26 03:16:12',NULL),(36,0,'4','4',5,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-04-26 03:16:12','2024-04-26 03:16:12',NULL),(37,0,'5','5',5,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-04-26 03:16:12','2024-04-26 03:16:12',NULL),(38,0,'6','6',5,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-04-26 03:16:12','2024-04-26 03:16:12',NULL),(39,0,'7','7',5,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-04-26 03:16:12','2024-04-26 03:16:12',NULL),(40,0,'8','8',5,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-04-26 03:16:12','2024-04-26 03:16:12',NULL),(41,0,'9','9',5,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-04-26 03:16:12','2024-04-26 03:16:12',NULL),(42,0,'blog-big-1','blog-big-1',6,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(43,0,'blog-details-sm-1','blog-details-sm-1',6,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(44,0,'post-1','post-1',6,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(45,0,'post-10','post-10',6,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(46,0,'post-11','post-11',6,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(47,0,'post-12','post-12',6,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(48,0,'post-2','post-2',6,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(49,0,'post-3','post-3',6,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(50,0,'post-4','post-4',6,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(51,0,'post-5','post-5',6,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(52,0,'post-6','post-6',6,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(53,0,'post-7','post-7',6,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(54,0,'post-8','post-8',6,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-04-26 03:16:18','2024-04-26 03:16:18',NULL),(55,0,'post-9','post-9',6,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-04-26 03:16:18','2024-04-26 03:16:18',NULL),(56,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-04-26 03:16:18','2024-04-26 03:16:18',NULL),(57,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-04-26 03:16:18','2024-04-26 03:16:18',NULL),(58,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-04-26 03:16:18','2024-04-26 03:16:18',NULL),(59,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-04-26 03:16:18','2024-04-26 03:16:18',NULL),(60,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-04-26 03:16:18','2024-04-26 03:16:18',NULL),(61,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-04-26 03:16:18','2024-04-26 03:16:18',NULL),(62,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-04-26 03:16:18','2024-04-26 03:16:18',NULL),(63,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-04-26 03:16:18','2024-04-26 03:16:18',NULL),(64,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-04-26 03:16:18','2024-04-26 03:16:18',NULL),(65,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-04-26 03:16:18','2024-04-26 03:16:18',NULL),(66,0,'1','1',7,'image/png',9133,'main/stores/1.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(67,0,'10','10',7,'image/png',4263,'main/stores/10.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(68,0,'11','11',7,'image/png',4420,'main/stores/11.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(69,0,'12','12',7,'image/png',4908,'main/stores/12.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(70,0,'13','13',7,'image/png',3441,'main/stores/13.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(71,0,'14','14',7,'image/png',4209,'main/stores/14.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(72,0,'15','15',7,'image/png',5113,'main/stores/15.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(73,0,'16','16',7,'image/png',4563,'main/stores/16.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(74,0,'17','17',7,'image/png',4896,'main/stores/17.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(75,0,'2','2',7,'image/png',9008,'main/stores/2.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(76,0,'3','3',7,'image/png',8006,'main/stores/3.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(77,0,'4','4',7,'image/png',8728,'main/stores/4.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(78,0,'5','5',7,'image/png',10689,'main/stores/5.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(79,0,'6','6',7,'image/png',10989,'main/stores/6.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(80,0,'7','7',7,'image/png',3730,'main/stores/7.png','[]','2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(81,0,'8','8',7,'image/png',4030,'main/stores/8.png','[]','2024-04-26 03:16:22','2024-04-26 03:16:22',NULL),(82,0,'9','9',7,'image/png',3810,'main/stores/9.png','[]','2024-04-26 03:16:22','2024-04-26 03:16:22',NULL),(83,0,'cover-1','cover-1',7,'image/png',4208,'main/stores/cover-1.png','[]','2024-04-26 03:16:22','2024-04-26 03:16:22',NULL),(84,0,'cover-2','cover-2',7,'image/png',8798,'main/stores/cover-2.png','[]','2024-04-26 03:16:22','2024-04-26 03:16:22',NULL),(85,0,'cover-3','cover-3',7,'image/png',3888,'main/stores/cover-3.png','[]','2024-04-26 03:16:22','2024-04-26 03:16:22',NULL),(86,0,'cover-4','cover-4',7,'image/png',11893,'main/stores/cover-4.png','[]','2024-04-26 03:16:22','2024-04-26 03:16:22',NULL),(87,0,'cover-5','cover-5',7,'image/png',8798,'main/stores/cover-5.png','[]','2024-04-26 03:16:22','2024-04-26 03:16:22',NULL),(88,0,'slider-1','slider-1',9,'image/jpeg',27493,'beauty/sliders/slider-1.jpg','[]','2024-04-26 03:16:25','2024-04-26 03:16:25',NULL),(89,0,'slider-2','slider-2',9,'image/jpeg',27493,'beauty/sliders/slider-2.jpg','[]','2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(90,0,'slider-3','slider-3',9,'image/jpeg',27493,'beauty/sliders/slider-3.jpg','[]','2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(91,0,'1','1',10,'image/jpeg',4294,'beauty/product-categories/1.jpg','[]','2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(92,0,'2','2',10,'image/jpeg',4294,'beauty/product-categories/2.jpg','[]','2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(93,0,'3','3',10,'image/jpeg',4294,'beauty/product-categories/3.jpg','[]','2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(94,0,'4','4',10,'image/jpeg',4294,'beauty/product-categories/4.jpg','[]','2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(95,0,'5','5',10,'image/jpeg',4294,'beauty/product-categories/5.jpg','[]','2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(96,0,'6','6',10,'image/jpeg',4294,'beauty/product-categories/6.jpg','[]','2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(97,0,'product-1','product-1',11,'image/png',9803,'beauty/products/product-1.png','[]','2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(98,0,'product-2','product-2',11,'image/png',9803,'beauty/products/product-2.png','[]','2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(99,0,'product-3','product-3',11,'image/png',9803,'beauty/products/product-3.png','[]','2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(100,0,'product-4','product-4',11,'image/png',9803,'beauty/products/product-4.png','[]','2024-04-26 03:16:27','2024-04-26 03:16:27',NULL),(101,0,'product-5','product-5',11,'image/png',9803,'beauty/products/product-5.png','[]','2024-04-26 03:16:27','2024-04-26 03:16:27',NULL),(102,0,'product-6','product-6',11,'image/png',9803,'beauty/products/product-6.png','[]','2024-04-26 03:16:27','2024-04-26 03:16:27',NULL),(103,0,'product-7','product-7',11,'image/png',9803,'beauty/products/product-7.png','[]','2024-04-26 03:16:27','2024-04-26 03:16:27',NULL),(104,0,'product-8','product-8',11,'image/png',9803,'beauty/products/product-8.png','[]','2024-04-26 03:16:27','2024-04-26 03:16:27',NULL),(105,0,'1','1',12,'image/jpeg',4294,'beauty/galleries/1.jpg','[]','2024-04-26 03:16:32','2024-04-26 03:16:32',NULL),(106,0,'2','2',12,'image/jpeg',4294,'beauty/galleries/2.jpg','[]','2024-04-26 03:16:32','2024-04-26 03:16:32',NULL),(107,0,'3','3',12,'image/jpeg',4294,'beauty/galleries/3.jpg','[]','2024-04-26 03:16:32','2024-04-26 03:16:32',NULL),(108,0,'4','4',12,'image/jpeg',4294,'beauty/galleries/4.jpg','[]','2024-04-26 03:16:32','2024-04-26 03:16:32',NULL),(109,0,'5','5',12,'image/jpeg',4294,'beauty/galleries/5.jpg','[]','2024-04-26 03:16:32','2024-04-26 03:16:32',NULL),(110,0,'6','6',12,'image/jpeg',4294,'beauty/galleries/6.jpg','[]','2024-04-26 03:16:32','2024-04-26 03:16:32',NULL),(111,0,'instagram-1','instagram-1',12,'image/jpeg',4294,'beauty/galleries/instagram-1.jpg','[]','2024-04-26 03:16:32','2024-04-26 03:16:32',NULL),(112,0,'instagram-2','instagram-2',12,'image/jpeg',4294,'beauty/galleries/instagram-2.jpg','[]','2024-04-26 03:16:32','2024-04-26 03:16:32',NULL),(113,0,'instagram-3','instagram-3',12,'image/jpeg',4294,'beauty/galleries/instagram-3.jpg','[]','2024-04-26 03:16:33','2024-04-26 03:16:33',NULL),(114,0,'instagram-4','instagram-4',12,'image/jpeg',4294,'beauty/galleries/instagram-4.jpg','[]','2024-04-26 03:16:33','2024-04-26 03:16:33',NULL),(115,0,'instagram-5','instagram-5',12,'image/jpeg',4294,'beauty/galleries/instagram-5.jpg','[]','2024-04-26 03:16:33','2024-04-26 03:16:33',NULL),(116,0,'instagram-6','instagram-6',12,'image/jpeg',4294,'beauty/galleries/instagram-6.jpg','[]','2024-04-26 03:16:33','2024-04-26 03:16:33',NULL),(117,0,'icon-1','icon-1',13,'image/png',4469,'main/contact/icon-1.png','[]','2024-04-26 03:16:34','2024-04-26 03:16:34',NULL),(118,0,'icon-2','icon-2',13,'image/png',5977,'main/contact/icon-2.png','[]','2024-04-26 03:16:34','2024-04-26 03:16:34',NULL),(119,0,'icon-3','icon-3',13,'image/png',6082,'main/contact/icon-3.png','[]','2024-04-26 03:16:34','2024-04-26 03:16:34',NULL),(120,0,'line','line',14,'image/png',6152,'main/shapes/line.png','[]','2024-04-26 03:16:35','2024-04-26 03:16:35',NULL),(121,0,'quote','quote',14,'image/png',595,'main/shapes/quote.png','[]','2024-04-26 03:16:35','2024-04-26 03:16:35',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-04-26 03:16:09','2024-04-26 03:16:09',NULL),(2,0,'general',NULL,'general',1,'2024-04-26 03:16:09','2024-04-26 03:16:09',NULL),(3,0,'users',NULL,'users',1,'2024-04-26 03:16:10','2024-04-26 03:16:10',NULL),(4,0,'brands',NULL,'brands',1,'2024-04-26 03:16:11','2024-04-26 03:16:11',NULL),(5,0,'customers',NULL,'customers',1,'2024-04-26 03:16:11','2024-04-26 03:16:11',NULL),(6,0,'blog',NULL,'blog',1,'2024-04-26 03:16:17','2024-04-26 03:16:17',NULL),(7,0,'stores',NULL,'stores',1,'2024-04-26 03:16:21','2024-04-26 03:16:21',NULL),(8,0,'beauty',NULL,'beauty',0,'2024-04-26 03:16:25','2024-04-26 03:16:25',NULL),(9,0,'sliders',NULL,'sliders',8,'2024-04-26 03:16:25','2024-04-26 03:16:25',NULL),(10,0,'product-categories',NULL,'product-categories',8,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(11,0,'products',NULL,'products',8,'2024-04-26 03:16:26','2024-04-26 03:16:26',NULL),(12,0,'galleries',NULL,'galleries',8,'2024-04-26 03:16:32','2024-04-26 03:16:32',NULL),(13,0,'contact',NULL,'contact',1,'2024-04-26 03:16:34','2024-04-26 03:16:34',NULL),(14,0,'shapes',NULL,'shapes',1,'2024-04-26 03:16:35','2024-04-26 03:16:35',NULL);
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
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-04-26 03:16:34','2024-04-26 03:16:34');
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
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-04-26 03:16:34','2024-04-26 03:16:35'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-04-26 03:16:34','2024-04-26 03:16:34'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(8,1,7,2,'Botble\\Page\\Models\\Page','/product-categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(9,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(10,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(11,1,7,NULL,NULL,'/products/embellished-ballet-flats',NULL,0,'Product Detail',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(12,1,7,3,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(13,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(14,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(15,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(16,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(17,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(18,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(19,1,18,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(20,1,18,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(21,1,18,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(22,1,18,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(23,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(24,1,23,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(25,1,23,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(26,1,23,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Blog Detail',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(27,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(28,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(29,2,0,10,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(30,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(31,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(32,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(33,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(34,3,0,8,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(35,3,0,9,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(36,3,0,7,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(37,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35'),(38,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-04-26 03:16:35','2024-04-26 03:16:35');
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
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-04-26 03:16:34','2024-04-26 03:16:34'),(2,'My Account','my-account','published','2024-04-26 03:16:35','2024-04-26 03:16:35'),(3,'Information','information','published','2024-04-26 03:16:35','2024-04-26 03:16:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'button_label','[\"Shop Collection\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:16:26','2024-04-26 03:16:26'),(2,'button_label','[\"Shop Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:16:26','2024-04-26 03:16:26'),(3,'button_label','[\"Shop Collection\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-04-26 03:16:26','2024-04-26 03:16:26'),(4,'faq_ids','[[1,3,5,8,10]]',1,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:28','2024-04-26 03:16:28'),(5,'faq_ids','[[5,6,8,9,10]]',2,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:28','2024-04-26 03:16:28'),(6,'faq_ids','[[1,2,5,6,7]]',3,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:28','2024-04-26 03:16:28'),(7,'faq_ids','[[1,4,7,8,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:28','2024-04-26 03:16:28'),(8,'faq_ids','[[1,4,8,9,10]]',5,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:28','2024-04-26 03:16:28'),(9,'faq_ids','[[1,2,4,6,7]]',6,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(10,'faq_ids','[[1,5,7,9,10]]',7,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(11,'faq_ids','[[1,2,4,6,9]]',8,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(12,'faq_ids','[[1,2,3,4,9]]',9,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(13,'faq_ids','[[1,3,7,8,10]]',10,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(14,'faq_ids','[[1,4,5,8,10]]',11,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(15,'faq_ids','[[1,3,7,9,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(16,'faq_ids','[[2,4,7,8,9]]',13,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(17,'faq_ids','[[2,3,4,7,10]]',14,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(18,'faq_ids','[[4,5,7,8,10]]',15,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(19,'faq_ids','[[3,4,6,7,9]]',16,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(20,'faq_ids','[[1,3,4,5,8]]',17,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(21,'faq_ids','[[1,2,5,7,10]]',18,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(22,'faq_ids','[[1,3,5,6,9]]',19,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(23,'faq_ids','[[1,4,5,9,10]]',20,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(24,'faq_ids','[[2,3,4,5,7]]',21,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(25,'faq_ids','[[4,5,6,8,9]]',22,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(26,'faq_ids','[[1,4,5,6,7]]',23,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(27,'faq_ids','[[3,4,6,9,10]]',24,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(28,'faq_ids','[[2,4,6,7,10]]',25,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(29,'faq_ids','[[3,5,6,7,10]]',26,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(30,'faq_ids','[[5,6,8,9,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(31,'faq_ids','[[1,2,3,6,9]]',28,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(32,'faq_ids','[[1,3,5,7,8]]',29,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(33,'faq_ids','[[5,6,7,9,10]]',30,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(34,'faq_ids','[[5,6,7,9,10]]',31,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:29','2024-04-26 03:16:29'),(35,'faq_ids','[[1,4,6,7,8]]',32,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:30','2024-04-26 03:16:30'),(36,'faq_ids','[[1,3,4,6,9]]',33,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:30','2024-04-26 03:16:30'),(37,'faq_ids','[[2,4,5,8,9]]',34,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:30','2024-04-26 03:16:30'),(38,'faq_ids','[[3,4,6,7,10]]',35,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:30','2024-04-26 03:16:30'),(39,'faq_ids','[[1,2,3,8,9]]',36,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:30','2024-04-26 03:16:30'),(40,'faq_ids','[[1,4,5,6,8]]',37,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:30','2024-04-26 03:16:30'),(41,'faq_ids','[[4,5,6,8,10]]',38,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:30','2024-04-26 03:16:30'),(42,'faq_ids','[[2,3,4,8,9]]',39,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:30','2024-04-26 03:16:30'),(43,'faq_ids','[[1,3,5,7,9]]',40,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:30','2024-04-26 03:16:30'),(44,'faq_ids','[[2,3,4,5,10]]',41,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:30','2024-04-26 03:16:30'),(45,'faq_ids','[[2,3,5,6,7]]',42,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:30','2024-04-26 03:16:30'),(46,'faq_ids','[[2,4,5,7,8]]',43,'Botble\\Ecommerce\\Models\\Product','2024-04-26 03:16:30','2024-04-26 03:16:30'),(47,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-04-26 03:16:34','2024-04-26 03:16:34'),(48,'breadcrumb_style','[\"align-start\"]',2,'Botble\\Page\\Models\\Page','2024-04-26 03:16:34','2024-04-26 03:16:34');
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
INSERT INTO `mp_stores` VALUES (1,'GoPro','keeling.kristofer@example.com','+19597620145','71232 Ewald Well Suite 429','ML','Maine','South Zoey',5,'main/stores/1.png','main/stores/cover-1.png','Ducimus iure error fugiat et odio repellendus. Voluptas ullam et et accusantium ut est voluptatem. Atque alias quia deleniti magni. Qui dignissimos temporibus repudiandae ullam dolor sit. Quos quos sit maxime sequi et.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:16:25','2024-04-26 03:16:25',NULL,NULL),(2,'Global Office','hettinger.deon@example.net','+17318334708','5737 Gia Walks','MN','Rhode Island','Adahview',7,'main/stores/2.png','main/stores/cover-5.png','A alias dolore sit iure consequatur ad. Blanditiis qui et iure sunt. Ipsum modi dolorem et enim quas doloremque. In ut non qui autem qui. Magnam consectetur nihil quo explicabo et.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:16:25','2024-04-26 03:16:25',NULL,NULL),(3,'Young Shop','alexis.feest@example.net','+14634855209','775 Rhiannon Trail','KP','West Virginia','South Margaretta',2,'main/stores/3.png','main/stores/cover-2.png','Atque ea ipsum quibusdam velit est eum corporis. Quia nesciunt quo modi sunt. In consectetur minus sit dignissimos aperiam. Officia accusantium porro non est et pariatur qui. Vitae qui sed minus velit voluptatem. Qui voluptatem assumenda quos cumque non veritatis. Omnis suscipit pariatur et iure quibusdam. Unde nihil totam tempore. A et voluptatibus libero sit.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:16:25','2024-04-26 03:16:25',NULL,NULL),(4,'Global Store','fschiller@example.net','+19365919340','660 Donnelly Stravenue Suite 457','RU','Massachusetts','West Imelda',7,'main/stores/4.png','main/stores/cover-5.png','Veritatis provident iste qui ipsam iusto dolorem et. Rem consequatur velit eum aut aspernatur fugiat illo unde. Porro quas suscipit et eos atque voluptatum. Quis ipsum aut odit doloribus quis adipisci eos. Alias vero quisquam maxime ea corporis numquam labore atque. Autem saepe aut veritatis consequatur. Iure est tempore autem a praesentium voluptatem.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:16:25','2024-04-26 03:16:25',NULL,NULL),(5,'Robert’s Store','tamia37@example.org','+16574009115','553 Josephine Flats Suite 814','CO','California','Nitzscheland',3,'main/stores/5.png','main/stores/cover-4.png','Reiciendis vel esse corporis autem magni vero possimus. Dolor perspiciatis et commodi qui quia explicabo est ut. Id omnis commodi amet nostrum similique sunt dolores. Ab dolorem asperiores illo. Quasi quibusdam est voluptas reiciendis. Delectus optio facere natus debitis dolores. Iusto illum ut esse nobis. Adipisci est sequi occaecati minus.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:16:25','2024-04-26 03:16:25',NULL,NULL),(6,'Stouffer','darrell.kiehn@example.net','+12035924603','12757 Brekke Meadows Suite 890','VU','New Jersey','East Jarrodton',4,'main/stores/6.png','main/stores/cover-5.png','Et labore quibusdam nemo qui excepturi eum. Adipisci id enim sed dolores aut dolorem. Odit unde sapiente ut reiciendis odio accusantium. Inventore neque earum quam porro quidem rerum odit. Incidunt in est incidunt velit. Sapiente commodi voluptates qui. Et qui libero praesentium quod recusandae.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:16:25','2024-04-26 03:16:25',NULL,NULL),(7,'StarKist','sipes.ned@example.org','+16066168053','629 Rau Flats','CD','Minnesota','South Luciusberg',6,'main/stores/7.png','main/stores/cover-5.png','Odit sed numquam eveniet nostrum facilis qui. Reprehenderit veritatis reprehenderit commodi numquam eveniet. Sed non ut enim et et minima sit. Veniam officiis odio officiis rerum saepe. Natus sed dolore incidunt sit. Nihil voluptatem ad optio.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:16:25','2024-04-26 03:16:25',NULL,NULL),(8,'Old El Paso','matteo.murray@example.com','+18703394351','182 Valerie Valleys','PE','California','West Nellahaven',7,'main/stores/8.png','main/stores/cover-4.png','Et minus doloremque officia harum. Rem dolorem quia dolores doloribus et dicta dolorem totam. Similique magni maxime eum est eum. Veniam natus aut itaque. Ea perspiciatis saepe sed quo rem qui. Et blanditiis voluptatum id est omnis voluptate. Aperiam corrupti nobis iusto aut. Repellat consequatur ea rerum aut quos. Ea maiores dicta rem eos ipsum.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-04-26 03:16:25','2024-04-26 03:16:25',NULL,NULL);
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
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$npV9AM/qnL6rTddSGyNEIu4Ie/2K2c.HDXLhMD3h/kzjQ0acu2a0m','{\"name\":\"Sabryna Hane\",\"number\":\"+17742650560\",\"full_name\":\"Louisa Howell\",\"description\":\"Maddison Ratke\"}','2024-04-26 03:16:23','2024-04-26 03:16:23','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$MipIBtjLtbRdkQH7jwjWZO2spKnPAQkAmmyMRVUhoKvCLUdqFdaI2','{\"name\":\"Miss Bette Shanahan\",\"number\":\"+16515930781\",\"full_name\":\"Doug Ziemann\",\"description\":\"Marshall Dare\"}','2024-04-26 03:16:23','2024-04-26 03:16:23','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$Q/VurazZ4TimnoftuTSWi.cl/vgN5uHs2LZkjLAXOLhKvydMDEw4y','{\"name\":\"Callie Jerde\",\"number\":\"+19203483368\",\"full_name\":\"Prof. Gilbert Wisoky\",\"description\":\"Darryl Welch\"}','2024-04-26 03:16:23','2024-04-26 03:16:23','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$x2s0EqQH3X9a3RnyesB6v.Ml0H88Dq0tjjbsSm2LlN7qC2TzYoE9W','{\"name\":\"Prof. June Hand\",\"number\":\"+18654299933\",\"full_name\":\"Vince Monahan\",\"description\":\"Mrs. Dovie Paucek Jr.\"}','2024-04-26 03:16:24','2024-04-26 03:16:24','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$6pvUSEmJZQtw.CCJs1a77ul.sTVYTJY1MiAo2rfXV5fe8lCKuRSwK','{\"name\":\"Mr. Lonzo Hermiston IV\",\"number\":\"+17725220440\",\"full_name\":\"Stanford Waters\",\"description\":\"Berneice Kunde DDS\"}','2024-04-26 03:16:24','2024-04-26 03:16:24','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$W7Q/sJgPf40s6DSRrcesMOvP751HvlWQ1XVCwJc6wj1/drymV7xeG','{\"name\":\"Triston Botsford\",\"number\":\"+19104109577\",\"full_name\":\"Miles Gorczany\",\"description\":\"Miss Jordane Mayert\"}','2024-04-26 03:16:25','2024-04-26 03:16:25','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$c3ZWKCvBVP1ozu90JViFm..uUxA/wE0nYGcTbKR/6MNhFTbm7BgsS','{\"name\":\"Dr. Montana Hill\",\"number\":\"+14585611930\",\"full_name\":\"Mr. Easter Batz DDS\",\"description\":\"Dante Hoeger\"}','2024-04-26 03:16:25','2024-04-26 03:16:25','bank_transfer',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','[simple-slider customize_font_family_of_description=\"1\" font_family_of_description=\"Charm\" style=\"3\" key=\"home-slider\"][/simple-slider][ecommerce-categories style=\"slider\" category_ids=\"1,2,7,17\" background_color=\"#F3F5F7\" title=\"Discover our products\" subtitle=\"Product Collection\" button_label=\"Shop All Products\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-categories][ecommerce-products style=\"simple\" by=\"specify\" product_ids=\"2,39,41\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-products style=\"grid\" title=\"Best sellers in beauty\" subtitle=\"Shop by Category\" by=\"category\" category_ids=\"2,3,4\" limit=\"8\" background_color=\"rgb(234, 228, 222)\" button_label=\"Shop All Products\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-product-groups title=\"Enjoy the best quality\" subtitle=\"Best Seller This Week’s\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][testimonials style=\"2\" title=\"What our Clients say\" subtitle=\"Customers Review\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials][site-features style=\"2\" quantity=\"4\" title_1=\"Free Delivery\" description_1=\"Orders from all item\" icon_1=\"ti ti-truck-delivery\" title_2=\"Return & Refund\" description_2=\"Money-back guarantee\" icon_2=\"ti ti-currency-dollar\" title_3=\"Member Discount\" description_3=\"Every order over $140.00\" icon_3=\"ti ti-discount-2\" title_4=\"Support 24/7\" description_4=\"Contact us 24 hours a day\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"yes\"][/site-features][gallery style=\"2\" limit=\"6\" enable_lazy_loading=\"yes\"][/gallery]',1,NULL,'full-width',NULL,'published','2024-04-26 03:16:34','2024-04-26 03:16:34'),(2,'Product Categories','[ads style=\"2\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads]<p>&nbsp;</p>[ecommerce-categories category_ids=\"11,14,17,18,21,22,23,25,38\" style=\"grid\" enable_lazy_loading=\"yes\"][/ecommerce-categories]<p>&nbsp;</p><p>&nbsp;</p>',1,NULL,'full-width',NULL,'published','2024-04-26 03:16:34','2024-04-26 03:16:34'),(3,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-04-26 03:16:34','2024-04-26 03:16:34'),(4,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-04-26 03:16:34','2024-04-26 03:16:34'),(5,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-04-26 03:16:34','2024-04-26 03:16:34'),(6,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-04-26 03:16:34','2024-04-26 03:16:34'),(7,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-04-26 03:16:34','2024-04-26 03:16:34'),(8,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-04-26 03:16:34','2024-04-26 03:16:34'),(9,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-04-26 03:16:34','2024-04-26 03:16:34'),(10,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-04-26 03:16:34','2024-04-26 03:16:34');
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
INSERT INTO `post_categories` VALUES (1,1),(6,1),(6,2),(5,2),(2,3),(1,4),(2,4),(5,5),(1,5),(3,6),(3,7),(5,7),(2,8),(1,8),(2,9),(6,9),(4,10),(5,10),(2,11),(3,11),(6,12),(4,12),(4,13),(5,13),(6,14),(3,14),(3,15),(2,15),(1,16),(2,16),(4,17),(1,17),(4,18),(5,18);
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
INSERT INTO `post_tags` VALUES (6,1),(3,1),(8,1),(5,2),(8,2),(2,3),(8,3),(1,3),(5,4),(6,4),(2,4),(7,5),(4,5),(3,5),(7,6),(5,6),(1,6),(4,7),(2,7),(7,7),(3,8),(2,8),(5,8),(6,9),(8,9),(1,9),(8,10),(3,10),(7,10),(3,11),(1,11),(6,11),(1,12),(3,12),(6,12),(7,13),(3,13),(2,13),(6,14),(7,14),(8,14),(1,15),(8,15),(3,15),(6,16),(3,16),(7,16),(7,17),(5,17),(2,17),(3,18),(7,18);
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
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','Alice indignantly, and she hurried out of sight: then it watched the Queen said to herself, \'I wonder if I\'ve been changed for Mabel! I\'ll try and repeat something now. Tell her to speak with. Alice.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-4.jpg',828,NULL,'2024-04-26 03:16:19','2024-04-26 03:16:19'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Duchess; \'and the moral of that is--\"Birds of a dance is it?\' The Gryphon sat up and repeat something now. Tell her to carry it further. So she set off at once: one old Magpie began wrapping itself.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',121,NULL,'2024-04-26 03:16:19','2024-04-26 03:16:19'),(3,'The Top 2020 Handbag Trends to Know','She is such a capital one for catching mice you can\'t help it,\' said the Caterpillar. Alice said very politely, \'if I had to run back into the darkness as hard as it went, as if he had a large.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',2401,NULL,'2024-04-26 03:16:19','2024-04-26 03:16:19'),(4,'How to Match the Color of Your Handbag With an Outfit','Caterpillar. Here was another long passage, and the two sides of the March Hare interrupted in a VERY turn-up nose, much more like a telescope.\' And so she waited. The Gryphon sat up and say \"How.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',2414,NULL,'2024-04-26 03:16:19','2024-04-26 03:16:19'),(5,'How to Care for Leather Bags','Hatter, \'when the Queen merely remarking as it went. So she began looking at it uneasily, shaking it every now and then said, \'It WAS a narrow escape!\' said Alice, swallowing down her flamingo, and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',2147,NULL,'2024-04-26 03:16:19','2024-04-26 03:16:19'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','It did so indeed, and much sooner than she had been all the jurymen are back in a natural way again. \'I should think you\'ll feel it a bit, if you want to see what was on the trumpet, and then keep.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-3.jpg',1427,NULL,'2024-04-26 03:16:19','2024-04-26 03:16:19'),(7,'Essential Qualities of Highly Successful Music','Duchess: \'and the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is only a pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t help it,\' she thought, and it was certainly.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-11.jpg',395,NULL,'2024-04-26 03:16:19','2024-04-26 03:16:19'),(8,'9 Things I Love About Shaving My Head','THAT in a court of justice before, but she felt that there was a dead silence instantly, and neither of the words did not quite like the name: however, it only grinned a little timidly, for she was.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',776,NULL,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(9,'Why Teamwork Really Makes The Dream Work','An enormous puppy was looking about for them, but they were lying round the thistle again; then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',447,NULL,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(10,'The World Caters to Average People','I shall see it written down: but I shall never get to the jury. \'Not yet, not yet!\' the Rabbit say, \'A barrowful will do, to begin with,\' the Mock Turtle, and said nothing. \'Perhaps it doesn\'t.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-9.jpg',1615,NULL,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(11,'The litigants on the screen are not actors','This of course, Alice could see this, as she was out of the jurymen. \'No, they\'re not,\' said the King, going up to Alice, and looking anxiously about her. \'Oh, do let me hear the Rabbit hastily.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',1307,NULL,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(12,'Hiring the Right Sales Team at the Right Time','King said to herself. Imagine her surprise, when the White Rabbit blew three blasts on the whole party at once in the beautiful garden, among the party. Some of the earth. At last the Mouse, who was.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',1280,NULL,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(13,'Fully Embrace the Return of 90s fashion','Alice, and her eyes anxiously fixed on it, or at any rate: go and get ready to make ONE respectable person!\' Soon her eye fell on a branch of a large pigeon had flown into her eyes--and still as she.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-8.jpg',1714,NULL,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(14,'Exploring the English Countryside','Alice; \'I must go back by railway,\' she said this, she was getting quite crowded with the Lory, who at last she spread out her hand, and Alice was rather doubtful whether she ought not to be a grin.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-1.jpg',1303,NULL,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(15,'Here’s the First Valentino’s New Makeup Collection','But here, to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing and howling alternately without a moment\'s pause. The only.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-5.jpg',1525,NULL,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(16,'Follow Your own Design process, whatever gets','I\'m sure I can\'t understand it myself to begin with.\' \'A barrowful of WHAT?\' thought Alice to herself, and nibbled a little now and then I\'ll tell him--it was for bringing the cook was busily.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-7.jpg',927,NULL,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(17,'Freelancer Days 2024, What’s new?','That he met in the night? Let me see: that would be the right size, that it was very fond of beheading people here; the great puzzle!\' And she went hunting about, and crept a little of her favourite.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-3.jpg',988,NULL,'2024-04-26 03:16:20','2024-04-26 03:16:20'),(18,'Quality Foods Requirments For Every Human Body’s','But I\'d better take him his fan and gloves--that is, if I know is, it would feel with all her knowledge of history, Alice had no idea what you\'re doing!\' cried Alice, quite forgetting her promise.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-5.jpg',1557,NULL,'2024-04-26 03:16:20','2024-04-26 03:16:20');
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
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.website-tracking\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,1,1,'2024-04-26 03:16:11','2024-04-26 03:16:11');
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
INSERT INTO `settings` VALUES (1,'media_random_hash','a4bc490071e8d99368a177f56b0cfd24',NULL,'2024-04-26 03:16:35'),(2,'api_enabled','0',NULL,'2024-04-26 03:16:35'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-04-26 03:16:35'),(6,'theme','shofy-beauty',NULL,'2024-04-26 03:16:35'),(7,'show_admin_bar','1',NULL,'2024-04-26 03:16:35'),(8,'payment_cod_status','1',NULL,'2024-04-26 03:16:35'),(9,'payment_bank_transfer_status','1',NULL,'2024-04-26 03:16:35'),(10,'admin_favicon','main/general/favicon.png',NULL,'2024-04-26 03:16:35'),(11,'admin_logo','main/general/logo-white.png',NULL,'2024-04-26 03:16:35'),(12,'permalink-botble-blog-models-post','blog',NULL,'2024-04-26 03:16:35'),(13,'permalink-botble-blog-models-category','blog',NULL,'2024-04-26 03:16:35'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-04-26 03:16:35'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-04-26 03:16:35'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-04-26 03:16:35'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-04-26 03:16:35'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-04-26 03:16:35'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-04-26 03:16:35'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-04-26 03:16:35'),(21,'announcement_lazy_loading','1',NULL,'2024-04-26 03:16:35'),(22,'language_hide_default','1',NULL,'2024-04-26 03:16:35'),(23,'language_switcher_display','dropdown',NULL,'2024-04-26 03:16:35'),(24,'language_display','all',NULL,'2024-04-26 03:16:35'),(25,'language_hide_languages','[]',NULL,'2024-04-26 03:16:35'),(26,'ecommerce_store_name','Shofy',NULL,'2024-04-26 03:16:35'),(27,'ecommerce_store_phone','1800979769',NULL,'2024-04-26 03:16:35'),(28,'ecommerce_store_address','502 New Street',NULL,'2024-04-26 03:16:35'),(29,'ecommerce_store_state','Brighton VIC',NULL,'2024-04-26 03:16:35'),(30,'ecommerce_store_city','Brighton VIC',NULL,'2024-04-26 03:16:35'),(31,'ecommerce_store_country','AU',NULL,'2024-04-26 03:16:35'),(32,'announcement_max_width','1390',NULL,'2024-04-26 03:16:35'),(33,'announcement_text_color','#010f1c',NULL,'2024-04-26 03:16:35'),(34,'announcement_background_color','transparent',NULL,'2024-04-26 03:16:35'),(35,'announcement_placement','theme',NULL,'2024-04-26 03:16:35'),(36,'announcement_text_alignment','start',NULL,'2024-04-26 03:16:35'),(37,'announcement_dismissible','0',NULL,'2024-04-26 03:16:35'),(38,'simple_slider_using_assets','0',NULL,'2024-04-26 03:16:35'),(39,'theme-shofy-beauty-site_name','Shofy',NULL,NULL),(40,'theme-shofy-beauty-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(41,'theme-shofy-beauty-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(42,'theme-shofy-beauty-copyright','© %Y All Rights Reserved.',NULL,NULL),(43,'theme-shofy-beauty-tp_primary_font','Jost',NULL,NULL),(44,'theme-shofy-beauty-primary_color','#BD844C',NULL,NULL),(45,'theme-shofy-beauty-favicon','main/general/favicon.png',NULL,NULL),(46,'theme-shofy-beauty-logo','main/general/logo.png',NULL,NULL),(47,'theme-shofy-beauty-logo_light','main/general/logo-white.png',NULL,NULL),(48,'theme-shofy-beauty-header_style','3',NULL,NULL),(49,'theme-shofy-beauty-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(50,'theme-shofy-beauty-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(51,'theme-shofy-beauty-hotline','8 800 332 65-66',NULL,NULL),(52,'theme-shofy-beauty-email','contact@fartmart.co',NULL,NULL),(53,'theme-shofy-beauty-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(54,'theme-shofy-beauty-homepage_id','1',NULL,NULL),(55,'theme-shofy-beauty-blog_page_id','5',NULL,NULL),(56,'theme-shofy-beauty-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(57,'theme-shofy-beauty-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(58,'theme-shofy-beauty-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(59,'theme-shofy-beauty-number_of_products_per_page','24',NULL,NULL),(60,'theme-shofy-beauty-number_of_cross_sale_product','6',NULL,NULL),(61,'theme-shofy-beauty-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(62,'theme-shofy-beauty-ecommerce_product_item_style','3',NULL,NULL),(63,'theme-shofy-beauty-logo_in_the_checkout_page','main/general/logo.png',NULL,NULL),(64,'theme-shofy-beauty-logo_in_invoices','main/general/logo.png',NULL,NULL),(65,'theme-shofy-beauty-logo_vendor_dashboard','main/general/logo.png',NULL,NULL),(66,'theme-shofy-beauty-404_page_image','main/general/404.png',NULL,NULL),(67,'theme-shofy-beauty-newsletter_popup_enable','1',NULL,NULL),(68,'theme-shofy-beauty-newsletter_popup_image','main/general/newsletter-popup.png',NULL,NULL),(69,'theme-shofy-beauty-newsletter_popup_title','Subscribe Now',NULL,NULL),(70,'theme-shofy-beauty-newsletter_popup_subtitle','Newsletter',NULL,NULL),(71,'theme-shofy-beauty-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(72,'theme-shofy-beauty-lazy_load_images','1',NULL,NULL),(73,'theme-shofy-beauty-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(74,'theme-shofy-beauty-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(75,'theme-shofy-beauty-section_title_shape_decorated','none',NULL,NULL),(76,'theme-shofy-beauty-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(77,'theme-shofy-beauty-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(78,'theme-shofy-beauty-header_top_background_color','#fff',NULL,NULL),(79,'theme-shofy-beauty-header_top_text_color','#010f1c',NULL,NULL),(80,'theme-shofy-beauty-header_main_background_color','transparent',NULL,NULL),(81,'theme-shofy-beauty-header_main_text_color','#010f1c',NULL,NULL);
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
INSERT INTO `simple_slider_items` VALUES (1,1,'The Clothing Collection','beauty/sliders/slider-1.jpg','/products','New Arrivals 2023',0,'2024-04-26 03:16:26','2024-04-26 03:16:26'),(2,1,'The Summer Collection','beauty/sliders/slider-2.jpg','/products','Best Selling 2023',1,'2024-04-26 03:16:26','2024-04-26 03:16:26'),(3,1,'Amazing New designs','beauty/sliders/slider-3.jpg','/products','Winter Has Arrived',2,'2024-04-26 03:16:26','2024-04-26 03:16:26');
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
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-04-26 03:16:26','2024-04-26 03:16:26');
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:16:11','2024-04-26 03:16:11'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:16:11','2024-04-26 03:16:11'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:16:11','2024-04-26 03:16:11'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:16:11','2024-04-26 03:16:11'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-04-26 03:16:11','2024-04-26 03:16:11'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:16:16','2024-04-26 03:16:16'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:16:16','2024-04-26 03:16:16'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:16:16','2024-04-26 03:16:16'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:16:16','2024-04-26 03:16:16'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:16:16','2024-04-26 03:16:16'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-04-26 03:16:16','2024-04-26 03:16:16'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:16:19','2024-04-26 03:16:19'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:16:19','2024-04-26 03:16:19'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:16:19','2024-04-26 03:16:19'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:16:19','2024-04-26 03:16:19'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:16:19','2024-04-26 03:16:19'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-04-26 03:16:19','2024-04-26 03:16:19'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:16:19','2024-04-26 03:16:19'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:16:19','2024-04-26 03:16:19'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:16:19','2024-04-26 03:16:19'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:16:19','2024-04-26 03:16:19'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:16:19','2024-04-26 03:16:19'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:16:19','2024-04-26 03:16:19'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:16:19','2024-04-26 03:16:19'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-04-26 03:16:19','2024-04-26 03:16:19'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:19','2024-04-26 03:16:19'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:19','2024-04-26 03:16:19'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:19','2024-04-26 03:16:19'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:19','2024-04-26 03:16:19'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:19','2024-04-26 03:16:19'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:19','2024-04-26 03:16:19'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:20','2024-04-26 03:16:20'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:20','2024-04-26 03:16:20'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:20','2024-04-26 03:16:20'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:20','2024-04-26 03:16:20'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:20','2024-04-26 03:16:20'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:20','2024-04-26 03:16:20'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:20','2024-04-26 03:16:20'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:20','2024-04-26 03:16:20'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:20','2024-04-26 03:16:20'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:20','2024-04-26 03:16:20'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:20','2024-04-26 03:16:20'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-04-26 03:16:20','2024-04-26 03:16:20'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:16:25','2024-04-26 03:16:25'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:16:25','2024-04-26 03:16:25'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:16:25','2024-04-26 03:16:25'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:16:25','2024-04-26 03:16:25'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:16:25','2024-04-26 03:16:25'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:16:25','2024-04-26 03:16:25'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:16:25','2024-04-26 03:16:25'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-04-26 03:16:25','2024-04-26 03:16:25'),(52,'discover-skincare',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(53,'clothing',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(54,'mens-clothing',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(55,'t-shirts',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(56,'jeans',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(57,'suits',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(58,'womens-clothing',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(59,'dresses',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(60,'blouses',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(61,'pants',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(62,'accessories',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(63,'hats',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(64,'scarves',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(65,'jewelry',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(66,'shoes',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(67,'sportswear',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(68,'activewear',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(69,'running-shoes',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-04-26 03:16:26','2024-04-26 03:16:26'),(70,'vintage-denim-jacket',1,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:28','2024-04-26 03:16:28'),(71,'floral-maxi-dress',2,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:28','2024-04-26 03:16:28'),(72,'leather-ankle-boots',3,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:28','2024-04-26 03:16:28'),(73,'knit-turtleneck-sweater-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:28','2024-04-26 03:16:39'),(74,'classic-aviator-sunglasses',5,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:28','2024-04-26 03:16:28'),(75,'tailored-wool-blazer',6,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(76,'bohemian-fringe-handbag',7,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(77,'silk-scarf-with-geometric-print-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:39'),(78,'high-waisted-wide-leg-trousers',9,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(79,'embroidered-boho-blouse',10,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(80,'statement-chunky-necklace',11,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(81,'chic-fedora-hat-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:39'),(82,'strappy-block-heel-sandals',13,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(83,'velvet-evening-gown',14,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(84,'quilted-crossbody-bag',15,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(85,'distressed-skinny-jeans-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:39'),(86,'lace-up-combat-boots',17,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(87,'cotton-striped-t-shirt-dress',18,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(88,'printed-palazzo-pants',19,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(89,'structured-satchel-bag-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:39'),(90,'off-shoulder-ruffle-top',21,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(91,'suede-pointed-toe-pumps',22,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(92,'cropped-cable-knit-sweater',23,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(93,'athleisure-jogger-pants-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:39'),(94,'leopard-print-midi-skirt',25,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(95,'retro-cat-eye-sunglasses',26,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(96,'faux-fur-trimmed-coat',27,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(97,'boho-fringed-kimono-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:39'),(98,'ruffled-wrap-dress',29,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(99,'beaded-evening-clutch',30,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(100,'wide-brim-floppy-hat',31,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:29','2024-04-26 03:16:29'),(101,'denim-overall-jumpsuit-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:30','2024-04-26 03:16:39'),(102,'embellished-ballet-flats',33,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:30','2024-04-26 03:16:30'),(103,'pleated-midi-skirt',34,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:30','2024-04-26 03:16:30'),(104,'velour-tracksuit-set',35,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:30','2024-04-26 03:16:30'),(105,'geometric-patterned-cardigan-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:30','2024-04-26 03:16:39'),(106,'buckle-detail-ankle-booties',37,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:30','2024-04-26 03:16:30'),(107,'embroidered-bomber-jacket',38,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:30','2024-04-26 03:16:30'),(108,'cowl-neck-knit-poncho',39,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:30','2024-04-26 03:16:30'),(109,'chunky-knit-infinity-scarf-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:30','2024-04-26 03:16:39'),(110,'retro-high-top-sneakers',41,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:30','2024-04-26 03:16:30'),(111,'faux-leather-leggings',42,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:30','2024-04-26 03:16:30'),(112,'metallic-pleated-maxi-skirt',43,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:30','2024-04-26 03:16:30'),(113,'radiant-reflections',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:16:33','2024-04-26 03:16:33'),(114,'glamour-grove',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:16:33','2024-04-26 03:16:33'),(115,'serene-styles-showcase',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:16:33','2024-04-26 03:16:33'),(116,'allure-alcove',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:16:33','2024-04-26 03:16:33'),(117,'glamour-galleria',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:16:33','2024-04-26 03:16:33'),(118,'beauty-boulevard',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-04-26 03:16:33','2024-04-26 03:16:33'),(119,'home',1,'Botble\\Page\\Models\\Page','','2024-04-26 03:16:34','2024-04-26 03:16:34'),(120,'product-categories',2,'Botble\\Page\\Models\\Page','','2024-04-26 03:16:34','2024-04-26 03:16:34'),(121,'coupons',3,'Botble\\Page\\Models\\Page','','2024-04-26 03:16:34','2024-04-26 03:16:34'),(122,'coupons',4,'Botble\\Page\\Models\\Page','','2024-04-26 03:16:34','2024-04-26 03:16:34'),(123,'blog',5,'Botble\\Page\\Models\\Page','','2024-04-26 03:16:34','2024-04-26 03:16:34'),(124,'contact',6,'Botble\\Page\\Models\\Page','','2024-04-26 03:16:34','2024-04-26 03:16:34'),(125,'cookie-policy',7,'Botble\\Page\\Models\\Page','','2024-04-26 03:16:34','2024-04-26 03:16:34'),(126,'our-story',8,'Botble\\Page\\Models\\Page','','2024-04-26 03:16:34','2024-04-26 03:16:34'),(127,'careers',9,'Botble\\Page\\Models\\Page','','2024-04-26 03:16:34','2024-04-26 03:16:34'),(128,'shipping',10,'Botble\\Page\\Models\\Page','','2024-04-26 03:16:34','2024-04-26 03:16:34'),(129,'knit-turtleneck-sweater-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(130,'knit-turtleneck-sweater-digital',45,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(131,'bohemian-fringe-handbag',46,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(132,'high-waisted-wide-leg-trousers',47,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(133,'high-waisted-wide-leg-trousers',48,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(134,'high-waisted-wide-leg-trousers',49,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(135,'statement-chunky-necklace',50,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(136,'statement-chunky-necklace',51,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(137,'velvet-evening-gown',52,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(138,'velvet-evening-gown',53,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(139,'velvet-evening-gown',54,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(140,'quilted-crossbody-bag',55,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(141,'quilted-crossbody-bag',56,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(142,'lace-up-combat-boots',57,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(143,'lace-up-combat-boots',58,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(144,'structured-satchel-bag-digital',59,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(145,'suede-pointed-toe-pumps',60,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(146,'suede-pointed-toe-pumps',61,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(147,'suede-pointed-toe-pumps',62,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(148,'cropped-cable-knit-sweater',63,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(149,'cropped-cable-knit-sweater',64,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(150,'cropped-cable-knit-sweater',65,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(151,'athleisure-jogger-pants-digital',66,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(152,'retro-cat-eye-sunglasses',67,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(153,'ruffled-wrap-dress',68,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(154,'embroidered-bomber-jacket',69,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(155,'retro-high-top-sneakers',70,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(156,'faux-leather-leggings',71,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(157,'faux-leather-leggings',72,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(158,'metallic-pleated-maxi-skirt',73,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39'),(159,'metallic-pleated-maxi-skirt',74,'Botble\\Ecommerce\\Models\\Product','products','2024-04-26 03:16:39','2024-04-26 03:16:39');
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
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:16:19','2024-04-26 03:16:19'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:16:19','2024-04-26 03:16:19'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:16:19','2024-04-26 03:16:19'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:16:19','2024-04-26 03:16:19'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:16:19','2024-04-26 03:16:19'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:16:19','2024-04-26 03:16:19'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:16:19','2024-04-26 03:16:19'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-04-26 03:16:19','2024-04-26 03:16:19');
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
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/4.jpg','Developer','published','2024-04-26 03:16:25','2024-04-26 03:16:25'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/10.jpg','CO Founder','published','2024-04-26 03:16:25','2024-04-26 03:16:25'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/10.jpg','UI/UX Designer','published','2024-04-26 03:16:25','2024-04-26 03:16:25'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/4.jpg','Bank of America','published','2024-04-26 03:16:25','2024-04-26 03:16:25');
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
INSERT INTO `users` VALUES (1,'brook07@west.com',NULL,'$2y$12$iz7xRqVSVQXwzsIw3y8DdO/PCP./oFwNfNeR1F4cIZmITaeSg5sEO',NULL,'2024-04-26 03:16:11','2024-04-26 03:16:11','Adeline','Bogan','admin',NULL,1,1,NULL,NULL);
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
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy-beauty',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy-beauty',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy-beauty',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(4,'SiteContactWidget','footer_primary_sidebar','shofy-beauty',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy-beauty',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[5,6,7,8,10,11,12]}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy-beauty',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy-beauty',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(8,'ProductCategoriesWidget','footer_primary_sidebar','shofy-beauty',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(9,'NewsletterWidget','footer_top_sidebar','shofy-beauty',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(10,'SiteCopyrightWidget','footer_bottom_sidebar','shofy-beauty',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(11,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy-beauty',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(12,'BlogSearchWidget','blog_sidebar','shofy-beauty',1,'{\"id\":\"BlogSearchWidget\"}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(13,'BlogAboutMeWidget','blog_sidebar','shofy-beauty',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/3.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(14,'BlogPostsWidget','blog_sidebar','shofy-beauty',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(15,'BlogCategoriesWidget','blog_sidebar','shofy-beauty',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(16,'BlogTagsWidget','blog_sidebar','shofy-beauty',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(17,'ProductDetailInfoWidget','product_details_sidebar','shofy-beauty',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(18,'EcommerceBrands','products_listing_top_sidebar','shofy-beauty',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2024-04-26 03:16:36','2024-04-26 03:16:36'),(19,'ProductCategoriesWidget','products_listing_top_sidebar','shofy-beauty',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[1,2,7,11,15,18],\"style\":\"grid\",\"display_children\":true}','2024-04-26 03:16:36','2024-04-26 03:16:36');
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

-- Dump completed on 2024-04-26 17:16:40
