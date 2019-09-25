-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2016 at 05:59 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `micra`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'test', 'test', '', 'test', '', 'test', '45435', 222, 3527, ''),
(2, 2, 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 18, 322, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `firstname`, `lastname`, `password`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Wjkqi0hYhocGAk3gQArmmhLGdNnebhTxH3eqtBERphXqHRNYS5A4cLA5Zoa0MtnT', '', '', 'nIAXJEpzmCguUuImpIhHUiDtMdkZNOs1WsOfx3Va62KRmS4RbcZvAdfN6FmKTVBpEQL1KhRHZcYCuSTLut7vMc9JhlT17VgBls3wPL3pnRrYkBjVugH69GFhrZYpv5qXojJ4vCjYURw5SWQD3XA2dFaLfz0QvhnZGxT203QKKDFdaWgTugMNmmZIcQZNxDm406wq0D1AG7ehTB0DiDRLqqTI6tVtw8nn5aUvdLwkIRHcS7f0AxCreVzbFLL1JyfF', 1, '2015-06-23 16:05:53', '2015-06-23 16:05:53'),
(2, 'YQujcl8CHBy2v7URMXI9wwUMWHeoQ1tiV8nm75RE5rRnltth0CNd8Czp0tK0xkUO', '', '', 'qi3hzH78GPIRzZfo1ipzhKrArOM5rLRxXBgUFMBvoqWxa6ooP7eDdL6O6km29pmOcWhAsIcZj88LYWLgBOqKxDiUizZsoAVh5j5is7Q62K7cunFRKXPJeyiSh7kZqOatuoq8FobViNTkcyW4qYMAic5I46H9FV3x7lyQ0NAnlICli0AZjSgu97p0nyCb2TtthbUb8p6wB6IeCuCw0EOVxVxbuiUvCK6heJNed9PyzmmQ2hbBesSz9lR4OKA8j3hO', 1, '2016-11-19 18:40:21', '2016-11-19 18:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(173, 6, '', 'catalog/Tanvir/slider2.jpg', 8),
(172, 6, '', 'catalog/Tanvir/slider1.jpg', 9),
(162, 8, 'http://www.disney.com/', 'catalog/Tanvir/carosal/DisneyLogo.gif', 4),
(163, 8, 'https://www.starbucks.com/', 'catalog/Tanvir/carosal/starbucks.png', 5),
(165, 8, 'https://www.bk.com/', 'catalog/Tanvir/carosal/burger king.jpg', 7),
(148, 7, '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(171, 6, '', 'catalog/hot-trends_2new-270x450.jpg', 10),
(166, 8, 'http://www.coca-cola.com/global/glp.html', 'catalog/Tanvir/carosal/Coca-Cola.jpg', 8),
(149, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(164, 8, 'http://www.nintendo.com/', 'catalog/Tanvir/carosal/nintendo.jpg', 6),
(161, 8, 'http://www.dell.com/', 'catalog/Tanvir/dell-logo.jpg', 3),
(160, 8, 'http://www.sony.com/', 'catalog/Tanvir/carosal/Sony.jpg', 2),
(159, 8, 'http://www.harley-davidson.com/content/h-d/en_US/home.html', 'catalog/Tanvir/carosal/Harley davidson.jpg', 1),
(158, 8, 'http://global.canon/en/', 'catalog/Tanvir/carosal/canon.jpg', 0),
(170, 6, '', 'catalog/hot-trends_1new-270x450.jpg', 11),
(167, 8, 'http://www.redbull.com/en', 'catalog/Tanvir/carosal/RedBull.png', 9),
(168, 8, 'https://www.rolex.com/', 'catalog/Tanvir/carosal/rolex.png', 10),
(169, 8, 'http://www.samsung.com/', 'catalog/Tanvir/carosal/samsung-logo.jpg', 11),
(174, 6, '', 'catalog/Tanvir/banner/slider3.jpg', 0),
(175, 6, '', 'catalog/Tanvir/banner/slider4.jpg', 1),
(176, 6, '', 'catalog/Tanvir/banner/slider5.jpg', 2),
(177, 6, '', 'catalog/Tanvir/banner/slider6.jpg', 3),
(178, 6, '', 'catalog/Tanvir/banner/slider8.jpg', 4),
(179, 6, '', 'catalog/Tanvir/banner/slider9.jpg', 5),
(180, 6, '', 'catalog/Tanvir/banner/slider9.jpeg', 6),
(181, 6, '', 'catalog/Tanvir/banner/slider7.png', 7);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(149, 1, 7, 'iPhone 6'),
(172, 1, 6, 'Tanvir1'),
(169, 1, 8, 'Samsung'),
(168, 1, 8, 'Rolex'),
(148, 1, 7, 'MacBookAir'),
(166, 1, 8, 'Coca Cola'),
(167, 1, 8, 'RedBull'),
(165, 1, 8, 'Burger King'),
(164, 1, 8, 'Nintendo'),
(163, 1, 8, 'Starbucks'),
(171, 1, 6, 'Clothes'),
(162, 1, 8, 'Disney'),
(161, 1, 8, 'Dell'),
(160, 1, 8, 'Sony'),
(159, 1, 8, 'Harley Davidson'),
(158, 1, 8, 'Canon'),
(170, 1, 6, 'Hot Trends'),
(173, 1, 6, 'Tanvir2'),
(174, 1, 6, 'Tanvir3'),
(175, 1, 6, 'Tanvir4'),
(176, 1, 6, 'Tanvir5'),
(177, 1, 6, 'Tanvir6'),
(178, 1, 6, 'Tanvir7'),
(179, 1, 6, 'Tanvir8'),
(180, 1, 6, 'Tanvir9'),
(181, 1, 6, 'Tanvir10');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'catalog/Tanvir/electronics.jpg', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2016-11-23 00:13:41'),
(27, '', 20, 0, 0, 2, 0, '2009-01-31 01:55:34', '2016-11-21 21:26:09'),
(20, 'catalog/women_banner.png', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2015-06-23 17:25:28'),
(18, 'catalog/Tanvir/man.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2016-11-23 00:11:45'),
(17, 'catalog/Tanvir/kids.jpg', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2016-11-23 00:18:37'),
(28, '', 25, 0, 0, 2, 1, '2009-02-02 13:11:12', '2016-11-23 22:52:21'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2015-05-19 17:15:36'),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2016-11-23 22:44:01'),
(30, '', 25, 0, 0, 3, 1, '2009-02-02 13:11:59', '2016-11-23 22:48:25'),
(31, '', 25, 0, 0, 4, 1, '2009-02-03 14:17:24', '2016-11-23 23:17:05'),
(35, '', 26, 0, 0, 0, 1, '2010-09-17 10:06:48', '2015-05-20 14:37:11'),
(45, '', 18, 0, 0, 1, 1, '2010-09-24 18:29:16', '2015-05-19 18:14:06'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2015-05-19 18:12:10'),
(57, 'catalog/Tanvir/furniture.jpg', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2016-11-23 00:16:20'),
(59, '', 20, 0, 1, 3, 1, '2015-05-19 17:16:17', '2015-05-19 18:07:59'),
(60, '', 0, 0, 1, 0, 0, '2015-05-19 17:16:48', '2015-06-23 17:26:30'),
(61, '', 20, 0, 1, 4, 1, '2015-05-19 17:16:49', '2015-05-19 18:08:40'),
(62, '', 20, 0, 1, 5, 1, '2015-05-19 17:17:47', '2015-05-19 18:08:54'),
(63, '', 61, 0, 1, 3, 1, '2015-05-19 18:05:53', '2015-05-19 18:32:00'),
(64, '', 20, 0, 1, 6, 0, '2015-05-19 18:11:12', '2016-11-21 21:27:42'),
(65, '', 18, 0, 1, 2, 0, '2015-05-19 18:13:21', '2015-06-23 16:54:53'),
(66, '', 26, 0, 1, 2, 1, '2015-05-19 18:13:57', '2015-05-19 18:13:57'),
(67, '', 18, 0, 1, 3, 1, '2015-05-19 18:15:58', '2015-05-19 18:15:58'),
(68, '', 18, 0, 1, 4, 1, '2015-05-19 18:17:42', '2015-05-19 18:17:42'),
(69, '', 18, 0, 1, 5, 0, '2015-05-19 18:18:21', '2015-06-23 16:55:03'),
(70, '', 46, 0, 1, 0, 1, '2015-05-19 18:19:35', '2015-05-19 18:19:35'),
(71, '', 26, 0, 1, 3, 1, '2015-05-19 18:19:36', '2015-05-19 18:19:36'),
(72, '', 26, 0, 1, 4, 1, '2015-05-19 18:20:14', '2015-05-19 18:20:14'),
(73, '', 46, 0, 1, 1, 1, '2015-05-19 18:20:52', '2015-05-19 18:20:52'),
(74, '', 27, 0, 1, 1, 0, '2015-05-19 18:21:07', '2016-11-21 21:27:11'),
(75, '', 27, 0, 1, 2, 0, '2015-05-19 18:21:47', '2016-11-21 21:27:21'),
(76, '', 46, 0, 1, 2, 1, '2015-05-19 18:22:02', '2015-05-19 18:22:02'),
(77, '', 27, 0, 1, 3, 0, '2015-05-19 18:22:27', '2016-11-21 21:27:32'),
(78, '', 46, 0, 1, 3, 1, '2015-05-19 18:22:32', '2015-05-19 18:22:32'),
(79, '', 27, 0, 1, 4, 1, '2015-05-19 18:23:07', '2015-05-19 18:23:07'),
(80, '', 45, 0, 1, 0, 1, '2015-05-19 18:23:08', '2015-05-19 18:23:08'),
(81, '', 45, 0, 1, 1, 1, '2015-05-19 18:23:27', '2016-11-23 14:20:36'),
(82, '', 45, 0, 1, 2, 1, '2015-05-19 18:23:46', '2016-11-23 14:25:17'),
(83, '', 59, 0, 1, 1, 1, '2015-05-19 18:24:02', '2015-05-19 18:24:02'),
(84, '', 45, 0, 1, 3, 1, '2015-05-19 18:24:13', '2016-11-23 14:25:34'),
(85, '', 65, 0, 1, 0, 1, '2015-05-19 18:24:37', '2015-05-19 18:24:37'),
(86, '', 65, 0, 1, 1, 1, '2015-05-19 18:24:57', '2015-05-19 18:24:57'),
(87, '', 59, 0, 1, 2, 1, '2015-05-19 18:25:07', '2015-05-19 18:25:07'),
(88, '', 65, 0, 1, 2, 1, '2015-05-19 18:25:24', '2015-05-19 18:25:24'),
(89, '', 65, 0, 1, 3, 1, '2015-05-19 18:25:44', '2015-05-19 18:25:44'),
(90, '', 67, 0, 1, 0, 1, '2015-05-19 18:26:05', '2016-11-23 15:06:14'),
(91, '', 59, 0, 1, 3, 1, '2015-05-19 18:26:18', '2015-05-19 18:26:18'),
(92, '', 67, 0, 1, 1, 1, '2015-05-19 18:26:43', '2015-05-19 18:26:43'),
(93, '', 67, 0, 1, 2, 1, '2015-05-19 18:27:11', '2016-11-23 15:08:47'),
(94, '', 67, 0, 1, 3, 1, '2015-05-19 18:27:39', '2016-11-23 15:08:34'),
(95, '', 59, 0, 1, 4, 1, '2015-05-19 18:28:04', '2015-05-19 18:28:04'),
(96, '', 68, 0, 1, 0, 1, '2015-05-19 18:28:17', '2015-05-19 18:28:17'),
(97, '', 68, 0, 1, 1, 1, '2015-05-19 18:28:44', '2016-11-23 16:52:47'),
(98, '', 68, 0, 1, 2, 1, '2015-05-19 18:29:08', '2016-11-23 16:54:26'),
(99, '', 61, 0, 1, 1, 1, '2015-05-19 18:29:32', '2015-05-19 18:29:32'),
(100, '', 68, 0, 1, 3, 1, '2015-05-19 18:29:32', '2016-11-23 16:53:21'),
(101, '', 69, 0, 1, 0, 1, '2015-05-19 18:29:55', '2015-05-19 18:29:55'),
(102, '', 61, 0, 1, 2, 1, '2015-05-19 18:30:10', '2015-05-19 18:30:10'),
(103, '', 69, 0, 1, 1, 1, '2015-05-19 18:30:20', '2015-05-19 18:30:20'),
(104, '', 69, 0, 1, 2, 1, '2015-05-19 18:30:43', '2015-05-19 18:30:43'),
(105, '', 69, 0, 1, 3, 1, '2015-05-19 18:31:04', '2015-05-19 18:31:04'),
(106, '', 61, 0, 1, 4, 1, '2015-05-19 18:33:07', '2015-05-19 18:33:07'),
(107, '', 25, 0, 1, 0, 1, '2015-05-19 18:33:36', '2015-05-19 18:33:36'),
(108, '', 62, 0, 1, 1, 1, '2015-05-19 18:33:52', '2015-05-19 18:33:52'),
(109, '', 107, 0, 1, 0, 1, '2015-05-19 18:34:14', '2015-05-19 18:34:14'),
(110, '', 62, 0, 1, 2, 1, '2015-05-19 18:34:28', '2015-05-19 18:34:28'),
(111, '', 107, 0, 1, 1, 1, '2015-05-19 18:34:40', '2015-05-19 18:34:40'),
(112, '', 107, 0, 1, 2, 1, '2015-05-19 18:35:06', '2015-05-19 18:35:06'),
(113, '', 62, 0, 1, 3, 1, '2015-05-19 18:35:13', '2015-05-19 18:35:13'),
(114, '', 107, 0, 1, 3, 1, '2015-05-19 18:35:27', '2015-05-19 18:35:27'),
(115, '', 62, 0, 1, 4, 1, '2015-05-19 18:36:14', '2015-05-19 18:36:14'),
(116, '', 64, 0, 1, 1, 0, '2015-05-19 18:37:06', '2016-11-21 21:29:20'),
(117, '', 64, 0, 1, 2, 0, '2015-05-19 18:37:56', '2016-11-21 21:28:40'),
(118, '', 64, 1, 1, 3, 0, '2015-05-19 18:38:29', '2016-11-21 21:29:09'),
(119, '', 64, 0, 1, 4, 0, '2015-05-19 18:39:01', '2016-11-21 21:28:53'),
(120, '', 57, 0, 1, 1, 1, '2015-05-19 18:40:58', '2015-05-19 18:40:58'),
(121, '', 120, 0, 1, 1, 1, '2015-05-19 18:41:47', '2015-05-19 18:41:47'),
(122, '', 29, 0, 1, 0, 1, '2015-05-19 18:42:02', '2016-11-23 22:47:08'),
(123, '', 120, 0, 1, 2, 1, '2015-05-19 18:42:22', '2015-05-19 18:42:22'),
(124, '', 29, 0, 1, 1, 1, '2015-05-19 18:43:04', '2016-11-23 22:46:22'),
(125, '', 120, 0, 1, 3, 1, '2015-05-19 18:43:15', '2015-05-19 18:43:15'),
(126, '', 29, 0, 1, 2, 1, '2015-05-19 18:43:29', '2016-11-23 22:46:45'),
(127, '', 120, 0, 1, 4, 1, '2015-05-19 18:43:53', '2015-05-19 18:43:53'),
(128, '', 29, 0, 1, 3, 1, '2015-05-19 18:43:55', '2016-11-23 22:45:56'),
(129, '', 57, 0, 1, 2, 1, '2015-05-19 18:44:29', '2015-05-19 18:44:29'),
(130, '', 28, 0, 1, 0, 1, '2015-05-19 18:44:34', '2016-11-23 22:52:51'),
(131, '', 129, 0, 1, 1, 1, '2015-05-19 18:45:04', '2015-05-19 18:45:04'),
(132, '', 28, 0, 1, 1, 1, '2015-05-19 18:45:10', '2016-11-23 23:15:02'),
(133, '', 28, 0, 1, 2, 1, '2015-05-19 18:45:33', '2016-11-23 23:13:06'),
(134, '', 129, 0, 1, 2, 1, '2015-05-19 18:45:38', '2015-05-19 18:45:38'),
(135, '', 28, 0, 1, 3, 1, '2015-05-19 18:45:53', '2016-11-23 22:53:27'),
(136, '', 129, 0, 1, 3, 1, '2015-05-19 18:46:10', '2015-05-19 18:46:10'),
(137, '', 30, 0, 1, 3, 1, '2015-05-19 18:46:21', '2016-11-24 19:34:46'),
(138, '', 30, 0, 1, 1, 1, '2015-05-19 18:46:46', '2016-11-23 22:49:14'),
(139, '', 129, 0, 1, 4, 1, '2015-05-19 18:46:48', '2015-05-19 18:46:48'),
(140, '', 30, 0, 1, 2, 1, '2015-05-19 18:47:18', '2016-11-23 22:50:10'),
(141, '', 57, 0, 1, 3, 1, '2015-05-19 18:47:34', '2015-05-19 18:47:34'),
(142, '', 30, 0, 1, 3, 1, '2015-05-19 18:47:50', '2016-11-23 22:50:39'),
(143, '', 141, 0, 1, 1, 1, '2015-05-19 18:48:09', '2015-05-19 18:48:09'),
(144, '', 31, 0, 1, 0, 1, '2015-05-19 18:48:14', '2016-11-23 23:17:29'),
(145, '', 31, 0, 1, 1, 1, '2015-05-19 18:48:38', '2016-11-23 23:18:55'),
(146, '', 141, 0, 1, 2, 1, '2015-05-19 18:48:41', '2015-05-19 18:48:41'),
(147, '', 31, 0, 1, 2, 1, '2015-05-19 18:49:04', '2016-11-23 23:17:56'),
(148, '', 141, 0, 1, 3, 1, '2015-05-19 18:49:14', '2015-05-19 18:49:14'),
(149, '', 31, 0, 1, 3, 1, '2015-05-19 18:49:27', '2016-11-23 23:18:26'),
(150, '', 141, 0, 1, 4, 1, '2015-05-19 18:49:47', '2015-05-19 18:49:47'),
(164, 'catalog/Tanvir/thumbnail/kids accesories.jpg', 17, 0, 1, 0, 1, '2016-11-24 23:31:34', '2016-11-24 23:43:59'),
(152, '', 57, 0, 1, 4, 1, '2015-05-19 18:50:26', '2015-05-19 18:50:26'),
(163, 'catalog/Tanvir/thumbnail/kids girl.jpg', 17, 0, 1, 0, 1, '2016-11-24 23:30:51', '2016-11-24 23:45:16'),
(162, 'catalog/Tanvir/thumbnail/kids boys.jpg', 17, 0, 1, 0, 1, '2016-11-24 23:30:30', '2016-11-24 23:44:55'),
(155, '', 152, 0, 1, 1, 1, '2015-05-19 18:50:58', '2015-05-19 18:50:58'),
(156, '', 152, 0, 1, 2, 1, '2015-05-19 18:51:32', '2015-05-19 18:51:32'),
(161, 'catalog/Tanvir/thumbnail/kids baby.jpg', 17, 0, 1, 0, 1, '2016-11-24 23:30:06', '2016-11-24 23:44:30'),
(158, '', 152, 0, 1, 3, 1, '2015-05-19 18:52:18', '2015-05-19 18:52:18'),
(159, '', 152, 0, 1, 4, 1, '2015-05-19 18:52:54', '2015-05-19 18:52:54');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(30, 1, 'Irons', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Irons', '', ''),
(29, 1, 'Headphones', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Headphones', '', ''),
(26, 1, 'Stylish Bag', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Stylish Bag', '', ''),
(17, 1, 'Kids', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kids', '', ''),
(25, 1, 'Electronics', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Electronics', '', ''),
(20, 1, 'Women', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Women', 'Example of category description', ''),
(35, 1, 'Clutch Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Clutch Handbags', '', ''),
(18, 1, 'Men', '&lt;p&gt;\r\n	Tanvir Store feature only the best mans deals on the market. .&lt;/p&gt;\r\n', 'Men', '', ''),
(164, 1, 'Accesories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accesories', '', ''),
(46, 1, 'Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Shoes', '', ''),
(57, 1, 'Furniture', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Furniture', '', ''),
(27, 1, 'Material Bag', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Material Bag', '', ''),
(59, 1, 'Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Shoes', '', ''),
(60, 1, 'Jwellery', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Jwellery', '', ''),
(61, 1, 'Jwellery', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Jwellery', '', ''),
(62, 1, 'Dresses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dresses', '', ''),
(63, 1, 'Pendants', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Pendants', '', ''),
(64, 1, 'Swimwear', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Swimwear', '', ''),
(45, 1, 'Dresses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dresses', '', ''),
(65, 1, 'Jackets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Jackets', '', ''),
(66, 1, 'Diaper Bags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Diaper Bags', '', ''),
(67, 1, 'Watches', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Watches', '', ''),
(68, 1, 'Sunglasses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sunglasses', '', ''),
(69, 1, 'Accesories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accesories', '', ''),
(70, 1, 'Sport Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sport Shoes', '', ''),
(71, 1, 'Bags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bags', '', ''),
(72, 1, 'Hobo handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Hobo handbags', '', ''),
(73, 1, 'Casual Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Casual Shoes', '', ''),
(74, 1, 'Beaded Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Beaded Handbags', '', ''),
(75, 1, 'Fabric Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fabric Handbags', '', ''),
(76, 1, 'Leather Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Leather Shoes', '', ''),
(77, 1, 'Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Handbags', '', ''),
(78, 1, 'Canvas Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Canvas Shoes', '', ''),
(79, 1, 'Leather Handbags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Leather Handbags', '', ''),
(80, 1, 'Casual Dresse', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Casual Dresse', '', ''),
(81, 1, 'T-Shirt', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Evening', '', ''),
(82, 1, 'Hoodies', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Designer', '', ''),
(83, 1, 'Flat Shoes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Flat Shoes', '', ''),
(84, 1, 'Suits', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Party', '', ''),
(85, 1, 'Coats', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Coats', '', ''),
(86, 1, 'Formal Jackets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Formal Jackets', '', ''),
(87, 1, 'Flat Sandals', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Flat Sandals', '', ''),
(88, 1, 'Leather Jackets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Leather Jackets', '', ''),
(89, 1, 'Blazers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Blazers', '', ''),
(90, 1, 'Armani Exchange', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fasttrack', '', ''),
(91, 1, 'Boots', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Boots', '', ''),
(92, 1, 'Casio', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Casio', '', ''),
(93, 1, 'Rolex', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Titan', '', ''),
(94, 1, 'Citizen', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Tommy-Hilfiger', '', ''),
(95, 1, 'Heels', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Heels', '', ''),
(96, 1, 'Ray Ban', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Ray Ban', '', ''),
(97, 1, 'Arnette', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fasttrack', '', ''),
(98, 1, 'Oakley', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Police', '', ''),
(99, 1, 'Bracelets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bracelets', '', ''),
(100, 1, 'Dolce &amp; Gabbana', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Oakley', '', ''),
(101, 1, 'Backpacks', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Backpacks', '', ''),
(102, 1, 'Necklaces &amp; Pendent', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Necklaces &amp; Pendent', '', ''),
(103, 1, 'Wallets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Wallets', '', ''),
(104, 1, 'Laptops Bags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Laptops Bags', '', ''),
(105, 1, 'Belts', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Belts', '', ''),
(106, 1, 'Pins &amp; Brooches', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Pins &amp; Brooches', '', ''),
(107, 1, 'Mobiles', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Mobiles', '', ''),
(108, 1, 'Casual Dresses', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Casual Dresses', '', ''),
(109, 1, 'Samsung', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Samsung', '', ''),
(110, 1, 'Evening', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Evening', '', ''),
(111, 1, 'Nokia', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nokia', '', ''),
(112, 1, 'IPhone', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'IPhone', '', ''),
(113, 1, 'Designer', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Designer', '', ''),
(114, 1, 'Sony', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sony', '', ''),
(115, 1, 'Party', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Party', '', ''),
(28, 1, 'Kettles', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kettles', '', ''),
(116, 1, 'Swimsuits', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Swimsuits', '', ''),
(117, 1, 'Beach Clothing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Beach Clothing', '', ''),
(118, 1, 'Clothing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Clothing', '', ''),
(119, 1, 'Bikinis', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bikinis', '', ''),
(31, 1, 'Hair styling', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Hair styling', '', ''),
(120, 1, 'Living Room', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Living Room', '', ''),
(121, 1, 'Racks &amp; Cabinets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Racks &amp; Cabinets', '', ''),
(122, 1, 'HMDX', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'HMDX', '', ''),
(123, 1, 'Sofas', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Sofas', '', ''),
(124, 1, 'KitSound', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'KitSound', '', ''),
(125, 1, 'Chairs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Chairs', '', ''),
(126, 1, 'Marley', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Marley', '', ''),
(127, 1, 'Tables', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Tables', '', ''),
(128, 1, 'Monster', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Monster', '', ''),
(129, 1, 'Dining &amp; Bar', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dining &amp; Bar', '', ''),
(130, 1, 'Morphy Richards', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Morphy Richards', '', ''),
(131, 1, 'Dining Table Sets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dining Table Sets', '', ''),
(132, 1, 'DeLonghi', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'DeLonghi', '', ''),
(133, 1, 'Russell Hobbs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Russell Hobbs', '', ''),
(134, 1, 'Serving Trolleys', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Serving Trolleys', '', ''),
(135, 1, 'Breville', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Breville', '', ''),
(136, 1, 'Bar Counters', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bar Counters', '', ''),
(137, 1, 'Iron morph', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Iron morph', '', ''),
(138, 1, 'Braun', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Braun', '', ''),
(139, 1, 'Dining Cabinets', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Dining Cabinets', '', ''),
(140, 1, 'Tefal', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Tefal', '', ''),
(141, 1, 'Bedroom', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bedroom', '', ''),
(142, 1, 'Bosch', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bosch', '', ''),
(143, 1, 'Beds', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Beds', '', ''),
(144, 1, 'Glamoriser', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Glamoriser', '', ''),
(145, 1, 'Tresemme', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Tresemme', '', ''),
(146, 1, 'Chest of Drawers', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Chest of Drawers', '', ''),
(147, 1, 'BaByliss', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'BaByliss', '', ''),
(148, 1, 'Wardrobes &amp; Almirahs', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Wardrobes &amp; Almirahs', '', ''),
(149, 1, 'Remington', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Remington', '', ''),
(150, 1, 'Nightstands', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Nightstands', '', ''),
(163, 1, 'Girls', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Girls', '', ''),
(152, 1, 'Kitchen', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kitchen', '', ''),
(162, 1, 'Boys', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Boys', '', ''),
(161, 1, 'Baby', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Baby', '', ''),
(155, 1, 'Kitchen Racks', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kitchen Racks', '', ''),
(156, 1, 'Kitchen Fillings', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Kitchen Fillings', '', ''),
(158, 1, 'Wall Units', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Wall Units', '', ''),
(159, 1, 'Benches &amp; Stools', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Benches &amp; Stools', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 28, 1),
(28, 25, 0),
(35, 35, 2),
(35, 20, 0),
(35, 26, 1),
(29, 29, 1),
(29, 25, 0),
(30, 30, 1),
(30, 25, 0),
(31, 31, 1),
(31, 25, 0),
(20, 20, 0),
(27, 27, 1),
(27, 20, 0),
(26, 26, 1),
(26, 20, 0),
(18, 18, 0),
(45, 45, 1),
(45, 18, 0),
(46, 46, 1),
(46, 18, 0),
(17, 17, 0),
(57, 57, 0),
(59, 20, 0),
(60, 60, 0),
(61, 20, 0),
(61, 61, 1),
(62, 20, 0),
(59, 59, 1),
(62, 62, 1),
(63, 63, 2),
(63, 61, 1),
(63, 20, 0),
(64, 64, 1),
(64, 20, 0),
(65, 65, 1),
(65, 18, 0),
(66, 66, 2),
(66, 26, 1),
(66, 20, 0),
(67, 67, 1),
(67, 18, 0),
(68, 68, 1),
(68, 18, 0),
(69, 69, 1),
(69, 18, 0),
(70, 70, 2),
(70, 46, 1),
(70, 18, 0),
(71, 71, 2),
(71, 26, 1),
(71, 20, 0),
(72, 72, 2),
(72, 26, 1),
(72, 20, 0),
(73, 73, 2),
(73, 46, 1),
(73, 18, 0),
(74, 74, 2),
(74, 20, 0),
(74, 27, 1),
(75, 75, 2),
(75, 20, 0),
(75, 27, 1),
(76, 76, 2),
(76, 46, 1),
(76, 18, 0),
(77, 77, 2),
(77, 20, 0),
(77, 27, 1),
(78, 78, 2),
(78, 46, 1),
(78, 18, 0),
(79, 79, 2),
(79, 27, 1),
(79, 20, 0),
(80, 80, 2),
(80, 45, 1),
(80, 18, 0),
(81, 81, 2),
(81, 18, 0),
(81, 45, 1),
(82, 82, 2),
(82, 18, 0),
(82, 45, 1),
(83, 83, 2),
(83, 59, 1),
(83, 20, 0),
(84, 84, 2),
(84, 18, 0),
(84, 45, 1),
(85, 85, 2),
(85, 65, 1),
(85, 18, 0),
(86, 86, 2),
(86, 65, 1),
(86, 18, 0),
(87, 87, 2),
(87, 59, 1),
(87, 20, 0),
(88, 88, 2),
(88, 65, 1),
(88, 18, 0),
(89, 89, 2),
(89, 65, 1),
(89, 18, 0),
(90, 90, 2),
(90, 18, 0),
(90, 67, 1),
(91, 91, 2),
(91, 59, 1),
(91, 20, 0),
(92, 92, 2),
(92, 67, 1),
(92, 18, 0),
(93, 93, 2),
(93, 18, 0),
(93, 67, 1),
(94, 94, 2),
(94, 18, 0),
(94, 67, 1),
(95, 95, 2),
(95, 59, 1),
(95, 20, 0),
(96, 96, 2),
(96, 68, 1),
(96, 18, 0),
(97, 97, 2),
(97, 18, 0),
(97, 68, 1),
(98, 98, 2),
(98, 18, 0),
(98, 68, 1),
(99, 99, 2),
(99, 61, 1),
(99, 20, 0),
(100, 100, 2),
(100, 18, 0),
(100, 68, 1),
(101, 101, 2),
(101, 69, 1),
(101, 18, 0),
(102, 102, 2),
(102, 61, 1),
(102, 20, 0),
(103, 103, 2),
(103, 69, 1),
(103, 18, 0),
(104, 104, 2),
(104, 69, 1),
(104, 18, 0),
(105, 105, 2),
(105, 69, 1),
(105, 18, 0),
(106, 106, 2),
(106, 61, 1),
(106, 20, 0),
(107, 107, 1),
(107, 25, 0),
(108, 108, 2),
(108, 62, 1),
(108, 20, 0),
(109, 109, 2),
(109, 107, 1),
(109, 25, 0),
(110, 110, 2),
(110, 62, 1),
(110, 20, 0),
(111, 111, 2),
(111, 107, 1),
(111, 25, 0),
(112, 112, 2),
(112, 107, 1),
(112, 25, 0),
(113, 113, 2),
(113, 62, 1),
(113, 20, 0),
(114, 114, 2),
(114, 107, 1),
(114, 25, 0),
(115, 115, 2),
(115, 62, 1),
(115, 20, 0),
(116, 116, 2),
(116, 20, 0),
(116, 64, 1),
(117, 117, 2),
(117, 20, 0),
(117, 64, 1),
(118, 118, 2),
(118, 20, 0),
(118, 64, 1),
(119, 119, 2),
(119, 20, 0),
(119, 64, 1),
(120, 120, 1),
(120, 57, 0),
(121, 121, 2),
(121, 120, 1),
(121, 57, 0),
(122, 122, 2),
(122, 25, 0),
(122, 29, 1),
(123, 123, 2),
(123, 120, 1),
(123, 57, 0),
(124, 124, 2),
(124, 25, 0),
(124, 29, 1),
(125, 125, 2),
(125, 120, 1),
(125, 57, 0),
(126, 126, 2),
(126, 25, 0),
(126, 29, 1),
(127, 127, 2),
(127, 120, 1),
(127, 57, 0),
(128, 128, 2),
(128, 25, 0),
(128, 29, 1),
(129, 129, 1),
(129, 57, 0),
(130, 130, 2),
(130, 25, 0),
(130, 28, 1),
(131, 131, 2),
(131, 129, 1),
(131, 57, 0),
(132, 132, 2),
(132, 25, 0),
(132, 28, 1),
(133, 133, 2),
(133, 25, 0),
(133, 28, 1),
(134, 134, 2),
(134, 129, 1),
(134, 57, 0),
(135, 135, 2),
(135, 25, 0),
(135, 28, 1),
(136, 136, 2),
(136, 129, 1),
(136, 57, 0),
(137, 137, 2),
(137, 25, 0),
(137, 30, 1),
(138, 138, 2),
(138, 25, 0),
(138, 30, 1),
(139, 139, 2),
(139, 129, 1),
(139, 57, 0),
(140, 140, 2),
(140, 25, 0),
(140, 30, 1),
(141, 141, 1),
(141, 57, 0),
(142, 142, 2),
(142, 25, 0),
(142, 30, 1),
(143, 143, 2),
(143, 141, 1),
(143, 57, 0),
(144, 144, 2),
(144, 25, 0),
(144, 31, 1),
(145, 145, 2),
(145, 25, 0),
(145, 31, 1),
(146, 146, 2),
(146, 141, 1),
(146, 57, 0),
(147, 147, 2),
(147, 25, 0),
(147, 31, 1),
(148, 148, 2),
(148, 141, 1),
(148, 57, 0),
(149, 149, 2),
(149, 25, 0),
(149, 31, 1),
(150, 150, 2),
(150, 141, 1),
(150, 57, 0),
(152, 152, 1),
(152, 57, 0),
(164, 17, 0),
(164, 164, 1),
(162, 162, 1),
(163, 17, 0),
(163, 163, 1),
(155, 155, 2),
(155, 152, 1),
(155, 57, 0),
(156, 156, 2),
(156, 152, 1),
(156, 57, 0),
(161, 17, 0),
(161, 161, 1),
(162, 17, 0),
(158, 158, 2),
(158, 152, 1),
(158, 57, 0),
(159, 159, 2),
(159, 152, 1),
(159, 57, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(20, 0, 0),
(27, 0, 0),
(26, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(18, 0, 0),
(64, 0, 0),
(46, 0, 0),
(45, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(25, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(110, 0, 0),
(111, 0, 0),
(112, 0, 0),
(113, 0, 0),
(114, 0, 0),
(29, 0, 0),
(115, 0, 0),
(28, 0, 0),
(116, 0, 0),
(30, 0, 0),
(117, 0, 0),
(118, 0, 0),
(119, 0, 0),
(31, 0, 0),
(161, 0, 0),
(57, 0, 0),
(120, 0, 0),
(121, 0, 0),
(122, 0, 0),
(123, 0, 0),
(124, 0, 0),
(125, 0, 0),
(126, 0, 0),
(127, 0, 0),
(128, 0, 0),
(129, 0, 0),
(130, 0, 0),
(131, 0, 0),
(132, 0, 0),
(133, 0, 0),
(134, 0, 0),
(135, 0, 0),
(136, 0, 0),
(137, 0, 0),
(138, 0, 0),
(139, 0, 0),
(140, 0, 0),
(141, 0, 0),
(142, 0, 0),
(143, 0, 0),
(144, 0, 0),
(145, 0, 0),
(146, 0, 0),
(147, 0, 0),
(148, 0, 0),
(149, 0, 0),
(150, 0, 0),
(152, 0, 0),
(164, 0, 0),
(163, 0, 0),
(155, 0, 0),
(156, 0, 0),
(162, 0, 0),
(158, 0, 0),
(159, 0, 0),
(17, 0, 0),
(35, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(35, 0),
(45, 0),
(46, 0),
(57, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0),
(146, 0),
(147, 0),
(148, 0),
(149, 0),
(150, 0),
(152, 0),
(155, 0),
(156, 0),
(158, 0),
(159, 0),
(161, 0),
(162, 0),
(163, 0),
(164, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18'),
(7, 'Magic Bags', '111', 'P', '15.0000', 0, 0, '0.0000', '2016-11-21', '2017-01-12', 1, '1', 1, '2016-11-21 23:39:56'),
(8, 'dresses', '1122', 'P', '16.0000', 0, 0, '0.0000', '2016-11-24', '2016-12-24', 1, '1', 1, '2016-11-24 16:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon_category`
--

INSERT INTO `oc_coupon_category` (`coupon_id`, `category_id`) VALUES
(7, 26),
(7, 35),
(7, 71),
(7, 72);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon_history`
--

INSERT INTO `oc_coupon_history` (`coupon_history_id`, `coupon_id`, `order_id`, `customer_id`, `amount`, `date_added`) VALUES
(1, 8, 3, 2, '-14.0800', '2016-11-24 16:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon_product`
--

INSERT INTO `oc_coupon_product` (`coupon_product_id`, `coupon_id`, `product_id`) VALUES
(18, 7, 54),
(17, 7, 53),
(16, 7, 55),
(15, 7, 51),
(14, 7, 50),
(13, 7, 52),
(19, 7, 60),
(20, 7, 61),
(21, 8, 99),
(22, 8, 97),
(23, 8, 87);

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 1.00000000, 1, '2016-11-24 18:31:32'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2016-11-25 05:56:05'),
(3, 'Euro', 'EUR', '€', '', '2', 0.94679999, 1, '2016-11-24 18:47:01'),
(4, 'Bangladeshi Taka', 'BDT', '৳', '', '', 79.18000031, 1, '2016-11-24 18:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
(1, 1, 0, 'test', 'test', 'test@gmail.com', '768768768', '', '4983ac6e3a80b664150df87a0c20f30e0d870ad1', '94510a1b2', 'a:4:{s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ5O30=";i:1;s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjI5O30=";i:1;s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=";i:1;s:84:"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O3M6Njoib3B0aW9uIjthOjE6e2k6MjI0O3M6MjoiMTMiO319";i:1;}', '', 0, 1, '', '192.168.3.38', 1, 1, 0, '', '2015-06-23 16:58:50'),
(2, 1, 0, 'Tanvir', 'Ahmed', 't_tanvir007@outlook.com', '01234567890', '', '605b74284a03bdd404a6e249c3793d4632e55b7e', '4be9a6015', 'a:0:{}', '', 0, 2, '', '::1', 1, 1, 0, '', '2016-11-24 16:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'register', 'a:2:{s:11:"customer_id";i:1;s:4:"name";s:9:"test test";}', '192.168.3.38', '2015-06-23 16:58:51'),
(2, 1, 'order_account', 'a:3:{s:11:"customer_id";s:1:"1";s:4:"name";s:9:"test test";s:8:"order_id";i:1;}', '192.168.3.38', '2015-06-23 16:58:59'),
(3, 1, 'order_account', 'a:3:{s:11:"customer_id";s:1:"1";s:4:"name";s:9:"test test";s:8:"order_id";i:2;}', '192.168.3.38', '2015-06-23 17:22:25'),
(4, 2, 'register', 'a:2:{s:11:"customer_id";i:2;s:4:"name";s:12:"Tanvir Ahmed";}', '::1', '2016-11-24 16:13:46'),
(5, 2, 'order_account', 'a:3:{s:11:"customer_id";s:1:"2";s:4:"name";s:12:"Tanvir Ahmed";s:8:"order_id";i:3;}', '::1', '2016-11-24 16:18:55'),
(6, 2, 'order_account', 'a:3:{s:11:"customer_id";s:1:"2";s:4:"name";s:12:"Tanvir Ahmed";s:8:"order_id";i:4;}', '::1', '2016-11-24 16:22:26'),
(7, 2, 'order_account', 'a:3:{s:11:"customer_id";s:1:"2";s:4:"name";s:12:"Tanvir Ahmed";s:8:"order_id";i:5;}', '::1', '2016-11-24 16:25:49'),
(8, 2, 'order_account', 'a:3:{s:11:"customer_id";s:1:"2";s:4:"name";s:12:"Tanvir Ahmed";s:8:"order_id";i:6;}', '::1', '2016-11-24 16:27:27'),
(9, 2, 'order_account', 'a:3:{s:11:"customer_id";s:1:"2";s:4:"name";s:12:"Tanvir Ahmed";s:8:"order_id";i:7;}', '::1', '2016-11-24 16:37:40'),
(10, 2, 'order_account', 'a:3:{s:11:"customer_id";s:1:"2";s:4:"name";s:12:"Tanvir Ahmed";s:8:"order_id";i:8;}', '::1', '2016-11-24 16:39:20'),
(11, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:12:"Tanvir Ahmed";}', '::1', '2016-11-25 10:50:19'),
(12, 2, 'order_account', 'a:3:{s:11:"customer_id";s:1:"2";s:4:"name";s:12:"Tanvir Ahmed";s:8:"order_id";i:9;}', '::1', '2016-11-25 10:50:50'),
(13, 2, 'order_account', 'a:3:{s:11:"customer_id";s:1:"2";s:4:"name";s:12:"Tanvir Ahmed";s:8:"order_id";i:10;}', '::1', '2016-11-25 10:51:57'),
(14, 2, 'order_account', 'a:3:{s:11:"customer_id";s:1:"2";s:4:"name";s:12:"Tanvir Ahmed";s:8:"order_id";i:11;}', '::1', '2016-11-25 10:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ban_ip`
--

CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '192.168.3.38', '2015-06-23 16:58:51'),
(2, 2, '::1', '2016-11-24 16:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(419, 'module', 'slideshow'),
(428, 'module', 'custom_subcategory_thumbnail'),
(429, 'module', 'custom_menu_content'),
(430, 'module', 'magikmicra'),
(431, 'module', 'magikslider'),
(432, 'module', 'category_product_slider'),
(433, 'module', 'bestseller'),
(434, 'module', 'html'),
(435, 'module', 'latest'),
(436, 'payment', 'SSLCommerce'),
(437, 'module', 'information');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 1, 5, 1),
(8, 1, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', ''),
(7, 1, 'Our Stores', 'Our Stores', 'Our Stores', '', ''),
(8, 1, 'Suppliers', 'Suppliers', 'Suppliers', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(7, 0, 0),
(8, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'affiliate', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(74, 1, 'magikslider.31', 'content_top', 1),
(75, 1, 'html.36', 'content_top', 2),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2),
(76, 1, 'bestseller.33', 'content_top', 3),
(77, 1, 'featured.34', 'content_top', 4),
(78, 1, 'html.35', 'content_top', 5),
(79, 1, 'category_product_slider.32', 'content_top', 6),
(80, 1, 'latest.38', 'content_top', 7),
(81, 1, 'html.37', 'content_top', 8),
(82, 1, 'carousel.29', 'content_bottom', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(54, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0),
(11, 'Samsung', 'catalog/Tanvir/samsung-logo.jpeg', 0),
(12, 'Nokia', 'catalog/Tanvir/nokia_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Banner - Category', 'banner', 'a:5:{s:4:"name";s:17:"Banner - Category";s:9:"banner_id";s:1:"6";s:5:"width";s:3:"270";s:6:"height";s:3:"450";s:6:"status";s:1:"1";}'),
(29, 'Carousel - Home Page', 'carousel', 'a:5:{s:4:"name";s:20:"Carousel - Home Page";s:9:"banner_id";s:1:"8";s:5:"width";s:3:"130";s:6:"height";s:2:"50";s:6:"status";s:1:"1";}'),
(31, 'magikslider', 'magikslider', 'a:5:{s:4:"name";s:11:"magikslider";s:5:"width";s:4:"1920";s:6:"height";s:3:"680";s:6:"status";s:1:"1";s:17:"magikslider_image";a:6:{i:0;a:4:{s:23:"magikslider_image_title";a:1:{i:1;a:1:{s:5:"title";s:0:"";}}s:4:"link";s:0:"";s:5:"image";s:36:"catalog/Tanvir/slider/different1.jpg";s:29:"magikslider_image_description";a:1:{i:1;a:1:{s:11:"description";s:0:"";}}}i:1;a:4:{s:23:"magikslider_image_title";a:1:{i:1;a:1:{s:5:"title";s:0:"";}}s:4:"link";s:0:"";s:5:"image";s:39:"catalog/Tanvir/slider/maxresdefault.jpg";s:29:"magikslider_image_description";a:1:{i:1;a:1:{s:11:"description";s:0:"";}}}i:2;a:4:{s:23:"magikslider_image_title";a:1:{i:1;a:1:{s:5:"title";s:0:"";}}s:4:"link";s:0:"";s:5:"image";s:39:"catalog/Tanvir/slider/women dresses.jpg";s:29:"magikslider_image_description";a:1:{i:1;a:1:{s:11:"description";s:0:"";}}}i:4;a:4:{s:23:"magikslider_image_title";a:1:{i:1;a:1:{s:5:"title";s:0:"";}}s:4:"link";s:0:"";s:5:"image";s:43:"catalog/Tanvir/slider/slider-furniture1.jpg";s:29:"magikslider_image_description";a:1:{i:1;a:1:{s:11:"description";s:0:"";}}}i:5;a:4:{s:23:"magikslider_image_title";a:1:{i:1;a:1:{s:5:"title";s:0:"";}}s:4:"link";s:0:"";s:5:"image";s:39:"catalog/Tanvir/slider/slider-watch1.jpg";s:29:"magikslider_image_description";a:1:{i:1;a:1:{s:11:"description";s:0:"";}}}i:6;a:4:{s:23:"magikslider_image_title";a:1:{i:1;a:1:{s:5:"title";s:0:"";}}s:4:"link";s:0:"";s:5:"image";s:39:"catalog/Tanvir/slider/slider-phone1.jpg";s:29:"magikslider_image_description";a:1:{i:1;a:1:{s:11:"description";s:0:"";}}}}}'),
(32, 'category-product-slider', 'category_product_slider', 'a:6:{s:4:"name";s:23:"category-product-slider";s:5:"limit";s:2:"10";s:5:"width";s:3:"700";s:6:"height";s:3:"850";s:13:"category_name";s:2:"59";s:6:"status";s:1:"1";}'),
(33, 'bestseller-product', 'bestseller', 'a:5:{s:4:"name";s:18:"bestseller-product";s:5:"limit";s:2:"30";s:5:"width";s:3:"700";s:6:"height";s:3:"850";s:6:"status";s:1:"1";}'),
(34, 'Featured -product', 'featured', 'a:6:{s:4:"name";s:17:"Featured -product";s:7:"product";a:7:{i:0;s:2:"87";i:1;s:2:"90";i:2;s:2:"91";i:3;s:2:"93";i:4;s:2:"99";i:5;s:2:"97";i:6;s:2:"98";}s:5:"limit";s:2:"35";s:5:"width";s:3:"700";s:6:"height";s:3:"850";s:6:"status";s:1:"1";}'),
(35, 'middle-offer-banner-section', 'html', 'a:3:{s:4:"name";s:27:"middle-offer-banner-section";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:0:"";s:11:"description";s:1973:"&lt;div class=&quot;offer-banner-section&quot;&gt;\r\n  &lt;div class=&quot;container&quot;&gt;\r\n    &lt;div class=&quot;row&quot;&gt;\r\n      &lt;div class=&quot;offer-inner col-lg-12&quot;&gt; \r\n        &lt;!--newsletter-wrap--&gt;\r\n        &lt;div class=&quot;left wow bounceInLeft animated&quot;&gt;\r\n          &lt;div class=&quot;col&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;catalog/view/theme/micra/image/middle-offer-banner1.jpg&quot; alt=&quot;offer banner1&quot;&gt;&lt;/a&gt;&lt;/div&gt;\r\n\r\n          &lt;div class=&quot;col mid&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;catalog/view/theme/micra/image/middle-offer-banner2.jpg&quot; alt=&quot;offer banner2&quot;&gt;&lt;/a&gt;&lt;/div&gt;\r\n\r\n          &lt;div class=&quot;col last&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;catalog/view/theme/micra/image/middle-offer-banner3.jpg&quot; alt=&quot;offer banner3&quot;&gt;&lt;/a&gt;&lt;/div&gt;\r\n\r\n        &lt;/div&gt;\r\n\r\n        &lt;div class=&quot;right wow bounceInRight animated&quot;&gt;\r\n          &lt;div class=&quot;col&quot;&gt;\r\n            &lt;div class=&quot;add-slider&quot;&gt;\r\n              &lt;ul id=&quot;add-slideshow&quot;&gt;\r\n\r\n                &lt;li&gt; &lt;a href=&quot;#&quot; title=&quot;&quot;&gt;&lt;img src=&quot;catalog/view/theme/micra/image/middle-offer-banner4.jpg&quot; alt=&quot;&quot;&gt;&lt;/a&gt; &lt;/li&gt;\r\n\r\n                &lt;li&gt; &lt;a href=&quot;#&quot; title=&quot;&quot;&gt;&lt;img src=&quot;catalog/view/theme/micra/image/middle-offer-banner5.jpg&quot; alt=&quot;&quot;&gt;&lt;/a&gt; &lt;/li&gt;\r\n\r\n                &lt;li&gt; &lt;a href=&quot;#/&quot; title=&quot;&quot;&gt;&lt;img src=&quot;catalog/view/theme/micra/image/middle-offer-banner6.jpg&quot; alt=&quot;&quot;&gt;&lt;/a&gt; &lt;/li&gt;\r\n\r\n              &lt;/ul&gt;\r\n\r\n            &lt;/div&gt;\r\n\r\n          &lt;/div&gt;\r\n\r\n        &lt;/div&gt;\r\n\r\n      &lt;/div&gt;\r\n\r\n    &lt;/div&gt;\r\n\r\n  &lt;/div&gt;\r\n\r\n&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(36, 'offer-banner-section', 'html', 'a:3:{s:4:"name";s:20:"offer-banner-section";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:0:"";s:11:"description";s:1279:"&lt;div class=&quot;offer-banner-section&quot;&gt;\r\n  &lt;div class=&quot;container&quot;&gt;\r\n    &lt;div class=&quot;row&quot;&gt;\r\n      &lt;div class=&quot;col over-effect col-lg-4 col-xs-12 col-sm-4 wow bounceInUp animated&quot;&gt;&lt;img src=&quot;catalog/view/theme/micra/image/offer-banner1.png&quot; alt=&quot;offer banner1&quot;&gt;\r\n        &lt;div class=&quot;mask&quot;&gt; &lt;a href=&quot;#&quot; class=&quot;info&quot;&gt;Read More&lt;/a&gt; &lt;/div&gt;\r\n\r\n      &lt;/div&gt;\r\n\r\n      &lt;div class=&quot;col over-effect col-lg-4 col-xs-12 col-sm-4 wow bounceInLeft animated&quot;&gt;&lt;img src=&quot;catalog/view/theme/micra/image/offer-banner2.png&quot; alt=&quot;offer banner2&quot;&gt;\r\n        &lt;div class=&quot;mask&quot;&gt; &lt;a href=&quot;#&quot; class=&quot;info&quot;&gt;Read More&lt;/a&gt; &lt;/div&gt;\r\n\r\n      &lt;/div&gt;\r\n\r\n      &lt;div class=&quot;col over-effect col-lg-4 col-xs-12 col-sm-4 wow bounceInRight animatedt&quot;&gt;&lt;img src=&quot;catalog/view/theme/micra/image/offer-banner3.png&quot; alt=&quot;offer banner3&quot;&gt;\r\n        &lt;div class=&quot;mask&quot;&gt; &lt;a href=&quot;#&quot; class=&quot;info&quot;&gt;Read More&lt;/a&gt; &lt;/div&gt;\r\n\r\n      &lt;/div&gt;\r\n\r\n    &lt;/div&gt;\r\n\r\n  &lt;/div&gt;\r\n\r\n&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(37, 'promo-banner-section', 'html', 'a:3:{s:4:"name";s:20:"promo-banner-section";s:18:"module_description";a:1:{i:1;a:2:{s:5:"title";s:0:"";s:11:"description";s:501:"&lt;div class=&quot;promo-banner-section container wow bounceInDown animated&quot;&gt;\r\n  &lt;div class=&quot;row&quot;&gt;\r\n    &lt;div class=&quot;col-lg-6 col-sm-6&quot;&gt;&lt;img alt=&quot;promo-banner1&quot; src=&quot;catalog/view/theme/micra/image/promo-banner1.png&quot;&gt;&lt;/div&gt;\r\n\r\n    &lt;div class=&quot;col-lg-6 col-sm-6&quot;&gt;&lt;img alt=&quot;promo-banner2&quot; src=&quot;catalog/view/theme/micra/image/promo-banner2.png&quot;&gt;&lt;/div&gt;\r\n\r\n  &lt;/div&gt;\r\n\r\n&lt;/div&gt;";}}s:6:"status";s:1:"1";}'),
(38, 'latest-products', 'latest', 'a:5:{s:4:"name";s:15:"latest-products";s:5:"limit";s:2:"10";s:5:"width";s:3:"700";s:6:"height";s:3:"850";s:6:"status";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2013-00', 0, 'Your Store', 'http://192.168.3.38/micra_2031/', 1, 1, 'test', 'test', 'test@gmail.com', '768768768', '', 'b:0;', 'test', 'test', '', 'test', '', 'test', '45435', 'United Kingdom', 222, 'Carmarthenshire', 3527, '', 'b:0;', 'Cash On Delivery', 'cod', 'test', 'test', '', 'test', '', 'test', '45435', 'United Kingdom', 222, 'Carmarthenshire', 3527, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '1533.9880', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.3.38', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', 'en-US,en;q=0.5', '2015-06-23 16:58:57', '2015-06-23 16:58:59'),
(2, 0, 'INV-2013-00', 0, 'Your Store', 'http://192.168.3.38/micra_2031/', 1, 1, 'test', 'test', 'test@gmail.com', '768768768', '', 'b:0;', 'test', 'test', '', 'test', '', 'test', '45435', 'United Kingdom', 222, 'Carmarthenshire', 3527, '', 'b:0;', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', 'a:0:{}', '', '', '', '602.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '192.168.3.38', '', 'Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Firefox/31.0', 'en-US,en;q=0.5', '2015-06-23 17:22:22', '2015-06-23 17:22:25'),
(3, 0, 'INV-2013-00', 0, 'Tanvir Shop', 'http://localhost/Cms-Oc/micra/', 2, 1, 'Tanvir', 'Ahmed', 't_tanvir007@outlook.com', '01234567890', '', 'b:0;', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Pay with Credit Card / Debit Card / bKash / DDBL Nexsus Card', 'SSLCommerce', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '78.9200', 5, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393', 'en-US,bn-BD;q=0.8,bn;q=0.6,en-GB;q=0.4,en;q=0.2', '2016-11-24 16:18:20', '2016-11-24 16:20:23'),
(4, 0, 'INV-2013-00', 0, 'Tanvir Shop', 'http://localhost/Cms-Oc/micra/', 2, 1, 'Tanvir', 'Ahmed', 't_tanvir007@outlook.com', '01234567890', '', 'b:0;', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Pay with Credit Card / Debit Card / bKash / DDBL Nexsus Card', 'SSLCommerce', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '185.0000', 5, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393', 'en-US,bn-BD;q=0.8,bn;q=0.6,en-GB;q=0.4,en;q=0.2', '2016-11-24 16:21:59', '2016-11-24 16:29:39'),
(5, 0, 'INV-2013-00', 0, 'Tanvir Shop', 'http://localhost/Cms-Oc/micra/', 2, 1, 'Tanvir', 'Ahmed', 't_tanvir007@outlook.com', '01234567890', '', 'b:0;', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Pay with Credit Card / Debit Card / bKash / DDBL Nexsus Card', 'SSLCommerce', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '2005.0000', 5, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393', 'en-US,bn-BD;q=0.8,bn;q=0.6,en-GB;q=0.4,en;q=0.2', '2016-11-24 16:25:33', '2016-11-24 16:29:14'),
(6, 0, 'INV-2013-00', 0, 'Tanvir Shop', 'http://localhost/Cms-Oc/micra/', 2, 1, 'Tanvir', 'Ahmed', 't_tanvir007@outlook.com', '01234567890', '', 'b:0;', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Pay with Credit Card / Debit Card / bKash / DDBL Nexsus Card', 'SSLCommerce', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '65.0000', 15, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393', 'en-US,bn-BD;q=0.8,bn;q=0.6,en-GB;q=0.4,en;q=0.2', '2016-11-24 16:27:13', '2016-11-24 16:28:40'),
(7, 0, 'INV-2013-00', 0, 'Tanvir Shop', 'http://localhost/Cms-Oc/micra/', 2, 1, 'Tanvir', 'Ahmed', 't_tanvir007@outlook.com', '01234567890', '', 'b:0;', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Pay with Credit Card / Debit Card / bKash / DDBL Nexsus Card', 'SSLCommerce', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '50.0000', 5, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393', 'en-US,bn-BD;q=0.8,bn;q=0.6,en-GB;q=0.4,en;q=0.2', '2016-11-24 16:37:25', '2016-11-24 16:41:10'),
(8, 0, 'INV-2013-00', 0, 'Tanvir Shop', 'http://localhost/Cms-Oc/micra/', 2, 1, 'Tanvir', 'Ahmed', 't_tanvir007@outlook.com', '01234567890', '', 'b:0;', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Pay with Credit Card / Debit Card / bKash / DDBL Nexsus Card', 'SSLCommerce', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '50.0000', 5, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393', 'en-US,bn-BD;q=0.8,bn;q=0.6,en-GB;q=0.4,en;q=0.2', '2016-11-24 16:39:04', '2016-11-24 16:40:46'),
(9, 0, 'INV-2013-00', 0, 'Tanvir Shop', 'http://localhost/Cms-Oc/micra/', 2, 1, 'Tanvir', 'Ahmed', 't_tanvir007@outlook.com', '01234567890', '', 'b:0;', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Pay with Credit Card / Debit Card / bKash / DDBL Nexsus Card', 'SSLCommerce', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '18.5000', 5, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393', 'en-US,bn-BD;q=0.8,bn;q=0.6,en-GB;q=0.4,en;q=0.2', '2016-11-25 10:50:33', '2016-11-25 10:53:01'),
(10, 0, 'INV-2013-00', 0, 'Tanvir Shop', 'http://localhost/Cms-Oc/micra/', 2, 1, 'Tanvir', 'Ahmed', 't_tanvir007@outlook.com', '01234567890', '', 'b:0;', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Pay with Credit Card / Debit Card / bKash / DDBL Nexsus Card', 'SSLCommerce', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '75.0000', 5, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393', 'en-US,bn-BD;q=0.8,bn;q=0.6,en-GB;q=0.4,en;q=0.2', '2016-11-25 10:51:43', '2016-11-25 10:52:40'),
(11, 0, 'INV-2013-00', 0, 'Tanvir Shop', 'http://localhost/Cms-Oc/micra/', 2, 1, 'Tanvir', 'Ahmed', 't_tanvir007@outlook.com', '01234567890', '', 'b:0;', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Pay with Credit Card / Debit Card / bKash / DDBL Nexsus Card', 'SSLCommerce', 'Tanvir', 'Ahmed', '', 'Adabar,Shyamoli', '', 'Dhaka', '1207', 'Bangladesh', 18, 'Dhaka', 322, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '330.0000', 5, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393', 'en-US,bn-BD;q=0.8,bn;q=0.6,en-GB;q=0.4,en;q=0.2', '2016-11-25 10:54:44', '2016-11-25 10:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2015-06-23 16:58:59'),
(2, 2, 1, 0, '', '2015-06-23 17:22:25'),
(3, 3, 1, 0, '', '2016-11-24 16:18:50'),
(4, 3, 2, 0, 'Payment Status = success\nBank txnid = 1611241618090MZOae8a8OJY97K\nYour Oder id = 3\nPayment Date = 2016-11-24 16:17:56\nCard Number = \nCard Type = -VISA-Dutch Bangla\nTransaction Risk Level = 0\nTransaction Risk Description = Safe\n', '2016-11-24 16:18:51'),
(5, 3, 5, 1, 'tnx', '2016-11-24 16:20:10'),
(6, 3, 5, 1, 'tnx a lot', '2016-11-24 16:20:23'),
(7, 4, 1, 0, '', '2016-11-24 16:22:22'),
(8, 4, 2, 0, 'Payment Status = success\nBank txnid = 161124162140CNxI12GoCJQYVV4\nYour Oder id = 4\nPayment Date = 2016-11-24 16:21:33\nCard Number = \nCard Type = -VISA-Dutch Bangla\nTransaction Risk Level = 0\nTransaction Risk Description = Safe\n', '2016-11-24 16:22:23'),
(9, 5, 1, 0, '', '2016-11-24 16:25:44'),
(10, 5, 2, 0, 'Payment Status = success\nBank txnid = 1611241625040xlBDRnNhlhTBNB\nYour Oder id = 5\nPayment Date = 2016-11-24 16:24:58\nCard Number = \nCard Type = -VISA-Dutch Bangla\nTransaction Risk Level = 0\nTransaction Risk Description = Safe\n', '2016-11-24 16:25:45'),
(11, 6, 1, 0, '', '2016-11-24 16:27:22'),
(12, 6, 2, 0, 'Payment Status = success\nBank txnid = 161124162641VM0drFFWj3czxz0\nYour Oder id = 6\nPayment Date = 2016-11-24 16:26:37\nCard Number = \nCard Type = -VISA-Dutch Bangla\nTransaction Risk Level = 0\nTransaction Risk Description = Safe\n', '2016-11-24 16:27:23'),
(13, 6, 15, 1, 'Thanks for buying here.', '2016-11-24 16:28:40'),
(14, 5, 5, 1, 'Thanks for buying here.', '2016-11-24 16:29:14'),
(15, 4, 5, 1, 'Thanks for buying here.', '2016-11-24 16:29:39'),
(16, 7, 1, 0, '', '2016-11-24 16:37:36'),
(17, 7, 2, 0, 'Payment Status = success\nBank txnid = 1611241636550FzHPQaRiVJBlAc\nYour Oder id = 7\nPayment Date = 2016-11-24 16:36:49\nCard Number = \nCard Type = -VISA-Dutch Bangla\nTransaction Risk Level = 0\nTransaction Risk Description = Safe\n', '2016-11-24 16:37:37'),
(18, 8, 1, 0, '', '2016-11-24 16:39:15'),
(19, 8, 2, 0, 'Payment Status = success\nBank txnid = 161124163834HN7IiUO7xohoJhF\nYour Oder id = 8\nPayment Date = 2016-11-24 16:38:28\nCard Number = \nCard Type = -VISA-Dutch Bangla\nTransaction Risk Level = 0\nTransaction Risk Description = Safe\n', '2016-11-24 16:39:16'),
(20, 8, 5, 1, 'Thanks for buying here.', '2016-11-24 16:40:46'),
(21, 7, 5, 1, 'Thanks for buying here.', '2016-11-24 16:41:10'),
(22, 9, 1, 0, '', '2016-11-25 10:50:46'),
(23, 9, 2, 0, 'Payment Status = success\nBank txnid = 161125105004qyhmpi8esX5MtZB\nYour Oder id = 9\nPayment Date = 2016-11-25 10:49:58\nCard Number = \nCard Type = -VISA-Dutch Bangla\nTransaction Risk Level = 0\nTransaction Risk Description = Safe\n', '2016-11-25 10:50:47'),
(24, 10, 1, 0, '', '2016-11-25 10:51:53'),
(25, 10, 2, 0, 'Payment Status = success\nBank txnid = 1611251051110HVxWFdlBsLuzai\nYour Oder id = 10\nPayment Date = 2016-11-25 10:51:06\nCard Number = 519625******7716\nCard Type = MASTERCARD-MASTER-Dutch Bangla\nTransaction Risk Level = 0\nTransaction Risk Description = Safe\n', '2016-11-25 10:51:54'),
(26, 10, 5, 1, 'Thanks for buying here.', '2016-11-25 10:52:40'),
(27, 9, 5, 1, 'Thanks for buying here.', '2016-11-25 10:53:01'),
(28, 11, 1, 0, '', '2016-11-25 10:54:53'),
(29, 11, 2, 0, 'Payment Status = success\nBank txnid = 1611251054112L84w1vUTqh04bz\nYour Oder id = 11\nPayment Date = 2016-11-25 10:54:07\nCard Number = \nCard Type = -VISA-Dutch Bangla\nTransaction Risk Level = 0\nTransaction Risk Description = Safe\n', '2016-11-25 10:54:54'),
(30, 11, 5, 1, 'Thanks for buying here.', '2016-11-25 10:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 1, 7, 225, 0, 'Delivery Date', '2011-04-22', 'date');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 31, 'Alessia74 Handbag', 'Product 4', 1, '80.0000', '80.0000', '18.0000', 0),
(2, 1, 34, ' Vanca Women''s Top', 'Product 7', 1, '100.0000', '100.0000', '22.0000', 0),
(3, 1, 43, 'Bata Women''s Fashion Sandals', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(4, 1, 29, 'Butterflies Women''s Handbag', 'Product 2', 1, '279.9900', '279.9900', '57.9980', 0),
(5, 1, 28, 'HTC Touch HD', 'Product 1', 1, '100.0000', '100.0000', '22.0000', 400),
(6, 1, 41, 'Moda Women''s Slim Fit ', 'Product 14', 1, '100.0000', '100.0000', '22.0000', 0),
(7, 1, 47, 'HP LP3065', 'Product 21', 1, '100.0000', '100.0000', '22.0000', 300),
(8, 2, 43, 'Bata Women''s Fashion Sandals', 'Product 16', 1, '500.0000', '500.0000', '102.0000', 600),
(9, 3, 99, 'Phase Eight Collection 8 Esmerelda beaded dress', '12165422', 4, '22.0000', '88.0000', '0.0000', 0),
(10, 4, 122, 'Citizen Men''s Stainless Steel Satellite Wave GPS Chronograph Watch cc9030-51e', '4832132156', 4, '45.0000', '180.0000', '0.0000', 0),
(11, 5, 133, 'Sony Xperia Z5 Premium', '65543123', 4, '500.0000', '2000.0000', '0.0000', 0),
(12, 6, 77, 'Precious Moments 9ct Gold Initial ''S'' Ladies Pendant', '215120515', 3, '20.0000', '60.0000', '0.0000', 0),
(13, 7, 70, 'Carvela Comfort Black ''Rani'' mid heel ankle boot', '54502151', 3, '15.0000', '45.0000', '0.0000', 0),
(14, 8, 70, 'Carvela Comfort Black ''Rani'' mid heel ankle boot', '54502151', 3, '15.0000', '45.0000', '0.0000', 0),
(15, 9, 143, 'KitSound Children''s doodles volume limiting headphones', '41102252', 1, '13.5000', '13.5000', '0.0000', 0),
(16, 10, 116, 'OYSTER PERPETUAL COSMOGRAPH DAYTONA', '123432026', 2, '35.0000', '70.0000', '0.0000', 0),
(17, 11, 116, 'OYSTER PERPETUAL COSMOGRAPH DAYTONA', '123432026', 1, '325.0000', '325.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '1259.9900', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'tax', 'Eco Tax (-2.00)', '16.0000', 5),
(4, 1, 'tax', 'VAT (20%)', '252.9980', 5),
(5, 1, 'total', 'Total', '1533.9880', 9),
(6, 2, 'sub_total', 'Sub-Total', '500.0000', 1),
(7, 2, 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(8, 2, 'tax', 'VAT (20%)', '100.0000', 5),
(9, 2, 'total', 'Total', '602.0000', 9),
(10, 3, 'sub_total', 'Sub-Total', '88.0000', 1),
(11, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(12, 3, 'coupon', 'Coupon (1122)', '-14.0800', 4),
(13, 3, 'total', 'Total', '78.9200', 9),
(14, 4, 'sub_total', 'Sub-Total', '180.0000', 1),
(15, 4, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(16, 4, 'total', 'Total', '185.0000', 9),
(17, 5, 'sub_total', 'Sub-Total', '2000.0000', 1),
(18, 5, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(19, 5, 'total', 'Total', '2005.0000', 9),
(20, 6, 'sub_total', 'Sub-Total', '60.0000', 1),
(21, 6, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(22, 6, 'total', 'Total', '65.0000', 9),
(23, 7, 'sub_total', 'Sub-Total', '45.0000', 1),
(24, 7, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(25, 7, 'total', 'Total', '50.0000', 9),
(26, 8, 'sub_total', 'Sub-Total', '45.0000', 1),
(27, 8, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(28, 8, 'total', 'Total', '50.0000', 9),
(29, 9, 'sub_total', 'Sub-Total', '13.5000', 1),
(30, 9, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(31, 9, 'total', 'Total', '18.5000', 9),
(32, 10, 'sub_total', 'Sub-Total', '70.0000', 1),
(33, 10, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(34, 10, 'total', 'Total', '75.0000', 9),
(35, 11, 'sub_total', 'Sub-Total', '325.0000', 1),
(36, 11, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(37, 11, 'total', 'Total', '330.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(150, '321565645', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/kettles/Delongi/pic6.jpg', 0, 1, '117.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 18:35:33', '0000-00-00 00:00:00'),
(56, '5102020', '', '', '', '', '', '', '', 10, 6, 'catalog/products/women bags/diaper bags/bag2.jpg', 0, 1, '6399.0000', 0, 0, '2016-11-21', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 00:55:33', '2016-11-22 14:58:50'),
(55, '32141563', '', '', '', '', '', '', '', 16, 6, 'catalog/products/women bags/bags/bag5.jpg', 0, 1, '6789.0000', 0, 0, '2016-11-21', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 10, '2016-11-22 00:09:19', '2016-11-22 15:01:43'),
(74, '51845202', '', '', '', '', '', '', '', 15, 6, 'catalog/products/jwellery/bracelets/pic1.jpg', 0, 1, '20.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 18:46:33', '2016-11-22 18:52:39'),
(148, '231545651', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Electronics/kettles/Morphy Richards/pic6.jpg', 0, 1, '126.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 2, '2016-11-24 18:27:57', '0000-00-00 00:00:00'),
(59, '46515482', '', '', '', '', '', '', '', 10, 6, 'catalog/products/women bags/hobo handbags/bag1.jpg', 0, 1, '3699.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-22 13:38:34', '2016-11-22 14:58:14'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/p16.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2015-05-19 17:50:59'),
(53, '1010121', '', '', '', '', '', '', '', 10, 6, 'catalog/products/women bags/bags/bag1.jpg', 0, 1, '8699.0000', 0, 0, '2016-11-21', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 3, '2016-11-21 23:54:40', '2016-11-22 15:01:58'),
(58, '65545151', '', '', '', '', '', '', '', 16, 6, 'catalog/products/women bags/diaper bags/bag7.jpg', 0, 1, '4579.0000', 500, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 6, '2016-11-22 13:17:20', '2016-11-22 14:57:54'),
(57, '35515162', '', '', '', '', '', '', '', 10, 6, 'catalog/products/women bags/diaper bags/bag5.jpg', 0, 1, '4589.0000', 400, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 11, '2016-11-22 13:07:23', '2016-11-22 14:59:08'),
(54, '1412324', '', '', '', '', '', '', '', 10, 6, 'catalog/products/women bags/bags/bag4.jpg', 0, 1, '8999.0000', 0, 0, '2016-11-21', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-22 00:00:42', '2016-11-22 00:27:36'),
(178, '216502151', '', '', '', '', '', '', '', 132, 6, 'catalog/products/Kids/Baby/pic5.jpg', 0, 1, '19.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-25 00:48:27', '0000-00-00 00:00:00'),
(176, '21545122', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Kids/Girls/pic4.jpg', 0, 1, '16.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-25 00:44:30', '0000-00-00 00:00:00'),
(177, '2125332463', '', '', '', '', '', '', '', 123, 6, 'catalog/products/Kids/Girls/pic1.jpg', 0, 1, '27.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 00:46:48', '0000-00-00 00:00:00'),
(149, '231823022', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/kettles/Morphy Richards/pic2.jpg', 0, 1, '50.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 2, '2016-11-24 18:30:01', '0000-00-00 00:00:00'),
(50, '11111', '', '', '', '', '', '', '', 10, 6, 'catalog/products/women bags/clutch bags/bag1.jpg', 0, 1, '2499.0000', 0, 0, '2016-11-21', '7.00000000', 2, '5.00000000', '10.00000000', '7.00000000', 3, 1, 1, 1, 1, 10, '2016-11-21 21:58:52', '2016-11-22 15:00:42'),
(51, '121212', '', '', '', '', '', '', '', 10, 6, 'catalog/products/women bags/clutch bags/bag3.jpg', 0, 1, '8499.0000', 0, 0, '2016-11-21', '0.00000000', 2, '4.00000000', '8.00000000', '4.00000000', 3, 1, 1, 1, 1, 5, '2016-11-21 22:57:17', '2016-11-22 15:02:55'),
(52, '122112', '', '', '', '', '', '', '', 15, 6, 'catalog/products/women bags/clutch bags/bag5.jpg', 0, 1, '5299.0000', 0, 0, '2016-11-21', '0.00000000', 2, '2.00000000', '6.00000000', '3.00000000', 3, 1, 1, 1, 1, 6, '2016-11-21 23:21:19', '2016-11-22 15:00:27'),
(60, '565155156', '', '', '', '', '', '', '', 12, 6, 'catalog/products/women bags/hobo handbags/bag4.jpg', 0, 1, '7899.0000', 550, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 2, '2016-11-22 13:43:26', '2016-11-22 14:58:33'),
(61, '54521215', '', '', '', '', '', '', '', 15, 6, 'catalog/products/women bags/hobo handbags/bag8.jpg', 0, 1, '6499.0000', 250, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-22 13:47:17', '2016-11-22 15:02:37'),
(62, '5465151', '', '', '', '', '', '', '', 10, 6, 'catalog/products/women shoes/flat shoes/shoes1.jpg', 0, 1, '14.5000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 2, '2016-11-22 14:47:35', '2016-11-22 14:57:38'),
(63, '121646512', '', '', '', '', '', '', '', 12, 6, 'catalog/products/women shoes/flat shoes/shoes4.jpg', 0, 1, '7.5000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 2, '2016-11-22 14:51:36', '2016-11-22 15:03:12'),
(64, '21560215', '', '', '', '', '', '', '', 14, 6, 'catalog/products/women shoes/flat shoes/shoes7.jpg', 0, 1, '9.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 2, '2016-11-22 14:54:52', '2016-11-22 15:02:18'),
(65, '1446123', '', '', '', '', '', '', '', 15, 6, 'catalog/products/women shoes/flat sandals/pic1.jpg', 0, 1, '24.5000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 2, '2016-11-22 15:16:00', '2016-11-22 15:22:13'),
(66, '13203251', '', '', '', '', '', '', '', 13, 6, 'catalog/products/women shoes/flat sandals/pic4.jpg', 0, 1, '23.2000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 2, '2016-11-22 15:18:41', '2016-11-22 15:24:29'),
(67, '2165123315', '', '', '', '', '', '', '', 15, 6, 'catalog/products/women shoes/flat sandals/pic7.jpg', 0, 1, '31.2000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 15:21:22', '2016-11-22 15:25:26'),
(68, '110021561', '', '', '', '', '', '', '', 15, 6, 'catalog/products/women shoes/boots/pic1.jpg', 0, 1, '42.7500', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-22 16:21:20', '2016-11-22 16:29:06'),
(69, '2150515152', '', '', '', '', '', '', '', 18, 6, 'catalog/products/women shoes/boots/pic4.jpg', 0, 1, '62.5000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 16:24:28', '0000-00-00 00:00:00'),
(70, '54502151', '', '', '', '', '', '', '', 10, 6, 'catalog/products/women shoes/boots/pic7.jpg', 0, 1, '96.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 3, '2016-11-22 16:27:36', '2016-11-22 16:28:18'),
(71, '21501651', '', '', '', '', '', '', '', 15, 6, 'catalog/products/women shoes/heels/heels1.jpg', 0, 1, '38.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 16:44:21', '0000-00-00 00:00:00'),
(72, '221560546', '', '', '', '', '', '', '', 15, 6, 'catalog/products/women shoes/heels/heels4.jpg', 0, 1, '42.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 16:46:58', '2016-11-22 16:53:59'),
(73, '55331202', '', '', '', '', '', '', '', 15, 6, 'catalog/products/women shoes/heels/heels7.jpg', 0, 1, '42.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 16:51:11', '2016-11-22 16:54:35'),
(75, '32156121', '', '', '', '', '', '', '', 18, 6, 'catalog/products/jwellery/bracelets/pic2.jpg', 0, 1, '23.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 18:49:17', '0000-00-00 00:00:00'),
(76, '10544532', '', '', '', '', '', '', '', 16, 6, 'catalog/products/jwellery/bracelets/pic4.jpg', 0, 1, '105.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 18:51:38', '2016-11-22 18:53:04'),
(77, '215120515', '', '', '', '', '', '', '', 15, 6, 'catalog/products/jwellery/pendent/pic1.jpg', 0, 1, '74.9900', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 19:23:15', '2016-11-22 19:32:07'),
(78, '561023156', '', '', '', '', '', '', '', 17, 6, 'catalog/products/jwellery/pendent/pic3.jpg', 0, 1, '20.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 19:25:46', '0000-00-00 00:00:00'),
(79, '65120011', '', '', '', '', '', '', '', 15, 6, 'catalog/products/jwellery/pendent/pic5.jpg', 0, 1, '39.9900', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 19:28:06', '2016-11-22 19:33:01'),
(80, '154156123', '', '', '', '', '', '', '', 16, 6, 'catalog/products/jwellery/pendent/pic6.jpg', 0, 1, '24.4900', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 19:30:26', '2016-11-22 19:33:24'),
(81, '512315602', '', '', '', '', '', '', '', 16, 6, 'catalog/products/jwellery/pendent/pic7.jpg', 0, 1, '39.9900', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 19:40:51', '2016-11-22 19:44:58'),
(82, '114512220', '', '', '', '', '', '', '', 16, 6, 'catalog/products/jwellery/pendent/pic9.jpg', 0, 1, '48.2900', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 19:43:28', '2016-11-22 19:45:39'),
(83, '1513203216', '', '', '', '', '', '', '', 15, 6, 'catalog/products/jwellery/pins/pic1.jpg', 0, 1, '4.9900', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-22 19:52:39', '0000-00-00 00:00:00'),
(84, '165548952', '', '', '', '', '', '', '', 16, 6, 'catalog/products/jwellery/pins/pic2.jpg', 0, 1, '5.8900', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 19:54:44', '2016-11-22 19:57:32'),
(85, '15602154', '', '', '', '', '', '', '', 16, 6, 'catalog/products/jwellery/pins/pic3.jpg', 0, 1, '5.9500', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-22 19:56:19', '2016-11-22 19:57:55'),
(86, '156231345', '', '', '', '', '', '', '', 19, 6, 'catalog/products/women dresses/causial dresses/pic1.jpg', 0, 1, '8.2000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 21:41:01', '2016-11-22 21:50:13'),
(87, '156102315', '', '', '', '', '', '', '', 16, 6, 'catalog/products/women dresses/causial dresses/pic4.jpg', 0, 1, '35.9700', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 21:43:29', '2016-11-22 21:52:30'),
(88, '165125551', '', '', '', '', '', '', '', 16, 6, 'catalog/products/women dresses/causial dresses/pic6.jpg', 0, 1, '63.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-22 21:45:39', '2016-11-22 21:52:57'),
(89, '15646513210', '', '', '', '', '', '', '', 16, 6, 'catalog/products/women dresses/causial dresses/pic8.jpg', 0, 1, '36.9900', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-22 21:48:05', '2016-11-22 21:51:52'),
(90, '56132032156', '', '', '', '', '', '', '', 18, 6, 'catalog/products/women dresses/evening/pic1.jpg', 0, 1, '69.3000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 2, '2016-11-22 22:10:09', '2016-11-22 22:17:13'),
(91, '1616513', '', '', '', '', '', '', '', 19, 6, 'catalog/products/women dresses/evening/pic5.jpg', 0, 1, '108.5000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-22 22:12:38', '2016-11-22 22:16:52'),
(92, '65416532', '', '', '', '', '', '', '', 19, 6, 'catalog/products/women dresses/evening/pic8.jpg', 0, 1, '48.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-22 22:15:27', '0000-00-00 00:00:00'),
(93, '21654651', '', '', '', '', '', '', '', 19, 6, 'catalog/products/women dresses/designer/pic1.jpg', 0, 1, '46.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 22:29:37', '2016-11-22 22:36:55'),
(94, '21165465', '', '', '', '', '', '', '', 19, 6, 'catalog/products/women dresses/designer/pic4.jpg', 0, 1, '27.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-22 22:32:22', '2016-11-22 23:55:05'),
(95, '164651321', '', '', '', '', '', '', '', 19, 6, 'catalog/products/women dresses/designer/pic7.jpg', 0, 1, '59.9900', 400, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 22:35:01', '2016-11-22 22:36:11'),
(96, '554612020', '', '', '', '', '', '', '', 19, 6, 'catalog/products/women dresses/party/pic1.jpg', 0, 1, '79.2000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 22:51:40', '2016-11-22 23:53:42'),
(97, '215451511', '', '', '', '', '', '', '', 18, 6, 'catalog/products/women dresses/party/pic4.jpg', 0, 1, '275.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-22 23:44:31', '0000-00-00 00:00:00'),
(98, '2313555', '', '', '', '', '', '', '', 19, 6, 'catalog/products/women dresses/party/pic8.jpg', 0, 1, '204.5000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-22 23:47:14', '2016-11-22 23:54:36'),
(99, '12165422', '', '', '', '', '', '', '', 15, 6, 'catalog/products/women dresses/party/pic12.jpg', 0, 1, '179.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 5, '2016-11-22 23:49:52', '0000-00-00 00:00:00'),
(100, '15644651531', '', '', '', '', '', '', '', 19, 6, 'catalog/products/Man shoes/sport/pic1.jpg', 0, 1, '89.9900', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 01:44:24', '0000-00-00 00:00:00'),
(101, '135464652', '', '', '', '', '', '', '', 19, 6, 'catalog/products/Man shoes/sport/pic4.jpg', 0, 1, '120.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 01:47:50', '0000-00-00 00:00:00'),
(102, '23165451', '', '', '', '', '', '', '', 16, 6, 'catalog/products/Man shoes/casual/pic1.jpg', 0, 1, '54.9900', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 01:58:21', '0000-00-00 00:00:00'),
(103, '1324643212', '', '', '', '', '', '', '', 16, 6, 'catalog/products/Man shoes/casual/pic5.jpg', 0, 1, '89.9900', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 02:00:34', '0000-00-00 00:00:00'),
(104, '1216432023', '', '', '', '', '', '', '', 15, 6, 'catalog/products/Man shoes/leather/pic1.jpg', 0, 1, '220.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 02:09:50', '0000-00-00 00:00:00'),
(105, '132165432', '', '', '', '', '', '', '', 15, 6, 'catalog/products/Man shoes/leather/pic5.jpg', 0, 1, '120.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 02:12:59', '0000-00-00 00:00:00'),
(106, '23316510', '', '', '', '', '', '', '', 16, 6, 'catalog/products/Man shoes/canvas/pic1.jpg', 0, 1, '33.9900', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 02:30:52', '0000-00-00 00:00:00'),
(107, '23165560', '', '', '', '', '', '', '', 18, 6, 'catalog/products/Man shoes/canvas/pic8.jpg', 0, 1, '36.0000', 0, 0, '2016-11-22', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 02:34:22', '0000-00-00 00:00:00'),
(108, '16546020230', '', '', '', '', '', '', '', 16, 6, 'catalog/products/Man Dresses/Casual/pic1.jpg', 0, 1, '18.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 14:40:33', '0000-00-00 00:00:00'),
(109, '149823020', '', '', '', '', '', '', '', 17, 6, 'catalog/products/Man Dresses/Casual/pic4.jpg', 0, 1, '52.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 14:42:57', '2016-11-23 14:43:57'),
(110, '321165120', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Man Dresses/T-Shirt/pic3.jpg', 0, 1, '56.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 14:47:50', '0000-00-00 00:00:00'),
(111, '116632130', '', '', '', '', '', '', '', 16, 6, 'catalog/products/Man Dresses/T-Shirt/pic6.jpg', 0, 1, '55.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 14:50:26', '0000-00-00 00:00:00'),
(112, '131623020', '', '', '', '', '', '', '', 1321, 6, 'catalog/products/Man Dresses/Hoodies/pic1.jpg', 0, 1, '40.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 14:54:12', '0000-00-00 00:00:00'),
(113, '11612021', '', '', '', '', '', '', '', 112, 6, 'catalog/products/Man Dresses/Hoodies/pic5.jpg', 0, 1, '32.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 14:56:28', '0000-00-00 00:00:00'),
(114, '54613225', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Man Dresses/Suits/pic1.jpg', 0, 1, '45.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 15:00:33', '0000-00-00 00:00:00'),
(115, '146313156', '', '', '', '', '', '', '', 112, 6, 'catalog/products/Man Dresses/Suits/pic5.jpg', 0, 1, '68.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 15:02:53', '0000-00-00 00:00:00'),
(116, '123432026', '', '', '', '', '', '', '', 13, 6, 'catalog/products/Man Watches/Rolex/pic4.jpg', 0, 1, '325.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 15:26:03', '0000-00-00 00:00:00'),
(117, '4315021220', '', '', '', '', '', '', '', 115, 6, 'catalog/products/Man Watches/Rolex/pic1.jpg', 0, 1, '150.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 15:28:47', '0000-00-00 00:00:00'),
(118, '32164651', '', '', '', '', '', '', '', 132, 6, 'catalog/products/Man Watches/Casio/pic2.jpg', 0, 1, '208.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 16:33:36', '2016-11-23 16:35:38'),
(119, '3216312315', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Man Watches/Casio/pic1.jpg', 0, 1, '220.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 16:37:46', '0000-00-00 00:00:00'),
(120, '1224685', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Man Watches/Armani Exchange/pic1.jpg', 0, 1, '184.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 16:40:15', '0000-00-00 00:00:00'),
(121, '32161232', '', '', '', '', '', '', '', 133, 6, 'catalog/products/Man Watches/Armani Exchange/pic2.jpg', 0, 1, '168.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 16:42:13', '0000-00-00 00:00:00'),
(122, '4832132156', '', '', '', '', '', '', '', 14, 6, 'catalog/products/Man Watches/Citizen/pic1.jpg', 0, 1, '900.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 4, '2016-11-23 16:45:28', '0000-00-00 00:00:00'),
(123, '1346131', '', '', '', '', '', '', '', 19, 6, 'catalog/products/Man Watches/Citizen/pic4.jpg', 0, 1, '360.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 16:47:15', '0000-00-00 00:00:00'),
(124, '214565565', '', '', '', '', '', '', '', 133, 6, 'catalog/products/Man Sunglasses/Ray-Bar/pic5.jpg', 0, 1, '172.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 17:21:57', '2016-11-23 17:23:42'),
(125, '65412122', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Man Sunglasses/Ray-Bar/pic1.jpg', 0, 1, '201.4900', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 17:26:17', '0000-00-00 00:00:00'),
(126, '14851212', '', '', '', '', '', '', '', 123, 6, 'catalog/products/Man Sunglasses/Arnette/pic1.jpg', 0, 1, '68.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 17:28:46', '2016-11-23 17:31:32'),
(127, '83212112', '', '', '', '', '', '', '', 132, 6, 'catalog/products/Man Sunglasses/Arnette/pic2.jpg', 0, 1, '48.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 17:30:47', '0000-00-00 00:00:00'),
(128, '55230221', '', '', '', '', '', '', '', 19, 6, 'catalog/products/Man Sunglasses/Oakley/pic7.jpg', 0, 1, '276.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 17:34:52', '0000-00-00 00:00:00'),
(129, '566120021', '', '', '', '', '', '', '', 112, 6, 'catalog/products/Man Sunglasses/Oakley/pic1.jpg', 0, 1, '308.4900', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 17:37:07', '0000-00-00 00:00:00'),
(130, '23486122', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Man Sunglasses/Dolce/pic4.jpg', 0, 1, '173.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 17:39:42', '0000-00-00 00:00:00'),
(131, '56120122', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Man Sunglasses/Dolce/pic1.jpg', 0, 1, '173.4900', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 17:41:43', '0000-00-00 00:00:00'),
(132, '34865151', '', '', '', '', '', '', '', 120, 6, 'catalog/products/Electronics/Phones/Sony/pic1.jpg', 10, 1, '349.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 22:05:44', '2016-11-23 22:09:27'),
(133, '65543123', '', '', '', '', '', '', '', 107, 6, 'catalog/products/Electronics/Phones/Sony/pic3.jpg', 10, 1, '500.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 2, '2016-11-23 22:08:20', '2016-11-23 22:09:39'),
(134, '65542123', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Electronics/Phones/Samsung/pic2.png', 11, 1, '450.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 22:17:19', '0000-00-00 00:00:00'),
(135, '21231542', '', '', '', '', '', '', '', 112, 6, 'catalog/products/Electronics/Phones/Samsung/pic3.jpg', 11, 1, '300.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 22:19:36', '0000-00-00 00:00:00'),
(136, '65123020', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Electronics/Phones/Apple/pic1.png', 8, 1, '800.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 22:23:07', '0000-00-00 00:00:00'),
(137, '56123122', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Electronics/Phones/Apple/pic4.jpg', 8, 1, '250.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 22:25:15', '0000-00-00 00:00:00'),
(138, '65120222', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Electronics/Phones/Nokia/pic1.jpg', 12, 1, '45.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 22:29:55', '0000-00-00 00:00:00'),
(139, '34623121', '', '', '', '', '', '', '', 122, 6, 'catalog/products/Electronics/Phones/Nokia/pic3.jpg', 12, 1, '219.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 22:32:07', '0000-00-00 00:00:00'),
(140, '51515484', '', '', '', '', '', '', '', 120, 6, 'catalog/products/Electronics/Headphones/hmdx/pic4.jpg', 0, 1, '36.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-23 23:51:43', '0000-00-00 00:00:00'),
(141, '512545102', '', '', '', '', '', '', '', 120, 6, 'catalog/products/Electronics/Headphones/hmdx/pic1.jpg', 0, 1, '99.9900', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 23:53:51', '0000-00-00 00:00:00'),
(142, '5151544845', '', '', '', '', '', '', '', 120, 6, 'catalog/products/Electronics/Headphones/kitsound/pic1.jpg', 0, 1, '31.5000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-23 23:58:34', '0000-00-00 00:00:00'),
(143, '41102252', '', '', '', '', '', '', '', 110, 6, 'catalog/products/Electronics/Headphones/kitsound/pic5.jpg', 0, 1, '13.5000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 3, '2016-11-24 00:01:30', '0000-00-00 00:00:00'),
(144, '54561212', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Electronics/Headphones/marley/pic1.jpg', 0, 1, '50.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 00:04:12', '0000-00-00 00:00:00'),
(145, '321545221', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Electronics/Headphones/marley/pic2.jpg', 0, 1, '50.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 00:06:36', '0000-00-00 00:00:00'),
(146, '5123165446', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/Headphones/monster/pic3.jpg', 0, 1, '162.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-24 00:10:12', '0000-00-00 00:00:00'),
(147, '215121515', '', '', '', '', '', '', '', 144, 6, 'catalog/products/Electronics/Headphones/monster/pic4.jpg', 0, 1, '63.0000', 0, 0, '2016-11-23', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 00:12:18', '0000-00-00 00:00:00'),
(151, '3161651212', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/kettles/Delongi/pic3.jpg', 0, 1, '99.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 18:37:39', '0000-00-00 00:00:00'),
(152, '2165465212', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Electronics/kettles/Russel/pic3.jpg', 0, 1, '25.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 18:40:06', '0000-00-00 00:00:00'),
(153, '231645151', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/kettles/Russel/pic4.jpg', 0, 1, '35.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 18:42:08', '0000-00-00 00:00:00'),
(154, '121548410', '', '', '', '', '', '', '', 112, 6, 'catalog/products/Electronics/kettles/Bevile/pic4.jpg', 0, 1, '54.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 18:44:35', '0000-00-00 00:00:00'),
(155, '354561251', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/kettles/Bevile/pic1.jpg', 0, 1, '65.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 18:46:19', '0000-00-00 00:00:00'),
(156, '12316312', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/Irons/Morphy/pic4.jpg', 0, 1, '225.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 19:36:43', '0000-00-00 00:00:00'),
(157, '2316545322', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/Irons/Morphy/pic1.jpg', 0, 1, '35.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 19:38:28', '0000-00-00 00:00:00'),
(158, '231351300', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/Irons/Brawn/pic2.jpg', 0, 1, '63.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 19:40:39', '0000-00-00 00:00:00'),
(159, '321654322', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Electronics/Irons/Brawn/pic1.jpg', 0, 1, '200.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-24 19:42:21', '0000-00-00 00:00:00'),
(160, '13156132', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/Irons/Tefal/pic5.jpg', 0, 1, '90.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 19:45:54', '0000-00-00 00:00:00'),
(161, '215320025', '', '', '', '', '', '', '', 112, 6, 'catalog/products/Electronics/Irons/Tefal/pic2.jpg', 0, 1, '150.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 19:47:35', '0000-00-00 00:00:00'),
(162, '231654560', '', '', '', '', '', '', '', 112, 6, 'catalog/products/Electronics/Irons/Bosch/pic7.jpg', 0, 1, '81.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 19:50:53', '0000-00-00 00:00:00'),
(163, '2115621213', '', '', '', '', '', '', '', 112, 6, 'catalog/products/Electronics/Irons/Bosch/pic3.jpg', 0, 1, '250.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-24 19:52:58', '0000-00-00 00:00:00'),
(164, '23154845', '', '', '', '', '', '', '', 112, 6, 'catalog/products/Electronics/Hair Style/Glamoriser/pic4.jpg', 0, 1, '30.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 23:08:25', '0000-00-00 00:00:00'),
(165, '2144521245', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/Hair Style/Glamoriser/pic2.jpg', 0, 1, '50.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 23:10:21', '0000-00-00 00:00:00'),
(166, '2315451215', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/Hair Style/Tresemme/pic4.jpg', 0, 1, '22.5000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 23:13:26', '0000-00-00 00:00:00'),
(167, '321566561', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/Hair Style/Tresemme/pic2.jpg', 0, 1, '22.5000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 23:15:19', '0000-00-00 00:00:00'),
(168, '31654812', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/Hair Style/Babylish/pic4.jpg', 0, 1, '54.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 23:17:23', '2016-11-24 23:19:46'),
(169, '3216484151', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/Hair Style/Babylish/pic2.jpg', 0, 1, '85.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 2, '2016-11-24 23:18:55', '0000-00-00 00:00:00'),
(170, '214845121', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/Hair Style/Remington/pic4.jpg', 0, 1, '25.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-24 23:22:50', '0000-00-00 00:00:00'),
(171, '21654512', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Electronics/Hair Style/Remington/pic1.jpg', 0, 1, '25.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-24 23:24:41', '0000-00-00 00:00:00'),
(172, '21546512', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Kids/Accessories/pic2.jpg', 0, 1, '3.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 00:31:57', '0000-00-00 00:00:00'),
(173, '231354545', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Kids/Accessories/pic1.jpg', 0, 1, '9.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 00:33:41', '0000-00-00 00:00:00'),
(174, '321654512', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Kids/Boys/pic5.jpg', 0, 1, '13.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-25 00:36:07', '0000-00-00 00:00:00'),
(175, '212315615', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Kids/Boys/pic2.jpg', 0, 1, '11.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 00:40:25', '0000-00-00 00:00:00'),
(179, '21542325', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Kids/Baby/pic1.jpg', 0, 1, '18.0000', 0, 0, '2016-11-24', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 00:50:23', '0000-00-00 00:00:00'),
(180, '221654512', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Furniture/Living Room/pic2.jpg', 0, 1, '1035.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-25 10:04:53', '0000-00-00 00:00:00'),
(181, '2132612002', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Furniture/Living Room/pic3.jpg', 0, 1, '697.5000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:06:59', '0000-00-00 00:00:00'),
(182, '215645154', '', '', '', '', '', '', '', 110, 6, 'catalog/products/Furniture/Living Room/pic5.jpg', 0, 1, '166.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:09:03', '0000-00-00 00:00:00'),
(183, '23166132156', '', '', '', '', '', '', '', 101, 6, 'catalog/products/Furniture/Living Room/pic6.jpg', 0, 1, '64.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:10:41', '0000-00-00 00:00:00'),
(184, '321545125', '', '', '', '', '', '', '', 121, 6, 'catalog/products/Furniture/Dining Room/pic1.jpg', 0, 1, '1512.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:13:55', '0000-00-00 00:00:00'),
(185, '21643521561', '', '', '', '', '', '', '', 101, 6, 'catalog/products/Furniture/Dining Room/pic2.jpg', 0, 1, '260.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:15:48', '0000-00-00 00:00:00'),
(186, '21616515165', '', '', '', '', '', '', '', 101, 6, 'catalog/products/Furniture/Dining Room/pic3.jpg', 0, 1, '178.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:17:22', '0000-00-00 00:00:00'),
(187, '231486125', '', '', '', '', '', '', '', 101, 6, 'catalog/products/Furniture/Dining Room/pic5.jpg', 0, 1, '283.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:19:09', '0000-00-00 00:00:00'),
(188, '318120553', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Furniture/Bedroom/pic1.jpg', 0, 1, '1008.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:34:34', '0000-00-00 00:00:00'),
(189, '248121548', '', '', '', '', '', '', '', 101, 6, 'catalog/products/Furniture/Bedroom/pic3.jpg', 0, 1, '213.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:36:52', '0000-00-00 00:00:00'),
(190, '32498156', '', '', '', '', '', '', '', 101, 6, 'catalog/products/Furniture/Bedroom/pic4.jpg', 0, 1, '270.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:38:28', '0000-00-00 00:00:00'),
(191, '32168412156', '', '', '', '', '', '', '', 101, 6, 'catalog/products/Furniture/Bedroom/pic7.jpg', 0, 1, '640.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:40:10', '0000-00-00 00:00:00'),
(192, '234685121', '', '', '', '', '', '', '', 160, 6, 'catalog/products/Furniture/Kitchen/pic1.jpg', 0, 1, '16.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:42:26', '0000-00-00 00:00:00'),
(193, '2368165552', '', '', '', '', '', '', '', 101, 6, 'catalog/products/Furniture/Kitchen/pic2.jpg', 0, 1, '139.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 1, '2016-11-25 10:43:44', '0000-00-00 00:00:00'),
(194, '32165456', '', '', '', '', '', '', '', 101, 6, 'catalog/products/Furniture/Kitchen/pic5.jpg', 0, 1, '43.4900', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:45:35', '0000-00-00 00:00:00'),
(195, '2160653156', '', '', '', '', '', '', '', 111, 6, 'catalog/products/Furniture/Kitchen/pic6.jpg', 0, 1, '154.0000', 0, 0, '2016-11-25', '0.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 1, 1, 0, '2016-11-25 10:47:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(53, 1, 'J by Jasper Conran Black leather croc textured tote bag', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From our exclusive J by Jasper Conran range, this large mock croc textured tote bag is a smart city chic companion. Styled in black with an elegant tassel charm, this versatile accessory features a detachable shoulder strap and grab handles.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Outer: 100% leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 36 x 35 x 11cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;One internal zip pocket, one internal mobile pouch, one internal clear pouch&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Two grab handles, one detachable shoulder strap&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Popper fastening&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'J by Jasper Conran Black leather croc textured tote bag', 'From our exclusive J by Jasper Conran range, this large mock croc textured tote bag is a smart city chic companion. Styled in black with an elegant tassel charm, this versatile accessory features a detachable shoulder strap and grab handles.\r\n\r\nOuter: 100', ''),
(177, 1, 'bluezoo Girls'' blue unicorn print dress and belt', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From bluezoo''s fantastic range of childrenswear, this charming dress will add a touch of magic to a little girl''s casual collection. In blue, it features a classic crew neck and pleated skirt with a unicorn and star print throughout. Completed with a detachable metallic silver belt, it will look lovely paired with ballet flats and a cardigan.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Main: 100% cotton&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'bluezoo Girls'' blue unicorn print dress and belt', 'From bluezoo''s fantastic range of childrenswear, this charming dress will add a touch of magic to a little girl''s casual collection. In blue, it features a classic crew neck and pleated skirt with a unicorn and star print throughout. Completed with a deta', ''),
(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Long Sleeve Top', '', ''),
(176, 1, 'J by Jasper Conran Girls'' navy stitched stripe and sequin shoes tunic', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From our exclusive J by Jasper Conran range, this tunic will make a cute and comfortable update to a girl''s knitwear collection. In navy with a classic striped pattern, this versatile piece features button fastenings at the shoulders and a pretty shoe design with a glistening sequin finish.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% cotton&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'J by Jasper Conran Girls'' navy stitched stripe and sequin shoes tunic', 'From our exclusive J by Jasper Conran range, this tunic will make a cute and comfortable update to a girl''s knitwear collection. In navy with a classic striped pattern, this versatile piece features button fastenings at the shoulders and a pretty shoe des', ''),
(148, 1, 'Morphy Richards Redefine hot water dispenser 131004', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Simplify everyday tasks with the smart and stylish Morphy Richards Redefine 12-cup Hot Water Dispenser, complete with precise temperature and volume control. With volume and temperature selection technology you can be sure you have full control for your cooking and drinking needs. Whether itÆs a pan full of boiling water for your pasta or multiple cups of tea/coffee, enjoy minimal wastage and maximum flexibility. With a 3 litre capacity that includes a Brita filtration system and simple, intuitive controls, our concept will redefine your hot water needs with efficiency and ease.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Power: 3000W&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Capacity: 3L&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Only boil the water you need so it''s ready faster, uses less energy and doesn''t waste a drop of water&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Select the perfect water temperature, whether it''s 100 C for your pasta, 95 C for your perfect coffee or 85 C for your herbal tea&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;You can select to automatically dispense amounts of water of up to 600ml. Anything over this amount you can dispense at the push of a button&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Water tank holds up to 3 litres so you refill less often, then select from 150ml to 1.5 litres at a time so you can make a single cup of tea or boil water for a panful of pasta&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;BRITA technology reduces unpleasant and unwanted substances like limescale, metals or chlorine to make your drinks look and taste better.&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;0.7m power cord with cord storage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Water level indicator&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Power indicator&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Rapid boil technology&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Non slip feet&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Removable drip tray&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Morphy Richards Redefine hot water dispenser 131004', 'Simplify everyday tasks with the smart and stylish Morphy Richards Redefine 12-cup Hot Water Dispenser, complete with precise temperature and volume control. With volume and temperature selection technology you can be sure you have full control for your c', ''),
(58, 1, 'Faith Black mock croc tab tote bag', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From our exclusive Faith collection, this statement tote is the go-to chic companion. Finished in black, it features a mock croc panel on the front and luxe gold metal tabs.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% polyurethane&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 25 x 31 x 10cm / 10 x 12 x 4 inches&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;One internal zip pocket, two internal pouches&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Two grab handles, one detachable shoulder strap&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Zip fastening&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Faith Black mock croc tab tote bag', 'From our exclusive Faith collection, this statement tote is the go-to chic companion. Finished in black, it features a mock croc panel on the front and luxe gold metal tabs.\r\n\r\n100% polyurethane\r\nHWD: 25 x 31 x 10cm / 10 x 12 x 4 inches\r\nOne internal zip ', ''),
(54, 1, 'The Collection Tan ring detail grab bag', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This grab bag from The Collection will make a chic addition to a woman''s accessories collection. Featuring a soft suede exterior with silver plated ring detailing, it is finished with two grab handles and a detachable shoulder strap for more versatile styling.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Outer: 100% suede&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;One external pocket, one external zip pocket, one internal zip pocket, two internal pouches&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Two grab handles, one detachable shoulder strap&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Popper fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 22 x 32 x 12cm / 8.6 x 12.5 x 4.7 inches&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'The Collection Tan ring detail grab bag', 'This grab bag from The Collection will make a chic addition to a woman''s accessories collection. Featuring a soft suede exterior with silver plated ring detailing, it is finished with two grab handles and a detachable shoulder strap for more versatile sty', ''),
(55, 1, 'J by Jasper Conran Black and leopard print leather tote bag', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From our exclusive J by Jasper Conran collection, this bag will add a statement finish to any look. Combining a black leather base with a textured leopard print front, it is finished with luxe, gold plated hardware. Designed with a shoulder strap and handles, it also has a spacious two-part interior with multiple compartments.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Outer: 100% leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;One internal zip pocket, two internal pouches&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Two shoulder straps&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 27 x 41 x 13cm / 10.6 x 16.1 x 5.1 inches&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'J by Jasper Conran Black and leopard print leather tote bag', 'From our exclusive J by Jasper Conran collection, this bag will add a statement finish to any look. Combining a black leather base with a textured leopard print front, it is finished with luxe, gold plated hardware. Designed with a shoulder strap and hand', ''),
(56, 1, 'Fiorelli Taupe ''Mia'' grab bag', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From Fiorelli, this classic grab bag is perfect for chic daytime accessorising. Featuring a spacious three-part interior with multiple compartments, it is finished with signature gold plated hardware and a branded charm for added appeal.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Outer: 100% polyurethane&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;One external pocket, one internal zip pocket, two internal pouches&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Two grab handles&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Zip top fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 24 x 25 x 8cm / 9.4 x 9.8 x 3.1 inches&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Fiorelli Taupe ''Mia'' grab bag', 'From Fiorelli, this classic grab bag is perfect for chic daytime accessorising. Featuring a spacious three-part interior with multiple compartments, it is finished with signature gold plated hardware and a branded charm for added appeal.\r\n\r\nOuter: 100% po', ''),
(57, 1, 'Floozie by Frost French Cream straw spot print kettle bag', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From Floozie by Frost French, this staple kettle bag will make a feminine everyday companion. Featuring a straw-effect and a playful spotted print, it is finished with a spacious interior and multiple compartments, great for keeping essentials secure.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Outer: 100% polypropylene&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Trim: 100% polyurethane&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;One external pocket, one internal zip pocket, two internal pouches&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Two grab handles&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Zip top fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 24 x 32 x 12cm / 9.4 x 12.5 x 4.7 inches&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Floozie by Frost French Cream straw spot print kettle bag', 'From Floozie by Frost French, this staple kettle bag will make a feminine everyday companion. Featuring a straw-effect and a playful spotted print, it is finished with a spacious interior and multiple compartments, great for keeping essentials secure.\r\n\r\n', ''),
(50, 1, 'INC International Concepts Picadilly Pouch, Only at Macy''s', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, helvetica, clean, sans-serif; font-size: 13px;&quot;&gt;So clutch. Adorned with a tiered tassel accent, INC International Concepts''s luxe fashion wristlet ups the ante on day-to-night style with a roomy interior that effortlessly accommodates all your must-haves — from phone to ID.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'INC International Concepts Picadilly Pouch, Only at Macy''s', 'So clutch. Adorned with a tiered tassel accent, INC International Concepts''s luxe fashion wristlet ups the ante on day-to-night style with a roomy interior that effortlessly accommodates all your must-haves — from phone to ID.', ''),
(51, 1, 'MICHAEL Michael Kors Studio Mercer Large Zip Clutch', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, helvetica, clean, sans-serif; font-size: 13px;&quot;&gt;Refined lettering on rich pebble leather brings an understated elegance to this slim, pocket-lined clutch with wristlet strap from MICHAEL Michael Kors.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'MICHAEL Michael Kors Studio Mercer Large Zip Clutch', 'Refined lettering on rich pebble leather brings an understated elegance to this slim, pocket-lined clutch with wristlet strap from MICHAEL Michael Kors.', ''),
(52, 1, 'INC International Concepts Flaviee Clutch, Only at Macy''s', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: arial, helvetica, clean, sans-serif; font-size: 13px;&quot;&gt;A richly patterned exterior amplifies the dressy appeal of INC international Concepts'' date-night-ready clutch.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'INC International Concepts Flaviee Clutch, Only at Macy''s', 'A richly patterned exterior amplifies the dressy appeal of INC international Concepts'' date-night-ready clutch.', ''),
(59, 1, 'Faith Black suede hobo bag', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From our Faith collection, this chic hobo bag will make a welcome addition to everyday line ups. Fashioned from suede and adorned with gold-toned branding, the cotton-lined interior features three practical pockets for all manner of essentials.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Outer: 100% Suede&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% Cotton&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Internal zip pocket, two internal slip pockets&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Zip top fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 30 x 40 x 12cm / 12 x 15.75 x 4.75 inches&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Faith Black suede hobo bag', 'From our Faith collection, this chic hobo bag will make a welcome addition to everyday line ups. Fashioned from suede and adorned with gold-toned branding, the cotton-lined interior features three practical pockets for all manner of essentials.\r\n\r\nOuter: ', ''),
(60, 1, 'Fiorelli Tan Rosebury Hobo Bag', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The Rosebury hobo embraces a casual silhouette which hangs with a subtle slouch. Crafted to secure all your essentials with a magnetic strap closure, its perfect for everyday style.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Outer: PU&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;29x14.5x16.5 cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;One main compartment&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;One zipped pocket&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Two pouches&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Non-detachable strap&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Magdot fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Non-adjustable strap&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Fiorelli Tan Rosebury Hobo Bag', 'The Rosebury hobo embraces a casual silhouette which hangs with a subtle slouch. Crafted to secure all your essentials with a magnetic strap closure, its perfect for everyday style.\r\n\r\nOuter: PU\r\nLining: polyester\r\n29x14.5x16.5 cm\r\nOne main compartment\r\nO', ''),
(61, 1, 'Mantaray Tan plaited hobo shoulder bag', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This tan hobo bag from Mantaray lends a relaxed touch to everyday looks. With plenty of room for essentials and neat outer compartments for easy access, this spacious accessory features plait-detail zips and a single carry handle.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Outer: 100% polyurethane&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Inner: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Three external pockets, one internal slip pocket, one internal zip pocket&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;One shoulder handle&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Zip fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 36 x 43 x 12.5cm/14 x 16 x 5 inches&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Mantaray Tan plaited hobo shoulder bag', 'This tan hobo bag from Mantaray lends a relaxed touch to everyday looks. With plenty of room for essentials and neat outer compartments for easy access, this spacious accessory features plait-detail zips and a single carry handle.\r\n\r\nOuter: 100% polyureth', ''),
(62, 1, 'Good for the Sole Gold metallic flower applique wide fit slip-on shoes', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;These simple yet stylish slip-on shoes from Good For The Sole will make a pretty update to an accessory collection. In an eye-catching gold metallic hue, they feature delicate cut-out details with a flower applique and have been designed in a wide fit with a cushioned leather sock for added comfort.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wide fit&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: man made materials&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: man made materials / leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: man made materials&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Good for the Sole Gold metallic flower applique wide fit slip-on shoes', 'These simple yet stylish slip-on shoes from Good For The Sole will make a pretty update to an accessory collection. In an eye-catching gold metallic hue, they feature delicate cut-out details with a flower applique and have been designed in a wide fit wit', ''),
(63, 1, 'Red Herring Light blue bow slip-on shoes', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From Red Herring, these elegant slip on shoes feature a smooth light blue leatherette exterior with a contrasting black toe cap. Finished with a bow for added detail, they will team well with skinny jeans and a chunky knitted cardigan for a casual seasonal look.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: man made materials&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: man made materials&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: man made materials&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Red Herring Light blue bow slip-on shoes', 'From Red Herring, these elegant slip on shoes feature a smooth light blue leatherette exterior with a contrasting black toe cap. Finished with a bow for added detail, they will team well with skinny jeans and a chunky knitted cardigan for a casual seasona', ''),
(64, 1, 'Mantaray Navy cut-out bow applique flat shoes', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;These versatile shoes from Mantaray are ideal for completing a casual look. A contemporary update to a footwear collection, their stylish cut-out design is finished in navy and features bow detailing on the toe.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: man made materials&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: man made materials&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: man made materials&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Mantaray Navy cut-out bow applique flat shoes', 'These versatile shoes from Mantaray are ideal for completing a casual look. A contemporary update to a footwear collection, their stylish cut-out design is finished in navy and features bow detailing on the toe.\r\n\r\nUpper: man made materials\r\nLining: man m', ''),
(65, 1, 'Call It Spring Tan ''Frogaut'' flat sandals', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From Call It Spring, these simple yet stylish sandals will make a chic addition to a summer wardrobe. In tan, they feature a comfortable cross-over strap with a small buckle fastening for a secure and preferred fit. Finished with a pointed toe, they will team effortlessly with off-duty weekend wear.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: textile&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: man made materials&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: man made materials&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Call It Spring Tan ''Frogaut'' flat sandals', 'From Call It Spring, these simple yet stylish sandals will make a chic addition to a summer wardrobe. In tan, they feature a comfortable cross-over strap with a small buckle fastening for a secure and preferred fit. Finished with a pointed toe, they will ', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(66, 1, 'Carvela Natural ''Kipper'' flat sandals', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Natural ''Kipper'' flat sandals.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: synthetic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: synthetic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: synthetic&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Carvela Natural ''Kipper'' flat sandals', 'Natural ''Kipper'' flat sandals.\r\n\r\nUpper: synthetic\r\nLining: synthetic\r\nSole: synthetic', ''),
(67, 1, 'Miss KG Black ''Ruby'' flat sandal', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Black ''Ruby'' flat sandal.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: Synthetic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: Synthetic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: Synthetic&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Miss KG Black ''Ruby'' flat sandal', 'Black ''Ruby'' flat sandal.\r\n\r\nUpper: Synthetic\r\nLining: Synthetic\r\nSole: Synthetic', ''),
(68, 1, 'Lands'' End Brown renata laced winter boots', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Super-warm winter boots with a glamorous, apres-ski twist, thanks to their luxurious faux fur collar and criss-cross lacing. Water-resistant suede, a fleece lining and 400-gram insulation add cold-weather-friendly credentials.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Boots to take you through winter in style&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Plush faux fur collar; cosy fleece lining&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lace-up front lets you customise the fit&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Side zip for easy on/off&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;400-gram insulation keeps feet super-warm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Tall boots - shaft is approx. 26.5cm/10.5 ins high in US size 7.5&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% suede&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Lands'' End Brown renata laced winter boots', 'Super-warm winter boots with a glamorous, apres-ski twist, thanks to their luxurious faux fur collar and criss-cross lacing. Water-resistant suede, a fleece lining and 400-gram insulation add cold-weather-friendly credentials.\r\n\r\nBoots to take you through', ''),
(69, 1, 'Ravel Tan ''Markham'' ladies knee high riding boots', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This versatile pair of Knee high riding boots is undoubtedly a winter essential. Boasting a soft leather upper with a wrap around buckle feature and low flat heel.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Heel height: 3cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: textile&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: man made&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Buckle feature&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Round toe&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Slip on&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Ravel Tan ''Markham'' ladies knee high riding boots', 'This versatile pair of Knee high riding boots is undoubtedly a winter essential. Boasting a soft leather upper with a wrap around buckle feature and low flat heel.\r\n\r\nHeel height: 3cm\r\nUpper: leather\r\nLining: textile\r\nSole: man made\r\nBuckle feature\r\nRound', ''),
(70, 1, 'Carvela Comfort Black ''Rani'' mid heel ankle boot', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Black ''Rani'' mid heel ankle boot.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: fabric / synthetic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: synthetic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Heel height: 50mm/2&quot;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Carvela Comfort Black ''Rani'' mid heel ankle boot', 'Black ''Rani'' mid heel ankle boot.\r\n\r\nUpper: leather\r\nLining: fabric / synthetic\r\nSole: synthetic\r\nHeel height: 50mm/2&quot;', ''),
(71, 1, 'Head Over Heels by Dune Black ''Addyson'' pointed toe high heel court shoe', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The classic court shoe is an essential heel and every woman s best friend. This timeless style features a sophisticated pointed toe and stiletto heel. This supremely versatile style is perfect for both work or play.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Heel height: high (86mm to 100mm)&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: glitter&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: synthetic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: synthetic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wipe Clean&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Head Over Heels by Dune Black ''Addyson'' pointed toe high heel court shoe', 'The classic court shoe is an essential heel and every woman s best friend. This timeless style features a sophisticated pointed toe and stiletto heel. This supremely versatile style is perfect for both work or play.\r\n\r\nHeel height: high (86mm to 100mm)\r\nU', ''),
(72, 1, 'Head Over Heels by Dune Black ''Opera'' mixed material heeled ankle boot', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This striking mixed material ankle boot makes a sleek wardrobe staple. It features a high stiletto heel and an eye catching mixed material design. The back zip fastening and almond toe complete this feminine style.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Heel height: high (86mm to 100mm)&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: micro fibre&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: synthetic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: synthetic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wipe Clean&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Head Over Heels by Dune Black ''Opera'' mixed material heeled ankle boot', 'This striking mixed material ankle boot makes a sleek wardrobe staple. It features a high stiletto heel and an eye catching mixed material design. The back zip fastening and almond toe complete this feminine style.\r\n\r\nHeel height: high (86mm to 100mm)\r\nUp', ''),
(73, 1, 'Head Over Heels by Dune Black ''Orlagh'' stretch detail high heel ankle boot', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Up the stakes of your boot collection with this chic ankle boot. Showcasing a slim high heel, pointed toe and inside zip fastening. The stretch panels and pull up tab complete this dressy style.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Heel height: medium (40mm to 85 mm)&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: micro fibre&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: synthetic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: synthetic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wipe Clean&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Head Over Heels by Dune Black ''Orlagh'' stretch detail high heel ankle boot', 'Up the stakes of your boot collection with this chic ankle boot. Showcasing a slim high heel, pointed toe and inside zip fastening. The stretch panels and pull up tab complete this dressy style.\r\n\r\nHeel height: medium (40mm to 85 mm)\r\nUpper: micro fibre\r\n', ''),
(74, 1, 'Help for Heroes Women''s Pearl and Copper Leather ID Bracelet', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This leather bracelet comes in pearl and copper leather, with a rose gold plated stainless steel ID bar with Help for Heroes logo in black enamel. The bracelet fastens with magnetic clasp.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Available in three different sizes&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Avoid spraying with perfume and other chemicals and remove before swimming, showering or cleaning&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Help for Heroes Women''s Pearl and Copper Leather ID Bracelet', 'This leather bracelet comes in pearl and copper leather, with a rose gold plated stainless steel ID bar with Help for Heroes logo in black enamel. The bracelet fastens with magnetic clasp.\r\n\r\nAvailable in three different sizes\r\nAvoid spraying with perfume', ''),
(75, 1, 'Love Story Sterling silver ladies detailed bracelet', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This attractive ladies bracelet, created in sterling silver, features a modern beautiful design. Secured with a lobster claw clasp, this bracelet creates the perfect gift for any lady! Or why not treat yourself?.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sterling silver&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Length: 7.5''/19cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lobster clasp&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Beautiful gift packaging&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Love Story Sterling silver ladies detailed bracelet', 'This attractive ladies bracelet, created in sterling silver, features a modern beautiful design. Secured with a lobster claw clasp, this bracelet creates the perfect gift for any lady! Or why not treat yourself?.\r\n\r\nSterling silver\r\nLength: 7.5''/19cm\r\nLob', ''),
(76, 1, 'Love Story 9ct Yellow Gold Ladies Bracelet', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This desirable bracelet hand-crafted within the luxurious radiance of gleaming 9ct gold, is as timeless and as individual as the lady who wear it. This distinctive bracelet features two open hearts double-sided for the ultimate finishing touch, held romantically together with a 9ct gold rope chain. The bracelet is 7.5''/19cm length, and secures with a fashionable and sturdy lobster claw clasp. A precious gift of love and romance. Gift boxed for your pleasure. Matching earrings available for the complete finishing touch! Fabulous!.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;9ct Gold&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bracelet Length: 7.5''/19cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Beautiful Gift Packaging&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Love Story 9ct Yellow Gold Ladies Bracelet', 'This desirable bracelet hand-crafted within the luxurious radiance of gleaming 9ct gold, is as timeless and as individual as the lady who wear it. This distinctive bracelet features two open hearts double-sided for the ultimate finishing touch, held roman', ''),
(77, 1, 'Precious Moments 9ct Gold Initial ''S'' Ladies Pendant', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This delightful ladies initial ''S'' Pendant, is a personal and individual gift choice. Created in 9ct Gold with a modern font design, so perfect for everyday wear, the pendant is displayed on a fine 18''/45cm 9ct Gold neck chain, and secures with a spring action clasp.Complete with gift box.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;9ct Yellow Gold&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dimension: 8x12mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Chain Length: 18''/46cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Beautiful Gift Packaging&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Precious Moments 9ct Gold Initial ''S'' Ladies Pendant', 'This delightful ladies initial ''S'' Pendant, is a personal and individual gift choice. Created in 9ct Gold with a modern font design, so perfect for everyday wear, the pendant is displayed on a fine 18''/45cm 9ct Gold neck chain, and secures with a spring a', ''),
(78, 1, 'No. 1 Jenny Packham Designer rose gold peacock feather pendant necklace', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Matching item available&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fastening: lobster clasp fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dimensions: 20mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Drop Dimensions: 65mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Jewellery type: costume jewellery&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Material: rose gold plated metal and crystal&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'No. 1 Jenny Packham Designer rose gold peacock feather pendant necklace', 'Matching item available\r\n\r\nFastening: lobster clasp fastening\r\nDimensions: 20mm\r\nDrop Dimensions: 65mm\r\nJewellery type: costume jewellery\r\nMaterial: rose gold plated metal and crystal', ''),
(79, 1, 'Precious Moments Sterling Silver and Yellow Rhodium Medical Alert ''Caduceus'' Ladies Pendant Locket. ''DIABETIC''', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;A fabulous jewellery designed locket, not only distinguished for its beauty, but also for illustrating the renowned medical alert symbol the ''Caduceus'' a timeless image associated with healing from Greek mythology. This elegant ladies locket features a heart shaped shell designed in polished Sterling Silver, with the ''Caduceus'' symbol highlighted in a rich yellow rhodium finish, the locket opens to reveal the perfect place to store a name or contact number in an emergency, the reverse of the locket will be laser engraved with the wearers medical condition ''DIABETIC'' ensuring vital information is at hand in any critical situation, giving peace of mind and assurance for keeping them protected, whereever life takes you. A fine Sterling Silver 18''/45cm neck chain holds the locket perfectly, and secures with a spring action clasp. The lockets depth is 18mmComplete with gift box.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sterling Silver With Yellow Rhodium Detail&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dimension: 18mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Chain Length: 18''/46cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Beautiful Gift Packaging&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Precious Moments Sterling Silver and Yellow Rhodium Medical Alert ''Caduceus'' Ladies Pendant Locket. ''DIABETIC''', 'A fabulous jewellery designed locket, not only distinguished for its beauty, but also for illustrating the renowned medical alert symbol the ''Caduceus'' a timeless image associated with healing from Greek mythology. This elegant ladies locket features a he', ''),
(80, 1, 'Precious Moments Sterling Silver Initial ''E'' Ladies Pendant', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This delightful ladies initial ''E'' pendant, is a personal and individual gift choice. Created in Sterling Silver, with a modern font design, so perfect for everyday wear, the pendant is displayed on a fine 18''/45cm Sterling Silver neck chain, and secures with a spring action clasp.Complete with gift box.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sterling Silver&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dimension: 10x11mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Chain Length: 18''/46cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Beautfiful Gift Packaging&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Precious Moments Sterling Silver Initial ''E'' Ladies Pendant', 'This delightful ladies initial ''E'' pendant, is a personal and individual gift choice. Created in Sterling Silver, with a modern font design, so perfect for everyday wear, the pendant is displayed on a fine 18''/45cm Sterling Silver neck chain, and secures ', ''),
(81, 1, 'Fossil Ladies rose gold-tone signature pendant', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;We have refreshed the classic pendant with a dainty disc that is signature to Fossil. Designed to add a chic twist to your look in polished steel with clear crystal details.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model reference: JF01438791&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Case material: stainless steel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Stone type: clear glass crystals&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Crystal/Glass type: cubic zerconia/glass&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1 year guarantee&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Packaging: fossil tin with cloth bag&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1% cubic zirconia, 29% glass, 70% steel&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Fossil Ladies rose gold-tone signature pendant', 'We have refreshed the classic pendant with a dainty disc that is signature to Fossil. Designed to add a chic twist to your look in polished steel with clear crystal details.\r\n\r\nModel reference: JF01438791\r\nCase material: stainless steel\r\nStone type: clear', ''),
(82, 1, 'Hot Diamonds Small circle pendant silver', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This elegant sterling silver pendant from Hot Diamonds has an entwined circle design with a single diamond detail.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wipe Clean&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Hot Diamonds Small circle pendant silver', 'This elegant sterling silver pendant from Hot Diamonds has an entwined circle design with a single diamond detail.\r\n\r\nWipe Clean', ''),
(83, 1, 'Joe Browns Red felt flower pin', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This beautiful felt flower pin is the perfect partner to jazz up your outfit. Length: 4cm&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% Polyester&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Joe Browns Red felt flower pin', 'This beautiful felt flower pin is the perfect partner to jazz up your outfit. Length: 4cm\r\n\r\n100% Polyester', ''),
(84, 1, 'Joe Browns Multi coloured crochet flower pin', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Bring colourful floral charm to your coat or blazer lapel with this gorgeous hand-crocheted flower pin. Length: 7cm&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% Acrylic&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Joe Browns Multi coloured crochet flower pin', 'Bring colourful floral charm to your coat or blazer lapel with this gorgeous hand-crocheted flower pin. Length: 7cm\r\n\r\n100% Acrylic', ''),
(85, 1, 'Joe Browns Red button flower pin', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Brighten up any coat or blazer with this beautiful felt flower pin, complete with button embellishment. Length: 6cm&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% Polyester&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Joe Browns Red button flower pin', 'Brighten up any coat or blazer with this beautiful felt flower pin, complete with button embellishment. Length: 6cm\r\n\r\n100% Polyester', ''),
(86, 1, 'Indulgence Multicoloured geo print summer dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Exclusively by Indulgence, Geo printed sleeveless V -neck summer dress wear with funky flats sandals.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Length 92cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;95% Viscose 5% Elastane&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;30C Machine Wash&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model is wearing size 8&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model is 5ft 9&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Indulgence Multicoloured geo print summer dress', 'Exclusively by Indulgence, Geo printed sleeveless V -neck summer dress wear with funky flats sandals.\r\n\r\nLength 92cm\r\n95% Viscose 5% Elastane\r\n30C Machine Wash\r\nModel is wearing size 8\r\nModel is 5ft 9', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(87, 1, 'Lands'' End Blue women''s plus patterned keyhole dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Simply styled, there''s an elegance to this one. The gracefully shirred keyhole neckline closes with a single button at the front and the longer skirt has a lovely, feminine sweep. You could wear this with a pair of sandals on a hot summer''s day or dress it up with a pair of heels for any occasion. Your perfect go-to summer dress.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Soft, floaty fabric&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Neckline is softly shirred with a keyhole opening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;No waist seam, so the dress flows from shoulder to hem&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Graceful, feminine flared skirt&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Self-fabric belt is included&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;120.5cm/47.5&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;57% cotton/38% viscose-modal/5% elastane&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine wash&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Lands'' End Blue women''s plus patterned keyhole dress', 'Simply styled, there''s an elegance to this one. The gracefully shirred keyhole neckline closes with a single button at the front and the longer skirt has a lovely, feminine sweep. You could wear this with a pair of sandals on a hot summer''s day or dress i', ''),
(88, 1, 'Lands'' End Blue women''s regular broderie anglaise open back dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From the front, it''s a demure dream ? ballet neckline, princess seams on the bodice, tucked skirt. Turn around and ? surprise! It''s a sundress. But a sundress for a grown woman, with a back that''s high enough and straps that are wide enough. Feminine, fun and just right for a special occasion.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Beautiful all-cotton eyelet fabric&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Princess seams shape the bodice&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Pretty open back&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Tucks add pleasing fullness to the skirt&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Full cotton lining&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;101.5cm/40&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% cotton&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine wash&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Lands'' End Blue women''s regular broderie anglaise open back dress', 'From the front, it''s a demure dream ? ballet neckline, princess seams on the bodice, tucked skirt. Turn around and ? surprise! It''s a sundress. But a sundress for a grown woman, with a back that''s high enough and straps that are wide enough. Feminine, fun', ''),
(89, 1, 'Yumi Grey Polka Dot Print Day Dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Yumi Polka Dot Print Day Dress. In a retro polka dot print, make like a fifties pin-up in this pretty day dress, featuring a V-neckline, wide straps, a concealed back zip and flared skirt.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Zip fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;68% viscose 22%polyamide 10% linen&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine wash 30 c&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Yumi Grey Polka Dot Print Day Dress', 'Yumi Polka Dot Print Day Dress. In a retro polka dot print, make like a fifties pin-up in this pretty day dress, featuring a V-neckline, wide straps, a concealed back zip and flared skirt.\r\n\r\nZip fastening\r\n68% viscose 22%polyamide 10% linen\r\nMachine wash', ''),
(90, 1, 'Debut Light pink multiway evening dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This beautiful light pink dress from Debut has been designed in a versatile multiway style to suit a variety of formal occasions. Whether draped into kimono sleeves or twisted in a halter neck, it can be styled into eight unique and elegant looks. Team with a clutch bag and simple jewellery for a graceful finish.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Shell: 95% polyester, 5% elastane&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Professional dry clean only&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model wears: size 8&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Height: 173cm / 5''8&quot; Bust: 86cm / 34&quot; WAIST: 63cm / 25&quot; Hips: 86 cm / 34&quot;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Debut Light pink multiway evening dress', 'This beautiful light pink dress from Debut has been designed in a versatile multiway style to suit a variety of formal occasions. Whether draped into kimono sleeves or twisted in a halter neck, it can be styled into eight unique and elegant looks. Team wi', ''),
(91, 1, 'Butterfly by Matthew Williamson Navy blue ''Isabella'' Bardot style evening dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From Matthew Williamson''s exclusive ''Butterfly'' collection, this dress is a perfect option for formal occasions. In elegant midnight blue, the chiffon skirt drapes beautifully for a flattering silhouette while the off-the-shoulder Bardot style neckline adds a touch of vintage-inspired glamour. It is finished with fine pleat detailing on the bodice and a sparkling beaded waistband.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Back zip with hook and eye fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dry clean only&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model wears size 10&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model height: 5''10&quot;/178cm&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Butterfly by Matthew Williamson Navy blue ''Isabella'' Bardot style evening dress', 'From Matthew Williamson''s exclusive ''Butterfly'' collection, this dress is a perfect option for formal occasions. In elegant midnight blue, the chiffon skirt drapes beautifully for a flattering silhouette while the off-the-shoulder Bardot style neckline ad', ''),
(92, 1, 'No. 1 Jenny Packham Designer bronze sequin midi evening dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Sparkle the night away in this stunning midi dress from our exclusive designer No.1 by Jenny Packham, which comes in all over bronze sequins. In a short sleeved style, it features a gathered wrap over V neck.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Designed in a midi length, back measurement 107cm / 42.25 inches&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;V neck&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Form fitting&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Rear concealed zip and hook fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Shell: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dry clean only&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model wears: size 10&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model Height: 5''10&quot; , Bust: 32.5, Waist: 24&quot;, Hips: 35.5&quot;, Shoe: 6&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'No. 1 Jenny Packham Designer bronze sequin midi evening dress', 'Sparkle the night away in this stunning midi dress from our exclusive designer No.1 by Jenny Packham, which comes in all over bronze sequins. In a short sleeved style, it features a gathered wrap over V neck.\r\n\r\nDesigned in a midi length, back measurement', ''),
(93, 1, 'No. 1 Jenny Packham Designer black embellished shoulder evening maxi dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;You''re sure to stand out from this crowd in this gorgeous dress from our exclusive designer No.1 by Jenny Packham. It falls in a maxi length with embellished shoulders and a ruched sweetheart neckline.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Designed in a maxi length, back measurement: 147cm / 5.75 inches&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sweetheart neckline&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Form fitting&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cinched in waist&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Draped waistline&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Concealed rear zip fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Main: 95% polyester, 5% elastane&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model wears: size 8&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model Height: 5''9&quot;, Bust 32B, Waist 24&quot;, Hips 35&quot;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'No. 1 Jenny Packham Designer black embellished shoulder evening maxi dress', 'You''re sure to stand out from this crowd in this gorgeous dress from our exclusive designer No.1 by Jenny Packham. It falls in a maxi length with embellished shoulders and a ruched sweetheart neckline.\r\n\r\nDesigned in a maxi length, back measurement: 147cm', ''),
(94, 1, 'Pearce II Fionda Designer bright purple cowl neck evening dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Make a statement in this glamourous dress from Pearce II Fionda. It has a cowl neck with a form fitting style and comes in bright purple.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Designed in a knee length, back measurement: 95cm/ 37.5 inches&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cowl neck&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Form fitting&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cinched in waist&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Rear concealed zip fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Main: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model wears: size 10&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Pearce II Fionda Designer bright purple cowl neck evening dress', 'Make a statement in this glamourous dress from Pearce II Fionda. It has a cowl neck with a form fitting style and comes in bright purple.\r\n\r\nDesigned in a knee length, back measurement: 95cm/ 37.5 inches\r\nCowl neck\r\nForm fitting\r\nCinched in waist\r\nRear co', ''),
(95, 1, 'Diamond by Julien Macdonald Designer cream ruffled embellished prom dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This cream prom dress from the designer Star range by Julien Macdonald has a ruffled organza skirt with a net lining creating a wide hem. The bodice is boned with a sweetheart neckline and intricate bead embellishment along the trim.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Designed in a mini length, back measurement: 80cm / 13.5&quot;&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sweetheart neckline&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wide hemline&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;High waist&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Rear concealed zip and hook and eye fastening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Detachable straps&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bodice: 96% polyester, 4% elastane&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Trim: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Mesh: 100% nylon&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dry clean only&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model wears: size 10&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model Height: 5''9&quot;, Bust 34A&quot;, Waist 24&quot;, Hips 35.5&quot;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Diamond by Julien Macdonald Designer cream ruffled embellished prom dress', 'This cream prom dress from the designer Star range by Julien Macdonald has a ruffled organza skirt with a net lining creating a wide hem. The bodice is boned with a sweetheart neckline and intricate bead embellishment along the trim.\r\n\r\nDesigned in a mini', ''),
(96, 1, 'HotSquash Black Party Dress with Diagonal Sparkle in Clever Fabric', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Perfect for the party season, this sparkly little black dress has a secret; a high-tech Hotsquash fabric lining which will regulate your body temperature, is anti-odour &amp;amp; feels as soft as cotton against the skin. Feel great &amp;amp; look great.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HotSquash has 3 unique stylish Collections that you can search for on Debenhams.com: ThinHeat, CoolFresh and Clever Tech&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lined with technology fabric to regulate your body temperatureAdd a bit of sparkle to your day with this simple, sophisticated dress&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Hotsquash''s stylish Thinheat Collection is the solution whether you''re heading into the office, hibernating at home or partying the night away. Let the ''Warm'' heat generating tehnology do all the hard work for you, helping you look good and feel good&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Length 100 cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;80% Polyester 20% Tencel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Handwash only&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model wears size UK 8/EU 36/AUS 8/US 4&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model height:5''10/178 cm&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'HotSquash Black Party Dress with Diagonal Sparkle in Clever Fabric', 'Perfect for the party season, this sparkly little black dress has a secret; a high-tech Hotsquash fabric lining which will regulate your body temperature, is anti-odour &amp; feels as soft as cotton against the skin. Feel great &amp; look great.\r\n\r\nHotSqu', ''),
(97, 1, 'Phase Eight Shannon Layered Dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From Collection 8 - a range of beautiful limited edition evening dresses. This stunning full-length dress features a flattering fishtail hem for added shape and comes in a tiered chiffon and satin design with a semi-sheer yoke. Complete with a centre-back zip fastening.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Length: Full length/Maxi&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Collection: collection8&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dress Style: Default&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: Size 10&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Material: 100% Polyester / 100% Polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 97% Polyester 3% Elastane&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dry Clean&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Phase Eight Shannon Layered Dress', 'From Collection 8 - a range of beautiful limited edition evening dresses. This stunning full-length dress features a flattering fishtail hem for added shape and comes in a tiered chiffon and satin design with a semi-sheer yoke. Complete with a centre-back', ''),
(98, 1, 'Joe Browns Turquoise truly tempting beaded dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Get ready to sparkle this party season in this stunning hand-embellished dress. Featuring a gorgeous scalloped hemline and an intricate beaded trim neckline, you''ll bring a glamorous edge to every soiree in this number. Approx Length: 94cm&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Body 100% Polyamide / Lining 100% Polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Do not wash&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Do not iron&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Do not bleach&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dry clean only&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Do not tumble dry&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Joe Browns Turquoise truly tempting beaded dress', 'Get ready to sparkle this party season in this stunning hand-embellished dress. Featuring a gorgeous scalloped hemline and an intricate beaded trim neckline, you''ll bring a glamorous edge to every soiree in this number. Approx Length: 94cm\r\n\r\nBody 100% Po', ''),
(99, 1, 'Phase Eight Collection 8 Esmerelda beaded dress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From Collection 8 - a range of beautiful limited edition evening dress. This show-stopping evening dress is cut to sit at the knee and features a striking cape effect at the sleeves. Elaborately finished with leaf-style beading and sequin details.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Length: Full length/Maxi&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Collection: collection 8&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: Size 10&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dry clean&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Phase Eight Collection 8 Esmerelda beaded dress', 'From Collection 8 - a range of beautiful limited edition evening dress. This show-stopping evening dress is cut to sit at the knee and features a striking cape effect at the sleeves. Elaborately finished with leaf-style beading and sequin details.\r\n\r\nLeng', ''),
(100, 1, 'Gabor Beige ''Helen'' women''s sports trainers', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The Gabor Helen are a stylish pair of practical women''s sports shoes with leather uppers and lace fastenings.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fastening: lace up&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fit: D fitting&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: nubuck&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: leather&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Gabor Beige ''Helen'' women''s sports trainers', 'The Gabor Helen are a stylish pair of practical women''s sports shoes with leather uppers and lace fastenings.\r\n\r\nFastening: lace up\r\nFit: D fitting\r\nUpper: nubuck\r\nLining: leather', ''),
(101, 1, 'Merrell Black ''Siren Sport'' Gore-Tex Womens Hiking Shoes', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The Merrell Siren Sport Gore-Tex womens hiking shoes are ready to face weather every storm. Crafted from synthetic leather with a Gore-Tex membrane, they allow feet to breathe while keeping them dry. Underfoot, Merrells QForm Comfort midsoles provide womens specific stride-sequenced cushioning. These shoes are kept securely fastened during wear thanks to their practical and on-trend lace up fronts.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fastening: lace&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fit: standard&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: synthetic/textile&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: textile&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Merrell Black ''Siren Sport'' Gore-Tex Womens Hiking Shoes', 'The Merrell Siren Sport Gore-Tex womens hiking shoes are ready to face weather every storm. Crafted from synthetic leather with a Gore-Tex membrane, they allow feet to breathe while keeping them dry. Underfoot, Merrells QForm Comfort midsoles provide wome', ''),
(102, 1, 'Pikolinos Tan ''Santos'' Mens Casual Suede Shoes', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The Pikolinos Santos are a stylish pair of casual men''s shoes that have been manufactured from durable leather and feature secure lace fastenings.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fastening: lace up&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fit: standard&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: suede&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: leather/textile&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Pikolinos Tan ''Santos'' Mens Casual Suede Shoes', 'The Pikolinos Santos are a stylish pair of casual men''s shoes that have been manufactured from durable leather and feature secure lace fastenings.\r\n\r\nFastening: lace up\r\nFit: standard\r\nUpper: suede\r\nLining: leather/textile', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(103, 1, 'Pikolinos Tan ''Freeway'' mens casual leather shoes', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Pikolinos Freeway shoes have incredibly detailed stitching on the upper leather material. The leather lining and the perforations of these shoes gives them maximum breathability.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fastening: lace up&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fit: standard&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: leather&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Pikolinos Tan ''Freeway'' mens casual leather shoes', 'Pikolinos Freeway shoes have incredibly detailed stitching on the upper leather material. The leather lining and the perforations of these shoes gives them maximum breathability.\r\n\r\nFastening: lace up\r\nFit: standard\r\nUpper: leather\r\nLining: leather', ''),
(104, 1, 'Barker Multi-Coloured ''Haig'' mens brown leather derby shoes', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;A modern take on the classic toe cap derby, the Barker Haig mens cedar brown leather shoes are detailed with hole-punched brogue detailing and navy suede or paisley laser panels. In a wider (G) fitting, theyre set on Goodyear welted soles to extend their longevity.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fastening: lace up&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fit: G fitting&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: leather&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Barker Multi-Coloured ''Haig'' mens brown leather derby shoes', 'A modern take on the classic toe cap derby, the Barker Haig mens cedar brown leather shoes are detailed with hole-punched brogue detailing and navy suede or paisley laser panels. In a wider (G) fitting, theyre set on Goodyear welted soles to extend their ', ''),
(105, 1, 'Lotus Brown hi shine leather ''Edward'' mens shoes', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;For those that appreciate premium quality and exceptional fitting footwear that reflects true craftsmanship, look no further than the Lotus Goodyear Welted range. This new collection for 2015 adopts this traditional way of making shoes to offer footwear that boasts unrivalled comfort and longevity.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fit: standard&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: leather&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Lotus Brown hi shine leather ''Edward'' mens shoes', 'For those that appreciate premium quality and exceptional fitting footwear that reflects true craftsmanship, look no further than the Lotus Goodyear Welted range. This new collection for 2015 adopts this traditional way of making shoes to offer footwear t', ''),
(106, 1, 'Frank Wright Navy Canvas ''Telford'' mens derby shoes', '&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: canvas&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: man made&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Casual styling&lt;/li&gt;&lt;/ul&gt;', '', 'Frank Wright Navy Canvas ''Telford'' mens derby shoes', 'Upper: canvas\r\nLining: leather\r\nSole: man made\r\nCasual styling', ''),
(107, 1, 'Frank Wright Navy Canvas ''Barrow'' mens derby boots', '&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Upper: canvas&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: man made&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Desert boots&lt;/li&gt;&lt;/ul&gt;', '', 'Frank Wright Navy Canvas ''Barrow'' mens derby boots', 'Upper: canvas\r\nLining: leather\r\nSole: man made\r\nDesert boots', ''),
(108, 1, 'Maine New England Navy tartan checked regular fit shirt', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This long sleeved shirt from Maine brings comfort and traditional style to a smart-casual wardrobe. Made from pure cotton, its irresistibly soft design is finished in navy and features a bold tartan check. Also available in big and tall sizes.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% cotton&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Long sleeves&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Regular fit&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Double cuff&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Button down collar&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Left chest pocket&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Tumble dry safe&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model wears size S&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model height: 6''2''''/188cm&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Maine New England Navy tartan checked regular fit shirt', 'This long sleeved shirt from Maine brings comfort and traditional style to a smart-casual wardrobe. Made from pure cotton, its irresistibly soft design is finished in navy and features a bold tartan check. Also available in big and tall sizes.\r\n\r\n100% cot', ''),
(109, 1, 'Levi''s Grey checked button down shirt', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This button down shirt from Levi''s® is a smart update to a man''s off-duty wardrobe. Perfect for creating a stylish weekend look, it features a versatile grey checked print and glossy button-down detailing.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% cotton&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model wears size M&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model height: 6''1''''/185.5cm&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Levi''s Grey checked button down shirt', 'This button down shirt from Levi''s® is a smart update to a man''s off-duty wardrobe. Perfect for creating a stylish weekend look, it features a versatile grey checked print and glossy button-down detailing.\r\n\r\n100% cotton\r\nMachine washable\r\nModel wears siz', ''),
(110, 1, 'Fred Perry White tipped polo shirt', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This Fred Perry polo shirt is a stylish upgrade to a weekend wardrobe. Made purely from cotton, it features the signature tipped trim on the collar and is finished with the brand''s iconic laurel wreath embroidered on the chest.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% cotton&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Regular fit&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Polo neck&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Embroidered logo&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Tipped collar&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Fred Perry White tipped polo shirt', 'This Fred Perry polo shirt is a stylish upgrade to a weekend wardrobe. Made purely from cotton, it features the signature tipped trim on the collar and is finished with the brand''s iconic laurel wreath embroidered on the chest.\r\n\r\n100% cotton\r\nRegular fit', ''),
(111, 1, 'Fred Perry Blue logo embroidered twin tipped regular fit polo shirt', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From Fred Perry, this classic polo shirt references the sporting heritage that defines the brand with its contrasting tipped collar and sleeve design. In a deep navy hue, this staple piece is finished with the signature embroidered laurel wreath logo on the chest for added appeal.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Regular fit&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Polo neck&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Laurel wreath logo&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Three button neck&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% cotton&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model wears size M&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model height: 6''1''''/185.5cm&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Fred Perry Blue logo embroidered twin tipped regular fit polo shirt', 'From Fred Perry, this classic polo shirt references the sporting heritage that defines the brand with its contrasting tipped collar and sleeve design. In a deep navy hue, this staple piece is finished with the signature embroidered laurel wreath logo on t', ''),
(112, 1, 'Tog 24 Dark grey marl exeter tcz sherpa zip hoody', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;A great looking men''s sherpa fleece lined hoody, the Exeter will keep you warm and comfortable. It features a great embroidery on the chest, while details include a durable metal zip with chunky zip puller, ribbed hem and cuffs, and a kangaroo pocket. A g&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;TCZ fabric - performance and comfort&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Insulated for added warmth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sherpa fleece lining&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Metal main zip with chunky puller&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Adjustable hood with shoe lace cord&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Kangaroo pocket&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Chest embroidery&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;60% Cotton, 40% Polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine wash cold. Do not tumble dry.&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Tog 24 Dark grey marl exeter tcz sherpa zip hoody', 'A great looking men''s sherpa fleece lined hoody, the Exeter will keep you warm and comfortable. It features a great embroidery on the chest, while details include a durable metal zip with chunky zip puller, ribbed hem and cuffs, and a kangaroo pocket. A g', ''),
(113, 1, 'Help for Heroes Black zipped hoody', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This generously-sized, soft pull-on hoody from Help for Heroes features grey branding and is a casual, easy-to-wear piece that''s perfect for cooler days.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Generous fit&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Long sleeve&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Crew neck&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;50% cotton, 50% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Help for Heroes Black zipped hoody', 'This generously-sized, soft pull-on hoody from Help for Heroes features grey branding and is a casual, easy-to-wear piece that''s perfect for cooler days.\r\n\r\nGenerous fit\r\nLong sleeve\r\nCrew neck\r\n50% cotton, 50% polyester\r\nMachine washable', ''),
(114, 1, 'Burton Montague burton 100% wool camel suit jacket', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Crafted from 100% Chinese wool, our Montague Burton tailoring collection merges a modern slim fitting silhouette with contemporary design and styling. This camel suit has a smart flannel finish, making it perfect for all year round. It is single breasted with two button fastening and notch lapel. It comes complete with a fully lined grey jacquard interior with signature orange piping, sculpted facing and black circular M lapel pin.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% Wool&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Do Not Wash&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Burton Montague burton 100% wool camel suit jacket', 'Crafted from 100% Chinese wool, our Montague Burton tailoring collection merges a modern slim fitting silhouette with contemporary design and styling. This camel suit has a smart flannel finish, making it perfect for all year round. It is single breasted ', ''),
(115, 1, 'Red Herring Black plain slim fit 1 button front dress wear suit jacket', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This black dress wear suit jacket offers grosgrain peak lapels and jetted side pockets. Perfect for the prom and party seasons ahead. The Red Herring slim fit suit delivers youthful high street trends at affordable prices and is designed for the fashion conscious in mind. Wear with mathcing suit trouser to complete the look.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1 button fastening, single breasted&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Peak lapel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;4 button cuff&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Left and right slant pockets plus breast pocket&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Centre vent&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Outer fabric: 68% polyester 32% viscose&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dry clean only&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Red Herring Black plain slim fit 1 button front dress wear suit jacket', 'This black dress wear suit jacket offers grosgrain peak lapels and jetted side pockets. Perfect for the prom and party seasons ahead. The Red Herring slim fit suit delivers youthful high street trends at affordable prices and is designed for the fashion c', ''),
(116, 1, 'OYSTER PERPETUAL COSMOGRAPH DAYTONA', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Rolex gents chronograph watch. Round rose gold plated &amp;amp; gunmetal two-tone case. Gunmetal dial. Outer minute track. 1 second chronograph timing up to 1 hour. 24 hour read-out. Date. Stainless steel rose gold plated &amp;amp; gunmetal two-tone bracelet. Water resistant to 50 metres. 2 year guarantee.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model reference: 1006.28&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Movement: chronograph&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dial shape: round&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Case dimensions: W 47.4 x D 12.6&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Water resistance: 50 metres&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 year guarantee&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Solid black presentation box with watch cushion and guarantee&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Two tone case &amp;amp; bracelet, outer minute track&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Strap material: stainless steel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Case material: alloy/brass&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Glass type: mineral glass&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'OYSTER PERPETUAL COSMOGRAPH DAYTONA', 'Rolex gents chronograph watch. Round rose gold plated &amp; gunmetal two-tone case. Gunmetal dial. Outer minute track. 1 second chronograph timing up to 1 hour. 24 hour read-out. Date. Stainless steel rose gold plated &amp; gunmetal two-tone bracelet. Wat', ''),
(117, 1, 'OYSTER PERPETUAL GMT-MASTER II', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This gents chronograph watch is brought to you from Rolex. It has a round rose gold plated case and a black dial set with rose gold coloured batons. The features include an outer minute track, chronograph eyes timing up to1 hour, 24 hour readout and a date. It has a black leather strap and is water resistant to 50 metres. 2 year guarantee.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model reference: 1075.28&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Brass&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Mineral glass&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Quartz&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dial shape: round&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;45x43x12&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Date function&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;50m water resistant&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 years guarantee&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Silver oxide battery&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'OYSTER PERPETUAL GMT-MASTER II', 'This gents chronograph watch is brought to you from Rolex. It has a round rose gold plated case and a black dial set with rose gold coloured batons. The features include an outer minute track, chronograph eyes timing up to1 hour, 24 hour readout and a dat', ''),
(118, 1, 'Casio Men''s orange ''G Shock'' premium chronograph watch ga-1000-4aer', '&lt;h1 class=&quot;catalog_link&quot; style=&quot;color: rgb(0, 0, 0); margin-bottom: 15px; padding: 0px; border: 0px; font-size: 34px; line-height: initial; font-style: italic; background-color: rgb(238, 238, 238); font-family: Georgia, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; font-size: 16px; clear: both; font-style: normal;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;div class=&quot;details-row clear_both&quot; style=&quot;clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This new model is the first in the G-Aviation lineup to be equipped with Twin Sensor capabilities, creating a watch that is perfectly matched to the needs of the modern aviator, both in terms of function and appearance. The watch fastens on a bright orange rubber strap, and matches the orange highlights on the black dial.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Resin strap&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Stainless steel and resin case&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Scratch resistant mineral glass&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Japanese Quartz&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Round dial&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;W 50.75mm x H 52mm x D 16.1mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Date and day display&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;200m water resistant&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 years guarantee&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 x SR927W Silver Oxide&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Neon Illuminator and Neo display, Shock resistant, Thermometer and digital compass, snooze feature&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;World Time, Countdown timer, 5 Daily alarms, Automatic calendar&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Casio presentation box&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/h1&gt;', '', 'Casio Men''s orange ''G Shock'' premium chronograph watch ga-1000-4aer', 'This new model is the first in the G-Aviation lineup to be equipped with Twin Sensor capabilities, creating a watch that is perfectly matched to the needs of the modern aviator, both in terms of function and appearance. The watch fastens on a bright orang', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(119, 1, 'Casio Men''s silver ''Edifice'' Chronograph radio controlled stainless steel watch ecw-m300edb-1ae', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;With a stainless steel case this Casio model ECW-M300EDB-1AER has multi band 6 which guarantees perfect timing by instantly obtaining an indication from radio transmitters in locations around the globe.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Stainless steel bracelet&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Stainless steel case&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Scratch resistant mineral glass&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Japanese Quartz&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Round dial&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;W 48.40mm x H 50.7mm x D 13.3mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Date and day display&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100m water resistant&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 years guarantee&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;CTL920 Lithium&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Full Auto LED Light and Neo display, Solar power, Multi band 6 and safety catch which helps prevent the watch from opening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;World Time, Radio Controlled, Stopwatch, 5 Daily Alarms, Snooze feature, Automatic calendar&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Casio presentation box&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Casio Men''s silver ''Edifice'' Chronograph radio controlled stainless steel watch ecw-m300edb-1ae', 'With a stainless steel case this Casio model ECW-M300EDB-1AER has multi band 6 which guarantees perfect timing by instantly obtaining an indication from radio transmitters in locations around the globe.\r\n\r\nStainless steel bracelet\r\nStainless steel case\r\nS', ''),
(120, 1, 'Armani Exchange Gents black IP plated case and bracelet watch ax1604', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Armani Exchange mens active chronograph watch with round black IP plated case, black IP plated bracelet fastened by deployment clasp. It features a stylish Black dial and a date function.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model reference: ax1604&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Black IP plated bracelet&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Black IP plated case&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Glass type: mineral&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Movement: chronograph&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dial shape: round&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Case dimensions: W 45mm x D 10mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;50m water resistant&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 years manufactures guarentee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Armani Exchange Gents black IP plated case and bracelet watch ax1604', 'Armani Exchange mens active chronograph watch with round black IP plated case, black IP plated bracelet fastened by deployment clasp. It features a stylish Black dial and a date function.\r\n\r\nModel reference: ax1604\r\nBlack IP plated bracelet\r\nBlack IP plat', ''),
(121, 1, 'Armani Exchange Men''s black textured link bracelet watch ax1214', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Our watches range by AX brings you this stainless steel bracelet watch with black textured centre links. This men''s watch is detailed with a date window and has a chronograph dial with polished time markers.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model reference: AX1214&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Strap/bracelet material: stainless steel/silicone bracelet&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Case material: stainless steel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Glass type: mineral glass&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Movement: quartz&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dial shape: round&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Case dimensions (width x height): 47 x 47mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;50m water resistant&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 years warranty&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Packaging: Armani Exchange box&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Armani Exchange Men''s black textured link bracelet watch ax1214', 'Our watches range by AX brings you this stainless steel bracelet watch with black textured centre links. This men''s watch is detailed with a date window and has a chronograph dial with polished time markers.\r\n\r\nModel reference: AX1214\r\nStrap/bracelet mate', ''),
(122, 1, 'Citizen Men''s Stainless Steel Satellite Wave GPS Chronograph Watch cc9030-51e', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Citizen breaks the boundaries in satellite technology once again with the Promaster Navihawk GPS in stainless steel with black dial and sapphire crystal. Featuring Satellite GPS Timekeeping Technology with synchronised time adjustment available in 40 time zones, the World''s fastest timekeeping signal reception speed from GPS navigation satellites - as quick as 3 seconds. World time in 27 cities, 1/20 second chronograph measuring up to 24 hours, perpetual calendar, pilot''s rotating slide rule bezel, daylight savings time indicator, power reserve indicator, light level power indicator, dual time, alarm and UTC Display. Supported by Citizen''s 5 year guarantee.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Stainless steel bracelet&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Stainless steel case&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sapphire crystal glass&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Eco-Drive Satellite GPS&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Round dial&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;47mm x 12mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Perpetual Calendar&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;200m Water Resistant&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;5 Year Guarantee&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Citizen Presentation Box&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Satellite GPS Timekeeping Technology with Worldwide Reception&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Time Adjustment Available in 27 Cities (40 Time Zones)&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Perpetual Calendar&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1/20 Second Chronograph&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Power Reserve Indicator&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Alarm and 3 Hand with Date&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Citizen Men''s Stainless Steel Satellite Wave GPS Chronograph Watch cc9030-51e', 'Citizen breaks the boundaries in satellite technology once again with the Promaster Navihawk GPS in stainless steel with black dial and sapphire crystal. Featuring Satellite GPS Timekeeping Technology with synchronised time adjustment available in 40 time', ''),
(123, 1, 'Citizen Men''s perpetual chronograph grey watch at4106-52x', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Citizen Eco-Drive with atomic timekeeping, the Perpetual Chrono A.T. This perpetual calendar alarm chronograph with day-date is radio-controlled in 5 time zones &amp;amp; also features an anti-reflective sapphire crystal.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model reference: AT4106-52X&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Strap/bracelet: stainless steel bracelet rose gold tone&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Case material: stainless steel rose gold tone&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Glass type: anti-reflective sapphire crystal&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Movement: chronogragh and radio-controlled&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dial shape: round&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Case diameter: 42mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Perpetual calendar&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;200m water resistant&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;5 years guarantee&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Battery: Eco-Drive. Fuelled by light. Any light. A watch that never needs a battery.&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Packaging: Citizen Box&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Alarm, power reserve indicator&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Citizen Men''s perpetual chronograph grey watch at4106-52x', 'Citizen Eco-Drive with atomic timekeeping, the Perpetual Chrono A.T. This perpetual calendar alarm chronograph with day-date is radio-controlled in 5 time zones &amp; also features an anti-reflective sapphire crystal.\r\n\r\nModel reference: AT4106-52X\r\nStrap', ''),
(124, 1, 'Ray-Ban Black RB8316 rectangle sunglasses', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Plenty of new school attitude is brought to the classic Ray-Ban look in these black rectangle shades. The designers logo patterns the temples, adding a daring touch to the otherwise archetypal sophistication.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lenses: polarised&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;EU filter: 3P&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bridge size: 18mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Temple size: 135mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Eye size: 62mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Material: metal&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Ray-Ban Black RB8316 rectangle sunglasses', 'Plenty of new school attitude is brought to the classic Ray-Ban look in these black rectangle shades. The designers logo patterns the temples, adding a daring touch to the otherwise archetypal sophistication.\r\n\r\nLenses: polarised\r\nEU filter: 3P\r\nBridge si', ''),
(125, 1, 'Ray-Ban Brown ''Clubmaster Wood'' RB3016M sunglasses', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Now available with a square wood frame, the classic clubmaster series defines what people love about Ray-Ban. Smoothly textured with a fine finish, the contemporary design is matched with a choice of green lenses, to complete the look.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lenses: non gradient&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;EU filter: 2N&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bridge size: 21mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Temple size: 145mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Eye size: 51mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Material: wood&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Ray-Ban Brown ''Clubmaster Wood'' RB3016M sunglasses', 'Now available with a square wood frame, the classic clubmaster series defines what people love about Ray-Ban. Smoothly textured with a fine finish, the contemporary design is matched with a choice of green lenses, to complete the look.\r\n\r\nLenses: non grad', ''),
(126, 1, 'Arnette Black ''Class Act'' AN4222 phantos sunglasses', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Arnette unisex black sunglasses ''Class Act'' featuring phantos frame and polar grey lenses.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;EU filter: 3P&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bridge width: 20mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Temple lenght: 140mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Eye width: 54mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Frame material: injected&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Frame shape: phantos&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Face shape: oval, round&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Arnette Black ''Class Act'' AN4222 phantos sunglasses', 'Arnette unisex black sunglasses ''Class Act'' featuring phantos frame and polar grey lenses.\r\n\r\nEU filter: 3P\r\nBridge width: 20mm\r\nTemple lenght: 140mm\r\nEye width: 54mm\r\nFrame material: injected\r\nFrame shape: phantos\r\nFace shape: oval, round', ''),
(127, 1, 'Arnette Blue ''Slickster'' AN4185 sunglasses', '&lt;h1 class=&quot;catalog_link&quot; style=&quot;color: rgb(0, 0, 0); margin-bottom: 15px; padding: 0px; border: 0px; font-size: 34px; line-height: initial; font-style: italic; background-color: rgb(238, 238, 238); font-family: Georgia, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; font-size: 16px; clear: both; font-style: normal;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Arnette male blue sunglasses ''Slickster'' featuring rectangle frame and mirror blue lenses.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; font-size: 16px; padding: 15px; font-style: normal;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lens types: mirror&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;EU filter: 3N&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bridge width: 16mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Temple lenght: 145mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Eye width: 59mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Frame material: nylon&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Frame shape: rectangle&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Face shape: oval, round&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;/h1&gt;', '', 'Arnette Blue ''Slickster'' AN4185 sunglasses', 'Arnette male blue sunglasses ''Slickster'' featuring rectangle frame and mirror blue lenses.\r\n\r\nLens types: mirror\r\nEU filter: 3N\r\nBridge width: 16mm\r\nTemple lenght: 145mm\r\nEye width: 59mm\r\nFrame material: nylon\r\nFrame shape: rectangle\r\nFace shape: oval, ro', ''),
(128, 1, 'Oakley Black OO6020 rectangle sunglasses', '&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lenses: polarised&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;EU Filter: 3P&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bridge size: 21mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Temple size: 135mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Eye size: 60mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Material: aluminium&lt;/li&gt;&lt;/ul&gt;', '', 'Oakley Black OO6020 rectangle sunglasses', 'Lenses: polarised\r\nEU Filter: 3P\r\nBridge size: 21mm\r\nTemple size: 135mm\r\nEye size: 60mm\r\nMaterial: aluminium', ''),
(129, 1, 'Oakley Grey OO9174 rectangle sunglasses', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;These striking grey rectangle sunglasses from Oakley have a prominent top frame in black contrasted by burnt orange lenses and detailing on the arm. Lightweight and designed for comfort, these sunglasses are attention-grabbers but still subtle enough to wear on any occasion.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lenses: polarised&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;EU filter: 3P&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bridge size: 10mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Temple size: 121mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Eye size: 66mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Material: metal&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Oakley Grey OO9174 rectangle sunglasses', 'These striking grey rectangle sunglasses from Oakley have a prominent top frame in black contrasted by burnt orange lenses and detailing on the arm. Lightweight and designed for comfort, these sunglasses are attention-grabbers but still subtle enough to w', ''),
(130, 1, 'Dolce &amp; Gabbana Matte pink DG2151 pilot sunglasses', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Dolce &amp;amp; Gabbana male matte pink sunglasses featuring pilot frame and dark grey lenses.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;EU filter: 3N&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bridge width: 15mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Temple lenght: 140mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Eye width: 59mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Frame material: metal&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Frame shape: pilot&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Face shape: oval, square, heart&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Dolce &amp; Gabbana Matte pink DG2151 pilot sunglasses', 'Dolce &amp; Gabbana male matte pink sunglasses featuring pilot frame and dark grey lenses.\r\n\r\nEU filter: 3N\r\nBridge width: 15mm\r\nTemple lenght: 140mm\r\nEye width: 59mm\r\nFrame material: metal\r\nFrame shape: pilot\r\nFace shape: oval, square, heart', ''),
(131, 1, 'Dolce &amp; Gabbana Black DG2151 aviator sunglasses', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Dolce &amp;amp; Gabbana male black and gunmetal sunglasses DG2151 featuring aviator frame and dark green lenses.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lenses: non gradient&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;EU filter: 3N&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bridge size: 15mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Temple size: 140mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Eye size: 59mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Material: metal&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lining: leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sole: resin&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable at 40 degrees&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Dolce &amp; Gabbana Black DG2151 aviator sunglasses', 'Dolce &amp; Gabbana male black and gunmetal sunglasses DG2151 featuring aviator frame and dark green lenses.\r\n\r\nLenses: non gradient\r\nEU filter: 3N\r\nBridge size: 15mm\r\nTemple size: 140mm\r\nEye size: 59mm\r\nMaterial: metal\r\nLining: leather\r\nSole: resin\r\nMach', ''),
(132, 1, 'Sony Xperia Z', '&lt;p&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;Sony Xperia Z smartphone was launched in January 2013. The phone comes with a 5.00-inch touchscreen display with a resolution of 1080 pixels by 1920 pixels.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Sony Xperia Z is powered by 1.5GHz quad-core Qualcomm MDM9215M processor and it comes with 2GB of RAM. The phone packs 16GB of internal storage that can be expanded up to 64GB via a microSD card. As far as the cameras are concerned, the Sony Xperia Z packs a 13.1-megapixel primary camera on the rear and a 2.2-megapixel front shooter for selfies.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Sony Xperia Z runs Android 4.1 and is powered by a 2330mAh non removable battery. It measures 139.00 x 71.00 x 7.90 (height x width x thickness) and weighs 146.00 grams.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Sony Xperia Z is a single SIM (GSM) smartphone that accepts a Micro-SIM. Connectivity options include Wi-Fi, GPS, Bluetooth, NFC, FM, 3G and 4G. Sensors on the phone include Compass Magnetometer, Proximity sensor, Accelerometer, Ambient light sensor and Gyroscope.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Sony Xperia Z', 'Sony Xperia Z smartphone was launched in January 2013. The phone comes with a 5.00-inch touchscreen display with a resolution of 1080 pixels by 1920 pixels.\r\n\r\nThe Sony Xperia Z is powered by 1.5GHz quad-core Qualcomm MDM9215M processor and it comes with ', ''),
(133, 1, 'Sony Xperia Z5 Premium', '&lt;p&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;Sony Xperia Z5 Premium Dual smartphone was launched in September 2015. The phone comes with a 5.50-inch touchscreen display with a resolution of 2160 pixels by 3840 pixels at a PPI of 806 pixels per inch.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Sony Xperia Z5 Premium Dual is powered by octa-core Qualcomm Snapdragon 810 (MSM8994) processor and it comes with 3GB of RAM. The phone packs 32GB of internal storage that can be expanded up to 200GB via a microSD card. As far as the cameras are concerned, the Sony Xperia Z5 Premium Dual packs a 23-megapixel primary camera on the rear and a 5-megapixel front shooter for selfies.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Sony Xperia Z5 Premium Dual runs Android 5.1 and is powered by a 3430mAh non removable battery. It measures 154.40 x 76.00 x 7.80 (height x width x thickness) and weighs 180.00 grams.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Sony Xperia Z5 Premium Dual is a dual SIM (GSM and GSM) smartphone that accepts Nano-SIM and Nano-SIM. Connectivity options include Wi-Fi, GPS, Bluetooth, NFC, FM, 3G and 4G (with support for Band 40 used by some LTE networks in India). Sensors on the phone include Compass Magnetometer, Proximity sensor, Accelerometer, Ambient light sensor and Gyroscope.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Sony Xperia Z5 Premium', 'Sony Xperia Z5 Premium Dual smartphone was launched in September 2015. The phone comes with a 5.50-inch touchscreen display with a resolution of 2160 pixels by 3840 pixels at a PPI of 806 pixels per inch. \r\n\r\nThe Sony Xperia Z5 Premium Dual is powered by ', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(134, 1, 'Samsung Galaxy S7 Edge', '&lt;p&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;Samsung Galaxy S7 Edge smartphone was launched in February 2016. The phone comes with a 5.50-inch touchscreen display with a resolution of 1440 pixels by 2560 pixels at a PPI of 534 pixels per inch. Samsung Galaxy S7 Edge price in India starts from Rs. 40000.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Samsung Galaxy S7 Edge is powered by 1.6GHz octa-core it comes with 4GB of RAM. The phone packs 32GB of internal storage that can be expanded up to 200GB via a microSD card. As far as the cameras are concerned, the Samsung Galaxy S7 Edge packs a 12-megapixel primary camera on the rear and a 5-megapixel front shooter for selfies.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Samsung Galaxy S7 Edge runs Android 6.0 and is powered by a 3600mAh non removable battery. It measures 150.90 x 72.60 x 7.70 (height x width x thickness) and weighs 157.00 grams.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Samsung Galaxy S7 Edge is a dual SIM (GSM and GSM) smartphone that accepts . Connectivity options include Wi-Fi, GPS, Bluetooth, NFC, USB OTG, 3G and 4G (with support for Band 40 used by some LTE networks in India). Sensors on the phone include Compass Magnetometer, Proximity sensor, Accelerometer, Ambient light sensor, Gyroscope and Barometer.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Samsung Galaxy S7 Edge', 'Samsung Galaxy S7 Edge smartphone was launched in February 2016. The phone comes with a 5.50-inch touchscreen display with a resolution of 1440 pixels by 2560 pixels at a PPI of 534 pixels per inch. Samsung Galaxy S7 Edge price in India starts from Rs. 40', ''),
(135, 1, 'Samsung Galaxy C7', '&lt;p&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;Samsung Galaxy C7 The phone comes with a 5.70-inch touchscreen display with a resolution of 1080 pixels by 1920 pixels.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Samsung Galaxy C7 is powered by 2GHz octa-core Qualcomm Snapdragon 625 processor and it comes with 4GB of RAM. The phone packs 32GB of internal storage that can be expanded up to 128GB via a microSD card. As far as the cameras are concerned, the Samsung Galaxy C7 packs a 16-megapixel primary camera on the rear and a 8-megapixel front shooter for selfies.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Samsung Galaxy C7 runs Android 6.0.1 and is powered by a 3300mAh non removable battery. It measures 156.60 x 77.20 x 6.70 (height x width x thickness) and weighs 165.00 grams.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Samsung Galaxy C7 is a dual SIM (GSM and GSM) smartphone that accepts . Connectivity options include Wi-Fi, GPS, Bluetooth, NFC, 3G and 4G (with support for Band 40 used by some LTE networks in India). Sensors on the phone include Proximity sensor, Accelerometer and Ambient light sensor.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Samsung Galaxy C7', 'Samsung Galaxy C7 The phone comes with a 5.70-inch touchscreen display with a resolution of 1080 pixels by 1920 pixels.\r\n\r\nThe Samsung Galaxy C7 is powered by 2GHz octa-core Qualcomm Snapdragon 625 processor and it comes with 4GB of RAM. The phone packs 3', ''),
(136, 1, 'Apple Iphone 7 Plus', '&lt;p&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;Apple iPhone 7 Plus smartphone was launched in September 2016. The phone comes with a 5.50-inch touchscreen display with a resolution of 1080 pixels by 1920 pixels at a PPI of 401 pixels per inch.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Apple iPhone 7 Plus is powered by quad-core Apple A10 Fusion processor and it comes with 3GB of RAM. The phone packs 32GB of internal storage cannot be expanded. As far as the cameras are concerned, the Apple iPhone 7 Plus packs a 12-megapixel primary camera on the rear and a 7-megapixel front shooter for selfies.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Apple iPhone 7 Plus runs iOS 10 and is powered by a 2900mAh non removable battery. It measures 158.20 x 77.90 x 7.30 (height x width x thickness) and weighs 188.00 grams.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Apple iPhone 7 Plus is a single SIM (GSM) smartphone that accepts a Nano-SIM. Connectivity options include Wi-Fi, GPS, Bluetooth, 3G and 4G (with support for Band 40 used by some LTE networks in India). Sensors on the phone include Compass Magnetometer, Proximity sensor, Accelerometer, Ambient light sensor, Gyroscope and Barometer.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Apple Iphone 7 Plus', 'Apple iPhone 7 Plus smartphone was launched in September 2016. The phone comes with a 5.50-inch touchscreen display with a resolution of 1080 pixels by 1920 pixels at a PPI of 401 pixels per inch. \r\n\r\nThe Apple iPhone 7 Plus is powered by quad-core Apple ', ''),
(137, 1, 'Apple Iphone 5s', '&lt;p&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;Apple iPhone 5s smartphone was launched in September 2013. The phone comes with a 4.00-inch touchscreen display with a resolution of 640 pixels by 1136 pixels at a PPI of 326 pixels per inch. Apple iPhone 5s price in India starts from Rs. 15000.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Apple iPhone 5s is powered by 1.3GHz dual-core Apple A7 (64-bit ARMv8) processor and it comes with 1GB of RAM. The phone packs 16GB of internal storage cannot be expanded. As far as the cameras are concerned, the Apple iPhone 5s packs a 8-megapixel primary camera on the rear and a 1.2-megapixel front shooter for selfies.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Apple iPhone 5s runs iOS 7 and is powered by a 1570mAh non removable battery. It measures 123.80 x 58.60 x 7.60 (height x width x thickness) and weighs 112.00 grams.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Apple iPhone 5s is a single SIM (GSM) smartphone that accepts a Nano-SIM. Connectivity options include Wi-Fi, GPS, Bluetooth, 3G and 4G (with support for Band 40 used by some LTE networks in India). Sensors on the phone include Compass Magnetometer, Proximity sensor, Accelerometer, Ambient light sensor and Gyroscope.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Apple Iphone 5s', 'Apple iPhone 5s smartphone was launched in September 2013. The phone comes with a 4.00-inch touchscreen display with a resolution of 640 pixels by 1136 pixels at a PPI of 326 pixels per inch. Apple iPhone 5s price in India starts from Rs. 15000. \r\n\r\nThe A', ''),
(138, 1, 'Nokia 230', '&lt;p&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;Nokia 230 Dual SIM mobile was launched in November 2015. The phone comes with a 2.80-inch touchscreen display with a resolution of 240 pixels by 320 pixels.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;As far as the cameras are concerned, the Nokia 230 Dual SIM packs a 2-megapixel primary camera on the rear and a 2-megapixel front shooter for selfies.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Nokia 230 Dual SIM runs Series 30+ and is powered by a 1200mAh removable battery. It measures 124.60 x 53.40 x 10.90 (height x width x thickness) and weighs 124.60 grams.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Nokia 230 Dual SIM is a dual SIM (GSM) mobile that accepts Micro-SIM. Connectivity options include Bluetooth and FM.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Nokia 230', 'Nokia 230 Dual SIM mobile was launched in November 2015. The phone comes with a 2.80-inch touchscreen display with a resolution of 240 pixels by 320 pixels.\r\n\r\nAs far as the cameras are concerned, the Nokia 230 Dual SIM packs a 2-megapixel primary camera ', ''),
(139, 1, 'Nokia Lumia 1020', '&lt;p&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;Nokia Lumia 1020 smartphone was launched in July 2013. The phone comes with a 4.50-inch touchscreen display with a resolution of 768 pixels by 1280 pixels at a PPI of 334 pixels per inch.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Nokia Lumia 1020 is powered by 1.5GHz dual-core it comes with 2GB of RAM. The phone packs 32GB of internal storage cannot be expanded. As far as the cameras are concerned, the Nokia Lumia 1020 packs a 41-megapixel primary camera on the rear and a 1.2-megapixel front shooter for selfies.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Nokia Lumia 1020 runs Windows Phone 8 and is powered by a 2000mAh non removable battery. It measures 130.40 x 71.40 x 10.40 (height x width x thickness) and weighs 158.00 grams.&lt;/span&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;br style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(94, 94, 94); font-family: Titillium, arial, sans-serif; font-size: 16px;&quot;&gt;The Nokia Lumia 1020 is a single SIM (GSM) smartphone that accepts a Micro-SIM. Connectivity options include Wi-Fi, GPS, Bluetooth, NFC, FM, 3G and 4G. Sensors on the phone include Compass Magnetometer, Proximity sensor, Accelerometer, Ambient light sensor and Gyroscope.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Nokia Lumia 1020', 'Nokia Lumia 1020 smartphone was launched in July 2013. The phone comes with a 4.50-inch touchscreen display with a resolution of 768 pixels by 1280 pixels at a PPI of 334 pixels per inch. \r\n\r\nThe Nokia Lumia 1020 is powered by 1.5GHz dual-core it comes wi', ''),
(140, 1, 'HMDX Red transit micro sport wireless ear buds &amp; sports bottle', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;No matter what you re doing, the JAM Transit Micro Sport Bud Bluetooth Headphones are designed to stay in place comfortably. (Seriously, go ahead and do a backflip.) Multiple accessories allow you to create a custom fit, while the reflective strap enhances safety. They re also sweat resistant, making them perfect for even the toughest workouts. Packaged in a matching, BPA-free water bottle.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: HX-EP510PK-EU&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 8.95 x 9.95 x 25cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 150g&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;In-ear headphones&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Driver unit size: Wireless BT v4.0&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Frequency response (HZ): 20Hz - 20KHz&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Impedance (ohm): 32 ±15%?&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sensitivity (dB): 98±3dB&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cord length: 0.58&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Connections: rechargeable lithium polymer battery&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Multiple Accessories: Includes water bottle and cord management system&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wireless bluetooth earbuds give you freedom and leaving you free to focus on your active lifestyle&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Jogging the city streets is safe thanks to a reflective cord that helps you be seen at night&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Magnetic connection disables power &amp;amp; secures buds when not in use&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Safe-surround feature: eliminates volume on one side so you know what''s happening around you&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;IPX4 sweat resistance: ideal for a tough workout&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Securlock turbine design keeps earbuds in place&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wireless Bluetooth v4.0: connect wirelessly with any Bluetooth device in a 30-foot range&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Rechargeable: Charge for 4 hour to provide up to 10 hours of play time&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Speakerphone: Answer calls directly from your Transit Micro Sport Buds&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Safe Surround: Mute the left earbud so you can hear your surroundings&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Reflective Cord: Provides extra safety for night time use&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Ear Hooks and Fins: Choose from multiple sizes for a custom secure fit&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Ear Fittings S.M &amp;amp;L 2 pieces each size, ear pad S/L 2 pieces each size, ear hook 1 pair, charge cable x 1&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'HMDX Red transit micro sport wireless ear buds &amp; sports bottle', 'No matter what you re doing, the JAM Transit Micro Sport Bud Bluetooth Headphones are designed to stay in place comfortably. (Seriously, go ahead and do a backflip.) Multiple accessories allow you to create a custom fit, while the reflective strap enhance', ''),
(141, 1, 'HMDX Grey transit city wireless headphones', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Let the tunes take over with the all-new Jam Transit City Bluetooth headphones. Whether you re working out or walking the city streets, the active noise-cancelling over the ear cups will melt away background sounds, leaving just pure music you can feel. The collapsible design of these awesome Jam headphones means you can easily fold them up and carry them with you wherever you go. And with no wires and a rechargeable battery with up to an incredible 12 hours play time, its fuss-free jamming all day long with the Jam Transit City.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: HX-HP150GY-EU&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 9.65 x 22.5 x 21.25cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 450g&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;On-ear headphones&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Driver unit size: Neodymium 40mm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Frequency response (HZ): 20Hz - 20KHz&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Impedance (ohm): 32 ±15%?&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sensitivity (dB): 101±4dB&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Connections: 3.5mm jack + AUX in&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Folding design&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Active noise cancelling: filter out background noise with the push of a button&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Speakerphone: answer calls directly from your transit city headphones&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Connect wirelessly with any bluetooth device in a 30-foot range&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Rechargeable: charge for 3 hours to provide up to 12 hours of play time&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Ear cup controls: raised controls allow you to easily adjust volume and switch tracks&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Collapsible design: fold em up and take em on the go&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Aux-in port: cord it up and listen on any device bluetooth or not&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Contents: JAM transit city noise cancelling wireless headphones, usb charging cable, 3.5mm aux cord, carrying pouch, instruction booklet&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'HMDX Grey transit city wireless headphones', 'Let the tunes take over with the all-new Jam Transit City Bluetooth headphones. Whether you re working out or walking the city streets, the active noise-cancelling over the ear cups will melt away background sounds, leaving just pure music you can feel. T', ''),
(142, 1, 'KitSound White ''Manhattan'' bluetooth stereo headphones', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;These white on ear ''Manhattan'' headphones from Kitsound come in a practical folding design and have integrated volume and skip back and forward controls for added convenience. They feature wireless connectivity to pair with your bluetooth device so you can answer calls and offer up to 18 hours of play time and a further 30 hours of talk time.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: KSMHDTWH&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;40mm driver unit size&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Frequency response: 40 Hz - 20 kHz&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1.2m cord length&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bluetooth 2.1 connectivity&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Folding design&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wireless connectivity - pair with your Bluetooth-enabled device&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Up to 18 hours of music play time, up to 30 hours talk time, up to 300 hours on standby&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Answer phone calls with the integrated touch controls&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Volume buttons give you full control - controls to skip track back/forwards&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'KitSound White ''Manhattan'' bluetooth stereo headphones', 'These white on ear ''Manhattan'' headphones from Kitsound come in a practical folding design and have integrated volume and skip back and forward controls for added convenience. They feature wireless connectivity to pair with your bluetooth device so you ca', ''),
(143, 1, 'KitSound Children''s doodles volume limiting headphones', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Because your hearing is so precious, the KS Doodles headphones feature volume-limiting technology, to let you listen to your music without bursting your eardrums. Music doesn''t have to be serious. Novelty records released by puppets and cartoon characters prove that, and our character headphones are fun too. But not only that - thanks to their adjustable headband and soft earcups they''re also super-comfortable. Research has shown that listening to loud music over a long period of time can potentially lead to noise induced hearing loss (NIHL). These headphones have been engineered so that the level of sound being delivered to the ears does not exceed an average of 85 dB - which is the figure recommended by healthcare professionals. So you can have a great quality listening experience without having to crank the volume up to max. We don''t want to sound like your parents, but sometimes music can be too loud.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 3 x 16 x 18cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Frequency response: 20 Hz - 20 kHz&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sensitivity: 85 dB&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Drivers: 40 mm dynamic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;DC input voltage: 0.178 V&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Jack plug: 3.5 mm&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'KitSound Children''s doodles volume limiting headphones', 'Because your hearing is so precious, the KS Doodles headphones feature volume-limiting technology, to let you listen to your music without bursting your eardrums. Music doesn''t have to be serious. Novelty records released by puppets and cartoon characters', ''),
(144, 1, 'Marley Mist positive vibration on ear headphones', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Make an impression with style as vibrant as your music. The Positive Vibration on-ear headphones offer personality and rich sound and a high quality listening experience, reproducing an intimate, authentic sound that lets you truly feel the music. It''s an experience that will satisfy the soul. Big drivers, soft ear cushions, precision sound, Positive Vibration is an instant classic and lifestyle essential. It s made from Rewind fabric in a range of vibrant colours and cool styles, at a price that s accessible. Our mission is to create a better world and spread Bob Marley''s vision of &quot;&quot;one world, one love&quot;&quot; through Earth-friendly products that embody the values of equality, unity, authenticity, charity, sustainability and giving back to people and the planet.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: EM-JH011-SM&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 20.3 x 10.2 x 22.2cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Style: mist&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 230g&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Comfortable on-ear design&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Driver unit size: 50mm Moving Coil&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Frequency response (HZ): 17Hz-20kHz&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Impedance (ohm): 19?&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sensitivity (dB): 116 dB&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cord length: 1.3m&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Connections: 3.5mm jack&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Folding design&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Durable tangle free braided cable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;L-shaped gold plated stereo plug&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Microphone with 1-button control&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Single sided cable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Recyclable aluminium ear cups&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;REWIND or organic cotton fabric&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cable: one button remote with mic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Made for ipod, iphone, and ipad&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1 x headphones, aluminium chassis and durable braided cable, storage bag, eco-packaging, instruction booklet.&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Marley Mist positive vibration on ear headphones', 'Make an impression with style as vibrant as your music. The Positive Vibration on-ear headphones offer personality and rich sound and a high quality listening experience, reproducing an intimate, authentic sound that lets you truly feel the music. It''s an', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(145, 1, 'Marley Denim positive vibration on ear headphones', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Make an impression with style as vibrant as your music. The Positive Vibration on-ear headphones offer personality and rich sound and a high quality listening experience, reproducing an intimate, authentic sound that lets you truly feel the music. It''s an experience that will satisfy the soul. Big drivers, soft ear cushions, precision sound, Positive Vibration is an instant classic and lifestyle essential. It s made from Rewind fabric in a range of vibrant colours and cool styles, at a price that s accessible. Our mission is to create a better world and spread Bob Marley''s vision of &quot;&quot;one world, one love&quot;&quot; through Earth-friendly products that embody the values of equality, unity, authenticity, charity, sustainability and giving back to people and the planet.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: EM-JH011-DN&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 20.3 x 10.2 x 22.2cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Style: denim&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 230g&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Comfortable on-ear design&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Driver unit size: 50mm Moving Coil&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Frequency response (HZ): 17Hz-20kHz&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Impedance (ohm): 19?&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sensitivity (dB): 116 dB&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cord length: 1.3m&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Connections: 3.5mm jack&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Folding design&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Durable tangle free braided cable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;L-shaped gold plated stereo plug&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Microphone with 1-button control&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Single sided cable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Recyclable aluminium ear cups&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;REWIND or organic cotton fabric&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cable: one button remote with mic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Made for ipod, iphone, and ipad&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1 x headphones, aluminium chassis and durable braided cable, storage bag, eco-packaging, instruction booklet.&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Marley Denim positive vibration on ear headphones', 'Make an impression with style as vibrant as your music. The Positive Vibration on-ear headphones offer personality and rich sound and a high quality listening experience, reproducing an intimate, authentic sound that lets you truly feel the music. It''s an', ''),
(146, 1, 'Monster Black iSport freedom on-ear bluetooth headphones', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;iSport Freedom is the most advanced durable headphone ever made for athletes. Everyone sweats whilst working out, the iSport range is fully sweat proof. In fact you can even wipe it clean when you get home. The Bluetooth 4.0 with Apt-X delivers your music at the highest possible quality ensuring that it is wireless that sounds as good as wired. All day, all night, 24 hour battery performance comes as standard with the Freedom so you don t have to worry about how long you train. Tap to play, tap to pause, double tap to skip track forwards, triple tap to skip backwards, tap once to answer a call, tap again to cancel it, swipe your finger up to crank up the volume, swipe down to make it quieter. All of this on the right hand side of the headphone with Monster''s cutting-edge swipe controls. No more searching for your device and interrupting your gym session, it s all right there. There''s also a mic so you can take your calls while on the move and without having to reach for your device.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: 137097-00&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 234g&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;On-ear headphones&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bluetooth 4.0 + Apt-X, 3.5mm auxiliary&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;9+ hours of battery life playback time&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Low battery voice prompts and indicator LEDs&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Pair two devices to share music&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Superior wireless performance (Apt-X)&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3 listening modes (wired, wireless and USB Direct Digital Audio)&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cool down sound profile gives you a subtle, calm way of listening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sport sound profile will pumps you up to really boost the mid work out motivation levels&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Built in high intelligibility mic with advanced echo suppression&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sweat-proof, water resistant and washable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Voice activated calls&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Reflective safety features so you stay safe at night&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sound isolation&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Folding design&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Soft carry case, charging cables&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 years limited warranty&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Monster Black iSport freedom on-ear bluetooth headphones', 'iSport Freedom is the most advanced durable headphone ever made for athletes. Everyone sweats whilst working out, the iSport range is fully sweat proof. In fact you can even wipe it clean when you get home. The Bluetooth 4.0 with Apt-X delivers your music', ''),
(147, 1, 'Monster White clarity HD in-ear bluetooth headphones', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Unfortunately, the earbuds that come as standard with smartphones and music players break easily, have poor sound and an uncomfortable and insecure fit. You can do something about that. Step up to Monster. Trust your ears to the renowned craftsmanship of Monster. Reinforced at critical stress points, Clarity HD high-performance earbuds won''t fall apart like other generic models. Clarity HD is ergonomically designed with your comfort in mind. Multiple ear tips ensure the best possible fit for any set of ears - and they won''t fall out like other earbuds. Say goodbye to hard, uncomfortable crappy earbuds forever. Bring your music to life with premium sound at an incredible value. You simply won''t get sound this amazing from generic earbuds - You have to hear it to believe it. Superior noise isolation lets you focus on the music and combined with a high-intelligibility in-line microphone, you can take and make crystal-clear calls and control music from any smartphone or tablet.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: 137031-00&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 36g&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;In-ear headphones&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bluetooth 4.0 + Apt-X&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Ergonomically designed with multiple ear tips for a better fit&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Advanced construction with reinforcement at critical stress points&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Premium wireless Bluetooth sound quality at an incredible value&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Superior noise isolation&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;In-line mic for clearer phone calls and music control&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Innovative battery design for 8+ hours of listening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;5+ hours of wireless audio with sound quality that''s as good as wired.&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Extremely lightweight&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Soft carry case, charging cables&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 years limited warranty&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Monster White clarity HD in-ear bluetooth headphones', 'Unfortunately, the earbuds that come as standard with smartphones and music players break easily, have poor sound and an uncomfortable and insecure fit. You can do something about that. Step up to Monster. Trust your ears to the renowned craftsmanship of ', ''),
(149, 1, 'Morphy Richards Sand ''Accents'' retro traditional kettle 102101', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Add a touch of designer chic to your kitchen with the new Accents Special Edition pyramid kettle. This kettle combines classic retro styling, on-trend matt finish paint, dark brown handle, plus all the functionality you require. These new additions to Morphy Richards Accents collection, provides you with a stylish finish to complement any kitchen. Featuring an easy view water gauge, it is easy to fill up your required amount of water, and with a large 1.5L capacity the kettle can boil up to six cups at once - ideal for large families or entertaining. All of our kettles have a high powered 3kw concealed rapid boil element as well as an essential limescale filter to make your drinks clean and clear. This kettle also offers a 360 base, ideal for right or left handed use, as well as boil-dry protection and cord storage for safety.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: 102101&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3000W&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;0.7m power cord&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1.5L capacity&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cordless&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;360 degree cordless base&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Water level indicator&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Rapid Boil&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Pull Off Lid&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Power Indicator&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Illuminated water gauge&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Boil dry protection&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Concealed element&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cord Storage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Non Slip Feet&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Removable Filter&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Simultaneous Filter and Boil&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Morphy Richards Sand ''Accents'' retro traditional kettle 102101', 'Add a touch of designer chic to your kitchen with the new Accents Special Edition pyramid kettle. This kettle combines classic retro styling, on-trend matt finish paint, dark brown handle, plus all the functionality you require. These new additions to Mor', ''),
(150, 1, 'DeLonghi Black distinta 1.7l digital kettle KBI3011.B', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The De''Longhi KBI3011 model is an upgrade to the existing Distinta kettle, the new model will be a stylish addition to your kitchen. The digital base of the KBI3011 allows you to control the water temperature for your tea or coffee. With the ideal temperature for each type of tea, chose from 75, 80, 85, 90 and 100C. The keep warm function will allow you to maintain the selected temperature for up to 20 minutes, perfect for more cup of tea. The design features a detachable base for cord-free convenience, water level indicator and a 360C swivel base. A 3 level safety protection with auto shut-off when water begins to boil, thermal cut-off and auto shut-off when body is lifted from base.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: KBI3011.B&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 26.5 x 21 x 24cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Metal&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 1.6kg&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wattage: 3000W&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Capacity: 17L&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Digital base to control the water temperature&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sophisticated matt metallic finish with chromed details&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Detachable base for cord-free convenience&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3-level safety protection: auto shut-off when water begins to boil&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Metal wrapped touch points&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Water level indicator&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Flat stainless steel concealed element&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;auto shut-off when water begins to boil&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;thermal cut-off&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;auto shut-off when body is lifted from base&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Removable, washable anti-scale filter&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cord storage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Non-slip feet&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 years guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'DeLonghi Black distinta 1.7l digital kettle KBI3011.B', 'The De''Longhi KBI3011 model is an upgrade to the existing Distinta kettle, the new model will be a stylish addition to your kitchen. The digital base of the KBI3011 allows you to control the water temperature for your tea or coffee. With the ideal tempera', ''),
(151, 1, 'DeLonghi Distinta 1.7l kettle style copper kbi3001.cp', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;1.7 l kettle with sophisticated matte metallic finish and chromed details.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;WHD 18 x 25 x 22.5cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Material: Stainless Stel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3kW heating element for rapid boiling times&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Sophisticated matt metallic finish with chromed details&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;360 degree base swivel base with cord storage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3-level safety protection&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Removable, washable anti-scale filter&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'DeLonghi Distinta 1.7l kettle style copper kbi3001.cp', '1.7 l kettle with sophisticated matte metallic finish and chromed details.\r\n\r\nWHD 18 x 25 x 22.5cm\r\nMaterial: Stainless Stel\r\n3kW heating element for rapid boiling times\r\nSophisticated matt metallic finish with chromed details\r\n360 degree base swivel base', ''),
(152, 1, 'Russell Hobbs Cream Colours Plus kettle', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Russell Hobbs 20412 Colours Plus Kettle, 1.7L, 3000W. This kettle has a Red Rapid boil zone feature which can boil 1 cup in 45 seconds. Pull to open hinged lid and a side water gauge.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1.7L capacity&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Russell Hobbs Cream Colours Plus kettle', 'Russell Hobbs 20412 Colours Plus Kettle, 1.7L, 3000W. This kettle has a Red Rapid boil zone feature which can boil 1 cup in 45 seconds. Pull to open hinged lid and a side water gauge.\r\n\r\n1.7L capacity', ''),
(153, 1, 'Russell Hobbs ''Legacy'' kettle in black 21883', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This kettle has a wealth of modern features. Its rapid boil feature lets you boil a cup of water in just 45 seconds. This is ideal if you need a hot drink fast or you''re just making one cup. The kettle has a perfect pour spout so all of the water goes into the cup with fewer splashes and spills. Be it with friends or family, a morning wake me up or a mid-day pick me up everybody loves a good brew and the Legacy Kettle lets you do it in stylish way and fast.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: 21883&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Stylish black stainless steel kettle with Russell Hobbs embossed logo&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Easy pour and easy carry handle&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Rapid boil zone feature&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Boil 1 cup in 55 seconds*&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Save up to 66% energy**&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Denoting 1/2/3cup volumes&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Perfect pour spout&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Power on indicator&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1.7L capacity&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;360 degree base with cord storage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Concealed heating element&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Removable, washable anti-scale filter&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Water level gauge&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Auto switch off&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2400W&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 year guarantee (up to 3 years when registered with manufacturer)&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Russell Hobbs ''Legacy'' kettle in black 21883', 'This kettle has a wealth of modern features. Its rapid boil feature lets you boil a cup of water in just 45 seconds. This is ideal if you need a hot drink fast or you''re just making one cup. The kettle has a perfect pour spout so all of the water goes int', ''),
(154, 1, 'Breville Strata matt green jug kettle VKJ998', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Bring a touch of unexpected luxury to your kitchen with this Breville VKJ998 Strata Matt Green Jug Kettle from the Breville Strata Breakfast Collection. The distinctive matt finish with mirror chrome accents add contemporary elegance, but look closely: faceted, clear glass ''jewels'' are set into the touch points. This unique crystal design within the lid handle and power switch reflects and refracts light, creating precious luminosity. And that''s not all; an illuminated water window adds a soft white glow to your kitchen each time you boil. Designed to make a statement, this striking kettle also handles the basics with ease. The large 1.7L capacity boils up to 8 cups at once, and when time is short, the concealed 3kW element provides a quick boil. Accurate filling is easy thanks to the easy-grip lift-off lid and large, rear water window, while the 360 base is perfect for left and right hand use. Complete the look with the Breville VTT768 Strata Matt Green Toaster.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Capacity: 1.7L&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Stainless steel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Distinctive matt stainless steel finish with mirror chrome accents&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Unique crystal design within the lid handle and power switch&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;White illumination in boil mode&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Easy-grip lift-off lid&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3kW heating element for rapid boiling times&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1.7 Litre capacity makes 6 - 8 cups&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;360 base for left- and right-hand use&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Rear water window makes accurate filling easy&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Removable, washable limescale filter&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Non-slip feet and cord storage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Matching toaster available&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Breville Strata matt green jug kettle VKJ998', 'Bring a touch of unexpected luxury to your kitchen with this Breville VKJ998 Strata Matt Green Jug Kettle from the Breville Strata Breakfast Collection. The distinctive matt finish with mirror chrome accents add contemporary elegance, but look closely: fa', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(155, 1, 'Breville Hot Cup with Brita filter VKJ367', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This silver VKJ367 hot cup water machine from Breville is an innovative design that takes the traditional kettle and creates a modern and improved style to your kitchen. Simply place your cup under the filter and watch as steaming hot water pours safely into the cup, no need for manual handling, complete with a spill tray for clean and safe using.&lt;/p&gt;&lt;/div&gt;&lt;div id=&quot;item_description&quot;&gt;&lt;div class=&quot;item-subheading&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px 0px; border: 0px; font-weight: bold; line-height: 1.3;&quot;&gt;Item description&lt;/p&gt;&lt;/div&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 0px 0px 10px; border: 0px; line-height: 1.3;&quot;&gt;&lt;span itemprop=&quot;description&quot; style=&quot;line-height: 26px;&quot;&gt;This silver VKJ367 hot cup water machine from Breville features a britax filter, a lift up lid for easy refilling and a silver drip tray.&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dispenses boiling water at the touch of a button&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fastboil 3kW concealed element for maximum efficiency&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Easy view clear body for accurate filling&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Blue illumination on boil&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cordless base&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Large 1.8L capacity&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Non-slip base &amp;amp; cord storage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Variable dispense - choose from nine cup sizes&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Manual stop - stops water flow mid-cycle&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Brita filter technology for cleaner, better tasting hot drinks&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Easy fill - just like a kettle&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Brita Memo indicates when to replace cartridge&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;No mess easily removable drip tray&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Brita Maxtra cartridge included&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model No: VKJ367&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Breville Hot Cup with Brita filter VKJ367', 'This silver VKJ367 hot cup water machine from Breville is an innovative design that takes the traditional kettle and creates a modern and improved style to your kitchen. Simply place your cup under the filter and watch as steaming hot water pours safely i', ''),
(156, 1, 'Morphy Richards 360001 Redefine ATOMiST Vapour Iron', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Now there''s a new way to iron; vapour mist technology for superior crease removal. This patented technology makes ironing easy and gives your clothes a superior finish without the need for steam. The vapour mist penetrates deep into the fibres to remove creases with ease and it uses 80% less water too. This clever technology means there will never be any lime-scale build up so it will never need descaling. This will keep the iron always performing at it''s best. The thermoglass soleplate gives a fast powerful heat up that glides across garments and removes creases before your eyes. The ATOMiST vapour iron applies the right amount of pressure, heat and moisture for easier ironing, without the need for steam. It''s time to redefine your expectations.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: 360001&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 34.5 x 19.5 x 22cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;The patented vapour mist technology means no more limescale build up, remaining limescale free always&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Introducing a new way to iron without the need for steam, using 75% less energy&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;The patented thermoglass soleplate provides a fast powerful heat up&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;The iron uses 80% less water and gives up to 2 hours continuous ironing time&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Precision temperature controls allow you to select the right temperature for your clothes with ease&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Heel rest for safe storage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;5 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Morphy Richards 360001 Redefine ATOMiST Vapour Iron', 'Now there''s a new way to iron; vapour mist technology for superior crease removal. This patented technology makes ironing easy and gives your clothes a superior finish without the need for steam. The vapour mist penetrates deep into the fibres to remove c', ''),
(157, 1, 'Morphy Richards ''Comfigrip'' ceramic steam iron 301021', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Introducing our new ComfiGrip iron for effortless ironing every time. Ceramic soleplate glides easily over fabrics to not only remove creases with ease, but gives a soft silky-smooth finish. With 55g of constant steam to soften creases and a 200g turbo boost shot to tackle hard to reach areas, not only does this iron boast our unique dual steam to provide steam where you need it most, it has an added pressing plate to remove moisture to make sure you get a pristine finish every time. With a large 350ml tank for longer ironing time, 2600W for fast heat-up and an eco steam function, the iron provides long-lasting performance. Morphy Richards irons come with a 3-year guarantee for added peace of mind.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: 301021&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2600W&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;350 ml water tank capacity&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;55g/min steam output&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;201g/min steam shot&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Ceramic sleplate material&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Vertical steam&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Variable Steam&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Tip technology&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Steam Tip&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;5 Steam Rating&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;TriZone (Dual Steam Chamber and Added Pressing Plate)&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Safety Heel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Temperature Ready Indicator&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Soft Grip Handle&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cord Storage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3 year guarantee&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;THESE GOODS WERE ON SALE AT THE HIGHEST PRICE FROM 11.08.16 TO 13.09.16. SOLD AT THE REDUCED PRICE SINCE 14.09.16.&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Morphy Richards ''Comfigrip'' ceramic steam iron 301021', 'Introducing our new ComfiGrip iron for effortless ironing every time. Ceramic soleplate glides easily over fabrics to not only remove creases with ease, but gives a soft silky-smooth finish. With 55g of constant steam to soften creases and a 200g turbo bo', ''),
(158, 1, 'Braun Texstyle 7 steam iron TS755', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;TexStyle 7 steam irons stand for flawless smooth ironing results even at the smallest details of the clothes. Fibre-deep steam removes even deepest wrinkles for perfect results. The high-quality soleplate combines the latest technology with insightful design to give you the high performance you need and ensures flawless, premium results. The Braun TexStyle 7 gives you 2400 watt performance. It delivers full steam intensity out of three active areas including preconditioning steam. This powerful steam enables effective &quot;long stroke&quot; ironing. You attain a flawless finish quickly and comfortably.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 15.5 x 13.5 x 31.5cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: TS755&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Power: 2400W&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Capacity: 400ml (water tank)&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Saphir soleplate - Fourtimes harder than Stainless steel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Prefect gliding over garments&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3 active steam areas&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Precision tip&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Poweful stream shot 170g/min&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Auto shut off&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2.5cm cord length&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Suitable for tap water&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Braun Texstyle 7 steam iron TS755', 'TexStyle 7 steam irons stand for flawless smooth ironing results even at the smallest details of the clothes. Fibre-deep steam removes even deepest wrinkles for perfect results. The high-quality soleplate combines the latest technology with insightful des', ''),
(159, 1, 'Braun Ironing system IS5044BK', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;For those who appreciate German technology and quality, Braun introduces the new CareStyle 5 to the ironing system market. The World first Eloxal 3D BackGlide soleplate, with rounded and bevelled edges, helps the iron glide effortlessly, even backwards, over zippers, seams, buttons, anything it meets along the way. The ironing surface is twice as hard as stainless steel for optimum glideability, as well as enhanced scratch resistance and durability. There are numerous other features: such as the intuitive digital display, the 10 min iron auto-off function and more - making the CareStyle 5 ironing system the perfect choice for fast and efficient care of your garments.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 28 x 18 x 33cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: IS5044BK&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Power: 2400W&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;New iCare technology that intelligently sets the temperature no matter the garment or fabric.&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Exloal 3D backglide soleplate for unique 360 degree glideability over any fabric, any obstacle and even backwwards.&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Soleplate two times harder than Stainless Steel.&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;10 min auto shut off, Iron can stay unattended on any garment without burning the textiles.&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Calc clean system&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1.4L water tank&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2.8m cord length&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;6 bar with 340 G/Min shot&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Braun Ironing system IS5044BK', 'For those who appreciate German technology and quality, Braun introduces the new CareStyle 5 to the ironing system market. The World first Eloxal 3D BackGlide soleplate, with rounded and bevelled edges, helps the iron glide effortlessly, even backwards, o', ''),
(160, 1, 'Tefal Freemove FV9970 Cordless Steam Iron', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The new, brighter Freemove iron provides freedom of movement whilst maintaining optimum power. This means you can iron without getting yourself tied up in knots or creasing your clothes when trying to get to hard to reach areas. The new model has a higher wattage than the previous Freemove (2600W), as well as a more powerful steam output. This means you will achieve an even more beautiful and consistent finish on all fabrics, while its ergonomic base allows you to work with your natural ironing pattern. The base can be securely attached to an ironing board by the Easyfix system, and the iron can recharge in a matter of seconds so it s ready when you need it. Whether working with delicates or starched shirts, the Tefal Freemove range all feature a 2-in-1 Autosteam Control. Simply select the type of fabric being ironed and the steam output and soleplate temperature will adjust accordingly to appropriate levels, ensuring a perfect performance. The scarlet FV9970 has Tefal s Glide Protect&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: FV9970&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Variable steam on demand - trigger controlled - ensures less waste, higher efficiency&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Ironing results equivalent to a powerful corded iron*&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2600W&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;No cord - enabling freedom of movement to work around the ironing board, without the cord getting in the way&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Quick recharge&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Ergonomic base with shock absorbing dome&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Easyfix system - an easy to use system that attaches the base to the ironing board, guaranteeing stability, yet flexibility&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Double Anti-Drip device to ensure no water leakage onto laundry, even if steam buttons are pushed when the soleplate is cold&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Double anti-scale for easy maintenance&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Auto Shut-off for added safety&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2-in-1 Autosteam Control&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Refilling in only 4 seconds; large front fill opening&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Vertical Steam&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;250ml water tank&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;35g/min variable steam, 180g/min turbo shot of steam&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Glide Protect Autoclean soleplate, with self-cleaning properties&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;*Compared to 2400W Tefal/Calor FV5211 ironing quality tested by an independent laboratory.&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Tefal Freemove FV9970 Cordless Steam Iron', 'The new, brighter Freemove iron provides freedom of movement whilst maintaining optimum power. This means you can iron without getting yourself tied up in knots or creasing your clothes when trying to get to hard to reach areas. The new model has a higher', ''),
(161, 1, 'Tefal Pro express steam generator iron GV8461 blue', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The powerful high-pressure steam of Pro Express penetrates fabrics to ease your ironing. The steam boost function increases steam output to iron thick fabrics and remove unwanted creases. The Pro Express is a high pressure steam generator with long lasting performances thanks to its exclusive anti-scale collector. It is equipped with a large 1.8L water tank, which is also removable, allowing long lasting ironing sessions.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: GV8461&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 29.3 x 26.4 x 43.4cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 5460g&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wattage: 2000W&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;120g/min Variable steam rating&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;260g/min Shot of steam&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Steam function&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Auto clean ceramic soleplate&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1.8l Tank capacity&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Scale alert&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1.8m Cord length&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Vertical steam&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2mins Heat up time&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Continuous fill&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Safety lock system&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1 year guarantee&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;THESE GOODS WERE ON SALE AT THE HIGHEST PRICE FROM 05.10.16 TO 01.11.16. SOLD AT THE REDUCED PRICE SINCE 02.11.16.&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Tefal Pro express steam generator iron GV8461 blue', 'The powerful high-pressure steam of Pro Express penetrates fabrics to ease your ironing. The steam boost function increases steam output to iron thick fabrics and remove unwanted creases. The Pro Express is a high pressure steam generator with long lastin', ''),
(162, 1, 'Bosch Blue/white steam iron with i-temp 2800w TDA7060GB', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The TDA7060GB steam iron features iTemp, a unique automatic ironing setting for all fabrics so you can iron a silk blouse straight after your denim jeans. With 2800W of power and a 200g/min steam shot, combined with the new iTemp feature, there''s no need to sort your ironing pile - just iron! Other features on the TDA7060GB include an Advanced Steam System for optimised steam distribution, a built in Anti''Calc system, ergonomic design for comfort and convenience and a precision ironing tip for those hard to reach places.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: TDA7060GB&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 15.6 x 12 x 31.1cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 1.8kg&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wattage: 2800w&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Shot of steam: 200g&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Steam function: i-temp&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Soleplate composition: ceranium glissée&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Tank capacity: 0.38L&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Self clean function: 3 anti calc&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Anti drip features: drip stop&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cord length: 300cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Vertical steam&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Quick Filling&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 years guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Bosch Blue/white steam iron with i-temp 2800w TDA7060GB', 'The TDA7060GB steam iron features iTemp, a unique automatic ironing setting for all fabrics so you can iron a silk blouse straight after your denim jeans. With 2800W of power and a 200g/min steam shot, combined with the new iTemp feature, there''s no need ', ''),
(163, 1, 'Bosch White DS38 sensixx steam generator TDS3880GB', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The Bosch TDS3880GB DS38 Sensixx is guaranteed to deliver excellent ironing results within a very short period of time to combat even stubborn creases with a special combination of temperature, steam pressure and intermittent steam, it removes up to 99.9 per cent of bacteria from all materials suitable for ironing. This means you can still put a washing cycle on below 100 degrees and yet enjoy the peace of mind of having germ free clothing without having the need to use harsh chemicals to achieve this. The innovative Advanced Steam System allows a targeted distribution of the steam over the fabric and deeper penetration as well. The CeraniumGlissée soleplate with its 3-phase design guarantees an ideal distribution of steam and maximum gliding. The triple-zone ironing technology includes moistening, drying and smoothing processes. The i-Temp Advanced function additionally combines temperature and steam meaning all iron able fabrics can be ironed using the same basic setting.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: TDS3880GB&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 29 x 23 x 39cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 4.6kg&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wattage: 3100w&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Variable Steam rating: 6.5 bar steam pressure&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Shot of steam: 400g&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Steam function: i-temp advanced&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Soleplate composition: ceranium glissée&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Tank capacity: 1.4L&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Auto shut off&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Self clean function: calc &amp;amp; clean perfect&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cord length: 190cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Vertical steam&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Permanent Refill&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Safety lock system&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 years guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Bosch White DS38 sensixx steam generator TDS3880GB', 'The Bosch TDS3880GB DS38 Sensixx is guaranteed to deliver excellent ironing results within a very short period of time to combat even stubborn creases with a special combination of temperature, steam pressure and intermittent steam, it removes up to 99.9 ', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(164, 1, 'Glamoriser Salon results curl wand', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Create beautifully defined curls all over with the brand new Glamoriser Salon Results Curl Wand. The surface of this unique barrel is infused with Black Diamond Oil to provide ultra shining, even curls without any frizz, leaving you with a truly professional finish. Control the temperature with up to 5 heat settings depending on your hair type and with it''s fast heating technology create the look in a matter of minutes for drop-dead gorgeous curls. Unleash the stylist in you.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 18 x 36 x 12cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 0.47kg&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Black Diamond Oil infused barrel - reduces frizz for intense shine and luminescence.&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;5 x heat settings up to 210C perfect for all hair types&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Auto shut off in 1 hour&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fast heat up: Ready in 20 seconds&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Includes heat resistant glove&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Worldwide voltage for travel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Salon length 3m swivel cord for anti-tangle, fuss-free styling.&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Glamoriser Salon results curl wand', 'Create beautifully defined curls all over with the brand new Glamoriser Salon Results Curl Wand. The surface of this unique barrel is infused with Black Diamond Oil to provide ultra shining, even curls without any frizz, leaving you with a truly professio', ''),
(165, 1, 'Glamoriser Straight and style speed brush', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Say farewell to time consuming styling tools and aching arms from battling bad hair days. The Glamoriser Straight &amp;amp; Style Speed Brush is the only tool you will need for styling from now on. High performing, this straightening brush creates sleek, soft, straight looks with its unique Triple-Action Hot + Cool Bristle Technology - super fast action and easy handling makes detangling, taming and straightening easy as ABC. The straightening brush''s heated bristles and barrel work to maximise the heated surface for the most efficient and effective straightening experience. Black Diamond Oil is infused within the bristles to add shine and luminescence with every brush stroke, while working to keep frizz and fly-always at bay. Don''t fancy playing it straight? Switch it up and wrap the hair around the brush to create flirty flicks and loose curls.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 18 x 36 x 7cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Plastic and metal&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Simple as a hair brush, results of a straightener&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Unique Triple-Action Hot + Cool Bristle Technology detangles, tames &amp;amp; straightens in next to no time&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cool grooves on the back set soft, seductive waves &amp;amp; flicks and loose curls&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fast heat-up and outstanding heat recovery for game-changing, super-fast performance and sensational results&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Black Diamond Oil infused bristles combat frizz and fly-aways whilst boosting shine, luminescence and smoothness&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;5 variable heat settings from 120C to 210C tailored for every hair type to cut down heat damage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3m swivel cord for relaxed, tangle-free styling, Multi-voltage for worldwide use, UK/EU plug adaptor for travel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty leaflet with operating instructions and styling tips&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Glamoriser Straight and style speed brush', 'Say farewell to time consuming styling tools and aching arms from battling bad hair days. The Glamoriser Straight &amp; Style Speed Brush is the only tool you will need for styling from now on. High performing, this straightening brush creates sleek, soft', ''),
(166, 1, 'Tresemme Keratin Smooth Salon Shine Waves Hair Wand', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The TRESemme Salon Shine Waves is a salon professional wand for creating curls and waves with smoothness and shine. Ultra-fast heat up and a top temperature of to 200 degree C ensures fast results while a 32mm 19mm conical ceramic barrel creates natural looking curls and waves that are shiny and healthy looking. 3 heat settings give optimum styling control to enhance hair condition by allowing you to choose the most suitable heat setting for your hair. Before styling, use the included TRESemme Keratin Smooth Shine Spray for styling protection, added shine and to help control frizz. TRESemme is dedicated to creating cutting-edge salon quality haircare and styling products. Salon inspired, stylist tested, to help you create your own style and experience that salon feeling, every day. The TRESemme Salon Shine Waves is a salon professional wand for creating curls and waves with smoothness and shine.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model No: 2804KU&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Up to 200 degree C for fast results&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Up to 200 degree C for fast results&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;32mmc19mm conical ceramic barrel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Ultra-fast heat up and heat recovery&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3 heat settings&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2.5m swivel cord&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Heat protection mat&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Heat protection glove&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;200ml Keratin Smooth Heat Protection Shine Spray&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Tresemme Keratin Smooth Salon Shine Waves Hair Wand', 'The TRESemme Salon Shine Waves is a salon professional wand for creating curls and waves with smoothness and shine. Ultra-fast heat up and a top temperature of to 200 degree C ensures fast results while a 32mm 19mm conical ceramic barrel creates natural l', ''),
(167, 1, 'Tresemme Volume shine hot brush 2807U', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The TRESemme Max the Volume hot brush is your go-to styling tool for adding volume to your hair. The large 50mm barrel helps add fullness and body as you style, whilst the ceramic barrel finish gives your hair that beautiful high shine finish.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model number: 2807U&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 38 x 13 x 8cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;50 mm barrel for volume and fullness&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Smothing ceramic finish&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Up to 200 degrees&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Firm bristles for styling control&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Advanced Ceramics for fast heat up&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2.5m Swivel Cord&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3 heat settings&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 1.5kg&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Tresemme Volume shine hot brush 2807U', 'The TRESemme Max the Volume hot brush is your go-to styling tool for adding volume to your hair. The large 50mm barrel helps add fullness and body as you style, whilst the ceramic barrel finish gives your hair that beautiful high shine finish.\r\n\r\nModel nu', ''),
(168, 1, 'BaByliss Heated curl pods 3663U', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The BaByliss heated Curl Pods are a revolution in hair curling. The unique, compact all-in-one design means there is no need for clips and pins to secure the pods in place. Simply wrap the hair around the Curl Pod and snap together for easy, flawless curls. The fast heat up ensures quick use, while the soft-to-touch finish on the pods releases heat slowly to give long-lasting effect.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 24 x 15.5 x 15.5cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: 3663U&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Plastic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;18 Large size pods&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Ultra-fast heat up for quick use&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;High temperature performance with long-lasting results&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Storage pouch for pods&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;All-in-one design for easy, secure styling&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Compact &amp;amp; lightweight&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Carry handle&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;120 degrees (approx)&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'BaByliss Heated curl pods 3663U', 'The BaByliss heated Curl Pods are a revolution in hair curling. The unique, compact all-in-one design means there is no need for clips and pins to secure the pods in place. Simply wrap the hair around the Curl Pod and snap together for easy, flawless curl', ''),
(169, 1, 'BaByliss ''Curl Secret'' Simplicity hair curler 2667U', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This revolutionary ''Curl Secret'' curler from BaByliss draws hair into the ceramic chamber to gently curl the hair from all angles. It has two heat settings and three timer settings and controls the direction of the curl for a natural look.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: 2667U&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Hair curler&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;The hair is automatically drawn in to the ceramic curl chamber where it is softly held and heated from all directions to form a curl&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 heat settings and 3 timer settings&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Automatic curl direction control for a natural finish&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;The BaByliss Curl Secret has revolutionary technology to effortlessly create beautiful, free-flowing curls with long-lasting effect&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;This styler is not designed for use on very long hair and should not be used on hair lengths below the bust&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;This styler reaches high temperatures and is not suitable to be used on either synthetic or real hair extensions&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Beauty club points are available on this line&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'BaByliss ''Curl Secret'' Simplicity hair curler 2667U', 'This revolutionary ''Curl Secret'' curler from BaByliss draws hair into the ceramic chamber to gently curl the hair from all angles. It has two heat settings and three timer settings and controls the direction of the curl for a natural look.\r\n\r\nModel: 2667U', ''),
(170, 1, 'Remington Keratin Radiance volume brush CB65A456', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The Remington Keratin Radiance collection is a revolutionary range of styling tools featuring advanced ceramic coated plates infused with Keratin and Macadamia oils for smooth, radiant, healthy looking hair. This range of ground-breaking styling tools harnesses the very latest in hair care technology. By cleverly combining Advanced Ceramic coatings with Protective Technology you can be kinder to your tresses without compromising on style. The Keratin Radiance Volume Brush is perfect for shorter length hair; create volume from the root for a full-bodied style and leave your hair with a high shine thanks to the help of the Advanced Ceramic Plates. Infused with Keratin and Macadamia oils it''s proven to strengthen and protect whilst leaving your hair with an exceptional shine.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: CB65A456&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 15.6 x 37.2 x 8.6cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Plastic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Heated styling brush&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Advanced Keratin &amp;amp; Macadamia Ceramic coating&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;45mm large barrel mixed bristle brush&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;On/off switch&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;2 temperature settings 120C / 180C&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;On indicator light&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Auto shut off after 60 minutes&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Worldwide voltage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Keratin Radiance Volume Brush, Storage pouch&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;5 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Remington Keratin Radiance volume brush CB65A456', 'The Remington Keratin Radiance collection is a revolutionary range of styling tools featuring advanced ceramic coated plates infused with Keratin and Macadamia oils for smooth, radiant, healthy looking hair. This range of ground-breaking styling tools har', ''),
(171, 1, 'Remington Keratin Radiance 38mm hair tong C16338', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The Remington Keratin Radiance collection is a revolutionary range of styling tools featuring advanced ceramic coated plates infused with Keratin and Macadamia oils for smooth, radiant, healthy looking hair. By cleverly combining Advanced Ceramic coatings with Protective Technology you can be kinder to your tresses without compromising on style. Create beautiful bouncy curls and full volume with the Keratin Radiance Professional 38mm Tong. The extra-large barrel means you get full volume with minimal effort and the Advanced Keratin &amp;amp; Macadamia Ceramic coated barrel is infused with Micro Conditioners which leaves your hair looking radiant and healthy. With 5 heat settings ranging from 120 - 210 C you can tailor the temperature to your hair type; achieving enviable, healthy looking curls couldn''t be easier.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: C16338&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 15.6 x 37.9 x 8.6cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Plastic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Professional 38mm curling tong&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Advanced Keratin &amp;amp; Macadamia Ceramic coating&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Integrated digital temperature display, 5 settings 120C - 210C&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Heat up in 30 seconds&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Ready indicator - display stops flashing when the temperature is reached&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Auto shut off after 60 minutes&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Luxury heat resistant pouch&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Worldwide voltage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Keratin Radiance 38mm Tong, Luxury heat resistant pouch&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;5 year guarantee&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Remington Keratin Radiance 38mm hair tong C16338', 'The Remington Keratin Radiance collection is a revolutionary range of styling tools featuring advanced ceramic coated plates infused with Keratin and Macadamia oils for smooth, radiant, healthy looking hair. By cleverly combining Advanced Ceramic coatings', ''),
(172, 1, 'Debenhams Girls'' pink floral headband', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This adorable floral headband is the perfect addition to a little girl''s wardrobe for a special occasion. Finished in an array of pink hues, this piece will team beautifully with a full dress.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% polyester&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Debenhams Girls'' pink floral headband', 'This adorable floral headband is the perfect addition to a little girl''s wardrobe for a special occasion. Finished in an array of pink hues, this piece will team beautifully with a full dress.\r\n\r\n100% polyester', ''),
(173, 1, 'bluezoo Brown reindeer trapper hat', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From bluezoo''s fantastic range of children''s clothing, this trapper hat is a great choice for a little one''s winter wardrobe. Crafted in a festive reindeer design, it is super-soft and features a characteristic red nose.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% acrylic&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'bluezoo Brown reindeer trapper hat', 'From bluezoo''s fantastic range of children''s clothing, this trapper hat is a great choice for a little one''s winter wardrobe. Crafted in a festive reindeer design, it is super-soft and features a characteristic red nose.\r\n\r\n100% acrylic\r\nMachine washable', ''),
(174, 1, 'The Gruffalo Brown ''Gruffalo'' fleece jumper', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This ''Gruffalo'' jumper is certain to become a firm favourite in any boy''s wardrobe. In a fluffy brown design for added warmth, it features long sleeves and a hood to ensure a cosy and insulating wear.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% cotton&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Tumble dry safe&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'The Gruffalo Brown ''Gruffalo'' fleece jumper', 'This ''Gruffalo'' jumper is certain to become a firm favourite in any boy''s wardrobe. In a fluffy brown design for added warmth, it features long sleeves and a hood to ensure a cosy and insulating wear.\r\n\r\n100% cotton\r\nMachine washable\r\nTumble dry safe', ''),
(175, 1, 'J by Jasper Conran Boys'' navy quilted zip through hoody', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;From our exclusive J by Jasper Conran range, this padded sweatshirt is a great casual layering piece to keep boys warm on chilly days. In a classic navy blue with an embroidered dog motif, it features two front pockets and has a lightweight hood. The ribbed trims, padded body and quilted arms provide a comfortable and warm fit.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Body: 100% cotton&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wadding: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Tumble dry safe&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'J by Jasper Conran Boys'' navy quilted zip through hoody', 'From our exclusive J by Jasper Conran range, this padded sweatshirt is a great casual layering piece to keep boys warm on chilly days. In a classic navy blue with an embroidered dog motif, it features two front pockets and has a lightweight hood. The ribb', ''),
(178, 1, 'Baker by Ted Baker Baby girls'' light pink floral print sleepsuit', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This sleepsuit is from the Baker by Ted Baker childrenswear range, offering excellent comfort for a little one''s nightwear collection. Made from pure cotton, its popper fastening design is finished in light pink with a bold floral print while a rip tape fastening headband features a pretty bow applique.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% cotton&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Tumble dry safe&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Baker by Ted Baker Baby girls'' light pink floral print sleepsuit', 'This sleepsuit is from the Baker by Ted Baker childrenswear range, offering excellent comfort for a little one''s nightwear collection. Made from pure cotton, its popper fastening design is finished in light pink with a bold floral print while a rip tape f', ''),
(179, 1, 'J by Jasper Conran Designer babies navy bonded fleece all in one', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Keep your baby boy warm and snug in this navy bonded fleece all in one from Junior J by Jasper Conran. It has popper fastenings running through the sides for easy changing and a branded centre pocket.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Popper fastenings&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Machine washable&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Keep away from fire&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'J by Jasper Conran Designer babies navy bonded fleece all in one', 'Keep your baby boy warm and snug in this navy bonded fleece all in one from Junior J by Jasper Conran. It has popper fastenings running through the sides for easy changing and a branded centre pocket.\r\n\r\nPopper fastenings\r\n100% polyester\r\nMachine washable', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(180, 1, 'Debenhams Oak and painted ''Wadebridge'' larder storage unit', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Our ''Wadebridge'' range combines solid oak and soft white painted acacia wood for a contemporary take on the classic country farmhouse look. This larder unit is ideal for organising kitchens and features a variety of storage options including drawers and shelving, plus racks for bottles, jars and spices.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Shelf dimensions (WD): 78 x 43m&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Drawer dimensions (HWD): Large internal 19 x 25 x 38cm; Small internal 8.5 x 8 x 38cm; External 13 x 38 x 51cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Handles: Chrome cup and pull handles&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Condiment rack dimensions (HWD): Upper 20-24 x 34 x 6.5cm; Lower 35-40 x 34 x 9cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Storage features: 2 external drawers and double cupboard with 3 adjustable shelves, 6 drawers, 2 condiment racks and 14-bottle wine rack&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Care instructions: Wipe carefully with a clean, damp cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty: 1 yea&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Debenhams Oak and painted ''Wadebridge'' larder storage unit', 'Our ''Wadebridge'' range combines solid oak and soft white painted acacia wood for a contemporary take on the classic country farmhouse look. This larder unit is ideal for organising kitchens and features a variety of storage options including drawers and s', ''),
(181, 1, 'Debenhams Small linen effect ''Chesterfield'' sofa', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Our ''Chesterfield'' range faithfully captures the traditional features which have helped the style become a true design classic. This sofa features elaborate rolled arms, turned wooden feet and button detailing, while the neutral linen-look finish adds an understated, contemporary touch.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Seat dimensions (HWD): 47 x 118 x 58cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Material: 100% polyester&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Lightweight fabric finish with the look and feel of linen&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Feet: Solid hand-turned birch&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cushion filling: Pocket sprung with a foam wrap&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Suspension: Serpentine or ''zig-zag'' metal sprung base&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fixed seat and back cushion covers&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Care instructions: Vacuum carefully to remove dust and blot spills with a clean, damp cloth. Plump cushions regularly to help retain their shape&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty: 1 year&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Debenhams Small linen effect ''Chesterfield'' sofa', 'Our ''Chesterfield'' range faithfully captures the traditional features which have helped the style become a true design classic. This sofa features elaborate rolled arms, turned wooden feet and button detailing, while the neutral linen-look finish adds an ', ''),
(182, 1, 'Debenhams Bonded leather ''Bjorn'' recliner chair and stool', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Perfect for relaxing, our ''Bjorn'' recliner chair and footstool are finished in smooth brown bonded leather with a warm, cherry wood base. Moulded foam and fibre wrap cushioning supports the body, while a simple mechanism allows the chair to be adjusted to the most comfortable angle.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dimensions when fully reclined (HWD): 94.5 x 76 x 110cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Footstool dimensions (HWD): 43.5 x 47 x 41.5cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Material: Bonded leather (20% leather, 5% latex, 5% cotton, 65% PU fibre, 5% fire retardant coating)&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Smooth, fine-textured fabric finish with the look and feel of leather&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Feet: Cherry wood base&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cushion filling: Foam and fibre wrap cushioning for a soft, comfortable look and feel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Suspension: Fibre webbing&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fixed seat and back cushion covers&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Chair reclines using an adjustable tension knob beneath the seat - this should be loosened, the chair pushed into the required position and then tightened again&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Care instructions: Vacuum carefully to remove dust and blot spills with a clean, damp cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty: 1 year&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Debenhams Bonded leather ''Bjorn'' recliner chair and stool', 'Perfect for relaxing, our ''Bjorn'' recliner chair and footstool are finished in smooth brown bonded leather with a warm, cherry wood base. Moulded foam and fibre wrap cushioning supports the body, while a simple mechanism allows the chair to be adjusted to', ''),
(183, 1, 'Home Collection ''Ella'' table lamp', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This table lamp is perfect for introducing a touch of glamour to a room. Ideal for bedrooms or living rooms, its flowing stemmed design features clear crystal embellishments to suit a variety of different décors.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dimensions (HD): 57 x 33cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Weight: 1.77kg&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Material: Metal, glass and fabric&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Electrical class II&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bulb type: Maximum 5.5W small Edison screw SES candle LED&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Number of bulbs required: 1 (not included)&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Remove light from fitting and wipe carefully with a clean, dry cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Light fully assembled&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Includes 2 year warranty&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Home Collection ''Ella'' table lamp', 'This table lamp is perfect for introducing a touch of glamour to a room. Ideal for bedrooms or living rooms, its flowing stemmed design features clear crystal embellishments to suit a variety of different décors.\r\n\r\nDimensions (HD): 57 x 33cm\r\nWeight: 1.7', ''),
(184, 1, 'Willis &amp; Gambier Oak ''Worcester'' extra-large extending table and 6 chairs', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Our ''Worcester'' range is crafted in solid oak which captures the natural character of the grain for a traditional country farmhouse look. Ideal for formal or casual dining, this set includes an extra-large table with a self-contained leaf which can be easily extended. The matching chairs are finished with a stylish cross-back design and cream cushioned seat pads.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Table dimensions (HWD): 77 x 227 x 95cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Extended table dimensions (HWD): 77 x 310 x 95cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Seat height: 48cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Chair dimensions (HWD): 97 x 44 x 52cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Main material: Solid birch frame with an oak top&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Finished with characterful knots and grain detail&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Table extension mechanism: Self-contained extendable leaf&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Care instructions: Wipe carefully with a soft, dry cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fabric care: Vacuum carefully to remove dust and blot spills with a clean, damp cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty: 1 year&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Willis &amp; Gambier Oak ''Worcester'' extra-large extending table and 6 chairs', 'Our ''Worcester'' range is crafted in solid oak which captures the natural character of the grain for a traditional country farmhouse look. Ideal for formal or casual dining, this set includes an extra-large table with a self-contained leaf which can be eas', ''),
(185, 1, 'Arthur Price 18inch Oval Mounted Gallery Tray With Handles', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Still totally handmade today, this silver plated 18inch Oval Mounted Gallery Tray with Handles is a piece of master craftsmanship. Wonderfully detailed, the Tray has pierced sides and a classic pattern that also reduces scratching and stops items on the tray from slipping when being carried. Presented in an Arthur Price of England gift box.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;18inch oval mounted gallery tray with handles&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Metal&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Silver plated&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Clean with silver cleaning products&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Gift boxed&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;10 Years&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Arthur Price 18inch Oval Mounted Gallery Tray With Handles', 'Still totally handmade today, this silver plated 18inch Oval Mounted Gallery Tray with Handles is a piece of master craftsmanship. Wonderfully detailed, the Tray has pierced sides and a classic pattern that also reduces scratching and stops items on the t', ''),
(186, 1, 'Debenhams Oak effect ''Malmo'' table and 2 bar stools', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Our ''Malmo'' table and bar stool set is an ideal space-saving solution for compact kitchens and dining areas. It features a simple design with classic slat detailing and is made from solid wood with a smooth lacquered finish that highlights the warm, honey tones of the grain.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Table dimensions (HWD): 92 x 107 x 45cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Bar stool dimensions (HWD): 61 x 35.5 x 35.5cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Main material: Rubberwood frames&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Smooth lacquered finish&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Set of 2 stools&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Care instructions: Wipe carefully with a clean, damp cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty: 1 year&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Debenhams Oak effect ''Malmo'' table and 2 bar stools', 'Our ''Malmo'' table and bar stool set is an ideal space-saving solution for compact kitchens and dining areas. It features a simple design with classic slat detailing and is made from solid wood with a smooth lacquered finish that highlights the warm, honey', ''),
(187, 1, 'Debenhams Oak ''Studio'' filing cabinet', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Inspired by open-plan living, our versatile ''Studio'' range offers practicality and style. This filing cabinet features a streamlined, contemporary design and is made from warm oak with a smooth lacquered finish. Combine it with matching pieces for a functional and flexible, modular-based storage solution.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Drawer dimensions (HWD): Top 5 x 39 x 39cm; Middle 14 x 39 x 39cm; Bottom 27 x 39 x 39cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Main material: Solid oak frame and veneers&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Smooth lacquered finish&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Handles: Subtle inset handles&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Storage features: 3 soft-close fold-out drawers&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Care instructions: Wipe carefully with a clean, damp cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty: 2 years&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Debenhams Oak ''Studio'' filing cabinet', 'Inspired by open-plan living, our versatile ''Studio'' range offers practicality and style. This filing cabinet features a streamlined, contemporary design and is made from warm oak with a smooth lacquered finish. Combine it with matching pieces for a funct', ''),
(188, 1, 'Sleepeezee Taupe grey 4 drawer divan bed with ''Opulence 4000'' mattress', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This divan bed features a polyester cover and four drawers which are ideal for storing spare bed linen. Also included is a medium tension, micro-quilted pillowtop layer to provide added support and comfort.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Single dimensions (LWD): 190 x 91 x 69cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Double dimensions (LWD): 190 x 137 x 69cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;King size dimensions (LWD): 198 x 152 x 69cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Mattress depth: 33cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Material: softwood frame with a 100% polyester cover&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Chrome coloured castors&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Base: Platform style base&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Mattress: Pocket sprung with wool and cotton filling&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Mattress tension rating: Medium&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Storage features: 4 drawers (2 on each side of bed)&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Spring count: Single 1497; Double 2379; King 2778&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Headboard not included&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Care instructions: Wipe carefully with a clean, damp cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Mattress care instructions: Turn and rotate mattress occasionally&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Manufactured in the UK&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty: 7 years&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Sleepeezee Taupe grey 4 drawer divan bed with ''Opulence 4000'' mattress', 'This divan bed features a polyester cover and four drawers which are ideal for storing spare bed linen. Also included is a medium tension, micro-quilted pillowtop layer to provide added support and comfort.\r\n\r\nSingle dimensions (LWD): 190 x 91 x 69cm\r\nDou', ''),
(189, 1, 'Debenhams Oak effect and white ''Georgia'' 6 drawer chest', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Our ''Georgia'' range has a simple and contemporary two-tone design that will suit almost any style of home. This chest is finished in white with an oak effect top and features six drawers with neat, brushed metal handles.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Drawer dimensions (HWD): Upper 15 x 28 x 30cm; Lower 15 x 62 x 30cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Main material: Particle board and MDF&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Two-tone oak effect and white foil finish&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Handles: Brushed nickel pull handles&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Storage features: 6 drawers&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Care instructions: Wipe carefully with a soft, dry cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty: 1 year&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Debenhams Oak effect and white ''Georgia'' 6 drawer chest', 'Our ''Georgia'' range has a simple and contemporary two-tone design that will suit almost any style of home. This chest is finished in white with an oak effect top and features six drawers with neat, brushed metal handles.\r\n\r\nDrawer dimensions (HWD): Upper ', ''),
(190, 1, 'Debenhams Oak effect and white ''Georgia'' double wardrobe with drawer', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Our ''Georgia'' range has a simple and contemporary two-tone design that will suit almost any style of home. This wardrobe is finished in white with an oak effect top and offers plenty of storage space for hanging items, plus two drawers underneath.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Drawer dimensions (HWD): 15 x 78 x 45cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Internal robe dimensions (HWD): 155 x 82 x 54cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Internal height to rail: 146cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Main material: Particle board, hollow board and MDF&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Two-tone oak effect and white foil finish&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Handles: Brushed nickel pull handles&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Storage features: Double robe and single drawer&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Internal fixtures and fittings: Hanging rail&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Care instructions: Wipe carefully with a soft, dry cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty: 1 year&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Debenhams Oak effect and white ''Georgia'' double wardrobe with drawer', 'Our ''Georgia'' range has a simple and contemporary two-tone design that will suit almost any style of home. This wardrobe is finished in white with an oak effect top and offers plenty of storage space for hanging items, plus two drawers underneath.\r\n\r\nDraw', ''),
(191, 1, 'Silentnight Celestial divan bed with ''Pocket Memory'' mattress and 2 drawers', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The Celestial 1000 Pocket Memory features advanced zoned Mirapocket spring system offers the ultimate in comfort. 1000 individual springs which are held under tension in their own fabric pockets with each spring responding to your body, spreading your weight evenly across the bed providing zoned support where you need it most. The mattress also features a deep layer of body moulding memory foam for ultimate pressure relief with no loss of movement or support.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Single bed dimensions (HWD): 65 x 90 x 190cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Double bed dimensions (HWD): 65 x 135 x 190cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;King size bed dimensions (HWD): 65 x 150 x 200cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Super king size bed dimensions (HWD): 65 x 180 x 200cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Main material: Wood frame with sandstone coloured upholstered cover&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Divan base has a breathable woven finish&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Black plastic castors&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Base: Platform style base&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Mattress: ''Mirapocket springs'' with body moulding memory foam and breathable anti allergy fabric&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Mattress tension rating: Medium-firm with anti-allergy and antibacterial qualities&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Storage features: 2 storage drawers on the same side&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Spring count: Single 600; Double 900; King 1000; Super king 1200&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Care instructions: Vacuum carefully to remove dust and blot spills with a clean&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Mattress care instructions: We recommend rotating the mattress head to toe regularly&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Manufactured in the UK&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty: 5 years&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Silentnight Celestial divan bed with ''Pocket Memory'' mattress and 2 drawers', 'The Celestial 1000 Pocket Memory features advanced zoned Mirapocket spring system offers the ultimate in comfort. 1000 individual springs which are held under tension in their own fabric pockets with each spring responding to your body, spreading your wei', ''),
(192, 1, 'Hahn Pisa 6 bottle pyramid wine rack', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;The Pisa wine rack is designed to hold 6 wine bottles in a sturdy, attractive and practical way. The rack will store virtually all standard wine bottles including 75cl Champagne bottles.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Dimensions: 35 x 34 x 20cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Steel&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Chrome&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Wipe with a damp cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;1 year&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Hahn Pisa 6 bottle pyramid wine rack', 'The Pisa wine rack is designed to hold 6 wine bottles in a sturdy, attractive and practical way. The rack will store virtually all standard wine bottles including 75cl Champagne bottles.\r\n\r\nDimensions: 35 x 34 x 20cm\r\nSteel\r\nChrome\r\nWipe with a damp cloth', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(193, 1, 'DeLonghi Oil filled TRD40820E Dragon 2KW radiator', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;This oil filled radiator from Dragon by Delonghi offers a 25% larger radiant surface to give you a faster air flow emission. It has an easy to use LED display with three power settings and a room thermostat.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Model: TRD40820E&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Modern, elegant design&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;New pure brilliant white&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Maximum heating power : 2500W &amp;amp; 2000W&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;3 power settings&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;The 25% larger radiant surface ensures a faster air flow emission and increased chimney effect which means better comfort.&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Digital control panel with LED display to easily select and display all the available functions&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Room thermostat to set and automatically keep the desired temperature&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Safety thermostat&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Anti-frost function&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Front and back handle&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;New soft easy wheels to improve the mobility&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cord storage&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;24-hour digital on/off timer&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;24-hour digital on/off timer&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;10 year guarantee&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;14.9g weight&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;220-240/50~60&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;HWD: 65.5 x 16 x 49.5cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;EAN: 8004399101166&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'DeLonghi Oil filled TRD40820E Dragon 2KW radiator', 'This oil filled radiator from Dragon by Delonghi offers a 25% larger radiant surface to give you a faster air flow emission. It has an easy to use LED display with three power settings and a room thermostat.\r\n\r\nModel: TRD40820E\r\nModern, elegant design\r\nNe', ''),
(194, 1, 'Debenhams Brown wicker ''Olympia'' 2 drawer wall unit', '&lt;div class=&quot;pdp-item-dimensions&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; font-weight: bold; padding-top: 15px; padding-bottom: 15px;&quot;&gt;&lt;span style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; line-height: 26px;&quot;&gt;Dimensions (HWD):&lt;/span&gt;&amp;nbsp;&lt;span class=&quot;pdp-item-dimensions-h&quot; style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; line-height: 26px;&quot;&gt;40&lt;/span&gt;&amp;nbsp;x&amp;nbsp;&lt;span class=&quot;pdp-item-dimensions-w&quot; style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; line-height: 26px;&quot;&gt;80&lt;/span&gt;&amp;nbsp;x&amp;nbsp;&lt;span class=&quot;pdp-item-dimensions-d&quot; style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; line-height: 26px;&quot;&gt;20&lt;/span&gt;cm&lt;/div&gt;&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Perfect for adding a touch of rustic charm, our ''Olympia'' range offers practical and versatile storage pieces which can be used throughout the home. This wall unit features a lightweight frame with handy hooks, plus two chunky rush wicker baskets which are fabric-lined to protect items.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Drawer dimensions (HWD): 18 x 34 x 16cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Height excluding hook section: 21cm&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Main material: Solid hardwood frame&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Smooth lacquered finish&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Rush wicker baskets with cotton blend fabric lining&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Storage features: 2 drawers and 4 hooks&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Care instructions: Wipe carefully with a soft, dry cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty: 1 year&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Debenhams Brown wicker ''Olympia'' 2 drawer wall unit', 'Dimensions (HWD): 40 x 80 x 20cm\r\nPerfect for adding a touch of rustic charm, our ''Olympia'' range offers practical and versatile storage pieces which can be used throughout the home. This wall unit features a lightweight frame with handy hooks, plus two c', ''),
(195, 1, 'Willis &amp; Gambier White painted ''Florence'' end of bed bench', '&lt;div class=&quot;details-row clear_both&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; clear: both;&quot;&gt;&lt;div id=&quot;inspirational_copy&quot;&gt;&lt;p style=&quot;font-family: lato, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, Helvetica, sans-serif; margin-bottom: 15px; padding: 10px 0px; border: 0px; line-height: 1.3;&quot;&gt;Our ''Florence'' range captures the serenity of a French country chateau with its elegant vintage style. This bench has a gently distressed white painted finish and features carved detailing to enhance the charming, antique look. It is perfect for placing at the end of the bed and offers a handy spot to change shoes or keep linen while making up the bed.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;info1&quot; style=&quot;font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif; color: rgb(0, 0, 0); font-size: 16px; padding: 15px;&quot;&gt;&lt;ul style=&quot;color: rgb(64, 64, 64); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-size: 11px; list-style-position: initial; list-style-image: initial; font-family: Tahoma, Arial, Verdana, Helvetica, sans-serif !important;&quot;&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Main material: Hardwood frame&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;White painted finish with gently distressed effect&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Cream fabric cushioned seat pad&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Care instructions: Wipe carefully with a soft, dry cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Fabric care: Vacuum carefully to remove dust and blot spills with a clean, damp cloth&lt;/li&gt;&lt;li style=&quot;color: rgb(0, 0, 0); margin: 0px; padding: 0px; border: 0px; font-size: 16px; font-family: Lato, HelveticaNeue, Helvetica, Arial, sans-serif !important;&quot;&gt;Warranty: 1 year&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;', '', 'Willis &amp; Gambier White painted ''Florence'' end of bed bench', 'Our ''Florence'' range captures the serenity of a French country chateau with its elegant vintage style. This bench has a gently distressed white painted finish and features carved detailing to enhance the charming, antique look. It is perfect for placing a', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(501, 55, 1, 2, 0, '457.0000', '2016-11-22', '2016-12-08'),
(471, 54, 1, 3, 0, '699.0000', '2016-11-21', '2016-12-07'),
(502, 53, 1, 2, 0, '199.0000', '2016-11-21', '2016-12-08'),
(499, 50, 1, 2, 0, '300.0000', '2016-11-21', '2016-12-14'),
(504, 51, 1, 3, 0, '350.0000', '2016-11-21', '2016-12-07'),
(498, 52, 1, 2, 0, '449.0000', '2016-11-21', '2016-12-14'),
(495, 56, 1, 4, 0, '399.0000', '2016-11-22', '2016-12-15'),
(496, 57, 1, 3, 0, '299.0000', '2016-11-22', '2016-12-13'),
(493, 58, 1, 4, 0, '349.0000', '2016-11-22', '2016-12-06'),
(494, 60, 1, 2, 0, '399.0000', '2016-11-22', '2016-12-14'),
(503, 61, 1, 3, 0, '249.0000', '2016-11-22', '2016-12-15'),
(492, 62, 1, 4, 0, '3.0000', '2016-11-22', '2016-12-14'),
(505, 63, 1, 2, 0, '1.5000', '2016-11-22', '2016-12-13'),
(509, 65, 1, 3, 0, '2.0000', '2016-11-22', '2016-12-14'),
(512, 66, 1, 3, 0, '3.0000', '2016-11-22', '2016-12-08'),
(513, 67, 1, 4, 0, '7.0000', '2016-11-22', '2016-12-15'),
(518, 68, 1, 2, 0, '6.0000', '2016-11-22', '2016-12-14'),
(515, 69, 1, 3, 0, '8.0000', '2016-11-22', '2016-12-14'),
(517, 70, 1, 3, 0, '15.0000', '2016-11-22', '2016-12-14'),
(519, 71, 1, 3, 0, '5.0000', '2016-11-22', '2016-12-08'),
(522, 72, 1, 3, 0, '8.0000', '2016-11-22', '2016-12-15'),
(523, 73, 1, 4, 0, '11.0000', '2016-11-22', '2016-12-14'),
(527, 74, 1, 2, 0, '3.0000', '2016-11-22', '2016-12-07'),
(525, 75, 1, 3, 0, '6.0000', '2016-11-22', '2016-12-14'),
(528, 76, 1, 4, 0, '16.0000', '2016-11-22', '2016-12-14'),
(533, 77, 1, 3, 0, '20.0000', '2016-11-22', '2016-12-15'),
(530, 78, 1, 2, 0, '2.0000', '2016-11-22', '2016-12-08'),
(534, 79, 1, 2, 0, '4.0000', '2016-11-22', '2016-12-15'),
(535, 80, 1, 4, 0, '7.0000', '2016-11-22', '2016-12-22'),
(538, 81, 1, 2, 0, '6.0000', '2016-11-22', '2016-12-06'),
(539, 82, 1, 3, 0, '8.0000', '2016-11-22', '2016-12-13'),
(542, 84, 1, 4, 0, '1.5000', '2016-11-22', '2016-12-15'),
(543, 85, 1, 5, 0, '1.6000', '2016-11-22', '2016-12-14'),
(548, 86, 1, 3, 0, '1.0000', '2016-11-22', '2016-12-15'),
(551, 87, 1, 2, 0, '5.0000', '2016-11-22', '2016-12-15'),
(550, 89, 1, 3, 0, '7.0000', '2016-11-22', '2016-12-14'),
(556, 90, 1, 4, 0, '19.0000', '2016-11-22', '2016-12-15'),
(555, 91, 1, 3, 0, '14.0000', '2016-11-22', '2016-12-14'),
(554, 92, 1, 3, 0, '8.0000', '2016-11-22', '2016-12-15'),
(561, 93, 1, 3, 0, '9.0000', '2016-11-22', '2016-12-21'),
(569, 94, 1, 4, 0, '8.0000', '2016-11-22', '2016-12-15'),
(560, 95, 1, 4, 0, '16.0000', '2016-11-22', '2016-12-15'),
(567, 96, 1, 4, 0, '20.0000', '2016-11-22', '2016-12-21'),
(563, 97, 1, 2, 0, '25.0000', '2016-11-22', '2016-12-21'),
(568, 98, 1, 3, 0, '24.0000', '2016-11-22', '2016-12-06'),
(565, 99, 1, 2, 0, '22.0000', '2016-11-22', '2016-12-14'),
(570, 100, 1, 2, 0, '12.0000', '2016-11-23', '2016-12-14'),
(571, 101, 1, 2, 0, '14.0000', '2016-11-23', '2016-12-15'),
(572, 102, 1, 4, 0, '11.0000', '2016-11-23', '2016-12-15'),
(573, 103, 1, 2, 0, '9.0000', '2016-11-23', '2016-12-15'),
(574, 104, 1, 3, 0, '35.0000', '2016-11-23', '2016-12-13'),
(575, 106, 1, 4, 0, '8.0000', '2016-11-23', '2016-12-15'),
(576, 107, 1, 4, 0, '7.0000', '2016-11-23', '2016-12-14'),
(578, 109, 1, 3, 0, '10.0000', '2016-11-23', '2016-12-14'),
(579, 110, 1, 4, 0, '7.0000', '2016-11-23', '2016-12-22'),
(580, 111, 1, 3, 0, '4.0000', '2016-11-23', '2016-12-15'),
(581, 112, 1, 5, 0, '11.0000', '2016-11-23', '2016-12-22'),
(582, 113, 1, 5, 0, '12.0000', '2016-11-23', '2016-12-15'),
(583, 114, 1, 6, 0, '15.0000', '2016-11-23', '2016-12-22'),
(584, 115, 1, 3, 0, '10.0000', '2016-11-23', '2016-12-22'),
(585, 116, 1, 2, 0, '35.0000', '2016-11-23', '2016-12-14'),
(586, 117, 1, 4, 0, '30.0000', '2016-11-23', '2016-12-23'),
(588, 118, 1, 3, 0, '35.0000', '2016-11-23', '2016-12-14'),
(589, 119, 1, 4, 0, '37.0000', '2016-11-23', '2016-12-21'),
(590, 120, 1, 3, 0, '24.0000', '2016-11-23', '2016-12-21'),
(591, 121, 1, 3, 0, '23.0000', '2016-11-23', '2016-12-14'),
(592, 122, 1, 2, 0, '45.0000', '2016-11-23', '2016-12-22'),
(593, 125, 1, 3, 0, '35.0000', '2016-11-23', '2016-12-21'),
(595, 126, 1, 4, 0, '11.0000', '2016-11-23', '2016-12-14'),
(596, 128, 1, 3, 0, '30.0000', '2016-11-23', '2016-12-22'),
(597, 130, 1, 3, 0, '22.0000', '2016-11-23', '2016-12-15'),
(598, 131, 1, 3, 0, '19.0000', '2016-11-23', '2016-12-15'),
(599, 140, 1, 3, 0, '8.0000', '2016-11-23', '2016-12-15'),
(600, 142, 1, 3, 0, '7.0000', '2016-11-23', '2016-12-15'),
(601, 146, 1, 3, 0, '11.0000', '2016-11-24', '2016-12-14'),
(602, 148, 1, 3, 0, '7.0000', '2016-11-24', '2016-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2603, 54, 'catalog/products/women bags/bags/bag3.jpg', 0),
(2706, 60, 'catalog/products/women bags/hobo handbags/bag5.jpg', 0),
(3086, 149, 'catalog/products/Electronics/kettles/Morphy Richards/pic2.jpg', 0),
(3151, 178, 'catalog/products/Kids/Baby/pic5.jpg', 0),
(2404, 36, 'catalog/p12.jpg', 0),
(2403, 36, 'catalog/p15.jpg', 0),
(2712, 57, 'catalog/products/women bags/diaper bags/bag5.jpg', 0),
(2799, 75, 'catalog/products/jwellery/bracelets/pic2.jpg', 0),
(2724, 55, 'catalog/products/women bags/bags/bag6.jpg', 0),
(3152, 178, 'catalog/products/Kids/Baby/pic4.jpg', 0),
(2711, 57, 'catalog/products/women bags/diaper bags/bag6.jpg', 0),
(3150, 177, 'catalog/products/Kids/Girls/pic2.jpg', 0),
(3149, 177, 'catalog/products/Kids/Girls/pic1.jpg', 0),
(3088, 149, 'catalog/products/Electronics/kettles/Morphy Richards/pic1.jpg', 0),
(2726, 53, 'catalog/products/women bags/bags/bag1.jpg', 0),
(2725, 53, 'catalog/products/women bags/bags/bag2.jpg', 0),
(2402, 36, 'catalog/p14.jpg', 0),
(2401, 36, 'catalog/p13.jpg', 0),
(2803, 74, 'catalog/products/jwellery/bracelets/pic1.jpg', 0),
(2709, 56, 'catalog/products/women bags/diaper bags/bag2.jpg', 0),
(2723, 55, 'catalog/products/women bags/bags/bag5.jpg', 0),
(2732, 61, 'catalog/products/women bags/hobo handbags/bag9.jpg', 0),
(3085, 148, 'catalog/products/Electronics/kettles/Morphy Richards/pic5.jpg', 0),
(3084, 148, 'catalog/products/Electronics/kettles/Morphy Richards/pic4.jpg', 0),
(2707, 56, 'catalog/products/women bags/diaper bags/bag3.jpg', 0),
(3148, 176, 'catalog/products/Kids/Girls/pic3.jpg', 0),
(3083, 148, 'catalog/products/Electronics/kettles/Morphy Richards/pic6.jpg', 0),
(2602, 54, 'catalog/products/women bags/bags/bag4.jpg', 0),
(2722, 55, 'catalog/products/women bags/bags/bag7.jpg', 0),
(3087, 149, 'catalog/products/Electronics/kettles/Morphy Richards/pic3.jpg', 0),
(2708, 56, 'catalog/products/women bags/diaper bags/bag1.jpg', 0),
(2718, 50, 'catalog/products/women bags/clutch bags/bag1.jpg', 0),
(2717, 50, 'catalog/products/women bags/clutch bags/bag2.jpg', 0),
(2734, 51, 'catalog/products/women bags/clutch bags/bag3.jpg', 0),
(2733, 51, 'catalog/products/women bags/clutch bags/bag4.jpg', 0),
(2716, 52, 'catalog/products/women bags/clutch bags/bag5.jpg', 0),
(2715, 52, 'catalog/products/women bags/clutch bags/bag6.jpg', 0),
(2710, 57, 'catalog/products/women bags/diaper bags/bag4.jpg', 0),
(2699, 58, 'catalog/products/women bags/diaper bags/bag9.jpg', 0),
(2698, 58, 'catalog/products/women bags/diaper bags/bag8.jpg', 0),
(2697, 58, 'catalog/products/women bags/diaper bags/bag7.jpg', 0),
(2702, 59, 'catalog/products/women bags/hobo handbags/bag3.jpg', 0),
(2701, 59, 'catalog/products/women bags/hobo handbags/bag2.jpg', 0),
(2700, 59, 'catalog/products/women bags/hobo handbags/bag1.jpg', 0),
(2705, 60, 'catalog/products/women bags/hobo handbags/bag4.jpg', 0),
(2704, 60, 'catalog/products/women bags/hobo handbags/bag7.jpg', 0),
(2703, 60, 'catalog/products/women bags/hobo handbags/bag6.jpg', 0),
(2731, 61, 'catalog/products/women bags/hobo handbags/bag8.jpg', 0),
(2730, 61, 'catalog/products/women bags/hobo handbags/bag10.jpg', 0),
(2696, 62, 'catalog/products/women shoes/flat shoes/shoes2.jpg', 0),
(2695, 62, 'catalog/products/women shoes/flat shoes/shoes3.jpg', 0),
(2694, 62, 'catalog/products/women shoes/flat shoes/shoes1.jpg', 0),
(2737, 63, 'catalog/products/women shoes/flat shoes/shoes4.jpg', 0),
(2736, 63, 'catalog/products/women shoes/flat shoes/shoes5.jpg', 0),
(2735, 63, 'catalog/products/women shoes/flat shoes/shoes6.jpg', 0),
(2729, 64, 'catalog/products/women shoes/flat shoes/shoes7.jpg', 0),
(2728, 64, 'catalog/products/women shoes/flat shoes/shoes8.jpg', 0),
(2727, 64, 'catalog/products/women shoes/flat shoes/shoes9.jpg', 0),
(2749, 65, 'catalog/products/women shoes/flat sandals/pic2.jpg', 0),
(2748, 65, 'catalog/products/women shoes/flat sandals/pic3.jpg', 0),
(2747, 65, 'catalog/products/women shoes/flat sandals/pic1.jpg', 0),
(2758, 66, 'catalog/products/women shoes/flat sandals/pic4.jpg', 0),
(2757, 66, 'catalog/products/women shoes/flat sandals/pic5.jpg', 0),
(2756, 66, 'catalog/products/women shoes/flat sandals/pic6.jpg', 0),
(2761, 67, 'catalog/products/women shoes/flat sandals/pic8.jpg', 0),
(2760, 67, 'catalog/products/women shoes/flat sandals/pic7.jpg', 0),
(2759, 67, 'catalog/products/women shoes/flat sandals/pic9.jpg', 0),
(2776, 68, 'catalog/products/women shoes/boots/pic3.jpg', 0),
(2775, 68, 'catalog/products/women shoes/boots/pic2.jpg', 0),
(2774, 68, 'catalog/products/women shoes/boots/pic1.jpg', 0),
(2765, 69, 'catalog/products/women shoes/boots/pic4.jpg', 0),
(2766, 69, 'catalog/products/women shoes/boots/pic5.jpg', 0),
(2767, 69, 'catalog/products/women shoes/boots/pic6.jpg', 0),
(2773, 70, 'catalog/products/women shoes/boots/pic9.jpg', 0),
(2772, 70, 'catalog/products/women shoes/boots/pic8.jpg', 0),
(2771, 70, 'catalog/products/women shoes/boots/pic7.jpg', 0),
(2777, 71, 'catalog/products/women shoes/heels/heels1.jpg', 0),
(2778, 71, 'catalog/products/women shoes/heels/heels2.jpg', 0),
(2779, 71, 'catalog/products/women shoes/heels/heels3.jpg', 0),
(2794, 72, 'catalog/products/women shoes/heels/heels6.jpg', 0),
(2793, 72, 'catalog/products/women shoes/heels/heels5.jpg', 0),
(2792, 72, 'catalog/products/women shoes/heels/heels4.jpg', 0),
(2797, 73, 'catalog/products/women shoes/heels/heels9.jpg', 0),
(2796, 73, 'catalog/products/women shoes/heels/heels8.jpg', 0),
(2795, 73, 'catalog/products/women shoes/heels/heels7.jpg', 0),
(2800, 75, 'catalog/products/jwellery/bracelets/pic3.jpg', 0),
(2805, 76, 'catalog/products/jwellery/bracelets/pic4.jpg', 0),
(2804, 76, 'catalog/products/jwellery/bracelets/pic5.jpg', 0),
(2815, 77, 'catalog/products/jwellery/pendent/pic2.jpg', 0),
(2814, 77, 'catalog/products/jwellery/pendent/pic1.jpg', 0),
(2808, 78, 'catalog/products/jwellery/pendent/pic3.jpg', 0),
(2809, 78, 'catalog/products/jwellery/pendent/pic4.jpg', 0),
(2817, 79, 'catalog/products/jwellery/pendent/pic2.jpg', 0),
(2816, 79, 'catalog/products/jwellery/pendent/pic5.jpg', 0),
(2819, 80, 'catalog/products/jwellery/pendent/pic2.jpg', 0),
(2818, 80, 'catalog/products/jwellery/pendent/pic6.jpg', 0),
(2825, 81, 'catalog/products/jwellery/pendent/pic8.jpg', 0),
(2824, 81, 'catalog/products/jwellery/pendent/pic7.jpg', 0),
(2827, 82, 'catalog/products/jwellery/pendent/pic10.jpg', 0),
(2826, 82, 'catalog/products/jwellery/pendent/pic9.jpg', 0),
(2828, 83, 'catalog/products/jwellery/pins/pic1.jpg', 0),
(2831, 84, 'catalog/products/jwellery/pins/pic2.jpg', 0),
(2832, 85, 'catalog/products/jwellery/pins/pic3.jpg', 0),
(2849, 86, 'catalog/products/women dresses/causial dresses/pic3.jpg', 0),
(2848, 86, 'catalog/products/women dresses/causial dresses/pic2.jpg', 0),
(2847, 86, 'catalog/products/women dresses/causial dresses/pic1.jpg', 0),
(2857, 87, 'catalog/products/women dresses/causial dresses/pic4.jpg', 0),
(2856, 87, 'catalog/products/women dresses/causial dresses/pic5.jpg', 0),
(2859, 88, 'catalog/products/women dresses/causial dresses/pic6.jpg', 0),
(2858, 88, 'catalog/products/women dresses/causial dresses/pic7.jpg', 0),
(2855, 89, 'catalog/products/women dresses/causial dresses/pic8.jpg', 0),
(2854, 89, 'catalog/products/women dresses/causial dresses/pic9.jpg', 0),
(2853, 89, 'catalog/products/women dresses/causial dresses/pic10.jpg', 0),
(2883, 90, 'catalog/products/women dresses/evening/pic4.jpg', 0),
(2882, 90, 'catalog/products/women dresses/evening/pic3.jpg', 0),
(2881, 90, 'catalog/products/women dresses/evening/pic2.jpg', 0),
(2880, 90, 'catalog/products/women dresses/evening/pic1.jpg', 0),
(2879, 91, 'catalog/products/women dresses/evening/pic7.jpg', 0),
(2878, 91, 'catalog/products/women dresses/evening/pic6.jpg', 0),
(2877, 91, 'catalog/products/women dresses/evening/pic5.jpg', 0),
(2874, 92, 'catalog/products/women dresses/evening/pic8.jpg', 0),
(2875, 92, 'catalog/products/women dresses/evening/pic9.jpg', 0),
(2876, 92, 'catalog/products/women dresses/evening/pic10.jpg', 0),
(2898, 93, 'catalog/products/women dresses/designer/pic3.jpg', 0),
(2897, 93, 'catalog/products/women dresses/designer/pic2.jpg', 0),
(2896, 93, 'catalog/products/women dresses/designer/pic1.jpg', 0),
(2926, 94, 'catalog/products/women dresses/designer/pic6.jpg', 0),
(2925, 94, 'catalog/products/women dresses/designer/pic5.jpg', 0),
(2924, 94, 'catalog/products/women dresses/designer/pic4.jpg', 0),
(2895, 95, 'catalog/products/women dresses/designer/pic9.jpg', 0),
(2894, 95, 'catalog/products/women dresses/designer/pic8.jpg', 0),
(2893, 95, 'catalog/products/women dresses/designer/pic7.jpg', 0),
(2919, 96, 'catalog/products/women dresses/party/pic1.jpg', 0),
(2918, 96, 'catalog/products/women dresses/party/pic2.jpg', 0),
(2917, 96, 'catalog/products/women dresses/party/pic3.jpg', 0),
(2902, 97, 'catalog/products/women dresses/party/pic4.jpg', 0),
(2903, 97, 'catalog/products/women dresses/party/pic5.jpg', 0),
(2904, 97, 'catalog/products/women dresses/party/pic6.jpg', 0),
(2905, 97, 'catalog/products/women dresses/party/pic7.jpg', 0),
(2923, 98, 'catalog/products/women dresses/party/pic11.jpg', 0),
(2922, 98, 'catalog/products/women dresses/party/pic10.jpg', 0),
(2921, 98, 'catalog/products/women dresses/party/pic8.jpg', 0),
(2920, 98, 'catalog/products/women dresses/party/pic9.jpg', 0),
(2910, 99, 'catalog/products/women dresses/party/pic12.jpg', 0),
(2911, 99, 'catalog/products/women dresses/party/pic13.jpg', 0),
(2912, 99, 'catalog/products/women dresses/party/pic14.jpg', 0),
(2913, 99, 'catalog/products/women dresses/party/pic15.jpg', 0),
(2927, 100, 'catalog/products/Man shoes/sport/pic1.jpg', 0),
(2928, 100, 'catalog/products/Man shoes/sport/pic2.jpg', 0),
(2929, 100, 'catalog/products/Man shoes/sport/pic3.jpg', 0),
(2930, 101, 'catalog/products/Man shoes/sport/pic4.jpg', 0),
(2931, 101, 'catalog/products/Man shoes/sport/pic5.jpg', 0),
(2932, 102, 'catalog/products/Man shoes/casual/pic1.jpg', 0),
(2933, 102, 'catalog/products/Man shoes/casual/pic2.jpg', 0),
(2934, 102, 'catalog/products/Man shoes/casual/pic3.jpg', 0),
(2935, 102, 'catalog/products/Man shoes/casual/pic4.jpg', 0),
(2936, 104, 'catalog/products/Man shoes/leather/pic1.jpg', 0),
(2937, 104, 'catalog/products/Man shoes/leather/pic2.jpg', 0),
(2938, 104, 'catalog/products/Man shoes/leather/pic3.jpg', 0),
(2939, 104, 'catalog/products/Man shoes/leather/pic4.jpg', 0),
(2940, 105, 'catalog/products/Man shoes/leather/pic5.jpg', 0),
(2941, 105, 'catalog/products/Man shoes/leather/pic6.jpg', 0),
(2942, 105, 'catalog/products/Man shoes/leather/pic7.jpg', 0),
(2943, 105, 'catalog/products/Man shoes/leather/pic8.jpg', 0),
(3147, 176, 'catalog/products/Kids/Girls/pic4.jpg', 0),
(2961, 106, 'catalog/products/Man shoes/canvas/pic1.jpg', 0),
(2962, 106, 'catalog/products/Man shoes/canvas/pic2.jpg', 0),
(2963, 106, 'catalog/products/Man shoes/canvas/pic3.jpg', 0),
(2964, 106, 'catalog/products/Man shoes/canvas/pic4.jpg', 0),
(2965, 107, 'catalog/products/Man shoes/canvas/pic8.jpg', 0),
(2966, 107, 'catalog/products/Man shoes/canvas/pic6.jpg', 0),
(2967, 107, 'catalog/products/Man shoes/canvas/pic7.jpg', 0),
(2968, 107, 'catalog/products/Man shoes/canvas/pic5.jpg', 0),
(2969, 108, 'catalog/products/Man Dresses/Casual/pic1.jpg', 0),
(2970, 108, 'catalog/products/Man Dresses/Casual/pic2.jpg', 0),
(2971, 108, 'catalog/products/Man Dresses/Casual/pic3.jpg', 0),
(2977, 109, 'catalog/products/Man Dresses/Casual/pic6.jpg', 0),
(2976, 109, 'catalog/products/Man Dresses/Casual/pic5.jpg', 0),
(2975, 109, 'catalog/products/Man Dresses/Casual/pic4.jpg', 0),
(2978, 110, 'catalog/products/Man Dresses/T-Shirt/pic3.jpg', 0),
(2979, 110, 'catalog/products/Man Dresses/T-Shirt/pic2.jpg', 0),
(2980, 110, 'catalog/products/Man Dresses/T-Shirt/pic1.jpg', 0),
(2981, 111, 'catalog/products/Man Dresses/T-Shirt/pic6.jpg', 0),
(2982, 111, 'catalog/products/Man Dresses/T-Shirt/pic5.jpg', 0),
(2983, 111, 'catalog/products/Man Dresses/T-Shirt/pic4.jpg', 0),
(2984, 112, 'catalog/products/Man Dresses/Hoodies/pic1.jpg', 0),
(2985, 112, 'catalog/products/Man Dresses/Hoodies/pic2.jpg', 0),
(2986, 112, 'catalog/products/Man Dresses/Hoodies/pic3.jpg', 0),
(2987, 113, 'catalog/products/Man Dresses/Hoodies/pic4.jpg', 0),
(2988, 113, 'catalog/products/Man Dresses/Hoodies/pic5.jpg', 0),
(2989, 114, 'catalog/products/Man Dresses/Suits/pic2.jpg', 0),
(2990, 114, 'catalog/products/Man Dresses/Suits/pic3.jpg', 0),
(2991, 114, 'catalog/products/Man Dresses/Suits/pic1.jpg', 0),
(2992, 114, 'catalog/products/Man Dresses/Suits/pic4.jpg', 0),
(2993, 115, 'catalog/products/Man Dresses/Suits/pic5.jpg', 0),
(2994, 115, 'catalog/products/Man Dresses/Suits/pic6.jpg', 0),
(2995, 115, 'catalog/products/Man Dresses/Suits/pic7.jpg', 0),
(2996, 116, 'catalog/products/Man Watches/Rolex/pic4.jpg', 0),
(2997, 116, 'catalog/products/Man Watches/Rolex/pic5.jpg', 0),
(2998, 117, 'catalog/products/Man Watches/Rolex/pic1.jpg', 0),
(2999, 117, 'catalog/products/Man Watches/Rolex/pic2.jpg', 0),
(3000, 117, 'catalog/products/Man Watches/Rolex/pic3.jpg', 0),
(3002, 118, 'catalog/products/Man Watches/Casio/pic2.jpg', 0),
(3003, 119, 'catalog/products/Man Watches/Casio/pic1.jpg', 0),
(3004, 120, 'catalog/products/Man Watches/Armani Exchange/pic1.jpg', 0),
(3005, 122, 'catalog/products/Man Watches/Citizen/pic1.jpg', 0),
(3006, 122, 'catalog/products/Man Watches/Citizen/pic2.jpg', 0),
(3007, 122, 'catalog/products/Man Watches/Citizen/pic3.jpg', 0),
(3008, 123, 'catalog/products/Man Watches/Citizen/pic4.jpg', 0),
(3009, 123, 'catalog/products/Man Watches/Citizen/pic5.jpg', 0),
(3010, 124, 'catalog/products/Man Sunglasses/Ray-Bar/pic5.jpg', 0),
(3011, 124, 'catalog/products/Man Sunglasses/Ray-Bar/pic6.jpg', 0),
(3012, 124, 'catalog/products/Man Sunglasses/Ray-Bar/pic7.jpg', 0),
(3013, 125, 'catalog/products/Man Sunglasses/Ray-Bar/pic1.jpg', 0),
(3014, 125, 'catalog/products/Man Sunglasses/Ray-Bar/pic2.jpg', 0),
(3015, 125, 'catalog/products/Man Sunglasses/Ray-Bar/pic3.jpg', 0),
(3016, 125, 'catalog/products/Man Sunglasses/Ray-Bar/pic4.jpg', 0),
(3019, 126, 'catalog/products/Man Sunglasses/Arnette/pic1.jpg', 0),
(3018, 127, 'catalog/products/Man Sunglasses/Arnette/pic2.jpg', 0),
(3020, 128, 'catalog/products/Man Sunglasses/Oakley/pic7.jpg', 0),
(3021, 128, 'catalog/products/Man Sunglasses/Oakley/pic6.jpg', 0),
(3022, 128, 'catalog/products/Man Sunglasses/Oakley/pic5.jpg', 0),
(3023, 129, 'catalog/products/Man Sunglasses/Oakley/pic1.jpg', 0),
(3024, 129, 'catalog/products/Man Sunglasses/Oakley/pic2.jpg', 0),
(3025, 129, 'catalog/products/Man Sunglasses/Oakley/pic3.jpg', 0),
(3026, 129, 'catalog/products/Man Sunglasses/Oakley/pic4.jpg', 0),
(3027, 130, 'catalog/products/Man Sunglasses/Dolce/pic4.jpg', 0),
(3028, 131, 'catalog/products/Man Sunglasses/Dolce/pic1.jpg', 0),
(3029, 131, 'catalog/products/Man Sunglasses/Dolce/pic2.jpg', 0),
(3030, 131, 'catalog/products/Man Sunglasses/Dolce/pic3.jpg', 0),
(3040, 132, 'catalog/products/Electronics/Phones/Sony/pic2.jpg', 0),
(3039, 132, 'catalog/products/Electronics/Phones/Sony/pic1.jpg', 0),
(3042, 133, 'catalog/products/Electronics/Phones/Sony/pic4.jpg', 0),
(3041, 133, 'catalog/products/Electronics/Phones/Sony/pic3.jpg', 0),
(3043, 134, 'catalog/products/Electronics/Phones/Samsung/pic1.jpg', 0),
(3044, 134, 'catalog/products/Electronics/Phones/Samsung/pic2.png', 0),
(3045, 135, 'catalog/products/Electronics/Phones/Samsung/pic3.jpg', 0),
(3046, 135, 'catalog/products/Electronics/Phones/Samsung/pic4.jpg', 0),
(3047, 136, 'catalog/products/Electronics/Phones/Apple/pic1.png', 0),
(3048, 136, 'catalog/products/Electronics/Phones/Apple/pic2.png', 0),
(3049, 136, 'catalog/products/Electronics/Phones/Apple/pic3.jpg', 0),
(3050, 137, 'catalog/products/Electronics/Phones/Apple/pic4.jpg', 0),
(3051, 137, 'catalog/products/Electronics/Phones/Apple/pic5.jpg', 0),
(3052, 138, 'catalog/products/Electronics/Phones/Nokia/pic1.jpg', 0),
(3053, 138, 'catalog/products/Electronics/Phones/Nokia/pic2.jpg', 0),
(3054, 139, 'catalog/products/Electronics/Phones/Nokia/pic3.jpg', 0),
(3055, 139, 'catalog/products/Electronics/Phones/Nokia/pic4.jpg', 0),
(3059, 140, 'catalog/products/Electronics/Headphones/hmdx/pic4.jpg', 0),
(3060, 140, 'catalog/products/Electronics/Headphones/hmdx/pic5.jpg', 0),
(3061, 140, 'catalog/products/Electronics/Headphones/hmdx/pic6.jpg', 0),
(3062, 140, 'catalog/products/Electronics/Headphones/hmdx/pic7.jpg', 0),
(3063, 141, 'catalog/products/Electronics/Headphones/hmdx/pic1.jpg', 0),
(3064, 141, 'catalog/products/Electronics/Headphones/hmdx/pic2.jpg', 0),
(3065, 141, 'catalog/products/Electronics/Headphones/hmdx/pic3.jpg', 0),
(3066, 142, 'catalog/products/Electronics/Headphones/kitsound/pic1.jpg', 0),
(3067, 142, 'catalog/products/Electronics/Headphones/kitsound/pic2.jpg', 0),
(3068, 142, 'catalog/products/Electronics/Headphones/kitsound/pic3.jpg', 0),
(3069, 142, 'catalog/products/Electronics/Headphones/kitsound/pic4.jpg', 0),
(3070, 143, 'catalog/products/Electronics/Headphones/kitsound/pic5.jpg', 0),
(3071, 143, 'catalog/products/Electronics/Headphones/kitsound/pic6.jpg', 0),
(3072, 143, 'catalog/products/Electronics/Headphones/kitsound/pic7.jpg', 0),
(3073, 143, 'catalog/products/Electronics/Headphones/kitsound/pic8.jpg', 0),
(3074, 144, 'catalog/products/Electronics/Headphones/marley/pic1.jpg', 0),
(3075, 145, 'catalog/products/Electronics/Headphones/marley/pic2.jpg', 0),
(3076, 145, 'catalog/products/Electronics/Headphones/marley/pic3.jpg', 0),
(3077, 145, 'catalog/products/Electronics/Headphones/marley/pic4.jpg', 0),
(3078, 146, 'catalog/products/Electronics/Headphones/monster/pic3.jpg', 0),
(3079, 146, 'catalog/products/Electronics/Headphones/monster/pic1.jpg', 0),
(3080, 146, 'catalog/products/Electronics/Headphones/monster/pic2.jpg', 0),
(3081, 147, 'catalog/products/Electronics/Headphones/monster/pic4.jpg', 0),
(3082, 147, 'catalog/products/Electronics/Headphones/monster/pic5.jpg', 0),
(3089, 150, 'catalog/products/Electronics/kettles/Delongi/pic4.jpg', 0),
(3090, 150, 'catalog/products/Electronics/kettles/Delongi/pic5.jpg', 0),
(3091, 150, 'catalog/products/Electronics/kettles/Delongi/pic6.jpg', 0),
(3092, 151, 'catalog/products/Electronics/kettles/Delongi/pic3.jpg', 0),
(3093, 151, 'catalog/products/Electronics/kettles/Delongi/pic1.jpg', 0),
(3094, 151, 'catalog/products/Electronics/kettles/Delongi/pic2.jpg', 0),
(3095, 152, 'catalog/products/Electronics/kettles/Russel/pic1.jpg', 0),
(3096, 152, 'catalog/products/Electronics/kettles/Russel/pic3.jpg', 0),
(3097, 152, 'catalog/products/Electronics/kettles/Russel/pic2.jpg', 0),
(3098, 153, 'catalog/products/Electronics/kettles/Russel/pic4.jpg', 0),
(3099, 154, 'catalog/products/Electronics/kettles/Bevile/pic4.jpg', 0),
(3100, 154, 'catalog/products/Electronics/kettles/Bevile/pic2.jpg', 0),
(3101, 154, 'catalog/products/Electronics/kettles/Bevile/pic3.jpg', 0),
(3102, 155, 'catalog/products/Electronics/kettles/Bevile/pic1.jpg', 0),
(3103, 156, 'catalog/products/Electronics/Irons/Morphy/pic4.jpg', 0),
(3104, 156, 'catalog/products/Electronics/Irons/Morphy/pic3.jpg', 0),
(3105, 156, 'catalog/products/Electronics/Irons/Morphy/pic2.jpg', 0),
(3106, 157, 'catalog/products/Electronics/Irons/Morphy/pic1.jpg', 0),
(3107, 158, 'catalog/products/Electronics/Irons/Brawn/pic2.jpg', 0),
(3108, 159, 'catalog/products/Electronics/Irons/Brawn/pic1.jpg', 0),
(3109, 160, 'catalog/products/Electronics/Irons/Tefal/pic5.jpg', 0),
(3110, 160, 'catalog/products/Electronics/Irons/Tefal/pic4.jpg', 0),
(3111, 160, 'catalog/products/Electronics/Irons/Tefal/pic3.jpg', 0),
(3112, 161, 'catalog/products/Electronics/Irons/Tefal/pic2.jpg', 0),
(3113, 161, 'catalog/products/Electronics/Irons/Tefal/pic1.jpg', 0),
(3114, 162, 'catalog/products/Electronics/Irons/Bosch/pic7.jpg', 0),
(3115, 162, 'catalog/products/Electronics/Irons/Bosch/pic6.jpg', 0),
(3116, 162, 'catalog/products/Electronics/Irons/Bosch/pic5.jpg', 0),
(3117, 162, 'catalog/products/Electronics/Irons/Bosch/pic4.jpg', 0),
(3118, 163, 'catalog/products/Electronics/Irons/Bosch/pic3.jpg', 0),
(3119, 163, 'catalog/products/Electronics/Irons/Bosch/pic2.jpg', 0),
(3120, 163, 'catalog/products/Electronics/Irons/Bosch/pic1.jpg', 0),
(3121, 164, 'catalog/products/Electronics/Hair Style/Glamoriser/pic4.jpg', 0),
(3122, 164, 'catalog/products/Electronics/Hair Style/Glamoriser/pic3.jpg', 0),
(3123, 165, 'catalog/products/Electronics/Hair Style/Glamoriser/pic2.jpg', 0),
(3124, 165, 'catalog/products/Electronics/Hair Style/Glamoriser/pic1.jpg', 0),
(3125, 166, 'catalog/products/Electronics/Hair Style/Tresemme/pic4.jpg', 0),
(3126, 166, 'catalog/products/Electronics/Hair Style/Tresemme/pic5.jpg', 0),
(3127, 166, 'catalog/products/Electronics/Hair Style/Tresemme/pic3.jpg', 0),
(3128, 167, 'catalog/products/Electronics/Hair Style/Tresemme/pic2.jpg', 0),
(3129, 167, 'catalog/products/Electronics/Hair Style/Tresemme/pic1.jpg', 0),
(3135, 168, 'catalog/products/Electronics/Hair Style/Babylish/pic3.jpg', 0),
(3134, 168, 'catalog/products/Electronics/Hair Style/Babylish/pic4.jpg', 0),
(3132, 169, 'catalog/products/Electronics/Hair Style/Babylish/pic2.jpg', 0),
(3133, 169, 'catalog/products/Electronics/Hair Style/Babylish/pic1.jpg', 0),
(3136, 170, 'catalog/products/Electronics/Hair Style/Remington/pic4.jpg', 0),
(3137, 170, 'catalog/products/Electronics/Hair Style/Remington/pic3.jpg', 0),
(3138, 171, 'catalog/products/Electronics/Hair Style/Remington/pic2.jpg', 0),
(3139, 171, 'catalog/products/Electronics/Hair Style/Remington/pic1.jpg', 0),
(3140, 172, 'catalog/products/Kids/Accessories/pic2.jpg', 0),
(3141, 173, 'catalog/products/Kids/Accessories/pic1.jpg', 0),
(3142, 174, 'catalog/products/Kids/Boys/pic5.jpg', 0),
(3143, 174, 'catalog/products/Kids/Boys/pic4.jpg', 0),
(3144, 174, 'catalog/products/Kids/Boys/pic3.jpg', 0),
(3145, 175, 'catalog/products/Kids/Boys/pic2.jpg', 0),
(3146, 175, 'catalog/products/Kids/Boys/pic1.jpg', 0),
(3153, 179, 'catalog/products/Kids/Baby/pic1.jpg', 0),
(3154, 179, 'catalog/products/Kids/Baby/pic2.jpg', 0),
(3155, 179, 'catalog/products/Kids/Baby/pic3.jpg', 0),
(3156, 180, 'catalog/products/Furniture/Living Room/pic2.jpg', 0),
(3157, 180, 'catalog/products/Furniture/Living Room/pic1.jpg', 0),
(3158, 181, 'catalog/products/Furniture/Living Room/pic3.jpg', 0),
(3159, 181, 'catalog/products/Furniture/Living Room/pic4.jpg', 0),
(3160, 182, 'catalog/products/Furniture/Living Room/pic5.jpg', 0),
(3161, 183, 'catalog/products/Furniture/Living Room/pic6.jpg', 0),
(3162, 184, 'catalog/products/Furniture/Dining Room/pic1.jpg', 0),
(3163, 185, 'catalog/products/Furniture/Dining Room/pic2.jpg', 0),
(3164, 186, 'catalog/products/Furniture/Dining Room/pic3.jpg', 0),
(3165, 186, 'catalog/products/Furniture/Dining Room/pic4.jpg', 0),
(3166, 187, 'catalog/products/Furniture/Dining Room/pic5.jpg', 0),
(3167, 187, 'catalog/products/Furniture/Dining Room/pic6.jpg', 0),
(3168, 188, 'catalog/products/Furniture/Bedroom/pic1.jpg', 0),
(3169, 189, 'catalog/products/Furniture/Bedroom/pic2.jpg', 0),
(3170, 189, 'catalog/products/Furniture/Bedroom/pic3.jpg', 0),
(3171, 190, 'catalog/products/Furniture/Bedroom/pic4.jpg', 0),
(3172, 190, 'catalog/products/Furniture/Bedroom/pic6.jpg', 0),
(3173, 190, 'catalog/products/Furniture/Bedroom/pic5.jpg', 0),
(3174, 191, 'catalog/products/Furniture/Bedroom/pic7.jpg', 0),
(3175, 192, 'catalog/products/Furniture/Kitchen/pic1.jpg', 0),
(3176, 193, 'catalog/products/Furniture/Kitchen/pic2.jpg', 0),
(3177, 194, 'catalog/products/Furniture/Kitchen/pic4.jpg', 0),
(3178, 194, 'catalog/products/Furniture/Kitchen/pic5.jpg', 0),
(3179, 194, 'catalog/products/Furniture/Kitchen/pic3.jpg', 0),
(3180, 195, 'catalog/products/Furniture/Kitchen/pic6.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(50, 51),
(50, 52),
(51, 50),
(51, 52),
(52, 50),
(52, 51),
(53, 54),
(53, 55),
(54, 53),
(54, 55),
(55, 53),
(55, 54),
(56, 57),
(56, 58),
(57, 56),
(57, 58),
(58, 56),
(58, 57),
(59, 60),
(59, 61),
(60, 59),
(60, 61),
(61, 59),
(61, 60),
(62, 63),
(62, 64),
(63, 62),
(63, 64),
(64, 62),
(64, 63),
(65, 66),
(65, 67),
(66, 65),
(66, 67),
(67, 65),
(67, 66),
(68, 69),
(68, 70),
(69, 68),
(69, 70),
(70, 68),
(70, 69),
(71, 72),
(71, 73),
(72, 71),
(72, 73),
(73, 71),
(73, 72),
(74, 75),
(74, 76),
(75, 74),
(75, 76),
(76, 74),
(76, 75),
(77, 78),
(77, 79),
(77, 80),
(78, 77),
(78, 79),
(78, 80),
(78, 81),
(78, 82),
(79, 77),
(79, 78),
(79, 80),
(79, 81),
(79, 82),
(80, 77),
(80, 78),
(80, 79),
(80, 81),
(80, 82),
(81, 78),
(81, 79),
(81, 80),
(81, 82),
(82, 78),
(82, 79),
(82, 80),
(82, 81),
(83, 84),
(83, 85),
(84, 83),
(84, 85),
(85, 83),
(85, 84),
(86, 87),
(86, 88),
(86, 89),
(87, 86),
(87, 88),
(87, 89),
(88, 86),
(88, 87),
(88, 89),
(89, 86),
(89, 87),
(89, 88),
(90, 91),
(90, 92),
(91, 90),
(91, 92),
(92, 90),
(92, 91),
(93, 94),
(93, 95),
(94, 93),
(94, 95),
(94, 97),
(95, 93),
(95, 94),
(96, 97),
(96, 98),
(96, 99),
(97, 94),
(97, 96),
(97, 98),
(98, 96),
(98, 97),
(98, 99),
(99, 96),
(99, 98),
(100, 101),
(101, 100),
(102, 103),
(103, 102),
(104, 105),
(105, 104),
(106, 107),
(107, 106),
(108, 109),
(109, 108),
(110, 111),
(111, 110),
(112, 113),
(113, 112),
(114, 115),
(115, 114),
(116, 117),
(117, 116),
(118, 119),
(119, 118),
(120, 121),
(121, 120),
(122, 123),
(123, 122),
(124, 125),
(125, 124),
(126, 127),
(127, 126),
(128, 129),
(129, 128),
(130, 131),
(131, 130),
(132, 133),
(133, 132),
(134, 135),
(135, 134),
(136, 137),
(137, 136),
(138, 139),
(139, 138),
(140, 141),
(141, 140),
(142, 143),
(143, 142),
(144, 145),
(145, 144),
(146, 147),
(147, 146),
(148, 149),
(149, 148),
(150, 151),
(151, 150),
(152, 153),
(153, 152),
(154, 155),
(155, 154),
(156, 157),
(157, 156),
(158, 159),
(159, 158),
(160, 161),
(161, 160),
(162, 163),
(163, 162),
(164, 165),
(165, 164),
(166, 167),
(167, 166),
(168, 169),
(169, 168),
(170, 171),
(171, 170),
(172, 173),
(173, 172),
(174, 175),
(175, 174),
(176, 177),
(177, 176),
(178, 179),
(179, 178),
(188, 191),
(191, 188);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(585, 61, 1, 130),
(583, 60, 1, 330),
(582, 58, 1, 350),
(584, 57, 1, 300),
(589, 95, 1, 230);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(50, 26),
(50, 35),
(50, 71),
(51, 26),
(51, 35),
(51, 71),
(52, 26),
(52, 35),
(52, 71),
(53, 26),
(53, 71),
(54, 20),
(54, 26),
(54, 71),
(55, 20),
(55, 26),
(55, 35),
(55, 71),
(56, 26),
(56, 66),
(56, 71),
(57, 26),
(57, 66),
(57, 71),
(58, 26),
(58, 66),
(58, 71),
(59, 26),
(59, 72),
(60, 26),
(60, 71),
(60, 72),
(61, 26),
(61, 72),
(62, 59),
(62, 83),
(63, 20),
(63, 59),
(63, 83),
(64, 59),
(64, 83),
(65, 20),
(65, 46),
(65, 87),
(66, 20),
(66, 46),
(66, 87),
(67, 20),
(67, 59),
(67, 87),
(68, 20),
(68, 59),
(68, 91),
(69, 20),
(69, 59),
(69, 91),
(70, 20),
(70, 59),
(70, 91),
(71, 59),
(71, 95),
(72, 20),
(72, 59),
(72, 95),
(73, 20),
(73, 59),
(73, 95),
(74, 60),
(74, 61),
(74, 99),
(75, 60),
(75, 61),
(75, 99),
(76, 60),
(76, 61),
(76, 99),
(77, 60),
(77, 61),
(77, 102),
(78, 61),
(78, 63),
(78, 102),
(79, 61),
(79, 63),
(79, 102),
(80, 60),
(80, 61),
(80, 63),
(80, 102),
(81, 20),
(81, 61),
(81, 63),
(81, 102),
(82, 20),
(82, 61),
(82, 63),
(82, 102),
(83, 61),
(83, 106),
(84, 61),
(84, 106),
(85, 61),
(85, 106),
(86, 20),
(86, 62),
(86, 108),
(87, 20),
(87, 62),
(87, 108),
(88, 62),
(88, 108),
(89, 20),
(89, 62),
(89, 108),
(90, 20),
(90, 62),
(90, 110),
(91, 20),
(91, 62),
(91, 110),
(92, 20),
(92, 62),
(92, 110),
(93, 20),
(93, 62),
(93, 113),
(94, 20),
(94, 62),
(94, 113),
(95, 20),
(95, 62),
(95, 113),
(96, 20),
(96, 62),
(96, 115),
(97, 20),
(97, 62),
(97, 115),
(98, 20),
(98, 62),
(98, 115),
(99, 20),
(99, 62),
(99, 115),
(100, 46),
(100, 70),
(101, 18),
(101, 46),
(101, 70),
(102, 18),
(102, 46),
(102, 73),
(103, 18),
(103, 46),
(103, 73),
(104, 18),
(104, 46),
(104, 76),
(105, 18),
(105, 46),
(105, 76),
(106, 18),
(106, 46),
(106, 78),
(107, 18),
(107, 46),
(107, 78),
(108, 18),
(108, 45),
(108, 80),
(109, 18),
(109, 45),
(109, 80),
(110, 18),
(110, 45),
(110, 81),
(111, 18),
(111, 45),
(111, 81),
(112, 18),
(112, 45),
(112, 82),
(113, 18),
(113, 45),
(113, 82),
(114, 18),
(114, 45),
(114, 84),
(115, 18),
(115, 45),
(115, 84),
(116, 18),
(116, 67),
(116, 93),
(117, 18),
(117, 67),
(117, 93),
(118, 18),
(118, 67),
(118, 92),
(119, 18),
(119, 67),
(119, 92),
(120, 18),
(120, 67),
(120, 90),
(121, 18),
(121, 67),
(121, 90),
(122, 18),
(122, 67),
(122, 94),
(123, 18),
(123, 67),
(123, 94),
(124, 18),
(124, 68),
(124, 96),
(125, 18),
(125, 68),
(125, 96),
(126, 18),
(126, 68),
(126, 97),
(127, 18),
(127, 68),
(127, 97),
(128, 18),
(128, 68),
(128, 98),
(129, 18),
(129, 68),
(129, 98),
(130, 18),
(130, 68),
(130, 100),
(131, 18),
(131, 68),
(131, 100),
(132, 25),
(132, 107),
(132, 114),
(133, 25),
(133, 107),
(133, 114),
(134, 25),
(134, 107),
(134, 109),
(135, 25),
(135, 107),
(135, 109),
(136, 25),
(136, 107),
(136, 112),
(137, 25),
(137, 107),
(137, 112),
(138, 25),
(138, 107),
(138, 111),
(139, 25),
(139, 107),
(139, 111),
(140, 25),
(140, 29),
(140, 122),
(141, 25),
(141, 29),
(141, 122),
(142, 25),
(142, 29),
(142, 124),
(143, 25),
(143, 29),
(143, 124),
(144, 25),
(144, 29),
(144, 126),
(145, 25),
(145, 29),
(145, 126),
(146, 25),
(146, 29),
(146, 128),
(147, 25),
(147, 29),
(147, 128),
(148, 25),
(148, 28),
(148, 130),
(149, 25),
(149, 28),
(149, 130),
(150, 25),
(150, 28),
(150, 132),
(151, 25),
(151, 28),
(151, 132),
(152, 25),
(152, 28),
(152, 133),
(153, 25),
(153, 28),
(153, 133),
(154, 25),
(154, 28),
(154, 135),
(155, 25),
(155, 28),
(155, 135),
(156, 25),
(156, 30),
(156, 137),
(157, 25),
(157, 30),
(157, 137),
(158, 25),
(158, 30),
(158, 138),
(159, 25),
(159, 30),
(159, 138),
(160, 25),
(160, 30),
(160, 140),
(161, 25),
(161, 30),
(161, 140),
(162, 25),
(162, 30),
(162, 142),
(163, 25),
(163, 30),
(163, 142),
(164, 25),
(164, 31),
(164, 144),
(165, 25),
(165, 31),
(165, 144),
(166, 25),
(166, 31),
(166, 145),
(167, 25),
(167, 31),
(167, 145),
(168, 25),
(168, 31),
(168, 147),
(169, 25),
(169, 31),
(169, 147),
(170, 25),
(170, 31),
(170, 149),
(171, 25),
(171, 31),
(171, 149),
(172, 17),
(172, 164),
(173, 17),
(173, 164),
(174, 17),
(174, 162),
(175, 17),
(175, 162),
(176, 17),
(176, 163),
(177, 17),
(177, 163),
(178, 17),
(178, 161),
(179, 17),
(179, 161),
(180, 57),
(180, 120),
(180, 121),
(181, 57),
(181, 120),
(181, 123),
(182, 57),
(182, 120),
(182, 123),
(183, 57),
(183, 120),
(183, 127),
(184, 57),
(184, 129),
(184, 131),
(185, 57),
(185, 129),
(185, 134),
(186, 57),
(186, 129),
(186, 136),
(187, 57),
(187, 129),
(187, 139),
(188, 57),
(188, 141),
(188, 143),
(189, 57),
(189, 141),
(189, 146),
(190, 57),
(190, 141),
(190, 148),
(191, 57),
(191, 141),
(191, 143),
(192, 57),
(192, 152),
(192, 155),
(193, 57),
(193, 152),
(193, 156),
(194, 57),
(194, 152),
(194, 158),
(195, 57),
(195, 152),
(195, 159);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(55, 0, 0),
(152, 0, 0),
(151, 0, 0),
(150, 0, 0),
(53, 0, 0),
(177, 0, 0),
(176, 0, 0),
(148, 0, 0),
(36, 0, 0),
(61, 0, 0),
(74, 0, 0),
(57, 0, 0),
(54, 0, 0),
(178, 0, 0),
(60, 0, 0),
(56, 0, 0),
(58, 0, 0),
(149, 0, 0),
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(110, 0, 0),
(111, 0, 0),
(112, 0, 0),
(113, 0, 0),
(114, 0, 0),
(115, 0, 0),
(116, 0, 0),
(117, 0, 0),
(118, 0, 0),
(119, 0, 0),
(120, 0, 0),
(121, 0, 0),
(122, 0, 0),
(123, 0, 0),
(124, 0, 0),
(125, 0, 0),
(126, 0, 0),
(127, 0, 0),
(128, 0, 0),
(129, 0, 0),
(130, 0, 0),
(131, 0, 0),
(132, 0, 0),
(133, 0, 0),
(134, 0, 0),
(135, 0, 0),
(136, 0, 0),
(137, 0, 0),
(138, 0, 0),
(139, 0, 0),
(140, 0, 0),
(141, 0, 0),
(142, 0, 0),
(143, 0, 0),
(144, 0, 0),
(145, 0, 0),
(146, 0, 0),
(147, 0, 0),
(153, 0, 0),
(154, 0, 0),
(155, 0, 0),
(156, 0, 0),
(157, 0, 0),
(158, 0, 0),
(159, 0, 0),
(160, 0, 0),
(161, 0, 0),
(162, 0, 0),
(163, 0, 0),
(164, 0, 0),
(165, 0, 0),
(166, 0, 0),
(167, 0, 0),
(168, 0, 0),
(169, 0, 0),
(170, 0, 0),
(171, 0, 0),
(172, 0, 0),
(173, 0, 0),
(174, 0, 0),
(175, 0, 0),
(179, 0, 0),
(180, 0, 0),
(181, 0, 0),
(182, 0, 0),
(183, 0, 0),
(184, 0, 0),
(185, 0, 0),
(186, 0, 0),
(187, 0, 0),
(188, 0, 0),
(189, 0, 0),
(190, 0, 0),
(191, 0, 0),
(192, 0, 0),
(193, 0, 0),
(194, 0, 0),
(195, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(36, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0),
(146, 0),
(147, 0),
(148, 0),
(149, 0),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(154, 0),
(155, 0),
(156, 0),
(157, 0),
(158, 0),
(159, 0),
(160, 0),
(161, 0),
(162, 0),
(163, 0),
(164, 0),
(165, 0),
(166, 0),
(167, 0),
(168, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0),
(179, 0),
(180, 0),
(181, 0),
(182, 0),
(183, 0),
(184, 0),
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(193, 0),
(194, 0),
(195, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 52, 0, 'Tanvir Ahmed', 'Excellent Excellent Excellent Excellent Excellent Excellent Excellent Excellent Excellent Excellent Excellent Excellent Excellent Excellent Excellent Excellent!!', 5, 1, '2016-11-21 23:23:07', '2016-11-21 23:25:31'),
(2, 55, 0, 'Tanvir Ahmed', 'This bag is wonderful! This bag is wonderful! This bag is wonderful! This bag is wonderful! This bag is wonderful! This bag is wonderful! This bag is wonderful! This bag is wonderful!', 5, 1, '2016-11-22 00:57:08', '2016-11-22 00:57:41'),
(3, 122, 0, 'Badhon', 'This image look stunning and this watch is really marvelous. This image look stunning and this watch is really marvelous. This image look stunning and this watch is really marvelous. This image look stunning and this watch is really marvelous. This image look stunning and this watch is really marvelous.', 5, 1, '2016-11-24 16:32:34', '2016-11-24 16:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(3549, 0, 'coupon', 'coupon_sort_order', '4', 0),
(3548, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(2709, 0, 'config', 'config_error_log', '1', 0),
(2704, 0, 'config', 'config_maintenance', '0', 0),
(2481, 0, 'information', 'information_status', '1', 0),
(2707, 0, 'config', 'config_compression', '0', 0),
(2708, 0, 'config', 'config_error_display', '1', 0),
(2706, 0, 'config', 'config_encryption', 'c3bc85d6ea2fdeaa29cd636eb6fa1fb1', 0),
(2705, 0, 'config', 'config_password', '1', 0),
(2703, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(2639, 0, 'config', 'config_login_attempts', '5', 0),
(2640, 0, 'config', 'config_account_id', '3', 0),
(2641, 0, 'config', 'config_account_mail', '0', 0),
(2642, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(2643, 0, 'config', 'config_api_id', '2', 0),
(3551, 0, 'voucher', 'voucher_sort_order', '8', 0),
(3550, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(2654, 0, 'config', 'config_affiliate_approval', '0', 0),
(2655, 0, 'config', 'config_affiliate_auto', '0', 0),
(2656, 0, 'config', 'config_affiliate_commission', '5', 0),
(2657, 0, 'config', 'config_affiliate_id', '4', 0),
(2658, 0, 'config', 'config_affiliate_mail', '0', 0),
(2659, 0, 'config', 'config_return_id', '0', 0),
(2660, 0, 'config', 'config_return_status_id', '2', 0),
(2661, 0, 'config', 'config_logo', 'catalog/Tanvir/tanvirshop.jpg', 0),
(2662, 0, 'config', 'config_icon', 'catalog/Tanvir/tanvirshop.png', 0),
(2663, 0, 'config', 'config_image_category_width', '860', 0),
(2664, 0, 'config', 'config_image_category_height', '320', 0),
(2665, 0, 'config', 'config_image_thumb_width', '228', 0),
(2666, 0, 'config', 'config_image_thumb_height', '228', 0),
(2667, 0, 'config', 'config_image_popup_width', '700', 0),
(2668, 0, 'config', 'config_image_popup_height', '850', 0),
(2669, 0, 'config', 'config_image_product_width', '700', 0),
(2670, 0, 'config', 'config_image_product_height', '850', 0),
(2671, 0, 'config', 'config_image_additional_width', '74', 0),
(2672, 0, 'config', 'config_image_additional_height', '74', 0),
(2673, 0, 'config', 'config_image_related_width', '700', 0),
(2674, 0, 'config', 'config_image_related_height', '850', 0),
(2675, 0, 'config', 'config_image_compare_width', '90', 0),
(2676, 0, 'config', 'config_image_compare_height', '90', 0),
(2677, 0, 'config', 'config_image_wishlist_width', '70', 0),
(2678, 0, 'config', 'config_image_wishlist_height', '70', 0),
(2679, 0, 'config', 'config_image_cart_width', '70', 0),
(2680, 0, 'config', 'config_image_cart_height', '70', 0),
(2636, 0, 'config', 'config_customer_group_id', '1', 0),
(2637, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(2702, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(2701, 0, 'config', 'config_file_max_size', '300000', 0),
(2700, 0, 'config', 'config_seo_url', '0', 0),
(2681, 0, 'config', 'config_image_location_width', '268', 0),
(2682, 0, 'config', 'config_image_location_height', '50', 0),
(2683, 0, 'config', 'config_ftp_hostname', '192.168.3.38', 0),
(2684, 0, 'config', 'config_ftp_port', '21', 0),
(2685, 0, 'config', 'config_ftp_username', '', 0),
(2686, 0, 'config', 'config_ftp_password', '', 0),
(2687, 0, 'config', 'config_ftp_root', '', 0),
(2688, 0, 'config', 'config_ftp_status', '0', 0),
(2689, 0, 'config', 'config_mail_protocol', 'mail', 0),
(2690, 0, 'config', 'config_mail_parameter', '', 0),
(2691, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(2692, 0, 'config', 'config_mail_smtp_username', '', 0),
(2693, 0, 'config', 'config_mail_smtp_password', '', 0),
(2694, 0, 'config', 'config_mail_smtp_port', '25', 0),
(2695, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(2696, 0, 'config', 'config_mail_alert', '', 0),
(2697, 0, 'config', 'config_secure', '0', 0),
(2698, 0, 'config', 'config_shared', '0', 0),
(2699, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(2644, 0, 'config', 'config_cart_weight', '1', 0),
(2645, 0, 'config', 'config_checkout_guest', '1', 0),
(2646, 0, 'config', 'config_checkout_id', '5', 0),
(2647, 0, 'config', 'config_order_status_id', '1', 0),
(2648, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(3935, 0, 'custom_menu_content', 'custom_menu_content', 'a:5:{i:0;a:6:{s:11:"category_id";s:2:"20";s:10:"topcontent";s:0:"";s:13:"bottomcontent";s:0:"";s:4:"type";s:6:"static";s:12:"rightcontent";s:194:"&lt;a href=&quot;#/electronics/phone-accessories.html&quot;&gt;&lt;img alt=&quot;image&quot; src=&quot;catalog/view/theme/micra/image/pic1.jpg&quot; class=&quot;fade-on-hover&quot;&gt;&lt;/a&gt;";s:19:"rightcontentproduct";s:3:"137";}i:1;a:6:{s:11:"category_id";s:2:"18";s:10:"topcontent";s:776:"&lt;div class=&quot;normal-text&quot;&gt;\r\n                  &lt;div class=&quot;custom_link&quot;&gt;\r\n                    &lt;div class=&quot;grid3&quot;&gt;&lt;a href=&quot;#&quot;&gt;Custom link 1&lt;/a&gt;&lt;/div&gt;\r\n                    &lt;div class=&quot;grid3&quot;&gt;&lt;a href=&quot;#&quot;&gt;Custom link 2&lt;/a&gt;&lt;/div&gt;\r\n                    &lt;div class=&quot;grid3&quot;&gt;&lt;a href=&quot;#&quot;&gt;Custom link 3&lt;/a&gt;&lt;/div&gt;\r\n                    &lt;div class=&quot;grid3&quot;&gt;&lt;a href=&quot;#&quot;&gt;Custom link 4&lt;/a&gt;&lt;/div&gt;\r\n                  &lt;/div&gt;\r\n                  &lt;div class=&quot;grid4 a-right&quot;&gt; &lt;a href=&quot;#&quot;&gt;Custom right link&lt;/a&gt; &lt;/div&gt;\r\n                &lt;/div&gt;";s:13:"bottomcontent";s:0:"";s:4:"type";s:6:"static";s:12:"rightcontent";s:194:"&lt;a href=&quot;#/electronics/phone-accessories.html&quot;&gt;&lt;img alt=&quot;image&quot; src=&quot;catalog/view/theme/micra/image/pic2.jpg&quot; class=&quot;fade-on-hover&quot;&gt;&lt;/a&gt;";s:19:"rightcontentproduct";s:3:"137";}i:2;a:6:{s:11:"category_id";s:2:"57";s:10:"topcontent";s:0:"";s:13:"bottomcontent";s:0:"";s:4:"type";s:6:"static";s:12:"rightcontent";s:218:"&lt;a href=&quot;#/electronics/phone-accessories.html&quot;&gt;&lt;img alt=&quot;image&quot; src=&quot;catalog/view/theme/micra/image/pic3.jpg&quot; class=&quot;fade-on-hover&quot;&gt;&lt;/a&gt;\r\n                      ";s:19:"rightcontentproduct";s:3:"137";}i:3;a:6:{s:11:"category_id";s:2:"25";s:10:"topcontent";s:0:"";s:13:"bottomcontent";s:0:"";s:4:"type";s:1:"0";s:12:"rightcontent";s:0:"";s:19:"rightcontentproduct";s:3:"137";}i:4;a:6:{s:11:"category_id";s:2:"17";s:10:"topcontent";s:0:"";s:13:"bottomcontent";s:0:"";s:4:"type";s:6:"static";s:12:"rightcontent";s:218:"&lt;a href=&quot;#/electronics/phone-accessories.html&quot;&gt;&lt;img alt=&quot;image&quot; src=&quot;catalog/view/theme/micra/image/pic6.png&quot; class=&quot;fade-on-hover&quot;&gt;&lt;/a&gt;\r\n                      ";s:19:"rightcontentproduct";s:3:"137";}}', 1),
(3934, 0, 'custom_subcategory_thumbnail', 'custom_subcategory_thumbnail_module', 'a:21:{i:0;a:2:{s:11:"category_id";s:2:"46";s:5:"image";s:21:"catalog/shoes-img.png";}i:1;a:2:{s:11:"category_id";s:2:"45";s:5:"image";s:19:"catalog/dress_m.png";}i:2;a:2:{s:11:"category_id";s:2:"68";s:5:"image";s:26:"catalog/sunglasses-img.png";}i:3;a:2:{s:11:"category_id";s:2:"67";s:5:"image";s:23:"catalog/watches-img.png";}i:4;a:2:{s:11:"category_id";s:3:"107";s:5:"image";s:39:"catalog/Tanvir/thumbnail/thumbnoil1.png";}i:5;a:2:{s:11:"category_id";s:2:"29";s:5:"image";s:39:"catalog/Tanvir/thumbnail/thumbnail2.jpg";}i:6;a:2:{s:11:"category_id";s:2:"28";s:5:"image";s:36:"catalog/Tanvir/thumbnail/kettles.jpg";}i:7;a:2:{s:11:"category_id";s:2:"30";s:5:"image";s:34:"catalog/Tanvir/thumbnail/irons.jpg";}i:8;a:2:{s:11:"category_id";s:2:"31";s:5:"image";s:38:"catalog/Tanvir/thumbnail/hairstyle.jpg";}i:9;a:2:{s:11:"category_id";s:2:"26";s:5:"image";s:33:"catalog/Tanvir/thumbnail/bags.jpg";}i:10;a:2:{s:11:"category_id";s:2:"59";s:5:"image";s:34:"catalog/Tanvir/thumbnail/shoes.jpg";}i:11;a:2:{s:11:"category_id";s:2:"62";s:5:"image";s:36:"catalog/Tanvir/thumbnail/dresses.jpg";}i:12;a:2:{s:11:"category_id";s:2:"61";s:5:"image";s:37:"catalog/Tanvir/thumbnail/jewellry.jpg";}i:13;a:2:{s:11:"category_id";s:3:"120";s:5:"image";s:40:"catalog/Tanvir/thumbnail/living room.jpg";}i:14;a:2:{s:11:"category_id";s:3:"129";s:5:"image";s:35:"catalog/Tanvir/thumbnail/dining.jpg";}i:15;a:2:{s:11:"category_id";s:3:"141";s:5:"image";s:36:"catalog/Tanvir/thumbnail/bedroom.jpg";}i:16;a:2:{s:11:"category_id";s:3:"152";s:5:"image";s:36:"catalog/Tanvir/thumbnail/kitchen.jpg";}i:17;a:2:{s:11:"category_id";s:3:"164";s:5:"image";s:33:"catalog/Tanvir/thumbnail/pic1.jpg";}i:18;a:2:{s:11:"category_id";s:3:"161";s:5:"image";s:33:"catalog/Tanvir/thumbnail/pic4.jpg";}i:19;a:2:{s:11:"category_id";s:3:"162";s:5:"image";s:33:"catalog/Tanvir/thumbnail/pic2.jpg";}i:20;a:2:{s:11:"category_id";s:3:"163";s:5:"image";s:33:"catalog/Tanvir/thumbnail/pic3.png";}}', 1),
(3917, 0, 'magikmicra', 'magikmicra_footerlinkhovercolor', 'ffffff', 0),
(3918, 0, 'magikmicra', 'magikmicra_powerbycolor_ed', '0', 0),
(3919, 0, 'magikmicra', 'magikmicra_powerbycolor', 'ffffff', 0),
(3920, 0, 'magikmicra', 'magikmicra_fonttransform', '', 0),
(3921, 0, 'magikmicra', 'magikmicra_address', 'Dhaka, Bangladesh', 0),
(3922, 0, 'magikmicra', 'magikmicra_phone', '01888888888', 0),
(3923, 0, 'magikmicra', 'magikmicra_email', 'support@tanvir.com', 0),
(3924, 0, 'magikmicra', 'magikmicra_fb', 'https://www.facebook.com', 0),
(3925, 0, 'magikmicra', 'magikmicra_twitter', 'https://twitter.com', 0),
(3926, 0, 'magikmicra', 'magikmicra_gglplus', 'https://plus.google.com/collections/featured', 0),
(3927, 0, 'magikmicra', 'magikmicra_rss', 'https://www.rss.com/', 0),
(3928, 0, 'magikmicra', 'magikmicra_pinterest', 'https://www.pinterest.com/', 0),
(3929, 0, 'magikmicra', 'magikmicra_linkedin', 'https://www.linkedin.com', 0),
(3930, 0, 'magikmicra', 'magikmicra_youtube', 'https://www.youtube.com', 0),
(3931, 0, 'magikmicra', 'magikmicra_powerby', '&lt;div class=&quot;col-sm-5 col-xs-12 coppyright&quot;&gt; ©2016 Tanvir All rights reserved .&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n      &lt;div class=&quot;col-sm-7 col-xs-12 company-links&quot;&gt;\r\n        &lt;ul class=&quot;links&quot;&gt;\r\n\r\n\r\n\r\n\r\n          &lt;li&gt;&lt;a href=&quot;https://www.google.com&quot; target=&quot;_blank&quot;&gt;Tanvir Hot-Number&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n          &lt;li&gt;&lt;a href=&quot;http://www.google.com&quot; target=&quot;_blank&quot;&gt;Tanvir Shops&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n          &lt;li&gt;&lt;a href=&quot;http://www.google.com&quot; target=&quot;_blank&quot;&gt;Tanvir Sites&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n          &lt;li class=&quot;last&quot;&gt;&lt;a href=&quot;http://www.google.com&quot; target=&quot;_blank&quot;&gt;Tanvir Ecommerce&lt;/a&gt;&lt;/li&gt;\r\n\r\n\r\n\r\n\r\n        &lt;/ul&gt;\r\n\r\n\r\n\r\n\r\n      &lt;/div&gt;', 0),
(3916, 0, 'magikmicra', 'magikmicra_footerlinkhovercolor_ed', '0', 0),
(3915, 0, 'magikmicra', 'magikmicra_footerlinkcolor', 'aaaaaa', 0),
(3914, 0, 'magikmicra', 'magikmicra_footerlinkcolor_ed', '0', 0),
(3913, 0, 'magikmicra', 'magikmicra_footerbg', '171717', 0),
(3912, 0, 'magikmicra', 'magikmicra_footerbg_ed', '0', 0),
(3911, 0, 'magikmicra', 'magikmicra_newpricecolor', 'ff0000', 0),
(3910, 0, 'magikmicra', 'magikmicra_newpricecolor_ed', '0', 0),
(3909, 0, 'magikmicra', 'magikmicra_oldpricecolor', '777777', 0),
(3908, 0, 'magikmicra', 'magikmicra_oldpricecolor_ed', '0', 0),
(3907, 0, 'magikmicra', 'magikmicra_pricecolor', 'ff0000', 0),
(3906, 0, 'magikmicra', 'magikmicra_pricecolor_ed', '0', 0),
(3905, 0, 'magikmicra', 'magikmicra_buttonhovercolor', 'da2c2a', 0),
(3904, 0, 'magikmicra', 'magikmicra_buttonhovercolor_ed', '0', 0),
(3903, 0, 'magikmicra', 'magikmicra_buttoncolor', 'dddddd', 0),
(3901, 0, 'magikmicra', 'magikmicra_mmslinkshovercolor', '000000', 0),
(3902, 0, 'magikmicra', 'magikmicra_buttoncolor_ed', '0', 0),
(3900, 0, 'magikmicra', 'magikmicra_mmslinkshovercolor_ed', '0', 0),
(3899, 0, 'magikmicra', 'magikmicra_mmslinkscolor', '000000', 0),
(3898, 0, 'magikmicra', 'magikmicra_mmslinkscolor_ed', '0', 0),
(3897, 0, 'magikmicra', 'magikmicra_mmlinkshovercolor', 'ffffff', 0),
(3896, 0, 'magikmicra', 'magikmicra_mmlinkshovercolor_ed', '0', 0),
(3895, 0, 'magikmicra', 'magikmicra_mmlinkscolor', 'ffffff', 0),
(3894, 0, 'magikmicra', 'magikmicra_mmlinkscolor_ed', '0', 0),
(3893, 0, 'magikmicra', 'magikmicra_mmbgcolor', '000000', 0),
(3892, 0, 'magikmicra', 'magikmicra_mmbgcolor_ed', '0', 0),
(3891, 0, 'magikmicra', 'magikmicra_headerlinkhovercolor', 'ffffff', 0),
(3890, 0, 'magikmicra', 'magikmicra_headerlinkhovercolor_ed', '0', 0),
(3889, 0, 'magikmicra', 'magikmicra_headerlinkcolor', 'aaaaaa', 0),
(3888, 0, 'magikmicra', 'magikmicra_headerlinkcolor_ed', '0', 0),
(3887, 0, 'magikmicra', 'magikmicra_headerbg', '000000', 0),
(3886, 0, 'magikmicra', 'magikmicra_headerbg_ed', '0', 0),
(3885, 0, 'magikmicra', 'magikmicra_linkhovercolor', 'da2c2a', 0),
(3884, 0, 'magikmicra', 'magikmicra_linkhovercolor_ed', '0', 0),
(3883, 0, 'magikmicra', 'magikmicra_linkcolor', '333333', 0),
(3882, 0, 'magikmicra', 'magikmicra_linkcolor_ed', '0', 0),
(3881, 0, 'magikmicra', 'magikmicra_fontcolor', '333333', 0),
(3880, 0, 'magikmicra', 'magikmicra_fontcolor_ed', '0', 0),
(3879, 0, 'magikmicra', 'magikmicra_body_bg', 'ffffff', 0),
(3878, 0, 'magikmicra', 'magikmicra_body_bg_ed', '0', 0),
(3870, 0, 'magikmicra', 'magikmicra_product_ct2title', 'Liked Us on Twitter', 0),
(3871, 0, 'magikmicra', 'magikmicra_product_ct2content', '&lt;p&gt;&lt;a href=&quot;https://www.twitter.com&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/Cms-Oc/micra/image/catalog/Tanvir/twitter.png&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;br&gt;&lt;/p&gt;', 0),
(3872, 0, 'magikmicra', 'magikmicra_ffb_ed', '1', 0),
(3873, 0, 'magikmicra', 'magikmicra_ffb_content', '&lt;div class=&quot;our-features-box bounceInUp animated&quot;&gt;\r\n  &lt;div class=&quot;container&quot;&gt;\r\n    &lt;div class=&quot;row&quot;&gt;\r\n      &lt;div class=&quot;col-md-4 col-xs-12 col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;feature-box&quot;&gt;\r\n          &lt;div class=&quot;icon-truck&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n          &lt;div class=&quot;content&quot;&gt;Free Shipping&lt;/div&gt;\r\n\r\n          Free shipping is available in Bangladesh only in Tanvir Store. Lets enjoy your online shopping. &amp;nbsp;&lt;/div&gt;\r\n\r\n      &lt;/div&gt;\r\n\r\n      &lt;div class=&quot;col-md-4 col-xs-12 col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;feature-box&quot;&gt;\r\n          &lt;div class=&quot;icon-love&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n          &lt;div class=&quot;content&quot;&gt;Customer Support&lt;/div&gt;\r\n\r\n          &lt;span&gt;Customer support is the superior&amp;nbsp;priority on our eCommerce business specially on Tanvir Networks..&lt;/span&gt; &lt;/div&gt;\r\n\r\n      &lt;/div&gt;\r\n\r\n      &lt;div class=&quot;col-md-4 col-xs-12 col-sm-4&quot;&gt;\r\n        &lt;div class=&quot;feature-box&quot;&gt;\r\n          &lt;div class=&quot;icon-return&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n          &lt;div class=&quot;content&quot;&gt;30 days money back&lt;/div&gt;\r\n\r\n          &lt;span&gt;We are reliable&amp;nbsp;for any fault products and completely give your money withing one months. You can trust on us completely.&lt;/span&gt;&lt;/div&gt;\r\n\r\n      &lt;/div&gt;\r\n\r\n    &lt;/div&gt;\r\n\r\n  &lt;/div&gt;\r\n\r\n&lt;/div&gt;', 0),
(3867, 0, 'magikmicra', 'magikmicra_product_cttitle', 'Liked Us on Facebook', 0),
(3868, 0, 'magikmicra', 'magikmicra_product_ctcontent', '&lt;p&gt;&lt;a href=&quot;https://www.facebook.com&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;http://localhost/Cms-Oc/micra/image/catalog/Tanvir/facebook.png&quot;&gt;&amp;nbsp;&lt;/a&gt;&lt;br&gt;&lt;/p&gt;', 0),
(3876, 0, 'magikmicra', 'magikmicra_footer_cb', '1', 0),
(3877, 0, 'magikmicra', 'magikmicra_footer_cbcontent', '&lt;div class=&quot;footer-logo&quot;&gt;&lt;img src=&quot;http://localhost/Cms-Oc/micra/image/catalog/Tanvir/tanvirshop.jpg&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;h3&gt;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;; background-color: rgb(33, 16, 74); color: rgb(255, 255, 255);&quot;&gt;Tanvir Store is created only for your satisfaction it runs with great customer satisfaction and also pure trust.&amp;nbsp;&lt;/span&gt;&lt;/h3&gt;\r\n\r\n          &lt;p&gt;&lt;a href=&quot;https://www.google.com&quot; target=&quot;_blank&quot;&gt;Shop here easily. &lt;/a&gt;&lt;br&gt;&lt;/p&gt;', 0),
(3874, 0, 'magikmicra', 'magikmicra_newsletter', '1', 0),
(3875, 0, 'magikmicra', 'magikmicra_newslettercontent', '&lt;!-- Begin MailChimp Signup Form --&gt;\r\n&lt;link href=&quot;//cdn-images.mailchimp.com/embedcode/slim-081711.css&quot; rel=&quot;stylesheet&quot; type=&quot;text/css&quot;&gt;\r\n&lt;style type=&quot;text/css&quot;&gt;#mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; width:600px;}\r\n/* Add your own MailChimp form style overrides in your site stylesheet or in this style block.\r\nWe recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */\r\n&lt;/style&gt;\r\n&lt;div id=&quot;mc_embed_signup&quot;&gt;\r\n&lt;form action=&quot;//132.us9.list-manage.com/subscribe/post?u=7f031d02c763ab0580cf07af5&amp;amp;id=bee10e0bf7&quot; class=&quot;validate&quot; id=&quot;mc-embedded-subscribe-form&quot; method=&quot;post&quot; name=&quot;mc-embedded-subscribe-form&quot; novalidate=&quot;&quot; target=&quot;_blank&quot;&gt;\r\n&lt;div id=&quot;mc_embed_signup_scroll&quot;&gt;&lt;label for=&quot;mce-EMAIL&quot;&gt;Newsletter&lt;/label&gt; &lt;input class=&quot;email&quot; id=&quot;mce-EMAIL&quot; name=&quot;EMAIL&quot; placeholder=&quot;email address&quot; required=&quot;&quot; value=&quot;&quot; type=&quot;email&quot;&gt; &lt;!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups--&gt;\r\n&lt;div style=&quot;position: absolute; left: -5000px;&quot;&gt;&lt;input name=&quot;b_7f031d02c763ab0580cf07af5_bee10e0bf7&quot; tabindex=&quot;-1&quot; value=&quot;&quot; type=&quot;text&quot;&gt;&lt;/div&gt;\r\n\r\n\r\n&lt;div class=&quot;clear&quot;&gt;&lt;input class=&quot;button&quot; id=&quot;mc-embedded-subscribe&quot; name=&quot;subscribe&quot; value=&quot;Subscribe&quot; type=&quot;submit&quot;&gt;&lt;/div&gt;\r\n\r\n&lt;/div&gt;\r\n\r\n&lt;/form&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;!--End mc_embed_signup--&gt;', 0),
(2649, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(2650, 0, 'config', 'config_order_mail', '0', 0),
(2651, 0, 'config', 'config_stock_display', '0', 0),
(2652, 0, 'config', 'config_stock_warning', '0', 0),
(2653, 0, 'config', 'config_stock_checkout', '0', 0),
(2003, 0, 'SSLCommerce', 'SSLCommerce_merchant', 'testbox', 0),
(2004, 0, 'SSLCommerce', 'SSLCommerce_password', 'qwerty', 0),
(2005, 0, 'SSLCommerce', 'SSLCommerce_test', 'successful', 0),
(2006, 0, 'SSLCommerce', 'SSLCommerce_order_status_id', '2', 0),
(2007, 0, 'SSLCommerce', 'SSLCommerce_order_fail_id', '8', 0),
(2008, 0, 'SSLCommerce', 'SSLCommerce_order_risk_id', '1', 0),
(2009, 0, 'SSLCommerce', 'SSLCommerce_geo_zone_id', '0', 0),
(2010, 0, 'SSLCommerce', 'SSLCommerce_status', '1', 0),
(2011, 0, 'SSLCommerce', 'SSLCommerce_sort_order', '', 0),
(2638, 0, 'config', 'config_customer_price', '0', 0),
(2635, 0, 'config', 'config_customer_online', '0', 0),
(2634, 0, 'config', 'config_tax_customer', 'shipping', 0),
(2633, 0, 'config', 'config_tax_default', 'shipping', 0),
(2632, 0, 'config', 'config_tax', '1', 0),
(2631, 0, 'config', 'config_voucher_max', '1000', 0),
(2630, 0, 'config', 'config_voucher_min', '1', 0),
(2629, 0, 'config', 'config_review_mail', '0', 0),
(2628, 0, 'config', 'config_review_guest', '1', 0),
(2627, 0, 'config', 'config_review_status', '1', 0),
(2626, 0, 'config', 'config_limit_admin', '20', 0),
(2625, 0, 'config', 'config_product_description_length', '100', 0),
(2624, 0, 'config', 'config_product_limit', '15', 0),
(2623, 0, 'config', 'config_product_count', '1', 0),
(2622, 0, 'config', 'config_weight_class_id', '2', 0),
(2621, 0, 'config', 'config_length_class_id', '3', 0),
(2620, 0, 'config', 'config_currency_auto', '1', 0),
(2619, 0, 'config', 'config_currency', 'USD', 0),
(2618, 0, 'config', 'config_admin_language', 'en', 0),
(2617, 0, 'config', 'config_language', 'en', 0),
(2616, 0, 'config', 'config_zone_id', '322', 0),
(2615, 0, 'config', 'config_country_id', '18', 0),
(2614, 0, 'config', 'config_layout_id', '4', 0),
(2613, 0, 'config', 'config_template', 'micrablue', 0),
(2612, 0, 'config', 'config_google_site_verification', '', 0),
(2611, 0, 'config', 'config_meta_keyword', 'Megastore, Tanvir Store, Tanvir Shop, Mega Shop', 0),
(2609, 0, 'config', 'config_meta_title', 'Tanvir Shop', 0),
(2610, 0, 'config', 'config_meta_description', 'My Store', 0),
(2608, 0, 'config', 'config_comment', '', 0),
(2607, 0, 'config', 'config_open', '', 0),
(2606, 0, 'config', 'config_image', '', 0),
(2605, 0, 'config', 'config_fax', '', 0),
(2604, 0, 'config', 'config_telephone', '01818265075', 0),
(2603, 0, 'config', 'config_email', 'tanvir007v@gmail.com', 0),
(2602, 0, 'config', 'config_geocode', '', 0),
(2601, 0, 'config', 'config_address', 'Adabar,Shyamoli,Dhaka', 0),
(2600, 0, 'config', 'config_owner', 'Tanvir', 0),
(2599, 0, 'config', 'config_name', 'Tanvir Shop', 0),
(2710, 0, 'config', 'config_error_filename', 'error.log', 0),
(2711, 0, 'config', 'config_google_analytics', '', 0),
(2712, 0, 'config', 'config_google_analytics_status', '0', 0),
(2713, 0, 'config', 'config_google_captcha_public', '', 0),
(2714, 0, 'config', 'config_google_captcha_secret', '', 0),
(2715, 0, 'config', 'config_google_captcha_status', '0', 0),
(3869, 0, 'magikmicra', 'magikmicra_product_ct2', '1', 0),
(3866, 0, 'magikmicra', 'magikmicra_product_ct', '1', 0),
(3865, 0, 'magikmicra', 'magikmicra_menubar_cbtitle', 'Custom', 0),
(3864, 0, 'magikmicra', 'magikmicra_menubar_cb', '1', 0),
(3863, 0, 'magikmicra', 'magikmicra_sale_labelcolor', 'da2c2a', 0),
(3860, 0, 'magikmicra', 'magikmicra_animation_effects', '1', 0),
(3861, 0, 'magikmicra', 'magikmicra_sale_label', '1', 0),
(3862, 0, 'magikmicra', 'magikmicra_sale_labeltitle', 'Sale', 0),
(3859, 0, 'magikmicra', 'magikmicra_scroll_totop', '1', 0),
(3858, 0, 'magikmicra', 'magikmicra_quickview_button', '1', 0),
(3857, 0, 'magikmicra', 'magikmicra_home_option', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(1021, 'product_id=177', ''),
(857, 'category_id=20', 'desktops'),
(834, 'category_id=26', 'pc'),
(858, 'category_id=27', 'mac'),
(730, 'manufacturer_id=8', 'apple'),
(772, 'information_id=4', 'about_us'),
(909, 'product_id=92', ''),
(789, 'category_id=34', 'mp3-players'),
(781, 'category_id=36', 'test2'),
(890, 'product_id=75', ''),
(775, 'category_id=46', 'macs'),
(776, 'category_id=45', 'windows'),
(918, 'category_id=25', 'component'),
(971, 'category_id=29', 'mouse'),
(973, 'category_id=28', 'monitor'),
(780, 'category_id=35', 'test1'),
(972, 'category_id=30', 'printer'),
(974, 'category_id=31', 'scanner'),
(919, 'category_id=57', 'tablet'),
(920, 'category_id=17', 'software'),
(787, 'category_id=24', 'smartphone'),
(788, 'category_id=33', 'camera'),
(790, 'category_id=43', 'test11'),
(791, 'category_id=44', 'test12'),
(792, 'category_id=47', 'test15'),
(793, 'category_id=48', 'test16'),
(794, 'category_id=49', 'test17'),
(795, 'category_id=50', 'test18'),
(796, 'category_id=51', 'test19'),
(797, 'category_id=52', 'test20'),
(798, 'category_id=58', 'test25'),
(799, 'category_id=53', 'test21'),
(800, 'category_id=54', 'test22'),
(801, 'category_id=55', 'test23'),
(802, 'category_id=56', 'test24'),
(803, 'category_id=38', 'test4'),
(804, 'category_id=37', 'test5'),
(805, 'category_id=39', 'test6'),
(806, 'category_id=40', 'test7'),
(807, 'category_id=41', 'test8'),
(808, 'category_id=42', 'test9'),
(893, 'product_id=78', ''),
(988, 'product_id=152', ''),
(987, 'product_id=151', ''),
(883, 'product_id=69', ''),
(1022, 'product_id=178', ''),
(923, 'product_id=102', ''),
(898, 'product_id=83', ''),
(985, 'product_id=149', ''),
(984, 'product_id=148', ''),
(1020, 'product_id=176', ''),
(986, 'product_id=150', ''),
(885, 'product_id=71', ''),
(825, 'product_id=36', 'ipod-nano'),
(914, 'product_id=97', ''),
(921, 'product_id=100', ''),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(962, 'manufacturer_id=10', 'sony'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(854, 'information_id=7', ''),
(855, 'information_id=8', ''),
(922, 'product_id=101', ''),
(916, 'product_id=99', ''),
(924, 'product_id=103', ''),
(925, 'product_id=104', ''),
(926, 'product_id=105', ''),
(931, 'product_id=106', ''),
(932, 'product_id=107', ''),
(933, 'product_id=108', ''),
(935, 'product_id=110', ''),
(936, 'product_id=111', ''),
(937, 'product_id=112', ''),
(938, 'product_id=113', ''),
(939, 'product_id=114', ''),
(940, 'product_id=115', ''),
(941, 'product_id=116', ''),
(942, 'product_id=117', ''),
(944, 'product_id=119', ''),
(945, 'product_id=120', ''),
(946, 'product_id=121', ''),
(947, 'product_id=122', ''),
(948, 'product_id=123', ''),
(950, 'product_id=125', ''),
(953, 'product_id=128', ''),
(952, 'product_id=127', ''),
(954, 'product_id=129', ''),
(955, 'product_id=130', ''),
(956, 'product_id=131', ''),
(963, 'manufacturer_id=11', 'Samsung'),
(964, 'product_id=134', ''),
(965, 'product_id=135', ''),
(966, 'product_id=136', ''),
(967, 'product_id=137', ''),
(968, 'manufacturer_id=12', 'Nokia'),
(969, 'product_id=138', ''),
(970, 'product_id=139', ''),
(976, 'product_id=140', ''),
(977, 'product_id=141', ''),
(978, 'product_id=142', ''),
(979, 'product_id=143', ''),
(980, 'product_id=144', ''),
(981, 'product_id=145', ''),
(982, 'product_id=146', ''),
(983, 'product_id=147', ''),
(989, 'product_id=153', ''),
(990, 'product_id=154', ''),
(991, 'product_id=155', ''),
(992, 'product_id=156', ''),
(993, 'product_id=157', ''),
(994, 'product_id=158', ''),
(995, 'product_id=159', ''),
(996, 'product_id=160', ''),
(997, 'product_id=161', ''),
(998, 'product_id=162', ''),
(999, 'product_id=163', ''),
(1000, 'product_id=164', ''),
(1001, 'product_id=165', ''),
(1002, 'product_id=166', ''),
(1003, 'product_id=167', ''),
(1006, 'product_id=170', ''),
(1005, 'product_id=169', ''),
(1007, 'product_id=171', ''),
(1024, 'product_id=180', ''),
(1023, 'product_id=179', ''),
(1016, 'product_id=172', ''),
(1017, 'product_id=173', ''),
(1018, 'product_id=174', ''),
(1019, 'product_id=175', ''),
(1025, 'product_id=181', ''),
(1026, 'product_id=182', ''),
(1027, 'product_id=183', ''),
(1028, 'product_id=184', ''),
(1029, 'product_id=185', ''),
(1030, 'product_id=186', ''),
(1031, 'product_id=187', ''),
(1032, 'product_id=188', ''),
(1033, 'product_id=189', ''),
(1034, 'product_id=190', ''),
(1035, 'product_id=191', ''),
(1036, 'product_id=192', ''),
(1037, 'product_id=193', ''),
(1038, 'product_id=194', ''),
(1039, 'product_id=195', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'fad4d6cd3120523933f8e3dfe563825c7c657358', '5971325e7', 'John', 'Doe', 'tanvir007v@gmail.com', '', '', '::1', 1, '2016-11-19 18:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', 'a:2:{s:6:"access";a:193:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:13:"design/banner";i:17;s:13:"design/layout";i:18;s:14:"extension/feed";i:19;s:15:"extension/fraud";i:20;s:19:"extension/installer";i:21;s:22:"extension/modification";i:22;s:16:"extension/module";i:23;s:17:"extension/openbay";i:24;s:17:"extension/payment";i:25;s:18:"extension/shipping";i:26;s:15:"extension/total";i:27;s:16:"feed/google_base";i:28;s:19:"feed/google_sitemap";i:29;s:15:"feed/openbaypro";i:30;s:18:"fraud/fraudlabspro";i:31;s:13:"fraud/maxmind";i:32;s:20:"localisation/country";i:33;s:21:"localisation/currency";i:34;s:21:"localisation/geo_zone";i:35;s:21:"localisation/language";i:36;s:25:"localisation/length_class";i:37;s:21:"localisation/location";i:38;s:25:"localisation/order_status";i:39;s:26:"localisation/return_action";i:40;s:26:"localisation/return_reason";i:41;s:26:"localisation/return_status";i:42;s:25:"localisation/stock_status";i:43;s:22:"localisation/tax_class";i:44;s:21:"localisation/tax_rate";i:45;s:25:"localisation/weight_class";i:46;s:17:"localisation/zone";i:47;s:19:"marketing/affiliate";i:48;s:17:"marketing/contact";i:49;s:16:"marketing/coupon";i:50;s:19:"marketing/marketing";i:51;s:14:"module/account";i:52;s:16:"module/affiliate";i:53;s:20:"module/amazon_button";i:54;s:19:"module/amazon_login";i:55;s:17:"module/amazon_pay";i:56;s:13:"module/banner";i:57;s:17:"module/bestseller";i:58;s:15:"module/carousel";i:59;s:15:"module/category";i:60;s:19:"module/ebay_listing";i:61;s:15:"module/featured";i:62;s:13:"module/filter";i:63;s:22:"module/google_hangouts";i:64;s:11:"module/html";i:65;s:18:"module/information";i:66;s:13:"module/latest";i:67;s:16:"module/pp_button";i:68;s:15:"module/pp_login";i:69;s:16:"module/slideshow";i:70;s:14:"module/special";i:71;s:12:"module/store";i:72;s:14:"openbay/amazon";i:73;s:22:"openbay/amazon_listing";i:74;s:22:"openbay/amazon_product";i:75;s:16:"openbay/amazonus";i:76;s:24:"openbay/amazonus_listing";i:77;s:24:"openbay/amazonus_product";i:78;s:12:"openbay/ebay";i:79;s:20:"openbay/ebay_profile";i:80;s:21:"openbay/ebay_template";i:81;s:12:"openbay/etsy";i:82;s:20:"openbay/etsy_product";i:83;s:21:"openbay/etsy_shipping";i:84;s:17:"openbay/etsy_shop";i:85;s:23:"payment/amazon_checkout";i:86;s:24:"payment/amazon_login_pay";i:87;s:24:"payment/authorizenet_aim";i:88;s:24:"payment/authorizenet_sim";i:89;s:21:"payment/bank_transfer";i:90;s:22:"payment/bluepay_hosted";i:91;s:24:"payment/bluepay_redirect";i:92;s:14:"payment/cheque";i:93;s:11:"payment/cod";i:94;s:17:"payment/firstdata";i:95;s:24:"payment/firstdata_remote";i:96;s:21:"payment/free_checkout";i:97;s:14:"payment/g2apay";i:98;s:17:"payment/globalpay";i:99;s:24:"payment/globalpay_remote";i:100;s:22:"payment/klarna_account";i:101;s:22:"payment/klarna_invoice";i:102;s:14:"payment/liqpay";i:103;s:14:"payment/nochex";i:104;s:15:"payment/paymate";i:105;s:16:"payment/paypoint";i:106;s:13:"payment/payza";i:107;s:26:"payment/perpetual_payments";i:108;s:18:"payment/pp_express";i:109;s:18:"payment/pp_payflow";i:110;s:25:"payment/pp_payflow_iframe";i:111;s:14:"payment/pp_pro";i:112;s:21:"payment/pp_pro_iframe";i:113;s:19:"payment/pp_standard";i:114;s:14:"payment/realex";i:115;s:21:"payment/realex_remote";i:116;s:22:"payment/sagepay_direct";i:117;s:22:"payment/sagepay_server";i:118;s:18:"payment/sagepay_us";i:119;s:24:"payment/securetrading_pp";i:120;s:24:"payment/securetrading_ws";i:121;s:14:"payment/skrill";i:122;s:19:"payment/twocheckout";i:123;s:28:"payment/web_payment_software";i:124;s:16:"payment/worldpay";i:125;s:16:"report/affiliate";i:126;s:25:"report/affiliate_activity";i:127;s:22:"report/affiliate_login";i:128;s:24:"report/customer_activity";i:129;s:22:"report/customer_credit";i:130;s:21:"report/customer_login";i:131;s:22:"report/customer_online";i:132;s:21:"report/customer_order";i:133;s:22:"report/customer_reward";i:134;s:16:"report/marketing";i:135;s:24:"report/product_purchased";i:136;s:21:"report/product_viewed";i:137;s:18:"report/sale_coupon";i:138;s:17:"report/sale_order";i:139;s:18:"report/sale_return";i:140;s:20:"report/sale_shipping";i:141;s:15:"report/sale_tax";i:142;s:17:"sale/custom_field";i:143;s:13:"sale/customer";i:144;s:20:"sale/customer_ban_ip";i:145;s:19:"sale/customer_group";i:146;s:10:"sale/order";i:147;s:14:"sale/recurring";i:148;s:11:"sale/return";i:149;s:12:"sale/voucher";i:150;s:18:"sale/voucher_theme";i:151;s:15:"setting/setting";i:152;s:13:"setting/store";i:153;s:16:"shipping/auspost";i:154;s:17:"shipping/citylink";i:155;s:14:"shipping/fedex";i:156;s:13:"shipping/flat";i:157;s:13:"shipping/free";i:158;s:13:"shipping/item";i:159;s:23:"shipping/parcelforce_48";i:160;s:15:"shipping/pickup";i:161;s:19:"shipping/royal_mail";i:162;s:12:"shipping/ups";i:163;s:13:"shipping/usps";i:164;s:15:"shipping/weight";i:165;s:11:"tool/backup";i:166;s:14:"tool/error_log";i:167;s:11:"tool/upload";i:168;s:12:"total/coupon";i:169;s:12:"total/credit";i:170;s:14:"total/handling";i:171;s:16:"total/klarna_fee";i:172;s:19:"total/low_order_fee";i:173;s:12:"total/reward";i:174;s:14:"total/shipping";i:175;s:15:"total/sub_total";i:176;s:9:"total/tax";i:177;s:11:"total/total";i:178;s:13:"total/voucher";i:179;s:8:"user/api";i:180;s:9:"user/user";i:181;s:20:"user/user_permission";i:182;s:35:"module/custom_subcategory_thumbnail";i:183;s:26:"module/custom_menu_content";i:184;s:17:"module/magikmicra";i:185;s:18:"module/magikslider";i:186;s:30:"module/category_product_slider";i:187;s:17:"module/bestseller";i:188;s:11:"module/html";i:189;s:13:"module/latest";i:190;s:19:"payment/SSLCommerce";i:191;s:18:"module/information";i:192;s:12:"module/store";}s:6:"modify";a:193:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:13:"design/banner";i:17;s:13:"design/layout";i:18;s:14:"extension/feed";i:19;s:15:"extension/fraud";i:20;s:19:"extension/installer";i:21;s:22:"extension/modification";i:22;s:16:"extension/module";i:23;s:17:"extension/openbay";i:24;s:17:"extension/payment";i:25;s:18:"extension/shipping";i:26;s:15:"extension/total";i:27;s:16:"feed/google_base";i:28;s:19:"feed/google_sitemap";i:29;s:15:"feed/openbaypro";i:30;s:18:"fraud/fraudlabspro";i:31;s:13:"fraud/maxmind";i:32;s:20:"localisation/country";i:33;s:21:"localisation/currency";i:34;s:21:"localisation/geo_zone";i:35;s:21:"localisation/language";i:36;s:25:"localisation/length_class";i:37;s:21:"localisation/location";i:38;s:25:"localisation/order_status";i:39;s:26:"localisation/return_action";i:40;s:26:"localisation/return_reason";i:41;s:26:"localisation/return_status";i:42;s:25:"localisation/stock_status";i:43;s:22:"localisation/tax_class";i:44;s:21:"localisation/tax_rate";i:45;s:25:"localisation/weight_class";i:46;s:17:"localisation/zone";i:47;s:19:"marketing/affiliate";i:48;s:17:"marketing/contact";i:49;s:16:"marketing/coupon";i:50;s:19:"marketing/marketing";i:51;s:14:"module/account";i:52;s:16:"module/affiliate";i:53;s:20:"module/amazon_button";i:54;s:19:"module/amazon_login";i:55;s:17:"module/amazon_pay";i:56;s:13:"module/banner";i:57;s:17:"module/bestseller";i:58;s:15:"module/carousel";i:59;s:15:"module/category";i:60;s:19:"module/ebay_listing";i:61;s:15:"module/featured";i:62;s:13:"module/filter";i:63;s:22:"module/google_hangouts";i:64;s:11:"module/html";i:65;s:18:"module/information";i:66;s:13:"module/latest";i:67;s:16:"module/pp_button";i:68;s:15:"module/pp_login";i:69;s:16:"module/slideshow";i:70;s:14:"module/special";i:71;s:12:"module/store";i:72;s:14:"openbay/amazon";i:73;s:22:"openbay/amazon_listing";i:74;s:22:"openbay/amazon_product";i:75;s:16:"openbay/amazonus";i:76;s:24:"openbay/amazonus_listing";i:77;s:24:"openbay/amazonus_product";i:78;s:12:"openbay/ebay";i:79;s:20:"openbay/ebay_profile";i:80;s:21:"openbay/ebay_template";i:81;s:12:"openbay/etsy";i:82;s:20:"openbay/etsy_product";i:83;s:21:"openbay/etsy_shipping";i:84;s:17:"openbay/etsy_shop";i:85;s:23:"payment/amazon_checkout";i:86;s:24:"payment/amazon_login_pay";i:87;s:24:"payment/authorizenet_aim";i:88;s:24:"payment/authorizenet_sim";i:89;s:21:"payment/bank_transfer";i:90;s:22:"payment/bluepay_hosted";i:91;s:24:"payment/bluepay_redirect";i:92;s:14:"payment/cheque";i:93;s:11:"payment/cod";i:94;s:17:"payment/firstdata";i:95;s:24:"payment/firstdata_remote";i:96;s:21:"payment/free_checkout";i:97;s:14:"payment/g2apay";i:98;s:17:"payment/globalpay";i:99;s:24:"payment/globalpay_remote";i:100;s:22:"payment/klarna_account";i:101;s:22:"payment/klarna_invoice";i:102;s:14:"payment/liqpay";i:103;s:14:"payment/nochex";i:104;s:15:"payment/paymate";i:105;s:16:"payment/paypoint";i:106;s:13:"payment/payza";i:107;s:26:"payment/perpetual_payments";i:108;s:18:"payment/pp_express";i:109;s:18:"payment/pp_payflow";i:110;s:25:"payment/pp_payflow_iframe";i:111;s:14:"payment/pp_pro";i:112;s:21:"payment/pp_pro_iframe";i:113;s:19:"payment/pp_standard";i:114;s:14:"payment/realex";i:115;s:21:"payment/realex_remote";i:116;s:22:"payment/sagepay_direct";i:117;s:22:"payment/sagepay_server";i:118;s:18:"payment/sagepay_us";i:119;s:24:"payment/securetrading_pp";i:120;s:24:"payment/securetrading_ws";i:121;s:14:"payment/skrill";i:122;s:19:"payment/twocheckout";i:123;s:28:"payment/web_payment_software";i:124;s:16:"payment/worldpay";i:125;s:16:"report/affiliate";i:126;s:25:"report/affiliate_activity";i:127;s:22:"report/affiliate_login";i:128;s:24:"report/customer_activity";i:129;s:22:"report/customer_credit";i:130;s:21:"report/customer_login";i:131;s:22:"report/customer_online";i:132;s:21:"report/customer_order";i:133;s:22:"report/customer_reward";i:134;s:16:"report/marketing";i:135;s:24:"report/product_purchased";i:136;s:21:"report/product_viewed";i:137;s:18:"report/sale_coupon";i:138;s:17:"report/sale_order";i:139;s:18:"report/sale_return";i:140;s:20:"report/sale_shipping";i:141;s:15:"report/sale_tax";i:142;s:17:"sale/custom_field";i:143;s:13:"sale/customer";i:144;s:20:"sale/customer_ban_ip";i:145;s:19:"sale/customer_group";i:146;s:10:"sale/order";i:147;s:14:"sale/recurring";i:148;s:11:"sale/return";i:149;s:12:"sale/voucher";i:150;s:18:"sale/voucher_theme";i:151;s:15:"setting/setting";i:152;s:13:"setting/store";i:153;s:16:"shipping/auspost";i:154;s:17:"shipping/citylink";i:155;s:14:"shipping/fedex";i:156;s:13:"shipping/flat";i:157;s:13:"shipping/free";i:158;s:13:"shipping/item";i:159;s:23:"shipping/parcelforce_48";i:160;s:15:"shipping/pickup";i:161;s:19:"shipping/royal_mail";i:162;s:12:"shipping/ups";i:163;s:13:"shipping/usps";i:164;s:15:"shipping/weight";i:165;s:11:"tool/backup";i:166;s:14:"tool/error_log";i:167;s:11:"tool/upload";i:168;s:12:"total/coupon";i:169;s:12:"total/credit";i:170;s:14:"total/handling";i:171;s:16:"total/klarna_fee";i:172;s:19:"total/low_order_fee";i:173;s:12:"total/reward";i:174;s:14:"total/shipping";i:175;s:15:"total/sub_total";i:176;s:9:"total/tax";i:177;s:11:"total/total";i:178;s:13:"total/voucher";i:179;s:8:"user/api";i:180;s:9:"user/user";i:181;s:20:"user/user_permission";i:182;s:35:"module/custom_subcategory_thumbnail";i:183;s:26:"module/custom_menu_content";i:184;s:17:"module/magikmicra";i:185;s:18:"module/magikslider";i:186;s:30:"module/category_product_slider";i:187;s:17:"module/bestseller";i:188;s:11:"module/html";i:189;s:13:"module/latest";i:190;s:19:"payment/SSLCommerce";i:191;s:18:"module/information";i:192;s:12:"module/store";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_banner_image_description`
--
ALTER TABLE `oc_banner_image_description`
  ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
  ADD PRIMARY KEY (`customer_ban_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
  MODIFY `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3181;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;
--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3936;
--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1040;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4231;
--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
