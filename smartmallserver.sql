-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2018 at 08:08 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartmallserver`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cloths', NULL, '2018-12-17 00:32:21', '2018-12-17 00:32:21'),
(2, 'Gents', NULL, '2018-12-17 00:32:24', '2018-12-17 00:32:24'),
(3, 'Ladies', NULL, '2018-12-17 00:32:29', '2018-12-17 00:32:29'),
(4, 'Electronics', NULL, '2018-12-17 00:32:37', '2018-12-17 00:32:37'),
(5, 'MObile', NULL, '2018-12-17 00:32:39', '2018-12-17 00:32:39'),
(6, 'Computer', NULL, '2018-12-17 00:32:46', '2018-12-17 00:32:46'),
(7, 'Grocery', NULL, '2018-12-17 00:41:46', '2018-12-17 00:41:46'),
(8, 'Zisad', NULL, '2018-12-20 11:18:10', '2018-12-20 11:18:10'),
(9, 'Arif', NULL, '2018-12-20 11:23:17', '2018-12-20 11:23:17');

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
(3, '2018_12_16_173716_shopingmall', 1),
(4, '2018_12_16_173726_category', 1),
(5, '2018_12_16_173733_product', 1),
(6, '2018_12_16_173738_order', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `product_id`, `quantity`, `notify`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '11', '48', '5', 0, NULL, '2018-12-17 01:43:36', '2018-12-17 01:43:36'),
(2, '15', '8', '2', 1, NULL, '2018-12-17 01:43:37', '2018-12-17 10:12:05'),
(3, '15', '39', '2', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(4, '13', '40', '5', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(5, '11', '33', '3', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(6, '15', '40', '1', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(7, '12', '16', '5', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(8, '13', '48', '2', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(9, '14', '13', '3', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(10, '14', '40', '2', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(11, '9', '26', '4', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(12, '11', '9', '5', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(13, '7', '22', '0', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(14, '6', '6', '5', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(15, '5', '18', '1', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(16, '9', '42', '3', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(17, '14', '7', '3', 1, NULL, '2018-12-17 01:43:37', '2018-12-17 10:12:05'),
(18, '7', '5', '3', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(19, '9', '6', '1', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(20, '12', '42', '5', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(21, '7', '10', '2', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(22, '6', '15', '0', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(23, '15', '35', '1', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(24, '10', '27', '1', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(25, '10', '18', '0', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(26, '5', '47', '3', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(27, '10', '47', '1', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(28, '15', '19', '2', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(29, '9', '38', '1', 0, NULL, '2018-12-17 01:43:37', '2018-12-17 01:43:37'),
(30, '13', '3', '0', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(31, '12', '31', '5', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(32, '15', '4', '3', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(33, '11', '2', '5', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(34, '7', '28', '5', 1, NULL, '2018-12-17 01:43:38', '2018-12-17 10:12:05'),
(35, '5', '22', '0', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(36, '13', '48', '0', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(37, '11', '12', '2', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(38, '15', '9', '2', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(39, '5', '39', '4', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(40, '12', '36', '2', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(41, '6', '41', '5', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(42, '15', '21', '2', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(43, '5', '8', '2', 1, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(44, '14', '38', '5', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(45, '6', '23', '2', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(46, '7', '15', '5', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(47, '11', '19', '3', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(48, '13', '40', '3', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(49, '6', '16', '4', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(50, '018673012602', '60', '2', 0, NULL, '2018-12-17 01:43:38', '2018-12-17 01:43:38'),
(51, '01867301260', '59', '1', 0, NULL, '2018-12-17 09:23:28', '2018-12-17 09:23:28'),
(52, '01867301260', '60', '1', 0, NULL, '2018-12-17 09:24:31', '2018-12-17 09:24:31'),
(53, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:13', '2018-12-19 14:31:13'),
(54, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:15', '2018-12-19 14:31:15'),
(55, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:16', '2018-12-19 14:31:16'),
(56, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:18', '2018-12-19 14:31:18'),
(57, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:18', '2018-12-19 14:31:18'),
(58, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:19', '2018-12-19 14:31:19'),
(59, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:20', '2018-12-19 14:31:20'),
(60, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:21', '2018-12-19 14:31:21'),
(61, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:22', '2018-12-19 14:31:22'),
(62, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:23', '2018-12-19 14:31:23'),
(63, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:23', '2018-12-19 14:31:23'),
(64, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:24', '2018-12-19 14:31:24'),
(65, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:24', '2018-12-19 14:31:24'),
(66, '01867301260', '59', '5', 0, NULL, '2018-12-19 14:31:27', '2018-12-19 14:31:27'),
(67, '01867301260', '10', '1', 0, NULL, '2018-12-19 14:31:35', '2018-12-19 14:31:35'),
(68, '01867301260', '60', '2', 0, NULL, '2018-12-19 14:40:21', '2018-12-19 14:40:21'),
(69, '01867301260', '59', '5', 0, NULL, '2018-12-19 16:17:04', '2018-12-19 16:17:04'),
(70, '01867301260', '59', '0', 0, NULL, '2018-12-19 16:53:27', '2018-12-19 16:53:27'),
(71, '01867301260', '59', '3', 0, NULL, '2018-12-20 14:04:04', '2018-12-20 14:04:04'),
(72, '01867301260', '61', '3', 0, NULL, '2018-12-20 14:04:46', '2018-12-20 14:04:46');

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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `shop_id`, `size`, `price`, `description`, `picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(58, 'Mobile phone for sale', '018673012601', NULL, '6794', 'hOava', '1563754764_1545174331.jpeg|ZISAD|', NULL, '2018-12-18 17:05:31', '2018-12-18 17:05:31'),
(59, 'Xiaomi Redimi Note 5', '018673012601', NULL, '6464340', 'hOagq skz suasks skzbs\njsvsua\nizosbw\nozbais\nizbsia', '778279149_1545174403.jpeg|ZISAD|1502486475_1545174404.jpeg|ZISAD|', NULL, '2018-12-18 17:06:43', '2018-12-18 17:06:44'),
(60, 'Nokia 1 android 8.0', '018673012601', '0', '5454', 'this is a product', '1862388462_1545174606.jpeg|ZISAD|793963683_1545174606.jpeg|ZISAD|483631898_1545174606.jpeg|ZISAD|', NULL, '2018-12-18 17:10:06', '2018-12-19 16:59:20'),
(61, 'hello 123', '018673012601', NULL, '673484', 'iaoabqkz sks sja sks s\njz ais akava\nJz aja', '817301535_1545260414.jpeg|ZISAD|399117742_1545260414.jpeg|ZISAD|', NULL, '2018-12-19 17:00:14', '2018-12-19 17:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `shopingmall`
--

CREATE TABLE `shopingmall` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopingmall`
--

INSERT INTO `shopingmall` (`id`, `name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sanmar', NULL, '2018-12-17 00:28:23', '2018-12-17 00:28:23'),
(3, 'Finlay', NULL, '2018-12-17 00:29:18', '2018-12-17 00:29:18'),
(4, 'Guljar Complex', NULL, '2018-12-17 00:29:27', '2018-12-17 00:29:27'),
(5, 'Chittagong Shoping', NULL, '2018-12-17 00:29:43', '2018-12-17 00:29:43'),
(6, 'Keyary', NULL, '2018-12-17 00:29:48', '2018-12-17 00:29:48'),
(7, 'Central Plaza', NULL, '2018-12-17 00:30:27', '2018-12-17 00:30:27'),
(8, 'Chowdhury Market', NULL, '2018-12-17 00:30:42', '2018-12-17 00:30:42'),
(9, 'Moti Complex', NULL, '2018-12-20 11:46:30', '2018-12-20 11:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shopname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopingmall` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1234',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `type`, `shopname`, `shopno`, `shopingmall`, `category`, `phone`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Sharif Noor Zisad', 'Oxygen', 'Customer', NULL, NULL, NULL, NULL, '01867301260', 'snzisad@gmail.com', '$2y$10$1eWkGxJpUnxnGH794kVnHOLcN0TfixKFQViY./z3cnQadp.Fd2ePG', NULL, '2018-12-16 15:20:44', '2018-12-20 12:45:00'),
(6, 'Sharif Noor Zisad', 'Oxygen', 'Shopkeeper', 'Numatech', NULL, '7', '3', '018673012601', 'snzisad2@gmail.com', '$2y$10$ZyUNwt5LLKQ42c1wAgLrPOyPdGLknVgie35LkKSaydTL5v5gdCkke', NULL, '2018-12-16 15:22:05', '2018-12-16 15:22:05'),
(7, 'Olen Becker', '382 O\'Connell Center Suite 059\nNewellview, DE 15744-7868', 'Admin', NULL, NULL, NULL, NULL, '018673012602', 'westley57@example.net', '$2y$10$ZyUNwt5LLKQ42c1wAgLrPOyPdGLknVgie35LkKSaydTL5v5gdCkke', 'OWC8fTOA7o', '2018-12-17 01:16:10', '2018-12-17 01:16:10'),
(8, 'Miss Angelita Medhurst MD', '6652 Kutch Circles\nPriceport, VA 54676', 'Customer', NULL, NULL, NULL, NULL, '819840', 'nfahey@example.org', '1234', 'Rn9GNBSA80', '2018-12-17 01:16:57', '2018-12-17 01:16:57'),
(9, 'Erling Olson Sr.', '7970 Fiona Village\nRoyalton, VA 71718-2520', 'Customer', NULL, NULL, NULL, NULL, '240835', 'zackery.bechtelar@example.com', '1234', 'aAKLak7CGQ', '2018-12-17 01:17:17', '2018-12-17 01:17:17'),
(10, 'Elody Trantow', '40993 Tyra Square Apt. 468\nOrnbury, UT 44365', 'Customer', NULL, NULL, NULL, NULL, '467265', 'stokes.bonita@example.net', '1234', 'DgiHBKD136', '2018-12-17 01:17:18', '2018-12-17 01:17:18'),
(11, 'Prof. Kenny Goyette', '45224 Lynch Pines Apt. 194\nKaytown, MI 40734', 'Customer', NULL, NULL, NULL, NULL, '743307', 'salvador.krajcik@example.com', '1234', 'lBmNmG7vRy', '2018-12-17 01:17:18', '2018-12-17 01:17:18'),
(12, 'Dr. Toby Johnson MD', '9134 Bernier Pike Apt. 874\nLake Florianfort, IA 86989-9002', 'Customer', NULL, NULL, NULL, NULL, '560504', 'rolando94@example.net', '1234', 'BUXSSvw02c', '2018-12-17 01:17:19', '2018-12-17 01:17:19'),
(13, 'Mrs. Genesis Bergstrom', '4956 Stoltenberg Glen Suite 436\nEast Williefurt, TN 56633', 'Customer', NULL, NULL, NULL, NULL, '451313', 'cindy.herman@example.net', '1234', 'Q0BNvIJktN', '2018-12-17 01:17:19', '2018-12-17 01:17:19'),
(14, 'Hermina O\'Kon III', '92691 Wiegand Roads\nNew Kasandrashire, MA 80768', 'Customer', NULL, NULL, NULL, NULL, '609228', 'aliza41@example.net', '1234', 'kNl3KkioeQ', '2018-12-17 01:17:20', '2018-12-17 01:17:20'),
(15, 'Prof. Clyde Lubowitz', '399 Rogahn Dale\nSouth Giovaniville, TN 73324', 'Customer', NULL, NULL, NULL, NULL, '764610', 'genevieve.bode@example.org', '1234', 'IKhl1SAMKg', '2018-12-17 01:17:20', '2018-12-17 01:17:20'),
(16, 'Ms. Alyce Auer Sr.', '77492 Ratke Course\nLowellside, DE 86448-6885', 'Customer', NULL, NULL, NULL, NULL, '980803', 'lynch.kaya@example.net', '1234', 'pNL2huo5uu', '2018-12-17 01:17:21', '2018-12-17 01:17:21'),
(17, 'Neoma Graham', '3605 Darius Trail\nSouth Fanniefort, IA 19527-3075', 'Shopkeeper', 'YObCOf', '153', '6', '6', '677826', 'kristopher.larkin@example.org', '$2y$10$Ue9Nvf0E0eeNU6kZdLC0GuLA5V1X/nZ1CBERArxLa0.YZVzoKB2q2', 'c22Zm2TJyJ', '2018-12-17 01:19:55', '2018-12-20 13:18:42'),
(18, 'Reed Kessler', '4861 Koelpin Manor\nNorth Evertland, IL 63290', 'Shopkeeper', 'FRiyLh', '184', '7', '7', '653294', 'ward.moses@example.net', '$2y$10$4Ns5qbnM4jtXE0eDMzmSyuxSchzve.jHLUJ7g0Meg7N/kJjE8iTh.', '6csm9xiJ6p', '2018-12-17 01:19:56', '2018-12-20 13:39:48'),
(19, 'Dr. Delores Zemlak', '64772 Lexus Station\nNew Cristobalfurt, GA 50877-1218', 'Shopkeeper', 'zc0rH5', '142', '1', '5', '770241', 'juana.schaden@example.com', '$2y$10$PxXcxBgjm8nDw/FICCuJUeMJ/SHKOgGkaqaxhm2oFFfI0TkKB.x9G', 'jc8Tw5389n', '2018-12-17 01:20:00', '2018-12-20 13:57:16'),
(20, 'Mrs. Bridgette Kreiger MD', '8126 Medhurst Village\nCameronport, GA 46729', 'Shopkeeper', 'Naw7hw', '118', '5', '3', '848258', 'nathanael.towne@example.org', '$2y$10$7lofQsUHtNeVroc43TD4KOmucev4arsWhQ/7e.O./DYWoJJ/YmsTq', 'q2L1XmhjmF', '2018-12-17 01:20:03', '2018-12-20 13:57:17'),
(21, 'Mrs. Gregoria McCullough V', '4946 Wilderman Prairie Suite 447\nTheomouth, WI 09105', 'Shopkeeper', 'lyI4mk', '190', '4', '2', '151672', 'sharon12@example.com', '$2y$10$SKXZaYGlvuyHXxesy6.ZK.6K91EzR.8oYe.VqCzOjrk/M5lVZgaNa', 'xM38RClXw0', '2018-12-17 01:20:04', '2018-12-20 13:57:20'),
(22, 'Prof. Michel Cormier', '1413 Roderick Cape Apt. 177\nSouth Terrell, UT 51048-8300', 'Shopkeeper', '5R2q30', '175', '1', '6', '243775', 'amelia62@example.net', '$2y$10$gmsLxvS/qMSDHRvyYdZPY.wOzZu12uO4W.QH00amf.N/HyEH09j/e', 'cf6jz5Wl10', '2018-12-17 01:20:05', '2018-12-20 13:59:43'),
(23, 'Martina Altenwerth V', '10793 Lurline Flats Suite 590\nSouth Luella, WY 40533-7600', 'Shopkeeper', 'at9u4D', '137', '6', '4', '148203', 'amelia90@example.org', '$2y$10$6ZBtIHv.ggCE8IkaJy9DKOUYs0GNVGus/EwFEJQkJLNTCOcLZ0uCG', 'lOoxTuKvFJ', '2018-12-17 01:20:05', '2018-12-20 14:00:10'),
(24, 'Prof. Edward Rutherford I', '574 Angela Spurs Apt. 831\nHagenesport, NH 56138', 'Shopkeeper', 'M7AXR2', '185', '7', '6', '501244', 'gkoepp@example.org', '$2y$10$GywR1ZZQ.CLp3k3q9JfoBuArL9Dohjo/verzXAl9qFLGWslnqGBD2', 'LfXQGq1erg', '2018-12-17 01:20:06', '2018-12-20 14:00:12'),
(25, 'Elenor Mills', '7826 Feest Heights Suite 938\nNew Elyseshire, NJ 68824', 'Shopkeeper', 'EhBZwV', '102', '6', '2', '207970', 'vandervort.lew@example.com', '1234', 'scKjVSKlSG', '2018-12-17 01:20:07', '2018-12-17 01:20:07'),
(26, 'Ms. Antonietta Rohan', '6408 Tremblay Turnpike\nPort Virgie, IA 45271-7820', 'Shopkeeper', 'CdfOO7', '121', '5', '2', '156959', 'kirstin.crooks@example.com', '$2y$10$ypt/InhxdtJfTGH/Svake.k.UknfNEZfuPMRNASEIyUdoTGvG/PcO', '5hVheROGa7', '2018-12-17 01:20:08', '2018-12-20 14:00:14'),
(27, 'Kayley Aufderhar', '684 Kevin Views Apt. 243\nKrisstad, ND 48606-2613', 'Shopkeeper', '4CuQRC', '200', '6', '4', '968777', 'kyleigh.pacocha@example.org', '1234', 'YdnJmNwuTo', '2018-12-17 01:35:34', '2018-12-17 01:35:34'),
(28, 'Bernadine Tillman', '700 Fay Avenue\nDomenicohaven, CA 70377-4866', 'Shopkeeper', 'bfI7ph', '158', '5', '6', '944910', 'daisy37@example.com', '1234', 'vcxvDZ0dxg', '2018-12-17 01:35:34', '2018-12-17 01:35:34'),
(29, 'Laurianne Funk MD', '564 Watsica Vista Apt. 666\nDavisview, AK 12760-2713', 'Shopkeeper', 'UDUIj2', '152', '4', '3', '156341', 'weber.maria@example.org', '1234', '3GioaBSXnc', '2018-12-17 01:35:34', '2018-12-17 01:35:34'),
(30, 'Lawson Gaylord', '99333 Durgan Burg\nSchowalterville, OR 14102-0010', 'Shopkeeper', '6hr0QB', '160', '7', '7', '591625', 'cloyd27@example.org', '1234', 'ddyMJ5lVUY', '2018-12-17 01:35:34', '2018-12-17 01:35:34'),
(31, 'Jan Rippin', '48587 Natalie Meadows Suite 947\nLake Antoinette, OH 09518', 'Shopkeeper', 'pkDWzH', '148', '4', '6', '954328', 'vivien.sipes@example.org', '1234', 'r3DwyYIFwy', '2018-12-17 01:35:34', '2018-12-17 01:35:34'),
(32, 'Kelley Heidenreich', '240 Precious Vista Suite 603\nNorth Zella, SC 48949-4737', 'Shopkeeper', '8FxQXj', '152', '4', '2', '851578', 'adrienne.hyatt@example.com', '1234', 'T6ZYy3bGcA', '2018-12-17 01:35:34', '2018-12-17 01:35:34'),
(33, 'Vena Jacobs', '477 Tyree Throughway Apt. 459\nJolieland, MN 32591-8063', 'Shopkeeper', 'ITMLAN', '146', '3', '5', '198666', 'cheller@example.com', '1234', 'edO3g2msLw', '2018-12-17 01:35:34', '2018-12-17 01:35:34'),
(34, 'Ms. Bonita Marks', '6637 Johnston Forge Apt. 183\nEast Ada, AK 59371-2689', 'Shopkeeper', 'B28WbT', '129', '8', '2', '831858', 'vandervort.alverta@example.com', '1234', 'kLJBVilNdh', '2018-12-17 01:35:34', '2018-12-17 01:35:34'),
(35, 'Dr. Carolyne Howell DVM', '6128 Melvin Radial Apt. 368\nLake Isabelbury, NY 63534-7651', 'Shopkeeper', '0OyUCP', '177', '5', '5', '340069', 'shea97@example.org', '1234', '6rXpOe3lRM', '2018-12-17 01:35:34', '2018-12-17 01:35:34'),
(36, 'Mr. Dedric O\'Hara III', '51409 Braxton Grove Suite 517\nCristview, CT 14009', 'Shopkeeper', 'MAued0', '119', '5', '7', '580055', 'harley.moore@example.com', '1234', 'BZfNOnnGgh', '2018-12-17 01:35:34', '2018-12-17 01:35:34'),
(37, 'Sharif Noor Zisad', 'Oxygen', 'Customer', NULL, NULL, NULL, NULL, '0186730126056', 'snzisad50@gmail.com', '$2y$10$GZR8nVlXxafdrz.bpEa5Mu.GpIH.Hj.u2D86osGMQFL0zRHSxPBHG', NULL, '2018-12-17 17:07:10', '2018-12-17 17:07:10'),
(38, 'Sharif Noor Zisad', 'Oxygen', 'Customer', NULL, NULL, NULL, NULL, '01867301260515', 'snzisad20@gmail.com', '$2y$10$H8encuwJEDBwblnvMJpljOrymRjo5TcKe3zOcDOYW85vlr9yTtU4a', NULL, '2018-12-17 17:12:16', '2018-12-17 17:12:16'),
(39, 'Sharif Noor Zisad', 'Oxygen', 'Customer', NULL, NULL, NULL, NULL, '01867301260513', 'snzisad22@gmail.com', '$2y$10$xv6x.0.aXt9jF8uqblD3ZeLuw8XjWvbPoQqZeYGJFmtxED8AvulTC', NULL, '2018-12-17 17:12:40', '2018-12-17 17:12:40'),
(40, 'Sharif Noor Zisad', 'Oxygen', 'Customer', NULL, NULL, NULL, NULL, '0186730126068', 'snzisadjg@gmail.com', '$2y$10$ujLTI7yy/xjiJfk/405kfeunhz6RT6bTq9VWadiwA5rkZ3/EningK', NULL, '2018-12-17 17:19:25', '2018-12-17 17:19:25'),
(41, 'Sharif Noor Zisad', 'Oxygen', 'Customer', NULL, NULL, NULL, NULL, '018673012606868', 'snzisadjghg@gmail.com', '$2y$10$E.Ii2ql8pT3bhGT1ZQEokOgTSWZRx1uOSgzElxufumpCqIaL.Qd4u', NULL, '2018-12-17 17:19:48', '2018-12-17 17:19:48'),
(42, 'Sharif Noor Zisad', 'Oxygen', 'Customer', NULL, NULL, NULL, NULL, '01867301260689', 'snzisadjf@gmail.com', '$2y$10$9kCDg9TsR754dyE90hzexuIe.OxlKTOuIAytkOyr6mNkJsd6zkw4e', NULL, '2018-12-17 17:21:56', '2018-12-17 17:21:56'),
(43, 'Sharif Noor Zisad', 'Oxygen', 'Customer', NULL, NULL, NULL, NULL, '01867301260683', 'snzisadjfh@gmail.com', '$2y$10$y6rhwtG4kyGpfeaszs7hQOlSGnWgHQ.6Kbq3w/epBiGr2gLCaJBHO', NULL, '2018-12-17 17:25:07', '2018-12-17 17:25:07'),
(44, 'Sharif Noor Zisad', 'Oxygen', 'Customer', NULL, NULL, NULL, NULL, '01867301260686', 'snzisadhhu@gmail.com', '$2y$10$I4zSptCguEJauAF0JgxagOGbFOUYNPb/n0eJzVtSubIyK1ik/J6IS', NULL, '2018-12-17 17:26:52', '2018-12-17 17:26:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopingmall`
--
ALTER TABLE `shopingmall`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `shopingmall`
--
ALTER TABLE `shopingmall`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
