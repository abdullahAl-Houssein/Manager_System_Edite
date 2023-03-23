-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18 مارس 2023 الساعة 20:32
-- إصدار الخادم: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manager_system`
--

-- --------------------------------------------------------

--
-- بنية الجدول `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(7, 'Abdullah', 'abdullah@gmail.com', '$2y$10$E56YgNn8vbIdAcd/nVZtO.VSrdYDmwTJ7O4G06kn46HL6dfkX3nh.', '2023-03-01 12:51:06', '2023-03-01 12:51:06');

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Porgramming', '2023-03-01 12:01:25', '2023-03-01 12:01:25'),
(2, 'English', '2023-03-01 12:01:37', '2023-03-01 12:01:37'),
(3, 'Midcal', '2023-03-01 12:01:47', '2023-03-01 12:01:47'),
(4, 'Arabic', '2023-03-01 12:02:03', '2023-03-01 12:02:03');

-- --------------------------------------------------------

--
-- بنية الجدول `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `small_desc` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `courses`
--

INSERT INTO `courses` (`id`, `categorie_id`, `teacher_id`, `name`, `small_desc`, `desc`, `img`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Programming 1', 'this is small desc', 'Browse Article\'s stylish catalog of contemporary, mid century & modern furniture from world renowned designers at accessible prices. Shop now!', 'tsMvfidyHGNXKXIBYRRgrBCfODRjlekN5Sb0yj7M.png', '2023-03-01 12:58:51', '2023-03-01 13:01:24'),
(2, 1, 5, 'Programming 2', 'this is small desc', 'That aged well. Our durable leather pieces have a lot of natural character that’ll shine through for years (and years and years) to come.', 'NJOBIHfb0614SvXkf6VSLAzo23kFnj5mCsewMAsR.png', '2023-03-01 13:02:23', '2023-03-01 13:02:51'),
(3, 1, 5, 'course num 1 category 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '11.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(4, 1, 6, 'course num 1 category 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '12.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(5, 1, 4, 'course num 1 category 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '13.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(6, 1, 6, 'course num 1 category 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '14.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(7, 1, 6, 'course num 1 category 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '15.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(8, 1, 6, 'course num 1 category 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '16.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(9, 2, 4, 'course num 2 category 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '21.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(11, 2, 6, 'course num 2 category 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '23.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(12, 2, 2, 'course num 2 category 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '24.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(13, 2, 6, 'course num 2 category 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '25.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(14, 2, 4, 'course num 2 category 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '26.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(15, 3, 1, 'course num 3 category 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '31.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(16, 3, 6, 'course num 3 category 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '32.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(17, 3, 5, 'course num 3 category 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '33.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(18, 3, 5, 'course num 3 category 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '34.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(19, 3, 2, 'course num 3 category 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '35.png', '2023-03-01 13:07:19', '2023-03-01 13:07:19'),
(20, 3, 7, 'course num 3 category 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur dolorum!', '36.png', '2023-03-01 13:07:20', '2023-03-01 13:07:20');

-- --------------------------------------------------------

--
-- بنية الجدول `course_students`
--

CREATE TABLE `course_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','taking','reject') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `course_students`
--

