-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  mar. 19 mars 2019 à 08:19
-- Version du serveur :  5.7.24
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `myphpdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `car_id` int(6) NOT NULL AUTO_INCREMENT,
  `car_brand` varchar(20) NOT NULL,
  `car_model` varchar(55) NOT NULL,
  `car_image` varchar(55) NOT NULL,
  `car_energy` varchar(10) NOT NULL,
  `car_price` int(10) NOT NULL,
  `car_color` varchar(20) NOT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cars`
--

INSERT INTO `cars` (`car_id`, `car_brand`, `car_model`, `car_image`, `car_energy`, `car_price`, `car_color`) VALUES
(1, 'audi', 'a3', 'img/audi_a3_blue.jpg', 'diesel', 26870, 'blue'),
(2, 'audi', 'a5', 'img/audi_a5_black.jpg', 'gasoline', 40550, 'black'),
(3, 'audi', 'a5', 'img/audi_a5_lightgrey.jpg', 'gasoline', 43250, 'light grey'),
(4, 'audi', 'a6', 'img/audi_a6_grey.jpg', 'gasoline', 41610, 'grey'),
(5, 'audi', 'q2', 'img/audi_q2_grey.jpg', 'gasoline', 26490, 'grey'),
(6, 'audi', 'q3', 'img/audi_q3_black.jpg', 'gasoline', 33670, 'black'),
(7, 'audi', 'q7', 'img/audi_q7_black.jpg', 'gasoline', 63810, 'black'),
(8, 'bmw', 'serie 1', 'img/bmw_1_white.jpg', 'gasoline', 23200, 'white'),
(9, 'bmw', 'serie 2', 'img/bmw_2_brown.jpg', 'gasoline', 26350, 'brown'),
(10, 'bmw', 'serie 3', 'img/bmw_3_blue.jpg', 'diesel', 39800, 'blue'),
(11, 'bmw', 'serie 4', 'img/bmw_4_blue.jpg', 'gasoline', 41050, 'blue'),
(12, 'bmw', 'serie 5', 'img/bmw_5_black.jpg', 'diesel', 46450, 'black'),
(13, 'bmw', 'x3', 'img/bmw_x3_black.jpg', 'diesel', 40900, 'black'),
(14, 'mercedes', 'class a', 'img/mercedes_a_lightgrey.jpg', 'gasoline', 32850, 'light grey'),
(15, 'mercedes', 'class c', 'img/mercedes_c_blue.jpg', 'diesel', 40500, 'blue'),
(16, 'mercedes', 'class cla', 'img/mercedes_cla_brown.jpg', 'gasoline', 29900, 'brown'),
(17, 'mercedes', 'class e', 'img/mercedes_e_white.jpg', 'diesel', 52350, 'white'),
(18, 'mercedes', 'class gla', 'img/mercedes_gla_black.jpg', 'diesel', 29700, 'black'),
(19, 'porsche', 'boxster', 'img/porsche_boxster_black.jpg', 'gasoline', 67350, 'black'),
(20, 'porsche', 'carrera', 'img/porsche_carrera_lightgrey.jpg', 'gasoline', 100295, 'light grey'),
(21, 'porsche', 'cayenne', 'img/porsche_cayenne_white.jpg', 'diesel', 77185, 'white'),
(22, 'porsche', 'cayman', 'img/porsche_cayman_black.jpg', 'gasoline', 42550, 'black'),
(23, 'porsche', 'macan', 'img/porsche_macan_white.jpg', 'diesel', 66850, 'white'),
(24, 'porsche', 'panamera', 'img/porsche_panamera_blue.jpg', 'gasoline', 118000, 'blue'),
(25, 'volkswagen', 'amarok', 'img/vw_amarok_brown.jpg', 'diesel', 35520, 'brown'),
(26, 'volkswagen', 'golf', 'img/vw_golf_black.jpg', 'gasoline', 41830, 'black'),
(27, 'volkswagen', 'passat', 'img/vw_passat_black.jpg', 'gasoline', 45040, 'black'),
(28, 'volkswagen', 'polo', 'img/vw_polo_lightgrey.jpg', 'diesel', 14810, 'light grey'),
(29, 'volkswagen', 'tiguan', 'img/vw_tiguan_lightgrey.jpg', 'diesel', 42560, 'light grey'),
(30, 'volkswagen', 'touareg', 'img/vw_touareg_grey.jpg', 'diesel', 69430, 'grey');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` int(6) NOT NULL AUTO_INCREMENT,
  `client_username` varchar(55) NOT NULL,
  `client_password` varchar(55) NOT NULL,
  `client_firstname` varchar(55) NOT NULL,
  `client_lastname` varchar(55) NOT NULL,
  `client_mail` varchar(55) NOT NULL,
  `client_country` varchar(55) NOT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `client_username` (`client_username`),
  UNIQUE KEY `client_mail` (`client_mail`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`client_id`, `client_username`, `client_password`, `client_firstname`, `client_lastname`, `client_mail`, `client_country`) VALUES
(1, 'username1', 'password1', 'first name1', 'last name1', 'mail1@gmail.com', 'France'),
(2, 'username2', 'password2', 'first name2', 'last name2', 'mail2@gmail.com', 'Spain'),
(3, 'username3', 'password3', 'first name3', 'last name3', 'mail3@gmail.com', 'Tunisia'),
(4, 'username4', 'password4', 'first name4', 'last name4', 'mail4@gmail.com', 'France'),
(5, 'username5', 'password5', 'first name5', 'last name5', 'mail5@gmail.com', 'France');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
