-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2019 at 04:52 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tims`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `level_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unix_time` int(11) NOT NULL,
  `datetime` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2015_07_22_115516_create_ticketit_tables', 2),
(4, '2015_07_22_123254_alter_users_table', 2),
(5, '2015_09_29_123456_add_completed_at_column_to_ticketit_table', 2),
(6, '2015_10_08_123457_create_settings_table', 2),
(7, '2016_01_15_002617_add_htmlcontent_to_ticketit_and_comments', 2),
(8, '2016_01_15_040207_enlarge_settings_columns', 2),
(9, '2016_01_15_120557_add_indexes', 2),
(10, '2019_09_08_180554_create_images_table', 3),
(11, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(12, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(13, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(14, '2016_06_01_000004_create_oauth_clients_table', 4),
(15, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
(16, '2017_11_04_103444_create_laravel_logger_activity_table', 5),
(17, '2018_08_11_003343_create_log_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Pengaduan FTUI Personal Access Client', 'Gbl3uZAqsfhFMMRBhlvo8dtyy51ZBnZxswO9gYHX', 'http://localhost', 1, 0, 0, '2019-09-09 04:46:39', '2019-09-09 04:46:39'),
(2, NULL, 'Pengaduan FTUI Password Grant Client', 'B9pCu5stjGTz8O1kawGfy6kCLLT9JHOx1it0PD38', 'http://localhost', 0, 1, 0, '2019-09-09 04:46:39', '2019-09-09 04:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-09-09 04:46:39', '2019-09-09 04:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `ticketit`
--

CREATE TABLE `ticketit` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `priority_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` int(10) UNSIGNED NOT NULL,
  `agent_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_audits`
--

CREATE TABLE `ticketit_audits` (
  `id` int(10) UNSIGNED NOT NULL,
  `operation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_categories`
--

CREATE TABLE `ticketit_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_categories`
--

INSERT INTO `ticketit_categories` (`id`, `name`, `alternate`, `color`) VALUES
(1, 'FACILITIES_AND_INFRASTRUCTURE', 'Sarana dan Prasarana', '#000000'),
(2, 'BUILDINGS', 'Bangunan', '#0000ff'),
(3, 'HUMAN_RESOURCE', 'Tenaga Kependidikan', '#ff8000'),
(4, 'CLEANING_AND_GARDENING', 'Kebersihan', '#008000'),
(5, 'INCIDENT_AND_RULE_VIOLATION', 'Insiden', '#ff0000'),
(6, 'OTHERS', 'Dan Lain Lain', '#FFFFFF');

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_categories_users`
--

