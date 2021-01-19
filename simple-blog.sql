/*
MySQL Data Transfer
Source Host: localhost
Source Database: simple-blog
Target Host: localhost
Target Database: simple-blog
Date: 1/20/2021 2:19:07 AM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for articles
-- ----------------------------
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for configs
-- ----------------------------
CREATE TABLE `configs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_sub_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
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

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for users
-- ----------------------------
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for views
-- ----------------------------
CREATE TABLE `views` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `articles_id` bigint(20) unsigned NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_id` (`articles_id`),
  CONSTRAINT `views_ibfk_1` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `articles` VALUES ('53', 'My Traveling', 'Jakarta, 22 November 2018', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit voluptatibus nulla incidunt quasi laborum, vitae libero commodi dicta id perferendis? Sapiente sequi quae fugiat veritatis! Ipsam quibusdam placeat omnis reprehenderit.', '60072adbd4e66_bandara.PNG', '2021-01-19 18:54:19', '2021-01-19 18:54:19');
INSERT INTO `articles` VALUES ('56', 'Bussiness', 'My Creative Business', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit autem reiciendis esse eligendi, explicabo animi nisi sequi harum, quam eum excepturi vitae tempora iusto! Eaque explicabo eligendi dignissimos commodi autem!', '60072c4e4c29a_kfc.PNG', '2021-01-19 18:58:37', '2021-01-19 19:00:30');
INSERT INTO `articles` VALUES ('57', 'Covid-19', 'Productivity during pandemic', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorem vel aliquid, minima explicabo voluptate illo est consequuntur magnam quaerat provident facilis inventore praesentium perferendis et, non eos reprehenderit voluptas tempore!', '60072cdc332ef_poltek.PNG', '2021-01-19 19:02:52', '2021-01-19 19:02:52');
INSERT INTO `articles` VALUES ('58', 'My Ambition', 'I wanna Be a Journalist', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!', '60072d40cdf0e_1445329675-ebb0a82b5eb82a8a9fbda9833aab0a69.jpeg', '2021-01-19 19:04:32', '2021-01-19 19:04:32');
INSERT INTO `articles` VALUES ('59', 'Hobbies?', 'This is just my hobbies', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus ducimus voluptates eveniet voluptatum maiores dicta! Accusamus, amet quae? Voluptatum quos vel voluptate! Distinctio nobis deleniti hic sunt eos veniam explicabo!', '60072d7c58807_Screenshot_2015-12-08-22-58-11_1.jpg', '2021-01-19 19:05:32', '2021-01-19 19:05:32');
INSERT INTO `configs` VALUES ('1', 'Travell Writing', 'Excited of Foods and places!', null, '2021-01-19 18:30:09');
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2021_01_18_135213_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('5', '2021_01_18_141452_create_activity_logs_table', '1');
INSERT INTO `migrations` VALUES ('6', '2021_01_18_145957_create_configs_table', '1');
INSERT INTO `migrations` VALUES ('7', '2021_01_19_090650_create_views_table', '1');
INSERT INTO `users` VALUES ('1', 'Herry Mandala', 'admin@simple-blog.com', '$2y$10$Lnd7dSPWBy/Uh5ghSiUxWOIsRYSFPiw2L6GpGNqVFBQBHXZCVa3l2', 'herry_mandala', 'herrymandala.3', 'herrye991', '2t4CvjvXMYrInmMkALjfonh2as3iSoIgKfA0ZaMhG6toC9sjglacMdfhVWLS', '2021-01-19 09:34:02', '2021-01-19 18:18:33');
INSERT INTO `views` VALUES ('19', '59', '127.0.0.1', '2021-01-19 19:05:46', '2021-01-19 19:05:46');
INSERT INTO `views` VALUES ('20', '59', '127.0.0.1', '2021-01-19 19:07:08', '2021-01-19 19:07:08');
INSERT INTO `views` VALUES ('21', '59', '127.0.0.1', '2021-01-19 19:11:01', '2021-01-19 19:11:01');
INSERT INTO `views` VALUES ('22', '56', '127.0.0.1', '2021-01-19 19:11:04', '2021-01-19 19:11:04');
INSERT INTO `views` VALUES ('23', '57', '127.0.0.1', '2021-01-19 19:11:08', '2021-01-19 19:11:08');
INSERT INTO `views` VALUES ('24', '58', '127.0.0.1', '2021-01-19 19:11:12', '2021-01-19 19:11:12');
INSERT INTO `views` VALUES ('25', '53', '127.0.0.1', '2021-01-19 19:11:21', '2021-01-19 19:11:21');
