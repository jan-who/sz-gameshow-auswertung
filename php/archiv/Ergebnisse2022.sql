-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: sz-gameshow-db
-- Erstellungszeit: 10. Nov 2022 um 18:10
-- Server-Version: 8.0.30
-- PHP-Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `gameshow`
--
DROP DATABASE IF EXISTS `gameshow`;
CREATE DATABASE IF NOT EXISTS `gameshow` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `gameshow`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
  `game_id` tinyint NOT NULL,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `game_mode` tinyint(1) NOT NULL DEFAULT '1',
  `diff_points` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Daten für Tabelle `games`
--

INSERT INTO `games` (`game_id`, `name`, `game_mode`, `diff_points`) VALUES
(1, '2 Min. zum Auftritt', 4, NULL),
(2, 'Deine Mudda', 4, NULL),
(3, 'Headbanging', 4, NULL),
(4, '1, 2 oder 3 ', 1, NULL),
(5, '32 Fang auf', 1, NULL),
(6, 'Atemlos', 5, NULL),
(7, 'Das letzte Hemd', 4, NULL),
(8, 'Kalüngel Open', 1, NULL),
(9, 'Gib Kette', 1, NULL),
(10, 'Cliffhanger', 5, NULL),
(11, 'Der heilige Gral', 6, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game_mode`
--

DROP TABLE IF EXISTS `game_mode`;
CREATE TABLE `game_mode` (
  `id` tinyint NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `game_mode`
--

INSERT INTO `game_mode` (`id`, `description`) VALUES
(1, 'Punktespiel, höchste Punktzahl gewinnt (kein Tie-Braker)'),
(2, 'Punktspiel, höchste Punktzahl gewinnt (niedrigste Zeit als Tie-Braker)'),
(3, 'Punktespiel, niedrigste Punktzahl gewinnt (kein Tie-Braker)'),
(4, 'Zeitspiel, schnellste Zeit gewinnt'),
(5, 'Zeitspiel, höchste Zeit gewinnt'),
(6, 'Punkte-Differenzspiel, niedrigste absolute Abweichung gewinnt');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `scores`
--

DROP TABLE IF EXISTS `scores`;
CREATE TABLE `scores` (
  `street_id` tinyint NOT NULL,
  `game_id` tinyint NOT NULL,
  `points` smallint DEFAULT NULL,
  `time` time DEFAULT NULL,
  `joker` tinyint(1) NOT NULL,
  `gameshow_points` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `scores`
--

INSERT INTO `scores` (`street_id`, `game_id`, `points`, `time`, `joker`, `gameshow_points`) VALUES
(1, 1, NULL, '00:03:00', 1, 10),
(2, 1, NULL, '00:03:12', 0, 4),
(3, 1, NULL, '00:02:59', 0, 6),
(4, 1, NULL, '00:02:39', 0, 10),
(5, 1, NULL, '00:02:08', 0, 12),
(6, 1, NULL, '00:02:40', 0, 9),
(7, 1, NULL, '00:02:51', 0, 7),
(8, 1, NULL, '00:02:08', 0, 12),
(9, 1, NULL, '00:02:09', 0, 11),
(10, 1, NULL, '00:03:14', 0, 3),
(11, 1, NULL, '00:03:15', 0, 2),
(12, 1, NULL, '00:03:31', 0, 1),
(13, 1, NULL, '00:02:50', 0, 8),
(1, 2, NULL, '00:02:37', 0, 9),
(2, 2, NULL, '00:02:14', 0, 12),
(3, 2, NULL, '00:02:33', 0, 10),
(4, 2, NULL, '00:03:03', 0, 7),
(5, 2, NULL, '00:02:25', 0, 11),
(6, 2, NULL, '00:03:33', 0, 2),
(7, 2, NULL, '00:03:12', 0, 5),
(8, 2, NULL, '00:02:45', 0, 8),
(9, 2, NULL, '00:03:36', 0, 1),
(10, 2, NULL, '00:03:23', 0, 3),
(11, 2, NULL, '00:03:36', 0, 1),
(12, 2, NULL, '00:03:15', 0, 4),
(13, 2, NULL, '00:03:10', 0, 6),
(1, 3, NULL, '00:03:00', 0, 1),
(2, 3, NULL, '00:03:00', 0, 1),
(3, 3, NULL, '00:03:00', 0, 1),
(4, 3, NULL, '00:00:33', 0, 5),
(5, 3, NULL, '00:00:14', 0, 7),
(6, 3, NULL, '00:00:27', 1, 12),
(7, 3, NULL, '00:03:00', 0, 1),
(8, 3, NULL, '00:02:09', 0, 2),
(9, 3, NULL, '00:03:00', 0, 1),
(10, 3, NULL, '00:03:00', 0, 1),
(11, 3, NULL, '00:00:50', 0, 4),
(12, 3, NULL, '00:03:00', 0, 1),
(13, 3, NULL, '00:01:01', 0, 3),
(1, 4, 8, NULL, 0, 4),
(2, 4, 6, NULL, 0, 2),
(3, 4, 10, NULL, 1, 12),
(4, 4, 7, NULL, 0, 3),
(5, 4, 6, NULL, 0, 2),
(6, 4, 8, NULL, 0, 4),
(7, 4, 7, NULL, 0, 3),
(8, 4, 9, NULL, 0, 5),
(9, 4, 6, NULL, 0, 2),
(10, 4, 7, NULL, 1, 6),
(11, 4, 8, NULL, 1, 8),
(12, 4, 4, NULL, 0, 1),
(13, 4, 8, NULL, 0, 4),
(1, 5, 0, NULL, 0, 1),
(2, 5, 8, NULL, 0, 6),
(3, 5, 6, NULL, 0, 4),
(4, 5, 10, NULL, 0, 7),
(5, 5, 2, NULL, 0, 3),
(6, 5, 6, NULL, 0, 4),
(7, 5, 1, NULL, 0, 2),
(8, 5, 7, NULL, 0, 5),
(9, 5, 2, NULL, 0, 3),
(10, 5, 0, NULL, 0, 1),
(11, 5, 13, NULL, 0, 9),
(12, 5, 12, NULL, 1, 16),
(13, 5, 7, NULL, 0, 5),
(1, 6, NULL, '00:42:00', 0, 11),
(2, 6, NULL, '00:33:31', 0, 8),
(3, 6, NULL, '00:21:00', 0, 4),
(4, 6, NULL, '00:25:00', 0, 6),
(5, 6, NULL, '00:36:00', 0, 9),
(6, 6, NULL, '01:07:43', 0, 12),
(7, 6, NULL, '00:18:00', 0, 3),
(8, 6, NULL, '00:09:00', 0, 1),
(9, 6, NULL, '00:38:00', 0, 10),
(10, 6, NULL, '00:23:00', 0, 5),
(11, 6, NULL, '00:23:00', 0, 5),
(12, 6, NULL, '00:10:19', 0, 2),
(13, 6, NULL, '00:26:00', 0, 7),
(1, 7, NULL, '00:05:25', 0, 1),
(2, 7, NULL, '00:02:24', 0, 9),
(3, 7, NULL, '00:01:23', 0, 12),
(4, 7, NULL, '00:03:05', 1, 8),
(5, 7, NULL, '00:02:23', 1, 20),
(6, 7, NULL, '00:02:53', 0, 7),
(7, 7, NULL, '00:02:03', 1, 22),
(8, 7, NULL, '00:03:36', 0, 3),
(9, 7, NULL, '00:02:55', 0, 6),
(10, 7, NULL, '00:02:35', 0, 8),
(11, 7, NULL, '00:04:19', 0, 2),
(12, 7, NULL, '00:01:16', 0, 13),
(13, 7, NULL, '00:03:04', 1, 10),
(1, 8, 25, NULL, 0, 6),
(2, 8, 20, NULL, 1, 8),
(3, 8, 13, NULL, 0, 1),
(4, 8, 15, NULL, 0, 2),
(5, 8, 37, NULL, 0, 10),
(6, 8, 23, NULL, 0, 5),
(7, 8, 32, NULL, 0, 9),
(8, 8, 19, NULL, 1, 6),
(9, 8, 20, NULL, 1, 8),
(10, 8, 26, NULL, 0, 7),
(11, 8, 28, NULL, 0, 8),
(12, 8, 26, NULL, 0, 7),
(13, 8, 28, NULL, 0, 8),
(1, 9, 1800, NULL, 0, 5),
(2, 9, 2000, NULL, 0, 7),
(3, 9, 2100, NULL, 0, 8),
(4, 9, 1400, NULL, 0, 1),
(5, 9, 1500, NULL, 0, 2),
(6, 9, 2000, NULL, 0, 7),
(7, 9, 1900, NULL, 0, 6),
(8, 9, 1600, NULL, 0, 3),
(9, 9, 2100, NULL, 0, 8),
(10, 9, 1700, NULL, 0, 4),
(11, 9, 1900, NULL, 0, 6),
(12, 9, 1800, NULL, 0, 5),
(13, 9, 2000, NULL, 0, 7),
(1, 10, NULL, '00:01:18', 0, 2),
(2, 10, NULL, '00:02:00', 0, 10),
(3, 10, NULL, '00:01:54', 0, 9),
(4, 10, NULL, '00:01:50', 0, 8),
(5, 10, NULL, '00:01:22', 0, 3),
(6, 10, NULL, '00:03:14', 0, 13),
(7, 10, NULL, '00:01:24', 0, 4),
(8, 10, NULL, '00:01:17', 0, 1),
(9, 10, NULL, '00:02:19', 0, 12),
(10, 10, NULL, '00:01:33', 0, 5),
(11, 10, NULL, '00:01:47', 0, 7),
(12, 10, NULL, '00:02:11', 0, 11),
(13, 10, NULL, '00:01:40', 0, 6),
(1, 11, 4200, NULL, 0, 5),
(2, 11, 993, NULL, 0, 10),
(3, 11, 6186, NULL, 0, 2),
(4, 11, 7316, NULL, 0, 1),
(5, 11, 2787, NULL, 0, 8),
(6, 11, 3841, NULL, 0, 6),
(7, 11, 5253, NULL, 0, 3),
(8, 11, 4433, NULL, 0, 4),
(9, 11, 1774, NULL, 0, 9),
(10, 11, 621, NULL, 0, 12),
(11, 11, 636, NULL, 0, 11),
(12, 11, 2810, NULL, 0, 7),
(13, 11, 137, NULL, 0, 13);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `street`
--

DROP TABLE IF EXISTS `street`;
CREATE TABLE `street` (
  `street_id` tinyint NOT NULL,
  `name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Daten für Tabelle `street`
--

INSERT INTO `street` (`street_id`, `name`) VALUES
(1, 'Pi-Ti-Kle-Ei'),
(2, 'Lions'),
(3, 'Breite Hemmenstorchenlaube'),
(4, 'Rasselbande'),
(5, 'Buchenweg & Friends'),
(6, 'Mi-Le-Ra'),
(7, 'Neu im Knie'),
(8, 'Gartenstraße'),
(9, 'U-Bahn Linie 13'),
(10, 'Windmühlenweg'),
(11, 'Hagener Weg'),
(12, 'Kirchstraße'),
(13, 'Legoland');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indizes für die Tabelle `game_mode`
--
ALTER TABLE `game_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `scores`
--
ALTER TABLE `scores`
  ADD UNIQUE KEY `street-game-index` (`game_id`,`street_id`) USING BTREE;

--
-- Indizes für die Tabelle `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`street_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `games`
--
ALTER TABLE `games`
  MODIFY `game_id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT für Tabelle `game_mode`
--
ALTER TABLE `game_mode`
  MODIFY `id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `street`
--
ALTER TABLE `street`
  MODIFY `street_id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
