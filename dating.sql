-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 02, 2017 at 09:13 AM
-- Server version: 5.7.17
-- PHP Version: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dating`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_payments`
--

CREATE TABLE `api_payments` (
  `id` int(11) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `transaction_no` varchar(50) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `payment_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `claimed_payments`
--

CREATE TABLE `claimed_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `transaction_no` varchar(50) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `payment_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `min_age` int(2) NOT NULL,
  `max_age` int(3) NOT NULL,
  `location` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `drinking` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `ethnicity` varchar(255) NOT NULL,
  `employment` varchar(255) NOT NULL,
  `build` varchar(255) NOT NULL,
  `smoking` varchar(255) NOT NULL,
  `children` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `essay` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `gender`, `min_age`, `max_age`, `location`, `dob`, `fullname`, `email`, `password`, `drinking`, `religion`, `ethnicity`, `employment`, `build`, `smoking`, `children`, `education`, `profession`, `essay`, `image`) VALUES
(1, '1', 19, 19, 'Naks', '1/1/1999', 'John', 'john@gmail.com', 'john', 'rarely', 'Christian', 'Kikuyu', 'employed', 'super fit', 'yes', '1', 'school', 'Doc', 'This is your chance to tell us a bit about yourself, in your own words! It doesn\'t need to be long - you could write about your hobbies, where you\'re from, what\'s on your bucket list, and what you\'re looking for in a partner. ', 'dark-black-wallpapers-free.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_payments`
--
ALTER TABLE `api_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `claimed_payments`
--
ALTER TABLE `claimed_payments`
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
-- AUTO_INCREMENT for table `api_payments`
--
ALTER TABLE `api_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `claimed_payments`
--
ALTER TABLE `claimed_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
