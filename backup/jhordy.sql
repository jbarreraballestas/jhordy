-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: jhordy
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `jhordy`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jhordy` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `jhordy`;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefijo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mensaje` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Product 12',3,'2022-06-03 18:36:28','2022-06-07 01:52:51'),(2,'Product 2',2,'2022-06-03 18:36:40','2022-06-07 01:52:53'),(3,'Product 3',1,'2022-06-03 18:36:50','2022-06-07 01:52:53');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2022_06_02_214422_create_sessions_table',1),(7,'2022_06_02_220943_create_items_table',2),(8,'0000_00_00_000000_create_websockets_statistics_entries_table',3),(10,'2022_06_22_141410_create_contactos_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('jbarrera@cetiia.com.co','$2y$10$nGp63VpEuvt25jOTw40EeeLIa70pyRMI/YUXH0yDusDTRiOm0K2G.','2022-06-24 02:11:14'),('jbarreraballestas@gmail.com','$2y$10$EUg8R4XP855jBEKYLBDIPe3kjEXEwcCp0Mb1rFL2CTm44JSsWqpja','2022-07-12 00:36:53');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('16gToQiuTGczbbjBpEVgQpy2wiOerHkbxMzJLlJA',NULL,'110.177.182.65','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibkZxOU81bVJONGRpMEJIZDVWTkhJVUpjNjd4TEZOOW4ydDk2VU1idSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658735338),('2y82WRYBj9cZxUW0H64VwjmW7W4TcW9W85qPXSmL',NULL,'167.235.52.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDhaa2lIeldhcHNscjVDZ3FIWXZvOXNhZ2pBbUpIc0VEUzBtNjZkYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658762684),('3iMqYjqArXkZ0sKN5nexsxUlDpW4Zt6uEtmFv7Kp',NULL,'111.175.6.212','Mozilla/5.0 (iPad; CPU OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3NuWFRnVVhWdEVrMFZ3WTJ5OU93UGdnQjN6bTNCVHl6WFZIbEw4ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vamhvcmR5Lnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658735331),('5Bn7jMRmuoTTodialYZLPMruG2dqvdAFqpEoDx4l',NULL,'35.87.174.209','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_3) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.65 Safari/537.31','YTozOntzOjY6Il90b2tlbiI7czo0MDoid0g3MmRWS2JVdGVsellqT1pvbnF2UTNQeEtJd29FNlJ5dGJlOVdUQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658659016),('6XAkbkOGTdQoclvzo9k6qa9Pc3DZPpOF2x6PsgHq',NULL,'198.235.24.160','Expanse indexes customers’ network perimeters. If you have any questions or concerns, please reach out to: scaninfo@expanseinc.com.','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHlsWU9HQmgySlR2T2I3cFlHaUVPMHd2YU5YMTdlQkJwUUE4dU43QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658776338),('99ZhvsvSpAs6psJgXibihOWWRpxscNxxRRem77ov',NULL,'20.226.32.206','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoickxBTUh6ZVQxNk5PdWRiVTBtU3BtS1B3S1pNOHdPUXdtQlZSRk13NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658836789),('9lBNuh6S2NEfWjrJung0ULyvThBfO9iMIjXXA9WU',NULL,'124.221.186.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaTliS0pnUjJQUnExZlVaWXN2VXhVbzE1RVdVUE5sWDdvY3NwNVhRMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658821695),('9snHMGmWL6WTpPXrP40ilZfrM1avVthWXhWmf9H3',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4086.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibTRLbFE2ZDlSRTdYV0l1ak1iVDQ4Vkp6bjJsdXRiVXJsdVc3WTJmSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658767524),('9ulsAkF9mnTAORaE2Zx8Ul6qSXRudJwlaliptXIx',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiU3VObGxzNG41TzZSc2djUzYxZ0hjQU1qMDVTckxxRWVzRUdTajJTeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658725359),('Aw3GCnevkI6SnJvMGoaXEwsa6vwxBAf7v0lrjtb3',NULL,'20.226.32.206','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoid2RDN1IzYjhsY0pNTEsySzlncXp1SXBiZDExN0xUZVg0NUdlcDNETCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658836788),('bC9OLjCNRCS9ToEIT7JRv2IBBjudnkOHLwsTq13M',NULL,'36.5.69.4','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTVFb3ZuMG1sZ2lucjFwdFdqQTc4QWc4amFieGVadUxra0d6VXp6QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vamhvcmR5Lnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658726032),('Bl5PiurQ7wvmTKxqf6Km2DONhdIQutPQRNKhCHws',NULL,'124.221.186.82','Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicnlBWFhFS1NrQzc3dXhld2dNT0w1V3VzZEM4Y2l3NnFSUEdQajJvMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658821343),('C22R6EdcxCPVFtxpvYxxaszf9aSkxaIS7bVSjX2e',NULL,'110.177.183.21','Mozilla/5.0 (Linux; U; Android 4.3; en-us; SM-N900T Build/JSS15J) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnF5T2hndHh0aGpiT3Y5M2dxVUl6U3hnV3d5b2J2TWZjRUtDR2lyaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658735371),('Ce1a3kAdWkC9Uwbw5bNy27WJNf6loFibIyAI8zg3',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4093.3 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWG5QOHVsanRIcXFNY29NNFh6R1BtNnhCc0dGZVlqRWplaEZYNjlMRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658655228),('ddjRVfpzGASAIx7fwfbbm8FLtUXuK3kO2x5m18Zi',NULL,'51.254.199.11','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWG5vOVpHN0tMSWc5OXE1RkdwUHhVNEtKNU1pRDVOeG40VDBTWXplQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658754180),('ERMDqC10W7xK7S3L3d0h2rkMRUarLRUvR7iRjhWE',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 10.0; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.34 Safari/537.36 Edg/83.0.478.25','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVFLVFY2Smd4VUNWM3dOQU9CaHVSMkRuZXU3RVVmbmdvSnp4N1RYViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658828115),('ga0yyycq3NLUrAtSqsdPKFA9cA2S0Aa49r9wjuGV',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibURZR0Via0p3UVdvbUxxQ0JTN3VoNXZOc3RXRVpxdTUydDg3b0FFTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658711293),('Hg8ZkeDhCNaA7jvMnIzh7laXdWePigSymN4Yyr3w',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36/iYA9HebN-7','YTozOntzOjY6Il90b2tlbiI7czo0MDoibHloNVdiMnd1MEJ0QVFKeXhuMkpnS1ZTalBURGFQVkdXalFtTTVvTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658782105),('HigNTOw0LbPJkUGuTKq8k2vhshivBn3stT2cM12B',NULL,'20.226.32.206','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicGNQT0FhVFdVVGNjU293ODMxRlZUMzJjMUVqajF4eUtPNjJaN2xFUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658836788),('IE9wvjc29jJ4AdLCCZgXAxwFIAfxMRNaN06qw0VI',NULL,'110.80.169.72','Mozilla/5.0 (Linux; U; Android 4.3; en-us; SM-N900T Build/JSS15J) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjlyWjU0Z1Y1OVVaSzlVVml5VUpqVndnVGVNcjBZeWlSN2lHQk9TOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658718313),('iGxXGuEbgKcOBh953b76uBkHEqKFNbJ8DX5zXvIo',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4093.3 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicmN1UzkwdTJzMlpQVDJwNFY2QmZ6ZkhGSXhxR1JZc3BLejVUMlpsVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658856459),('jHfHhIZW0ihQVLG52u5po3pvJjMVSIYthNWQHQxL',NULL,'51.222.253.18','Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoidHdydDNFaHJlR1hOVm1UMEhIWkpDcldZdVVDSTBtNm5xc2RKd0l4OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658853345),('jYqU1P7D13RUxzPqMJsDlIVOh5rElnIIvebdLyUP',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWmM1TlRodDh1WTRLVFZoTmtyN25zcHpTQnhQZjJUb0hraGVmZHhTVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658683212),('NZWa4qTA3jQAlrqfgqxdRSuXL7hdJz0XEIOVO3Ny',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4098.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWFwa1FFaG5telgxUnlFUHZRRmtOSW9Ja2JTTVdnVFZnUEpwUkFaMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658739405),('O7cNfonQ2jQRtMRN1okZxKbfrdETLPS2oslMOMyo',NULL,'35.88.22.137','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoieWhTTjV1eEpRRGtHV0pLVGZESDVYOXMwcldkbnlLR09WNmdTcnE4dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658826981),('oK8688efREr6wEQrH7ENPDBtNlnLggslfuenHHif',NULL,'52.12.70.161','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRjliRm9CR01wcUZhendwU29lUWJwd2dkN0gxNXV1Y3B5R2Nwbng2NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658826969),('phjkRK3a9fAvaETjPLFEFqW7Q5jHwo5RhEKzmh9u',NULL,'167.235.52.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0llcmlSV29TWVRxcDRnTUMyT1luRUFXOFQwYURyd1VwYWx1SU9wMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658762684),('PSumzYoJvSXhRWc27LKzS7He9PHUqJgzRZTQVIv9',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4087.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkcwQW11VnJqR2dCUFdreXRNeGhGTGxIaFJoc2VxWlB0YllKNVpKeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658697302),('Q7vo28LtCPm85U5ZftDwUvINKF5T7VoJqSzkPR4c',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 10.0; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4086.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFppSk11bEhTNVhTc3ByN2U1R0M4ZmNDMmtNdVNlclhvSGxwd3gzeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658753480),('qCvheq3CLc0TJeZL6R9gJObCTwI4uazJDjw1kIBG',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4098.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1JXNWRwblphU0paQlhTamE2MUR4b0Y3WGpzcllSVURIVkJFbHM5RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658799685),('qk8knCbPgrIoZce7hGy0ebW9Iwe1hbfDayx2RLLw',NULL,'150.255.252.92','Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEx2SEN3dnJNdjRzbXpJQXJ0dVpvd2M2T2JTWWZRZ0VsNnhTdjIyTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658726045),('rJ6xGpYGD7YKqBQsOrmUjKxtVcsunLwVAH8fiXEF',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.34 Safari/537.36 Edg/83.0.478.25','YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0RrM05FdG8xdVFoankzRVlTY3hBbFNUVFVrQWNnZkczdE9xQVYxdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658813843),('SkbLZHI1JluiYmBisLoCQhICAnZEjYFJip7nlSUN',NULL,'51.222.253.5','Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3NiTXBKY1FLdkEyZEROMW1uc00yRzZwOVFqTUNhQW9wem9jTlM3YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vamhvcmR5Lnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658776534),('TdBkJOcPHeSz9nexLZnubNdLq9yElXPULK6BnowN',NULL,'190.0.37.82','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXRtOXJ3Rm5BM0JEMUgwTDE2RDhMekhtSVFjS2JvVzhVbE5lSDloeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658862968),('tdZCNyF25R5QtH8gdnoldQnyULvv20eyDeWyptyy',NULL,'180.136.132.138','Mozilla/4.066686748 Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)','YTozOntzOjY6Il90b2tlbiI7czo0MDoicTNKRk56cWwyeWsxOUoyUkpnRFdab3p1RFN2MjEyQmlaU1ZMbG1yUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vamhvcmR5Lnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658718310),('U3Fwmwsn7bvZ08LSptpZPlZNoaLgpzYKfRJtiHvS',NULL,'190.0.37.82','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUZrZFNmenpwc1JqazBVYUh2S0RWcmNQZ3BZV2plVVExeUo2Y1NJUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vamhvcmR5Lnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658862962),('V9PGpgUTWKHGKhyR8q14WWvVXiv8KtCb5Clz9EG3',NULL,'167.235.52.250','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSlNUT0xUN1lvdHNQMWdUME5kY1hTY3lKMnc5aVoyZVA4Wk5WUUk0NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658762683),('VW5Hzm8i49MSLQxvollGXSBLE4kdH8tmCh4sNuAe',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 10.0; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.34 Safari/537.36 Edg/83.0.478.25','YTozOntzOjY6Il90b2tlbiI7czo0MDoidVQ0azgxbjFpR0xyZ1BjbGtSTjJETkhGeXcxUzRyamhvbFo5d1VHciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658842400),('WAqkQuuOIexDc4e4rxYEMHPyLqefbmRe5jVqunLG',NULL,'42.83.147.34','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2pQZklaUjNvVGlBb0c2RkhNS3FuREc5RUU4eG5RcGVnSDJQTFV3YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658716373),('Y1YL0niVU2XKw1VMtLbfyLQB0lKtmnlcWbM0tPxw',NULL,'198.235.24.6','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com','YTozOntzOjY6Il90b2tlbiI7czo0MDoibjJicjZ2TU9mS3dpaU9idE1CbnZNenBBT2RXR1ZKM2pQeW9XWHJDTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc6Imh0dHA6Ly9qaG9yZHkueHl6Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1658793453),('yJlLj54SbEWgsUMEQtiA5391DHK3wX4Jc6WGN4Fg',NULL,'51.222.253.2','Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3B4aUljVjBUTXJvTXZKelhMYmd2T0ZZc3FuV3ZybndEZzNHdGRrdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vamhvcmR5Lnh5eiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658683514),('ykn5KcAcmf6Oh3EQAi46G34gcuVk83uP39HTF4HT',NULL,'46.161.11.213','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.24 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXgySFN1WVBiUWhBenVWa1FRaTFSYUR4QXlRYXlXMnZQdW43TUFYaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9qaG9yZHkueHl6L2NvbnRhY3RvL2NyZWF0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1658669152);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jhordy Barrera','jbarreraballestas@gmail.com',NULL,'$2y$10$yYpb3oMFsYaIbocnDa7gAuLjFeQPk6e9ajcq6K7OZFYGxQt.LIRUm',NULL,NULL,NULL,NULL,NULL,NULL,'2022-06-03 04:03:03','2022-06-03 04:03:03');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `websockets_statistics_entries`
--

DROP TABLE IF EXISTS `websockets_statistics_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websockets_statistics_entries`
--

LOCK TABLES `websockets_statistics_entries` WRITE;
/*!40000 ALTER TABLE `websockets_statistics_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `websockets_statistics_entries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-26 14:21:15
