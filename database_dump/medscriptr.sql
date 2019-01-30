-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2019 at 07:27 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medscriptr`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_29_230905_create_staffs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `first_name`, `last_name`, `email`, `role`, `created_at`, `updated_at`) VALUES
(1, 'rSKZ2bsH6', 'RAnIJfNqQ', 'maegan.hyatt@example.org', 'Administrator', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(2, 'Oe5BDD', 'TFQsDWX', 'khilpert@example.org', 'Administrator', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(3, 'KYsb7Nn', 'tklVEpc9R', 'qkuvalis@example.org', 'Doctor', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(5, '3UCvbgE83K', 'pzl0xOYSlK', 'xebert@example.com', 'Doctor', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(6, 'ZFDNXBVdVO', 'hOxH24bH', 'estel61@example.net', 'Doctor', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(7, 'cr9RmzCf', 'Oaipl6nT', 'antonietta.nikolaus@example.com', 'Nurse', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(8, 'UsB4PU', '6zDZQSnX7', 'leo.becker@example.net', 'Doctor', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(9, 'YKPhE4', 'glnCjO7', 'mante.erna@example.net', 'Administrator', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(10, 'ir5iM98Fp4', 'oXMyuhvMBO', 'qreinger@example.org', 'Doctor', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(11, 'Q8kbCdxw', '9btiGMoJG', 'klocko.jordyn@example.org', 'Nurse', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(12, 'EchHbMdt2', '2pi6CM1x', 'craig.wiza@example.net', 'Doctor', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(13, 'rIjAPlbB', '5HQNrKf', 'hklein@example.com', 'Nurse', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(14, 'abtQV', 'jpnDnZLu', 'tkuphal@example.org', 'Administrator', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(15, 'DRmvh', 'Zg3q1No9N', 'skub@example.org', 'Administrator', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(16, 'ibnGN', '2XyytIVbrD', 'moen.don@example.com', 'Administrator', '2019-01-30 17:06:07', '2019-01-30 17:06:07'),
(17, 'e8ZI9', 'W9XpevdX', 'madalyn25@example.net', 'Doctor', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(18, 'I9QXaltl', 'CV4d54c7qW', 'carter.laurie@example.org', 'Nurse', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(19, 'AJ4BIp9iGp', 'OwnkULs', 'hagenes.art@example.org', 'Nurse', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(20, 'uPNy1k2J', '0Z7D8kQK', 'larue.kozey@example.org', 'Nurse', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(21, 't3wCPtMct', 'rsjB3aw', 'jaquelin73@example.net', 'Nurse', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(22, 'KaRobcmQtX', 'oA3Gqlofk', 'athena63@example.net', 'Administrator', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(23, 'm2fjCSt', 'ywsVy1Z', 'kaylee.barrows@example.org', 'Administrator', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(24, 'SzZt7', 'Dz6rYO5pQc', 'stone.kemmer@example.org', 'Doctor', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(25, '7gEiAF', 'HuuWxh7qdD', 'peggie.torphy@example.org', 'Administrator', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(26, 'Uj2v1zyrBO', 'nESAI1uzO', 'uaufderhar@example.com', 'Doctor', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(27, 'X1RceBP', 'sqZzwBeKj', 'grant.eugenia@example.com', 'Nurse', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(28, 'bMthN', 'CoFilqJT', 'lhickle@example.com', 'Nurse', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(29, 'X3U0qT', 'E2zbQT1', 'keshawn.daugherty@example.net', 'Nurse', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(30, '5PYAApjQlJ', 'EQyDH7QXCP', 'eliane16@example.org', 'Doctor', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(31, 'QcyX42NVuV', '9FwZhWY', 'devon.metz@example.org', 'Doctor', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(32, '6kfGie8M', 'n6BdSxiSr', 'joel41@example.org', 'Nurse', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(33, '1olORtKMF7', 'KG5rBbUs2', 'xkilback@example.com', 'Nurse', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(34, 'hxlo4Y', 'shnfmqz', 'wuckert.madisen@example.net', 'Doctor', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(35, 'A5k3je', '37QzBt99', 'rohan.frances@example.net', 'Nurse', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(36, 'YMbrkQPZn', 'NGSSpx3Zx', 'jacobson.katarina@example.net', 'Administrator', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(37, '4yrSV', 's27m0H3PIl', 'jcorkery@example.org', 'Administrator', '2019-01-30 17:06:08', '2019-01-30 17:06:08'),
(38, 'YggRnWzwm', 'qqP9SfX', 'mariana88@example.net', 'Administrator', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(39, 'vu5loMdEEj', 'stSHLTJbf', 'alexane.borer@example.org', 'Nurse', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(40, 'S7Mt7CnB', 'vzDOgpmjv', 'doug.williamson@example.net', 'Nurse', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(41, 'ND6fgPZXs6', 'vAxWcNeJ', 'waelchi.jailyn@example.net', 'Administrator', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(42, 'Efusgl', 'byxQQAT', 'aglae.becker@example.org', 'Administrator', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(43, 'ma9bzcil1', 'eL7VVPua', 'jacobs.karson@example.com', 'Doctor', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(44, 'Eh9i34y', 'B0jy87R4X', 'rleannon@example.org', 'Nurse', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(45, 'vDrTmqiY2K', '8QzYzfX', 'rutherford.keshawn@example.com', 'Nurse', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(46, 'OFU2CBVc', 'ZEQoQXX', 'abalistreri@example.net', 'Doctor', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(47, 'eNGpTGlnm', 'BRhsgqg80O', 'murazik.eleonore@example.net', 'Administrator', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(48, 'fG1lfemEm', 'fMI1WdcCk', 'gavin16@example.com', 'Doctor', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(49, 'DLk9I', '4nzPDWtv2', 'tromp.derek@example.com', 'Nurse', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(50, 'NyIsrbzyIk', 'WErZBjJ', 'montana14@example.org', 'Nurse', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(51, 'COdUWOhC', 'IzJwC7r', 'delia.beahan@example.com', 'Administrator', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(52, 'qxx8Jr', 'az2RWE1', 'corwin.kendra@example.com', 'Administrator', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(53, 'U99Aom', 'XheYruC', 'jaylin52@example.net', 'Administrator', '2019-01-30 17:06:09', '2019-01-30 17:06:09'),
(54, 'pvGCs', 'hFqBWIw', 'edubuque@example.com', 'Administrator', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(55, 'UlJQOqL6', 'kJ9fDJAJz', 'kkuhlman@example.org', 'Administrator', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(56, 'pE0XjNjwh', 'VUMUwUGZw', 'aferry@example.net', 'Doctor', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(57, 'iiq3jws', 'lncI42Qw', 'danyka23@example.org', 'Administrator', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(58, 'fjT2fWA', 'mvwPbpS6d', 'zmills@example.org', 'Doctor', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(59, 'rQO60p2', 'JViT4AQp', 'dmarks@example.com', 'Doctor', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(60, 't4zKcvy', 'Vh4FXWW', 'wyatt.rippin@example.net', 'Doctor', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(61, 'O22TGraUU', 'ixDAl6riz', 'gutmann.tyshawn@example.net', 'Nurse', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(62, 'kz6Du', 'gNhMeSyRyI', 'kianna03@example.net', 'Nurse', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(63, 'Lqs1CFW', 'wCUwbdQzDG', 'fheaney@example.com', 'Doctor', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(64, '4iY9jZvgas', '3R8vdDB', 'fae.dibbert@example.net', 'Nurse', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(65, 'jl4Kx0', 'ITo4Fj8', 'lindsay95@example.com', 'Administrator', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(66, 'HRyr7a', '8hcxOMEE', 'hlesch@example.net', 'Administrator', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(67, 'AKAdQ', 'xbxPXz3', 'jena.altenwerth@example.com', 'Doctor', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(68, '3T1V3C', 'fSVsQ9Qixy', 'xwatsica@example.net', 'Nurse', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(69, '57meXn', 'mytb7hap3X', 'dmante@example.net', 'Administrator', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(70, 'rgXcck', 'lk0Ntcm', 'jettie74@example.org', 'Doctor', '2019-01-30 17:06:10', '2019-01-30 17:06:10'),
(71, '2lhTppiB', 'OXise0K', 'hpagac@example.net', 'Nurse', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(72, 'TTZI46pWx', 'rOXn9lCFOB', 'herdman@example.com', 'Administrator', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(73, 'QSM8Cw', 'TP5Z3OxF', 'agnes18@example.org', 'Administrator', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(74, 'gHUbwoA', '9b6lzUzoXq', 'marty.kiehn@example.com', 'Doctor', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(75, 'CHFCA', 'Xdq8JEPAw4', 'german.luettgen@example.org', 'Doctor', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(76, 'hXsp2c', 'Y94YDdXU', 'katheryn69@example.net', 'Administrator', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(77, 'RiQVokS4z', 'IGBnO2MfB', 'conner01@example.org', 'Doctor', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(78, 'aGigy', 'jqeVrOYD44', 'talia02@example.com', 'Nurse', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(79, 'SABTNruMl', 'WrVrFmFf', 'auer.kenton@example.org', 'Administrator', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(80, '1pSbe', 'dygKpc3ub', 'kasandra01@example.net', 'Administrator', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(81, 'cSGV0bBC', 'mHapHjbJ', 'duane10@example.org', 'Administrator', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(82, '4vkbRah', 'a3R53Ap', 'nadia57@example.org', 'Nurse', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(83, 'o1egMwKqng', 'H73vgWHQZD', 'reva.glover@example.com', 'Administrator', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(84, 'su8X7hr', '67QavaXa4f', 'gabriel.wilkinson@example.org', 'Administrator', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(85, 'xWbbkj', '1Xf3HJPko', 'lilyan.oconnell@example.com', 'Administrator', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(86, 'ySqV6lF9Qm', 'mbXbsA5E', 'doyle06@example.com', 'Administrator', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(87, 'ohLkDZBdn4', 'KLemF9t', 'mozelle15@example.org', 'Nurse', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(88, 'lGh3G', 'VvF3MGjPU4', 'tlebsack@example.net', 'Nurse', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(89, '9PvdPqZBw', 'Uxpwyz8E', 'bailey77@example.com', 'Administrator', '2019-01-30 17:06:11', '2019-01-30 17:06:11'),
(90, 'uHNraOMi', '5XOB5Chg', 'kfadel@example.com', 'Doctor', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(91, 'iEhlFqLm', 'rj2J8Xs', 'grempel@example.org', 'Administrator', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(92, 'FxgNwGU0', 'ESfygsP', 'imccullough@example.com', 'Nurse', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(93, 'p5h3KrqeQC', 'SmABqHi', 'rtowne@example.com', 'Administrator', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(94, 'AFJ9R4', 'OI8o4tXNa', 'ptorphy@example.com', 'Doctor', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(95, 'YUkM0EV7q', '35IAq0Hdw9', 'ulittel@example.com', 'Doctor', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(96, 'jBc4hig2d', '8pAn47Y', 'tcasper@example.com', 'Doctor', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(97, 'usqa4CN2Yt', 'rhVKTxq', 'finn.oconnell@example.org', 'Doctor', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(98, 'n1Ntt', 'QvpMtmI0x', 'beahan.stan@example.net', 'Administrator', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(99, 'TQ2fwS', 't8keex5', 'johns.patricia@example.net', 'Administrator', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(100, 'PNfMH8R', 'y5cIjmC', 'charlene91@example.org', 'Doctor', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(101, 'nVOUg', 'BFfGPKESqn', 'price.roxane@example.com', 'Nurse', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(102, 'af8YCp3c5F', 'yg9d4j6pyg', 'bednar.brycen@example.com', 'Nurse', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(103, 'ZNX7C7qD', 'Kq3rFSF', 'mueller.lowell@example.com', 'Nurse', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(104, 'wj00lclpdj', 'soBv1nqz', 'javier.stamm@example.org', 'Nurse', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(105, 'zAPSbn', 'vADYBg6zU', 'graham.isac@example.com', 'Nurse', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(106, '4QQcbE', '8J0y7jHxT', 'wunsch.johnny@example.net', 'Administrator', '2019-01-30 17:06:12', '2019-01-30 17:06:12'),
(107, 'PFKviZ2', 'hWfHfa71f', 'zwalter@example.net', 'Doctor', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(108, 'geZgYUCq6N', '2J4C7mSHEb', 'cwolff@example.org', 'Administrator', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(109, 'fMnPkwYX', 'ACHNbcVuE', 'linda.dickinson@example.net', 'Nurse', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(110, 'XkqvqBpOi', '3rRtjQBvW', 'joelle10@example.org', 'Doctor', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(111, 'Up05dT', 'm2VEwTo', 'herman.destinee@example.com', 'Doctor', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(112, 'vXCD4E', 'QXAy9ol', 'nschumm@example.net', 'Nurse', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(113, '3PdeZ7', '1SiuspEV6n', 'johan54@example.net', 'Administrator', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(114, 'PXfOmgyK3b', '72IVsPqe', 'sfeeney@example.com', 'Doctor', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(115, 'ZPwF0aRG', 'V7SiceCy', 'eveline.treutel@example.org', 'Nurse', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(116, 'Bt2NJqg9', 'BvA7nJO', 'jessie.kassulke@example.com', 'Administrator', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(117, 'IRPADl4hER', 'heG21Zv', 'dane.goyette@example.com', 'Nurse', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(118, 'tuNi1GN', 'sqHzaHB', 'thalia.terry@example.com', 'Nurse', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(119, '7dYz11', 'TSBVdab3kT', 'tromp.guido@example.org', 'Administrator', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(120, 'dXf4rjtPq', 'JnQJ8l0', 'vincent.borer@example.com', 'Nurse', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(121, 'uO8W7b', 'kjy1EH5', 'eanderson@example.org', 'Nurse', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(122, 'evso9x', 'GhAnCgY8', 'jacobi.brielle@example.com', 'Administrator', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(123, 'Qd6Zid4U', 'feuJKkJ0d1', 'wlegros@example.com', 'Doctor', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(124, 'vTVC98Fr', '9FZw9lf', 'grady.toy@example.org', 'Doctor', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(125, 'WgAuymD', '2Vy27g39D', 'hagenes.ana@example.net', 'Administrator', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(126, 'hkM2D', 'VT2wiyZ6', 'kuphal.carroll@example.com', 'Administrator', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(127, 'DNnz5NN7', 'qatTOYb', 'ubaumbach@example.org', 'Nurse', '2019-01-30 17:06:13', '2019-01-30 17:06:13'),
(128, 'GpdZpX', '7dLBQyY', 'bergstrom.emilia@example.net', 'Administrator', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(129, 'nmHDaprpgT', 'pL9x45ih', 'ybashirian@example.com', 'Doctor', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(130, 'lRC2gp', 'Bfq9tYvJ', 'kirsten.connelly@example.net', 'Administrator', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(131, 'kefsLbvusb', 'BVkgS3eIs', 'amiya.gusikowski@example.org', 'Nurse', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(132, '95sh0A8mRZ', 'zPLftzk', 'keebler.elliott@example.org', 'Doctor', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(133, 'qxwqh', 'neHuHOyAGC', 'dupton@example.org', 'Administrator', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(134, 'WmpO7F', 'pgIplM0b6', 'alden17@example.org', 'Doctor', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(135, '6hNXNbFx', 'SLSTCVHXC', 'vern49@example.com', 'Nurse', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(136, 'XNm00xFVK', 'sCMqhKkM', 'howe.tyler@example.net', 'Doctor', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(137, 'YqK5MqkPFK', 'dP8FBvXeI6', 'frances.spencer@example.com', 'Nurse', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(138, '20DR3NEde6', 'I5rmk2kQyd', 'abshire.gabriel@example.org', 'Doctor', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(139, 'FkLc72YNh', 'NpfhZIa', 'zoey.hettinger@example.org', 'Administrator', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(140, 'kkYKPRH5Nx', 'JeTwGS5i', 'delaney.stoltenberg@example.org', 'Nurse', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(141, 'VSBpngmBP', '0GXARIOcX', 'buck.zboncak@example.org', 'Doctor', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(142, 'SvV2xb1gE', '8DzBA9KKB', 'kgaylord@example.com', 'Doctor', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(143, '61fDd3og', 'XUyzO2P716', 'zgutkowski@example.com', 'Doctor', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(144, 'VJEHzJ', 'DKVcNXRoOW', 'greyson64@example.org', 'Administrator', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(145, 'F2btw18fd', 'zcIa73etud', 'anderson.henry@example.net', 'Doctor', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(146, 'koRrx', 'rog6f1Wii', 'millie57@example.net', 'Nurse', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(147, 'NXIpMgs', 'mK0AEJ3g', 'schulist.noe@example.com', 'Doctor', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(148, 'rDhsQdDz', '8K8IDgBJ', 'kchamplin@example.org', 'Nurse', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(149, 'sH91R2bKyk', 'nqb8hHVXK', 'garnett.reilly@example.org', 'Doctor', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(150, 'JvL3P', 'bIsLlDTS2', 'umertz@example.net', 'Nurse', '2019-01-30 17:06:14', '2019-01-30 17:06:14'),
(151, 'J3C46CY', 'g9wqxSXQH', 'ymann@example.net', 'Nurse', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(152, 'zdh532lyY8', 'qCcJGqfi', 'eleanora.schaefer@example.com', 'Nurse', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(153, 'qw9Y3yXAA', '9aOOoxAS', 'camren.kertzmann@example.org', 'Administrator', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(154, 'pH0XQ28', '8Z2sN8I6l', 'nhyatt@example.com', 'Administrator', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(155, 'qI4qP', 'TY5tGpPK', 'bjohnston@example.org', 'Doctor', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(156, '7cJc9TDz', '0eVpZIN5', 'jhettinger@example.com', 'Doctor', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(157, '5S8ZACqk', 'WNOhqFVTP', 'heaney.era@example.org', 'Doctor', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(158, 'w0kDijS', '0V8gbah55X', 'nkreiger@example.net', 'Nurse', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(159, 'tyXK38CFSV', 'hFSsKY4L', 'maeve.hodkiewicz@example.org', 'Doctor', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(160, 'ueULvtFf', 'HttsBq3U', 'bednar.hellen@example.org', 'Administrator', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(161, 'o72JDeMkE', '6Fo5MqeI', 'ruben78@example.com', 'Administrator', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(162, 'UtpPL', 'bVu42KYz', 'jamir.kirlin@example.org', 'Doctor', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(163, 'Pv7qcmtnSx', 'UbybHMN', 'creichert@example.org', 'Nurse', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(164, 'VQ9Fvts1u', 'sEVTBzPWCE', 'foster68@example.org', 'Doctor', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(165, 'appXpFD', 'lAnkh3Z', 'botsford.nickolas@example.org', 'Nurse', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(166, 'jxGS8omubw', '3yQF4zb6', 'telly30@example.org', 'Nurse', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(167, 'ZfFSsECti', '5XIlrYxV', 'reba.sporer@example.net', 'Administrator', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(168, 'iqlc0', 'VFou7lp', 'witting.anibal@example.org', 'Nurse', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(169, 's70T80L', 'KyVcsvKZl8', 'hyatt.reuben@example.net', 'Doctor', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(170, 'AEU2WTP7uq', 'N09la59', 'green99@example.net', 'Doctor', '2019-01-30 17:06:15', '2019-01-30 17:06:15'),
(171, 'Jdx3P', 'L1BVfz9', 'kiara96@example.net', 'Administrator', '2019-01-30 17:06:16', '2019-01-30 17:06:16'),
(172, '0JBaQYx0', 'ydE903suy', 'judah.carroll@example.net', 'Nurse', '2019-01-30 17:06:16', '2019-01-30 17:06:16'),
(173, 'en5xjdXG', 'W8VWMBdl', 'jarrod19@example.org', 'Nurse', '2019-01-30 17:06:16', '2019-01-30 17:06:16'),
(174, 'pvP4J', 'uLPuDo6nr', 'jimmie28@example.org', 'Doctor', '2019-01-30 17:06:16', '2019-01-30 17:06:16'),
(175, '88s2tJP3K', 'Q2TrmsDqwd', 'sharon29@example.com', 'Administrator', '2019-01-30 17:06:16', '2019-01-30 17:06:16'),
(176, 'zVoWweCcj', 'HOUeky0d9', 'jboyle@example.net', 'Nurse', '2019-01-30 17:06:16', '2019-01-30 17:06:16'),
(177, 'yWFUj', 'FcoSdtN', 'clyde89@example.net', 'Nurse', '2019-01-30 17:06:16', '2019-01-30 17:06:16'),
(178, 'W4eZfGVY', 'NaGab4p8', 'lia69@example.com', 'Doctor', '2019-01-30 17:06:16', '2019-01-30 17:06:16'),
(179, 'p54dsm', '3DJCrTNxj', 'candido09@example.com', 'Doctor', '2019-01-30 17:06:16', '2019-01-30 17:06:16'),
(180, 'Th39h', 'fLBFsKNpqv', 'stacey33@example.org', 'Doctor', '2019-01-30 17:06:16', '2019-01-30 17:06:16'),
(181, 'Xsb4rQzCp', 'ycZR3eD', 'jennie.zboncak@example.net', 'Doctor', '2019-01-30 17:06:17', '2019-01-30 17:06:17'),
(182, 'v3i7B1lewd', 'L6MCpa7LG', 'uthompson@example.com', 'Doctor', '2019-01-30 17:06:17', '2019-01-30 17:06:17'),
(183, '9NMKwqaId', 'A1r5XjC', 'rempel.richmond@example.net', 'Administrator', '2019-01-30 17:06:17', '2019-01-30 17:06:17'),
(184, 'XwvCDd', 'bKJzjP2', 'vidal31@example.com', 'Nurse', '2019-01-30 17:06:17', '2019-01-30 17:06:17'),
(185, '3SQgsSAHq', 'IEQbzIFR', 'nkeeling@example.org', 'Administrator', '2019-01-30 17:06:17', '2019-01-30 17:06:17'),
(186, 'RATuF6pr9m', '5WMx6usI', 'pquitzon@example.com', 'Administrator', '2019-01-30 17:06:17', '2019-01-30 17:06:17'),
(187, 'rXGuVo06', 'xJ3hsrt', 'fnicolas@example.org', 'Nurse', '2019-01-30 17:06:17', '2019-01-30 17:06:17'),
(188, '3xu8TcRUe', 'gYa68S8z', 'angelo89@example.com', 'Doctor', '2019-01-30 17:06:18', '2019-01-30 17:06:18'),
(189, 'LWD6plF96', 'm9SwDzs', 'willy.hills@example.net', 'Nurse', '2019-01-30 17:06:18', '2019-01-30 17:06:18'),
(190, 'SnTO4y', 'xILhXW4H', 'maxime.osinski@example.net', 'Nurse', '2019-01-30 17:06:18', '2019-01-30 17:06:18'),
(191, 'JbquE', 'tAFpBwu', 'ckohler@example.org', 'Administrator', '2019-01-30 17:06:18', '2019-01-30 17:06:18'),
(192, 'FOE410hu', '7ynEZXPW5w', 'sydney30@example.org', 'Nurse', '2019-01-30 17:06:18', '2019-01-30 17:07:53'),
(193, '4BQia', '4RPy3P5', 'jenkins.jeffry@example.net', 'Nurse', '2019-01-30 17:06:18', '2019-01-30 17:06:18'),
(194, 'MsXqSAJd', 'ElZFMCqb', 'willard51@example.org', 'Administrator', '2019-01-30 17:06:18', '2019-01-30 17:06:18'),
(195, 'CY45tn', 'mtnQ2ZDTX', 'purdy.natalia@example.com', 'Doctor', '2019-01-30 17:06:18', '2019-01-30 17:06:18'),
(196, 'glUrO1WiH9', 'kH2YuYs1Px', 'keven05@example.com', 'Nurse', '2019-01-30 17:06:18', '2019-01-30 17:06:18'),
(197, 'dj6WGSwoG2', 'FAG81Bc', 'manley76@example.net', 'Nurse', '2019-01-30 17:06:18', '2019-01-30 17:06:18'),
(198, 'mXDhIGYhYn', 'hfE6DCZ1IP', 'heller.isobel@example.net', 'Administrator', '2019-01-30 17:06:18', '2019-01-30 17:06:18'),
(199, 'IGdgryS89', 'waxY8xnmu', 'windler.ahmed@example.com', 'Nurse', '2019-01-30 17:06:19', '2019-01-30 17:06:19'),
(200, 'aYDRHs6', '0ZPK0Rj', 'lonie.lynch@example.net', 'Doctor', '2019-01-30 17:06:19', '2019-01-30 17:06:19'),
(201, 'Sgrbb', 'Sbtenetgn', 'rgethbern@example.com', 'Doctor', '2019-01-30 17:10:14', '2019-01-30 17:10:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '$2y$10$0XdGbZUpcpw0AyO2CKG2gul7heQtjTVvqbRnnwUvLR6eB7XVc7G92', 'jMw7t4sraIjMlg7ZNHUYQIjE4XgIEaLZUoFs71cCwdwK3rtfd1ZWADJ23QJO', '2019-01-30 09:42:31', '2019-01-30 09:42:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
