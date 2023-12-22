-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2023 at 02:24 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_12_06_022837_students_table', 1),
(11, '2023_12_11_065506_add_student_image_field', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `gender`, `age`, `email`, `created_at`, `updated_at`, `student_image`) VALUES
(1, 'Roslyn', 'Renner', 'Female', '19', 'sgutmann@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(2, 'Molly', 'Dicki', 'Male', '25', 'winifred.hettinger@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(3, 'Lazaro', 'Miller', 'Male', '18', 'jchristiansen@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(4, 'Kirsten', 'Rau', 'Female', '20', 'kian.murazik@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(5, 'Barrett', 'Reichert', 'Female', '20', 'rogelio26@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(6, 'Roberto', 'Bernier', 'Female', '25', 'price83@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(7, 'Evans', 'Crist', 'Female', '21', 'olga80@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(8, 'Rory', 'Leannon', 'Male', '23', 'rhiannon.skiles@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(9, 'Etha', 'Hyatt', 'Female', '24', 'carmelo.farrell@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(10, 'Clarabelle', 'Stiedemann', 'Female', '24', 'beatty.emmalee@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(11, 'Trycia', 'Hoppe', 'Male', '23', 'goyette.wallace@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(12, 'Narciso', 'Rippin', 'Male', '18', 'mlehner@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(13, 'Mohamed', 'Spinka', 'Male', '21', 'kkoepp@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(14, 'Ian', 'Marquardt', 'Male', '20', 'amparo.ebert@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(15, 'Lois', 'Thompson', 'Male', '18', 'allene.von@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(16, 'Janelle', 'Bins', 'Female', '25', 'eldridge25@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(17, 'Molly', 'Koepp', 'Female', '22', 'juana10@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(18, 'Katelin', 'Mosciski', 'Male', '25', 'gabrielle.rice@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(19, 'Wiley', 'Conroy', 'Female', '23', 'leonel68@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(20, 'Braeden', 'Kihn', 'Male', '18', 'bkiehn@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(21, 'Josue', 'Heidenreich', 'Female', '18', 'destinee.goyette@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(22, 'Ramiro', 'Upton', 'Female', '19', 'troy44@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(23, 'Ian', 'Lemke', 'Male', '23', 'mable24@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(24, 'Jamal', 'Parker', 'Male', '19', 'kiehn.daniella@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(25, 'Fletcher', 'Flatley', 'Female', '19', 'trath@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(26, 'Caleb', 'Mosciski', 'Female', '22', 'julien11@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(28, 'Felicity', 'Reichel', 'Female', '24', 'evelyn.berge@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(29, 'Kendall', 'Adams', 'Female', '19', 'felix.barton@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(30, 'Lucious', 'Bahringer', 'Male', '19', 'kuhic.maryse@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(31, 'Julianne', 'Bechtelar', 'Male', '19', 'mae.abshire@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(32, 'Jamal', 'Fritsch', 'Male', '21', 'qgreen@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(33, 'Aliyah', 'Luettgen', 'Male', '21', 'little.michaela@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(34, 'Joseph', 'Adams', 'Female', '19', 'arohan@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(35, 'Haylee', 'Heller', 'Female', '18', 'corkery.norene@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(36, 'Brook', 'Borer', 'Male', '23', 'dprohaska@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(37, 'Assunta', 'Reichert', 'Male', '20', 'jensen.gorczany@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(38, 'Hulda', 'Altenwerth', 'Male', '19', 'theo.schimmel@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(39, 'Eve', 'Cremin', 'Female', '23', 'ahaley@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(40, 'Treva', 'Cassin', 'Male', '19', 'ogreenfelder@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(41, 'Tressa', 'Turcotte', 'Female', '20', 'tcorkery@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(42, 'Dino', 'West', 'Female', '22', 'katelin.stoltenberg@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(43, 'Chaya', 'Bartell', 'Male', '19', 'sdonnelly@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(44, 'Rhoda', 'Ortiz', 'Female', '21', 'hilario65@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(45, 'Edgar', 'Terry', 'Male', '18', 'mandy.smith@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(46, 'Neva', 'Veum', 'Female', '20', 'michel.dickinson@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(47, 'Harry', 'Kling', 'Female', '21', 'bahringer.fiona@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(48, 'Johnson', 'Doyle', 'Male', '19', 'torrance88@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(49, 'Irwin', 'Conroy', 'Male', '19', 'lane70@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(50, 'Marcelo', 'Wuckert', 'Male', '18', 'sstehr@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(51, 'Mekhi', 'Prohaska', 'Female', '20', 'amiya56@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(52, 'Levi', 'Stroman', 'Male', '25', 'philip20@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(53, 'Frederick', 'Williamson', 'Male', '19', 'dolores.rau@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(54, 'Brannon', 'Kuphal', 'Female', '20', 'predovic.hettie@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(55, 'Stephanie', 'Moore', 'Female', '18', 'gerhold.eva@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(56, 'Aleen', 'Trantow', 'Male', '23', 'rogelio84@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(57, 'Rebecca', 'Kilback', 'Female', '20', 'jarrell.nienow@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(58, 'Novella', 'Erdman', 'Female', '20', 'huels.marisol@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(59, 'Jettie', 'Kunze', 'Male', '22', 'lucile15@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(60, 'Reuben', 'Heaney', 'Female', '22', 'friedrich15@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(61, 'Janick', 'Klein', 'Male', '18', 'kurtis83@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(62, 'Grant', 'Romaguera', 'Female', '23', 'nat.oconnell@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(63, 'Marisol', 'McLaughlin', 'Female', '25', 'olen64@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(64, 'Edgar', 'Koss', 'Male', '23', 'akoepp@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(65, 'Alex', 'Green', 'Male', '22', 'rgoldner@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(66, 'Rolando', 'Ziemann', 'Female', '20', 'alexandra64@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(67, 'Anne', 'Huels', 'Female', '23', 'pwiza@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(68, 'Maymie', 'Braun', 'Male', '22', 'javonte34@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(69, 'Devon', 'Collins', 'Female', '22', 'ardith.shanahan@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(70, 'Keanu', 'Kilback', 'Male', '20', 'shannon29@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(71, 'Isaac', 'Cormier', 'Male', '21', 'lstiedemann@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(72, 'Clementine', 'Gibson', 'Female', '20', 'okuneva.natalia@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(73, 'Vernon', 'Macejkovic', 'Female', '24', 'wpagac@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(74, 'Dandre', 'Wunsch', 'Female', '19', 'spinka.drake@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(75, 'Aniyah', 'Zboncak', 'Male', '18', 'hardy.oberbrunner@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(76, 'Estelle', 'Upton', 'Male', '24', 'ijones@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(77, 'Kiera', 'Considine', 'Male', '24', 'jacynthe.runolfsdottir@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(78, 'Sally', 'Pfeffer', 'Female', '25', 'judd.osinski@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(79, 'Nyasia', 'Bauch', 'Male', '24', 'hfeil@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(80, 'Petra', 'Wilkinson', 'Female', '19', 'telly67@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(81, 'Heaven', 'Watsica', 'Female', '18', 'igislason@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(82, 'Sigurd', 'Tremblay', 'Male', '19', 'ona.mertz@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(83, 'Allene', 'Olson', 'Female', '18', 'feest.margie@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(84, 'Maynard', 'Schumm', 'Male', '19', 'christiansen.seth@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(85, 'Anthony', 'Green', 'Male', '21', 'margarete12@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(86, 'Aimee', 'Wiza', 'Male', '23', 'sharon42@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(87, 'Brice', 'Harber', 'Female', '23', 'lolita82@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(88, 'Jackeline', 'Funk', 'Female', '23', 'zdouglas@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(89, 'Anjali', 'Mosciski', 'Female', '22', 'predovic.richie@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(90, 'Dominic', 'Kassulke', 'Male', '20', 'edward.waters@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(91, 'Rachelle', 'Senger', 'Male', '24', 'hobart95@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(92, 'Kyle', 'Kassulke', 'Male', '24', 'verna12@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(93, 'Ahmed', 'Sporer', 'Female', '19', 'oberbrunner.russ@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(94, 'Zoe', 'Ankunding', 'Female', '18', 'padberg.claudie@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(95, 'Antonette', 'Koelpin', 'Female', '22', 'marshall97@example.com', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(96, 'Mark', 'Metz', 'Female', '19', 'favian.schoen@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(97, 'Susanna', 'Gleason', 'Male', '23', 'aromaguera@example.org', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(98, 'Brenden', 'Wiegand', 'Female', '23', 'jerad99@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(99, 'Coy', 'Gutmann', 'Female', '23', 'hill.scot@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(100, 'Laurie', 'Kunze', 'Male', '23', 'bbeahan@example.net', '2023-12-05 19:30:55', '2023-12-05 19:30:55', NULL),
(101, 'sixk', 'kasiiks', 'Male', '23', 'asdasasd23232@gmail.com', '2023-12-10 18:51:42', '2023-12-10 18:51:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jennings Weissnat I', 'nprosacco@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rIUAtHm58h', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(2, 'Miss Trinity Leannon', 'yost.richmond@example.org', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SHFQbKNa7G', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(3, 'Prof. Caesar Mante DVM', 'ekirlin@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PhrBVu5NxN', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(4, 'Mrs. Alessia Fahey', 'jessyca74@example.com', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rDmRPxMmWS', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(5, 'Prof. Macy Barrows', 'brannon.thompson@example.org', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P35XoIQ88M', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(6, 'Micheal Schinner DDS', 'maryjane77@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VujuOxzfQk', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(7, 'Susan Mraz II', 'calista96@example.org', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DtshEo9KoP', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(8, 'Douglas Corkery II', 'rebeca97@example.com', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2tZwWTnnot', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(9, 'Bertram Dietrich', 'ebrekke@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p2wxBp2Hht', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(10, 'Trinity Mitchell', 'maggio.elvis@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6O3cuJlRUK', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(11, 'Darrin Mitchell', 'audrey89@example.com', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z7MLyhlB41', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(12, 'Raheem Bartoletti II', 'jkerluke@example.org', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xqUqJFA7cv', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(13, 'Osvaldo Connelly', 'fabiola61@example.com', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oHDYXKMLsn', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(14, 'Darryl Kuhlman', 'lswift@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gDQxhNUuZk', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(15, 'Ms. Dorris Parker', 'evelyn.schimmel@example.org', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ucrdD6KoDo', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(16, 'Dr. Geovany Kirlin MD', 'lubowitz.ruben@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6FB5cfC8x5', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(17, 'Gilbert Mosciski', 'joel.jast@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DoQCfzI3C0', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(18, 'Francisco Corwin', 'eleazar89@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ik6yJiPgdG', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(19, 'Milford Kohler', 'veronica.lebsack@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aFHafiRbaD', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(20, 'Suzanne Weissnat', 'nathen18@example.org', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dcuGbufoVi', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(21, 'Jordy Eichmann', 'ifarrell@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'o7YTENqYgN', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(22, 'Prof. Donavon Kreiger', 'sblick@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oSEbibrrGN', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(23, 'Joannie Cummings Jr.', 'conrad.hickle@example.org', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TOjNPHWxBp', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(24, 'River Waters', 'rodrick.blanda@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l20brXm41H', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(25, 'Coleman Flatley', 'yolanda.mertz@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wklTjNVBiI', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(26, 'Ms. Valentina Williamson II', 'devan68@example.com', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CTaTNzzO6g', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(27, 'Precious Ritchie V', 'oconner.mariano@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mlJAxeFO5V', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(28, 'Ludie Streich', 'schmidt.heather@example.com', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uKR43Xdb7D', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(29, 'Prof. Davin Braun Sr.', 'howell.dallas@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O7ZG1OdDVc', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(30, 'Nicole Miller', 'rhomenick@example.net', '2023-12-05 19:30:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9XOf0E5xug', '2023-12-05 19:30:55', '2023-12-05 19:30:55'),
(31, 'John', 'JohnDOe23@gmail.com', NULL, '$2y$10$ZW5hC0huXQuKsDm/v0LP4OoD5Gve1NexAhSNNKpn/GggYeMaG.wuu', NULL, '2023-12-06 22:15:27', '2023-12-06 22:15:27');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
