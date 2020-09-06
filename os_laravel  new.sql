-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 06, 2020 at 08:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `os_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `photo`, `created_at`, `updated_at`) VALUES
(6, 'SAMSUNG', 'backend/brand1img/1599230536.jpeg', '2020-09-04 08:12:16', '2020-09-04 09:12:25'),
(7, 'HUAWEI', 'backend/brand1img/1599230734.jpeg', '2020-09-04 08:15:34', '2020-09-04 08:15:34'),
(8, 'OPPO', 'backend/brand1img/1599230903.jpeg', '2020-09-04 08:18:23', '2020-09-04 08:18:23'),
(9, 'VIVO', 'backend/brand1img/1599230918.jpeg', '2020-09-04 08:18:38', '2020-09-04 08:18:38'),
(10, 'MI', 'backend/brand1img/1599230931.jpeg', '2020-09-04 08:18:51', '2020-09-04 08:18:51'),
(11, 'APPLE', 'backend/brand1img/1599230948.jpeg', '2020-09-04 08:19:08', '2020-09-04 08:19:08'),
(12, 'GIORDANO', 'backend/brand1img/1599319526.png', '2020-09-05 08:55:26', '2020-09-05 08:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `photo`, `created_at`, `updated_at`) VALUES
(9, 'MEN CLOTHES', 'backend/categoryimg/1599232404.jpeg', '2020-09-04 08:43:24', '2020-09-04 08:43:24'),
(10, 'WOMEN CLOTHES', 'backend/categoryimg/1599232427.jpeg', '2020-09-04 08:43:47', '2020-09-04 08:43:47'),
(11, 'ELECTRONIC', 'backend/categoryimg/1599291559.jpeg', '2020-09-05 01:09:19', '2020-09-05 01:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codeno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `codeno`, `name`, `photo`, `price`, `discount`, `description`, `subcategory_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(9, '0001', 'OPPO A52', 'backend/itemimg/1599291822.jpeg', 300000, 299000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 11, 8, '2020-09-05 01:13:43', '2020-09-05 01:13:43'),
(10, '0002', 'GIORDANO Medium', 'backend/itemimg/1599319440.jpeg', 50000, 40000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 9, 12, '2020-09-05 08:54:00', '2020-09-05 08:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_25_043031_create_students_table', 1),
(5, '2020_08_25_050236_create_brands_table', 2),
(6, '2020_08_25_050643_create_categories_table', 2),
(7, '2020_08_25_050856_create_subcategories_table', 2),
(8, '2020_08_25_051642_create_items_table', 2),
(9, '2020_08_31_065053_create_orders_table', 3),
(10, '2020_08_31_070442_create_order_details_table', 4),
(11, '2020_09_01_075729_create_permission_tables', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 4),
(1, 'App\\User', 7),
(1, 'App\\User', 9),
(1, 'App\\User', 10),
(1, 'App\\User', 11),
(1, 'App\\User', 12),
(1, 'App\\User', 13),
(1, 'App\\User', 14),
(2, 'App\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `voucherno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderdate` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `voucherno`, `orderdate`, `status`, `note`, `total`, `user_id`, `created_at`, `updated_at`) VALUES
(12, '5f547f8fc1e67', '2020-09-06', 0, 'asdfghjkl', 100000, 9, '2020-09-05 23:49:59', '2020-09-05 23:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `item_id`, `qty`, `created_at`, `updated_at`) VALUES
(19, 12, 10, 2, '2020-09-05 23:49:59', '2020-09-05 23:49:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Customer', 'web', '2020-09-01 01:54:52', '2020-09-01 01:54:52'),
(2, 'Admin', 'web', '2020-09-01 01:54:52', '2020-09-01 01:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Su Su', 'susu@gmail.com', 'Latha', '2020-08-25 01:55:32', '2020-08-25 01:55:32'),
(2, 'Mg Mg', 'mgmg@gmail.com', 'Bahan', '2020-08-25 02:02:05', '2020-08-25 02:02:05'),
(3, 'Mya Mya', 'myamya@gmail.com', 'Mayangone', '2020-08-25 02:02:05', '2020-08-25 02:02:05'),
(4, 'Prof. Ayden Kohler Sr.', 'balistreri.jaydon@example.com', '5694 Jacobi Union Suite 107\nHermanton, OK 18795', '2020-08-25 02:28:51', '2020-08-25 02:28:51'),
(5, 'Mrs. Marlee Jast I', 'kamille23@example.com', '256 Turner Shore Apt. 530\nWhitebury, DE 67894', '2020-08-25 02:28:51', '2020-08-25 02:28:51'),
(6, 'Maxwell Parker', 'keeling.jayden@example.org', '2794 Bridie Bridge\nStehrton, ID 57881', '2020-08-25 02:28:51', '2020-08-25 02:28:51'),
(7, 'Dr. Gerhard King', 'okon.lora@example.org', '18176 Tessie Place Apt. 967\nBogisichborough, OH 81428', '2020-08-25 02:28:52', '2020-08-25 02:28:52'),
(8, 'Dr. Morgan Klein IV', 'irunolfsson@example.net', '19616 White Run\nAliaborough, LA 22025', '2020-08-25 02:28:52', '2020-08-25 02:28:52'),
(9, 'Jailyn Kihn IV', 'qgoldner@example.com', '955 Marquardt Underpass\nNorth Enochport, MI 99917-5489', '2020-08-25 02:28:52', '2020-08-25 02:28:52'),
(10, 'Geovanni Donnelly', 'kris.rossie@example.net', '875 Conrad Street Apt. 473\nNorth Darrellside, GA 02301', '2020-08-25 02:28:52', '2020-08-25 02:28:52'),
(11, 'Moses Romaguera III', 'reyes.bergstrom@example.net', '7703 Shanon Corners\nJarenfort, NH 19170-2717', '2020-08-25 02:28:52', '2020-08-25 02:28:52'),
(12, 'Drew Dickinson DDS', 'helmer75@example.com', '90948 Klocko Summit Suite 875\nSouth Ettie, MN 59242-4566', '2020-08-25 02:28:52', '2020-08-25 02:28:52'),
(13, 'Prof. Abdiel Homenick PhD', 'crystal17@example.com', '139 Ankunding Vista\nEast Amber, NM 10857-5528', '2020-08-25 02:28:52', '2020-08-25 02:28:52'),
(14, 'Cleora Greenfelder', 'eve65@example.net', '867 Kovacek Valley\nAnissaside, WA 56794', '2020-08-25 02:35:29', '2020-08-25 02:35:29'),
(15, 'Jerrold McCullough', 'tgoodwin@example.com', '32591 Marian Trail\nMorissettechester, PA 63298-0988', '2020-08-25 02:35:30', '2020-08-25 02:35:30'),
(16, 'Prof. Braden Hirthe', 'natasha.schneider@example.net', '6302 Rosalee Rapid\nNew Amparo, AL 98015-4753', '2020-08-25 02:35:30', '2020-08-25 02:35:30'),
(17, 'Orin Sipes', 'yvonne17@example.net', '46975 Aurelie Crest Suite 666\nLake Breanna, DC 02687', '2020-08-25 02:35:30', '2020-08-25 02:35:30'),
(18, 'Clemens Purdy', 'hschowalter@example.net', '274 Crist Avenue\nDanteshire, KY 45967-8039', '2020-08-25 02:35:30', '2020-08-25 02:35:30'),
(19, 'Delbert Kutch', 'missouri.cartwright@example.org', '9757 Crist Plaza\nPort Alexandrine, TX 80924', '2020-08-25 02:35:30', '2020-08-25 02:35:30'),
(20, 'Mohamed Reynolds', 'clarissa.roob@example.org', '78418 Greenfelder Corner Suite 424\nEast Danialburgh, NE 13449', '2020-08-25 02:35:31', '2020-08-25 02:35:31'),
(21, 'Mazie Williamson II', 'timmy97@example.net', '6307 Quinten Plaza\nEast Elvera, WI 64565-3836', '2020-08-25 02:35:31', '2020-08-25 02:35:31'),
(22, 'Madyson Steuber II', 'bednar.billie@example.com', '12300 Talon Island\nElmirafurt, DC 57423', '2020-08-25 02:35:31', '2020-08-25 02:35:31'),
(23, 'Prof. Wayne O\'Conner', 'bethel05@example.org', '92127 Faye Branch\nSmithamfort, KS 00553', '2020-08-25 02:35:31', '2020-08-25 02:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(9, 'T-Shirt', 9, '2020-09-04 09:32:17', '2020-09-04 09:32:17'),
(10, 'Dress', 10, '2020-09-04 09:32:27', '2020-09-04 09:32:27'),
(11, 'Phone', 11, '2020-09-05 01:11:28', '2020-09-05 01:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'customer', 'customer@gmail.com', NULL, '123456789', NULL, NULL, NULL),
(2, 'Thu', 'thu@gmail.com', NULL, '$2y$10$UPdOaenp9R/3ri0.OmS98OekRk8N7yZzT2FGJ85RNYJakUQC06ngi', NULL, '2020-08-31 22:25:46', '2020-08-31 22:25:46'),
(3, 'Thu', 'thuthu@gmail.com', NULL, '$2y$10$w6gV7bvC8Ew57/cQHAbDvu1KAbrw81Np/ejHyrM/jueKKhs3Vwnia', NULL, '2020-08-31 22:30:26', '2020-08-31 22:30:26'),
(4, 'Thu Thu', 'thuthuhtun@gmail.com', NULL, '$2y$10$8lx2JB8i78n1pb1N4vRuYemAHzQoPy/JV8fI2whiLK.fvUCAquDvW', NULL, '2020-09-01 02:45:33', '2020-09-01 02:45:33'),
(7, 'Th', 'th@gmail.com', NULL, '$2y$10$o2ohhw6MJwORm62WsgAiY.zrHlQWlFSr2vHImf2WSeMXMFazfVAQe', NULL, '2020-09-01 03:30:42', '2020-09-01 03:30:42'),
(8, 'AdminGyi', 'admingyi@gmail.com', NULL, '$2y$10$Ta0anevtz5HAUlFip2BaOe7RjtMANkq.MqZqe6o/R6G9BLk4AWBVO', NULL, '2020-09-04 04:00:11', '2020-09-04 04:00:11'),
(9, 'htetoolinn', 'htetoolinn@gmail.com', NULL, '$2y$10$AlkHrB.rKty9nckrT5fPaOULrSXUsKE4/R26KWCM0h6f3viCIKV9S', NULL, '2020-09-05 21:46:48', '2020-09-05 21:46:48'),
(10, 'customer11', 'customer11@gmail.com', NULL, '$2y$10$iu8O2pAeR8sYP6v0odBx4O3jashauMjuQEGwo5vzUNGDnPARwLvvC', NULL, '2020-09-05 22:50:06', '2020-09-05 22:50:06'),
(11, 'customer', 'customer22@gmail.com', NULL, '$2y$10$d6gSIfL7UqtNR8xmWpF.P.XBd1II9KapSjtyopJ463nq0QoWMli26', NULL, '2020-09-05 22:51:41', '2020-09-05 22:51:41'),
(12, 'customer111', 'customer221@gmail.com', NULL, '$2y$10$e7GrLVYuKttyGKDZyHoELONZoLo7IsG2gNgCTPFFYsgpBE0z328pa', NULL, '2020-09-05 22:58:44', '2020-09-05 22:58:44'),
(13, 'customer11', 'customer2222@gmail.com', NULL, '$2y$10$aGvpHZIOGmFTHZhgrkGRUOHpCQC1lsV9THE./lyE/33Zw8VpgKW7e', NULL, '2020-09-05 23:00:15', '2020-09-05 23:00:15'),
(14, 'customer', 'cc@gmail.com', NULL, '$2y$10$XLsEP.WA/aKU5UX1M7DMKuVCGWnrIYEIyhCg./rt632sS4llyUKi.', NULL, '2020-09-05 23:01:23', '2020-09-05 23:01:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `items_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_item_id_foreign` (`item_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
