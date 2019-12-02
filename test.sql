-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2019 at 10:16 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

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
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lot_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lot_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lot_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_tax_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `date`, `category`, `lot_title`, `lot_location`, `lot_condition`, `pre_tax_amount`, `tax_name`, `tax_amount`, `created_at`, `updated_at`) VALUES
(81, '2013-12-1', 'Construction', 'Hauling Transfer Trailers', '783 Park Ave, New York, NY 10021', 'Brand New', '350', 'NY Sales tax', '31.06', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(82, '2013-12-15', 'Construction', 'Roll-of trucks', '1 Infinite Loop, Cupertino, CA 95014', 'Like Brand New', '235', 'CA Sales tax', '17.63', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(83, '2013-12-31', 'Construction', 'End dumps', '1 Infinite Loop, Cupertino, CA 95014', 'Used', '999', 'CA Sales tax', '74.93', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(84, '2013-12-14', 'Construction', 'Skid steer loaders', '1 Infinite Loop, Cupertino, CA 95014', 'For parts or not working', '899', 'CA Sales tax', '67.43', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(85, '2013-12-6', 'Construction', 'Bobtail dump trucks', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Brand New', '21000.54', 'CA Sales tax', '1575.04', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(86, '2013-12-9', 'Construction', 'Front loaders\' engines', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'For parts or not working', '50', 'CA Sales tax', '3.75', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(87, '2013-11-10', 'Construction', 'Water trucks', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'For parts or not working', '300', 'CA Sales tax', '22.5', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(88, '2013-11-12', 'Mining', 'Shovels', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Like Brand New', '230', 'CA Sales tax', '17.25', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(89, '2013-11-20', 'Plastics & Rubber', '2kgs; used rubber tires', '783 Park Ave, New York, NY 10021', 'Used', '200', 'NY Sales tax', '15', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(90, '2013-10-4', 'Mining', 'Assorted Tools', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Used', '200', 'CA Sales tax', '15', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(91, '2013-10-12', 'Mining', 'Assorted Tools', '783 Park Ave, New York, NY 10021', 'Used', '1999', 'NY Sales tax', '177.41', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(92, '2013-12-9', 'Plastics & Rubber', '2kgs; used rubber tires', 'The Montreal Museum of Fine Arts, 1380 Rue Sherbrooke O, Montréal, QC H3G 1J5', 'Used', '15', 'CA Sales tax', '1.13', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(93, '2013-9-18', 'Plastics & Rubber', '20” plastic sheets', '1 Infinite Loop, Cupertino, CA 95014', 'Brand New', '200', 'CA Sales tax', '15', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(94, '2013-9-30', 'Mining', 'Assorted Tools', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Like Brand New', '200', 'CA Sales tax', '15', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(95, '2013-12-30', 'Computer - Hardware', 'Dell XPS 13', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Used', '200', 'CA Sales tax', '15', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(96, '2014-1-6', 'Computer - Hardware', 'Dell XPS 13', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Used', '200', 'CA Sales tax', '15', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(97, '2014-1-7', 'Computer - Hardware', 'Dell XPS 13', '1 Infinite Loop, Cupertino, CA 95014', 'Used', '200', 'CA Sales tax', '15', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(98, '2014-2-3', 'Computer – Software', 'MS OFFICE 2016', '1 Infinite Loop, Cupertino, CA 95014', 'Brand New', '12', 'CA Sales tax', '0.9', '2019-12-02 00:41:30', '2019-12-02 00:41:30'),
(99, '2014-2-18', 'Computer – Software', 'MS OFFICE 2016 Bulk', '1600 Amphitheatre Parkway, Mountain View, CA 94043', 'Brand New', '1500', 'CA Sales tax', '112.5', '2019-12-02 00:41:30', '2019-12-02 00:41:30');

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
(4, '2019_12_01_054042_create_items_table', 1);

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
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `n1` int(11) NOT NULL,
  `n2` varchar(255) NOT NULL,
  `n3` varchar(255) NOT NULL,
  `n4` varchar(255) NOT NULL,
  `n5` varchar(255) NOT NULL,
  `n6` varchar(255) NOT NULL,
  `n7` varchar(255) NOT NULL,
  `n8` varchar(255) NOT NULL,
  `n9` varchar(255) NOT NULL,
  `n10` varchar(255) NOT NULL,
  `n11` varchar(255) NOT NULL,
  `n12` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
