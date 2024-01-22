-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2024 at 07:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(100) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` int(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` int(10) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin_code`, `total_products`, `total_price`) VALUES
(12, '', '12345678921', '', 'cash on delivery', 'poblacion', 'purok 2', '', 0, '', 2006, 'COMBO MEAL (1) , WAFFLE (1) , MILKSHAKES (1) ', '280'),
(13, '', '12345678921', '', 'cash on delivery', 'solib', 'purok 1', '', 0, '', 2006, 'SANDWICH (1) , LONGSILOG (1) , ICE TEA (1) ', '145');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(19, 'GINATANG TILAPIA', '85', 'ginatang tilapia.png'),
(20, 'LONGSILOG', '65', 'Longsilog.jpg'),
(21, 'COMBO MEAL', '150', 'combo meal.png'),
(22, 'ADOBONG SITAW', '60', 'adobong sitaw.png'),
(23, 'SHAWARMA', '75', 'shawarma.png'),
(24, 'PINEAPPLE', '100', 'pizza.png'),
(25, 'SANDWICH', '40', 'sandwich.png'),
(26, 'BURGER', '55', 'burger.png'),
(27, 'WAFFLE', '40', 'waffle.png'),
(28, 'FRIES', '60', 'food-6.png'),
(29, 'PANCIT BIHON', '100', 'Pancit_Bihon.jpg'),
(30, 'SPAGHETTI', '100', 'spaghetti.png'),
(31, 'PASTA', '100', 'pasta.png'),
(32, 'PINEAPPLE', '40', 'PINEAPPLE.png'),
(33, 'COCA COLA', '40', 'COCA COLA.png'),
(34, 'ICE TEA', '40', 'ICE TEA.png'),
(35, 'WATER', '30', 'Water.jpg'),
(37, 'MILKSHAKES', '90', 'Shake.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(120) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`) VALUES
(4, 'john', 'john@example.com', '$2y$10$8D41DHtDGNRN9nh04sbcReRXo4qTSNIDZCNPQNliEX3xdXpURqSy6'),
(5, 'Nicole', 'nicole@example.com', '$2y$10$uEXBzPJ2j/1KzPLxmZcw/OyyAJPyN3Lkwl7DQn5b.orSDs2ODrnPO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
