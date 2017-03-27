-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 24 Mars 2017 à 11:04
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
(1, 'What do you think?', 'Yes', 'No', 'Maybe', 'Fuck Off'),
(2, 'question2', 'aa', 'abc', 'and', 'feee'),
(3, 'Who is …………………… girl over there with Mike?', 'no article is needed', 'a', 'a / the', ' the'),
(4, 'We need a secretary with …………… good knowledge of English.', 'no article is needed', 'the', 'a / the', 'a'),
(5, 'We’re having …………………… terrible weather.', 'no article is needed', 'the', 'a / the', 'a'),
(6, 'The castle ………………… in the 16th century.', 'built', 'has built', 'had built', 'was built'),
(7, 'French …………………… in many parts of Europe.\r\n\r\n', 'has been spoken', 'has spoken', 'is being spoken', 'is spoken'),
(8, 'The car …………………… by the mechanic.\r\n\r\n', ' is repairing', 'had repaired', ' has repaired', ' is being repaired'),
(9, 'Let the flowers …………………….\r\n', 'not plucked', 'not be plucking', 'not been plucked', 'not be plucked'),
(10, 'I ……………………… but I went anyway.\r\n\r\n  \r\n  \r\n  ', 'haven’t invited', 'wasn’t being invited', 'hadn’t invited', 'wasn’t invited'),
(11, 'young babies need to ……………………\r\n \r\n  \r\n  \r\n ', 'take care of\r\n  ', 'have taken care of', 'are taken care of', 'be taken care of');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
