-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 08:30 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `catname`) VALUES
(4, 'MEAT'),
(5, 'FISH'),
(6, 'VEGETABLE'),
(7, 'FRUIT'),
(9, 'DRINKS'),
(10, 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(1) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `productname`, `price`, `photo`) VALUES
(24, 4, 'BEEF MEAT/KG', 14, 'upload/beef meat_1611252090.jpg'),
(25, 4, 'CHICKEN WING/KG', 12, 'upload/chicken wing_1611252166.jpg'),
(26, 5, 'SALMON/KG', 30, 'upload/salmon fish_1611252301.jpeg'),
(27, 5, 'SQUID/KG', 12.2, 'upload/squid_1611252431.jpg'),
(28, 5, 'TUNA/KG', 9, 'upload/tuna fish_1611252698.jpg'),
(29, 7, 'APPLE/8PCS', 8, 'upload/apple_1611252760.jpg'),
(30, 6, 'BROCCOLI/KG', 5, 'upload/broccoli_1611252806.jpg'),
(31, 6, 'CABBAGE/KG', 3, 'upload/cabbage_1611252866.jpg'),
(32, 6, 'CARROT/KG', 5, 'upload/carrot_1611252968.jpg'),
(33, 7, 'ORANGE/KG', 6, 'upload/orange_1611253088.jpg'),
(34, 9, 'BEER', 9, 'upload/beer_1611253199.jpeg'),
(35, 9, 'COCA COLA', 2, 'upload/cola_1611253880.jpg'),
(36, 9, 'LEMON TEA', 2, 'upload/lemon tea_1611253894.jpg'),
(37, 9, 'MILO', 2, 'upload/milo_1611253907.jpg'),
(38, 9, 'WATER', 1.5, 'upload/water_1611254820.jpg'),
(39, 10, 'BISCUIT', 3, 'upload/biscuit_1611254903.jpg'),
(40, 10, 'INSTANT PORRIDGE/PCS', 3, 'upload/instant porridge_1611254925.jpg'),
(41, 10, 'INSTANT NOODLE/EACH', 2.5, 'upload/maggi cup_1611254945.jpg'),
(42, 10, 'SNACK/PCS', 1.5, 'upload/snack_1611254960.jpg'),
(43, 10, 'SWEETS/PCK', 1, 'upload/sweets_1611254985.jpg'),
(44, 4, 'CHICKEN BREAST/LG', 13, 'upload/chicken breast_1611255476.jpg'),
(45, 4, 'GOAT MEAT/KG', 13, 'upload/goat meat_1611299893.jpg'),
(46, 4, 'RABBIT MEAT/KG', 10, 'upload/rabbit meat_1611299966.jpg'),
(47, 5, 'PRAWN/KG', 15, 'upload/prawn_1611300075.jpg'),
(48, 5, 'CRAB/KG', 18, 'upload/crab_1611300120.jpg'),
(49, 6, 'TOMATO/KG', 4, 'upload/tomato_1611300264.jpg'),
(50, 6, 'BABY KAILAN/KG', 5, 'upload/baby kailan_1611300285.jpg'),
(51, 7, 'BANANA/SLICE', 3, 'upload/banana_1611300372.jpg'),
(52, 7, 'GRAPE/PCK', 3, 'upload/grap_1611300405.jpg'),
(53, 7, 'WATERMELON/KG', 6, 'upload/watermelon_1611300426.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `date_purchase` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `customer`, `total`, `date_purchase`) VALUES
(8, 'Neovic', 600, '2017-12-06 15:29:00'),
(9, 'demo', 450, '2018-10-09 20:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_detail`
--

CREATE TABLE `purchase_detail` (
  `pdid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_detail`
--

INSERT INTO `purchase_detail` (`pdid`, `purchaseid`, `productid`, `quantity`) VALUES
(13, 8, 15, 2),
(14, 8, 17, 2),
(15, 8, 18, 2),
(16, 9, 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`) VALUES
(1, 'user', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD PRIMARY KEY (`pdid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  MODIFY `pdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
