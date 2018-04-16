-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 08. Jan 2018 um 16:55
-- Server-Version: 5.7.20-0ubuntu0.16.04.1
-- PHP-Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `unternehmen`
--
CREATE DATABASE IF NOT EXISTS `unternehmen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `unternehmen`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Type`
--

CREATE TABLE `Type` (
  `id` int(1) NOT NULL,
  `Namen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Type`
--

INSERT INTO `Type` (`id`, `Namen`) VALUES
(1, 'hund'),
(2, 'katze'),
(3, 'maus'),
(4, 'Fisch');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `warenlager`
--

CREATE TABLE `warenlager` (
  `id` int(10) NOT NULL,
  `name` varchar(65) COLLATE utf8_german2_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_german2_ci NOT NULL,
  `amount` int(10) NOT NULL,
  `description` varchar(1000) COLLATE utf8_german2_ci DEFAULT NULL,
  `picpath` text COLLATE utf8_german2_ci,
  `orderamount` int(10) DEFAULT NULL,
  `minamount` int(5) DEFAULT NULL,
  `supplayer` varchar(40) COLLATE utf8_german2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `warenlager`
--
ALTER TABLE `warenlager`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `warenlager`
--
ALTER TABLE `warenlager`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
