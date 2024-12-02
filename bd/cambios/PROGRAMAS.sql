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

-- Volcando estructura para tabla salle_sisbi.programa
CREATE TABLE IF NOT EXISTS `programa` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cod_programa` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rd_creacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `cod_programa` (`cod_programa`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla salle_sisbi.programa: ~15 rows (aproximadamente)
INSERT INTO `programa` (`id`, `nombre`, `created_at`, `updated_at`, `deleted_at`, `cod_programa`, `rd_creacion`) VALUES
	(1, 'CONTABILIDAD', NULL, '2023-07-25 01:59:37', NULL, 'CO', '2015'),
	(2, 'PRODUCCION AGROPECUARIA', '2023-12-20 13:18:19', '2023-07-25 02:03:58', NULL, 'PA', '2017'),
	(3, 'CONSTRUCCION CIVIL', '2023-12-20 13:18:18', '2023-07-25 02:07:35', NULL, 'CC', '2016'),
	(4, 'GUIA OFICIAL DE TURISMO', '2023-07-19 20:23:37', '2023-07-25 02:03:40', NULL, 'GOT', '2018'),
	(5, 'ADMINISTRACION DE SERVICIOS DE HOSTELERIA', '2023-07-19 20:24:04', '2023-07-25 01:57:50', NULL, 'ASH', '2019'),
	(6, 'DESARROLLO DE SISTEMAS DE INFORMACION', '2023-07-19 20:24:22', '2023-07-25 02:03:30', NULL, 'DSI', '2020'),
	(7, 'ADMINISTRACION DE SERVICIOS DE HOSTELERIA Y RESTAURANTES', '2023-07-19 20:24:57', '2023-07-25 02:01:10', NULL, 'ASHR', '2015'),
	(8, 'INDUSTRIAS ALIMENTARIAS', '2023-07-25 01:30:19', '2023-07-25 02:03:50', NULL, 'IA', '2013'),
	(9, 'OTROS', '2023-07-25 01:34:21', '2023-07-25 02:15:13', NULL, 'TR', '2023'),
	(10, 'EDUCACION INICIAL', '2023-12-12 20:14:07', '2023-12-12 20:14:07', NULL, 'EI', '2010'),
	(11, 'EDUCACION INTERCULTURAL BILINGUE', '2023-12-12 20:15:49', '2023-12-12 20:16:07', NULL, 'EIB', '2010'),
	(12, 'EDUCACION FISICA', '2023-12-12 20:19:40', '2023-12-12 20:20:05', NULL, 'EDUFI', '2010'),
	(13, 'INGLES', '2023-12-12 20:21:23', '2023-12-12 20:21:23', NULL, 'INGLES', '2012'),
	(14, 'COMPUTACION E INFORMATICA', '2023-12-12 21:35:28', '2023-12-12 21:35:28', NULL, 'CI', '2011'),
	(15, 'EDUCACION PRIMARIA', '2023-12-12 21:36:21', '2023-12-12 21:36:21', NULL, 'EDUPRI', '2011');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
