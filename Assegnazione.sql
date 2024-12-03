-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Dic 04, 2024 alle 00:49
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ospedale`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Assegnazione`
--

CREATE TABLE `Assegnazione` (
  `id` int(11) NOT NULL,
  `turno_id` int(11) NOT NULL,
  `prestazione_id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `disponibilita` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `Assegnazione`
--

INSERT INTO `Assegnazione` (`id`, `turno_id`, `prestazione_id`, `data_id`, `disponibilita`) VALUES
(1, 1, 1, 1, 0),
(2, 2, 2, 2, 1),
(3, 3, 3, 3, 1),
(4, 4, 4, 4, 1),
(5, 5, 5, 5, 1),
(6, 1, 2, 6, 1),
(7, 2, 3, 7, 1);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Assegnazione`
--
ALTER TABLE `Assegnazione`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `turno_id` (`turno_id`,`prestazione_id`,`data_id`),
  ADD KEY `prestazione_id` (`prestazione_id`),
  ADD KEY `data_id` (`data_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `Assegnazione`
--
ALTER TABLE `Assegnazione`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `Assegnazione`
--
ALTER TABLE `Assegnazione`
  ADD CONSTRAINT `assegnazione_ibfk_1` FOREIGN KEY (`turno_id`) REFERENCES `Turno` (`id`),
  ADD CONSTRAINT `assegnazione_ibfk_2` FOREIGN KEY (`prestazione_id`) REFERENCES `Prestazione` (`id`),
  ADD CONSTRAINT `assegnazione_ibfk_3` FOREIGN KEY (`data_id`) REFERENCES `Data` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
