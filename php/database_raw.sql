-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 30. September 2011 um 14:20
-- Server Version: 5.5.8
-- PHP-Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `gameshow`
--
CREATE DATABASE IF NOT EXISTS `gameshow` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `gameshow`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `game1`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `game2`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `game3`
--

INSERT INTO `game3` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `game4`
--

INSERT INTO `game4` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `game5`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `game6`
--

INSERT INTO `game6` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game7`
--

CREATE TABLE IF NOT EXISTS `game7` (
  `street_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `points` tinyint(4) DEFAULT NULL,
  `times` time DEFAULT NULL,
  `joker` tinyint(1) DEFAULT NULL,
  `points_new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `game7`
--

INSERT INTO `game7` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `game8`
--

INSERT INTO `game8` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `game9`
--

INSERT INTO `game9` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `game10`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `game11`
--

INSERT INTO `game11` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `game12`
--

INSERT INTO `game12` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci AUTO_INCREMENT=22 ;

--
-- Daten für Tabelle `game13`
--

INSERT INTO `game13` (`street_id`, `points`, `times`, `joker`, `points_new`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL);

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
(1, 'A'),
(2, 'Buchenweg'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F'),
(7, 'Gartenstraße'),
(8, 'H'),
(9, 'I'),
(10, 'J'),
(11, 'K'),
(12, 'L'),
(13, 'M'),
(14, 'N'),
(15, 'O'),
(16, 'P'),
(17, 'Q'),
(18, 'R'),
(19, 'S'),
(20, 'P');
