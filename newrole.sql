-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2023 at 01:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newrole`
--

-- --------------------------------------------------------

--
-- Table structure for table `covers`
--

CREATE TABLE `covers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_image` varchar(255) DEFAULT NULL,
  `about_image` varchar(255) DEFAULT NULL,
  `event_image` varchar(255) DEFAULT NULL,
  `singleevent_image` varchar(255) DEFAULT NULL,
  `blog_image` varchar(255) DEFAULT NULL,
  `transfer_image` varchar(255) DEFAULT NULL,
  `liveaboard_image` varchar(255) DEFAULT NULL,
  `exploredestination_image` varchar(255) DEFAULT NULL,
  `package_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `home_covers`
--

CREATE TABLE `home_covers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `indexx` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_covers`
--

INSERT INTO `home_covers` (`id`, `image`, `indexx`, `created_at`, `updated_at`) VALUES
(1, '1', 1, '2023-05-29 07:37:14', '2023-05-29 07:37:14'),
(2, 'image/asd.webp', 1, '2023-05-29 10:59:40', '2023-05-29 10:59:40'),
(3, 'storage/app/image/asd.webp', 1, '2023-05-29 11:07:31', '2023-05-29 11:07:31'),
(4, 'storage/app/image/asd.webp', 1, '2023-05-29 11:21:34', '2023-05-29 11:21:34'),
(5, '168542948632.webp', 1, '2023-05-30 03:51:27', '2023-05-30 03:51:27'),
(6, '1685430105asd.webp', 1, '2023-05-30 04:01:46', '2023-05-30 04:01:46'),
(7, 'asd.webp', 1, '2023-05-30 04:02:01', '2023-05-30 04:02:01'),
(8, 'asd.webp', 1, '2023-05-30 05:59:37', '2023-05-30 05:59:37'),
(9, 'aboutus.webp', 1, '2023-05-30 06:06:42', '2023-05-30 06:06:42'),
(10, 'aboutus-sm.webp', 1, '2023-05-30 06:07:08', '2023-05-30 06:07:08'),
(11, 'blog-sm.webp', 1, '2023-05-30 06:07:50', '2023-05-30 06:07:50'),
(12, 'blog.webp', 1, '2023-05-30 06:08:01', '2023-05-30 06:08:01'),
(13, 'city-tour.webp', 1, '2023-05-30 06:08:20', '2023-05-30 06:08:20'),
(14, 'city-tour-sm.webp', 1, '2023-05-30 06:08:29', '2023-05-30 06:08:29'),
(15, 'contactus-sm.webp', 1, '2023-05-30 06:08:48', '2023-05-30 06:08:48'),
(16, 'contactus.webp', 1, '2023-05-30 06:08:59', '2023-05-30 06:08:59'),
(17, 'events.webp', 1, '2023-05-30 06:09:16', '2023-05-30 06:09:16'),
(18, 'events-sm.webp', 1, '2023-05-30 06:09:27', '2023-05-30 06:09:27'),
(19, 'explore-sm.webp', 1, '2023-05-30 06:09:44', '2023-05-30 06:09:44'),
(20, 'explore.webp', 1, '2023-05-30 06:09:53', '2023-05-30 06:09:53'),
(21, 'liveaboard.webp', 1, '2023-05-30 06:10:09', '2023-05-30 06:10:09'),
(22, 'liveaboard-sm.webp', 1, '2023-05-30 06:10:17', '2023-05-30 06:10:17'),
(23, 'singleEvent-sm.webp', 1, '2023-05-30 06:10:36', '2023-05-30 06:10:36'),
(24, 'singleEvent.webp', 1, '2023-05-30 06:10:48', '2023-05-30 06:10:48'),
(25, 'transfer.webp', 1, '2023-05-30 06:11:05', '2023-05-30 06:11:05'),
(26, 'transfer-sm.webp', 1, '2023-05-30 06:11:14', '2023-05-30 06:11:14'),
(27, 'blog.webp', 1, '2023-05-30 06:41:07', '2023-05-30 06:41:07'),
(28, 'blog.webp', 1, '2023-05-30 06:41:21', '2023-05-30 06:41:21'),
(29, 'aboutus.webp', 1, '2023-05-30 06:49:36', '2023-05-30 06:49:36'),
(30, 'aboutus-sm.webp', 1, '2023-05-30 06:50:02', '2023-05-30 06:50:02'),
(31, 'blog-sm.webp', 1, '2023-05-30 06:50:49', '2023-05-30 06:50:49'),
(32, 'blog.webp', 1, '2023-05-30 06:50:57', '2023-05-30 06:50:57'),
(33, 'city-tour.webp', 1, '2023-05-30 06:51:26', '2023-05-30 06:51:26'),
(34, 'city-tour-sm.webp', 1, '2023-05-30 06:51:36', '2023-05-30 06:51:36'),
(35, 'contactus-sm.webp', 1, '2023-05-30 06:52:45', '2023-05-30 06:52:45'),
(36, 'contactus.webp', 1, '2023-05-30 06:52:56', '2023-05-30 06:52:56'),
(37, 'events.webp', 1, '2023-05-30 06:53:16', '2023-05-30 06:53:16'),
(38, 'events-sm.webp', 1, '2023-05-30 06:53:34', '2023-05-30 06:53:34'),
(39, 'explore-sm.webp', 1, '2023-05-30 06:55:19', '2023-05-30 06:55:19'),
(40, 'explore.webp', 1, '2023-05-30 06:55:29', '2023-05-30 06:55:29'),
(41, 'liveaboard.webp', 1, '2023-05-30 06:55:44', '2023-05-30 06:55:44'),
(42, 'liveaboard-sm.webp', 1, '2023-05-30 06:55:56', '2023-05-30 06:55:56'),
(43, 'singleEvent-sm.webp', 1, '2023-05-30 06:56:17', '2023-05-30 06:56:17'),
(44, 'singleEvent.webp', 1, '2023-05-30 06:56:31', '2023-05-30 06:56:31'),
(45, 'transfer.webp', 1, '2023-05-30 06:56:46', '2023-05-30 06:56:46'),
(46, 'transfer-sm.webp', 1, '2023-05-30 06:56:56', '2023-05-30 06:56:56'),
(47, 'slid-1-sm.webp', 1, '2023-05-30 07:00:17', '2023-05-30 07:00:17'),
(48, 'slid-2-sm.webp', 1, '2023-05-30 07:00:31', '2023-05-30 07:00:31'),
(49, 'slid-3-sm.webp', 1, '2023-05-30 07:00:41', '2023-05-30 07:00:41'),
(50, 'slid-4-sm.webp', 1, '2023-05-30 07:00:51', '2023-05-30 07:00:51'),
(51, 'slid-5-sm.webp', 1, '2023-05-30 07:01:00', '2023-05-30 07:01:00'),
(52, 'slid-5.webp', 1, '2023-05-30 07:01:30', '2023-05-30 07:01:30'),
(53, 'slid-4.webp', 1, '2023-05-30 07:01:47', '2023-05-30 07:01:47'),
(54, 'slid-3.webp', 1, '2023-05-30 07:01:57', '2023-05-30 07:01:57'),
(55, 'slid-2.webp', 1, '2023-05-30 07:02:19', '2023-05-30 07:02:19'),
(56, 'slid-1.webp', 1, '2023-05-30 07:02:30', '2023-05-30 07:02:30'),
(57, 'contactus.webp', 1, '2023-05-30 08:28:41', '2023-05-30 08:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_24_100139_create_permission_tables', 2),
(6, '2023_05_27_131002_create_covers_table', 3),
(7, '2023_05_28_100631_create_home_covers_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'write post', 'web', '2023-05-24 07:29:43', '2023-05-24 07:29:43'),
(2, 'edit post', 'web', '2023-05-24 07:36:23', '2023-05-24 07:36:23'),
(3, 'meesage-create', 'web', NULL, NULL),
(4, 'meesage-show', 'web', NULL, NULL),
(5, 'meesage-update', 'web', NULL, NULL),
(6, 'meesage-delete', 'web', NULL, NULL),
(7, 'product-create', 'web', NULL, NULL),
(8, 'product-show', 'web', NULL, NULL),
(9, 'product-update', 'web', NULL, NULL),
(10, 'product-delete', 'web', NULL, NULL),
(11, 'category-create', 'web', NULL, NULL),
(12, 'category-show', 'web', NULL, NULL),
(13, 'category-update', 'web', NULL, NULL),
(14, 'category-delete', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'admin@admin.com', '3ca16ef96c1df06dc78f92a941ac767bcac2227d2c49263ab2d87fa00f5da7df', '[\"*\"]', '2023-05-27 05:21:25', NULL, '2023-05-27 05:13:52', '2023-05-27 05:21:25'),
(2, 'App\\Models\\User', 2, 'admin@admin.com', 'f6e1f8e6c61462184c46bc34042b88a1c097eb1842c28a7a4cd76e26ae9a4620', '[\"*\"]', '2023-05-27 05:42:37', NULL, '2023-05-27 05:39:56', '2023-05-27 05:42:37'),
(3, 'App\\Models\\User', 1, 'ahmedsaeed1722@gmail.com', '11aacf7a51c7d3aa034842b2af900cc39e6df0b3747483c0bd43df0a92ee7088', '[\"*\"]', '2023-05-27 06:25:01', NULL, '2023-05-27 05:49:16', '2023-05-27 06:25:01'),
(4, 'App\\Models\\User', 3, 'a@a.com', 'e1e5bc9e6cbdfa70ea5eea65fdb2ffaa0ee063d38891dad97bd923bd11498ec8', '[\"*\"]', '2023-06-04 05:20:19', NULL, '2023-06-04 04:19:49', '2023-06-04 05:20:19'),
(5, 'App\\Models\\User', 3, 'a@a.com', 'aa4350fbe34894da4dd4860250927226b67e4ac3440692600c6b3851aa36060b', '[\"*\"]', NULL, NULL, '2023-06-04 04:31:58', '2023-06-04 04:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(11, 'super-admin', 'web', NULL, NULL),
(12, 'admin', 'web', NULL, NULL),
(13, 'editor', 'web', NULL, NULL);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role_id` bigint(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Saeed', NULL, 'ahmedsaeed1722@gmail.com', NULL, '$2y$10$UecMZ0kCaQpEFdnFCxs0GOzBQNoZQvRqc7HxWP83KFOFvahzLkxW6', NULL, 0, '2023-05-24 07:21:54', '2023-05-24 07:21:54'),
(2, 'Admin', 'Super Admin', 'admin@admin.com', NULL, '$2y$10$sRA.zt65HM9omWIu5fpaMuJRMTWW3Qje/ILyGDtao3ccpHPiz8PPy', NULL, 0, '2023-05-27 04:29:41', '2023-05-27 04:29:41'),
(3, 'ahmed', NULL, 'a@a.com', NULL, '$2y$10$9kdPWt1V8V751EvO4pfmv.MRq./nSP4/R8nosiDgT7DGgDJiLhUNu', NULL, 1, '2023-06-04 04:19:48', '2023-06-04 04:19:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `covers`
--
ALTER TABLE `covers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_covers`
--
ALTER TABLE `home_covers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `covers`
--
ALTER TABLE `covers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_covers`
--
ALTER TABLE `home_covers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
