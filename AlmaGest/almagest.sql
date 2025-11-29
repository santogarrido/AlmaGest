-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2025 a las 12:07:40
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `almagest`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `price_min` decimal(10,0) NOT NULL,
  `price_max` decimal(10,0) NOT NULL,
  `color_name` varchar(20) DEFAULT NULL,
  `weight` decimal(10,2) NOT NULL,
  `size` varchar(20) DEFAULT NULL,
  `family_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `name`, `description`, `price_min`, `price_max`, `color_name`, `weight`, `size`, `family_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Pintura', 'Bote de pintura blanca', 15, 18, 'Blanco', 5.00, 'nº1', 7, 0, '2025-11-29 09:09:40', '2025-11-29 09:52:33'),
(2, 'Rodillo', 'Rodillo pequeño', 5, 7, 'Azul', 0.25, '10 cm', 1, 0, '2025-11-29 09:19:50', '2025-11-29 09:52:59'),
(3, 'Baldosa', 'Baldosa mediana', 2, 5, 'Verde', 1.00, '15 cm x 25 cm', 13, 0, '2025-11-29 09:21:23', '2025-11-29 09:33:18'),
(4, 'Pintura', 'Bote de pintura ocre', 2, 8, 'Ocre', 1.00, '5 cm x 0.25 cm', 7, 0, '2025-11-29 09:30:39', '2025-11-29 09:53:07'),
(5, 'Prueba', 'Prueba para borrar', 2, 17, 'Azul', 1.00, '60 cm x 2 cm', 17, 1, '2025-11-29 10:03:27', '2025-11-29 10:03:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bank_entities`
--

CREATE TABLE `bank_entities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `ccc` char(23) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bank_entities`
--

INSERT INTO `bank_entities` (`id`, `name`, `ccc`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Jaycee Wiegand', 'uprSHtYcLRM6zcT3p1o444n', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(2, 'Hertha Gottlieb', 'zUF7YDmOa6uEyMNiXZkPPka', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(3, 'Rebeka Crist', 'LDleOt1MMntJOUTFGyVMrml', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(4, 'Dallas Runolfsdottir', 'DYBgDmMPaG47OlDenMGX01m', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(5, 'Otilia Murphy DDS', 't7nGyjIkBKgxQgqvve0xARp', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(6, 'Victor Gibson I', 'BjptQo9DVIWK984A3CCxXj0', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(7, 'Aidan Fahey', 'RUnWELyVpvr9jjiDh7uNWD1', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(8, 'Lolita Daniel', 'z1pObcrMmvJ576bHohDusYw', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(9, 'Luther McGlynn', 'qzvPc8V5GkMMt3KvfhjhInH', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(10, 'Jeffery Schuster', 'xpBBdIrknLKjGyRuwAIdTjT', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(11, 'Mittie Stark', 'BUQEPLT2GPQCpPZKccNLt6X', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(12, 'Brennon Lueilwitz', 'EJtduwt4KLAuBOhSZ7MfHTY', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(13, 'Terry Grady', 'FjQTOcapLhc7DZuktfxLGnd', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(14, 'Suzanne Spencer', 'JUvhvkusDeBefBVGu7OZp9t', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(15, 'Serena Johnston', 'pTCDCv1CVY7nkDLEINIuWve', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(16, 'Leone Conroy', 'I4jzEUc3mrNeKRKyATsGd8a', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(17, 'Arvid Murray', 'gGxrYwlAXOzd4S4FSWnsVDz', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(18, 'Junior Koelpin', 'xnMX4KJrZ2lcVomMNAsAmdu', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(19, 'Dr. Elliott Howe', 'IfUUibdReXOWsjJljmaNRI5', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(20, 'Cordie Schaefer', 'AR2JKsG4Q0YktbEsCEjWAlD', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(21, 'Laura Kulas V', 'ZBc8nIKB3iq3getAPMsRSJt', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(22, 'Elena Prosacco Sr.', '4O3fh4OsBXjnCSW9AhxWEqz', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(23, 'Prof. Buster Roberts Jr.', 'uRcW0Y3Jo6ziwrsOSqNKKQK', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(24, 'Neoma Lehner', 'J24g7rkfdn87hI0qPnyk4Gv', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(25, 'Dr. Gaston Satterfield', '5tCgDydpQ30ZYKDbMH3zSHI', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(26, 'Dixie Kshlerin', 'IpLYKPJEUpx6B850Y5HJ6Rn', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(27, 'Mr. Elroy Hayes Jr.', 'cF3DdKi4rE6UulzS3D1gJK9', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(28, 'Calista Turner', 'sLMZ3XRVvbqhBmLEfZZQ5pm', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(29, 'Trinity Effertz', 'dXMaRyzheGpvAI7gcSOrkaO', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(30, 'Eloise Russel', 'y1HZ9C0niBvZvN0BVMlpvYr', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(31, 'Prof. Daisy Kessler', 'G9rdRy7BYkr0J32ktWfdpnQ', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(32, 'Kailey Rowe', 'KYvx2ZaoC9DtEc3XzWklRJk', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(33, 'Beatrice Cummerata', 'GbfUJKOqfVBlxu7gfrqEjWt', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(34, 'Carmela Casper', 'ddA9x8Yo1LoqeuJU3mY8HIp', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(35, 'Prof. Rebecca Moen II', 'BfmE6Y8j8MVj9IsGQHqIsvb', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(36, 'Johnny Johnson', 'bNHRIT1lcvjuZ5USpAsTIHZ', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(37, 'Rhea Anderson', 't5ob0tR96WljcNbZOtKCtK1', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(38, 'Tressa Kshlerin', '3hwURMqwDLUcnPmSdBugrnr', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(39, 'Leonard Ward', 'jsS2tq9WJfd3Gu2jSgUQujt', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(40, 'Mrs. Andreane Kuhic', 'JdDthX0UvXIahET2iuNapYH', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(41, 'Mrs. Daisy Johnson DVM', 'yrwQ1cDWyReOUnsDw4E5Rr2', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(42, 'Prof. Edyth Jacobi', 'YR2KTilebsMOXKSoR6dmqWT', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(43, 'John Smith', 'lvZEsnyeIRNDg2arD46U8s8', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(44, 'Abbey Hayes', 'qdQogTX2oyZUlGcZzXjMZsl', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(45, 'Dr. Harmon Gerhold II', 'ytEnA1jIQBB7D1g406uOgGL', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(46, 'Mr. Elian DuBuque DVM', 'lX66VUWwTugb7z2h0Ckt30j', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(47, 'Christine Walter', 'E0kpH207huaIYlwzmq6Aehl', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(48, 'Geovanny Wilderman II', 'f0yTNgLNlXUSfgDwdDLBBVC', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(49, 'Dr. Maxine Donnelly MD', 'o8CANZyvcNJSnXVkJNAJaDE', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(50, 'Rebeca Krajcik', 'hFIPTqUGGSjhhegAgJFsrPS', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `cif` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(9) NOT NULL,
  `del_term_id` bigint(20) UNSIGNED NOT NULL,
  `transport_id` bigint(20) UNSIGNED NOT NULL,
  `payment_term_id` bigint(20) UNSIGNED NOT NULL,
  `bank_entity_id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `city`, `cif`, `email`, `phone`, `del_term_id`, `transport_id`, `payment_term_id`, `bank_entity_id`, `discount_id`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Smitham, Hauck and Johnston', '964 Cleve Trace', 'West Marilyne', 'T21852429', 'shields.torrance@jakubowski.info', '679091611', 3, 25, 27, 30, 2, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(2, 'McLaughlin Ltd', '7273 Blick Radial Apt. 733', 'Kingfurt', 'D24960908', 'elise.okeefe@harris.com', '855282304', 21, 22, 41, 10, 16, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(3, 'Daugherty, Hickle and Gislason', '4497 Lavonne Glen', 'North Silastown', 'C24061179', 'bernier.santino@roberts.com', '931306082', 44, 5, 8, 32, 33, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(4, 'Treutel, Rolfson and Hodkiewicz', '946 Kilback Forge Suite 797', 'Francescaberg', 'J29542551', 'clementina.legros@okeefe.biz', '313606603', 17, 27, 12, 30, 33, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(5, 'Balistreri-Toy', '2282 Kohler Port', 'South Letha', 'H30844832', 'roberts.tressie@osinski.com', '398399820', 37, 28, 22, 2, 7, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(6, 'Russel Ltd', '42482 Kelsi Road', 'Nolanview', 'W35183896', 'kgottlieb@schultz.com', '487523423', 45, 25, 33, 48, 10, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(7, 'Bauch, Fahey and Volkman', '38643 Kyla Square Suite 030', 'Alphonsoland', 'B66382163', 'beaulah95@mann.com', '590709601', 16, 10, 5, 34, 38, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(8, 'Mosciski, Murazik and Brekke', '8972 Hirthe Curve', 'New Wayne', 'F00922393', 'cassin.enrico@mertz.net', '834983283', 29, 34, 31, 27, 47, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(9, 'Ritchie, Hirthe and Rice', '48294 Kutch Cliffs', 'D\'Amorefurt', 'K17740719', 'mittie16@simonis.info', '562036329', 3, 24, 33, 35, 19, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(10, 'Kutch Inc', '8987 Kovacek Heights', 'East Leraberg', 'P81312244', 'isidro00@daniel.info', '953091213', 3, 38, 46, 48, 25, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(11, 'Harvey-Graham', '7733 Arnold Forest Apt. 138', 'West Lola', 'Q68815209', 'yrippin@erdman.org', '363913192', 47, 44, 46, 7, 48, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(12, 'Runolfsson-Rosenbaum', '543 Friesen Ferry', 'North Pablo', 'H42286002', 'hcollins@kessler.info', '176846750', 36, 28, 36, 34, 16, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(13, 'Kozey, Schowalter and Cummerata', '87517 Amara Lights', 'North Crawford', 'O97539908', 'elisa.franecki@orn.net', '609541452', 49, 8, 16, 29, 10, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(14, 'Davis-Bechtelar', '39413 Jettie Glens Apt. 423', 'Enochfurt', 'F76219023', 'kennedy.howe@mosciski.com', '624061756', 20, 26, 47, 34, 12, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(15, 'Borer, Padberg and Zieme', '817 Francis Plains Suite 771', 'Lake Alexysview', 'Z07150626', 'tvolkman@ohara.com', '839635662', 16, 22, 9, 32, 15, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(16, 'Durgan-Weber', '2614 Krystal Fields', 'Stonebury', 'H71917105', 'paige.lind@gleason.com', '148303038', 24, 23, 17, 40, 26, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(17, 'Robel-Rau', '6827 Ursula Causeway Apt. 285', 'Henrihaven', 'M17529412', 'eriberto.roberts@prohaska.biz', '742278852', 34, 45, 40, 5, 25, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(18, 'Schimmel Group', '764 Jast River', 'North Delores', 'B14904936', 'kheaney@runolfsson.com', '115897887', 20, 35, 7, 14, 44, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(19, 'Daugherty PLC', '460 Gusikowski Hollow Suite 394', 'Alyssonton', 'N87150940', 'ijohns@raynor.com', '047222758', 12, 33, 2, 22, 11, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(20, 'Roob Ltd', '64603 Jalyn Circles', 'Schummmouth', 'J08725772', 'ondricka.laurianne@heller.info', '483334240', 32, 8, 35, 33, 4, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(21, 'Runolfsdottir-Hansen', '856 Rocky Villages', 'East Josephinebury', 'X28654716', 'wlang@williamson.net', '507630304', 26, 30, 16, 2, 23, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(22, 'Terry LLC', '9174 Hoyt Harbor Apt. 591', 'East Antonetteland', 'A67209240', 'prosacco.stewart@conn.com', '669427470', 17, 41, 43, 4, 12, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(23, 'Pfannerstill-Hagenes', '313 Wilderman Trail', 'Lake Garrisonshire', 'I80096115', 'conrad98@harris.com', '116949846', 28, 49, 36, 3, 33, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(24, 'Ebert-Rolfson', '2434 Shanahan Rest', 'Cieloborough', 'H70821058', 'tatum35@wiegand.com', '887075287', 31, 10, 35, 23, 45, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(25, 'Medhurst, Windler and Hamill', '82604 Willms Path Apt. 473', 'Ondrickaborough', 'Y70681972', 'kupton@gaylord.com', '563482380', 41, 28, 16, 6, 12, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(26, 'Jones-Bins', '68033 Napoleon Parkways Apt. 139', 'North Alexanne', 'K68125990', 'lera.hane@emmerich.com', '835808090', 16, 45, 29, 10, 49, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(27, 'Blanda-Stark', '9771 Breitenberg Drives Suite 428', 'East Annalisemouth', 'W36836864', 'jbernier@dickens.com', '443816143', 3, 37, 2, 10, 17, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(28, 'Johns LLC', '51433 Rhiannon Prairie', 'North Patrick', 'C18863918', 'zlittle@bailey.net', '880220515', 28, 15, 41, 43, 5, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(29, 'Rosenbaum, Champlin and Runte', '289 Alexanne Village', 'West Jonathanside', 'G17599207', 'verla84@medhurst.com', '716024805', 7, 44, 37, 42, 5, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(30, 'Bashirian Group', '474 Schmitt Trafficway Apt. 981', 'Jeanettefort', 'H08666943', 'ischmidt@funk.com', '281675169', 3, 10, 45, 11, 27, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(31, 'Mraz, Adams and Howe', '10779 Lavonne Circle Suite 674', 'McCulloughville', 'B70932837', 'edwin.wiza@kuhic.com', '551044343', 43, 17, 34, 29, 35, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(32, 'Watsica PLC', '126 Elvis Stream', 'North Wilhelminemouth', 'I74917388', 'arlene.donnelly@sporer.com', '554026690', 18, 43, 14, 43, 42, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(33, 'Cormier-Kohler', '635 Abdiel Rapids', 'Robbborough', 'A58741606', 'green.dariana@gutkowski.com', '760857025', 19, 41, 47, 24, 50, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(34, 'Funk-Harris', '1725 Haag Crossing Suite 448', 'Keanubury', 'U98861048', 'amely37@lebsack.net', '414118416', 50, 42, 3, 4, 1, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(35, 'Bednar Ltd', '71226 Batz Canyon Apt. 955', 'South Kavonton', 'Y37204990', 'rick94@marvin.com', '986436073', 40, 13, 33, 28, 47, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(36, 'Steuber-Beahan', '4971 Quitzon Crossing Apt. 930', 'Veronaside', 'W83911394', 'vergie.ernser@cronin.com', '767679456', 1, 41, 43, 5, 26, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(37, 'Fadel-Pouros', '901 Fisher Meadow', 'Halliemouth', 'G39547862', 'pfeffer.brenden@wiegand.info', '718798660', 19, 24, 24, 11, 12, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(38, 'Schmidt LLC', '6668 Champlin Islands', 'South Matteofort', 'Q85329344', 'mhalvorson@bruen.biz', '915450731', 15, 47, 46, 36, 27, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(39, 'Hill Ltd', '7900 Alysa Port', 'Celestinoview', 'A68156073', 'matteo.hoppe@skiles.com', '339884583', 48, 35, 16, 42, 37, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(40, 'Reichel-Dietrich', '1165 Germaine Courts', 'Bernierbury', 'Y44780106', 'udonnelly@stiedemann.com', '371458503', 30, 50, 2, 20, 46, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(41, 'Harris PLC', '3104 Peggie Bridge Suite 983', 'Rolfsonhaven', 'K34683682', 'elroy43@lang.com', '490308103', 29, 38, 38, 44, 34, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(42, 'Will-Lemke', '842 Zion Center', 'Krisberg', 'L98175519', 'xswaniawski@hayes.com', '514517612', 32, 37, 34, 8, 44, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(43, 'Metz LLC', '401 Ondricka Field Apt. 887', 'West Ellachester', 'X53792899', 'kenyon19@mosciski.com', '765575900', 17, 47, 34, 43, 42, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(44, 'Lebsack, Hagenes and Johns', '8285 Moshe Village Apt. 563', 'Eberthaven', 'K84610558', 'rbreitenberg@emmerich.org', '665941981', 41, 16, 43, 31, 36, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(45, 'Berge-Dooley', '100 Wisoky Cove', 'New Fredmouth', 'M89993866', 'kailyn.zemlak@shields.net', '856377326', 29, 23, 38, 35, 15, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(46, 'Beer and Sons', '6395 Walsh Creek Suite 202', 'West Llewellyn', 'F28986931', 'ima.feeney@homenick.info', '846259181', 41, 23, 42, 50, 30, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(47, 'Rempel PLC', '178 Terrell Mountain Suite 224', 'East Damianhaven', 'B36254387', 'brakus.aliza@von.net', '829076838', 27, 43, 15, 37, 50, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(48, 'Kassulke-Carroll', '867 Leora Gardens Apt. 582', 'South Gregory', 'A80962859', 'chalvorson@gerlach.com', '914383110', 19, 12, 38, 36, 3, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(49, 'Leannon-Wiza', '11754 Vince Lodge', 'New Carlieview', 'B66538434', 'fae.crooks@johns.com', '172775066', 18, 14, 2, 24, 37, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(50, 'Buckridge, Olson and Terry', '688 Goodwin Landing Apt. 303', 'East Erika', 'S88898064', 'lacy.haley@dare.com', '351289885', 50, 4, 6, 23, 49, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contains_art_invlines`
--

CREATE TABLE `contains_art_invlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_line_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contain_art_delivlines`
--

CREATE TABLE `contain_art_delivlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_lines_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contain_art_orderlines`
--

CREATE TABLE `contain_art_orderlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `order_line_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_note`
--

CREATE TABLE `delivery_note` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `num` varchar(10) NOT NULL,
  `issuedate` date NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_note_lines`
--

CREATE TABLE `delivery_note_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_note_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_note_line_num` varchar(10) NOT NULL,
  `order_line_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_terms`
--

CREATE TABLE `delivery_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(50) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `delivery_terms`
--

INSERT INTO `delivery_terms` (`id`, `description`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Et non voluptatum iusto.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(2, 'Quas totam quos consequatur impedit.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(3, 'Rerum similique et aut autem.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(4, 'Dolorem error nisi voluptates vel autem.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(5, 'Vel perferendis exercitationem quisquam quia.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(6, 'Vel rem et et vel ut natus nihil nemo.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(7, 'Eligendi in animi eaque temporibus.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(8, 'Explicabo ullam sint facilis provident.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(9, 'Officia veritatis doloremque ullam.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(10, 'Magni qui consequuntur ut deserunt rem delectus.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(11, 'Tempore voluptates sint qui quibusdam.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(12, 'In in eligendi reprehenderit totam.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(13, 'Similique et est ut rerum.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(14, 'Id delectus et magni maxime.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(15, 'Harum nostrum numquam saepe adipisci.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(16, 'Consequatur sit sed similique modi sequi.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(17, 'Officia dicta ea cum possimus omnis facere.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(18, 'Commodi labore aliquid voluptatem qui ullam et.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(19, 'Nostrum assumenda nostrum et labore.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(20, 'Voluptate fuga consequatur et sapiente iure.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(21, 'At atque iusto voluptates inventore adipisci qui.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(22, 'Voluptatem ea sint excepturi in est autem.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(23, 'Officia sit quia accusantium quo est.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(24, 'Omnis minima qui voluptatem molestiae illo.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(25, 'Ratione esse perferendis ea explicabo neque aut.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(26, 'Sit sint repellendus eos voluptate sunt.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(27, 'Earum non quis impedit qui.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(28, 'Illo et sequi quam nobis reiciendis.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(29, 'Aut ipsum rerum numquam nihil.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(30, 'Minus tempora in voluptas aut ut ipsa.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(31, 'Eum sunt sunt facere fuga ut rem animi.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(32, 'In aut pariatur non quia quis maxime nisi.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(33, 'Voluptate explicabo repellendus omnis ut et.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(34, 'Fugiat sint magni odit illo itaque amet et iusto.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(35, 'Ab dolore corporis repudiandae cum harum.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(36, 'Iure ut laborum quia et aut sint et.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(37, 'In et nisi corrupti impedit. Nisi eum eius et.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(38, 'Ut corporis et non repellat ut voluptatem.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(39, 'Omnis sed autem asperiores.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(40, 'Rerum ea tenetur quo est eveniet.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(41, 'Numquam odit sapiente corrupti eos.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(42, 'Commodi eligendi reprehenderit placeat deserunt.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(43, 'Rerum eum doloremque natus aut.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(44, 'Iste iure accusamus aut et eos eum et.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(45, 'Voluptatibus sint est debitis eveniet.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(46, 'Dolorem totam est quia.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(47, 'Quia est assumenda facilis officia.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(48, 'Aspernatur quis distinctio excepturi.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(49, 'Sunt deserunt est ut earum ipsa debitis ut.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(50, 'Aliquam nostrum voluptatem in praesentium et.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discount`
--

CREATE TABLE `discount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `discount` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `discount`
--

INSERT INTO `discount` (`id`, `name`, `discount`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Princess O\'Reilly V', 4796, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(2, 'Leonie Heller', 8182, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(3, 'Mrs. Miracle Weissnat', 7727, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(4, 'Dr. Dexter Ward', 5363, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(5, 'Florence Grady', 3060, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(6, 'Shakira Robel V', 8006, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(7, 'Everardo Erdman', 6061, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(8, 'Agustina Gottlieb III', 2651, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(9, 'Emmanuel Goldner', 2243, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(10, 'Leland Kessler', 5525, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(11, 'Wendell Douglas', 3779, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(12, 'Fay Morissette', 3275, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(13, 'Monserrat Senger', 7443, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(14, 'Jacques Ullrich', 2981, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(15, 'Zachariah Morar Sr.', 2006, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(16, 'Prof. Jennings Osinski', 2974, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(17, 'Maverick Kuvalis', 763, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(18, 'Aurelio Wunsch IV', 8983, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(19, 'Delbert Vandervort', 9137, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(20, 'Jack Jenkins', 203, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(21, 'Dr. Kacie Schulist PhD', 4006, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(22, 'Prof. Aurore Frami', 1426, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(23, 'Ms. Maximillia Homenick IV', 8980, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(24, 'Mortimer Brown', 1296, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(25, 'Krystel Adams', 3526, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(26, 'Aubree Torphy', 8126, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(27, 'David Prohaska', 6243, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(28, 'Paige Kuhn', 2251, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(29, 'Araceli Dietrich', 7053, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(30, 'Lorna Mertz', 1070, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(31, 'Gabrielle Greenholt', 2542, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(32, 'Mr. Dean Treutel', 4634, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(33, 'Phyllis Hartmann', 3190, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(34, 'Claud Swift', 9678, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(35, 'Lydia Windler', 6453, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(36, 'Travon Greenholt', 4892, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(37, 'Rozella Purdy DDS', 2425, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(38, 'Mr. Harry Hamill Sr.', 6342, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(39, 'Delfina Bartoletti', 8551, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(40, 'Walker Kris', 3928, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(41, 'Addison Daugherty', 4504, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(42, 'Garry Jenkins MD', 838, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(43, 'Dr. Angelica Morar', 2513, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(44, 'Jadyn West', 7033, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(45, 'Kane Becker DVM', 2310, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(46, 'Nico Lebsack', 6659, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(47, 'Prof. Reynold Macejkovic', 3900, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(48, 'Mr. Jean Block Jr.', 7129, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(49, 'Sylvia Sipes', 5550, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(50, 'Roxane Hane', 5430, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `families`
--

CREATE TABLE `families` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `profit_margin` decimal(10,0) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `families`
--

INSERT INTO `families` (`id`, `name`, `profit_margin`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Non facere sit numquam ea.', 1951488174, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(2, 'Possimus ullam voluptas aut nihil.', 7644559079, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(3, 'Necessitatibus vitae ut deleniti possimus a.', 1974906771, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(4, 'Ducimus exercitationem sit et.', 7470870029, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(5, 'Sed et et repellendus.', 5008568167, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(6, 'Nihil perferendis excepturi doloribus.', 2458531026, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(7, 'Itaque enim et veniam.', 4603311401, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(8, 'Rerum autem eos iure et hic.', 7396334109, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(9, 'Dolores dolorum blanditiis et aut et quia.', 2776011285, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(10, 'Explicabo aperiam voluptas fuga.', 6778960102, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(11, 'Est nesciunt placeat quis nam sit quod.', 4421110524, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(12, 'Dolores et accusantium illum voluptate.', 5122468816, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(13, 'Commodi ipsa ex rerum non.', 8965668355, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(14, 'Saepe optio amet ratione.', 6473946973, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(15, 'Error velit ut delectus.', 8759300582, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(16, 'Velit rem ullam officia ut porro.', 5918769840, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(17, 'Corrupti doloribus voluptas necessitatibus.', 544353173, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(18, 'Debitis ea porro consequatur nihil reprehenderit.', 5246874515, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(19, 'Porro odio dignissimos dolor rem quis libero.', 5881186972, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(20, 'Sit non nobis ullam non harum.', 5881028805, 0, '2025-11-29 09:07:55', '2025-11-29 09:07:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `num` int(11) NOT NULL,
  `issuedate` date NOT NULL,
  `delivery_note_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice_lines`
--

CREATE TABLE `invoice_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_lines_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_lines_num` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(24, '2012_10_23_111325_create_transports_table', 1),
(25, '2012_10_23_111453_create_payment_terms_table', 1),
(26, '2012_10_23_111514_create_bank_entities_table', 1),
(27, '2012_10_23_111531_create_delivery_terms_table', 1),
(28, '2012_10_23_153856_create_discount_table', 1),
(29, '2013_10_11_153709_create_companies_table', 1),
(30, '2014_10_12_000000_create_users_table', 1),
(31, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2019_08_19_000000_create_failed_jobs_table', 1),
(34, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(35, '2020_10_26_103535_create_orders_table', 1),
(36, '2025_10_23_160159_create_delivery_note_table', 1),
(37, '2025_10_24_103812_create_invoices_table', 1),
(38, '2025_10_25_095040_create_order_lines_table', 1),
(39, '2025_10_26_094944_create_delivery_note_lines_table', 1),
(40, '2025_10_26_104137_create_invoice_lines_table', 1),
(41, '2025_10_26_150832_create_families_table', 1),
(42, '2025_10_26_151356_create_articles_table', 1),
(43, '2025_10_27_095141_create_products_table', 1),
(44, '2025_10_27_115506_create_contains_art_invlines_table', 1),
(45, '2025_10_27_115932_create_contain_art_delivlines_table', 1),
(46, '2025_10_27_152124_create_contain_art_orderlines_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `num` varchar(10) NOT NULL,
  `issuedate` date NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_lines`
--

CREATE TABLE `order_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_line_num` varchar(10) NOT NULL,
  `issue_date` date NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(50) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `payment_terms`
--

INSERT INTO `payment_terms` (`id`, `description`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'Maxime sit cum quia molestias nihil tenetur.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(2, 'Corrupti maiores aliquid voluptas quos.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(3, 'Nihil odio aperiam ipsam quibusdam.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(4, 'Vel aspernatur porro libero consequatur.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(5, 'Sed est qui reiciendis eaque fuga est.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(6, 'Asperiores velit veritatis vitae aut.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(7, 'Cumque numquam quia molestiae quo.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(8, 'Est sunt error nemo numquam omnis itaque.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(9, 'Dicta et quia ratione commodi et.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(10, 'Iure quae ipsam occaecati explicabo numquam.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(11, 'Excepturi eos ut qui modi in.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(12, 'Qui quod ut suscipit voluptas quisquam.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(13, 'Qui voluptatum itaque impedit eum ipsum sequi et.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(14, 'Amet vero eaque rem debitis.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(15, 'Quam saepe libero veritatis rerum.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(16, 'Impedit aut qui quos praesentium.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(17, 'Aliquid sint libero ipsam non animi.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(18, 'In quidem a praesentium.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(19, 'Suscipit non at amet ipsum nemo.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(20, 'Deserunt omnis laboriosam provident nihil.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(21, 'Suscipit magni et animi quo non officia.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(22, 'Est et velit explicabo est cum rerum aperiam.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(23, 'Dignissimos reprehenderit labore et expedita.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(24, 'Voluptatem voluptas tempore sequi voluptatem.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(25, 'Est et officiis quidem architecto.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(26, 'Est aut molestiae repellat aspernatur nam aut.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(27, 'Suscipit blanditiis expedita facere.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(28, 'Ut aut qui nisi ea ut cumque optio.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(29, 'Quo voluptatum in nobis ut.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(30, 'Consequatur eveniet et sint eos.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(31, 'Occaecati voluptas dolore dolorum.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(32, 'Nihil porro nulla amet aut hic atque aut.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(33, 'Cumque sit aut quibusdam sit autem.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(34, 'Ratione praesentium enim rerum enim et.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(35, 'Corporis qui molestiae odio officiis molestiae.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(36, 'Ut dolor atque assumenda odit explicabo numquam.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(37, 'Sapiente aut eum ipsa aut.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(38, 'Vitae dolores hic quia dolorum numquam.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(39, 'A ex ducimus quia sunt.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(40, 'Officiis rem et eligendi tempore.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(41, 'Voluptatum dignissimos nulla recusandae quis in.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(42, 'Porro quae id autem fugiat quam.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(43, 'Unde sunt laudantium magnam cumque.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(44, 'Cumque esse similique illum.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(45, 'Quo qui sed aut dolore deserunt.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(46, 'Enim et illum est.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(47, 'Laboriosam earum eum reiciendis.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(48, 'Aut sed omnis ullam tempora cumque.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(49, 'At odit dolorem enim velit. Id explicabo fuga et.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(50, 'Non dicta repellat quos aut.', 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `sotck` int(11) NOT NULL,
  `color_name` varchar(20) NOT NULL,
  `weight` double(8,2) NOT NULL,
  `size` varchar(10) NOT NULL,
  `family_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transports`
--

CREATE TABLE `transports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transports`
--

INSERT INTO `transports` (`id`, `min`, `max`, `price`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 35, 5715, 7093, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(2, 90, 2431, 5811, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(3, 19, 5231, 8080, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(4, 76, 3996, 6680, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(5, 38, 8983, 2974, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(6, 67, 4644, 1199, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(7, 53, 5658, 8599, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(8, 15, 3036, 1732, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(9, 17, 1663, 6867, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(10, 68, 6421, 5876, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(11, 56, 8739, 1626, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(12, 65, 6553, 4685, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(13, 80, 2356, 791, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(14, 89, 1964, 9793, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(15, 20, 8554, 3044, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(16, 67, 3612, 7760, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(17, 83, 6701, 4655, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(18, 41, 4514, 5372, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(19, 99, 4479, 1424, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(20, 12, 3188, 9382, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(21, 73, 8640, 4749, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(22, 2, 7476, 5964, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(23, 21, 4757, 4354, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(24, 23, 7365, 3863, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(25, 100, 5382, 1242, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(26, 63, 2478, 8305, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(27, 88, 2798, 4066, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(28, 70, 6573, 7556, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(29, 98, 4678, 3679, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(30, 38, 5181, 3583, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(31, 44, 5741, 7182, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(32, 81, 7628, 6704, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(33, 29, 3636, 2311, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(34, 99, 2211, 3543, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(35, 52, 3935, 8520, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(36, 84, 6659, 6481, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(37, 21, 3048, 3799, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(38, 25, 938, 7500, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(39, 56, 7863, 6953, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(40, 89, 9518, 8124, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(41, 5, 3496, 7754, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(42, 58, 9884, 8679, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(43, 25, 6109, 8373, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(44, 78, 6868, 8661, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(45, 81, 6755, 5451, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(46, 79, 9663, 6217, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(47, 55, 3834, 5683, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(48, 38, 8463, 1727, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(49, 45, 3308, 7709, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52'),
(50, 86, 899, 1584, 0, '2025-11-29 09:07:52', '2025-11-29 09:07:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(15) NOT NULL,
  `secondname` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(1) DEFAULT NULL,
  `email_confirmed` tinyint(4) NOT NULL DEFAULT 0,
  `activated` tinyint(4) NOT NULL DEFAULT 0,
  `iscontact` tinyint(4) NOT NULL DEFAULT 0,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `firstname`, `secondname`, `email`, `password`, `company_id`, `type`, `email_confirmed`, `activated`, `iscontact`, `deleted`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trystan', 'Charley Bosco', 'lila92@example.org', '$2y$10$./BXsyIyojNUXO4oUkwFUe6kGxxTEr.METIv8PupwfGYVALoEF7Te', 35, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'F05WSvLSPs', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(2, 'Frank', 'Anderson Veum', 'arno.runolfsdottir@example.org', '$2y$10$lMqvb/NMqhhKN69aYyvAveHojVnYttJ7jYqPUytIWZTCq.O73AfcO', 21, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'U4f1mXlV4v', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(3, 'Jessyca', 'Yessenia Mohr', 'patricia53@example.net', '$2y$10$dvaRyGSxHgJwRBW80ocvUOirigw3X6VSDsHZIRbnhz9Vm/tRAK5Ze', 11, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'VRPN9B2gev', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(4, 'Jerald', 'Stephania Corkery', 'reanna11@example.net', '$2y$10$aZ1WCUDrR4gdnqq4f3/tzuyZuNWl8bIT11fX1.CsIlU11bpOnpL7W', 20, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'aOYwz2TscH', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(5, 'Malinda', 'Mallie Lesch PhD', 'wolf.thalia@example.net', '$2y$10$6g1IO64EzgADlGP7BGPYcuhLkACKLe34Q74WC6E1jRlLcH.a7fxui', 36, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'P6uJyqnuzD', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(6, 'Vincenzo', 'Prof. Lydia Tromp II', 'kenny92@example.com', '$2y$10$Hn6CyxqhfPZjEBV0GjOBe.uo/Zy.XgQ0h2jJg2WpWlICmvlMlNL5S', 40, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'y9D5dkYHig', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(7, 'Reba', 'Tomas Parker', 'sawayn.hershel@example.org', '$2y$10$K2pkk572vSyDXyFnVvYYVOosByG6Bu66sGLOnTgHG2O2DOXN2mnK.', 6, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', '6123kOiFfU', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(8, 'Joyce', 'Della Witting', 'jeffery71@example.org', '$2y$10$mrsdlkNeT.WnjPElGJmbu.3qZttZzD6VOaa7466ARh2NF0h/9AQmq', 1, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'zzzYzx89Gq', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(9, 'Rashad', 'Jamison Kihn', 'abagail.johns@example.org', '$2y$10$BO6w/UCEMf1W9SDPOnfCt.eaSys8MmALx.nhWK7zVnV5RDXLvqd52', 14, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', '9Di7jhLISx', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(10, 'Vernice', 'Howard Batz', 'gkoepp@example.net', '$2y$10$U.t/so2h9j1TJiOHduvAC.coRKerwzV8OXyLWZA39gKx9t5uZurVq', 24, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'RdSxJWVkND', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(11, 'Ima', 'Gretchen Daniel', 'antonio.hermiston@example.com', '$2y$10$vhhjg9pLaDUuFb9DH/1U4OOY3WkL.RRyJ9wAHh.Fz1DFCj6dosvtS', 34, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'Vy1VNzHAiM', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(12, 'Dimitri', 'Nona Dare', 'cruickshank.opal@example.com', '$2y$10$ZCSUG8odGmCeIs/olJBynuCMVtdkTjDoks6c/VcX7UDDhT9JDlE5a', 19, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', '80B05oOTMu', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(13, 'Monte', 'Prof. Flavio Harvey V', 'estel16@example.net', '$2y$10$TZLiksU6QE7i840j3AXSV.3MJdJMircixI1pVpWn1BoEnlj/MK/6m', 37, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'eA8ILAMHyj', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(14, 'Angelina', 'Ms. Genesis Grant PhD', 'freida66@example.com', '$2y$10$kXSqqaNo2/xRUYjl3z3qG.0laDWIE5pocvPWxgcuTee0CwdKRzJnC', 48, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', '8O3rjvRlX0', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(15, 'Annalise', 'Deanna Schmidt Jr.', 'jkshlerin@example.org', '$2y$10$trCxibFZt2puKh5X9oz1xeg4MWmuNuE8u2nJZ9kZ0dnA7r5sWxrmC', 3, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'ePWc6tM7Lz', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(16, 'Alessandro', 'Prof. Amalia Hickle PhD', 'hegmann.ally@example.com', '$2y$10$aLjun/Zu4s2P3KRwPjP0JOMA8hp/zAFdPDSaCiBsgDASPy.ihPqw6', 33, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'S7hWLqcCcd', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(17, 'Noe', 'Dr. Harold Hessel DDS', 'davion.grady@example.com', '$2y$10$p3q3O1JJKlMsUBUGaDeR8uWv4GJ0HOHhufhP8gQchky28qkdEeg7S', 5, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'oSvvH960f8', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(18, 'Malinda', 'Shaun Schaefer', 'obernhard@example.com', '$2y$10$tigmz68T6/jH7Zk4E2vR4uV3C7r8nub.Lf6y3fuPsSFcGeylvJANu', 8, 'U', 0, 0, 0, 0, '2025-11-29 09:07:53', 'igCUD0OheU', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(19, 'Florencio', 'Rosemary Bosco', 'olga.batz@example.com', '$2y$10$.dOBzsYkqugMrDAKnywZp.bs8HUIoArtoDfzILm7eXiflBsWldXwy', 20, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'KXhW1Z2UCh', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(20, 'Rafael', 'Keeley Hahn', 'dwehner@example.org', '$2y$10$ZRuXqcp2Uk5KLG.mmorjROOyerHlqpuwSKX3AFNcQUs7z02qj0WfK', 5, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'BnyTi6gCJX', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(21, 'Clint', 'Solon Legros', 'mthiel@example.org', '$2y$10$TLDa68zq0m8cJEQxDUV09eh5jmBu77gCd9IAg1ljJtVLhiDt/ain2', 21, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'edDBX8bF6E', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(22, 'Corbin', 'Jose Connelly', 'gleichner.titus@example.net', '$2y$10$xASwrlU0DSHBbhYstaggjuaTQ2oCV4fsI2U284lY00lAjky3r2V9S', 15, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'j77pZmadB3', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(23, 'Briana', 'Ms. Ayana Heaney', 'adell.gibson@example.net', '$2y$10$8lq7ykJTmJWX21IED22.ZO4H0qANVnyw08gmoNQLXFnwWYeX3bxP6', 12, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'Ed13IrOKPU', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(24, 'Jarrod', 'Jada Becker', 'prosacco.kaitlin@example.net', '$2y$10$EGwNSeDC.WQJtp6qWSy0POYiP1fAAv4bhxyKl6uUdbGozVqji6crS', 49, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'KYnKJbCIru', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(25, 'Josefa', 'Jed Paucek IV', 'easton.jerde@example.net', '$2y$10$e8VEhCX0VAdBFJy.3tHajOT5u497Q/Ax/57n9alNP263OeWikiM4e', 8, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', '8TDpOLEhyO', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(26, 'Faye', 'Alena D\'Amore V', 'loy.larson@example.com', '$2y$10$3LqMvFcIhOlJQw9tdmVCheLtxBVBVXkICj9z80goHHwDrHU3kP72a', 47, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'IyrjFLFwJj', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(27, 'Aurelio', 'Miss Christa Hamill Jr.', 'lakin.shania@example.org', '$2y$10$qVJ9oV9S98Fi4PMJ6s4h0.nATspQUlgrByez8a9i0KGndsvsLTL1O', 5, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'vPcGWbosfG', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(28, 'Lon', 'Kristoffer Runolfsson', 'cfritsch@example.org', '$2y$10$Vqr6CapQ.sD76.nbQa4.iuKoMyWaVRjniRl4DwVMkto1ocPm4fWbi', 40, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'HZMZEG3ljY', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(29, 'Edythe', 'Dr. Ilene Greenfelder V', 'bridie.yost@example.org', '$2y$10$N5QWbksXNzoynnVQSqBpg.47Y/EZ4Tje.voECoyPjDAywaSyhUelS', 36, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'Wu2f5YK2HW', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(30, 'D\'angelo', 'Nathaniel Dicki', 'teagan92@example.net', '$2y$10$q8dCM2IRu8o.z1Zv.lJCguUSw9u0HdKsWEsuELPxwpGbu8lBA9oBW', 43, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'lXqNVD5ehp', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(31, 'Clemmie', 'Domenic Jacobi', 'jailyn88@example.com', '$2y$10$v.cCnRKlN28Uxe3MmjTyl..UYTeW9HcEqsAGvk1sb9zWpZhEG.9Je', 16, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'MFW7I3p7KQ', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(32, 'Maria', 'George Stiedemann', 'rschaden@example.org', '$2y$10$R4Srb8y/NhJS1.KVclUGv.jflzj5Js/87mqQLmq.rG8RG9FJzoaGm', 6, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'qmlEZ4nyB3', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(33, 'Garett', 'Ms. Janae Bartell', 'austyn.damore@example.com', '$2y$10$vdRTyKfqVQRzDv8dmyrjOO8QOZvwa0EjalGLLypIZ7q7XEtVy64lu', 49, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'qpDC1Yuj2g', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(34, 'Makayla', 'Kian Mayert', 'chelsea80@example.org', '$2y$10$kyQl0f53QYi8LS/Gh/Hk5.wRcJubI0zA7Mj9v5yXp.McGRz/9UF4G', 33, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'KQ4JUWDALV', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(35, 'Aletha', 'Mr. Toni Howe', 'juanita83@example.net', '$2y$10$AJVq4BovbBotjb7plU55HecQdwGUHhQWyCy8kPBm.SzccwZJJR8m.', 37, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'X3vxhz4akK', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(36, 'Seamus', 'Daphney Hayes', 'turner.kyla@example.org', '$2y$10$0hwN9Wnl27WZkiYUCLPuZuuM1abt8rpxL/a8j0H6YGCQyJw82uEHe', 19, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'isRnwZWo8F', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(37, 'Amira', 'Jordy Schowalter', 'chelsie.king@example.net', '$2y$10$6AjLBScskySyADBtWk5md.PhCo1unEAJ1hd/bpdlMtn6pUoXEO.wa', 37, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'A9y9iItou1', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(38, 'Rosalee', 'Ebba Nienow', 'jbeier@example.net', '$2y$10$n.kR.xs9O3kyqgH79QfNNuHuoGxA13X581NK1PPRvLupDfKHhGSjS', 5, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', '4VcYtc1hZz', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(39, 'Deron', 'Ruth Stoltenberg I', 'odessa18@example.net', '$2y$10$VkcPFGfWIpx8ZFliYDHeLuJqLHtUWr7cwNkCkntrIuXv5auhHxFVC', 4, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'tx7N2exaEz', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(40, 'Daphnee', 'Dr. River Zieme II', 'ecollier@example.net', '$2y$10$XSfoKLNwWtduc72oR/mqPOMwZ3.5yQ4dQzcDcQ5ECeHKHiukHLumW', 47, 'U', 0, 0, 0, 0, '2025-11-29 09:07:54', 'AILtl8lnQv', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(41, 'Tyrique', 'Prof. Otto Welch', 'erica.jones@example.net', '$2y$10$ZUmDU9eQajAnshH2l7hf/.dv8L.5TwbJn0iMmuIsOphM/4K1AgtcC', 48, 'U', 0, 0, 0, 0, '2025-11-29 09:07:55', 'CAvqfzcElD', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(42, 'Marian', 'Alexandre Cronin', 'dora.jaskolski@example.com', '$2y$10$Dn/OeS./MeRYP78xcYsiKu0ilmURhIFhaGkdzwg.EhD68KOs6E2CG', 23, 'U', 0, 0, 0, 0, '2025-11-29 09:07:55', 'A37lvYh5Ug', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(43, 'Charlie', 'Weston Tromp', 'oklein@example.org', '$2y$10$CgrhyxpXaTp8CinX6YmQD.fE9kn1WmtZ6z6p4Zi87MUVcSq3UGauu', 38, 'U', 0, 0, 0, 0, '2025-11-29 09:07:55', 'XlbJY8wE49', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(44, 'Brandyn', 'Mrs. Lauretta Muller', 'ywelch@example.net', '$2y$10$QND/rMV7i4n4Pdic/BXBN.0F0GQ6duAiV1VNmcorev4mJGmFqi0N.', 39, 'U', 0, 0, 0, 0, '2025-11-29 09:07:55', 'TBZvgO2CQg', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(45, 'Monserrate', 'Tania Block', 'ellis44@example.com', '$2y$10$spC8TD2vgG1BaPLUnOBvj.YMqCUUBzn4ez9NyCTw6sj8bhqW/Ca1y', 7, 'U', 0, 0, 0, 0, '2025-11-29 09:07:55', '5APYK19QZV', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(46, 'Vernie', 'Mara Bogan', 'trevor.kreiger@example.net', '$2y$10$88aYPHJBbzyjAFIAFdidcuQGaV0gum.LWd4IoGgWFZisXUbRjFhl6', 44, 'U', 0, 0, 0, 0, '2025-11-29 09:07:55', 'Zft3DbZMoM', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(47, 'Johnathan', 'Damien Volkman', 'ezekiel10@example.org', '$2y$10$x7KKYFjwPZ4OH60uAk8PceTrTU99B4hRYTqwOO89CKrNzDyYdEAoi', 31, 'U', 0, 0, 0, 0, '2025-11-29 09:07:55', 'ZcEvTuh6U6', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(48, 'Holly', 'Prof. Merl Champlin', 'charley21@example.com', '$2y$10$fON7dZgNja2a2FXSrPWNSuEl.1jwIl64wsQ3eNVmP3.O1zEBa0wDC', 4, 'U', 0, 0, 0, 0, '2025-11-29 09:07:55', '4fKF0F30Ry', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(49, 'Ebony', 'Prof. Gunner Schuster', 'max95@example.net', '$2y$10$Qm3KVJz9TtAOd8BAAbD4WemPoBTsEwXrXu.N3wKK8CfKVWxtd1dgK', 13, 'U', 0, 0, 0, 0, '2025-11-29 09:07:55', 'kO7SzdwdDw', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(50, 'Theo', 'Dr. Rahsaan Ratke', 'alan46@example.net', '$2y$10$Rt63RcN.fwQI9BgxCBpgg.loe.MaRd1KyV38UU.KUOojVSAB43l3O', 3, 'U', 0, 0, 0, 0, '2025-11-29 09:07:55', 'BDnZOKihtA', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(51, 'Administrador', 'Administrador', 'admin@admin.com', '$2y$10$WsOi13Cz1bTR3H/coy4bSOecHGCUjtCbuQ0FAcQmgH1jNDbKR.37q', 41, 'A', 1, 1, 0, 0, '2025-11-29 09:07:55', 'WhivDO7FWkglAZWUCImdwIsbibmVV1t0WdDAJQhqtyNmiMaiYKH4zji0lFRc', '2025-11-29 09:07:55', '2025-11-29 09:07:55'),
(52, 'Flavio', 'García', 'flagn3@gmail.com', '$2y$10$7iI.w4oKNTkALe4xRjNy0exh9sIBbijxfB1/AbPhT4ffwcQ3zCsbG', 6, 'U', 1, 1, 0, 0, '2025-11-29 09:23:05', NULL, '2025-11-29 09:22:11', '2025-11-29 09:23:30');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_family_id_foreign` (`family_id`);

--
-- Indices de la tabla `bank_entities`
--
ALTER TABLE `bank_entities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_del_term_id_foreign` (`del_term_id`),
  ADD KEY `companies_transport_id_foreign` (`transport_id`),
  ADD KEY `companies_payment_term_id_foreign` (`payment_term_id`),
  ADD KEY `companies_bank_entity_id_foreign` (`bank_entity_id`),
  ADD KEY `companies_discount_id_foreign` (`discount_id`);

--
-- Indices de la tabla `contains_art_invlines`
--
ALTER TABLE `contains_art_invlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contains_art_invlines_article_id_foreign` (`article_id`),
  ADD KEY `contains_art_invlines_invoice_line_id_foreign` (`invoice_line_id`);

--
-- Indices de la tabla `contain_art_delivlines`
--
ALTER TABLE `contain_art_delivlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contain_art_delivlines_article_id_foreign` (`article_id`),
  ADD KEY `contain_art_delivlines_delivery_lines_id_foreign` (`delivery_lines_id`);

--
-- Indices de la tabla `contain_art_orderlines`
--
ALTER TABLE `contain_art_orderlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contain_art_orderlines_article_id_foreign` (`article_id`),
  ADD KEY `contain_art_orderlines_order_line_id_foreign` (`order_line_id`);

--
-- Indices de la tabla `delivery_note`
--
ALTER TABLE `delivery_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_note_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `delivery_note_lines`
--
ALTER TABLE `delivery_note_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_note_lines_delivery_note_id_foreign` (`delivery_note_id`),
  ADD KEY `delivery_note_lines_order_line_id_foreign` (`order_line_id`);

--
-- Indices de la tabla `delivery_terms`
--
ALTER TABLE `delivery_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_delivery_note_id_foreign` (`delivery_note_id`);

--
-- Indices de la tabla `invoice_lines`
--
ALTER TABLE `invoice_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_lines_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_lines_delivery_lines_id_foreign` (`delivery_lines_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_company_id_foreign` (`company_id`);

--
-- Indices de la tabla `order_lines`
--
ALTER TABLE `order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_lines_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_article_id_foreign` (`article_id`),
  ADD KEY `products_company_id_foreign` (`company_id`),
  ADD KEY `products_family_id_foreign` (`family_id`);

--
-- Indices de la tabla `transports`
--
ALTER TABLE `transports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_company_id_foreign` (`company_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `bank_entities`
--
ALTER TABLE `bank_entities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `contains_art_invlines`
--
ALTER TABLE `contains_art_invlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contain_art_delivlines`
--
ALTER TABLE `contain_art_delivlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contain_art_orderlines`
--
ALTER TABLE `contain_art_orderlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `delivery_note`
--
ALTER TABLE `delivery_note`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `delivery_note_lines`
--
ALTER TABLE `delivery_note_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `delivery_terms`
--
ALTER TABLE `delivery_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `discount`
--
ALTER TABLE `discount`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `families`
--
ALTER TABLE `families`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `invoice_lines`
--
ALTER TABLE `invoice_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_lines`
--
ALTER TABLE `order_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transports`
--
ALTER TABLE `transports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `families` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_bank_entity_id_foreign` FOREIGN KEY (`bank_entity_id`) REFERENCES `bank_entities` (`id`),
  ADD CONSTRAINT `companies_del_term_id_foreign` FOREIGN KEY (`del_term_id`) REFERENCES `delivery_terms` (`id`),
  ADD CONSTRAINT `companies_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`),
  ADD CONSTRAINT `companies_payment_term_id_foreign` FOREIGN KEY (`payment_term_id`) REFERENCES `payment_terms` (`id`),
  ADD CONSTRAINT `companies_transport_id_foreign` FOREIGN KEY (`transport_id`) REFERENCES `transports` (`id`);

--
-- Filtros para la tabla `contains_art_invlines`
--
ALTER TABLE `contains_art_invlines`
  ADD CONSTRAINT `contains_art_invlines_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contains_art_invlines_invoice_line_id_foreign` FOREIGN KEY (`invoice_line_id`) REFERENCES `invoice_lines` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `contain_art_delivlines`
--
ALTER TABLE `contain_art_delivlines`
  ADD CONSTRAINT `contain_art_delivlines_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contain_art_delivlines_delivery_lines_id_foreign` FOREIGN KEY (`delivery_lines_id`) REFERENCES `delivery_note_lines` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `contain_art_orderlines`
--
ALTER TABLE `contain_art_orderlines`
  ADD CONSTRAINT `contain_art_orderlines_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contain_art_orderlines_order_line_id_foreign` FOREIGN KEY (`order_line_id`) REFERENCES `order_lines` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `delivery_note`
--
ALTER TABLE `delivery_note`
  ADD CONSTRAINT `delivery_note_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `delivery_note_lines`
--
ALTER TABLE `delivery_note_lines`
  ADD CONSTRAINT `delivery_note_lines_delivery_note_id_foreign` FOREIGN KEY (`delivery_note_id`) REFERENCES `delivery_note` (`id`),
  ADD CONSTRAINT `delivery_note_lines_order_line_id_foreign` FOREIGN KEY (`order_line_id`) REFERENCES `order_lines` (`id`);

--
-- Filtros para la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_delivery_note_id_foreign` FOREIGN KEY (`delivery_note_id`) REFERENCES `delivery_note` (`id`);

--
-- Filtros para la tabla `invoice_lines`
--
ALTER TABLE `invoice_lines`
  ADD CONSTRAINT `invoice_lines_delivery_lines_id_foreign` FOREIGN KEY (`delivery_lines_id`) REFERENCES `delivery_note_lines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_lines_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Filtros para la tabla `order_lines`
--
ALTER TABLE `order_lines`
  ADD CONSTRAINT `order_lines_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `products_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `products_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `families` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
