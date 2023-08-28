-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 07:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlm1`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add levels', 7, 'add_levels'),
(26, 'Can change levels', 7, 'change_levels'),
(27, 'Can delete levels', 7, 'delete_levels'),
(28, 'Can view levels', 7, 'view_levels'),
(29, 'Can add rank', 8, 'add_rank'),
(30, 'Can change rank', 8, 'change_rank'),
(31, 'Can delete rank', 8, 'delete_rank'),
(32, 'Can view rank', 8, 'view_rank'),
(33, 'Can add wallet', 9, 'add_wallet'),
(34, 'Can change wallet', 9, 'change_wallet'),
(35, 'Can delete wallet', 9, 'delete_wallet'),
(36, 'Can view wallet', 9, 'view_wallet'),
(37, 'Can add user referral', 10, 'add_userreferral'),
(38, 'Can change user referral', 10, 'change_userreferral'),
(39, 'Can delete user referral', 10, 'delete_userreferral'),
(40, 'Can view user referral', 10, 'view_userreferral'),
(41, 'Can add user rank', 11, 'add_userrank'),
(42, 'Can change user rank', 11, 'change_userrank'),
(43, 'Can delete user rank', 11, 'delete_userrank'),
(44, 'Can view user rank', 11, 'view_userrank'),
(45, 'Can add transactions', 12, 'add_transactions'),
(46, 'Can change transactions', 12, 'change_transactions'),
(47, 'Can delete transactions', 12, 'delete_transactions'),
(48, 'Can view transactions', 12, 'view_transactions'),
(49, 'Can add login_history', 13, 'add_login_history'),
(50, 'Can change login_history', 13, 'change_login_history'),
(51, 'Can delete login_history', 13, 'delete_login_history'),
(52, 'Can view login_history', 13, 'view_login_history'),
(53, 'Can add current_level', 14, 'add_current_level'),
(54, 'Can change current_level', 14, 'change_current_level'),
(55, 'Can delete current_level', 14, 'delete_current_level'),
(56, 'Can view current_level', 14, 'view_current_level'),
(57, 'Can add status_activity', 15, 'add_status_activity'),
(58, 'Can change status_activity', 15, 'change_status_activity'),
(59, 'Can delete status_activity', 15, 'delete_status_activity'),
(60, 'Can view status_activity', 15, 'view_status_activity'),
(61, 'Can add emailservice', 16, 'add_emailservice'),
(62, 'Can change emailservice', 16, 'change_emailservice'),
(63, 'Can delete emailservice', 16, 'delete_emailservice'),
(64, 'Can view emailservice', 16, 'view_emailservice'),
(65, 'Can add membership', 17, 'add_membership'),
(66, 'Can change membership', 17, 'change_membership'),
(67, 'Can delete membership', 17, 'delete_membership'),
(68, 'Can view membership', 17, 'view_membership'),
(69, 'Can add user membership', 18, 'add_usermembership'),
(70, 'Can change user membership', 18, 'change_usermembership'),
(71, 'Can delete user membership', 18, 'delete_usermembership'),
(72, 'Can view user membership', 18, 'view_usermembership'),
(73, 'Can add user withdrawls', 19, 'add_userwithdrawls'),
(74, 'Can change user withdrawls', 19, 'change_userwithdrawls'),
(75, 'Can delete user withdrawls', 19, 'delete_userwithdrawls'),
(76, 'Can view user withdrawls', 19, 'view_userwithdrawls'),
(77, 'Can add withdrawsettingmodel', 20, 'add_withdrawsettingmodel'),
(78, 'Can change withdrawsettingmodel', 20, 'change_withdrawsettingmodel'),
(79, 'Can delete withdrawsettingmodel', 20, 'delete_withdrawsettingmodel'),
(80, 'Can view withdrawsettingmodel', 20, 'view_withdrawsettingmodel'),
(81, 'Can add ticket model', 21, 'add_ticketmodel'),
(82, 'Can change ticket model', 21, 'change_ticketmodel'),
(83, 'Can delete ticket model', 21, 'delete_ticketmodel'),
(84, 'Can view ticket model', 21, 'view_ticketmodel'),
(85, 'Can add verify', 22, 'add_verify'),
(86, 'Can change verify', 22, 'change_verify'),
(87, 'Can delete verify', 22, 'delete_verify'),
(88, 'Can view verify', 22, 'view_verify'),
(89, 'Can add plansmodel', 23, 'add_plansmodel'),
(90, 'Can change plansmodel', 23, 'change_plansmodel'),
(91, 'Can delete plansmodel', 23, 'delete_plansmodel'),
(92, 'Can view plansmodel', 23, 'view_plansmodel'),
(93, 'Can add association', 24, 'add_association'),
(94, 'Can change association', 24, 'change_association'),
(95, 'Can delete association', 24, 'delete_association'),
(96, 'Can view association', 24, 'view_association'),
(97, 'Can add code', 25, 'add_code'),
(98, 'Can change code', 25, 'change_code'),
(99, 'Can delete code', 25, 'delete_code'),
(100, 'Can view code', 25, 'view_code'),
(101, 'Can add nonce', 26, 'add_nonce'),
(102, 'Can change nonce', 26, 'change_nonce'),
(103, 'Can delete nonce', 26, 'delete_nonce'),
(104, 'Can view nonce', 26, 'view_nonce'),
(105, 'Can add user social auth', 27, 'add_usersocialauth'),
(106, 'Can change user social auth', 27, 'change_usersocialauth'),
(107, 'Can delete user social auth', 27, 'delete_usersocialauth'),
(108, 'Can view user social auth', 27, 'view_usersocialauth'),
(109, 'Can add partial', 28, 'add_partial'),
(110, 'Can change partial', 28, 'change_partial'),
(111, 'Can delete partial', 28, 'delete_partial'),
(112, 'Can view partial', 28, 'view_partial'),
(113, 'Can add email address', 29, 'add_emailaddress'),
(114, 'Can change email address', 29, 'change_emailaddress'),
(115, 'Can delete email address', 29, 'delete_emailaddress'),
(116, 'Can view email address', 29, 'view_emailaddress'),
(117, 'Can add email confirmation', 30, 'add_emailconfirmation'),
(118, 'Can change email confirmation', 30, 'change_emailconfirmation'),
(119, 'Can delete email confirmation', 30, 'delete_emailconfirmation'),
(120, 'Can view email confirmation', 30, 'view_emailconfirmation'),
(121, 'Can add social account', 31, 'add_socialaccount'),
(122, 'Can change social account', 31, 'change_socialaccount'),
(123, 'Can delete social account', 31, 'delete_socialaccount'),
(124, 'Can view social account', 31, 'view_socialaccount'),
(125, 'Can add social application', 32, 'add_socialapp'),
(126, 'Can change social application', 32, 'change_socialapp'),
(127, 'Can delete social application', 32, 'delete_socialapp'),
(128, 'Can view social application', 32, 'view_socialapp'),
(129, 'Can add social application token', 33, 'add_socialtoken'),
(130, 'Can change social application token', 33, 'change_socialtoken'),
(131, 'Can delete social application token', 33, 'delete_socialtoken'),
(132, 'Can view social application token', 33, 'view_socialtoken'),
(133, 'Can add newsmodel', 34, 'add_newsmodel'),
(134, 'Can change newsmodel', 34, 'change_newsmodel'),
(135, 'Can delete newsmodel', 34, 'delete_newsmodel'),
(136, 'Can view newsmodel', 34, 'view_newsmodel'),
(137, 'Can add appsettings', 35, 'add_appsettings'),
(138, 'Can change appsettings', 35, 'change_appsettings'),
(139, 'Can delete appsettings', 35, 'delete_appsettings'),
(140, 'Can view appsettings', 35, 'view_appsettings'),
(141, 'Can add user address detail', 36, 'add_useraddressdetail'),
(142, 'Can change user address detail', 36, 'change_useraddressdetail'),
(143, 'Can delete user address detail', 36, 'delete_useraddressdetail'),
(144, 'Can view user address detail', 36, 'view_useraddressdetail'),
(145, 'Can add fastrack model', 37, 'add_fastrackmodel'),
(146, 'Can change fastrack model', 37, 'change_fastrackmodel'),
(147, 'Can delete fastrack model', 37, 'delete_fastrackmodel'),
(148, 'Can view fastrack model', 37, 'view_fastrackmodel'),
(149, 'Can add levelincome', 38, 'add_levelincome'),
(150, 'Can change levelincome', 38, 'change_levelincome'),
(151, 'Can delete levelincome', 38, 'delete_levelincome'),
(152, 'Can view levelincome', 38, 'view_levelincome'),
(153, 'Can add userunlockedlevel', 39, 'add_userunlockedlevel'),
(154, 'Can change userunlockedlevel', 39, 'change_userunlockedlevel'),
(155, 'Can delete userunlockedlevel', 39, 'delete_userunlockedlevel'),
(156, 'Can view userunlockedlevel', 39, 'view_userunlockedlevel'),
(157, 'Can add user staking', 40, 'add_userstaking'),
(158, 'Can change user staking', 40, 'change_userstaking'),
(159, 'Can delete user staking', 40, 'delete_userstaking'),
(160, 'Can view user staking', 40, 'view_userstaking'),
(161, 'Can add gallaryimages', 41, 'add_gallaryimages'),
(162, 'Can change gallaryimages', 41, 'change_gallaryimages'),
(163, 'Can delete gallaryimages', 41, 'delete_gallaryimages'),
(164, 'Can view gallaryimages', 41, 'view_gallaryimages'),
(165, 'Can add ptransfer', 42, 'add_ptransfer'),
(166, 'Can change ptransfer', 42, 'change_ptransfer'),
(167, 'Can delete ptransfer', 42, 'delete_ptransfer'),
(168, 'Can view ptransfer', 42, 'view_ptransfer'),
(169, 'Can add staking roi logs', 43, 'add_stakingroilogs'),
(170, 'Can change staking roi logs', 43, 'change_stakingroilogs'),
(171, 'Can delete staking roi logs', 43, 'delete_stakingroilogs'),
(172, 'Can view staking roi logs', 43, 'view_stakingroilogs'),
(173, 'Can add farming roi logs', 44, 'add_farmingroilogs'),
(174, 'Can change farming roi logs', 44, 'change_farmingroilogs'),
(175, 'Can delete farming roi logs', 44, 'delete_farmingroilogs'),
(176, 'Can view farming roi logs', 44, 'view_farmingroilogs'),
(177, 'Can add youtubevideo', 45, 'add_youtubevideo'),
(178, 'Can change youtubevideo', 45, 'change_youtubevideo'),
(179, 'Can delete youtubevideo', 45, 'delete_youtubevideo'),
(180, 'Can view youtubevideo', 45, 'view_youtubevideo'),
(181, 'Can add cofounderclub', 46, 'add_cofounderclub'),
(182, 'Can change cofounderclub', 46, 'change_cofounderclub'),
(183, 'Can delete cofounderclub', 46, 'delete_cofounderclub'),
(184, 'Can view cofounderclub', 46, 'view_cofounderclub'),
(185, 'Can add usercofounderclub', 47, 'add_usercofounderclub'),
(186, 'Can change usercofounderclub', 47, 'change_usercofounderclub'),
(187, 'Can delete usercofounderclub', 47, 'delete_usercofounderclub'),
(188, 'Can view usercofounderclub', 47, 'view_usercofounderclub'),
(189, 'Can add businesslogs', 48, 'add_businesslogs'),
(190, 'Can change businesslogs', 48, 'change_businesslogs'),
(191, 'Can delete businesslogs', 48, 'delete_businesslogs'),
(192, 'Can view businesslogs', 48, 'view_businesslogs');

-- --------------------------------------------------------

--
-- Table structure for table `core_appsettings`
--

CREATE TABLE `core_appsettings` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `logolight` varchar(200) NOT NULL,
  `logodart` varchar(200) NOT NULL,
  `favicon` varchar(200) NOT NULL,
  `aboutus` longtext NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_appsettings`
--

