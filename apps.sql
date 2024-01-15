-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 15 2024 г., 17:58
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `apps`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Отключение', NULL, NULL),
(2, 'Проверка_удешевление', NULL, NULL),
(3, 'Тех_вопрос', NULL, NULL),
(4, 'Прочее', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `managers`
--

CREATE TABLE `managers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `managers`
--

INSERT INTO `managers` (`id`, `name`, `surname`, `created_at`, `updated_at`) VALUES
(1, 'Bennie', 'Durgan', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(2, 'Jaylon', 'Borer', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(3, 'Deonte', 'Ortiz', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(4, 'Olen', 'Johns', '2024-01-13 14:46:29', '2024-01-13 14:46:29');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2024_01_13_135512_create_managers_table', 1),
(14, '2024_01_13_135522_create_statuses_table', 1),
(15, '2024_01_13_135540_create_categories_table', 1),
(16, '2024_01_13_163243_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int UNSIGNED NOT NULL,
  `manager_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `date_closed` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `content`, `status_id`, `manager_id`, `category_id`, `date_closed`, `created_at`, `updated_at`) VALUES
(1, 'Alice could manage.', 1, 1, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(2, 'I don\'t know I am.', 3, 3, 1, '2023-09-26', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(3, 'Alice could only.', 3, 2, 2, '2023-03-17', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(4, 'IS the rest waited.', 3, 1, 4, '2023-09-21', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(5, 'White Rabbit blew.', 1, 3, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(6, 'I\'m afraid,\' said.', 2, 1, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(7, 'ME\' were obliged.', 1, 3, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(8, 'Tell me out from.', 2, 2, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(9, 'Gryphon: and she.', 1, 4, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(10, 'IS his Normans--\".', 1, 4, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(11, 'Conqueror.\' (For.', 3, 3, 3, '2023-05-15', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(12, 'Alice loudly. \'The.', 3, 1, 2, '2023-10-10', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(13, 'Alice; \'living at.', 1, 4, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(14, 'Time!\' \'Perhaps it.', 1, 3, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(15, 'Ann, what did not.', 1, 4, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(16, 'Mouse, turning to.', 2, 1, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(17, 'Hatter: \'let\'s all.', 3, 3, 4, '2023-09-20', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(18, 'SOMEWHERE,\' Alice.', 1, 3, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(19, 'Alice in a mouse.', 1, 2, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(20, 'Footman\'s head: it.', 2, 3, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(21, 'YOUR adventures.\'.', 1, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(22, 'She took the White.', 1, 3, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(23, 'I know?\' \'It\'s all.', 3, 2, 3, '2023-08-06', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(24, 'Queen never was a.', 2, 4, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(25, 'Fish-Footman was.', 1, 1, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(26, 'How brave they\'ll.', 2, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(27, 'THAT well enough.', 1, 2, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(28, 'Alice had got so.', 1, 4, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(29, 'Alice; \'all I find.', 3, 1, 1, '2023-03-22', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(30, 'Panther received.', 3, 4, 2, '2023-11-01', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(31, 'However, she went.', 2, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(32, 'Bill, was coming.', 2, 4, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(33, 'Hatter. He got so.', 3, 2, 4, '2023-02-15', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(34, 'Alice to explain.', 3, 3, 1, '2023-04-17', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(35, 'March Hare. Alice.', 2, 1, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(36, 'Alice replied very.', 1, 1, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(37, 'I ought to begin.', 1, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(38, 'I\'ve tried to the.', 2, 3, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(39, 'That WILL become.', 3, 2, 4, '2023-06-20', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(40, 'Hatter went down.', 3, 2, 3, '2023-10-24', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(41, 'I\'d been annoyed,\'.', 3, 1, 3, '2023-07-16', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(42, 'And she said the.', 1, 4, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(43, 'Said cunning old.', 1, 1, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(44, 'Indeed, she went.', 2, 2, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(45, 'Dormouse began in.', 1, 2, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(46, 'And then, saying.', 2, 1, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(47, 'So she tipped over.', 2, 3, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(48, 'The first speech.', 2, 1, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(49, 'I shan\'t! YOU like.', 1, 2, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(50, 'It was, that had.', 1, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(51, 'I\'m a grin, which.', 1, 1, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(52, 'He moved off, and.', 1, 4, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(53, 'Gryphon answered.', 2, 2, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(54, 'Would the air: it.', 3, 2, 2, '2023-05-01', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(55, 'Dodo, pointing to.', 3, 4, 2, '2023-01-26', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(56, 'Duchess, \'chop off.', 3, 3, 4, '2023-08-11', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(57, 'March Hare and the.', 2, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(58, 'I can you goose!.', 2, 4, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(59, 'Alice\'s shoulder.', 2, 1, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(60, 'Said cunning old.', 3, 3, 3, '2023-12-15', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(61, 'I give them their.', 2, 1, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(62, 'Alice, that they.', 1, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(63, 'I know much,\' said.', 1, 1, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(64, 'March Hare. Visit.', 1, 4, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(65, 'And yesterday you.', 1, 2, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(66, 'Mouse, turning to.', 2, 3, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(67, 'While she began by.', 2, 4, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(68, 'Duck: \'it\'s always.', 3, 1, 1, '2023-07-16', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(69, 'This question is.', 1, 1, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(70, 'HIM TO YOU,\"\' said.', 1, 2, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(71, 'Dodo said, as they.', 1, 3, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(72, 'Suppress him! Off.', 3, 1, 1, '2023-09-18', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(73, 'YOU?\' Which way?\'.', 2, 2, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(74, 'Two began solemnly.', 1, 3, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(75, 'It was so as ever.', 2, 3, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(76, 'There seemed quite.', 3, 4, 4, '2023-02-08', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(77, 'I\'m Mabel, for she.', 1, 4, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(78, 'Edwin and till she.', 1, 1, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(79, 'In another moment.', 1, 4, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(80, 'And she opened his.', 2, 2, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(81, 'By this same thing.', 1, 4, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(82, 'PLEASE mind what.', 1, 1, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(83, 'T!\' said Alice to.', 3, 3, 1, '2023-10-12', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(84, 'Hatter: \'it\'s laid.', 2, 4, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(85, 'Alice knew whether.', 3, 2, 3, '2024-01-14', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(86, 'They all her draw.', 3, 4, 1, '2023-04-24', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(87, 'Gryphon is, what.', 2, 2, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(88, 'Alice did you join.', 3, 4, 2, '2023-10-11', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(89, 'I was, that must.', 2, 2, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(90, 'Mouse, who always.', 2, 1, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(91, 'I said the strange.', 3, 1, 2, '2023-08-02', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(92, 'WHAT things?\' said.', 2, 2, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(93, 'I can\'t remember.', 2, 1, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(94, 'Alice. \'Call the.', 3, 1, 2, '2023-11-01', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(95, 'Alice laughed so.', 3, 3, 4, '2023-04-16', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(96, 'When they used to.', 1, 4, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(97, 'Alice quite as the.', 1, 4, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(98, 'I suppose?\' \'Yes,\'.', 3, 2, 1, '2023-09-30', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(99, 'Eaglet, and then.', 3, 1, 2, '2023-11-02', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(100, 'I wonder what you.', 1, 3, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(101, 'Soup of its eyes.', 1, 2, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(102, 'And the hedgehog.', 3, 4, 2, '2023-12-05', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(103, 'But she said, with.', 1, 2, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(104, 'It quite know your.', 3, 1, 1, '2023-06-01', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(105, 'Alice as he kept.', 3, 1, 2, '2023-04-11', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(106, 'HAVE their faces.', 2, 2, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(107, 'M--\' \'Why did not.', 1, 3, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(108, 'I must,\' the BEST.', 3, 2, 1, '2023-08-12', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(109, 'CHORUS. (In which.', 3, 4, 4, '2023-11-16', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(110, 'Dinah!\' she said.', 3, 1, 3, '2023-12-31', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(111, 'Good-bye, feet!\'.', 2, 1, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(112, 'Alice went nearer.', 3, 1, 4, '2023-12-09', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(113, 'Nobody moved. \'Who.', 2, 1, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(114, 'Everything is such.', 3, 2, 2, '2023-09-10', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(115, 'Soup! Soup does it.', 1, 4, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(116, 'Zealand or two to.', 3, 3, 4, '2024-01-16', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(117, 'Footman\'s head: it.', 3, 1, 1, '2023-06-05', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(118, 'Duchess was gone.', 2, 3, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(119, 'Rabbit\'s voice she.', 3, 1, 4, '2023-08-09', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(120, 'Alice, \'but it\'s.', 2, 4, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(121, 'Gryphon. \'I only.', 3, 1, 1, '2023-08-12', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(122, 'Dinah, if I wish.', 3, 1, 1, '2023-04-05', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(123, 'Miss, we\'re doing.', 3, 4, 4, '2023-06-02', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(124, 'IS the fan and I.', 2, 1, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(125, 'Dormouse. \'Don\'t.', 3, 2, 3, '2023-09-16', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(126, 'As there was not.', 1, 2, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(127, 'Hatter. \'Does the.', 1, 2, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(128, 'White Rabbit: it.', 3, 4, 1, '2023-10-10', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(129, 'Bill,\' she helped.', 1, 4, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(130, 'Hatter opened his.', 2, 3, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(131, 'Owl had been, it.', 2, 3, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(132, 'Alice said Alice.', 1, 3, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(133, 'SAID was, or not.', 1, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(134, 'Alice; \'living at.', 2, 2, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(135, 'Who would have the.', 1, 1, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(136, 'VERY nearly in a.', 1, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(137, 'I believe.\' \'Boots.', 3, 3, 1, '2023-08-08', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(138, 'EVER happen in an.', 1, 4, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(139, 'The baby grunted.', 1, 3, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(140, 'Alice: \'she\'s so.', 3, 1, 3, '2023-11-24', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(141, 'Suddenly she fell.', 3, 2, 1, '2023-10-10', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(142, 'Eaglet. \'I haven\'t.', 1, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(143, 'IS the tail, And.', 2, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(144, 'WAS when a large.', 1, 2, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(145, 'I\'m sure she leant.', 1, 1, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(146, 'As she muttered to.', 2, 1, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(147, 'Mouse was terribly.', 3, 4, 4, '2023-02-06', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(148, 'Knave \'Turn them.', 2, 2, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(149, 'Uglification, and.', 3, 4, 1, '2024-01-15', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(150, 'Alice. \'Of course.', 3, 3, 3, '2023-03-31', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(151, 'Mock Turtle. \'No.', 2, 4, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(152, 'I shall be able! I.', 1, 2, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(153, 'I\'ve had fallen by.', 2, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(154, 'Gryphon whispered.', 3, 3, 1, '2023-08-16', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(155, 'Five and fighting.', 1, 3, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(156, 'Tillie; and now in.', 3, 1, 3, '2023-09-20', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(157, 'Alice with hearts.', 2, 3, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(158, 'The Gryphon went.', 2, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(159, 'I ever since her.', 2, 1, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(160, 'Where are gone, if.', 2, 2, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(161, 'Alice asked. The.', 3, 4, 3, '2023-07-14', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(162, 'Hearts, he was a.', 1, 3, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(163, 'YET,\' she soon as.', 1, 2, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(164, 'And she had quite.', 1, 1, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(165, 'I may kiss my tea.', 3, 3, 3, '2023-12-23', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(166, 'Presently she had.', 3, 4, 1, '2023-12-28', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(167, 'Gryphon. \'Well, if.', 3, 2, 4, '2024-01-30', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(168, 'I\'ve been to be a.', 3, 3, 4, '2023-05-05', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(169, 'The cook till you.', 1, 3, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(170, 'Lizard) could not.', 2, 1, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(171, 'Tortoise because I.', 1, 2, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(172, 'Eaglet, and were.', 2, 1, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(173, 'Dodo, \'the best of.', 3, 4, 4, '2023-08-25', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(174, 'As soon finished.', 1, 4, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(175, 'He sent for.\' \'You.', 2, 3, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(176, 'Alice tried to set.', 2, 3, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(177, 'March Hare. Alice.', 2, 2, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(178, 'SOMEWHERE,\' Alice.', 3, 1, 4, '2024-01-02', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(179, 'O Mouse!\' (Alice.', 2, 3, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(180, 'Alice said Alice.', 3, 1, 2, '2023-03-13', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(181, 'Gryphon remarked.', 3, 4, 2, '2023-11-28', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(182, 'After a lobster--\'.', 1, 1, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(183, 'AT ALL. Soup does.', 2, 1, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(184, 'Alice ventured to.', 1, 4, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(185, 'Alice could think.', 2, 3, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(186, 'The Mouse replied.', 1, 3, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(187, 'Let me see--how IS.', 3, 2, 4, '2023-10-23', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(188, 'How brave they\'ll.', 3, 1, 3, '2023-02-19', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(189, 'Queen, the Pigeon.', 2, 2, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(190, 'You gave us both.', 3, 1, 3, '2023-05-09', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(191, 'Gryphon said, just.', 3, 3, 3, '2023-10-03', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(192, 'There was not like.', 2, 1, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(193, 'They are \"much of.', 2, 1, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(194, 'She was too glad.', 3, 3, 3, '2023-02-23', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(195, 'Queen, and soon as.', 2, 4, 4, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(196, 'Mouse heard this.', 3, 4, 1, '2023-06-02', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(197, 'Alice, a Dormouse.', 3, 1, 4, '2023-03-26', '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(198, 'Alice caught the.', 1, 1, 3, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(199, 'Mouse, who seemed.', 1, 4, 1, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29'),
(200, 'For a more there.', 2, 4, 2, NULL, '2024-01-13 14:46:29', '2024-01-13 14:46:29');

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'новая', NULL, NULL),
(2, 'в работе', NULL, NULL),
(3, 'завершена', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_status_id_index` (`status_id`),
  ADD KEY `orders_manager_id_index` (`manager_id`),
  ADD KEY `orders_category_id_index` (`category_id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
