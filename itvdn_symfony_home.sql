-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Мар 22 2022 г., 20:27
-- Версия сервера: 8.0.28-0ubuntu0.20.04.3
-- Версия PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `itvdn_symfony_home`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `description`) VALUES(25, 'Operating Systems', 'Some info about popular operating systems');
INSERT INTO `blog_category` (`id`, `name`, `description`) VALUES(26, 'Programming Languages', 'Some info about popular programming languages');

-- --------------------------------------------------------

--
-- Структура таблицы `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `blog_post`
--

INSERT INTO `blog_post` (`id`, `category_id`, `title`, `description`, `status`) VALUES(36, 25, 'Linux first steps', 'Linux for beginners.', 1);
INSERT INTO `blog_post` (`id`, `category_id`, `title`, `description`, `status`) VALUES(37, 25, 'Ubuntu new release', 'Info about Ubuntu20.', 1);
INSERT INTO `blog_post` (`id`, `category_id`, `title`, `description`, `status`) VALUES(38, 26, 'C# new features', 'About new features in C#.', 1);
INSERT INTO `blog_post` (`id`, `category_id`, `title`, `description`, `status`) VALUES(39, 26, 'Symfony 5 first steps', 'Here is a new version of Symfony PHP framework.', 1);
INSERT INTO `blog_post` (`id`, `category_id`, `title`, `description`, `status`) VALUES(40, NULL, 'PostgreSQL for beginners', 'Let\'s start with PostgreSQL relation database.', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES('DoctrineMigrations\\Version20220317142609', '2022-03-17 16:27:27', 52);
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES('DoctrineMigrations\\Version20220317160534', '2022-03-17 18:06:10', 58);
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES('DoctrineMigrations\\Version20220318123636', '2022-03-18 14:36:50', 51);
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES('DoctrineMigrations\\Version20220318143431', '2022-03-18 16:34:56', 152);
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES('DoctrineMigrations\\Version20220318162240', '2022-03-18 18:23:15', 108);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1308, 'Product 89', 'Description for product 89', 1664, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1309, 'Product 91', 'Description for product 91', 444, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1310, 'Product 96', 'Description for product 96', 1172, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1311, 'Product 86', 'Description for product 86', 843, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1312, 'Product 54', 'Description for product 54', 1335, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1313, 'Product 31', 'Description for product 31', 1770, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1314, 'Product 38', 'Description for product 38', 899, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1315, 'Product 48', 'Description for product 48', 1496, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1316, 'Product 73', 'Description for product 73', 574, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1317, 'Product 46', 'Description for product 46', 215, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1318, 'Product 46', 'Description for product 46', 1618, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1319, 'Product 89', 'Description for product 89', 1934, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1320, 'Product 43', 'Description for product 43', 206, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1321, 'Product 53', 'Description for product 53', 1284, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1322, 'Product 64', 'Description for product 64', 264, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1323, 'Product 71', 'Description for product 71', 1054, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1324, 'Product 14', 'Description for product 14', 949, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1325, 'Product 27', 'Description for product 27', 756, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1326, 'Product 71', 'Description for product 71', 1513, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1327, 'Product 67', 'Description for product 67', 1068, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1328, 'Product 26', 'Description for product 26', 909, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1329, 'Product 93', 'Description for product 93', 1331, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1330, 'Product 24', 'Description for product 24', 1116, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1331, 'Product 72', 'Description for product 72', 1209, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1332, 'Product 82', 'Description for product 82', 964, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1333, 'Product 71', 'Description for product 71', 250, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1334, 'Product 90', 'Description for product 90', 208, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1335, 'Product 70', 'Description for product 70', 658, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1336, 'Product 66', 'Description for product 66', 1634, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1337, 'Product 85', 'Description for product 85', 556, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1338, 'Product 56', 'Description for product 56', 1292, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1339, 'Product 92', 'Description for product 92', 1518, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1340, 'Product 31', 'Description for product 31', 1054, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1341, 'Product 47', 'Description for product 47', 1139, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1342, 'Product 86', 'Description for product 86', 592, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1343, 'Product 52', 'Description for product 52', 1072, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1344, 'Product 63', 'Description for product 63', 1616, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1345, 'Product 13', 'Description for product 13', 1404, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1346, 'Product 75', 'Description for product 75', 696, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1347, 'Product 54', 'Description for product 54', 1660, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1348, 'Product 35', 'Description for product 35', 1767, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1349, 'Product 31', 'Description for product 31', 1029, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1350, 'Product 95', 'Description for product 95', 615, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1351, 'Product 69', 'Description for product 69', 1356, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1352, 'Product 75', 'Description for product 75', 396, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1353, 'Product 98', 'Description for product 98', 593, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1354, 'Product 36', 'Description for product 36', 223, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1355, 'Product 44', 'Description for product 44', 1499, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1356, 'Product 29', 'Description for product 29', 225, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1357, 'Product 42', 'Description for product 42', 1183, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1358, 'Product 36', 'Description for product 36', 811, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1359, 'Product 20', 'Description for product 20', 30, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1360, 'Product 88', 'Description for product 88', 548, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1361, 'Product 84', 'Description for product 84', 596, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1362, 'Product 71', 'Description for product 71', 65, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1363, 'Product 59', 'Description for product 59', 242, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1364, 'Product 77', 'Description for product 77', 344, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1365, 'Product 1', 'Description for product 1', 1087, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1366, 'Product 89', 'Description for product 89', 416, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1367, 'Product 25', 'Description for product 25', 1043, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1368, 'Product 59', 'Description for product 59', 1154, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1369, 'Product 62', 'Description for product 62', 1189, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1370, 'Product 85', 'Description for product 85', 1084, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1371, 'Product 30', 'Description for product 30', 1856, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1372, 'Product 3', 'Description for product 3', 263, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1373, 'Product 31', 'Description for product 31', 972, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1374, 'Product 6', 'Description for product 6', 1331, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1375, 'Product 94', 'Description for product 94', 1247, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1376, 'Product 100', 'Description for product 100', 1442, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1377, 'Product 58', 'Description for product 58', 517, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1378, 'Product 87', 'Description for product 87', 989, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1379, 'Product 4', 'Description for product 4', 641, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1380, 'Product 75', 'Description for product 75', 1055, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1381, 'Product 66', 'Description for product 66', 927, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1382, 'Product 41', 'Description for product 41', 1390, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1383, 'Product 40', 'Description for product 40', 744, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1384, 'Product 16', 'Description for product 16', 1978, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1385, 'Product 21', 'Description for product 21', 440, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1386, 'Product 23', 'Description for product 23', 1671, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1387, 'Product 6', 'Description for product 6', 1765, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1388, 'Product 54', 'Description for product 54', 733, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1389, 'Product 21', 'Description for product 21', 1896, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1390, 'Product 74', 'Description for product 74', 913, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1391, 'Product 75', 'Description for product 75', 918, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1392, 'Product 17', 'Description for product 17', 1120, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1393, 'Product 38', 'Description for product 38', 1052, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1394, 'Product 87', 'Description for product 87', 262, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1395, 'Product 17', 'Description for product 17', 1590, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1396, 'Product 92', 'Description for product 92', 1424, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1397, 'Product 71', 'Description for product 71', 359, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1398, 'Product 58', 'Description for product 58', 1292, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1399, 'Product 29', 'Description for product 29', 1816, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1400, 'Product 15', 'Description for product 15', 1968, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1401, 'Product 66', 'Description for product 66', 839, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1402, 'Product 57', 'Description for product 57', 1132, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1403, 'Product 55', 'Description for product 55', 26, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1404, 'Product 38', 'Description for product 38', 1218, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1405, 'Product 76', 'Description for product 76', 1537, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1406, 'Product 58', 'Description for product 58', 954, 1, '2022-03-18 18:36:20', NULL);
INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES(1407, 'Product 50', 'Description for product 50', 1252, 1, '2022-03-18 18:36:20', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES(1, 'none@none.no', '[\"ROLE_USER\"]', '$2y$13$jDi6xaE5WsZVwMGh75xbcubbcjzO8DTDeA0ShSXaxE4Tjmh8Ei6T2');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BA5AE01D12469DE2` (`category_id`);

--
-- Индексы таблицы `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1408;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `FK_BA5AE01D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
