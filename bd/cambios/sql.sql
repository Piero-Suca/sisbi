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

-- Volcando estructura para tabla salle_sisbi.docente
CREATE TABLE IF NOT EXISTS `docente` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dni` int DEFAULT NULL,
  `imagen` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `programa_id` bigint unsigned NOT NULL,
  `especialidad` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `programa_tipoprograma_id_foreign` (`programa_id`),
  CONSTRAINT `programa_tipoprograma_id_foreign` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.docente: ~9 rows (aproximadamente)
DELETE FROM `docente`;
INSERT INTO `docente` (`id`, `nombre`, `apellidos`, `email`, `dni`, `imagen`, `programa_id`, `especialidad`, `created_at`, `updated_at`) VALUES
	(11, 'Alex Fernando', 'HUILLCA HUAMAN', 'ahuillca@lasalleurubamba.edu.pe', 12345678, 'public/docente/eZdimrICepx5mSQUuu7Ykf2ekT7xihroHZEMZtX1.png', 47, 'INGENIERO DE SISTEMAS', '2023-07-24 20:24:28', '2023-07-24 20:24:28'),
	(12, 'Roger Chritiam', 'GIRALDO ASCENCIO', 'christiamga@lasalleurubamba.edu.pe', 22222222, 'public/docente/RkSKUL4Tzfe7CSPx2CaTpMY4oSViTfRpxBq9PXXq.png', 47, 'INGENIERO DE SISTEMAS', '2023-07-24 20:26:16', '2023-07-24 20:26:16'),
	(13, 'Jose Luis', 'PIMENTEL ZEGARRA', 'joseluispz@lasalleurubamba.edu.pe', 36251478, 'public/docente/q4OrV1JtvYm8nrY25NpKhJOKczyCwOjrlgGRlaxp.png', 47, 'ING', '2023-07-24 20:27:39', '2023-07-24 20:27:39'),
	(14, 'Paola Giovana', 'PEÑA VILLAFUERTE', 'paolapv@lasalleurubamba.edu.pe', 12345674, 'public/docentes/uD9uHfrExgNwW3R3yxGRJGCcJ1IwRThOGMRwON92.png', 45, 'LICENCIADA EN TURISMO', '2023-07-24 20:29:28', '2023-07-24 20:29:28'),
	(15, 'Eliezer', 'MAMANI CONDORI', 'eliezermc@lasalleurubamba.edu.pe', 12345672, 'public/docentes/cmvncwWdBo01egD4I36HX1oYS6MPWO2wrqAiXOoB.png', 52, 'INGENIERO EN INDUSTRIAS', '2023-07-24 20:31:19', '2023-07-24 20:31:19'),
	(17, 'Celina', 'SANTOS MASIAS', 'celinams@lasalleurubamba.edu.pe', 12345671, 'public/docente/cRiTzDYcPUKkb04Zi2WDyg1li4FvSuf5eBtllSBy.png', 2, 'CONTADORA', '2023-07-24 20:33:34', '2023-07-24 20:33:34'),
	(18, 'Ernesto', 'VARGAS VERA', 'ernestovv@lasalleurubamba.edu.pe', 1234567, 'public/docentes/RRGpPd3nbPI0yOTqQlJhaPpVhKgW4qCXQhdFOutH.png', 53, 'LICENCIADO', '2023-07-24 20:35:07', '2023-07-24 20:35:07'),
	(19, 'Uriel', 'OCAMPO FIGUEROA', 'uocampo@lasalleurubamba.edu.pe', 12348755, 'public/docentes/AmHmMtbaVykrydKWMl35l5Hgr42YP1gIfOhj12ZS.png', 53, 'TÉCNICO', '2023-07-24 20:36:03', '2023-07-24 20:36:03'),
	(20, 'Hno. Manuel', 'MARÍN HERRERA', 'manuelmh@lasalleurubamba.edu.pe', 12345695, 'public/docentes/lNqPkO9QUqH5YlFqc9XNPi3sEfxvYggKxsRJjcOc.png', 53, 'DIRECTOR GENERAL', '2023-07-24 20:38:10', '2023-07-24 20:38:10');

-- Volcando estructura para tabla salle_sisbi.estudiante
CREATE TABLE IF NOT EXISTS `estudiante` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dni` int DEFAULT NULL,
  `imagen` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `programa_id` bigint unsigned NOT NULL,
  `semestre` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `curso_tipocurso_id_foreign` (`programa_id`) USING BTREE,
  CONSTRAINT `curso_tipocurso_id_foreign` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.estudiante: ~9 rows (aproximadamente)
