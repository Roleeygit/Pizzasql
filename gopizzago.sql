-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Nov 15. 11:35
-- Kiszolgáló verziója: 10.4.24-MariaDB
-- PHP verzió: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `gopizzago`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `cities`
--

INSERT INTO `cities` (`id`, `city`) VALUES
(1, 'Vác'),
(2, 'Ócsa'),
(3, 'Ják'),
(4, 'Fót'),
(5, 'Cutonehouse');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `couriers`
--

CREATE TABLE `couriers` (
  `id` int(11) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `couriers`
--

INSERT INTO `couriers` (`id`, `name`, `phone`) VALUES
(1, 'Tamara', '055 5799 2215'),
(2, 'Cora', '0831 185 5441'),
(3, 'Bryar', '0800 413458'),
(4, 'Jarrod', '0800 741 0014'),
(5, 'Raphael', '(012342) 18523'),
(6, 'Andrew', '(01589) 988378'),
(7, 'Abel', '055 7156 8018'),
(8, 'Vladimir', '0912 013 5548'),
(9, 'Yasir', '0800 1111'),
(10, 'Sydnee', '0800 428336');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `city_id`) VALUES
(1, 'Ashely Albert', '9869 Nec Road', 4),
(2, 'Colette Miles', '146-7774 Est Road', 4),
(3, 'Ivor Tyler', 'P.O. Box 310, 9866 Purus St.', 2),
(4, 'Timothy Allen', 'P.O. Box 297, 2867 Cras Ave', 3),
(5, 'Kieran Camacho', '733-7427 Nunc Avenue', 2),
(6, 'Kellie Vincent', 'Ap #695-5223 Aenean Rd.', 4),
(7, 'Isadora Riddle', '966-3378 Euismod Rd.', 1),
(8, 'Emerson Knowles', 'Ap #718-5275 At Rd.', 3),
(9, 'Kelly Kelley', 'Ap #436-7959 Sit St.', 2),
(10, 'Gavin Mosley', '988-5393 Mi St.', 4);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL,
  `delivered_at` date DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `courier_id` int(11) DEFAULT NULL,
  `pizza_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `deliveries`
--

INSERT INTO `deliveries` (`id`, `delivered_at`, `customer_id`, `courier_id`, `pizza_id`) VALUES
(1, '2022-09-14', 9, 2, 1),
(2, '2022-09-20', 8, 3, 2),
(3, '2022-09-24', 7, 5, 2),
(4, '2022-09-04', 3, 4, 5),
(5, '2022-09-03', 8, 5, 9),
(6, '2022-09-05', 4, 3, 5),
(7, '2022-09-18', 1, 8, 1),
(8, '2022-09-01', 6, 8, 9),
(9, '2022-09-11', 4, 9, 3),
(10, '2022-09-13', 8, 6, 7),
(11, '2022-09-22', 1, 9, 7),
(12, '2022-09-03', 9, 1, 4),
(13, '2022-09-28', 8, 3, 8),
(14, '2022-09-13', 3, 5, 8),
(15, '2022-09-28', 2, 9, 2),
(16, '2022-09-08', 7, 9, 5),
(17, '2022-09-02', 2, 1, 2),
(18, '2022-09-11', 4, 8, 8),
(19, '2022-09-28', 2, 8, 6),
(20, '2022-09-25', 9, 1, 5),
(21, '2022-09-10', 6, 5, 8),
(22, '2022-09-08', 2, 1, 9),
(23, '2022-09-02', 8, 1, 1),
(24, '2022-09-06', 7, 7, 9),
(25, '2022-09-13', 9, 6, 1),
(26, '2022-09-18', 6, 5, 7),
(27, '2022-09-19', 1, 7, 1),
(28, '2022-09-25', 4, 1, 5),
(29, '2022-09-07', 2, 1, 8),
(30, '2022-09-15', 5, 5, 5),
(31, '2022-09-12', 4, 2, 1),
(33, '2022-09-12', 6, 1, 7);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pizzas`
--

CREATE TABLE `pizzas` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `pizzas`
--

INSERT INTO `pizzas` (`id`, `name`, `price`, `type_id`) VALUES
(1, 'Margherita', 1200, 1),
(2, 'Capricciosa', 2200, 5),
(3, 'Pepperoni', 1345, 4),
(4, 'Bolognese', 2500, 1),
(5, 'Hawaiian', 1200, 8),
(6, 'BBQ Chicken', 1200, 9),
(7, 'Buffalo', 3200, 7),
(8, 'Quattro fromaggi', 3402, 2),
(9, 'Picante', 1255, 3),
(10, 'Lavandería', 2956, 5),
(11, 'Pienone', 2600, 9);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pizza_types`
--

CREATE TABLE `pizza_types` (
  `id` int(11) NOT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `pizza_types`
--

INSERT INTO `pizza_types` (`id`, `type`) VALUES
(1, 'Vegetarian'),
(2, 'Vegan'),
(3, 'Paleo'),
(4, 'New York-Style'),
(5, 'Chicago'),
(6, 'Thick crust'),
(7, 'Thin crust'),
(8, 'Gluten-free'),
(9, 'XXL'),
(10, 'Folded pizza');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `courier_id` (`courier_id`),
  ADD KEY `pizza_id` (`pizza_id`);

--
-- A tábla indexei `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- A tábla indexei `pizza_types`
--
ALTER TABLE `pizza_types`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT a táblához `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `pizza_types`
--
ALTER TABLE `pizza_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `deliveries_ibfk_2` FOREIGN KEY (`courier_id`) REFERENCES `couriers` (`id`),
  ADD CONSTRAINT `deliveries_ibfk_3` FOREIGN KEY (`pizza_id`) REFERENCES `pizzas` (`id`);

--
-- Megkötések a táblához `pizzas`
--
ALTER TABLE `pizzas`
  ADD CONSTRAINT `pizzas_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `pizza_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
