-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 06 mai 2022 à 20:48
-- Version du serveur : 5.7.31
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `application-facture`
--

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `reglement` int(11) NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` int(11) NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`id`, `nom`, `prenom`, `date`, `reglement`, `adresse`, `postal`, `ville`) VALUES
(1, 'Hirsch', 'Sacha', '2021-12-27', 1, '7 Rue du Docteur Leon Grimaud', 44100, 'Nantes'),
(2, 'hirsch', 'benoit', '2021-12-24', 100, '4 avenue de la plage', 85680, 'La Guérinière'),
(3, 'hirsch', 'benoit', '2021-12-24', 1, '7 Rue du Docteur Leon Grimaud', 44100, 'Nantes'),
(4, 'Hirsch', 'Sacha', '2021-03-10', 100, '7 Rue du Docteur Leon Grimaud', 44100, 'Nantes');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `facture`
--
ALTER TABLE `facture` ADD FULLTEXT KEY `IDX_FE8664106C6E55B5A625945B` (`nom`,`prenom`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
