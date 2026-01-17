-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-01-2026 a las 03:02:34
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
(1, 'Pintura', 'Bote de pintura blanca', 15, 18, 'Blanco', 5.00, 'nº3', 7, 0, '2026-01-16 17:43:35', '2026-01-16 17:43:35'),
(2, 'Rodillo', 'Rodillo pequeño', 5, 7, 'Azul', 0.25, '10 cm', 1, 0, '2026-01-16 17:44:29', '2026-01-16 17:44:29'),
(3, 'Baldosa', 'Baldosa mediana', 2, 5, 'Verde', 1.00, '15 cm x 25 cm', 13, 0, '2026-01-16 17:45:10', '2026-01-16 17:45:10'),
(4, 'Pintura', 'Bote de pintura ocre', 2, 8, 'Ocre', 1.00, '5 cm x 0.25 cm', 7, 0, '2026-01-16 17:45:50', '2026-01-16 17:45:50'),
(5, 'Prueba', 'Prueba', 2, 17, 'Azul', 1.00, '60 cm x 2 cm', 17, 1, '2026-01-16 17:46:31', '2026-01-16 17:46:36');

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
(1, 'Mr. Grayce Leffler I', 'EZMUrI4e0G2JhSgXf9oIRuT', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(2, 'Miss Lexie Sauer', 'EFhhCQzR83FJLQWVbAz2cM3', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(3, 'Wilburn Kshlerin', 'xiXyY4HmZTM8VSIpu7Lvw16', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(4, 'Anne Jacobi Sr.', 'hcJ5MY9dLzLJcy7V2aDevO1', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(5, 'Mrs. Annetta Kris MD', 'MGYCDiD8paVDrmcmD0oJokT', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(6, 'Fleta Cremin PhD', 'yzGCURZhnyejbDtjKB8Zo3q', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(7, 'Prof. Bethany Corwin DDS', 'pm3IXjhnUuEaPQXP5nbafH0', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(8, 'Dewayne Purdy', '3Xk6auvmkZvao8nFG5dx2dh', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(9, 'Dr. Sammy Bergnaum', 'DVFhlg4iYDp4WAIeB4NseSY', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(10, 'Brett Nolan', '34lphZBOgvS6rUyyVIXe9lw', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(11, 'Prof. Rachael McKenzie', 'K9vjDY6Q9NbVUDbrBR7Fcdu', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(12, 'Dr. Rudy Torphy', 'utsacEsIzAsVdkfPYPERkma', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(13, 'Wilson Champlin', '2nWXBbHMHlka5USoOMgKn3d', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(14, 'Aryanna Ruecker', 's7RvFA1cBccVTQZNApsf29N', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(15, 'Jany Bode Jr.', 'Dy212rumu3Dp6zAS9LL8eBg', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(16, 'Serena Roob', 'FZAXOx2v5sG2dZmksmwYD3t', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(17, 'Pasquale Friesen I', '5c9jK3SCVWpVXhEjuR8KqC1', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(18, 'Laisha Bogisich', '98BzSjEEslRrbECiFRbdgFC', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(19, 'Ms. Marguerite Zemlak', '6aTNepT8HdB9MZpXkVwvgP4', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(20, 'Maiya Waters', 'UIkEn6YXJifEWHdChjCUwlr', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(21, 'Desmond Collins', 'aTtZ7NLeU3XHXbZmDmJ2O9Y', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(22, 'Kasey Stehr', 'u99yi28QGQRRgFv6rxBy2Du', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(23, 'Shany Sporer', 'iMwUuT7evAtCrsLVO7vyAo9', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(24, 'Merle Haley I', 'b0IgcaAsyzOrrzbhEVCeFWY', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(25, 'Dr. Eliane Bogisich', 'LHTxIyFqUjsnT9R2lBzeYpn', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(26, 'Prof. Alva Lubowitz', 'C6zgTRn3FvVHAa1bwIxAEhe', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(27, 'Alexis Medhurst', '7j329vP2ngyC3jtCggq9hqh', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(28, 'Miss Adella Pollich', '753J4NhEvUCBbPLFSsXJfms', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(29, 'Mr. Macey Mertz V', '1jp6JBV2y9Z12U8gE4lDDOs', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(30, 'Leanna Dickinson', 'zL65D5WC1HLJcSih5fqu64w', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(31, 'Zena Hahn', 'NQ3uu3SvwJPhEZBoMz6g76M', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(32, 'Maximillia Abernathy', 'wssD9dp3wHnI0TTI39bziql', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(33, 'Mrs. Carmen Rice V', 'r7ENz1hQTQuiimHU7ieBgPd', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(34, 'Deshaun Haley', 'E1ZrbOFBF0jqAUzBreZ1qeJ', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(35, 'Jerry Skiles', 'WVrV9sRbMe4rawL1jtLe6Yx', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(36, 'Howell Medhurst', 'xVneFTQjktftx5ItcwmL3oC', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(37, 'Terrence Hilpert', 'GrXLuLLixG7wHAHVHhmqbpy', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(38, 'Cheyenne Feest', 'uCUcOi34hxrRnnbOdbHvfvC', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(39, 'Erica McLaughlin', 'x1nyNG11XiQTcbZHdKC0YA1', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(40, 'Prof. Jeramie Nikolaus Jr.', '8hJ9K7qcd7IUVw4CH91bzwZ', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(41, 'Dr. Evert Mosciski V', 'slBrNiAurGDnvsrShXPdwZL', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(42, 'Hilda Prosacco', 'kZ6zCcJHjah3AMeexIEnnBx', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(43, 'Winifred Lesch II', 'zJJmrAkMRK3KdNZwb3aG0LG', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(44, 'Dr. Johnny Daniel I', 'R3B9pSyeopbRAirpVyydgvv', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(45, 'Prof. Freeman Oberbrunner', 'NzPfUyBeY7mvF29VUarrwEd', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(46, 'Richard Keeling', 'BdFIa4MmGWykZDbLTwHAXMe', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(47, 'Hildegard Boyer', 'bWaP0yX3wxQB8JblHaDAaFt', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(48, 'Brianne Schmeler', 'Qi7SgJ9nNeJauQfyOguEQ9m', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(49, 'Lucio Bartell', '10abVUBDAmxR8W1fqxepB0M', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(50, 'Olga Homenick', '8tLu1Sfg5JICncRU4JlajWE', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02');

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
(1, 'Schultz, Bogisich and Homenick', '90899 Walter Rue Apt. 558', 'Alaynaland', 'I13543819', 'hills.lucas@hirthe.com', '740530832', 45, 8, 24, 8, 25, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(2, 'Streich LLC', '8215 Ofelia Brooks', 'Gailchester', 'K22045288', 'keebler.astrid@connelly.com', '222850695', 16, 41, 25, 30, 2, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(3, 'Moore, Cassin and D\'Amore', '552 Larson Pike', 'New Genemouth', 'A56121059', 'krystel.tromp@carroll.biz', '836745472', 11, 43, 23, 28, 34, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(4, 'Stoltenberg-Breitenberg', '3687 Grady Avenue Apt. 414', 'New Wardberg', 'I97340228', 'reuben.maggio@dietrich.org', '557716673', 33, 25, 48, 19, 21, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(5, 'Greenfelder-Quigley', '334 McCullough Valley Apt. 276', 'Aileenburgh', 'E81322580', 'royal.cruickshank@ziemann.com', '075042126', 9, 4, 7, 8, 49, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(6, 'Conn, Keebler and Stokes', '68105 Corkery Mews', 'Marysestad', 'B70950126', 'bashirian.isobel@barton.com', '879537358', 10, 38, 4, 18, 1, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(7, 'Wintheiser and Sons', '615 Modesto Spurs', 'Emmerichville', 'C57434482', 'tyshawn.lind@cummerata.net', '405812729', 12, 34, 23, 9, 50, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(8, 'Rohan LLC', '87315 Spinka Rapids Suite 222', 'Dorthahaven', 'M32525159', 'connor.windler@auer.net', '798354360', 5, 49, 4, 11, 14, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(9, 'Baumbach, Terry and Reichel', '187 Kunze Plain', 'West Cademouth', 'J03118234', 'pascale.oreilly@collier.com', '772492860', 36, 11, 42, 1, 33, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(10, 'Goldner-Hill', '4642 Sammy Course', 'Port Emery', 'T14937601', 'agulgowski@jerde.info', '762953144', 41, 22, 23, 34, 4, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(11, 'Smith, Zboncak and Stokes', '58625 Alfonso Squares Suite 808', 'Reneeburgh', 'K60078864', 'wgoodwin@grimes.com', '681657485', 21, 23, 11, 19, 35, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(12, 'Gerhold, Hartmann and Champlin', '3094 Nicholaus Views', 'Streichborough', 'Y30502116', 'clarson@schaefer.com', '732070207', 14, 31, 14, 42, 26, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(13, 'Smitham, Ullrich and Schmitt', '1518 Tierra Neck', 'New Jeremieburgh', 'H10599612', 'weber.jessika@bogisich.org', '780629896', 42, 18, 27, 41, 42, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(14, 'Huels-Jakubowski', '566 Felicity Island', 'East Walterton', 'W17806690', 'misty.howe@mante.com', '726806912', 39, 20, 2, 7, 15, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(15, 'Marquardt-Koss', '207 Norbert Stravenue Suite 937', 'New Mozellestad', 'T76496521', 'dock.block@harris.com', '724039845', 36, 2, 2, 46, 21, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(16, 'Cruickshank-Kub', '856 Norval Landing Apt. 846', 'Jerodview', 'A60514735', 'sabryna.christiansen@nicolas.com', '326210206', 15, 13, 21, 14, 25, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(17, 'Zemlak-Olson', '32313 Beer Forks Suite 261', 'Nolanfort', 'Y86832055', 'carlos.koepp@upton.com', '021579084', 9, 14, 42, 31, 7, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(18, 'Wilkinson-Roberts', '256 Evangeline Springs Apt. 533', 'South Nigelberg', 'K65673367', 'ebahringer@osinski.com', '885111901', 28, 21, 23, 18, 13, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(19, 'Bashirian PLC', '287 Margarete Manor', 'Croninstad', 'X44493817', 'titus.bauch@heidenreich.com', '560014505', 45, 3, 41, 24, 30, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(20, 'Dickinson, Bartell and Boyle', '1316 Camron Stravenue Apt. 899', 'Lake Hortense', 'P52211957', 'rbotsford@cartwright.com', '376747367', 44, 8, 12, 33, 4, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(21, 'Lind-Rempel', '64208 Domenick Port', 'North Beulahville', 'G89006219', 'pcarter@waelchi.biz', '439659944', 3, 36, 39, 47, 5, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(22, 'Daugherty Group', '107 Lebsack Spur', 'Lake Mike', 'T91530011', 'collins.fannie@rutherford.net', '695609555', 39, 1, 31, 16, 25, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(23, 'Kohler LLC', '5768 Alysa Valley', 'Jamalmouth', 'W44967223', 'albertha.kutch@hilpert.com', '987652304', 5, 3, 26, 25, 11, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(24, 'Moen, Nienow and Dickinson', '276 Brendon Mount Suite 890', 'Rasheedfurt', 'Z40708791', 'juliana47@wiegand.org', '849946552', 24, 45, 40, 16, 7, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(25, 'Toy-Sawayn', '51387 Quinn Garden', 'East Adele', 'H35245068', 'velma95@thompson.com', '990521207', 41, 21, 43, 36, 18, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(26, 'Feil, Nikolaus and Krajcik', '8323 Kiehn Station Apt. 976', 'North Federico', 'O87946088', 'dstiedemann@feest.com', '741371287', 4, 43, 46, 21, 5, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(27, 'Denesik, Spencer and Bradtke', '179 Laila Park', 'Burnicefurt', 'R69870616', 'haleigh76@schiller.com', '437806764', 3, 11, 23, 7, 37, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(28, 'McClure Group', '35786 Wiegand Islands Apt. 869', 'Micahton', 'P83079459', 'block.carol@koelpin.com', '366410364', 37, 41, 39, 3, 30, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(29, 'Haley-Baumbach', '483 Ayla Mountain Suite 619', 'Ziemannmouth', 'H65317455', 'danial.botsford@oconner.com', '021342652', 36, 14, 20, 12, 28, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(30, 'Abbott and Sons', '200 Willy Dale', 'Greenburgh', 'U30305803', 'rosalyn.bailey@rodriguez.biz', '312589456', 31, 18, 46, 49, 49, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(31, 'Krajcik, Howell and Crooks', '48448 Cole Expressway', 'Port Velva', 'S88217071', 'huel.cary@murphy.com', '175425221', 4, 34, 31, 4, 26, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(32, 'Cruickshank PLC', '33497 Alana Mill', 'Port Jedidiahborough', 'S24892568', 'rhianna.carroll@kutch.net', '212809481', 30, 2, 48, 49, 15, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(33, 'Quigley Ltd', '977 Ali Trail Apt. 689', 'Luefurt', 'S09702452', 'ebony.dibbert@hagenes.com', '995326357', 27, 11, 45, 46, 24, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(34, 'Collins, Olson and Wyman', '713 Winifred Meadow Suite 669', 'Reynoldsville', 'G69023257', 'aaliyah.jacobs@harvey.org', '371411375', 4, 1, 36, 39, 45, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(35, 'Legros, Hickle and Hermiston', '720 Percy Pike', 'Kinghaven', 'I67738346', 'sauer.grover@auer.biz', '951839693', 41, 10, 40, 10, 31, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(36, 'VonRueden-Spencer', '23181 Daron Islands', 'Chaunceyfort', 'K30439820', 'nakia.vandervort@wisoky.info', '512473996', 4, 2, 30, 44, 32, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(37, 'Hand-Bosco', '402 Ephraim Freeway', 'Ratkeburgh', 'I37770485', 'mara.reichert@barton.com', '128814903', 36, 46, 20, 7, 46, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(38, 'Sanford, Runolfsson and Ritchie', '741 Powlowski Shore Apt. 516', 'Harbertown', 'F04504944', 'hkulas@towne.com', '523924734', 36, 43, 21, 20, 32, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(39, 'Heaney, Moen and Larson', '290 Schuster Grove Apt. 124', 'West Margaretbury', 'I30287125', 'pagac.jermain@jaskolski.com', '548496433', 11, 22, 16, 12, 16, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(40, 'Lindgren-Becker', '8304 Rau Squares Apt. 656', 'Millerport', 'R08367948', 'evert.wolff@smith.com', '447890521', 36, 10, 15, 33, 32, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(41, 'Ziemann-Bauch', '5994 McDermott Ways Apt. 680', 'Abbottton', 'T67480756', 'delta98@dare.info', '131560681', 13, 50, 28, 34, 5, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(42, 'Russel, Witting and Huel', '115 Raymond Parkway Apt. 403', 'East Virgie', 'S45614369', 'ellie28@shields.org', '756929041', 33, 47, 27, 49, 41, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(43, 'Kerluke-Shields', '965 Abagail Common Suite 491', 'Lake Cory', 'W73360699', 'arjun52@gutmann.net', '391994514', 28, 3, 49, 24, 33, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(44, 'Marvin, Cronin and Hartmann', '399 Diego Cliff Suite 648', 'Kerlukemouth', 'Z70020960', 'heathcote.willa@pouros.com', '430370377', 17, 23, 22, 29, 37, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(45, 'Lesch-Gislason', '9441 Magnolia Garden Suite 259', 'Lake Shanelle', 'Y08867670', 'boyer.aisha@jacobi.org', '643470549', 7, 19, 48, 23, 30, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(46, 'Gorczany Ltd', '9580 McClure Ferry', 'Faheyfort', 'O65323597', 'marlen.harvey@douglas.info', '480605954', 34, 1, 50, 26, 9, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(47, 'Predovic Ltd', '5253 Rocky Turnpike', 'East Reba', 'X95617319', 'bosco.landen@gibson.com', '411274825', 25, 7, 6, 13, 1, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(48, 'Wisoky-Heidenreich', '99004 Amir Street', 'New Emmie', 'W03913706', 'aidan55@cormier.com', '513211128', 37, 37, 39, 10, 35, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(49, 'Hirthe, Rogahn and Renner', '44724 Jeanette Summit', 'South Reinhold', 'O59216206', 'nolan47@ruecker.net', '707052491', 3, 42, 17, 23, 19, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(50, 'Bailey and Sons', '67143 Adams Land', 'Port Kamrontown', 'L55696842', 'rogahn.kelley@kunde.info', '022321408', 47, 27, 18, 17, 8, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02');

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
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Cum deserunt ut iure suscipit numquam.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(2, 'Modi eaque facere quos esse animi.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(3, 'Ipsam sed non sequi harum commodi.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(4, 'Similique laboriosam numquam ea sunt.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(5, 'Nemo qui sapiente amet officia.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(6, 'Ipsam at aperiam voluptatem autem quia accusamus.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(7, 'Est debitis dolores ipsam sit esse labore.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(8, 'Dolor corrupti officiis debitis facere ut.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(9, 'Voluptas sequi enim quae maxime quasi.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(10, 'Eum aut quibusdam placeat dolores rem quia.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(11, 'Magnam tempora architecto velit sequi.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(12, 'Ex voluptatem consequatur alias molestiae quis.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(13, 'Temporibus facilis corrupti ipsa ut aut.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(14, 'Ullam dolore consequatur in sint voluptas.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(15, 'Autem ut qui consequatur nulla perspiciatis.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(16, 'Labore rem occaecati modi.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(17, 'Eum odio atque architecto cum vel quod voluptas.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(18, 'Magni quaerat similique et facere.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(19, 'Libero odio numquam ea impedit.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(20, 'Aut dolorum tempora omnis eos excepturi rerum.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(21, 'Dignissimos in reiciendis eligendi ut aut.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(22, 'Officiis ut sit nisi repellat corporis.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(23, 'Ut sed qui voluptas harum.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(24, 'Dolorem in et quaerat voluptatem et quis.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(25, 'Sunt facere id dolorem possimus dolore fugiat.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(26, 'Officia enim ea odio fugit quia quos.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(27, 'Voluptatem et non ut quo possimus nobis.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(28, 'Culpa vero doloremque aut necessitatibus.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(29, 'Ipsam omnis explicabo quibusdam ut.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(30, 'Ut vero ad est accusantium non.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(31, 'Aut laudantium velit est iusto nobis ex quia sed.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(32, 'Libero sunt similique expedita.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(33, 'Eius reprehenderit velit numquam voluptatem in.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(34, 'Aut molestiae labore corrupti eum et rerum.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(35, 'In corrupti voluptates ab quisquam illo.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(36, 'Velit modi natus adipisci ut nisi commodi ipsam.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(37, 'Ut esse atque officia odit.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(38, 'Eos sequi enim ea.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(39, 'Aut voluptatem earum molestias iste.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(40, 'Cum consequuntur facilis quia libero.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(41, 'In debitis saepe itaque dolor velit perspiciatis.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(42, 'Et accusantium deleniti quod omnis.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(43, 'Dolores vero minus et nihil reprehenderit.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(44, 'Ut velit est et et repellendus impedit.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(45, 'Voluptatem itaque eum pariatur qui.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(46, 'Ad perferendis quia et sed facere rerum.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(47, 'Optio ducimus et harum reiciendis ab minima.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(48, 'Vitae id at fugiat dolores.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(49, 'Quis eum itaque aut aliquid.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(50, 'Maiores repudiandae optio ad eum.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02');

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
(1, 'Ena Zulauf', 5222, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(2, 'Aiyana Murray', 4887, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(3, 'Ally Hauck', 9616, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(4, 'Ms. Makenzie Hane', 3113, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(5, 'Mr. Elmo Champlin IV', 6082, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(6, 'Elmo Lemke', 6688, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(7, 'Bud Swaniawski IV', 5414, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(8, 'Sammy Koss', 9635, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(9, 'Waylon Huels', 5721, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(10, 'Coy Carroll DDS', 171, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(11, 'Prof. Joshuah Koss', 6809, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(12, 'Rowan Hoppe II', 4553, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(13, 'Louisa Johnson', 8943, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(14, 'Dr. Valentine Kulas Sr.', 3724, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(15, 'Katelin Kirlin Jr.', 9030, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(16, 'Aurore Ward', 287, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(17, 'Rasheed Bartell', 9853, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(18, 'Lenore Dicki', 2171, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(19, 'Dustin Koch DVM', 7107, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(20, 'Brad Grady', 9997, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(21, 'Laron Hackett', 8022, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(22, 'Cynthia Gislason DVM', 1218, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(23, 'Maida Ebert', 6615, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(24, 'Joaquin Kassulke', 3276, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(25, 'Mr. Arnulfo Mayert', 9785, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(26, 'Mr. Gaston Kutch', 7241, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(27, 'Mrs. Cathy Koelpin', 5938, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(28, 'Brendan Veum', 7441, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(29, 'Ms. Marjorie Gibson Sr.', 552, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(30, 'Van Rau', 6549, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(31, 'Cortez Stracke Jr.', 3791, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(32, 'Mr. Camron Kunde DVM', 1705, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(33, 'Mr. Lucious Renner MD', 857, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(34, 'Miss Violet Gorczany II', 7737, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(35, 'Tillman Kovacek', 8624, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(36, 'Sammy Runte', 1661, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(37, 'Prof. Mckenna Bernhard', 6147, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(38, 'Nakia Hill II', 1116, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(39, 'Dr. Ray Oberbrunner Jr.', 1794, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(40, 'Clair Ziemann', 6578, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(41, 'Deborah Williamson', 7611, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(42, 'Dr. Lilly Blanda Jr.', 21, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(43, 'Lesly Mitchell', 3271, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(44, 'Mr. Josue West', 802, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(45, 'Ricky Daniel', 5515, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(46, 'Camylle Wiegand', 2591, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(47, 'Araceli Bernhard DVM', 3594, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(48, 'Mrs. Mae Ledner', 5727, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(49, 'Kirsten Connelly', 5311, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(50, 'Prof. Kendrick Hartmann PhD', 7794, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02');

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
(1, 'Voluptas est ex dolor nemo ratione.', 2932653601, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(2, 'Deserunt aut ea velit voluptate fugit.', 3659164908, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(3, 'Nihil alias repudiandae quas iusto iure iusto.', 1393706066, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(4, 'Ea quia natus sint.', 9665815967, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(5, 'Ipsa molestiae ad magnam molestias.', 6941545876, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(6, 'Repellat voluptatem velit ut magni.', 7972737119, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(7, 'Dolorum ea provident ipsum alias omnis dolore.', 6249580100, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(8, 'Accusamus blanditiis culpa natus quia cum.', 6865541486, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(9, 'Ut esse et quia voluptatibus iure.', 9344018071, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(10, 'Non rerum a officiis cumque maxime.', 6418074861, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(11, 'Beatae voluptatem vel quae repudiandae quod.', 8193098632, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(12, 'Nemo natus minima velit labore aut ratione.', 1798190874, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(13, 'Pariatur cumque sed aut.', 7924640848, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(14, 'Et possimus sed nulla id eius.', 2767126203, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(15, 'Suscipit nemo nihil explicabo et quia amet.', 5553802120, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(16, 'Aperiam tenetur harum esse est.', 3734561638, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(17, 'Et molestiae odit quia.', 2749528032, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(18, 'Id iure qui adipisci beatae facilis dignissimos.', 3380825855, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(19, 'Ipsum minima pariatur cumque magnam et cum.', 6236530050, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(20, 'Expedita molestiae sed qui eos nesciunt.', 1062477874, 0, '2026-01-16 17:35:05', '2026-01-16 17:35:05');

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
(1, '2012_10_23_111325_create_transports_table', 1),
(2, '2012_10_23_111453_create_payment_terms_table', 1),
(3, '2012_10_23_111514_create_bank_entities_table', 1),
(4, '2012_10_23_111531_create_delivery_terms_table', 1),
(5, '2012_10_23_153856_create_discount_table', 1),
(6, '2013_10_11_153709_create_companies_table', 1),
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2020_10_26_103535_create_orders_table', 1),
(13, '2025_10_23_160159_create_delivery_note_table', 1),
(14, '2025_10_24_103812_create_invoices_table', 1),
(15, '2025_10_25_095040_create_order_lines_table', 1),
(16, '2025_10_26_094944_create_delivery_note_lines_table', 1),
(17, '2025_10_26_104137_create_invoice_lines_table', 1),
(18, '2025_10_26_150832_create_families_table', 1),
(19, '2025_10_26_151356_create_articles_table', 1),
(20, '2025_10_27_095141_create_products_table', 1),
(21, '2025_10_27_115506_create_contains_art_invlines_table', 1),
(22, '2025_10_27_115932_create_contain_art_delivlines_table', 1),
(23, '2025_10_27_152124_create_contain_art_orderlines_table', 1);

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
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Nobis autem ipsa ea est officia sit.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(2, 'Distinctio maiores odit facilis nihil.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(3, 'Vero aut ab ipsum odit expedita dolores.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(4, 'Et non tenetur et.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(5, 'Temporibus nostrum porro voluptas sit.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(6, 'Sunt commodi est sequi expedita.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(7, 'Natus iste suscipit dolore voluptatem.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(8, 'Eveniet a suscipit quisquam culpa voluptas.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(9, 'Ut rerum porro iste.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(10, 'Ad voluptas velit omnis facere.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(11, 'Quam deserunt non sapiente vitae.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(12, 'Aut ut ipsa veritatis sunt.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(13, 'Veritatis dolore vel sunt.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(14, 'Deserunt aut nobis recusandae recusandae.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(15, 'Temporibus eos a quo libero quis inventore quia.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(16, 'Pariatur maiores et eum voluptatem doloremque.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(17, 'Dolorem et eum dicta sint deleniti nihil.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(18, 'Ut aut consequatur accusamus ut.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(19, 'Earum architecto voluptatem sapiente commodi.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(20, 'Et sed et qui et voluptatibus eius.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(21, 'Distinctio sunt consequatur cumque rerum cum.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(22, 'Nostrum eos ipsa sed iure ad labore.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(23, 'Expedita inventore beatae id voluptatibus fuga.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(24, 'Nihil veritatis exercitationem sit ratione.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(25, 'Dicta officiis aspernatur consequatur facilis.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(26, 'Quas beatae placeat est rerum maiores autem.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(27, 'Qui quod in vitae nesciunt.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(28, 'Voluptas aut molestias ratione.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(29, 'Sit libero magni quas et molestiae.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(30, 'Voluptatem hic dolor ad dolorem beatae culpa.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(31, 'Vitae ea sed quam culpa et et officia.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(32, 'At excepturi qui aut omnis minus sequi.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(33, 'Deleniti ipsum quia omnis sit.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(34, 'Laudantium eveniet aut maiores consequatur.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(35, 'Consectetur itaque harum dolorum cumque.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(36, 'Est quia optio excepturi ullam.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(37, 'Corporis porro natus quo iusto.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(38, 'Totam excepturi vel autem accusantium.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(39, 'Non quae delectus explicabo et omnis ducimus.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(40, 'Qui dolor molestiae ipsum quam optio et.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(41, 'Et adipisci nemo qui tenetur aut est delectus.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(42, 'Cum et rerum iste ea.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(43, 'Vero rerum quo sit omnis dolor sed incidunt.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(44, 'Natus facere error et est ad ut qui laborum.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(45, 'Amet quisquam eligendi omnis cupiditate.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(46, 'Quia qui maiores voluptate magnam.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(47, 'Eos recusandae nemo rerum est officia.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(48, 'In corrupti magnam aut pariatur nam mollitia.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(49, 'Quis commodi sunt quos.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(50, 'Vel ipsam autem quis vel a ducimus.', 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02');

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
  `stock` int(11) NOT NULL,
  `color_name` varchar(20) NOT NULL,
  `weight` double(8,2) NOT NULL,
  `size` varchar(10) NOT NULL,
  `family_id` bigint(20) UNSIGNED NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `article_id`, `company_id`, `price`, `stock`, `color_name`, `weight`, `size`, `family_id`, `deleted`, `created_at`, `updated_at`) VALUES
(2, 3, 44, 149.00, 16, 'Maroon', 21.00, '17', 13, 0, '2026-01-16 19:26:17', '2026-01-16 19:26:17'),
(3, 3, 21, 28.00, 69, 'SteelBlue', 25.00, '33', 16, 0, '2026-01-16 19:26:17', '2026-01-16 19:26:17'),
(4, 2, 50, 122.00, 62, 'LightGoldenRodYellow', 16.00, '14', 7, 0, '2026-01-16 19:26:17', '2026-01-16 19:26:17'),
(5, 5, 13, 70.00, 79, 'Gainsboro', 11.00, '10', 11, 0, '2026-01-16 19:26:17', '2026-01-16 19:26:17'),
(6, 1, 6, 63.00, 84, 'LightGray', 37.00, '26', 15, 0, '2026-01-16 19:26:17', '2026-01-16 19:26:17'),
(7, 1, 35, 140.00, 44, 'LemonChiffon', 10.00, '23', 15, 0, '2026-01-16 19:26:17', '2026-01-16 19:26:17'),
(8, 1, 8, 91.00, 83, 'LightSteelBlue', 25.00, '29', 5, 0, '2026-01-16 19:26:17', '2026-01-16 19:26:17'),
(9, 4, 34, 68.00, 73, 'MediumSeaGreen', 35.00, '39', 4, 0, '2026-01-16 19:26:17', '2026-01-16 19:26:17'),
(10, 5, 14, 141.00, 84, 'SeaShell', 20.00, '31', 11, 0, '2026-01-16 19:26:17', '2026-01-16 19:26:17'),
(11, 1, 36, 21.00, 35, 'Coral', 37.00, '37', 6, 0, '2026-01-16 19:26:17', '2026-01-16 19:26:17'),
(12, 1, 1, 15.00, 93, 'AntiqueWhite', 13.00, '1', 10, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(13, 2, 42, 7.00, 40, 'Violet', 3.00, '14', 11, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(14, 5, 31, 13.00, 91, 'RoyalBlue', 4.00, '5', 19, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(15, 1, 20, 5.00, 76, 'Linen', 7.00, '9', 4, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(16, 2, 4, 10.00, 7, 'DarkSalmon', 12.00, '7', 18, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(17, 4, 28, 13.00, 89, 'Salmon', 9.00, '5', 4, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(18, 5, 30, 6.00, 69, 'DarkGreen', 1.00, '10', 8, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(19, 3, 3, 15.00, 66, 'BlueViolet', 20.00, '14', 11, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(20, 1, 17, 5.00, 3, 'Orange', 19.00, '13', 16, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(21, 4, 14, 12.00, 31, 'MediumSlateBlue', 3.00, '9', 5, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(22, 1, 25, 9.00, 53, 'WhiteSmoke', 4.00, '10', 18, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(23, 3, 32, 11.00, 58, 'AliceBlue', 17.00, '14', 16, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(24, 1, 19, 8.00, 78, 'Red', 2.00, '10', 19, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(25, 2, 40, 6.00, 36, 'DarkRed', 14.00, '15', 6, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(26, 1, 38, 6.00, 60, 'DarkSlateBlue', 19.00, '1', 11, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(27, 1, 22, 6.00, 60, 'WhiteSmoke', 13.00, '9', 16, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(28, 1, 42, 5.00, 69, 'CornflowerBlue', 3.00, '9', 17, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(29, 1, 41, 6.00, 42, 'DarkCyan', 20.00, '2', 16, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(30, 5, 2, 10.00, 18, 'BurlyWood', 2.00, '2', 2, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(31, 1, 30, 12.00, 41, 'AntiqueWhite', 4.00, '3', 3, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(32, 4, 18, 11.00, 57, 'CadetBlue', 9.00, '4', 18, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(33, 5, 44, 14.00, 77, 'Navy', 19.00, '9', 6, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(34, 1, 26, 11.00, 69, 'DarkKhaki', 10.00, '9', 1, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(35, 2, 8, 7.00, 38, 'Crimson', 19.00, '1', 17, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(36, 3, 12, 14.00, 54, 'DarkGreen', 13.00, '8', 11, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(37, 4, 2, 13.00, 93, 'LightBlue', 18.00, '14', 16, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(38, 4, 20, 11.00, 8, 'Orange', 13.00, '9', 14, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(39, 4, 42, 14.00, 7, 'LightSeaGreen', 17.00, '15', 17, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(40, 5, 37, 8.00, 94, 'White', 4.00, '7', 10, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(41, 1, 42, 15.00, 34, 'LightPink', 2.00, '14', 7, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(42, 3, 49, 8.00, 43, 'Blue', 17.00, '12', 16, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(43, 2, 11, 14.00, 44, 'SeaShell', 4.00, '5', 14, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(44, 3, 48, 13.00, 76, 'Yellow', 7.00, '15', 20, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(45, 1, 3, 6.00, 4, 'Crimson', 7.00, '4', 14, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(46, 3, 17, 7.00, 94, 'MediumPurple', 11.00, '14', 13, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(47, 5, 50, 12.00, 31, 'DarkCyan', 16.00, '9', 10, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(48, 2, 5, 15.00, 23, 'Wheat', 12.00, '3', 18, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(49, 5, 46, 14.00, 12, 'DarkSlateBlue', 13.00, '15', 4, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(50, 2, 32, 14.00, 80, 'Plum', 15.00, '3', 6, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(51, 3, 8, 11.00, 42, 'AntiqueWhite', 19.00, '12', 8, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(52, 4, 48, 8.00, 23, 'Teal', 8.00, '4', 1, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(53, 3, 49, 13.00, 92, 'DimGrey', 13.00, '2', 10, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(54, 2, 35, 5.00, 38, 'DarkViolet', 7.00, '2', 10, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(55, 1, 13, 6.00, 42, 'LightGoldenRodYellow', 5.00, '6', 7, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(56, 4, 38, 13.00, 64, 'Bisque', 16.00, '12', 16, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(57, 5, 34, 8.00, 36, 'Wheat', 9.00, '15', 17, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(58, 1, 47, 15.00, 71, 'SkyBlue', 6.00, '10', 5, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(59, 4, 6, 12.00, 91, 'LightYellow', 11.00, '4', 7, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(60, 5, 39, 12.00, 88, 'MediumSpringGreen', 5.00, '4', 16, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(61, 1, 38, 5.00, 85, 'DarkGreen', 20.00, '7', 5, 0, '2026-01-17 00:25:18', '2026-01-17 00:25:18'),
(62, 3, 22, 7.00, 4, 'Maroon', 8.00, '9', 7, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(63, 1, 24, 9.00, 55, 'OrangeRed', 8.00, '1', 13, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(64, 5, 9, 10.00, 85, 'MediumPurple', 4.00, '2', 2, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(65, 4, 50, 11.00, 27, 'Snow', 18.00, '9', 1, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(66, 4, 13, 9.00, 70, 'DimGray', 17.00, '8', 15, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(67, 1, 42, 12.00, 80, 'Tomato', 14.00, '8', 17, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(68, 2, 23, 15.00, 52, 'Peru', 1.00, '2', 18, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(69, 5, 49, 10.00, 100, 'Sienna', 13.00, '14', 13, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(70, 4, 9, 9.00, 19, 'Bisque', 1.00, '3', 7, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(71, 4, 8, 15.00, 77, 'MediumVioletRed', 8.00, '1', 18, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(72, 4, 24, 5.00, 76, 'Ivory', 13.00, '3', 10, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(73, 5, 19, 8.00, 3, 'DodgerBlue', 20.00, '11', 4, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(74, 2, 47, 11.00, 66, 'Gold', 6.00, '8', 7, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(75, 5, 40, 14.00, 64, 'NavajoWhite', 11.00, '15', 13, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(76, 2, 4, 9.00, 35, 'Thistle', 14.00, '3', 17, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(77, 1, 13, 9.00, 70, 'Snow', 5.00, '15', 20, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(78, 3, 33, 8.00, 74, 'PaleGreen', 2.00, '3', 13, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(79, 4, 46, 8.00, 68, 'WhiteSmoke', 15.00, '3', 9, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(80, 1, 26, 10.00, 3, 'PapayaWhip', 18.00, '12', 10, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(81, 3, 32, 11.00, 89, 'MediumSeaGreen', 9.00, '7', 8, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(82, 3, 39, 7.00, 84, 'Moccasin', 8.00, '6', 11, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(83, 4, 18, 6.00, 12, 'DarkTurquoise', 6.00, '2', 3, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(84, 5, 46, 5.00, 57, 'Wheat', 2.00, '6', 14, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(85, 2, 12, 8.00, 30, 'Gray', 8.00, '6', 4, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(86, 4, 15, 14.00, 68, 'Bisque', 10.00, '2', 11, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(87, 1, 12, 11.00, 63, 'Aqua', 7.00, '7', 10, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(88, 3, 37, 12.00, 68, 'MediumBlue', 10.00, '1', 11, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(89, 2, 35, 14.00, 1, 'Orange', 17.00, '2', 11, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(90, 3, 9, 6.00, 28, 'GoldenRod', 20.00, '2', 9, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(91, 3, 28, 6.00, 45, 'DarkSalmon', 11.00, '14', 15, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(92, 5, 15, 5.00, 52, 'DarkRed', 20.00, '5', 20, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(93, 3, 50, 9.00, 4, 'Snow', 7.00, '12', 19, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(94, 1, 46, 14.00, 84, 'DimGray', 17.00, '8', 16, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(95, 3, 10, 15.00, 24, 'DarkSlateBlue', 18.00, '10', 6, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(96, 3, 47, 6.00, 18, 'SlateGray', 5.00, '8', 13, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(97, 2, 36, 13.00, 31, 'Plum', 13.00, '15', 18, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(98, 1, 20, 9.00, 8, 'Tomato', 6.00, '14', 11, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(99, 2, 30, 7.00, 26, 'LightCyan', 6.00, '1', 4, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(100, 5, 6, 10.00, 92, 'WhiteSmoke', 9.00, '8', 5, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(101, 3, 25, 10.00, 36, 'CadetBlue', 15.00, '11', 20, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(102, 3, 14, 10.00, 74, 'PaleTurquoise', 20.00, '14', 1, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(103, 5, 7, 9.00, 14, 'SeaGreen', 9.00, '15', 18, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(104, 3, 19, 6.00, 2, 'OliveDrab', 14.00, '10', 14, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(105, 1, 46, 10.00, 17, 'DimGray', 3.00, '5', 15, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(106, 5, 42, 12.00, 72, 'YellowGreen', 17.00, '8', 3, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(107, 3, 27, 6.00, 30, 'Tomato', 8.00, '9', 9, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(108, 2, 41, 11.00, 45, 'SeaGreen', 16.00, '13', 14, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(109, 4, 26, 10.00, 70, 'GoldenRod', 14.00, '5', 16, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(110, 1, 24, 9.00, 38, 'DarkGreen', 14.00, '2', 6, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(111, 4, 29, 10.00, 51, 'MediumOrchid', 18.00, '6', 7, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(112, 5, 10, 13.00, 20, 'Plum', 9.00, '5', 6, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(113, 4, 35, 14.00, 16, 'CadetBlue', 15.00, '13', 16, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(114, 1, 30, 15.00, 53, 'LimeGreen', 15.00, '8', 5, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(115, 4, 46, 6.00, 95, 'DarkBlue', 7.00, '14', 1, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(116, 5, 38, 14.00, 62, 'DarkBlue', 17.00, '15', 14, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(117, 3, 38, 13.00, 33, 'Ivory', 14.00, '2', 1, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(118, 2, 19, 15.00, 7, 'ForestGreen', 20.00, '12', 16, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(119, 5, 37, 8.00, 75, 'LightGreen', 15.00, '12', 1, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(120, 5, 26, 8.00, 67, 'Magenta', 11.00, '15', 1, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(121, 5, 28, 13.00, 33, 'PaleVioletRed', 6.00, '6', 2, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(122, 5, 21, 13.00, 28, 'Purple', 9.00, '9', 10, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(123, 5, 26, 7.00, 73, 'RosyBrown', 7.00, '9', 6, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(124, 2, 45, 7.00, 4, 'AntiqueWhite', 19.00, '7', 16, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(125, 5, 8, 11.00, 20, 'Lime', 13.00, '1', 13, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(126, 3, 3, 6.00, 1, 'Salmon', 15.00, '3', 14, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(127, 1, 43, 8.00, 2, 'Lavender', 8.00, '5', 12, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(128, 1, 1, 6.00, 37, 'AntiqueWhite', 8.00, '6', 17, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(129, 4, 38, 15.00, 77, 'Ivory', 12.00, '7', 2, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(130, 5, 44, 10.00, 75, 'MediumSlateBlue', 15.00, '12', 19, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(131, 4, 30, 7.00, 1, 'PaleGreen', 14.00, '13', 18, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(132, 3, 38, 12.00, 45, 'LightCyan', 12.00, '14', 20, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(133, 3, 14, 6.00, 75, 'Green', 18.00, '13', 7, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(134, 5, 12, 12.00, 1, 'SeaShell', 18.00, '15', 7, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(135, 4, 41, 13.00, 12, 'DeepSkyBlue', 17.00, '5', 1, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(136, 1, 17, 8.00, 29, 'DarkGreen', 5.00, '10', 17, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(137, 5, 1, 5.00, 42, 'MediumPurple', 13.00, '1', 5, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(138, 5, 21, 6.00, 80, 'Ivory', 12.00, '6', 3, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(139, 3, 5, 5.00, 62, 'MidnightBlue', 17.00, '9', 4, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(140, 5, 49, 5.00, 47, 'PowderBlue', 4.00, '10', 6, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(141, 2, 11, 9.00, 1, 'LawnGreen', 14.00, '7', 19, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(142, 2, 18, 9.00, 41, 'CornflowerBlue', 6.00, '5', 15, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(143, 5, 10, 6.00, 33, 'MidnightBlue', 10.00, '2', 12, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(144, 3, 5, 10.00, 93, 'DarkOrchid', 9.00, '1', 4, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(145, 1, 21, 9.00, 65, 'RoyalBlue', 17.00, '4', 8, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(146, 1, 35, 6.00, 42, 'WhiteSmoke', 12.00, '2', 6, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(147, 5, 37, 6.00, 73, 'Azure', 18.00, '5', 4, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(148, 2, 11, 11.00, 91, 'LightGray', 3.00, '9', 12, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(149, 5, 18, 14.00, 31, 'DimGrey', 7.00, '8', 12, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(150, 3, 8, 15.00, 32, 'Chocolate', 2.00, '15', 5, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(151, 2, 37, 15.00, 65, 'LightGray', 14.00, '8', 6, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(152, 4, 16, 13.00, 1, 'Fuchsia', 9.00, '3', 16, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(153, 1, 46, 8.00, 78, 'Tomato', 20.00, '15', 14, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(154, 1, 20, 7.00, 47, 'MediumBlue', 5.00, '12', 18, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(155, 5, 18, 15.00, 88, 'PaleVioletRed', 9.00, '3', 12, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(156, 3, 14, 10.00, 76, 'HoneyDew', 17.00, '11', 8, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(157, 4, 9, 6.00, 69, 'DarkSalmon', 15.00, '4', 7, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(158, 5, 15, 14.00, 53, 'Aquamarine', 20.00, '8', 19, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(159, 1, 37, 12.00, 99, 'PapayaWhip', 10.00, '4', 3, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(160, 4, 29, 6.00, 46, 'SkyBlue', 6.00, '1', 8, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49'),
(161, 1, 8, 6.00, 97, 'Gray', 11.00, '10', 3, 0, '2026-01-17 00:57:49', '2026-01-17 00:57:49');

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
(1, 10, 32, 3934, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(2, 88, 8172, 391, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(3, 93, 7991, 6163, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(4, 4, 1407, 3441, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(5, 34, 1139, 4537, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(6, 55, 9273, 7168, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(7, 90, 1322, 3648, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(8, 70, 4364, 6566, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(9, 69, 879, 1085, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(10, 61, 7529, 6569, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(11, 90, 5616, 8123, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(12, 49, 3268, 9740, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(13, 64, 6532, 6366, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(14, 36, 1367, 8908, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(15, 16, 9913, 7158, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(16, 96, 8913, 6740, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(17, 86, 5616, 8674, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(18, 6, 4221, 2353, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(19, 60, 4230, 9160, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(20, 28, 7358, 1177, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(21, 73, 7888, 3920, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(22, 78, 9765, 7053, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(23, 98, 7355, 2276, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(24, 27, 492, 1052, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(25, 21, 7501, 3142, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(26, 2, 4803, 3236, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(27, 67, 6937, 9752, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(28, 4, 4515, 8582, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(29, 77, 4962, 7930, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(30, 37, 3535, 5856, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(31, 20, 2588, 9998, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(32, 67, 8872, 3714, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(33, 51, 822, 5454, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(34, 3, 5453, 1948, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(35, 23, 7046, 663, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(36, 100, 8636, 7626, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(37, 73, 2637, 7120, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(38, 86, 956, 6420, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(39, 77, 5090, 8016, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(40, 98, 9374, 4432, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(41, 59, 4522, 7771, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(42, 63, 2543, 3063, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(43, 64, 7814, 985, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(44, 32, 8052, 6124, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(45, 86, 3411, 4605, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(46, 33, 283, 8338, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(47, 43, 2356, 9690, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(48, 16, 4968, 1919, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(49, 80, 8641, 6083, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02'),
(50, 75, 5176, 3836, 0, '2026-01-16 17:35:02', '2026-01-16 17:35:02');

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
(1, 'Triston', 'Stephan Hudson', 'abdiel.oberbrunner@example.org', '$2y$10$BLRjdcXT1UNSwopqw3KBw.9wMYD8.3Yjo2Mo0mMCan0wPyV9CYxam', 49, 'U', 0, 0, 0, 0, '2026-01-16 17:35:02', 'TrqN1gjcYv', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(2, 'Elwin', 'Loren Cummerata', 'fheller@example.net', '$2y$10$K/sJHqCC5M1aA1H7PbbvSOhuopQJNsSrMMqLxtSI1IdoDK5IHF11K', 41, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'rhL8wuPrey', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(3, 'Arnaldo', 'Golda Spinka', 'cquitzon@example.net', '$2y$10$Cy5.dHlN8VNd0gLS0HPUUuTjRpH0G0DzBEFz4PjCuuc3TqIvkQnDe', 12, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', '8OloHcCfSh', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(4, 'Josephine', 'Jeremie Wiza', 'janae78@example.org', '$2y$10$1pi4nhrlbz2H.xkcSXTFjuM0Xf70NRloX3jkh4MbqlUjCYCQY48NK', 3, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'yivn1EMEr3', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(5, 'Jayda', 'Roxanne Williamson', 'carroll.arnoldo@example.org', '$2y$10$65N6nsvZFZn7750b69XmgeVdYp5wWRtxOYPRcqzs4VSJJibtzoIiS', 10, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'fyiE7vjqLE', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(6, 'Aric', 'Darryl McGlynn', 'cecil09@example.org', '$2y$10$pdExgWUJXohWr23Dpyy3huQ7yB5za78l.PGWSk7p/kSLFzpEhW6JG', 27, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'N6d7dXZm2h', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(7, 'Emmanuelle', 'Miss Alana Howell', 'haag.jack@example.org', '$2y$10$2kjL9TLVukh4rpnzGtN7w.KCsQp4WjnHFEvEoCc2k7bS6n6gYpG2C', 33, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'QO5DrrxfEa', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(8, 'Lauriane', 'Jan Streich Sr.', 'zschimmel@example.net', '$2y$10$LCXuhi4mFQ7Bl2su9KOLUOaPsOiKsYN0Mkw.NNjzFd8NnHwSyf/Vi', 48, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'w4wO1OtXHM', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(9, 'Jana', 'Tristin Block', 'mkerluke@example.org', '$2y$10$WGxmVuS8Bp5mOAO61UmzT.FBt4GuyIgi6RK.dWRTWoTbD6jUutAR2', 39, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', '4AU9aud1Hq', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(10, 'Monserrat', 'Dr. Presley Streich', 'mckayla01@example.com', '$2y$10$qiOpRe5axlt4Z/SdTbvODOgmnxR4hNmuawUj2N5HmR72sfqzOOKFG', 29, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'GIL0l3ljaC', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(11, 'Jordane', 'Dr. Kevon Nitzsche DDS', 'bernadine15@example.net', '$2y$10$ycfqUcUhovA0e1asPmWML.28BiqOunsKaUrKSPdenRUnrjMAT91J2', 7, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'Vzf5uqQxDs', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(12, 'Eino', 'Mr. Jalen Metz I', 'caleigh62@example.com', '$2y$10$vTYcWIB.hU2d0AhjZB9x3u5bdN6OxUBzpTlCW7M.n2WWmFMvesNvS', 4, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'nJOZ0MEeQ1', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(13, 'Nyah', 'Maureen Davis', 'mante.kallie@example.org', '$2y$10$oZVViWls5IFJWRQviqzzQ.7SmtvfElfEcsrhiRW0ZDrgKWKvw0jFm', 16, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'uV2QoYdt2c', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(14, 'Abdiel', 'Dr. Lilliana Medhurst', 'uriel.jenkins@example.com', '$2y$10$H6wm9.gzcVz7OXgx7Rpjte8EObH6RGuSuYpUMli18yz4Xvf3E6Ski', 20, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', '6YGK7xIznE', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(15, 'Dorthy', 'Megane Jakubowski', 'bo36@example.org', '$2y$10$AzZhC0KiDxXMTs0flIe20u1EeVvoi.8rxQM5xBMhYfSujt2Rn.zWW', 38, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', '9tpLbeBhyt', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(16, 'Emelie', 'Rex Ziemann', 'virgie28@example.org', '$2y$10$666cUp2zH14LfLkYLDu2XOKgwcdVPCLhB6Yip6Gcuu18n/H9.frMS', 21, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'bIpbTMXp7G', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(17, 'Eloisa', 'Otha Waelchi PhD', 'wdooley@example.org', '$2y$10$qZe.xHmlkp0s/.mCqZkF5uy.6Yflo8Hmi.CJK3eRSuJQYcfdnuRV2', 39, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'QCSZ4Og1pg', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(18, 'Jade', 'Aracely Bauch', 'domenic17@example.net', '$2y$10$dbD7trJh1OU7mvMxU28TAOoemvROlyMTPRD/jleKjvF.LWv6yUPg.', 15, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'iWP31lAVOC', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(19, 'Leora', 'Rylee Parker', 'flesch@example.net', '$2y$10$k.i8Vjemfk0PvXkqPLE2HuWCcdtdtm5LzIwBsFvixqAL33MoEdiAG', 31, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', '9nvHj9sAam', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(20, 'Roma', 'Santa Stehr', 'devyn.reynolds@example.net', '$2y$10$Jx5UKv8M.AiK5ZGTXslkSersdMKntx3M7Rqcua8tcgUBsCDiOl/HG', 22, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'h8KEUK48Eh', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(21, 'Kamryn', 'Kellen Zemlak II', 'zack.lowe@example.org', '$2y$10$fxuNsVfHthPIsaBvv7ZZsuGC.XuZLh0uSjJ20bODEhyvqAfcNJN8G', 11, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'I8gu6ipDNO', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(22, 'Maynard', 'Coleman Mertz', 'ghaag@example.org', '$2y$10$cd1DJxpPA6EPmgOaE14kCuyFMw2SB5/tCvOgJrUzrLxYzT3RfrTv.', 46, 'U', 0, 0, 0, 0, '2026-01-16 17:35:03', 'pQyBmVoNPW', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(23, 'Hector', 'Lenora Daugherty', 'cordia30@example.com', '$2y$10$Utzy2459wVjKvoPtSTcywu4xosPOcoN02GwvB.ru723bu4A0Oj.T2', 42, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', '9NYzLr1Kfb', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(24, 'Laverna', 'Mr. Felton Pollich', 'olson.ian@example.com', '$2y$10$U5DtvlNrAtd0uEORxhMd1.xWM/DcFJV2U8LDTNMwn3PCEClaxXh/y', 12, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'Jycd0DMCFi', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(25, 'Patsy', 'Aleen Fay', 'mollie.donnelly@example.net', '$2y$10$H9q/PXGqxGFEurtzJdj2i.HdVr1C1/xtcA1SYsWrRCcVaaJYJu2Iy', 45, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'EsQY1Va8fA', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(26, 'Keven', 'Felipe Rippin', 'oadams@example.com', '$2y$10$GrsEgmweI4eAe1oAENvEJuKjHHI7ttyvL.HWxePkm5q8RK/R4jrRK', 6, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'MzfEHeiYEo', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(27, 'Maximillian', 'Everett Walsh', 'vida.marvin@example.net', '$2y$10$Mx7bqOz7U6VgbQOsaV7dGuSVhVlkxmRqI1i4JAjrFa0ZMwNe3wZmS', 10, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'z6oquggo5X', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(28, 'Catharine', 'Raheem Kovacek', 'howe.harmon@example.com', '$2y$10$FgoQ4sBk1KaltjSL9WwbseZjzNV16a8/l1qRnAbWJciYyPxtvMt/u', 44, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'KyFEtLxCmB', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(29, 'Alison', 'Larissa Runte', 'felicita.larkin@example.com', '$2y$10$fKKMOD0PTU/A0P0xkwF3iuTKAjpoWGNZj4CIJz/WM8kVQuqadxYaq', 32, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'YxdPYEDqnO', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(30, 'Ephraim', 'Prof. Estefania Lindgren DDS', 'shayna53@example.com', '$2y$10$P8q5CMImlMxOvAxjIy/2T.pNclDeDqdJaZ3ziJ6ArMeShtlK06QFu', 21, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', '28NeWWaZl1', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(31, 'Dejah', 'Ford O\'Hara', 'turner84@example.org', '$2y$10$GHpnpmEjUQkBEM/KjgKVOuUSl2LeVpCb3or7opAvzphjjue5unaqi', 13, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'bEetuItOnu', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(32, 'Jarred', 'Ephraim Corwin', 'jones.sydni@example.net', '$2y$10$ifUCh9A4XW55QRhX1sd.Au70zMIOS5CDVqUDjhzEyTLuWeWMau8j.', 26, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', '3GNMttCM8r', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(33, 'Mara', 'Mr. Estevan Parisian', 'tsipes@example.net', '$2y$10$a/3PWujDL4h5BUjLwkm44ueNvtEirFs0UUdnw5SDPPyrB7iv7HZ7y', 15, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'C8bbQCJ1Jm', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(34, 'Annette', 'Everette Cummerata MD', 'ciara.deckow@example.com', '$2y$10$Cv/qozlS9OOg01bnvreXCOpecghTKuavzjKpSDnOixfuobIar7ehC', 37, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'WlEC2ZEZ42', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(35, 'Addison', 'Eda Robel', 'lue.greenholt@example.net', '$2y$10$ZeH8X/Z4bUqN.5Zs9gdWPehY9ZKkrvUu0Awsi7PVre0Uu6d5.nFha', 39, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', '3ETBv1ao3W', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(36, 'Grant', 'Ryan Leffler', 'wzemlak@example.net', '$2y$10$t4OT15XNxa56Fd68jR318uODhMHaCcmB/DheAosvdXbO5ixO3cuZe', 5, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'oFH4PHqJSZ', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(37, 'Abel', 'Fae Stanton', 'alfredo.wisoky@example.org', '$2y$10$..61kZwgzG/oswjtt3QhW.klZYlLYOVrUALvcrlgUGkw236jx0E9G', 28, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'oHPYVZstwU', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(38, 'Wilmer', 'Mrs. Brenna Vandervort IV', 'beer.vernie@example.org', '$2y$10$z7N5dMwLnE7dqoweXnutRuOex1ug.n7Ejoo4QTK5a7qCXejwwQYFm', 10, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', '2tFcDTxaBU', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(39, 'Hope', 'Savannah Legros', 'moen.carmelo@example.com', '$2y$10$wwWdmHxN8XGX7gAhmZj98.eYpJMlo7DINin3TsXtNSrLFfwXZkEuq', 22, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'XQci9mtrbF', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(40, 'Rosalia', 'Jamarcus Volkman', 'bailee02@example.com', '$2y$10$sP3YbAIcW3Nz54ETFE37VuB2ZoR4jwXLgAtF2.xzXctsmn6RxUN2y', 13, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'XccUdlHySY', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(41, 'Mabelle', 'Miss Meaghan Wilderman III', 'zluettgen@example.com', '$2y$10$PDpYUc/vC4oCYUe9RL8SjuJKrtTXjE8p5q0M0Q2ayrJ7eLBnWtgjK', 24, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', '8YphPYchus', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(42, 'Chesley', 'Thora Shanahan', 'cgraham@example.net', '$2y$10$shz.iaTUH9dptFHA4veDcumv/X0IIOiM8jYgMkumLEt.0XO45VbB.', 47, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'mH90QsZkwG', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(43, 'Wilfred', 'Amie Pfannerstill', 'camilla.oconnell@example.com', '$2y$10$tLboc3ZzgP4sOMs8GwSq3.SDU8Ghef6FIUXCZHUPHtYBwv8.J0OlC', 36, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'cKk96XliOm', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(44, 'Marvin', 'Miss Sadye Greenholt IV', 'lwalker@example.net', '$2y$10$F8b.VkpYYHNR4GNT2VMsCOlIz6BROI6cvdSiGdopxGJJkENeSSwTa', 47, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', '8aFtUU9Btx', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(45, 'Cale', 'Prof. Melvina Upton DDS', 'koelpin.clinton@example.com', '$2y$10$X7ExPBoEXTrItk7c4YqUfu5rEOQip6uZ/dyOidZ4WHExyNL4wrRy2', 44, 'U', 0, 0, 0, 0, '2026-01-16 17:35:04', 'F0DcX497rM', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(46, 'Roosevelt', 'Prof. Chadd Abbott III', 'schamberger.keyon@example.com', '$2y$10$krtbz1z2ZBHvTQdTpcNjd.6FF3071WRe9mYzklU7W7lJ3sps8nAZe', 8, 'U', 0, 0, 0, 0, '2026-01-16 17:35:05', 'YOIJk66thd', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(47, 'Prudence', 'Kylee Sauer', 'marietta.kub@example.org', '$2y$10$vIWfaJt9X.xxzvotA8KK/uHKoQm3Grbg0XidtQfclu2GrLIOUgQKe', 40, 'U', 0, 0, 0, 0, '2026-01-16 17:35:05', 'QjbOn5L3RL', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(48, 'Tanya', 'Jocelyn Yundt', 'kara.feest@example.com', '$2y$10$sLtZHW/ZzVNnR6vhg3TR2e9NWdCZYiBW0TS0rCZUKmV3tWQ9hW/pS', 28, 'U', 0, 0, 0, 0, '2026-01-16 17:35:05', 'a1Z70Tc2Oz', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(49, 'Christophe', 'Ms. Yasmeen Schuster PhD', 'flagn3@hotmail.com', '$2y$10$oXcTtsWSwCytHHldrO79COrILCqE4gl.dQEgyWpMC1uehWa2T4mvO', 40, 'U', 0, 0, 1, 0, '2026-01-16 17:35:05', 'giXh6vUiI5', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(50, 'Taya', 'Caroline Kessler', 'garcia.nofla23@cadiz.salesianos.edu', '$2y$10$UrLp4byKxMzAVTSIFxh2ueEsaUj.pKNBFIl8AliKEWj/UXO0PQbQ6', 20, 'U', 0, 0, 1, 0, '2026-01-16 17:35:05', 'TePTA3oFWw', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(51, 'Administrador', 'Administrador', 'admin@admin.com', '$2y$10$WQWfVvXVIhmjQCV6ZvzrMeR0a3tjPWZX2YjcmPw.b4EHYGGs/jC82', 38, 'A', 1, 1, 0, 0, '2026-01-16 17:35:05', 'fzgwTwZpRncA4WLZKuOlcRvIGPvGRH9R3kNxtLQpkRCgxbmukHsWgGaqlEZ2', '2026-01-16 17:35:05', '2026-01-16 17:35:05'),
(52, 'Flavio', 'García', 'flagn3@gmail.com', '$2y$10$j.cj8Dcfi71Z.eeKRYdSaevylbg9MYCyXZryR8PYyB0fTL1IH2due', 8, 'U', 1, 1, 1, 0, '2026-01-16 17:38:36', NULL, '2026-01-16 17:37:56', '2026-01-16 17:38:54');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

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
