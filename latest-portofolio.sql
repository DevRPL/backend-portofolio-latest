/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 80039
 Source Host           : localhost:3306
 Source Schema         : latest-portofolio

 Target Server Type    : MySQL
 Target Server Version : 80039
 File Encoding         : 65001

 Date: 24/10/2024 09:58:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for contents
-- ----------------------------
DROP TABLE IF EXISTS `contents`;
CREATE TABLE `contents`  (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contents
-- ----------------------------
INSERT INTO `contents` VALUES (1, 'Tips Routing di Laravel 8', 'https://www.youtube.com/embed/9rARrp99RU4', NULL, NULL);
INSERT INTO `contents` VALUES (2, 'Cara Upgrade Laravel v7 ke v8', 'https://www.youtube.com/embed/9rPwdJYGsnw', NULL, NULL);
INSERT INTO `contents` VALUES (3, 'How to install Microsoft Teams on Linux (Indonesia)', 'https://www.youtube.com/embed/gi0Cg2UA_ew', NULL, NULL);
INSERT INTO `contents` VALUES (4, 'Hirarki Profesi Anak IT(Coder, Programmer, Software Engineer dan Software Developer)', 'https://www.youtube.com/embed/w7YIcCRKHu8', NULL, NULL);
INSERT INTO `contents` VALUES (5, '11 Aturan Yang Harus Diterapkan Oleh Setiap Programmer, Developer Dan Software Engineering', 'https://www.youtube.com/embed/AlsR-z8ZJxI', NULL, NULL);
INSERT INTO `contents` VALUES (6, 'Perkembangan Teknologi Society Indrusry 5.0 ', 'https://www.youtube.com/embed/UhFDZsIaTLQ', NULL, NULL);
INSERT INTO `contents` VALUES (7, '13 Jenis-Jenis Logical Fallacy', 'https://www.youtube.com/embed/D0YND7Gh89E', NULL, NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE `feedbacks`  (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedbacks
-- ----------------------------

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for portopolioes
-- ----------------------------
DROP TABLE IF EXISTS `portopolioes`;
CREATE TABLE `portopolioes`  (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of portopolioes
-- ----------------------------
INSERT INTO `portopolioes` VALUES (1, 'Aplikasi Koprasi Simpan Pinjam', 'assets/img/karya/koperasi.jpg', 'Php Native + Mysql');
INSERT INTO `portopolioes` VALUES (2, 'Check Device Laptop', 'assets/img/karya/device.png', 'Vb.Net + PHP + Firebase + Sqlite');
INSERT INTO `portopolioes` VALUES (3, 'Operation Integrasi Marketplace', 'assets/img/karya/op.png', 'Laravel 5.7 + Mysql + Develop Team');
INSERT INTO `portopolioes` VALUES (4, 'Dpkp Sim Cipta Karya', 'assets/img/karya/bangkim.png', 'Codeigniter 2.2.6 + Mysql');
INSERT INTO `portopolioes` VALUES (5, 'Laravel Mini Forum Programming', 'assets/img/karya/forum.png', 'Laravel 5.6 + Mysql');
INSERT INTO `portopolioes` VALUES (6, 'Aplikasi Operation Klinik', 'assets/img/karya/nkdc.png', 'Laravel 5.8 + Mysql');
INSERT INTO `portopolioes` VALUES (7, 'Demo Aplikasi Management Asset', 'assets/img/karya/asset.png', 'Laravel 5.8 + Mysql');
INSERT INTO `portopolioes` VALUES (8, 'Demo Aplikasi Monitoring Order Card', 'assets/img/karya/dev.jpg', 'Laravel 6.0 + Mysql');
INSERT INTO `portopolioes` VALUES (9, 'Any Desc', 'assets/img/karya/any.jpeg', 'Laravel 6.0 + Mmsql / Sql Server');
INSERT INTO `portopolioes` VALUES (10, 'Aplikasi Laundry', 'assets/img/karya/laundrys.png', 'Laravel 6.0 + Mysql');
INSERT INTO `portopolioes` VALUES (11, 'Frontend Layanan Public Desa ', 'assets/img/karya/antrian.png', 'React Bootstrap');
INSERT INTO `portopolioes` VALUES (12, 'Marketing Of Year', 'assets/img/karya/moy.png', 'Laravel 6.0 + Sql Server');
INSERT INTO `portopolioes` VALUES (13, 'Inventory Control', 'assets/img/karya/inventory.png', 'Laravel 6.0 + Mysql');
INSERT INTO `portopolioes` VALUES (14, 'Backend Kredit Kendaraan', 'assets/img/karya/backend.png', 'Laravel 7.0 + mysql');
INSERT INTO `portopolioes` VALUES (15, 'Frontend Kredit Kendaraan', 'assets/img/karya/frontend.png', 'Laravel 7.0 + Mysql');
INSERT INTO `portopolioes` VALUES (16, 'Personal Framework Management Project', 'assets/img/karya/framework-personal.png', 'Laravel 8.0 + Mysql');
INSERT INTO `portopolioes` VALUES (17, 'Automatic download and satellite data processing', 'assets/img/karya/vb.png', 'VB.net + Ms Access');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('1CXSilE4QUOl9mrIO1AnJFiJoxUaHyqp9Bx5bDke', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibndYTkc1ZU1IZnhWcmMwWXVQQWhwZDc4MG5wdXpPUndTbVBEUFFBUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3Qvc2tpbGxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729738353);
INSERT INTO `sessions` VALUES ('3Z9DqKBDvhkOIPoXeo4DdaRRI0NCj5141VO3y9WB', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2dEOG9Uc1F2bTJEMTBJajhjbFRZQXBzQkF2aHVPU3BhSE9HWE1FUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3QvY29udGVudHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729737511);
INSERT INTO `sessions` VALUES ('8sSY4PvQu9jnbPUHwyyAN42Uo0vO0TILb7UEkIf7', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjhBdkRBTzJJbXprSTdaMGtCWlJmaWNCTklRQ2l6bnlsMmw1MHR1aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3Qvc2tpbGxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729736251);
INSERT INTO `sessions` VALUES ('9PpG6Um374nhDkzH9aQKKxAjXWFrS2UoK2UmKNyx', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1lYUHBBUlNIaXhvQTdZRmVRTDdhTlRyMWtrNmlQelBnVmVxR1FnQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3QvcHJvZHVjdC1kZXZlbG9wbWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729738663);
INSERT INTO `sessions` VALUES ('aPrCjHmHKIYrlXy7X7vuhTnn6N31mkBjtUvGqYyH', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUxyWlFybnlhQ1A5b3p3SUFyV0NFbUtOem1qc1FSdHdDUGpRM0xiZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3QvcHJvZHVjdC1kZXZlbG9wbWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729738679);
INSERT INTO `sessions` VALUES ('CDN3mecntXnQcRku3ihHFgMTDCkkjsrxlpDiheS5', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmY5MmlxVmpWbWl1c2NqeDdsaDRoN0g4cE1CbkJUS3BPU3ZoVVRTZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3Qvc2tpbGxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729736210);
INSERT INTO `sessions` VALUES ('dclCqIaEbJH7lFRMlSIuuqlj8z79yhbObYMlagd6', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHI1TFJYYVIzNWQwSllCR2JadTBNc2szcWppd1NWem5GQXJjNVp3ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3Qvc2tpbGxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729737508);
INSERT INTO `sessions` VALUES ('DFd0zNuyDgHYELAGqXEKLTrhBa3u8zuk9ot35gkd', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFpGaVdPaVFRRlM0bkI1aXFQM2N1U053M1NjZXZ0VXVMdGt4MGZSZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3QvY29udGVudHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729738677);
INSERT INTO `sessions` VALUES ('dohWuyVOz2aORNWn34BeWnGr0I6DmRljVtHpsca8', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajViVnlVaTVaWURzZzg2M2g1UXpmdHpMR1plOU9BdHpTUWcxOXJ4VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3QvcG9ydG9mb2xpb3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729738676);
INSERT INTO `sessions` VALUES ('FZwE5ZE2Smy5j8P6FA1urJtQRpWQgeccGcC7gAfL', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0hpcGdBWlJNeVZQYklxQjZyTTF3dmJjWTRGSDltVUt6SjFjV01SZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3QvcG9ydG9mb2xpb3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729738351);
INSERT INTO `sessions` VALUES ('gPb9jSZBqso0zCTsHyLWjgm6U33BbsFhSI5H9YHA', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3JnTWdRcnJtbGRVQ3pHVEhuVVp2QVhBYm13VXJJNVpnNkljaERpQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3Qvc2tpbGxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729738676);
INSERT INTO `sessions` VALUES ('hAIYN5lsxO6cFi0AGoWnoMX7H3kKImee2hVMSy6T', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUW04Nms3Mk5NRnpNa3RveThxUVNrdUV0THp4V0J6SU45SDhoNFhLQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3Qvc2tpbGxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729736173);
INSERT INTO `sessions` VALUES ('KwkECKD5g1uftgz2tu3L9iGDVa8TSPUmBt8dkGuQ', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2FYWFpSZm9KcFdrTXFDZ0ZQSXhVeTNEa05lRXNZdUNwOXZmRWlxZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3QvcG9ydG9mb2xpb3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729738356);
INSERT INTO `sessions` VALUES ('lD6ZjB6QhrPliZdcyl7BADMEUjkvlNA7XZw6PtGE', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHZJTG9NNkpnNVpJeEhPUEx6OUE3akVoV3F0T2VBakRrQ0daQTI0UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3QvcHJvZHVjdC1kZXZlbG9wbWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729738639);
INSERT INTO `sessions` VALUES ('NF76UFfOV2ihTa0P4YEW1AnnuAKOghbg8nQNET0F', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZUhDalR3M3BhaUJ2NU1heFlhWTBLSVQwdjY5Y2ZVVjNwTm42b2l4OSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3QvY29udGVudHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729738357);
INSERT INTO `sessions` VALUES ('o8kZZ0u2OX9j3FQ0sEf1nMHabdEP0z17L6QI9zCn', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkhqclZTVHZrTDkwY05jQmpaQWhoUU44VFg1RHNrbWtGd2VLMGFodSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3Qvc2tpbGxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729736727);
INSERT INTO `sessions` VALUES ('OomahtHgwxVdMQLT4TUOJeLjkPqkwmxQI2y3UN4P', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2haODBIanhNVVY0SHFDZ3QxYXpibWNTaTdIZWgxQ0lxMXZ4ZGIycyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3QvcHJvZHVjdC1kZXZlbG9wbWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729738674);
INSERT INTO `sessions` VALUES ('OYSue9xciAKnqn661huwYrQTNi1AR6D9Efof6R0c', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkJLYndIajZrRVVXUmlOTTNpVVo2TnpVaTdDUEdOQ3ZBUVBFYmw1NSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3QvY29udGVudHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729738349);
INSERT INTO `sessions` VALUES ('TOXLcY2FrDJKoQzS0tFGNjy0C52rkG0LqSfwTBQW', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNks0QWM1aHdacmFuYWNqQVlpT3hNcjVxZlNhT0hvd3gwN2ZtQzFyRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3Qvc2tpbGxzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729736690);
INSERT INTO `sessions` VALUES ('zeEUk4JIqPT8icoPoxTB3BbTOVZp0paSovHIqMXY', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3lqQ2EzTTM1MXhzZmRleEt1T1V0eWhzZ2cyYWxGWW43VUhCNmx2MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9iYWNrZW5kLXBvcnRvZm9saW8tbGF0ZXN0LnRlc3QvY29udGVudHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729737400);

-- ----------------------------
-- Table structure for skills
-- ----------------------------
DROP TABLE IF EXISTS `skills`;
CREATE TABLE `skills`  (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skills
-- ----------------------------
INSERT INTO `skills` VALUES (1, 'assets/img/png/Php.png', 'https://www.php.net', '3 years', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (2, 'assets/img/png/Laravel.png', 'https://laravel.com', '3 years', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (3, 'assets/img/png/Ci.png', 'https://codeigniter.com', '2 years', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (4, 'assets/img/png/js.png', 'https://www.w3schools.com/Js', '2 years', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (5, 'assets/img/png/jquery.png', 'https://jquery.com', '2 years', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (6, 'assets/img/png/ReactJs.png', 'https://legacy.reactjs.org/', '3 months', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (7, 'assets/img/png/restApi.png', 'https://en.wikipedia.org/wiki/Overview_of_RESTful_API_Description_Languages', '1 years', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (8, 'assets/img/png/css.png', 'https://www.w3schools.com/Css', '3 years', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (9, 'assets/img/png/bootstrap.png', 'https://getbootstrap.com/docs/5.2/getting-started/introduction/', '3 years', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (10, 'assets/img/png/mysql.png', 'https://www.mysql.com/', '3 years', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (11, 'assets/img/png/mmsql.png', 'https://www.microsoft.com/en-us/sql-server/sql-server-downloads', '6 months', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (12, 'assets/img/png/git.png', 'https://git-scm.com/', '3 years', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (13, 'assets/img/png/nginx.png', 'https://nginx.org/en', '6 months', '2023-05-09 03:20:21', '2023-05-09 03:20:21');
INSERT INTO `skills` VALUES (14, 'assets/img/png/vbNet.png', 'https://www.tutorialspoint.com/vb.net/index.htm', '8 months', '2023-05-09 03:20:21', '2023-05-09 03:20:21');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for you_tubes
-- ----------------------------
DROP TABLE IF EXISTS `you_tubes`;
CREATE TABLE `you_tubes`  (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of you_tubes
-- ----------------------------
INSERT INTO `you_tubes` VALUES (1, 'https://www.youtube.com/embed/zfF79mHMe-0', 'Sistem Informasi Aplikasi Mini Laundry', NULL, NULL);
INSERT INTO `you_tubes` VALUES (2, 'https://www.youtube.com/embed/6RNJO0HYL08', 'Sistem Informasi Aplikasi Mini Inventory Control', NULL, NULL);
INSERT INTO `you_tubes` VALUES (3, 'https://www.youtube.com/embed/YmVv9_ucGss', 'Sistem Informasi Simulasi Aplikasi Credit', NULL, NULL);
INSERT INTO `you_tubes` VALUES (4, 'https://www.youtube.com/embed/Ced-BFFoakQ', 'Aplikasi Koperasi Simpan Pinjam Berbasis Web', NULL, NULL);
INSERT INTO `you_tubes` VALUES (5, 'https://www.youtube.com/embed/cohBvZYTlQg', 'Aplikasi Cek Ongkir Berbasis Web', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
