-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 04:27 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'john', 'johnsu6361@gmail.com', NULL, '$2y$10$OUGcU1vsJxZ7Vq.7No8DdOdBMr4mLg/mSFTwMNVaAp90nucwWgLpm', 1, NULL, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(2, 'tAken', 'nitehawkk@gmail.com', NULL, '$2y$10$OB194DlfXQajFes/s/a0/uDD2rn.rRvbw5z1Od6iwDXGJCcZIH4sq', 1, NULL, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(3, 'Admin', 'admin@gmail.com', NULL, '$2y$10$xwMolKUXsGIptLGH5uEODOJPQm81z4LxiwvbYzNxtt5vULnsnQ3MC', 1, NULL, '2021-05-19 08:58:03', '2021-05-19 08:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Category 1', 'category-1', 1, NULL, NULL),
(2, 'Category 2', 'category-2', 1, NULL, NULL),
(3, 'Category 3', 'category-3', 1, NULL, NULL),
(4, 'Category 4', 'category-4', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pagename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagetitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videourl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title`, `code`, `currency_code`, `currency_name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', 'AFN', 'Afghani', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(2, 'Albania', 'AL', 'ALL', 'Lek', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(3, 'Algeria', 'DZ', 'DZD', 'Dinar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(4, 'American Samoa', 'AS', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(5, 'Andorra', 'AD', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(6, 'Angola', 'AO', 'AOA', 'Kwanza', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(7, 'Anguilla', 'AI', 'XCD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(8, 'Antigua and Barbuda', 'AG', 'XCD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(9, 'Argentina', 'AR', 'ARS', 'Peso', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(10, 'Armenia', 'AM', 'AMD', 'Dram', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(11, 'Aruba', 'AW', 'AWG', 'Guilder', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(12, 'Australia', 'AU', 'AUD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(13, 'Austria', 'AT', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(14, 'Azerbaijan', 'AZ', 'AZN', 'Manat', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(15, 'Bahamas', 'BS', 'BSD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(16, 'Bahrain', 'BH', 'BHD', 'Dinar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(17, 'Bangladesh', 'BD', 'BDT', 'Taka', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(18, 'Barbados', 'BB', 'BBD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(19, 'Belarus', 'BY', 'BYR', 'Ruble', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(20, 'Belgium', 'BE', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(21, 'Belize', 'BZ', 'BZD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(22, 'Benin', 'BJ', 'XOF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(23, 'Bermuda', 'BM', 'BMD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(24, 'Bhutan', 'BT', 'BTN', 'Ngultrum', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(25, 'Bolivia', 'BO', 'BOB', 'Boliviano', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(26, 'Bosnia and Herzegovina', 'BA', 'BAM', 'Marka', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(27, 'Botswana', 'BW', 'BWP', 'Pula', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(28, 'Bouvet Island', 'BV', 'NOK', 'Krone', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(29, 'Brazil', 'BR', 'BRL', 'Real', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(30, 'British Indian Ocean Territory', 'IO', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(31, 'British Virgin Islands', 'VG', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(32, 'Brunei', 'BN', 'BND', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(33, 'Bulgaria', 'BG', 'BGN', 'Lev', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(34, 'Burkina Faso', 'BF', 'XOF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(35, 'Burundi', 'BI', 'BIF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(36, 'Cambodia', 'KH', 'KHR', 'Riels', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(37, 'Cameroon', 'CM', 'XAF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(38, 'Canada', 'CA', 'CAD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(39, 'Cape Verde', 'CV', 'CVE', 'Escudo', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(40, 'Cayman Islands', 'KY', 'KYD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(41, 'Central African Republic', 'CF', 'XAF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(42, 'Chad', 'TD', 'XAF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(43, 'Chile', 'CL', 'CLP', 'Peso', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(44, 'China', 'CN', 'CNY', 'Yuan Renminbi', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(45, 'Christmas Island', 'CX', 'AUD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(46, 'Cocos Islands', 'CC', 'AUD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(47, 'Colombia', 'CO', 'COP', 'Peso', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(48, 'Comoros', 'KM', 'KMF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(49, 'Cook Islands', 'CK', 'NZD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(50, 'Costa Rica', 'CR', 'CRC', 'Colon', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(51, 'Croatia', 'HR', 'HRK', 'Kuna', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(52, 'Cuba', 'CU', 'CUP', 'Peso', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(53, 'Cyprus', 'CY', 'CYP', 'Pound', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(54, 'Czech Republic', 'CZ', 'CZK', 'Koruna', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(55, 'Democratic Republic of the Congo', 'CD', 'CDF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(56, 'Denmark', 'DK', 'DKK', 'Krone', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(57, 'Djibouti', 'DJ', 'DJF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(58, 'Dominica', 'DM', 'XCD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(59, 'Dominican Republic', 'DO', 'DOP', 'Peso', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(60, 'East Timor', 'TL', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(61, 'Ecuador', 'EC', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(62, 'Egypt', 'EG', 'EGP', 'Pound', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(63, 'El Salvador', 'SV', 'SVC', 'Colone', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(64, 'Equatorial Guinea', 'GQ', 'XAF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(65, 'Eritrea', 'ER', 'ERN', 'Nakfa', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(66, 'Estonia', 'EE', 'EEK', 'Kroon', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(67, 'Ethiopia', 'ET', 'ETB', 'Birr', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(68, 'Falkland Islands', 'FK', 'FKP', 'Pound', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(69, 'Faroe Islands', 'FO', 'DKK', 'Krone', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(70, 'Fiji', 'FJ', 'FJD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(71, 'Finland', 'FI', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(72, 'France', 'FR', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(73, 'French Guiana', 'GF', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(74, 'French Polynesia', 'PF', 'XPF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(75, 'French Southern Territories', 'TF', 'EUR', 'Euro  ', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(76, 'Gabon', 'GA', 'XAF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(77, 'Gambia', 'GM', 'GMD', 'Dalasi', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(78, 'Georgia', 'GE', 'GEL', 'Lari', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(79, 'Germany', 'DE', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(80, 'Ghana', 'GH', 'GHC', 'Cedi', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(81, 'Gibraltar', 'GI', 'GIP', 'Pound', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(82, 'Greece', 'GR', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(83, 'Greenland', 'GL', 'DKK', 'Krone', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(84, 'Grenada', 'GD', 'XCD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(85, 'Guadeloupe', 'GP', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(86, 'Guam', 'GU', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(87, 'Guatemala', 'GT', 'GTQ', 'Quetzal', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(88, 'Guinea', 'GN', 'GNF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(89, 'Guinea-Bissau', 'GW', 'XOF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(90, 'Guyana', 'GY', 'GYD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(91, 'Haiti', 'HT', 'HTG', 'Gourde', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(92, 'Heard Island and McDonald Islands', 'HM', 'AUD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(93, 'Honduras', 'HN', 'HNL', 'Lempira', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(94, 'Hong Kong', 'HK', 'HKD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(95, 'Hungary', 'HU', 'HUF', 'Forint', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(96, 'Iceland', 'IS', 'ISK', 'Krona', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(97, 'India', 'IN', 'INR', 'Rupee', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(98, 'Indonesia', 'ID', 'IDR', 'Rupiah', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(99, 'Iran', 'IR', 'IRR', 'Rial', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(100, 'Iraq', 'IQ', 'IQD', 'Dinar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(101, 'Ireland', 'IE', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(102, 'Israel', 'IL', 'ILS', 'Shekel', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(103, 'Italy', 'IT', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(104, 'Ivory Coast', 'CI', 'XOF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(105, 'Jamaica', 'JM', 'JMD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(106, 'Japan', 'JP', 'JPY', 'Yen', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(107, 'Jordan', 'JO', 'JOD', 'Dinar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(108, 'Kazakhstan', 'KZ', 'KZT', 'Tenge', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(109, 'Kenya', 'KE', 'KES', 'Shilling', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(110, 'Kiribati', 'KI', 'AUD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(111, 'Kuwait', 'KW', 'KWD', 'Dinar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(112, 'Kyrgyzstan', 'KG', 'KGS', 'Som', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(113, 'Laos', 'LA', 'LAK', 'Kip', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(114, 'Latvia', 'LV', 'LVL', 'Lat', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(115, 'Lebanon', 'LB', 'LBP', 'Pound', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(116, 'Lesotho', 'LS', 'LSL', 'Loti', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(117, 'Liberia', 'LR', 'LRD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(118, 'Libya', 'LY', 'LYD', 'Dinar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(119, 'Liechtenstein', 'LI', 'CHF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(120, 'Lithuania', 'LT', 'LTL', 'Litas', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(121, 'Luxembourg', 'LU', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(122, 'Macao', 'MO', 'MOP', 'Pataca', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(123, 'Macedonia', 'MK', 'MKD', 'Denar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(124, 'Madagascar', 'MG', 'MGA', 'Ariary', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(125, 'Malawi', 'MW', 'MWK', 'Kwacha', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(126, 'Malaysia', 'MY', 'MYR', 'Ringgit', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(127, 'Maldives', 'MV', 'MVR', 'Rufiyaa', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(128, 'Mali', 'ML', 'XOF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(129, 'Malta', 'MT', 'MTL', 'Lira', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(130, 'Marshall Islands', 'MH', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(131, 'Martinique', 'MQ', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(132, 'Mauritania', 'MR', 'MRO', 'Ouguiya', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(133, 'Mauritius', 'MU', 'MUR', 'Rupee', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(134, 'Mayotte', 'YT', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(135, 'Mexico', 'MX', 'MXN', 'Peso', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(136, 'Micronesia', 'FM', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(137, 'Moldova', 'MD', 'MDL', 'Leu', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(138, 'Monaco', 'MC', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(139, 'Mongolia', 'MN', 'MNT', 'Tugrik', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(140, 'Montserrat', 'MS', 'XCD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(141, 'Morocco', 'MA', 'MAD', 'Dirham', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(142, 'Mozambique', 'MZ', 'MZN', 'Meticail', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(143, 'Myanmar', 'MM', 'MMK', 'Kyat', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(144, 'Namibia', 'NA', 'NAD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(145, 'Nauru', 'NR', 'AUD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(146, 'Nepal', 'NP', 'NPR', 'Rupee', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(147, 'Netherlands', 'NL', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(148, 'Netherlands Antilles', 'AN', 'ANG', 'Guilder', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(149, 'New Caledonia', 'NC', 'XPF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(150, 'New Zealand', 'NZ', 'NZD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(151, 'Nicaragua', 'NI', 'NIO', 'Cordoba', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(152, 'Niger', 'NE', 'XOF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(153, 'Nigeria', 'NG', 'NGN', 'Naira', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(154, 'Niue', 'NU', 'NZD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(155, 'Norfolk Island', 'NF', 'AUD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(156, 'North Korea', 'KP', 'KPW', 'Won', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(157, 'Northern Mariana Islands', 'MP', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(158, 'Norway', 'NO', 'NOK', 'Krone', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(159, 'Oman', 'OM', 'OMR', 'Rial', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(160, 'Pakistan', 'PK', 'PKR', 'Rupee', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(161, 'Palau', 'PW', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(162, 'Palestinian Territory', 'PS', 'ILS', 'Shekel', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(163, 'Panama', 'PA', 'PAB', 'Balboa', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(164, 'Papua New Guinea', 'PG', 'PGK', 'Kina', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(165, 'Paraguay', 'PY', 'PYG', 'Guarani', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(166, 'Peru', 'PE', 'PEN', 'Sol', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(167, 'Philippines', 'PH', 'PHP', 'Peso', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(168, 'Pitcairn', 'PN', 'NZD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(169, 'Poland', 'PL', 'PLN', 'Zloty', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(170, 'Portugal', 'PT', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(171, 'Puerto Rico', 'PR', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(172, 'Qatar', 'QA', 'QAR', 'Rial', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(173, 'Republic of the Congo', 'CG', 'XAF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(174, 'Reunion', 'RE', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(175, 'Romania', 'RO', 'RON', 'Leu', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(176, 'Russia', 'RU', 'RUB', 'Ruble', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(177, 'Rwanda', 'RW', 'RWF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(178, 'Saint Helena', 'SH', 'SHP', 'Pound', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(179, 'Saint Kitts and Nevis', 'KN', 'XCD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(180, 'Saint Lucia', 'LC', 'XCD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(181, 'Saint Pierre and Miquelon', 'PM', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(182, 'Saint Vincent and the Grenadines', 'VC', 'XCD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(183, 'Samoa', 'WS', 'WST', 'Tala', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(184, 'San Marino', 'SM', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(185, 'Sao Tome and Principe', 'ST', 'STD', 'Dobra', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(186, 'Saudi Arabia', 'SA', 'SAR', 'Rial', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(187, 'Senegal', 'SN', 'XOF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(188, 'Serbia and Montenegro', 'CS', 'RSD', 'Dinar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(189, 'Seychelles', 'SC', 'SCR', 'Rupee', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(190, 'Sierra Leone', 'SL', 'SLL', 'Leone', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(191, 'Singapore', 'SG', 'SGD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(192, 'Slovakia', 'SK', 'SKK', 'Koruna', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(193, 'Slovenia', 'SI', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(194, 'Solomon Islands', 'SB', 'SBD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(195, 'Somalia', 'SO', 'SOS', 'Shilling', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(196, 'South Africa', 'ZA', 'ZAR', 'Rand', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(197, 'South Georgia and the South Sandwich Islands', 'GS', 'GBP', 'Pound', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(198, 'South Korea', 'KR', 'KRW', 'Won', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(199, 'Spain', 'ES', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(200, 'Sri Lanka', 'LK', 'LKR', 'Rupee', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(201, 'Sudan', 'SD', 'SDD', 'Dinar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(202, 'Suriname', 'SR', 'SRD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(203, 'Svalbard and Jan Mayen', 'SJ', 'NOK', 'Krone', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(204, 'Swaziland', 'SZ', 'SZL', 'Lilangeni', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(205, 'Sweden', 'SE', 'SEK', 'Krona', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(206, 'Switzerland', 'CH', 'CHF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(207, 'Syria', 'SY', 'SYP', 'Pound', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(208, 'Taiwan', 'TW', 'TWD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(209, 'Tajikistan', 'TJ', 'TJS', 'Somoni', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(210, 'Tanzania', 'TZ', 'TZS', 'Shilling', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(211, 'Thailand', 'TH', 'THB', 'Baht', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(212, 'Togo', 'TG', 'XOF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(213, 'Tokelau', 'TK', 'NZD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(214, 'Tonga', 'TO', 'TOP', 'Pa\'anga', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(215, 'Trinidad and Tobago', 'TT', 'TTD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(216, 'Tunisia', 'TN', 'TND', 'Dinar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(217, 'Turkey', 'TR', 'TRY', 'Lira', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(218, 'Turkmenistan', 'TM', 'TMM', 'Manat', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(219, 'Turks and Caicos Islands', 'TC', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(220, 'Tuvalu', 'TV', 'AUD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(221, 'U.S. Virgin Islands', 'VI', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(222, 'Uganda', 'UG', 'UGX', 'Shilling', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(223, 'Ukraine', 'UA', 'UAH', 'Hryvnia', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(224, 'United Arab Emirates', 'AE', 'AED', 'Dirham', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(225, 'United Kingdom', 'GB', 'GBP', 'Pound', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(226, 'United States', 'US', 'USD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(227, 'United States Minor Outlying Islands', 'UM', 'USD', 'Dollar ', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(228, 'Uruguay', 'UY', 'UYU', 'Peso', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(229, 'Uzbekistan', 'UZ', 'UZS', 'Som', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(230, 'Vanuatu', 'VU', 'VUV', 'Vatu', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(231, 'Vatican', 'VA', 'EUR', 'Euro', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(232, 'Venezuela', 'VE', 'VEF', 'Bolivar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(233, 'Vietnam', 'VN', 'VND', 'Dong', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(234, 'Wallis and Futuna', 'WF', 'XPF', 'Franc', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(235, 'Western Sahara', 'EH', 'MAD', 'Dirham', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(236, 'Yemen', 'YE', 'YER', 'Rial', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(237, 'Zambia', 'ZM', 'ZMK', 'Kwacha', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03'),
(238, 'Zimbabwe', 'ZW', 'ZWD', 'Dollar', 1, '2021-05-19 08:58:03', '2021-05-19 08:58:03');

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inner_banners`
--

CREATE TABLE `inner_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2018_11_12_101619_create_countries_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_02_22_191424_create_logos_table', 1),
(6, '2021_02_22_235830_create_cms_table', 1),
(7, '2021_03_04_165721_create_categories_table', 1),
(8, '2021_03_04_193102_create_products_table', 1),
(9, '2021_03_23_000521_create_galleries_table', 1),
(10, '2021_03_24_185111_create_inquiries_table', 1),
(11, '2021_03_26_214743_create_sliders_table', 1),
(12, '2021_03_26_225540_create_inner_banners_table', 1),
(13, '2021_04_07_224423_create_orders_table', 1),
(14, '2021_04_07_224537_create_order_items_table', 1),
(15, '2021_04_08_185147_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_price` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `grand_total` double(8,2) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` enum('cash_on_delivery','paypal','stripe','card') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_on_delivery',
  `item_count` int(11) DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `package_id`, `package_name`, `package_price`, `billing_fullname`, `billing_email`, `payment_status`, `status`, `grand_total`, `is_paid`, `payment_method`, `item_count`, `notes`, `billing_address`, `billing_city`, `billing_state`, `billing_zipcode`, `billing_phone`, `order_number`, `shipping_fullname`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_zipcode`, `shipping_phone`, `created_at`, `updated_at`) VALUES
(24, 6, 1, 'Basic Plan', '5.99', 'iga', 'iga@gmail.com', 'completed', 1, 5.99, 1, 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-18 09:53:37', '2021-05-18 09:53:55'),
(28, 9, 1, 'Basic Plan', '5.99', 'joseph', 'joseph1@gmail.com', 'pending', 1, 5.99, 0, 'stripe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-19 03:47:03', '2021-05-19 03:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `price`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Basic Plan', 5.99, '<p>for 1 month = 0.19p per day</p>\r\n\r\n<ul class=\"six-month\">\r\n	<li>&pound;25.99 for six months = 0.14p per day</li>\r\n	<li>&pound;32.99 for 1 year = 0.09p per day</li>\r\n</ul>\r\n\r\n<h2>Basic account</h2>\r\n\r\n<ul class=\"basic-account\">\r\n	<li>Lucky number Two, Three, Four, Five, number search.</li>\r\n	<li>Filter out Odd</li>\r\n	<li>Filter out even numbers</li>\r\n</ul>', 1, '2021-05-18 03:35:18', '2021-05-18 03:59:37'),
(2, 'Pro Plan', 9.99, '<p>for 1 month = 0.33p per day</p>\r\n\r\n<ul>\r\n	<li>&pound;29.99 for six months = 0.16p per day</li>\r\n	<li>&pound;36.99 for 1 year = 0.10p per day</li>\r\n</ul>\r\n\r\n<h2>Pro account</h2>\r\n\r\n<ul>\r\n	<li>Lucky number Two, Three, Four, Five, number search.</li>\r\n	<li>Filter out Odd</li>\r\n	<li>Filter out even numbers</li>\r\n</ul>', 1, '2021-05-18 03:35:42', '2021-05-18 03:35:42'),
(3, 'Combination', 36.99, '<p>for 1 month</p>\r\n\r\n<p>(no 1-year subscription)</p>\r\n\r\n<h2>All possible combinations account</h2>\r\n\r\n<ul>\r\n	<li>Finds the high value winning numbers for you</li>\r\n	<li>Filter out Odd</li>\r\n	<li>Filter out even numbers</li>\r\n	<li>Select wanted numbers</li>\r\n</ul>', 1, '2021-05-18 03:36:04', '2021-05-18 03:36:04');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` int(11) DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `old_price` double DEFAULT NULL,
  `new_price` double DEFAULT NULL,
  `imagepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
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
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inner_banners`
--
ALTER TABLE `inner_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inner_banners`
--
ALTER TABLE `inner_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
