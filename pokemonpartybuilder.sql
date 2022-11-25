-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2022 lúc 02:03 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pokemonpartybuilder`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favparty`
--

CREATE TABLE `favparty` (
  `id` int(10) UNSIGNED NOT NULL,
  `slotid` tinyint(1) UNSIGNED NOT NULL,
  `pid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `favparty`
--

INSERT INTO `favparty` (`id`, `slotid`, `pid`) VALUES
(36, 1, '025'),
(37, 1, '003'),
(38, 1, '006'),
(39, 1, '130'),
(40, 1, '149'),
(41, 1, '034'),
(42, 2, '006'),
(43, 2, '003'),
(44, 2, '009'),
(45, 2, '025'),
(46, 2, '131'),
(47, 2, '149');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `party`
--

CREATE TABLE `party` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `party`
--

INSERT INTO `party` (`id`, `pid`) VALUES
(2, '003'),
(1, '006'),
(3, '009'),
(4, '025'),
(5, '131'),
(6, '149');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pokemon`
--

CREATE TABLE `pokemon` (
  `pid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type1` varchar(255) NOT NULL,
  `type2` varchar(255) NOT NULL DEFAULT 'None',
  `favorite` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `pokemon`
--

INSERT INTO `pokemon` (`pid`, `name`, `img`, `type1`, `type2`, `favorite`) VALUES
('001', 'Bulbasaur', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png', 'Grass', 'Poison', 0),
('002', 'Ivysaur', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png', 'Grass', 'Poison', 0),
('003', 'Venusaur', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png', 'Grass', 'Poison', 0),
('004', 'Charmander', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png', 'Fire', 'None', 0),
('005', 'Charmeleon', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png', 'Fire', 'None', 0),
('006', 'Charizard', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png', 'Fire', 'Flying', 0),
('007', 'Squirtle', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png', 'Water', 'None', 0),
('008', 'Wartortle', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/008.png', 'Water', 'None', 0),
('009', 'Blastoise', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png', 'Water', 'None', 0),
('025', 'Pikachu', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png', 'Electric', 'None', 0),
('026', 'Raichu', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/026.png', 'Electric', 'None', 0),
('032', 'Nidoran (male)', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/032.png', 'Poison', 'None', 0),
('033', 'Nidorino', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/033.png', 'Poison', 'None', 0),
('034', 'Nidoking', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/034.png', 'Poison', 'Ground', 0),
('052', 'Meowth', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/052.png', 'Normal', 'None', 0),
('053', 'Persian', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/053.png', 'Normal', 'None', 0),
('058', 'Growlithe', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/059.png', 'Fire', 'None', 0),
('059', 'Arcanine', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/059.png', 'Fire', 'None', 0),
('063', 'Abra', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/063.png', 'Psychic', 'None', 0),
('064', 'Kadabra', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/064.png', 'Psychic', 'None', 0),
('065', 'Alakazam', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/065.png', 'Psychic', 'None', 0),
('066', 'Machop', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/066.png', 'Fighting', 'None', 0),
('067', 'Machooke', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/067.png', 'Fighting', 'None', 0),
('068', 'Machamp', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/068.png', 'Fighting', 'None', 0),
('074', 'Geodude', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/074.png', 'Rock', 'Ground', 0),
('075', 'Graveler', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/075.png', 'Rock', 'Ground', 0),
('076', 'Golem', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/076.png', 'Rock', 'Ground', 0),
('092', 'Gastly', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/092.png', 'Ghost', 'Poison', 0),
('093', 'Haunter', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/093.png', 'Ghost', 'Poison', 0),
('094', 'Gengar', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/094.png', 'Ghost', 'Poison', 1),
('111', 'Rhyhorn', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/111.png', 'Ground', 'Rock', 0),
('112', 'Rhydon', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/112.png', 'Ground', 'Rock', 0),
('123', 'Scyther', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/123.png', 'Bug', 'Flying', 0),
('129', 'Magikarp', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/129.png', 'Water', 'None', 0),
('130', 'Gyarados', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/130.png', 'Water', 'Flying', 1),
('131', 'Lapras', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/131.png', 'Water', 'Ice', 0),
('133', 'Eevee', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/133.png', 'Normal', 'None', 0),
('134', 'Vaporeon', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/134.png', 'Water', 'None', 0),
('135', 'Jolteon', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/135.png', 'Electric', 'None', 0),
('136', 'Flareon', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/136.png', 'Fire', 'None', 0),
('143', 'Snorlax', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/143.png', 'Normal', 'None', 0),
('147', 'Dratini', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/147.png', 'Dragon', 'None', 0),
('148', 'Dragonair', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/148.png', 'Dragon', 'None', 0),
('149', 'Dragonite', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/149.png', 'Dragon', 'Flying', 1),
('208', 'Steelix', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/208.png', 'Steel', 'Ground', 0),
('304', 'Aron', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/304.png', 'Steel', 'Rock', 0),
('305', 'Lairon', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/305.png', 'Steel', 'Rock', 0),
('306', 'Aggron', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/306.png', 'Steel', 'Rock', 0),
('359', 'Absol', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/359.png', 'Dark', 'None', 0),
('363', 'Spheal', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/363.png', 'Ice', 'Water', 0),
('364', 'Sealeo', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/364.png', 'Ice', 'Water', 0),
('365', 'Walrein', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/365.png', 'Ice', 'Water', 0),
('570', 'Zorua', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/570.png', 'Dark', 'None', 0),
('571', 'Zoroark', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/571.png', 'Dark', 'None', 0),
('714', 'Noibat', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/714.png', 'Flying', 'Dragon', 0),
('715', 'Noivern', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/715.png', 'Flying', 'Dragon', 0),
('823', 'Corvilknight', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/823.png', 'Flying', 'Steel', 0),
('872', 'Snom', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/872.png', 'Ice', 'Bug', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `favparty`
--
ALTER TABLE `favparty`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `pid` (`pid`);

--
-- Chỉ mục cho bảng `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `pid` (`pid`);

--
-- Chỉ mục cho bảng `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`pid`) USING BTREE,
  ADD UNIQUE KEY `id` (`pid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `favparty`
--
ALTER TABLE `favparty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `favparty`
--
ALTER TABLE `favparty`
  ADD CONSTRAINT `favparty_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `pokemon` (`pid`);

--
-- Các ràng buộc cho bảng `party`
--
ALTER TABLE `party`
  ADD CONSTRAINT `party_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `pokemon` (`pid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
