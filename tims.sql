-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 09 Sep 2019 pada 02.47
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

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
-- Struktur dari tabel `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id`, `ticket_id`, `image`, `created_at`, `updated_at`) VALUES
(9, 9, '20190908215038-WeMHW9xsAtMMH40Q.jpg', '2019-09-08 14:50:38', '2019-09-08 14:50:38'),
(10, 10, '20190908215153-4Xpu5bHdqQQuTQkI.png', '2019-09-08 14:51:52', '2019-09-08 14:51:53'),
(11, 11, '20190908215258-p9bXZkRe3WM20ruy.png', '2019-09-08 14:52:58', '2019-09-08 14:52:58'),
(12, 11, '20190908215258-S80qHcQZXfqw6XRm.jpg', '2019-09-08 14:52:58', '2019-09-08 14:52:58'),
(13, 11, '20190908215259-3Jb5vL0QMaU6J5iq.jpg', '2019-09-08 14:52:59', '2019-09-08 14:52:59'),
(14, 12, '20190909001900-H7Afd2ffftzkQgrC.png', '2019-09-08 17:19:01', '2019-09-08 17:19:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
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
(10, '2019_09_08_180554_create_images_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticketit`
--

CREATE TABLE `ticketit` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `status_id` int(10) UNSIGNED NOT NULL,
  `priority_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `agent_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ticketit`
--

INSERT INTO `ticketit` (`id`, `subject`, `content`, `html`, `status_id`, `priority_id`, `user_id`, `agent_id`, `category_id`, `created_at`, `updated_at`, `completed_at`) VALUES
(1, 'Bangku Rusak', 'ini bangku rusak', '<p>ini bangku rusak<br /></p>', 3, 1, 2, 1, 1, '2019-08-20 17:53:42', '2019-09-08 11:55:16', '2019-08-20 18:11:16'),
(2, 'kecelakaan pecel lele', 'saya pesan pecel lele, tapi diberinya pecel ayam', '<p>saya pesan pecel lele, tapi diberinya pecel ayam<br /></p>', 2, 2, 1, 3, 5, '2019-08-20 18:26:38', '2019-09-08 11:55:37', NULL),
(3, 'tolong', 'tolong belikan saya minum', 'tolong belikan saya minum', 2, 1, 3, 2, 4, '2019-08-21 02:51:44', '2019-08-21 02:56:10', NULL),
(4, 'ac panas', 'kurang freon', 'kurang freon', 3, 1, 3, 1, 1, '2019-08-21 03:17:06', '2019-08-21 03:19:49', '2019-08-21 03:19:48'),
(5, 'dsaasd', 'asddsa', '<p>asddsa<br /></p>', 1, 1, 1, 1, 1, '2019-09-08 14:06:36', '2019-09-08 14:06:36', NULL),
(6, 'adeee', 'deaa', '<p>deaa<br /></p>', 1, 1, 1, 4, 5, '2019-09-08 14:24:04', '2019-09-08 14:24:04', NULL),
(7, 'adeee', 'deaa', '<p>deaa<br /></p>', 1, 1, 1, 1, 5, '2019-09-08 14:35:38', '2019-09-08 14:35:38', NULL),
(8, 'deaa', 'adee', '<p>adee<br /></p>', 1, 1, 1, 3, 1, '2019-09-08 14:44:02', '2019-09-08 14:44:02', NULL),
(9, 'deaa', 'adee', '<p>adee<br /></p>', 1, 1, 1, 1, 1, '2019-09-08 14:50:37', '2019-09-08 14:50:37', NULL),
(10, 'tesuto', 'asdewo', '<p>asdewo<br /></p>', 1, 1, 1, 2, 4, '2019-09-08 14:51:52', '2019-09-08 14:51:52', NULL),
(11, 'iniitutui', 'asddewoeoi', '<p>asddewoeoi<br /></p>', 2, 1, 1, 3, 1, '2019-09-08 14:52:58', '2019-09-08 15:27:12', NULL),
(12, 'Di kantin ada yang merokoookk', 'toloong masa di kantek ada yang ngeroko okwokwokwokw', '<p>toloong masa di kantek ada yang ngeroko okwokwokwokw<br /></p>', 1, 1, 5, 1, 4, '2019-09-08 17:18:49', '2019-09-08 17:28:05', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticketit_audits`
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
-- Struktur dari tabel `ticketit_categories`
--

CREATE TABLE `ticketit_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ticketit_categories`
--

INSERT INTO `ticketit_categories` (`id`, `name`, `color`) VALUES
(1, 'Sarana & Prasarana', '#000000'),
(2, 'Gedung', '#0000ff'),
(3, 'Tenaga Kependidikan', '#ff8000'),
(4, 'Kebersihan', '#008000'),
(5, 'Insiden', '#ff0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticketit_categories_users`
--

CREATE TABLE `ticketit_categories_users` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ticketit_categories_users`
--

INSERT INTO `ticketit_categories_users` (`category_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 3),
(4, 3),
(5, 3),
(4, 4),
(5, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticketit_comments`
--

CREATE TABLE `ticketit_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ticketit_comments`
--

INSERT INTO `ticketit_comments` (`id`, `content`, `html`, `user_id`, `ticket_id`, `created_at`, `updated_at`) VALUES
(1, 'sudah saya fix gan', '<p>sudah saya fix gan<br /></p>', 1, 1, '2019-08-20 17:55:54', '2019-08-20 17:55:54'),
(2, 'xxz', '<p>xxz<br /></p>', 1, 1, '2019-08-20 18:11:48', '2019-08-20 18:11:48'),
(3, 'SUDAH SAYA BELIKAN PAK BOS', '<p>SUDAH SAYA BELIKAN PAK BOS<br /></p>', 2, 3, '2019-08-21 02:55:31', '2019-08-21 02:55:31'),
(4, 'sudah.....,,', 'sudah.....,,', 1, 4, '2019-08-21 03:19:44', '2019-08-21 03:19:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticketit_priorities`
--

CREATE TABLE `ticketit_priorities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ticketit_priorities`
--

INSERT INTO `ticketit_priorities` (`id`, `name`, `color`) VALUES
(1, 'High', '#830909'),
(2, 'Normal', '#090909'),
(3, 'Low', '#125f71');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticketit_settings`
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
-- Dumping data untuk tabel `ticketit_settings`
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
-- Struktur dari tabel `ticketit_statuses`
--

CREATE TABLE `ticketit_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ticketit_statuses`
--

INSERT INTO `ticketit_statuses` (`id`, `name`, `color`) VALUES
(1, 'Menunggu', '#000000'),
(2, 'Diproses', '#1bb4b4'),
(3, 'Selesai', '#68cb50'),
(4, 'Dibuka Kembali', '#000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `identitas` enum('Mahasiswa','Staff','Dosen','Lain-Lain') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Mahasiswa',
  `noidentitas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgurl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ticketit_admin` tinyint(1) NOT NULL DEFAULT '0',
  `ticketit_agent` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `identitas`, `noidentitas`, `imgurl`, `password`, `remember_token`, `created_at`, `updated_at`, `ticketit_admin`, `ticketit_agent`) VALUES
(1, 'Fadil Ardiansyah', 'vclude@gmail.com', NULL, 'Mahasiswa', '', '', '$2y$10$sMb3gTdE9.tV2sAVRs03H.ACLM174aFc01HPD/aNnHsexl9RMnYwa', NULL, '2019-08-20 17:20:07', '2019-09-07 21:29:41', 1, 1),
(2, 'Bukan Fadil', 'a@a.com', NULL, 'Mahasiswa', '', '', '$2y$10$0B7gH4.css9n4VtVEcGxae8IP16t85Y6NVh8Z4piqO5maFIdMjSmy', NULL, '2019-08-20 17:53:09', '2019-09-07 21:29:41', 0, 1),
(3, 'Haydar', 'haydar@gmail.com', NULL, 'Mahasiswa', '', '', '$2y$10$h1/bpcVa8xWQVTsViEZ1ZuSEQT8ZE2PdChFPuDIv5VEoBuqHMF5tW', NULL, '2019-08-21 02:51:18', '2019-09-07 21:29:41', 0, 1),
(4, 'surveyor2', 'b@b.com', NULL, 'Mahasiswa', '', '', '$2y$10$3kBWZN1cFgvgK/5K.sAWAu5cQt.IrS0.EuwKBdETw.T19xWP4aJw6', NULL, '2019-09-07 21:28:35', '2019-09-07 21:29:41', 0, 1),
(5, 'mhs1', 'mhs1@gmail.com', NULL, 'Mahasiswa', '12332112332', 'lenny.jpg', '$2y$10$JyOFnsTmsVmWEAgRmGJ4MO7/QlJYd4pKZpMs6v6K2Y4PXtgPdLUzG', NULL, '2019-09-08 16:17:17', '2019-09-08 16:17:17', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `ticketit`
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
-- Indeks untuk tabel `ticketit_audits`
--
ALTER TABLE `ticketit_audits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ticketit_categories`
--
ALTER TABLE `ticketit_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ticketit_comments`
--
ALTER TABLE `ticketit_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketit_comments_user_id_index` (`user_id`),
  ADD KEY `ticketit_comments_ticket_id_index` (`ticket_id`);

--
-- Indeks untuk tabel `ticketit_priorities`
--
ALTER TABLE `ticketit_priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ticketit_settings`
--
ALTER TABLE `ticketit_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticketit_settings_slug_unique` (`slug`),
  ADD UNIQUE KEY `ticketit_settings_lang_unique` (`lang`),
  ADD KEY `ticketit_settings_lang_index` (`lang`),
  ADD KEY `ticketit_settings_slug_index` (`slug`);

--
-- Indeks untuk tabel `ticketit_statuses`
--
ALTER TABLE `ticketit_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `ticketit`
--
ALTER TABLE `ticketit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `ticketit_audits`
--
ALTER TABLE `ticketit_audits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ticketit_categories`
--
ALTER TABLE `ticketit_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ticketit_comments`
--
ALTER TABLE `ticketit_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `ticketit_priorities`
--
ALTER TABLE `ticketit_priorities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ticketit_settings`
--
ALTER TABLE `ticketit_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `ticketit_statuses`
--
ALTER TABLE `ticketit_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