DELETE FROM `estudiante`;
INSERT INTO `estudiante` (`id`, `nombre`, `apellidos`, `email`, `dni`, `imagen`, `programa_id`, `semestre`, `created_at`, `updated_at`) VALUES
	(1, 'Killa Nueva', 'CRUZ CHARAHUAYTA', '76595703@lasalleurubamba.edu.pe', 76595703, 'public/estudiante/MpCYDYw5lpnsnmUaEVEyyASCEGqezlrOro7VUyKt.png', 47, 'v', '2023-07-24 15:56:22', '2023-07-24 21:16:07'),
	(2, 'Soledad', 'AQUINO QUISPE', '60693734@lasalleurubamba.edu.pe', 60693734, 'public/estudiante/V8GbzNVmH9QdEkm2nI8TxVAnPa8G0UrnNorkHeKN.png', 47, 'v', '2023-07-24 15:59:07', '2023-07-24 21:16:56'),
	(66, 'Jilber', 'ARANZABAL PPATY', '77904211@lasalleurubamba.edu.pe', 77904211, 'public/estudiante/HIROK6yedxW8NWWYQ27ShOaMP7DitzIAvLO1aYfW.png', 47, 'V', '2023-07-24 16:11:13', '2023-07-24 21:15:45'),
	(67, 'Christian Aldayr Giancarlos', 'ARQQUE ESPINOSA', '73208731@lasalleurubamba.edu.pe', 73208731, 'public/estudiantes/zWQdYXVFEOnK1khpnH6ctFTppRwbMwvwUbAXR5Ow.png', 47, 'V', '2023-07-24 16:12:04', '2023-07-24 16:12:04'),
	(68, 'Jade Azucena', 'CCOISO RADO', '71788411@lasalleurubamba.edu.pe', 71788411, 'public/estudiantes/1VyhT8pLcXLvAL7Poq3ObdRAYESBqs6gAv1kwLfH.png', 47, 'V', '2023-07-24 16:12:51', '2023-07-24 16:12:51'),
	(69, 'Absalon', 'CESPEDES GALIANO', '77087918@lasalleurubamba.edu.pe', 77087918, 'public/estudiante/hQAXjFMwiaQ8U2bNPbjmdUoolHeyohXHV3Rp3gKY.png', 47, 'V', '2023-07-24 16:13:47', '2023-07-24 19:33:33'),
	(70, 'Katerine Karina', 'RAMOS SUCA', '74390006@lasalleurubamba.edu.pe', 74390006, 'public/estudiante/OBtRjXFLtI6IQwuO9DDwflK3m1T25eJBWWaFVzQb.png', 47, 'V', '2023-07-24 16:14:34', '2023-07-24 21:15:56'),
	(71, 'Lizeth', 'AGUILAR HUANACCHIRJI', '76147017@lasalleurubamba.edu.pe', 76147017, 'public/estudiante/4IPTK6EJLPTsTt94wUFlpJQiSmJf8XP83MQTct5N.png', 45, 'v', '2023-07-24 16:16:07', '2023-07-24 21:16:24'),
	(72, 'Saul', 'APAZA BAYONA', '76935671@lasalleurubamba.edu.pe', 76935671, 'public/estudiante/bjPZeyjXXJCcVybi6sTOjfQpuU91uuMBNUtANOTU.png', 45, 'v', '2023-07-24 16:16:55', '2023-07-24 21:16:46');

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
DELETE FROM `failed_jobs`;

