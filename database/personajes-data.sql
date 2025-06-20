-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para consumo_api
CREATE DATABASE IF NOT EXISTS `consumo_api` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `consumo_api`;

-- Volcando estructura para tabla consumo_api.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla consumo_api.cache: ~0 rows (aproximadamente)
DELETE FROM `cache`;

-- Volcando estructura para tabla consumo_api.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla consumo_api.cache_locks: ~0 rows (aproximadamente)
DELETE FROM `cache_locks`;

-- Volcando estructura para tabla consumo_api.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla consumo_api.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;

-- Volcando estructura para tabla consumo_api.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla consumo_api.jobs: ~0 rows (aproximadamente)
DELETE FROM `jobs`;

-- Volcando estructura para tabla consumo_api.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla consumo_api.job_batches: ~0 rows (aproximadamente)
DELETE FROM `job_batches`;

-- Volcando estructura para tabla consumo_api.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla consumo_api.migrations: ~4 rows (aproximadamente)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(9, '0001_01_01_000000_create_users_table', 1),
	(10, '0001_01_01_000001_create_cache_table', 1),
	(11, '0001_01_01_000002_create_jobs_table', 1),
	(12, '2025_06_20_041402_create_personajes_table', 1);

-- Volcando estructura para tabla consumo_api.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla consumo_api.password_reset_tokens: ~0 rows (aproximadamente)
DELETE FROM `password_reset_tokens`;

