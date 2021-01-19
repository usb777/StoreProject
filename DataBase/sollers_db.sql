-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 04:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sollers_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `authority_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`authority_id`, `username`, `authority`) VALUES
(1, 'dzen', 'admin'),
(2, 'men', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `bufcart`
--

CREATE TABLE `bufcart` (
  `bufcart_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `productname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `placeorder`
--

CREATE TABLE `placeorder` (
  `order_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_cost` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `place_order`
--

CREATE TABLE `place_order` (
  `order_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `total_cost` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `productimage` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `email`, `username`, `password`, `usertype`, `is_enabled`, `age`) VALUES
(1, 'dzen@gmail.cm', 'dzen', '123', 'admin', 0, 0),
(2, 'men@gmail.com', 'men', '123', 'customer', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_c29k1p0rbffh2cr8oa8wtx72o` (`userid`);

--
-- Indexes for table `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`authority_id`),
  ADD KEY `FKmt1oig8hil0cet1vlwifa2spp` (`username`);

--
-- Indexes for table `bufcart`
--
ALTER TABLE `bufcart`
  ADD PRIMARY KEY (`bufcart_id`);

--
-- Indexes for table `place_order`
--
ALTER TABLE `place_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `UK_jreodf78a7pl5qidfh43axdfb` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authorities`
--
ALTER TABLE `authorities`
  MODIFY `authority_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bufcart`
--
ALTER TABLE `bufcart`
  MODIFY `bufcart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FKlmtvnuekx4yd8f3mhy1iy72tc` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);

--
-- Constraints for table `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `FKmt1oig8hil0cet1vlwifa2spp` FOREIGN KEY (`username`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
