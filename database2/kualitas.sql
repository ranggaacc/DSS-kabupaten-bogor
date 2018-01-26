-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2017 at 02:54 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mppl`
--

-- --------------------------------------------------------

--
-- Table structure for table `kualitas`
--

CREATE TABLE `kualitas` (
  `id` int(11) NOT NULL,
  `id_staff` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `produktifitas` int(11) NOT NULL,
  `inisiatif` int(11) NOT NULL,
  `ketelitian` int(11) NOT NULL,
  `efisiensi` int(11) NOT NULL,
  `kerjasama` int(11) NOT NULL,
  `tanggung_jawab` int(11) NOT NULL,
  `kedisiplinan` int(11) NOT NULL,
  `kehadiran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kualitas`
--

INSERT INTO `kualitas` (`id`, `id_staff`, `tahun`, `produktifitas`, `inisiatif`, `ketelitian`, `efisiensi`, `kerjasama`, `tanggung_jawab`, `kedisiplinan`, `kehadiran`) VALUES
(101, 1, 2013, 6, 7, 8, 8, 7, 7, 9, 4),
(102, 1, 2014, 6, 7, 7, 4, 8, 7, 9, 7),
(103, 1, 2015, 7, 9, 9, 6, 5, 5, 9, 4),
(104, 1, 2016, 8, 8, 4, 9, 8, 6, 8, 6),
(105, 1, 2017, 4, 6, 5, 7, 8, 9, 7, 8),
(106, 2, 2013, 9, 5, 6, 8, 9, 4, 5, 6),
(107, 2, 2014, 4, 7, 6, 4, 6, 8, 7, 9),
(108, 2, 2015, 5, 5, 4, 7, 5, 4, 9, 9),
(109, 2, 2016, 9, 7, 5, 8, 4, 6, 9, 4),
(110, 2, 2017, 5, 8, 9, 8, 5, 8, 5, 8),
(111, 3, 2013, 4, 8, 9, 8, 7, 7, 9, 8),
(112, 3, 2014, 7, 4, 8, 5, 6, 8, 7, 8),
(113, 3, 2015, 7, 8, 9, 5, 7, 7, 9, 6),
(114, 3, 2016, 5, 8, 9, 5, 8, 5, 4, 5),
(115, 3, 2017, 9, 5, 6, 8, 9, 4, 4, 4),
(116, 4, 2013, 6, 7, 6, 6, 7, 8, 8, 4),
(117, 4, 2014, 7, 5, 7, 8, 5, 9, 7, 4),
(118, 4, 2015, 5, 7, 8, 4, 7, 8, 5, 4),
(119, 4, 2016, 5, 4, 8, 5, 6, 5, 7, 9),
(120, 4, 2017, 5, 4, 9, 5, 9, 4, 7, 5),
(121, 5, 2013, 7, 6, 8, 5, 6, 6, 7, 5),
(122, 5, 2014, 5, 4, 5, 5, 7, 9, 8, 9),
(123, 5, 2015, 9, 5, 4, 4, 6, 7, 9, 4),
(124, 5, 2016, 4, 8, 4, 6, 4, 5, 7, 6),
(125, 5, 2017, 7, 8, 9, 8, 8, 5, 9, 6),
(126, 6, 2013, 9, 8, 7, 9, 5, 8, 7, 7),
(127, 6, 2014, 8, 7, 7, 5, 9, 9, 7, 5),
(128, 6, 2015, 6, 9, 6, 9, 9, 9, 4, 6),
(129, 6, 2016, 9, 4, 8, 6, 6, 9, 5, 6),
(130, 6, 2017, 9, 5, 7, 7, 8, 5, 7, 9),
(131, 7, 2013, 9, 9, 8, 4, 5, 6, 8, 4),
(132, 7, 2014, 9, 7, 5, 8, 9, 9, 6, 9),
(133, 7, 2015, 4, 5, 9, 8, 4, 4, 8, 9),
(134, 7, 2016, 5, 6, 7, 6, 8, 4, 6, 8),
(135, 7, 2017, 8, 7, 7, 9, 7, 7, 9, 7),
(136, 8, 2013, 5, 6, 9, 7, 8, 4, 9, 9),
(137, 8, 2014, 5, 4, 4, 7, 4, 7, 9, 9),
(138, 8, 2015, 5, 8, 9, 7, 7, 5, 9, 9),
(139, 8, 2016, 9, 5, 6, 4, 4, 9, 9, 5),
(140, 8, 2017, 8, 4, 4, 9, 5, 8, 6, 8),
(141, 9, 2013, 5, 9, 5, 9, 7, 4, 8, 8),
(142, 9, 2014, 6, 6, 4, 4, 4, 4, 8, 4),
(143, 9, 2015, 5, 8, 8, 4, 5, 7, 8, 7),
(144, 9, 2016, 8, 9, 5, 7, 6, 9, 5, 6),
(145, 9, 2017, 5, 4, 6, 5, 6, 5, 7, 9),
(146, 10, 2013, 8, 6, 7, 7, 9, 4, 7, 5),
(147, 10, 2014, 8, 6, 8, 4, 9, 9, 8, 7),
(148, 10, 2015, 5, 4, 7, 6, 4, 9, 4, 9),
(149, 10, 2016, 9, 5, 7, 7, 4, 8, 8, 4),
(150, 10, 2017, 6, 8, 9, 4, 5, 6, 4, 5),
(151, 11, 2013, 7, 5, 4, 9, 6, 7, 4, 7),
(152, 11, 2014, 8, 4, 6, 5, 7, 8, 9, 9),
(153, 11, 2015, 4, 4, 4, 7, 4, 8, 8, 6),
(154, 11, 2016, 7, 4, 6, 5, 6, 8, 6, 5),
(155, 11, 2017, 6, 5, 7, 7, 7, 7, 4, 5),
(156, 12, 2013, 9, 5, 6, 9, 7, 6, 8, 6),
(157, 12, 2014, 9, 7, 4, 8, 8, 8, 7, 5),
(158, 12, 2015, 7, 5, 4, 4, 8, 7, 6, 5),
(159, 12, 2016, 8, 9, 4, 8, 4, 5, 7, 8),
(160, 12, 2017, 5, 5, 9, 8, 6, 9, 4, 7),
(161, 13, 2013, 8, 4, 6, 5, 7, 9, 7, 7),
(162, 13, 2014, 6, 4, 7, 7, 5, 9, 6, 6),
(163, 13, 2015, 4, 8, 7, 5, 5, 6, 9, 8),
(164, 13, 2016, 4, 4, 7, 7, 5, 5, 6, 8),
(165, 13, 2017, 9, 8, 5, 6, 8, 5, 7, 8),
(166, 14, 2013, 5, 4, 7, 7, 5, 6, 7, 8),
(167, 14, 2014, 4, 9, 8, 4, 6, 6, 9, 4),
(168, 14, 2015, 8, 4, 9, 4, 4, 5, 6, 7),
(169, 14, 2016, 4, 5, 4, 9, 8, 6, 7, 8),
(170, 14, 2017, 5, 9, 8, 8, 8, 9, 9, 4),
(171, 15, 2013, 6, 6, 4, 9, 6, 4, 8, 8),
(172, 15, 2014, 9, 7, 7, 8, 6, 6, 8, 7),
(173, 15, 2015, 7, 8, 9, 7, 4, 9, 6, 7),
(174, 15, 2016, 7, 7, 4, 9, 9, 8, 9, 4),
(175, 15, 2017, 6, 5, 6, 7, 6, 5, 6, 7),
(176, 16, 2013, 5, 6, 7, 4, 8, 9, 6, 8),
(177, 16, 2014, 9, 9, 6, 4, 9, 5, 5, 5),
(178, 16, 2015, 9, 6, 4, 4, 6, 5, 6, 4),
(179, 16, 2016, 8, 5, 9, 7, 7, 8, 8, 4),
(180, 16, 2017, 8, 7, 4, 7, 8, 6, 9, 4),
(181, 17, 2013, 4, 4, 5, 6, 9, 8, 6, 4),
(182, 17, 2014, 6, 5, 6, 5, 8, 7, 8, 5),
(183, 17, 2015, 7, 5, 6, 9, 5, 6, 8, 6),
(184, 17, 2016, 9, 8, 9, 5, 8, 5, 7, 8),
(185, 17, 2017, 8, 5, 8, 4, 7, 5, 8, 8),
(186, 18, 2013, 6, 9, 9, 9, 7, 5, 8, 6),
(187, 18, 2014, 7, 5, 9, 4, 8, 7, 4, 7),
(188, 18, 2015, 7, 5, 5, 4, 8, 5, 4, 6),
(189, 18, 2016, 9, 5, 8, 8, 6, 9, 6, 8),
(190, 18, 2017, 8, 5, 6, 7, 9, 8, 9, 5),
(191, 19, 2013, 8, 8, 5, 6, 5, 8, 7, 6),
(192, 19, 2014, 6, 7, 4, 6, 5, 6, 4, 5),
(193, 19, 2015, 7, 7, 4, 4, 7, 4, 8, 7),
(194, 19, 2016, 4, 5, 5, 9, 5, 5, 4, 5),
(195, 19, 2017, 8, 6, 4, 8, 5, 4, 6, 6),
(196, 20, 2013, 9, 8, 8, 9, 6, 5, 8, 4),
(197, 20, 2014, 6, 7, 5, 4, 7, 8, 6, 4),
(198, 20, 2015, 7, 8, 8, 9, 4, 9, 5, 7),
(199, 20, 2016, 6, 7, 7, 4, 5, 8, 9, 6),
(200, 20, 2017, 6, 7, 7, 6, 9, 9, 7, 7),
(201, 21, 2013, 4, 4, 5, 9, 8, 7, 7, 7),
(202, 21, 2014, 5, 9, 4, 5, 9, 7, 4, 5),
(203, 21, 2015, 8, 4, 9, 9, 7, 9, 5, 5),
(204, 21, 2016, 4, 7, 6, 5, 9, 4, 8, 7),
(205, 21, 2017, 4, 5, 5, 7, 6, 8, 9, 7),
(206, 22, 2013, 4, 6, 4, 4, 6, 7, 6, 6),
(207, 22, 2014, 4, 8, 9, 7, 4, 7, 4, 4),
(208, 22, 2015, 4, 8, 8, 4, 5, 5, 9, 6),
(209, 22, 2016, 4, 7, 6, 5, 4, 6, 9, 5),
(210, 22, 2017, 4, 5, 9, 8, 4, 8, 4, 6),
(211, 23, 2013, 9, 6, 5, 8, 9, 9, 4, 9),
(212, 23, 2014, 6, 4, 9, 6, 8, 8, 4, 6),
(213, 23, 2015, 8, 8, 5, 4, 7, 4, 5, 6),
(214, 23, 2016, 8, 8, 6, 4, 9, 8, 6, 6),
(215, 23, 2017, 8, 7, 4, 6, 7, 4, 4, 7),
(216, 24, 2013, 6, 8, 7, 4, 4, 4, 4, 4),
(217, 24, 2014, 5, 8, 7, 5, 4, 5, 7, 6),
(218, 24, 2015, 9, 4, 9, 6, 8, 5, 7, 4),
(219, 24, 2016, 5, 7, 6, 4, 9, 8, 6, 9),
(220, 24, 2017, 8, 8, 9, 7, 8, 8, 7, 6),
(221, 25, 2013, 9, 9, 5, 7, 8, 4, 7, 7),
(222, 25, 2014, 7, 5, 7, 5, 7, 4, 5, 8),
(223, 25, 2015, 4, 9, 6, 7, 7, 6, 7, 8),
(224, 25, 2016, 5, 6, 6, 6, 8, 5, 4, 8),
(225, 25, 2017, 5, 7, 5, 6, 4, 5, 8, 6),
(226, 26, 2013, 9, 6, 4, 8, 7, 9, 4, 4),
(227, 26, 2014, 5, 9, 8, 4, 5, 9, 5, 9),
(228, 26, 2015, 5, 9, 8, 4, 9, 9, 9, 6),
(229, 26, 2016, 9, 8, 7, 9, 6, 5, 5, 8),
(230, 26, 2017, 6, 8, 4, 9, 4, 7, 9, 6),
(231, 27, 2013, 8, 5, 4, 8, 8, 6, 9, 5),
(232, 27, 2014, 7, 8, 9, 8, 8, 9, 4, 9),
(233, 27, 2015, 8, 8, 6, 4, 4, 9, 6, 9),
(234, 27, 2016, 4, 9, 6, 5, 8, 8, 5, 4),
(235, 27, 2017, 4, 8, 6, 9, 9, 8, 8, 7),
(236, 28, 2013, 9, 8, 7, 5, 7, 7, 7, 4),
(237, 28, 2014, 7, 9, 5, 6, 5, 7, 8, 4),
(238, 28, 2015, 8, 6, 9, 7, 8, 5, 9, 8),
(239, 28, 2016, 6, 4, 8, 4, 8, 9, 4, 7),
(240, 28, 2017, 9, 4, 5, 5, 5, 8, 4, 7),
(241, 29, 2013, 8, 5, 5, 9, 8, 6, 9, 7),
(242, 29, 2014, 8, 8, 7, 8, 8, 7, 9, 9),
(243, 29, 2015, 8, 4, 8, 4, 6, 4, 6, 7),
(244, 29, 2016, 6, 8, 8, 9, 4, 4, 9, 7),
(245, 29, 2017, 5, 6, 4, 7, 5, 5, 8, 4),
(246, 30, 2013, 9, 7, 8, 8, 5, 7, 9, 9),
(247, 30, 2014, 8, 5, 8, 9, 6, 6, 5, 6),
(248, 30, 2015, 5, 9, 5, 6, 5, 7, 5, 4),
(249, 30, 2016, 5, 9, 8, 8, 9, 5, 8, 8),
(250, 30, 2017, 8, 9, 8, 5, 8, 5, 4, 7),
(251, 31, 2013, 4, 6, 8, 9, 8, 8, 6, 5),
(252, 31, 2014, 6, 9, 6, 4, 5, 7, 4, 8),
(253, 31, 2015, 9, 5, 6, 9, 4, 4, 5, 6),
(254, 31, 2016, 5, 6, 4, 5, 4, 9, 5, 6),
(255, 31, 2017, 9, 4, 9, 6, 4, 9, 9, 5),
(256, 32, 2013, 4, 5, 6, 4, 7, 5, 7, 9),
(257, 32, 2014, 4, 4, 7, 5, 4, 4, 9, 5),
(258, 32, 2015, 7, 6, 4, 6, 8, 4, 5, 4),
(259, 32, 2016, 7, 5, 5, 7, 4, 4, 5, 6),
(260, 32, 2017, 6, 6, 6, 5, 9, 5, 7, 9),
(261, 33, 2013, 8, 5, 8, 9, 4, 6, 6, 5),
(262, 33, 2014, 9, 6, 9, 7, 5, 6, 9, 6),
(263, 33, 2015, 9, 9, 7, 5, 4, 5, 4, 9),
(264, 33, 2016, 7, 9, 6, 8, 8, 7, 6, 9),
(265, 33, 2017, 4, 6, 9, 7, 4, 9, 5, 6),
(266, 34, 2013, 6, 6, 5, 8, 7, 5, 8, 5),
(267, 34, 2014, 9, 4, 4, 6, 5, 4, 4, 7),
(268, 34, 2015, 7, 6, 8, 9, 6, 7, 7, 4),
(269, 34, 2016, 9, 5, 4, 7, 4, 5, 4, 4),
(270, 34, 2017, 4, 4, 8, 9, 6, 7, 9, 5),
(271, 35, 2013, 9, 6, 4, 8, 5, 4, 4, 4),
(272, 35, 2014, 7, 9, 5, 6, 6, 8, 4, 8),
(273, 35, 2015, 9, 4, 4, 8, 8, 6, 9, 9),
(274, 35, 2016, 9, 4, 9, 8, 4, 6, 7, 5),
(275, 35, 2017, 7, 7, 5, 9, 7, 5, 9, 7),
(276, 36, 2013, 8, 5, 6, 4, 4, 4, 6, 7),
(277, 36, 2014, 9, 4, 5, 5, 5, 6, 6, 9),
(278, 36, 2015, 7, 8, 5, 4, 6, 4, 6, 9),
(279, 36, 2016, 4, 6, 7, 8, 6, 9, 7, 9),
(280, 36, 2017, 9, 9, 6, 5, 8, 8, 7, 4),
(281, 37, 2013, 6, 5, 9, 7, 7, 6, 9, 8),
(282, 37, 2014, 8, 4, 8, 5, 6, 4, 7, 5),
(283, 37, 2015, 7, 8, 5, 6, 4, 7, 4, 9),
(284, 37, 2016, 6, 5, 7, 9, 7, 7, 7, 5),
(285, 37, 2017, 8, 9, 5, 4, 8, 7, 5, 6),
(286, 38, 2013, 5, 6, 6, 6, 5, 8, 6, 8),
(287, 38, 2014, 5, 5, 7, 9, 7, 8, 7, 8),
(288, 38, 2015, 5, 8, 8, 4, 8, 6, 9, 5),
(289, 38, 2016, 7, 9, 4, 8, 8, 7, 8, 4),
(290, 38, 2017, 5, 9, 4, 5, 4, 5, 9, 5),
(291, 39, 2013, 5, 9, 6, 4, 8, 6, 8, 6),
(292, 39, 2014, 4, 4, 8, 6, 8, 7, 4, 9),
(293, 39, 2015, 6, 7, 4, 8, 6, 9, 6, 6),
(294, 39, 2016, 7, 5, 8, 4, 5, 5, 4, 9),
(295, 39, 2017, 8, 7, 7, 9, 9, 8, 7, 4),
(296, 40, 2013, 4, 4, 7, 5, 4, 9, 9, 5),
(297, 40, 2014, 6, 6, 5, 7, 7, 6, 4, 8),
(298, 40, 2015, 7, 6, 6, 6, 9, 9, 7, 6),
(299, 40, 2016, 6, 6, 7, 4, 9, 7, 5, 5),
(300, 40, 2017, 9, 6, 8, 7, 4, 6, 6, 4),
(301, 41, 2013, 6, 7, 6, 7, 4, 9, 7, 5),
(302, 41, 2014, 4, 9, 4, 4, 4, 8, 5, 7),
(303, 41, 2015, 6, 5, 4, 7, 5, 4, 6, 5),
(304, 41, 2016, 9, 6, 4, 5, 4, 7, 4, 4),
(305, 41, 2017, 7, 5, 5, 5, 4, 7, 9, 4),
(306, 42, 2013, 7, 6, 9, 5, 9, 8, 5, 6),
(307, 42, 2014, 8, 6, 7, 5, 7, 5, 7, 7),
(308, 42, 2015, 7, 7, 6, 8, 6, 4, 4, 4),
(309, 42, 2016, 6, 4, 7, 4, 6, 7, 9, 7),
(310, 42, 2017, 4, 5, 8, 9, 5, 6, 8, 6),
(311, 43, 2013, 8, 6, 8, 5, 8, 7, 9, 5),
(312, 43, 2014, 7, 4, 7, 9, 8, 4, 5, 6),
(313, 43, 2015, 4, 4, 8, 8, 4, 4, 4, 6),
(314, 43, 2016, 6, 9, 8, 6, 7, 9, 6, 4),
(315, 43, 2017, 5, 7, 8, 4, 7, 4, 7, 6),
(316, 44, 2013, 9, 7, 6, 5, 9, 7, 5, 5),
(317, 44, 2014, 5, 9, 8, 9, 5, 5, 8, 5),
(318, 44, 2015, 7, 7, 7, 8, 5, 9, 9, 4),
(319, 44, 2016, 4, 8, 6, 6, 9, 4, 9, 8),
(320, 44, 2017, 7, 6, 4, 8, 5, 7, 7, 6),
(321, 45, 2013, 4, 6, 8, 7, 4, 6, 8, 6),
(322, 45, 2014, 6, 7, 8, 5, 4, 5, 5, 5),
(323, 45, 2015, 5, 5, 8, 5, 8, 9, 9, 8),
(324, 45, 2016, 5, 7, 4, 4, 7, 9, 8, 6),
(325, 45, 2017, 6, 5, 7, 8, 9, 4, 4, 6),
(326, 46, 2013, 9, 7, 8, 4, 5, 7, 9, 9),
(327, 46, 2014, 6, 6, 9, 5, 4, 8, 5, 6),
(328, 46, 2015, 5, 6, 6, 8, 6, 7, 4, 5),
(329, 46, 2016, 8, 8, 7, 7, 4, 4, 5, 9),
(330, 46, 2017, 8, 9, 7, 7, 6, 4, 8, 7),
(331, 47, 2013, 7, 7, 5, 7, 9, 9, 7, 6),
(332, 47, 2014, 5, 5, 9, 5, 8, 5, 9, 5),
(333, 47, 2015, 9, 9, 4, 6, 7, 8, 5, 7),
(334, 47, 2016, 4, 4, 5, 5, 7, 5, 6, 4),
(335, 47, 2017, 8, 5, 6, 8, 6, 9, 7, 7),
(336, 48, 2013, 7, 5, 5, 7, 6, 7, 8, 7),
(337, 48, 2014, 5, 4, 6, 7, 7, 9, 9, 5),
(338, 48, 2015, 5, 7, 8, 6, 7, 7, 6, 9),
(339, 48, 2016, 7, 5, 4, 9, 4, 6, 8, 7),
(340, 48, 2017, 7, 7, 7, 4, 6, 8, 7, 9),
(341, 49, 2013, 7, 9, 5, 4, 8, 9, 7, 4),
(342, 49, 2014, 9, 7, 7, 7, 5, 4, 8, 7),
(343, 49, 2015, 7, 9, 4, 8, 8, 5, 4, 6),
(344, 49, 2016, 5, 8, 7, 4, 5, 7, 7, 6),
(345, 49, 2017, 8, 9, 8, 5, 7, 4, 8, 6),
(346, 50, 2013, 8, 9, 5, 6, 6, 9, 4, 8),
(347, 50, 2014, 7, 9, 4, 6, 9, 6, 8, 8),
(348, 50, 2015, 8, 6, 6, 6, 9, 6, 9, 7),
(349, 50, 2016, 5, 4, 5, 6, 7, 9, 5, 9),
(350, 50, 2017, 5, 5, 8, 7, 4, 4, 6, 9),
(351, 51, 2013, 7, 7, 4, 9, 7, 5, 4, 9),
(352, 51, 2014, 8, 6, 7, 5, 8, 5, 5, 8),
(353, 51, 2015, 4, 7, 5, 8, 6, 7, 8, 5),
(354, 51, 2016, 6, 7, 6, 4, 5, 6, 6, 6),
(355, 51, 2017, 5, 9, 4, 7, 8, 9, 5, 4),
(356, 52, 2013, 7, 6, 9, 5, 7, 5, 7, 8),
(357, 52, 2014, 7, 9, 7, 7, 4, 4, 8, 5),
(358, 52, 2015, 5, 7, 4, 5, 8, 9, 7, 5),
(359, 52, 2016, 6, 4, 9, 6, 9, 6, 7, 6),
(360, 52, 2017, 6, 4, 7, 4, 6, 4, 5, 9),
(361, 53, 2013, 8, 7, 9, 9, 4, 8, 8, 9),
(362, 53, 2014, 5, 6, 7, 9, 8, 4, 4, 4),
(363, 53, 2015, 5, 4, 5, 6, 6, 5, 8, 4),
(364, 53, 2016, 6, 8, 9, 4, 8, 4, 8, 5),
(365, 53, 2017, 5, 8, 6, 7, 6, 9, 8, 5),
(366, 54, 2013, 6, 9, 4, 9, 5, 6, 8, 8),
(367, 54, 2014, 4, 9, 8, 6, 9, 7, 6, 7),
(368, 54, 2015, 7, 4, 9, 9, 5, 4, 4, 6),
(369, 54, 2016, 5, 8, 4, 6, 9, 5, 9, 7),
(370, 54, 2017, 6, 6, 7, 8, 5, 4, 6, 5),
(371, 55, 2013, 8, 8, 9, 7, 8, 6, 9, 4),
(372, 55, 2014, 4, 8, 4, 6, 4, 7, 6, 6),
(373, 55, 2015, 5, 4, 7, 9, 7, 8, 9, 4),
(374, 55, 2016, 8, 4, 5, 9, 4, 9, 8, 9),
(375, 55, 2017, 5, 8, 6, 7, 7, 8, 6, 9),
(376, 56, 2013, 8, 7, 8, 9, 4, 7, 4, 6),
(377, 56, 2014, 4, 6, 4, 5, 7, 7, 7, 4),
(378, 56, 2015, 4, 4, 9, 7, 5, 9, 9, 7),
(379, 56, 2016, 6, 6, 6, 7, 6, 7, 8, 6),
(380, 56, 2017, 8, 6, 8, 6, 9, 6, 9, 9),
(381, 57, 2013, 7, 5, 8, 9, 8, 9, 4, 6),
(382, 57, 2014, 8, 5, 5, 9, 5, 4, 4, 7),
(383, 57, 2015, 6, 7, 5, 5, 9, 4, 5, 5),
(384, 57, 2016, 5, 4, 6, 9, 6, 6, 9, 4),
(385, 57, 2017, 5, 9, 8, 9, 9, 6, 7, 7),
(386, 58, 2013, 9, 9, 8, 4, 6, 6, 8, 9),
(387, 58, 2014, 7, 4, 9, 7, 4, 9, 6, 9),
(388, 58, 2015, 9, 6, 9, 6, 4, 4, 7, 4),
(389, 58, 2016, 6, 4, 9, 6, 5, 8, 7, 5),
(390, 58, 2017, 4, 6, 6, 6, 7, 4, 6, 7),
(391, 59, 2013, 7, 8, 7, 8, 6, 8, 4, 9),
(392, 59, 2014, 4, 8, 8, 8, 7, 5, 5, 4),
(393, 59, 2015, 4, 7, 8, 8, 8, 6, 7, 7),
(394, 59, 2016, 8, 7, 5, 4, 7, 9, 8, 5),
(395, 59, 2017, 9, 6, 5, 8, 9, 9, 8, 8),
(396, 60, 2013, 7, 4, 5, 4, 7, 6, 6, 5),
(397, 60, 2014, 8, 7, 4, 4, 6, 4, 6, 8),
(398, 60, 2015, 9, 8, 9, 6, 5, 4, 5, 6),
(399, 60, 2016, 7, 7, 8, 9, 9, 5, 9, 9),
(400, 60, 2017, 4, 4, 8, 9, 5, 5, 7, 5),
(401, 61, 2013, 8, 8, 9, 9, 7, 9, 6, 5),
(402, 61, 2014, 7, 6, 8, 8, 6, 8, 5, 7),
(403, 61, 2015, 6, 9, 7, 4, 9, 5, 9, 6),
(404, 61, 2016, 7, 6, 7, 4, 4, 6, 4, 5),
(405, 61, 2017, 5, 7, 7, 5, 4, 6, 8, 4),
(406, 62, 2013, 5, 4, 9, 5, 6, 5, 6, 7),
(407, 62, 2014, 7, 9, 8, 5, 5, 7, 6, 5),
(408, 62, 2015, 9, 7, 8, 5, 9, 5, 9, 7),
(409, 62, 2016, 5, 4, 9, 9, 8, 8, 4, 6),
(410, 62, 2017, 4, 4, 5, 8, 6, 7, 5, 6),
(411, 63, 2013, 8, 4, 9, 6, 5, 5, 4, 8),
(412, 63, 2014, 8, 6, 4, 5, 8, 6, 5, 5),
(413, 63, 2015, 6, 5, 4, 6, 7, 7, 4, 4),
(414, 63, 2016, 6, 5, 7, 9, 6, 8, 5, 5),
(415, 63, 2017, 6, 6, 9, 5, 5, 9, 8, 4),
(416, 64, 2013, 8, 6, 9, 9, 7, 7, 9, 7),
(417, 64, 2014, 7, 4, 8, 8, 4, 8, 8, 6),
(418, 64, 2015, 8, 8, 4, 9, 7, 4, 5, 6),
(419, 64, 2016, 8, 5, 5, 5, 7, 6, 6, 8),
(420, 64, 2017, 7, 4, 5, 8, 9, 9, 4, 9),
(421, 65, 2013, 4, 5, 5, 8, 6, 6, 8, 9),
(422, 65, 2014, 8, 7, 9, 4, 9, 9, 5, 4),
(423, 65, 2015, 6, 6, 7, 8, 7, 5, 5, 8),
(424, 65, 2016, 7, 8, 7, 9, 5, 9, 9, 8),
(425, 65, 2017, 4, 9, 9, 9, 4, 4, 5, 8),
(426, 66, 2013, 9, 8, 9, 6, 5, 7, 7, 4),
(427, 66, 2014, 4, 8, 6, 9, 6, 8, 7, 7),
(428, 66, 2015, 6, 6, 7, 9, 5, 8, 5, 7),
(429, 66, 2016, 4, 6, 7, 6, 9, 8, 9, 4),
(430, 66, 2017, 5, 6, 6, 9, 4, 6, 9, 7),
(431, 67, 2013, 4, 6, 5, 9, 9, 4, 7, 6),
(432, 67, 2014, 8, 5, 8, 9, 6, 8, 6, 9),
(433, 67, 2015, 6, 5, 6, 8, 4, 9, 8, 7),
(434, 67, 2016, 9, 7, 4, 5, 6, 9, 6, 4),
(435, 67, 2017, 8, 8, 5, 4, 6, 7, 4, 8),
(436, 68, 2013, 5, 5, 8, 5, 5, 4, 5, 9),
(437, 68, 2014, 4, 5, 7, 5, 6, 8, 5, 4),
(438, 68, 2015, 5, 6, 6, 6, 8, 4, 4, 9),
(439, 68, 2016, 5, 7, 9, 5, 9, 4, 9, 7),
(440, 68, 2017, 7, 8, 6, 4, 4, 7, 9, 7),
(441, 69, 2013, 7, 5, 9, 5, 8, 9, 7, 9),
(442, 69, 2014, 8, 6, 7, 5, 5, 6, 8, 5),
(443, 69, 2015, 4, 7, 7, 4, 4, 9, 5, 7),
(444, 69, 2016, 7, 6, 5, 6, 8, 5, 6, 5),
(445, 69, 2017, 8, 5, 9, 8, 7, 5, 6, 9),
(446, 70, 2013, 8, 4, 5, 7, 4, 7, 4, 9),
(447, 70, 2014, 8, 9, 4, 5, 6, 5, 8, 4),
(448, 70, 2015, 6, 9, 4, 6, 4, 8, 5, 5),
(449, 70, 2016, 5, 7, 4, 9, 4, 5, 5, 9),
(450, 70, 2017, 4, 5, 4, 5, 5, 4, 8, 7),
(451, 71, 2013, 7, 6, 7, 7, 4, 9, 6, 6),
(452, 71, 2014, 8, 5, 6, 4, 5, 5, 6, 8),
(453, 71, 2015, 8, 9, 7, 5, 7, 9, 8, 8),
(454, 71, 2016, 9, 9, 7, 9, 7, 5, 4, 7),
(455, 71, 2017, 5, 6, 7, 6, 5, 9, 4, 4),
(456, 72, 2013, 7, 6, 6, 5, 5, 9, 4, 6),
(457, 72, 2014, 8, 8, 5, 4, 4, 8, 8, 4),
(458, 72, 2015, 9, 9, 7, 9, 6, 8, 6, 9),
(459, 72, 2016, 5, 8, 5, 5, 8, 9, 4, 7),
(460, 72, 2017, 6, 6, 8, 7, 7, 4, 4, 9),
(461, 73, 2013, 5, 9, 8, 7, 8, 9, 4, 8),
(462, 73, 2014, 9, 9, 6, 6, 4, 6, 8, 6),
(463, 73, 2015, 7, 5, 6, 8, 4, 7, 7, 8),
(464, 73, 2016, 8, 5, 6, 8, 7, 9, 6, 9),
(465, 73, 2017, 8, 7, 7, 9, 9, 9, 9, 6),
(466, 74, 2013, 4, 6, 9, 7, 6, 9, 9, 5),
(467, 74, 2014, 5, 8, 7, 7, 5, 8, 6, 8),
(468, 74, 2015, 5, 5, 8, 7, 4, 6, 5, 4),
(469, 74, 2016, 9, 9, 8, 7, 5, 4, 6, 8),
(470, 74, 2017, 6, 9, 5, 9, 8, 9, 4, 7),
(471, 75, 2013, 8, 5, 6, 8, 6, 6, 5, 7),
(472, 75, 2014, 4, 7, 5, 4, 4, 7, 6, 4),
(473, 75, 2015, 6, 6, 6, 9, 9, 9, 8, 4),
(474, 75, 2016, 4, 9, 7, 5, 6, 5, 7, 7),
(475, 75, 2017, 7, 6, 9, 5, 7, 5, 5, 9),
(476, 76, 2013, 7, 6, 6, 6, 4, 7, 6, 6),
(477, 76, 2014, 9, 8, 5, 4, 5, 6, 4, 6),
(478, 76, 2015, 9, 6, 5, 4, 9, 9, 7, 9),
(479, 76, 2016, 8, 5, 8, 6, 5, 8, 5, 6),
(480, 76, 2017, 6, 7, 5, 7, 4, 5, 5, 4),
(481, 78, 2013, 5, 4, 7, 9, 4, 9, 9, 5),
(482, 78, 2014, 4, 4, 6, 9, 9, 7, 8, 8),
(483, 78, 2015, 9, 4, 5, 6, 7, 8, 8, 4),
(484, 78, 2016, 8, 5, 4, 6, 7, 9, 4, 5),
(485, 78, 2017, 7, 6, 7, 7, 4, 8, 7, 4),
(486, 79, 2013, 5, 8, 4, 8, 8, 4, 8, 4),
(487, 79, 2014, 4, 9, 9, 8, 8, 5, 6, 9),
(488, 79, 2015, 8, 6, 4, 9, 7, 8, 7, 8),
(489, 79, 2016, 6, 8, 6, 5, 6, 7, 9, 6),
(490, 79, 2017, 8, 6, 5, 8, 4, 5, 7, 9),
(491, 80, 2013, 4, 5, 6, 5, 7, 4, 9, 8),
(492, 80, 2014, 8, 9, 8, 7, 9, 9, 5, 5),
(493, 80, 2015, 9, 9, 5, 5, 8, 6, 4, 5),
(494, 80, 2016, 6, 7, 7, 8, 6, 5, 5, 7),
(495, 80, 2017, 7, 7, 8, 4, 5, 7, 9, 4),
(496, 81, 2013, 4, 4, 6, 8, 6, 7, 6, 8),
(497, 81, 2014, 5, 4, 9, 6, 8, 9, 5, 7),
(498, 81, 2015, 5, 6, 4, 7, 7, 4, 9, 9),
(499, 81, 2016, 6, 9, 6, 4, 6, 4, 9, 5),
(500, 81, 2017, 9, 8, 7, 7, 9, 7, 7, 9),
(501, 82, 2013, 6, 7, 4, 6, 6, 4, 9, 7),
(502, 82, 2014, 9, 7, 8, 5, 7, 6, 6, 5),
(503, 82, 2015, 6, 9, 5, 4, 4, 8, 4, 5),
(504, 82, 2016, 6, 7, 7, 5, 5, 4, 8, 5),
(505, 82, 2017, 9, 9, 4, 6, 5, 4, 9, 4),
(506, 83, 2013, 8, 4, 9, 8, 6, 5, 7, 4),
(507, 83, 2014, 7, 8, 9, 5, 7, 8, 6, 8),
(508, 83, 2015, 9, 5, 7, 9, 7, 4, 4, 9),
(509, 83, 2016, 7, 7, 7, 9, 5, 7, 5, 4),
(510, 83, 2017, 7, 9, 4, 7, 4, 8, 4, 7),
(511, 84, 2013, 4, 8, 4, 9, 7, 8, 8, 4),
(512, 84, 2014, 6, 9, 7, 6, 6, 6, 6, 5),
(513, 84, 2015, 9, 6, 9, 7, 8, 9, 9, 5),
(514, 84, 2016, 7, 6, 7, 6, 4, 6, 9, 6),
(515, 84, 2017, 9, 7, 6, 6, 8, 7, 9, 9),
(516, 85, 2013, 8, 9, 4, 8, 8, 7, 9, 8),
(517, 85, 2014, 5, 7, 8, 4, 7, 7, 4, 6),
(518, 85, 2015, 9, 4, 6, 5, 9, 9, 4, 6),
(519, 85, 2016, 5, 5, 7, 4, 5, 4, 5, 7),
(520, 85, 2017, 8, 7, 7, 6, 5, 6, 8, 6),
(521, 86, 2013, 6, 6, 6, 6, 9, 7, 7, 4),
(522, 86, 2014, 5, 9, 9, 8, 9, 6, 8, 4),
(523, 86, 2015, 7, 4, 8, 5, 8, 7, 6, 7),
(524, 86, 2016, 8, 4, 5, 8, 8, 6, 6, 5),
(525, 86, 2017, 7, 7, 9, 9, 6, 8, 9, 7),
(526, 87, 2013, 4, 7, 5, 6, 5, 8, 9, 9),
(527, 87, 2014, 4, 8, 5, 7, 5, 5, 5, 4),
(528, 87, 2015, 8, 5, 4, 8, 9, 9, 7, 4),
(529, 87, 2016, 8, 6, 6, 8, 7, 9, 8, 7),
(530, 87, 2017, 8, 4, 5, 6, 7, 6, 8, 6),
(531, 88, 2013, 4, 5, 8, 9, 7, 9, 5, 7),
(532, 88, 2014, 7, 7, 4, 8, 8, 7, 8, 8),
(533, 88, 2015, 9, 6, 8, 6, 4, 8, 7, 7),
(534, 88, 2016, 7, 4, 5, 8, 9, 4, 6, 5),
(535, 88, 2017, 9, 7, 8, 9, 8, 8, 5, 4),
(536, 89, 2013, 4, 6, 5, 5, 8, 4, 9, 7),
(537, 89, 2014, 4, 7, 7, 5, 5, 8, 9, 9),
(538, 89, 2015, 8, 5, 7, 4, 4, 4, 4, 4),
(539, 89, 2016, 4, 6, 7, 7, 5, 7, 8, 4),
(540, 89, 2017, 8, 8, 8, 9, 6, 5, 4, 5),
(541, 90, 2013, 5, 4, 5, 9, 9, 7, 8, 8),
(542, 90, 2014, 5, 9, 8, 4, 6, 7, 6, 4),
(543, 90, 2015, 6, 6, 4, 4, 8, 9, 6, 8),
(544, 90, 2016, 6, 8, 4, 5, 9, 9, 9, 4),
(545, 90, 2017, 5, 5, 6, 9, 6, 8, 9, 7),
(546, 91, 2013, 7, 7, 5, 6, 5, 4, 7, 9),
(547, 91, 2014, 9, 4, 7, 6, 5, 5, 6, 6),
(548, 91, 2015, 7, 9, 9, 5, 4, 7, 9, 4),
(549, 91, 2016, 5, 9, 9, 7, 7, 7, 6, 5),
(550, 91, 2017, 5, 9, 8, 8, 6, 6, 9, 8),
(551, 92, 2013, 4, 5, 4, 6, 9, 5, 4, 8),
(552, 92, 2014, 9, 6, 6, 6, 8, 4, 7, 5),
(553, 92, 2015, 7, 8, 7, 8, 4, 8, 6, 5),
(554, 92, 2016, 9, 5, 4, 6, 8, 5, 5, 7),
(555, 92, 2017, 5, 6, 7, 9, 6, 7, 4, 4),
(556, 93, 2013, 5, 4, 4, 4, 6, 4, 5, 4),
(557, 93, 2014, 5, 8, 9, 7, 4, 4, 5, 4),
(558, 93, 2015, 6, 5, 6, 5, 6, 5, 4, 7),
(559, 93, 2016, 8, 5, 6, 5, 6, 7, 9, 5),
(560, 93, 2017, 7, 4, 6, 9, 9, 7, 5, 8),
(561, 94, 2013, 6, 6, 7, 6, 7, 5, 7, 6),
(562, 94, 2014, 7, 6, 5, 9, 9, 7, 5, 9),
(563, 94, 2015, 7, 9, 8, 4, 8, 9, 8, 5),
(564, 94, 2016, 9, 5, 8, 6, 7, 7, 7, 8),
(565, 94, 2017, 4, 6, 4, 6, 9, 4, 5, 5),
(566, 95, 2013, 4, 5, 8, 8, 4, 7, 9, 8),
(567, 95, 2014, 8, 5, 4, 9, 6, 9, 4, 5),
(568, 95, 2015, 5, 4, 9, 7, 6, 5, 5, 6),
(569, 95, 2016, 7, 8, 6, 7, 4, 4, 7, 4),
(570, 95, 2017, 7, 7, 5, 8, 8, 7, 6, 5),
(571, 96, 2013, 5, 5, 8, 4, 5, 5, 9, 8),
(572, 96, 2014, 6, 5, 9, 5, 4, 6, 6, 8),
(573, 96, 2015, 4, 9, 6, 9, 7, 6, 5, 8),
(574, 96, 2016, 6, 5, 8, 9, 9, 5, 8, 8),
(575, 96, 2017, 9, 5, 5, 7, 7, 7, 4, 4),
(576, 97, 2013, 6, 7, 9, 7, 6, 5, 7, 6),
(577, 97, 2014, 5, 5, 7, 8, 5, 9, 7, 4),
(578, 97, 2015, 4, 4, 5, 8, 6, 9, 9, 4),
(579, 97, 2016, 9, 4, 8, 4, 5, 5, 8, 9),
(580, 97, 2017, 8, 7, 6, 9, 4, 4, 4, 6),
(581, 98, 2013, 8, 9, 6, 7, 9, 6, 7, 9),
(582, 98, 2014, 7, 6, 4, 5, 7, 5, 4, 7),
(583, 98, 2015, 4, 5, 6, 8, 7, 8, 4, 5),
(584, 98, 2016, 8, 6, 8, 6, 7, 7, 8, 5),
(585, 98, 2017, 8, 8, 5, 4, 5, 6, 8, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kualitas`
--
ALTER TABLE `kualitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_staff` (`id_staff`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kualitas`
--
ALTER TABLE `kualitas`
  ADD CONSTRAINT `kualitas_ibfk_1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
