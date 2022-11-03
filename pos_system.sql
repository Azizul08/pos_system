-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2022 at 11:45 AM
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
-- Database: `pos_system`
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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT 0,
  `total_amount` int(11) DEFAULT NULL,
  `amount_pay` int(11) DEFAULT 0,
  `amount_due` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_id`, `discount`, `total_amount`, `amount_pay`, `amount_due`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '2022-11-01 04:45:46', '2022-11-01 04:45:46'),
(2, NULL, NULL, NULL, NULL, NULL, '2022-11-01 04:46:50', '2022-11-01 04:46:50'),
(3, 'Prof.', 3048, 57912, 800, 57112, '2022-11-01 04:51:37', '2022-11-01 04:51:37'),
(4, '18', 406, 4674, 1000, 3674, '2022-11-01 04:54:35', '2022-11-01 04:54:35'),
(5, '1', 0, 5100, 0, 5100, '2022-11-02 00:44:29', '2022-11-02 00:44:29'),
(6, '1', 357, 4743, 2000, 2743, '2022-11-02 00:54:29', '2022-11-02 00:54:29');

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
(6, '2022_10_02_095354_create_posts_table', 3),
(7, '2022_10_26_070247_create_products_table', 4),
(8, '2022_10_31_083802_create_invoices_table', 5),
(9, '2022_11_01_062850_add_columns_to_products_table', 6);

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
(1, 'Prof.', 'Dolor aliquam incidunt eveniet animi tempora. Consequatur veritatis ad exercitationem libero. Odio non explicabo magni est odit.', '2022-10-26 03:21:18', '2022-10-26 03:21:18'),
(2, 'Prof.', 'Explicabo omnis et quam saepe eveniet nisi. Quae ipsa cumque sit eum. Est porro cum necessitatibus ut.', '2022-10-26 03:21:18', '2022-10-26 03:21:18'),
(3, 'Mr.', 'Debitis doloribus autem unde assumenda quia quia animi. Voluptates eos saepe ut ipsum illo aut sed consequatur. Consequuntur recusandae alias et qui. Optio magni illo ullam dolores.', '2022-10-26 03:21:18', '2022-10-26 03:21:18'),
(4, 'Dr.', 'Ducimus fugit ut quaerat neque et quae. Unde recusandae ut in vel iusto. Placeat inventore maxime eligendi. Voluptas ipsa nobis sit sit fugiat sed.', '2022-10-26 03:21:18', '2022-10-26 03:21:18'),
(5, 'Dr.', 'Aliquid odit repudiandae harum quasi. Iste molestiae omnis laudantium ut expedita qui et. Est minus veniam assumenda est. Sunt pariatur suscipit numquam facere. Ratione esse voluptate a minus.', '2022-10-26 03:21:18', '2022-10-26 03:21:18'),
(6, 'Dr.', 'Quidem et ratione quibusdam. Nesciunt atque et rerum neque nemo. Est nostrum perferendis et aspernatur esse. Provident enim pariatur modi voluptate.', '2022-10-26 03:21:18', '2022-10-26 03:21:18'),
(7, 'Miss', 'Iusto dolorum fugiat aut rerum dolores sapiente. Corrupti qui aut dolor. Pariatur perspiciatis quis nihil.', '2022-10-26 03:21:18', '2022-10-26 03:21:18'),
(8, 'Dr.', 'Eum est voluptatibus quam quia optio soluta. Sint sunt quisquam assumenda blanditiis qui aut tempora. Voluptas voluptatibus sapiente odit qui. Dolore a mollitia quam et consequatur iusto.', '2022-10-26 03:21:18', '2022-10-26 03:21:18'),
(9, 'Mr.', 'Doloremque est est earum labore porro provident. Tenetur iure minima perferendis.', '2022-10-26 03:21:18', '2022-10-26 03:21:18'),
(10, 'Dr.', 'Placeat et enim reprehenderit quam a dolor nemo. Illo consequatur error et ratione iusto rerum fugit quo. Sint ad nihil sit dolore consectetur.', '2022-10-26 03:21:18', '2022-10-26 03:21:18'),
(11, 'Mr.', 'Et amet mollitia modi eum unde repellat dicta. Eligendi voluptatem alias maxime. Et ut odio molestias quae et. Provident ut voluptatem eos odit nisi.', '2022-10-26 03:21:18', '2022-10-26 03:21:18'),
(12, 'Mr.', 'Itaque et officiis quos quasi doloremque. Error ipsa dolore tempora error saepe sapiente.', '2022-10-26 03:21:18', '2022-10-26 03:21:18'),
(13, 'Prof.', 'Voluptate voluptate voluptas quisquam et. Quibusdam quisquam et est. Rerum minima eveniet atque maiores officia quis. Et aut non dolor tempora. Dolorem aut saepe rerum magni suscipit animi.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(14, 'Mr.', 'Quis qui tenetur accusantium laudantium et. Blanditiis omnis doloremque illum doloremque iusto eaque reprehenderit. Magni consequuntur eveniet iusto. Ut eos atque maiores perspiciatis delectus et.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(15, 'Dr.', 'Et necessitatibus illum quibusdam atque est reprehenderit sint voluptatem. Consectetur hic deserunt autem recusandae. Rem dolor deleniti architecto sunt molestias odit cupiditate.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(16, 'Dr.', 'Quibusdam libero vitae autem deleniti. Voluptatibus voluptas quas illo. Fugit excepturi officiis laudantium consequatur. Nemo laudantium cupiditate quo dolorem delectus.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(17, 'Prof.', 'Est sint ut aspernatur maxime. Eligendi fugiat et pariatur fuga laboriosam. Ratione eos corporis veritatis culpa et. Suscipit exercitationem dolores dolorem ut omnis qui aut quaerat.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(18, 'Miss', 'Vero magnam cumque est rerum. A quibusdam non beatae expedita quas delectus.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(19, 'Miss', 'Nihil rem quia laboriosam quod. Veniam voluptatem ea cum similique ut dignissimos similique. Odit et et illo aut. Sint quae et optio sequi omnis. In dicta deleniti assumenda porro.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(20, 'Prof.', 'Est magni dignissimos velit minima dolores. Quo labore nemo voluptate non voluptatem qui. Et et odit iure eveniet sequi sint. Ut sunt est non consequatur odio fugit.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(21, 'Ms.', 'Autem fuga sed quaerat. Excepturi minus quia molestias totam quo autem maxime. Molestias et a vitae id soluta numquam. Et in odio soluta quod praesentium itaque. Et quis temporibus quasi aut.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(22, 'Prof.', 'Qui sint et labore eum dolor consequatur. Ad corporis maiores id enim ea eveniet optio. Officiis omnis aut dolor ullam. Rerum laudantium odit ratione vel. Magnam odio sint sit nobis iure.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(23, 'Mrs.', 'Harum rerum qui voluptas iure doloribus aut aut. Et reprehenderit dolore temporibus. Ex non quas et quod est. Amet aut ad eum eos dicta sunt ipsa.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(24, 'Prof.', 'Incidunt et omnis ea eum sapiente non. Et sint numquam aut eos dolorem in rerum.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(25, 'Prof.', 'A quas est consequatur quia sit libero. Dicta labore dolorem et est odit autem expedita illum. Numquam sunt aut mollitia ea harum magni. Eius similique dolor aliquam a officiis possimus.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(26, 'Prof.', 'Officiis recusandae suscipit ex id veritatis vel nobis. Explicabo quibusdam reprehenderit ullam sint aliquam. Rerum nostrum iusto odit rerum.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(27, 'Ms.', 'Quae pariatur veniam consequuntur consequuntur magnam nostrum pariatur. Earum reiciendis perspiciatis accusamus. Quaerat consequatur est porro ut. Sit odio id cum unde.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(28, 'Dr.', 'Est fuga sed reprehenderit saepe deleniti similique. Et incidunt ea consequatur est eius sint. Cum et dignissimos voluptatem.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(29, 'Dr.', 'Similique sunt provident non adipisci dolorem. Porro repellendus fugit et provident optio aperiam. Dolores consequatur assumenda occaecati dolor blanditiis.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(30, 'Dr.', 'Sint facere esse est. Et occaecati numquam voluptates maxime suscipit odio. Aliquam amet sint quisquam et voluptatem ut. Optio id error et nam voluptatem qui.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(31, 'Mr.', 'Quae reprehenderit et quos nihil et voluptatem ratione. A itaque nisi qui accusantium amet. Minima tempora natus asperiores.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(32, 'Dr.', 'Blanditiis magni perferendis accusantium illum aperiam. Nostrum et et magnam aut maiores. Accusamus soluta et eos quo libero consectetur. Aliquid a blanditiis quia et ex soluta.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(33, 'Dr.', 'Occaecati maiores fugit dolores est rerum aliquid. Perferendis eum et et molestiae quas occaecati reprehenderit id. Molestiae molestias dicta rem dolores nostrum autem qui.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(34, 'Mr.', 'Iusto ea ratione qui qui. Omnis dolorem sed omnis.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(35, 'Dr.', 'Sint culpa ab enim amet consequatur velit. Voluptates et modi consequuntur aspernatur iste. Accusantium libero incidunt cupiditate optio rem. Dolor doloremque et maiores ut.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(36, 'Dr.', 'Vel et dolores sunt voluptatem in vero voluptatibus. Sed aut porro quod voluptas. Dolor ut doloribus inventore at. Aliquam tempora expedita nostrum officia doloremque.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(37, 'Dr.', 'Expedita earum voluptatem id dolor sed earum dolorem. Autem perspiciatis ipsam eos quis ad. Praesentium perferendis eos unde voluptate ipsam. Quia eius sed minus natus.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(38, 'Prof.', 'Corporis id aut reprehenderit fugit eum voluptas. Est animi alias aut nesciunt aut maiores voluptatibus. Quia incidunt rem aut excepturi odio labore. Qui vero nemo tempora.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(39, 'Dr.', 'Quis saepe ipsa officiis ad. Optio ut hic deleniti. Dolore ut consequatur in asperiores exercitationem debitis cum.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(40, 'Ms.', 'Ut similique ipsa officiis quis quibusdam. Error vel quia eos officiis aut praesentium eos. Consequatur omnis explicabo est vel voluptatem. Dolores deleniti quasi nihil et.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(41, 'Mr.', 'Quo quis tempore rem cum id minima non. Aut iure omnis cupiditate. Ut nulla cumque laborum illum quisquam harum placeat.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(42, 'Mrs.', 'Aut laudantium accusantium est eius vel hic. Velit voluptatem praesentium sed est minus. Perspiciatis dolores nam autem. Occaecati est temporibus voluptate doloremque odit.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(43, 'Prof.', 'Natus repellendus suscipit enim dolore consequatur. Et dolore aut voluptas aperiam amet.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(44, 'Prof.', 'Nemo voluptatem voluptas nisi cupiditate quia culpa consequuntur consequatur. Nihil earum sunt ut iure minus. Doloribus aut et aliquam maxime.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(45, 'Dr.', 'Possimus libero iste dolores rerum ullam. Et consequatur nihil quas unde iusto cumque veritatis nulla. Doloremque deleniti et numquam et velit deleniti.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(46, 'Dr.', 'Blanditiis autem cum non. Consequatur velit quas dolores explicabo expedita optio. Aperiam voluptatibus aut adipisci nulla totam.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(47, 'Prof.', 'Rerum odio quia eaque reprehenderit qui amet dolorem. Voluptas et esse repudiandae harum ab. Nihil et qui molestiae eum praesentium.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(48, 'Dr.', 'Doloribus nihil minima qui qui sunt. Sunt vel cupiditate ut voluptates possimus. Doloremque voluptatem sint aspernatur aliquid eligendi repellendus tempora.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(49, 'Mrs.', 'Dolores ullam deserunt sit fugiat quidem tenetur amet. Et exercitationem quaerat et consequatur qui. Repudiandae necessitatibus pariatur maxime pariatur.', '2022-10-26 03:21:19', '2022-10-26 03:21:19'),
(50, 'Ms.', 'Velit maxime sint quo nihil est provident dignissimos. Tempore totam dolorem adipisci voluptates at amet. Odit et neque totam. Exercitationem optio aspernatur dicta qui ea minima.', '2022-10-26 03:21:19', '2022-10-26 03:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quantity`, `discount`, `pay`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Miss', 510, 10, 7, 2000, 'Voluptatem vel consectetur ab voluptates molestiae quibusdam. Cum nulla perferendis non et eligendi.', '2022-10-26 04:45:50', '2022-11-02 00:53:56'),
(2, 'Miss', 900, 742, 0, 0, 'Doloribus consequatur architecto dolorem aut. Voluptatem excepturi maiores porro aperiam ipsam rerum. Quia blanditiis recusandae ipsam suscipit. Eum saepe saepe sit nihil.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(3, 'Miss', 268, 475, 0, 0, 'Velit perspiciatis porro tempore molestiae. Maiores quas aut voluptatem. Pariatur nobis ut laudantium aut. Consequatur autem architecto autem praesentium aliquam minus quia.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(4, 'Mr.', 936, 44, 0, 0, 'Eos repellat minima enim. At architecto at qui ut error. Cupiditate sed aut iusto. Necessitatibus odio ipsa porro asperiores amet consequatur qui.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(5, 'Ms.', 724, 822, 0, 0, 'Cum voluptas voluptatem sapiente officiis sit ea. Quia sunt dolores culpa quibusdam et. Corporis pariatur et enim error. Eos quidem numquam in et voluptates velit.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(6, 'Mr.', 797, 442, 0, 0, 'Dolores iusto maiores mollitia et quam. Impedit neque distinctio eum impedit ipsam voluptas. Laboriosam cupiditate ut ut et.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(7, 'Prof.', 475, 546, 0, 0, 'Aliquam aut excepturi occaecati nesciunt aut. Cum nihil dolore id corporis sed expedita rerum. Facere neque officiis quam alias nisi sit debitis repudiandae.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(8, 'Mrs.', 668, 73, 0, 0, 'Et placeat omnis harum omnis impedit non. Vel suscipit omnis vel facere totam in. Perferendis et error dolores autem aut.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(9, 'Miss', 646, 129, 0, 0, 'Cum aut autem non ipsa. Molestias soluta qui eos. Aut beatae fugit ipsum veniam a a asperiores nihil. Provident aut molestiae quis. Omnis qui voluptatem ipsam repellendus.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(10, 'Prof.', 572, 10, 10, 5000, 'Quas et sequi est et iure quasi quasi quibusdam. Dolorem optio aut sint quia sunt voluptas mollitia. Quae quaerat inventore occaecati laborum voluptatibus qui et.', '2022-10-26 04:45:51', '2022-11-01 00:47:57'),
(11, 'Ms.', 57, 147, 0, 0, 'Aut blanditiis quos doloremque libero et labore. Eaque aliquam ipsa asperiores rem laborum ut quod. Est rerum velit asperiores inventore. Non ut consequuntur quo.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(12, 'Mr.', 605, 108, 0, 0, 'Tempora nihil inventore qui cum nemo. Non nihil eos blanditiis aut.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(13, 'Mr.', 388, 328, 0, 0, 'Velit eveniet eveniet et quo ea. Tempora suscipit deserunt optio minima magni sed et. Sequi velit aspernatur ullam consequatur. Et distinctio est ullam repudiandae reprehenderit aut similique.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(14, 'Dr.', 176, 766, 0, 0, 'Eius praesentium ducimus aliquam eum. Eius itaque cum error inventore ut exercitationem. Corrupti eaque labore voluptas at iure commodi aut aliquid.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(15, 'Dr.', 591, 207, 0, 0, 'Alias aut illo impedit sit id ipsum et. Voluptatem sunt harum fugiat alias iure aut. Assumenda esse magni ut maiores fugit labore officia.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(16, 'Prof.', 61, 950, 7, 5000, 'Necessitatibus voluptatum voluptas veniam quod. Tempore exercitationem molestiae consequuntur voluptas quisquam voluptas ab. Aut quasi repudiandae ad quos.', '2022-10-26 04:45:51', '2022-11-01 01:19:21'),
(17, 'Mr.', 883, 165, 0, 0, 'Atque animi omnis qui voluptatem necessitatibus voluptas. Ut eos veritatis ut earum ut repellat neque a. Qui doloribus rem et et ipsam.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(18, 'Prof.', 508, 10, 8, 1000, 'Nemo aspernatur suscipit ad dolorem hic beatae sit. Corporis facere recusandae a error. Quibusdam et architecto et est qui. Velit dolorum esse autem laborum.', '2022-10-26 04:45:51', '2022-11-01 04:54:27'),
(19, 'Dr.', 96, 53, 0, 0, 'Quia reiciendis fugit non et eligendi et. Ut consequuntur non ea. Dicta quia totam dolor qui est aut sed.', '2022-10-26 04:45:51', '2022-10-26 04:45:51'),
(20, 'Ms.', 455, 711, 0, 0, 'Qui omnis sit vitae ullam aut sit. Voluptas nisi id hic quisquam officia. Quo earum illo nesciunt quibusdam eos. Fugiat qui est aut quidem saepe.', '2022-10-26 04:45:51', '2022-10-26 04:45:51');

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
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
