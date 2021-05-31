-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 31 2021 г., 09:35
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `feedback`
--

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `homepage`, `message`, `date`, `ip`, `browser`) VALUES
(18, 'admin', 'mail@mail.ru', '', 'message 1', '26-05-2021', '127.0.0.1', 'Chrome'),
(21, 'admin', 'mail@mail.ru', '', 'message 2', '26-05-2021', '127.0.0.1', 'Chrome'),
(22, 'admin', 'mail@mail.ru', '', 'message 3', '26-05-2021', '127.0.0.1', 'Chrome'),
(23, 'admin', 'mail@mail.ru', '', 'message 4', '26-05-2021', '127.0.0.1', 'Chrome'),
(24, 'admin', 'mail@mail.ru', '', 'message 5', '26-05-2021', '127.0.0.1', 'Chrome'),
(25, 'admin', 'mail@mail.ru', '', 'message 6', '26-05-2021', '127.0.0.1', 'Chrome'),
(26, 'admin', 'mail@mail.ru', '', 'message 7', '26-05-2021', '127.0.0.1', 'Chrome'),
(27, 'admin', 'mail@mail.ru', '', 'message 8', '26-05-2021', '127.0.0.1', 'Chrome'),
(28, 'admin', 'mail@mail.ru', '', 'message 9', '26-05-2021', '127.0.0.1', 'Chrome'),
(31, 'admin', 'mail@mail.ru', '', 'message 10', '26-05-2021', '127.0.0.1', 'Chrome'),
(32, 'admin', 'mail@mail.ru', '', 'message 11', '26-05-2021', '127.0.0.1', 'Chrome'),
(33, 'John', 'john@mail.ru', 'http://vk.com', 'message 12', '26-05-2021', '127.0.0.1', 'Chrome'),
(34, 'John', 'john@mail.ru', 'http://vk.com', 'message 13', '26-05-2021', '127.0.0.1', 'Chrome'),
(35, 'John', 'john@mail.ru', 'http://vk.com', 'message 14', '26-05-2021', '127.0.0.1', 'Chrome'),
(36, 'John', 'john@mail.ru', 'http://vk.com', 'message 15', '26-05-2021', '127.0.0.1', 'Chrome'),
(37, 'John', 'john@mail.ru', 'http://vk.com', 'message 16', '26-05-2021', '127.0.0.1', 'Chrome'),
(38, 'John', 'john@mail.ru', 'http://vk.com', 'message 17', '26-05-2021', '127.0.0.1', 'Chrome'),
(39, 'John', 'john@mail.ru', 'http://vk.com', 'message 18', '26-05-2021', '127.0.0.1', 'Chrome'),
(40, 'John', 'john@mail.ru', 'http://vk.com', 'message 19', '26-05-2021', '127.0.0.1', 'Chrome'),
(42, 'John', 'john@mail.ru', 'http://vk.com', 'message 20', '26-05-2021', '127.0.0.1', 'Chrome'),
(43, 'John', 'john@mail.ru', 'http://vk.com', 'message 21', '26-05-2021', '127.0.0.1', 'Chrome'),
(44, 'John', 'john@mail.ru', 'http://vk.com', 'message 22', '26-05-2021', '127.0.0.1', 'Chrome'),
(45, 'John', 'john@mail.ru', 'http://vk.com', 'message 23', '26-05-2021', '127.0.0.1', 'Chrome'),
(46, 'John', 'john@mail.ru', 'http://vk.com', 'message 24', '26-05-2021', '127.0.0.1', 'Chrome'),
(47, 'John', 'john@mail.ru', 'http://vk.com', 'message 25', '26-05-2021', '127.0.0.1', 'Chrome'),
(48, 'John', 'john@mail.ru', 'http://vk.com', 'message 26', '26-05-2021', '127.0.0.1', 'Chrome'),
(49, 'John', 'john@mail.ru', 'http://vk.com', 'message 27', '27-05-2021', '127.0.0.1', 'Chrome'),
(50, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 28', '28-05-2021', '127.0.0.1', 'Chrome'),
(51, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 29', '28-05-2021', '127.0.0.1', 'Chrome'),
(52, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 30', '28-05-2021', '127.0.0.1', 'Chrome'),
(53, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 31', '28-05-2021', '127.0.0.1', 'Chrome'),
(54, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 32', '28-05-2021', '127.0.0.1', 'Chrome'),
(55, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 33', '28-05-2021', '127.0.0.1', 'Chrome'),
(56, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 34', '28-05-2021', '127.0.0.1', 'Chrome'),
(57, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 35', '28-05-2021', '127.0.0.1', 'Chrome'),
(58, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 36', '28-05-2021', '127.0.0.1', 'Chrome'),
(59, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 37', '28-05-2021', '127.0.0.1', 'Chrome'),
(60, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 38', '28-05-2021', '127.0.0.1', 'Chrome'),
(61, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 39', '28-05-2021', '127.0.0.1', 'Chrome'),
(62, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 40', '28-05-2021', '127.0.0.1', 'Chrome'),
(63, 'HomerSimpson', 'homer@yandex.ru', 'http://homer.com', 'message 41', '28-05-2021', '127.0.0.1', 'Chrome'),
(64, 'Stan', 'smith@google.com', '', 'message 42', '28-05-2021', '127.0.0.1', 'Chrome'),
(66, 'Stan', 'smith@google.com', '', 'message 43', '28-05-2021', '127.0.0.1', 'Chrome'),
(67, 'HomerSimpson', 'homer@yandex.ru', '', 'message 44', '28-05-2021', '127.0.0.1', 'Chrome'),
(68, 'HomerSimpson', 'homer@yandex.ru', '', 'message 45', '29-05-2021', '127.0.0.1', 'Chrome'),
(69, 'HomerSimpson', 'homer@yandex.ru', '', 'message 46', '29-05-2021', '127.0.0.1', 'Chrome'),
(70, 'HomerSimpson', 'homer@yandex.ru', '', 'message 47', '29-05-2021', '127.0.0.1', 'Chrome'),
(71, 'HomerSimpson', 'homer@yandex.ru', '', 'message 48', '29-05-2021', '127.0.0.1', 'Chrome'),
(72, 'HomerSimpson', 'homer@yandex.ru', '', 'message 49', '29-05-2021', '127.0.0.1', 'Chrome'),
(73, 'HomerSimpson', 'homer@yandex.ru', '', 'message 50', '29-05-2021', '127.0.0.1', 'Chrome'),
(74, 'HomerSimpson', 'homer@yandex.ru', '', 'message 51', '29-05-2021', '127.0.0.1', 'Chrome'),
(75, 'HomerSimpson', 'homer@yandex.ru', '', 'message 52', '29-05-2021', '127.0.0.1', 'Chrome'),
(76, 'HomerSimpson', 'homer@yandex.ru', '', 'message 53', '29-05-2021', '127.0.0.1', 'Chrome'),
(77, 'HomerSimpson', 'homer@yandex.ru', '', 'message 54', '29-05-2021', '127.0.0.1', 'Chrome'),
(78, 'HomerSimpson', 'homer@yandex.ru', '', 'message 55', '29-05-2021', '127.0.0.1', 'Chrome'),
(79, 'HomerSimpson', 'homer@yandex.ru', '', 'message 56', '29-05-2021', '127.0.0.1', 'Chrome'),
(80, 'HomerSimpson', 'homer@yandex.ru', '', 'message 57', '29-05-2021', '127.0.0.1', 'Chrome'),
(86, 'admin', 'mail@mail.ru', '0', 'qqqqqqqqq', '30-05-2021', '127.0.0.1', 'Chrome'),
(88, 'admin', 'mail@mail.ru', '', '%%%', '30-05-2021', '127.0.0.1', 'Chrome'),
(93, 'admin', 'mail@mail.ru', '', '', '30-05-2021', '127.0.0.1', 'Chrome'),
(94, 'admin', 'mail@mail.ru', '', '', '30-05-2021', '127.0.0.1', 'Chrome'),
(95, 'Usre1', 'mail@mail.ru', '', 'hello', '30-05-2021', '127.0.0.1', 'Chrome'),
(96, 'HomerSimpson', 'homer@yandex.ru', '', 'Всем привет!', '30-05-2021', '127.0.0.1', 'Chrome');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
