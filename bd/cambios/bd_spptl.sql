-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para salle_sisbi
CREATE DATABASE IF NOT EXISTS `salle_sisbi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `salle_sisbi`;

-- Volcando estructura para tabla salle_sisbi.estudiante
CREATE TABLE IF NOT EXISTS `estudiante` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellidos` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dni` int DEFAULT NULL,
  `semestre` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `programa_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `curso_tipocurso_id_foreign` (`programa_id`) USING BTREE,
  CONSTRAINT `curso_tipocurso_id_foreign` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.estudiante: ~2 rows (aproximadamente)
INSERT INTO `estudiante` (`id`, `nombre`, `apellidos`, `email`, `dni`, `semestre`, `imagen`, `programa_id`, `created_at`, `updated_at`) VALUES
	(1, 'Soledad', 'Aquino Quispe', '60693734@lasalleurubamba.edu.pe', 60693734, 'V', 'public/estudiante/4LJoBzAfUS9ZRqqM6vewpp2R6M5BH5aqePBPxgJe.png', 47, '2023-07-23 18:08:22', '2023-07-25 07:19:44'),
	(71, 'Yakelin', 'ORUE ANDRADE', '73574295@lasalleurubamba.edu.pe', 73574295, 'V', 'public/estudiante/04WQPE0dWZy8ZOnzJVyf3NtDmhMxq7ql4ou4Vl97.png', 47, '2023-07-25 07:17:29', '2023-07-25 07:19:58');

-- Volcando estructura para tabla salle_sisbi.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.failed_jobs: ~0 rows (aproximadamente)

-- Volcando estructura para tabla salle_sisbi.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.migrations: ~0 rows (aproximadamente)

-- Volcando estructura para tabla salle_sisbi.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.password_reset_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla salle_sisbi.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.personal_access_tokens: ~0 rows (aproximadamente)

-- Volcando estructura para tabla salle_sisbi.programa
CREATE TABLE IF NOT EXISTS `programa` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cod_programa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rd_creacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.programa: ~9 rows (aproximadamente)
INSERT INTO `programa` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`, `cod_programa`, `rd_creacion`) VALUES
	(1, 'DESARROLLO DE SISTEMAS DE INFORMACION', '2023-07-19 15:18:11', '2023-07-19 15:18:12', '2023-07-19 15:18:13', 'DSI', '2020'),
	(2, 'CONTABILIDAD', NULL, NULL, NULL, 'CO', '2015'),
	(3, 'PRODUCCION AGROPECUARIA', NULL, NULL, NULL, 'PA', '2017'),
	(8, 'CONSTRUCCION CIVIL', NULL, NULL, NULL, 'CC', '2016'),
	(45, 'GUIA OFICIAL DE TURISMO', '2023-07-19 15:23:37', '2023-07-19 15:23:44', NULL, 'GOT', '2018'),
	(46, 'ADMINISTRACION DE SERVICIOS DE HOSTELERIA', '2023-07-19 15:24:04', '2023-07-25 06:58:42', NULL, 'ASH', '2019'),
	(47, 'DESARROLLO DE SISTEMAS DE INFORMACION', '2023-07-19 15:24:22', '2023-07-19 15:24:22', NULL, 'DSI', '2020'),
	(48, 'ADMINISTRACION DE SERVICIOS DE HOSTELERIA Y RESTAURANTES', '2023-07-19 15:24:57', '2023-07-19 15:24:57', NULL, 'ASHR', '2015'),
	(53, 'INDUSTRIAS ALIMENTARIAS', '2023-07-23 23:46:38', '2023-07-23 23:46:51', NULL, 'IA', '2012');

-- Volcando estructura para tabla salle_sisbi.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.users: ~2 rows (aproximadamente)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'katerine', '74390006@lasalleurubamba.edu.pe', '2023-07-25 02:22:09', '$2y$10$K7u8SCItrIhbhex1UhtqbOnIH6ZKIjneFzxNs.IIih3nkFWyhiTmS', NULL, '2023-07-25 07:21:52', '2023-07-25 07:21:52', NULL),
	(2, 'katty', 'katicita598@gmail.com', NULL, '$2y$10$EISkbTcwm/18KaFvCNIns.1mM1DTtWpw9XmR4i7HxJyR80iUqmSQi', NULL, '2023-07-25 07:38:06', '2023-07-25 07:38:06', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
