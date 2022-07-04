-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 04 Jul 2022 pada 16.28
-- Versi server: 5.7.33
-- Versi PHP: 8.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo-app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2022_07_03_030635_create_sessions_table', 1),
(11, '2022_07_03_153548_create_todos_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9NHUHUA8RDVxeGiSVXgCQcQxKfjvNluoAJzxZL7V', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVIwMnpsRElXam81QVRud3ZvMXU0dzNNT29WYVNodlYwV0Qwd1lQQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1656947233);

-- --------------------------------------------------------

--
-- Struktur dari tabel `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin\'s Team', 1, '2022-07-03 08:47:19', '2022-07-03 08:47:19'),
(2, 2, 'almer\'s Team', 1, '2022-07-04 07:13:27', '2022-07-04 07:13:27'),
(3, 2, 'team1', 0, '2022-07-04 07:42:47', '2022-07-04 07:42:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `team_invitations`
--

INSERT INTO `team_invitations` (`id`, `team_id`, `email`, `role`, `created_at`, `updated_at`) VALUES
(1, 2, 'admin@gmail.com', 'editor', '2022-07-04 07:40:36', '2022-07-04 07:40:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `todo` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `status` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `todos`
--

INSERT INTO `todos` (`id`, `todo`, `date`, `status`, `due_date`, `created_at`, `updated_at`) VALUES
(1, 'Procyon lotor', '2022-06-17 07:39:12', 'BRL', '2022-07-13', '2022-02-21 15:46:20', '2021-07-25 08:56:21'),
(2, 'Tamiasciurus hudsonicus', '2022-06-28 14:55:25', 'CNY', '2022-07-18', '2021-12-10 16:43:04', '2021-12-30 21:46:28'),
(3, 'Pteronura brasiliensis', '2022-06-25 09:36:35', 'CNY', '2022-07-11', '2021-09-04 13:31:26', '2021-12-28 20:53:36'),
(4, 'Grus antigone', '2022-06-18 11:49:45', 'RUB', '2022-07-21', '2021-12-30 07:22:15', '2021-10-19 03:47:57'),
(5, 'Nyctereutes procyonoides', '2022-06-13 06:53:26', 'CNY', '2022-07-14', '2021-12-03 17:57:57', '2022-01-08 15:58:22'),
(7, 'Felis silvestris lybica', '2022-07-12 02:17:35', 'UGX', '2022-07-20', '2021-08-26 22:26:14', '2021-11-30 08:57:39'),
(8, 'Dendrocitta vagabunda', '2022-06-19 09:11:24', 'RUB', '2022-07-12', '2022-01-03 19:11:58', '2022-07-02 07:53:07'),
(9, 'Corvus albicollis', '2022-06-12 03:42:32', 'CNY', '2022-07-27', '2021-10-04 00:06:38', '2022-05-24 19:34:46'),
(10, 'Gabianus pacificus', '2022-06-21 14:54:19', 'CNY', '2022-07-13', '2021-10-03 14:48:59', '2021-09-07 03:01:59'),
(11, 'Lycosa godeffroyi', '2022-06-30 08:52:04', 'RUB', '2022-07-14', '2022-01-08 06:18:41', '2022-07-03 01:52:15'),
(12, 'Neophoca cinerea', '2022-06-17 00:06:25', 'ZAR', '2022-07-30', '2022-04-27 10:38:44', '2021-07-21 03:14:39'),
(13, 'Varanus komodensis', '2022-06-18 01:50:06', 'EUR', '2022-07-20', '2022-01-26 07:59:18', '2022-06-13 06:53:10'),
(14, 'Stercorarius longicausus', '2022-06-15 03:35:42', 'PHP', '2022-07-13', '2021-09-07 09:20:37', '2021-09-19 05:55:30'),
(15, 'Platalea leucordia', '2022-07-04 18:55:22', 'EUR', '2022-07-27', '2022-01-19 08:31:32', '2021-10-29 15:02:31'),
(16, 'Lutra canadensis', '2022-07-09 12:33:58', 'PHP', '2022-07-25', '2022-01-26 07:09:16', '2021-07-19 20:56:02'),
(17, 'Mirounga leonina', '2022-07-07 00:28:41', 'SLL', '2022-07-08', '2022-02-03 14:31:32', '2021-07-07 15:03:35'),
(18, 'Petaurus breviceps', '2022-07-14 20:01:57', 'SEK', '2022-07-18', '2022-03-09 00:25:31', '2021-07-04 02:02:45'),
(19, 'Buteo galapagoensis', '2022-06-12 06:32:21', 'EUR', '2022-07-20', '2022-04-27 08:45:04', '2021-12-16 16:40:09'),
(20, 'Vulpes vulpes', '2022-06-26 22:07:00', 'EUR', '2022-07-30', '2022-03-25 03:20:05', '2021-08-15 09:26:17'),
(21, 'Sus scrofa', '2022-06-14 14:28:36', 'CNY', '2022-07-30', '2022-04-10 02:17:08', '2021-09-14 12:21:42'),
(22, 'Potamochoerus porcus', '2022-07-11 14:11:28', 'CNY', '2022-07-13', '2021-08-08 04:45:56', '2022-02-04 20:48:58'),
(23, 'Tauraco porphyrelophus', '2022-06-16 22:32:36', 'CNY', '2022-07-12', '2021-10-14 23:53:44', '2021-07-18 19:01:45'),
(24, 'Kobus defassa', '2022-06-24 07:39:15', 'EUR', '2022-07-10', '2021-07-15 23:00:01', '2021-11-21 04:48:02'),
(25, 'Macropus eugenii', '2022-06-14 03:59:53', 'TJS', '2022-07-25', '2022-01-16 23:33:18', '2021-09-09 01:22:59'),
(27, 'Stenella coeruleoalba', '2022-06-02 12:27:42', 'PHP', '2022-07-11', '2021-11-14 19:26:20', '2022-03-07 17:01:18'),
(28, 'Helogale undulata', '2022-06-02 09:41:40', 'EUR', '2022-07-15', '2021-12-17 02:27:05', '2022-02-13 03:47:21'),
(29, 'Haliaetus vocifer', '2022-07-02 12:43:06', 'CNY', '2022-07-25', '2022-05-23 17:02:21', '2022-05-29 17:41:35'),
(30, 'Centrocercus urophasianus', '2022-07-05 15:11:36', 'EUR', '2022-07-26', '2021-07-17 20:38:21', '2021-07-07 10:15:47'),
(31, 'Canis mesomelas', '2022-06-07 16:13:46', 'LKR', '2022-07-29', '2022-01-11 11:57:52', '2022-03-11 23:17:42'),
(32, 'Alopex lagopus', '2022-07-05 22:35:53', 'EUR', '2022-07-25', '2022-01-07 05:29:54', '2022-03-14 20:21:06'),
(33, 'Delphinus delphis', '2022-07-04 10:33:51', 'JPY', '2022-07-28', '2022-01-20 11:40:32', '2022-03-16 20:22:39'),
(34, 'Ovis musimon', '2022-06-05 15:54:20', 'RUB', '2022-07-20', '2021-12-15 11:52:18', '2022-06-27 20:22:56'),
(35, 'Rhea americana', '2022-06-21 23:47:25', 'IDR', '2022-07-18', '2021-11-11 23:46:39', '2022-06-04 01:04:49'),
(36, 'Thamnolaea cinnmomeiventris', '2022-07-08 01:06:11', 'SYP', '2022-07-23', '2021-09-04 01:15:11', '2021-10-17 00:28:41'),
(37, 'Megaderma spasma', '2022-06-13 09:28:34', 'PEN', '2022-07-29', '2021-07-30 21:45:34', '2022-05-07 17:16:04'),
(38, 'Bucephala clangula', '2022-07-11 00:46:15', 'EUR', '2022-07-10', '2021-10-21 09:38:41', '2022-05-02 03:58:08'),
(39, 'Chelodina longicollis', '2022-07-11 17:54:29', 'JPY', '2022-07-27', '2022-04-02 20:08:49', '2021-09-07 12:08:56'),
(40, 'Alcelaphus buselaphus cokii', '2022-07-05 15:50:24', 'BYR', '2022-07-12', '2021-12-27 11:36:29', '2022-04-24 10:37:59'),
(41, 'Ara chloroptera', '2022-07-12 20:20:53', 'UGX', '2022-07-15', '2022-04-26 08:14:43', '2022-03-08 23:00:13'),
(42, 'Crotalus cerastes', '2022-06-04 22:10:36', 'PHP', '2022-07-18', '2022-05-28 16:27:13', '2022-01-07 05:49:51'),
(43, 'Felis silvestris lybica', '2022-07-02 18:49:52', 'EUR', '2022-07-10', '2022-06-10 08:30:33', '2022-04-14 02:56:39'),
(44, 'Bubo virginianus', '2022-06-14 22:03:32', 'CAD', '2022-07-21', '2021-08-18 22:51:44', '2021-07-09 18:03:55'),
(45, 'Tachyglossus aculeatus', '2022-06-10 21:05:22', 'EUR', '2022-07-17', '2022-02-25 12:42:10', '2021-11-12 14:01:36'),
(46, 'Eubalaena australis', '2022-06-20 04:09:38', 'IDR', '2022-07-24', '2022-02-21 12:58:01', '2022-05-08 19:21:45'),
(47, 'Bucephala clangula', '2022-07-03 12:30:15', 'CNY', '2022-07-26', '2021-08-02 22:46:36', '2021-10-15 14:29:17'),
(48, 'Centrocercus urophasianus', '2022-06-30 20:18:51', 'IDR', '2022-07-13', '2022-03-05 00:01:44', '2021-11-09 04:01:19'),
(49, 'Grus canadensis', '2022-07-03 09:35:42', 'IDR', '2022-07-22', '2021-07-27 07:39:10', '2021-07-29 09:14:16'),
(50, 'Ara macao', '2022-06-14 05:38:01', 'XOF', '2022-07-10', '2022-05-03 16:36:35', '2022-01-23 07:19:01'),
(51, 'Haliaeetus leucocephalus', '2022-06-13 05:28:16', 'USD', '2022-07-24', '2022-01-05 10:05:57', '2021-08-20 11:42:19'),
(52, 'Pseudalopex gymnocercus', '2022-07-02 20:41:53', 'PLN', '2022-07-11', '2021-12-11 07:43:58', '2022-04-20 14:00:51'),
(53, 'Balearica pavonina', '2022-07-08 10:36:00', 'EUR', '2022-07-11', '2021-11-18 01:52:27', '2021-10-22 14:38:01'),
(54, 'Eumetopias jubatus', '2022-06-25 06:56:51', 'CNY', '2022-07-14', '2021-09-12 17:24:30', '2022-05-19 18:47:02'),
(56, 'Hippotragus equinus', '2022-06-15 14:12:45', 'JPY', '2022-07-09', '2022-03-18 07:50:30', '2021-07-30 23:57:02'),
(57, 'Trichechus inunguis', '2022-06-19 02:33:25', 'EUR', '2022-07-17', '2021-10-30 13:52:12', '2021-12-25 10:23:00'),
(58, 'Galago crassicaudataus', '2022-07-14 03:20:56', 'RUB', '2022-07-11', '2021-11-12 23:10:27', '2021-12-19 18:43:03'),
(59, 'Rhea americana', '2022-07-10 06:39:54', 'RUB', '2022-07-08', '2021-07-19 13:50:33', '2021-07-31 09:57:12'),
(60, 'Ploceus intermedius', '2022-06-03 01:30:40', 'AMD', '2022-07-12', '2022-06-11 12:52:38', '2022-06-30 14:25:02'),
(61, 'Nucifraga columbiana', '2022-06-07 14:40:14', 'SOS', '2022-07-24', '2022-01-10 11:26:33', '2021-10-30 09:02:17'),
(62, 'Larus sp.', '2022-06-02 09:40:02', 'USD', '2022-07-24', '2022-05-23 03:54:19', '2021-07-11 12:23:23'),
(63, 'Mustela nigripes', '2022-07-01 03:00:04', 'PLN', '2022-07-29', '2022-05-15 03:08:06', '2021-08-09 19:17:08'),
(64, 'Paradoxurus hermaphroditus', '2022-07-04 12:29:10', 'BRL', '2022-07-14', '2021-08-15 04:56:00', '2022-02-21 15:12:20'),
(65, 'Gyps bengalensis', '2022-06-04 11:43:57', 'CNY', '2022-07-23', '2021-12-12 16:21:53', '2021-09-18 03:09:17'),
(66, 'Lama guanicoe', '2022-06-09 10:02:08', 'IDR', '2022-07-27', '2022-03-21 13:05:47', '2022-04-22 14:11:13'),
(67, 'Aonyx capensis', '2022-06-11 10:52:16', 'IDR', '2022-07-28', '2022-05-25 16:08:13', '2022-06-11 09:18:20'),
(68, 'Haliaetus vocifer', '2022-06-30 23:00:05', 'UZS', '2022-07-14', '2022-02-27 14:19:55', '2022-04-11 17:21:46'),
(69, 'Erinaceus frontalis', '2022-07-06 10:42:42', 'THB', '2022-07-13', '2022-02-24 01:41:48', '2021-11-21 07:04:08'),
(70, 'Chlamydosaurus kingii', '2022-07-09 00:43:30', 'JPY', '2022-07-09', '2021-12-21 21:09:11', '2021-10-08 05:16:13'),
(71, 'Phalaropus fulicarius', '2022-07-16 03:37:29', 'UAH', '2022-07-20', '2021-10-14 20:32:20', '2021-09-02 22:00:06'),
(72, 'Terrapene carolina', '2022-07-18 11:59:01', 'CNY', '2022-07-25', '2021-08-25 01:33:41', '2021-08-27 21:10:40'),
(73, 'Vulpes cinereoargenteus', '2022-07-05 23:32:41', 'AFN', '2022-07-27', '2021-12-31 11:08:56', '2021-10-07 15:22:27'),
(75, 'Theropithecus gelada', '2022-07-01 05:24:40', 'CNY', '2022-07-30', '2021-11-21 09:31:44', '2022-03-13 19:25:28'),
(76, 'Myotis lucifugus', '2022-07-08 00:00:06', 'RUB', '2022-07-11', '2022-01-06 16:36:29', '2021-07-22 18:12:34'),
(77, 'Felis silvestris lybica', '2022-06-05 13:36:37', 'IDR', '2022-07-16', '2021-12-18 16:21:53', '2021-12-18 02:07:01'),
(78, 'Uraeginthus bengalus', '2022-07-09 04:11:25', 'CNY', '2022-07-14', '2022-06-10 22:27:21', '2022-06-25 11:28:04'),
(79, 'Phoenicopterus ruber', '2022-06-20 23:54:43', 'EUR', '2022-07-21', '2021-12-16 03:22:44', '2022-05-09 13:24:26'),
(80, 'Spheniscus magellanicus', '2022-06-08 08:10:57', 'EUR', '2022-07-11', '2021-10-15 13:16:02', '2021-12-30 09:29:58'),
(81, 'Damaliscus dorcas', '2022-06-23 07:59:40', 'RUB', '2022-07-24', '2022-03-30 17:49:34', '2021-09-03 23:15:47'),
(82, 'Manouria emys', '2022-07-11 04:45:34', 'JPY', '2022-07-26', '2022-04-12 08:13:11', '2021-12-25 08:36:21'),
(83, 'Turtur chalcospilos', '2022-06-23 13:07:42', 'CNY', '2022-07-10', '2021-09-17 10:45:08', '2022-04-27 08:55:21'),
(85, 'Platalea leucordia', '2022-06-28 15:43:18', 'USD', '2022-07-10', '2022-04-22 05:03:15', '2021-11-09 16:58:37'),
(86, 'Cacatua tenuirostris', '2022-07-05 08:19:12', 'RSD', '2022-07-25', '2021-11-25 08:07:49', '2022-05-09 08:12:24'),
(87, 'Isoodon obesulus', '2022-06-05 01:22:17', 'CNY', '2022-07-29', '2021-10-22 14:42:15', '2021-09-07 22:08:36'),
(88, 'Stenella coeruleoalba', '2022-06-25 13:43:01', 'UAH', '2022-07-08', '2021-12-21 10:23:52', '2021-11-27 04:06:38'),
(89, 'Chauna torquata', '2022-06-11 05:30:12', 'EUR', '2022-07-17', '2022-04-28 20:58:17', '2021-10-25 08:47:32'),
(90, 'Sciurus vulgaris', '2022-06-21 00:39:41', 'CNY', '2022-07-10', '2022-03-29 02:13:25', '2022-03-01 01:34:58'),
(91, 'Fulica cristata', '2022-07-14 06:28:41', 'CNY', '2022-07-13', '2022-03-27 16:25:36', '2022-06-20 07:00:27'),
(92, 'Felis silvestris lybica', '2022-07-07 20:49:42', 'RUB', '2022-07-19', '2022-01-08 01:44:50', '2021-08-03 18:18:12'),
(93, 'Cyrtodactylus louisiadensis', '2022-07-18 11:41:05', 'CRC', '2022-07-26', '2021-08-15 01:46:01', '2022-03-03 19:04:08'),
(94, 'Raphicerus campestris', '2022-06-29 19:13:24', 'IDR', '2022-07-21', '2021-07-24 20:14:37', '2021-08-15 23:02:14'),
(95, 'Dicrurus adsimilis', '2022-06-18 19:42:39', 'CNY', '2022-07-21', '2022-05-20 13:31:27', '2021-07-13 06:09:39'),
(96, 'Cynictis penicillata', '2022-06-29 12:19:47', 'MDL', '2022-07-22', '2021-08-24 22:56:49', '2021-09-30 16:45:18'),
(97, 'Larus sp.', '2022-06-29 03:06:35', 'CNY', '2022-07-16', '2021-11-29 14:41:12', '2022-04-02 02:05:03'),
(98, 'Martes americana', '2022-06-27 19:15:37', 'CNY', '2022-07-20', '2022-03-15 22:58:08', '2022-04-27 19:07:49'),
(99, 'Sarkidornis melanotos', '2022-06-15 03:44:43', 'IDR', '2022-07-17', '2022-05-21 23:17:10', '2021-09-11 02:31:58'),
(100, 'unavailable', '2022-07-03 14:21:08', 'PHP', '2022-07-12', '2022-01-10 02:07:52', '2022-05-10 04:32:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$ev9bBfQv4v3kOsTOArm7Je4IKdF5u/0TkgSgucBqH5cKZS/G4ekZO', NULL, NULL, NULL, NULL, 1, 'profile-photos/37jKB8xoa5QYd6maHE6OX4Tii72nGQGF64blN7ve.png', '2022-07-03 08:47:19', '2022-07-03 08:47:38'),
(2, 'almer', 'almer@gmail.com', NULL, '$2y$10$Js5C5wvMsQ4XO.idnG3EyezcS/wIJqW.Q4JuRbnBcZz7ujaqECHAa', NULL, NULL, NULL, NULL, 3, 'profile-photos/7w8z1kTrdDso6ToM8F8XQDiH8jOsgdIMIO8tN1P9.png', '2022-07-04 07:13:27', '2022-07-04 07:43:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indeks untuk tabel `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indeks untuk tabel `todos`
--
ALTER TABLE `todos`
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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
