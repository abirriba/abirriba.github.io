-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 11 Décembre 2023 à 21:25
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bd_locations`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `NCIN` varchar(50) NOT NULL,
  `nom` varchar(59) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `date_naissance` date NOT NULL,
  `num_permis` int(11) NOT NULL,
  `adresse` varchar(40) NOT NULL,
  `tel` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`NCIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--


-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `num_locaton` int(11) NOT NULL AUTO_INCREMENT,
  `date_location` date NOT NULL,
  `#immatriculation` varchar(50) NOT NULL,
  `#NCIN` varchar(34) NOT NULL,
  `duree` int(11) NOT NULL,
  `prix_location` float NOT NULL,
  `caution` float NOT NULL,
  PRIMARY KEY (`num_locaton`),
  KEY `#immatriculation` (`#immatriculation`),
  KEY `#NCIN` (`#NCIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `locations`
--


-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `immatriculation` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `prix_achat` float NOT NULL,
  `dat_achat` date NOT NULL,
  `marque` varchar(50) NOT NULL,
  `num_assurance` int(11) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `carburant` varchar(30) NOT NULL,
  `boite_vitesse` int(11) NOT NULL,
  `nbre_porte` int(11) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`#immatriculation`) REFERENCES `voitures` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`#NCIN`) REFERENCES `clients` (`NCIN`) ON DELETE CASCADE ON UPDATE CASCADE;
