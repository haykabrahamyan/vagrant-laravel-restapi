/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 10.1.29-MariaDB : Database - restapi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`restapi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `restapi`;

/*Table structure for table `genre` */

DROP TABLE IF EXISTS `genre`;

CREATE TABLE `genre` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `genre` */

insert  into `genre`(`id`,`name`) values (1,'Guitar'),(2,'Electric'),(3,'Bass'),(4,'Banjo');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2016_06_01_000001_create_oauth_auth_codes_table',1),(2,'2016_06_01_000002_create_oauth_access_tokens_table',1),(3,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(4,'2016_06_01_000004_create_oauth_clients_table',1),(5,'2016_06_01_000005_create_oauth_personal_access_clients_table',1);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values ('1fb07ccab06e35039a77462c7c0431472980faedd15ea4ab9af0bf52cf29f10ff1d4f25516035de9',3,2,NULL,'[\"*\"]',0,'2018-02-12 00:33:47','2018-02-12 00:33:47','2018-02-27 00:33:47'),('43cb44a0db39713341ab1dc20610386bf8afda1dd957fedb48bca5a1ef6479b7351eba703777b564',3,2,NULL,'[\"*\"]',0,'2018-02-12 18:18:43','2018-02-12 18:18:43','2018-02-27 18:18:43'),('55a90de2d9f289bd6cd5747f291868b1ad71e54633af815edfca315f7ea106fa0d672cf481f94e14',3,2,NULL,'[\"*\"]',0,'2018-02-12 18:24:11','2018-02-12 18:24:11','2018-02-27 18:24:11'),('6235d82b3e4d36d4e34a8175569f665f370c34bf4ec7470a5d58ecb5635f3c830bfe9f078e455bb0',3,2,NULL,'[\"*\"]',0,'2018-02-12 18:07:42','2018-02-12 18:07:42','2018-02-27 18:07:42'),('7a1a92963852a7778fccf6bbadb73b9bee5a395399b90c529d739ff69e3fab2e414b6d9ba3131f58',2,2,NULL,'[]',0,'2018-02-11 23:54:28','2018-02-11 23:54:28','2018-02-26 23:54:28'),('a2d49ed95475ba18f879634edcb2ddcf8290aedb19a8afd060bc81cab26dc313e58aa9297bceb370',3,2,NULL,'[]',0,'2018-02-12 00:31:44','2018-02-12 00:31:44','2018-02-27 00:31:44'),('c2e1baf60c457a8bcf91675c9d6cb2035ed6ea912c7ac9309eca050c3edeb8ae1d755f4fefb03e11',2,2,NULL,'[\"*\"]',0,'2018-02-12 00:33:36','2018-02-12 00:33:36','2018-02-27 00:33:36'),('d15b2a1a4bd37faf53fe26f07eca572fa80a8eb54956649110b51e5ef0b3e815df93381db416930e',3,2,NULL,'[\"*\"]',0,'2018-02-12 20:00:41','2018-02-12 20:00:41','2018-02-27 20:00:41'),('e34406a8f7c7bf9ca2d32b1bc926713207cfcd1450e4943550fa1f9eba2e43e596f079a92c18073e',3,2,NULL,'[\"*\"]',0,'2018-02-12 00:35:41','2018-02-12 00:35:41','2018-02-27 00:35:41'),('ecbaed59f1fbbd054aff87aa4e7f51336a7b7ddd3007475a09a9debc040a7b728148c2c5056aadec',3,2,NULL,'[\"*\"]',0,'2018-02-12 01:49:55','2018-02-12 01:49:55','2018-02-27 01:49:55'),('f89c5cc032d94990fcaf52bda3e2e38a39678b3a017c45c8a9e1a714c51a1003fdcdbe23f02043dc',2,2,NULL,'[\"*\"]',0,'2018-02-12 00:33:42','2018-02-12 00:33:42','2018-02-27 00:33:42');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values (1,NULL,'Laravel Personal Access Client','5NiU0SjFnOCZUrKy5cRt1wCXISkTNYRFRtqZWGCs','http://localhost',1,0,0,'2018-02-11 23:20:44','2018-02-11 23:20:44'),(2,NULL,'Laravel Password Grant Client','JldNZQTH2lpUPIaZFCC8RPGHRGNuOWK66OFK11ns','http://localhost',0,1,0,'2018-02-11 23:20:44','2018-02-11 23:20:44');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values (1,1,'2018-02-11 23:20:44','2018-02-11 23:20:44');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

insert  into `oauth_refresh_tokens`(`id`,`access_token_id`,`revoked`,`expires_at`) values ('02b39ef7bddfad810592b6554b5478eb141243b6e2aa517be03697d70d15a5b6a3923cfa95b7cdfd','55a90de2d9f289bd6cd5747f291868b1ad71e54633af815edfca315f7ea106fa0d672cf481f94e14',0,'2018-03-14 18:24:11'),('081e7aa20edf4402da7363dbb14b4e7c4688868d26b0484eadf78ef7daeed5035219834e935230ca','6235d82b3e4d36d4e34a8175569f665f370c34bf4ec7470a5d58ecb5635f3c830bfe9f078e455bb0',0,'2018-03-14 18:07:42'),('1dfaf35a5c46a0bf187f897e471e06c4dff7a34fd25e620ce15aadf080f54a0a419e2659a594d704','d15b2a1a4bd37faf53fe26f07eca572fa80a8eb54956649110b51e5ef0b3e815df93381db416930e',0,'2018-03-14 20:00:41'),('71048b1e5c0bbf69d7417466134dd6441ef2b58239f83520b6d9b33838894da103c124abbba84292','e34406a8f7c7bf9ca2d32b1bc926713207cfcd1450e4943550fa1f9eba2e43e596f079a92c18073e',0,'2018-03-14 00:35:41'),('77ced11c98f4caca5cfd288378e4ea5bf9730b5ff6058442fff3d2dcb27c9fd2d6e88f7a070a039f','43cb44a0db39713341ab1dc20610386bf8afda1dd957fedb48bca5a1ef6479b7351eba703777b564',0,'2018-03-14 18:18:43'),('87c211a8a06355f1c3d885630d616cec5e320d944192d546c43d5161216f16cf26db027b11609584','7a1a92963852a7778fccf6bbadb73b9bee5a395399b90c529d739ff69e3fab2e414b6d9ba3131f58',0,'2018-03-13 23:54:28'),('887a0a2f7950efd116a166cc759b3024ffbd1dd62846c656c22e41a55bd6651e84345ddfa4b6bc3f','1fb07ccab06e35039a77462c7c0431472980faedd15ea4ab9af0bf52cf29f10ff1d4f25516035de9',0,'2018-03-14 00:33:47'),('a52559b7ee23daa0f726d86a67a57e56aaa8390307883ec686cc84fff484860ecbcd50ab73971d74','c2e1baf60c457a8bcf91675c9d6cb2035ed6ea912c7ac9309eca050c3edeb8ae1d755f4fefb03e11',0,'2018-03-14 00:33:36'),('b8560051c09bf6d8d84577adb36dbd9af06e9462e800250a54f937f64d397f3dbe1a5a6e0802d5db','f89c5cc032d94990fcaf52bda3e2e38a39678b3a017c45c8a9e1a714c51a1003fdcdbe23f02043dc',0,'2018-03-14 00:33:42'),('dd6c97462680ad42ee23832cb47534e469b25dafa10ce24f80964998b939dd1f7246ca105d771b1d','a2d49ed95475ba18f879634edcb2ddcf8290aedb19a8afd060bc81cab26dc313e58aa9297bceb370',0,'2018-03-14 00:31:44'),('e353b42a0bce4a010a8361cedf1cedd437f3d581154265a5b322e834b02f3b19b918760bf20b0a16','ecbaed59f1fbbd054aff87aa4e7f51336a7b7ddd3007475a09a9debc040a7b728148c2c5056aadec',0,'2018-03-14 01:49:55');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`remember_token`,`created_at`,`updated_at`) values (1,'hayk','devabrahamyan@gmail.com','$2y$10$DeFV8y5zhjTO/pZKBOsRjudMlI/oNZScCWuTUHNpFzimxxm5bnBS2',NULL,NULL,NULL),(2,'hayko','test@test.com','$2y$10$5689iawbd9c.9NYcYswOZOzMis2Y.DZNvn6JnXBXZVgj9ZZNaMaFy',NULL,'2018-02-11 23:54:28','2018-02-11 23:54:28'),(3,'hayko','test1@test.com','$2y$10$oDrVxEd0LOAilvaXiPup4.y1gI9M1JMpwypaZtu9BCUvgnmF5v4vC',NULL,'2018-02-12 00:31:44','2018-02-12 00:31:44');

/*Table structure for table `vote` */

DROP TABLE IF EXISTS `vote`;

CREATE TABLE `vote` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `g_id` int(10) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `vote` */

insert  into `vote`(`id`,`user_id`,`g_id`) values (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,3,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
