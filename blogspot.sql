-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2020 at 09:32 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogspot`
--

-- --------------------------------------------------------

--
-- Table structure for table `aatmanirbhar_bharat`
--

CREATE TABLE `aatmanirbhar_bharat` (
  `id` int(15) NOT NULL,
  `blog_title` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `slug` text COLLATE latin1_general_ci NOT NULL,
  `menu` text COLLATE latin1_general_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `display` int(11) NOT NULL DEFAULT 1,
  `content` text COLLATE latin1_general_ci NOT NULL,
  `blog_image` varchar(110) COLLATE latin1_general_ci NOT NULL,
  `meta_title` text COLLATE latin1_general_ci NOT NULL,
  `keywords` text COLLATE latin1_general_ci NOT NULL,
  `description` text COLLATE latin1_general_ci NOT NULL,
  `cat_id` int(20) NOT NULL,
  `author` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `adid` int(11) NOT NULL,
  `title` varchar(51) NOT NULL,
  `url` text NOT NULL,
  `image` varchar(51) NOT NULL,
  `status` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `creator_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `apearance`
--

CREATE TABLE `apearance` (
  `id` int(11) NOT NULL,
  `csstext` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apearance`
--

INSERT INTO `apearance` (`id`, `csstext`) VALUES
(1, '/*  Your Custom CSS Here  */\n\n\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `backup_database`
--

CREATE TABLE `backup_database` (
  `backup_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `backup_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `backup_database`
--

INSERT INTO `backup_database` (`backup_id`, `file_name`, `backup_date`) VALUES
(43, 'db_webcarton_9.0-2017-03-15-184438.sql', '2017-03-15 18:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `bid` int(11) NOT NULL,
  `name` varchar(51) NOT NULL,
  `details` text NOT NULL,
  `cid` int(11) NOT NULL,
  `ctid` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(15) NOT NULL,
  `blog_title` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `slug` text COLLATE latin1_general_ci NOT NULL,
  `menu` text COLLATE latin1_general_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `display` int(11) NOT NULL DEFAULT 1,
  `content` text COLLATE latin1_general_ci NOT NULL,
  `blog_image` varchar(110) COLLATE latin1_general_ci NOT NULL,
  `meta_title` text COLLATE latin1_general_ci NOT NULL,
  `keywords` text COLLATE latin1_general_ci NOT NULL,
  `description` text COLLATE latin1_general_ci NOT NULL,
  `cat_id` int(20) NOT NULL,
  `author` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_title`, `slug`, `menu`, `status`, `display`, `content`, `blog_image`, `meta_title`, `keywords`, `description`, `cat_id`, `author`, `create_date`, `update_date`) VALUES
