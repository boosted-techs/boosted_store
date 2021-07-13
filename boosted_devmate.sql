-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 10, 2020 at 10:27 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `dev_mate`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_categories`
--

CREATE TABLE `project_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_categories`
--

INSERT INTO `project_categories` (`id`, `category`, `description`, `status`) VALUES
(1, 'Website and Web Application development', 'Website and Web Application development', 1),
(2, 'Website and Web Application maintenance', 'Website and Web Application maintenance', 1),
(3, 'Android Application development', 'Android Application development', 1),
(4, 'Android Application maintenance', 'Android Application maintenance', 1),
(5, 'Digital Online Marketing', 'Digital Online Marketing', 1),
(6, 'Graphics & Brand design', 'Graphics & Brand design', 1),
(7, 'IOS Application development', 'IOS Application development', 1),
(8, 'Social media management', 'Social media management', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
