-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Máj 30. 19:45
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
-- Adatbázis: `aose_sql`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `imagini`
--

CREATE TABLE `imagini` (
  `id` int(11) NOT NULL,
  `nume` varchar(500) DEFAULT NULL,
  `descriere` varchar(1000) DEFAULT NULL,
  `mime_type` varchar(1000) NOT NULL,
  `cale` varchar(500) NOT NULL,
  `data` datetime NOT NULL,
  `pensiune_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `judete`
--

CREATE TABLE `judete` (
  `id` tinyint(4) NOT NULL,
  `nume` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `judete`
--

INSERT INTO `judete` (`id`, `nume`) VALUES
(1, 'Alba'),
(2, 'Arad'),
(3, 'Arges'),
(4, 'Bacau'),
(5, 'Bihor'),
(6, 'Bistrita-nasaud'),
(7, 'Botosani'),
(8, 'Brasov'),
(9, 'Braila'),
(10, 'Buzau'),
(11, 'Caras-severin'),
(12, 'Cluj'),
(13, 'Constanta'),
(14, 'Covasna'),
(15, 'Dimbovita'),
(16, 'Dolj'),
(17, 'Galati'),
(18, 'Gorj'),
(19, 'Harghita'),
(20, 'Hunedoara'),
(21, 'Ialomita'),
(22, 'Iasi'),
(23, 'Ilfov'),
(24, 'Maramures'),
(25, 'Mehedinti'),
(26, 'Mures'),
(27, 'Neamt'),
(28, 'Olt'),
(29, 'Prahova'),
(30, 'Satu_mare'),
(31, 'Salaj'),
(32, 'Sibiu'),
(33, 'Suceava'),
(34, 'Teleorman'),
(35, 'Timis'),
(36, 'Tulcea'),
(37, 'Vaslui'),
(38, 'Vilcea'),
(39, 'Vrancea'),
(40, 'Bucuresti'),
(41, 'Calarasi'),
(42, 'Giurgiu');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pensiuni`
--

CREATE TABLE `pensiuni` (
  `id` int(11) NOT NULL,
  `nume` varchar(580) NOT NULL,
  `descriere` varchar(1000) DEFAULT NULL,
  `judet_id` tinyint(4) NOT NULL,
  `proprietar_id` smallint(6) NOT NULL,
  `nr_locuri` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `pensiuni`
--

INSERT INTO `pensiuni` (`id`, `nume`, `descriere`, `judet_id`, `proprietar_id`, `nr_locuri`) VALUES
(1, 'Pensiune Walter', 'This is a valid description', 21, 1, 16),
(2, 'Pensiune Lucy', 'This is a valid description', 23, 2, 38),
(3, 'Pensiune Elise', 'This is a valid description', 24, 3, 34),
(4, 'Pensiune James', 'This is a valid description', 25, 4, 91),
(5, 'Pensiune Adele', '', 13, 5, 34),
(6, 'Pensiune Darcy', 'This is a valid description', 11, 6, 88),
(7, 'Pensiune Jacob', 'This is a valid description', 41, 7, 82),
(8, 'Pensiune Alfred', 'This is a valid description', 35, 8, 76),
(9, 'Pensiune Jared', 'This is a valid description', 41, 9, 64),
(10, 'Pensiune Agata', 'This is a valid description', 8, 10, 82),
(11, 'Pensiune Leonardo', 'This is a valid description', 33, 11, 87),
(12, 'Pensiune Ryan', 'This is a valid description', 6, 12, 83),
(13, 'Pensiune Honey', 'This is a valid description', 33, 13, 20),
(14, 'Pensiune Julia', 'This is a valid description', 12, 14, 57),
(15, 'Pensiune Maximilian', 'This is a valid description', 30, 15, 42),
(16, 'Pensiune Owen', 'This is a valid description', 1, 16, 88),
(17, 'Pensiune Gianna', 'This is a valid description', 41, 17, 76),
(18, 'Pensiune Ryan', 'This is a valid description', 14, 18, 31),
(19, 'Pensiune Fenton', 'This is a valid description', 12, 19, 67),
(20, 'Pensiune Carl', 'This is a valid description', 33, 20, 34),
(21, 'Pensiune Vivian', '', 23, 21, 33),
(22, 'Pensiune Justin', 'This is a valid description', 32, 22, 46),
(23, 'Pensiune Vanessa', 'This is a valid description', 38, 23, 47),
(24, 'Pensiune Michelle', 'This is a valid description', 22, 24, 90),
(25, 'Pensiune Emma', 'This is a valid description', 16, 25, 19),
(26, 'Pensiune Deanna', 'This is a valid description', 19, 26, 74),
(27, 'Pensiune Miley', 'This is a valid description', 36, 27, 16),
(28, 'Pensiune Kirsten', 'This is a valid description', 24, 28, 67),
(29, 'Pensiune Adrianna', 'This is a valid description', 6, 29, 80),
(30, 'Pensiune Arianna', 'This is a valid description', 29, 30, 17),
(31, 'Pensiune Brianna', 'This is a valid description', 31, 31, 71),
(32, 'Pensiune Luke', 'This is a valid description', 33, 32, 52),
(33, 'Pensiune Maria', 'This is a valid description', 20, 33, 24),
(34, 'Pensiune Elian', 'This is a valid description', 30, 34, 19),
(35, 'Pensiune Daisy', 'This is a valid description', 19, 35, 60),
(36, 'Pensiune Bruce', 'This is a valid description', 12, 36, 28),
(37, 'Pensiune Dainton', '', 35, 37, 93),
(38, 'Pensiune Agata', 'This is a valid description', 33, 38, 60),
(39, 'Pensiune Kirsten', 'This is a valid description', 3, 39, 99),
(40, 'Pensiune Spike', 'This is a valid description', 37, 40, 14),
(41, 'Pensiune Nicole', 'This is a valid description', 5, 41, 58),
(42, 'Pensiune Ryan', 'This is a valid description', 41, 42, 77),
(43, 'Pensiune Reid', 'This is a valid description', 15, 43, 18),
(44, 'Pensiune Arnold', '', 41, 44, 23),
(45, 'Pensiune Olivia', 'This is a valid description', 40, 45, 95),
(46, 'Pensiune Tiana', 'This is a valid description', 36, 46, 14),
(47, 'Pensiune Edwin', 'This is a valid description', 31, 47, 41),
(48, 'Pensiune Nicole', 'This is a valid description', 4, 48, 89),
(49, 'Pensiune Olivia', '', 25, 49, 78),
(50, 'Pensiune Kimberly', 'This is a valid description', 36, 50, 16);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `proprietari`
--

CREATE TABLE `proprietari` (
  `id` int(11) NOT NULL,
  `nume` varchar(100) NOT NULL,
  `adresa` varchar(500) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `proprietari`
--

INSERT INTO `proprietari` (`id`, `nume`, `adresa`, `telefon`, `email`) VALUES
(1, 'Walter Warren', '', '', 'walter_warren@domain.com'),
(2, 'Walter Warren', '', '', 'walter_warren@domain.com'),
(3, 'Lucy Grant', 'Some valid address', '', 'lucy_grant@domain.com'),
(4, 'Elise Richardson', 'Some valid address', '', ''),
(5, 'James Gibson', 'Some valid address', '', 'james_gibson@domain.com'),
(6, 'Adele Mitchell', 'Some valid address', '0770123123', 'adele_mitchell@domain.com'),
(7, 'Darcy Clark', '', '0770123123', 'darcy_clark@domain.com'),
(8, 'Jacob Perkins', '', '', 'jacob_perkins@domain.com'),
(9, 'Alfred Allen', 'Some valid address', '0770123123', 'alfred_allen@domain.com'),
(10, 'Jared Stevens', 'Some valid address', '', 'jared_stevens@domain.com'),
(11, 'Agata Williams', '', '0770123123', 'agata_williams@domain.com'),
(12, 'Leonardo Henderson', 'Some valid address', '0770123123', 'leonardo_henderson@domain.com'),
(13, 'Ryan Nelson', 'Some valid address', '', ''),
(14, 'Honey Williams', '', '0770123123', ''),
(15, 'Julia Henderson', 'Some valid address', '0770123123', 'julia_henderson@domain.com'),
(16, 'Maximilian Cole', 'Some valid address', '0770123123', 'maximilian_cole@domain.com'),
(17, 'Owen Clark', 'Some valid address', '', 'owen_clark@domain.com'),
(18, 'Gianna Payne', 'Some valid address', '', 'gianna_payne@domain.com'),
(19, 'Ryan Smith', 'Some valid address', '', 'ryan_smith@domain.com'),
(20, 'Fenton Morrison', 'Some valid address', '', 'fenton_morrison@domain.com'),
(21, 'Carl Harper', 'Some valid address', '', 'carl_harper@domain.com'),
(22, 'Vivian Barnes', '', '0770123123', 'vivian_barnes@domain.com'),
(23, 'Justin Holmes', 'Some valid address', '0770123123', ''),
(24, 'Vanessa Perry', 'Some valid address', '', ''),
(25, 'Michelle Payne', 'Some valid address', '', 'michelle_payne@domain.com'),
(26, 'Emma Ferguson', 'Some valid address', '0770123123', 'emma_ferguson@domain.com'),
(27, 'Deanna Brooks', 'Some valid address', '', ''),
(28, 'Miley Allen', '', '', 'miley_allen@domain.com'),
(29, 'Kirsten Mitchell', 'Some valid address', '0770123123', 'kirsten_mitchell@domain.com'),
(30, 'Adrianna West', 'Some valid address', '', 'adrianna_west@domain.com'),
(31, 'Arianna Cooper', 'Some valid address', '', 'arianna_cooper@domain.com'),
(32, 'Brianna Craig', 'Some valid address', '', 'brianna_craig@domain.com'),
(33, 'Luke Andrews', 'Some valid address', '0770123123', 'luke_andrews@domain.com'),
(34, 'Maria Stewart', 'Some valid address', '0770123123', 'maria_stewart@domain.com'),
(35, 'Elian Hall', 'Some valid address', '', 'elian_hall@domain.com'),
(36, 'Daisy Payne', 'Some valid address', '0770123123', 'daisy_payne@domain.com'),
(37, 'Bruce Ross', 'Some valid address', '', ''),
(38, 'Dainton Douglas', '', '0770123123', 'dainton_douglas@domain.com'),
(39, 'Agata Gibson', 'Some valid address', '', 'agata_gibson@domain.com'),
(40, 'Kirsten Carroll', 'Some valid address', '0770123123', 'kirsten_carroll@domain.com'),
(41, 'Spike Wright', 'Some valid address', '0770123123', 'spike_wright@domain.com'),
(42, 'Nicole Mason', 'Some valid address', '', 'nicole_mason@domain.com'),
(43, 'Ryan Cameron', '', '', 'ryan_cameron@domain.com'),
(44, 'Reid Reed', 'Some valid address', '0770123123', 'reid_reed@domain.com'),
(45, 'Arnold Johnston', 'Some valid address', '0770123123', 'arnold_johnston@domain.com'),
(46, 'Olivia Baker', 'Some valid address', '', 'olivia_baker@domain.com'),
(47, 'Tiana Reed', 'Some valid address', '', 'tiana_reed@domain.com'),
(48, 'Edwin Cooper', 'Some valid address', '0770123123', 'edwin_cooper@domain.com'),
(49, 'Nicole Allen', 'Some valid address', '', 'nicole_allen@domain.com'),
(50, 'Olivia Harris', 'Some valid address', '0770123123', 'olivia_harris@domain.com'),
(51, 'Kimberly Wells', 'Some valid address', '', 'kimberly_wells@domain.com');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `imagini`
--
ALTER TABLE `imagini`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `judete`
--
ALTER TABLE `judete`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `pensiuni`
--
ALTER TABLE `pensiuni`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `proprietari`
--
ALTER TABLE `proprietari`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `imagini`
--
ALTER TABLE `imagini`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `judete`
--
ALTER TABLE `judete`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT a táblához `pensiuni`
--
ALTER TABLE `pensiuni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT a táblához `proprietari`
--
ALTER TABLE `proprietari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
