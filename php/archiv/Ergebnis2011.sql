-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 02. Okt 2011 um 00:47
-- Server Version: 5.5.16
-- PHP-Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `gameshow`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game1`
--

CREATE TABLE IF NOT EXISTS `game1` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` tinyint(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game1`
--

INSERT INTO `game1` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, 4, NULL, NULL, 8),
(2, 3, NULL, NULL, 7),
(3, 5, NULL, NULL, 12),
(4, 2, NULL, NULL, 3),
(5, 3, NULL, NULL, 7),
(6, 10, NULL, NULL, 18),
(7, 3, NULL, NULL, 7),
(8, NULL, NULL, NULL, 1),
(9, 7, NULL, NULL, 15),
(10, 5, NULL, NULL, 12),
(11, 7, NULL, NULL, 15),
(12, 3, NULL, NULL, 7),
(13, 11, NULL, NULL, 19),
(14, 5, NULL, NULL, 12),
(15, 5, NULL, NULL, 12),
(16, 14, NULL, NULL, 20),
(17, 7, NULL, NULL, 15),
(18, 10, NULL, NULL, 18),
(19, 10, NULL, NULL, 18),
(20, 2, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game2`
--

CREATE TABLE IF NOT EXISTS `game2` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` tinyint(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game2`
--

INSERT INTO `game2` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, 15, NULL, NULL, 8),
(2, 15, NULL, NULL, 8),
(3, 14, NULL, NULL, 5),
(4, 19, NULL, NULL, 16),
(5, 16, NULL, NULL, 11),
(6, 18, NULL, NULL, 15),
(7, 14, NULL, NULL, 5),
(8, 18, NULL, 1, 15),
(9, 25, NULL, NULL, 18),
(10, 25, NULL, NULL, 18),
(11, 18, NULL, 1, 15),
(12, 16, NULL, NULL, 11),
(13, 26, NULL, 1, 19),
(14, 18, NULL, NULL, 15),
(15, 9, NULL, 1, 1),
(16, 12, NULL, NULL, 3),
(17, 12, NULL, 1, 3),
(18, 28, NULL, NULL, 20),
(19, 15, NULL, NULL, 8),
(20, 16, NULL, 1, 11);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game3`
--

CREATE TABLE IF NOT EXISTS `game3` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` tinyint(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game3`
--

INSERT INTO `game3` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, '02:39:59', NULL, 12),
(2, NULL, '01:33:31', NULL, 2),
(3, NULL, '03:20:54', NULL, 17),
(4, NULL, '03:23:42', 1, 18),
(5, NULL, '03:36:35', NULL, 19),
(6, NULL, '03:05:56', 1, 14),
(7, NULL, '02:27:54', NULL, 9),
(8, NULL, '02:43:51', NULL, 13),
(9, NULL, '03:12:00', NULL, 15),
(10, NULL, '02:30:00', NULL, 10),
(11, NULL, '02:08:22', NULL, 5),
(12, NULL, '02:25:00', 1, 7),
(13, NULL, '01:59:19', NULL, 4),
(14, NULL, '02:33:19', NULL, 11),
(15, NULL, '01:57:35', NULL, 3),
(16, NULL, '02:26:29', NULL, 8),
(17, NULL, '00:46:58', NULL, 1),
(18, NULL, '03:16:59', NULL, 16),
(19, NULL, '04:27:35', NULL, 20),
(20, NULL, '02:22:00', NULL, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game4`
--

CREATE TABLE IF NOT EXISTS `game4` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` tinyint(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game4`
--

INSERT INTO `game4` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, 2, NULL, NULL, 9),
(2, 3, NULL, NULL, 13),
(3, 2, NULL, 1, 9),
(4, 2, NULL, NULL, 9),
(5, 1, NULL, NULL, 2),
(6, 2, NULL, NULL, 9),
(7, 2, NULL, NULL, 9),
(8, 2, NULL, NULL, 9),
(9, 1, NULL, NULL, 2),
(10, 2, NULL, NULL, 9),
(11, 3, NULL, NULL, 13),
(12, 5, NULL, NULL, 19),
(13, 4, NULL, NULL, 15),
(14, 3, NULL, NULL, 13),
(15, 3, NULL, NULL, 13),
(16, 5, NULL, NULL, 19),
(17, 6, NULL, NULL, 20),
(18, 4, NULL, 1, 15),
(19, 5, NULL, NULL, 19),
(20, 5, NULL, NULL, 19);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game5`
--

CREATE TABLE IF NOT EXISTS `game5` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` tinyint(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game5`
--

INSERT INTO `game5` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, '00:53:00', 1, 13),
(2, NULL, '00:53:41', NULL, 11),
(3, NULL, '00:49:00', NULL, 18),
(4, NULL, '01:07:56', NULL, 8),
(5, NULL, '00:52:52', 1, 14),
(6, NULL, '01:05:53', NULL, 9),
(7, NULL, '00:51:55', NULL, 16),
(8, NULL, '02:10:52', NULL, 2),
(9, NULL, '00:44:00', NULL, 20),
(10, NULL, '00:53:00', NULL, 13),
(11, NULL, '01:22:52', NULL, 6),
(12, NULL, '00:52:50', NULL, 15),
(13, NULL, '01:33:53', NULL, 4),
(14, NULL, '00:45:09', NULL, 19),
(15, NULL, '03:00:00', NULL, 1),
(16, NULL, '00:55:07', NULL, 10),
(17, NULL, '00:50:25', NULL, 17),
(18, NULL, '01:11:25', NULL, 7),
(19, NULL, '01:30:56', NULL, 5),
(20, NULL, '01:44:00', NULL, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game6`
--

CREATE TABLE IF NOT EXISTS `game6` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` tinyint(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game6`
--

INSERT INTO `game6` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, 5, NULL, NULL, 2),
(2, 9, NULL, NULL, 19),
(3, 7, NULL, NULL, 7),
(4, 8, NULL, NULL, 12),
(5, 6, NULL, NULL, 3),
(6, 8, NULL, NULL, 12),
(7, 9, NULL, NULL, 19),
(8, 9, NULL, NULL, 19),
(9, 9, NULL, 1, 19),
(10, 10, NULL, 1, 20),
(11, 8, NULL, NULL, 12),
(12, 7, NULL, NULL, 7),
(13, 7, NULL, NULL, 7),
(14, 7, NULL, NULL, 7),
(15, 5, NULL, NULL, 2),
(16, 9, NULL, 1, 19),
(17, 8, NULL, NULL, 12),
(18, 9, NULL, NULL, 19),
(19, 8, NULL, 1, 12),
(20, 9, NULL, NULL, 19);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game7`
--

CREATE TABLE IF NOT EXISTS `game7` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` int(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game7`
--

INSERT INTO `game7` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, 140, NULL, NULL, 9),
(2, 50, NULL, 1, 3),
(3, 240, NULL, NULL, 16),
(4, 145, NULL, NULL, 10),
(5, 255, NULL, NULL, 14),
(6, 215, NULL, NULL, 18),
(7, 275, NULL, 1, 11),
(8, 20, NULL, NULL, 2),
(9, 310, NULL, NULL, 9),
(10, 220, NULL, NULL, 19),
(11, 340, NULL, NULL, 5),
(12, 355, NULL, NULL, 4),
(13, 270, NULL, NULL, 13),
(14, 215, NULL, NULL, 18),
(15, 0, NULL, NULL, 1),
(16, 335, NULL, NULL, 6),
(17, 225, NULL, NULL, 20),
(18, 270, NULL, NULL, 13),
(19, 125, NULL, NULL, 7),
(20, 240, NULL, NULL, 16);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game8`
--

CREATE TABLE IF NOT EXISTS `game8` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` tinyint(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game8`
--

INSERT INTO `game8` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, 13, NULL, NULL, 2),
(2, 31, NULL, NULL, 18),
(3, 28, NULL, NULL, 13),
(4, 31, NULL, NULL, 18),
(5, 15, NULL, NULL, 3),
(6, 19, NULL, NULL, 5),
(7, 29, NULL, NULL, 16),
(8, 29, NULL, NULL, 16),
(9, 22, NULL, NULL, 7),
(10, 18, NULL, NULL, 4),
(11, 35, NULL, NULL, 20),
(12, 23, NULL, NULL, 8),
(13, 21, NULL, NULL, 6),
(14, 26, NULL, NULL, 11),
(15, 13, NULL, NULL, 2),
(16, 32, NULL, NULL, 19),
(17, 27, NULL, NULL, 12),
(18, 25, NULL, NULL, 10),
(19, 24, NULL, NULL, 9),
(20, 29, NULL, NULL, 16);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game9`
--

CREATE TABLE IF NOT EXISTS `game9` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` tinyint(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game9`
--

INSERT INTO `game9` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, 33, NULL, NULL, 20),
(2, 35, NULL, NULL, 10),
(3, 34, NULL, NULL, 14),
(4, 33, NULL, NULL, 20),
(5, 34, NULL, NULL, 14),
(6, 33, NULL, NULL, 20),
(7, 35, NULL, NULL, 10),
(8, 31, NULL, NULL, 11),
(9, 30, NULL, NULL, 7),
(10, 27, NULL, NULL, 4),
(11, 39, NULL, NULL, 2),
(12, 33, NULL, NULL, 20),
(13, 33, NULL, NULL, 20),
(14, 19, NULL, 1, 1),
(15, 32, NULL, NULL, 12),
(16, 33, NULL, NULL, 20),
(17, 35, NULL, NULL, 10),
(18, 38, NULL, NULL, 5),
(19, 27, NULL, NULL, 4),
(20, 30, NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game10`
--

CREATE TABLE IF NOT EXISTS `game10` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` int(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game10`
--

INSERT INTO `game10` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, '00:00:00', NULL, 9),
(2, 5, '21:26:29', NULL, 14),
(3, NULL, '00:00:00', NULL, 9),
(4, 2, '21:18:00', NULL, 12),
(5, 5, '21:20:00', NULL, 18),
(6, NULL, '00:00:00', NULL, 9),
(7, 5, '21:24:00', NULL, 16),
(8, 2, '21:45:00', NULL, 10),
(9, 5, '21:25:00', NULL, 15),
(10, NULL, '00:00:00', NULL, 9),
(11, NULL, '00:00:00', NULL, 9),
(12, 5, '22:10:00', NULL, 13),
(13, 7, '21:23:00', NULL, 19),
(14, 5, '21:24:00', NULL, 17),
(15, NULL, '00:00:00', NULL, 9),
(16, NULL, '00:00:00', NULL, 9),
(17, 2, '21:19:00', NULL, 11),
(18, NULL, '00:00:00', NULL, 9),
(19, NULL, '00:00:00', NULL, 9),
(20, 13, '22:11:00', NULL, 20);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game11`
--

CREATE TABLE IF NOT EXISTS `game11` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` tinyint(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game11`
--

INSERT INTO `game11` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, '02:05:31', NULL, 18),
(2, NULL, '02:43:56', NULL, 3),
(3, NULL, '02:12:03', NULL, 14),
(4, NULL, '02:00:56', NULL, 20),
(5, NULL, '02:49:55', NULL, 1),
(6, NULL, '02:12:31', NULL, 13),
(7, NULL, '02:01:00', NULL, 19),
(8, NULL, '02:22:38', NULL, 8),
(9, NULL, '02:08:55', NULL, 15),
(10, NULL, '02:06:44', NULL, 16),
(11, NULL, '02:47:00', NULL, 2),
(12, NULL, '02:18:57', NULL, 9),
(13, NULL, '02:33:12', NULL, 7),
(14, NULL, '02:18:13', NULL, 10),
(15, NULL, '02:36:55', NULL, 6),
(16, NULL, '02:14:25', NULL, 12),
(17, NULL, '02:42:03', NULL, 4),
(18, NULL, '02:39:10', NULL, 5),
(19, NULL, '02:06:19', NULL, 17),
(20, NULL, '02:17:50', NULL, 11);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game12`
--

CREATE TABLE IF NOT EXISTS `game12` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` tinyint(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game12`
--

INSERT INTO `game12` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, 13, NULL, NULL, 12),
(2, 11, NULL, NULL, 20),
(3, 17, NULL, NULL, 4),
(4, 11, NULL, NULL, 20),
(5, 14, NULL, NULL, 9),
(6, 11, NULL, NULL, 20),
(7, 10, NULL, NULL, 14),
(8, 20, NULL, NULL, 3),
(9, 11, NULL, NULL, 20),
(10, 23, NULL, NULL, 1),
(11, 20, NULL, NULL, 3),
(12, 11, NULL, NULL, 20),
(13, 11, NULL, NULL, 20),
(14, 16, NULL, NULL, 5),
(15, 14, NULL, NULL, 9),
(16, 8, NULL, NULL, 9),
(17, 14, NULL, NULL, 9),
(18, 13, NULL, NULL, 12),
(19, 9, NULL, NULL, 12),
(20, 10, NULL, NULL, 14);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game13`
--

CREATE TABLE IF NOT EXISTS `game13` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` tinyint(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci AUTO_INCREMENT=21 ;

--
-- Daten für Tabelle `game13`
--

INSERT INTO `game13` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, '20:15:00', NULL, 19),
(2, NULL, '20:45:00', NULL, 12),
(3, NULL, '23:59:59', NULL, 1),
(4, NULL, '20:15:00', NULL, 19),
(5, NULL, '20:45:00', NULL, 12),
(6, NULL, '20:14:00', NULL, 20),
(7, NULL, '21:10:00', NULL, 3),
(8, NULL, '21:09:00', NULL, 5),
(9, NULL, '20:17:00', NULL, 17),
(10, NULL, '20:47:00', NULL, 10),
(11, NULL, '20:19:00', NULL, 15),
(12, NULL, '21:08:00', NULL, 6),
(13, NULL, '20:47:00', NULL, 10),
(14, NULL, '20:25:00', NULL, 14),
(15, NULL, '21:09:00', NULL, 5),
(16, NULL, '21:40:00', NULL, 2),
(17, NULL, '20:51:00', NULL, 8),
(18, NULL, '20:40:00', NULL, 13),
(19, NULL, '21:03:00', NULL, 7),
(20, NULL, '20:17:00', NULL, 17);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `wertung` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Daten für Tabelle `games`
--