-- Volcando estructura para tabla consumo_api.personajes
CREATE TABLE IF NOT EXISTS `personajes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `species` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla consumo_api.personajes: ~100 rows (aproximadamente)
DELETE FROM `personajes`;
INSERT INTO `personajes` (`id`, `name`, `status`, `species`, `type`, `gender`, `origin`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Rick Sanchez', 'Alive', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/1.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(2, 'Morty Smith', 'Alive', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/2.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(3, 'Summer Smith', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/3.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(4, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/4.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(5, 'Jerry Smith', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/5.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(6, 'Abadango Cluster Princess', 'Alive', 'Alien', '', 'Female', 'Abadango', 'https://rickandmortyapi.com/api/character/avatar/6.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(7, 'Abradolf Lincler', 'unknown', 'Human', 'Genetic experiment', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/7.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(8, 'Adjudicator Rick', 'Dead', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/8.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(9, 'Agency Director', 'Dead', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/9.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(10, 'Alan Rails', 'Dead', 'Human', 'Superhuman (Ghost trains summoner)', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/10.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(11, 'Albert Einstein', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/11.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(12, 'Alexander', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/12.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(13, 'Alien Googah', 'unknown', 'Alien', '', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/13.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(14, 'Alien Morty', 'unknown', 'Alien', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/14.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(15, 'Alien Rick', 'unknown', 'Alien', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/15.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(16, 'Amish Cyborg', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/16.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(17, 'Annie', 'Alive', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/17.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(18, 'Antenna Morty', 'Alive', 'Human', 'Human with antennae', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/18.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(19, 'Antenna Rick', 'unknown', 'Human', 'Human with antennae', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/19.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(20, 'Ants in my Eyes Johnson', 'unknown', 'Human', 'Human with ants in his eyes', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/20.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(21, 'Aqua Morty', 'unknown', 'Humanoid', 'Fish-Person', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/21.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(22, 'Aqua Rick', 'unknown', 'Humanoid', 'Fish-Person', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/22.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(23, 'Arcade Alien', 'unknown', 'Alien', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/23.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(24, 'Armagheadon', 'Alive', 'Alien', 'Cromulon', 'Male', 'Signus 5 Expanse', 'https://rickandmortyapi.com/api/character/avatar/24.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(25, 'Armothy', 'Dead', 'unknown', 'Self-aware arm', 'Male', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/character/avatar/25.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(26, 'Arthricia', 'Alive', 'Alien', 'Cat-Person', 'Female', 'Purge Planet', 'https://rickandmortyapi.com/api/character/avatar/26.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(27, 'Artist Morty', 'Alive', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/27.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(28, 'Attila Starwar', 'Alive', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/28.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(29, 'Baby Legs', 'Alive', 'Human', 'Human with baby legs', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/29.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(30, 'Baby Poopybutthole', 'Alive', 'Poopybutthole', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/30.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(31, 'Baby Wizard', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/31.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(32, 'Bearded Lady', 'Dead', 'Alien', 'Parasite', 'Female', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/32.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(33, 'Beebo', 'Dead', 'Alien', '', 'Male', 'Venzenulon 7', 'https://rickandmortyapi.com/api/character/avatar/33.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(34, 'Benjamin', 'Alive', 'Poopybutthole', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/34.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(35, 'Bepisian', 'Alive', 'Alien', 'Bepisian', 'unknown', 'Bepis 9', 'https://rickandmortyapi.com/api/character/avatar/35.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(36, 'Beta-Seven', 'Alive', 'Alien', 'Hivemind', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/36.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(37, 'Beth Sanchez', 'Alive', 'Human', '', 'Female', 'Earth (C-500A)', 'https://rickandmortyapi.com/api/character/avatar/37.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(38, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/38.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(39, 'Beth Smith', 'Alive', 'Human', '', 'Female', 'Earth (Evil Rick\'s Target Dimension)', 'https://rickandmortyapi.com/api/character/avatar/39.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(40, 'Beth\'s Mytholog', 'Dead', 'Mythological Creature', 'Mytholog', 'Female', 'Nuptia 4', 'https://rickandmortyapi.com/api/character/avatar/40.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(41, 'Big Boobed Waitress', 'Alive', 'Mythological Creature', '', 'Female', 'Fantasy World', 'https://rickandmortyapi.com/api/character/avatar/41.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(42, 'Big Head Morty', 'unknown', 'Human', 'Human with giant head', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/42.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(43, 'Big Morty', 'Dead', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/43.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(44, 'Body Guard Morty', 'Dead', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/44.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(45, 'Bill', 'Alive', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/45.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(46, 'Bill', 'unknown', 'Animal', 'Dog', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/46.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(47, 'Birdperson', 'Alive', 'Alien', 'Bird-Person', 'Male', 'Bird World', 'https://rickandmortyapi.com/api/character/avatar/47.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(48, 'Black Rick', 'Alive', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/48.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(49, 'Blamph', 'Alive', 'Alien', '', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/49.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(50, 'Blim Blam', 'Alive', 'Alien', 'Korblock', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/50.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(51, 'Blue Diplomat', 'Alive', 'Alien', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/51.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(52, 'Blue Footprint Guy', 'Dead', 'Human', '', 'Male', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/character/avatar/52.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(53, 'Blue Shirt Morty', 'unknown', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/53.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(54, 'Bobby Moynihan', 'Alive', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/54.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(55, 'Boobloosian', 'Dead', 'Alien', 'Boobloosian', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/55.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(56, 'Bootleg Portal Chemist Rick', 'Dead', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/56.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(57, 'Borpocian', 'Alive', 'Alien', 'Elephant-Person', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/57.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(58, 'Brad', 'Alive', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/58.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(59, 'Brad Anderson', 'Dead', 'Human', '', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/59.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(60, 'Calypso', 'Dead', 'Human', 'Superhuman', 'Female', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/60.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(61, 'Campaign Manager Morty', 'Dead', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/61.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(62, 'Canklanker Thom', 'Dead', 'Alien', 'Gromflomite', 'Male', 'Gromflom Prime', 'https://rickandmortyapi.com/api/character/avatar/62.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(63, 'Centaur', 'Alive', 'Mythological Creature', 'Centaur', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/63.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(64, 'Chris', 'Dead', 'Alien', 'Organic gun', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/64.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(65, 'Chris', 'Alive', 'Humanoid', 'Microverse inhabitant', 'Male', 'Rick\'s Battery Microverse', 'https://rickandmortyapi.com/api/character/avatar/65.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(66, 'Coach Feratu (Balik Alistane)', 'Dead', 'Mythological Creature', 'Vampire', 'Male', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/66.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(67, 'Collector', 'Alive', 'Alien', 'Light bulb-Alien', 'Male', 'The Menagerie', 'https://rickandmortyapi.com/api/character/avatar/67.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(68, 'Colossus', 'Dead', 'Human', '', 'Male', 'Post-Apocalyptic Earth', 'https://rickandmortyapi.com/api/character/avatar/68.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(69, 'Commander Rick', 'Dead', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/69.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(70, 'Concerto', 'Dead', 'Humanoid', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/70.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(71, 'Conroy', 'Dead', 'Robot', '', 'unknown', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/71.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(72, 'Cool Rick', 'Alive', 'Human', '', 'Male', 'Earth (K-83)', 'https://rickandmortyapi.com/api/character/avatar/72.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(73, 'Cop Morty', 'Dead', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/73.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(74, 'Cop Rick', 'Alive', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/74.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(75, 'Courier Flap', 'Alive', 'Alien', '', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/75.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(76, 'Cousin Nicky', 'Dead', 'Alien', 'Parasite', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/76.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(77, 'Cowboy Morty', 'Alive', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/77.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(78, 'Cowboy Rick', 'Alive', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/78.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(79, 'Crab Spider', 'Alive', 'Alien', 'Animal', 'unknown', 'Hideout Planet', 'https://rickandmortyapi.com/api/character/avatar/79.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(80, 'Creepy Little Girl', 'Alive', 'Human', '', 'Female', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/80.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(81, 'Crocubot', 'Dead', 'Animal', 'Robot-Crocodile hybrid', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/81.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(82, 'Cronenberg Rick', 'unknown', 'Cronenberg', '', 'Male', 'Cronenberg Earth', 'https://rickandmortyapi.com/api/character/avatar/82.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(83, 'Cronenberg Morty', 'unknown', 'Cronenberg', '', 'Male', 'Cronenberg Earth', 'https://rickandmortyapi.com/api/character/avatar/83.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(84, 'Cult Leader Morty', 'Alive', 'Human', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/84.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(85, 'Cyclops Morty', 'Alive', 'Humanoid', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/85.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(86, 'Cyclops Rick', 'Dead', 'Humanoid', '', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/86.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(87, 'Cynthia', 'Dead', 'Alien', 'Zigerion', 'Female', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/87.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(88, 'Cynthia', 'Alive', 'Human', '', 'Female', 'Earth (Replacement Dimension)', 'https://rickandmortyapi.com/api/character/avatar/88.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(89, 'Dale', 'Dead', 'Mythological Creature', 'Giant', 'Male', 'Giant\'s Town', 'https://rickandmortyapi.com/api/character/avatar/89.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(90, 'Daron Jefferson', 'Alive', 'Alien', 'Cone-nippled alien', 'Male', 'Unity\'s Planet', 'https://rickandmortyapi.com/api/character/avatar/90.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(91, 'David Letterman', 'Alive', 'Human', '', 'Male', 'Earth (C-500A)', 'https://rickandmortyapi.com/api/character/avatar/91.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(92, 'Davin', 'Dead', 'Human', '', 'Male', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/92.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(93, 'Diablo Verde', 'Dead', 'Mythological Creature', 'Demon', 'Male', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/93.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(94, 'Diane Sanchez', 'Dead', 'Human', '', 'Female', 'Earth (C-137)', 'https://rickandmortyapi.com/api/character/avatar/94.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(95, 'Dipper and Mabel Mortys', 'unknown', 'Human', '', 'unknown', 'unknown', 'https://rickandmortyapi.com/api/character/avatar/95.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(96, 'Tuberculosis', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/96.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(97, 'Gonorrhea', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/97.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(98, 'Hepatitis A', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/98.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(99, 'Hepatitis C', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/99.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25'),
	(100, 'Bubonic Plague', 'Dead', 'Disease', '', 'unknown', 'Anatomy Park', 'https://rickandmortyapi.com/api/character/avatar/100.jpeg', '2025-06-20 12:32:25', '2025-06-20 12:32:25');

-- Volcando estructura para tabla consumo_api.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla consumo_api.sessions: ~0 rows (aproximadamente)
DELETE FROM `sessions`;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('1OqlEXnbqb7wSAxYFq5oASiNijrk26oHTsLqYkjJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2xCZnpScVMzMTBWbURaaFBQcDdNM3B5SXYwMFpQZmhKMzdPR21aaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZXJzb25hamVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1750404746);

-- Volcando estructura para tabla consumo_api.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla consumo_api.users: ~0 rows (aproximadamente)
DELETE FROM `users`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
