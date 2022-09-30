-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: sz-gameshow-db
-- Erstellungszeit: 26. Sep 2022 um 14:04
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
CREATE DATABASE IF NOT EXISTS `gameshow` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `gameshow`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `game_id` tinyint NOT NULL,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `game_mode` tinyint(1) NOT NULL DEFAULT '1',
  `diff_points` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Daten für Tabelle `games`
--

TRUNCATE TABLE `games`;
INSERT INTO `games` (`game_id`, `name`, `game_mode`, `diff_points`) VALUES
(1, 'Testspiel A', 1, NULL),
(2, 'Testspiel B', 2, NULL),
(3, 'Testspiel C', 3, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `game_mode`
--

CREATE TABLE IF NOT EXISTS `game_mode` (
  `id` tinyint NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `game_mode`
--

TRUNCATE TABLE `game_mode`;
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

CREATE TABLE IF NOT EXISTS `scores` (
  `street_id` tinyint NOT NULL,
  `game_id` tinyint NOT NULL,
  `points` smallint DEFAULT NULL,
  `time` time DEFAULT NULL,
  `joker` tinyint(1) NOT NULL,
  `gameshow_points`tinyint
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `scores`
--

TRUNCATE TABLE `scores`;
INSERT INTO `scores` (`street_id`, `game_id`, `points`, `time`, `joker`, `gameshow_points`) VALUES
(1, 1, 9, NULL, 1, NULL),
(2, 1, 8, NULL, 0, NULL),
(3, 1, 7, NULL, 0, NULL),
(1, 2, 0, NULL, 0, NULL),
(2, 2, 0, NULL, 0, NULL),
(3, 2, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `street`
--

CREATE TABLE IF NOT EXISTS `street` (
  `street_id` tinyint NOT NULL,
  `name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Daten für Tabelle `street`
--

TRUNCATE TABLE `street`;
INSERT INTO `street` (`street_id`, `name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

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