INSERT INTO `core_appsettings` (`id`, `title`, `logolight`, `logodart`, `favicon`, `aboutus`, `facebook`, `twitter`, `linkedin`, `instagram`, `email`, `status`) VALUES
(1, 'MLM', 'logo-2.png', 'logo-1.png', 'logo-3.png', 'Giving readers a sense of who you are or what your business stands for should be your first priority. Give a clear and simple explanation of the website\'s or company\'s objective. You should mention your passion, mission, or vision here.', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com', '', '0'),
(2, 'MLM', 'alp-icon.png', 'alp-icon.png', 'alp-icon.png', 'Giving readers a sense of who you are or what your business stands for should be your first priority. Give a clear and simple explanation of the website\'s or company\'s objective. You should mention your passion, mission, or vision here.', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_businesslogs`
--

CREATE TABLE `core_businesslogs` (
  `id` bigint(20) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `parent_id_id` bigint(20) NOT NULL,
  `plan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_cofounderclub`
--

CREATE TABLE `core_cofounderclub` (
  `id` bigint(20) NOT NULL,
  `club` varchar(200) NOT NULL,
  `business` varchar(200) NOT NULL,
  `reward` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_cofounderclub`
--

INSERT INTO `core_cofounderclub` (`id`, `club`, `business`, `reward`, `status`) VALUES
(1, 'Club1', '25000', '5000', '1'),
(2, 'Club2', '50000', '10000', '1'),
(3, 'Club3', '100000', '20000', '1'),
(4, 'Club4', '200000', '30000', '1'),
(5, 'Club5', '500000', '50000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_emailservice`
--

CREATE TABLE `core_emailservice` (
  `id` bigint(20) NOT NULL,
  `service` varchar(200) NOT NULL,
  `host` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `port` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_emailservice`
--

INSERT INTO `core_emailservice` (`id`, `service`, `host`, `user`, `password`, `port`, `status`) VALUES
(1, 'mailtrap', 'smtp-relay.brevo.com', 'shubhamboxfy@gmail.com', 'AkWbKnOYFJ7P9HMt', ' 587', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_gallaryimages`
--

CREATE TABLE `core_gallaryimages` (
  `id` bigint(20) NOT NULL,
  `imgpath` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `title` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_gallaryimages`
--

INSERT INTO `core_gallaryimages` (`id`, `imgpath`, `status`, `title`) VALUES
(1, 'img-1.jpg', '1', 'The calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.\r\nThe calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.'),
(2, 'img-7.jpg', '1', 'The calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.'),
(3, 'img-4.jpg', '1', 'The calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.'),
(4, 'avatar-10.jpg', '1', 'The calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.'),
(5, 'avatar-8.jpg', '1', 'ksjlf dsfjal ksajfll; sfjlsd               ');

-- --------------------------------------------------------

--
-- Table structure for table `core_levelincome`
--

CREATE TABLE `core_levelincome` (
  `id` bigint(20) NOT NULL,
  `level_income` varchar(200) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `parent_id_id` bigint(20) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_levelincome`
--

INSERT INTO `core_levelincome` (`id`, `level_income`, `child_id_id`, `level_id`, `parent_id_id`, `date`, `status`) VALUES
(1, '0.5', 145, 1, 114, '2023-08-26 05:44:12.533261', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_login_history`
--

CREATE TABLE `core_login_history` (
  `id` bigint(20) NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `ip_location` varchar(200) NOT NULL,
  `region` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_login_history`
--

INSERT INTO `core_login_history` (`id`, `login_time`, `logout_time`, `user_id`, `city`, `country`, `ip_location`, `region`) VALUES
(1, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(4, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(6, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(7, '2023-07-21 05:47:09.639516', '2023-07-21 12:26:56.272006', 110, 'NA', 'NA', 'NA', 'NA'),
(8, '2023-07-21 05:58:08.156792', '', 111, 'NA', 'NA', 'NA', 'NA'),
(9, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(10, '2023-07-21 06:16:37.917764', '', 111, 'NA', 'NA', 'NA', 'NA'),
(11, '2023-07-21 06:20:00.035668', '', 112, 'NA', 'NA', 'NA', 'NA'),
(12, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(13, '2023-07-21 07:14:44.533227', '', 111, 'NA', 'NA', 'NA', 'NA'),
(14, '2023-07-21 07:32:35.533011', '', 111, 'NA', 'NA', 'NA', 'NA'),
(15, '2023-07-21 07:32:54.800433', '', 111, 'NA', 'NA', 'NA', 'NA'),
(16, '2023-07-21 07:33:32.382575', '', 111, 'NA', 'NA', 'NA', 'NA'),
(17, '2023-07-21 07:34:20.761518', '', 111, 'NA', 'NA', 'NA', 'NA'),
(18, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(19, '2023-07-21 07:48:22.254192', '', 111, 'NA', 'NA', 'NA', 'NA'),
(20, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(21, '2023-07-21 10:33:03.114448', '', 113, 'NA', 'NA', 'NA', 'NA'),
(22, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(23, '2023-07-21 10:56:29.034064', '', 110, 'NA', 'NA', 'NA', 'NA'),
(24, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(25, '2023-07-21 11:03:55.176798', '', 110, 'NA', 'NA', 'NA', 'NA'),
(26, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(27, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(28, '2023-07-21 11:37:34.752826', '', 114, 'NA', 'NA', 'NA', 'NA'),
(29, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(30, '2023-07-21 11:40:49.757395', '', 115, 'NA', 'NA', 'NA', 'NA'),
(31, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(32, '2023-07-21 11:43:47.727036', '', 116, 'NA', 'NA', 'NA', 'NA'),
(33, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(34, '2023-07-21 12:26:38.516655', '', 110, 'NA', 'NA', 'NA', 'NA'),
(35, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(36, '2023-07-21 12:50:21.877252', '', 110, 'NA', 'NA', 'NA', 'NA'),
(37, '2023-07-22 05:31:52.118591', '', 113, 'NA', 'NA', 'NA', 'NA'),
(38, '2023-07-22 06:33:56.148759', '', 113, 'NA', 'NA', 'NA', 'NA'),
(39, '2023-07-22 06:34:57.171425', '', 113, 'NA', 'NA', 'NA', 'NA'),
(40, '2023-07-22 06:36:57.992693', '', 113, 'NA', 'NA', 'NA', 'NA'),
(41, '2023-07-22 06:38:20.219825', '2023-07-22 06:59:28.396148', 113, 'NA', 'NA', 'NA', 'NA'),
(42, '2023-07-22 07:00:34.573968', '2023-07-22 07:09:06.844046', 114, 'NA', 'NA', 'NA', 'NA'),
(43, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(44, '2023-07-22 07:10:29.214657', '2023-07-22 09:51:25.980117', 114, 'NA', 'NA', 'NA', 'NA'),
(45, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(46, '2023-07-22 09:55:16.410770', '', 114, 'NA', 'NA', 'NA', 'NA'),
(47, '2023-07-22 11:50:43.994304', '2023-07-22 12:18:01.215332', 114, 'NA', 'NA', 'NA', 'NA'),
(48, '', '', 1, 'NA', 'NA', 'NA', 'NA'),
(49, '2023-07-22 12:36:32.313379', '', 114, 'NA', 'NA', 'NA', 'NA'),
(50, '2023-07-24 08:32:48.445432', '', 114, 'NA', 'NA', 'NA', 'NA'),
(51, '2023-07-24 08:33:42.311871', '', 114, 'NA', 'NA', 'NA', 'NA'),
(52, '2023-07-24 10:19:10.381900', '', 114, 'NA', 'NA', 'NA', 'NA'),
(53, '2023-07-24 10:27:01.806739', '', 114, 'NA', 'NA', 'NA', 'NA'),
(54, '2023-07-25 12:28:21.493323', '', 114, 'NA', 'NA', 'NA', 'NA'),
(55, '2023-07-25 12:30:41.793392', '2023-07-26 05:19:37.188459', 114, 'NA', 'NA', 'NA', 'NA'),
(56, '', '', 1, 'NA', 'NA', '192.168.18.123', 'NA'),
(57, '2023-07-26 05:21:29.470703', '2023-07-26 05:24:00.587038', 114, 'NA', 'NA', 'NA', 'NA'),
(58, '', '', 1, 'NA', 'NA', '192.168.18.123', 'NA'),
(59, '2023-07-26 07:14:53.288634', '2023-07-29 06:27:54.432891', 114, 'NA', 'NA', 'NA', 'NA'),
(60, '', '', 1, 'NA', 'NA', '192.168.18.123', 'NA'),
(61, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(62, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(63, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(64, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(65, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(66, '2023-07-29 07:41:38.020377', '2023-07-29 07:47:26.459074', 114, 'NA', 'NA', 'NA', 'NA'),
(67, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(68, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(69, '2023-07-29 08:12:10.513099', '', 114, 'NA', 'NA', 'NA', 'NA'),
(70, '2023-07-29 08:16:50.308155', '2023-07-29 09:47:31.794666', 114, 'NA', 'NA', 'NA', 'NA'),
(76, '2023-07-29 11:49:21.144318', '', 125, 'NA', 'NA', 'NA', 'NA'),
(77, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(78, '2023-07-31 05:08:35.154083', '', 125, 'NA', 'NA', 'NA', 'NA'),
(79, '2023-07-31 05:09:59.551806', '', 125, 'NA', 'NA', 'NA', 'NA'),
(80, '2023-07-31 05:12:51.059890', '', 125, 'NA', 'NA', 'NA', 'NA'),
(81, '2023-07-31 05:13:00.254584', '', 125, 'NA', 'NA', 'NA', 'NA'),
(82, '2023-07-31 05:15:51.843401', '', 125, 'NA', 'NA', 'NA', 'NA'),
(83, '2023-07-31 05:16:41.613304', '', 125, 'NA', 'NA', 'NA', 'NA'),
(84, '2023-07-31 05:16:48.205132', '2023-07-31 05:17:22.001277', 125, 'NA', 'NA', 'NA', 'NA'),
(85, '2023-07-31 05:17:54.714649', '2023-07-31 05:18:05.216763', 125, 'NA', 'NA', 'NA', 'NA'),
(86, '2023-07-31 05:19:08.409906', '2023-07-31 05:43:44.444170', 125, 'NA', 'NA', 'NA', 'NA'),
(87, '2023-07-31 05:44:00.934360', '2023-07-31 05:44:07.622186', 125, 'NA', 'NA', 'NA', 'NA'),
(88, '2023-07-31 05:44:19.311873', '2023-07-31 05:44:32.791406', 125, 'NA', 'NA', 'NA', 'NA'),
(89, '2023-07-31 05:45:10.121008', '2023-07-31 05:45:31.873906', 125, 'NA', 'NA', 'NA', 'NA'),
(90, '2023-07-31 05:45:45.760843', '2023-07-31 05:45:50.544370', 125, 'NA', 'NA', 'NA', 'NA'),
(91, '2023-07-31 05:47:15.379124', '2023-07-31 05:55:43.841802', 125, 'NA', 'NA', 'NA', 'NA'),
(92, '2023-07-31 05:57:10.701834', '2023-07-31 06:02:56.027821', 126, 'NA', 'NA', 'NA', 'NA'),
(93, '2023-07-31 06:19:34.835853', '2023-07-31 06:21:00.159606', 133, 'NA', 'NA', 'NA', 'NA'),
(94, '2023-07-31 06:22:59.532635', '2023-07-31 06:23:07.211527', 135, 'NA', 'NA', 'NA', 'NA'),
(95, '2023-07-31 06:36:57.716649', '2023-07-31 06:37:22.419362', 136, 'NA', 'NA', 'NA', 'NA'),
(96, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(97, '2023-07-31 06:57:30.878637', '2023-07-31 07:13:25.397268', 114, 'NA', 'NA', 'NA', 'NA'),
(98, '2023-07-31 07:14:58.085887', '2023-07-31 07:15:05.322627', 125, 'NA', 'NA', 'NA', 'NA'),
(99, '2023-07-31 07:35:31.412199', '2023-07-31 07:47:57.403575', 125, 'NA', 'NA', 'NA', 'NA'),
(100, '2023-07-31 07:48:17.808961', '2023-07-31 09:43:53.793477', 114, 'NA', 'NA', 'NA', 'NA'),
(101, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(102, '2023-07-31 09:44:52.719576', '2023-07-31 09:45:06.007834', 114, 'NA', 'NA', 'NA', 'NA'),
(103, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(104, '2023-07-31 12:44:10.188428', '2023-07-31 12:45:50.375740', 143, 'NA', 'NA', 'NA', 'NA'),
(105, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(106, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(107, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(108, '2023-08-03 06:41:39.424252', '2023-08-03 07:06:41.324784', 114, 'NA', 'NA', 'NA', 'NA'),
(109, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(110, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(111, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(112, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(113, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(114, '2023-08-04 05:22:54.790000', '2023-08-04 05:49:45.053591', 114, 'NA', 'NA', 'NA', 'NA'),
(115, '2023-08-04 06:07:27.337393', '2023-08-04 07:30:42.696562', 114, 'NA', 'NA', 'NA', 'NA'),
(116, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(117, '2023-08-04 10:32:39.345486', '2023-08-04 10:42:38.941410', 114, 'NA', 'NA', 'NA', 'NA'),
(118, '2023-08-04 10:44:39.438760', '', 144, 'NA', 'NA', 'NA', 'NA'),
(119, '2023-08-05 04:54:11.655706', '2023-08-05 07:31:42.817926', 114, 'NA', 'NA', 'NA', 'NA'),
(120, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(121, '2023-08-05 07:41:54.515608', '2023-08-05 07:42:02.422959', 125, 'NA', 'NA', 'NA', 'NA'),
(122, '2023-08-05 09:48:50.283613', '', 1, 'NA', 'NA', 'NA', 'NA'),
(123, '2023-08-05 09:50:18.675245', '', 1, 'NA', 'NA', 'NA', 'NA'),
(124, '2023-08-05 09:51:45.251951', '', 1, 'NA', 'NA', 'NA', 'NA'),
(125, '2023-08-05 09:53:55.973974', '', 1, 'NA', 'NA', 'NA', 'NA'),
(126, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(127, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(128, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(129, '2023-08-08 10:56:50.858666', '2023-08-08 11:42:31.799784', 114, 'NA', 'NA', 'NA', 'NA'),
(130, '2023-08-08 11:47:04.718958', '2023-08-11 10:13:36.816499', 145, 'NA', 'NA', 'NA', 'NA'),
(131, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(132, '2023-08-12 06:25:10.245735', '2023-08-12 11:44:10.019311', 146, 'NA', 'NA', 'NA', 'NA'),
(133, '2023-08-12 12:32:22.124521', '2023-08-16 05:15:15.132746', 114, 'NA', 'NA', 'NA', 'NA'),
(134, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(135, '2023-08-16 06:49:37.737572', '2023-08-16 12:08:48.988336', 114, 'NA', 'NA', 'NA', 'NA'),
(136, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(137, '2023-08-16 12:49:20.311651', '2023-08-16 12:52:04.174119', 114, 'NA', 'NA', 'NA', 'NA'),
(138, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(139, '2023-08-19 04:47:10.486379', '', 114, 'NA', 'NA', 'NA', 'NA'),
(140, '2023-08-19 11:16:53.162847', '2023-08-19 15:06:12.482362', 114, 'NA', 'NA', 'NA', 'NA'),
(141, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(142, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(143, '2023-08-19 17:37:47.236640', '2023-08-19 17:39:52.078915', 114, 'NA', 'NA', 'NA', 'NA'),
(144, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(145, '2023-08-20 06:55:50.718286', '', 114, 'NA', 'NA', 'NA', 'NA'),
(146, '2023-08-20 11:51:08.847788', '2023-08-20 12:20:34.112029', 114, 'NA', 'NA', 'NA', 'NA'),
(147, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(148, '2023-08-20 12:21:57.971838', '2023-08-21 05:18:25.242430', 114, 'NA', 'NA', 'NA', 'NA'),
(149, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(150, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(151, '2023-08-21 05:21:23.423964', '2023-08-21 06:12:55.462877', 114, 'NA', 'NA', 'NA', 'NA'),
(152, '2023-08-21 06:19:32.273184', '2023-08-21 06:42:37.350761', 114, 'NA', 'NA', 'NA', 'NA'),
(153, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(154, '2023-08-21 07:16:49.939237', '', 114, 'NA', 'NA', 'NA', 'NA'),
(155, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(156, '2023-08-22 05:25:51.301049', '2023-08-22 07:44:48.555535', 114, 'NA', 'NA', 'NA', 'NA'),
(157, '2023-08-22 07:45:16.209989', '', 114, 'NA', 'NA', 'NA', 'NA'),
(158, '2023-08-22 08:19:54.867729', '', 114, 'NA', 'NA', 'NA', 'NA'),
(159, '2023-08-22 08:20:59.063560', '', 114, 'NA', 'NA', 'NA', 'NA'),
(160, '2023-08-22 08:22:24.292032', '', 114, 'NA', 'NA', 'NA', 'NA'),
(161, '2023-08-22 08:23:17.692502', '', 114, 'NA', 'NA', 'NA', 'NA'),
(162, '2023-08-22 08:23:37.921196', '', 114, 'NA', 'NA', 'NA', 'NA'),
(163, '2023-08-22 08:24:03.446414', '', 114, 'NA', 'NA', 'NA', 'NA'),
(164, '2023-08-22 08:25:25.749775', '', 114, 'NA', 'NA', 'NA', 'NA'),
(165, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(166, '2023-08-24 08:27:05.068683', '2023-08-24 12:25:35.918563', 114, 'NA', 'NA', 'NA', 'NA'),
(167, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(168, '2023-08-24 12:27:58.406029', '2023-08-28 05:21:11.697272', 147, 'NA', 'NA', 'NA', 'NA'),
(169, '2023-08-24 13:13:20.608992', '', 114, 'NA', 'NA', 'NA', 'NA'),
(170, '2023-08-26 07:39:32.718960', '2023-08-26 07:41:31.457248', 114, 'NA', 'NA', 'NA', 'NA'),
(171, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(172, '2023-08-26 07:42:25.698198', '', 114, 'NA', 'NA', 'NA', 'NA'),
(173, '2023-08-26 07:56:01.062011', '', 114, 'NA', 'NA', 'NA', 'NA'),
(174, '2023-08-26 07:56:31.282658', '', 114, 'NA', 'NA', 'NA', 'NA'),
(175, '2023-08-26 08:02:34.695385', '', 114, 'NA', 'NA', 'NA', 'NA'),
(176, '2023-08-26 08:03:19.908798', '', 114, 'NA', 'NA', 'NA', 'NA'),
(177, '2023-08-26 08:04:50.988745', '2023-08-26 09:53:30.780583', 114, 'NA', 'NA', 'NA', 'NA'),
(178, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(179, '2023-08-26 10:06:05.207114', '2023-08-26 10:56:54.865393', 114, 'NA', 'NA', 'NA', 'NA'),
(180, '2023-08-26 11:13:21.779791', '', 114, 'NA', 'NA', 'NA', 'NA'),
(181, '2023-08-26 11:18:08.659462', '', 114, 'NA', 'NA', 'NA', 'NA'),
(182, '2023-08-26 11:34:10.306491', '2023-08-27 17:04:50.342257', 114, 'NA', 'NA', 'NA', 'NA'),
(183, '2023-08-26 12:43:08.739380', '2023-08-26 12:46:14.304965', 149, 'NA', 'NA', 'NA', 'NA'),
(184, '2023-08-26 12:46:47.525221', '2023-08-26 12:48:08.155181', 149, 'NA', 'NA', 'NA', 'NA'),
(185, '2023-08-26 12:48:47.284169', '2023-08-26 12:50:21.703293', 149, 'NA', 'NA', 'NA', 'NA'),
(186, '', '', 1, 'NA', 'NA', '127.0.0.1', 'NA'),
(187, '2023-08-27 17:07:14.784516', '', 114, 'NA', 'NA', 'NA', 'NA'),
(188, '2023-08-28 05:23:37.206356', '', 150, 'NA', 'NA', 'NA', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `core_membership`
--

CREATE TABLE `core_membership` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `refferal_commision` varchar(200) NOT NULL,
  `points` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `directincomepercent` varchar(200) NOT NULL,
  `max_amount` varchar(100) DEFAULT NULL,
  `min_amount` varchar(100) NOT NULL,
  `plan_period` varchar(100) DEFAULT NULL,
  `roi` varchar(200) NOT NULL,
  `roi_period` varchar(200) NOT NULL,
  `staking` varchar(100) NOT NULL,
  `overall_roi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_membership`
--

INSERT INTO `core_membership` (`id`, `name`, `refferal_commision`, `points`, `status`, `plan_id`, `directincomepercent`, `max_amount`, `min_amount`, `plan_period`, `roi`, `roi_period`, `staking`, `overall_roi`) VALUES
(12, 'micro', '0', '20', '1', 4, '50', '249', '50', NULL, '0.25', '1', 'False', '200'),
(13, 'mini', '0', '20', '1', 4, '50', '499', '250', NULL, '0.30', '1', 'False', '200'),
(14, 'classic', '0', '20', '1', 4, '50', '', '500', NULL, '0.5', '1', 'False', '200'),
(15, 'First', '0', '20', '1', 5, '50', '10000', '50', '12', '3', '1', 'True', '0'),
(16, 'second', '0', '20', '1', 5, '50', '10000', '50', '24', '4', '1', 'True', '0'),
(17, 'Third', '0', '20', '1', 5, '50', '10000', '50', '36', '4', '1', 'True', '0'),
(18, 'Forth', '0', '20', '1', 5, '50', '10000', '50', '36', '5', '1', 'True', '0'),
(19, 'Fifth', '0', '20', '1', 5, '50', '10000', '50', '48', '6', '1', 'True', '0'),
(20, 'Sixth', '0', '20', '1', 5, '50', '10000', '50', '60', '8', '1', 'True', '0');

-- --------------------------------------------------------

--
-- Table structure for table `core_newsmodel`
--

CREATE TABLE `core_newsmodel` (
  `id` bigint(20) NOT NULL,
  `news` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(200) NOT NULL,
  `datato` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_newsmodel`
--

INSERT INTO `core_newsmodel` (`id`, `news`, `date`, `status`, `datato`) VALUES
(1, 'hello', '2023-08-03', 'True', '2023-08-16'),
(2, 'hello how are you', '2023-08-21', 'True', '2023-08-29');

-- --------------------------------------------------------

--
-- Table structure for table `core_plansmodel`
--

CREATE TABLE `core_plansmodel` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_plansmodel`
--

INSERT INTO `core_plansmodel` (`id`, `name`, `status`) VALUES
(4, 'Farming Package', '1'),
(5, 'staking', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_status_activity`
--

CREATE TABLE `core_status_activity` (
  `id` bigint(20) NOT NULL,
  `time` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `amount_freezed` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_status_activity`
--

INSERT INTO `core_status_activity` (`id`, `time`, `status`, `amount_freezed`, `user_id`) VALUES
(1, '2023-07-13 06:02:52.891078', '0', '0', 31),
(2, '2023-07-13 06:02:52.891078', '1', '0', 31),
(3, '2023-07-15 06:27:26.482296', '0', '0', 31),
(4, '2023-07-15 06:27:26.482296', '1', '0', 31),
(5, '2023-07-15 07:12:30.549132', '0', '0', 31),
(6, '2023-07-15 07:12:30.549132', '1', '0', 31),
(7, '2023-07-15 07:12:30.549132', '0', '0', 31),
(8, '2023-07-15 07:12:30.549132', '1', '0', 31),
(9, '2023-07-15 07:12:30.549132', '0', '0', 31),
(10, '2023-07-15 07:12:30.549132', '1', '0', 31),
(11, '2023-07-15 07:12:30.549132', '0', '0', 31),
(12, '2023-07-15 10:24:00.681401', '0', '0', 32),
(13, '2023-07-15 10:24:00.681401', '1', '0', 32),
(14, '2023-07-15 10:24:00.681401', '0', '0', 32),
(15, '2023-07-15 10:24:00.681401', '1', '0', 32),
(16, '2023-07-15 10:24:00.681401', '0', '0', 43),
(17, '2023-07-15 10:24:00.681401', '1', '0', 43),
(18, '2023-07-15 10:24:00.681401', '0', '0', 47),
(19, '2023-07-15 10:24:00.681401', '1', '0', 47),
(20, '2023-07-15 10:24:00.681401', '0', '0', 48),
(21, '2023-07-15 10:24:00.681401', '1', '0', 48),
(22, '2023-07-15 10:35:01.995128', '0', '0', 37),
(23, '2023-07-15 10:35:01.995128', '1', '0', 37),
(24, '2023-07-15 10:35:01.995128', '0', '0', 36),
(25, '2023-07-15 10:35:01.995128', '1', '0', 36),
(26, '2023-07-15 10:35:01.995128', '0', '0', 35),
(27, '2023-07-15 10:35:01.995128', '1', '0', 35),
(28, '2023-07-15 10:35:01.995128', '0', '0', 34),
(29, '2023-07-15 10:35:01.995128', '1', '0', 34),
(30, '2023-07-15 10:35:01.995128', '0', '0', 33),
(31, '2023-07-15 10:35:01.995128', '1', '0', 33),
(32, '2023-07-15 10:44:54.179892', '1', '0', 31),
(33, '2023-07-15 11:19:42.453187', '0', '0', 49),
(34, '2023-07-15 11:19:42.453187', '0', '0', 29),
(35, '2023-07-15 11:19:42.453187', '0', '0', 31),
(36, '2023-07-15 11:19:42.453187', '0', '0', 32),
(37, '2023-07-15 11:19:42.453187', '0', '0', 33),
(38, '2023-07-15 11:19:42.453187', '0', '0', 34),
(39, '2023-07-15 11:19:42.453187', '0', '0', 35),
(40, '2023-07-15 11:19:42.453187', '0', '0', 36),
(41, '2023-07-15 11:19:42.453187', '0', '0', 37),
(42, '2023-07-15 11:19:42.453187', '0', '0', 39),
(43, '2023-07-15 11:19:42.453187', '1', '0', 49),
(44, '2023-07-15 11:19:42.453187', '1', '0', 29),
(45, '2023-07-15 11:19:42.453187', '1', '0', 31),
(46, '2023-07-15 11:19:42.453187', '1', '0', 32),
(47, '2023-07-15 11:19:42.453187', '1', '0', 33),
(48, '2023-07-15 11:19:42.453187', '1', '0', 34),
(49, '2023-07-15 11:19:42.453187', '1', '0', 35),
(50, '2023-07-15 11:19:42.453187', '1', '0', 36),
(51, '2023-07-15 11:19:42.453187', '1', '0', 37),
(52, '2023-07-15 11:19:42.453187', '1', '0', 39),
(53, '2023-07-15 11:19:42.453187', '0', '0', 49),
(54, '2023-07-15 11:19:42.453187', '1', '0', 49),
(55, '2023-07-15 11:43:35.699398', '0', '0', 49),
(56, '2023-07-15 11:43:35.699398', '1', '0', 49),
(57, '2023-07-20 04:45:02.007500', '0', '0', 49),
(58, '2023-07-20 04:45:02.007500', '1', '0', 49),
(59, '2023-08-03 05:29:02.461926', '0', '0', 49),
(60, '2023-08-03 05:29:02.461926', '1', '0', 49),
(61, '2023-08-03 05:29:02.461926', '0', '0', 111),
(62, '2023-08-03 05:29:02.461926', '1', '0', 111),
(63, '2023-08-20 06:14:55.456933', '0', '0', 49),
(64, '2023-08-20 06:14:55.456933', '1', '0', 49),
(65, '2023-08-24 07:39:29.025510', '0', '0', 49),
(66, '2023-08-24 07:39:29.025510', '1', '0', 49);

-- --------------------------------------------------------

--
-- Table structure for table `core_ticketmodel`
--

CREATE TABLE `core_ticketmodel` (
  `id` bigint(20) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_ticketmodel`
--

INSERT INTO `core_ticketmodel` (`id`, `question`, `answer`, `status`, `user_id`, `title`, `date`) VALUES
(1, 'fdskhjf', 'fkslk', '1', 31, 'hello', '2023-08-08 10:10:05.330093'),
(2, 'fdskhjf', '', '1', 31, 'hello', '2023-08-08 10:10:05.330093'),
(3, 'fdskhjf', '', '0', 31, 'hello', '2023-08-08 10:10:05.330093'),
(4, 'how are you', '', '0', 114, 'hello', '2023-08-08 10:10:05.330093');

-- --------------------------------------------------------

--
-- Table structure for table `core_useraddressdetail`
--

CREATE TABLE `core_useraddressdetail` (
  `id` bigint(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `pincode` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `country` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_useraddressdetail`
--

INSERT INTO `core_useraddressdetail` (`id`, `address`, `pincode`, `district`, `state`, `user_id`, `country`) VALUES
(1, 'abc', '176111', 'Sujanpur', 'Hamirpur', 114, 'India'),
(2, 'dsfjlkasjdlfj', '176111', 'Hamirpur', 'HP', 1, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `core_usercofounderclub`
--

CREATE TABLE `core_usercofounderclub` (
  `id` bigint(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  `club_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `reward_recieved` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_userunlockedlevel`
--

CREATE TABLE `core_userunlockedlevel` (
  `id` bigint(20) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_userunlockedlevel`
--

INSERT INTO `core_userunlockedlevel` (`id`, `level_id`, `user_id`, `status`) VALUES
(1, 2, 114, '1'),
(8, 1, 147, '1'),
(9, 1, 149, '1'),
(10, 1, 150, '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_userwithdrawls`
--

CREATE TABLE `core_userwithdrawls` (
  `id` bigint(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `type` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_userwithdrawls`
--

INSERT INTO `core_userwithdrawls` (`id`, `status`, `amount`, `currency`, `address`, `user_id`, `wallet_id`, `type`, `date`) VALUES
(1, '1', '200', 'USDT', 'jsfdlkfjl', 31, 27, '0', '2023-08-20 13:34:48.771805'),
(2, '1', '200', 'USDT', 'jsfdlkfjl', 31, 27, '0', '2023-08-20 13:34:48.771805'),
(3, '1', '300', 'USDT', 'jsfdlkfjl', 31, 27, '0', '2023-08-20 13:34:48.771805'),
(4, '2', '400', 'USDT', 'jsfdlkfjl', 31, 27, '0', '2023-08-20 13:34:48.771805'),
(5, '1', '200', 'USDT', 'fskjfslfslk789', 31, 27, '0', '2023-08-20 13:34:48.771805'),
(6, '1', '50', 'USDT', 'fdslflsjflksdajfsk', 114, 106, '0', '2023-08-20 13:34:48.771805'),
(7, '1', '200', 'USDT', NULL, 114, 106, '1', '2023-08-20 13:34:48.771805'),
(8, '1', '220', 'USDT', NULL, 114, 106, '1', '2023-08-20 15:16:42.093682'),
(9, '1', '150', 'USDT', NULL, 114, 106, '1', '2023-08-20 15:19:15.936204'),
(10, '1', '20', 'USDT', NULL, 114, 106, '1', '2023-08-20 15:20:21.876856'),
(11, '1', '50', 'USDT', NULL, 114, 106, '1', '2023-08-20 15:23:58.127517'),
(12, '1', '200', 'USDT', NULL, 114, 106, '1', '2023-08-21 05:15:42.331727'),
(13, '0', '10', 'USDT', NULL, 114, 106, '1', '2023-08-21 05:55:59.729366'),
(14, '0', '20', 'USDT', 'fksjdkfjslk32498', 114, 106, '0', '2023-08-23 12:54:12.442430'),
(15, '0', '20', 'USDT', 'fdskjflk26716382', 114, 106, '0', '2023-08-23 13:15:42.686159');

-- --------------------------------------------------------

--
-- Table structure for table `core_withdrawsettingmodel`
--

CREATE TABLE `core_withdrawsettingmodel` (
  `id` bigint(20) NOT NULL,
  `min_amount` varchar(200) NOT NULL,
  `fees` varchar(200) NOT NULL,
  `max_amount` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_withdrawsettingmodel`
--

INSERT INTO `core_withdrawsettingmodel` (`id`, `min_amount`, `fees`, `max_amount`) VALUES
(1, '5', '20', '100');

-- --------------------------------------------------------

--
-- Table structure for table `core_youtubevideo`
--

CREATE TABLE `core_youtubevideo` (
  `id` bigint(20) NOT NULL,
  `videolink` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_youtubevideo`
--

INSERT INTO `core_youtubevideo` (`id`, `videolink`, `status`) VALUES
(1, 'https://www.youtube.com/embed/lhtBqtYlQGY', '1');

-- --------------------------------------------------------

--
-- Table structure for table `current_level`
--

CREATE TABLE `current_level` (
  `id` bigint(20) NOT NULL,
  `level_id` varchar(200) NOT NULL,
  `points` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `current_level`
--

INSERT INTO `current_level` (`id`, `level_id`, `points`, `user_id`) VALUES
(1, '0', '0', 1),
(26, '0', '0', 29),
(27, '2', '50', 31),
(28, '1', '10', 32),
(29, '1', '10', 33),
(30, '1', '10', 34),
(31, '1', '10', 35),
(32, '1', '10', 36),
(33, '0', '0', 37),
(34, '0', '0', 39),
(35, '0', '0', 40),
(36, '0', '0', 41),
(37, '0', '0', 43),
(40, '0', '0', 47),
(41, '0', '0', 48),
(42, '0', '0', 49),
(43, '0', '0', 50),
(44, '0', '0', 51),
(45, '0', '0', 52),
(46, '0', '0', 53),
(47, '0', '0', 54),
(48, '0', '0', 55),
(49, '0', '0', 56),
(50, '0', '0', 57),
(51, '0', '0', 58),
(52, '0', '0', 59),
(53, '0', '0', 60),
(54, '0', '0', 61),
(55, '0', '0', 62),
(56, '0', '0', 63),
(57, '0', '0', 64),
(58, '0', '0', 65),
(59, '0', '0', 66),
(60, '0', '0', 67),
(61, '0', '0', 68),
(62, '0', '0', 69),
(63, '0', '0', 70),
(64, '0', '0', 71),
(65, '0', '0', 72),
(66, '0', '0', 73),
(67, '0', '0', 74),
(68, '0', '0', 75),
(69, '0', '0', 76),
(70, '0', '0', 77),
(71, '0', '0', 78),
(72, '0', '0', 79),
(73, '0', '0', 80),
(74, '0', '0', 81),
(75, '0', '0', 82),
(76, '0', '0', 83),
(77, '0', '0', 84),
(78, '0', '0', 85),
(79, '0', '0', 86),
(80, '0', '0', 87),
(81, '0', '0', 88),
(82, '0', '0', 89),
(83, '0', '0', 90),
(84, '0', '0', 91),
(85, '0', '0', 92),
(86, '0', '0', 93),
(87, '0', '0', 94),
(88, '0', '0', 95),
(89, '0', '0', 96),
(90, '0', '0', 97),
(91, '0', '0', 98),
(92, '0', '0', 99),
(93, '0', '0', 100),
(94, '0', '0', 101),
(95, '0', '0', 102),
(96, '0', '0', 103),
(97, '0', '0', 104),
(98, '0', '0', 105),
(99, '0', '0', 106),
(100, '0', '0', 107),
(101, '0', '0', 108),
(103, '1', '10', 111),
(104, '0', '0', 112),
(105, '0', '0', 113),
(106, '1', '10', 114),
(107, '0', '0', 115),
(108, '0', '0', 116),
(110, '0', '0', 125),
(111, '0', '0', 126),
(112, '0', '0', 133),
(113, '0', '0', 135),
(114, '0', '0', 136),
(115, '0', '0', 143),
(116, '0', '0', 144),
(117, '0', '0', 145),
(118, '0', '0', 146),
(119, '0', '0', 147),
(120, '0', '0', 149),
(121, '0', '0', 150);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(29, 'account', 'emailaddress'),
(30, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(35, 'core', 'appsettings'),
(48, 'core', 'businesslogs'),
(46, 'core', 'cofounderclub'),
(14, 'core', 'current_level'),
(16, 'core', 'emailservice'),
(44, 'core', 'farmingroilogs'),
(37, 'core', 'fastrackmodel'),
(41, 'core', 'gallaryimages'),
(38, 'core', 'levelincome'),
(7, 'core', 'levels'),
(13, 'core', 'login_history'),
(17, 'core', 'membership'),
(34, 'core', 'newsmodel'),
(23, 'core', 'plansmodel'),
(42, 'core', 'ptransfer'),
(8, 'core', 'rank'),
(43, 'core', 'stakingroilogs'),
(15, 'core', 'status_activity'),
(21, 'core', 'ticketmodel'),
(12, 'core', 'transactions'),
(6, 'core', 'user'),
(36, 'core', 'useraddressdetail'),
(47, 'core', 'usercofounderclub'),
(18, 'core', 'usermembership'),
(11, 'core', 'userrank'),
(10, 'core', 'userreferral'),
(40, 'core', 'userstaking'),
(39, 'core', 'userunlockedlevel'),
(19, 'core', 'userwithdrawls'),
(9, 'core', 'wallet'),
(20, 'core', 'withdrawsettingmodel'),
(45, 'core', 'youtubevideo'),
(5, 'sessions', 'session'),
(31, 'socialaccount', 'socialaccount'),
(32, 'socialaccount', 'socialapp'),
(33, 'socialaccount', 'socialtoken'),
(24, 'social_django', 'association'),
(25, 'social_django', 'code'),
(26, 'social_django', 'nonce'),
(28, 'social_django', 'partial'),
(27, 'social_django', 'usersocialauth'),
(22, 'userapp', 'verify');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-09 11:28:14.227867'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-07-09 11:28:14.280738'),
(3, 'auth', '0001_initial', '2023-07-09 11:28:14.489109'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-07-09 11:28:14.541357'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-07-09 11:28:14.548355'),
(6, 'auth', '0004_alter_user_username_opts', '2023-07-09 11:28:14.556427'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-07-09 11:28:14.562534'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-07-09 11:28:14.565514'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-07-09 11:28:14.572660'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-07-09 11:28:14.578542'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-07-09 11:28:14.585544'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-07-09 11:28:14.608056'),
(13, 'auth', '0011_update_proxy_permissions', '2023-07-09 11:28:14.613620'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-07-09 11:28:14.620621'),
(15, 'auth', '0013_alter_user_username', '2023-07-09 11:28:14.628122'),
(16, 'core', '0001_initial', '2023-07-09 11:28:15.432138'),
(17, 'admin', '0001_initial', '2023-07-09 11:28:15.546074'),
(18, 'admin', '0002_logentry_remove_auto_add', '2023-07-09 11:28:15.559313'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-09 11:28:15.569694'),
(20, 'sessions', '0001_initial', '2023-07-09 11:28:15.610086'),
(21, 'core', '0002_alter_user_created_at_alter_user_referal_code_and_more', '2023-07-10 04:39:48.689880'),
(22, 'core', '0003_alter_user_created_at_alter_user_referal_code_and_more', '2023-07-10 04:39:48.717587'),
(23, 'core', '0004_alter_user_created_at_alter_user_referal_code_and_more', '2023-07-10 04:48:08.066752'),
(24, 'core', '0005_userrank_points_alter_user_created_at_and_more', '2023-07-10 07:59:33.197947'),
(25, 'core', '0006_alter_user_created_at_alter_user_updated_at_and_more', '2023-07-13 05:45:46.934449'),
(26, 'core', '0007_emailservice_alter_status_activity_time_and_more', '2023-07-13 07:04:41.939129'),
(27, 'core', '0008_emailservice_status_alter_status_activity_time_and_more', '2023-07-13 07:05:23.383478'),
(28, 'core', '0009_alter_emailservice_service_and_more', '2023-07-13 07:42:06.824628'),
(29, 'core', '0010_user_member_plan_alter_status_activity_time_and_more', '2023-07-13 10:51:46.872198'),
(30, 'core', '0011_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-13 10:53:53.897649'),
(31, 'core', '0012_user_activation_date_alter_status_activity_time_and_more', '2023-07-13 10:55:47.260430'),
(32, 'core', '0013_user_paid_members_alter_status_activity_time_and_more', '2023-07-13 11:12:34.663650'),
(33, 'core', '0014_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-13 11:12:52.877110'),
(34, 'core', '0015_membership_alter_status_activity_time_and_more', '2023-07-13 11:37:32.571834'),
(35, 'core', '0016_membership_refferal_commision_and_more', '2023-07-13 11:54:28.696723'),
(36, 'core', '0017_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 04:18:09.708013'),
(37, 'core', '0018_withdrawsettingmodel_alter_status_activity_time_and_more', '2023-07-14 04:48:56.505884'),
(38, 'core', '0019_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 05:04:09.014936'),
(39, 'core', '0020_membership_points_alter_status_activity_time_and_more', '2023-07-14 05:11:46.807161'),
(40, 'core', '0021_membership_status_alter_status_activity_time_and_more', '2023-07-14 05:37:46.332026'),
(41, 'core', '0022_usermembership_date_alter_status_activity_time_and_more', '2023-07-14 05:55:23.951092'),
(42, 'core', '0023_remove_withdrawsettingmodel_currency_and_more', '2023-07-14 07:23:59.622543'),
(43, 'core', '0024_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:30:59.684170'),
(44, 'core', '0025_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:30:59.740592'),
(45, 'core', '0026_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:46:05.649175'),
(46, 'core', '0027_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:47:48.886490'),
(47, 'core', '0028_delete_withdrawsettingmodel_and_more', '2023-07-14 07:52:14.292788'),
(48, 'core', '0029_withdrawsettingmodel_alter_status_activity_time_and_more', '2023-07-14 07:53:56.930143'),
(49, 'core', '0030_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:55:30.822166'),
(50, 'core', '0031_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:56:21.553718'),
(51, 'core', '0032_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:56:29.679372'),
(52, 'core', '0033_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:56:49.030341'),
(53, 'core', '0034_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:57:16.913433'),
(54, 'core', '0035_withdrawsettingmodel_max_amount_and_more', '2023-07-14 07:58:19.196518'),
(55, 'core', '0036_ticketmodel_title_alter_status_activity_time_and_more', '2023-07-14 11:18:23.711904'),
(56, 'core', '0037_alter_status_activity_time_alter_ticketmodel_answer_and_more', '2023-07-14 11:23:59.441998'),
(57, 'core', '0038_remove_user_member_plan_alter_status_activity_time_and_more', '2023-07-15 11:03:27.105992'),
(58, 'core', '0039_user_phone_no_alter_status_activity_time_and_more', '2023-07-20 11:35:33.546736'),
(59, 'core', '0040_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-21 04:57:35.351861'),
(60, 'userapp', '0001_initial', '2023-07-21 04:57:35.486718'),
(61, 'core', '0041_remove_transactions_transactions_transactions_amount_and_more', '2023-07-24 05:15:18.115622'),
(62, 'core', '0042_transactions_address_transactions_type_and_more', '2023-07-24 05:22:37.027442'),
(63, 'core', '0043_login_history_city_login_history_country_and_more', '2023-07-24 08:32:35.945840'),
(64, 'core', '0044_plansmodel_alter_status_activity_time_and_more', '2023-07-26 05:36:03.999522'),
(65, 'core', '0045_membership_plan_id_alter_status_activity_time_and_more', '2023-07-26 05:37:49.989775'),
(66, 'core', '0046_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-29 09:38:45.032360'),
(67, 'default', '0001_initial', '2023-07-29 09:38:45.305661'),
(68, 'social_auth', '0001_initial', '2023-07-29 09:38:45.309167'),
(69, 'default', '0002_add_related_name', '2023-07-29 09:38:45.327119'),
(70, 'social_auth', '0002_add_related_name', '2023-07-29 09:38:45.330110'),
(71, 'default', '0003_alter_email_max_length', '2023-07-29 09:38:45.355490'),
(72, 'social_auth', '0003_alter_email_max_length', '2023-07-29 09:38:45.357652'),
(73, 'default', '0004_auto_20160423_0400', '2023-07-29 09:38:45.375915'),
(74, 'social_auth', '0004_auto_20160423_0400', '2023-07-29 09:38:45.378729'),
(75, 'social_auth', '0005_auto_20160727_2333', '2023-07-29 09:38:45.404784'),
(76, 'social_django', '0006_partial', '2023-07-29 09:38:45.454158'),
(77, 'social_django', '0007_code_timestamp', '2023-07-29 09:38:45.509891'),
(78, 'social_django', '0008_partial_timestamp', '2023-07-29 09:38:45.562226'),
(79, 'social_django', '0009_auto_20191118_0520', '2023-07-29 09:38:45.645639'),
(80, 'social_django', '0010_uid_db_index', '2023-07-29 09:38:45.705084'),
(81, 'social_django', '0011_alter_id_fields', '2023-07-29 09:38:45.967481'),
(82, 'social_django', '0002_add_related_name', '2023-07-29 09:38:45.975594'),
(83, 'social_django', '0001_initial', '2023-07-29 09:38:45.982734'),
(84, 'social_django', '0005_auto_20160727_2333', '2023-07-29 09:38:45.986227'),
(85, 'social_django', '0003_alter_email_max_length', '2023-07-29 09:38:45.989225'),
(86, 'social_django', '0004_auto_20160423_0400', '2023-07-29 09:38:45.991224'),
(87, 'account', '0001_initial', '2023-07-29 10:13:02.275341'),
(88, 'account', '0002_email_max_length', '2023-07-29 10:13:02.313838'),
(89, 'socialaccount', '0001_initial', '2023-07-29 10:13:02.615868'),
(90, 'socialaccount', '0002_token_max_lengths', '2023-07-29 10:13:02.692346'),
(91, 'socialaccount', '0003_extra_data_default_dict', '2023-07-29 10:13:02.739183'),
(92, 'core', '0047_newsmodel_alter_status_activity_time_and_more', '2023-08-02 05:14:35.370863'),
(93, 'core', '0048_newsmodel_datato_alter_newsmodel_date_and_more', '2023-08-02 05:23:38.736643'),
(94, 'core', '0049_appsettings_alter_newsmodel_date_and_more', '2023-08-03 09:35:10.504275'),
(95, 'core', '0050_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-03 11:48:14.986323'),
(96, 'core', '0051_alter_appsettings_aboutus_alter_newsmodel_date_and_more', '2023-08-03 11:58:33.989770'),
(97, 'core', '0052_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-04 06:13:38.108602'),
(98, 'core', '0053_useraddressdetail_country_alter_newsmodel_date_and_more', '2023-08-04 06:15:20.751118'),
(99, 'core', '0054_membership_directincomepercent_alter_newsmodel_date_and_more', '2023-08-04 07:45:04.389009'),
(100, 'core', '0055_levels_fifthpoints_levels_forthpoints_and_more', '2023-08-04 08:15:55.855202'),
(101, 'core', '0056_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-04 10:42:04.569555'),
(102, 'core', '0057_usermembership_status_alter_newsmodel_date_and_more', '2023-08-05 06:14:02.945151'),
(103, 'core', '0058_wallet_reserved_balance_alter_newsmodel_date_and_more', '2023-08-05 10:47:39.476782'),
(104, 'core', '0059_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-05 10:56:07.835004'),
(105, 'core', '0060_userreferral_refferal_income_alter_newsmodel_date_and_more', '2023-08-05 10:59:01.677275'),
(106, 'core', '0061_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-05 11:13:28.471577'),
(107, 'core', '0062_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-05 11:24:29.407995'),
(108, 'core', '0063_rename_refferal_income_levelincome_level_income_and_more', '2023-08-05 11:27:26.902675'),
(109, 'core', '0064_levels_plan_id_alter_newsmodel_date_and_more', '2023-08-05 12:11:58.366768'),
(110, 'core', '0065_remove_levels_plan_id_alter_newsmodel_date_and_more', '2023-08-05 12:13:49.540790'),
(111, 'core', '0066_fastrackmodel_income_alter_newsmodel_date_and_more', '2023-08-07 06:33:23.891495'),
(112, 'core', '0067_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 06:33:30.834733'),
(113, 'core', '0068_fastrackmodel_status_alter_newsmodel_date_and_more', '2023-08-07 06:40:37.759568'),
(114, 'core', '0069_fastrackmodel_right_child_and_more', '2023-08-07 06:55:00.499281'),
(115, 'core', '0070_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 07:03:18.727520'),
(116, 'core', '0071_remove_fastrackmodel_left_child_and_more', '2023-08-07 07:05:27.610306'),
(117, 'core', '0072_fastrackmodel_left_child_fastrackmodel_right_child_and_more', '2023-08-07 07:05:56.599335'),
(118, 'core', '0073_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 07:13:50.299134'),
(119, 'core', '0074_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 07:18:22.082972'),
(120, 'core', '0075_fastrackmodel_plan_id_alter_newsmodel_date_and_more', '2023-08-07 08:08:40.756359'),
(121, 'core', '0076_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 08:27:00.625026'),
(122, 'core', '0077_ticketmodel_date_alter_newsmodel_date_and_more', '2023-08-08 10:10:13.563289'),
(123, 'core', '0078_remove_membership_amount_membership_max_amount_and_more', '2023-08-11 12:21:12.524390'),
(124, 'core', '0079_membership_overall_roi_alter_newsmodel_date_and_more', '2023-08-11 12:35:20.677361'),
(125, 'core', '0080_usermembership_roi_recieved_alter_newsmodel_date_and_more', '2023-08-14 07:06:07.910023'),
(126, 'core', '0081_remove_levels_fifthpoints_remove_levels_forthpoints_and_more', '2023-08-16 05:09:25.773937'),
(127, 'core', '0082_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-16 06:17:43.854704'),
(128, 'core', '0083_userstaking_roi_recieved_alter_newsmodel_date_and_more', '2023-08-16 06:27:19.206592'),
(129, 'core', '0084_appsettings_status_alter_newsmodel_date_and_more', '2023-08-19 06:45:57.869475'),
(130, 'core', '0085_gallaryimages_alter_newsmodel_date_and_more', '2023-08-19 12:13:12.499545'),
(131, 'core', '0086_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-20 12:05:53.244818'),
(132, 'core', '0087_userwithdrawls_type_alter_newsmodel_date_and_more', '2023-08-20 12:38:25.554183'),
(133, 'core', '0088_userwithdrawls_date_alter_newsmodel_date_and_more', '2023-08-20 13:34:57.792780'),
(134, 'core', '0089_transactions_user_id_alter_newsmodel_date_and_more', '2023-08-20 14:43:49.243812'),
(135, 'core', '0090_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-20 14:52:36.141155'),
(136, 'core', '0091_alter_newsmodel_date_alter_ptransfer_date_and_more', '2023-08-20 14:53:40.984782'),
(137, 'core', '0092_alter_newsmodel_date_alter_ptransfer_date_and_more', '2023-08-21 05:45:43.301736'),
(138, 'core', '0093_youtubevideo_alter_farmingroilogs_date_and_more', '2023-08-22 05:03:41.791185'),
(139, 'core', '0094_farmingroilogs_roi_alter_farmingroilogs_date_and_more', '2023-08-22 07:59:58.279261'),
(140, 'core', '0095_ptransfer_currency_alter_farmingroilogs_date_and_more', '2023-08-23 13:13:37.383677'),
(141, 'core', '0096_remove_rank_points_rank_business_required_rank_image_and_more', '2023-08-24 04:53:06.427693'),
(142, 'core', '0097_rank_status_alter_farmingroilogs_date_and_more', '2023-08-24 05:03:35.249526'),
(143, 'core', '0098_cofounderclub_alter_farmingroilogs_date_and_more', '2023-08-24 06:10:54.707293'),
(144, 'core', '0099_usercofounderclub_date_alter_farmingroilogs_date_and_more', '2023-08-24 06:17:44.642557'),
(145, 'core', '0100_alter_cofounderclub_club_alter_cofounderclub_status_and_more', '2023-08-24 06:43:08.028627'),
(146, 'core', '0101_userrank_status_alter_farmingroilogs_date_and_more', '2023-08-24 07:00:31.284959'),
(147, 'core', '0102_userrank_overallbusiness_alter_farmingroilogs_date_and_more', '2023-08-24 07:04:38.297866'),
(148, 'core', '0103_userrank_date_alter_farmingroilogs_date_and_more', '2023-08-24 07:16:47.627704'),
(149, 'core', '0104_userunlockedlevel_plan_id_userunlockedlevel_status_and_more', '2023-08-24 11:06:06.136193'),
(150, 'core', '0105_remove_userunlockedlevel_plan_id_and_more', '2023-08-24 11:37:29.368863'),
(151, 'core', '0106_user_business_alter_farmingroilogs_date_and_more', '2023-08-26 05:23:40.040408'),
(152, 'core', '0107_alter_farmingroilogs_date_alter_newsmodel_date_and_more', '2023-08-26 05:33:01.583619'),
(153, 'core', '0108_levelincome_date_alter_farmingroilogs_date_and_more', '2023-08-26 05:44:31.199512'),
(154, 'core', '0109_remove_userrank_overallbusiness_and_more', '2023-08-26 06:07:58.495868'),
(155, 'core', '0110_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-08-26 06:09:55.896265'),
(156, 'core', '0111_remove_usercofounderclub_reward_recieved_and_more', '2023-08-26 06:42:32.839526'),
(157, 'core', '0112_usercofounderclub_reward_recieved_and_more', '2023-08-26 06:44:29.898006'),
(158, 'core', '0113_userrank_income_alter_businesslogs_date_and_more', '2023-08-26 06:52:58.516902'),
(159, 'core', '0114_levelincome_status_alter_businesslogs_date_and_more', '2023-08-26 09:14:02.744634'),
(160, 'core', '0115_gallaryimages_aboutus_alter_businesslogs_date_and_more', '2023-08-26 09:51:49.930474'),
(161, 'core', '0116_rename_aboutus_gallaryimages_title_and_more', '2023-08-26 09:55:51.687212');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0tspg1r34oqjvpy6jh5vgxw720g5acf4', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZo9J:BN9nRN02shDPEc10razh7SvdiCDasxYWb9nCzYkbgyo', '2023-09-09 07:56:01.067517'),
('b4e1yzxmdcrlflxke9v2c3e3ocx753kb', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZrYQ:sYtrBK3F5YtObJxNFqO-jgVQ5FfQOuB0cFHGNDr-EBU', '2023-09-09 11:34:10.312498'),
('cngr36xz9x7moohcra88wfvdcd9mwltv', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiRDhzd09YS0lYQllRTHFucWFtMkxjczFFVkQ5ZzFFTU8ifQ:1qQLeR:TI6RI3784pN1sjA-JEcuprhmjaf0W658OhejDAKL81s', '2023-08-14 05:41:03.548750'),
('g2hm2q0lnf5pz8kagcc008tuvvbi0ga5', '.eJxVkEFPhDAQhf9Lz0paoNvFk17UGFck68FbM7RTaCh0QyFxY_zvtuse5DSZ9-abN5lv0nnfObz1sC59LsMCC5I78vYZXvFjbZqhfhTP5_3LsTmcjjWyobd4eP8iN0QmQq4BZ2l1RFjOt2oLasApWcErC04qP2N2VUP2F5w9XUr9kOK3fA-hjzAWWpcMdwY516VhplVamQJEpSktKg77Co2hQpSM53FIV5xyTUG0O8aMaOPSa_5ltYOwSOc7O_07cPOECOAI1kUdRpjuz_6U2kz5MVqzd-lB6ULy8wvzp2vB:1qaUiv:OnlkEsnOjSQFPH4tbHkdtzOWkvH2ALz-YRpzhVTRRXE', '2023-09-11 05:23:37.209646'),
('hap09kaelkrx9e82phi5kjrs49drxc8y', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qXz9d:zkyRcnfh6lDmsmLzlgOgIfNgotBpTnNlxYt_363W8bA', '2023-09-04 07:16:49.954014'),
('hi1wz84e679wfej8zejtjhm5x0fizw77', 'eyJlbWFpbCI6InNodWJoYW1ib3hmeUBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4ifQ:1qXNXn:CxAHzTVGFjHERvN5X85OpWcfFrzdOfOwUjeu6HwGEx4', '2023-09-02 15:07:15.340175'),
('hwfba1wcdhswflkyaebtgbnb7u1vyh74', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiUWJzR3VzdEk0ZnU4ek1WMGxzSXFsbUo2c0VCSGF3ZU8ifQ:1qPgYQ:2q6kJEpUsauF07RyzZ3w4EgRZGe8XmOUqabqUsisA3g', '2023-08-12 09:48:06.239172'),
('jcb80jcobajwoy76oszrh79e9zwkavwf', 'eyJlbWFpbCI6InNodWJoYW1ib3hmeUBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4ifQ:1qaJCk:1C5A1_gZKG5eBH1lfejAcYk4bQfQK6IbkxW6ZvZl8r8', '2023-09-10 17:05:38.610165'),
('kbssk4dfpm2uijibg6cpmxmbxyyw6gxe', 'e30:1qNsmM:A_OhqFFSGsWQtlshPkfubOHR9KAPAx4QHvrC5bOTfEo', '2023-08-07 10:27:02.095952'),
('le86bs9uj50uep2puqff8d1ysy2rtuhp', 'eyJlbWFpbCI6InNhY2hpbmJveGZ5QGdtYWlsLmNvbSIsInJvbGUiOiJ1c2VyIn0:1qMpaP:KLW4yo13IT8KTBlVdFV-qX06AaNkCTOZaWP5Cc9tFG4', '2023-08-04 12:50:21.881240'),
('m8pqyztf92uu04732qxn06gwqek1f69a', '.eJxVjsEKwjAQRP8lZy1Jumlab-JBKRZFEb2FJE3aam3QRBDEf7dqD3padnZn5j2QkLdQi5s3V9GUaIIIBTT6VZXUJ9O9T97pRrZCu6uJBtVHlXNVa6L5Z6ymvY3--2vp696MIbPAE44tozZlmYQMbEwNIalW2gKxvExSDIqyOCM0AawUJxYwZTxmRPWhQ_8nupU-iNZVTfcD-GUZOzlQ_O3CBxlM_7U9H-K7DQVJl5fDfG1m-6TLF9Vxs8uh8AuGni9Wd1t4:1qPhVh:AvK3u5aXmgs-odl0YoRWTXx3hv-OWG6ttDJMqFDSTiE', '2023-08-12 10:49:21.969154'),
('mmm3sk6yb7gdcbex6cyajr4iyv3689rn', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZA9I:PjX8x2qnHP9JFDcHfaw0Wh2SJ3qBr8v0O8eyQXFzFk0', '2023-09-07 13:13:20.626249'),
('pqs2vw1mops7sjj765s8rrp70qcqtvcj', 'eyJyZXNldCI6IlRydWUiLCJlbWFpbCI6ImFtYXJqb3RzaW5naEBnbWFpbC5jb20ifQ:1qZskN:rhk3J_59wZgWlADwEbCL97MzTnyw5tlvE1bLP_s4uIo', '2023-09-09 12:50:35.033324'),
('szmqxk6aqe4sgo7au3z9qcb71hv97a64', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qaJEI:hWHho48KDcXdqkK5LJi3457_4JaWal7bC8JNCG3W4bg', '2023-09-10 17:07:14.787519'),
('ufnq4d46s6ufq9i3veoyfm4vym85rj7t', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZrEH:zGhk3tdsqRxbRmXmpuEr-mm2_GZA_2bANEp4jm2VKJ8', '2023-09-09 11:13:21.787768'),
('vjpf7gbj61olkm0bjctfylj2hz2um125', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qOH9J:s3rgBZLDQBtLcKTY3HX-PWq4e46DVMM4MpOq9Uq_y-c', '2023-08-08 12:28:21.496346'),
('w18mcml6udvai3m01stpf8ahe0rugcbt', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZoHq:Yzpc-VhxE1-7nFQgdbyupEPLZMfDbSZ-9BFIzsAXJ7I', '2023-09-09 08:04:50.991745'),
('zsvix2b2zrt7wykeabeidzlazlal9vcd', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiQUk4UjNJZmtkSmhnTHhpWVdKbjZLTkg4a09CWFdybHciLCJlbWFpbCI6ImthcmFucmFuYUBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qRsIR:LZFIBwfBoxNvt1N2yGiyv5_1bZJFaY0aNP42bczbapI', '2023-08-18 10:44:39.442752');

-- --------------------------------------------------------

--
-- Table structure for table `farmingroilogs`
--

CREATE TABLE `farmingroilogs` (
  `id` bigint(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `roi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fastrackmodel`
--

CREATE TABLE `fastrackmodel` (
  `id` bigint(20) NOT NULL,
  `income` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `left_child_id` bigint(20) DEFAULT NULL,
  `level_id` bigint(20) NOT NULL,
  `parent_id_id` bigint(20) NOT NULL,
  `right_child_id` bigint(20) DEFAULT NULL,
  `plan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) NOT NULL,
  `points` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `points`) VALUES
(1, '20'),
(2, '10'),
(3, '5'),
(4, '5'),
(5, '5'),
(6, '5'),
(7, '5'),
(8, '5'),
(9, '5'),
(10, '5'),
(11, '1'),
(12, '1'),
(13, '1'),
(14, '1'),
(15, '1'),
(16, '1'),
(17, '1'),
(18, '1'),
(19, '1'),
(20, '1'),
(21, '0.5'),
(22, '0.5'),
(23, '0.5'),
(24, '0.5'),
(25, '0.5'),
(26, '0.5'),
(27, '0.5'),
(28, '0.5'),
(29, '0.5'),
(30, '0.5');

-- --------------------------------------------------------

--
-- Table structure for table `ptransfer`
--

CREATE TABLE `ptransfer` (
  `id` bigint(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `user_id_id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `currency` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ptransfer`
--

INSERT INTO `ptransfer` (`id`, `status`, `type`, `date`, `amount`, `child_id_id`, `user_id_id`, `wallet_id`, `currency`) VALUES
(1, '1', '1', '2023-08-20 15:11:05.225476', '30', 112, 114, 106, 'USDT'),
(2, '1', '1', '2023-08-20 15:11:05.225476', '30', 112, 114, 106, 'USDT'),
(3, '1', '1', '2023-08-20 15:33:35.686436', '10', 112, 114, 106, 'USDT'),
(4, '1', '1', '2023-08-20 15:45:57.358968', '30', 112, 114, 106, 'USDT'),
(5, '1', '1', '2023-08-23 13:15:42.687089', '30', 29, 114, 106, 'USDT'),
(6, '1', '1', '2023-08-23 13:15:42.687089', '20', 29, 114, 106, 'USDT');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` bigint(20) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `royality_income` varchar(200) NOT NULL,
  `business_required` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `reward` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `rank`, `royality_income`, `business_required`, `image`, `reward`, `status`) VALUES
(7, 'Star', '500', '7500', 'android.jpg', 'Android Phone', '1'),
(8, 'Silver', '1000', '15000', 'android.jpg', 'iPhone', '1'),
(9, 'Gold', '2000', '30000', 'android.jpg', 'Mac Book', '1'),
(10, 'Perl', '5000', '75000', 'android.jpg', 'Royal Enfield', '1'),
(11, 'Platinum', '10000', '150000', 'android.jpg', 'Beleno', '1'),
(12, 'Ruby', '20000', '600000', 'android.jpg', 'MG Hector', '1'),
(13, 'Emerald', '40000', '1500000', 'android.jpg', 'Fortuner', '1'),
(14, 'Diamond', '70000', '3000000', 'android.jpg', 'BMW', '1'),
(15, 'Black Diamond', '150000', '6000000', 'android.jpg', 'Range Rover', '1'),
(16, 'Kohinoor', '500000', '15000000', 'android.jpg', 'Banglow', '1');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` bigint(20) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` bigint(20) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` bigint(20) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL CHECK (`next_step` >= 0),
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` bigint(20) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_auth_usersocialauth`
--

INSERT INTO `social_auth_usersocialauth` (`id`, `provider`, `uid`, `extra_data`, `user_id`, `created`, `modified`) VALUES
(9, 'google-oauth2', 'ss969856@gmail.com', '{\"auth_time\": 1691221314, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfB_byD0GJ6eN-huU83A31a9NSKWJfJ2yFhlEgPGapQr7tkG72uBmSNVtX0pDOqrrLXU2vGvOiWOT_rum1tjZu61rDM-iuKAX652Z8PUdJmQ934VLkyur6L6zmJNoCCqFYTWKar_h8uM2l9G5vFpCgG-jEWsaCgYKARoSARISFQHsvYlsaUwJdBZH9ALvYQ0u9N-yvg0163\"}', 125, '2023-07-29 11:00:17.485260', '2023-08-05 07:41:54.466054'),
(10, 'google-oauth2', 'shubhamboxfy@gmail.com', '{\"auth_time\": 1690782435, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AbVbY6OWVfY0GGKCtW_XCLYQgL7uQyC5PxMBw9WQm3N26CsSEqnIhoQjd1ewhy8dL3Ud7RK-shSHj1C3rRwSyzgxgxS2cKUqSTQ-gK9CImzuVg9-JneoUoQMVc1vvIGtQOxxT_WUjJFmezz0LkfmSQPV3bS0aCgYKAdcSARMSFQFWKvPlN81MpZ8VsGEF2awOqgcnAg0163\"}', 125, '2023-07-31 05:44:00.904790', '2023-07-31 05:47:15.346231');

-- --------------------------------------------------------

--
-- Table structure for table `stakingroilogs`
--

CREATE TABLE `stakingroilogs` (
  `id` bigint(20) NOT NULL,
  `roi` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `coin` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `network` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usermembership`
--

CREATE TABLE `usermembership` (
  `id` bigint(20) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `booster_plan` varchar(200) NOT NULL,
  `max_roi` varchar(200) NOT NULL,
  `roi_recieved` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usermembership`
--

INSERT INTO `usermembership` (`id`, `amount`, `plan_id`, `user_id`, `date`, `status`, `booster_plan`, `max_roi`, `roi_recieved`) VALUES
(30, '50', 12, 114, '2023-08-24 07:39:29.021500', '1', 'False', '200', '0'),
(36, '501', 14, 114, '2023-08-24 10:58:31.506426', '1', 'False', '200', '0'),
(37, '70', 12, 147, '2023-08-24 12:23:48.748187', '1', 'False', '200', '0'),
(38, '290', 13, 147, '2023-08-24 12:35:40.522764', '1', 'False', '200', '0'),
(39, '200', 12, 149, '2023-08-26 12:41:45.423908', '1', 'False', '200', '0'),
(40, '248', 12, 150, '2023-08-28 05:18:45.859997', '1', 'False', '200', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified_at` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `updated_at` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `remember_token` varchar(200) NOT NULL,
  `referal_by` varchar(200) DEFAULT NULL,
  `referal_code` varchar(200) NOT NULL,
  `activation_date` varchar(200) NOT NULL,
  `paid_members` varchar(200) NOT NULL,
  `phone_no` varchar(200) DEFAULT NULL,
  `business` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `verified_at`, `role`, `status`, `updated_at`, `created_at`, `remember_token`, `referal_by`, `referal_code`, `activation_date`, `paid_members`, `phone_no`, `business`) VALUES
(1, 'pbkdf2_sha256$390000$BIkuyQi008rbk97NKMxDhk$9uO/Im7rbYmsx2NPsNzyGigf+865ysMeCNAl4TC5UUY=', NULL, 1, 'shubham', 'Shubham', 'Sharma', 1, 1, '2023-07-09 11:28:45.501935', 'shubhamboxfy@gmail.com', 'True', 'admin', '1', '2023-07-09 11:28:26.336200', '1691230283', '9568', NULL, 'b89735d6', 'N/A', 'True', NULL, '0'),
(29, '123', NULL, 0, 'shubhamsharma', 'shubham', 'sharma', 0, 0, '2023-07-09 14:07:13.391810', 'shubham@gmail.com', 'True', 'user', '1', '2023-07-09 14:07:08.924798', '2023-07-09 14:07:08.924798', 'False', '20e1960e', 'e47eeaf2', 'N/A', 'True', NULL, '0'),
(31, '123', NULL, 0, 'abc', 'shubham', 'sharma', 0, 0, '2023-07-09 14:08:12.905568', 'abc@gmail.com', 'True', 'user', '1', '2023-07-09 14:08:05.734143', '2023-07-09 14:08:05.734143', 'False', NULL, '065b55ff', '2023-07-14 05:55:15.365672', 'True', NULL, '0'),
(32, '123', NULL, 0, 'abc1', 'shubham', 'sharma', 0, 0, '2023-07-09 14:09:20.081692', 'abc1@gmail.com', 'True', 'user', '1', '2023-07-09 14:08:46.157874', '2023-07-09 14:08:46.157874', 'False', '065b55ff', '1e7381fb', 'N/A', 'True', NULL, '0'),
(33, '123', NULL, 0, 'abc2', 'shubham', 'sharma', 0, 0, '2023-07-09 14:10:20.342430', 'abc2@gmail.com', 'True', 'user', '1', '2023-07-09 14:10:08.539224', '2023-07-09 14:10:08.539224', 'False', '065b55ff', '4f8e0f33', 'N/A', 'True', NULL, '0'),
(34, '123', NULL, 0, 'abc3', 'shubham', 'sharma', 0, 0, '2023-07-09 14:11:08.023880', 'abc3@gmail.com', 'True', 'user', '1', '2023-07-09 14:11:04.023583', '2023-07-09 14:11:04.023583', 'False', '065b55ff', '70a0253f', 'N/A', 'True', NULL, '0'),
(35, '123', NULL, 0, 'abc4', 'shubham', 'sharma', 0, 0, '2023-07-09 14:11:24.451486', 'abc4@gmail.com', 'True', 'user', '1', '2023-07-09 14:11:16.433092', '2023-07-09 14:11:16.433092', 'False', '065b55ff', '7805afb1', 'N/A', 'True', NULL, '0'),
(36, '123', NULL, 0, 'abc5', 'shubham', 'sharma', 0, 0, '2023-07-09 14:13:26.987962', 'abc5@gmail.com', 'True', 'user', '1', '2023-07-09 14:12:01.640297', '2023-07-09 14:12:01.640297', 'False', '065b55ff', '92f7c221', 'N/A', 'True', NULL, '0'),
(37, '123', NULL, 0, 'abc6', 'shubham', 'sharma', 0, 0, '2023-07-09 14:14:14.750779', 'abc6@gmail.com', 'True', 'user', '1', '2023-07-09 14:13:57.926346', '2023-07-09 14:13:57.926346', 'False', '065b55ff', 'd84799e6', 'N/A', 'True', NULL, '0'),
(39, '123', NULL, 0, 'abc7', 'shubham', 'sharma', 0, 0, '2023-07-09 14:15:29.813509', 'abc7@gmail.com', 'True', 'user', '1', '2023-07-09 14:15:26.299397', '2023-07-09 14:15:26.299397', 'False', '1e7381fb', '0cf44234', 'N/A', 'True', NULL, '0'),
(40, '123', NULL, 0, 'abc8', 'shubham', 'sharma', 0, 0, '2023-07-09 14:15:48.980036', 'abc8@gmail.com', 'True', 'user', '1', '2023-07-09 14:15:46.170955', '2023-07-09 14:15:46.171965', 'False', '1e7381fb', '18cc926a', 'N/A', 'True', NULL, '0'),
(41, '123', NULL, 0, 'abc9', 'shubham', 'sharma', 0, 0, '2023-07-09 14:17:50.357711', 'abc9@gmail.com', 'True', 'user', '1', '2023-07-09 14:16:56.322408', '2023-07-09 14:16:56.322408', 'False', '7805afb1', '429cae10', 'N/A', 'True', NULL, '0'),
(43, '123', NULL, 0, 'abc10', 'shubham', 'sharma', 0, 0, '2023-07-09 14:18:13.539658', 'abc10@gmail.com', 'True', 'user', '1', '2023-07-09 14:18:09.431368', '2023-07-09 14:18:09.431368', 'False', '7805afb1', '6e3038d7', 'N/A', 'True', NULL, '0'),
(47, '123', NULL, 0, 'abc13', 'shubham', 'sharma', 0, 0, '2023-07-10 08:06:03.630495', 'abc13@gmail.com', 'True', 'user', '1', '2023-07-10 08:05:57.043815', '2023-07-10 08:05:57.043815', 'False', '7805afb1', '4933d1aa', 'N/A', 'True', NULL, '0'),
(48, '123', NULL, 0, 'abc14', 'shubham', 'sharma', 0, 0, '2023-07-10 08:06:17.965007', 'abc14@gmail.com', 'True', 'user', '1', '2023-07-10 08:05:57.043815', '2023-07-10 08:05:57.043815', 'False', '7805afb1', 'a6046e94', 'N/A', 'True', NULL, '0'),
(49, 'pbkdf2_sha256$390000$32lAvBpgJeyGUNdehBgEQT$vycRF77XjNKsz5AU0X4XeKYQMyrAVsdmlhak8oitdzE=', NULL, 1, 'shubhamsharma001', '', '', 1, 1, '2023-07-10 11:01:12.399262', 'shubhamsharma@gmail.com', 'True', 'user', '1', '2023-07-10 11:00:34.629803', '2023-07-10 11:00:34.630803', 'False', NULL, '3adb015a', 'N/A', 'True', NULL, '0'),
(50, '123', NULL, 0, 'jkl1', 'shubham', 'sharma', 0, 0, '2023-07-11 10:03:44.926882', 'jkl1@gmail.com', 'True', 'user', '1', '2023-07-11 09:59:35.892555', '2023-07-11 09:59:35.892555', 'False', '1e7381fb', '72fbe790', 'N/A', 'True', NULL, '0'),
(51, '123', NULL, 0, 'jkl2', 'shubham', 'sharma', 0, 0, '2023-07-11 10:03:57.568652', 'jkl2@gmail.com', 'True', 'user', '1', '2023-07-11 09:59:35.892555', '2023-07-11 09:59:35.892555', 'False', '1e7381fb', 'ce84590b', 'N/A', 'True', NULL, '0'),
(52, '123', NULL, 0, 'jkl3', 'shubham', 'sharma', 0, 0, '2023-07-11 10:04:10.218690', 'jkl3@gmail.com', 'True', 'user', '1', '2023-07-11 09:59:35.892555', '2023-07-11 09:59:35.892555', 'False', '1e7381fb', 'f6feb66f', 'N/A', 'True', NULL, '0'),
(53, '123', NULL, 0, 'jkl4', 'shubham', 'sharma', 0, 0, '2023-07-11 10:05:18.018038', 'jkl4@gmail.com', 'True', 'user', '1', '2023-07-11 09:59:35.892555', '2023-07-11 09:59:35.892555', 'False', '7805afb1', '14a963fe', 'N/A', 'True', NULL, '0'),
(54, '123', NULL, 0, 'jkl5', 'shubham', 'sharma', 0, 0, '2023-07-11 10:28:44.436391', 'jkl5@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '4f8e0f33', '99fd7fd4', 'N/A', 'True', NULL, '0'),
(55, '123', NULL, 0, 'jkl6', 'shubham', 'sharma', 0, 0, '2023-07-11 10:28:54.340864', 'jkl6@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '4f8e0f33', '149fed70', 'N/A', 'True', NULL, '0'),
(56, '123', NULL, 0, 'jkl7', 'shubham', 'sharma', 0, 0, '2023-07-11 10:29:03.013546', 'jkl7@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '4f8e0f33', 'bf8c08fe', 'N/A', 'True', NULL, '0'),
(57, '123', NULL, 0, 'jkl8', 'shubham', 'sharma', 0, 0, '2023-07-11 10:29:12.201106', 'jkl8@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '4f8e0f33', 'edf94434', 'N/A', 'True', NULL, '0'),
(58, '123', NULL, 0, 'jkl9', 'shubham', 'sharma', 0, 0, '2023-07-11 10:29:20.421342', 'jkl9@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '4f8e0f33', 'ba9a9b98', 'N/A', 'True', NULL, '0'),
(59, '123', NULL, 0, 'jkl10', 'shubham', 'sharma', 0, 0, '2023-07-11 10:30:15.754036', 'jkl10@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '70a0253f', '1d25142c', 'N/A', 'True', NULL, '0'),
(60, '123', NULL, 0, 'jkl11', 'shubham', 'sharma', 0, 0, '2023-07-11 10:30:26.881346', 'jkl11@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '70a0253f', '3292c1fd', 'N/A', 'True', NULL, '0'),
(61, '123', NULL, 0, 'jkl12', 'shubham', 'sharma', 0, 0, '2023-07-11 10:30:37.242290', 'jkl12@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '70a0253f', '07ee96ff', 'N/A', 'True', NULL, '0'),
(62, '123', NULL, 0, 'jkl13', 'shubham', 'sharma', 0, 0, '2023-07-11 10:30:46.516254', 'jkl13@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '70a0253f', '9f3bc078', 'N/A', 'True', NULL, '0'),
(63, '123', NULL, 0, 'jkl14', 'shubham', 'sharma', 0, 0, '2023-07-11 10:30:56.596414', 'jkl14@gmail.com', 'False', 'user', '1', '2023-07-11 10:09:04.278470', '2023-07-11 10:09:04.278470', 'False', '70a0253f', '55552012', 'N/A', 'True', NULL, '0'),
(64, '123', NULL, 0, 'jkl15', 'shubham', 'sharma', 0, 0, '2023-07-11 10:37:35.352748', 'jkl15@gmail.com', 'False', 'user', '1', '2023-07-11 10:37:02.275083', '2023-07-11 10:37:02.275083', 'False', '92f7c221', '2d934495', 'N/A', 'True', NULL, '0'),
(65, '123', NULL, 0, 'jkl16', 'shubham', 'sharma', 0, 0, '2023-07-11 10:37:48.743403', 'jkl16@gmail.com', 'False', 'user', '1', '2023-07-11 10:37:02.275083', '2023-07-11 10:37:02.275083', 'False', '92f7c221', 'b0b24940', 'N/A', 'True', NULL, '0'),
(66, '123', NULL, 0, 'jkl17', 'shubham', 'sharma', 0, 0, '2023-07-11 10:38:00.260228', 'jkl17@gmail.com', 'False', 'user', '1', '2023-07-11 10:37:02.275083', '2023-07-11 10:37:02.275083', 'False', '92f7c221', 'c1d85129', 'N/A', 'True', NULL, '0'),
(67, '123', NULL, 0, 'jkl18', 'shubham', 'sharma', 0, 0, '2023-07-11 10:38:13.081054', 'jkl18@gmail.com', 'False', 'user', '1', '2023-07-11 10:37:02.275083', '2023-07-11 10:37:02.275083', 'False', '92f7c221', 'cc9ee2da', 'N/A', 'True', NULL, '0'),
(68, '123', NULL, 0, 'jkl19', 'shubham', 'sharma', 0, 0, '2023-07-11 10:38:25.286873', 'jkl19@gmail.com', 'False', 'user', '1', '2023-07-11 10:37:02.275083', '2023-07-11 10:37:02.275083', 'False', '92f7c221', 'f97b804f', 'N/A', 'True', NULL, '0'),
(69, '123', NULL, 0, 'jkl20', 'shubham', 'sharma', 0, 0, '2023-07-11 10:39:53.839668', 'jkl20@gmail.com', 'False', 'user', '1', '2023-07-11 10:39:30.203942', '2023-07-11 10:39:30.203942', 'False', '92f7c221', 'f84d54ad', 'N/A', 'True', NULL, '0'),
(70, '123', NULL, 0, 'jkl21', 'shubham', 'sharma', 0, 0, '2023-07-11 10:41:45.338743', 'jkl21@gmail.com', 'False', 'user', '1', '2023-07-11 10:41:34.617669', '2023-07-11 10:41:34.617669', 'False', '92f7c221', '9ef9ad3f', 'N/A', 'True', NULL, '0'),
(71, '123', NULL, 0, 'jkl22', 'shubham', 'sharma', 0, 0, '2023-07-11 10:44:58.825144', 'jkl22@gmail.com', 'False', 'user', '1', '2023-07-11 10:42:35.732403', '2023-07-11 10:42:35.732403', 'False', '92f7c221', '199d225c', 'N/A', 'True', NULL, '0'),
(72, '123', NULL, 0, 'jkl23', 'shubham', 'sharma', 0, 0, '2023-07-11 10:45:52.878713', 'jkl23@gmail.com', 'False', 'user', '1', '2023-07-11 10:45:34.673770', '2023-07-11 10:45:34.673770', 'False', '92f7c221', 'be39e90b', 'N/A', 'True', NULL, '0'),
(73, '123', NULL, 0, 'jkl24', 'shubham', 'sharma', 0, 0, '2023-07-11 10:46:30.063279', 'jkl24@gmail.com', 'False', 'user', '1', '2023-07-11 10:46:16.585840', '2023-07-11 10:46:16.585840', 'False', '92f7c221', '003405cf', 'N/A', 'True', NULL, '0'),
(74, '123', NULL, 0, 'jkl25', 'shubham', 'sharma', 0, 0, '2023-07-11 10:47:25.430814', 'jkl25@gmail.com', 'False', 'user', '1', '2023-07-11 10:47:15.615444', '2023-07-11 10:47:15.615444', 'False', '92f7c221', 'a916a109', 'N/A', 'True', NULL, '0'),
(75, '123', NULL, 0, 'jkl26', 'shubham', 'sharma', 0, 0, '2023-07-11 10:51:06.785006', 'jkl26@gmail.com', 'False', 'user', '1', '2023-07-11 10:48:43.005536', '2023-07-11 10:48:43.005536', 'False', '92f7c221', '4f0b34ac', 'N/A', 'True', NULL, '0'),
(76, '123', NULL, 0, 'jkl27', 'shubham', 'sharma', 0, 0, '2023-07-11 10:51:33.654383', 'jkl27@gmail.com', 'False', 'user', '1', '2023-07-11 10:51:19.354848', '2023-07-11 10:51:19.354848', 'False', '92f7c221', 'e4ae29d6', 'N/A', 'True', NULL, '0'),
(77, '123', NULL, 0, 'jkl28', 'shubham', 'sharma', 0, 0, '2023-07-11 10:52:07.353351', 'jkl28@gmail.com', 'False', 'user', '1', '2023-07-11 10:51:54.625897', '2023-07-11 10:51:54.625897', 'False', '92f7c221', '3c08dcbf', 'N/A', 'True', NULL, '0'),
(78, '123', NULL, 0, 'jkl29', 'shubham', 'sharma', 0, 0, '2023-07-11 10:53:24.737963', 'jkl29@gmail.com', 'False', 'user', '1', '2023-07-11 10:53:12.939099', '2023-07-11 10:53:12.939099', 'False', '92f7c221', 'cceeb7c1', 'N/A', 'True', NULL, '0'),
(79, '123', NULL, 0, 'jkl30', 'shubham', 'sharma', 0, 0, '2023-07-11 10:54:04.426258', 'jkl30@gmail.com', 'False', 'user', '1', '2023-07-11 10:53:44.855175', '2023-07-11 10:53:44.855175', 'False', '92f7c221', '09b14f22', 'N/A', 'True', NULL, '0'),
(80, '123', NULL, 0, 'jkl31', 'shubham', 'sharma', 0, 0, '2023-07-11 10:54:49.977566', 'jkl31@gmail.com', 'False', 'user', '1', '2023-07-11 10:54:33.956641', '2023-07-11 10:54:33.956641', 'False', '92f7c221', '4f54f8db', 'N/A', 'True', NULL, '0'),
(81, '123', NULL, 0, 'jkl32', 'shubham', 'sharma', 0, 0, '2023-07-11 10:56:38.082456', 'jkl32@gmail.com', 'False', 'user', '1', '2023-07-11 10:56:26.845451', '2023-07-11 10:56:26.845451', 'False', '92f7c221', 'dbee07d2', 'N/A', 'True', NULL, '0'),
(82, '123', NULL, 0, 'jkl33', 'shubham', 'sharma', 0, 0, '2023-07-11 10:57:29.595737', 'jkl33@gmail.com', 'False', 'user', '1', '2023-07-11 10:57:15.388856', '2023-07-11 10:57:15.388856', 'False', '92f7c221', '4d2f7823', 'N/A', 'True', NULL, '0'),
(83, '123', NULL, 0, 'jkl34', 'shubham', 'sharma', 0, 0, '2023-07-11 11:01:36.929397', 'jkl34@gmail.com', 'False', 'user', '1', '2023-07-11 11:01:32.170724', '2023-07-11 11:01:32.170724', 'False', '92f7c221', '31783580', 'N/A', 'True', NULL, '0'),
(84, '123', NULL, 0, 'jkl35', 'shubham', 'sharma', 0, 0, '2023-07-11 11:03:08.111327', 'jkl35@gmail.com', 'False', 'user', '1', '2023-07-11 11:02:50.266672', '2023-07-11 11:02:50.266672', 'False', '92f7c221', '2efd173b', 'N/A', 'True', NULL, '0'),
(85, '123', NULL, 0, 'jkl36', 'shubham', 'sharma', 0, 0, '2023-07-11 11:06:41.423276', 'jkl36@gmail.com', 'False', 'user', '1', '2023-07-11 11:06:20.082467', '2023-07-11 11:06:20.082467', 'False', '92f7c221', '53dcc3d0', 'N/A', 'True', NULL, '0'),
(86, '123', NULL, 0, 'jkl37', 'shubham', 'sharma', 0, 0, '2023-07-11 11:08:43.315326', 'jkl37@gmail.com', 'False', 'user', '1', '2023-07-11 11:08:27.780972', '2023-07-11 11:08:27.780972', 'False', '92f7c221', '39143cb2', 'N/A', 'True', NULL, '0'),
(87, '123', NULL, 0, 'jkl38', 'shubham', 'sharma', 0, 0, '2023-07-11 11:10:24.626114', 'jkl38@gmail.com', 'False', 'user', '1', '2023-07-11 11:10:12.941349', '2023-07-11 11:10:12.941349', 'False', '92f7c221', '17269e0a', 'N/A', 'True', NULL, '0'),
(88, '123', NULL, 0, 'jkl39', 'shubham', 'sharma', 0, 0, '2023-07-11 11:11:35.061394', 'jkl39@gmail.com', 'False', 'user', '1', '2023-07-11 11:11:24.000913', '2023-07-11 11:11:24.000913', 'False', '92f7c221', '3d54a3b5', 'N/A', 'True', NULL, '0'),
(89, '123', NULL, 0, 'jkl40', 'shubham', 'sharma', 0, 0, '2023-07-11 11:13:43.305888', 'jkl40@gmail.com', 'False', 'user', '1', '2023-07-11 11:13:30.971075', '2023-07-11 11:13:30.971075', 'False', '92f7c221', 'd3082161', 'N/A', 'True', NULL, '0'),
(90, '123', NULL, 0, 'jkl41', 'shubham', 'sharma', 0, 0, '2023-07-11 11:15:47.308928', 'jkl41@gmail.com', 'False', 'user', '1', '2023-07-11 11:15:39.238856', '2023-07-11 11:15:39.238856', 'False', '92f7c221', '7ec74b1b', 'N/A', 'True', NULL, '0'),
(91, '123', NULL, 0, 'jkl42', 'shubham', 'sharma', 0, 0, '2023-07-11 11:19:14.263884', 'jkl42@gmail.com', 'False', 'user', '1', '2023-07-11 11:19:00.868889', '2023-07-11 11:19:00.868889', 'False', '92f7c221', '3c2e7f82', 'N/A', 'True', NULL, '0'),
(92, '123', NULL, 0, 'jkl43', 'shubham', 'sharma', 0, 0, '2023-07-11 11:19:56.553270', 'jkl43@gmail.com', 'False', 'user', '1', '2023-07-11 11:19:44.631679', '2023-07-11 11:19:44.631679', 'False', '92f7c221', '89bdf4d8', 'N/A', 'True', NULL, '0'),
(93, '123', NULL, 0, 'jkl44', 'shubham', 'sharma', 0, 0, '2023-07-11 11:20:46.250913', 'jkl44@gmail.com', 'False', 'user', '1', '2023-07-11 11:20:35.002179', '2023-07-11 11:20:35.002179', 'False', '92f7c221', 'f179abe1', 'N/A', 'True', NULL, '0'),
(94, '123', NULL, 0, 'jkl45', 'shubham', 'sharma', 0, 0, '2023-07-11 11:22:23.936328', 'jkl45@gmail.com', 'False', 'user', '1', '2023-07-11 11:21:18.125107', '2023-07-11 11:21:18.125107', 'False', '92f7c221', '477c4058', 'N/A', 'True', NULL, '0'),
(95, '123', NULL, 0, 'jkl46', 'shubham', 'sharma', 0, 0, '2023-07-11 11:22:58.113497', 'jkl46@gmail.com', 'False', 'user', '1', '2023-07-11 11:22:49.432975', '2023-07-11 11:22:49.432975', 'False', '92f7c221', '87bf52da', 'N/A', 'True', NULL, '0'),
(96, '123', NULL, 0, 'jkl47', 'shubham', 'sharma', 0, 0, '2023-07-11 11:23:37.210203', 'jkl47@gmail.com', 'False', 'user', '1', '2023-07-11 11:23:25.026363', '2023-07-11 11:23:25.026363', 'False', '92f7c221', '7a173c18', 'N/A', 'True', NULL, '0'),
(97, '123', NULL, 0, 'jkl48', 'shubham', 'sharma', 0, 0, '2023-07-11 11:24:17.001805', 'jkl48@gmail.com', 'False', 'user', '1', '2023-07-11 11:24:05.999771', '2023-07-11 11:24:05.999771', 'False', '92f7c221', '6f010b37', 'N/A', 'True', NULL, '0'),
(98, '123', NULL, 0, 'jkl49', 'shubham', 'sharma', 0, 0, '2023-07-11 11:25:28.912445', 'jkl49@gmail.com', 'False', 'user', '1', '2023-07-11 11:25:16.063508', '2023-07-11 11:25:16.063508', 'False', '92f7c221', '47c1b01f', 'N/A', 'True', NULL, '0'),
(99, '123', NULL, 0, 'jkl50', 'shubham', 'sharma', 0, 0, '2023-07-11 11:26:13.801519', 'jkl50@gmail.com', 'False', 'user', '1', '2023-07-11 11:25:57.914462', '2023-07-11 11:25:57.914462', 'False', '92f7c221', 'f2e146a9', 'N/A', 'True', NULL, '0'),
(100, '123', NULL, 0, 'jkl51', 'shubham', 'sharma', 0, 0, '2023-07-11 11:26:50.672789', 'jkl51@gmail.com', 'False', 'user', '1', '2023-07-11 11:26:39.445507', '2023-07-11 11:26:39.445507', 'False', '92f7c221', '6c490021', 'N/A', 'True', NULL, '0'),
(101, '123', NULL, 0, 'jkl52', 'shubham', 'sharma', 0, 0, '2023-07-11 11:27:13.117809', 'jkl52@gmail.com', 'False', 'user', '1', '2023-07-11 11:27:00.876862', '2023-07-11 11:27:00.876862', 'False', '92f7c221', '6f6d63d4', 'N/A', 'True', NULL, '0'),
(102, '123', NULL, 0, 'jkl54', 'shubham', 'sharma', 0, 0, '2023-07-12 04:55:39.975889', 'jkl54@gmail.com', 'False', 'user', '1', '2023-07-12 04:54:48.498564', '2023-07-12 04:54:48.498564', 'False', NULL, '65168f81', 'N/A', 'True', NULL, '0'),
(103, '123', NULL, 0, 'jkl56', 'shubham', 'sharma', 0, 0, '2023-07-12 05:01:41.937609', 'jkl56@gmail.com', 'True', 'user', '1', '2023-07-12 05:01:11.526360', '2023-07-12 05:01:11.526360', 'False', '92f7c221', '82313006', 'N/A', 'True', NULL, '0'),
(104, '123', NULL, 0, 'jkl57', 'shubham', 'sharma', 0, 0, '2023-07-12 05:07:25.466213', 'jkl57@gmail.com', 'False', 'user', '1', '2023-07-12 05:06:40.202805', '2023-07-12 05:06:40.202805', 'False', '92f7c221', 'f3faa4bf', 'N/A', 'True', NULL, '0'),
(105, '123', NULL, 0, 'jkl58', 'shubham', 'sharma', 0, 0, '2023-07-12 05:08:46.816699', 'jkl58@gmail.com', 'False', 'user', '1', '2023-07-12 05:08:34.229400', '2023-07-12 05:08:34.229400', 'False', '92f7c221', 'e9b47e36', 'N/A', 'True', NULL, '0'),
(106, '123', NULL, 0, 'jkl59', 'shubham', 'sharma', 0, 0, '2023-07-12 05:09:26.175193', 'jkl59@gmail.com', 'True', 'user', '1', '2023-07-12 05:09:17.105124', '2023-07-12 05:09:17.105124', 'False', '92f7c221', 'b7073002', 'N/A', 'True', NULL, '0'),
(107, '123', NULL, 0, 'jkl60', 'shubham', 'sharma', 0, 0, '2023-07-12 05:19:49.278007', 'jkl60@gmail.com', 'True', 'user', '1', '2023-07-12 05:17:59.142158', '2023-07-12 05:17:59.142158', 'False', '92f7c221', '0514c379', 'N/A', 'True', NULL, '0'),
(108, '123', NULL, 0, 'jkl61', 'shubham', 'sharma', 0, 0, '2023-07-12 05:27:27.686522', 'jkl61@gmail.com', 'True', 'user', '1', '2023-07-12 05:25:57.297587', '2023-07-12 05:25:57.297587', 'False', '92f7c221', '6526b308', 'N/A', 'True', NULL, '0'),
(110, 'pbkdf2_sha256$390000$OQD1jFBff8tiF928xT7UUa$6Sn9VQFvkd+GrNsQbnsL/JDNr3WUJY7Bg2rIUWKnWFI=', NULL, 0, 'sachinboxfy', 'sachin', 'boxfy', 0, 1, '2023-07-21 05:45:38.835025', 'sachinboxfy@gmail.com', 'True', 'user', '1', '2023-07-21 05:44:07.822391', '2023-07-21 05:44:07.822391', '638304', NULL, '3cb19b35', '2023-07-21 11:04:08.908482', 'True', NULL, '0'),
(111, 'pbkdf2_sha256$390000$fFmWwfnP15i0mayNfgIJnN$4LxVyHsaXN/nVr0SRBbTHeU8WVe4brknuPh7CM2FgoY=', NULL, 0, 'Anirudhboxfy', 'anirudh', 'boxfy', 0, 1, '2023-07-21 05:50:18.804643', 'anirudhboxfy@gmail.com', 'True', 'user', '1', '2023-07-21 05:44:07.822391', '2023-07-21 05:44:07.822391', '123055', NULL, 'fee08fa0', '2023-07-21 06:06:53.357921', 'True', NULL, '0'),
(112, 'pbkdf2_sha256$390000$BQrFSBVtETfb3wPf5kiudZ$RPpL2UtNioMcq+VMvUAMjoYUOnsrPlruco6Wz3prqkI=', NULL, 0, '', 'rohit', 'boxfy', 0, 1, '2023-07-21 06:19:37.400999', 'rohitboxfy@gmail.com', 'True', 'user', '1', '2023-07-21 06:08:17.581612', '2023-07-21 06:08:17.581612', '756469', 'fee08fa0', '86610b54', '2023-07-21 06:20:15.168400', 'True', NULL, '0'),
(113, 'pbkdf2_sha256$390000$Z1gfhxIwbSWw4aKdBuXplJ$pJColwWO+zjs8ca6bvmF/qxV4fSgJLDsAYNC8SoRhZQ=', NULL, 0, '', 'sachin', 'sachin', 0, 1, '2023-07-21 10:32:38.712270', 'sachin@gmail.com', 'True', 'user', '1', '2023-07-21 10:22:03.008060', '2023-07-21 10:22:03.008060', '145691', 'fee08fa0', '20e2f731', '2023-07-21 10:33:21.701282', 'True', NULL, '0'),
(114, 'pbkdf2_sha256$390000$VmLFFbR12DNsqzKLqgG7jV$4vUKbFYf2nbTCSKr2cHHUEwd+VGXAYldjf1KaMZ6SBY=', NULL, 0, 'xyz', 'xyz', 'xyz', 0, 1, '2023-07-21 11:37:08.241860', 'xyz@gmail.com', 'True', 'user', '1', '2023-07-21 11:14:32.745979', '1693052730', '0543', NULL, '9c8a7ec2', '1692874716.8418949', 'True', NULL, '0'),
(115, 'pbkdf2_sha256$390000$tvuKUELBUmBk7ySdxC3Hx8$U/0jBTZmTw7a3q7dgrt98BBo2yHuZSuOCOI6r8m8y5M=', NULL, 0, '', 'xyz', 'xyz', 0, 1, '2023-07-21 11:40:31.602941', 'xyz1@gmail.com', 'True', 'user', '1', '2023-07-21 11:14:32.745979', '2023-07-21 11:14:32.745979', '964563', '9c8a7ec2', '05932681', '2023-07-21 11:41:20.783877', 'True', NULL, '0'),
(116, 'pbkdf2_sha256$390000$fm4pSPYIuKOVr1pWV5uuaH$//j16Pit+ZKieEK0w4u661s8hrQm9N7v14EXTHnyGcE=', NULL, 0, '', 'xyz', 'xyz', 0, 1, '2023-07-21 11:43:33.655110', 'xyz2@gmail.com', 'True', 'user', '1', '2023-07-21 11:14:32.745979', '2023-07-21 11:14:32.745979', '584454', '9c8a7ec2', '8dae644a', '2023-07-21 11:43:56.776072', 'True', NULL, '0'),
(125, '!4hoJBxwMVnh6os0bq6gkebK6WdQCdPyxLqpwpn4o', '2023-07-29 11:00:17.503643', 0, 'ss969856', 'Shubham', 'Sharma', 0, 1, '2023-07-29 11:00:17.477346', 'ss969856@gmail.com', 'True', 'user', '1', '2023-07-29 10:56:06.343742', '2023-07-29 10:56:06.343742', 'False', NULL, '498376e2', 'N/A', 'False', NULL, '0'),
(126, 'pbkdf2_sha256$390000$zzh2FNPHNaat0FtKU2GvT2$Yl6ZQWcvf0BmF7zRXa1YsFt5iZ7KGDDAGUMqogOoCMU=', NULL, 0, 'shubhams', 's', 'sharma', 0, 1, '2023-07-31 05:56:14.666604', 'shubhams@gmail.com', 'True', 'user', '1', '2023-07-31 05:55:16.877222', '2023-07-31 05:55:16.877222', '982728', NULL, '010e0445', 'N/A', 'False', NULL, '0'),
(131, 'pbkdf2_sha256$390000$rbdfJggrOrKKIj4aDMtmmm$HeitdKGsKJaZGedq6bPQi8cpAdO6cRY0BRDaTddlqvU=', NULL, 0, 'sachinn', 'm', 'sachin', 0, 1, '2023-07-31 06:13:02.364018', 'msachin@gmail.com', 'False', 'user', '1', '2023-07-31 06:12:20.388242', '2023-07-31 06:12:20.388242', '1428', NULL, '61390a2c', 'N/A', 'False', NULL, '0'),
(133, 'pbkdf2_sha256$390000$26dXreYfQs1d0vSdLLsayb$Od1hDqlqhKA/HL1zoO+QjrW/gScEtsDDXFHI/b2+8rk=', NULL, 0, 'sachind', 'd', 'sachin', 0, 1, '2023-07-31 06:17:41.779720', 'msachid@gmail.com', 'True', 'user', '1', '2023-07-31 06:15:38.897474', '2023-07-31 06:15:38.897474', '5473', NULL, '33ca1483', 'N/A', 'False', NULL, '0'),
(135, 'pbkdf2_sha256$390000$hBiuL3fJVyZ80oapeu5s9U$YGl/AQSQsgoONbHdu6Xm7WFl7ies9H55lRh1j777KM0=', NULL, 0, 'sachinsd', 's', 'd', 0, 1, '2023-07-31 06:22:12.855044', 'sd@gmail.com', 'True', 'user', '1', '2023-07-31 06:20:03.939962', '2023-07-31 06:20:03.939962', '4467', NULL, '379ef479', 'N/A', 'False', NULL, '0'),
(136, 'pbkdf2_sha256$390000$4gHAH9WwEdEBDA8rQMRDj4$byaaVZMhS3PPUGxb49Q+upzxUGRva5XJRqP3Ef70DMs=', NULL, 0, 'sachinkd', 'sachin', 'kd', 0, 1, '2023-07-31 06:35:59.260629', 'sachinkd@gmail.com', 'True', 'user', '1', '2023-07-31 06:35:02.700270', '1690785359', '8114', NULL, 'aa4bc644', 'N/A', 'False', NULL, '0'),
(142, 'pbkdf2_sha256$390000$DDV7X3DokFMeNMZqAt68BY$4NKRNKF82lUW4IAkrddJFRA+HiGsMAONcQwkLvdYLQQ=', NULL, 0, 'anirudhd', 'ani', 'rudh', 0, 1, '2023-07-31 06:52:19.961373', 'anirudhboxyd@gmail.com', 'False', 'user', '1', '2023-07-31 06:50:20.501943', '1690786339', '3389', NULL, '2016f2fc', 'N/A', 'False', NULL, '0'),
(143, 'pbkdf2_sha256$390000$pJuUuJC0dE2VP1F31VVVmQ$dDZYx4B2oA8ypTa6iH3FSj0jLm5GFYpzed4juzJQ/IM=', NULL, 0, 'shubhamsharma002', 'shubham', 'sharma', 0, 1, '2023-07-31 12:42:57.751575', 'shubhamsharma001@gmail.com', 'True', 'user', '1', '2023-07-31 12:41:57.154749', '1690807430', '9186', NULL, 'bde4a271', 'N/A', 'False', NULL, '0'),
(144, 'pbkdf2_sha256$390000$uMOdK7eNj1QRI8eoSwWfM3$xtp8wXp0Q8C3eTJdxX5gMYo0z0viwmROCPsKm0R+3xY=', NULL, 0, 'karanrana', 'Karan', 'Rana', 0, 1, '2023-08-04 10:43:28.535292', 'karanrana@gmail.com', 'True', 'user', '1', '2023-08-04 10:42:16.639694', '1691145808', '5822', NULL, 'a042d12c', 'N/A', 'False', NULL, '0'),
(145, 'pbkdf2_sha256$390000$S0i1y5z8WFgvI5Yl2UGyvi$gXrkSTrokFre5VLiF1+Gq+qahZV4x13mzW5NHWo8pLQ=', NULL, 0, '', 'karan', 'rana', 0, 1, '2023-08-08 11:46:40.975392', 'karanrana420@gmail.com', 'True', 'user', '1', '2023-08-08 11:26:55.656099', '1691495200', '6830', '9c8a7ec2', '74190296', '2023-08-08 12:51:35.195209', 'True', NULL, '0'),
(146, 'pbkdf2_sha256$390000$vujbR7CMv4hj51iHari3TA$5ld7SFgsXN4mseC1swooEYMP2jaHwzmdoRjJkG510wU=', NULL, 0, 'shivkumar', 'Shiv', 'Kumar', 0, 1, '2023-08-12 06:24:43.106981', 'shivkumar@gmail.com', 'True', 'user', '1', '2023-08-12 06:16:52.819969', '1691821483', '1650', NULL, 'de39241b', 'N/A', 'False', NULL, '0'),
(147, 'pbkdf2_sha256$390000$rt90ROz4opVLTbbODLtyuk$FYC6qXA0emIOlfxZLvKUFEwhuNLGH7xtuey8HFVJFgU=', NULL, 0, '', 'Anirudh', 'Sahu', 0, 1, '2023-08-24 12:27:11.408949', 'Anirudhmetaboxfy@gmail.com', 'True', 'user', '1', '2023-08-24 12:23:48.746099', '1692880031', '7602', '9c8a7ec2', 'd96138ba', '1692880548.0708563', 'True', NULL, '0'),
(149, 'pbkdf2_sha256$390000$2tqbTKXS6kzSqiPwhmi3aP$udil/ugvIN4m6A3yY3X19ZeV5IUxYCwvLfeeab/jDNs=', NULL, 0, 'amarjotsingh', 'Amar', 'Jot', 0, 1, '2023-08-26 12:42:42.654138', 'amarjotsingh@gmail.com', 'True', 'user', '1', '2023-08-26 12:41:45.410318', '1693054232', '7344', NULL, '3990a425', '1693053844.0345733', 'True', NULL, '0'),
(150, 'pbkdf2_sha256$390000$JUdvhQCcrq6Dz3ABmjz7re$QpCxdLlX5NfCHMozF4gGygXJTenszEPHX6P2aHB0XBA=', NULL, 0, 'Amanboxfy', 'Aman', 'Boxfy', 0, 1, '2023-08-28 05:22:19.300140', 'aman@yopmail.com', 'True', 'user', '1', '2023-08-28 05:18:45.856928', '1693200139', '4187', NULL, 'cea53cd7', '1693200272.465443', 'True', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `userstaking`
--

CREATE TABLE `userstaking` (
  `id` bigint(20) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `roi_per_month` varchar(200) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `roi_recieved` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_user_permissions`
--

CREATE TABLE `users_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_rank`
--

CREATE TABLE `user_rank` (
  `id` bigint(20) NOT NULL,
  `rank_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `reward_recieved` varchar(200) NOT NULL,
  `income` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_referral`
--

CREATE TABLE `user_referral` (
  `id` bigint(20) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `parent_id_id` bigint(20) NOT NULL,
  `refferal_income` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_referral`
--

INSERT INTO `user_referral` (`id`, `child_id_id`, `level_id`, `parent_id_id`, `refferal_income`) VALUES
(101, 115, 1, 114, '0'),
(102, 116, 1, 114, '0'),
(103, 145, 1, 114, '80.0'),
(104, 147, 1, 114, '4.199999999999999');

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

CREATE TABLE `verify` (
  `start` varchar(200) NOT NULL,
  `sr` int(11) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verify`
--

INSERT INTO `verify` (`start`, `sr`, `id`) VALUES
('1691148943', 1, 114),
('1691221409', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` bigint(20) NOT NULL,
  `avaliable_balance` varchar(200) NOT NULL,
  `freezed_balance` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `reserved_balance` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `avaliable_balance`, `freezed_balance`, `user_id`, `reserved_balance`) VALUES
(1, '520.0', '0', 1, '0'),
(26, '50.0', '0', 29, '0'),
(27, '0', '0', 31, '0'),
(28, '0', '0', 32, '0'),
(29, '0', '0', 33, '0'),
(30, '0', '0', 34, '0'),
(31, '0', '0', 35, '0'),
(32, '0', '0', 36, '0'),
(33, '0', '0', 37, '0'),
(34, '0', '0', 39, '0'),
(35, '0', '0', 40, '0'),
(36, '0', '0', 41, '0'),
(37, '0', '0', 43, '0'),
(40, '0', '0', 47, '0'),
(41, '0', '0', 48, '0'),
(42, '0', '0.0', 49, '0'),
(43, '0', '0', 50, '0'),
(44, '0', '0', 51, '0'),
(45, '0', '0', 52, '0'),
(46, '0', '0', 53, '0'),
(47, '0', '0', 54, '0'),
(48, '0', '0', 55, '0'),
(49, '0', '0', 56, '0'),
(50, '0', '0', 57, '0'),
(51, '0', '0', 58, '0'),
(52, '0', '0', 59, '0'),
(53, '0', '0', 60, '0'),
(54, '0', '0', 61, '0'),
(55, '0', '0', 62, '0'),
(56, '0', '0', 63, '0'),
(57, '0', '0', 64, '0'),
(58, '0', '0', 65, '0'),
(59, '0', '0', 66, '0'),
(60, '0', '0', 67, '0'),
(61, '0', '0', 68, '0'),
(62, '0', '0', 69, '0'),
(63, '0', '0', 70, '0'),
(64, '0', '0', 71, '0'),
(65, '0', '0', 72, '0'),
(66, '0', '0', 73, '0'),
(67, '0', '0', 74, '0'),
(68, '0', '0', 75, '0'),
(69, '0', '0', 76, '0'),
(70, '0', '0', 77, '0'),
(71, '0', '0', 78, '0'),
(72, '0', '0', 79, '0'),
(73, '0', '0', 80, '0'),
(74, '0', '0', 81, '0'),
(75, '0', '0', 82, '0'),
(76, '0', '0', 83, '0'),
(77, '0', '0', 84, '0'),
(78, '0', '0', 85, '0'),
(79, '0', '0', 86, '0'),
(80, '0', '0', 87, '0'),
(81, '0', '0', 88, '0'),
(82, '0', '0', 89, '0'),
(83, '0', '0', 90, '0'),
(84, '0', '0', 91, '0'),
(85, '0', '0', 92, '0'),
(86, '0', '0', 93, '0'),
(87, '0', '0', 94, '0'),
(88, '0', '0', 95, '0'),
(89, '0', '0', 96, '0'),
(90, '0', '0', 97, '0'),
(91, '0', '0', 98, '0'),
(92, '0', '0', 99, '0'),
(93, '0', '0', 100, '0'),
(94, '0', '0', 101, '0'),
(95, '0', '0', 102, '0'),
(96, '0', '0', 103, '0'),
(97, '0', '0', 104, '0'),
(98, '0', '0', 105, '0'),
(99, '0', '0', 106, '0'),
(100, '0', '0', 107, '0'),
(101, '0', '0', 108, '0'),
(103, '0', '0', 111, '0'),
(104, '40.0', '0', 112, '0'),
(105, '0', '0', 113, '0'),
(106, '63.533333333333374', '0', 114, '64.66666666666667'),
(107, '0', '0', 115, '0'),
(108, '0', '0', 116, '0'),
(110, '0', '0', 125, '0'),
(111, '0', '0', 126, '0'),
(112, '0', '0', 133, '0'),
(113, '0', '0', 135, '0'),
(114, '0', '0', 136, '0'),
(115, '0', '0', 143, '0'),
(116, '0', '0', 144, '0'),
(117, '0', '0', 145, '0'),
(118, '0', '0', 146, '0'),
(119, '0', '0', 147, '0'),
(120, '0', '0', 149, '0'),
(121, '0', '0', 150, '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_users_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `core_appsettings`
--
ALTER TABLE `core_appsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_businesslogs`
--
ALTER TABLE `core_businesslogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_businesslogs_child_id_id_b59cae4f_fk_users_id` (`child_id_id`),
  ADD KEY `core_businesslogs_parent_id_id_b1d7e131_fk_users_id` (`parent_id_id`),
  ADD KEY `core_businesslogs_plan_id_3e9a372a_fk_core_plansmodel_id` (`plan_id`);

--
-- Indexes for table `core_cofounderclub`
--
ALTER TABLE `core_cofounderclub`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_cofounderclub_club_98d70073_uniq` (`club`);

--
-- Indexes for table `core_emailservice`
--
ALTER TABLE `core_emailservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_gallaryimages`
--
ALTER TABLE `core_gallaryimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_levelincome`
--
ALTER TABLE `core_levelincome`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_levelincome_child_id_id_fefd5568_fk_users_id` (`child_id_id`),
  ADD KEY `core_levelincome_level_id_7df4ee2f_fk_levels_id` (`level_id`),
  ADD KEY `core_levelincome_parent_id_id_479ecada_fk_users_id` (`parent_id_id`);

--
-- Indexes for table `core_login_history`
--
ALTER TABLE `core_login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_login_history_user_id_c539e665_fk_users_id` (`user_id`);

--
-- Indexes for table `core_membership`
--
ALTER TABLE `core_membership`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_membership_plan_id_6cd5aba6_fk_core_plansmodel_id` (`plan_id`);

--
-- Indexes for table `core_newsmodel`
--
ALTER TABLE `core_newsmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_plansmodel`
--
ALTER TABLE `core_plansmodel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `core_status_activity`
--
ALTER TABLE `core_status_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_status_activity_user_id_b539cf0e_fk_users_id` (`user_id`);

--
-- Indexes for table `core_ticketmodel`
--
ALTER TABLE `core_ticketmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_ticketmodel_user_id_fca908b3_fk_users_id` (`user_id`);

--
-- Indexes for table `core_useraddressdetail`
--
ALTER TABLE `core_useraddressdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_useraddressdetail_user_id_46d53d92_fk_users_id` (`user_id`);

--
-- Indexes for table `core_usercofounderclub`
--
ALTER TABLE `core_usercofounderclub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_usercofounderclub_club_id_a4ccc2a7_fk_core_cofounderclub_id` (`club_id`),
  ADD KEY `core_usercofounderclub_user_id_20907c22_fk_users_id` (`user_id`);

--
-- Indexes for table `core_userunlockedlevel`
--
ALTER TABLE `core_userunlockedlevel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_userunlockedlevel_level_id_74f0feac_fk_levels_id` (`level_id`),
  ADD KEY `core_userunlockedlevel_user_id_e700a745_fk_users_id` (`user_id`);

--
-- Indexes for table `core_userwithdrawls`
--
ALTER TABLE `core_userwithdrawls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_userwithdrawls_user_id_6b158a41_fk_users_id` (`user_id`),
  ADD KEY `core_userwithdrawls_wallet_id_665943e6_fk_wallet_id` (`wallet_id`);

--
-- Indexes for table `core_withdrawsettingmodel`
--
ALTER TABLE `core_withdrawsettingmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_youtubevideo`
--
ALTER TABLE `core_youtubevideo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_level`
--
ALTER TABLE `current_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `current_level_user_id_f0128532_fk_users_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `farmingroilogs`
--
ALTER TABLE `farmingroilogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farmingroilogs_plan_id_d7c73c53_fk_usermembership_id` (`plan_id`),
  ADD KEY `farmingroilogs_user_id_30b710b7_fk_users_id` (`user_id`);

--
-- Indexes for table `fastrackmodel`
--
ALTER TABLE `fastrackmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fastrackmodel_left_child_id_c5a534e1_fk_users_id` (`left_child_id`),
  ADD KEY `fastrackmodel_level_id_d2e9b62f_fk_levels_id` (`level_id`),
  ADD KEY `fastrackmodel_parent_id_id_d034067a_fk_users_id` (`parent_id_id`),
  ADD KEY `fastrackmodel_right_child_id_7bcc5d26_fk_users_id` (`right_child_id`),
  ADD KEY `fastrackmodel_plan_id_6d585f9f_fk_core_membership_id` (`plan_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ptransfer`
--
ALTER TABLE `ptransfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_ptransfer_child_id_id_e1f7f06e_fk_users_id` (`child_id_id`),
  ADD KEY `core_ptransfer_user_id_id_6008cb53_fk_users_id` (`user_id_id`),
  ADD KEY `core_ptransfer_wallet_id_a4dc1fed_fk_wallet_id` (`wallet_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rank` (`rank`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_users_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_users_id` (`user_id`),
  ADD KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`);

--
-- Indexes for table `stakingroilogs`
--
ALTER TABLE `stakingroilogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stakingroilogs_plan_id_cee1076a_fk_core_membership_id` (`plan_id`),
  ADD KEY `stakingroilogs_user_id_4423f67b_fk_users_id` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_wallet_id_ce705075_fk_wallet_id` (`wallet_id`),
  ADD KEY `transactions_user_id_766cc893_fk_users_id` (`user_id`);

--
-- Indexes for table `usermembership`
--
ALTER TABLE `usermembership`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_usermembership_plan_id_063bcaed_fk_core_membership_id` (`plan_id`),
  ADD KEY `core_usermembership_user_id_dfa7c16b_fk_users_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `referal_code` (`referal_code`);

--
-- Indexes for table `userstaking`
--
ALTER TABLE `userstaking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userstaking_plan_id_ab8536dc_fk_core_membership_id` (`plan_id`),
  ADD KEY `userstaking_user_id_4c06ca72_fk_users_id` (`user_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_groups_user_id_group_id_fc7788e8_uniq` (`user_id`,`group_id`),
  ADD KEY `users_groups_group_id_2f3517aa_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_permissions_user_id_permission_id_3b86cbdf_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `user_rank`
--
ALTER TABLE `user_rank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_rank_rank_id_afdeb20f_fk_rank_id` (`rank_id`),
  ADD KEY `user_rank_user_id_c2b3ca12_fk_users_id` (`user_id`);

--
-- Indexes for table `user_referral`
--
ALTER TABLE `user_referral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_referral_child_id_id_de75dad4_fk_users_id` (`child_id_id`),
  ADD KEY `user_referral_level_id_8f3a91dd_fk_levels_id` (`level_id`),
  ADD KEY `user_referral_parent_id_id_5df4353f_fk_users_id` (`parent_id_id`);

--
-- Indexes for table `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `verify_id_3bbf7b17_fk_users_id` (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_user_id_03d82c01_fk_users_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `core_appsettings`
--
ALTER TABLE `core_appsettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_businesslogs`
--
ALTER TABLE `core_businesslogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_cofounderclub`
--
ALTER TABLE `core_cofounderclub`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_emailservice`
--
ALTER TABLE `core_emailservice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_gallaryimages`
--
ALTER TABLE `core_gallaryimages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_levelincome`
--
ALTER TABLE `core_levelincome`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_login_history`
--
ALTER TABLE `core_login_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `core_membership`
--
ALTER TABLE `core_membership`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `core_newsmodel`
--
ALTER TABLE `core_newsmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_plansmodel`
--
ALTER TABLE `core_plansmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_status_activity`
--
ALTER TABLE `core_status_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `core_ticketmodel`
--
ALTER TABLE `core_ticketmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_useraddressdetail`
--
ALTER TABLE `core_useraddressdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_usercofounderclub`
--
ALTER TABLE `core_usercofounderclub`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_userunlockedlevel`
--
ALTER TABLE `core_userunlockedlevel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `core_userwithdrawls`
--
ALTER TABLE `core_userwithdrawls`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `core_withdrawsettingmodel`
--
ALTER TABLE `core_withdrawsettingmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_youtubevideo`
--
ALTER TABLE `core_youtubevideo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `current_level`
--
ALTER TABLE `current_level`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `farmingroilogs`
--
ALTER TABLE `farmingroilogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fastrackmodel`
--
ALTER TABLE `fastrackmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ptransfer`
--
ALTER TABLE `ptransfer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stakingroilogs`
--
ALTER TABLE `stakingroilogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usermembership`
--
ALTER TABLE `usermembership`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `userstaking`
--
ALTER TABLE `userstaking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_rank`
--
ALTER TABLE `user_rank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_referral`
--
ALTER TABLE `user_referral`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `verify`
--
ALTER TABLE `verify`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `core_businesslogs`
--
ALTER TABLE `core_businesslogs`
  ADD CONSTRAINT `core_businesslogs_child_id_id_b59cae4f_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_businesslogs_parent_id_id_b1d7e131_fk_users_id` FOREIGN KEY (`parent_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_businesslogs_plan_id_3e9a372a_fk_core_plansmodel_id` FOREIGN KEY (`plan_id`) REFERENCES `core_plansmodel` (`id`);

--
-- Constraints for table `core_levelincome`
--
ALTER TABLE `core_levelincome`
  ADD CONSTRAINT `core_levelincome_child_id_id_fefd5568_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_levelincome_level_id_7df4ee2f_fk_levels_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `core_levelincome_parent_id_id_479ecada_fk_users_id` FOREIGN KEY (`parent_id_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_login_history`
--
ALTER TABLE `core_login_history`
  ADD CONSTRAINT `core_login_history_user_id_c539e665_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_membership`
--
ALTER TABLE `core_membership`
  ADD CONSTRAINT `core_membership_plan_id_6cd5aba6_fk_core_plansmodel_id` FOREIGN KEY (`plan_id`) REFERENCES `core_plansmodel` (`id`);

--
-- Constraints for table `core_status_activity`
--
ALTER TABLE `core_status_activity`
  ADD CONSTRAINT `core_status_activity_user_id_b539cf0e_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_ticketmodel`
--
ALTER TABLE `core_ticketmodel`
  ADD CONSTRAINT `core_ticketmodel_user_id_fca908b3_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_useraddressdetail`
--
ALTER TABLE `core_useraddressdetail`
  ADD CONSTRAINT `core_useraddressdetail_user_id_46d53d92_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_usercofounderclub`
--
ALTER TABLE `core_usercofounderclub`
  ADD CONSTRAINT `core_usercofounderclub_club_id_a4ccc2a7_fk_core_cofounderclub_id` FOREIGN KEY (`club_id`) REFERENCES `core_cofounderclub` (`id`),
  ADD CONSTRAINT `core_usercofounderclub_user_id_20907c22_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_userunlockedlevel`
--
ALTER TABLE `core_userunlockedlevel`
  ADD CONSTRAINT `core_userunlockedlevel_level_id_74f0feac_fk_levels_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `core_userunlockedlevel_user_id_e700a745_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_userwithdrawls`
--
ALTER TABLE `core_userwithdrawls`
  ADD CONSTRAINT `core_userwithdrawls_user_id_6b158a41_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_userwithdrawls_wallet_id_665943e6_fk_wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);

--
-- Constraints for table `current_level`
--
ALTER TABLE `current_level`
  ADD CONSTRAINT `current_level_user_id_f0128532_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `farmingroilogs`
--
ALTER TABLE `farmingroilogs`
  ADD CONSTRAINT `farmingroilogs_plan_id_d7c73c53_fk_usermembership_id` FOREIGN KEY (`plan_id`) REFERENCES `usermembership` (`id`),
  ADD CONSTRAINT `farmingroilogs_user_id_30b710b7_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `fastrackmodel`
--
ALTER TABLE `fastrackmodel`
  ADD CONSTRAINT `fastrackmodel_left_child_id_c5a534e1_fk_users_id` FOREIGN KEY (`left_child_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fastrackmodel_level_id_d2e9b62f_fk_levels_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `fastrackmodel_parent_id_id_d034067a_fk_users_id` FOREIGN KEY (`parent_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fastrackmodel_plan_id_6d585f9f_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`),
  ADD CONSTRAINT `fastrackmodel_right_child_id_7bcc5d26_fk_users_id` FOREIGN KEY (`right_child_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ptransfer`
--
ALTER TABLE `ptransfer`
  ADD CONSTRAINT `core_ptransfer_child_id_id_e1f7f06e_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_ptransfer_user_id_id_6008cb53_fk_users_id` FOREIGN KEY (`user_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_ptransfer_wallet_id_a4dc1fed_fk_wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `stakingroilogs`
--
ALTER TABLE `stakingroilogs`
  ADD CONSTRAINT `stakingroilogs_plan_id_cee1076a_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`),
  ADD CONSTRAINT `stakingroilogs_user_id_4423f67b_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_766cc893_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_wallet_id_ce705075_fk_wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);

--
-- Constraints for table `usermembership`
--
ALTER TABLE `usermembership`
  ADD CONSTRAINT `core_usermembership_plan_id_063bcaed_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`),
  ADD CONSTRAINT `core_usermembership_user_id_dfa7c16b_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `userstaking`
--
ALTER TABLE `userstaking`
  ADD CONSTRAINT `userstaking_plan_id_ab8536dc_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`),
  ADD CONSTRAINT `userstaking_user_id_4c06ca72_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_group_id_2f3517aa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_groups_user_id_f500bee5_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  ADD CONSTRAINT `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_permissions_user_id_92473840_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_rank`
--
ALTER TABLE `user_rank`
  ADD CONSTRAINT `user_rank_rank_id_afdeb20f_fk_rank_id` FOREIGN KEY (`rank_id`) REFERENCES `rank` (`id`),
  ADD CONSTRAINT `user_rank_user_id_c2b3ca12_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_referral`
--
ALTER TABLE `user_referral`
  ADD CONSTRAINT `user_referral_child_id_id_de75dad4_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_referral_level_id_8f3a91dd_fk_levels_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `user_referral_parent_id_id_5df4353f_fk_users_id` FOREIGN KEY (`parent_id_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `verify`
--
ALTER TABLE `verify`
  ADD CONSTRAINT `verify_id_3bbf7b17_fk_users_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_user_id_03d82c01_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
