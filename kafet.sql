-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 20 Novembre 2017 à 23:20
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `kafet`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `solde` double NOT NULL,
  `departement` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `annee` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `creator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pseudo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `email`, `numero`, `solde`, `departement`, `annee`, `created_at`, `creator`, `pseudo`) VALUES
(5, 'Cantin', 'Alexandre', 'NA', 'NA', -0.6, 'Diplome', -1, '2016-09-20 16:44:25', NULL, 'NA'),
(7, 'Goulet', 'Antoine', 'NA', 'NA', -0.4, 'Personnel', -1, '2016-09-20 16:44:25', NULL, 'NA'),
(8, 'Nedelec', 'Antoine', 'NA', 'NA', -3.35, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'Sucrétaire'),
(11, 'Maire', 'Arnaud', 'NA', 'NA', -9.4, 'INFO', 5, '2016-09-20 16:44:25', NULL, 'NA'),
(12, 'Marchenay', 'Arnaud', 'NA', 'NA', -1.7, 'ETN', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(13, 'Yvrard', 'Arthur', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(15, 'Rousset', 'Aurélien', 'NA', 'NA', -0.8, 'INFO', 5, '2016-09-20 16:44:25', NULL, 'Hard Gay'),
(16, 'NA', 'Aurélien', 'NA', 'NA', -4, 'INFO', 5, '2016-09-20 16:44:25', NULL, 'Aurelien Roux'),
(17, 'Bordet', 'Baptiste', 'NA', 'NA', -0.1, 'INFO', 5, '2016-09-20 16:44:25', NULL, 'baba'),
(20, 'Le Cadre', 'Benjamin', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(21, 'Auneau', 'Benoit', 'NA', 'NA', -2.6, 'INFO', 5, '2016-09-20 16:44:25', NULL, 'beubeuh'),
(22, 'Raimbault', 'Boris', 'NA', 'NA', -24.98, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'BORIIIIIIIII'),
(23, 'David', 'Charlène', 'NA', 'NA', -1.8, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'Electra'),
(24, 'NA', 'Charley', 'NA', 'NA', -3.8, 'Diplome', -1, '2016-09-20 16:44:25', NULL, 'NA'),
(26, 'Gonçalves', 'Christele', 'NA', 'NA', -2.1, 'Personnel', -1, '2016-09-20 16:44:25', NULL, 'NA'),
(27, 'Chauve', 'Clement', 'NA', 'NA', 2.15, 'Diplome', -1, '2016-09-20 16:44:25', NULL, 'NA'),
(28, 'Souriau', 'Clovis', 'NA', 'NA', -4.9, 'ETN', 5, '2016-09-20 16:44:25', NULL, 'NA'),
(29, 'Philippe', 'Corentin', 'NA', 'NA', 0.34, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'Pilipe'),
(30, 'Le Doujet', 'Davy', 'NA', 'NA', 0, 'Personnel', -1, '2016-09-20 16:44:25', NULL, 'mat 4'),
(31, 'Lacroix', 'David', 'NA', 'NA', -0.2, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(33, 'Le Huec', 'Damien', 'NA', 'NA', -0.4, 'Personnel', -1, '2016-09-20 16:44:25', NULL, 'Respo Boisson'),
(36, 'Clogenson', 'Denis', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(37, 'Pertin', 'Dimitri', 'NA', 'NA', -2.3, 'INFO', 5, '2016-09-20 16:44:25', NULL, 'NA'),
(39, 'Chafloque', 'Elias', 'NA', 'NA', -6, 'INFO', 5, '2016-09-20 16:44:25', NULL, '/! Péruvien'),
(40, 'Hamon', 'Florian', 'NA', 'NA', 6, 'INFO', 5, '2016-09-20 16:44:25', NULL, 'NA'),
(41, 'Le Dû', 'Goulven', 'NA', 'NA', -2.55, 'ETN', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(42, 'fouilleul', 'Guillaume', 'NA', 'NA', -14.1, 'ETN', 5, '2016-09-20 16:44:25', NULL, 'NA'),
(43, 'lachaud', 'Guillaume', 'NA', 'NA', 1.4, 'Diplome', -1, '2016-09-20 16:44:25', NULL, 'Guillaume 5A'),
(46, 'Tawfeek', 'Jehad', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(48, 'Maillard', 'Josselin', 'NA', 'NA', 4.85, 'Diplome', -1, '2016-09-20 16:44:25', NULL, 'Joss'),
(49, 'Tillay-Doledec', 'Josselin', 'NA', 'NA', 1, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'Josseline Bieber'),
(50, 'Lucas', 'Julia', 'NA', 'NA', 1.9, 'Personnel', -1, '2016-09-20 16:44:25', NULL, 'NA'),
(51, 'Hamon', 'Julien', 'NA', 'NA', 1.2, 'INFO', 5, '2016-09-20 16:44:25', NULL, 'NA'),
(53, 'Sanchez', 'Julien', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'Dirty Sanchez'),
(55, 'Surrault', 'Kévin', 'NA', 'NA', -1, 'INFO', 5, '2016-09-20 16:44:25', NULL, 'NA'),
(58, 'Toussaint', 'Loic', 'NA', 'NA', 6.4, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(59, 'Loridan', 'Cateau', 'NA', 'NA', 3.7, 'Personnel', -1, '2016-09-20 16:44:25', NULL, 'Magalie'),
(62, 'Lo tram', 'Marie', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(64, 'Bury', 'Maxime', 'NA', 'NA', 2.6, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(65, 'El Khamar', 'Mohamed', 'NA', 'NA', -3.7, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(69, 'Hetru', 'Nicolas', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:44:25', NULL, 'Nipo'),
(70, 'Truong', 'Paul', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(71, 'Carniato', 'Pierre', 'NA', 'NA', 0.3, 'Personnel', -1, '2016-09-20 16:44:25', NULL, 'Pierrot'),
(72, 'Seznec', 'Pierre', 'NA', 'NA', -0.25, 'NA', 0, '2016-09-20 16:44:25', NULL, 'NA'),
(74, 'Ben Mansoura', 'Rania', 'NA', 'NA', -1.2, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(75, 'Ilardi', 'Romain', 'NA', 'NA', -10.5, 'ETN', 5, '2016-09-20 16:44:25', NULL, 'Romain Cafet\'NA'),
(76, 'Postec', 'Ronan', 'NA', 'NA', -2.7, 'INFO', 5, '2016-09-20 16:44:25', NULL, 'NA'),
(78, 'Riom', 'Sebastien', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(80, 'Stmo', 'St?phane', 'NA', 'NA', -0.9, 'ETN', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(81, 'Flenet', 'Stephen', 'NA', 'NA', 0.5, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(83, 'Blaisot', 'Thomas', 'NA', 'NA', -0.5, 'ETN', 5, '2016-09-20 16:44:25', NULL, 'Blaise'),
(84, 'Hillion', 'Thomas', 'NA', 'NA', 0.41, 'Diplome', -1, '2016-09-20 16:44:25', NULL, 'cafet'),
(87, 'Rouill', 'Thibaud', 'NA', 'NA', -0.2, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(89, 'Boulaire', 'Valentin', 'NA', 'NA', -5.2, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'Boobsy'),
(90, 'Cohonner', 'Victor', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:44:25', NULL, 'NA'),
(91, 'Leclere', 'Victor', 'NA', 'NA', 0.8, 'INFO', 5, '2016-09-20 16:44:25', NULL, 'NA'),
(92, 'Dubroca', 'Vincent', 'NA', 'NA', 0.5, 'INFO', 4, '2016-09-20 16:44:25', NULL, 'Le Basque !!'),
(93, 'Guymard', 'Vincent', 'NA', 'NA', -0.9, 'Diplome', -1, '2016-09-20 16:44:25', NULL, 'vg'),
(95, 'Carles', 'NA', 'NA', 'NA', -0.6, 'Personnel', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(98, 'Carette', 'Michelle', 'NA', 'NA', 6.4, 'Personnel', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(99, 'Desauziers', 'Geoffroy', 'NA', 'NA', -1.8, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(100, 'Imani', 'Salim', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(101, 'Normand', 'Nicolas', 'NA', 'NA', 1.5, 'Personnel', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(103, 'Cam', 'Yann', 'NA', 'NA', -0.1, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'Jean CHapeau'),
(106, 'tellier', 'simon', 'NA', 'NA', -5.8, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'simsim'),
(107, 'Bozo', 'Nicolas', 'NA', 'NA', 2.7, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'Boz'),
(108, 'Lemarre', 'Armand', 'NA', 'NA', 2.1, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(109, 'Missaoui', 'Yahia', 'NA', 'NA', -0.3, 'INFO', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(110, 'cogrel', 'alexis', 'NA', 'NA', -2.5, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'coco'),
(111, 'CHANSIAUX', 'Arthur', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'juda'),
(113, 'Elizabeth', 'Stéphane', 'NA', 'NA', -0.5, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(116, 'Sichet', 'Maud', 'NA', 'NA', 0.4, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'Maud'),
(118, 'Cyrille', 'Olivier', 'NA', 'NA', 0.1, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(120, 'Le Couazer', 'Mathias', 'NA', 'NA', 0, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'babar'),
(122, 'ROUSSEAU', 'simon', 'NA', 'NA', 0, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'PuddiPuddi'),
(123, 'Seguin', 'Jonathan', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(126, 'NA', 'marie', 'NA', 'NA', -1.1, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(127, 'Paternostré', 'Florian', 'NA', 'NA', 0.18, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'Champi'),
(128, 'cam', 'NA', 'NA', 'NA', -1.3, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(131, 'Kuela', 'Clémence', 'NA', 'NA', 0.1, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(136, 'Sissoko', 'Mariam-Kaou', 'NA', 'NA', -0.2, 'INFO', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(137, 'Harmand', 'Denis', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'Dens'),
(140, 'Jousse', 'Gaetan', 'NA', 'NA', 3.4, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'Gaet\'NA'),
(147, 'Leynaud', 'Olivier', 'NA', 'NA', 0, 'MAT', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(148, 'Martins', 'Alexandre', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(149, 'Talotte', 'Léo', 'NA', 'NA', 0, 'MAT', 5, '2016-09-20 16:47:48', NULL, 'Dieu'),
(150, 'Arlicot', 'Aurore', 'NA', 'NA', 0.4, 'Personnel', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(151, 'Meunier', 'Vincent', 'NA', 'NA', 3.5, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'su7'),
(152, 'Lavergne', 'Arnaud', 'NA', 'NA', -3.3, 'MAT', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(153, 'Croyere', 'Gabriel', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(156, 'Vallée', 'Jeremie', 'NA', 'NA', -9, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'jeje'),
(160, 'NA', 'Clémence', 'NA', 'NA', -1.4, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(161, 'Brou', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(162, 'Bouchero', 'Antoine', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(169, 'Chastanier', 'Clément', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'cclecle'),
(171, 'Lehnebach', 'Léa', 'NA', 'NA', -0.9, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(172, 'Artu', 'Adrien', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(173, 'Chimot', 'Thomas', 'NA', 'NA', 2.4, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(174, 'Mallinson', 'Arthur', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(175, 'CHARGE', 'Pascal', 'NA', 'NA', -1, 'Personnel', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(176, 'WANG', 'Yide', 'NA', 'NA', 14, 'Personnel', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(177, 'Beduchaud', 'Maxence', 'NA', 'NA', 1.5, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(178, 'Guyonnet', 'Philippe', 'NA', 'NA', 3.8, 'Personnel', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(180, 'Le Moal', 'Olivier', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(181, 'Ouzounian', 'Keram', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'armenia'),
(182, 'BOGUET', 'Amandine', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'Maman'),
(183, 'Villeneuve', 'Vincent', 'NA', 'NA', 0, 'TE', 4, '2016-09-20 16:47:48', NULL, 'Prez BDE'),
(185, 'BROSSARD', 'Florian', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'Bross'),
(188, 'DER SARKISSIAN', 'Henri', 'NA', 'NA', 0, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'armenien'),
(189, 'Goenaga', 'Louis', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'Bernie'),
(191, 'remi', 'matéo', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(195, 'NA', 'sanchez', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(196, 'Le Gratiet', 'Ronan', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'Tata'),
(197, 'Turquand', 'Pierre', 'NA', 'NA', 0.1, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(198, 'DONON', 'Tom', 'NA', 'NA', -1, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'le belge'),
(199, 'NGUYEN', 'Anthony', 'NA', 'NA', 4.6, 'INFO', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(201, 'GABORIAU', 'Mathieu', 'NA', 'NA', -2, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'Playmobil'),
(203, 'Lebrene', 'Jérémy', 'NA', 'NA', -2.1, 'TE', 4, '2016-09-20 16:47:48', NULL, 'Taz'),
(204, 'Kabbaj Azifar', 'Aïda', 'NA', 'NA', 0, 'TE', 4, '2016-09-20 16:47:48', NULL, 'Mètre 50 de poche'),
(205, 'Valere', 'Benjamin', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(206, 'Beaucoubrey', 'Nicole', 'NA', 'NA', 0.1, 'Personnel', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(208, 'Le Roux', 'Coco', 'NA', 'NA', 0.65, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'CocoLeRoux'),
(209, 'Badji', 'Thiery', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'Tiwwy'),
(210, 'BOULET', 'Mathieu', 'NA', 'NA', 0.9, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'Gobelin'),
(211, 'BAUDON', 'Mathieu', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'le bordelais'),
(212, 'Nanfack', 'Georges', 'NA', 'NA', -7.5, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'Le polonais'),
(214, 'Cheval', 'Maxime', 'NA', 'NA', 0, 'TE', 5, '2016-09-20 16:47:48', NULL, 'secu man'),
(215, 'Pillement', 'Sébastien', 'NA', 'NA', 0, 'Personnel', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(216, 'Morin', 'Kevin', 'NA', 'NA', 0, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(217, 'Joly', 'Félicien', 'NA', 'NA', -4.7, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(218, 'POULAIN', 'François', 'NA', 'NA', 6.9, 'Personnel', -1, '2016-09-20 16:47:48', NULL, 'FP'),
(219, 'Chousseaud', 'Anne', 'NA', 'NA', 7, 'Personnel', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(220, 'Thomas', 'Kubica', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(221, 'El Alami', 'Ikram', 'NA', 'NA', -3.4, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(222, 'AUGEREAU', 'Baptiste', 'NA', 'NA', -0.5, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'Tisba'),
(223, 'NA', 'Adrien', 'NA', 'NA', -2.5, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(224, 'giraud', 'kevin', 'NA', 'NA', 2.1, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(226, 'Girard', 'Martial', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(227, 'Imbert', 'Luc', 'NA', 'NA', -5.8, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(228, 'Nominé', 'Louis', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'Short Rouge'),
(229, 'Pradié', 'Thomas', 'NA', 'NA', 0, 'INFO', 5, '2016-09-20 16:47:48', NULL, 'Trézouzrier'),
(230, 'Kyrou', 'Alois', 'NA', 'NA', -27.8, 'INFO', 4, '2016-09-20 16:47:48', NULL, 'La glisse'),
(231, 'Quelard', 'Yoann', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(232, 'GAULON', 'Vincent', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'Colon'),
(233, 'BURLE', 'Nicolas', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(234, 'Elisabeth', 'Stephane', 'NA', 'NA', 1.1, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(235, 'Urvoy', 'THOMAS', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(236, 'Le chanu', 'yoann', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(237, 'Saleun', 'Cédric', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(238, 'Lecaille', 'Quentin', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'NA'),
(239, 'Piller', 'Fred', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'Fred'),
(240, 'RAFIK', 'Lahrach', 'NA', 'NA', -0.5, 'ETN', 4, '2016-09-20 16:47:48', NULL, 'Cornichon'),
(241, 'Ladam', 'Alix', 'NA', 'NA', 1.7, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(242, 'Lorho', 'Nina', 'NA', 'NA', 0, 'Diplome', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(244, 'Ramstein', 'Gérard', 'NA', 'NA', 4.75, 'Personnel', -1, '2016-09-20 16:47:48', NULL, 'NA'),
(245, 'GIBON', 'François', 'NA', 'NA', -1.9, 'ETN', 5, '2016-09-20 16:47:48', NULL, 'FanFan'),
(246, 'Kersaudy', 'Manon', 'NA', 'NA', 0, 'INFO', 5, '2016-09-20 16:47:48', NULL, 'NA'),
(247, 'beucher', 'Chloé', 'NA@lo.ju', 'NA', 0, 'ETN', 4, '2016-09-20 16:49:26', ' ', 'NA'),
(248, 'Nezan', 'Brice', 'NA', 'NA', 0, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'Brick'),
(250, 'BAUDON', 'Mathieu', 'NA', 'NA', -2.8, 'ETN', 5, '2016-09-20 16:49:26', NULL, 'Punto'),
(251, 'Guion', 'Antoine', 'NA', 'NA', -1.6, 'MAT', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(252, 'Cissé', 'Aminata', 'NA', 'NA', -3.6, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(253, 'Errahimi', 'Soukaina', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'Souki'),
(254, 'Perez', 'Nico', 'NA', 'NA', -100.8, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'Belik'),
(255, 'Parilla', 'Nelson', 'NA', 'NA', -3.1, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(256, 'GAUTIER', 'Corentin', 'NA', 'NA', 0, 'MAT', 4, '2016-09-20 16:49:26', NULL, 'Fluttershy'),
(257, 'Moinard', 'Simon', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(258, 'Joeisseint', 'Thomas', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'Tavernier'),
(259, 'Beaudet', 'Alexandre', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'Jambon pingouin'),
(260, 'Adjamagbo', 'Edem', 'NA', 'NA', 2.9, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'Idesys'),
(261, 'Charon', 'Antoine', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'la ton'),
(262, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(263, 'BOETE', 'Tanguy', 'NA', 'NA', -2.1, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(264, 'Bagazov', 'Vladimir', 'NA', 'NA', -2, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'Vlad the Boss'),
(265, 'Le Moroux', 'Erwan', 'NA', 'NA', -2, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'Tagia'),
(266, 'Bonachera', 'David', 'NA', 'NA', -80.5, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'zouz'),
(267, 'beucher', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(268, 'Parrein', 'Benoît', 'NA', 'NA', 6.5, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(269, 'NA', 'NA', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:49:26', NULL, 'Souki'),
(270, 'Faucheux', 'Charlie', 'NA', 'NA', 0, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'Charlie'),
(271, 'Souron', 'Denis', 'NA', 'NA', -3.2, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'NA'),
(272, 'Molle', 'Benjamin', 'NA', 'NA', 0.1, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'NA'),
(273, 'Marconnet', 'Charles', 'NA', 'NA', 0, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'Carl'),
(274, 'bourget', 'corentin', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:49:26', NULL, 'NA'),
(275, 'Manier', 'Vincent', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:49:26', NULL, 'NA'),
(276, 'Moreau', 'Tom', 'NA', 'NA', -1.5, 'TE', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(277, 'Tollec', 'David', 'NA', 'NA', -11.6, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(278, 'SEGOVIANO', 'Miguel', 'NA', 'NA', -0.2, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(280, 'Legras', 'Soraka', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'Anthony'),
(282, 'Brisseau', 'Aurélien', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'Ien-ien'),
(283, 'Migaire', 'Adrien', 'NA', 'NA', 1.4, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'NA'),
(284, 'Saubanere', 'Charly', 'NA', 'NA', -157.7, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(285, 'Gougeon', 'Helene', 'NA', 'NA', 1.15, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(286, 'Moutiy', 'Laurys', 'NA', 'NA', 1.7, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'Black Mamba'),
(287, 'Savine', 'Claire', 'NA', 'NA', 0.2, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'basket casquette'),
(289, 'Tournillon', 'clement', 'NA', 'NA', -0.41, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'NA'),
(290, 'Malak', 'maher', 'NA', 'NA', -0.55, 'ETN', 5, '2016-09-20 16:49:26', NULL, 'NA'),
(291, 'Boisseleau', 'David', 'NA', 'NA', -41.6, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(292, 'Gaborieau', 'Pierre', 'NA', 'NA', 0, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'PhilDenfer'),
(293, 'Hendriks', 'Phillipe', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'pilipili'),
(294, 'Hervouet', 'Jérôme', 'NA', 'NA', -12.1, 'TE', 5, '2016-09-20 16:49:26', NULL, 'NA'),
(295, 'Lacotte', 'Thibaut', 'NA', 'NA', 1.8, 'MAT', 5, '2016-09-20 16:49:26', NULL, 'connard'),
(296, 'Kodelja', 'Dorian', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'Bulbi'),
(297, 'Jullien', 'Valentin', 'NA', 'NA', 0.1, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'bali'),
(298, 'Nguyen', 'Hugo', 'NA', 'NA', -1.1, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(299, 'Ricordel', 'Vincent', 'NA', 'NA', 1.9, 'Personnel', -1, '2016-09-20 16:49:26', NULL, 'NA'),
(300, 'Elsaadi', 'Abdul', 'NA', 'NA', -0.7, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(301, 'Texier', 'Alexis', 'NA', 'NA', -1.7, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'Texouille'),
(303, 'Gonce', 'Thibault', 'NA', 'NA', -5.9, 'Diplome', -1, '2016-09-20 16:49:26', NULL, 'Magic fingers'),
(304, 'Molluki', 'Samia', 'NA', 'NA', 0, 'Diplome', -1, '2016-09-20 16:49:26', NULL, 'Sam'),
(305, 'Péchenot', 'Bertrand', 'NA', 'NA', -7, 'Diplome', -1, '2016-09-20 16:49:26', NULL, 'NA'),
(306, 'LERAT', 'Antoine', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(308, 'Alexandre', 'Sieux', 'NA', 'NA', 0, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'Riker'),
(310, 'Verdier', 'Bruno', 'NA', 'NA', -1.5, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(311, 'Le Breton', 'Adrien', 'NA', 'NA', 1.1, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(312, 'Dubois', 'Chloé', 'NA', 'NA', 1.7, 'MAT', 4, '2016-09-20 16:49:26', NULL, 'Chupa'),
(313, 'RAYNAUD', 'Arthur', 'NA', 'NA', 0.65, 'Personnel', -1, '2016-09-20 16:49:26', NULL, 'Dada'),
(315, 'NA', 'vincent', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(316, 'Royer', 'Francois', 'NA', 'NA', -1, 'INFO', 5, '2016-09-20 16:49:26', NULL, ' jo44'),
(317, 'Cherif', 'Mehdi', 'NA', 'NA', 0, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'Sauce Kebab'),
(318, 'Derouet', 'Renan', 'NA', 'NA', -0.8, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(319, 'Moussa', 'Omar', 'NA', 'NA', -0.4, 'TE', 4, '2016-09-20 16:49:26', NULL, 'biquet'),
(320, 'Escola', 'Elisa', 'NA', 'NA', 0, 'MAT', 4, '2016-09-20 16:49:26', NULL, 'Saveola'),
(321, 'walas', 'Herve', 'NA', 'NA', 0, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'walas'),
(322, 'Bignumb', 'Boris', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:49:26', NULL, 'Big digita'),
(323, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'tom'),
(324, 'Gouret et Harmand', 'Pierre et Denis', 'NA', 'NA', -3.6, 'Diplome', -1, '2016-09-20 16:49:26', NULL, 'Fistouille'),
(325, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'connard'),
(326, 'NA', 'Cecile', 'NA', 'NA', -2.5, 'TE', 4, '2016-09-20 16:49:26', NULL, 'Fuerza Corsica'),
(327, 'Foulonneau', 'Nicolas', 'NA', 'NA', 0.3, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(328, 'Baptiste', 'Virot', 'NA', 'NA', -1.35, 'MAT', 5, '2016-09-20 16:49:26', NULL, 'Babou'),
(329, 'Gouliarmis', 'Georges', 'NA', 'NA', 4.7, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'yoyo'),
(330, 'Bouvot', 'Tony', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(331, 'Perrier', 'Justine', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'Bulle'),
(332, 'barret', 'julien', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'hard -ane'),
(333, 'Rollé', 'Mathieu', 'NA', 'NA', 4.1, 'TE', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(334, 'Remy', 'Claire', 'NA', 'NA', 0.5, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'Anha'),
(335, 'burle', 'NA', 'NA', 'NA', -0.5, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(336, 'Maisonnier', 'Thomas', 'NA', 'NA', -1.7, 'TE', 5, '2016-09-20 16:49:26', NULL, 'RDF'),
(337, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'gobelin'),
(338, 'Gouret', 'Vincent', 'NA', 'NA', 14.5, 'Personnel', -1, '2016-09-20 16:49:26', NULL, 'NA'),
(340, 'MOREL', 'Antoine', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(341, 'Cavaignac', 'Marie', 'NA', 'NA', 0, 'MAT', 5, '2016-09-20 16:49:26', NULL, 'NA'),
(342, 'valere', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(343, 'Rhallabi', 'Ahmed', 'NA', 'NA', -1.5, 'Personnel', -1, '2016-09-20 16:49:26', NULL, 'NA'),
(344, 'Hervouet', 'NA', 'NA', 'NA', -0.8, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(345, 'Guerre', 'Martin', 'NA', 'NA', -0.28, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'Wicey'),
(346, 'Bellez', 'Sami', 'NA', 'NA', 2.2, 'Personnel', -1, '2016-09-20 16:49:26', NULL, 'NA'),
(347, 'LECAN', 'Maxime', 'NA', 'NA', 0.1, 'INFO', 5, '2016-09-20 16:49:26', NULL, 'NA'),
(348, 'Hamedi', 'Mounia', 'NA', 'NA', -16.2, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'Moutmout'),
(349, 'Dupont', 'Romain', 'NA', 'NA', -7.9, 'ETN', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(350, 'Maimguene', 'Tristan', 'NA', 'NA', -2.5, 'TE', 5, '2016-09-20 16:49:26', NULL, 'NA'),
(351, 'Faden', 'Sarah', 'NA', 'NA', -1.9, 'ETN', 5, '2016-09-20 16:49:26', NULL, 'NA'),
(352, 'Monnet', 'Etienne', 'NA', 'NA', 0, 'MAT', 4, '2016-09-20 16:49:26', NULL, 'NA'),
(353, 'Bervet', 'gaetan', 'NA', 'NA', 1.4, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'CocaSalope'),
(354, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'ide'),
(355, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:49:26', NULL, 'idésys'),
(356, 'Djoumoi', 'Abdul', 'NA', 'NA', 0.1, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(357, 'Payen', 'Mathieu', 'NA', 'NA', -0.2, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'LeSodmisator'),
(358, 'LERAT', 'NA', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(359, 'Hamdouch', 'Nassim', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'Nass'),
(360, 'Scieux', 'Alexandre', 'NA', 'NA', 2.4, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(361, 'baudy', 'Mathieu', 'NA', 'NA', -2.8, 'TE', 4, '2016-09-20 16:50:53', NULL, 'matzy'),
(362, 'Tollec', 'Guillaume', 'NA', 'NA', -1.1, 'Personnel', -1, '2016-09-20 16:50:53', NULL, 'Club Rézo'),
(363, 'borchani', 'elias', 'NA', 'NA', -3.2, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(364, 'ROBERT', 'Yanna', 'NA', 'NA', 2.8, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(365, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(366, 'Gros', 'Quentin', 'NA', 'NA', 3.2, 'INFO', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(367, 'LECHAT', 'Simon', 'NA', 'NA', -0.3, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(368, 'Nguyen', 'Tuan', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(369, 'Adoue', 'Thibaut', 'NA', 'NA', -1.5, 'MAT', 5, '2016-09-20 16:50:53', NULL, 'Adibou'),
(370, 'Amoussou', 'Aurélien', 'NA', 'NA', 0.1, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(371, 'COSTE', 'Remy', 'NA', 'NA', 6.4, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(372, 'AVOT', 'Arnaud', 'NA', 'NA', 4, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'Nox'),
(373, 'ROYEAU', 'Baptiste', 'NA', 'NA', 0.6, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'Baptou'),
(374, 'NA', 'chloe', 'NA', 'NA', -0.5, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(375, 'Jacquel', 'Laura', 'NA', 'NA', 10.8, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(376, 'Rottier', 'Hugo', 'NA', 'NA', 0, 'Diplome', -1, '2016-09-20 16:50:53', NULL, 'NA'),
(377, 'hervou', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(378, 'CHALIFOUR', 'Antoine', 'NA', 'NA', 0.1, 'INFO', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(379, 'Habonnel', 'Quentin', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'habobo'),
(380, 'Nivault', 'Florian', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'Floppy'),
(381, 'mortain', 'loic', 'NA', 'NA', 0, 'Diplome', -1, '2016-09-20 16:50:53', NULL, 'NA'),
(382, 'Ons', 'Jallouli', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(383, 'Cook', 'Thomas', 'NA', 'NA', -1.7, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(384, 'Gallerneau', 'Philippe', 'NA', 'NA', -1, 'Diplome', -1, '2016-09-20 16:50:53', NULL, 'NA'),
(385, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(386, 'POINTET', 'Maxime', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(387, 'Madjid', 'Abdul', 'NA', 'NA', 0.2, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(388, 'borchani', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(389, 'jarry', 'virgil', 'NA', 'NA', -1.1, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'léojarry'),
(390, 'Blouin', 'Jordan', 'NA', 'NA', -0.9, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(391, 'ke', 'jing', 'NA', 'NA', 5.9, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(392, 'paulet', 'guillaume', 'NA', 'NA', 4.56, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(393, 'sicot', 'timothee', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(394, 'Pasquet', 'Titouan', 'NA', 'NA', 12.6, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(395, 'Vaidie', 'Steven', 'NA', 'NA', -3, 'INFO', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(396, 'Dayan', 'Myriam', 'NA', 'NA', 0, 'Diplome', -1, '2016-09-20 16:50:53', NULL, 'Myriam'),
(397, 'Bergeron', 'Stephane', 'NA', 'NA', 0, 'TE', 5, '2016-09-20 16:50:53', NULL, 'Stephou44'),
(398, 'lecaille', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(399, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'lecaille'),
(400, 'FREYSSE', 'Charles', 'NA', 'NA', -0.05, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(401, 'Majdoub', 'Hamdi', 'NA', 'NA', 1.85, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(402, 'Martin Goasmat', 'Paul', 'NA', 'NA', -26.3, 'MAT', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(403, 'SS', 'COP', 'NA', 'NA', -0.6, 'Personnel', -1, '2016-09-20 16:50:53', NULL, 'NA'),
(404, 'Jebiniani', 'Mohamed Ali', 'NA', 'NA', 1.8, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(405, 'Brunet', 'NA', 'NA', 'NA', 1, 'Personnel', -1, '2016-09-20 16:50:53', NULL, 'NA'),
(406, 'maartin', 'NA', 'NA', 'NA', -1, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(407, 'JOLY', 'Thomas', 'NA', 'NA', -22.1, 'MAT', 4, '2016-09-20 16:50:53', NULL, 'Grand-Theft-Toto'),
(408, 'Abu  Taha', 'Mohammad', 'NA', 'NA', 2.5, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(409, 'CHEMLAM', 'Charaf', 'NA', 'NA', -9.5, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(410, 'Labbat', 'Jean', 'NA', 'NA', 4, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(411, 'Cornec', 'Paulo', 'NA', 'NA', 0.1, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'popol le cousin'),
(412, 'Brune', 'Olivier', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'Groli'),
(413, 'Le Gallo', 'Arno', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(414, 'Labbat', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(415, 'Person', 'Ambre', 'NA', 'NA', 2, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'nanj\'menfous'),
(416, 'NA', 'Guillaume', 'NA', 'NA', -5.7, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'Sathorn'),
(417, 'Thomas', 'Milhau', 'NA', 'NA', -5.49, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(418, 'DELAMARE', 'Charles', 'NA', 'NA', -9.8, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'Carlos'),
(419, 'dumartin', 'louis', 'NA', 'NA', -6.4, 'MAT', 4, '2016-09-20 16:50:53', NULL, 'jicé'),
(420, 'Caron', 'Cyril', 'NA', 'NA', -3.2, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(421, 'joly', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(422, 'Dupisre', 'Tom', 'NA', 'NA', 0, 'INFO', 5, '2016-09-20 16:50:53', NULL, 'brockebackTom'),
(423, 'Mahé', 'Clément', 'NA', 'NA', -0.75, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(424, 'Connan', 'Guillaume', 'NA', 'NA', -0.6, 'INFO', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(425, 'Xie', 'Jian', 'NA', 'NA', 0.1, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(426, 'NA', 'NA', 'NA', 'NA', 0, 'TE', 5, '2016-09-20 16:50:53', NULL, 'matzy'),
(427, 'Huang', 'Bilong', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'Bell'),
(428, 'Thomas', 'Copradie', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'COP'),
(429, 'Vergnaud', 'Simon', 'NA', 'NA', -0.05, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(430, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'groli'),
(431, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(432, 'Cornec', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(433, 'lebris', 'emmanuel', 'NA', 'NA', -0.5, 'INFO', 5, '2016-09-20 16:50:53', NULL, 'le brie'),
(434, 'Fourrier', 'Mikaël', 'NA', 'NA', 0.1, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(435, 'Lelievre', 'Benjamin', 'NA', 'NA', -2.3, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(436, 'toll', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(437, 'Fouinat', 'Lucie', 'NA', 'NA', 10.7, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(438, 'Lau', 'Emmanuel', 'NA', 'NA', -1.2, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(439, 'Chelin', 'Tiphaine', 'NA', 'NA', -1.1, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(440, 'Bertrand', 'Camille', 'NA', 'NA', 0.8, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(441, 'Traoré', 'André Sedou', 'NA', 'NA', 0.42, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(442, 'Moreau', 'Thomas', 'NA', 'NA', -0.1, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'papa'),
(443, 'caron', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(444, 'Nachouki', 'Sami', 'NA', 'NA', 0, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'le fils de la prof'),
(445, 'Fenetaud', 'Pierre', 'NA', 'NA', -0.3, 'MAT', 4, '2016-09-20 16:50:53', NULL, 'pierrot'),
(446, 'Hervy', 'Eve', 'NA', 'NA', 0.1, 'MAT', 4, '2016-09-20 16:50:53', NULL, 'Dame nature'),
(447, 'Onana', 'Georges', 'NA', 'NA', -7.7, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(448, 'NA', 'NA', 'NA', 'NA', -0.6, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'carlos'),
(449, 'viala', 'etienne', 'NA', 'NA', -4.95, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(450, 'Lechartier', 'Amélie', 'NA', 'NA', -0.6, 'INFO', 5, '2016-09-20 16:50:53', NULL, 'Mélie'),
(451, 'Villegel', 'Maxime', 'NA', 'NA', -2, 'ETN', 4, '2016-09-20 16:50:53', NULL, 'NA'),
(452, 'PAVIOT', 'Felix', 'NA', 'NA', 1.25, 'Personnel', -1, '2016-09-20 16:50:53', NULL, 'NA'),
(453, 'HIPPEAU', 'Antoine', 'NA', 'NA', 1.1, 'ETN', 5, '2016-09-20 16:50:53', NULL, 'NA'),
(454, 'NA', 'NA', 'NA', 'NA', -1.7, 'INFO', 4, '2016-09-20 16:50:53', NULL, 'soraka'),
(455, 'Martineau', 'Marion', 'NA', 'NA', 0, 'MAT', 5, '2016-09-20 16:50:53', NULL, 'Maman Marion'),
(456, 'Hong', 'Nicolas', 'NA', 'NA', 0.02, 'INFO', 5, '2016-09-20 16:51:35', NULL, 'NA'),
(457, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'matzy'),
(458, 'BLIN', 'Thomas', 'NA', 'NA', 0, 'MAT', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(459, 'Klos', 'Julie', 'NA', 'NA', -0.5, 'MAT', 5, '2016-09-20 16:51:35', NULL, 'NA'),
(460, 'PAQUET', 'Cécile', 'NA', 'NA', -7, 'Diplome', -1, '2016-09-20 16:51:35', NULL, 'NA'),
(461, 'Semlali', 'Mehdi', 'NA', 'NA', -0.9, 'Diplome', -1, '2016-09-20 16:51:35', NULL, 'le refugié'),
(462, 'elmoaddem', 'Nouass', 'NA', 'NA', -11.1, 'ETN', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(463, 'CORBIN', 'Simon', 'NA', 'NA', 0.3, 'ETN', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(464, 'POTTIER', 'samuel', 'NA', 'NA', -1.8, 'ETN', 5, '2016-09-20 16:51:35', NULL, 'NA'),
(465, 'Etienne', 'Martin', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(466, 'BOURLIER', 'Christophe', 'NA', 'NA', 2.7, 'Personnel', -1, '2016-09-20 16:51:35', NULL, 'NA'),
(467, 'rouibia', 'soufiane', 'NA', 'NA', -8.5, 'Personnel', -1, '2016-09-20 16:51:35', NULL, 'NA'),
(468, 'François', 'Clarisse', 'NA', 'NA', 0, 'Personnel', -1, '2016-09-20 16:51:35', NULL, 'FM'),
(469, 'Auffret', 'Tudi', 'NA', 'NA', -0.4, 'ETN', 5, '2016-09-20 16:51:35', NULL, 'NA'),
(470, 'Saad', 'Mario', 'NA', 'NA', 4.8, 'ETN', 4, '2016-09-20 16:51:35', NULL, 'Mario'),
(471, 'Visserot', 'Romain', 'NA', 'NA', 1.8, 'ETN', 4, '2016-09-20 16:51:35', NULL, 'rom'),
(472, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'mariosaad'),
(473, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'mario'),
(474, 'martin goasmat', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(475, 'Levavasseur', 'Quentin', 'NA', 'NA', 6.3, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(476, 'Zhong', 'Jiahui', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(477, 'FROGER', 'Maxime', 'NA', 'NA', -12.5, 'ETN', 4, '2016-09-20 16:51:35', NULL, 'Barmit'),
(478, 'Lasalle', 'Simon', 'NA', 'NA', 8.6, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(479, 'Li', 'Shiting', 'NA', 'NA', 0, 'INFO', 5, '2016-09-20 16:51:35', NULL, 'Léo'),
(480, 'loulidi', 'nonjeveuxpasdesurnom', 'NA', 'NA', 0, 'Diplome', -1, '2016-09-20 16:51:35', NULL, 'NA'),
(481, 'Patrick', 'Jules', 'NA', 'NA', 0, 'Personnel', -1, '2016-09-20 16:51:35', NULL, 'stomoxys'),
(482, 'Leblanc', 'Jimmy', 'NA', 'NA', -3.3, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(483, 'Wayne', 'Victor', 'NA', 'NA', 0.1, 'ETN', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(484, 'Leguannec', 'Paul', 'NA', 'NA', 0.4, 'ETN', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(485, 'Elgo', 'Salah', 'NA', 'NA', 0, 'Diplome', -1, '2016-09-20 16:51:35', NULL, 'NA'),
(486, 'Sourisseau', 'Arthur', 'NA', 'NA', 0, 'INFO', 5, '2016-09-20 16:51:35', NULL, 'Tuture'),
(487, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'salah'),
(488, 'dougé', 'ivan', 'NA', 'NA', -12.7, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'ladouge'),
(489, 'Maisonneuve', 'Quentin', 'NA', 'NA', 5.5, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(490, 'Francois', 'Thibault', 'NA', 'NA', 3.5, 'ETN', 4, '2016-09-20 16:51:35', NULL, 'Cherpa'),
(491, 'Guilloto', 'Maxime', 'NA', 'NA', 0, 'MAT', 4, '2016-09-20 16:51:35', NULL, 'Guittou'),
(492, 'Barros', 'Miguel', 'NA', 'NA', 0.4, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'Seithness'),
(493, 'Caca', 'Caca', 'NA', 'NA', 0, 'Diplome', -1, '2016-09-20 16:51:35', NULL, 'Caca'),
(494, 'Savatte', 'Pierre', 'NA', 'NA', 0.75, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'RapMasta'),
(495, 'Liumin', 'Liu', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(496, 'Bonneau', 'Argann', 'NA', 'NA', 3.6, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'petit fillo'),
(497, 'Langelier', 'Arnaud', 'NA', 'NA', -5.7, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'Le president'),
(498, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'barmit'),
(499, 'Chardeur', 'Thomas', 'NA', 'NA', 0.5, 'ETN', 5, '2016-09-20 16:51:35', NULL, 'Chardle'),
(500, 'NA', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'typhe'),
(501, 'Azzoug', 'Erwan', 'NA', 'NA', -2.3, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'Vice-prez sale'),
(502, 'NA', 'Maxi', 'NA', 'NA', 0, 'ETN', 5, '2016-09-20 16:51:35', NULL, 'NA'),
(503, 'NA', 'NA', 'NA', 'NA', -1.3, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'paulet'),
(504, 'Paulet', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(505, 'paulet', 'NA', 'NA', 'NA', 0, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(506, 'haddad', 'mehdi', 'NA', 'NA', -1.3, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(508, 'pointet', 'NA', 'NA', 'NA', -0.5, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'NA'),
(509, 'Coquereau', 'Thomas', 'NA', 'NA', -0.6, 'INFO', 4, '2016-09-20 16:51:35', NULL, 'Cokralito'),
(510, 'le guennec', 'paul', 'NA@lo.ju', 'NAjhb@kjbkh.iuhj', 0, 'ETN', 4, '2016-09-20 16:51:35', 'po po', 'le berger');

-- --------------------------------------------------------

--
-- Structure de la table `decouvert`
--

CREATE TABLE `decouvert` (
  `id` int(11) NOT NULL,
  `montant` int(11) NOT NULL,
  `idbis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `decouvert`
