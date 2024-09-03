-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 04:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `billinginvoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `inv_order`
--

CREATE TABLE `inv_order` (
  `order_id` int(11) NOT NULL,
  `order_no` varchar(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_receiver_name` varchar(250) NOT NULL,
  `order_receiver_address` text NOT NULL,
  `order_total_before_tax` decimal(10,0) NOT NULL,
  `order_total_tax1` decimal(10,0) NOT NULL,
  `order_total_tax2` decimal(10,0) NOT NULL,
  `order_total_tax3` decimal(10,0) NOT NULL,
  `order_total_tax` decimal(10,0) NOT NULL,
  `order_total_after_tax` int(11) NOT NULL,
  `order_datetime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_order`
--

INSERT INTO `inv_order` (`order_id`, `order_no`, `order_date`, `order_receiver_name`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax1`, `order_total_tax2`, `order_total_tax3`, `order_total_tax`, `order_total_after_tax`, `order_datetime`) VALUES
(14, '169690', '2021-07-06', 'Kiran', '8974561237', '945', '12', '0', '0', '12', 970, 1625592940),
(13, '104780', '2021-07-05', 'Meena', '9897456123', '937', '16', '0', '0', '16', 986, 1625592747),
(17, '1234', '2022-06-28', 'Dileep', '987522', '110000', '0', '0', '0', '0', 110000, 1657002647),
(10, '101255', '2021-07-01', 'Upendra', '7898951520', '48', '1', '0', '0', '1', 50, 1625579598),
(11, '102566', '2021-07-01', 'Sekhar', '987456123', '150', '2', '0', '0', '2', 155, 1625590293),
(15, '12345', '2022-07-05', 'prudhvi', '', '20000', '2400', '2400', '2400', '7200', 27200, 1656865005),
(16, '12345', '2022-07-05', 'Johni', '97045789', '1000', '0', '0', '0', '0', 1000, 1656941937),
(18, '7895', '2022-07-20', 'Sham', '897456103', '1000', '120', '0', '0', '120', 1120, 1657245981);

-- --------------------------------------------------------

--
-- Table structure for table `inv_order_item`
--

CREATE TABLE `inv_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_quantity` decimal(10,0) NOT NULL,
  `order_item_price` decimal(10,0) NOT NULL,
  `order_item_actual_amount` decimal(10,0) NOT NULL,
  `order_item_tax1_rate` decimal(10,0) NOT NULL,
  `order_item_tax1_amount` decimal(10,0) NOT NULL,
  `order_item_tax2_rate` decimal(10,0) NOT NULL,
  `order_item_tax2_amount` decimal(10,0) NOT NULL,
  `order_item_tax3_rate` decimal(10,0) NOT NULL,
  `order_item_tax3_amount` decimal(10,0) NOT NULL,
  `order_item_final_amount` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_order_item`
--

INSERT INTO `inv_order_item` (`order_item_id`, `order_id`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_actual_amount`, `order_item_tax1_rate`, `order_item_tax1_amount`, `order_item_tax2_rate`, `order_item_tax2_amount`, `order_item_tax3_rate`, `order_item_tax3_amount`, `order_item_final_amount`) VALUES
(49, 13, 'Product One', '16', '14', '224', '2', '4', '0', '0', '0', '0', '231'),
(50, 13, 'Product Four', '9', '28', '252', '2', '5', '0', '0', '0', '0', '272'),
(48, 13, 'Product Three', '20', '10', '200', '1', '2', '0', '0', '0', '0', '206'),
(27, 17, 'qwqw', '100', '1100', '110000', '0', '0', '0', '0', '0', '0', '110000'),
(54, 10, 'Demo Item', '6', '8', '48', '2', '1', '0', '0', '0', '0', '50'),
(53, 11, 'Demo Three', '2', '25', '50', '2', '1', '0', '0', '0', '0', '53'),
(52, 11, 'Demo Two', '9', '5', '45', '1', '0', '0', '0', '0', '0', '46'),
(51, 11, 'Demo One', '5', '11', '55', '1', '1', '0', '0', '0', '0', '56'),
(34, 14, 'P one', '29', '10', '290', '0', '0', '0', '0', '0', '0', '290'),
(33, 14, 'P two', '37', '15', '555', '2', '11', '0', '0', '0', '0', '577'),
(32, 14, 'P three', '10', '10', '100', '1', '1', '0', '0', '0', '0', '103'),
(21, 15, 'wdwd', '10', '2000', '20000', '12', '2400', '12', '2400', '12', '2400', '27200'),
(24, 16, 'horlicks', '10', '100', '1000', '0', '0', '0', '0', '0', '0', '1000'),
(28, 18, 'shampoo', '10', '100', '1000', '12', '120', '0', '0', '0', '0', '1120'),
(47, 13, 'Product Two', '29', '9', '261', '2', '5', '0', '0', '0', '0', '277');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'prudhvi', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inv_order`
--
ALTER TABLE `inv_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `inv_order_item`
--
ALTER TABLE `inv_order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inv_order`
--
ALTER TABLE `inv_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `inv_order_item`
--
ALTER TABLE `inv_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
