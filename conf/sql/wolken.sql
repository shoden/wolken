SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `capturas` (
  `dia` date NOT NULL,
  `hora` time NOT NULL,
  `toma` tinyint(2) unsigned NOT NULL,
  `agudeza` tinyint(1) unsigned NOT NULL,
  `brillo` tinyint(2) NOT NULL,
  `contraste` tinyint(2) unsigned NOT NULL,
  `exposicion` smallint(4) unsigned NOT NULL,
  `gamma` smallint(3) unsigned NOT NULL,
  `ganancia` tinyint(3) unsigned NOT NULL,
  `saturacion` tinyint(3) unsigned NOT NULL,
  `tonalidad` tinyint(2) NOT NULL,
  PRIMARY KEY (`dia`,`hora`,`toma`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `parametros` (
  `id` varchar(50) NOT NULL,
  `en` varchar(50) NOT NULL,
  `es` varchar(50) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `parametros` (`id`, `en`, `es`, `min`, `max`) VALUES
('agudeza', 'Sharpness', 'Agudeza', 0, 4),
('brillo', 'Brightness', 'Brillo', -64, 64),
('contraste', 'Contrast', 'Contraste', 0, 64),
('exposicion', 'Exposure (Absolute)', 'Exposición', 1, 5000),
('gamma', 'Gamma', 'Gamma', 72, 500),
('ganancia', 'Gain', 'Ganancia', 0, 100),
('saturacion', 'Saturation', 'Saturación', 0, 128),
('tonalidad', 'Hue', 'Tonalidad', -40, 40);

CREATE TABLE IF NOT EXISTS `roi` (
  `habilitado` tinyint(1) NOT NULL,
  `x1` smallint(5) unsigned NOT NULL,
  `x2` smallint(5) unsigned NOT NULL,
  `y1` smallint(5) unsigned NOT NULL,
  `y2` smallint(5) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `roi` (`habilitado`, `x1`, `x2`, `y1`, `y2`) VALUES
(0, 163, 563, 156, 305);

CREATE TABLE IF NOT EXISTS `tomas` (
  `id` tinyint(3) unsigned NOT NULL,
  `habilitado` tinyint(1) DEFAULT '1',
  `agudeza` varchar(50) DEFAULT '0',
  `brillo` varchar(50) DEFAULT '0',
  `contraste` varchar(50) DEFAULT '0',
  `exposicion` varchar(50) DEFAULT '0',
  `gamma` varchar(50) DEFAULT '0',
  `ganancia` varchar(50) DEFAULT '0',
  `saturacion` varchar(50) DEFAULT '0',
  `tonalidad` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tomas` (`id`, `habilitado`, `agudeza`, `brillo`, `contraste`, `exposicion`, `gamma`, `ganancia`, `saturacion`, `tonalidad`) VALUES
(1, 1, '2', '0', '32', '14', '100', '0', '54', '0'),
(2, 1, '2', '0', '32', '150', '100', '0', '54', '0'),
(3, 1, '2', '0', '32', '160', '100', '0', '54', '0'),
(4, 1, '2', '0', '32', '170', '100', '0', '54', '0'),
(5, 1, '2', '0', '32', '180', '100', '0', '54', '0'),
(6, 1, '2', '0', '32', '190', '100', '0', '54', '0'),
(7, 1, '2', '0', '32', '200', '100', '0', '54', '0'),
(8, 1, '2', '0', '32', '220', '100', '0', '54', '0'),
(9, 1, '2', '0', '32', '240', '100', '0', '54', '0'),
(10, 1, '2', '0', '32', '260', '100', '0', '54', '0');

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(200) NOT NULL,
  `cookie_pass` varchar(32) NOT NULL,
  `actcode` varchar(32) NOT NULL,
  `rank` varchar(3) NOT NULL,
  `lastactive` datetime NOT NULL,
  `lastlogin` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `usuarios` (`id`, `username`, `password`, `email`, `cookie_pass`, `actcode`, `rank`, `lastactive`, `lastlogin`) VALUES
(1, 'wolken', 'b1974a613f9d3a189fe36fc914e14497', '', '952b6f35a08a8f38a613f8794317693c', '', '', '2011-07-06 09:19:27', '2011-07-06 09:19:27');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
