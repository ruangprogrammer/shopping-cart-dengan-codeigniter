-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2017 at 06:12 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hijabjogjastore`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `serial` int(11) NOT NULL,
  `date` date NOT NULL,
  `customerid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `serial` int(11) NOT NULL,
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `description` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `price` float NOT NULL,
  `picture` varchar(80) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`serial`, `name`, `description`, `price`, `picture`) VALUES
(31, 'ALLURE HIJAB', '  Our limited edition Allure Hijab features a mixture of tones, ranging from pink, black and grey.   Made from: 100% Polyester Georgette.  Approximate Size: 25\" (64cm) x 75\" (190cm) Colour may vary depending on individual monitor settings.', 60000, 'images/a.jpg'),
(32, 'BLACK FLORAL EMBELLI', ' This georgette hijab features beutiful handcrafted georgette flowers on one end of the hijab. Simply wrap around for a casual look or wear volumised for an occasional look.  - Approximately measures: 25\" X 75\"  - x 10 fabric flowers  Hand wash only', 55000, 'images/b.jpg'),
(33, 'MAROON REGAL PRINT H', '  Printed Hijab.  Made from: 100% Polyester Georgette.  Approximate Size: 25\" (64cm) x 75\" (190cm) Colour may vary depending on individual monitor settings.', 75000, 'images/c.jpg'),
(34, 'MINK SOFT GEORGETTE ', '  Our georgette hijabs are made from soft georgette fabric, allowing you to create various hijab styles ideal for any occasion. Being so versatile, they are a must have in every wardrobe! Pair our georgette hijabs up with one of our kaftans or signature a', 100000, 'images/d.jpg'),
(35, 'MINK LIGHT MODAL HIJ', ' Our \'light\' modal hijabs are slightly lighter than our standard modal hijabs.  Our modal hijabs are perfect to wear throughout all seasons. They are light in weight, non-slip, have a soft texture, great for draping, and provide excellent coverage. Made f', 75000, 'images/da.jpg'),
(38, 'test', 'test', 10000, 'images/xx.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`serial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
