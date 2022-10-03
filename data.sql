-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2022 at 12:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_02_095354_create_posts_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Prof.', 'Quas vero officiis similique minus quisquam ipsa distinctio. Repudiandae accusamus maiores enim dolorem iste reiciendis. Voluptate assumenda sequi ut aut rerum in consequuntur libero.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(2, 'Ms.', 'Deleniti dolore id labore vitae deserunt. Placeat veniam et non. Mollitia nihil assumenda tempora sunt nostrum officia dolor.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(3, 'Mr.', 'Ut distinctio sit non neque. Aut culpa ut illo architecto. Sit ratione corrupti qui sapiente sed minima eos.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(4, 'Prof.', 'Et qui libero dolorum quam est ratione consequatur quia. Sequi architecto iure nam harum. Assumenda ut consequatur consectetur incidunt quos voluptatem. Asperiores nihil debitis omnis in.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(5, 'Dr.', 'Omnis laboriosam quasi dignissimos ipsam labore. Sunt quia rerum rerum culpa quia. Rem id ex omnis eos soluta voluptas dolor. Sunt voluptas praesentium odio ut.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(6, 'Dr.', 'Ea consequuntur ut sit fugit. Ducimus dolor alias reiciendis quas fugiat corrupti. Aspernatur harum ut hic eum. Accusantium vel voluptatem enim omnis et aliquam. Rem quia est voluptatem est.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(7, 'Prof.', 'Est ducimus voluptate dolores voluptate. Rerum adipisci quia est omnis assumenda. Velit consequatur minus cupiditate commodi consequatur at. Esse at occaecati maiores.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(8, 'Prof.', 'Maiores incidunt qui facere est rerum commodi id. Est beatae quibusdam vel sunt dolorem placeat. Est praesentium et in quia. Dolores temporibus commodi quia commodi eum.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(9, 'Prof.', 'Qui quis ad culpa libero nam suscipit. Ut impedit in nobis et accusantium. Eius nihil omnis doloribus aut ea consequuntur vel autem.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(10, 'Dr.', 'Omnis optio voluptas cupiditate. Velit rerum praesentium voluptates perspiciatis voluptatem itaque reprehenderit.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(11, 'Prof.', 'Molestias mollitia qui amet id quis. Natus omnis eaque exercitationem dolores id. Delectus alias eaque iure aliquid. Corporis eum culpa dolorem asperiores dolor dolores eligendi.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(12, 'Prof.', 'Ad natus consequuntur est est. Quia et dolor ipsa libero. Fugiat sit dolor enim velit. Aut possimus provident quia soluta.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(13, 'Miss', 'Neque dolorum est quidem sed enim dignissimos. Sapiente deserunt ullam et asperiores.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(14, 'Miss', 'Qui accusamus est assumenda est ea quasi. Est consequatur animi consequatur odio voluptate quod modi ad. Soluta repudiandae tenetur ut eos sit occaecati.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(15, 'Prof.', 'Optio fuga libero voluptas nesciunt omnis. Ut qui quibusdam consectetur cum natus. In sed aut ea hic.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(16, 'Miss', 'Et assumenda et magnam dolores sunt non. Sint qui vitae qui officiis. Minima suscipit praesentium atque omnis consequatur.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(17, 'Miss', 'Sint et in sed sunt velit deleniti harum. Sed minima sequi quae temporibus dolor cupiditate. Quidem consequatur asperiores temporibus illum.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(18, 'Mr.', 'Eligendi hic voluptatem et quisquam voluptas. Error aut aut rerum fugiat. Voluptatem nemo neque ea nam molestiae.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(19, 'Miss', 'Rerum ut itaque eveniet voluptatem voluptates sit ratione. Sed tempora ut accusamus doloremque voluptas.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(20, 'Mr.', 'Dicta quasi rem voluptas accusamus qui occaecati doloribus. Qui provident laboriosam ut rerum. Omnis a modi consequatur voluptatibus. Neque sit quam expedita qui natus ratione consequatur.', '2022-10-02 03:59:30', '2022-10-02 03:59:30'),
(21, 'Miss', 'Saepe quis modi at accusantium. Quas magnam nobis qui illum est error. Odit ullam et mollitia animi similique. Illo qui incidunt tempore ea voluptate.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(22, 'Ms.', 'Consequuntur perspiciatis dolores quibusdam tenetur. Delectus at distinctio sint repellendus ipsum aut. Necessitatibus et quasi magnam dolore et ut qui aperiam.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(23, 'Dr.', 'Ut officia voluptatem eius est. Adipisci qui et maiores eos nihil explicabo. Et voluptate iusto eligendi. Nesciunt consequatur eaque eius facilis aut ut.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(24, 'Prof.', 'Numquam provident beatae ut blanditiis. Aut ducimus magni quod et voluptatibus vel. Perspiciatis et qui id. Nam dolorem quia dolores itaque id rerum blanditiis vero. Fugiat veniam ut dolorem quae.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(25, 'Ms.', 'Perspiciatis blanditiis voluptatem maxime veniam natus aspernatur non. Voluptatem rerum vero tenetur nihil voluptatibus. Magni labore explicabo voluptatem consequatur.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(26, 'Dr.', 'Vel voluptatem placeat inventore laudantium et aut. Velit et itaque consectetur pariatur dolores et. Et omnis in libero. Similique saepe et eaque.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(27, 'Miss', 'Ut voluptate officia explicabo molestias. Blanditiis cum minima aut illum rem aut nihil. Repellat doloremque quo facere et.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(28, 'Dr.', 'In odio voluptatibus dolor possimus provident non dolor eum. Labore itaque aut excepturi doloribus saepe omnis facere. Saepe eligendi amet tenetur dolorum. Iste odio perferendis aut harum.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(29, 'Mrs.', 'Occaecati illum magni debitis voluptatum id sapiente. Laborum enim illum rerum corrupti neque. In autem quisquam natus maxime voluptate. Minima ab ratione vitae nulla quia fugit.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(30, 'Ms.', 'Voluptatem iste vero est sed natus voluptatum nulla. Enim possimus rem nesciunt laudantium molestiae sed consectetur. Earum quaerat debitis voluptatem ad consequatur.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(31, 'Prof.', 'Ut et consequatur quas mollitia tempore eaque. Non fugit et sapiente at.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(32, 'Mr.', 'Dicta non sit rerum vitae consequatur sit. Aliquam quae quia nulla eius perspiciatis inventore.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(33, 'Dr.', 'Incidunt molestiae numquam aut et aut harum consequuntur. Dignissimos dolorem iste vitae impedit ea quis eum. Qui officiis sit at pariatur. A est quibusdam odit nesciunt earum.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(34, 'Dr.', 'Explicabo exercitationem deleniti explicabo repudiandae ut. Repudiandae fuga consequuntur et aut praesentium asperiores et. Cupiditate modi praesentium molestias voluptatem omnis aspernatur.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(35, 'Dr.', 'Qui excepturi odit deserunt iusto qui. Aut eum sit laudantium. Non itaque blanditiis magni mollitia illo.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(36, 'Ms.', 'Laudantium qui laudantium veniam iusto vitae. Cum ut voluptatum assumenda quibusdam adipisci hic aut. Quae animi quod impedit laboriosam nihil.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(37, 'Ms.', 'Mollitia enim deleniti est. Fuga magnam neque eaque quos ex. Libero qui molestiae ut totam.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(38, 'Prof.', 'Fugit expedita nesciunt et est. Est est cupiditate distinctio. Qui qui repudiandae temporibus occaecati possimus.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(39, 'Miss', 'Voluptatum aperiam eum ut. Id ratione recusandae ut fugit natus consequuntur nihil temporibus. Quia facilis aliquam numquam natus. Qui qui sunt id autem qui rerum. Natus deleniti quia tempora velit.', '2022-10-02 04:00:36', '2022-10-02 04:00:36'),
(40, 'Dr.', 'Sint eaque ducimus qui non laborum rerum distinctio distinctio. Optio officiis reprehenderit recusandae vitae quo. Sed sed et et animi corporis officia. Officiis enim quibusdam neque autem et eum.', '2022-10-02 04:00:36', '2022-10-02 04:00:36');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