CREATE TABLE `ticketit_categories_users` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_categories_users`
--

INSERT INTO `ticketit_categories_users` (`category_id`, `user_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 3),
(4, 3),
(5, 3),
(4, 4),
(5, 4),
(1, 2),
(2, 2),
(5, 13),
(3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_comments`
--

CREATE TABLE `ticketit_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_priorities`
--

CREATE TABLE `ticketit_priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_priorities`
--

INSERT INTO `ticketit_priorities` (`id`, `name`, `color`) VALUES
(1, 'High', '#830909'),
(2, 'Normal', '#090909'),
(3, 'Low', '#125f71');

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_settings`
--

CREATE TABLE `ticketit_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_settings`
--

INSERT INTO `ticketit_settings` (`id`, `lang`, `slug`, `value`, `default`, `created_at`, `updated_at`) VALUES
(1, NULL, 'main_route', 'keluhan', 'tickets', '2019-08-20 17:20:21', '2019-08-20 18:08:25'),
(2, NULL, 'main_route_path', 'keluhan', 'tickets', '2019-08-20 17:20:21', '2019-08-20 18:08:40'),
(3, NULL, 'admin_route', 'admin', 'tickets-admin', '2019-08-20 17:20:21', '2019-08-20 18:07:20'),
(4, NULL, 'admin_route_path', 'admin', 'tickets-admin', '2019-08-20 17:20:21', '2019-08-20 18:07:30'),
(5, NULL, 'master_template', 'layouts.app', 'layouts.app', '2019-08-20 17:20:21', '2019-08-20 17:20:21'),
(6, NULL, 'bootstrap_version', '4', '4', '2019-08-20 17:20:21', '2019-08-20 17:20:21'),
(7, NULL, 'email.template', 'ticketit::emails.templates.ticketit', 'ticketit::emails.templates.ticketit', '2019-08-20 17:20:21', '2019-08-20 17:20:21'),
(8, NULL, 'email.header', 'Ticket Update', 'Ticket Update', '2019-08-20 17:20:21', '2019-08-20 17:20:21'),
(9, NULL, 'email.signoff', 'Thank you for your patience!', 'Thank you for your patience!', '2019-08-20 17:20:21', '2019-08-20 17:20:21'),
(10, NULL, 'email.signature', 'Your friends', 'Your friends', '2019-08-20 17:20:21', '2019-08-20 17:20:21'),
(11, NULL, 'email.dashboard', 'My Dashboard', 'My Dashboard', '2019-08-20 17:20:21', '2019-08-20 17:20:21'),
(12, NULL, 'email.google_plus_link', '#', '#', '2019-08-20 17:20:21', '2019-08-20 17:20:21'),
(13, NULL, 'email.facebook_link', '#', '#', '2019-08-20 17:20:22', '2019-08-20 17:20:22'),
(14, NULL, 'email.twitter_link', '#', '#', '2019-08-20 17:20:22', '2019-08-20 17:20:22'),
(15, NULL, 'email.footer', 'Powered by Ticketit', 'Powered by Ticketit', '2019-08-20 17:20:22', '2019-08-20 17:20:22'),
(16, NULL, 'email.footer_link', 'https://github.com/thekordy/ticketit', 'https://github.com/thekordy/ticketit', '2019-08-20 17:20:22', '2019-08-20 17:20:22'),
(17, NULL, 'email.color_body_bg', '#FFFFFF', '#FFFFFF', '2019-08-20 17:20:22', '2019-08-20 17:20:22'),
(18, NULL, 'email.color_header_bg', '#44B7B7', '#44B7B7', '2019-08-20 17:20:22', '2019-08-20 17:20:22'),
(19, NULL, 'email.color_content_bg', '#F46B45', '#F46B45', '2019-08-20 17:20:22', '2019-08-20 17:20:22'),
(20, NULL, 'email.color_footer_bg', '#414141', '#414141', '2019-08-20 17:20:22', '2019-08-20 17:20:22'),
(21, NULL, 'email.color_button_bg', '#AC4D2F', '#AC4D2F', '2019-08-20 17:20:22', '2019-08-20 17:20:22'),
(22, NULL, 'default_status_id', '1', '1', '2019-08-20 17:20:22', '2019-08-20 17:20:22'),
(23, NULL, 'default_close_status_id', '3', '0', '2019-08-20 17:20:22', '2019-08-20 17:20:24'),
(24, NULL, 'default_reopen_status_id', '4', '0', '2019-08-20 17:20:22', '2019-08-20 17:20:24'),
(25, NULL, 'paginate_items', '10', '10', '2019-08-20 17:20:22', '2019-08-20 17:20:22'),
(26, NULL, 'length_menu', 'a:2:{i:0;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}i:1;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}}', 'a:2:{i:0;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}i:1;a:3:{i:0;i:10;i:1;i:50;i:2;i:100;}}', '2019-08-20 17:20:22', '2019-08-20 17:20:22'),
(27, NULL, 'status_notification', '1', '1', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(28, NULL, 'comment_notification', '1', '1', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(29, NULL, 'queue_emails', '0', '0', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(30, NULL, 'assigned_notification', '1', '1', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(31, NULL, 'agent_restrict', '0', '0', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(32, NULL, 'close_ticket_perm', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(33, NULL, 'reopen_ticket_perm', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(34, NULL, 'delete_modal_type', 'builtin', 'builtin', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(35, NULL, 'editor_enabled', '1', '1', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(36, NULL, 'include_font_awesome', '1', '1', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(37, NULL, 'summernote_locale', 'en', 'en', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(38, NULL, 'editor_html_highlighter', '1', '1', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(39, NULL, 'codemirror_theme', 'monokai', 'monokai', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(40, NULL, 'summernote_options_json_file', 'vendor/kordy/ticketit/src/JSON/summernote_init.json', 'vendor/kordy/ticketit/src/JSON/summernote_init.json', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(41, NULL, 'purifier_config', 'a:3:{s:15:\"HTML.SafeIframe\";s:4:\"true\";s:20:\"URI.SafeIframeRegexp\";s:72:\"%^(http://|https://|//)(www.youtube.com/embed/|player.vimeo.com/video/)%\";s:18:\"URI.AllowedSchemes\";a:5:{s:4:\"data\";b:1;s:4:\"http\";b:1;s:5:\"https\";b:1;s:6:\"mailto\";b:1;s:3:\"ftp\";b:1;}}', 'a:3:{s:15:\"HTML.SafeIframe\";s:4:\"true\";s:20:\"URI.SafeIframeRegexp\";s:72:\"%^(http://|https://|//)(www.youtube.com/embed/|player.vimeo.com/video/)%\";s:18:\"URI.AllowedSchemes\";a:5:{s:4:\"data\";b:1;s:4:\"http\";b:1;s:5:\"https\";b:1;s:6:\"mailto\";b:1;s:3:\"ftp\";b:1;}}', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(42, NULL, 'routes', 'C:\\Users\\arie\\Github\\tims\\vendor/kordy/ticketit/src/routes.php', 'C:\\Users\\arie\\Github\\tims\\vendor/kordy/ticketit/src/routes.php', '2019-08-20 17:20:23', '2019-08-20 17:20:23'),
(45, NULL, 'default_proses_status_id', '2', '2', '2019-08-20 18:54:41', '2019-08-20 18:54:41'),
(46, NULL, 'proses_ticket_perm', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', 'a:3:{s:5:\"owner\";b:1;s:5:\"agent\";b:1;s:5:\"admin\";b:1;}', '2019-08-20 18:56:05', '2019-08-20 18:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `ticketit_statuses`
--

CREATE TABLE `ticketit_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alternate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketit_statuses`
--

INSERT INTO `ticketit_statuses` (`id`, `name`, `alternate`, `color`) VALUES
(1, 'AWAITING_FOLLOWUP', 'Menunggu Konfirmasi', '#000000'),
(2, 'IS_BEING_FOLLOWED_UP', 'Sedang Diproses', '#1bb4b4'),
(3, 'FINISHED', 'Selesai', '#68cb50'),
(4, 'REOPENED', 'Dibuka Kembali', '#000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orgcode` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `faculty` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `studyprog` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `eduprog` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `identitas` enum('Mahasiswa','Staff','Dosen','Lain-Lain') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Mahasiswa',
  `noidentitas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgurl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ticketit_admin` tinyint(1) NOT NULL DEFAULT 0,
  `ticketit_agent` tinyint(1) NOT NULL DEFAULT 0,
  `firebasetoken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `orgcode`, `faculty`, `studyprog`, `eduprog`, `email`, `email_verified_at`, `identitas`, `noidentitas`, `imgurl`, `password`, `remember_token`, `created_at`, `updated_at`, `ticketit_admin`, `ticketit_agent`, `firebasetoken`) VALUES
(1, 'Fadil', NULL, NULL, 'Teknik CCIT', NULL, 'vclude@gmail.com', NULL, 'Mahasiswa', '09091999', '', '$2y$10$lHKSLyNmvCCRbWoq2JK47.0ZJRDlajtEVBsoVeLGJ5UIpyKGrudpi', NULL, '2019-08-20 17:20:07', '2019-11-20 21:16:53', 1, 1, NULL),
(2, 'Bukan Fadil', NULL, NULL, NULL, NULL, 'a@a.com', NULL, 'Mahasiswa', '', '', '$2y$10$0B7gH4.css9n4VtVEcGxae8IP16t85Y6NVh8Z4piqO5maFIdMjSmy', NULL, '2019-08-20 17:53:09', '2019-11-20 21:16:53', 0, 1, ''),
(3, 'Haydar', NULL, NULL, NULL, NULL, 'haydar@gmail.com', NULL, 'Mahasiswa', '', '', '$2y$10$h1/bpcVa8xWQVTsViEZ1ZuSEQT8ZE2PdChFPuDIv5VEoBuqHMF5tW', NULL, '2019-08-21 02:51:18', '2019-11-20 21:16:53', 0, 1, ''),
(4, 'surveyor2', NULL, NULL, NULL, NULL, 'b@b.com', NULL, 'Mahasiswa', '', '', '$2y$10$3kBWZN1cFgvgK/5K.sAWAu5cQt.IrS0.EuwKBdETw.T19xWP4aJw6', NULL, '2019-09-07 21:28:35', '2019-11-20 21:16:53', 0, 1, ''),
(5, 'mhs1', NULL, NULL, NULL, NULL, 'mhs1@gmail.com', NULL, 'Mahasiswa', '12332112332', 'lenny.jpg', '$2y$10$JyOFnsTmsVmWEAgRmGJ4MO7/QlJYd4pKZpMs6v6K2Y4PXtgPdLUzG', NULL, '2019-09-08 16:17:17', '2019-09-08 16:17:17', 0, 0, ''),
(6, 'Fpdel', NULL, NULL, NULL, NULL, 'fdel@asd.com', NULL, 'Mahasiswa', NULL, NULL, '$2y$10$IwIEopfZ1ZaXYeSjqm.xzuj2AG61Z32bT/.AWogzfDUaURlSqrMZa', NULL, '2019-09-17 06:43:41', '2019-09-17 06:43:41', 0, 0, ''),
(7, 'Muhammad Farhan Hanif', NULL, NULL, NULL, NULL, 'cv2lex@gmail.com', NULL, 'Mahasiswa', '1231234123', NULL, '$2y$10$e0OfP3tO/UEUJaOvX9YEou2sS.3KyEzb3rjn7oECwRXdbFhDy.uzK', NULL, '2019-09-17 09:54:04', '2019-11-21 02:52:32', 0, 0, 'esMKGXhDhUs:APA91bFeZW1SgNkxCseh4PbaLu-1bwEBaWIlUtnxMzlTsP5lsIE6fuLici1TwUkDbl8gxRAktUeT_TgBwbMNKMyJYlzFJ2Dgq3ZX2IbgqrHZD_g48xA_R_g9hBsTgmElRDo_SEHIC4ZM'),
(8, 'Indah Ayu Yuliani', NULL, NULL, NULL, NULL, 'Indah.ayu@gmail.com', NULL, 'Mahasiswa', '1231234123', NULL, '$2y$10$xXQ29JHDoeLQVWOB.Rw15.KqMe2DVlIUCOFlY.KVxshNahak6E6.O', NULL, '2019-10-17 07:26:55', '2019-10-17 07:26:55', 0, 0, ''),
(9, 'Mahasiswa01', NULL, NULL, NULL, NULL, 'Mahasiswa01@ui.ac.id', NULL, 'Mahasiswa', '1710010120', NULL, '$2y$10$7GzgUxgub92A2ASxvAqiq.A6NcZ.SS4uONpUJdw7FS2vvenH0pau.', NULL, '2019-11-20 20:23:07', '2019-11-20 20:23:07', 0, 0, NULL),
(10, 'Mahasiswa02', NULL, NULL, NULL, NULL, 'Mahasiswa02@ui.ac.id', NULL, 'Mahasiswa', '1710010121', NULL, '$2y$10$nKuWXaKehGW8NpxEWPSxLeb3dpIxXYXBZ.K6IVMWeizNWPrBsTCBi', NULL, '2019-11-20 20:23:56', '2019-11-20 20:23:56', 0, 0, NULL),
(11, 'Surveyor Prasarana', NULL, NULL, NULL, NULL, 'sarpras@ui.ac.id', NULL, 'Staff', '371003040245', NULL, '$2y$10$UP98gYmqp3l6RM2Zl4xQaOy1omwnm0EwbW1OWOFHkIslW7qAoiLn.', NULL, '2019-11-20 20:25:26', '2019-11-21 03:10:54', 0, 1, 'cg6o7nhA77c:APA91bEn9MHy_RT2vthAtNdtLwyNyM2dX3UqKb3VTLB8e2OyMM78lDbWDPcOiD74owYMGM8vcawyy7hXmiRuJWgVJmvoluEOys3Z-IksYB7NSZhg60RnQhFg3ExwWaKh_Pv6njgJY2wq'),
(12, 'Surveyor Bangunan', NULL, NULL, NULL, NULL, 'bangunan@ui.ac.id', NULL, 'Staff', '95230593046', NULL, '$2y$10$MDwFeNnhcTisB5gmfMFPbeMdUZE8zsXudoAeVlLPbltFGqN0wFPHC', NULL, '2019-11-20 21:10:39', '2019-11-21 03:05:49', 0, 1, NULL),
(13, 'Surveyor Insiden', NULL, NULL, NULL, NULL, 'insiden@ui.ac.id', NULL, 'Staff', '9034235346', NULL, '$2y$10$PBd4golr6AChC.Q7eDs5gOjcUAEFJDQA.2D1m6SGk3wvn.XfSXwnG', NULL, '2019-11-20 21:11:59', '2019-11-21 03:10:16', 0, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `ticketit`
--
ALTER TABLE `ticketit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketit_subject_index` (`subject`),
  ADD KEY `ticketit_status_id_index` (`status_id`),
  ADD KEY `ticketit_priority_id_index` (`priority_id`),
  ADD KEY `ticketit_user_id_index` (`user_id`),
  ADD KEY `ticketit_agent_id_index` (`agent_id`),
  ADD KEY `ticketit_category_id_index` (`category_id`),
  ADD KEY `ticketit_completed_at_index` (`completed_at`);

--
-- Indexes for table `ticketit_audits`
--
ALTER TABLE `ticketit_audits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketit_categories`
--
ALTER TABLE `ticketit_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketit_comments`
--
ALTER TABLE `ticketit_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketit_comments_user_id_index` (`user_id`),
  ADD KEY `ticketit_comments_ticket_id_index` (`ticket_id`);

--
-- Indexes for table `ticketit_priorities`
--
ALTER TABLE `ticketit_priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticketit_settings`
--
ALTER TABLE `ticketit_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticketit_settings_slug_unique` (`slug`),
  ADD UNIQUE KEY `ticketit_settings_lang_unique` (`lang`),
  ADD KEY `ticketit_settings_lang_index` (`lang`),
  ADD KEY `ticketit_settings_slug_index` (`slug`);

--
-- Indexes for table `ticketit_statuses`
--
ALTER TABLE `ticketit_statuses`
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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticketit`
--
ALTER TABLE `ticketit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticketit_audits`
--
ALTER TABLE `ticketit_audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticketit_categories`
--
ALTER TABLE `ticketit_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ticketit_comments`
--
ALTER TABLE `ticketit_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticketit_priorities`
--
ALTER TABLE `ticketit_priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticketit_settings`
--
ALTER TABLE `ticketit_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ticketit_statuses`
--
ALTER TABLE `ticketit_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
