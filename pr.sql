-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Фев 04 2018 г., 18:24
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `pr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `materials`
--

CREATE TABLE IF NOT EXISTS `materials` (
  `mat_item` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mat_category` tinytext NOT NULL,
  `mat_description` text NOT NULL,
  `mat_currency` tinytext NOT NULL,
  `mat_price` double(10,2) unsigned NOT NULL,
  PRIMARY KEY (`mat_item`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Дамп данных таблицы `materials`
--

INSERT INTO `materials` (`mat_item`, `mat_category`, `mat_description`, `mat_currency`, `mat_price`) VALUES
(1, 'ODF', 'ODF 48', 'UAH', 100.00),
(2, 'ODF', 'ODF 24 FC', 'UAH', 90.23),
(3, 'ODF', 'ODF 24 F', 'UAH', 90.23),
(4, 'ODF', 'ODF 24 LC', 'UAH', 340.50),
(5, 'ODF', 'ODF 96 FC', 'UAH', 300.00),
(6, 'ODF', 'ODF line 24 SC', 'UAH', 200.50),
(7, 'ODF', 'ODF 48 LC', 'UAH', 400.80),
(8, 'ODF', 'ODF 48 LC', 'UAH', 400.80),
(9, 'ODF', 'ODF 12 LC', 'UAH', 307.69),
(10, 'ODF', 'ODF 24 SC', 'UAH', 500.23),
(11, 'ODF', 'ODF 24 SC', 'UAH', 500.23),
(12, 'ODF', 'ODF 24 SC UK', 'UAH', 604.52),
(13, 'ODF', 'ODF 48 FC', 'UAH', 295.51),
(14, 'ODF', 'ODF 96 FC', 'UAH', 460.30),
(15, 'ODF', 'ODF 12 FC Outdoor', 'UAH', 1000.56),
(16, 'ODF', 'ODF 12 FC Outdoor/Indoor', 'UAH', 1000.56),
(17, 'ODF', 'ODF 12 SC', 'UAH', 204.58),
(18, 'ODF', 'ODF 12 SC', 'UAH', 204.58),
(19, 'ODF', 'ODF 12 SC', 'UAH', 204.58),
(20, 'ODF', 'ODF 12 SC', 'UAH', 204.58),
(21, 'ODF', 'ODF 12 SC', 'UAH', 204.58),
(22, 'ODF', 'ODF 12 SC', 'UAH', 204.58),
(23, 'ODF', 'ODF 12', 'UAH', 90.00),
(24, 'ODF', 'ODF 12 LC', 'UAH', 39.78),
(25, 'ODF', 'ODF 12 LC', 'UAH', 39.78),
(26, 'ODF', 'ODF line 24 FS', 'UAH', 232.78),
(27, 'FO cable', 'FO in cable duct  24 OB', 'USD', 600.00),
(28, 'FO cable', 'FO cable 48 in cable duct', 'UAS', 900.00),
(29, 'FO_cable', 'FO cable 24', 'USD', 595.00),
(30, 'FO cable', 'FO cable 12 FO', 'USD', 450.88),
(31, 'FO cable', 'FO cable 96 FO', 'USD', 1500.67),
(32, 'MW', 'MW Huawei RTN950', 'USD', 2300.40),
(33, 'MW', 'MW Ericsson Pt20', 'USD', 7450.67),
(34, 'DWDM', 'Huawei DWDM 100G', 'USD', 60578.67),
(35, 'DWDM', 'Huawei DWDM 40G', 'USD', 35578.67),
(36, 'MW', 'Huawei MW 980', 'USD', 5578.67);

-- --------------------------------------------------------

--
-- Структура таблицы `pr`
--

CREATE TABLE IF NOT EXISTS `pr` (
  `pr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pr_line` int(10) unsigned NOT NULL,
  `pr_itemCode` int(10) unsigned NOT NULL,
  `pr_quantity` int(10) unsigned NOT NULL,
  `pr_amount` double(10,2) unsigned NOT NULL,
  `pr_curency` text NOT NULL,
  PRIMARY KEY (`pr_id`),
  KEY `pr_itemCode` (`pr_itemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `pr_description`
--

CREATE TABLE IF NOT EXISTS `pr_description` (
  `descpr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descpr_pr` int(10) NOT NULL,
  `descpr_descriptio` text NOT NULL,
  PRIMARY KEY (`descpr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `pr`
--
ALTER TABLE `pr`
  ADD CONSTRAINT `pr_ibfk_1` FOREIGN KEY (`pr_itemCode`) REFERENCES `materials` (`mat_item`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
