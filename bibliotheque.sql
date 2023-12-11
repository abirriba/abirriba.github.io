-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Lun 11 Décembre 2023 à 21:02
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `adhernts`
--

CREATE TABLE IF NOT EXISTS `adhernts` (
  `ID_adhernt` int(11) NOT NULL AUTO_INCREMENT,
  `Non` varchar(59) NOT NULL,
  `Date` varchar(40) NOT NULL,
  `Date_naissance` date NOT NULL,
  `Date_adhesion` date NOT NULL,
  `adresse` varchar(40) NOT NULL,
  `Num_tel` varchar(40) NOT NULL,
  `mail` varchar(40) NOT NULL,
  PRIMARY KEY (`ID_adhernt`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `adhernts`
--

INSERT INTO `adhernts` (`ID_adhernt`, `Non`, `Date`, `Date_naissance`, `Date_adhesion`, `adresse`, `Num_tel`, `mail`) VALUES
(12, 'abir', '13/3/2004', '0000-00-00', '0000-00-00', 'paris', '075544332211', 'maroilol@gmail.com'),
(13, 'lol', '13/3/2004', '2023-12-05', '2023-12-14', 'paris', '075544332211', 'maroilol@gmail.com'),
(14, 'lacho', '14/7/2003', '2023-12-06', '2023-12-22', 'anieresurseine', '0766554433', 'zineblll@gmail/com'),
(15, 'mery', '13/8/2022', '0000-00-00', '0000-00-00', 'paris', '0633778899', 'meryaaa@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `ID_Auteur` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Date_naissance` date NOT NULL,
  PRIMARY KEY (`ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`ID_Auteur`, `Nom`, `Prenom`, `Date_naissance`) VALUES
('d', 'riri', 'zineb', '1987-12-25'),
('h', 'lolo', 'alex', '2004-12-25'),
('s', 'nono', 'mery', '2004-12-03');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE IF NOT EXISTS `emprunts` (
  `id_emprunt` int(11) NOT NULL AUTO_INCREMENT,
  `Date_emprunt` date NOT NULL,
  `Duree` int(11) NOT NULL,
  `id_Adherent` int(11) NOT NULL,
  `Reference_livre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_emprunt`),
  KEY `Reference_livre` (`Reference_livre`),
  KEY `id_Adherent` (`id_Adherent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `emprunts`
--


-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE IF NOT EXISTS `livre` (
  `Reference_livre` varchar(50) NOT NULL,
  `Nbr_pages` int(11) NOT NULL,
  `#ID_Auteur` varchar(50) NOT NULL,
  `Annee` date NOT NULL,
  `Genre` varchar(50) NOT NULL,
  `Disponibilite` tinyint(1) NOT NULL,
  `Nbre_emprunts` int(11) NOT NULL,
  `Etat` varchar(50) NOT NULL,
  `Nbre_exemplaire` int(11) NOT NULL,
  PRIMARY KEY (`Reference_livre`),
  KEY `#ID_Auteur` (`#ID_Auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livre`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_2` FOREIGN KEY (`Reference_livre`) REFERENCES `livre` (`Reference_livre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`id_Adherent`) REFERENCES `adhernts` (`ID_adhernt`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`#ID_Auteur`) REFERENCES `auteurs` (`ID_Auteur`) ON DELETE CASCADE ON UPDATE CASCADE;
