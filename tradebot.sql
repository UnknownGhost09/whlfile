-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 09:41 AM
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
-- Database: `tradebot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_app_app_model`
--

CREATE TABLE `admin_app_app_model` (
  `id` bigint(20) NOT NULL,
  `app_name` varchar(200) NOT NULL,
  `app_des` varchar(1000) NOT NULL,
  `app_logo` varchar(100) DEFAULT NULL,
  `app_title` varchar(200) NOT NULL,
  `copyright` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_app_app_model`
--

INSERT INTO `admin_app_app_model` (`id`, `app_name`, `app_des`, `app_logo`, `app_title`, `copyright`) VALUES
(4, 'Tradebot', 'sdsd', 'images/logo_wbU2exg.jpg', 'dfgdfgdfgbv', 'dfsdfsdfvsdfvsdfvc');

-- --------------------------------------------------------

--
-- Table structure for table `admin_app_emailmodel`
--

CREATE TABLE `admin_app_emailmodel` (
  `id` bigint(20) NOT NULL,
  `smtp_server` varchar(200) NOT NULL,
  `mail_from` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `port` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `active_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_app_emailmodel`
--

INSERT INTO `admin_app_emailmodel` (`id`, `smtp_server`, `mail_from`, `username`, `password`, `port`, `name`, `active_status`) VALUES
(1, '192.168.18.110', 'urveeshboxfy@gmail.com', 'Urveesh Kashyap', 'pgltclpdrckgjwkh', '123', 'Send grid', '1'),
(3, '192.168.18.110', 'shubhamboxfy@gmail.com', 'box', 'pgltclpdrckgjwkh', '465', 'Sendin blue', '1'),
(5, '192.168.18.110', 'urveeshboxfy@gmail.com', 'urveesh', 'pgltclpdrckgjwkh', '800', 'Mail chimp', '1'),
(7, '192.168.18.110', 'urveeshboxfy@gmail.com', 'Urveesh Kashyap', 'pgltclpdrckgjwkh', '11', 'Send gri', '0');

-- --------------------------------------------------------

--
-- Table structure for table `admin_app_smsmodel`
--

CREATE TABLE `admin_app_smsmodel` (
  `id` bigint(20) NOT NULL,
  `api_key` varchar(200) NOT NULL,
  `secret_key` varchar(200) NOT NULL,
  `phone_no` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `active_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_app_smsmodel`
--

INSERT INTO `admin_app_smsmodel` (`id`, `api_key`, `secret_key`, `phone_no`, `name`, `active_status`) VALUES
(5, 'rfeferfvefv', 'evfvefvfvf', '23432423423', 'frevevefve', '1');

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
(25, 'Can add binance_model', 7, 'add_binance_model'),
(26, 'Can change binance_model', 7, 'change_binance_model'),
(27, 'Can delete binance_model', 7, 'delete_binance_model'),
(28, 'Can view binance_model', 7, 'view_binance_model'),
(29, 'Can add exchanges', 8, 'add_exchanges'),
(30, 'Can change exchanges', 8, 'change_exchanges'),
(31, 'Can delete exchanges', 8, 'delete_exchanges'),
(32, 'Can view exchanges', 8, 'view_exchanges'),
(33, 'Can add pair table', 9, 'add_pairtable'),
(34, 'Can change pair table', 9, 'change_pairtable'),
(35, 'Can delete pair table', 9, 'delete_pairtable'),
(36, 'Can view pair table', 9, 'view_pairtable'),
(37, 'Can add kucoin keys1', 10, 'add_kucoinkeys1'),
(38, 'Can change kucoin keys1', 10, 'change_kucoinkeys1'),
(39, 'Can delete kucoin keys1', 10, 'delete_kucoinkeys1'),
(40, 'Can view kucoin keys1', 10, 'view_kucoinkeys1'),
(41, 'Can add kucoin_model', 11, 'add_kucoin_model'),
(42, 'Can change kucoin_model', 11, 'change_kucoin_model'),
(43, 'Can delete kucoin_model', 11, 'delete_kucoin_model'),
(44, 'Can view kucoin_model', 11, 'view_kucoin_model'),
(45, 'Can add gate io keys1', 12, 'add_gateiokeys1'),
(46, 'Can change gate io keys1', 12, 'change_gateiokeys1'),
(47, 'Can delete gate io keys1', 12, 'delete_gateiokeys1'),
(48, 'Can view gate io keys1', 12, 'view_gateiokeys1'),
(49, 'Can add gate_model', 13, 'add_gate_model'),
(50, 'Can change gate_model', 13, 'change_gate_model'),
(51, 'Can delete gate_model', 13, 'delete_gate_model'),
(52, 'Can view gate_model', 13, 'view_gate_model'),
(53, 'Can add fills', 14, 'add_fills'),
(54, 'Can change fills', 14, 'change_fills'),
(55, 'Can delete fills', 14, 'delete_fills'),
(56, 'Can view fills', 14, 'view_fills'),
(57, 'Can add exception', 15, 'add_exception'),
(58, 'Can change exception', 15, 'change_exception'),
(59, 'Can delete exception', 15, 'delete_exception'),
(60, 'Can view exception', 15, 'view_exception'),
(61, 'Can add bitmex keys1', 16, 'add_bitmexkeys1'),
(62, 'Can change bitmex keys1', 16, 'change_bitmexkeys1'),
(63, 'Can delete bitmex keys1', 16, 'delete_bitmexkeys1'),
(64, 'Can view bitmex keys1', 16, 'view_bitmexkeys1'),
(65, 'Can add bitmex_model', 17, 'add_bitmex_model'),
(66, 'Can change bitmex_model', 17, 'change_bitmex_model'),
(67, 'Can delete bitmex_model', 17, 'delete_bitmex_model'),
(68, 'Can view bitmex_model', 17, 'view_bitmex_model'),
(69, 'Can add binance keys1', 18, 'add_binancekeys1'),
(70, 'Can change binance keys1', 18, 'change_binancekeys1'),
(71, 'Can delete binance keys1', 18, 'delete_binancekeys1'),
(72, 'Can view binance keys1', 18, 'view_binancekeys1'),
(73, 'Can add app_model', 19, 'add_app_model'),
(74, 'Can change app_model', 19, 'change_app_model'),
(75, 'Can delete app_model', 19, 'delete_app_model'),
(76, 'Can view app_model', 19, 'view_app_model'),
(77, 'Can add email model', 20, 'add_emailmodel'),
(78, 'Can change email model', 20, 'change_emailmodel'),
(79, 'Can delete email model', 20, 'delete_emailmodel'),
(80, 'Can view email model', 20, 'view_emailmodel'),
(81, 'Can add sms model', 21, 'add_smsmodel'),
(82, 'Can change sms model', 21, 'change_smsmodel'),
(83, 'Can delete sms model', 21, 'delete_smsmodel'),
(84, 'Can view sms model', 21, 'view_smsmodel'),
(85, 'Can add bot stop', 22, 'add_botstop'),
(86, 'Can change bot stop', 22, 'change_botstop'),
(87, 'Can delete bot stop', 22, 'delete_botstop'),
(88, 'Can view bot stop', 22, 'view_botstop'),
(89, 'Can add kill bot', 23, 'add_killbot'),
(90, 'Can change kill bot', 23, 'change_killbot'),
(91, 'Can delete kill bot', 23, 'delete_killbot'),
(92, 'Can view kill bot', 23, 'view_killbot'),
(93, 'Can add logs model', 24, 'add_logsmodel'),
(94, 'Can change logs model', 24, 'change_logsmodel'),
(95, 'Can delete logs model', 24, 'delete_logsmodel'),
(96, 'Can view logs model', 24, 'view_logsmodel');

-- --------------------------------------------------------

--
-- Table structure for table `binanace_keys1`
--

CREATE TABLE `binanace_keys1` (
  `sr` int(11) NOT NULL,
  `api_key` varchar(500) NOT NULL,
  `secret_key` varchar(500) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `binanace_keys1`
--

INSERT INTO `binanace_keys1` (`sr`, `api_key`, `secret_key`, `id`) VALUES
(1, '7gr7eBfTq9IqaexFkjRVje17t8dTLjE30fck2oVucTURRqOqlYULW8xnKh8rMiZR', 'Ai6F7MpVZvHQBHC0Yb07Djs5I2bmjUqsRVgssjPn3UzcviVn8VbSg5L3ZiC3pYjM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `binance_model`
--

CREATE TABLE `binance_model` (
  `clientOrderId` varchar(200) NOT NULL,
  `symbol` varchar(200) NOT NULL,
  `orderId` varchar(200) NOT NULL,
  `OrderListId` varchar(200) NOT NULL,
  `executedQty` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `side` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `timeInForce` varchar(200) NOT NULL,
  `transactTime` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `workingTime` varchar(200) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `binance_model`
--

INSERT INTO `binance_model` (`clientOrderId`, `symbol`, `orderId`, `OrderListId`, `executedQty`, `price`, `side`, `status`, `timeInForce`, `transactTime`, `type`, `workingTime`, `id`) VALUES
('5OPT3GNyLouHIHxzmP547j', 'BTCUSDT', '9673227', '0', '0.49312', '24335.21000000', 'SELL', 'FILLED', 'GTC', '1678776169450', 'MARKET', '1678776169450', 1),
('9eThSREJn3dDRbKpXwYSQc', 'BTCUSDT', '7289270', '0', '0.58850', '20225.82000000', 'BUY', 'FILLED', 'GTC', '1678519748575', 'MARKET', '1678519748575', 1),
('FbYXdTlY7PfQ39GJyiDjPl', 'ETHUSDT', '5828237', '0', '1.00000000', '1690.41000000', 'BUY', 'True', 'GTC', '1676707238781', 'MARKET', '1676707238781', 1),
('gykJ0sufy7baq1qK6LgYAx', 'BTCUSDT', '16538553', '0', '0.42914', '27701.19000000', 'SELL', 'FILLED', 'GTC', '1679401789013', 'MARKET', '1679401789013', 1),
('heUzN7uoMYokvHzPSvxJK5', 'BTCUSDT', '2740026', '0', '0.03534', '28295.54000000', 'BUY', 'FILLED', 'GTC', '1681129518240', 'MARKET', '1681129518240', 1),
('hw0PD63zVdIty1nmw76Zkm', 'BTCUSDT', '16347115', '0', '0.43606', '27520.59000000', 'BUY', 'FILLED', 'GTC', '1679384601446', 'MARKET', '1679384601446', 1),
('krGMUmOGFTA3EV5430EEew', 'BTCUSDT', '11673690', '0', '0.49065', '24461.26000000', 'BUY', 'FILLED', 'GTC', '1678949408582', 'MARKET', '1678949408582', 1),
('l8s6qfmMjxBHD79B5rMQt6', 'BTCUSDT', '5207266', '0', '0.00325', '30765.54000000', 'BUY', 'FILLED', 'GTC', '1681471772106', 'MARKET', '1681471772106', 1),
('ms2gxAHEA6MiQHknQQEBsy', 'BTCUSDT', '7396378', '0', '0.00499', '20100.73000000', 'BUY', 'FILLED', 'GTC', '1678529478592', 'MARKET', '1678529478592', 1),
('OqRYcpK3tatj1HnNspRmtm', 'BTCUSDT', '9678893', '0', '0.00405000', '24703.16000000', 'SELL', 'FILLED', 'GTC', '1676977649632', 'MARKET', '1676977649632', 1),
('oTyc23EnwQPJUz4UOxh52c', 'BTCUSDT', '9108942', '0', '0.54447', '22017.07000000', 'BUY', 'FILLED', 'GTC', '1678709890408', 'MARKET', '1678709890408', 1),
('PXs7hXA01D1fzXagUxsnXy', 'BTCUSDT', '7856328', '0', '1.00000000', '24512.40000000', 'SELL', 'True', 'GTC', '1676708706703', 'MARKET', '1676708706703', 1),
('s50d22E9Ltg1V0Jwy4fXnK', 'BTCUSDT', '3819803', '0', '0.00334', '29961.88000000', 'SELL', 'FILLED', 'GTC', '1681298411416', 'MARKET', '1681298411416', 1),
('SLEVBi8amsQBc3gedmhG3A', 'BTCUSDT', '9036424', '0', '0.54619', '21988.26000000', 'BUY', 'FILLED', 'GTC', '1678701342984', 'MARKET', '1678701342984', 1),
('T1lSYr2IlfmnbqPa1CqVE5', 'BTCUSDT', '9131279', '0', '0.54407', '22065.42000000', 'BUY', 'FILLED', 'GTC', '1678711990196', 'MARKET', '1678711990196', 1),
('UM7FdF5HHBQpg6YfUtlpSW', 'BTCUSDT', '5198345', '0', '0.00325', '30775.10000000', 'BUY', 'FILLED', 'GTC', '1681470144559', 'MARKET', '1681470144559', 1),
('vaPDneICcSRTzegpdMklxL', 'BTCUSDT', '13057484', '0', '0.04593', '26125.99000000', 'BUY', 'FILLED', 'GTC', '1679046767088', 'MARKET', '1679046767088', 1),
('wlIW9d11Ko2N1k3hPheSyP', 'BTCUSDT', '7291965', '0', '0.58850', '20068.54000000', 'SELL', 'FILLED', 'GTC', '1678520050329', 'MARKET', '1678520050329', 1),
('xYRsBEX0fp56ZtmKjaINg0', 'BTCUSDT', '13057404', '0', '0.04593', '26125.76000000', 'BUY', 'FILLED', 'GTC', '1679046761025', 'MARKET', '1679046761025', 1),
('yOjNRThHyiMPfEgLrAJiaK', 'BTCUSDT', '3141132', '0', '0.03326', '30067.88000000', 'BUY', 'FILLED', 'GTC', '1681195450941', 'MARKET', '1681195450941', 1),
('YX40EO5PEPLwi0zbrod9LC', 'BTCUSDT', '7397529', '0', '0.00499', '20081.17000000', 'SELL', 'FILLED', 'GTC', '1678529598824', 'MARKET', '1678529598824', 1),
('zghZ6SUAYQxthivuls3LkQ', 'BTCUSDT', '7896753', '0', '1.00000000', '24527.52000000', 'BUY', 'True', 'GTC', '1676715368741', 'MARKET', '1676715368741', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bitmex_model`
--

CREATE TABLE `bitmex_model` (
  `orderID` varchar(200) NOT NULL,
  `account` varchar(200) NOT NULL,
  `cumQty` varchar(200) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `ordStatus` varchar(200) NOT NULL,
  `ordType` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `settlCurrency` varchar(200) NOT NULL,
  `side` varchar(200) NOT NULL,
  `symbol` varchar(200) NOT NULL,
  `timeInForce` varchar(200) NOT NULL,
  `timestamp` varchar(200) NOT NULL,
  `transactTime` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `botstop`
--

CREATE TABLE `botstop` (
  `id` bigint(20) NOT NULL,
  `signal` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `initial` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `botstop`
--

INSERT INTO `botstop` (`id`, `signal`, `status`, `initial`) VALUES
(1, '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_user`
--

CREATE TABLE `core_user` (
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
  `phone_no` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `email_verified_at` varchar(200) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `updated_at` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_user`
--

INSERT INTO `core_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `phone_no`, `email`, `email_verified_at`, `role`, `status`, `updated_at`, `created_at`) VALUES
(1, 'pbkdf2_sha256$320000$CQUT9a3GutyF19Ew8eMRvH$V2CsE+V1p5BklnuB9Xp229e3da+8PzvamEHvA9Lf7yM=', '2023-05-13 09:24:59.058564', 1, 'box', '', '', 1, 1, '2023-02-10 07:11:28.000000', 'wq2323423432', 'box@gmail.com', 'asdas@gmail.com', '1', '1', '2023-02-10 07:11:02.517849', '2023-02-10 07:11:02.517849'),
(4, '1234', NULL, 0, 'shubha', 'shubham', 'gangsters', 0, 1, '2023-02-10 07:41:08.000000', '23423423', 'shubham@gmail.com', '234234324234', '2', '1', '2023-03-10 06:31:54.059050', '2023-02-10 07:12:07.062881'),
(5, '1234', NULL, 0, 'vikasSir', 'Vikas', 'Sir', 0, 1, '2023-02-10 07:41:51.000000', '676864546345', 'vikassir@gmail.com', '3474232323', '2', '0', '2023-02-27 09:41:13.774255', '2023-02-10 07:12:07.062881'),
(6, '1234', NULL, 0, 'Anirudh', 'Anirudh', 'Pathak', 0, 1, '2023-02-10 07:42:39.000000', '8867788', 'anirudh@gmail.com', '3242342', '3', '1', '2023-03-02 10:41:25.287987', '2023-02-10 07:12:07.062881'),
(7, '1234', NULL, 0, 'Aman', 'Aman', 'donn', 0, 1, '2023-02-10 07:43:08.000000', '785868876', 'aman@gmail.com', '4545545646', '3', '0', '2023-02-27 10:33:45.077855', '2023-02-10 07:12:07.062881'),
(8, '1234', NULL, 0, 'sachin', 'Sachin', 'The Murderer', 0, 1, '2023-02-10 07:43:35.000000', '88667768', 'sachin@gmail.com', 'y856347', '3', '1', '2023-02-17 06:06:42.153923', '2023-02-10 07:12:07.062881'),
(9, '1234', NULL, 0, 'Urveesh', 'urveesh', 'bhai', 0, 1, '2023-02-10 07:44:21.000000', '878678678', 'urveeshboxfy@gmail.com', '86866', '3', '1', '2023-03-21 10:33:16.403496', '2023-02-10 07:12:07.062881'),
(10, 'pbkdf2_sha256$390000$6Lr6A8EC1ReALeykzIAJbj$ScukV2t4PJ20SFPC8pN0nldFdz/41INOViPveiNEnHg=', NULL, 0, 'ratanSIr', 'ratanSirji', 'kanwar', 0, 1, '2023-02-16 05:52:49.662047', '7894562123', 'ratan@gmail.com', '2023-02-16 05:52:49.646422', '2', '1', '2023-02-27 09:41:14.716834', '2/16/2023'),
(11, 'pbkdf2_sha256$390000$VgnIHPS8gkwSPBH0D6ZQa7$EqG5OEH8/BQU3VUdE+B4LrbI5oC5zUSfvPuqgi747RA=', NULL, 0, 'UdayShetty', 'Uday', 'sheth', 0, 1, '2023-02-16 06:00:14.822123', '456987123', 'Uday_Shetty@gmail.com', '2023-02-16 06:00:14.806500', '2', '0', '2023-02-20 05:56:16.234656', '2/16/2023'),
(12, 'pbkdf2_sha256$390000$l2adOBf5PSZU6vaGa9nE1g$WuLyKXeaVZcsqEg4Nv/jDyKoBxoPZDjzWOZVy1e8YAk=', NULL, 0, 'selmon_bhai', 'selmon', 'bhai', 0, 1, '2023-02-16 06:06:06.838561', '789456123', 'selmon_bhai@gmail.com', '2023-02-16 06:06:06.828501', '3', '1', '2023-02-17 05:11:44.476767', '2/16/2023'),
(13, 'pbkdf2_sha256$390000$1PMXI0skMJca1vnaFocKqw$uiUBNEvg9aENLoScfMdLmlraAg4GS7uDoIY7RaiBAYw=', NULL, 0, 'Metaverse', 'Meta', 'Verse', 0, 1, '2023-02-16 06:07:55.753305', '78213872983', 'Meta@gmail.com', '2023-02-16 06:07:55.741227', '2', '1', '2023-02-20 05:56:44.292377', '2/16/2023'),
(14, 'pbkdf2_sha256$390000$lPyFWJksd8JDX8QHL1NaTI$+rfdkMUlacRM9xnYesVIlqz43/2FALg8V93j+62ljqg=', NULL, 0, 'Golmal', 'Gol', 'Mal', 0, 1, '2023-02-16 06:08:33.788935', '8787877889', 'Golmal@gmail.com', '2023-02-16 06:08:33.788935', '3', '0', '2023-02-16 10:10:57.354223', '2/16/2023'),
(38, 'pbkdf2_sha256$390000$ycwx4uCSAnj3y8POAZzUhC$z/STpoJhsTfsEvB7weSlvLCuNLlqS14flxYmDn8XV3Y=', NULL, 0, 'fcwwvwcdc', 'wecwedcwc', 'wecwec', 0, 1, '2023-02-18 06:56:17.261872', '213123123', 'asdad@gmail.com', '2023-02-18 06:56:17.261872', '2', '0', '2023-02-20 05:57:52.819217', '2/18/2023'),
(39, 'pbkdf2_sha256$390000$zbFIghzHyFlctLok7MYPZd$ZeSZgea0ojLArAAh02b6OP7ranKj3AzGXB0TEAh0x7Q=', NULL, 0, 'mukesh', 'mukesh', 'ambani', 0, 1, '2023-02-27 12:31:32.471792', '123654789', 'mukeshambani@gmail.com', '2023-02-27 12:31:32.470754', '3', '1', '2023-02-27 11:18:51.360787', '2/27/2023'),
(41, 'pbkdf2_sha256$320000$gt5zR1l3PTRT7t0sZVgoFX$t6ykYIpfRh4TNVMiMdaK5WN54cxeLg0X7fGAJxXacNY=', '2023-03-13 10:50:10.725198', 1, 'shubhamsharma01', '', '', 1, 1, '2023-03-13 10:49:51.645005', '', 'shubhamsharma01@gmail.com', '', '3', '1', '2023-03-13 10:49:28.240972', '');

-- --------------------------------------------------------

--
-- Table structure for table `core_user_groups`
--

CREATE TABLE `core_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_user_user_permissions`
--

CREATE TABLE `core_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-02-10 07:15:09.348553', 'Binance', 'Exchanges object (Binance)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-02-10 07:15:30.784185', 'Kucoin', 'Exchanges object (Kucoin)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-02-10 07:15:59.300564', 'GateIo', 'Exchanges object (GateIo)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-02-10 07:16:21.618288', 'Bitmex', 'Exchanges object (Bitmex)', 1, '[{\"added\": {}}]', 8, 1),
(5, '2023-02-10 07:17:05.363062', '1', 'BinanceKeys1 object (1)', 1, '[{\"added\": {}}]', 18, 1),
(6, '2023-02-10 07:17:27.120370', '1', 'BitmexKeys1 object (1)', 1, '[{\"added\": {}}]', 16, 1),
(7, '2023-02-10 07:17:37.041110', '1', 'GateIoKeys1 object (1)', 1, '[{\"added\": {}}]', 12, 1),
(8, '2023-02-10 07:17:49.640207', '1', 'KucoinKeys1 object (1)', 1, '[{\"added\": {}}]', 10, 1),
(9, '2023-02-10 07:18:31.332770', '2', 'asdad', 1, '[{\"added\": {}}]', 6, 1),
(10, '2023-02-10 07:18:54.033877', '3', 'wdf', 1, '[{\"added\": {}}]', 6, 1),
(11, '2023-02-10 07:20:12.830473', '1', 'box', 2, '[{\"changed\": {\"fields\": [\"Phone no\", \"Email verified at\", \"Role\"]}}]', 6, 1),
(12, '2023-02-10 07:26:14.104928', '1', 'SmsModel object (1)', 1, '[{\"added\": {}}]', 21, 1),
(13, '2023-02-10 07:27:05.915332', '1', 'EmailModel object (1)', 1, '[{\"added\": {}}]', 20, 1),
(14, '2023-02-10 07:27:27.038513', '2', 'EmailModel object (2)', 1, '[{\"added\": {}}]', 20, 1),
(15, '2023-02-10 07:27:48.425624', '3', 'EmailModel object (3)', 1, '[{\"added\": {}}]', 20, 1),
(16, '2023-02-10 07:39:35.224650', '1', 'GateIoKeys1 object (1)', 2, '[{\"changed\": {\"fields\": [\"Api key\", \"Secret key\"]}}]', 12, 1),
(17, '2023-02-10 07:40:00.697214', '1', 'BinanceKeys1 object (1)', 2, '[{\"changed\": {\"fields\": [\"Api key\", \"Secret key\"]}}]', 18, 1),
(18, '2023-02-10 07:40:27.478613', '1', 'BitmexKeys1 object (1)', 2, '[{\"changed\": {\"fields\": [\"Api key\", \"Secret key\"]}}]', 16, 1),
(19, '2023-02-10 07:40:54.693746', '1', 'KucoinKeys1 object (1)', 2, '[{\"changed\": {\"fields\": [\"Api key\", \"Secret key\", \"Passphrase\"]}}]', 10, 1),
(20, '2023-02-10 07:41:49.374312', '4', 'shubham', 1, '[{\"added\": {}}]', 6, 1),
(21, '2023-02-10 07:42:37.913739', '5', 'vikassir', 1, '[{\"added\": {}}]', 6, 1),
(22, '2023-02-10 07:43:05.717986', '6', 'Anirudh', 1, '[{\"added\": {}}]', 6, 1),
(23, '2023-02-10 07:43:33.215378', '7', 'Aman', 1, '[{\"added\": {}}]', 6, 1),
(24, '2023-02-10 07:44:09.615301', '8', 'sachin', 1, '[{\"added\": {}}]', 6, 1),
(25, '2023-02-10 07:44:14.803246', '3', 'wdf', 3, '', 6, 1),
(26, '2023-02-10 07:44:19.253056', '2', 'asdad', 3, '', 6, 1),
(27, '2023-02-10 07:44:59.171493', '9', 'Urveesh', 1, '[{\"added\": {}}]', 6, 1),
(28, '2023-02-15 06:22:21.990226', '3', 'EmailModel object (3)', 2, '[]', 20, 1),
(29, '2023-02-16 08:24:47.952387', '21', 'dfgdfg', 3, '', 6, 1),
(30, '2023-02-16 08:24:52.901620', '20', 'sdfsdfdfgdfg', 3, '', 6, 1),
(31, '2023-02-16 08:24:58.571919', '19', 'sdfsdf', 3, '', 6, 1),
(32, '2023-02-16 08:25:06.245409', '18', 'dfsdfds', 3, '', 6, 1),
(33, '2023-02-16 08:25:12.377388', '17', 'gdgxuy', 3, '', 6, 1),
(34, '2023-02-16 08:25:20.338074', '16', 'fdgdfghdfh', 3, '', 6, 1),
(35, '2023-02-16 08:25:25.639861', '15', 'aman@gmail.com', 3, '', 6, 1),
(36, '2023-02-16 12:20:30.222975', '36', 'erverv', 3, '', 6, 1),
(37, '2023-02-16 12:20:34.088663', '35', 'bwdufiwe', 3, '', 6, 1),
(38, '2023-02-16 12:20:39.780975', '34', 'dfgdfgdfgdfg', 3, '', 6, 1),
(39, '2023-02-16 12:20:45.101047', '33', 'dfgfd', 3, '', 6, 1),
(40, '2023-02-16 12:20:49.410794', '32', 'uasuidf', 3, '', 6, 1),
(41, '2023-02-16 12:20:55.024884', '31', 'saas', 3, '', 6, 1),
(42, '2023-02-16 12:21:00.481271', '30', 'sdvsdvs', 3, '', 6, 1),
(43, '2023-02-16 12:21:04.696188', '29', 'sdfsdf', 3, '', 6, 1),
(44, '2023-02-16 12:21:08.370209', '28', 'fsdfsdf', 3, '', 6, 1),
(45, '2023-02-16 12:21:13.230084', '27', 'sddfsd', 3, '', 6, 1),
(46, '2023-02-16 12:21:16.769402', '26', 'asdasd', 3, '', 6, 1),
(47, '2023-02-16 12:21:21.557967', '25', 'sadasda', 3, '', 6, 1),
(48, '2023-02-16 12:21:26.237469', '24', 'rtyrty', 3, '', 6, 1),
(49, '2023-02-16 12:21:30.463308', '23', 'dfgfg', 3, '', 6, 1),
(50, '2023-02-16 12:21:35.354076', '22', 'dfgdfg', 3, '', 6, 1),
(51, '2023-02-17 05:26:33.604070', '4', 'EmailModel object (4)', 3, '', 20, 1),
(52, '2023-02-17 05:27:19.060873', '2', 'EmailModel object (2)', 3, '', 20, 1),
(53, '2023-02-17 05:27:39.605400', '5', 'EmailModel object (5)', 1, '[{\"added\": {}}]', 20, 1),
(54, '2023-02-17 05:27:43.646483', '3', 'EmailModel object (3)', 2, '[]', 20, 1),
(55, '2023-02-17 05:27:47.017071', '1', 'EmailModel object (1)', 2, '[]', 20, 1),
(56, '2023-02-17 05:43:34.783908', '37', 'nfebwc', 3, '', 6, 1),
(57, '2023-02-17 05:57:27.582473', '6', 'EmailModel object (6)', 3, '', 20, 1),
(58, '2023-02-17 06:57:20.692783', '1', 'SmsModel object (1)', 2, '[{\"changed\": {\"fields\": [\"Api key\", \"Secret key\"]}}]', 21, 1),
(59, '2023-02-17 06:57:44.171188', '1', 'SmsModel object (1)', 2, '[{\"changed\": {\"fields\": [\"Api key\", \"Secret key\"]}}]', 21, 1),
(60, '2023-02-17 08:01:04.093717', '1', 'EmailModel object (1)', 2, '[{\"changed\": {\"fields\": [\"Active status\"]}}]', 20, 1),
(61, '2023-02-17 08:01:22.606916', '1', 'EmailModel object (1)', 2, '[]', 20, 1),
(62, '2023-02-17 08:01:28.130648', '5', 'EmailModel object (5)', 2, '[{\"changed\": {\"fields\": [\"Active status\"]}}]', 20, 1),
(63, '2023-02-17 08:01:35.141641', '3', 'EmailModel object (3)', 2, '[{\"changed\": {\"fields\": [\"Active status\"]}}]', 20, 1),
(64, '2023-02-17 08:01:38.841881', '3', 'EmailModel object (3)', 2, '[]', 20, 1),
(65, '2023-02-17 08:11:24.118363', '1', 'EmailModel object (1)', 2, '[]', 20, 1),
(66, '2023-02-17 08:11:31.038349', '3', 'EmailModel object (3)', 2, '[{\"changed\": {\"fields\": [\"Active status\"]}}]', 20, 1),
(67, '2023-02-17 08:11:37.978376', '5', 'EmailModel object (5)', 2, '[]', 20, 1),
(68, '2023-02-17 08:11:44.045902', '7', 'EmailModel object (7)', 2, '[{\"changed\": {\"fields\": [\"Active status\"]}}]', 20, 1),
(69, '2023-02-17 11:53:43.619516', '1', 'App_model object (1)', 2, '[]', 19, 1),
(70, '2023-02-17 11:57:35.235095', '1', 'App_model object (1)', 2, '[]', 19, 1),
(71, '2023-02-17 11:59:16.078290', '1', 'App_model object (1)', 2, '[]', 19, 1),
(72, '2023-02-17 12:05:44.286764', '1', 'App_model object (1)', 2, '[{\"changed\": {\"fields\": [\"App name\"]}}]', 19, 1),
(73, '2023-02-17 12:05:48.138501', '1', 'App_model object (1)', 2, '[]', 19, 1),
(74, '2023-02-17 12:28:56.797694', '1', 'App_model object (1)', 3, '', 19, 1),
(75, '2023-02-17 12:52:02.564394', '2', 'App_model object (2)', 2, '[{\"changed\": {\"fields\": [\"App logo\"]}}]', 19, 1),
(76, '2023-02-18 07:33:14.413682', '3', 'App_model object (3)', 3, '', 19, 1),
(77, '2023-02-18 07:33:17.142893', '2', 'App_model object (2)', 3, '', 19, 1),
(78, '2023-02-25 09:45:05.650476', '1', 'GateIoKeys1 object (1)', 2, '[]', 12, 1),
(79, '2023-02-25 12:28:59.117568', '1', 'BotStop object (1)', 1, '[{\"added\": {}}]', 22, 1),
(80, '2023-02-27 04:43:15.722203', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Signal\"]}}]', 22, 1),
(81, '2023-02-27 04:43:38.761926', '1', 'BotStop object (1)', 2, '[]', 22, 1),
(82, '2023-02-27 05:06:50.455983', '1', 'BotStop object (1)', 2, '[]', 22, 1),
(83, '2023-02-27 07:20:37.121154', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 1),
(84, '2023-02-27 07:21:26.792692', '1', 'BotStop object (1)', 2, '[]', 22, 1),
(85, '2023-02-27 11:17:58.381174', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 1),
(86, '2023-03-01 05:25:33.236539', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 1),
(87, '2023-03-01 06:24:16.717857', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 1),
(88, '2023-03-01 06:31:25.054558', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 1),
(89, '2023-03-01 07:31:00.887503', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 1),
(90, '2023-03-01 11:49:45.229920', '1', 'BotStop object (1)', 2, '[]', 22, 1),
(91, '2023-03-02 04:48:20.946851', '1', 'BinanceKeys1 object (1)', 2, '[]', 18, 1),
(92, '2023-03-02 12:19:44.323578', '3', 'SmsModel object (3)', 2, '[{\"changed\": {\"fields\": [\"Active status\"]}}]', 21, 1),
(93, '2023-03-02 12:20:01.097622', '4', 'SmsModel object (4)', 3, '', 21, 1),
(94, '2023-03-02 12:20:04.182544', '3', 'SmsModel object (3)', 3, '', 21, 1),
(95, '2023-03-02 12:20:06.807530', '2', 'SmsModel object (2)', 3, '', 21, 1),
(96, '2023-03-02 12:20:09.553878', '1', 'SmsModel object (1)', 3, '', 21, 1),
(97, '2023-03-02 12:20:19.305104', '5', 'SmsModel object (5)', 1, '[{\"added\": {}}]', 21, 1),
(98, '2023-03-03 09:47:57.419328', '9', 'EmailModel object (9)', 3, '', 20, 1),
(99, '2023-03-03 09:48:00.477149', '8', 'EmailModel object (8)', 3, '', 20, 1),
(100, '2023-03-13 10:50:33.715472', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Shut down\"]}}]', 22, 41),
(101, '2023-03-13 10:50:46.730155', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Shut down\"]}}]', 22, 41),
(102, '2023-03-13 10:51:11.223487', '2', 'BotStop object (2)', 1, '[{\"added\": {}}]', 22, 41),
(103, '2023-03-13 11:06:15.718226', '1', 'KillBot object (1)', 1, '[{\"added\": {}}]', 23, 41),
(104, '2023-03-14 06:41:05.969793', '1', 'KillBot object (1)', 2, '[{\"changed\": {\"fields\": [\"Shut down\"]}}]', 23, 41),
(105, '2023-03-14 06:45:10.432487', '1', 'KillBot object (1)', 2, '[]', 23, 41),
(106, '2023-03-14 06:46:34.437509', '1', 'KillBot object (1)', 2, '[]', 23, 41),
(107, '2023-03-14 06:48:10.259298', '1', 'KillBot object (1)', 2, '[]', 23, 41),
(108, '2023-03-16 06:30:41.557673', '2', 'BotStop object (2)', 3, '', 22, 41),
(109, '2023-03-16 06:33:08.040596', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Signal\"]}}]', 22, 41),
(110, '2023-03-16 06:40:55.145430', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 41),
(111, '2023-03-16 06:44:43.452852', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 41),
(112, '2023-03-17 05:40:14.514742', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 1),
(113, '2023-03-17 07:06:30.128129', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 1),
(114, '2023-03-21 07:13:55.605324', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Signal\", \"Status\"]}}]', 22, 41),
(115, '2023-03-21 07:27:27.309038', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 41),
(116, '2023-03-21 08:10:36.037590', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Signal\"]}}]', 22, 41),
(117, '2023-03-21 08:11:39.151639', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 41),
(118, '2023-03-21 09:59:00.394168', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 41),
(119, '2023-03-21 12:30:42.291319', '1', 'BotStop object (1)', 2, '[]', 22, 41),
(120, '2023-03-22 04:56:59.916768', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 41),
(121, '2023-03-22 04:57:14.282446', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 41),
(122, '2023-04-10 12:45:27.856305', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Initial\"]}}]', 22, 1),
(123, '2023-04-10 12:46:06.559136', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 22, 1),
(124, '2023-04-10 12:46:24.932769', '1', 'BotStop object (1)', 2, '[{\"changed\": {\"fields\": [\"Signal\", \"Status\"]}}]', 22, 1),
(125, '2023-04-10 12:46:50.029132', '1', 'KillBot object (1)', 2, '[{\"changed\": {\"fields\": [\"Shut down\"]}}]', 23, 1),
(126, '2023-04-11 06:07:52.740437', '1', 'KillBot object (1)', 2, '[{\"changed\": {\"fields\": [\"Shut down\"]}}]', 23, 1);

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
(1, 'admin', 'logentry'),
(19, 'admin_app', 'app_model'),
(20, 'admin_app', 'emailmodel'),
(21, 'admin_app', 'smsmodel'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(6, 'core', 'user'),
(5, 'sessions', 'session'),
(18, 'user_exchanges', 'binancekeys1'),
(7, 'user_exchanges', 'binance_model'),
(16, 'user_exchanges', 'bitmexkeys1'),
(17, 'user_exchanges', 'bitmex_model'),
(22, 'user_exchanges', 'botstop'),
(15, 'user_exchanges', 'exception'),
(8, 'user_exchanges', 'exchanges'),
(14, 'user_exchanges', 'fills'),
(12, 'user_exchanges', 'gateiokeys1'),
(13, 'user_exchanges', 'gate_model'),
(23, 'user_exchanges', 'killbot'),
(10, 'user_exchanges', 'kucoinkeys1'),
(11, 'user_exchanges', 'kucoin_model'),
(24, 'user_exchanges', 'logsmodel'),
(9, 'user_exchanges', 'pairtable');

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
(1, 'contenttypes', '0001_initial', '2023-02-10 07:10:48.582715'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-02-10 07:10:48.642385'),
(3, 'auth', '0001_initial', '2023-02-10 07:10:48.863437'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-02-10 07:10:48.925924'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-02-10 07:10:48.925924'),
(6, 'auth', '0004_alter_user_username_opts', '2023-02-10 07:10:48.941547'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-02-10 07:10:48.941547'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-02-10 07:10:48.941547'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-02-10 07:10:48.957165'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-02-10 07:10:48.957165'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-02-10 07:10:48.972786'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-02-10 07:10:48.988408'),
(13, 'auth', '0011_update_proxy_permissions', '2023-02-10 07:10:49.004031'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-02-10 07:10:49.004031'),
(15, 'core', '0001_initial', '2023-02-10 07:10:49.312888'),
(16, 'admin', '0001_initial', '2023-02-10 07:10:49.406617'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-02-10 07:10:49.406617'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-10 07:10:49.422239'),
(19, 'admin_app', '0001_initial', '2023-02-10 07:10:49.484726'),
(20, 'sessions', '0001_initial', '2023-02-10 07:10:49.547208'),
(21, 'user_exchanges', '0001_initial', '2023-02-10 07:10:50.136527'),
(22, 'core', '0002_alter_user_created_at_alter_user_log_id_and_more', '2023-02-11 06:24:08.150510'),
(23, 'core', '0003_alter_user_created_at_alter_user_updated_at', '2023-02-11 06:26:17.101352'),
(24, 'core', '0004_alter_user_created_at_alter_user_updated_at', '2023-02-14 05:47:18.107319'),
(25, 'core', '0005_alter_user_created_at_alter_user_log_id_and_more', '2023-02-14 05:47:18.138566'),
(26, 'admin_app', '0002_alter_emailmodel_name_alter_smsmodel_name', '2023-02-17 08:17:41.170744'),
(27, 'core', '0006_alter_user_created_at_alter_user_log_id_and_more', '2023-02-17 08:17:41.217607'),
(28, 'admin_app', '0003_alter_app_model_app_logo', '2023-02-17 11:55:55.973542'),
(29, 'core', '0007_alter_user_log_id_alter_user_updated_at', '2023-02-17 11:55:55.989166'),
(30, 'admin_app', '0004_alter_app_model_app_logo', '2023-02-17 11:57:22.920447'),
(31, 'core', '0008_alter_user_updated_at', '2023-02-17 11:57:22.936037'),
(32, 'core', '0009_alter_user_log_id_alter_user_updated_at', '2023-02-25 12:28:09.548986'),
(33, 'user_exchanges', '0002_botstop', '2023-02-25 12:28:09.596011'),
(34, 'core', '0010_alter_user_log_id_alter_user_updated_at', '2023-02-27 06:43:56.106360'),
(35, 'user_exchanges', '0003_botstop_status', '2023-02-27 06:43:56.172266'),
(36, 'core', '0011_alter_user_log_id_alter_user_updated_at', '2023-02-27 07:20:05.544915'),
(37, 'user_exchanges', '0004_alter_botstop_status', '2023-02-27 07:20:05.559822'),
(38, 'core', '0012_alter_user_updated_at', '2023-02-27 07:21:43.821543'),
(39, 'core', '0013_alter_user_log_id_alter_user_updated_at', '2023-03-01 11:09:39.902023'),
(40, 'user_exchanges', '0005_botstop_initial', '2023-03-01 11:09:39.948888'),
(41, 'core', '0014_alter_user_log_id_alter_user_updated_at', '2023-03-06 05:31:37.299232'),
(42, 'core', '0015_alter_user_updated_at', '2023-03-06 05:31:37.299232'),
(43, 'core', '0016_alter_user_log_id_alter_user_updated_at', '2023-03-10 06:05:06.542592'),
(44, 'user_exchanges', '0006_botstop_shut_down', '2023-03-10 06:05:06.606204'),
(45, 'core', '0017_alter_user_log_id_alter_user_updated_at', '2023-03-11 11:51:01.328362'),
(46, 'user_exchanges', '0007_alter_binance_model_table_alter_binancekeys1_table_and_more', '2023-03-11 11:51:01.407240'),
(47, 'core', '0018_alter_user_updated_at', '2023-03-11 13:36:17.381943'),
(48, 'core', '0019_auto_20230313_1036', '2023-03-13 05:07:16.647927'),
(49, 'core', '0020_alter_user_updated_at', '2023-03-13 05:07:16.663650'),
(50, 'core', '0021_alter_user_updated_at', '2023-03-13 05:54:57.227711'),
(51, 'core', '0022_alter_user_updated_at', '2023-03-13 11:02:28.423770'),
(52, 'user_exchanges', '0008_killbot_remove_botstop_shut_down', '2023-03-13 11:02:28.517943'),
(53, 'core', '0023_alter_user_log_id_alter_user_updated_at', '2023-03-16 06:41:57.421886'),
(54, 'user_exchanges', '0009_alter_botstop_status', '2023-03-16 06:41:57.421886'),
(55, 'core', '0024_alter_user_log_id_alter_user_updated_at', '2023-03-21 11:48:15.875285'),
(56, 'user_exchanges', '0010_logsmodel', '2023-03-21 11:48:16.047766'),
(57, 'core', '0025_remove_user_log_id_alter_user_updated_at', '2023-05-08 14:11:27.742051'),
(58, 'core', '0026_alter_user_updated_at', '2023-06-07 05:39:50.231587'),
(59, 'user_exchanges', '0011_remove_logsmodel_exchange_remove_logsmodel_price_and_more', '2023-06-07 05:39:50.419977'),
(60, 'core', '0027_alter_user_updated_at', '2023-06-07 06:03:29.303678'),
(61, 'user_exchanges', '0012_alter_botstop_table_alter_killbot_table_and_more', '2023-06-07 06:03:29.425615');

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
('02lepetruttbewrylbeboz5ehb4hclfk', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQo5a:cQZGwLh0tuUO6C9vP2afH8unTqyWe9tB01I64aCp9xs', '2023-02-25 11:30:42.405426'),
('067pdrrtapi0uch65jh9r9bwdkjyf2bf', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSA7E:jXDA2thWMAAcUmtCChUKsUsdCYNIBMaoWGsQamol4DY', '2023-03-01 05:14:00.198159'),
('06rm3w79mkp411b99r7p788k3fz134bc', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTICw:UnLSxzi13uddh0ddKJqR97Z8Z7yH7E6tbZ5YB4Tv4ko', '2023-03-04 08:04:34.432576'),
('08tivpapv42twv1a3xs99x18o8bjeja8', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSYSF:pk699fLs-0buOh1FhDWqcBL05c3I_N076k_YHassV_A', '2023-03-02 07:13:19.958538'),
('0iavqfwz8vrijsa2yk9aqx21s615154a', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pUQHp:X2fQOpRbD8OG7vtZDMLxYVeUEUQQ-PXaYnKDhY2_h38', '2023-03-07 10:54:17.277303'),
('0knlkccdi9otfxkko5t4eaq78e35bzfn', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSypL:YpA4nvhq2edX3InnI5obPFh8cJfmfugR1U5mFn7aB0A', '2023-03-03 11:22:55.437353'),
('0l330x6vt5g7xrchfuljjurdnkoa4lfl', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSB5W:J1Avv5-CMBSqCRh8fDokBrPy8737OSx7qhzTkIGPfL4', '2023-03-01 06:16:18.141610'),
('0y025k52t1ppk7zwv8hnjawq6ahz5mxf', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVphU:4lwKcO1DS-1mpIJKPwTCzZLjbTeF-nMoFaiep2Flhy0', '2023-03-11 08:14:36.922182'),
('10702bjtwz34x8g541q92bd38ek1tbwq', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pU4LY:mZyayMSJbhmfIuUJdIWfliqvgYSDDDYz0hTYz9VHdJM', '2023-03-06 11:28:40.371577'),
('10gwt3q1aezmcwsgduj91vjbc83pe1a7', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pU16o:Xi8B5lEn6jzae9_AGDA9z2RLuVr3IlzLq34WGyOyFpE', '2023-03-06 08:01:14.205142'),
('18291r25d1rkh3u2tfkjec2t9zusw2k3', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSG5E:_4kxmr8BZYVpKsPc_Mf6RjdhSE8u37iWTDXS7usj1ts', '2023-03-01 11:36:20.860082'),
('1qfvugkuuywhiza4tkoui2lwdp3r2ay5', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1pd3w6:k-H-1ji56pEyK4scgKh2AjAljFMPu0Qg8L1mBKzUOCw', '2023-03-31 06:51:34.958271'),
('1tugnqmzo8vat40bq1ik08ci05jkr5rh', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1pm6tI:xPOshgu8r7seFWULtlYnoaHsKoeXS_9CCQiLTt396hU', '2023-04-25 05:50:04.144035'),
('21fcd5ivuiyaf7yvvgzw3g779ej9udf5', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRXZj:0rkBLT9hx7njviuX-Qk3kkCVlMj-64wVRrF27S8WRXU', '2023-02-27 12:04:51.089998'),
('22rk3g31oupumy6aszykx7dftbbulm3f', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1paaPz:69kkeuG_sXgrQ7vwMLNScmlkCiOnmtH0ZehONqob3FA', '2023-03-24 10:56:11.027058'),
('24kwo349fijyxvh1tehcq3b5wr66p5yf', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQhV5:4eIrWNeSyyZTTB3p9Hslq-q6pW758LERhuEhXpBiv1M', '2023-02-25 04:28:35.877527'),
('2f3rigqzjlqobi3ncl3urki0rmzwky8f', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSWYk:vSnvlirYqXDFjmfDu3KuGUPBtIfi82nAkkrLHkYFQtI', '2023-03-02 05:11:54.388443'),
('2nbvphz1m3285aqsaeauhzoriblwp3dd', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSXB7:Frl2kA6caURU8fg6OJx_33vPnj5D-45ZgDJId4wU3w4', '2023-03-02 05:51:33.951950'),
('2nptjpq50t0jqhu5uu24873cvqy0vv8d', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pU2jD:siVLhw3jv3NAabOoYZ7jI_w7wnubwpXujw-NFXtPJHs', '2023-03-06 09:44:59.531344'),
('2u86ok31y312echghoscn1zdwh5rb05w', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pScG2:KTNPp_JIzsqBIUMlUujc_bhFp42Ixo3cZV40RWiDtWc', '2023-03-02 11:16:58.027410'),
('2wor9ezhok921uofkeazrxiemh5hgjvx', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1peWli:irOs26qOQ8z9Tp92NkyjHtkf3Jcfhd-0JhwyZQIa4kM', '2023-04-04 07:50:54.599449'),
('3cl9mx9url0yskr0adkpv35wk429e5o9', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTKhT:zMPRhVspfEfXiXOhwjsHZjBSrB0phmq3at6g9gpjS7s', '2023-03-04 10:44:15.757495'),
('3hhldh3q4kvszgo0lw61sodg7x9wuyql', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSVz1:oePQgpxujDJdi_G0DEELCFrV5Vn4r-GkFRwo3hqilzE', '2023-03-02 04:34:59.007372'),
('3uhae9z1bzseiw1s3nuxm7hq0ehfj8bv', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSYQP:ogLY9J2oGYm9nSJ9C9KJYjwTKX8SljIXIz0d-arZxho', '2023-03-02 07:11:25.478882'),
('3vl3pw8hse4agnkgb4jnonze14tl6n9l', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSuNG:pPEvZcxiY4oNRK8zVZFZmIVWFueGBKQQcyBxyPozVko', '2023-03-03 06:37:38.498620'),
('4tcikmda3bipx9zg462zzq61svglwi2y', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVtRY:SZXR6vPA4xGmgGi343R2XF6Qu-woeVLn5X-3_C075MM', '2023-03-11 12:14:24.660650'),
('50famwcb4yq8bfumvtt5do0be0zh8udp', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTzsZ:_xLlsH8DNKHU76EPNN5vUuC1ZfFyfeMHKw5ijkpEKMI', '2023-03-06 06:42:27.953850'),
('5cvyk2hgo6l3d5jeqpn9ns6aoivl51el', '.eJxVjEEOwiAQRe_C2hAKIoxL956BMMOMVA1NSrsy3l2bdKHb_977L5XyutS0dp7TWNRZDerwu2GmB7cNlHtut0nT1JZ5RL0peqddX6fCz8vu_h3U3Ou3BvBexCIAx-iCIbIQyTqGgAZDMKeBxBeL1kERYT56I-gLEYkFNur9AeGKOIA:1plqYe:DXcwPyIVDaFfu2ov1LCUVVV0VcpJ8YPI9CLA_SN6gvc', '2023-04-24 12:23:40.942888'),
('5mv9y0pxr738fqi8nfqqmr4aw7qxzkx8', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQNeD:VNWEln5DNRWGfAo5Za_T4x8Hs2KTKXIh6bAOZv76xS8', '2023-02-24 07:16:41.179397'),
('5sh1pjp68d5s65pmpgom37uzpirsazdd', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWyHV:LdHUAuI7wuvBQmKOJA4vNd9LcJYFowb9NawlRl-AHGU', '2023-03-14 11:36:29.650439'),
('5vnf9ldmc1ynsn6u7fe49k0udtyd2fe3', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQNch:UoXcEE_QcIGiD839Z5SgSzcMpJveN2pOeIinUQFGn-0', '2023-02-24 07:15:07.874037'),
('67mi34gr3x2vky2frvcpxli4sqfnuze9', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTJV5:L3w6tMf_etcJ2DeIdZXQm5fC4aAbi6lJQs6RNlJ-50U', '2023-03-04 09:27:23.699960'),
('6bteb1ho84ohuxjlk35522nvx7nb8quy', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVtwp:ffm0OLqUu-oIYkobaWHpFs4S7wveSKj2iNZb35hWGJo', '2023-03-11 12:46:43.951400'),
('6jbzt1hd19vpmc2lnxk6nt84u4ma9hz8', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pStI0:Nw7G_Xek2YBxYVVfAJRdkE62dD6_QMGJ-YVtk32iTUU', '2023-03-03 05:28:08.497255'),
('6k0n7zr78bonm0s627wn0yp9kzqlvwza', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWVlP:7KF4eS19bqiiflouuNiBVMuoF9f1krI3-EEuTzraS94', '2023-03-13 05:09:27.961799'),
('6rlvvm8l3zm2shtxbp5df1np2l3kxfgu', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSuli:vVW3NUGHdwJNqtTkWr4qeQ22LyqtU83EACfw9zvJ7jw', '2023-03-03 07:02:54.273362'),
('6tv9v2mt04d81ezgb1gbbrix5792ro6j', '.eJxVjDsOwjAQBe_iGln-rT-U9JzBWttrHECOFCcV4u4QKQW0b2bei0Xc1ha3QUucCjszyU6_W8L8oL6Dcsd-m3me-7pMie8KP-jg17nQ83K4fwcNR_vWQBJUMSELB85oDV4rqIBAEMhJMjoVo0S1NoXssk8BaqhWgRcFUGj2_gC5rDb5:1pTOxA:p4lEcPZVd3LqJG7XSU9a33epZ50Yt26kQ-gGwKkYB74', '2023-03-04 15:16:44.502517'),
('6wujz5qq9ot7ofb8q1q604vpxruaf1u9', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTywK:o06oIziGKXZbFEvFpvIDk5tFYIeGyTzFoWOGzBbYvRY', '2023-03-06 05:42:16.929591'),
('6yz9ydjsb4z612950oj8dj4vfof9y35f', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWXL1:a1eqvW0UL-OZWq8HvbW582WYukoHuVcpnkCAtb4jsKU', '2023-03-13 06:50:19.843458'),
('752upgvnolyf2w2q1vy9cuqqtvssuw42', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSbBs:EA2giL1svrntMPDNU86htQh2yoV1t0YmL41cnWrWO3M', '2023-03-02 10:08:36.862194'),
('76ayoehzbeqq2srqhov8wf7q1z2je8a5', '.eJxVjDsOwjAQBe_iGln-rT-U9JzBWttrHECOFCcV4u4QKQW0b2bei0Xc1ha3QUucCjszyU6_W8L8oL6Dcsd-m3me-7pMie8KP-jg17nQ83K4fwcNR_vWQBJUMSELB85oDV4rqIBAEMhJMjoVo0S1NoXssk8BaqhWgRcFUGj2_gC5rDb5:1pQNbZ:WkbNeMbeMge_ax35g2rUl8p9F9hXmge042bD-SeY4V4', '2023-02-24 07:13:57.154204'),
('7dvp8ezefhcrdor6zqkb7anryxpps1f4', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVrS7:ev77q_F42PUTh11zWpC0FYARUVIDK_FuqXX58bvoMW0', '2023-03-11 10:06:51.371326'),
('7ra9ztzdk0x7az7avhprbrm27w04dbv4', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRp09:nSguOYKRGP5Ct3r7O36M7hqOCBwguDYuvHBB2x-CZFk', '2023-02-28 06:41:17.797998'),
('86a7nda2s2l3qqnf0wcjoipv0opvwwhy', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSzlq:tDO0Z9Gdk1lwJegqF15HbU6zbp0dAE4p2NcGI20jqKY', '2023-03-03 12:23:22.225784'),
('89s7hk1ifomw39s5bzhflb5j78rnrql5', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1plunn:ZVJOBv7QNFqj4OD4-KJ7MtLg6otFL5-FMNO1_sRyV80', '2023-04-24 16:55:35.142814'),
('8kck7ux1c272n72lv1q62tzymjohy8n4', '.eJxVjDsOwjAQBe_iGln-rT-U9JzBWttrHECOFCcV4u4QKQW0b2bei0Xc1ha3QUucCjszyU6_W8L8oL6Dcsd-m3me-7pMie8KP-jg17nQ83K4fwcNR_vWQBJUMSELB85oDV4rqIBAEMhJMjoVo0S1NoXssk8BaqhWgRcFUGj2_gC5rDb5:1pVr69:nKByxUn56qn1zuF4yMN6R5axd4St0DEhujNVjodC5Xg', '2023-03-11 09:44:09.556172'),
('8lsmj1hg40m4yoht1lz59ydlisqjv1wd', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQNbv:0cecjTsL6co3Ifh5iYwHIIOcoi-h4UDjVOCMwS1slr8', '2023-02-24 07:14:19.491541'),
('8tqovo2r7ez4enfgnyqs3ihb0g6k4vg8', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQj1o:-Hoh8Plb6HrzfJTEuPzyYCKV6n19VRaQCBgMokh3vWE', '2023-02-25 06:06:28.876922'),
('8yxx5rden7100ulac6at3xvwsqei0x62', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSxNd:Od6wzspJJFlJXpkH0bAE4xoXZvG_BDWBrXEuer0gHxI', '2023-03-03 09:50:13.452378'),
('9nrahtv8xmc1g9pffcj7arg1s66tuzta', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSyq1:oOqzF4AAQwW4wd5Og24ovf_MnbbLWF4BII4pCk4cadY', '2023-03-03 11:23:37.383636'),
('9pv27vdehjx2znjajmz25vvmm8tbn3nr', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWWpR:BaAc9GtIkdkiaKhSO3dQP_a9EJAlI3z759LClmlSveQ', '2023-03-13 06:17:41.870026'),
('9wpzzwygfipvywr1s9igd6jptuyg31ob', '.eJxVjEEOwiAQRe_C2hAKIoxL956BMMOMVA1NSrsy3l2bdKHb_977L5XyutS0dp7TWNRZDerwu2GmB7cNlHtut0nT1JZ5RL0peqddX6fCz8vu_h3U3Ou3BvBexCIAx-iCIbIQyTqGgAZDMKeBxBeL1kERYT56I-gLEYkFNur9AeGKOIA:1pm79k:E8ckwjotm4BqmHrHAB3s39UQfy-MINdf2my0qcC1JN4', '2023-04-25 06:07:04.840776'),
('a0mjdoegitwgzpyzpix6s5mxm8v4f0zs', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVoRW:oFEDaLNkrz5E_9ZUG4FVbAZtI5HCc9mwNVxRyWVMxdc', '2023-03-11 06:54:02.214041'),
('a5y5j6nsf8j4qk6ovlvfrqx96pdjd1mg', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTFmE:9Q149sp0TKi4et-kKouvD_UitwjXcm039C19Qz0IRJA', '2023-03-04 05:28:50.022843'),
('ah69nbuc9t8woxw7zb8pc41l048ozplo', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTGBi:CsNFME7cDxybfGMWIIM1zcGDrOwTkQHnM_t_18z0v0w', '2023-03-04 05:55:10.393181'),
('ah9dwdubow5tubmdietq2hws6cvmpk5r', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQNbz:g1Gh2VHGuNEzrZ91mURmNg1q5tcjOsnLzs_bftubNmE', '2023-02-24 07:14:23.009835'),
('am293vdotnesvmuxwpgzrik26l7p22w7', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVn6Z:ZCLFWb4ksUXLmtC2D4_ByFacRYGWMuDD_pUEnr6uaqY', '2023-03-11 05:28:19.387728'),
('b26t86ak1dx0yda9ux5h0q508aw0hc2k', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRTuh:LexenE359JNKu7BtcY7zpiDgOKHjqguP0Jpc2ie6fDw', '2023-02-27 08:10:15.222226'),
('b4mz6yejacfd0cg8fg1t7uwc8fjqd5yd', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSsTx:sRtyx4SR9OlPAKaoVYOoWMlpiGthbnniHcR3JCtL_XU', '2023-03-03 04:36:25.627544'),
('b9zt9nrjycxhtl3a0jkjp37m6x37sxlx', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSu6B:tLIfNyHHH1jWhwbOC9r9AzeADrUlzt06sbMXC0pTNr4', '2023-03-03 06:19:59.216865'),
('cayyjmc2k6ny4vqw85er7zqbor9wkvuj', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTLh5:-v-wYS_Cp79rD57EuZLYTSl3gIbPEMW2zfVtcrdDwH4', '2023-03-04 11:47:55.681006'),
('cknasspr62rpj4rcgprrm3od5eczyrcq', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSahO:CbeS39ZgL-nUJJGdpiZvjsIXioVxUKPC46CBtZ8W2ok', '2023-03-02 09:37:06.962929'),
('d0qs08e0megjw6y96n9fitbouayuy2jf', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSCsd:i6TsU4e2Xtopc2ML59__tC01dwwGByMaNW2WvSPNjkI', '2023-03-01 08:11:07.733439'),
('dm6cn9ypdgliq20gadfc9qzfvfe7i9gh', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQl7X:xMzbwADo3sUy7nxSDpvWuLHMJPSY_TZMnZy48sQCc4M', '2023-02-25 08:20:31.573907'),
('dz5biwlcbmoscwkg66r3dhmu0e0wqyod', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSXz5:Lq4GKvWuBUgonj5e9dabVyzPT6j0EiTpIgimr17EH90', '2023-03-02 06:43:11.098131'),
('dz7rdo0tteyysbon0ddlp5rs686juvm8', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQi1J:xzqWWwQHjWBA1___Jr5_ccBC8Qc8jUuj6duSatIKVfo', '2023-02-25 05:01:53.497345'),
('e7i29sjr4s82n2kflbpzg758ivsjsgv8', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTGIF:EhikSecdbOKlTk66kacQR5r3Wpl_AHQfHXi8HXfTaCc', '2023-03-04 06:01:55.907115'),
('eeu813arld0a1654smp96yw9b0qjcywv', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSsmj:BDcXWKIHWxMjNoc404P0JH8y5JD4uGHwhwMKUTMrs7U', '2023-03-03 04:55:49.475200'),
('eio6jd8z7xgcserwd9zmezka5mek9qre', '.eJxVjDsOwyAQRO9CHSEW802Z3mdACyzBSYQlY1dR7h5bcpEU08x7M28WcFtr2DotYcrsyhSwy28ZMT2pHSQ_sN1nnua2LlPkh8JP2vk4Z3rdTvfvoGKv-zqhiAoGT5bAeSESFbR-D4IuGXCIDk2RXgoDTqOzUQmFWlLWmAwk9vkCFfw4VA:1pbfko:LdJoyS9gbb5Qprlf6aw0rBtBzK2kZBCrRlxTQYXwZCc', '2023-03-27 10:50:10.742610'),
('ek46xht6eofjxkg7c9h5077ce4hq5yp6', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRWbj:GZUS1LA9QZDt-K1UHWinDSw8TxmvoeDVqhe4w697VdM', '2023-02-27 11:02:51.253159'),
('esaee2y6xnbv28b0l4y7bmzo4cze249v', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1paaWt:0kODl9WAlBuoSrx-R2-xmNFUf4yexz4Uhl35J55bM8Q', '2023-03-24 11:03:19.141890'),
('f27qlz7mb94bm6k7gl0sf68qulsltxql', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSXf3:6-0MtxhBWXZFFn1c1xnjOWz9LW4VumFWXP9ICZhMq3U', '2023-03-02 06:22:29.366263'),
('f4548ylllf72opfs5mpo5ciftpx01k5x', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTLiL:Q32bHM-WGc4FddXgLKREF64nI-1Zj5qwQ8pWrapl9sw', '2023-03-04 11:49:13.580884'),
('f4ebqu0m0e54lvfzd39p6bezq1gz5sfn', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTLDk:2NInRIKMh5x8OeqwJoyG-4KoUHTyI-hG_qyVF0Eiszc', '2023-03-04 11:17:36.491479'),
('f6w8q0b9t408tzn30chr7nt81nzwturd', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWsZm:CH5dvstiYb6iKAALnX18B96MQXY4E_SNsuwI8SClA2o', '2023-03-14 05:30:58.627619'),
('fhxttp7z6bdxpmhs4phmg01bz65nimh9', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSWdR:z33mLYAC3-g7aKb8TdoPob6QxGGqCFBX4DDN-vBmw1U', '2023-03-02 05:16:45.090222'),
('fi0yi1ir145i0i41bc6tzikp990suj6x', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWctt:hycUxCth8yFTofW4MZgaa9But1wjcLMHfv8A55UOPTY', '2023-03-13 12:46:41.041780'),
('fmxww1m6lmdlfvpil5vvbt99l62syt23', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVnT2:YXQskf8rMamc4ckgzb6iwuRFtlB2BJNEZYMrLU1xxp4', '2023-03-11 05:51:32.035117'),
('fv4r1sykrp1ei9gevkfpps95l0g30wjh', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSudm:lTBWE_hbsrPaaSh_Q92l6RZqIISCBW82z7tD8lVvaxQ', '2023-03-03 06:54:42.904359'),
('fx7mjsh3666scf4703fr0jbui3l5er4z', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1paaXD:iaM5bvURep-mBGUjrB15D7pvwwMicebvRq-j0QVJTOY', '2023-03-24 11:03:39.122150'),
('fx8y13zj24pva7mk2z9k5mkvv8v1c8xl', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pU2mU:pE1hOUjJcGvBLfUx8g7V26WROqMVQexbEZ0I8YqYmmA', '2023-03-06 09:48:22.939483'),
('fy6bakp7gla5p0vub13vodc1wb6djz9b', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pXJm7:JClJUe40JzWSZA-yOCJih35wSTMAh2ivI90dwJZmCQs', '2023-03-15 10:33:31.955881'),
('fyameixucmij9vsiq4ijekp2fjajdj0e', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pUKjr:eC_u4SPGLnWKOij8uw9ma_uFSUTikUBk7Wnsop93iG0', '2023-03-07 04:58:51.211248'),
('gagxuadeco40tiifwi8u4upb63knj82z', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSCAk:kTF_yWeHEqAgCQbU2QvvujlkEOWwFz4hxjndHtywuZA', '2023-03-01 07:25:46.154559'),
('gjv6jco58kq7kjsl42gjl6csmxld7bkg', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pXyZq:jC1JSj5we8mnyJ8NTjW6A0Ii6czmTdoq1UhwiOizKZ4', '2023-03-17 06:07:34.837000'),
('gtp4f99uqkhtelybefixa0tjosph4oob', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSX2c:4HIkRThxjvJBS29aeu8ZZq2-bnWbUUmjF2OPkYFW3Uk', '2023-03-02 05:42:46.670328'),
('ha7wzqg00msmgz7i995957d6n38w9dlw', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSvK7:RfOGyT0YAd-Rw58NmVlJwupiNnNRdzWXVjYSoUwajvA', '2023-03-03 07:38:27.007740'),
('hgsmd8xze7qxjcvdaqe3k4dvilmr4fzz', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTK5s:1rdRXPdp5Ulas2zkeW3qwDQHHNTigd0rbdfbnztkRUU', '2023-03-04 10:05:24.165631'),
('hhenitwktymgcnu1blthlcd3ohax5w4w', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQNcZ:zfBZ6Glvhp1Rp_xwSLdINW-On1kXwT3dHa0MwJkfeuo', '2023-02-24 07:14:59.178466'),
('hm6bin2te5m8nx3jsxjfpgex2lorzpi2', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1paaVJ:BtzPye6mGSvV7fzZleNRiuxSuDfztIGD039F8WBgv6M', '2023-03-24 11:01:41.184686'),
('hu355ct2yeap823i3e5fuwt4nbseygy2', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQjVh:pGT2hdQpW95ANH2y8v2-b93P1PsXCVXQvIznn-6sB6w', '2023-02-25 06:37:21.094451'),
('hw54ki5hdfei5snkuel57su6fvxhkmi0', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRQeG:oIoEkzLgOO_7wjUJnxR5Ww03iPoaFLesIK4rhzKjnc4', '2023-02-27 04:41:04.734243'),
('hx0d5li8iwkmfcs2q1o81ls4d6u4j829', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1paaVp:g4rEjh9Ml5TAm1WfqcF2gmIEXIMbgtrKUz5vVjIoRRM', '2023-03-24 11:02:13.810334'),
('hxw0d6dysm5topjhbm0480ia1alawj7z', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTyOl:a1OX6sNJq77Cbq60t0SeGgNafCL6eN_NRhE30umnMb0', '2023-03-06 05:07:35.675398'),
('hxz30c2bvyb3mw47a9m9rzqylnc5vs7c', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQRll:m9qp_fxJna6_FqECRxVzbqEs1jpC9fFDaBi6Ph9DEE8', '2023-02-24 11:40:45.690121'),
('hzqx9ernwcaud0tvlvss0y862pfhzv32', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVV7M:FebvzqhNpxaudpxSUp57eHqinBJc8PUKJDFh7xKAfoI', '2023-03-10 10:15:56.764709'),
('i67r5435hzluwzswqoavnbdkef3p6wsv', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWaUs:k-NgOsMxfHor-airWW4DZa4JtVjmjFk6OpdFMLZytfc', '2023-03-13 10:12:42.429586'),
('iczqx0oh983uqg4web8br8e7552m5nm7', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1paV6V:HNNEFGb-5N6pVBwn9ieZWTbbEZGma-uopJz2W6YGDVs', '2023-03-24 05:15:43.108224'),
('ihosl3hetkaizfyu8aq15d6owmc1zlfh', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQkaa:DbltOxJ3NBkyPL1oU_l84wEW22rrSCsYMPZ9ygnYNhM', '2023-02-25 07:46:28.840526'),
('iu9k3rbzait3cthbdtski59gnry47ji2', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVrS4:pRedASMY2MmzTtJqtFlO1CCBCTdFBA8WLQTeV-XLZsU', '2023-03-11 10:06:48.975877'),
('iwypqzx6iim8ek7z2vjsdu2td419y7dn', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRnYD:vszajJ4-zZqGYGqSNvqClzs6VBHZ30AksMayItdKTc4', '2023-02-28 05:08:21.136753'),
('j2j2rk0vaxecb9bm1rxmoowll9cru0kn', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTHF2:gq_GQbPFUrfyh7bQ1vDVsbCo-CqxApWrnWDc3PHf620', '2023-03-04 07:02:40.744900'),
('j53t5qyp2jms7s6ihvif2qeez5gtuqs6', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTP0h:e54mLcwxEsNcKwBKTjuSwfsArR1DG6tF0hpXQ6WJr_g', '2023-03-04 15:20:23.474761'),
('jl8ddmcenigbw1pqdjuq5auscn1hm79d', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pU0bz:zAsRFOn-YiDiTm9s3uemzua9WW0Q85nwCCNcMaPwySs', '2023-03-06 07:29:23.976220'),
('k577xbt6qftctirt9s28763kjrpk1qzy', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1peUBb:7zGoQQiesmAEnIzbXOEmKePwf3Y4kf0TPl8XbGd3Ujg', '2023-04-04 05:05:27.982634'),
('k6uxd0oz297xqzvacqjr19n4wtci2erf', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTKmu:DUcczkx1IYigZbxcTIKSMLlryADjWhFMpHwyyPLu680', '2023-03-04 10:49:52.601416'),
('k8jaojx6217zaegqxr12ovwfa2udrp2r', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVV7J:z6RPE3dBARJwvLWOyaYS1jW7iHsw_TUp3mW0t5mnITI', '2023-03-10 10:15:53.410292'),
('kbrz4k4rbav8lqb1r02zaflxmabzry3v', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSFKX:WRR_Hg0Gi5T0GFdLIkHs4zO4eX-8kyDJvTB9bW5mD6M', '2023-03-01 10:48:05.128519'),
('kl9cymu5hf170a20k5fu9jat6vplyvxz', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSzNg:ZTY56ByzNus_DWAOadYvTnkmoCvLnFOU-s0nzGL39Vk', '2023-03-03 11:58:24.088194'),
('kzo085x3fcpyoupjb3qyc62bg6clt9zg', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQOD5:QocKA6S7wCqSpwn76_0X8s4Jwuq5pguOafoIPpaLSlk', '2023-02-24 07:52:43.533650'),
('l0cj4yljhpavgmr4yt63nb4m9vxdrbql', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQp9o:aKluzjj6gbgN29pbcwc2oaMFArIvx35TH-HW5DdwA9E', '2023-02-25 12:39:08.549153'),
('l6aunzqmopyb9dom6ttaag14hh65l5lk', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pScNX:ll_IYqFGpVAXT33cakIZmnL4bhJiBlrn9-1NItNn0ng', '2023-03-02 11:24:43.907716'),
('laktgwrf1tlg3uht3o5r4j5x1hn8kqeb', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pStu5:tt4g_JMbxY2cNTvm__XTwRNCFPBk8tPlRR21owBB_y8', '2023-03-03 06:07:29.073747'),
('lcd6bodcfwylk4tlverqb678rnyvcf6a', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSuqU:j2h2kgHrhEXh4m3TIpgWXum0KT86NMmf-aHZngC4hMs', '2023-03-03 07:07:50.408612'),
('lkeh87ggloktz8xoea5f3h4eaflp7vtr', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQn2Q:0ZaMX4CJBUr_RHDuAZRi_Ec96GxSlROYePBgSW4N8GE', '2023-02-25 10:23:22.770740'),
('lmfvea9f9mjnwrhmykfcs6tiaf1pw445', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSFvv:iDBHmsvD_7V4UZzwmlBYR5kLo9L76lpVLTH1z2LULTM', '2023-03-01 11:26:43.716421'),
('lpowjve2ny6s9hv7jxbwxw5thf4r8t7m', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pU4Bi:MkHDKpCOdwgB5E7avPFaG8p-eiM5UtTNcQMVYgyC6RY', '2023-03-06 11:18:30.498445'),
('lpvvat1y7cp7gu6me3ivwxov0937h9vu', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQRIY:ECZeblCmTmA_fXKpEwmXlb7xx3aAG7Oq05phHMzt9xo', '2023-02-24 11:10:34.297913'),
('m0h2xlr8xl0ex9dmjswhlxn4x4fcpd44', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSvoB:dY5zy_r8-z4zXkvw7hlxRL4M4YATTqEwRBWrMJMK5eg', '2023-03-03 08:09:31.440635'),
('m0n3f1qqzwp7nklj20odxopbg2j99ege', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQStI:HqtW-EjPNZqPDhkHKz3CxDZIW9ivpyKC7M579ninWYU', '2023-02-24 12:52:36.200963'),
('m5ckamex8h5h8x2jc97r8bpiq7ygousz', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pUKd3:H1hAIh3sK1Zw7oI70eLp8G0mtFSNuQ49MJID3geXt2U', '2023-03-07 04:51:49.630663'),
('m6skzi4cq8hqytgs7z4sluyyf5z72ju3', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSYvT:2UgP59iiykTVJFC0Qwg5vBl34F3PsTP_iGfUhXYUJ0U', '2023-03-02 07:43:31.676268'),
('mdgh0xzw8uyucevr0fx1ppdh8qzp57zg', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRoWP:k2Ejj_AkV2N7q760xjrSib2blCyhkhmmEsbETDneIKg', '2023-02-28 06:10:33.150806'),
('mw3s9ypprg3o5c4q2m3ay1kwxfj5ijso', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWaVm:JfTQlMWmziNg740x7-psy0hgqQh-gOiiiRYcES7oFtk', '2023-03-13 10:13:38.782031'),
('mwdnuo0ogi31hloefx4cpncnggfc9hh4', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTGlR:z_FZWgaM4pdNx8MqaZbAPF0YeGQIj0KfYAREt8yIvFs', '2023-03-04 06:32:05.151458'),
('njgka76abnfkh25rc1jvxs6ncbrqokv7', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVsTT:U49E2DXxTOrFXOiBDqkLv-8RfszDYgc8eLTUdiNrUBU', '2023-03-11 11:12:19.240141'),
('ntio8g1hmykqj8o9jpwwbrfu2ho9skxi', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTyNM:fdwWYG_xonIKRAGFS0aMNwQZd01YMkshxww8x6AfkSY', '2023-03-06 05:06:08.366882'),
('nxbaav7rznosls4ed6f4r6hhpyhdeaw8', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1plqVk:Hsuv89cXICDhqOJP7p6_RxmFkolM7xZXJ_6jnFShxX8', '2023-04-24 12:20:40.550197'),
('nxbhr8vjbmmoocj0qhqbh0z11ofccqmi', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRVSb:Qhe0Ht-aU5zpMOYmfm0T-aT9195J3sYbozw1mG8glLY', '2023-02-27 09:49:21.245039'),
('ny2upkmkfhlp7bmovh6cnayemcs7emfr', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVp5H:ED5n17QeWbNl1xOJvpy6IuG8lktoGvNDZmdQlzZDUpI', '2023-03-11 07:35:07.872595'),
('o396irhic3d44mt5te0ke2iutub0swz1', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQNfT:jeC0i2QPknYqmcD52Mtn6bt46DX4Z8BHfhucfHYldVk', '2023-02-24 07:17:59.539719'),
('o3teg5mxmgyuzc2hunpun7sqwx7vddx8', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRo1Q:wR45heWjkv_Gjr1UhBrK2atIgrNM1h6ztY4EHga269w', '2023-02-28 05:38:32.829101'),
('o89nb7dqyq9cb7txa9o3paqq76cemmcu', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQOiK:xmMnATM8KNTQY6Dp_8RaGPIolGNFZ0TA_1sw_JdAue4', '2023-02-24 08:25:00.232166'),
('omy5b1dyns4ipc89b14oamv94zrn4wds', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pULey:vYRq7rUaTeBAfQvloS3110XnROqreq-qb1lqIOuBgDM', '2023-03-07 05:57:52.256928'),
('ow4tdonk3vwwxq8pbfd2poo67ekusp00', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTH7x:hC2UeuNsxjDIlTmlxihtophVgNz3VS8RTg0LgaTjdys', '2023-03-04 06:55:21.881338'),
('ox12vc2hyfhx1k1ea7o7nbw4028og7k1', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSBYd:NWbN6bsyHuVgtV_f0oxDjNnDabt9owOYkQAc1pLib5I', '2023-03-01 06:46:23.496199'),
('picud0dgmxlpz0rrtldhejqljoh2xsfz', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQNhf:oyn3Qkbmxh69ug7vWzgkp4N0TOOtB4iFXUVdFr6rNgY', '2023-02-24 07:20:15.883654'),
('pjeevpqgirdr0kj8epl1yy9vdm98mo59', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVqtz:BnAyyqx4SbSL-pdX5mmEqdnaGR4Xvu37d9hclwLrCUs', '2023-03-11 09:31:35.585356'),
('prwagxc2nktst8962axph4bvif5pm61l', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVodb:Jv5bDFOlMTzGzPNZxvZ6qAl1zdN34v-s7kbHZeIa2Lg', '2023-03-11 07:06:31.214424'),
('pv4nox4cxk93f197kaeuw02m1od5d31i', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSC9o:axn9CAqb-8xAcCXTQ9fIlBU8zKC7dcJVG-aa-l4ZOjM', '2023-03-01 07:24:48.371882'),
('qcmgy1kt56fe6r7axdglubdgn6g2yze6', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQmSA:Gicl_wCuqm0qSnIlwW-hhbSWAgIS3Rsf5ZFsrVBL9hw', '2023-02-25 09:45:54.996648'),
('qdwzharh679exukputpg1ppek78fci09', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSYy4:sreq6WPPpCmp71Vyph2Wv7FwRC0wlvzAOr3rbQN0_Hk', '2023-03-02 07:46:12.909786'),
('r54wa1exmt7mze2p5g94bzo4iqu4wuoz', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pStQv:IMTgULiXKB9ZKrMYB_jCeGXhwceDwaorrWWCHmbiTT0', '2023-03-03 05:37:21.538328'),
('ra6w22ud9wlc1zojnrwapc30qbpa16gj', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSEqH:UMRDOsY-OtWG-_9nBSMDx-CbZAuBnZlaxa_qxVZEpoU', '2023-03-01 10:16:49.304607'),
('rgcjen5t15qbqhqjsxskhrul00ubmcvk', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQofb:acIColCsePaV4d3iQvjTLRQcuXGAzCZ-A6PzXfPVVQs', '2023-02-25 12:07:55.801964'),
('rgj81gkknve4fk6mlc9libh9nk4w9jn1', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pStrW:uJl09dWO4n9qaLrkIMnlm1Vc8cUbWR5fKvGw6qm9EYw', '2023-03-03 06:04:50.408838'),
('rgp146g7m4jz1ssacom8cuptszjvtcfg', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSCBN:YI8TbSbvMur-56LIq8NtV_uzmIM9J-pfbZ9j8NG2BJE', '2023-03-01 07:26:25.870032'),
('rrtrn5n6qbj81w053oa0fsh1q22e5qik', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSuPt:53RBiFBxZfoHtAKr1I2iwLnQnJ4dH0OojZ7u_UbCq3c', '2023-03-03 06:40:21.620567'),
('rsurcx7oh2cnvr96c3dhzgodxkvforzz', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVmub:Kax1O5Jqkhs1cnrGdKoYq2_mfpJbUbI9-MLdAUtxeuE', '2023-03-11 05:15:57.909541'),
('s98hxy5qf7eguodbhaevo7kxh2pg28l1', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQQKQ:GPwlFoBXsiy7b77d14InVir3o9CDJSm8oYZwYqAmgHw', '2023-02-24 10:08:26.858804'),
('sab4ri5bu21sta5y9lcdbjqzuh5915r3', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pU0uP:tr8RsrDA7A6JhRk3GFy74GDj_bZRh6MQH5izAlvPXYo', '2023-03-06 07:48:25.078169'),
('saxj2fgijlfids1mtyjwj2simrirx9h0', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQPqQ:ubtnBZv9fRQSs4cstBjfsfjSw_yuAqz6sali4jRdhlw', '2023-02-24 09:37:26.063351'),
('sb9o73iv3m3b91rt9mj22ngvtlsxlcaw', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTyqL:iWtsAG45O4J_Ggg8Hm-D8F3G3xktyCiOwQu3rxoUQbo', '2023-03-06 05:36:05.488565'),
('scrbi95gh8gizror6zvxfodqgkkd06lv', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQOgb:Krj78fK5CG6zBA5fB8b_XrZp-rOMZ-37AUikoTGOxZE', '2023-02-24 08:23:13.342954'),
('seqaol3luh127csbsobtzsobvyxgis0r', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pU0PY:2YCDod9pZn48yZ41mX46fbWubco5KpuON-QyfrvhP40', '2023-03-06 07:16:32.871474'),
('sguht9hj2nlaqdxczavjim8t4bjm184e', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSbjZ:NEPHCp2mjrzZz6XBsdyspbu9MYpI3t60aQEZtirgHqM', '2023-03-02 10:43:25.739030'),
('sjd5lqzlbu7xludixvek39cvyzp5rjxe', '.eJxVjEEOwiAQRe_C2hAKIoxL956BMMOMVA1NSrsy3l2bdKHb_977L5XyutS0dp7TWNRZDerwu2GmB7cNlHtut0nT1JZ5RL0peqddX6fCz8vu_h3U3Ou3BvBexCIAx-iCIbIQyTqGgAZDMKeBxBeL1kERYT56I-gLEYkFNur9AeGKOIA:1pd2oC:NbieWgTMSD9j_EgsxCVPlciJebUEjVvrz6l-d7EQTEI', '2023-03-31 05:39:20.228495'),
('sjz3i5s44l6f4egjfpd5bm6a9bnfngt0', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVpiX:RYPn9xbZzsSIlnL7muXdFravnFI3Y-8wdgPLzrkMVbg', '2023-03-11 08:15:41.784327'),
('smejks9973pzn3v1842zbkqiv81j17qo', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQnVn:IsjLitO_LPdzr7JXva9eHmVLKQqftxndh5D1GamDXEE', '2023-02-25 10:53:43.878613'),
('sv4m6h9j7dycltcq6uanfb0u9ss80p01', '.eJxVjDsOwjAQBe_iGln-rT-U9JzBWttrHECOFCcV4u4QKQW0b2bei0Xc1ha3QUucCjszyU6_W8L8oL6Dcsd-m3me-7pMie8KP-jg17nQ83K4fwcNR_vWQBJUMSELB85oDV4rqIBAEMhJMjoVo0S1NoXssk8BaqhWgRcFUGj2_gC5rDb5:1pXExj:G7hkr3r0Gg0fsIvWUp8CalSGLOyeCCYGD8753nzS7gY', '2023-03-15 05:25:11.648984'),
('svdh04uvqi1z5cyjwajrrf1epdxdy2l9', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQNgQ:YOD3UEb7UZzHnxMVCGQB2EKM0wexFm9cz7wKbQXFnPM', '2023-02-24 07:18:58.181325');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('t30iva3cioulx29l44wkwdqh9hc8ybna', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWWHz:LrEsAThTXOF-zRdHHVRurFSYCqheoqnpcqJdTSnzUfk', '2023-03-13 05:43:07.374081'),
('tddpod2koxbdrp8b5i3ghlqcsd3fugxv', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRX5I:owgQ5_sydOyPmSRRGk__8dbaK4-le8eaAcEWWDawrBM', '2023-02-27 11:33:24.030629'),
('tk8wl99h8mhfe81qq6nfmc96cxl2rrwm', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pUPfq:HWRoxC-JCt0NeX7on5gH4MWeZI_o7wy4a6rJiprN9BI', '2023-03-07 10:15:02.544520'),
('tn3kvc2oymznxtkt45mh1vor9ppzkqiv', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1pluo3:tbyVpdo-dWoXxmdA_QhaUku77mq-yFFf4xfrLrLIKJc', '2023-04-24 16:55:51.515627'),
('tnrleuk5afakqona8jfyg83swuk6jz8g', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRSHr:chTvgmMWOEhj6OnBHVe4f8ZqziUEfkpr1OPg-5IszIE', '2023-02-27 06:26:03.805420'),
('trygc46bs8htlty736zzym7v271amil0', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVmOE:_l1sGaVyANl3tAKxrAH_EAkGW7IRbh2TSHOw4KxOGvs', '2023-03-11 04:42:30.050675'),
('tsaj8p8ygj1inrac5n8s7o9c931hr6pc', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTyv8:8ElplkATIYYycJmN-Pu3jk3jhDz41nM63b3f2KQJUNE', '2023-03-06 05:41:02.832613'),
('tvng0xs56t9dfqf0j4yroha1jhce9kmy', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSx1k:P9hPhEUU-xyG4CEdM4WH2YVde1WUXa68m8ODhcAWue0', '2023-03-03 09:27:36.162334'),
('tvu5bf9exvq235nmiplhvx8yhw2fxzde', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSCOs:vQkhw268fOm0ZhnueQVsoK6dH2n-AYGeXPAiIUyIWnM', '2023-03-01 07:40:22.165171'),
('txu2e62l0dv1xkm7jlsm80d2fthx7iev', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pS9e2:bjHFE7tZ3V3T3-2cCxysTX3I8QZ0S9i70stOttiaIyU', '2023-03-01 04:43:50.810420'),
('ty5blynqkpbth5z7c8t78chazyul2w4v', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRTEY:GDMlo5nY11q-ItksocxoOBBiMmH97Qyevs-n_ZhaDdM', '2023-02-27 07:26:42.786419'),
('tyzyqzq4aojdcnde45roz5ht2jfo72l7', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1pxlUp:6HQhPJrMwbxGzxPUj9RP-JPfiyf0YsvNLsLShttnYCc', '2023-05-27 09:24:59.058564'),
('u0hz2kl9roe9dul2p1jsrjhl8tj7en9q', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTHjj:2eipi5GwTD_zldJZfDupSYXfjYQVPymQGLyb1gQawzw', '2023-03-04 07:34:23.450427'),
('u5j45tunqw1ms6s1ncyb3qaquf4m2km4', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSZPU:JvcHCOj-fVm9i5r54rDWnfGfHAPxiHlXEOlEnn7W-N0', '2023-03-02 08:14:32.047766'),
('u5u39u8mgo4n8dsfyfh55xuw40ka0bgg', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVnxo:xNKgCKhi5ycejeQg17not41r5JOwHDribAsAVnInsAs', '2023-03-11 06:23:20.384698'),
('u9n5a7gpts8fobjvsxyxyiao55aiu3ov', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTzvT:LgsGcHJQTScd7Bw5FpxJBY-9_gYCGNYZa9A6iNbqxyg', '2023-03-06 06:45:27.090851'),
('u9tm3tqk288ce32i7fy6ap1qob72mjcl', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSxcA:7XNz_Emj4qsF82LmEA3hzX4k_1duHUZSx3WSka-zNAg', '2023-03-03 10:05:14.556959'),
('ufey9u6l5jtcm1rs6rmtgkf7xsu8jwgj', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRRTD:2DW_LOnxxaCBztzGgYlUdBgD4JfG8Z3oovIHKytycsA', '2023-02-27 05:33:43.098650'),
('ug5kiux7h6c32kg2ng6u1ha9fxb4hnsy', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSEG3:MxAvjCS1kgUHb_0p-a3AO_wbx3jngm1fY_xGHxERnvE', '2023-03-01 09:39:23.245312'),
('umx7xdkrzoc8fnvpvcqq48y36vw1od4n', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQiUh:OfJEgiYv8gDtT7UbQsQtqFwah_242Ni36AQ04qJlqiA', '2023-02-25 05:32:15.280198'),
('uwm3rmavbzpsukiebwy0e1oh55fjdynd', '.eJxVjEEOwiAQRe_C2hAKIoxL956BMMOMVA1NSrsy3l2bdKHb_977L5XyutS0dp7TWNRZDerwu2GmB7cNlHtut0nT1JZ5RL0peqddX6fCz8vu_h3U3Ou3BvBexCIAx-iCIbIQyTqGgAZDMKeBxBeL1kERYT56I-gLEYkFNur9AeGKOIA:1pZ3Pq:K7cgVIL17NvuzbdTcgAwXBeMrGlzT4YJrMUlyhKLWS0', '2023-03-20 05:29:42.251380'),
('uznpb958665us6pvt0f0zxxm4wqqiipu', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSzIh:DLQYH509oojI0u-t3tR5rH9exbEfQLLjn-B5ljQme8A', '2023-03-03 11:53:15.960123'),
('veeutguxxu617ph3eigu8okmenyyr3xk', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWVI7:LwvcUeFbBeCYnPAo0Nv_B1v3u6lA2C_MPOBz9q73g0A', '2023-03-13 04:39:11.121107'),
('vvn322tfdp1z3ur9c3436er7dag1wlx7', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTyMU:-a1-dkOQkhWRdnYb4JQHLHwH7suzKGSAf559AbiSSho', '2023-03-06 05:05:14.219030'),
('vzn2idkbacelqgt09xixr16bry0w9dke', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSsx7:CaQHGN5-cyhFnPjoeWDfBHs9MvGua89FtwZrg2JN66o', '2023-03-03 05:06:33.029524'),
('w0vmnfmzg2qolnav531foi6hwg2u35r2', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQSGL:FgEx6nRbjBDakoAdvQYtm-TKHPDBXyx8zo_uI1tM1aU', '2023-02-24 12:12:21.802912'),
('w1etkdt5yw4o1mm7vmfb0ghq1vbz6x37', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSXVp:DdNqr4izcJifApGe7mdbdoZUA9FcrdZRyp_s2MmOK5U', '2023-03-02 06:12:57.371325'),
('w1rqqswvq4eew1l0wr33sh4wdjfcaceo', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWaY4:qLXTOjMDCV9ZH5FADXjoZT8JtZJCtmdZtfpH_a6Flog', '2023-03-13 10:16:00.751172'),
('wj51oyb4992j7mib0l14sdfkge5mkhe9', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pRW7q:q4RrngNGkK0TLUAE-I5tBCdqE-YhiIu5WnvJq3EiM-I', '2023-02-27 10:31:58.679007'),
('wmmhwnr2vc04hwjywi1oc9ytwpwc4xpk', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWa6x:mZeglUjKrBWb8mti6Dj1zAKbTLZZVWsBTP3GtcWUkSA', '2023-03-13 09:47:59.506153'),
('wz19ey77be983l1v1xbum3h1eo724myt', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pXJ7o:v2tW4SVGR7UFLodzy5_Fw2J3WXzdnuw4Th_kJggCqM4', '2023-03-15 09:51:52.435877'),
('x16atk3h5ye0gh2szy1naxmtljp3uv34', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVsws:AE3oKpaqyIS9PU0pTEuKwrFz1Xt_pfdBG2yQrSeEm-4', '2023-03-11 11:42:42.823417'),
('x47t603cpuby5ttq4kftt8lugampg0l2', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pT0Sf:n3IEflj3w8mc2RulXwD12vqR2JdKxGeXxCxdFe85K3U', '2023-03-03 13:07:37.129737'),
('x702fse3b45gf7fomciuhyqrkjbm4xgn', '.eJxVjMsOgjAQRf-la9OUYm3HpXu-gXSmM4KPNqGQmBj_XUhY6Paec89b9XGZh36pPPVjUmfVqMPvhpHunDeQbjFfi6aS52lEvSl6p1V3JfHjsrt_gSHWYX0DOCdiEYBDaL0hshDItgweDXpvTg2JSxZtC0mE-eiMoEtEJBbYrNEcn7yWsLzU5wvX5jxY:1paaQW:EMxGiEwG-TUB5fnp6thdwbeI2a2MHa1_j07P_v0-yEs', '2023-03-24 10:56:44.025739'),
('xogcs6fqtg52a8bwbi9d7j1njf2307vk', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pTGer:QIGjGLJqYbKfQ3Qw4n-bssCv4duqhq-d7Kpcw0eqEfI', '2023-03-04 06:25:17.679110'),
('xwcpawtr8rp1en1txy3z4bp3d6uus06t', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSckA:MMJuUVPk1SQXJtjixfTAJHuQrloZyo8g3Tt6aJ3BFcI', '2023-03-02 11:48:06.673320'),
('y29fwonxoo9sg3jv4rwolq97sg8xzc7q', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQQoC:meECqKAQSC02H-pF9ZhL0ib4uY5k7_9qYu1bgwCBg-s', '2023-02-24 10:39:12.632619'),
('ydls2u6k2nghvuswo57b35vr8crq42ox', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pU3SD:37Wc1RTnO_yLUvBb983P8_bf65LFysxcDIGPZ9aEff0', '2023-03-06 10:31:29.505260'),
('yp3xxnkckba7vohepwp3xp1fe8zafr1k', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pQjze:22gN_jyH4HlY7qseYnI9UPBkf5PGDwqGX-HPV2BczvI', '2023-02-25 07:08:18.273315'),
('yv43vbh149mz0dxx4vjrbym7k4avou6z', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSy5q:RBHE4kbMJFTtf_7v25oXlAS9difVWUXlgL4Gm_8wzIs', '2023-03-03 10:35:54.482672'),
('yw6snwalki07k9px63ihkaf1x607bbit', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pWd3y:hkWnBaxZG9-vqcoY3y865fXjp0GB9Z9SDSH4WfQqg2I', '2023-03-13 12:57:06.149056'),
('yxdjttdi5uzvfhfalevhgu1jniwhey6b', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pStl8:g3KHuB0OAjmPGfLB7Bsg4zYjKxAsQWEYOSdQAvH2Hns', '2023-03-03 05:58:14.102478'),
('zhuxyy99jkdaci5okpme5eo7g9wj52b6', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pSAbe:XYvaBIuhlRPlT3GuQc6P7trcAquMkSyHXvhjUCKQbjA', '2023-03-01 05:45:26.222543'),
('zov6ppn86gvna7tt1rzw06x8hdpgxs6o', '.eJxVjMsKwyAQRf_FdRGjToxddp9vkFHHmj4UYgKF0n9vAlm023vOPW_mcF2yWxvNborszDp2-t08hjuVHcQblmvloZZlnjzfFX7Qxsca6XE53L9Axpa3N1AHMmobhAGjlYJBSUiAQGDJdKSVj1qK1PfeBhMGbyHZ1EsYRAQUaosWfNJW8vXFPl-cLTrR:1pVrvH:YSQauyfYlRkcTO16IBD9Po-6jEoxvSsJWJiS-zBQCiw', '2023-03-11 10:36:59.227733');

-- --------------------------------------------------------

--
-- Table structure for table `exception`
--

CREATE TABLE `exception` (
  `message` varchar(500) NOT NULL,
  `side` varchar(200) NOT NULL,
  `symbol` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `sr` int(11) NOT NULL,
  `time` varchar(200) NOT NULL,
  `Exchange_name` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exception`
--

INSERT INTO `exception` (`message`, `side`, `symbol`, `quantity`, `sr`, `time`, `Exchange_name`, `status`, `id`) VALUES
('(400)\nReason: Bad Request\nHTTP response headers: HTTPHeaderDict({\'Date\': \'Sat, 18 Feb 2023 08:00:38 GMT\', \'Content-Type\': \'application/json\', \'Content-Length\': \'61\', \'Connection\': \'keep-alive\', \'Server\': \'openresty\', \'X-Request-Id\': \'[d666ff33-2199026267]\'})\nHTTP response body: {\"label\":\"BALANCE_NOT_ENOUGH\",\"message\":\"Not enough balance\"}', 'sell', 'ETH_USDT', '1', 210, '2023-02-18 13:30:37.842471', 'Gateio', 'False', 1),
('(400)\nReason: Bad Request\nHTTP response headers: HTTPHeaderDict({\'Date\': \'Sat, 18 Feb 2023 08:00:59 GMT\', \'Content-Type\': \'application/json\', \'Content-Length\': \'61\', \'Connection\': \'keep-alive\', \'Server\': \'openresty\', \'X-Request-Id\': \'[763a143d-2198860722]\'})\nHTTP response body: {\"label\":\"BALANCE_NOT_ENOUGH\",\"message\":\"Not enough balance\"}', 'sell', 'BTC_USDT', '1', 211, '2023-02-18 13:30:58.891551', 'Gateio', 'False', 1),
('APIError(code=-2010): Account has insufficient balance for requested action.', 'BUY', 'BTCUSDT', '1', 212, '2023-02-18 13:30:59.596880', 'Binance', 'False', 1),
('KucoinAPIException 200004: Balance insufficient!', 'buy', 'BTC-USDT', '1', 213, '2023-02-18 13:31:26.866310', 'Kucoin', 'False', 1),
('(400)\nReason: Bad Request\nHTTP response headers: HTTPHeaderDict({\'Date\': \'Sat, 18 Feb 2023 08:01:27 GMT\', \'Content-Type\': \'application/json\', \'Content-Length\': \'61\', \'Connection\': \'keep-alive\', \'Server\': \'openresty\', \'X-Request-Id\': \'[d401c3ad-2199054546]\'})\nHTTP response body: {\"label\":\"BALANCE_NOT_ENOUGH\",\"message\":\"Not enough balance\"}', 'sell', 'BTC_USDT', '1', 214, '2023-02-18 13:31:26.975584', 'Gateio', 'False', 1),
('Not enough balance', 'buy', 'BTC_USDT', '1', 215, '2023-02-18 13:55:06.128631', 'Gateio', 'False', 1),
('Not enough balance', 'buy', 'BTC_USDT', '1', 216, '2023-02-18 13:55:32.616237', 'Gateio', 'False', 1),
('Not enough balance', 'sell', 'BTC_USDT', '1', 217, '2023-02-18 15:46:07.572106', 'Gateio', 'False', 1),
('Not enough balance', 'sell', 'BTC_USDT', '0.004', 218, '2023-02-18 15:48:51.837822', 'Gateio', 'False', 1),
('Not enough balance', 'sell', 'BTC_USDT', '0.00402', 219, '2023-02-21 10:45:39.010437', 'Gateio', 'False', 1),
('Not enough balance', 'sell', 'BTC_USDT', '0.00402', 220, '2023-02-21 10:46:06.591911', 'Gateio', 'False', 1),
('Not enough balance', 'buy', 'BTC_USDT', '0.00040', 221, '2023-02-21 15:50:19.025670', 'Gateio', 'False', 1),
('Not enough balance', 'sell', 'BTC_USDT', '0.00405', 222, '2023-02-21 16:24:45.396863', 'Gateio', 'False', 1),
('Not enough balance', 'sell', 'BTC_USDT', '1', 223, '2023-02-21 16:28:07.773305', 'Gateio', 'False', 1),
('Not enough balance', 'buy', 'BTC_USDT', '0.00405', 224, '2023-02-21 16:33:07.365646', 'Gateio', 'False', 1),
('Not enough balance', 'buy', 'BTC_USDT', '0.00405', 225, '2023-02-21 16:34:28.870582', 'Gateio', 'False', 1),
('Not enough balance', 'buy', 'BTC_USDT', '0.00405', 226, '2023-02-21 16:37:27.407430', 'Gateio', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.50473', 227, '2023-03-01 16:00:04.618244', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.50547', 228, '2023-03-01 16:23:46.500040', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.50607', 229, '2023-03-01 17:28:07.424949', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.50607', 230, '2023-03-01 17:28:15.196774', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.50607', 231, '2023-03-01 17:28:22.354525', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.50607', 232, '2023-03-01 17:28:29.874902', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.50607', 233, '2023-03-01 17:28:36.855950', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.50607', 234, '2023-03-01 17:28:44.420219', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.50607', 235, '2023-03-01 17:28:51.942514', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.51174', 236, '2023-03-02 11:17:14.863164', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '0.51174', 237, '2023-03-02 11:21:08.524726', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.51167', 238, '2023-03-02 12:14:05.128382', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '0.51167', 239, '2023-03-02 12:17:09.461743', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.51167', 240, '2023-03-02 12:23:51.449752', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '0.51167', 241, '2023-03-02 12:30:09.831599', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.51167', 242, '2023-03-02 12:41:04.205292', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '0.51167', 243, '2023-03-02 12:47:09.054778', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.51167', 244, '2023-03-02 13:03:06.000452', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '0.51167', 245, '2023-03-02 13:25:08.110668', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.51167', 246, '2023-03-02 13:43:06.656943', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '0.51167', 247, '2023-03-02 13:54:03.276795', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.53617', 248, '2023-03-03 12:22:03.249118', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.53645', 249, '2023-03-03 15:32:05.329933', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.53673', 250, '2023-03-03 16:29:09.787786', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.58873', 251, '2023-03-11 11:19:11.086024', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.58873', 252, '2023-03-11 11:19:12.301816', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.58850', 253, '2023-03-11 12:14:08.490687', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '0.58850', 254, '2023-03-11 12:14:14.621964', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.58850', 255, '2023-03-11 12:15:05.964497', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '0.58850', 256, '2023-03-11 12:16:28.488612', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.58850', 257, '2023-03-11 12:19:03.759675', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.58850', 258, '2023-03-11 12:59:06.706298', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '0.58850', 259, '2023-03-11 13:04:07.936284', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.00499', 260, '2023-03-11 15:41:16.472546', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '0.00499', 261, '2023-03-11 15:43:15.689708', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.54619', 262, '2023-03-13 15:25:43.048477', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.54447', 263, '2023-03-13 17:48:09.569477', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.54407', 264, '2023-03-13 18:23:09.531508', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '0.49312', 265, '2023-03-14 12:12:49.383086', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.49065', 266, '2023-03-16 12:20:05.755531', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.04593', 267, '2023-03-17 15:22:40.685043', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.04593', 268, '2023-03-17 15:22:47.337418', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '12000', 269, '2023-03-17 15:47:53.070989', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '12000', 270, '2023-03-17 15:47:54.024710', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.43606', 271, '2023-03-21 13:13:21.220896', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '2e-05', 272, '2023-03-21 13:23:10.375311', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '2e-05', 273, '2023-03-21 13:23:11.196902', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 274, '2023-03-21 13:36:11.078029', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTC-USDT', '0.42914', 275, '2023-03-21 17:59:48.518050', 'Kucoin', 'False', 1),
('Balance not found', 'buy', 'BTC-USDT', '0.03534', 276, '2023-04-10 17:55:16.173647', 'Kucoin', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 277, '2023-04-10 18:00:10.496692', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 278, '2023-04-10 18:09:07.825635', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 279, '2023-04-11 12:20:06.550679', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 280, '2023-04-11 12:35:24.558617', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 281, '2023-04-11 12:35:34.723653', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 282, '2023-04-11 12:35:51.690358', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 283, '2023-04-11 12:36:10.700942', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 284, '2023-04-11 12:41:08.657694', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 285, '2023-04-11 13:01:10.700149', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 286, '2023-04-11 13:15:16.755584', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 287, '2023-04-11 13:27:09.126209', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 288, '2023-04-11 13:35:14.556515', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 289, '2023-04-11 13:38:12.669070', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 290, '2023-04-12 16:55:05.949432', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 291, '2023-04-12 17:06:06.392008', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 292, '2023-04-12 17:18:06.215023', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 293, '2023-04-12 17:41:03.438979', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 294, '2023-04-12 17:53:09.747713', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 295, '2023-04-12 18:13:58.489672', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 296, '2023-04-14 16:34:51.416076', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.00325', 297, '2023-04-14 17:13:21.976878', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.00325', 298, '2023-04-14 17:59:17.561976', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 299, '2023-04-14 18:01:17.274065', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 300, '2023-04-14 18:06:17.639561', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 301, '2023-04-14 18:06:39.977697', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 302, '2023-04-14 18:09:30.588500', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 303, '2023-04-14 18:10:02.658494', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.0', 304, '2023-04-14 18:10:24.328199', 'Binance', 'False', 1),
('Balance not found', 'sell', 'BTCUSDT', '0.0', 305, '2023-04-14 18:15:35.315912', 'Binance', 'False', 1),
('Balance not found', 'buy', 'BTCUSDT', '0.00329', 306, '2023-04-15 10:57:28.762595', 'Binance', 'False', 1);

-- --------------------------------------------------------

--
-- Table structure for table `exchanges`
--

CREATE TABLE `exchanges` (
  `exchange_name` varchar(200) NOT NULL,
  `Symbol` varchar(300) NOT NULL,
  `api` varchar(300) NOT NULL,
  `socket` varchar(300) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exchanges`
--

INSERT INTO `exchanges` (`exchange_name`, `Symbol`, `api`, `socket`, `status`) VALUES
('Binance', 'https://api.binance.com/api/v1/ticker/price', 'https://api.binance.com', 'wss://stream.binance.com:9443/ws/', '1'),
('Bitmex', 'https://www.bitmex.com/api/bitcoincharts/', 'https://api.binance.com', 'Socket of Bitmex', '0'),
('GateIo', 'https://data.gateio.co/api2/1/marketlist', 'https://api.gateio.ws/api/v4', 'wss://api.gateio.ws/ws/v4/', '1'),
('Kucoin', 'https://api.kucoin.com/api/v1/market/allTickers', 'https://api.kucoin.com', 'wss://ws-api.kucoin.com/endpoint/market/ticker:', '1');

-- --------------------------------------------------------

--
-- Table structure for table `fills`
--

CREATE TABLE `fills` (
  `id` bigint(20) NOT NULL,
  `commission` varchar(200) NOT NULL,
  `commissionAsset` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `tradeId` varchar(200) NOT NULL,
  `clientOrderId` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fills`
--

INSERT INTO `fills` (`id`, `commission`, `commissionAsset`, `price`, `qty`, `tradeId`, `clientOrderId`) VALUES
(280, '0.00000000', 'ETH', '1690.40000000', '0.53242000', '810414', 'FbYXdTlY7PfQ39GJyiDjPl'),
(281, '0.00000000', 'ETH', '1690.41000000', '0.46758000', '810415', 'FbYXdTlY7PfQ39GJyiDjPl'),
(282, '0.00000000', 'USDT', '24516.28000000', '0.09096000', '2633618', 'PXs7hXA01D1fzXagUxsnXy'),
(283, '0.00000000', 'USDT', '24516.27000000', '0.10931600', '2633619', 'PXs7hXA01D1fzXagUxsnXy'),
(284, '0.00000000', 'USDT', '24516.14000000', '0.09096100', '2633620', 'PXs7hXA01D1fzXagUxsnXy'),
(285, '0.00000000', 'USDT', '24516.13000000', '0.08198700', '2633621', 'PXs7hXA01D1fzXagUxsnXy'),
(286, '0.00000000', 'USDT', '24514.06000000', '0.04685600', '2633622', 'PXs7hXA01D1fzXagUxsnXy'),
(287, '0.00000000', 'USDT', '24513.54000000', '0.09178700', '2633623', 'PXs7hXA01D1fzXagUxsnXy'),
(288, '0.00000000', 'USDT', '24513.52000000', '0.06404700', '2633624', 'PXs7hXA01D1fzXagUxsnXy'),
(289, '0.00000000', 'USDT', '24513.08000000', '0.11137000', '2633625', 'PXs7hXA01D1fzXagUxsnXy'),
(290, '0.00000000', 'USDT', '24513.07000000', '0.06119200', '2633626', 'PXs7hXA01D1fzXagUxsnXy'),
(291, '0.00000000', 'USDT', '24512.75000000', '0.04283200', '2633627', 'PXs7hXA01D1fzXagUxsnXy'),
(292, '0.00000000', 'USDT', '24512.74000000', '0.06649700', '2633628', 'PXs7hXA01D1fzXagUxsnXy'),
(293, '0.00000000', 'USDT', '24512.40000000', '0.14219500', '2633629', 'PXs7hXA01D1fzXagUxsnXy'),
(294, '0.00000000', 'BTC', '24522.71000000', '0.01019000', '2643647', 'zghZ6SUAYQxthivuls3LkQ'),
(295, '0.00000000', 'BTC', '24523.14000000', '0.08481800', '2643648', 'zghZ6SUAYQxthivuls3LkQ'),
(296, '0.00000000', 'BTC', '24523.25000000', '0.06157500', '2643649', 'zghZ6SUAYQxthivuls3LkQ'),
(297, '0.00000000', 'BTC', '24523.27000000', '0.11784800', '2643650', 'zghZ6SUAYQxthivuls3LkQ'),
(298, '0.00000000', 'BTC', '24523.31000000', '0.11580900', '2643651', 'zghZ6SUAYQxthivuls3LkQ'),
(299, '0.00000000', 'BTC', '24523.52000000', '0.09705000', '2643652', 'zghZ6SUAYQxthivuls3LkQ'),
(300, '0.00000000', 'BTC', '24523.53000000', '0.08685600', '2643653', 'zghZ6SUAYQxthivuls3LkQ'),
(301, '0.00000000', 'BTC', '24523.98000000', '0.10479600', '2643654', 'zghZ6SUAYQxthivuls3LkQ'),
(302, '0.00000000', 'BTC', '24524.24000000', '0.09052300', '2643655', 'zghZ6SUAYQxthivuls3LkQ'),
(303, '0.00000000', 'BTC', '24524.44000000', '0.07869800', '2643656', 'zghZ6SUAYQxthivuls3LkQ'),
(304, '0.00000000', 'BTC', '24524.81000000', '0.11539400', '2643657', 'zghZ6SUAYQxthivuls3LkQ'),
(305, '0.00000000', 'BTC', '24527.52000000', '0.03644300', '2643658', 'zghZ6SUAYQxthivuls3LkQ'),
(306, '0.00000000', 'USDT', '24703.16000000', '0.00405000', '3185768', 'OqRYcpK3tatj1HnNspRmtm');

-- --------------------------------------------------------

--
-- Table structure for table `gate_keys1`
--

CREATE TABLE `gate_keys1` (
  `sr` int(11) NOT NULL,
  `api_key` varchar(500) NOT NULL,
  `secret_key` varchar(500) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gate_keys1`
--

INSERT INTO `gate_keys1` (`sr`, `api_key`, `secret_key`, `id`) VALUES
(1, '996fe20df5af3f7a53ce291b6e46a975', '41492892a8000de41686021ca2afd390f472731715da5020d29f0f5180ae8f53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gate_model`
--

CREATE TABLE `gate_model` (
  `symbol` varchar(200) NOT NULL,
  `currency_pair` varchar(200) NOT NULL,
  `account` varchar(200) NOT NULL,
  `side` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `time_in_force` varchar(200) NOT NULL,
  `orderId` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `killbot`
--

CREATE TABLE `killbot` (
  `id` bigint(20) NOT NULL,
  `shut_down` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `killbot`
--

INSERT INTO `killbot` (`id`, `shut_down`) VALUES
(1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `kucoin_keys1`
--

CREATE TABLE `kucoin_keys1` (
  `sr` int(11) NOT NULL,
  `api_key` varchar(500) NOT NULL,
  `secret_key` varchar(500) NOT NULL,
  `passphrase` varchar(200) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kucoin_keys1`
--

INSERT INTO `kucoin_keys1` (`sr`, `api_key`, `secret_key`, `passphrase`, `id`) VALUES
(1, '63c10b64d3c0b80001976a4a', '5462283a-15d3-4c32-85e4-f24a00bc8c27', 'Urveesh@123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kucoin_model`
--

CREATE TABLE `kucoin_model` (
  `symbol` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `side` varchar(200) NOT NULL,
  `orderId` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `timeInforce` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `clientOid` varchar(200) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `logsmodel`
--

CREATE TABLE `logsmodel` (
  `sr` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  `order` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logsmodel`
--

INSERT INTO `logsmodel` (`sr`, `id`, `order`) VALUES
(1, 1, 'null'),
(2, 1, 'null'),
(3, 1, 'null'),
(4, 1, 'null'),
(5, 1, 'null'),
(6, 1, 'null');

-- --------------------------------------------------------

--
-- Table structure for table `pair_table`
--

CREATE TABLE `pair_table` (
  `id` bigint(20) NOT NULL,
  `pair` varchar(200) NOT NULL,
  `coin` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pair_table`
--

INSERT INTO `pair_table` (`id`, `pair`, `coin`) VALUES
(225, 'USDT', 'BTC'),
(226, 'USDT', 'ETH'),
(227, 'USDT', 'WIN'),
(228, 'USDT', 'DENT'),
(229, 'USDT', 'XRP'),
(230, 'USDT', 'ETC'),
(231, 'USDT', 'DOGE'),
(232, 'USDT', 'BNB'),
(233, 'USDT', 'YFI'),
(234, 'USDT', 'CAKE'),
(235, 'USDT', 'VET'),
(236, 'USDT', 'MATIC'),
(237, 'USDT', 'TRX'),
(238, 'USDT', 'EOS'),
(239, 'USDT', 'USDC'),
(240, 'USDT', 'YFH'),
(241, 'USDT', 'AAVE'),
(242, 'USDT', 'DOT'),
(243, 'USDT', 'SAND'),
(244, 'USDT', 'SHIB'),
(245, 'ETH', 'NEO'),
(246, 'ETH', 'DASH'),
(247, 'ETH', 'AVAX'),
(248, 'ETH', 'AXS'),
(249, 'ETH', 'ETC'),
(250, 'ETH', 'DOT'),
(251, 'ETH', 'LINK'),
(252, 'ETH', 'OMG'),
(253, 'ETH', 'SAND'),
(254, 'ETH', 'WAVES'),
(255, 'ETH', 'NANO'),
(256, 'ETH', 'EZ'),
(257, 'ETH', 'MANA'),
(258, 'ETH', 'ENJ'),
(259, 'ETH', 'LSK'),
(260, 'ETH', 'AAVE'),
(261, 'ETH', 'MLT'),
(262, 'ETH', 'ADA'),
(263, 'ETH', 'IOTA'),
(264, 'ETH', 'XRP'),
(265, 'BTC', 'BNB'),
(266, 'BTC', 'YFI'),
(267, 'BTC', 'AAVE'),
(268, 'BTC', 'LTC'),
(269, 'BTC', 'CAKE'),
(270, 'BTC', 'EOS'),
(271, 'BTC', 'JST'),
(272, 'BTC', 'CHZ'),
(273, 'BTC', 'POLY'),
(274, 'BTC', 'SOL'),
(275, 'BTC', 'KSM'),
(276, 'BTC', 'COMP'),
(277, 'BTC', 'DASH'),
(278, 'BTC', 'AXS'),
(279, 'BTC', 'BTG'),
(280, 'BTC', 'LUNA');

-- --------------------------------------------------------

--
-- Table structure for table `user_exchanges_bitmexkeys1`
--

CREATE TABLE `user_exchanges_bitmexkeys1` (
  `sr` int(11) NOT NULL,
  `api_key` varchar(500) NOT NULL,
  `secret_key` varchar(500) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_exchanges_bitmexkeys1`
--

INSERT INTO `user_exchanges_bitmexkeys1` (`sr`, `api_key`, `secret_key`, `id`) VALUES
(1, 'PKzGWrAmsNU7VkRjDncGUZjz', 'IA9ScGwXy-qKTj5sSRP20S2wsdr_ODeewupgUNsKWp5JvI7Q', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_app_app_model`
--
ALTER TABLE `admin_app_app_model`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_name` (`app_name`);

--
-- Indexes for table `admin_app_emailmodel`
--
ALTER TABLE `admin_app_emailmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_app_smsmodel`
--
ALTER TABLE `admin_app_smsmodel`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `binanace_keys1`
--
ALTER TABLE `binanace_keys1`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `Binanace_keys1_id_820f7d3b_fk_core_user_id` (`id`);

--
-- Indexes for table `binance_model`
--
ALTER TABLE `binance_model`
  ADD PRIMARY KEY (`clientOrderId`),
  ADD KEY `Binance_model_id_06a3badf_fk_core_user_id` (`id`);

--
-- Indexes for table `bitmex_model`
--
ALTER TABLE `bitmex_model`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `Bitmex_model_id_f2d6a05c_fk_core_user_id` (`id`);

--
-- Indexes for table `botstop`
--
ALTER TABLE `botstop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_user`
--
ALTER TABLE `core_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_groups_user_id_group_id_c82fcad1_uniq` (`user_id`,`group_id`),
  ADD KEY `core_user_groups_group_id_fe8c697f_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_user_permissions_user_id_permission_id_73ea0daa_uniq` (`user_id`,`permission_id`),
  ADD KEY `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_core_user_id` (`user_id`);

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
-- Indexes for table `exception`
--
ALTER TABLE `exception`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `Exception_id_562aefbc_fk_core_user_id` (`id`);

--
-- Indexes for table `exchanges`
--
ALTER TABLE `exchanges`
  ADD PRIMARY KEY (`exchange_name`);

--
-- Indexes for table `fills`
--
ALTER TABLE `fills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fills_clientOrderId_0d2fe878_fk_Binance_model_clientOrderId` (`clientOrderId`);

--
-- Indexes for table `gate_keys1`
--
ALTER TABLE `gate_keys1`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `Gate_keys1_id_57cd584c_fk_core_user_id` (`id`);

--
-- Indexes for table `gate_model`
--
ALTER TABLE `gate_model`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `Gate_model_id_ef12f8db_fk_core_user_id` (`id`);

--
-- Indexes for table `killbot`
--
ALTER TABLE `killbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kucoin_keys1`
--
ALTER TABLE `kucoin_keys1`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `Kucoin_keys1_id_7bb3ed54_fk_core_user_id` (`id`);

--
-- Indexes for table `kucoin_model`
--
ALTER TABLE `kucoin_model`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `Kucoin_model_id_984ed537_fk_core_user_id` (`id`);

--
-- Indexes for table `logsmodel`
--
ALTER TABLE `logsmodel`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `user_exchanges_logsmodel_id_ff2a1986_fk_core_user_id` (`id`);

--
-- Indexes for table `pair_table`
--
ALTER TABLE `pair_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_exchanges_bitmexkeys1`
--
ALTER TABLE `user_exchanges_bitmexkeys1`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `user_exchanges_bitmexkeys1_id_c60cdfb5_fk_core_user_id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_app_app_model`
--
ALTER TABLE `admin_app_app_model`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_app_emailmodel`
--
ALTER TABLE `admin_app_emailmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_app_smsmodel`
--
ALTER TABLE `admin_app_smsmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `binanace_keys1`
--
ALTER TABLE `binanace_keys1`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `botstop`
--
ALTER TABLE `botstop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_user`
--
ALTER TABLE `core_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `core_user_groups`
--
ALTER TABLE `core_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `exception`
--
ALTER TABLE `exception`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `fills`
--
ALTER TABLE `fills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `gate_keys1`
--
ALTER TABLE `gate_keys1`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `killbot`
--
ALTER TABLE `killbot`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kucoin_keys1`
--
ALTER TABLE `kucoin_keys1`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logsmodel`
--
ALTER TABLE `logsmodel`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pair_table`
--
ALTER TABLE `pair_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `user_exchanges_bitmexkeys1`
--
ALTER TABLE `user_exchanges_bitmexkeys1`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `binanace_keys1`
--
ALTER TABLE `binanace_keys1`
  ADD CONSTRAINT `Binanace_keys1_id_820f7d3b_fk_core_user_id` FOREIGN KEY (`id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `binance_model`
--
ALTER TABLE `binance_model`
  ADD CONSTRAINT `Binance_model_id_06a3badf_fk_core_user_id` FOREIGN KEY (`id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `bitmex_model`
--
ALTER TABLE `bitmex_model`
  ADD CONSTRAINT `Bitmex_model_id_f2d6a05c_fk_core_user_id` FOREIGN KEY (`id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD CONSTRAINT `core_user_groups_group_id_fe8c697f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `core_user_groups_user_id_70b4d9b8_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD CONSTRAINT `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `core_user_user_permissions_user_id_085123d3_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `exception`
--
ALTER TABLE `exception`
  ADD CONSTRAINT `Exception_id_562aefbc_fk_core_user_id` FOREIGN KEY (`id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `fills`
--
ALTER TABLE `fills`
  ADD CONSTRAINT `Fills_clientOrderId_0d2fe878_fk_Binance_model_clientOrderId` FOREIGN KEY (`clientOrderId`) REFERENCES `binance_model` (`clientOrderId`);

--
-- Constraints for table `gate_keys1`
--
ALTER TABLE `gate_keys1`
  ADD CONSTRAINT `Gate_keys1_id_57cd584c_fk_core_user_id` FOREIGN KEY (`id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `gate_model`
--
ALTER TABLE `gate_model`
  ADD CONSTRAINT `Gate_model_id_ef12f8db_fk_core_user_id` FOREIGN KEY (`id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `kucoin_keys1`
--
ALTER TABLE `kucoin_keys1`
  ADD CONSTRAINT `Kucoin_keys1_id_7bb3ed54_fk_core_user_id` FOREIGN KEY (`id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `kucoin_model`
--
ALTER TABLE `kucoin_model`
  ADD CONSTRAINT `Kucoin_model_id_984ed537_fk_core_user_id` FOREIGN KEY (`id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `logsmodel`
--
ALTER TABLE `logsmodel`
  ADD CONSTRAINT `user_exchanges_logsmodel_id_ff2a1986_fk_core_user_id` FOREIGN KEY (`id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `user_exchanges_bitmexkeys1`
--
ALTER TABLE `user_exchanges_bitmexkeys1`
  ADD CONSTRAINT `user_exchanges_bitmexkeys1_id_c60cdfb5_fk_core_user_id` FOREIGN KEY (`id`) REFERENCES `core_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
