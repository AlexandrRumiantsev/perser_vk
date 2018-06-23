-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 19 2018 г., 22:52
-- Версия сервера: 5.6.37
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2advanced`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `title` text NOT NULL,
  `content` text NOT NULL,
  `date_pub` text NOT NULL,
  `autor` text NOT NULL,
  `times` text NOT NULL,
  `indexs` text NOT NULL,
  `preview` text NOT NULL,
  `files` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`title`, `content`, `date_pub`, `autor`, `times`, `indexs`, `preview`, `files`) VALUES
('Тестовая статья', 'содержание', '14 февраля 2019', 'админ', '', '', '', ''),
('Тестовая статья', 'содержание', '14 февраля 2019', 'админ', '', '', '', ''),
('Новая статья', 'Отредактировал', '23 февраля 2019', 'Админ', '1521139334', '', '', ''),
('1223123', '123213213123123', '213213213', '2123123123', '1522782919', 'gr.html', 'test.png', '');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `dates` text NOT NULL,
  `autor` text NOT NULL,
  `content` text NOT NULL,
  `nameblog` text NOT NULL,
  `id` text NOT NULL,
  `touser` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`dates`, `autor`, `content`, `nameblog`, `id`, `touser`) VALUES
('Sunday 25th of March 2018 06:28:01 PM', 'admin', 'feefqfqwdqwdq', '', '', ''),
('Sunday 25th of March 2018 08:16:03 PM', 'admin', 'xx1', 'Статья 2', '', ''),
('Sunday 25th of March 2018 09:47:08 PM', 'admin', 'чччччччч', 'Тестовая статья', '', ''),
('Sunday 25th of March 2018 09:48:04 PM', 'admin', 'новый коммент', 'Новая статья', '', ''),
('Monday 26th of March 2018 09:00:08 PM', 'admin', 'лол кек', 'Новая статья', 'ab44cac19cad4b0d609e74e37e2eb540', ''),
('Monday 26th of March 2018 09:00:08 PM', 'admin', 'лол кек', 'Новая статья', 'ab44cac19cad4b0d609e74e37e2eb540', ''),
('Monday 26th of March 2018 09:00:08 PM', 'admin', 'лол кек', 'Новая статья', 'ab44cac19cad4b0d609e74e37e2eb540', ''),
('Monday 26th of March 2018 11:37:22 PM', 'admin', 'ааааааааsssяяяяxxxxxxxxxxaaaaxxxsssxxxxx11111', 'Новая статья', '6c8cabfafea998a94dd2a20fe5674edb', ''),
('Wednesday 28th of March 2018 10:31:40 PM', 'admin', 'admin, xZXzXzX', 'Статья 2', 'de9b161172a72c7f57a9dae7337264596a52a1fb92c9021313e4dd9bd98ab7c1', 'admin'),
('Wednesday 28th of March 2018 10:36:06 PM', 'admin', 'admin, привет', 'Новая статья', 'c123f9975d75e544f68c716d1aafd1852d7727e0a0201ef52632eb03e554e5f5', 'admin'),
('Wednesday 28th of March 2018 10:59:55 PM', 'admin', 'sacsacas', 'Статья 2', 'a0a116e11031319b5a08d13577c9f6850400800b9e3709493549b305810e10cb', ''),
('Wednesday 28th of March 2018 10:59:55 PM', 'admin', 'admin, xxxxxxxxxxxxxxxxxx', 'Статья 2', 'e48a684ad9cf5e3fa18d61b7f45b53ea0400800b9e3709493549b305810e10cb', 'admin'),
('Wednesday 28th of March 2018 10:59:55 PM', 'admin', 'admin, xxxxxxxxxxxxxxxxxx', 'Статья 2', 'e48a684ad9cf5e3fa18d61b7f45b53ea0400800b9e3709493549b305810e10cb', 'admin'),
('Wednesday 28th of March 2018 10:59:55 PM', 'admin', 'admin, xxxxxxxxxxxxxxxxxx', 'Статья 2', 'e48a684ad9cf5e3fa18d61b7f45b53ea0400800b9e3709493549b305810e10cb', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `communications`
--

CREATE TABLE `communications` (
  `name` text NOT NULL,
  `mail` text NOT NULL,
  `id` text NOT NULL,
  `dates` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `communications`
--

INSERT INTO `communications` (`name`, `mail`, `id`, `dates`, `text`) VALUES
('dqw', 'dqwdqw', 'qwd', 'dwqqwd', 'qwdqwd'),
('dqw', 'dqwdqw', 'qwd', 'dwqqwd', 'qwdqwd'),
('dqwdwq', 'dqwdqwwqd', '4b993984d544a845da14ee7c5dd109e4', 'dwqqwddwq', 'qwdqwddqwdqwdqw'),
('qqqq', 'qqqqq', '3bad6af0fa4b8b330d162e19938ee981', 'Sunday 25th of March 2018 03:20:52 AM', 'qqqqq'),
('qqqq', 'qqqqq', '3bad6af0fa4b8b330d162e19938ee981', 'Sunday 25th of March 2018 03:22:01 AM', 'qqqqq'),
('привет', 'майл', '608333adc72f545078ede3aad71bfe74', 'Sunday 25th of March 2018 11:02:17 PM', 'цйуцуйцвцйвйцвйцвцйвв');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1519544812),
('m140506_102106_rbac_init', 1519544821),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1519544821);

-- --------------------------------------------------------

--
-- Структура таблицы `Projects`
--

CREATE TABLE `Projects` (
  `url` text NOT NULL,
  `resurs` text NOT NULL,
  `pic` text NOT NULL,
  `studio` text NOT NULL,
  `name` text NOT NULL,
  `id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Projects`
--

INSERT INTO `Projects` (`url`, `resurs`, `pic`, `studio`, `name`, `id`) VALUES
('ags.center.ru', 'BITRIX-developer,Верстальщик.', 'test.png', 'Фабула', 'ООО \"АгроЦентрСервис\"', 'e984ffc93f32cd9bd123d2142d094036');

-- --------------------------------------------------------

--
-- Структура таблицы `User`
--

CREATE TABLE `User` (
  `username` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `ava` text NOT NULL,
  `id` int(11) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `token` varchar(32) NOT NULL,
  `status` text NOT NULL,
  `password` text NOT NULL,
  `access_token` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `User`
--

INSERT INTO `User` (`username`, `email`, `phone`, `ava`, `id`, `auth_key`, `token`, `status`, `password`, `access_token`) VALUES
('admin', 'r-sasha@list.ru', '89275308451', 'images\\ avatar.jpg', 1, '', '', 'admin', 'eba5f01e427afa34f283090b905674b1', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `auth_assignment_user_id_idx` (`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