INSERT INTO `games` (`id`, `name`, `wertung`) VALUES
(1, 'Aufsetzer in Eimer', 0),
(2, 'Erkenne Knesebeck', 0),
(3, 'Notenständer', 2),
(4, 'Wer macht was?!', 0),
(5, 'Ballon Laufen', 1),
(6, 'Geschmackstest', 0),
(7, 'Zieltrinken', 3),
(8, 'Kalüngel Open', 0),
(9, 'Schussgeschwindigkeit', 3),
(10, 'Finde das Wittinger', 0),
(11, 'Heimtrainer', 1),
(12, 'Symbole zählen', 3),
(13, 'Prominenter im Sack', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `street`
--

CREATE TABLE IF NOT EXISTS `street` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `street`
--

INSERT INTO `street` (`street_id`, `name`) VALUES
(1, 'TiPiKleeEi'),
(2, 'Die lustigen Vögel vom Steinkamp'),
(3, 'Am Sportplatz'),
(4, 'Windmühlenweg'),
(5, 'Buchenweg'),
(6, 'Legoland'),
(7, '16+3 Immer vorne dabei'),
(8, 'Cross-Fire'),
(9, 'Die Bullen vom Berg'),
(10, 'Breite-Hemmenstädter-Storchenlaube'),
(11, 'Kirchstraße'),
(12, 'Neu im Knie'),
(13, 'Mi-Le-Ra'),
(14, 'Gartenratten'),
(15, 'Die Trümmertruppe'),
(16, 'Seebergweg'),
(17, 'Hundewinkel'),
(18, 'Friedrichsmühle'),
(19, 'RoBiRo'),
(20, 'Schützenstraße');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
