-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Lut 2023, 13:23
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `fpl_live`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `fpl_id` int(10) NOT NULL,
  `first_name` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `web_name` varchar(100) COLLATE utf8_polish_ci DEFAULT NULL,
  `team_id` int(10) NOT NULL,
  `position` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `players`
--

INSERT INTO `players` (`id`, `fpl_id`, `first_name`, `last_name`, `web_name`, `team_id`, `position`) VALUES
(1, 1, 'Cédric', 'Alves Soares', 'Cédric', 1, 2),
(2, 3, 'Granit', 'Xhaka', 'Xhaka', 1, 3),
(3, 4, 'Mohamed', 'Elneny', 'Elneny', 1, 3),
(4, 5, 'Rob', 'Holding', 'Holding', 1, 2),
(5, 6, 'Thomas', 'Partey', 'Partey', 1, 3),
(6, 7, 'Martin', 'Ødegaard', 'Ødegaard', 1, 3),
(7, 8, 'Kieran', 'Tierney', 'Tierney', 1, 2),
(8, 9, 'Nicolas', 'Pépé', 'Pépé', 1, 3),
(9, 10, 'Benjamin', 'White', 'White', 1, 2),
(10, 11, 'Eddie', 'Nketiah', 'Nketiah', 1, 4),
(11, 12, 'Emile', 'Smith Rowe', 'Smith Rowe', 1, 3),
(12, 13, 'Bukayo', 'Saka', 'Saka', 1, 3),
(13, 14, 'Takehiro', 'Tomiyasu', 'Tomiyasu', 1, 2),
(14, 15, 'Aaron', 'Ramsdale', 'Ramsdale', 1, 1),
(15, 16, 'Gabriel', 'dos Santos Magalhães', 'Gabriel', 1, 2),
(16, 17, 'Nuno', 'Varela Tavares', 'Tavares', 1, 2),
(17, 18, 'Albert', 'Sambi Lokonga', 'Sambi', 1, 3),
(18, 19, 'Gabriel', 'Martinelli Silva', 'Martinelli', 1, 3),
(19, 20, 'Pablo', 'Marí Villar', 'Pablo Marí', 1, 2),
(20, 22, 'Lucas', 'Torreira di Pascua', 'Torreira', 1, 3),
(21, 23, 'Reiss', 'Nelson', 'Nelson', 1, 3),
(22, 24, 'Matt', 'Turner', 'Turner', 1, 1),
(23, 25, 'Fábio', 'Ferreira Vieira', 'Fábio Vieira', 1, 3),
(24, 26, 'William', 'Saliba', 'Saliba', 1, 2),
(25, 27, 'Marcus', 'Oliveira Alencar', 'Marquinhos', 1, 3),
(26, 28, 'Gabriel', 'Fernando de Jesus', 'Jesus', 1, 4),
(27, 313, 'Oleksandr', 'Zinchenko', 'Zinchenko', 1, 2),
(28, 607, 'Matthew', 'Smith', 'Smith', 1, 3),
(29, 630, 'Ethan', 'Nwaneri', 'Nwaneri', 1, 3),
(30, 631, 'Lino', 'Sousa', 'Sousa', 1, 2),
(31, 655, 'Karl', 'Hein', 'Hein', 1, 1),
(32, 668, 'Amario', 'Cozier-Duberry', 'Cozier-Duberry', 1, 3),
(33, 685, 'Nathan', 'Butler-Oyedeji', 'Butler-Oyedeji', 1, 4),
(34, 29, 'Philippe', 'Coutinho Correia', 'Coutinho', 2, 3),
(35, 30, 'Danny', 'Ings', 'Ings', 2, 4),
(36, 31, 'Emiliano', 'Martínez Romero', 'Martínez', 2, 1),
(37, 32, 'Calum', 'Chambers', 'Chambers', 2, 2),
(38, 33, 'Lucas', 'Digne', 'Digne', 2, 2),
(39, 34, 'Bertrand', 'Traoré', 'Traoré', 2, 3),
(40, 35, 'Robin', 'Olsen', 'Olsen', 2, 1),
(41, 36, 'Morgan', 'Sanson', 'Sanson', 2, 3),
(42, 37, 'John', 'McGinn', 'McGinn', 2, 3),
(43, 38, 'Kortney', 'Hause', 'Hause', 2, 2),
(44, 39, 'Tyrone', 'Mings', 'Mings', 2, 2),
(45, 40, 'Ollie', 'Watkins', 'Watkins', 2, 4),
(46, 41, 'Marvelous', 'Nakamba', 'Nakamba', 2, 3),
(47, 42, 'Emiliano', 'Buendía Stati', 'Buendía', 2, 3),
(48, 43, 'Matty', 'Cash', 'Cash', 2, 2),
(49, 44, 'Ezri', 'Konsa Ngoyo', 'Konsa', 2, 2),
(50, 45, 'Leon', 'Bailey', 'Bailey', 2, 3),
(51, 46, 'Douglas Luiz', 'Soares de Paulo', 'Douglas Luiz', 2, 3),
(52, 47, 'Jacob', 'Ramsey', 'Ramsey', 2, 3),
(53, 49, 'Tim', 'Iroegbunam', 'Iroegbunam', 2, 3),
(54, 50, 'Diego Carlos', 'Santos Silva', 'Diego Carlos', 2, 2),
(55, 51, 'Anwar', 'El Ghazi', 'El Ghazi', 2, 3),
(56, 52, 'Keinan', 'Davis', 'Davis', 2, 4),
(57, 53, 'Boubacar', 'Kamara', 'Kamara', 2, 3),
(58, 54, 'Cameron', 'Archer', 'Archer', 2, 4),
(59, 55, 'Jaden', 'Philogene-Bidace', 'Philogene-Bidace', 2, 3),
(60, 56, 'Frédéric', 'Guilbert', 'Guilbert', 2, 2),
(61, 410, 'Jan', 'Bednarek', 'Bednarek', 2, 2),
(62, 479, 'Leander', 'Dendoncker', 'Dendoncker', 2, 3),
(63, 525, 'Ludwig', 'Augustinsson', 'Augustinsson', 2, 2),
(64, 537, 'Kaine', 'Kesler Hayden', 'Kesler Hayden', 2, 2),
(65, 538, 'Ashley', 'Young', 'Young', 2, 2),
(66, 638, 'Lamare', 'Bogarde', 'Bogarde', 2, 2),
(67, 670, 'Filip', 'Marschall', 'Marschall', 2, 1),
(68, 672, 'Kadan', 'Young', 'Kadan Young', 2, 3),
(69, 694, 'Alexandre', 'Moreno Lopera', 'Álex Moreno', 2, 2),
(70, 57, 'Adam', 'Smith', 'Smith', 3, 2),
(71, 58, 'Junior', 'Stanislas', 'Stanislas', 3, 3),
(72, 59, 'Ryan', 'Fredericks', 'Fredericks', 3, 2),
(73, 60, 'David', 'Brooks', 'Brooks', 3, 3),
(74, 61, 'Jamal', 'Lowe', 'Lowe', 3, 3),
(75, 62, 'Kieffer', 'Moore', 'Moore', 3, 4),
(76, 63, 'Emiliano', 'Marcondes', 'Marcondes', 3, 3),
(77, 64, 'Jefferson', 'Lerma Solís', 'Lerma', 3, 3),
(78, 65, 'Jack', 'Stacey', 'Stacey', 3, 2),
(79, 66, 'Dominic', 'Solanke', 'Solanke', 3, 4),
(80, 67, 'Lewis', 'Cook', 'Cook', 3, 3),
(81, 68, 'Ben', 'Pearson', 'Pearson', 3, 3),
(82, 69, 'Ryan', 'Christie', 'Christie', 3, 3),
(83, 70, 'Philip', 'Billing', 'Billing', 3, 3),
(84, 71, 'Chris', 'Mepham', 'Mepham', 3, 2),
(85, 72, 'Mark', 'Travers', 'Travers', 3, 1),
(86, 73, 'Lloyd', 'Kelly', 'Kelly', 3, 2),
(87, 74, 'Siriki', 'Dembélé', 'Dembélé', 3, 3),
(88, 75, 'Jaidon', 'Anthony', 'Anthony', 3, 3),
(89, 76, 'Jordan', 'Zemura', 'Zemura', 3, 2),
(90, 77, 'Will', 'Dennis', 'Dennis', 3, 1),
(91, 404, 'Jack', 'Stephens', 'Stephens', 3, 2),
(92, 505, 'Joe', 'Rothwell', 'Rothwell', 3, 3),
(93, 535, 'Marcus', 'Tavernier', 'Tavernier', 3, 3),
(94, 539, 'James', 'Hill', 'Hill', 3, 2),
(95, 574, 'Norberto', 'Murara Neto', 'Neto', 3, 1),
(96, 576, 'Marcos', 'Senesi', 'Senesi', 3, 2),
(97, 597, 'Christian', 'Saydee', 'Saydee', 3, 4),
(98, 598, 'Owen', 'Bevan', 'Bevan', 3, 2),
(99, 649, 'Cameron', 'Plain', 'Plain', 3, 1),
(100, 695, 'Daniel', 'Adu-Adjei', 'Adu-Adjei', 3, 4),
(101, 696, 'Michael', 'Dacosta Gonzalez', 'Dacosta Gonzalez', 3, 3),
(102, 697, 'Dominic', 'Sadi', 'Sadi', 3, 4),
(103, 78, 'Pontus', 'Jansson', 'Jansson', 4, 2),
(104, 79, 'Christian', 'Nørgaard', 'Nørgaard', 4, 3),
(105, 80, 'Ivan', 'Toney', 'Toney', 4, 4),
(106, 81, 'David', 'Raya Martin', 'Raya', 4, 1),
(107, 82, 'Sergi', 'Canós Tenés', 'Canós', 4, 2),
(108, 83, 'Josh', 'Dasilva', 'Dasilva', 4, 3),
(109, 84, 'Kristoffer', 'Ajer', 'Ajer', 4, 2),
(110, 85, 'Rico', 'Henry', 'Henry', 4, 2),
(111, 86, 'Vitaly', 'Janelt', 'Janelt', 4, 3),
(112, 87, 'Saman', 'Ghoddos', 'Ghoddos', 4, 3),
(113, 88, 'Mathias', 'Jensen', 'Jensen', 4, 3),
(114, 89, 'Yoane', 'Wissa', 'Wissa', 4, 3),
(115, 90, 'Mads', 'Roerslev Rasmussen', 'Roerslev', 4, 2),
(116, 91, 'Mads', 'Bech Sørensen', 'Bech', 4, 2),
(117, 92, 'Ethan', 'Pinnock', 'Pinnock', 4, 2),
(118, 93, 'Frank', 'Onyeka', 'Onyeka', 4, 3),
(119, 94, 'Shandon', 'Baptiste', 'Baptiste', 4, 3),
(120, 95, 'Bryan', 'Mbeumo', 'Mbeumo', 4, 4),
(121, 96, 'Charlie', 'Goode', 'Goode', 4, 2),
(122, 97, 'Marcus', 'Forss', 'Forss', 4, 4),
(123, 98, 'Dominic', 'Thompson', 'Thompson', 4, 2),
(124, 99, 'Mads', 'Bidstrup', 'Bidstrup', 4, 3),
(125, 100, 'Ellery', 'Balcombe', 'Balcombe', 4, 1),
(126, 510, 'Aaron', 'Hickey', 'Hickey', 4, 2),
(127, 515, 'Keane', 'Lewis-Potter', 'Lewis-Potter', 4, 3),
(128, 517, 'Thomas', 'Strakosha', 'Strakosha', 4, 1),
(129, 526, 'Ben', 'Mee', 'Mee', 4, 2),
(130, 540, 'Fin', 'Stevens', 'Stevens', 4, 2),
(131, 541, 'Halil', 'Dervişoğlu', 'Dervişoğlu', 4, 4),
(132, 580, 'Mikkel', 'Damsgaard', 'Damsgaard', 4, 3),
(133, 595, 'Mathias', 'Jorgensen', 'Zanka', 4, 2),
(134, 632, 'Ryan', 'Trevitt', 'Trevitt', 4, 3),
(135, 633, 'Matthew', 'Cox', 'Cox', 4, 1),
(136, 646, 'Tristan', 'Crama', 'Crama', 4, 2),
(137, 650, 'Yegor', 'Yarmolyuk', 'Yarmolyuk', 4, 3),
(138, 688, 'Kevin', 'Schade', 'Schade', 4, 3),
(139, 101, 'Adam', 'Lallana', 'Lallana', 5, 3),
(140, 102, 'Jason', 'Steele', 'Steele', 5, 1),
(141, 103, 'Danny', 'Welbeck', 'Welbeck', 5, 4),
(142, 104, 'Pascal', 'Groß', 'Groß', 5, 3),
(143, 106, 'Lewis', 'Dunk', 'Dunk', 5, 2),
(144, 107, 'Solly', 'March', 'March', 5, 3),
(145, 108, 'Adam', 'Webster', 'Webster', 5, 2),
(146, 109, 'Joël', 'Veltman', 'Veltman', 5, 2),
(147, 111, 'Leandro', 'Trossard', 'Trossard', 5, 3),
(148, 113, 'Robert', 'Sánchez', 'Sánchez', 5, 1),
(149, 114, 'Tariq', 'Lamptey', 'Lamptey', 5, 2),
(150, 115, 'Steven', 'Alzate', 'Alzate', 5, 3),
(151, 116, 'Alexis', 'Mac Allister', 'Mac Allister', 5, 3),
(152, 117, 'Jakub', 'Moder', 'Moder', 5, 3),
(153, 118, 'Enock', 'Mwepu', 'Mwepu', 5, 3),
(154, 119, 'Jeremy', 'Sarmiento Morante', 'Sarmiento', 5, 3),
(155, 120, 'Moisés', 'Caicedo Corozo', 'Caicedo', 5, 3),
(156, 121, 'Taylor', 'Richards', 'Richards', 5, 3),
(157, 122, 'Haydon', 'Roberts', 'Roberts', 5, 2),
(158, 123, 'Deniz', 'Undav', 'Undav', 5, 4),
(159, 124, 'Kaoru', 'Mitoma', 'Mitoma', 5, 3),
(160, 125, 'Julio', 'Enciso', 'Enciso', 5, 4),
(161, 126, 'Kacper', 'Kozłowski', 'Kozłowski', 5, 3),
(162, 149, 'Billy', 'Gilmour', 'Gilmour', 5, 3),
(163, 542, 'Kjell', 'Scherpen', 'Scherpen', 5, 1),
(164, 543, 'Matt', 'Clarke', 'Clarke', 5, 2),
(165, 544, 'Jan Paul', 'van Hecke', 'Van Hecke', 5, 2),
(166, 559, 'Levi', 'Colwill', 'Colwill', 5, 2),
(167, 586, 'Pervis', 'Estupiñán', 'Estupiñán', 5, 2),
(168, 596, 'Evan', 'Ferguson', 'Ferguson', 5, 4),
(169, 640, 'Ed', 'Turns', 'Turns', 5, 2),
(170, 651, 'Andrew', 'Moran', 'Moran', 5, 3),
(171, 652, 'James', 'Furlong', 'Furlong', 5, 2),
(172, 677, 'Jack', 'Hinshelwood', 'Hinshelwood', 5, 3),
(173, 679, 'Facundo', 'Buonanotte', 'Buonanotte', 5, 3),
(174, 48, 'Carney', 'Chukwuemeka', 'Chukwuemeka', 6, 3),
(175, 112, 'Marc', 'Cucurella Saseta', 'Cucurella', 6, 2),
(176, 127, 'César', 'Azpilicueta', 'Azpilicueta', 6, 2),
(177, 128, 'Thiago', 'Emiliano da Silva', 'Thiago Silva', 6, 2),
(178, 129, 'Marcos', 'Alonso', 'Alonso', 6, 2),
(179, 130, 'Jorge Luiz', 'Frello Filho', 'Jorginho', 6, 3),
(180, 131, 'Ross', 'Barkley', 'Barkley', 6, 3),
(181, 132, 'Mateo', 'Kovacic', 'Kovacic', 6, 3),
(182, 133, 'Kepa', 'Arrizabalaga', 'Arrizabalaga', 6, 1),
(183, 134, 'N\'Golo', 'Kanté', 'Kanté', 6, 3),
(184, 135, 'Hakim', 'Ziyech', 'Ziyech', 6, 3),
(185, 136, 'Ruben', 'Loftus-Cheek', 'Loftus-Cheek', 6, 3),
(186, 137, 'Timo', 'Werner', 'Werner', 6, 4),
(187, 138, 'Robert Kenedy', 'Nunes do Nascimento', 'Kenedy', 6, 2),
(188, 139, 'Ben', 'Chilwell', 'Chilwell', 6, 2),
(189, 140, 'Christian', 'Pulisic', 'Pulisic', 6, 3),
(190, 141, 'Trevoh', 'Chalobah', 'Chalobah', 6, 2),
(191, 142, 'Mason', 'Mount', 'Mount', 6, 3),
(192, 143, 'Malang', 'Sarr', 'Sarr', 6, 2),
(193, 144, 'Callum', 'Hudson-Odoi', 'Hudson-Odoi', 6, 3),
(194, 145, 'Kai', 'Havertz', 'Havertz', 6, 4),
(195, 146, 'Reece', 'James', 'James', 6, 2),
(196, 147, 'Edouard', 'Mendy', 'Mendy', 6, 1),
(197, 148, 'Conor', 'Gallagher', 'Gallagher', 6, 3),
(198, 150, 'Armando', 'Broja', 'Broja', 6, 4),
(199, 151, 'Ethan', 'Ampadu', 'Ampadu', 6, 2),
(200, 272, 'Wesley', 'Fofana', 'W.Fofana', 6, 2),
(201, 304, 'Raheem', 'Sterling', 'Sterling', 6, 3),
(202, 520, 'Kalidou', 'Koulibaly', 'Koulibaly', 6, 2),
(203, 606, 'Harvey', 'Vale', 'Vale', 6, 3),
(204, 616, 'Denis', 'Zakaria', 'Zakaria', 6, 3),
(205, 617, 'Pierre-Emerick', 'Aubameyang', 'Aubameyang', 6, 4),
(206, 635, 'Marcus', 'Bettinelli', 'Bettinelli', 6, 1),
(207, 653, 'Omari', 'Hutchinson', 'Hutchinson', 6, 3),
(208, 661, 'Lewis', 'Hall', 'Hall', 6, 3),
(209, 673, 'Bashir', 'Humphreys', 'Humphreys', 6, 2),
(210, 684, 'David Datro', 'Fofana', 'D.D.Fofana', 6, 4),
(211, 689, 'Benoît', 'Badiashile', 'Badiashile', 6, 2),
(212, 690, 'João', 'Félix Sequeira', 'João Félix', 6, 4),
(213, 699, 'Mykhailo', 'Mudryk', 'Mudryk', 6, 3),
(214, 702, 'Andrey', 'Nascimento dos Santos', 'Andrey Santos', 6, 3),
(215, 152, 'Vicente', 'Guaita', 'Guaita', 7, 1),
(216, 153, 'James', 'Tomkins', 'Tomkins', 7, 2),
(217, 154, 'James', 'McArthur', 'McArthur', 7, 3),
(218, 155, 'Christian', 'Benteke', 'Benteke', 7, 4),
(219, 156, 'Joel', 'Ward', 'Ward', 7, 2),
(220, 157, 'Nathaniel', 'Clyne', 'Clyne', 7, 2),
(221, 158, 'Luka', 'Milivojevic', 'Milivojevic', 7, 3),
(222, 159, 'Jordan', 'Ayew', 'Ayew', 7, 3),
(223, 160, 'Wilfried', 'Zaha', 'Zaha', 7, 3),
(224, 161, 'Jeffrey', 'Schlupp', 'Schlupp', 7, 3),
(225, 163, 'Will', 'Hughes', 'Hughes', 7, 3),
(226, 164, 'Jairo', 'Riedewald', 'Riedewald', 7, 3),
(227, 165, 'Joachim', 'Andersen', 'Andersen', 7, 2),
(228, 166, 'Odsonne', 'Edouard', 'Edouard', 7, 4),
(229, 167, 'Marc', 'Guéhi', 'Guéhi', 7, 2),
(230, 168, 'Jean-Philippe', 'Mateta', 'Mateta', 7, 4),
(231, 169, 'Eberechi', 'Eze', 'Eze', 7, 3),
(232, 170, 'Tyrick', 'Mitchell', 'Mitchell', 7, 2),
(233, 171, 'Michael', 'Olise', 'Olise', 7, 3),
(234, 172, 'Jesurun', 'Rak-Sakyi', 'Rak-Sakyi', 7, 3),
(235, 173, 'Malcolm', 'Ebiowei', 'Ebiowei', 7, 3),
(236, 174, 'Nathan', 'Ferguson', 'Ferguson', 7, 2),
(237, 175, 'Sam', 'Johnstone', 'Johnstone', 7, 1),
(238, 495, 'Remi', 'Matthews', 'Matthews', 7, 1),
(239, 496, 'Luke', 'Plange', 'Plange', 7, 4),
(240, 514, 'Cheick', 'Doucouré', 'C.Doucouré', 7, 3),
(241, 530, 'Chris', 'Richards', 'Richards', 7, 2),
(242, 590, 'Joseph', 'Whitworth', 'Whitworth', 7, 1),
(243, 601, 'Kaden', 'Rodney', 'Rodney', 7, 3),
(244, 604, 'Killian', 'Phillips', 'Phillips', 7, 3),
(245, 634, 'John-Kymani', 'Gordon', 'Gordon', 7, 4),
(246, 642, 'Kofi', 'Balmer', 'Balmer', 7, 2),
(247, 644, 'Owen', 'Goodman', 'Goodman', 7, 1),
(248, 654, 'Jack', 'Wells-Morrison', 'Wells-Morrison', 7, 3),
(249, 676, 'David', 'Ozoh', 'Ozoh', 7, 3),
(250, 110, 'Neal', 'Maupay', 'Maupay', 8, 4),
(251, 176, 'Asmir', 'Begović', 'Begović', 8, 1),
(252, 177, 'Salomón', 'Rondón', 'Rondón', 8, 4),
(253, 178, 'Seamus', 'Coleman', 'Coleman', 8, 2),
(254, 179, 'Andros', 'Townsend', 'Townsend', 8, 3),
(255, 180, 'Michael', 'Keane', 'Keane', 8, 2),
(256, 181, 'Dele', 'Alli', 'Dele', 8, 3),
(257, 182, 'Jordan', 'Pickford', 'Pickford', 8, 1),
(258, 183, 'Allan', 'Marques Loureiro', 'Allan', 8, 3),
(259, 184, 'André', 'Tavares Gomes', 'André Gomes', 8, 3),
(260, 185, 'Abdoulaye', 'Doucouré', 'A.Doucouré', 8, 3),
(261, 186, 'Alex', 'Iwobi', 'Iwobi', 8, 3),
(262, 187, 'Jean-Philippe', 'Gbamin', 'Gbamin', 8, 3),
(263, 188, 'Yerry', 'Mina', 'Mina', 8, 2),
(264, 189, 'Demarai', 'Gray', 'Gray', 8, 3),
(265, 190, 'Tom', 'Davies', 'Davies', 8, 3),
(266, 191, 'Dominic', 'Calvert-Lewin', 'Calvert-Lewin', 8, 4),
(267, 192, 'Mason', 'Holgate', 'Holgate', 8, 2),
(268, 193, 'Ben', 'Godfrey', 'Godfrey', 8, 2),
(269, 194, 'Vitalii', 'Mykolenko', 'Mykolenko', 8, 2),
(270, 195, 'Anthony', 'Gordon', 'Gordon', 8, 3),
(271, 196, 'Jarrad', 'Branthwaite', 'Branthwaite', 8, 2),
(272, 197, 'Nathan', 'Patterson', 'Patterson', 8, 2),
(273, 198, 'Niels', 'Nkounkou', 'Nkounkou', 8, 2),
(274, 199, 'James', 'Tarkowski', 'Tarkowski', 8, 2),
(275, 475, 'Conor', 'Coady', 'Coady', 8, 2),
(276, 531, 'Rúben', 'Nascimento Vinagre', 'Vinagre', 8, 2),
(277, 534, 'Dwight', 'McNeil', 'McNeil', 8, 3),
(278, 560, 'Stanley', 'Mills', 'Mills', 8, 3),
(279, 561, 'Lewis', 'Warrington', 'Warrington', 8, 3),
(280, 570, 'James', 'Garner', 'Garner', 8, 3),
(281, 577, 'Amadou', 'Onana', 'Onana', 8, 3),
(282, 605, 'Reece', 'Welch', 'Welch', 8, 2),
(283, 611, 'Idrissa', 'Gueye', 'Gueye', 8, 3),
(284, 627, 'Eldin', 'Jakupovic', 'Jakupović', 8, 1),
(285, 637, 'Kyle', 'John', 'John', 8, 2),
(286, 662, 'Thomas', 'Cannon', 'Cannon', 8, 4),
(287, 678, 'Isaac', 'Price', 'Price', 8, 3),
(288, 686, 'Ellis', 'Simms', 'Simms', 8, 4),
(289, 2, 'Bernd', 'Leno', 'Leno', 9, 1),
(290, 105, 'Shane', 'Duffy', 'Duffy', 9, 2),
(291, 200, 'Tom', 'Cairney', 'Cairney', 9, 3),
(292, 201, 'Tim', 'Ream', 'Ream', 9, 2),
(293, 202, 'Anthony', 'Knockaert', 'Knockaert', 9, 3),
(294, 203, 'Nathaniel', 'Chalobah', 'Chalobah', 9, 3),
(295, 204, 'Neeskens', 'Kebano', 'Kebano', 9, 3),
(296, 205, 'Bobby', 'De Cordova-Reid', 'De Cordova-Reid', 9, 3),
(297, 206, 'Joe', 'Bryan', 'Bryan', 9, 2),
(298, 207, 'Paulo', 'Gazzaniga Farias', 'Gazzaniga', 9, 1),
(299, 208, 'Terence', 'Kongolo', 'Kongolo', 9, 2),
(300, 209, 'Tosin', 'Adarabioyo', 'Tosin', 9, 2),
(301, 210, 'Aleksandar', 'Mitrović', 'Mitrović', 9, 4),
(302, 211, 'Harrison', 'Reed', 'Reed', 9, 3),
(303, 212, 'Harry', 'Wilson', 'Wilson', 9, 3),
(304, 213, 'Marek', 'Rodák', 'Rodák', 9, 1),
(305, 214, 'Ivan', 'Neves Abreu Cavaleiro', 'Cavaleiro', 9, 3),
(306, 215, 'Kenny', 'Tete', 'Tete', 9, 2),
(307, 216, 'Josh', 'Onomah', 'Onomah', 9, 3),
(308, 217, 'Antonee', 'Robinson', 'Robinson', 9, 2),
(309, 218, 'Rodrigo', 'Muniz Carvalho', 'Muniz', 9, 4),
(310, 219, 'Jay', 'Stansfield', 'Stansfield', 9, 4),
(311, 220, 'João', 'Palhinha Gonçalves', 'Palhinha', 9, 3),
(312, 231, 'Daniel', 'James', 'James', 9, 3),
(313, 346, 'Andreas', 'Hoelgebaum Pereira', 'Andreas', 9, 3),
(314, 470, 'Issa', 'Diop', 'Diop', 9, 2),
(315, 521, 'Tyrese', 'Francois', 'Francois', 9, 3),
(316, 532, 'Kevin', 'Mbabu', 'Mbabu', 9, 2),
(317, 546, 'Luke', 'Harris', 'Harris', 9, 3),
(318, 562, 'Manor', 'Solomon', 'Solomon', 9, 3),
(319, 591, 'Terry', 'Ablade', 'Ablade', 9, 4),
(320, 613, 'Layvin', 'Kurzawa', 'Kurzawa', 9, 2),
(321, 614, 'Willian', 'Borges da Silva', 'Willian', 9, 3),
(322, 618, 'Carlos Vinícius', 'Alves Morais', 'Vinícius', 9, 4),
(323, 636, 'Stefan', 'Parkes', 'Parkes', 9, 2),
(324, 641, 'Martial', 'Godo', 'Godo', 9, 3),
(325, 667, 'Kristian', 'Sekularac', 'Sekularac', 9, 3),
(326, 248, 'Kasper', 'Schmeichel', 'Schmeichel', 10, 1),
(327, 249, 'Jonny', 'Evans', 'Evans', 10, 2),
(328, 250, 'Ryan', 'Bertrand', 'Bertrand', 10, 2),
(329, 251, 'Marc', 'Albrighton', 'Albrighton', 10, 3),
(330, 252, 'Nampalys', 'Mendy', 'Mendy', 10, 3),
(331, 253, 'Jannik', 'Vestergaard', 'Vestergaard', 10, 2),
(332, 254, 'Danny', 'Ward', 'Ward', 10, 1),
(333, 255, 'Jamie', 'Vardy', 'Vardy', 10, 4),
(334, 256, 'Ricardo', 'Barbosa Pereira', 'Ricardo', 10, 2),
(335, 257, 'Daniel', 'Amartey', 'Amartey', 10, 2),
(336, 258, 'Timothy', 'Castagne', 'Castagne', 10, 2),
(337, 259, 'Youri', 'Tielemans', 'Tielemans', 10, 3),
(338, 260, 'Ayoze', 'Pérez', 'Pérez', 10, 3),
(339, 261, 'James', 'Maddison', 'Maddison', 10, 3),
(340, 262, 'Kelechi', 'Iheanacho', 'Iheanacho', 10, 4),
(341, 263, 'Hamza', 'Choudhury', 'Choudhury', 10, 3),
(342, 264, 'Harvey', 'Barnes', 'Barnes', 10, 3),
(343, 265, 'Wilfred', 'Ndidi', 'Ndidi', 10, 3),
(344, 266, 'Kiernan', 'Dewsbury-Hall', 'Dewsbury-Hall', 10, 3),
(345, 267, 'Çaglar', 'Söyüncü', 'Söyüncü', 10, 2),
(346, 268, 'James', 'Justin', 'Justin', 10, 2),
(347, 269, 'Boubakary', 'Soumaré', 'Soumaré', 10, 3),
(348, 270, 'Luke', 'Thomas', 'Thomas', 10, 2),
(349, 271, 'Patson', 'Daka', 'Daka', 10, 4),
(350, 273, 'Lewis', 'Brunt', 'Brunt', 10, 2),
(351, 548, 'Daniel', 'Iversen', 'Iversen', 10, 1),
(352, 549, 'Dennis', 'Praet', 'Praet', 10, 3),
(353, 581, 'Alex', 'Smithies', 'Smithies', 10, 1),
(354, 612, 'Wout', 'Faes', 'Faes', 10, 2),
(355, 639, 'Sammy', 'Braybrooke', 'Braybrooke', 10, 3),
(356, 645, 'Joe', 'Wormleighton', 'Wormleighton', 10, 2),
(357, 687, 'Kasey', 'McAteer', 'McAteer', 10, 3),
(358, 221, 'Liam', 'Cooper', 'Cooper', 11, 2),
(359, 222, 'Luke', 'Ayling', 'Ayling', 11, 2),
(360, 223, 'Mateusz', 'Klich', 'Klich', 11, 3),
(361, 224, 'Adam', 'Forshaw', 'Forshaw', 11, 3),
(362, 225, 'Rodrigo', 'Moreno', 'Rodrigo', 11, 3),
(363, 226, 'Stuart', 'Dallas', 'Dallas', 11, 2),
(364, 227, 'Patrick', 'Bamford', 'Bamford', 11, 4),
(365, 228, 'Diego', 'Llorente', 'Llorente', 11, 2),
(366, 229, 'Tyler', 'Roberts', 'Roberts', 11, 3),
(367, 230, 'Robin', 'Koch', 'Koch', 11, 2),
(368, 232, 'Raphael', 'Dias Belloli', 'Raphinha', 11, 3),
(369, 233, 'Jack', 'Harrison', 'Harrison', 11, 3),
(370, 234, 'Jamie', 'Shackleton', 'Shackleton', 11, 3),
(371, 235, 'Pascal', 'Struijk', 'Struijk', 11, 2),
(372, 236, 'Kristoffer', 'Klaesson', 'Klaesson', 11, 1),
(373, 237, 'Sam', 'Greenwood', 'Greenwood', 11, 4),
(374, 238, 'Illan', 'Meslier', 'Meslier', 11, 1),
(375, 239, 'Junior', 'Firpo Adames', 'Firpo', 11, 2),
(376, 240, 'Crysencio', 'Summerville', 'Summerville', 11, 3),
(377, 241, 'Lewis', 'Bate', 'Bate', 11, 3),
(378, 242, 'Joe', 'Gelhardt', 'Gelhardt', 11, 4),
(379, 243, 'Leo Fuhr', 'Hjelde', 'Hjelde', 11, 2),
(380, 244, 'Rasmus', 'Kristensen', 'Kristensen', 11, 2),
(381, 245, 'Marc', 'Roca Junqué', 'Roca', 11, 3),
(382, 246, 'Brenden', 'Aaronson', 'Aaronson', 11, 3),
(383, 247, 'Darko', 'Gyabi', 'Gyabi', 11, 3),
(384, 506, 'Tyler', 'Adams', 'Adams', 11, 3),
(385, 508, 'Luis', 'Sinisterra Lucumí', 'Sinisterra', 11, 3),
(386, 547, 'Cody', 'Drameh', 'Drameh', 11, 2),
(387, 565, 'Archie', 'Gray', 'Gray', 11, 3),
(388, 578, 'Joel', 'Robles', 'Robles', 11, 1),
(389, 619, 'Wilfried', 'Gnonto', 'Gnonto', 11, 4),
(390, 659, 'Mateo Joseph', 'Fernández', 'Mateo Joseph', 11, 4),
(391, 663, 'Sonny', 'Perkins', 'Perkins', 11, 4),
(392, 691, 'Maximilian', 'Wöber', 'Wöber', 11, 2),
(393, 700, 'Georginio', 'Rutter', 'Rutter', 11, 4),
(394, 274, 'James', 'Milner', 'Milner', 12, 3),
(395, 275, 'Jordan', 'Henderson', 'Henderson', 12, 3),
(396, 276, 'Joel', 'Matip', 'Matip', 12, 2),
(397, 277, 'Thiago', 'Alcántara do Nascimento', 'Thiago', 12, 3),
(398, 278, 'Alex', 'Oxlade-Chamberlain', 'Chamberlain', 12, 3),
(399, 279, 'Roberto', 'Firmino', 'Firmino', 12, 4),
(400, 280, 'Virgil', 'van Dijk', 'Van Dijk', 12, 2),
(401, 281, 'Alisson', 'Ramses Becker', 'Alisson', 12, 1),
(402, 282, 'Fabio Henrique', 'Tavares', 'Fabinho', 12, 3),
(403, 283, 'Mohamed', 'Salah', 'Salah', 12, 3),
(404, 284, 'Andrew', 'Robertson', 'Robertson', 12, 2),
(405, 285, 'Trent', 'Alexander-Arnold', 'Alexander-Arnold', 12, 2),
(406, 286, 'Joseph', 'Gomez', 'Gomez', 12, 2),
(407, 287, 'Naby', 'Keita', 'Keita', 12, 3),
(408, 288, 'Diogo', 'Teixeira da Silva', 'Diogo Jota', 12, 4),
(409, 289, 'Caoimhin', 'Kelleher', 'Kelleher', 12, 1),
(410, 290, 'Ibrahima', 'Konaté', 'Konaté', 12, 2),
(411, 291, 'Curtis', 'Jones', 'Jones', 12, 3),
(412, 292, 'Konstantinos', 'Tsimikas', 'Tsimikas', 12, 2),
(413, 293, 'Luis', 'Díaz', 'Luis Díaz', 12, 3),
(414, 294, 'Harvey', 'Elliott', 'Elliott', 12, 3),
(415, 296, 'Fábio', 'Freitas Gouveia Carvalho', 'Carvalho', 12, 3),
(416, 297, 'Darwin', 'Núñez Ribeiro', 'Darwin', 12, 4),
(417, 298, 'Calvin', 'Ramsay', 'Ramsay', 12, 2),
(418, 497, 'Adrián', 'San Miguel del Castillo', 'Adrián', 12, 1),
(419, 498, 'Rhys', 'Williams', 'R.Williams', 12, 2),
(420, 499, 'Ben', 'Davies', 'Davies', 12, 2),
(421, 500, 'Sepp', 'van den Berg', 'Van den Berg', 12, 2),
(422, 501, 'Nathaniel', 'Phillips', 'Phillips', 12, 2),
(423, 563, 'Luke', 'Chambers', 'Chambers', 12, 2),
(424, 564, 'Stefan', 'Bajcetic', 'Bajcetic', 12, 3),
(425, 584, 'Bobby', 'Clark', 'Clark', 12, 3),
(426, 592, 'Harvey', 'Davies', 'H.Davies', 12, 1),
(427, 620, 'Arthur Henrique', 'Ramos de Oliveira Melo', 'Arthur', 12, 3),
(428, 665, 'Ben', 'Doak', 'Doak', 12, 3),
(429, 680, 'Cody', 'Gakpo', 'Gakpo', 12, 3),
(430, 299, 'Kyle', 'Walker', 'Walker', 13, 2),
(431, 300, 'Ilkay', 'Gündogan', 'Gündogan', 13, 3),
(432, 301, 'Kevin', 'De Bruyne', 'De Bruyne', 13, 3),
(433, 302, 'John', 'Stones', 'Stones', 13, 2),
(434, 303, 'Riyad', 'Mahrez', 'Mahrez', 13, 3),
(435, 305, 'Jack', 'Grealish', 'Grealish', 13, 3),
(436, 306, 'João', 'Cancelo', 'Cancelo', 13, 2),
(437, 307, 'Ederson', 'Santana de Moraes', 'Ederson', 13, 1),
(438, 308, 'Nathan', 'Aké', 'Aké', 13, 2),
(439, 309, 'Aymeric', 'Laporte', 'Laporte', 13, 2),
(440, 310, 'Zack', 'Steffen', 'Steffen', 13, 1),
(441, 311, 'Bernardo', 'Veiga de Carvalho e Silva', 'Bernardo', 13, 3),
(442, 312, 'Rúben', 'Gato Alves Dias', 'Dias', 13, 2),
(443, 314, 'Phil', 'Foden', 'Foden', 13, 3),
(444, 315, 'Rodrigo', 'Hernandez', 'Rodri', 13, 3),
(445, 316, 'Cole', 'Palmer', 'Palmer', 13, 3),
(446, 317, 'James', 'McAtee', 'McAtee', 13, 3),
(447, 318, 'Erling', 'Haaland', 'Haaland', 13, 4),
(448, 319, 'Julián', 'Álvarez', 'Álvarez', 13, 4),
(449, 320, 'Luke', 'Mbete-Tabu', 'Mbete', 13, 2),
(450, 322, 'Josh', 'Wilson-Esbrand', 'Wilson-Esbrand', 13, 2),
(451, 323, 'Liam', 'Delap', 'Delap', 13, 4),
(452, 324, 'Stefan', 'Ortega Moreno', 'Ortega', 13, 1),
(453, 325, 'Kalvin', 'Phillips', 'Phillips', 13, 3),
(454, 502, 'Scott', 'Carson', 'Carson', 13, 1),
(455, 573, 'Rico', 'Lewis', 'Lewis', 13, 2),
(456, 587, 'Sergio', 'Gómez', 'Sergio Gómez', 13, 2),
(457, 599, 'Claudio', 'Gomes', 'Gomes', 13, 3),
(458, 600, 'Ben', 'Knight', 'Knight', 13, 3),
(459, 610, 'Manuel', 'Akanji', 'Akanji', 13, 2),
(460, 162, 'Jack', 'Butland', 'Butland', 14, 1),
(461, 326, 'Cristiano Ronaldo', 'dos Santos Aveiro', 'Ronaldo', 14, 4),
(462, 327, 'David', 'De Gea Quintana', 'De Gea', 14, 1),
(463, 328, 'Phil', 'Jones', 'Jones', 14, 2),
(464, 329, 'Raphaël', 'Varane', 'Varane', 14, 2),
(465, 330, 'Harry', 'Maguire', 'Maguire', 14, 2),
(466, 331, 'Frederico', 'Rodrigues de Paula Santos', 'Fred', 14, 3),
(467, 332, 'Luke', 'Shaw', 'Shaw', 14, 2),
(468, 333, 'Bruno', 'Borges Fernandes', 'Fernandes', 14, 3),
(469, 334, 'Alex', 'Telles', 'Telles', 14, 2),
(470, 335, 'Marcus', 'Rashford', 'Rashford', 14, 3),
(471, 336, 'Donny', 'van de Beek', 'Van de Beek', 14, 3),
(472, 337, 'Victor', 'Lindelöf', 'Lindelöf', 14, 2),
(473, 338, 'Scott', 'McTominay', 'McTominay', 14, 3),
(474, 339, 'Eric', 'Bailly', 'Bailly', 14, 2),
(475, 340, 'Jadon', 'Sancho', 'Sancho', 14, 3),
(476, 341, 'Aaron', 'Wan-Bissaka', 'Wan-Bissaka', 14, 2),
(477, 342, 'Diogo', 'Dalot Teixeira', 'Dalot', 14, 2),
(478, 343, 'Brandon', 'Williams', 'B.Williams', 14, 2),
(479, 344, 'Anthony', 'Elanga', 'Elanga', 14, 3),
(480, 345, 'Anthony', 'Martial', 'Martial', 14, 4),
(481, 347, 'Facundo', 'Pellistri Rebollo', 'Pellistri', 14, 3),
(482, 348, 'Tom', 'Heaton', 'Heaton', 14, 1),
(483, 504, 'Tyrell', 'Malacia', 'Malacia', 14, 2),
(484, 519, 'Christian', 'Eriksen', 'Eriksen', 14, 3),
(485, 533, 'Lisandro', 'Martínez', 'Martínez', 14, 2),
(486, 550, 'Amad', 'Diallo', 'Amad', 14, 3),
(487, 551, 'Zidane', 'Iqbal', 'Iqbal', 14, 3),
(488, 569, 'Alejandro', 'Garnacho', 'Garnacho', 14, 3),
(489, 593, 'Carlos Henrique', 'Casimiro', 'Casemiro', 14, 3),
(490, 609, 'Antony Matheus', 'dos Santos', 'Antony', 14, 3),
(491, 615, 'Matej', 'Kovár', 'Kovár', 14, 1),
(492, 643, 'Kobbie', 'Mainoo', 'Mainoo', 14, 3),
(493, 656, 'Nathan', 'Bishop', 'Bishop', 14, 1),
(494, 660, 'Shola', 'Shoretire', 'Shoretire', 14, 4),
(495, 674, 'Rhys', 'Bennett', 'Bennett', 14, 2),
(496, 701, 'Wout', 'Weghorst', 'Weghorst', 14, 4),
(497, 349, 'Jonjo', 'Shelvey', 'Shelvey', 15, 3),
(498, 350, 'Matt', 'Ritchie', 'Ritchie', 15, 2),
(499, 351, 'Federico', 'Fernández', 'Fernández', 15, 2),
(500, 352, 'Ciaran', 'Clark', 'Clark', 15, 2),
(501, 353, 'Karl', 'Darlow', 'Darlow', 15, 1),
(502, 354, 'Chris', 'Wood', 'Wood', 15, 4),
(503, 355, 'Martin', 'Dubravka', 'Dubravka', 15, 1),
(504, 356, 'Callum', 'Wilson', 'Wilson', 15, 4),
(505, 357, 'Kieran', 'Trippier', 'Trippier', 15, 2),
(506, 358, 'Dan', 'Burn', 'Burn', 15, 2),
(507, 359, 'Ryan', 'Fraser', 'Fraser', 15, 3),
(508, 360, 'Jamaal', 'Lascelles', 'Lascelles', 15, 2),
(509, 361, 'Dwight', 'Gayle', 'Gayle', 15, 4),
(510, 362, 'Paul', 'Dummett', 'Dummett', 15, 2),
(511, 363, 'Javier', 'Manquillo Gaitán', 'Manquillo', 15, 2),
(512, 364, 'Emil', 'Krafth', 'Krafth', 15, 2),
(513, 365, 'Jacob', 'Murphy', 'Murphy', 15, 3),
(514, 366, 'Fabian', 'Schär', 'Schär', 15, 2),
(515, 367, 'Matt', 'Targett', 'Targett', 15, 2),
(516, 368, 'Allan', 'Saint-Maximin', 'Saint-Maximin', 15, 3),
(517, 369, 'Miguel', 'Almirón Rejala', 'Almirón', 15, 3),
(518, 370, 'Sean', 'Longstaff', 'S.Longstaff', 15, 3),
(519, 371, 'Joelinton Cássio', 'Apolinário de Lira', 'Joelinton', 15, 3),
(520, 372, 'Jamal', 'Lewis', 'Lewis', 15, 2),
(521, 373, 'Joe', 'Willock', 'Willock', 15, 3),
(522, 374, 'Bruno', 'Guimarães Rodriguez Moura', 'Bruno Guimarães', 15, 3),
(523, 375, 'Jeff', 'Hendrick', 'Hendrick', 15, 3),
(524, 376, 'Nick', 'Pope', 'Pope', 15, 1),
(525, 377, 'Sven', 'Botman', 'Botman', 15, 2),
(526, 552, 'Elliot', 'Anderson', 'Anderson', 15, 3),
(527, 594, 'Alexander', 'Isak', 'Isak', 15, 4),
(528, 626, 'Loris', 'Karius', 'Karius', 15, 1),
(529, 683, 'Garang', 'Kuol', 'Kuol', 15, 3),
(530, 295, 'Neco', 'Williams', 'N.Williams', 16, 2),
(531, 378, 'Harry', 'Arter', 'Arter', 16, 3),
(532, 379, 'Steve', 'Cook', 'Cook', 16, 2),
(533, 380, 'Lyle', 'Taylor', 'Lyle Taylor', 16, 4),
(534, 381, 'Jack', 'Colback', 'Colback', 16, 3),
(535, 382, 'Brice', 'Samba', 'Samba', 16, 1),
(536, 383, 'Carlos', 'Ribeiro Dias', 'Cafú', 16, 3),
(537, 384, 'Joe', 'Lolley', 'Lolley', 16, 3),
(538, 385, 'Scott', 'McKenna', 'McKenna', 16, 2),
(539, 386, 'Mohamed', 'Dräger', 'Dräger', 16, 2),
(540, 387, 'Ryan', 'Yates', 'Yates', 16, 3),
(541, 388, 'Joe', 'Worrall', 'Worrall', 16, 2),
(542, 389, 'Jonathan', 'Panzo', 'Panzo', 16, 2),
(543, 390, 'Xande', 'Nascimento da Costa Silva', 'Xande Silva', 16, 3),
(544, 391, 'Sam', 'Surridge', 'Surridge', 16, 4),
(545, 392, 'Richie', 'Laryea', 'Laryea', 16, 2),
(546, 393, 'Loïc', 'Mbe Soh', 'Mbe Soh', 16, 2),
(547, 394, 'Brennan', 'Johnson', 'Johnson', 16, 4),
(548, 395, 'Alex', 'Mighten', 'Mighten', 16, 3),
(549, 396, 'Braian', 'Ojeda Rodríguez', 'Ojeda', 16, 3),
(550, 397, 'Taiwo', 'Awoniyi', 'Awoniyi', 16, 4),
(551, 398, 'Dean', 'Henderson', 'Henderson', 16, 1),
(552, 399, 'Giulian', 'Biancone', 'Biancone', 16, 2),
(553, 474, 'Willy', 'Boly', 'Boly', 16, 2),
(554, 493, 'Morgan', 'Gibbs-White', 'Gibbs-White', 16, 3),
(555, 507, 'Moussa', 'Niakhaté', 'Niakhaté', 16, 2),
(556, 511, 'Omar', 'Richards', 'Richards', 16, 2),
(557, 518, 'Wayne', 'Hennessey', 'Hennessey', 16, 1),
(558, 523, 'Harry', 'Toffolo', 'Toffolo', 16, 2),
(559, 524, 'Lewis', 'O\'Brien', 'O\'Brien', 16, 3),
(560, 527, 'Jesse', 'Lingard', 'Lingard', 16, 3),
(561, 536, 'Orel', 'Mangala', 'Mangala', 16, 3),
(562, 553, 'Oliver', 'Hammond', 'Hammond', 16, 3),
(563, 582, 'Remo', 'Freuler', 'Freuler', 16, 3),
(564, 583, 'Cheikhou', 'Kouyaté', 'Kouyaté', 16, 3),
(565, 585, 'Emmanuel', 'Dennis', 'Dennis', 16, 4),
(566, 602, 'Renan Augusto', 'Lodi dos Santos', 'Renan Lodi', 16, 2),
(567, 621, 'Loïc', 'Badé', 'Badé', 16, 2),
(568, 628, 'Serge', 'Aurier', 'Aurier', 16, 2),
(569, 666, 'Dale', 'Taylor', 'Dale Taylor', 16, 4),
(570, 675, 'Jordan', 'Smith', 'Smith', 16, 1),
(571, 681, 'Gustavo Henrique', 'Furtado Scarpa', 'Scarpa', 16, 3),
(572, 703, 'Danilo', 'dos Santos de Oliveira', 'Danilo', 16, 3),
(573, 21, 'Ainsley', 'Maitland-Niles', 'Maitland-Niles', 17, 3),
(574, 321, 'Roméo', 'Lavia', 'Lavia', 17, 3),
(575, 400, 'Theo', 'Walcott', 'Walcott', 17, 3),
(576, 401, 'Alex', 'McCarthy', 'McCarthy', 17, 1),
(577, 402, 'Oriol', 'Romeu Vidal', 'Romeu', 17, 3),
(578, 403, 'Nathan', 'Redmond', 'Redmond', 17, 3),
(579, 405, 'Stuart', 'Armstrong', 'S.Armstrong', 17, 3),
(580, 406, 'Mohamed', 'Elyounoussi', 'Elyounoussi', 17, 3),
(581, 407, 'James', 'Ward-Prowse', 'Ward-Prowse', 17, 3),
(582, 408, 'Adam', 'Armstrong', 'A.Armstrong', 17, 4),
(583, 409, 'Kyle', 'Walker-Peters', 'Walker-Peters', 17, 2),
(584, 411, 'Che', 'Adams', 'Adams', 17, 4),
(585, 412, 'Nathan', 'Tella', 'Tella', 17, 3),
(586, 413, 'Lyanco', 'Silveira Neves Vojnovic', 'Lyanco', 17, 2),
(587, 414, 'Yan', 'Valery', 'Valery', 17, 2),
(588, 415, 'Will', 'Smallbone', 'Smallbone', 17, 3),
(589, 416, 'Ibrahima', 'Diallo', 'Diallo', 17, 3),
(590, 417, 'Romain', 'Perraud', 'Perraud', 17, 2),
(591, 418, 'Moussa', 'Djenepo', 'Djenepo', 17, 3),
(592, 419, 'Tino', 'Livramento', 'Livramento', 17, 2),
(593, 420, 'Mohammed', 'Salisu', 'Salisu', 17, 2),
(594, 421, 'Mateusz', 'Lis', 'Lis', 17, 1),
(595, 422, 'Gavin', 'Bazunu', 'Bazunu', 17, 1),
(596, 423, 'Armel', 'Bella-Kotchap', 'Bella-Kotchap', 17, 2),
(597, 424, 'Willy', 'Caballero', 'Caballero', 17, 1),
(598, 512, 'Joe', 'Ayodele-Aribo', 'Aribo', 17, 3),
(599, 528, 'Sékou', 'Mara', 'Mara', 17, 4),
(600, 622, 'Juan', 'Larios López', 'Larios', 17, 2),
(601, 623, 'Duje', 'Caleta-Car', 'Caleta-Car', 17, 2),
(602, 624, 'Samuel', 'Edozie', 'Edozie', 17, 3),
(603, 647, 'Lewis', 'Payne', 'Payne', 17, 3),
(604, 648, 'Ryan', 'Finnigan', 'Finnigan', 17, 3),
(605, 671, 'Jimmy', 'Morgan', 'Morgan', 17, 4),
(606, 692, 'Mislav', 'Orsic', 'Orsic', 17, 3),
(607, 693, 'Carlos', 'Alcaraz', 'Alcaraz', 17, 3),
(608, 425, 'Hugo', 'Lloris', 'Lloris', 18, 1),
(609, 426, 'Fraser', 'Forster', 'Forster', 18, 1),
(610, 427, 'Harry', 'Kane', 'Kane', 18, 4),
(611, 428, 'Son', 'Heung-min', 'Son', 18, 3),
(612, 429, 'Matt', 'Doherty', 'Doherty', 18, 2),
(613, 430, 'Eric', 'Dier', 'Dier', 18, 2),
(614, 431, 'Lucas', 'Rodrigues Moura da Silva', 'Lucas Moura', 18, 3),
(615, 432, 'Ben', 'Davies', 'Davies', 18, 2),
(616, 433, 'Pierre-Emile', 'Højbjerg', 'Højbjerg', 18, 3),
(617, 434, 'Harry', 'Winks', 'Winks', 18, 3),
(618, 435, 'Davinson', 'Sánchez', 'Sánchez', 18, 2),
(619, 436, 'Ryan', 'Sessegnon', 'R.Sessegnon', 18, 2),
(620, 437, 'Steven', 'Bergwijn', 'Bergwijn', 18, 3),
(621, 438, 'Sergio', 'Reguilón', 'Reguilón', 18, 2),
(622, 439, 'Japhet', 'Tanganga', 'Tanganga', 18, 2),
(623, 440, 'Rodrigo', 'Bentancur', 'Bentancur', 18, 3),
(624, 441, 'Oliver', 'Skipp', 'Skipp', 18, 3),
(625, 442, 'Joe', 'Rodon', 'Rodon', 18, 2),
(626, 443, 'Cristian', 'Romero', 'Romero', 18, 2),
(627, 444, 'Yves', 'Bissouma', 'Bissouma', 18, 3),
(628, 445, 'Emerson', 'Leite de Souza Junior', 'Emerson Royal', 18, 2),
(629, 446, 'Dejan', 'Kulusevski', 'Kulusevski', 18, 3),
(630, 447, 'Dane', 'Scarlett', 'Scarlett', 18, 4),
(631, 448, 'Ivan', 'Perišić', 'Perišić', 18, 2),
(632, 449, 'Harvey', 'White', 'White', 18, 3),
(633, 450, 'Pape Matar', 'Sarr', 'Sarr', 18, 3),
(634, 451, 'Brandon', 'Austin', 'Austin', 18, 1),
(635, 452, 'Alfie', 'Devine', 'Devine', 18, 3),
(636, 453, 'Troy', 'Parrott', 'Parrott', 18, 4),
(637, 454, 'Richarlison', 'de Andrade', 'Richarlison', 18, 4),
(638, 513, 'Clément', 'Lenglet', 'Lenglet', 18, 2),
(639, 522, 'Djed', 'Spence', 'Spence', 18, 2),
(640, 554, 'Bryan', 'Gil Salvatierra', 'Bryan', 18, 3),
(641, 455, 'Lukasz', 'Fabianski', 'Fabianski', 19, 1),
(642, 456, 'Angelo', 'Ogbonna', 'Ogbonna', 19, 2),
(643, 457, 'Aaron', 'Cresswell', 'Cresswell', 19, 2),
(644, 458, 'Michail', 'Antonio', 'Antonio', 19, 4),
(645, 459, 'Craig', 'Dawson', 'Dawson', 19, 2),
(646, 460, 'Manuel', 'Lanzini', 'Lanzini', 19, 3),
(647, 461, 'Kurt', 'Zouma', 'Zouma', 19, 2),
(648, 462, 'Arthur', 'Masuaku', 'Masuaku', 19, 2),
(649, 463, 'Vladimir', 'Coufal', 'Coufal', 19, 2),
(650, 464, 'Saïd', 'Benrahma', 'Benrahma', 19, 3),
(651, 465, 'Jarrod', 'Bowen', 'Bowen', 19, 3),
(652, 466, 'Nikola', 'Vlasic', 'Vlasic', 19, 3),
(653, 467, 'Declan', 'Rice', 'Rice', 19, 3),
(654, 468, 'Tomas', 'Soucek', 'Soucek', 19, 3),
(655, 469, 'Pablo', 'Fornals Malla', 'Fornals', 19, 3),
(656, 471, 'Ben', 'Johnson', 'Johnson', 19, 2),
(657, 472, 'Nayef', 'Aguerd', 'Aguerd', 19, 2),
(658, 473, 'Alphonse', 'Areola', 'Areola', 19, 1),
(659, 509, 'Flynn', 'Downes', 'Downes', 19, 3),
(660, 529, 'Gianluca', 'Scamacca', 'Scamacca', 19, 4),
(661, 545, 'Emerson', 'Palmieri dos Santos', 'Emerson', 19, 2),
(662, 555, 'Harrison', 'Ashby', 'Ashby', 19, 2),
(663, 556, 'Conor', 'Coventry', 'Coventry', 19, 3),
(664, 571, 'Darren', 'Randolph', 'Randolph', 19, 1),
(665, 572, 'Armstrong', 'Oko-Flex', 'Oko-Flex', 19, 3),
(666, 575, 'Maxwel', 'Cornet', 'Cornet', 19, 3),
(667, 588, 'Thilo', 'Kehrer', 'Kehrer', 19, 2),
(668, 603, 'Lucas', 'Tolentino Coelho de Lima', 'Paquetá', 19, 3),
(669, 669, 'Divin', 'Mubama', 'Mubama', 19, 4),
(670, 476, 'Raúl', 'Jiménez', 'Jiménez', 20, 4),
(671, 477, 'Jonathan', 'Castro Otto', 'Jonny', 20, 2),
(672, 478, 'José', 'Malheiro de Sá', 'Sá', 20, 1),
(673, 480, 'Rúben', 'da Silva Neves', 'Neves', 20, 3),
(674, 481, 'Hwang', 'Hee-chan', 'Hwang', 20, 3),
(675, 482, 'Nélson', 'Cabral Semedo', 'Semedo', 20, 2),
(676, 483, 'Daniel', 'Castelo Podence', 'Podence', 20, 3),
(677, 484, 'Max', 'Kilman', 'Kilman', 20, 2),
(678, 485, 'Luke', 'Cundle', 'Cundle', 20, 3),
(679, 486, 'Pedro', 'Lomba Neto', 'Neto', 20, 3),
(680, 487, 'Rayan', 'Aït-Nouri', 'Aït-Nouri', 20, 2),
(681, 488, 'Fabio', 'Silva', 'Fabio Silva', 20, 4),
(682, 489, 'Toti António', 'Gomes', 'Toti', 20, 2),
(683, 490, 'Francisco Jorge', 'Tomás Oliveira', 'Chiquinho', 20, 3),
(684, 491, 'Adama', 'Traoré Diarra', 'Adama', 20, 3),
(685, 492, 'Matija', 'Šarkić', 'Šarkić', 20, 1),
(686, 494, 'Yerson', 'Mosquera Valdelamar', 'Mosquera', 20, 2),
(687, 503, 'João Filipe Iria', 'Santos Moutinho', 'Moutinho', 20, 3),
(688, 516, 'Nathan', 'Collins', 'Collins', 20, 2),
(689, 557, 'Jackson', 'Smith', 'Smith', 20, 1),
(690, 558, 'Hugo', 'Bueno López', 'Bueno', 20, 2),
(691, 566, 'Joseph', 'Hodge', 'Hodge', 20, 3),
(692, 567, 'Connor', 'Ronan', 'Ronan', 20, 3),
(693, 568, 'Chem', 'Campbell', 'Campbell', 20, 3),
(694, 579, 'Gonçalo Manuel', 'Ganchinho Guedes', 'Guedes', 20, 3),
(695, 589, 'Matheus Luiz', 'Nunes', 'Matheus', 20, 3),
(696, 608, 'Sasa', 'Kalajdzic', 'Kalajdžić', 20, 4),
(697, 625, 'Diego', 'Da Silva Costa', 'Diego Costa', 20, 4),
(698, 629, 'Boubacar', 'Traoré', 'Traoré', 20, 3),
(699, 657, 'Nathan', 'Fraser', 'Fraser', 20, 4),
(700, 658, 'Harvey', 'Griffiths', 'Griffiths', 20, 3),
(701, 664, 'Dexter', 'Lembikisa', 'Lembikisa', 20, 2),
(702, 682, 'Matheus', 'Santos Carneiro Da Cunha', 'Cunha', 20, 4),
(703, 698, 'Mario', 'Lemina', 'Lemina', 20, 3),
(704, 704, 'Pablo', 'Sarabia', 'Sarabia', 20, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `teams`
--

CREATE TABLE `teams` (
  `id` int(100) NOT NULL,
  `team_id` int(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `short_name` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `code` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `teams`
--

INSERT INTO `teams` (`id`, `team_id`, `name`, `short_name`, `code`) VALUES
(1, 1, 'Arsenal', 'ARS', 3),
(2, 2, 'Aston Villa', 'AVL', 7),
(3, 3, 'Bournemouth', 'BOU', 91),
(4, 4, 'Brentford', 'BRE', 94),
(5, 5, 'Brighton', 'BHA', 36),
(6, 6, 'Chelsea', 'CHE', 8),
(7, 7, 'Crystal Palace', 'CRY', 31),
(8, 8, 'Everton', 'EVE', 11),
(9, 9, 'Fulham', 'FUL', 54),
(10, 10, 'Leicester', 'LEI', 13),
(11, 11, 'Leeds', 'LEE', 2),
(12, 12, 'Liverpool', 'LIV', 14),
(13, 13, 'Man City', 'MCI', 43),
(14, 14, 'Man Utd', 'MUN', 1),
(15, 15, 'Newcastle', 'NEW', 4),
(16, 16, 'Nott\'m Forest', 'NFO', 17),
(17, 17, 'Southampton', 'SOU', 20),
(18, 18, 'Spurs', 'TOT', 6),
(19, 19, 'West Ham', 'WHU', 21),
(20, 20, 'Wolves', 'WOL', 39);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=705;

--
-- AUTO_INCREMENT dla tabeli `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