-- Volcando estructura para tabla salle_sisbi.libros
CREATE TABLE IF NOT EXISTS `libros` (
  `id` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `orden_libro` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titulo` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitulo` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coautor` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tomo` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volumen` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editorial` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idioma` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_paginas` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_ingreso` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `programa_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `programa_id` (`programa_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.libros: ~2 rows (aproximadamente)
DELETE FROM `libros`;
INSERT INTO `libros` (`id`, `orden_libro`, `titulo`, `subtitulo`, `autor`, `coautor`, `tomo`, `volumen`, `editorial`, `idioma`, `precio`, `nro_paginas`, `fecha_ingreso`, `programa_id`, `created_at`, `updated_at`) VALUES
	(00000000000000000001, '030/2-107', 'Diccionario De Computación Bilingue', '--', NULL, NULL, '1', '1', 'bruño', 'español', '10', '320', '20/12/23', 1, NULL, NULL),
	(00000000000000000012, '123', 'lasalle', 'urubamba', 'hermano amnuel', 'hermano jose luis', '1', '2', 'santillana', 'español', '12', '324', 'hoy', 46, '2023-11-13 17:13:29', '2023-11-13 17:13:29');

-- Volcando estructura para tabla salle_sisbi.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.migrations: ~0 rows (aproximadamente)
DELETE FROM `migrations`;

-- Volcando estructura para tabla salle_sisbi.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.password_reset_tokens: ~0 rows (aproximadamente)
DELETE FROM `password_reset_tokens`;

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
DELETE FROM `personal_access_tokens`;

-- Volcando estructura para tabla salle_sisbi.programa
CREATE TABLE IF NOT EXISTS `programa` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cod_programa` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rd_creacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.programa: ~9 rows (aproximadamente)
DELETE FROM `programa`;
INSERT INTO `programa` (`id`, `nombre`, `imagen`, `created_at`, `updated_at`, `deleted_at`, `cod_programa`, `rd_creacion`) VALUES
	(2, 'CONTABILIDAD', 'public/programa/Cm3KIxNAgqOn3ifbv52gWguMs8suouh3st2ZvEAY.png', NULL, '2023-07-24 20:59:37', NULL, 'CO', '2015'),
	(3, 'PRODUCCION AGROPECUARIA', 'public/programa/UFBAwxXuQYrjKmL70P8SWpNED269NIYbqjzN59M5.png', NULL, '2023-07-24 21:03:58', NULL, 'PA', '2017'),
	(8, 'CONSTRUCCION CIVIL', 'public/programa/jVQGL0rfWoxMtHjgpcXnZDvljyDuAw561MuiO8IE.png', NULL, '2023-07-24 21:07:35', NULL, 'CC', '2016'),
	(45, 'GUIA OFICIAL DE TURISMO', 'public/programa/DNG4nhAmm8F0h54ZWVNmSi4Ak53st95KUoZV2hcf.png', '2023-07-19 15:23:37', '2023-07-24 21:03:40', NULL, 'GOT', '2018'),
	(46, 'ADMINISTRACION DE SERVICIOS DE HOSTELERIA', 'public/programa/XnO3vrEeyzGtF5mMYj2nulzIa5jK5RiqlVOsjkB0.png', '2023-07-19 15:24:04', '2023-07-24 20:57:50', NULL, 'ASH', '2019'),
	(47, 'DESARROLLO DE SISTEMAS DE INFORMACION', 'public/programa/sT85NnHSie1LRW1NNQQMVeQiKztna3GcGtWK4Ztl.png', '2023-07-19 15:24:22', '2023-07-24 21:03:30', NULL, 'DSI', '2020'),
	(48, 'ADMINISTRACION DE SERVICIOS DE HOSTELERIA Y RESTAURANTES', 'public/programa/Cvb5tvytKWVdGER8UixP76xjWpMECraqDgSgFZY1.png', '2023-07-19 15:24:57', '2023-07-24 21:01:10', NULL, 'ASHR', '2015'),
	(52, 'INDUSTRIAS ALIMENTARIAS', 'public/programa/Xsn3GzBPGdQAznleF6sAs6ZLY12U2zkTDignchBb.png', '2023-07-24 20:30:19', '2023-07-24 21:03:50', NULL, 'IA', '2013'),
	(53, 'OTROS', 'public/programa/oXpClBzOEPTi1KFcce7cBhxKaCXeUmc8jrfLiYmH.png', '2023-07-24 20:34:21', '2023-07-24 21:15:13', NULL, 'TR', '2023');

-- Volcando estructura para tabla salle_sisbi.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.users: ~3 rows (aproximadamente)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(11, 'katerine', 'katicita598@gmail.com', '2023-07-24 14:31:47', '$2y$10$OQXUVa.p9VBlZPxyBfDHSOYRnnpYUa0eAMu1fuM0VhNw4nbvNP/By', NULL, '2023-07-24 14:31:04', '2023-07-24 14:31:04', NULL),
	(12, 'Killa Nueva', 'killa.cruz.9@gmail.com', '2023-10-23 17:52:50', '$2y$10$SvsvtIuK7E43TOcuXctfxuDcGu09HQzyVxCpQF1iU5oWBWLyJf/6W', NULL, '2023-07-24 18:54:48', '2023-07-24 18:54:48', NULL),
	(13, 'killan', 'killan@gmail.com', '2023-10-23 17:53:46', '$2y$10$VTWSk8EihguX1v5n1oL.N.wg8uKY5XcUT4m/HwucOB/9UFc7omaoO', NULL, '2023-10-23 17:53:24', '2023-10-23 17:53:24', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
