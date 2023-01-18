-- phpMyAdmin SQL Dump
-- version 3.4.3.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 11, 2014 at 09:31 AM
-- Server version: 5.0.77
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `KLt`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(15) NOT NULL auto_increment,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;


--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL auto_increment,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'KL1',  'Girls Shirt', 'This girls shirt features a classic fit with a button-up front, a collared neckline, and long sleeves. Made from soft, breathable cotton, its comfortable for all-day wear. Available in a variety of colors and prints.', 'girls4.png', 34, 5000.00),
(2, 'KLT2', 'Girls Shirt', 'This girls shirt features a classic fit with a button-up front, a collared neckline, and long sleeves. Made from soft, breathable cotton, its comfortable for all-day wear. Available in a variety of colors and prints.', 'women1.png', 34, 200.00),
(3, 'KLT4', 'Boys Hoodie', 'This boys shirt features a classic fit with a button-up front, a collared neckline, and long sleeves. Made from soft, breathable cotton, its comfortable for all-day wear. Available in a variety of colors.', 'boys1.png', 34, 5000.00),
(4, 'KLT5', 'Boys Romper', 'This boys shirt features a classic fit with a button-up front, a collared neckline, and long sleeves. Made from soft, breathable cotton, its comfortable for all-day wear. Available in a variety of colors.', 'boys2.png', 34, 6000.00),
(5, 'KLT6', 'Boys T-Shirt', 'This boys shirt features a classic fit with a button-up front, a collared neckline, and long sleeves. Made from soft, breathable cotton, its comfortable for all-day wear. Available in a variety of colors.', 'boys3.png', 34, 2000.00),
(6, 'KLT7', 'Boys Romper', 'This boys shirt features a classic fit with a button-up front, a collared neckline, and long sleeves. Made from soft, breathable cotton, its comfortable for all-day wear. Available in a variety of colors.', 'boys4.png', 34, 4000.00),
(7, 'KLT8', 'Boys Romper', 'This boys shirt features a classic fit with a button-up front, a collared neckline, and long sleeves. Made from soft, breathable cotton, its comfortable for all-day wear. Available in a variety of colors.', 'boys5.png', 34, 6000.00),
(8, 'KLT10', 'Girls Shirt', 'This girls shirt features a classic fit with a button-up front, a collared neckline, and long sleeves. Made from soft, breathable cotton, its comfortable for all-day wear. Available in a variety of colors and prints.', 'girls1.png', 34, 9000.00),
(9, 'KLT11', 'Girls Shirt', 'This girls shirt features a classic fit with a button-up front, a collared neckline, and long sleeves. Made from soft, breathable cotton, its comfortable for all-day wear. Available in a variety of colors and prints.', 'girls2.png', 34, 2000.00),
(10, 'KLT12', 'Girls Shirt', 'This girls shirt features a classic fit with a button-up front, a collared neckline, and long sleeves. Made from soft, breathable cotton, its comfortable for all-day wear. Available in a variety of colors and prints.', 'girls3.png', 34, 3000.00),
(11, 'KLT9', 'Boys Shirt', 'This boys shirt features a classic fit with a button-up front, a collared neckline, and long sleeves. Made from soft, breathable cotton, its comfortable for all-day wear. Available in a variety of colors.', 'boys6.png', 34, 8000.00);




-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL default 'user',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`) VALUES
(1, 'Steve', 'Jobs', 'Infinite Loop', 'California', 95014, 'sjobs@apple.com', 'steve', 'user'),
(2, 'Admin', 'Webmaster', 'Internet', 'Electricity', 101010, 'admin@admin.com', 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