INSERT INTO `course_students` (`id`, `course_id`, `student_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 49, 'pending', NULL, NULL),
(2, 7, 49, 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
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
-- بنية الجدول `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_25_141322_create_categories_table', 1),
(6, '2023_02_25_141348_create_teachers_table', 1),
(7, '2023_02_25_141359_create_courses_table', 1),
(8, '2023_02_25_141443_create_students_table', 1),
(9, '2023_02_25_141457_create_admins_table', 1),
(11, '2023_02_25_201726_create_tests_table', 1),
(12, '2023_02_26_000637_create_settings_table', 1),
(13, '2023_02_26_012523_create_newsletters_table', 1),
(14, '2023_02_26_012605_create_messages_table', 1),
(16, '2023_03_01_222325_create_course_students_table', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- بنية الجدول `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `work_hours` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `map` text NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `insta` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `settings`
--

INSERT INTO `settings` (`id`, `name`, `logo`, `favicon`, `city`, `address`, `phone`, `work_hours`, `email`, `map`, `fb`, `tw`, `insta`, `created_at`, `updated_at`) VALUES
(1, 'Abdullah Al-Houssein', 'logo.png', 'favicon.png', 'Syria - Aleppo - Azaz', 'univercity Aleppo', '00352681516348', '8am to 6pm', 'abdullah@gmail.com', 'map here', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', '2023-03-01 12:01:12', '2023-03-01 12:01:12');

-- --------------------------------------------------------

--
-- بنية الجدول `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `specialty`, `created_at`, `updated_at`) VALUES
(5, 'Wilmer Ruecker', 'flatley.lily@gmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(6, 'Theresa Wilderman', 'pfannerstill.kacey@hill.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(8, 'Tommie Hirthe', 'wrussel@moen.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(9, 'Sigmund Gottlieb', 'nader.lily@gerlach.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(10, 'Grace Oberbrunner', 'frussel@runolfsdottir.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(11, 'Braden Bergstrom', 'boris.murray@yahoo.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(12, 'Ms. Reyna Lakin', 'eryn.braun@yahoo.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(13, 'Prof. Dedrick Gusikowski', 'wunsch.sandy@gmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(14, 'Dr. Kira Hagenes', 'frami.cassidy@gmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(15, 'Arthur Shanahan V', 'kristopher35@yahoo.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(16, 'Francesco Barrows', 'amarvin@yahoo.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(17, 'Myrtie Towne', 'general.wolff@hotmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(18, 'Keagan Hills', 'zkshlerin@gmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(19, 'Clemmie King DVM', 'laurine.schumm@rempel.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(20, 'Mrs. Shawna Windler Jr.', 'zboncak.derick@gaylord.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(21, 'Mrs. Delia Friesen', 'brekke.anabelle@wolff.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(22, 'Mr. Jasen Schiller', 'paucek.myrna@gmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(23, 'Joan Prosacco', 'legros.kris@hotmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(24, 'Dr. Jevon Graham I', 'windler.victor@bailey.org', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(25, 'Dr. Johnny Jakubowski Sr.', 'murray.carolyn@hotmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(26, 'Prof. Dusty Yost Sr.', 'aurelia.rosenbaum@bogisich.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(27, 'Janice Murazik', 'schaefer.filomena@heller.info', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(28, 'Ms. Burdette Armstrong DVM', 'streich.eulalia@weber.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(29, 'Harold Hyatt', 'jettie43@yahoo.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(30, 'Dylan Tremblay', 'ernest74@yahoo.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(31, 'Gerardo Corkery Sr.', 'rconroy@yahoo.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(32, 'Dr. Beatrice Weissnat', 'crodriguez@hotmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(33, 'Ransom Kris III', 'walsh.genoveva@hotmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(34, 'Prof. Madisen Purdy I', 'olabadie@brown.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(35, 'Cara Gulgowski II', 'wokuneva@gmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(36, 'Brady Hand', 'qokon@steuber.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(37, 'Houston Doyle', 'astrid.brekke@yahoo.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(38, 'Heloise Tremblay', 'miller.mercedes@stiedemann.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(39, 'Prof. Sigurd Bartoletti IV', 'maxine23@bechtelar.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(40, 'Dr. Tyshawn Fisher I', 'herminio62@hotmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(41, 'Savanna Robel', 'lauretta.williamson@olson.info', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(42, 'Marie Klocko', 'reba.quigley@gmail.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(43, 'Savion Dickinson MD', 'hodkiewicz.grayce@rippin.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(44, 'Kiera Swaniawski', 'carole29@yahoo.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(45, 'Mr. Percival Kohler', 'jjenkins@oreilly.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(46, 'Silas Labadie', 'prunte@heathcote.org', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(47, 'Buddy Schoen', 'gmohr@schuppe.biz', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(48, 'Prof. Dorothy Hodkiewicz V', 'adams.guiseppe@yahoo.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00'),
(49, 'Rita Hoeger', 'wmiller@yahoo.com', NULL, '2023-03-01 12:12:00', '2023-03-01 12:12:00');

-- --------------------------------------------------------

--
-- بنية الجدول `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `phone`, `specialty`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Abdullah Al-Houssein', '00352681516348', 'FrontEnd Devlopment', 'rKES2SgPbeTd7gky3zuzeL96IXAzDru5ZhQdzoTR.png', '2023-03-01 12:52:16', '2023-03-01 12:52:16'),
(2, 'Ali Al-Omar', NULL, 'FrontEnd Devlopment', 'wpnv9UUai8m3Fzddrsa2MOMz7Vjx7M4Wn5sU0L2c.png', '2023-03-01 12:54:23', '2023-03-01 12:54:23'),
(3, 'Ameer Al-Ameer', '+84889816208', 'C#', 'JaM28C2u8KnQUPMpfnKXXfjWX89HEHDlLRtY0Kz4.png', '2023-03-01 12:54:52', '2023-03-01 12:54:52'),
(4, 'Yacine Al-Yacine', '+84889816208', 'FrontEnd Devlopment', 'yucL2WWTp9oyopjvZy3MO3D2BaEsoNWh7LoF304A.png', '2023-03-01 12:55:22', '2023-03-01 12:55:22'),
(5, 'Omar Al-Omar', NULL, 'C#', 'gt363k0tYDGjWsz5cQqDVYdRMqyAyGNPsfedrRPQ.png', '2023-03-01 12:55:54', '2023-03-01 12:55:54'),
(6, 'Khaled Al-Khaled', '00352681516348', 'FrontEnd Devlopment', 'qXW1Sa4k2ue67SsDOmLFVjQwYiVaEbULEdwfiagJ.png', '2023-03-01 12:56:15', '2023-03-01 12:56:15'),
(7, 'Abdullah Al-Abullah', '12 42 8488 45', 'web devlopment', '5WQs6ltIv1dOCzjrUlaRYEyIunvZAyESvIm0UZeM.png', '2023-03-01 12:56:40', '2023-03-01 12:56:40'),
(8, 'Hamza', '214545454', 'mdsnd', 'RfOnjQJvhGbkgPgutqOOJGXhuD3Nh3fEUhA87HuO.png', '2023-03-08 06:59:02', '2023-03-08 06:59:02');

-- --------------------------------------------------------

--
-- بنية الجدول `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `desc` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `tests`
--

INSERT INTO `tests` (`id`, `name`, `specialty`, `desc`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Courtney Boyer', NULL, 'Quis magni nemo nulla vero quia laborum. Consequuntur adipisci ut aut et quia. Dignissimos quidem maiores perspiciatis vitae.', '1.png', '2023-03-01 12:11:37', '2023-03-01 12:11:37'),
(2, 'Sammy Gorczany', NULL, 'Rerum quam dolor non dolorum aperiam eligendi quisquam. Alias porro accusamus tempora sit. Odit ratione est quia tempore atque. Aliquid illum cumque quis quia fugiat.', '1.png', '2023-03-01 12:11:37', '2023-03-01 12:11:37'),
(3, 'Arielle Denesik', NULL, 'Asperiores et similique harum eum est. Blanditiis non recusandae pariatur iure et dicta. Sunt explicabo dolorem aut sit rerum voluptas.', '1.png', '2023-03-01 12:11:37', '2023-03-01 12:11:37');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_categorie_id_foreign` (`categorie_id`),
  ADD KEY `courses_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `course_students`
--
ALTER TABLE `course_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_students_course_id_foreign` (`course_id`),
  ADD KEY `course_students_student_id_foreign` (`student_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `course_students`
--
ALTER TABLE `course_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `courses_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- القيود للجدول `course_students`
--
ALTER TABLE `course_students`
  ADD CONSTRAINT `course_students_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
