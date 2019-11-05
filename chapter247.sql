-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2019 at 06:06 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chapter247`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `only_owned` tinyint(1) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `name`, `title`, `entity_id`, `entity_type`, `only_owned`, `options`, `scope`, `created_at`, `updated_at`) VALUES
(1, '*', 'All abilities', NULL, '*', 0, NULL, NULL, '2019-11-04 09:08:16', '2019-11-04 09:08:16'),
(2, 'manage-users', 'Manage users', NULL, NULL, 0, NULL, NULL, '2019-11-04 09:21:56', '2019-11-04 09:21:56'),
(3, 'manage-shops', 'Manage shops', NULL, NULL, 0, NULL, NULL, '2019-11-04 09:22:29', '2019-11-04 09:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restricted_to_id` int(10) UNSIGNED DEFAULT NULL,
  `restricted_to_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `role_id`, `entity_id`, `entity_type`, `restricted_to_id`, `restricted_to_type`, `scope`) VALUES
(1, 1, 1, 'App\\User', NULL, NULL, NULL),
(2, 2, 2, 'App\\User', NULL, NULL, NULL),
(3, 3, 3, 'App\\User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Letitia Hegmann', 'koch.santiago@example.org', '2019-11-04 09:44:43', '2019-11-04 09:44:43'),
(2, 'Bernice Beer DDS', 'ramon03@example.org', '2019-11-04 09:44:43', '2019-11-04 09:44:43'),
(3, 'Rosalyn Gutkowski', 'leuschke.letitia@example.com', '2019-11-04 09:44:43', '2019-11-04 09:44:43'),
(4, 'Bradly Rice', 'tavares.renner@example.com', '2019-11-04 09:44:43', '2019-11-04 09:44:43'),
(5, 'Beth Wisozk', 'raynor.olin@example.net', '2019-11-04 09:44:43', '2019-11-04 09:44:43'),
(6, 'Dr. Abbigail Olson', 'price.emie@example.com', '2019-11-04 09:44:43', '2019-11-04 09:44:43'),
(7, 'Ben Senger', 'darwin.miller@example.net', '2019-11-04 09:44:43', '2019-11-04 09:44:43'),
(8, 'Ford Kuhn', 'schuyler.wyman@example.org', '2019-11-04 09:44:43', '2019-11-04 09:44:43'),
(9, 'Sandra Kunde PhD', 'champlin.jadon@example.net', '2019-11-04 09:44:43', '2019-11-04 09:44:43'),
(10, 'Mozell Crona', 'whauck@example.org', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(11, 'Ricky Kling', 'lfriesen@example.com', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(12, 'Julie Wyman', 'ubecker@example.com', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(13, 'Betty McDermott', 'pfeffer.stewart@example.com', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(14, 'Tianna Zboncak', 'louie87@example.com', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(15, 'Ms. Natasha O''Hara', 'wolff.zena@example.org', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(16, 'Mr. Connor Waelchi MD', 'kitty.blick@example.com', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(17, 'Dr. Constance Carter Jr.', 'maggio.minerva@example.com', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(18, 'Jammie Donnelly', 'kathleen.oconner@example.com', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(19, 'Alvena Mayer', 'ashtyn52@example.org', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(20, 'Keaton Balistreri', 'spencer.bert@example.org', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(21, 'Ms. Eleanore Ruecker III', 'jeanette.kiehn@example.net', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(22, 'Dorcas Wintheiser', 'elfrieda53@example.org', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(23, 'Margarete Weber', 'bud05@example.org', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(24, 'Prof. Marilie Ernser', 'laila55@example.com', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(25, 'Modesta Doyle', 'ford76@example.com', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(26, 'Guido Satterfield', 'sadye.beahan@example.net', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(27, 'Lowell Stroman', 'daisy.mills@example.com', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(28, 'Ms. Emely Reichel PhD', 'ucorkery@example.com', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(29, 'Rae Hoppe', 'boehm.emilio@example.com', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(30, 'Rosamond Grant', 'waino64@example.net', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(31, 'Ms. Josiane Denesik MD', 'purdy.hosea@example.net', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(32, 'Augusta Farrell', 'annamae.barrows@example.net', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(33, 'Mr. Darius Hayes', 'hailee77@example.org', '2019-11-04 09:44:44', '2019-11-04 09:44:44'),
(34, 'Juana Schmidt', 'violet.turner@example.org', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(35, 'Mr. Orlo Torp Sr.', 'jacobs.christop@example.net', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(36, 'Mr. Aaron Maggio PhD', 'howard21@example.com', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(37, 'Mrs. Agnes Purdy', 'gwilkinson@example.net', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(38, 'Prof. Martin Volkman V', 'egraham@example.com', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(39, 'Paul Prosacco', 'qdamore@example.net', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(40, 'Doris Barton', 'ankunding.oma@example.net', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(41, 'Mrs. Alanna Koelpin', 'vvonrueden@example.org', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(42, 'Ms. Sylvia Vandervort IV', 'rokon@example.net', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(43, 'Amos Stanton', 'bessie.shanahan@example.org', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(44, 'Elyssa Casper I', 'obie.hettinger@example.org', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(45, 'Cassandre McDermott', 'dmacejkovic@example.com', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(46, 'Prof. Damian Jenkins I', 'nikolaus.rowena@example.net', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(47, 'Willow White', 'nkutch@example.com', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(48, 'Abigale Erdman V', 'hilma.corkery@example.net', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(49, 'Savannah Steuber', 'vmckenzie@example.net', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(50, 'Tremayne Sawayn', 'dcrooks@example.net', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(51, 'Roma Kerluke III', 'xkovacek@example.net', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(52, 'Eriberto Franecki', 'alyson00@example.org', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(53, 'Cade McCullough', 'garrett.turner@example.org', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(54, 'Blaise Schoen', 'lavon63@example.org', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(55, 'Yvette Monahan', 'ttowne@example.com', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(56, 'Mr. Jennings Koelpin I', 'stehr.jarvis@example.net', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(57, 'Ava Marvin', 'xkuhic@example.org', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(58, 'Jaeden Kessler', 'lind.myrtice@example.com', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(59, 'Deron Johnston', 'qrogahn@example.net', '2019-11-04 09:44:45', '2019-11-04 09:44:45'),
(60, 'Aleen Crist', 'bergnaum.stephon@example.org', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(61, 'Dr. Alan Bergnaum PhD', 'donnie99@example.org', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(62, 'Johnnie Lemke', 'altenwerth.oliver@example.org', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(63, 'Dr. Erica Deckow', 'lorenza31@example.net', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(64, 'Ms. Eryn Douglas', 'denesik.rudy@example.com', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(65, 'Prof. Wilton Dietrich Jr.', 'xmann@example.com', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(66, 'Jennyfer Batz', 'cara67@example.com', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(67, 'Mrs. Mireya Senger', 'medhurst.sydni@example.net', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(68, 'Deshawn Sporer', 'everett60@example.org', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(69, 'Vicenta Parker', 'macy69@example.net', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(70, 'Mrs. Fay Abernathy PhD', 'white.juwan@example.org', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(71, 'Laisha Bergstrom', 'devante01@example.net', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(72, 'Mrs. Myrtice Friesen I', 'orrin.dare@example.com', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(73, 'Trace Conn', 'cjerde@example.net', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(74, 'Orville Bins', 'isabella24@example.com', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(75, 'Kameron Sporer', 'ruthe31@example.org', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(76, 'Prof. Aylin Gulgowski Jr.', 'lfeil@example.org', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(77, 'Prof. Lolita Bauch', 'bethel42@example.com', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(78, 'Rhett Cormier', 'reilly.jose@example.net', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(79, 'Prof. Kristoffer Gutmann III', 'leopoldo.hegmann@example.net', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(80, 'Dr. Marcelle Nikolaus', 'lilian57@example.org', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(81, 'Chase Thompson III', 'declan.bednar@example.com', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(82, 'Cathy Schaden', 'jena10@example.com', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(83, 'Grace Vandervort', 'leanne48@example.org', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(84, 'Lawrence Abernathy', 'keeling.eldridge@example.com', '2019-11-04 09:44:46', '2019-11-04 09:44:46'),
(85, 'Lulu Powlowski', 'concepcion13@example.org', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(86, 'Dandre Kautzer', 'anjali98@example.net', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(87, 'Dr. Lincoln Cruickshank', 'loy.schmeler@example.net', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(88, 'Alena Bins', 'tvonrueden@example.net', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(89, 'Camylle Donnelly', 'mackenzie99@example.com', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(90, 'Josiah Mueller II', 'kenya19@example.org', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(91, 'Mrs. Marisol Farrell', 'demario.braun@example.com', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(92, 'Tyra Russel', 'gyundt@example.org', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(93, 'Prof. Korbin Hegmann V', 'gregoria.ruecker@example.org', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(94, 'Edythe Quitzon', 'pebert@example.net', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(95, 'Ms. Leila Wiegand III', 'ottis.turcotte@example.net', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(96, 'Paxton Daniel', 'gennaro.corwin@example.org', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(97, 'Hubert Greenholt', 'lemke.lexi@example.org', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(98, 'Danielle Stiedemann', 'judah.ziemann@example.org', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(99, 'Prof. Eula Krajcik I', 'jodie.koepp@example.com', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(100, 'Ms. Pattie Jenkins IV', 'deshaun.erdman@example.com', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(101, 'Jerry Emard IV', 'shaniya.walsh@example.com', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(102, 'Myrl Murazik', 'asia.cartwright@example.net', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(103, 'Mrs. Glenna Jakubowski', 'ofelia.zulauf@example.com', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(104, 'Ms. Clemmie Rolfson', 'wanda67@example.org', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(105, 'Gail Zboncak', 'patience.hessel@example.org', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(106, 'Mrs. Aracely Wisoky DVM', 'julie64@example.com', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(107, 'Miss Lexie Langworth PhD', 'hauck.daija@example.net', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(108, 'Keshawn Schulist', 'tpagac@example.com', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(109, 'Michele Thiel', 'desmond.watsica@example.com', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(110, 'Chasity Gusikowski', 'darryl.bode@example.com', '2019-11-04 09:44:47', '2019-11-04 09:44:47'),
(111, 'Duane Marquardt', 'droob@example.org', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(112, 'Shaina Witting', 'irath@example.org', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(113, 'Darian Wolff', 'crawford.hoppe@example.com', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(114, 'Rodrick Halvorson', 'ronaldo.hegmann@example.net', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(115, 'Otha VonRueden IV', 'krajcik.malachi@example.com', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(116, 'Dax Bode PhD', 'wellington61@example.com', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(117, 'Prof. Bud Bruen IV', 'zion28@example.net', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(118, 'Ernest Kiehn', 'frami.candida@example.net', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(119, 'Robyn Beatty', 'eldora.hodkiewicz@example.net', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(120, 'Miss Mayra Cormier', 'mekhi86@example.org', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(121, 'Casimir Jenkins', 'ortiz.samanta@example.org', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(122, 'Dr. Trevor O''Kon DVM', 'hhodkiewicz@example.org', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(123, 'Molly Herman', 'elisa67@example.org', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(124, 'Pascale Blick', 'evan.hammes@example.org', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(125, 'Toney Baumbach', 'herman.jacky@example.net', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(126, 'Flavie Robel', 'bonnie08@example.net', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(127, 'Dr. Cletus Kuvalis', 'watsica.marguerite@example.net', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(128, 'Julius Hintz', 'marilie.feeney@example.net', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(129, 'Ms. Marta Sanford PhD', 'weber.mia@example.org', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(130, 'Otto Prosacco', 'melisa56@example.com', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(131, 'Hassie Eichmann', 'camylle.medhurst@example.com', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(132, 'Burnice Beahan', 'rosario97@example.org', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(133, 'Ms. Thalia Jacobs IV', 'darrell.hessel@example.com', '2019-11-04 09:44:48', '2019-11-04 09:44:48'),
(134, 'Mr. Newton Reinger PhD', 'marvin.vance@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(135, 'Beverly Pacocha', 'amina61@example.net', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(136, 'Ronaldo Leffler', 'mcclure.adolphus@example.org', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(137, 'Ms. Caterina Waters', 'jonathan42@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(138, 'Abbey Bernier V', 'bayer.kaelyn@example.net', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(139, 'Mrs. Lauriane Beer III', 'kevin58@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(140, 'Oceane Barrows', 'ubergnaum@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(141, 'Alexzander Pfeffer', 'loberbrunner@example.net', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(142, 'Mr. Colton Heidenreich', 'spagac@example.net', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(143, 'Reid Leuschke', 'akemmer@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(144, 'Haven Goldner DVM', 'quincy.cummings@example.net', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(145, 'Prof. Jody Kling PhD', 'sylvan39@example.org', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(146, 'Prof. Roger Halvorson II', 'constance.rolfson@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(147, 'Una Dibbert', 'stroman.sammy@example.org', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(148, 'Connie Wiza Jr.', 'watsica.jeffrey@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(149, 'Rowan Berge', 'maye.kub@example.org', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(150, 'Ned Ryan', 'iyundt@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(151, 'Garett Brakus', 'silas.metz@example.org', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(152, 'Eladio Bayer', 'feil.adolph@example.org', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(153, 'Domenica Grady', 'ijaskolski@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(154, 'Meghan Wyman', 'dimitri06@example.net', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(155, 'Prof. Dallas Nader MD', 'daugherty.marc@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(156, 'Henriette Waters', 'pfay@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(157, 'Antone McClure', 'general43@example.net', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(158, 'Shawna Wolff', 'jake66@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(159, 'Ms. Colleen Willms', 'torp.rosamond@example.com', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(160, 'Neal Veum', 'cole21@example.org', '2019-11-04 09:44:49', '2019-11-04 09:44:49'),
(161, 'Joyce Senger MD', 'powlowski.bernie@example.org', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(162, 'Dr. Chelsea Walker Sr.', 'abernathy.albin@example.net', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(163, 'Lynn Howell Sr.', 'ecollier@example.com', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(164, 'Johnnie Hartmann Sr.', 'lafayette39@example.com', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(165, 'Dr. Reed Rau', 'angelina23@example.com', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(166, 'Wilfrid Lueilwitz', 'grover.koch@example.org', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(167, 'Ms. Opal Koelpin', 'garland.ullrich@example.org', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(168, 'Reba Jakubowski', 'warren.kihn@example.com', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(169, 'Letha Metz', 'summer32@example.net', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(170, 'Patricia Collier Sr.', 'quentin11@example.com', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(171, 'Prof. Diamond Reichel I', 'alvera.turcotte@example.net', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(172, 'Ottis Braun', 'clare.streich@example.org', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(173, 'Lucinda Abernathy', 'jillian19@example.net', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(174, 'Edyth Hills', 'duane.lowe@example.org', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(175, 'Nellie Wilderman', 'john.kilback@example.com', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(176, 'Mr. Angel McLaughlin III', 'afeil@example.com', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(177, 'Darron Jacobi', 'angelica.hayes@example.com', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(178, 'Dora Beier', 'breitenberg.christophe@example.com', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(179, 'Daniella White', 'rhartmann@example.net', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(180, 'Ardella D''Amore', 'marcel.runolfsson@example.org', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(181, 'Terrence Wunsch', 'boyer.colby@example.org', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(182, 'Pasquale Collins', 'marcelle.casper@example.com', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(183, 'Alaina Brakus', 'zbogan@example.org', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(184, 'Megane Ritchie', 'lesley.rice@example.org', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(185, 'Prof. Alex Farrell', 'wolf.freda@example.com', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(186, 'Roxanne Collins', 'catalina.turner@example.net', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(187, 'Miss Katrine Skiles', 'miles.hermiston@example.com', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(188, 'Royal Grimes MD', 'amayer@example.org', '2019-11-04 09:44:50', '2019-11-04 09:44:50'),
(189, 'Agustina Kuhlman', 'zechariah.leffler@example.org', '2019-11-04 09:44:51', '2019-11-04 09:44:51'),
(190, 'Rodrigo Kirlin', 'jgreenholt@example.net', '2019-11-04 09:44:51', '2019-11-04 09:44:51'),
(191, 'Dr. Kaden Pouros', 'orn.brandon@example.org', '2019-11-04 09:44:51', '2019-11-04 09:44:51'),
(192, 'Sydni Ratke', 'kzieme@example.com', '2019-11-04 09:44:51', '2019-11-04 09:44:51'),
(193, 'Jamel Kemmer', 'nicholas.adams@example.org', '2019-11-04 09:44:51', '2019-11-04 09:44:51'),
(194, 'Nicklaus Ledner', 'kathleen74@example.com', '2019-11-04 09:44:51', '2019-11-04 09:44:51'),
(195, 'Norris Abernathy Jr.', 'rudy.prosacco@example.org', '2019-11-04 09:44:51', '2019-11-04 09:44:51'),
(196, 'Miss Ayana Boyle', 'friesen.ana@example.org', '2019-11-04 09:44:51', '2019-11-04 09:44:51'),
(197, 'Dr. Athena Kub', 'phuel@example.org', '2019-11-04 09:44:51', '2019-11-04 09:44:51'),
(198, 'Tina Harris', 'nya68@example.com', '2019-11-04 09:44:51', '2019-11-04 09:44:51'),
(199, 'Kathryne Green', 'ubaumbach@example.net', '2019-11-04 09:44:51', '2019-11-04 09:44:51'),
(200, 'Mrs. Aliya Anderson', 'allan19@example.net', '2019-11-04 09:44:51', '2019-11-04 09:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_03_142539_create_bouncer_tables', 2),
(4, '2019_11_03_144540_create_activity_log_table', 3),
(5, '2019_11_03_145719_create_customers_table', 4),
(6, '2019_11_03_145811_create_products_table', 4),
(8, '2019_11_03_145825_create_orders_table', 5),
(9, '2019_11_03_151455_create_order_items_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` bigint(20) NOT NULL,
  `total_amount` double NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_number`, `total_amount`, `status`, `created_at`, `updated_at`) VALUES
(13, 438, 4978, 'new', '2019-11-04 13:06:54', '2019-11-04 13:06:54'),
(14, 514677635, 8486, 'processed', '2019-11-04 13:06:54', '2019-11-04 13:06:54'),
(15, 9038977, 5745, 'new', '2019-11-04 13:06:54', '2019-11-04 13:06:54'),
(16, 1464462, 1513, 'new', '2019-11-04 13:06:54', '2019-11-04 13:06:54'),
(17, 342370164, 7214, 'processed', '2019-11-04 13:06:54', '2019-11-04 13:06:54'),
(18, 989789349, 3054, 'new', '2019-11-04 13:06:54', '2019-11-04 13:06:54'),
(19, 52228, 7721, 'new', '2019-11-04 13:06:54', '2019-11-04 13:06:54'),
(20, 310863, 3555, 'processed', '2019-11-04 13:06:54', '2019-11-04 13:06:54'),
(21, 8, 8832, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(22, 679, 3798, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(23, 4, 8811, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(24, 85046097, 4263, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(25, 5742727, 2460, 'new', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(26, 1, 7758, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(27, 3740817, 6960, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(28, 0, 6897, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(29, 6, 2241, 'new', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(30, 5330, 5249, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(31, 39, 3375, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(32, 426, 3118, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(33, 873, 8425, 'new', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(34, 88295, 7321, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(35, 44604381, 5280, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(36, 4242354, 7429, 'processed', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(37, 46210, 1902, 'new', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(38, 17497, 5324, 'new', '2019-11-04 13:06:55', '2019-11-04 13:06:55'),
(39, 61, 1385, 'processed', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(40, 5419575, 6884, 'new', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(41, 82389704, 1253, 'processed', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(42, 502985, 7729, 'new', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(43, 28, 4536, 'processed', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(44, 951392, 1184, 'new', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(45, 31080766, 2730, 'new', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(46, 87433, 8763, 'new', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(47, 210716930, 8320, 'processed', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(48, 194, 2691, 'processed', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(49, 32723, 1181, 'new', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(50, 78159, 2031, 'processed', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(51, 27, 6771, 'processed', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(52, 2060, 4154, 'processed', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(53, 707, 8365, 'new', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(54, 41663, 1729, 'processed', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(55, 7, 6845, 'new', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(56, 50230, 5852, 'new', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(57, 496345788, 8780, 'processed', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(58, 8074, 1605, 'new', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(59, 4583, 3331, 'new', '2019-11-04 13:06:56', '2019-11-04 13:06:56'),
(60, 31, 8328, 'new', '2019-11-04 13:06:57', '2019-11-04 13:06:57'),
(61, 0, 8238, 'new', '2019-11-04 13:06:57', '2019-11-04 13:06:57'),
(62, 696, 4216, 'new', '2019-11-04 13:06:57', '2019-11-04 13:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(204, 35, 123, 454, '2019-11-05 08:51:50', '2019-11-05 08:51:50'),
(205, 25, 119, 310, '2019-11-05 08:51:50', '2019-11-05 08:51:50'),
(207, 54, 171, 892, '2019-11-05 08:54:06', '2019-11-05 08:54:06'),
(208, 22, 141, 758, '2019-11-05 08:54:06', '2019-11-05 08:54:06'),
(209, 41, 138, 228, '2019-11-05 08:54:06', '2019-11-05 08:54:06'),
(210, 16, 193, 569, '2019-11-05 08:54:06', '2019-11-05 08:54:06'),
(211, 17, 176, 486, '2019-11-05 08:54:06', '2019-11-05 08:54:06'),
(212, 54, 165, 442, '2019-11-05 08:54:06', '2019-11-05 08:54:06'),
(213, 28, 107, 137, '2019-11-05 08:54:06', '2019-11-05 08:54:06'),
(214, 50, 158, 555, '2019-11-05 08:54:06', '2019-11-05 08:54:06'),
(215, 31, 112, 644, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(216, 25, 200, 308, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(217, 29, 163, 130, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(218, 56, 128, 517, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(219, 43, 188, 710, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(220, 49, 142, 741, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(221, 21, 102, 831, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(222, 20, 156, 273, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(223, 35, 187, 167, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(224, 18, 132, 464, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(225, 20, 131, 688, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(226, 28, 184, 136, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(227, 52, 127, 359, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(228, 39, 195, 130, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(229, 28, 148, 560, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(230, 58, 186, 718, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(231, 16, 119, 113, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(232, 61, 133, 38, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(233, 23, 173, 600, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(234, 42, 127, 499, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(235, 16, 137, 357, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(236, 14, 185, 273, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(237, 30, 193, 533, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(238, 51, 142, 557, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(239, 14, 107, 354, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(240, 50, 124, 427, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(241, 28, 157, 213, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(242, 16, 188, 522, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(243, 30, 184, 146, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(244, 49, 119, 375, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(245, 14, 105, 129, '2019-11-05 08:54:07', '2019-11-05 08:54:07'),
(246, 39, 151, 104, '2019-11-05 08:54:08', '2019-11-05 08:54:08'),
(247, 21, 172, 741, '2019-11-05 08:54:08', '2019-11-05 08:54:08'),
(248, 42, 188, 428, '2019-11-05 08:54:08', '2019-11-05 08:54:08'),
(249, 14, 147, 328, '2019-11-05 08:54:08', '2019-11-05 08:54:08'),
(250, 56, 171, 167, '2019-11-05 08:54:08', '2019-11-05 08:54:08'),
(251, 46, 103, 675, '2019-11-05 08:54:08', '2019-11-05 08:54:08'),
(252, 15, 149, 431, '2019-11-05 08:54:08', '2019-11-05 08:54:08'),
(253, 17, 142, 510, '2019-11-05 08:54:08', '2019-11-05 08:54:08'),
(254, 45, 146, 108, '2019-11-05 08:54:08', '2019-11-05 08:54:08'),
(255, 21, 139, 461, '2019-11-05 08:54:08', '2019-11-05 08:54:08'),
(256, 38, 102, 446, '2019-11-05 08:54:08', '2019-11-05 08:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `ability_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forbidden` tinyint(1) NOT NULL DEFAULT '0',
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `ability_id`, `entity_id`, `entity_type`, `forbidden`, `scope`) VALUES
(1, 1, 1, 'roles', 0, NULL),
(2, 2, 2, 'roles', 0, NULL),
(3, 3, 3, 'roles', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `in_stock` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:in stock, 0:out of stock',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `in_stock`, `created_at`, `updated_at`) VALUES
(101, 'Dante Roob', 3202, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(102, 'Emmy Gusikowski', 8567, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(103, 'Kathryn Schaden', 3259, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(104, 'Vidal Kuhic', 5790, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(105, 'Faustino Upton', 2571, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(106, 'Mr. Dewayne Parker', 3181, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(107, 'Oliver Carroll', 5930, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(108, 'Alisha Fritsch', 2949, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(109, 'Kamren Tremblay DVM', 6608, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(110, 'Prof. Graham Mann', 5667, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(111, 'Hollie Kling IV', 4270, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(112, 'Lilliana Heaney', 6571, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(113, 'Sammie Daugherty I', 6483, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(114, 'Savion McCullough DDS', 7774, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(115, 'Natalia Baumbach', 3900, 1, '2019-11-04 11:53:54', '2019-11-04 11:53:54'),
(116, 'Giovanny Fritsch', 5509, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(117, 'Mervin Lebsack III', 2037, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(118, 'Neal Barrows', 2547, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(119, 'Albin Ruecker', 2214, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(120, 'Dee Towne', 5383, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(121, 'Ronaldo Turcotte', 7846, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(122, 'Laurie Murray IV', 1022, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(123, 'Cristobal Corwin PhD', 6936, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(124, 'Arno Lindgren', 6313, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(125, 'Jennie Hauck MD', 6058, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(126, 'Nina Koepp', 8660, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(127, 'Piper Grimes', 5970, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(128, 'Miss Carolyne Hagenes', 8671, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(129, 'Miss Cathryn Corkery', 3685, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(130, 'Maudie Corkery', 3902, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(131, 'Dr. Adrien Franecki', 2458, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(132, 'Prof. Davin Johnson DDS', 7475, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(133, 'Florence Deckow', 4150, 1, '2019-11-04 11:53:55', '2019-11-04 11:53:55'),
(134, 'Zena Berge', 8113, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(135, 'Napoleon Tillman', 6681, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(136, 'Cleta Waelchi', 8403, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(137, 'Dr. Bertha Cruickshank', 1759, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(138, 'Liza Sipes DVM', 5847, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(139, 'Jessy Klein', 4546, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(140, 'Prof. Alec Hoppe', 1102, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(141, 'Mrs. Ruth Champlin', 5625, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(142, 'Dr. Gust Emard', 8412, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(143, 'Prof. Yasmin Wolff II', 7002, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(144, 'Maurine Rodriguez MD', 2406, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(145, 'Dorian Quitzon Jr.', 7168, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(146, 'Mr. Nash Prohaska', 1072, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(147, 'Mrs. Octavia Howe', 8626, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(148, 'Juliet Kuphal MD', 6414, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(149, 'Prof. Meagan Weissnat IV', 6770, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(150, 'Miss Kirsten Cole DVM', 7361, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(151, 'Dr. Colby Rutherford IV', 4982, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(152, 'Sandy Parisian', 6057, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(153, 'Caitlyn Sauer', 8034, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(154, 'Lilian Welch', 4573, 1, '2019-11-04 11:53:56', '2019-11-04 11:53:56'),
(155, 'Twila O''Hara', 4469, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(156, 'Mireille Lebsack', 8883, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(157, 'Lon Gottlieb', 6657, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(158, 'Leda Koss', 1477, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(159, 'Etha Hodkiewicz', 4043, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(160, 'Valentine Mante', 4842, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(161, 'Tommie Zemlak', 8435, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(162, 'Tad Gusikowski', 1781, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(163, 'Stacy Nader', 5662, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(164, 'Mr. Dameon Zboncak IV', 5373, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(165, 'Zora Becker', 1460, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(166, 'Leda Hilpert', 4220, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(167, 'Rupert King', 6558, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(168, 'Tania Koelpin', 1154, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(169, 'Mrs. Thelma Murray Jr.', 7947, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(170, 'Jerry Sporer', 3895, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(171, 'Angel Windler', 8358, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(172, 'Mr. Donnell Huel MD', 4375, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(173, 'Kariane Johnston', 5350, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(174, 'Shad Morissette', 4914, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(175, 'Sven Lang', 1809, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(176, 'Mariane Shanahan', 6531, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(177, 'Mr. Lee Bosco', 1385, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(178, 'Mr. Maurice Emmerich DVM', 3641, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(179, 'Mr. Murphy Cormier MD', 2192, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(180, 'Meta Pollich II', 1884, 1, '2019-11-04 11:53:57', '2019-11-04 11:53:57'),
(181, 'Leonie Watsica', 2054, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(182, 'Dr. Mylene Schneider PhD', 7702, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(183, 'Etha Leuschke Jr.', 5005, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(184, 'Dr. Mathew Wilderman', 8983, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(185, 'Else Cruickshank', 5602, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(186, 'Violet Stehr', 3121, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(187, 'Joan Haag', 8083, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(188, 'Cordie Anderson', 1186, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(189, 'Dorcas Lakin', 3657, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(190, 'Lowell Baumbach', 5955, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(191, 'Karina Braun', 6528, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(192, 'Dwight Olson', 7491, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(193, 'Halie Treutel V', 2824, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(194, 'Luna Maggio Jr.', 1331, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(195, 'Gail Rohan V', 7962, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(196, 'Prof. Jarod McGlynn IV', 4829, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(197, 'Dr. Ahmad Konopelski', 6939, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(198, 'Ezekiel Hessel', 1621, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(199, 'Laurianne Daniel', 6139, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58'),
(200, 'Afton Murray', 4355, 1, '2019-11-04 11:53:58', '2019-11-04 11:53:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `level`, `scope`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'Administrator', NULL, NULL, '2019-11-04 09:08:16', '2019-11-04 09:08:16'),
(2, 'user-manager', 'User manager', NULL, NULL, '2019-11-04 09:21:56', '2019-11-04 09:21:56'),
(3, 'shop-manager', 'Shop manager', NULL, NULL, '2019-11-04 09:22:29', '2019-11-04 09:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Ellen Ryan IV', 'bertrand93@example.org', '2019-11-03 10:42:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mbX2MQlo8so6DR6lJTqCURH4Y1388plN2mItxdzLUhXyuTJ1MXmqIq3IjWXU', '2019-11-03 10:42:29', '2019-11-03 10:42:29'),
(2, 'Cullen Ratke', 'amitchell@example.com', '2019-11-03 10:42:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm8AA2dHpua', '2019-11-03 10:42:29', '2019-11-03 10:42:29'),
(3, 'Dr. Cecelia Kerluke', 'hillary97@example.com', '2019-11-03 10:42:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fY0catP9zwLbU6LzYIae2uwikP8CXMN4h9LUzhJW26JweZY4QegqqgHgexp2', '2019-11-03 10:42:29', '2019-11-03 10:42:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abilities_scope_index` (`scope`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `assigned_roles_role_id_index` (`role_id`),
  ADD KEY `assigned_roles_scope_index` (`scope`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `permissions_ability_id_index` (`ability_id`),
  ADD KEY `permissions_scope_index` (`scope`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`,`scope`),
  ADD KEY `roles_scope_index` (`scope`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ability_id_foreign` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
