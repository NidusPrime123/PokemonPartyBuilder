-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 13, 2022 lúc 03:31 PM
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
  `slotid` int(10) UNSIGNED NOT NULL,
  `pid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `favparty`
--

INSERT INTO `favparty` (`id`, `slotid`, `pid`) VALUES
(1, 1, '003'),
(2, 1, '094'),
(3, 1, '149'),
(4, 1, '006'),
(5, 1, '068'),
(6, 1, '034');

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
(1, '003'),
(4, '006'),
(6, '065'),
(2, '094'),
(5, '123'),
(3, '149');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pokemon`
--

CREATE TABLE `pokemon` (
  `pid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type1` text NOT NULL,
  `type2` varchar(255) NOT NULL DEFAULT 'None',
  `favorite` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `pokemon`
--

INSERT INTO `pokemon` (`pid`, `name`, `img`, `type1`, `type2`, `favorite`) VALUES
('003', 'Venusaur', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png', 'Grass', 'Poison', 0),
('006', 'Charizard', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png', 'Fire', 'Flying', 0),
('009', 'Blastoise', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png', 'Water', 'None', 0),
('025', 'Pikachu', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png', 'Electric', 'None', 0),
('034', 'Nidoking', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/034.png', 'Poison', 'Ground', 0),
('065', 'Alakazam', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/065.png', 'Psychic', 'None', 0),
('068', 'Machamp', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/068.png', 'Fighting', 'None', 0),
('094', 'Gengar', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/094.png', 'Ghost', 'Poison', 1),
('112', 'Rhydon', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/112.png', 'Ground', 'Rock', 0),
('123', 'Scyther', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/123.png', 'Bug', 'Flying', 0),
('130', 'Gyarados', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/130.png', 'Water', 'Flying', 1),
('131', 'Lapras', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/131.png', 'Water', 'Ice', 0),
('143', 'Snorlax', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/143.png', 'Normal', 'None', 0),
('149', 'Dragonite', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/149.png', 'Dragon', 'Flying', 1),
('208', 'Steelix', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/208.png', 'Steel', 'Ground', 0),
('359', 'Absol', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/359.png', 'Dark', 'None', 0);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
