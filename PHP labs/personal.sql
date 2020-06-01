-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Jún 01. 20:43
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `personal`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `date_personale`
--

CREATE TABLE `date_personale` (
  `nume` varchar(50) NOT NULL,
  `prenume` varchar(50) NOT NULL,
  `tata` varchar(50) DEFAULT NULL,
  `mama` varchar(50) DEFAULT NULL,
  `cnp` varchar(13) NOT NULL,
  `serie_nr_buletin` varchar(8) NOT NULL,
  `data_nasterii` datetime DEFAULT NULL,
  `adresa` varchar(50) DEFAULT NULL,
  `casatorit` varchar(2) DEFAULT NULL,
  `copii` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `date_personale`
--

INSERT INTO `date_personale` (`nume`, `prenume`, `tata`, `mama`, `cnp`, `serie_nr_buletin`, `data_nasterii`, `adresa`, `casatorit`, `copii`) VALUES
('Asd', 'Asd', 'Asd', 'Assd', '1223344556677', 'AS123123', '2020-06-10 00:00:00', 'asdffaafs', 'DA', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `salarii`
--

CREATE TABLE `salarii` (
  `salar_net` int(11) NOT NULL,
  `cnp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `date_personale`
--
ALTER TABLE `date_personale`
  ADD PRIMARY KEY (`cnp`);

--
-- A tábla indexei `salarii`
--
ALTER TABLE `salarii`
  ADD PRIMARY KEY (`cnp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