(3, 'Lorem Ipsum is simply dummy text', 'lorem-ipsum-is-simply-dummy-text', '0', 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '62811comiop1.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '1', '2020-11-01 23:20:39', '2020-11-01 23:20:39'),
(2, 'this is testing blogs address', 'this-is-testing-blogs-addres', '1', 1, 1, 'this is testing blog this is testing blog this is testing blog this is testing blog this is testing blog this is testing blog', '836941326420200216-_MG_7291 copy.jpg', '', '', '', 0, '1', '2020-10-26 00:58:12', '2020-10-27 02:53:07'),
(4, 'Forget Password', 'forget-password', '0', 1, 1, 'Forget Password Forget Password Forget PasswordForget Password Forget PasswordForget Password', '', 'Forget Password', ' Forget Password Forget Password ', 'Forget Password Forget PasswordForget Password', 0, '15', '2020-11-11 02:49:02', '2020-11-11 02:49:02'),
(5, 'Lorem Ipsume sumit Dummy Text', 'lorem-ipsume-sumit-dummy-text', '0', 1, 1, '<p>There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain</p>\r\n', '9445small.PNG', '', '', '', 10, '1', '2020-11-11 03:36:05', '2020-11-11 03:36:05'),
(6, 'Lorem Ipsume sumit Dummy Text2', 'lorem-ipsume-sumit-dummy-text2', '0', 1, 1, 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain', '61749small.PNG', '', '', '', 10, '1', '2020-11-11 03:36:39', '2020-11-11 03:36:39'),
(7, 'Lorem Ipsume sumit Dummy Text3', 'lorem-ipsume-sumit-dummy-text3', '0', 1, 1, 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain', '43182small.PNG', '', '', '', 10, '1', '2020-11-11 03:37:20', '2020-11-11 03:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `countryid` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `cityid` int(11) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_files`
--

CREATE TABLE `business_files` (
  `picid` int(11) NOT NULL,
  `bussiness_file` varchar(300) NOT NULL,
  `busiid` int(11) NOT NULL,
  `filetype` enum('Image','Doc') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_working_hours`
--

CREATE TABLE `business_working_hours` (
  `wid` int(11) NOT NULL,
  `day` varchar(200) NOT NULL,
  `shift1_from` varchar(200) NOT NULL,
  `shift1_to` varchar(200) NOT NULL,
  `shift2_from` varchar(200) NOT NULL,
  `shift2_to` varchar(200) NOT NULL,
  `busiid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `cat_name` varchar(300) COLLATE latin1_general_ci NOT NULL,
  `catslug` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `cat_description` text COLLATE latin1_general_ci NOT NULL,
  `pid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `menu` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `catslug`, `cat_description`, `pid`, `status`, `menu`, `create_date`, `update_date`) VALUES
(1, 'Travel', 'travel', '', 0, 1, 1, '2020-10-31 02:23:34', '2020-10-31 02:23:34'),
(2, 'Food', 'food', '', 0, 1, 1, '2020-10-31 02:43:01', '2020-10-31 02:43:01'),
(3, 'Culture', 'culture', '', 0, 1, 1, '2020-10-31 02:43:22', '2020-10-31 02:43:22'),
(4, 'Randon', 'randon', '', 0, 1, 1, '2020-10-31 02:43:35', '2020-10-31 02:43:35'),
(5, 'Automobile', 'automobile', '', 0, 1, 1, '2020-10-31 02:43:47', '2020-10-31 02:43:47'),
(6, 'Industry', 'industry', '', 0, 1, 1, '2020-10-31 02:44:04', '2020-10-31 02:44:04'),
(7, 'Technology', 'technology', '', 0, 1, 1, '2020-10-31 02:44:21', '2020-10-31 02:44:21'),
(8, 'More', 'more', '', 0, 1, 1, '2020-10-31 02:44:29', '2020-10-31 02:44:29'),
(9, 'Slider', 'slider', '', 0, 1, 0, '2020-11-01 00:43:02', '2020-11-01 00:43:02'),
(10, 'Aatmanirbhar Bharat', 'aatmanirbhar-bharat', '', 0, 1, 0, '2020-11-11 03:20:39', '2020-11-11 03:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(5) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `latitude` varchar(10) NOT NULL,
  `longitude` varchar(10) NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `latitude`, `longitude`, `state`) VALUES
(1, 'Port Blair', '11.67 N', '92.76 E', '1'),
(2, 'Adilabad', '19.68 N', '78.53 E', '2'),
(3, 'Adoni', '15.63 N', '77.28 E', '2'),
(4, 'Alwal', '17.50 N', '78.54 E', '2'),
(5, 'Anakapalle', '17.69 N', '83.00 E', '2'),
(6, 'Anantapur', '14.70 N', '77.59 E', '2'),
(7, 'Bapatla', '15.91 N', '80.47 E', '2'),
(8, 'Belampalli', '19.06 N', '79.49 E', '2'),
(9, 'Bhimavaram', '16.55 N', '81.53 E', '2'),
(10, 'Bhongir', '17.52 N', '78.88 E', '2'),
(11, 'Bobbili', '18.57 N', '83.37 E', '2'),
(12, 'Bodhan', '18.66 N', '77.88 E', '2'),
(13, 'Chilakalurupet', '16.10 N', '80.16 E', '2'),
(14, 'Chinna Chawk', '14.47 N', '78.83 E', '2'),
(15, 'Chirala', '15.84 N', '80.35 E', '2'),
(16, 'Chittur', '13.22 N', '79.10 E', '2'),
(17, 'Cuddapah', '14.48 N', '78.81 E', '2'),
(18, 'Dharmavaram', '14.42 N', '77.71 E', '2'),
(19, 'Dhone', '15.42 N', '77.88 E', '2'),
(20, 'Eluru', '16.72 N', '81.11 E', '2'),
(21, 'Gaddiannaram', '17.36 N', '78.52 E', '2'),
(22, 'Gadwal', '16.23 N', '77.80 E', '2'),
(23, 'Gajuwaka', '17.70 N', '83.21 E', '2'),
(24, 'Gudivada', '16.44 N', '81.00 E', '2'),
(25, 'Gudur', '14.15 N', '79.84 E', '2'),
(26, 'Guntakal', '15.18 N', '77.37 E', '2'),
(27, 'Guntur', '16.31 N', '80.44 E', '2'),
(28, 'Hindupur', '13.83 N', '77.48 E', '2'),
(29, 'Hyderabad', '17.40 N', '78.48 E', '2'),
(30, 'Jagtial', '18.80 N', '78.91 E', '2'),
(31, 'Kadiri', '14.12 N', '78.16 E', '2'),
(32, 'Kagaznagar', '19.34 N', '79.48 E', '2'),
(33, 'Kakinada', '16.96 N', '82.24 E', '2'),
(34, 'Kallur', '15.69 N', '77.77 E', '2'),
(35, 'Kamareddi', '18.32 N', '78.35 E', '2'),
(36, 'Kapra', '17.37 N', '78.48 E', '2'),
(37, 'Karimnagar', '18.45 N', '79.13 E', '2'),
(38, 'Karnul', '15.83 N', '78.03 E', '2'),
(39, 'Kavali', '14.92 N', '79.99 E', '2'),
(40, 'Khammam', '17.25 N', '80.15 E', '2'),
(41, 'Kodar', '16.98 N', '79.97 E', '2'),
(42, 'Kondukur', '15.22 N', '79.91 E', '2'),
(43, 'Koratla', '18.82 N', '78.72 E', '2'),
(44, 'Kottagudem', '17.56 N', '80.64 E', '2'),
(45, 'Kukatpalle', '17.49 N', '78.41 E', '2'),
(46, 'Lalbahadur Nagar', '17.43 N', '78.50 E', '2'),
(47, 'Machilipatnam', '16.19 N', '81.14 E', '2'),
(48, 'Mahbubnagar', '16.74 N', '77.98 E', '2'),
(49, 'Malkajgiri', '17.55 N', '78.59 E', '2'),
(50, 'Mancheral', '18.88 N', '79.45 E', '2'),
(51, 'Mandamarri', '18.97 N', '79.47 E', '2'),
(52, 'Mangalagiri', '16.44 N', '80.56 E', '2'),
(53, 'Markapur', '15.73 N', '79.28 E', '2'),
(54, 'Miryalaguda', '16.87 N', '79.57 E', '2'),
(55, 'Nalgonda', '17.06 N', '79.26 E', '2'),
(56, 'Nandyal', '15.49 N', '78.48 E', '2'),
(57, 'Narasapur', '16.45 N', '81.70 E', '2'),
(58, 'Narasaraopet', '16.24 N', '80.04 E', '2'),
(59, 'Nellur', '14.46 N', '79.98 E', '2'),
(60, 'Nirmal', '19.12 N', '78.35 E', '2'),
(61, 'Nizamabad', '18.68 N', '78.10 E', '2'),
(62, 'Nuzvid', '16.78 N', '80.85 E', '2'),
(63, 'Ongole', '15.50 N', '80.05 E', '2'),
(64, 'Palakollu', '16.52 N', '81.75 E', '2'),
(65, 'Palasa', '18.77 N', '84.42 E', '2'),
(66, 'Palwancha', '17.60 N', '80.68 E', '2'),
(67, 'Patancheru', '17.53 N', '78.27 E', '2'),
(68, 'Piduguralla', '16.48 N', '79.90 E', '2'),
(69, 'Ponnur', '16.07 N', '80.56 E', '2'),
(70, 'Proddatur', '14.73 N', '78.55 E', '2'),
(71, 'Qutubullapur', '17.43 N', '78.47 E', '2'),
(72, 'Rajamahendri', '17.02 N', '81.79 E', '2'),
(73, 'Rajampet', '14.18 N', '79.17 E', '2'),
(74, 'Rajendranagar', '17.29 N', '78.39 E', '2'),
(75, 'Ramachandrapuram', '17.56 N', '78.04 E', '2'),
(76, 'Ramagundam', '18.80 N', '79.45 E', '2'),
(77, 'Rayachoti', '14.05 N', '78.75 E', '2'),
(78, 'Rayadrug', '14.70 N', '76.87 E', '2'),
(79, 'Samalkot', '17.06 N', '82.18 E', '2'),
(80, 'Sangareddi', '17.63 N', '78.08 E', '2'),
(81, 'Sattenapalle', '16.40 N', '80.18 E', '2'),
(82, 'Serilungampalle', '17.48 N', '78.33 E', '2'),
(83, 'Siddipet', '18.11 N', '78.84 E', '2'),
(84, 'Sikandarabad', '17.47 N', '78.52 E', '2'),
(85, 'Sirsilla', '18.40 N', '78.81 E', '2'),
(86, 'Srikakulam', '18.30 N', '83.90 E', '2'),
(87, 'Srikalahasti', '13.76 N', '79.70 E', '2'),
(88, 'Suriapet', '17.15 N', '79.62 E', '2'),
(89, 'Tadepalle', '16.48 N', '80.60 E', '2'),
(90, 'Tadepallegudem', '16.82 N', '81.52 E', '2'),
(91, 'Tadpatri', '14.91 N', '78.00 E', '2'),
(92, 'Tandur', '17.25 N', '77.58 E', '2'),
(93, 'Tanuku', '16.75 N', '81.69 E', '2'),
(94, 'Tenali', '16.24 N', '80.65 E', '2'),
(95, 'Tirupati', '13.63 N', '79.41 E', '2'),
(96, 'Tuni', '17.35 N', '82.55 E', '2'),
(97, 'Uppal Kalan', '17.38 N', '78.55 E', '2'),
(98, 'Vijayawada', '16.52 N', '80.63 E', '2'),
(99, 'Vinukonda', '16.05 N', '79.75 E', '2'),
(100, 'Visakhapatnam', '17.73 N', '83.30 E', '2'),
(101, 'Vizianagaram', '18.12 N', '83.40 E', '2'),
(102, 'Vuyyuru', '16.37 N', '80.85 E', '2'),
(103, 'Wanparti', '16.37 N', '78.07 E', '2'),
(104, 'Warangal', '18.01 N', '79.58 E', '2'),
(105, 'Yemmiganur', '15.73 N', '77.48 E', '2'),
(106, 'Itanagar', '27.14 N', '93.61 E', '3'),
(107, 'Barpeta', '26.32 N', '91.00 E', '4'),
(108, 'Bongaigaon', '26.48 N', '90.54 E', '4'),
(109, 'Dhuburi', '26.03 N', '89.97 E', '4'),
(110, 'Dibrugarh', '27.49 N', '94.91 E', '4'),
(111, 'Diphu', '25.84 N', '93.43 E', '4'),
(112, 'Guwahati', '26.19 N', '91.75 E', '4'),
(113, 'Jorhat', '26.76 N', '94.20 E', '4'),
(114, 'Karimganj', '24.85 N', '92.36 E', '4'),
(115, 'Lakhimpur', '27.24 N', '94.10 E', '4'),
(116, 'Lanka', '25.93 N', '92.95 E', '4'),
(117, 'Nagaon', '26.35 N', '92.68 E', '4'),
(118, 'Sibsagar', '26.99 N', '94.63 E', '4'),
(119, 'Silchar', '24.83 N', '92.77 E', '4'),
(120, 'Tezpur', '26.63 N', '92.79 E', '4'),
(121, 'Tinsukia', '27.50 N', '95.36 E', '4'),
(122, 'Alipur Duar', '26.50 N', '89.53 E', '5'),
(123, 'Arambagh', '22.88 N', '87.78 E', '5'),
(124, 'Asansol', '23.69 N', '86.98 E', '5'),
(125, 'Ashoknagar Kalyangarh', '22.84 N', '88.63 E', '5'),
(126, 'Baharampur', '24.10 N', '88.24 E', '5'),
(127, 'Baidyabati', '22.79 N', '88.33 E', '5'),
(128, 'Baj Baj', '22.48 N', '88.17 E', '5'),
(129, 'Bally', '22.65 N', '88.35 E', '5'),
(130, 'Bally Cantonment', '22.65 N', '88.36 E', '5'),
(131, 'Balurghat', '25.23 N', '88.77 E', '5'),
(132, 'Bangaon', '23.05 N', '88.83 E', '5'),
(133, 'Bankra', '22.58 N', '88.31 E', '5'),
(134, 'Bankura', '23.24 N', '87.07 E', '5'),
(135, 'Bansbaria', '22.95 N', '88.40 E', '5'),
(136, 'Baranagar', '22.64 N', '88.37 E', '5'),
(137, 'Barddhaman', '23.24 N', '87.86 E', '5'),
(138, 'Basirhat', '22.66 N', '88.86 E', '5'),
(139, 'Bhadreswar', '22.84 N', '88.35 E', '5'),
(140, 'Bhatpara', '22.89 N', '88.42 E', '5'),
(141, 'Bidhannagar', '22.57 N', '88.42 E', '5'),
(142, 'Binnaguri', '26.74 N', '89.037 E', '5'),
(143, 'Bishnupur', '23.08 N', '87.33 E', '5'),
(144, 'Bolpur', '23.67 N', '87.70 E', '5'),
(145, 'Calcutta', '22.57 N', '88.36 E', '5'),
(146, 'Chakdaha', '22.48 N', '88.35 E', '5'),
(147, 'Champdani', '22.81 N', '88.34 E', '5'),
(148, 'Chandannagar', '22.89 N', '88.37 E', '5'),
(149, 'Contai', '21.79 N', '87.75 E', '5'),
(150, 'Dabgram', '', '', '5'),
(151, 'Darjiling', '27.05 N', '88.26 E', '5'),
(152, 'Dhulian', '24.68 N', '87.97 E', '5'),
(153, 'Dinhata', '26.13 N', '89.47 E', '5'),
(154, 'Dum Dum', '22.63 N', '88.42 E', '5'),
(155, 'Durgapur', '23.50 N', '87.31 E', '5'),
(156, 'Gangarampur', '25.40 N', '88.52 E', '5'),
(157, 'Garulia', '22.83 N', '88.37 E', '5'),
(158, 'Gayespur', '22.98 N', '88.51 E', '5'),
(159, 'Ghatal', '22.67 N', '87.72 E', '5'),
(160, 'Gopalpur', '', '', '5'),
(161, 'Habra', '22.84 N', '88.62 E', '5'),
(162, 'Halisahar', '22.95 N', '88.42 E', '5'),
(163, 'Haora', '22.58 N', '88.33 E', '5'),
(164, 'HugliChunchura', '22.91 N', '88.40 E', '5'),
(165, 'Ingraj Bazar', '25.01 N', '88.14 E', '5'),
(166, 'Islampur', '26.27 N', '88.20 E', '5'),
(167, 'Jalpaiguri', '26.53 N', '88.71 E', '5'),
(168, 'Jamuria', '23.70 N', '87.08 E', '5'),
(169, 'Jangipur', '24.47 N', '88.07 E', '5'),
(170, 'Jhargram', '22.45 N', '86.98 E', '5'),
(171, 'Kaliyaganj', '25.63 N', '88.32 E', '5'),
(172, 'Kalna', '23.22 N', '88.37 E', '5'),
(173, 'Kalyani', '22.98 N', '88.48 E', '5'),
(174, 'Kamarhati', '22.67 N', '88.37 E', '5'),
(175, 'Kanchrapara', '22.95 N', '88.45 E', '5'),
(176, 'Kandi', '23.95 N', '88.03 E', '5'),
(177, 'Karsiyang', '26.88 N', '88.28 E', '5'),
(178, 'Katwa', '23.65 N', '88.13 E', '5'),
(179, 'Kharagpur', '22.34 N', '87.31 E', '5'),
(180, 'Kharagpur Railway Settlement', '22.34 N', '87.26 E', '5'),
(181, 'Khardaha', '22.73 N', '88.38 E', '5'),
(182, 'Kharia', '', '', '5'),
(183, 'Koch 6', '26.33 N', '89.46 E', '5'),
(184, 'Konnagar', '22.70 N', '88.36 E', '5'),
(185, 'Krishnanagar', '23.41 N', '88.51 E', '5'),
(186, 'Kulti', '23.72 N', '86.89 E', '5'),
(187, 'Madhyamgram', '22.70 N', '88.45 E', '5'),
(188, 'Maheshtala', '22.51 N', '88.23 E', '5'),
(189, 'Memari', '23.20 N', '88.12 E', '5'),
(190, 'Midnapur', '22.33 N', '87.15 E', '5'),
(191, 'Naihati', '22.91 N', '88.43 E', '5'),
(192, 'Navadwip', '23.42 N', '88.37 E', '5'),
(193, 'Ni Barakpur', '22.77 N', '88.36 E', '5'),
(194, 'North Barakpur', '22.78 N', '88.37 E', '5'),
(195, 'North Dum Dum', '22.64 N', '88.41 E', '5'),
(196, 'Old Maldah', '', '', '5'),
(197, 'Panihati', '22.69 N', '88.37 E', '5'),
(198, 'Phulia', '23.24 N', '88.50 E', '5'),
(199, 'Pujali', '22.47 N', '88.15 E', '5'),
(200, 'Puruliya', '23.34 N', '86.36 E', '5'),
(201, 'Raiganj', '25.62 N', '88.12 E', '5'),
(202, 'Rajpur', '22.44 N', '88.44 E', '5'),
(203, 'Rampur Hat', '24.17 N', '87.78 E', '5'),
(204, 'Ranaghat', '23.19 N', '88.58 E', '5'),
(205, 'Raniganj', '23.62 N', '87.11 E', '5'),
(206, 'Rishra', '22.71 N', '88.36 E', '5'),
(207, 'Shantipur', '23.26 N', '88.44 E', '5'),
(208, 'Shiliguri', '26.73 N', '88.42 E', '5'),
(209, 'Shrirampur', '22.74 N', '88.35 E', '5'),
(210, 'Siuri', '23.91 N', '87.53 E', '5'),
(211, 'South Dum Dum', '22.61 N', '88.41 E', '5'),
(212, 'Titagarh', '22.74 N', '88.38 E', '5'),
(213, 'Ulubaria', '22.47 N', '88.11 E', '5'),
(214, 'UttarparaKotrung', '22.66 N', '88.35 E', '5'),
(215, 'Araria', '26.15 N', '87.52 E', '6'),
(216, 'Arrah', '25.56 N', '84.66 E', '6'),
(217, 'Aurangabad', '24.75 N', '84.37 E', '6'),
(218, 'Bagaha', '27.10 N', '84.09 E', '6'),
(219, 'Begusarai', '25.42 N', '86.12 E', '6'),
(220, 'Bettiah', '26.81 N', '84.50 E', '6'),
(221, 'Bhabua', '25.05 N', '83.62 E', '6'),
(222, 'Bhagalpur', '25.26 N', '86.98 E', '6'),
(224, 'Buxar', '25.58 N', '83.98 E', '6'),
(225, 'Chhapra', '25.78 N', '84.72 E', '6'),
(226, 'Darbhanga', '26.16 N', '85.88 E', '6'),
(227, 'Dehri', '24.91 N', '84.18 E', '6'),
(228, 'DighaMainpura', '', '', '6'),
(229, 'Dinapur', '25.64 N', '85.04 E', '6'),
(230, 'Dumraon', '25.55 N', '84.15 E', '6'),
(231, 'Gaya', '24.81 N', '85.00 E', '6'),
(232, 'Gopalganj', '26.47 N', '84.43 E', '6'),
(233, 'Goura', '', '', '6'),
(234, 'Hajipur', '', '', '6'),
(235, 'Jahanabad', '25.22 N', '84.98 E', '6'),
(236, 'Jamalpur', '25.32 N', '86.48 E', '6'),
(237, 'Jamui', '24.92 N', '86.22 E', '6'),
(238, 'Katihar', '25.55 N', '87.57 E', '6'),
(239, 'Khagaria', '25.50 N', '86.48 E', '6'),
(240, 'Khagaul', '25.58 N', '85.05 E', '6'),
(241, 'Kishanganj', '26.11 N', '87.95 E', '6'),
(242, 'Lakhisarai', '25.18 N', '86.09 E', '6'),
(243, 'Madhipura', '25.92 N', '86.78 E', '6'),
(244, 'Madhubani', '26.37 N', '86.06 E', '6'),
(245, 'Masaurhi', '25.35 N', '85.03 E', '6'),
(246, 'Mokama', '25.40 N', '85.92 E', '6'),
(247, 'Motihari', '26.66 N', '84.91 E', '6'),
(248, 'Munger', '25.39 N', '86.47 E', '6'),
(249, 'Muzaffarpur', '26.13 N', '85.38 E', '6'),
(250, 'Nawada', '24.88 N', '85.54 E', '6'),
(251, 'Patna', '25.62 N', '85.13 E', '6'),
(252, 'Phulwari', '25.60 N', '85.13 E', '6'),
(253, 'Purnia', '25.78 N', '87.47 E', '6'),
(254, 'Raxaul', '26.98 N', '84.85 E', '6'),
(255, 'Saharsa', '25.88 N', '86.59 E', '6'),
(256, 'Samastipur', '25.85 N', '85.78 E', '6'),
(257, 'Sasaram', '24.96 N', '84.01 E', '6'),
(258, 'Sitamarhi', '26.61 N', '85.48 E', '6'),
(259, 'Siwan', '26.23 N', '84.35 E', '6'),
(260, 'Supaul', '26.12 N', '86.60 E', '6'),
(262, 'Ambikapur', '23.13 N', '83.20 E', '8'),
(263, 'Bhilai', '21.21 N', '81.38 E', '8'),
(264, 'Bilaspur', '22.09 N', '82.15 E', '8'),
(265, 'Charoda', '21.23 N', '81.50 E', '8'),
(266, 'Chirmiri', '23.21 N', '82.41 E', '8'),
(267, 'Dhamtari', '20.71 N', '81.55 E', '8'),
(268, 'Durg', '21.20 N', '81.28 E', '8'),
(269, 'Jagdalpur', '19.09 N', '82.03 E', '8'),
(270, 'Korba', '22.35 N', '82.69 E', '8'),
(271, 'Raigarh', '21.90 N', '83.39 E', '8'),
(272, 'Raipur', '21.24 N', '81.63 E', '8'),
(273, 'Rajnandgaon', '21.10 N', '81.04 E', '8'),
(1071, 'Gurgaon', '', '', '14'),
(298, 'Central Delhi', '', '', '11'),
(299, 'North Delhi', '28.76 N', '77.06 E', '11'),
(300, 'East Delhi', '', '', '11'),
(301, 'West Delhi', '28.50 N', '77.22 E', '11'),
(302, 'South Delhi', '', '', '11'),
(303, 'Madgaon', '15.28 N', '73.94 E', '12'),
(304, 'Mormugao', '15.42 N', '73.78 E', '12'),
(305, 'Panaji', '15.50 N', '73.81 E', '12'),
(306, 'Ahmadabad', '23.03 N', '72.58 E', '13'),
(307, 'Amreli', '21.61 N', '71.22 E', '13'),
(308, 'Anand', '22.56 N', '72.95 E', '13'),
(309, 'Anjar', '23.12 N', '70.02 E', '13'),
(310, 'Bardoli', '21.12 N', '73.12 E', '13'),
(311, 'Bharuch', '21.71 N', '72.97 E', '13'),
(312, 'Bhavnagar', '21.79 N', '72.13 E', '13'),
(313, 'Bhuj', '23.26 N', '69.66 E', '13'),
(314, 'Borsad', '22.42 N', '72.90 E', '13'),
(315, 'Botad', '22.18 N', '71.66 E', '13'),
(316, 'Chandkheda', '23.15 N', '72.61 E', '13'),
(317, 'Chandlodiya', '23.10 N', '72.56 E', '13'),
(318, 'Dabhoi', '22.13 N', '73.41 E', '13'),
(319, 'Dahod', '22.84 N', '74.25 E', '13'),
(320, 'Dholka', '22.74 N', '72.44 E', '13'),
(321, 'Dhoraji', '21.74 N', '70.44 E', '13'),
(322, 'Dhrangadhra', '23.00 N', '71.46 E', '13'),
(323, 'Disa', '24.26 N', '72.18 E', '13'),
(324, 'Gandhidham', '23.07 N', '70.13 E', '13'),
(325, 'Gandhinagar', '23.30 N', '72.63 E', '13'),
(326, 'Ghatlodiya', '23.05 N', '72.55 E', '13'),
(327, 'Godhra', '22.77 N', '73.60 E', '13'),
(328, 'Gondal', '21.97 N', '70.80 E', '13'),
(329, 'Himatnagar', '23.60 N', '72.96 E', '13'),
(330, 'Jamnagar', '22.47 N', '70.07 E', '13'),
(331, 'Jamnagar', '', '', '13'),
(332, 'Jetpur', '21.75 N', '70.61 E', '13'),
(333, 'Junagadh', '21.52 N', '70.45 E', '13'),
(334, 'Kalol', '23.25 N', '72.49 E', '13'),
(335, 'Keshod', '21.31 N', '70.23 E', '13'),
(336, 'Khambhat', '22.32 N', '72.61 E', '13'),
(337, 'Kundla', '21.35 N', '71.30 E', '13'),
(338, 'Mahuva', '21.10 N', '71.75 E', '13'),
(339, 'Mangrol', '21.12 N', '70.12 E', '13'),
(340, 'Modasa', '23.47 N', '73.30 E', '13'),
(341, 'Morvi', '22.82 N', '70.83 E', '13'),
(342, 'Nadiad', '22.70 N', '72.85 E', '13'),
(343, 'Navagam Ghed', '', '', '13'),
(344, 'Navsari', '20.96 N', '72.92 E', '13'),
(345, 'Palitana', '21.52 N', '71.83 E', '13'),
(346, 'Patan', '23.86 N', '72.11 E', '13'),
(347, 'Porbandar', '21.65 N', '69.60 E', '13'),
(348, 'Puna', '', '', '13'),
(349, 'Rajkot', '22.31 N', '70.79 E', '13'),
(350, 'Ramod', '', '', '13'),
(351, 'Ranip', '23.03 N', '72.54 E', '13'),
(352, 'Siddhapur', '23.92 N', '72.37 E', '13'),
(353, 'Sihor', '21.70 N', '71.97 E', '13'),
(354, 'Surat', '21.20 N', '72.82 E', '13'),
(355, 'Surendranagar', '22.71 N', '71.67 E', '13'),
(356, 'Thaltej', '', '', '13'),
(357, 'Una', '20.82 N', '71.03 E', '13'),
(358, 'Unjha', '23.81 N', '72.38 E', '13'),
(359, 'Upleta', '21.75 N', '70.27 E', '13'),
(360, 'Vadodara', '22.31 N', '73.18 E', '13'),
(361, 'Valsad', '20.62 N', '72.92 E', '13'),
(362, 'Vapi', '20.37 N', '72.90 E', '13'),
(363, 'Vastral', '', '', '13'),
(364, 'Vejalpur', '', '', '13'),
(365, 'Veraval', '20.92 N', '70.34 E', '13'),
(366, 'Vijalpor', '', '', '13'),
(367, 'Visnagar', '23.71 N', '72.54 E', '13'),
(368, 'Wadhwan', '22.73 N', '71.72 E', '13'),
(369, 'Ambala', '30.38 N', '76.77 E', '14'),
(370, 'Ambala Cantonment', '30.39 N', '76.86 E', '14'),
(371, 'Ambala Sadar', '30.35 N', '76.84 E', '14'),
(372, 'Bahadurgarh', '28.69 N', '76.92 E', '14'),
(373, 'Bhiwani', '28.81 N', '76.12 E', '14'),
(374, 'Charkhi Dadri', '28.60 N', '76.27 E', '14'),
(375, 'Dabwali', '29.95 N', '74.73 E', '14'),
(376, 'Faridabad', '28.38 N', '77.30 E', '14'),
(377, 'Gohana', '29.13 N', '76.70 E', '14'),
(378, 'Hisar', '29.17 N', '75.72 E', '14'),
(379, 'Jagadhri', '30.18 N', '77.29 E', '14'),
(380, 'Jind', '29.31 N', '76.30 E', '14'),
(381, 'Kaithal', '29.81 N', '76.40 E', '14'),
(382, 'Karnal', '29.69 N', '76.97 E', '14'),
(383, 'Narnaul', '28.04 N', '76.10 E', '14'),
(384, 'Narwana', '29.62 N', '76.12 E', '14'),
(385, 'Palwal', '28.15 N', '77.32 E', '14'),
(386, 'Panchkula', '30.70 N', '76.88 E', '14'),
(387, 'Panipat', '29.39 N', '76.96 E', '14'),
(388, 'Rewari', '28.19 N', '76.60 E', '14'),
(389, 'Rohtak', '28.90 N', '76.58 E', '14'),
(390, 'Sirsa', '29.53 N', '75.03 E', '14'),
(391, 'Sonipat', '28.99 N', '77.01 E', '14'),
(392, 'Thanesar', '29.98 N', '76.82 E', '14'),
(393, 'Tohana', '29.70 N', '75.90 E', '14'),
(394, 'Yamunanagar', '30.14 N', '77.28 E', '14'),
(395, 'Shimla', '31.11 N', '77.16 E', '15'),
(396, 'Anantnag', '33.73 N', '75.15 E', '16'),
(397, 'Baramula', '34.20 N', '74.35 E', '16'),
(398, 'Bari Brahmana', '', '', '16'),
(399, 'Jammu', '32.71 N', '74.85 E', '16'),
(400, 'Kathua', '32.37 N', '75.52 E', '16'),
(401, 'Sopur', '34.30 N', '74.47 E', '16'),
(402, 'Srinagar', '34.09 N', '74.79 E', '16'),
(403, 'Udhampur', '32.93 N', '75.13 E', '16'),
(404, 'Adityapur', '22.80 N', '86.04 E', '17'),
(405, 'Bagbahra', '22.82 N', '86.20 E', '17'),
(406, 'Bhuli', '23.79 N', '86.38 E', '17'),
(407, 'Bokaro', '23.78 N', '85.96 E', '17'),
(408, 'Chaibasa', '22.56 N', '85.80 E', '17'),
(409, 'Chas', '23.65 N', '86.17 E', '17'),
(410, 'Daltenganj', '24.05 N', '84.06 E', '17'),
(411, 'Devghar', '24.49 N', '86.69 E', '17'),
(412, 'Dhanbad', '23.80 N', '86.42 E', '17'),
(413, 'Hazaribag', '24.01 N', '85.36 E', '17'),
(414, 'Jamshedpur', '22.79 N', '86.20 E', '17'),
(415, 'Jharia', '23.76 N', '86.42 E', '17'),
(416, 'Jhumri Tilaiya', '24.43 N', '85.52 E', '17'),
(417, 'Jorapokhar', '23.79 N', '86.36 E', '17'),
(418, 'Katras', '23.80 N', '86.28 E', '17'),
(419, 'Lohardaga', '23.43 N', '84.68 E', '17'),
(420, 'Mango', '22.85 N', '86.21 E', '17'),
(421, 'Phusro', '23.68 N', '85.86 E', '17'),
(422, 'Ramgarh', '23.63 N', '85.51 E', '17'),
(423, 'Ranchi', '23.36 N', '85.33 E', '17'),
(424, 'Sahibganj', '25.25 N', '87.62 E', '17'),
(425, 'Saunda', '23.64 N', '85.37 E', '17'),
(426, 'Sindari', '23.68 N', '86.49 E', '17'),
(427, 'Bagalkot', '16.19 N', '75.69 E', '18'),
(428, 'Bangalore', '12.97 N', '77.56 E', '18'),
(429, 'Basavakalyan', '17.87 N', '76.95 E', '18'),
(430, 'Belgaum', '15.86 N', '74.50 E', '18'),
(431, 'Bellary', '15.14 N', '76.91 E', '18'),
(432, 'Bhadravati', '13.84 N', '75.69 E', '18'),
(433, 'Bidar', '17.92 N', '77.52 E', '18'),
(434, 'Bijapur', '16.83 N', '75.71 E', '18'),
(435, 'Bommanahalli', '13.01 N', '77.63 E', '18'),
(436, 'Byatarayanapura', '', '', '18'),
(437, 'Challakere', '14.32 N', '76.65 E', '18'),
(438, 'Chamrajnagar', '11.92 N', '76.95 E', '18'),
(439, 'Channapatna', '12.66 N', '77.19 E', '18'),
(440, 'Chik Ballapur', '13.47 N', '77.73 E', '18'),
(441, 'Chikmagalur', '13.32 N', '75.76 E', '18'),
(442, 'Chintamani', '13.40 N', '78.05 E', '18'),
(443, 'Chitradurga', '14.23 N', '76.39 E', '18'),
(444, 'Dasarahalli', '13.01 N', '77.49 E', '18'),
(445, 'Davanagere', '14.46 N', '75.92 E', '18'),
(446, 'Dod Ballapur', '13.30 N', '77.52 E', '18'),
(447, 'Gadag', '15.44 N', '75.63 E', '18'),
(448, 'Gangawati', '15.44 N', '76.52 E', '18'),
(449, 'Gokak', '16.18 N', '74.81 E', '18'),
(450, 'Gulbarga', '17.34 N', '76.82 E', '18'),
(451, 'Harihar', '14.52 N', '75.80 E', '18'),
(452, 'Hassan', '13.01 N', '76.08 E', '18'),
(453, 'Haveri', '14.80 N', '75.40 E', '18'),
(454, 'Hiriyur', '13.97 N', '76.60 E', '18'),
(455, 'Hosakote', '', '', '18'),
(456, 'Hospet', '15.28 N', '76.37 E', '18'),
(457, 'Hubli', '15.36 N', '75.13 E', '18'),
(458, 'Ilkal', '15.97 N', '76.13 E', '18'),
(459, 'Jamkhandi', '16.51 N', '75.28 E', '18'),
(460, 'Kanakapura', '12.54 N', '77.42 E', '18'),
(461, 'Karwar', '14.82 N', '74.12 E', '18'),
(462, 'Kolar', '13.14 N', '78.13 E', '18'),
(463, 'Kollegal', '12.15 N', '77.12 E', '18'),
(464, 'Koppal', '15.35 N', '76.15 E', '18'),
(465, 'Krishnarajapura', '12.97 N', '77.74 E', '18'),
(466, 'Mahadevapura', '', '', '18'),
(467, 'Maisuru', '12.31 N', '76.65 E', '18'),
(468, 'Mandya', '12.54 N', '76.89 E', '18'),
(469, 'Mangaluru', '12.88 N', '74.84 E', '18'),
(470, 'Nipani', '16.41 N', '74.38 E', '18'),
(471, 'Pattanagere', '', '', '18'),
(472, 'Puttur', '12.77 N', '75.22 E', '18'),
(473, 'Rabkavi', '16.47 N', '75.11 E', '18'),
(474, 'Raichur', '16.21 N', '77.35 E', '18'),
(475, 'Ramanagaram', '12.72 N', '77.27 E', '18'),
(476, 'Ranibennur', '14.62 N', '75.61 E', '18'),
(477, 'Robertsonpet', '12.97 N', '78.28 E', '18'),
(478, 'Sagar', '14.17 N', '75.03 E', '18'),
(479, 'Shahabad', '17.13 N', '76.93 E', '18'),
(480, 'Shahpur', '16.70 N', '76.83 E', '18'),
(481, 'Shimoga', '13.93 N', '75.57 E', '18'),
(482, 'Shorapur', '16.52 N', '76.75 E', '18'),
(483, 'Sidlaghatta', '13.38 N', '77.87 E', '18'),
(484, 'Sira', '13.75 N', '76.90 E', '18'),
(485, 'Sirsi', '14.62 N', '74.85 E', '18'),
(486, 'Tiptur', '13.27 N', '76.48 E', '18'),
(487, 'Tumkur', '13.34 N', '77.10 E', '18'),
(488, 'Udupi', '13.35 N', '74.75 E', '18'),
(489, 'Ullal', '12.80 N', '74.85 E', '18'),
(490, 'Yadgir', '16.77 N', '77.13 E', '18'),
(491, 'Yelahanka', '13.10 N', '77.60 E', '18'),
(492, 'Alappuzha', '9.50 N', '76.33 E', '19'),
(493, 'Beypur', '11.18 N', '75.82 E', '19'),
(494, 'Cheruvannur', '11.21 N', '75.84 E', '19'),
(495, 'Edakkara', '', '', '19'),
(496, 'Edathala', '10.03 N', '76.32 E', '19'),
(497, 'Kalamassery', '10.05 N', '76.27 E', '19'),
(498, 'Kannan Devan Hills', '', '', '19'),
(499, 'Kannangad', '12.34 N', '75.09 E', '19'),
(500, 'Kannur', '11.86 N', '75.35 E', '19'),
(501, 'Kayankulam', '9.17 N', '76.49 E', '19'),
(502, 'Kochi', '10.02 N', '76.22 E', '19'),
(503, 'Kollam', '8.89 N', '76.58 E', '19'),
(504, 'Kottayam', '9.60 N', '76.52 E', '19'),
(505, 'Koyilandi', '11.43 N', '75.70 E', '19'),
(506, 'Kozhikkod', '11.26 N', '75.78 E', '19'),
(507, 'Kunnamkulam', '10.65 N', '76.08 E', '19'),
(508, 'Malappuram', '11.07 N', '76.06 E', '19'),
(509, 'Manjeri', '11.12 N', '76.11 E', '19'),
(510, 'Nedumangad', '8.61 N', '77.00 E', '19'),
(511, 'Neyyattinkara', '8.40 N', '77.08 E', '19'),
(512, 'Palakkad', '10.78 N', '76.65 E', '19'),
(513, 'Pallichal', '', '', '19'),
(514, 'Payyannur', '12.10 N', '75.19 E', '19'),
(515, 'Ponnani', '10.78 N', '75.92 E', '19'),
(516, 'Talipparamba', '12.03 N', '75.36 E', '19'),
(517, 'Thalassery', '11.75 N', '75.49 E', '19'),
(518, 'Thiruvananthapuram', '8.51 N', '76.95 E', '19'),
(519, 'Thrippunithura', '9.94 N', '76.35 E', '19'),
(520, 'Thrissur', '10.52 N', '76.21 E', '19'),
(521, 'Tirur', '10.91 N', '75.92 E', '19'),
(522, 'Tiruvalla', '9.39 N', '76.57 E', '19'),
(523, 'Vadakara', '11.61 N', '75.58 E', '19'),
(524, 'Ashoknagar', '24.57 N', '77.72 E', '21'),
(525, 'Balaghat', '21.80 N', '80.18 E', '21'),
(526, 'Basoda', '23.85 N', '77.93 E', '21'),
(527, 'Betul', '21.92 N', '77.90 E', '21'),
(528, 'Bhind', '26.57 N', '78.77 E', '21'),
(529, 'Bhopal', '23.24 N', '77.40 E', '21'),
(530, 'BinaEtawa', '24.20 N', '78.20 E', '21'),
(531, 'Burhanpur', '21.33 N', '76.22 E', '21'),
(532, 'Chhatarpur', '24.92 N', '79.58 E', '21'),
(533, 'Chhindwara', '22.07 N', '78.94 E', '21'),
(534, 'Dabra', '25.90 N', '78.33 E', '21'),
(535, 'Damoh', '23.85 N', '79.44 E', '21'),
(536, 'Datia', '25.67 N', '78.45 E', '21'),
(537, 'Dewas', '22.97 N', '76.05 E', '21'),
(538, 'Dhar', '22.60 N', '75.29 E', '21'),
(539, 'Gohad', '26.43 N', '78.45 E', '21'),
(540, 'Guna', '24.65 N', '77.30 E', '21'),
(541, 'Gwalior', '26.23 N', '78.17 E', '21'),
(542, 'Harda', '22.33 N', '77.11 E', '21'),
(543, 'Hoshangabad', '22.75 N', '77.71 E', '21'),
(544, 'Indore', '22.72 N', '75.86 E', '21'),
(545, 'Itarsi', '22.62 N', '77.76 E', '21'),
(546, 'Jabalpur', '23.17 N', '79.94 E', '21'),
(547, 'Jabalpur Cantonment', '23.16 N', '79.95 E', '21'),
(548, 'Jaora', '23.64 N', '75.11 E', '21'),
(549, 'Khandwa', '21.83 N', '76.35 E', '21'),
(550, 'Khargone', '21.83 N', '75.60 E', '21'),
(551, 'Mandidip', '23.10 N', '77.52 E', '21'),
(552, 'Mandsaur', '24.07 N', '75.07 E', '21'),
(553, 'Mau', '22.56 N', '75.75 E', '21'),
(554, 'Morena', '26.51 N', '77.99 E', '21'),
(555, 'Murwara', '23.85 N', '80.39 E', '21'),
(556, 'Nagda', '23.46 N', '75.42 E', '21'),
(557, 'Nimach', '24.47 N', '74.87 E', '21'),
(558, 'Pithampur', '', '', '21'),
(559, 'Raghogarh', '24.45 N', '77.20 E', '21'),
(560, 'Ratlam', '23.35 N', '75.03 E', '21'),
(561, 'Rewa', '24.53 N', '81.29 E', '21'),
(562, 'Sagar', '23.85 N', '78.75 E', '21'),
(563, 'Sarni', '22.04 N', '78.27 E', '21'),
(564, 'Satna', '24.58 N', '80.83 E', '21'),
(565, 'Sehore', '23.20 N', '77.08 E', '21'),
(566, 'Sendhwa', '21.68 N', '75.10 E', '21'),
(567, 'Seoni', '22.10 N', '79.55 E', '21'),
(568, 'Shahdol', '23.30 N', '81.36 E', '21'),
(569, 'Shajapur', '23.43 N', '76.27 E', '21'),
(570, 'Sheopur', '25.67 N', '76.70 E', '21'),
(571, 'Shivapuri', '25.43 N', '77.65 E', '21'),
(572, 'Sidhi', '24.42 N', '81.88 E', '21'),
(573, 'Singrauli', '23.84 N', '82.27 E', '21'),
(574, 'Tikamgarh', '24.74 N', '78.83 E', '21'),
(575, 'Ujjain', '23.19 N', '75.78 E', '21'),
(576, 'Vidisha', '23.53 N', '77.80 E', '21'),
(577, 'Achalpur', '21.26 N', '77.50 E', '22'),
(578, 'Ahmadnagar', '19.10 N', '74.74 E', '22'),
(579, 'Akola', '20.71 N', '77.00 E', '22'),
(580, 'Akot', '21.10 N', '77.05 E', '22'),
(581, 'Amalner', '21.05 N', '75.06 E', '22'),
(582, 'Ambajogai', '18.73 N', '76.38 E', '22'),
(583, 'Amravati', '20.95 N', '77.76 E', '22'),
(584, 'Anjangaon', '21.16 N', '77.31 E', '22'),
(585, 'Aurangabad', '19.89 N', '75.32 E', '22'),
(586, 'Badlapur', '19.15 N', '73.27 E', '22'),
(587, 'Ballarpur', '19.85 N', '79.35 E', '22'),
(588, 'Baramati', '18.15 N', '74.58 E', '22'),
(589, 'Barsi', '18.24 N', '75.69 E', '22'),
(590, 'Basmat', '19.32 N', '77.17 E', '22'),
(591, 'Bhadravati', '20.11 N', '79.12 E', '22'),
(592, 'Bhandara', '21.18 N', '79.65 E', '22'),
(593, 'Bhiwandi', '19.30 N', '73.05 E', '22'),
(594, 'Bhusawal', '21.05 N', '75.78 E', '22'),
(595, 'Bid', '18.99 N', '75.76 E', '22'),
(596, 'Mumbai', '18.96 N', '72.82 E', '22'),
(597, 'Buldana', '20.54 N', '76.18 E', '22'),
(598, 'Chalisgaon', '20.46 N', '74.99 E', '22'),
(599, 'Chandrapur', '19.96 N', '79.30 E', '22'),
(600, 'Chikhli', '20.35 N', '76.25 E', '22'),
(601, 'Chiplun', '17.53 N', '73.52 E', '22'),
(602, 'Chopda', '21.25 N', '75.28 E', '22'),
(603, 'Dahanu', '19.97 N', '72.73 E', '22'),
(604, 'Deolali', '19.95 N', '73.84 E', '22'),
(605, 'Dhule', '20.90 N', '74.77 E', '22'),
(606, 'Digdoh', '', '', '22'),
(607, 'Diglur', '18.55 N', '77.60 E', '22'),
(608, 'Gadchiroli', '20.17 N', '80.00 E', '22'),
(609, 'Gondiya', '21.47 N', '80.20 E', '22'),
(610, 'Hinganghat', '20.56 N', '78.83 E', '22'),
(611, 'Hingoli', '19.72 N', '77.14 E', '22'),
(612, 'Ichalkaranji', '16.69 N', '74.46 E', '22'),
(613, 'Jalgaon', '21.01 N', '75.56 E', '22'),
(614, 'Jalna', '19.85 N', '75.88 E', '22'),
(615, 'Kalyan', '19.25 N', '73.16 E', '22'),
(616, 'Kamthi', '21.23 N', '79.20 E', '22'),
(617, 'Karanja', '20.48 N', '77.48 E', '22'),
(618, 'Khadki', '18.57 N', '73.83 E', '22'),
(619, 'Khamgaon', '20.70 N', '76.56 E', '22'),
(620, 'Khopoli', '18.78 N', '73.33 E', '22'),
(621, 'Kolhapur', '16.70 N', '74.22 E', '22'),
(622, 'Kopargaon', '19.88 N', '74.48 E', '22'),
(623, 'Latur', '18.41 N', '76.58 E', '22'),
(624, 'Lonavale', '18.75 N', '73.42 E', '22'),
(625, 'Malegaon', '20.56 N', '74.52 E', '22'),
(626, 'Malkapur', '20.90 N', '76.19 E', '22'),
(627, 'Manmad', '20.26 N', '74.43 E', '22'),
(628, 'Mira Bhayandar', '19.29 N', '72.85 E', '22'),
(629, 'Nagpur', '21.16 N', '79.08 E', '22'),
(630, 'Nalasopara', '19.43 N', '72.78 E', '22'),
(631, 'Nanded', '19.17 N', '77.29 E', '22'),
(632, 'Nandurbar', '21.38 N', '74.23 E', '22'),
(633, 'Nashik', '20.01 N', '73.78 E', '22'),
(634, 'Navghar', '19.34 N', '72.90 E', '22'),
(635, 'Navi Mumbai', '19.11 N', '73.06 E', '22'),
(636, 'Navi Mumbai', '19.00 N', '73.10 E', '22'),
(637, 'Osmanabad', '18.17 N', '76.03 E', '22'),
(638, 'Palghar', '19.68 N', '72.75 E', '22'),
(639, 'Pandharpur', '17.68 N', '75.31 E', '22'),
(640, 'Parbhani', '19.27 N', '76.76 E', '22'),
(641, 'Phaltan', '17.98 N', '74.43 E', '22'),
(642, 'Pimpri', '18.62 N', '73.80 E', '22'),
(643, 'Pune', '18.53 N', '73.84 E', '22'),
(644, 'Pune Cantonment', '18.50 N', '73.88 E', '22'),
(645, 'Pusad', '19.91 N', '77.57 E', '22'),
(646, 'Ratnagiri', '17.00 N', '73.29 E', '22'),
(647, 'SangliMiraj', '16.86 N', '74.57 E', '22'),
(648, 'Satara', '17.70 N', '74.00 E', '22'),
(649, 'Shahada', '21.55 N', '74.47 E', '22'),
(650, 'Shegaon', '20.78 N', '76.68 E', '22'),
(651, 'Shirpur', '21.35 N', '74.88 E', '22'),
(652, 'Sholapur', '17.67 N', '75.89 E', '22'),
(653, 'Shrirampur', '19.63 N', '74.64 E', '22'),
(654, 'Sillod', '20.30 N', '75.65 E', '22'),
(655, 'Thana', '19.20 N', '72.97 E', '22'),
(656, 'Udgir', '18.40 N', '77.11 E', '22'),
(657, 'Ulhasnagar', '19.23 N', '73.15 E', '22'),
(658, 'Uran Islampur', '17.05 N', '74.27 E', '22'),
(659, 'Vasai', '19.36 N', '72.80 E', '22'),
(660, 'Virar', '19.47 N', '72.79 E', '22'),
(661, 'Wadi', '', '', '22'),
(662, 'Wani', '20.07 N', '78.95 E', '22'),
(663, 'Wardha', '20.75 N', '78.60 E', '22'),
(664, 'Warud', '21.47 N', '78.27 E', '22'),
(665, 'Washim', '20.10 N', '77.13 E', '22'),
(666, 'Yavatmal', '20.41 N', '78.13 E', '22'),
(667, 'Imphal', '24.79 N', '93.94 E', '23'),
(668, 'Shillong', '25.57 N', '91.87 E', '24'),
(669, 'Tura', '25.52 N', '90.22 E', '24'),
(670, 'Aizawl', '23.71 N', '92.71 E', '25'),
(671, 'Lunglei', '22.88 N', '92.73 E', '25'),
(672, 'Dimapur', '25.92 N', '93.73 E', '26'),
(673, 'Kohima', '25.67 N', '94.11 E', '26'),
(674, 'Wokha', '26.10 N', '94.27 E', '26'),
(675, 'Balangir', '20.71 N', '83.50 E', '27'),
(676, 'Baleshwar', '21.49 N', '86.95 E', '27'),
(677, 'Barbil', '22.12 N', '85.40 E', '27'),
(678, 'Bargarh', '21.34 N', '83.61 E', '27'),
(679, 'Baripada', '21.95 N', '86.73 E', '27'),
(680, 'Bhadrak', '21.06 N', '86.52 E', '27'),
(681, 'Bhawanipatna', '19.91 N', '83.17 E', '27'),
(682, 'Bhubaneswar', '20.27 N', '85.84 E', '27'),
(683, 'Brahmapur', '19.32 N', '84.80 E', '27'),
(684, 'Brajrajnagar', '21.82 N', '83.91 E', '27'),
(685, 'Dhenkanal', '20.67 N', '85.60 E', '27'),
(686, 'Jaypur', '18.86 N', '82.56 E', '27'),
(687, 'Jharsuguda', '21.87 N', '84.01 E', '27'),
(688, 'Kataka', '20.47 N', '85.88 E', '27'),
(689, 'Kendujhar', '21.63 N', '85.58 E', '27'),
(690, 'Paradwip', '20.32 N', '86.62 E', '27'),
(691, 'Puri', '19.81 N', '85.83 E', '27'),
(692, 'Raurkela', '22.24 N', '84.81 E', '27'),
(693, 'Raurkela Industrial Township', '', '', '27'),
(694, 'Rayagada', '19.18 N', '83.41 E', '27'),
(695, 'Sambalpur', '21.47 N', '83.97 E', '27'),
(696, 'Sunabeda', '18.69 N', '82.86 E', '27'),
(697, 'Karaikal', '10.93 N', '79.83 E', '28'),
(698, 'Ozhukarai', '11.94 N', '79.77 E', '28'),
(700, 'Abohar', '30.14 N', '74.20 E', '29'),
(701, 'Amritsar', '31.64 N', '74.87 E', '29'),
(702, 'Barnala', '30.39 N', '75.54 E', '29'),
(703, 'Batala', '31.82 N', '75.21 E', '29'),
(704, 'Bathinda', '30.17 N', '74.97 E', '29'),
(705, 'Dhuri', '30.37 N', '75.87 E', '29'),
(706, 'Faridkot', '30.68 N', '74.74 E', '29'),
(707, 'Fazilka', '30.41 N', '74.02 E', '29'),
(708, 'Firozpur', '30.92 N', '74.61 E', '29'),
(709, 'Firozpur Cantonment', '30.95 N', '74.60 E', '29'),
(710, 'Gobindgarh', '30.66 N', '76.31 E', '29'),
(711, 'Gurdaspur', '32.04 N', '75.40 E', '29'),
(712, 'Hoshiarpur', '31.53 N', '75.91 E', '29'),
(713, 'Jagraon', '30.78 N', '75.48 E', '29'),
(714, 'Jalandhar', '31.33 N', '75.57 E', '29'),
(715, 'Kapurthala', '31.38 N', '75.38 E', '29'),
(716, 'Khanna', '30.71 N', '76.21 E', '29'),
(717, 'Kot Kapura', '30.59 N', '74.80 E', '29'),
(718, 'Ludhiana', '30.91 N', '75.84 E', '29'),
(719, 'Malaut', '30.23 N', '74.48 E', '29'),
(720, 'Maler Kotla', '30.54 N', '75.87 E', '29'),
(721, 'Mansa', '29.98 N', '75.39 E', '29'),
(722, 'Moga', '30.82 N', '75.17 E', '29'),
(723, 'Mohali', '30.78 N', '76.69 E', '29'),
(724, 'Pathankot', '32.27 N', '75.64 E', '29'),
(725, 'Patiala', '30.32 N', '76.39 E', '29'),
(726, 'Phagwara', '31.22 N', '75.76 E', '29'),
(727, 'Rajpura', '30.48 N', '76.59 E', '29'),
(728, 'Rupnagar', '30.98 N', '76.52 E', '29'),
(729, 'Samana', '30.15 N', '76.20 E', '29'),
(730, 'Sangrur', '30.25 N', '75.84 E', '29'),
(731, 'Sirhind', '30.65 N', '76.38 E', '29'),
(732, 'Sunam', '30.13 N', '75.80 E', '29'),
(733, 'Tarn Taran', '31.45 N', '74.92 E', '29'),
(734, 'Ajmer', '26.45 N', '74.64 E', '30'),
(735, 'Alwar', '27.56 N', '76.60 E', '30'),
(736, 'Balotra', '25.83 N', '72.23 E', '30'),
(737, 'Banswara', '23.54 N', '74.44 E', '30'),
(738, 'Baran', '25.10 N', '76.51 E', '30'),
(739, 'Bari', '26.65 N', '77.60 E', '30'),
(740, 'Barmer', '25.75 N', '71.39 E', '30'),
(741, 'Beawar', '26.10 N', '74.30 E', '30'),
(742, 'Bharatpur', '27.23 N', '77.49 E', '30'),
(743, 'Bhilwara', '25.35 N', '74.63 E', '30'),
(744, 'Bhiwadi', '', '', '30'),
(745, 'Bikaner', '28.03 N', '73.32 E', '30'),
(746, 'Bundi', '25.45 N', '75.63 E', '30'),
(747, 'Chittaurgarh', '24.89 N', '74.63 E', '30'),
(748, 'Chomun', '27.17 N', '75.72 E', '30'),
(749, 'Churu', '28.31 N', '74.96 E', '30'),
(750, 'Daosa', '26.88 N', '76.33 E', '30'),
(751, 'Dhaulpur', '26.70 N', '77.87 E', '30'),
(752, 'Didwana', '27.39 N', '74.57 E', '30'),
(753, 'Fatehpur', '27.99 N', '74.95 E', '30'),
(754, 'Ganganagar', '29.93 N', '73.86 E', '30'),
(755, 'Gangapur', '26.47 N', '76.72 E', '30'),
(756, 'Hanumangarh', '29.62 N', '74.29 E', '30'),
(757, 'Hindaun', '26.74 N', '77.02 E', '30'),
(758, 'Jaipur', '26.92 N', '75.80 E', '30'),
(759, 'Jaisalmer', '26.92 N', '70.90 E', '30'),
(760, 'Jalor', '25.35 N', '72.62 E', '30'),
(761, 'Jhalawar', '24.60 N', '76.15 E', '30'),
(762, 'Jhunjhunun', '28.13 N', '75.39 E', '30'),
(763, 'Jodhpur', '26.29 N', '73.02 E', '30'),
(764, 'Karauli', '26.50 N', '77.02 E', '30'),
(765, 'Kishangarh', '26.58 N', '74.86 E', '30'),
(766, 'Kota', '25.18 N', '75.83 E', '30'),
(767, 'Kuchaman', '27.15 N', '74.85 E', '30'),
(768, 'Ladnun', '27.64 N', '74.38 E', '30'),
(769, 'Makrana', '27.05 N', '74.72 E', '30'),
(770, 'Nagaur', '27.21 N', '73.73 E', '30'),
(771, 'Nawalgarh', '27.85 N', '75.27 E', '30'),
(772, 'Nimbahera', '24.62 N', '74.68 E', '30'),
(773, 'Nokha', '27.60 N', '73.42 E', '30'),
(774, 'Pali', '25.79 N', '73.32 E', '30'),
(775, 'Rajsamand', '25.07 N', '73.88 E', '30'),
(776, 'Ratangarh', '28.09 N', '74.60 E', '30'),
(777, 'Sardarshahr', '28.45 N', '74.48 E', '30'),
(778, 'Sawai Madhopur', '26.03 N', '76.34 E', '30'),
(779, 'Sikar', '27.61 N', '75.13 E', '30'),
(780, 'Sujangarh', '27.70 N', '74.46 E', '30'),
(781, 'Suratgarh', '29.32 N', '73.90 E', '30'),
(782, 'Tonk', '26.17 N', '75.78 E', '30'),
(783, 'Udaipur', '24.58 N', '73.69 E', '30'),
(784, 'Alandur', '13.03 N', '80.23 E', '33'),
(785, 'Ambattur', '13.11 N', '80.17 E', '33'),
(786, 'Ambur', '12.80 N', '78.72 E', '33'),
(787, 'Arakonam', '13.08 N', '79.67 E', '33'),
(788, 'Arani', '12.68 N', '79.28 E', '33'),
(789, 'Aruppukkottai', '9.51 N', '78.09 E', '33'),
(790, 'Attur', '11.60 N', '78.60 E', '33'),
(791, 'Avadi', '13.12 N', '80.11 E', '33'),
(792, 'Avaniapuram', '9.86 N', '78.12 E', '33'),
(793, 'Bodinayakkanur', '10.01 N', '77.35 E', '33'),
(794, 'Chengalpattu', '12.70 N', '79.97 E', '33'),
(795, 'Dharapuram', '10.74 N', '77.52 E', '33'),
(796, 'Dharmapuri', '12.13 N', '78.16 E', '33'),
(797, 'Dindigul', '10.36 N', '77.97 E', '33'),
(798, 'Erode', '11.35 N', '77.73 E', '33'),
(799, 'Gopichettipalaiyam', '11.46 N', '77.43 E', '33'),
(800, 'Gudalur', '11.76 N', '79.75 E', '33'),
(801, 'Gudiyattam', '12.95 N', '78.86 E', '33'),
(802, 'Hosur', '12.72 N', '77.82 E', '33'),
(803, 'Idappadi', '11.58 N', '77.85 E', '33'),
(804, 'Kadayanallur', '9.08 N', '77.35 E', '33'),
(805, 'Kambam', '9.74 N', '77.28 E', '33'),
(806, 'Kanchipuram', '12.84 N', '79.70 E', '33'),
(807, 'Karur', '10.96 N', '78.07 E', '33'),
(808, 'Kavundampalaiyam', '11.05 N', '76.92 E', '33'),
(809, 'Kovilpatti', '9.19 N', '77.86 E', '33'),
(810, 'Koyampattur', '11.01 N', '76.96 E', '33'),
(811, 'Krishnagiri', '12.54 N', '78.21 E', '33'),
(812, 'Kumarapalaiyam', '11.44 N', '77.73 E', '33'),
(813, 'Kumbakonam', '10.97 N', '79.38 E', '33'),
(814, 'Kuniyamuthur', '10.98 N', '76.95 E', '33'),
(815, 'Kurichi', '10.92 N', '76.96 E', '33'),
(816, 'Madhavaram', '13.02 N', '80.26 E', '33'),
(817, 'Madras', '13.09 N', '80.27 E', '33'),
(818, 'Madurai', '9.92 N', '78.12 E', '33'),
(819, 'Maduravoyal', '', '', '33'),
(820, 'Mannargudi', '10.67 N', '79.45 E', '33'),
(821, 'Mayiladuthurai', '11.11 N', '79.65 E', '33'),
(822, 'Mettupalayam', '11.30 N', '76.94 E', '33'),
(823, 'Mettur', '11.80 N', '77.80 E', '33'),
(824, 'Nagapattinam', '10.80 N', '79.84 E', '33'),
(825, 'Nagercoil', '8.18 N', '77.43 E', '33'),
(826, 'Namakkal', '11.23 N', '78.17 E', '33'),
(827, 'Nerkunram', '13.04 N', '80.26 E', '33'),
(828, 'Neyveli', '11.62 N', '79.48 E', '33'),
(829, 'Pallavaram', '12.99 N', '80.16 E', '33'),
(830, 'Pammal', '12.97 N', '80.11 E', '33'),
(831, 'Pannuratti', '11.78 N', '79.55 E', '33'),
(832, 'Paramakkudi', '9.54 N', '78.59 E', '33'),
(833, 'Pattukkottai', '10.43 N', '79.31 E', '33'),
(834, 'Pollachi', '10.67 N', '77.00 E', '33'),
(835, 'Pudukkottai', '10.39 N', '78.82 E', '33'),
(836, 'Puliyankudi', '9.18 N', '77.40 E', '33'),
(837, 'Punamalli', '13.05 N', '80.11 E', '33'),
(838, 'Rajapalaiyam', '9.46 N', '77.55 E', '33'),
(839, 'Ramanathapuram', '9.37 N', '78.83 E', '33'),
(840, 'Salem', '11.67 N', '78.16 E', '33'),
(841, 'Sankarankoil', '9.17 N', '77.54 E', '33'),
(842, 'Sivakasi', '9.46 N', '77.79 E', '33'),
(843, 'Srivilliputtur', '9.52 N', '77.63 E', '33'),
(844, 'Tambaram', '12.93 N', '80.12 E', '33'),
(845, 'Tenkasi', '8.96 N', '77.31 E', '33'),
(846, 'Thanjavur', '10.79 N', '79.13 E', '33'),
(847, 'Theni Allinagaram', '10.02 N', '77.48 E', '33'),
(848, 'Thiruthangal', '9.48 N', '77.83 E', '33'),
(849, 'Thiruvarur', '10.78 N', '79.64 E', '33'),
(850, 'Thuthukkudi', '8.81 N', '78.14 E', '33'),
(851, 'Tindivanam', '12.24 N', '79.65 E', '33'),
(852, 'Tiruchchirappalli', '10.81 N', '78.69 E', '33'),
(853, 'Tiruchengode', '11.38 N', '77.90 E', '33'),
(854, 'Tirunelveli', '8.73 N', '77.69 E', '33'),
(855, 'Tirupathur', '12.50 N', '78.57 E', '33'),
(856, 'Tiruppur', '11.09 N', '77.35 E', '33'),
(857, 'Tiruvannamalai', '12.24 N', '79.07 E', '33'),
(858, 'Tiruvottiyur', '13.16 N', '80.29 E', '33'),
(859, 'Udagamandalam', '11.42 N', '76.69 E', '33'),
(860, 'Udumalaipettai', '10.58 N', '77.24 E', '33'),
(861, 'Valparai', '10.38 N', '76.99 E', '33'),
(862, 'Vaniyambadi', '12.69 N', '78.60 E', '33'),
(863, 'Velampalaiyam', '', '', '33'),
(864, 'Velluru', '12.92 N', '79.13 E', '33'),
(865, 'Viluppuram', '11.95 N', '79.49 E', '33'),
(866, 'Virappanchatram', '11.40 N', '77.70 E', '33'),
(867, 'Virudhachalam', '11.51 N', '79.32 E', '33'),
(868, 'Virudunagar', '9.59 N', '77.95 E', '33'),
(869, 'Agartala', '23.84 N', '91.27 E', '34'),
(870, 'Agartala MCl', '', '', '34'),
(871, 'Badharghat', '', '', '34'),
(872, 'Agra', '27.19 N', '78.01 E', '35'),
(873, 'Aligarh', '27.89 N', '78.06 E', '35'),
(874, 'Allahabad', '25.45 N', '81.84 E', '35'),
(875, 'Amroha', '28.91 N', '78.46 E', '35'),
(876, 'Aonla', '28.28 N', '79.15 E', '35'),
(877, 'Auraiya', '26.47 N', '79.50 E', '35'),
(878, 'Ayodhya', '26.80 N', '82.20 E', '35'),
(879, 'Azamgarh', '26.07 N', '83.18 E', '35'),
(880, 'Baheri', '28.78 N', '79.50 E', '35'),
(881, 'Bahraich', '27.58 N', '81.59 E', '35'),
(882, 'Ballia', '25.76 N', '84.15 E', '35'),
(883, 'Balrampur', '27.43 N', '82.18 E', '35'),
(884, 'Banda', '25.48 N', '80.33 E', '35'),
(885, 'Baraut', '29.10 N', '77.26 E', '35'),
(886, 'Bareli', '28.36 N', '79.41 E', '35'),
(887, 'Basti', '26.80 N', '82.74 E', '35'),
(888, 'Behta Hajipur', '', '', '35'),
(889, 'Bela', '25.92 N', '81.99 E', '35'),
(890, 'Bhadohi', '25.40 N', '82.56 E', '35'),
(891, 'Bijnor', '29.38 N', '78.13 E', '35'),
(892, 'Bisalpur', '28.30 N', '79.80 E', '35'),
(893, 'Biswan', '27.50 N', '81.00 E', '35'),
(894, 'Budaun', '28.04 N', '79.12 E', '35'),
(895, 'Bulandshahr', '28.41 N', '77.85 E', '35'),
(896, 'Chandausi', '28.46 N', '78.78 E', '35'),
(897, 'Chandpur', '29.14 N', '78.27 E', '35'),
(898, 'Chhibramau', '27.15 N', '79.52 E', '35'),
(899, 'Chitrakut Dham', '25.20 N', '80.84 E', '35'),
(900, 'Dadri', '28.57 N', '77.55 E', '35'),
(901, 'Deoband', '29.70 N', '77.67 E', '35'),
(902, 'Deoria', '26.51 N', '83.78 E', '35'),
(903, 'Etah', '27.57 N', '78.64 E', '35'),
(904, 'Etawah', '26.78 N', '79.01 E', '35'),
(905, 'Faizabad', '26.78 N', '82.14 E', '35'),
(906, 'Faridpur', '28.22 N', '79.53 E', '35'),
(907, 'Farrukhabad', '27.40 N', '79.57 E', '35'),
(908, 'Fatehpur', '25.93 N', '80.81 E', '35'),
(909, 'Firozabad', '27.15 N', '78.39 E', '35'),
(910, 'Gajraula', '28.85 N', '78.23 E', '35'),
(911, 'Ganga Ghat', '26.52 N', '80.45 E', '35'),
(912, 'Gangoh', '29.77 N', '77.25 E', '35'),
(913, 'Ghaziabad', '28.66 N', '77.41 E', '35'),
(914, 'Ghazipur', '25.59 N', '83.59 E', '35'),
(915, 'Gola Gokarannath', '28.08 N', '80.47 E', '35'),
(916, 'Gonda', '27.14 N', '81.95 E', '35'),
(917, 'Gorakhpur', '26.76 N', '83.36 E', '35'),
(918, 'Hapur', '28.73 N', '77.77 E', '35'),
(919, 'Hardoi', '27.42 N', '80.12 E', '35'),
(920, 'Hasanpur', '28.72 N', '78.28 E', '35'),
(921, 'Hathras', '27.60 N', '78.04 E', '35'),
(922, 'Jahangirabad', '28.42 N', '78.10 E', '35'),
(923, 'Jalaun', '26.15 N', '79.35 E', '35'),
(924, 'Jaunpur', '25.76 N', '82.69 E', '35'),
(925, 'Jhansi', '25.45 N', '78.56 E', '35'),
(926, 'Kadi', '23.31 N', '72.33 E', '35'),
(927, 'Kairana', '29.40 N', '77.20 E', '35'),
(928, 'Kannauj', '27.06 N', '79.91 E', '35'),
(929, 'Kanpur', '26.47 N', '80.33 E', '35'),
(930, 'Kanpur Cantonment', '26.50 N', '80.28 E', '35'),
(931, 'Kasganj', '27.81 N', '78.63 E', '35'),
(932, 'Khatauli', '29.28 N', '77.72 E', '35'),
(933, 'Khora', '', '', '35'),
(934, 'Khurja', '28.26 N', '77.85 E', '35'),
(935, 'Kiratpur', '29.52 N', '78.20 E', '35'),
(936, 'Kosi Kalan', '27.80 N', '77.44 E', '35'),
(937, 'Laharpur', '27.72 N', '80.90 E', '35'),
(938, 'Lakhimpur', '27.95 N', '80.78 E', '35'),
(939, 'Lakhnau', '26.85 N', '80.92 E', '35'),
(940, 'Lakhnau Cantonment', '26.81 N', '80.97 E', '35'),
(941, 'Lalitpur', '24.70 N', '78.41 E', '35'),
(942, 'Loni', '28.75 N', '77.28 E', '35'),
(943, 'Mahoba', '25.30 N', '79.87 E', '35'),
(944, 'Mainpuri', '27.24 N', '79.02 E', '35'),
(945, 'Mathura', '27.50 N', '77.68 E', '35'),
(946, 'Mau', '25.96 N', '83.56 E', '35'),
(947, 'Mauranipur', '25.24 N', '79.13 E', '35'),
(948, 'Mawana', '29.11 N', '77.91 E', '35'),
(949, 'Mirat', '28.99 N', '77.70 E', '35'),
(950, 'Mirat Cantonment', '29.02 N', '77.67 E', '35'),
(951, 'Mirzapur', '25.16 N', '82.56 E', '35'),
(952, 'Modinagar', '28.92 N', '77.62 E', '35'),
(953, 'Moradabad', '28.84 N', '78.76 E', '35'),
(954, 'Mubarakpur', '26.09 N', '83.28 E', '35'),
(955, 'Mughal Sarai', '25.30 N', '83.12 E', '35'),
(956, 'Muradnagar', '28.78 N', '77.50 E', '35'),
(957, 'Muzaffarnagar', '29.48 N', '77.69 E', '35'),
(958, 'Nagina', '29.45 N', '78.43 E', '35'),
(959, 'Najibabad', '29.62 N', '78.33 E', '35'),
(960, 'Nawabganj', '26.94 N', '81.19 E', '35'),
(961, 'Noida', '28.58 N', '77.33 E', '35'),
(962, 'Obra', '24.42 N', '82.98 E', '35'),
(963, 'Orai', '25.99 N', '79.45 E', '35'),
(964, 'Pilibhit', '28.64 N', '79.81 E', '35'),
(965, 'Pilkhuwa', '28.72 N', '77.65 E', '35'),
(966, 'Rae Bareli', '26.23 N', '81.23 E', '35'),
(967, 'Ramgarh Nagla Kothi', '', '', '35'),
(968, 'Rampur', '28.82 N', '79.02 E', '35'),
(969, 'Rath', '25.58 N', '79.57 E', '35'),
(970, 'Renukut', '24.20 N', '83.03 E', '35'),
(971, 'Saharanpur', '29.97 N', '77.54 E', '35'),
(972, 'Sahaswan', '28.08 N', '78.74 E', '35'),
(973, 'Sambhal', '28.59 N', '78.56 E', '35'),
(974, 'Sandila', '27.08 N', '80.52 E', '35'),
(975, 'Shahabad', '27.65 N', '79.95 E', '35'),
(976, 'Shahjahanpur', '27.88 N', '79.90 E', '35'),
(977, 'Shamli', '29.46 N', '77.31 E', '35'),
(978, 'Sherkot', '29.35 N', '78.58 E', '35'),
(979, 'Shikohabad', '27.12 N', '78.58 E', '35'),
(980, 'Sikandarabad', '28.44 N', '77.69 E', '35'),
(981, 'Sitapur', '27.57 N', '80.69 E', '35'),
(982, 'Sukhmalpur Nizamabad', '', '', '35'),
(983, 'Sultanpur', '26.26 N', '82.06 E', '35'),
(984, 'Tanda', '26.55 N', '82.65 E', '35'),
(985, 'Tilhar', '27.98 N', '79.73 E', '35'),
(986, 'Tundla', '27.20 N', '78.28 E', '35'),
(987, 'Ujhani', '28.02 N', '79.02 E', '35'),
(988, 'Unnao', '26.55 N', '80.49 E', '35'),
(989, 'Varanasi', '25.32 N', '83.01 E', '35'),
(990, 'Vrindavan', '27.58 N', '77.70 E', '35'),
(991, 'Dehra Dun', '30.34 N', '78.05 E', '36'),
(992, 'Dehra Dun Cantonment', '30.34 N', '77.97 E', '36'),
(993, 'Gola Range', '', '', '36'),
(994, 'Haldwani', '29.23 N', '79.52 E', '36'),
(995, 'Haridwar', '29.98 N', '78.16 E', '36'),
(996, 'Kashipur', '29.22 N', '78.96 E', '36'),
(997, 'Pithoragarh', '29.58 N', '80.22 E', '36'),
(998, 'Rishikesh', '30.12 N', '78.29 E', '36'),
(999, 'Rudrapur', '', '', '36'),
(1000, 'Rurki', '29.87 N', '77.89 E', '36');

-- --------------------------------------------------------

--
-- Table structure for table `claimedlisting`
--

CREATE TABLE `claimedlisting` (
  `clid` int(11) NOT NULL,
  `cl_name` varchar(300) NOT NULL,
  `cl_email` varchar(200) NOT NULL,
  `cl_phone` varchar(300) NOT NULL,
  `cl_aboutlisting` text NOT NULL,
  `listingid` int(11) NOT NULL,
  `claimed_status` enum('Rejected','Approved','Pending') NOT NULL,
  `cl_addeddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `config_site`
--

CREATE TABLE `config_site` (
  `id` int(11) NOT NULL,
  `url` text COLLATE latin1_general_ci NOT NULL,
  `site_t` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email_address` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `meta_desc` text COLLATE latin1_general_ci NOT NULL,
  `meta_keyword` text COLLATE latin1_general_ci NOT NULL,
  `page_404` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `page_403` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `site_status` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `under_construct` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `abuse_word_check` int(11) NOT NULL,
  `captcha` int(11) NOT NULL,
  `favicon_image` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `abusive_words` mediumtext COLLATE latin1_general_ci NOT NULL,
  `shopping_status` int(11) NOT NULL,
  `replacing_word` text COLLATE latin1_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  `cart` int(10) NOT NULL,
  `faqs` int(10) NOT NULL,
  `events` int(10) NOT NULL,
  `newsletter` int(10) NOT NULL,
  `support` int(10) NOT NULL,
  `testimonials` int(10) NOT NULL,
  `directory` int(10) NOT NULL,
  `blog` int(10) NOT NULL,
  `theme` text COLLATE latin1_general_ci NOT NULL,
  `logo` text COLLATE latin1_general_ci NOT NULL,
  `background_image` text COLLATE latin1_general_ci NOT NULL,
  `background_color` text COLLATE latin1_general_ci NOT NULL,
  `sidebar` longtext COLLATE latin1_general_ci NOT NULL,
  `footer` longtext COLLATE latin1_general_ci NOT NULL,
  `dir_name` varchar(225) COLLATE latin1_general_ci NOT NULL,
  `page_limit` int(11) NOT NULL,
  `facebook` text COLLATE latin1_general_ci NOT NULL,
  `twitter` text COLLATE latin1_general_ci NOT NULL,
  `google` text COLLATE latin1_general_ci NOT NULL,
  `linkedin` text COLLATE latin1_general_ci NOT NULL,
  `youtube` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `config_site`
--

INSERT INTO `config_site` (`id`, `url`, `site_t`, `email_address`, `meta_desc`, `meta_keyword`, `page_404`, `page_403`, `site_status`, `under_construct`, `abuse_word_check`, `captcha`, `favicon_image`, `abusive_words`, `shopping_status`, `replacing_word`, `status`, `cart`, `faqs`, `events`, `newsletter`, `support`, `testimonials`, `directory`, `blog`, `theme`, `logo`, `background_image`, `background_color`, `sidebar`, `footer`, `dir_name`, `page_limit`, `facebook`, `twitter`, `google`, `linkedin`, `youtube`) VALUES
(1, 'http://localhost/dyp/', 'Yellow Pages, Business, Professionals, Directory Faridabad', 'webseekers@gmail.com', 'DypIndia is the best Yellow Pages Business, Professional, Industrial Directory Faridabad. Get details about Manufacturers, Exporters, Doctors, Architects, Interior Decorators, etc. in Faridabad, India, NCR.', 'Faridabad Classifieds, Faridabad Information Guide, Faridabad Manufacturers, Faridabad Exporters, faridabad yellow pages,  yellowpages,  Yellowpages,  YELLOW PAGES,  yellow pages,  faridabadyellowpages,  online yellow pages, telephone directory, Online yellowpages,  online Yellow Pages,  Online yellow pages,  Online directory,  listings,  Internet yellowpages,  internet yellow pages,  haryana,  faridabad,  Business Yellow Pages,  Directory,  Indian Yellow Pages,  Agriculture,  Farm, Machines, Tools, Agro, Commodities, Astrology, Auto Mobile, Band, Bakeries, Book, Depot, Stationary, Builders, Construction, Cable, Operator, Catering, CD/DVD Shops, Chemist, Clinic, Hospital, Coaching, Centers, College, I.T.I., Computer, Academies, Sales, Repair, Courier, Cycle, Store, Distance, Education, Driving, Electronics, Financers, Flex, Printing, Furniture, Garments, Gas, Agency, Gym, Handloom, Ice, Cream, Insurance, Jewelers, Kids, Kirana, Marriage, Beuro, Optical, Petrol, Pump, Photo, Video, grapher, Property, Dealers, Restaurant, Hotel, Marriage, Halls, Saree, Centers, School, Shoes, House, Stock, Broking,  Office, Sweets, Tailors, Tent,  House,  Travel, Agency, Transport', 'yahoo.com', 'rediff.com', 'Live', '<div>\n\n	Website is Under Construction</div>\n\n', 0, 0, 'logo.png', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYP India', 'logo.png', '', '', '', '', '/uploads/', 15, 'facebook.com{-}', 'twitter.com{-}', 'google.com{-}', 'in.linkedin.com{-}', 'youtube.com{-}');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(200) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `feature_image` varchar(100) NOT NULL,
  `menu` int(11) NOT NULL DEFAULT 0,
  `meta_title` varchar(200) NOT NULL,
  `meta_key` varchar(300) NOT NULL,
  `meta_desc` varchar(300) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) NOT NULL DEFAULT 1,
  `userid` int(11) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `pid`, `title`, `slug`, `content`, `feature_image`, `menu`, `meta_title`, `meta_key`, `meta_desc`, `create_date`, `modified_date`, `status`, `userid`, `position`) VALUES
(1, 0, 'About us', 'about-us', 'About us', '', 1, '', '', '', '2020-11-01 19:25:41', '2020-11-01 19:25:41', 1, 1, 1),
(2, 0, 'Advertise', 'advertise', 'AdvertiseAdvertiseAdvertise', '', 1, '', '', '', '2020-11-01 19:26:22', '2020-11-01 19:26:22', 1, 1, 1),
(3, 0, 'With us', 'with-us', 'AdvertisevAdvertise', '', 1, '', '', '', '2020-11-01 19:26:48', '2020-11-01 19:26:48', 1, 1, 1),
(4, 0, 'Login', 'login', 'Login', '5739banner2.jpg', 0, 'Login Title', 'Login Keys', 'Login descriptions', '2020-11-04 21:17:18', '2020-11-04 21:17:18', 1, 1, 1),
(5, 0, 'Forget Password', 'forget-password', 'Forget Password', '', 0, 'Forget Password Title ', 'Forget Password keywords ', 'Forget Password descriptions ', '2020-11-07 19:48:14', '2020-11-07 19:48:14', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(6) NOT NULL,
  `country` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`) VALUES
(1, 'Afghanistan'),
(2, 'Aringland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua and Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bosnia and Herzegovina'),
(29, 'Botswana'),
(30, 'Bouvet Island'),
(31, 'Brazil'),
(32, 'British Indian Ocean territory'),
(33, 'Brunei Darussalam'),
(34, 'Bulgaria'),
(35, 'Burkina Faso'),
(36, 'Burundi'),
(37, 'Cambodia'),
(38, 'Cameroon'),
(39, 'Canada'),
(40, 'Cape Verde'),
(41, 'Cayman Islands'),
(42, 'Central African Republic'),
(43, 'Chad'),
(44, 'Chile'),
(45, 'China'),
(46, 'Christmas Island'),
(47, 'Cocos (Keeling) Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Congo'),
(51, 'Congo'),
(52, ' Democratic Republic'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Ivory Coast (Ivory Coast)'),
(56, 'Croatia (Hrvatska)'),
(57, 'Cuba'),
(58, 'Cyprus'),
(59, 'Czech Republic'),
(60, 'Denmark'),
(61, 'Djibouti'),
(62, 'Dominica'),
(63, 'Dominican Republic'),
(64, 'East Timor'),
(65, 'Ecuador'),
(66, 'Egypt'),
(67, 'El Salvador'),
(68, 'Equatorial Guinea'),
(69, 'Eritrea'),
(70, 'Estonia'),
(71, 'Ethiopia'),
(72, 'Falkland Islands'),
(73, 'Faroe Islands'),
(74, 'Fiji'),
(75, 'Finland'),
(76, 'France'),
(77, 'French Guiana'),
(78, 'French Polynesia'),
(79, 'French Southern Territories'),
(80, 'Gabon'),
(81, 'Gambia'),
(82, 'Georgia'),
(83, 'Germany'),
(84, 'Ghana'),
(85, 'Gibraltar'),
(86, 'Greece'),
(87, 'Greenland'),
(88, 'Grenada'),
(89, 'Guadeloupe'),
(90, 'Guam'),
(91, 'Guatemala'),
(92, 'Guinea'),
(93, 'Guinea-Bissau'),
(94, 'Guyana'),
(95, 'Haiti'),
(96, 'Heard and McDonald Islands'),
(97, 'Honduras'),
(98, 'Hong Kong'),
(99, 'Hungary'),
(100, 'Iceland'),
(101, 'India'),
(102, 'Indonesia'),
(103, 'Iran'),
(104, 'Iraq'),
(105, 'Ireland'),
(106, 'Israel'),
(107, 'Italy'),
(108, 'Jamaica'),
(109, 'Japan'),
(110, 'Jordan'),
(111, 'Kazakhstan'),
(112, 'Kenya'),
(113, 'Kiribati'),
(114, 'Korea (north)'),
(115, 'Korea (south)'),
(116, 'Kuwait'),
(117, 'Kyrgyzstan'),
(118, 'Lao People\'s Democratic Republic'),
(119, 'Latvia'),
(120, 'Lebanon'),
(121, 'Lesotho'),
(122, 'Liberia'),
(123, 'Libyan Arab Jamahiriya'),
(124, 'Liechtenstein'),
(125, 'Lithuania'),
(126, 'Luxembourg'),
(127, 'Macao'),
(128, 'Macedonia'),
(129, 'Madagascar'),
(130, 'Malawi'),
(131, 'Malaysia'),
(132, 'Maldives'),
(133, 'Mali'),
(134, 'Malta'),
(135, 'Marshall Islands'),
(136, 'Martinique'),
(137, 'Mauritania'),
(138, 'Mauritius'),
(139, 'Mayotte'),
(140, 'Mexico'),
(141, 'Micronesia'),
(142, 'Moldova'),
(143, 'Monaco'),
(144, 'Mongolia'),
(145, 'Montserrat'),
(146, 'Morocco'),
(147, 'Mozambique'),
(148, 'Myanmar'),
(149, 'Namibia'),
(150, 'Nauru'),
(151, 'Nepal'),
(152, 'Netherlands'),
(153, 'Netherlands Antilles'),
(154, 'New Caledonia'),
(155, 'New Zealand'),
(156, 'Nicaragua'),
(157, 'Niger'),
(158, 'Nigeria'),
(159, 'Niue'),
(160, 'Norfolk Island'),
(161, 'Northern Mariana Islands'),
(162, 'Norway'),
(163, 'Oman'),
(164, 'Pakistan'),
(165, 'Palau'),
(166, 'Palestinian Territories'),
(167, 'Panama'),
(168, 'Papua New Guinea'),
(169, 'Paraguay'),
(170, 'Peru'),
(171, 'Philippines'),
(172, 'Pitcairn'),
(173, 'Poland'),
(174, 'Portugal'),
(175, 'Puerto Rico'),
(176, 'Qatar'),
(177, 'Runion'),
(178, 'Romania'),
(179, 'Russian Federation'),
(180, 'Rwanda'),
(181, 'Saint Helena'),
(182, 'Saint Kitts and Nevis'),
(183, 'Saint Lucia'),
(184, 'Saint Pierre and Miquelon'),
(185, 'Saint Vincent and the Grenadines'),
(186, 'Samoa'),
(187, 'San Marino'),
(188, 'Sao Tome and Principe'),
(189, 'Saudi Arabia'),
(190, 'Senegal'),
(191, 'Serbia and Montenegro'),
(192, 'Seychelles'),
(193, 'Sierra Leone'),
(194, 'Singapore'),
(195, 'Slovakia'),
(196, 'Slovenia'),
(197, 'Solomon Islands'),
(198, 'Somalia'),
(199, 'South Africa'),
(200, 'South Georgia and the South Sandwich Islands'),
(201, 'Spain'),
(202, 'Sri Lanka'),
(203, 'Sudan'),
(204, 'Suriname'),
(205, 'Svalbard and Jan Mayen Islands'),
(206, 'Swaziland'),
(207, 'Sweden'),
(208, 'Switzerland'),
(209, 'Syria'),
(210, 'Taiwan'),
(211, 'Tajikistan'),
(212, 'Tanzania'),
(213, 'Thailand'),
(214, 'Togo'),
(215, 'Tokelau'),
(216, 'Tonga'),
(217, 'Trinidad and Tobago'),
(218, 'Tunisia'),
(219, 'Turkey'),
(220, 'Turkmenistan'),
(221, 'Turks and Caicos Islands'),
(222, 'Tuvalu'),
(223, 'Uganda'),
(224, 'Ukraine'),
(225, 'United Arab Emirates'),
(226, 'United Kingdom'),
(227, 'United States of America'),
(228, 'Uruguay'),
(229, 'Uzbekistan'),
(230, 'Vanuatu'),
(231, 'Vatican City'),
(232, 'Venezuela'),
(233, 'Vietnam'),
(234, 'Virgin Islands (British)'),
(235, 'Virgin Islands (US)'),
(236, 'Wallis and Futuna Islands'),
(237, 'Western Sahara'),
(238, 'Yemen'),
(239, 'Zaire'),
(240, 'Zambia'),
(241, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cid` int(11) NOT NULL,
  `ctid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `fee` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `database_backup`
--

CREATE TABLE `database_backup` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `create_date` varchar(20) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `database_backup`
--

INSERT INTO `database_backup` (`id`, `name`, `create_date`, `userid`) VALUES
(1, 'xolite_dbbackup.sql.gz', '2017-05-17 17:36:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dirlike`
--

CREATE TABLE `dirlike` (
  `id` int(222) NOT NULL,
  `pid` int(111) NOT NULL,
  `status` enum('Like','Unlike') NOT NULL DEFAULT 'Like',
  `ipaddress` varchar(222) NOT NULL,
  `userid` int(225) NOT NULL,
  `addeddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dirlike`
--

INSERT INTO `dirlike` (`id`, `pid`, `status`, `ipaddress`, `userid`, `addeddate`) VALUES
(1, 1, 'Unlike', '::1', 0, '2015-11-04 11:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `enquriy`
--

CREATE TABLE `enquriy` (
  `eid` int(11) NOT NULL,
  `name` varchar(51) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `email` varchar(51) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(51) NOT NULL,
  `course` int(11) NOT NULL,
  `fee` int(11) NOT NULL,
  `comments` text NOT NULL,
  `mature` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faqs_category`
--

CREATE TABLE `faqs_category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `last_update` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(12) NOT NULL,
  `cat_slug` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `rating` int(20) NOT NULL,
  `message` text NOT NULL,
  `msg_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `bid` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `creator_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `forumid` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `userid` int(11) NOT NULL,
  `status` enum('Show','Hide') NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forum_answer`
--

CREATE TABLE `forum_answer` (
  `aid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `forumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_answer`
--

INSERT INTO `forum_answer` (`aid`, `answer`, `forumid`, `userid`, `added_date`) VALUES
(1, 'sdfdsfdsfdsf', 2, 2, '2015-12-18 12:52:18'),
(2, 'dsfsdfdsf', 2, 2, '2015-12-18 12:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `listing`
--

CREATE TABLE `listing` (
  `busiid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `website` varchar(200) NOT NULL,
  `status` enum('Active','Deactive','Pending','Confirmed') NOT NULL,
  `category` varchar(200) NOT NULL,
  `subcatid` bigint(20) NOT NULL,
  `contact_person` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `fax` varchar(200) NOT NULL,
  `countryid` varchar(20) NOT NULL,
  `stateid` varchar(20) NOT NULL,
  `cityid` varchar(20) NOT NULL,
  `zipcode` varchar(225) NOT NULL,
  `description` longtext NOT NULL,
  `meta_title` text NOT NULL,
  `keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `main_image` varchar(200) NOT NULL,
  `uid` int(11) NOT NULL,
  `lat` varchar(200) NOT NULL,
  `lng` varchar(200) NOT NULL,
  `zoom` varchar(10) NOT NULL,
  `position` int(111) NOT NULL,
  `packageid` bigint(20) NOT NULL,
  `modify_date` datetime NOT NULL,
  `added_date` datetime NOT NULL,
  `visiblity_status` enum('Show','Hide') NOT NULL,
  `expiry_date` date NOT NULL,
  `documentname` varchar(200) NOT NULL,
  `documents` varchar(200) NOT NULL,
  `token` varchar(200) NOT NULL,
  `usertype` varchar(225) NOT NULL,
  `listing_type` enum('Free','Paid') NOT NULL,
  `no_follow` enum('0','1') NOT NULL DEFAULT '0',
  `no_index` enum('0','1') NOT NULL DEFAULT '0',
  `author` text NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `google` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `dribbble` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `tumbler` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `mapurl` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `logintime` varchar(100) NOT NULL,
  `user_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `userid`, `logintime`, `user_ip`) VALUES
(1, 1, '2020-10-25 14:43:08', '::1'),
(2, 1, '2020-10-27 02:05:51', '::1'),
(3, 1, '2020-10-28 01:40:38', '::1'),
(4, 9, '2020-10-28 02:06:11', '::1'),
(5, 1, '2020-10-28 02:09:29', '::1'),
(6, 1, '2020-10-31 01:55:59', '::1'),
(7, 1, '2020-10-31 02:11:15', '::1'),
(8, 1, '2020-11-01 00:23:58', '::1'),
(9, 1, '2020-11-01 23:04:58', '::1'),
(10, 1, '2020-11-05 02:44:42', '::1'),
(11, 1, '2020-11-07 01:57:18', '::1'),
(12, 1, '2020-11-07 19:46:37', '::1'),
(13, 10, '2020-11-08 01:31:09', '::1'),
(14, 10, '2020-11-08 01:34:39', '::1'),
(15, 1, '2020-11-08 22:47:36', '::1'),
(16, 1, '2020-11-08 23:26:13', '::1'),
(17, 1, '2020-11-10 01:57:40', '::1'),
(18, 15, '2020-11-10 02:49:18', '::1'),
(19, 15, '2020-11-10 02:49:31', '::1'),
(20, 15, '2020-11-10 02:53:00', '::1'),
(21, 15, '2020-11-10 02:53:37', '::1'),
(22, 1, '2020-11-10 03:00:40', '::1'),
(23, 1, '2020-11-11 01:58:05', '::1'),
(24, 15, '2020-11-11 02:05:34', '::1'),
(25, 1, '2020-11-11 03:00:27', '::1'),
(26, 15, '2020-11-11 03:05:04', '::1'),
(27, 1, '2020-11-11 03:19:49', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `regid` varchar(51) NOT NULL,
  `maxmarks` int(11) NOT NULL,
  `percent` float NOT NULL,
  `status` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `creator_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `media_type` varchar(100) NOT NULL,
  `last_update` int(200) NOT NULL,
  `category` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `userid` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` int(11) NOT NULL,
  `feature_width` varchar(30) NOT NULL,
  `feature_height` varchar(30) NOT NULL,
  `gallery_width` varchar(30) NOT NULL,
  `gallery_height` varchar(30) NOT NULL,
  `slider_width` varchar(20) NOT NULL,
  `slider_height` varchar(20) NOT NULL,
  `scroll_width` varchar(20) NOT NULL,
  `scroll_height` varchar(20) NOT NULL,
  `testimonail_width` varchar(20) NOT NULL,
  `testimonail_height` varchar(20) NOT NULL,
  `logo_width` varchar(100) NOT NULL,
  `logo_height` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media_settings`
--

INSERT INTO `media_settings` (`id`, `feature_width`, `feature_height`, `gallery_width`, `gallery_height`, `slider_width`, `slider_height`, `scroll_width`, `scroll_height`, `testimonail_width`, `testimonail_height`, `logo_width`, `logo_height`, `userid`) VALUES
(1, '900', '', '600', '', '999', '', '300', '200', '200', '160', '1400', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `others_blog`
--

CREATE TABLE `others_blog` (
  `id` int(11) NOT NULL,
  `blog_title` varchar(200) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `content` text NOT NULL,
  `blog_image` varchar(200) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `meta_title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `display` int(11) NOT NULL DEFAULT 0,
  `author` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `others_blog`
--

INSERT INTO `others_blog` (`id`, `blog_title`, `slug`, `content`, `blog_image`, `cat_id`, `meta_title`, `keywords`, `description`, `status`, `display`, `author`, `create_date`, `update_date`) VALUES
(1, 'This is others blog', 'this-is-others-blog', 'This is just others blog for testing\r\nThis is just others blog for testing\r\nThis is just others blog for testing\r\nThis is just others blog for testing', '', 0, '', '', '', 1, 1, 0, '2020-10-27 03:15:46', '2020-10-27 03:15:46'),
(2, 'Hello testing others blog', 'hello-testing-others-blog', 'Hello testing others blogHello testing others blog\r\nHello testing others blogHello testing others blog', '', 0, '', '', '', 1, 0, 0, '2020-10-27 03:15:46', '2020-10-27 03:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `export` int(11) NOT NULL DEFAULT 1,
  `ranking` int(11) NOT NULL DEFAULT 1,
  `settings` int(11) NOT NULL DEFAULT 1,
  `listing` int(11) NOT NULL DEFAULT 1,
  `attendance` int(11) NOT NULL DEFAULT 1,
  `test` int(11) NOT NULL DEFAULT 1,
  `fee` int(11) NOT NULL DEFAULT 1,
  `videos` int(11) NOT NULL DEFAULT 1,
  `files` int(11) NOT NULL DEFAULT 1,
  `follow` int(11) NOT NULL DEFAULT 1,
  `news` int(11) NOT NULL DEFAULT 1,
  `advertisement` int(11) NOT NULL DEFAULT 1,
  `daylog` int(11) NOT NULL DEFAULT 1,
  `site_config` int(11) NOT NULL DEFAULT 0,
  `site_backup` int(11) NOT NULL DEFAULT 0,
  `site_users` int(11) NOT NULL DEFAULT 0,
  `permissions` int(11) NOT NULL DEFAULT 0,
  `user_log` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `uid`, `content`, `export`, `ranking`, `settings`, `listing`, `attendance`, `test`, `fee`, `videos`, `files`, `follow`, `news`, `advertisement`, `daylog`, `site_config`, `site_backup`, `site_users`, `permissions`, `user_log`) VALUES
(1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `site_config`
--

CREATE TABLE `site_config` (
  `id` int(11) NOT NULL,
  `site_title` varchar(200) NOT NULL,
  `site_keywords` varchar(300) NOT NULL,
  `site_desc` varchar(200) NOT NULL,
  `site_email` varchar(200) NOT NULL,
  `site_status` int(11) NOT NULL,
  `site_status_message` varchar(200) NOT NULL,
  `site_logo` varchar(200) NOT NULL,
  `site_favicon` varchar(200) NOT NULL,
  `site_phone` varchar(200) NOT NULL,
  `site_address` longtext NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `google` text NOT NULL,
  `linkedin` text NOT NULL,
  `youtube` text NOT NULL,
  `instagram` text NOT NULL,
  `pinterest` text NOT NULL,
  `flickr` text NOT NULL,
  `snapchat` text NOT NULL,
  `vimeo` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_config`
--

INSERT INTO `site_config` (`id`, `site_title`, `site_keywords`, `site_desc`, `site_email`, `site_status`, `site_status_message`, `site_logo`, `site_favicon`, `site_phone`, `site_address`, `facebook`, `twitter`, `google`, `linkedin`, `youtube`, `instagram`, `pinterest`, `flickr`, `snapchat`, `vimeo`, `last_update`, `userid`) VALUES
(1, 'Dypidia', '', '', 'webseekers@gmail.com,abc@gmail.com', 2, 'Sorry for the inconvenience but we’re performing some maintenance at the moment. If you need to you can always contact us, otherwise we’ll be back online shortly!', 'account-bottom.png', '4711414324699_1617063101926686_1453316379771547440_o.jpg', '9991141485', 'address', 'https://www.facebook.com/WebSeekers', 'https://twitter.com/webseekers', 'https://twitter.com/webseekers', 'https://www.linkedin.com/in/webseekers', 'https://www.youtube.com/c/WebseekersIn', 'https://www.instagram.com/webseekers', 'https://www.facebook.com/WebSeekers', 'https://www.facebook.com/WebSeekers', 'https://www.facebook.com/WebSeekers', 'https://www.facebook.com/WebSeekers', '2017-10-28 17:30:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider_blog`
--

CREATE TABLE `slider_blog` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `others_blog_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `StateId` int(11) NOT NULL,
  `StateName` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`StateId`, `StateName`, `cid`) VALUES
(1, 'Andaman and Nicobar Islands', 101),
(2, 'Andhra Pradesh', 101),
(3, 'Arunachal Pradesh', 101),
(4, 'Assam', 101),
(5, 'West Bengal', 101),
(6, 'Bihar', 101),
(7, 'Chandigarh', 101),
(8, 'Chhattisgarh', 101),
(9, 'Dadra and Nagar Haveli', 101),
(10, 'Daman &amp; Diu', 101),
(11, 'Delhi', 101),
(12, 'Goa', 101),
(13, 'Gujarat', 101),
(14, 'Haryana', 101),
(15, 'Himachal Pradesh', 101),
(16, 'Jammu and Kashmir', 101),
(17, 'Jharkhand', 101),
(18, 'Karnataka', 101),
(19, 'Kerala', 101),
(20, 'Lakshadweep', 101),
(21, 'Madhya Pradesh', 101),
(22, 'Maharashtra', 101),
(23, 'Manipur', 101),
(24, 'Meghalaya', 101),
(25, 'Mizoram', 101),
(26, 'Nagaland', 101),
(27, 'Orissa', 101),
(28, 'Puducherry', 101),
(29, 'Punjab', 101),
(30, 'Rajasthan', 101),
(31, 'Sikkim', 101),
(32, 'Telangana', 101),
(33, 'Tamil Nadu', 101),
(34, 'Tripura', 101),
(35, 'Uttar Pradesh', 101),
(36, 'Uttaranchal', 101);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `content` varchar(500) NOT NULL,
  `create_date` varchar(500) NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  `userid` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `upassword` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `profession` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `ukey` varchar(200) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_ip` varchar(100) NOT NULL,
  `user_role` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `upassword`, `email`, `name`, `profession`, `status`, `ukey`, `last_login`, `login_ip`, `user_role`, `photo`) VALUES
(1, 'blogpost', '9d9c41178a3674034bfd27e9fee03f9559570029', '93kr.sumit@gmail.com', NULL, NULL, 1, ' 7efd975092a8ccc4f65fb8c217ab4279', '2016-12-28 12:32:35', '123.12.234.12', 1, '4981Koala.jpg'),
(9, 'sumit', '4cbc85204bf30139fec8159bb6943164bc839ef1', '93kr.sumit@gmail.com', NULL, NULL, 1, '7225ff71e8821b24fd72b4c8fda95b9a', '2020-10-27 20:35:48', '', 3, ''),
(10, '93kr.sumit@gmail.com', '1895d7c05635e2d31a0da922ba399a25e91315d0', '93kr.sumit@gmail.com', 'Sumit kumar singh', 'student', 1, '', '2020-11-07 19:50:23', '', 0, ''),
(15, 'sssumitsssingh@gmail.com', 'eb51fdc1ff64bc186926643d1d8bc67d78b4c2fa', 'sssumitsssingh@gmail.com', 'Slider', 'educator', 1, NULL, '2020-11-09 21:18:58', '', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Editor'),
(3, 'Author'),
(4, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(20) NOT NULL,
  `cid` int(20) NOT NULL,
  `title` varchar(300) NOT NULL,
  `slug` varchar(350) NOT NULL,
  `description` longtext NOT NULL,
  `url` longtext NOT NULL,
  `vurl` varchar(500) NOT NULL,
  `img` varchar(100) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_key` text NOT NULL,
  `meta_desc` text NOT NULL,
  `position` int(20) NOT NULL,
  `create_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `total_view` bigint(20) NOT NULL DEFAULT 1,
  `pdf_file` varchar(500) NOT NULL,
  `pdf_downloads` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`adid`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claimedlisting`
--
ALTER TABLE `claimedlisting`
  ADD PRIMARY KEY (`clid`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`count`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `database_backup`
--
ALTER TABLE `database_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquriy`
--
ALTER TABLE `enquriy`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs_category`
--
ALTER TABLE `faqs_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`forumid`);

--
-- Indexes for table `listing`
--
ALTER TABLE `listing`
  ADD PRIMARY KEY (`busiid`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `others_blog`
--
ALTER TABLE `others_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_config`
--
ALTER TABLE `site_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_blog`
--
ALTER TABLE `slider_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`StateId`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `ukey` (`ukey`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `claimedlisting`
--
ALTER TABLE `claimedlisting`
  MODIFY `clid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `database_backup`
--
ALTER TABLE `database_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enquriy`
--
ALTER TABLE `enquriy`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs_category`
--
ALTER TABLE `faqs_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `forumid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listing`
--
ALTER TABLE `listing`
  MODIFY `busiid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `others_blog`
--
ALTER TABLE `others_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_config`
--
ALTER TABLE `site_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_blog`
--
ALTER TABLE `slider_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `StateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
