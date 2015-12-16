-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 16, 2015 at 03:51 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cafetariat`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `student`, `email`, `message`) VALUES
(1, 'daniele', 'kalegwa@yahoo.com', 'slt mn grand ca fait long temps'),
(2, 'patrick', 'patrick@yahoo.com', 'slt merci pour le service rendue');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `studentnum` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `contacts` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `studentnum`, `name`, `surname`, `contacts`, `email`, `password`) VALUES
(3, 2, 'christian', 'kalegwa', '0750751232', 'christian@yahoo.com', '1234'),
(4, 0, 'kalegwa', 'christophe', '0750571232', 'daniel@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `orderditems`
--

CREATE TABLE IF NOT EXISTS `orderditems` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `customer` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `price` varchar(30) NOT NULL,
  `total` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `transactioncode` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `orderditems`
--

INSERT INTO `orderditems` (`id`, `customer`, `quantity`, `price`, `total`, `name`, `transactioncode`) VALUES
(3, '3', '34', '16', 544, 'Chips', 'yf2p0efa'),
(4, '2', '1', '30', 30, 'Pizza', '8feubwby'),
(5, '4', '2', '9', 18, 'Drink(1 liter)', '8feubwby'),
(6, '6', '1', '23', 23, 'Cake', '8feubwby'),
(8, '3', '2', '16', 32, 'Chips', 'gud00qmu'),
(9, '7', '1', '4', 4, 'Coffee( 1 cup)', 's8igbphp'),
(10, '2', '2', '30', 60, 'Pizza', 's8igbphp'),
(11, '7', '1', '4', 4, 'Coffee( 1 cup)', '6u8h773x'),
(13, '2', '3', '30', 90, 'Pizza', 'rftrxeow'),
(14, '3', '9', '16', 144, 'Chips', 'rftrxeow'),
(15, '5', '2', '7', 14, 'Drink(can)', 'rftrxeow');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `product_id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `product_photo` varchar(40) NOT NULL,
  `price` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `name`, `product_photo`, `price`, `quantity`) VALUES
(1, 1, 'burger', 'img001.gif', '5.00', 40),
(2, 2, 'Pizza', 'img002.jpg', '30.00', 100),
(3, 3, 'Chips', 'img003.jpg', '16.00', 56),
(4, 4, 'Drink(1 liter)', 'img004.jpg', '9.00', 58),
(5, 5, 'Drink(can)', 'img005.jpg', '7.50', 100),
(6, 6, 'Cake', 'img006.jpg', '23.50', 97),
(7, 7, 'Coffee( 1 cup)', 'img007.jpg', '4.00', 76);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'christian', 'christian');

-- --------------------------------------------------------

--
-- Table structure for table `wings_orders`
--

CREATE TABLE IF NOT EXISTS `wings_orders` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `cusid` int(30) NOT NULL,
  `total` varchar(30) NOT NULL,
  `transactiondate` varchar(30) NOT NULL,
  `transactioncode` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wings_orders`
--

INSERT INTO `wings_orders` (`id`, `cusid`, `total`, `transactiondate`, `transactioncode`) VALUES
(1, 0, '248', '12/16/2015', 'rftrxeow');
