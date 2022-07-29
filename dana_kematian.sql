-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2022 at 02:38 PM
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
-- Database: `dana_kematian`
--

-- --------------------------------------------------------

--
-- Table structure for table `dana_bantuans`
--

CREATE TABLE `dana_bantuans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kk` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_bantuan` decimal(15,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diterima` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dana_bantuans`
--

INSERT INTO `dana_bantuans` (`id`, `nik`, `kk`, `nama`, `alamat`, `jumlah_bantuan`, `status`, `diterima`, `created_at`, `updated_at`) VALUES
(5, '1871065705730007', '1871062502090003', 'FITRIYANI', 'Jln. Samratulangi Gg. Seri RT. 04 LK. II Kel. Penengahan Raya Kedaton B. Lampung', '10000000.00', 'Selesai', '2022-06-06', '2022-07-20 00:14:22', '2022-07-20 00:14:22'),
(6, '1871060101570014', '1871060304070005', 'ASRIL', 'Jln. T. UMAR Gg. ULTRA No. 16 RT. 01 Penengahan Kedaton B. Lampung', '5000000.00', 'Selesai', '2022-06-06', '2022-07-20 00:21:23', '2022-07-20 00:21:23'),
(7, '1871060508690008', '1871061803110004', 'CHAIDIR SALEH', 'Jln. T. UMAR Gg. ULTRA No. 18 RT. 01 Penengahan Kedaton B. Lampung', '2000000.00', 'Selesai', '2022-06-06', '2022-07-20 00:26:34', '2022-07-20 00:26:34'),
(8, '1871066810730007', '1871062710080014', 'RATIH AYU FITRIYANI', 'Jl. Teuku Umar No. 64-70 RT. 01 LK 1', '2000000.00', 'Selesai', '2022-06-06', '2022-07-20 00:31:09', '2022-07-20 00:31:09'),
(9, '1871080511950003', '1871082905170003', 'HARIYANTO', 'Jln. AMD KP. KOTA JAWA LK. 2 RT. 04 NEGERI OLOK GADING T. BETUNG BARAT B. LAMPUNG', '3000000.00', 'Selesai', '2022-06-02', '2022-07-20 00:35:42', '2022-07-20 00:35:42'),
(10, '1871157011890001', '187115250913304', 'NOVITA SARI', 'Jln. P. Pisang RT. 008 WAYHALIM PERMAI WAYHALIM BDL', '10000000.00', 'Selesai', '2022-06-06', '2022-07-20 00:40:10', '2022-07-20 00:40:10'),
(11, '1871054710750002', '1871052508090007', 'SAKIDAH', 'Jln. Gajah Mada Gg. Moris RT. 014 Kota Baru T. Karang Timur Bandar Lampung', '10000000.00', 'Selesai', '2022-05-23', '2022-07-20 00:44:40', '2022-07-20 00:44:40'),
(12, '1871030605700002', '1871033009150006', 'FEDY HANDRI PH', 'Jln. Eforbia I No. 22 BLOK RC LK. III Beringin Raya Kemiling B. Lampung', '7500000.00', 'Selesai', '2022-05-18', '2022-07-20 00:49:01', '2022-07-20 00:49:01');

-- --------------------------------------------------------

--
-- Table structure for table `data_kematian`
--

CREATE TABLE `data_kematian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nikWaris` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaWaris` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kematian` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diterima` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_kematian`
--

INSERT INTO `data_kematian` (`id`, `nik`, `nama`, `nikWaris`, `namaWaris`, `kematian`, `status`, `diterima`, `created_at`, `updated_at`) VALUES
(10, '12092017060000070', 'Sanjo Sitalangi', '1209201706000009', 'Sanja Sitalangi', '2022-07-20', 'Proses', '2022-07-21', '2022-07-14 23:51:58', '2022-07-14 23:51:58'),
(11, '12092017060000072', 'Anton', '1209201706000009', 'Sanja Sitalangi', '2022-07-15', 'Selesai', '2022-07-20', '2022-07-15 07:04:00', '2022-07-15 07:04:00'),
(12, '1234567890123456', 'Sanjo Sitalangai', '12092017060000093', 'Sanja Sitalangi', '2022-07-26', 'Proses', '2022-07-26', '2022-07-25 19:33:30', '2022-07-25 19:33:30'),
(13, '1234567890123453', 'Sanjo Sitalangi', '1234567890123456', 'Sanja Sitalangi', '2022-07-26', 'Proses', '2022-07-26', '2022-07-25 19:40:06', '2022-07-25 19:40:06'),
(14, '6543216543214321', 'FITRIYANI', '8765482937481234', 'Andi', '2022-07-26', 'Proses', '2022-07-20', '2022-07-25 19:41:05', '2022-07-25 19:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(6, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(7, '2022_07_05_073017_create_data_kematian_table', 2),
(8, '2022_07_07_040542_create_dana_bantuans_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Gunawan Sitepu', 'gunawang938@gmail.com', NULL, '$2y$10$j42QDnf.xbkm2QTh87YrmeeJ.ULjlcCcPshzPSgSKmsxrpm0Y5VKm', NULL, '2022-07-04 20:22:58', '2022-07-04 20:22:58'),
(2, 'Gunawan Sitepu', 'sitepugunawan@gmail.com', NULL, '$2y$10$xhGI7skqw3MpiEvDkbnTdew8rfnIxKekW6.xn8oCAkiCqDjlhRijK', NULL, '2022-07-05 19:48:49', '2022-07-05 19:48:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dana_bantuans`
--
ALTER TABLE `dana_bantuans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_kematian`
--
ALTER TABLE `data_kematian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `dana_bantuans`
--
ALTER TABLE `dana_bantuans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `data_kematian`
--
ALTER TABLE `data_kematian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