--

INSERT INTO `decouvert` (`id`, `montant`, `idbis`) VALUES
(1, -10, 0);

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `nom`, `prenom`) VALUES
(1, 'lol', 'lol', 'sds@jljkl.fr', 'sds@jljkl.fr', 1, 'mqdqx31bx40k44gcg4gs8sgwwoos4sw', '$2y$13$9/HUdJR4wUipa6N9xe382.0QXwSsvhNVoQ38k18dUu8pcCT3SIYny', '2017-11-20 17:16:07', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, NULL, NULL),
(2, 'po', 'po', 'sds@jljkl.fk', 'sds@jljkl.fk', 1, '7aohog7osy4o8ogc8cw4w48gkswkcoo', '$2y$13$7qdsR6QK3g0kBlzVYmgsW.lX5jEtkbuY6UUh8h51iTX8LLAVNuMCG', '2017-11-20 17:14:51', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'po', 'po');

-- --------------------------------------------------------

--
-- Structure de la table `inactiveperiode`
--

CREATE TABLE `inactiveperiode` (
  `id` int(11) NOT NULL,
  `annee` int(11) NOT NULL,
  `mois` int(11) NOT NULL,
  `jours` int(11) NOT NULL,
  `idbis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `inactiveperiode`
--

INSERT INTO `inactiveperiode` (`id`, `annee`, `mois`, `jours`, `idbis`) VALUES
(2, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `prix`, `created_at`) VALUES
(1, 'Canette', 0.6, '2016-09-20 16:59:32'),
(5, 'croissant', 0.8, '2016-09-20 16:59:32'),
(6, 'pain au chocolat', 0.9, '2016-09-20 16:59:32'),
(7, 'café', 0.5, '2016-09-20 16:59:32'),
(8, 'Chausson aux pommes', 0.8, '2016-09-20 16:59:32'),
(9, 'Pain suisse', 0.9, '2016-09-20 16:59:32'),
(10, 'Snack 70 cent.', 0.7, '2016-09-20 16:59:32'),
(11, 'Snack 60 cent.', 0.6, '2016-09-20 16:59:32'),
(12, 'Mr Freeze (Gros)', 0.5, '2016-09-20 16:59:32'),
(13, 'Capuccino', 0.5, '2016-09-20 16:59:32'),
(14, 'Thé', 0.3, '2016-09-20 16:59:32'),
(15, 'Chocolat chaud', 0.4, '2016-09-20 16:59:32'),
(16, 'Mr Freeze (Petit)', 0.25, '2016-09-20 16:59:32'),
(17, 'Formule PtiDej Café', 1.3, '2016-09-20 16:59:32'),
(18, 'Formule PtiDej ChocoChaud', 1.3, '2016-09-20 16:59:32'),
(19, 'Snack 50 cent.', 0.5, '2016-09-20 16:59:32'),
(20, 'Pain aux raisins', 1, '2016-09-20 16:59:32');

-- --------------------------------------------------------

--
-- Structure de la table `recharges`
--

CREATE TABLE `recharges` (
  `id` int(11) NOT NULL,
  `montant` double NOT NULL,
  `created_at` datetime NOT NULL,
  `Client` int(11) DEFAULT NULL,
  `Creator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `recharges`
--

INSERT INTO `recharges` (`id`, `montant`, `created_at`, `Client`, `Creator`) VALUES
(1, 350, '2017-04-11 12:52:04', 510, 2),
(2, 350, '2017-04-11 12:53:36', 510, 2),
(3, 350, '2017-04-11 12:53:51', 510, 2),
(4, 2, '2017-04-11 13:06:04', 510, 2),
(5, 1000, '2017-04-11 13:09:52', 510, 2),
(6, 1000, '2017-04-11 13:16:15', 510, 2),
(7, 1000, '2017-04-11 13:16:49', 510, 2),
(8, 20, '2017-04-11 14:43:30', 510, 2),
(9, 10, '2017-04-11 14:43:55', 510, 2),
(10, 10, '2017-04-11 14:49:20', 305, 2);

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `Produit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `Produit` int(11) DEFAULT NULL,
  `Client` int(11) DEFAULT NULL,
  `Creator` int(11) DEFAULT NULL,
  `qtt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `transactions`
--

INSERT INTO `transactions` (`id`, `created_at`, `Produit`, `Client`, `Creator`, `qtt`) VALUES
(1, '2017-03-22 09:49:37', 1, 510, 2, 1),
(2, '2017-03-22 09:52:08', 1, 510, 2, 1),
(3, '2017-03-22 10:20:35', 1, 510, 2, 1),
(4, '2017-03-22 10:21:47', 1, 510, 2, 1),
(5, '2017-03-22 10:26:45', 1, 510, 2, 1),
(6, '2017-03-22 10:27:07', 1, 5, 2, 1),
(7, '2017-04-11 12:53:51', 1, NULL, NULL, 1),
(8, '2017-04-11 12:53:51', 5, NULL, NULL, 2),
(9, '2017-04-11 12:53:51', 6, NULL, NULL, 3),
(10, '2017-04-11 12:53:51', 7, NULL, NULL, 4),
(11, '2017-04-11 12:53:51', 8, NULL, NULL, 5),
(12, '2017-04-11 12:53:51', 9, NULL, NULL, 6),
(13, '2017-04-11 12:53:51', 10, NULL, NULL, 8),
(14, '2017-04-11 12:54:17', 1, NULL, NULL, 1),
(15, '2017-04-11 12:54:17', 5, NULL, NULL, 2),
(16, '2017-04-11 12:54:17', 6, NULL, NULL, 3),
(17, '2017-04-11 12:54:17', 7, NULL, NULL, 4),
(18, '2017-04-11 12:54:17', 8, NULL, NULL, 5),
(19, '2017-04-11 12:54:17', 9, NULL, NULL, 6),
(20, '2017-04-11 12:54:17', 10, NULL, NULL, 8),
(21, '2017-04-11 12:55:35', 1, NULL, NULL, 1),
(22, '2017-04-11 12:55:35', 5, NULL, NULL, 2),
(23, '2017-04-11 12:55:35', 6, NULL, NULL, 3),
(24, '2017-04-11 12:55:35', 7, NULL, NULL, 4),
(25, '2017-04-11 12:55:35', 8, NULL, NULL, 5),
(26, '2017-04-11 12:55:35', 9, NULL, NULL, 6),
(27, '2017-04-11 12:55:35', 10, NULL, NULL, 8),
(28, '2017-04-11 12:59:59', 1, NULL, NULL, 1),
(29, '2017-04-11 12:59:59', 5, NULL, NULL, 2),
(30, '2017-04-11 12:59:59', 6, NULL, NULL, 3),
(31, '2017-04-11 12:59:59', 7, NULL, NULL, 4),
(32, '2017-04-11 12:59:59', 8, NULL, NULL, 5),
(33, '2017-04-11 12:59:59', 9, NULL, NULL, 6),
(34, '2017-04-11 12:59:59', 10, NULL, NULL, 8),
(35, '2017-04-11 13:01:20', 1, NULL, NULL, 1),
(36, '2017-04-11 13:01:20', 5, NULL, NULL, 2),
(37, '2017-04-11 13:01:20', 6, NULL, NULL, 3),
(38, '2017-04-11 13:01:20', 7, NULL, NULL, 4),
(39, '2017-04-11 13:01:20', 8, NULL, NULL, 5),
(40, '2017-04-11 13:01:20', 9, NULL, NULL, 6),
(41, '2017-04-11 13:01:20', 10, NULL, NULL, 8),
(42, '2017-04-11 13:01:25', 1, NULL, NULL, 1),
(43, '2017-04-11 13:01:25', 5, NULL, NULL, 2),
(44, '2017-04-11 13:01:25', 6, NULL, NULL, 3),
(45, '2017-04-11 13:01:25', 7, NULL, NULL, 4),
(46, '2017-04-11 13:01:25', 8, NULL, NULL, 5),
(47, '2017-04-11 13:01:25', 9, NULL, NULL, 6),
(48, '2017-04-11 13:01:25', 10, NULL, NULL, 8),
(49, '2017-04-11 13:04:24', 1, 510, 2, 1),
(50, '2017-04-11 13:04:24', 5, 510, 2, 2),
(51, '2017-04-11 13:04:24', 6, 510, 2, 3),
(52, '2017-04-11 13:04:24', 7, 510, 2, 4),
(53, '2017-04-11 13:04:24', 8, 510, 2, 5),
(54, '2017-04-11 13:04:24', 9, 510, 2, 6),
(55, '2017-04-11 13:04:24', 10, 510, 2, 8),
(56, '2017-04-11 13:04:54', 1, 510, 2, 1),
(57, '2017-04-11 13:04:54', 5, 510, 2, 2),
(58, '2017-04-11 13:04:54', 6, 510, 2, 3),
(59, '2017-04-11 13:04:54', 7, 510, 2, 4),
(60, '2017-04-11 13:04:54', 8, 510, 2, 5),
(61, '2017-04-11 13:04:54', 9, 510, 2, 6),
(62, '2017-04-11 13:04:54', 10, 510, 2, 8),
(63, '2017-04-11 13:06:04', 7, 510, 2, 4),
(64, '2017-04-11 13:09:20', 20, 510, 2, 851),
(65, '2017-04-11 13:09:52', 20, 510, 2, 851),
(66, '2017-04-11 13:16:15', 5, 510, 2, 2),
(67, '2017-04-11 13:16:15', 6, 510, 2, 3),
(68, '2017-04-11 13:16:15', 8, 510, 2, 24),
(69, '2017-04-11 13:16:15', 9, 510, 2, 4),
(70, '2017-04-11 13:16:49', 5, 510, 2, 2),
(71, '2017-04-11 13:16:49', 6, 510, 2, 3),
(72, '2017-04-11 13:16:49', 8, 510, 2, 24),
(73, '2017-04-11 13:16:49', 9, 510, 2, 4),
(74, '2017-04-11 13:17:08', 7, 510, 2, 4),
(75, '2017-04-11 13:17:20', 7, 510, 2, 4),
(76, '2017-04-11 13:22:18', 8, 510, 2, 4),
(77, '2017-04-11 13:26:03', 7, 510, 2, 4),
(78, '2017-04-11 13:26:03', 8, 510, 2, 4),
(79, '2017-04-11 14:48:57', 6, 305, 2, 10),
(80, '2017-04-11 14:49:20', 5, 305, 2, 10);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `decouvert`
--
ALTER TABLE `decouvert`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Index pour la table `inactiveperiode`
--
ALTER TABLE `inactiveperiode`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recharges`
--
ALTER TABLE `recharges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_85255CE5C0E80163` (`Client`),
  ADD KEY `IDX_85255CE573BBD3FF` (`Creator`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8AF77964E618D5BB` (`Produit`);

--
-- Index pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F299C1B4C0E80163` (`Client`),
  ADD KEY `IDX_F299C1B4E618D5BB` (`Produit`),
  ADD KEY `IDX_F299C1B473BBD3FF` (`Creator`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;
--
-- AUTO_INCREMENT pour la table `decouvert`
--
ALTER TABLE `decouvert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `inactiveperiode`
--
ALTER TABLE `inactiveperiode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `recharges`
--
ALTER TABLE `recharges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `recharges`
--
ALTER TABLE `recharges`
  ADD CONSTRAINT `FK_85255CE573BBD3FF` FOREIGN KEY (`Creator`) REFERENCES `fos_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_85255CE5C0E80163` FOREIGN KEY (`Client`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `FK_8AF77964E618D5BB` FOREIGN KEY (`Produit`) REFERENCES `produits` (`id`);

--
-- Contraintes pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `FK_F299C1B473BBD3FF` FOREIGN KEY (`Creator`) REFERENCES `fos_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F299C1B4C0E80163` FOREIGN KEY (`Client`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F299C1B4E618D5BB` FOREIGN KEY (`Produit`) REFERENCES `produits` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
