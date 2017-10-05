-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2017 at 07:32 PM
-- Server version: 5.6.30
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universaldict`
--

-- --------------------------------------------------------

--
-- Table structure for table `UniversalDict`
--

CREATE TABLE IF NOT EXISTS `UniversalDict` (
  `id` mediumint(8) unsigned NOT NULL,
  `word` varchar(255) DEFAULT NULL,
  `meanings` text,
  `lang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UniversalDict`
--

INSERT INTO `UniversalDict` (`id`, `word`, `meanings`, `lang`) VALUES
(1, 'elementum,', 'Aenean gravida nunc', 'En-vn'),
(2, 'Quisque', 'Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh.', 'En-vn'),
(3, 'non', 'sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh.', 'En-en'),
(4, 'faucibus.', 'mi enim, condimentum eget,', 'En-en'),
(5, 'et', 'Mauris vestibulum, neque', 'En-vn'),
(6, 'blandit', 'Aenean massa. Integer', 'En-en'),
(7, 'non', 'sit amet, risus. Donec', 'En-vn'),
(8, 'malesuada', 'nec, cursus a, enim. Suspendisse aliquet, sem ut', 'En-en'),
(9, 'sagittis.', 'euismod enim. Etiam gravida molestie', 'En-en'),
(10, 'dui', 'elit elit fermentum risus, at', 'En-en'),
(11, 'egestas', 'lectus justo eu arcu. Morbi sit amet massa. Quisque', 'En-vn'),
(12, 'sem,', 'cursus et, magna. Praesent interdum ligula eu enim. Etiam', 'En-en'),
(13, 'gravida', 'Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis', 'En-vn'),
(14, 'suscipit', 'turpis nec mauris blandit mattis. Cras eget', 'En-en'),
(15, 'penatibus', 'risus a ultricies adipiscing, enim mi tempor lorem,', 'En-vn'),
(16, 'euismod', 'tincidunt. Donec vitae erat vel pede', 'En-en'),
(17, 'adipiscing', 'ultricies dignissim lacus. Aliquam rutrum lorem ac risus.', 'En-en'),
(18, 'Etiam', 'non massa non ante bibendum', 'En-en'),
(19, 'nibh.', 'Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in', 'En-vn'),
(20, 'libero', 'amet risus. Donec egestas. Aliquam nec enim.', 'En-en'),
(21, 'Aenean', 'eget metus eu erat semper', 'En-vn'),
(22, 'eu', 'amet ornare lectus', 'En-en'),
(23, 'lectus.', 'dis parturient montes, nascetur ridiculus mus. Aenean', 'En-vn'),
(24, 'at', 'magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim', 'En-vn'),
(25, 'Phasellus', 'primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 'En-vn'),
(26, 'sodales', 'sed, hendrerit a, arcu. Sed et libero.', 'En-en'),
(27, 'magna.', 'auctor, nunc nulla vulputate dui, nec tempus mauris erat', 'En-vn'),
(28, 'Nullam', 'quis massa. Mauris vestibulum, neque sed dictum eleifend,', 'En-en'),
(29, 'metus', 'pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit', 'En-vn'),
(30, 'a', 'imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque', 'En-vn'),
(31, 'ullamcorper.', 'vel pede blandit congue. In scelerisque scelerisque', 'En-vn'),
(32, 'eleifend', 'et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae', 'En-en'),
(33, 'Cras', 'nisi magna sed dui. Fusce aliquam, enim nec', 'En-vn'),
(34, 'ipsum.', 'a, scelerisque sed, sapien. Nunc pulvinar arcu', 'En-vn'),
(35, 'ipsum', 'erat. Sed nunc est, mollis non, cursus non, egestas a,', 'En-vn'),
(36, 'amet,', 'ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo', 'En-en'),
(37, 'Cras', 'est, mollis non, cursus non, egestas', 'En-vn'),
(38, 'a,', 'pellentesque, tellus sem mollis dui,', 'En-en'),
(39, 'ligula', 'dolor sit amet, consectetuer adipiscing elit. Etiam', 'En-vn'),
(40, 'In', 'Maecenas iaculis aliquet diam. Sed diam lorem,', 'En-vn'),
(41, 'egestas.', 'ut dolor dapibus gravida. Aliquam tincidunt, nunc', 'En-vn'),
(42, 'luctus,', 'sagittis. Nullam vitae diam. Proin dolor. Nulla', 'En-en'),
(43, 'eleifend', 'neque. Sed eget lacus. Mauris non dui nec urna suscipit', 'En-en'),
(44, 'semper', 'hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida', 'En-en'),
(45, 'euismod', 'In mi pede, nonummy ut, molestie in, tempus eu, ligula.', 'En-vn'),
(46, 'penatibus', 'id risus quis diam luctus lobortis.', 'En-en'),
(47, 'eleifend', 'lectus justo eu arcu. Morbi sit amet', 'En-en'),
(48, 'enim', 'magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna.', 'En-en'),
(49, 'odio', 'ligula eu enim. Etiam imperdiet dictum magna.', 'En-en'),
(50, 'Sed', 'dolor. Nulla semper tellus id nunc interdum', 'En-en'),
(51, 'sit', 'Morbi vehicula. Pellentesque tincidunt tempus risus.', 'En-en'),
(52, 'Quisque', 'quam. Curabitur vel lectus. Cum sociis natoque', 'En-vn'),
(53, 'magna.', 'arcu. Sed eu nibh vulputate mauris', 'En-vn'),
(54, 'dui', 'enim, gravida sit', 'En-en'),
(55, 'non', 'vehicula aliquet libero. Integer', 'En-vn'),
(56, 'dictum.', 'neque. Nullam ut nisi a', 'En-en'),
(57, 'risus.', 'nunc. Quisque ornare tortor at risus. Nunc ac sem ut', 'En-en'),
(58, 'laoreet', 'consectetuer rhoncus. Nullam velit dui,', 'En-vn'),
(59, 'arcu.', 'risus. Quisque libero', 'En-en'),
(60, 'dapibus', 'Aliquam nisl. Nulla eu neque', 'En-en'),
(61, 'ac,', 'mus. Proin vel arcu eu odio tristique pharetra. Quisque', 'En-en'),
(62, 'sapien.', 'a mi fringilla mi lacinia', 'En-vn'),
(63, 'venenatis', 'pede. Cum sociis natoque penatibus et magnis dis parturient', 'En-vn'),
(64, 'Aliquam', 'massa. Suspendisse eleifend. Cras sed leo. Cras vehicula', 'En-vn'),
(65, 'mauris.', 'eu, accumsan sed, facilisis vitae,', 'En-en'),
(66, 'fames', 'molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est,', 'En-en'),
(67, 'aliquam', 'neque non quam. Pellentesque habitant morbi tristique senectus et netus', 'En-en'),
(68, 'dui', 'ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus', 'En-en'),
(69, 'adipiscing', 'Duis ac arcu. Nunc mauris.', 'En-vn'),
(70, 'Integer', 'a, enim. Suspendisse aliquet, sem ut', 'En-vn'),
(71, 'elementum', 'enim. Sed nulla ante, iaculis nec, eleifend non, dapibus', 'En-en'),
(72, 'vestibulum,', 'interdum. Sed auctor odio a purus. Duis elementum, dui', 'En-vn'),
(73, 'ullamcorper,', 'ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius', 'En-en'),
(74, 'orci,', 'mauris, rhoncus id, mollis nec, cursus', 'En-vn'),
(75, 'eros', 'malesuada augue ut lacus.', 'En-vn'),
(76, 'vel', 'enim mi tempor lorem, eget mollis lectus pede et risus.', 'En-en'),
(77, 'purus.', 'sed pede. Cum sociis natoque penatibus et magnis dis parturient', 'En-vn'),
(78, 'a', 'lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed', 'En-en'),
(79, 'nec,', 'venenatis lacus. Etiam', 'En-en'),
(80, 'massa', 'aliquam eu, accumsan sed, facilisis vitae, orci.', 'En-vn'),
(81, 'sed', 'et, commodo at, libero. Morbi', 'En-vn'),
(82, 'nec', 'penatibus et magnis dis', 'En-vn'),
(83, 'euismod', 'justo eu arcu.', 'En-en'),
(84, 'facilisis,', 'lorem. Donec elementum, lorem ut aliquam', 'En-en'),
(85, 'ut', 'Duis a mi fringilla mi lacinia mattis. Integer', 'En-vn'),
(86, 'consectetuer,', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', 'En-en'),
(87, 'quam', 'mauris. Integer sem elit, pharetra ut, pharetra sed,', 'En-en'),
(88, 'sociis', 'ornare sagittis felis. Donec tempor, est ac', 'En-vn'),
(89, 'magna,', 'felis. Donec tempor, est ac mattis semper, dui lectus rutrum', 'En-vn'),
(90, 'lectus', 'non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit', 'En-en'),
(91, 'tristique', 'litora torquent per conubia nostra, per inceptos hymenaeos.', 'En-en'),
(92, 'Morbi', 'auctor ullamcorper, nisl arcu', 'En-en'),
(93, 'nascetur', 'Morbi quis urna. Nunc quis arcu vel quam dignissim', 'En-en'),
(94, 'ante.', 'Curabitur consequat, lectus sit amet luctus', 'En-vn'),
(95, 'arcu', 'turpis egestas. Aliquam fringilla', 'En-vn'),
(96, 'arcu.', 'Pellentesque habitant morbi tristique senectus et netus', 'En-vn'),
(97, 'eu,', 'at auctor ullamcorper, nisl arcu iaculis enim,', 'En-en'),
(98, 'eu,', 'amet nulla. Donec non justo. Proin non massa non', 'En-en'),
(99, 'mauris', 'vulputate, posuere vulputate, lacus. Cras', 'En-vn'),
(100, 'eget,', 'Ut nec urna et arcu imperdiet ullamcorper. Duis', 'En-vn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `UniversalDict`
--
ALTER TABLE `UniversalDict`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `UniversalDict`
--
ALTER TABLE `UniversalDict`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
