-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 31, 2020 at 01:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(1, 'Alias qui', 'backend/brandimg/49770eef36c0bf8a7dac70e6efe89d6b.jpg', '2020-08-25 03:03:44', '2020-08-26 10:16:42'),
(2, 'Non voluptate', 'backend/brandimg/d94a895f0f5d7da23b8a5174c85bb7f4.jpg', '2020-08-25 03:03:44', '2020-08-26 21:22:29'),
(3, 'Rerum voluptatem.', 'backend/brandimg/3361cd1dc9434aa25b0e2c3fe207e80e.jpg', '2020-08-25 03:03:44', '2020-08-25 03:03:44'),
(4, 'Tempore id fuga ut et.', 'backend/brandimg/ce9dd338bebc9afa30489cf99d7c6324.jpg', '2020-08-25 03:03:44', '2020-08-25 03:03:44'),
(5, 'Sit inventore ex facilis.', 'backend/brandimg/c751abc5e524c132e3b048c686db0f2d.jpg', '2020-08-25 03:03:44', '2020-08-25 03:03:44');

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
(1, 'Quod aut', 'backend/categoryimg/d21827e40c1b8486fdacaf9f1e337eac.jpg', '2020-08-25 03:08:37', '2020-08-26 10:39:37'),
(2, 'Error molestiae nulla.', 'backend/categoryimg/2a93bc0a3a80a579222000827be2055f.jpg', '2020-08-25 03:08:37', '2020-08-25 03:08:37'),
(3, 'Quae suscipit.', 'backend/categoryimg/5dfbad3db5b7e5635a97fde95b5d31a0.jpg', '2020-08-25 03:08:37', '2020-08-25 03:08:37'),
(4, 'Et tenetur aliquam id est.', 'backend/categoryimg/4f60a252558a3cba5819a2a871c21936.jpg', '2020-08-25 03:08:37', '2020-08-25 03:08:37'),
(5, 'Non ut ut laborum.', 'backend/categoryimg/41d766451322d207577a6ad39b4c1091.jpg', '2020-08-25 03:08:37', '2020-08-25 03:08:37'),
(6, 'Voluptatibus non praesentium sed.', 'backend/categoryimg/ef0ef3a14934744ac563323604df3cf2.jpg', '2020-08-25 03:34:24', '2020-08-25 03:34:24'),
(7, 'Ut exercitationem et officiis.', 'backend/categoryimg/1ba0b140dc1f8192fb25ec2d73366525.jpg', '2020-08-25 03:34:24', '2020-08-25 03:34:24');

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
(1, '123123', 'Coffee', 'backend/itemimg/1598437180.jpeg', 5000, 10, 'good', 1, 1, '2020-08-26 01:17:06', '2020-08-26 03:49:40'),
(2, '2222', 'item2', 'backend/itemimg/1598428108.jpeg', 5000, 100, 'good', 1, 1, '2020-08-26 01:18:28', '2020-08-26 01:18:28'),
(3, '3333', 'item3', 'backend/itemimg/1598428166.jpeg', 4000, 20, 'best', 1, 1, '2020-08-26 01:19:26', '2020-08-26 01:19:26'),
(4, '44444', 'Item four', 'backend/itemimg/1598432753.jpeg', 4000, 50, 'good', 5, 2, '2020-08-26 02:35:53', '2020-08-26 02:35:53'),
(5, '5555', 'Item five', 'backend/itemimg/1598438311.jpeg', 5000, 100, 'best', 1, 1, '2020-08-26 02:37:44', '2020-08-26 04:08:31'),
(6, '6666', 'Item six', 'backend/itemimg/1598432989.jpeg', 6000, 200, 'good', 5, 2, '2020-08-26 02:39:49', '2020-08-26 02:39:49'),
(7, '7777', 'item seven', 'backend/itemimg/1598433994.jpeg', 7000, 20, 'good', 4, 4, '2020-08-26 02:56:34', '2020-08-26 02:56:34');

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
(10, '2020_08_31_070442_create_order_details_table', 4);

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
(1, '5f4cbdde45738', '2020-08-31', 0, 'qwertyuio', 37000, 1, '2020-08-31 02:37:42', '2020-08-31 02:37:42'),
(2, '5f4cbe1628ed6', '2020-08-31', 0, 'sdvzdxvzsvzcb', 37000, 1, '2020-08-31 02:38:38', '2020-08-31 02:38:38'),
(3, '5f4cbe86c2d25', '2020-08-31', 0, 'xvasdgsdfbzxdfb', 37000, 1, '2020-08-31 02:40:30', '2020-08-31 02:40:30');

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
(1, 3, 1, 2, '2020-08-31 02:40:30', '2020-08-31 02:40:30'),
(2, 3, 2, 1, '2020-08-31 02:40:31', '2020-08-31 02:40:31'),
(3, 3, 3, 1, '2020-08-31 02:40:31', '2020-08-31 02:40:31'),
(4, 3, 4, 3, '2020-08-31 02:40:31', '2020-08-31 02:40:31'),
(5, 3, 6, 1, '2020-08-31 02:40:31', '2020-08-31 02:40:31');

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
(1, 'Aliquid neque', 1, '2020-08-25 03:34:24', '2020-08-26 11:35:11'),
(2, 'Omnis omnis a.', 6, '2020-08-25 03:34:24', '2020-08-25 03:34:24'),
(3, 'Exercitationem quasi esse.', 6, '2020-08-25 03:34:24', '2020-08-25 03:34:24'),
(4, 'Corrupti autem facilis.', 7, '2020-08-25 03:34:25', '2020-08-25 03:34:25'),
(5, 'Qui quam dolorem.', 7, '2020-08-25 03:34:25', '2020-08-25 03:34:25'),
(6, 'Doloribus quia eos.', 7, '2020-08-25 03:34:25', '2020-08-25 03:34:25');

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
(1, 'customer', 'customer@gmail.com', NULL, '123456789', NULL, NULL, NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
