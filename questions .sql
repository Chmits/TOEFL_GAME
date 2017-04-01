-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
<<<<<<< HEAD:questions .sql
-- Généré le :  Sam 01 Avril 2017 à 19:50
=======
-- Généré le :  Sam 25 Mars 2017 à 08:37
>>>>>>> f94d22cdb38694282be2295507c182461f7886a3:questions.sql
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `questions`
--

-- --------------------------------------------------------

--
-- Structure de la table `tablequestion`
--

CREATE TABLE `tablequestion` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `rep1` varchar(255) NOT NULL,
  `rep2` varchar(255) NOT NULL,
  `rep3` varchar(255) NOT NULL,
  `rep4` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tablequestion`
--

INSERT INTO `tablequestion` (`id`, `question`, `rep1`, `rep2`, `rep3`, `rep4`) VALUES
(22, 'If you want a flat in the centre of the city you have to pay through the ______ for it.', ' teeth', ' back of your head', ' arm', ' nose'),
(16, 'I really must go and lie down for a while, I’ve got a ______ headache.', 'cutting', 'cracking', 'ringing', 'splitting'),
(3, 'Who is …………………… girl over there with Mike?', 'no article is needed', 'a', 'a / the', ' the'),
(4, 'We need a secretary with …………… good knowledge of English.', 'no article is needed', 'the', 'a / the', 'a'),
(5, 'We’re having …………………… terrible weather.', 'no article is needed', 'the', 'a / the', 'a'),
(6, 'The castle ………………… in the 16th century.', 'built', 'has built', 'had built', 'was built'),
(7, 'French …………………… in many parts of Europe.\r\n\r\n', 'has been spoken', 'has spoken', 'is being spoken', 'is spoken'),
(8, 'The car …………………… by the mechanic.\r\n\r\n', ' is repairing', 'had repaired', ' has repaired', ' is being repaired'),
(9, 'Let the flowers …………………….\r\n', 'not plucked', 'not be plucking', 'not been plucked', 'not be plucked'),
(10, 'I ……………………… but I went anyway.\r\n\r\n  \r\n  \r\n  ', 'haven’t invited', 'wasn’t being invited', 'hadn’t invited', 'wasn’t invited'),
(11, 'young babies need to ……………………\r\n \r\n  \r\n  \r\n ', 'take care of\r\n  ', 'have taken care of', 'are taken care of', 'be taken care of'),
(17, 'Stop ______ about the bush, James ! Just tell me exactly what the problem is.', 'rushing', ' hiding', 'moving', ' beating'),
(18, 'I usually buy my clothes ______ : it’s cheaper than going to a dressmaker.', 'on the house', 'in public', ' on the shelf', 'off the peg '),
(19, 'David is leaving on Friday. I suggest we all ______ and get him a goingaway present.', ' dish out', ' pass the buck', ' pay on the nail', ' chip in'),
(20, 'The sky got very dark and soon it began to ______ down.', 'roar', 'bath', 'pouring', 'bucket'),
(21, 'My father ______ when he found out that I’d damaged the car.', 'saw pink elephants', ' made my blood', ' boil brought the house down', ' hit the roof '),
(23, 'I caught the bus by the skin of my ______. ', 'mouth', ' leg', ' neck', ' teeth'),
(24, 'Because the owner wanted a quick sale, the house went for ______.', ' loose change', 'a smile', ' a loaf of bread', ' a song '),
(25, 'The accident was caused by a taxi driver ______ the traffic lights.', ' rushing', ' missing', ' beating', ' jumping'),
(26, ' Lend me 20 pounds, please, John. I’m ______ at the moment.', ' down the rain', ' stuck up ', 'a bit thick', ' broke'),
(27, ' She would do anything for her youngest son. He was the ______ of her eye.', ' plum', ' centre', ' star', ' apple'),
(28, ' I always get ______in my stomach before visiting the dentist. ', 'worms', ' crabs', ' hedgehogs', ' butterflies');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `tablequestion`
--
ALTER TABLE `tablequestion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `tablequestion`
--
ALTER TABLE `tablequestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
