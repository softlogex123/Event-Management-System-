-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 22, 2024 at 10:48 AM
-- Server version: 10.11.6-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u882905131_minhaj`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `password`) VALUES
(1, 'admin', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `report` varchar(555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `report`) VALUES
(1, 'Mohammad ', 'md@gmail.com', '1010101012', 'Organizer is not working properly.'),
(2, 'Mohammad ms', 'md2@gmail.com', '1010101013', 'Organizer is not working properly.');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(555) NOT NULL,
  `description` varchar(1055) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `ava_seat` int(11) NOT NULL,
  `basic_charge` int(11) NOT NULL,
  `pre_charge` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `description`, `start_date`, `end_date`, `ava_seat`, `basic_charge`, `pre_charge`, `admin_name`, `img`) VALUES
(2, 'MIT Summit 2024', 'Get ready for an extraordinary convergence of minds at Minhaj University\'s upcoming event, dedicated exclusively to the Master of Information Technology (MIT) students. Titled \"Tech Horizons: A Journey through MIT Excellence,\" this symposium promises to empower minds and ignite innovation. Join us for a day filled with cutting-edge discussions, hands-on workshops, and networking opportunities that transcend boundaries. As we code, connect, and create, let\'s collectively unleash the future of technology. This MIT Gala is more than an event; it\'s a celebration of digital pioneers coming together to innovate, transform, and triumph. Don\'t miss the chance to elevate your tech quotient at the MIT Summit 2024—it\'s where the future begins.', '2024-02-23', '2024-02-24', 100, 500, 1000, 'organizer', 'minhaj.png'),
(3, 'MIT Summit 2025', 'MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024MIT Summit 2024', '2024-03-01', '2024-03-03', 100, 500, 1000, 'organizer', 'pu.png'),
(4, 'MIT Summit 20256', 'MIT Summit 20256MIT Summit 20256MIT Summit 20256MIT Summit 20256MIT Summit 20256MIT Summit 20256MIT Summit 20256MIT Summit 20256MIT Summit 20256MIT Summit 20256MIT Summit 20256MIT Summit 20256', '2024-02-24', '2024-02-27', 100, 500, 1000, 'organizer', 'minhaj.png');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `img`) VALUES
(1, 'img-1.jpg'),
(2, 'img-3.jpg'),
(3, 'img-1.jpg'),
(4, 'img-3.jpg'),
(5, 'img-1.jpg'),
(6, 'img-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE `organizer` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizer`
--

INSERT INTO `organizer` (`id`, `admin_name`, `email`, `phone`, `password`) VALUES
(1, 'organizer', 'organizer@gmail.com', '1234567890', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `recent_event`
--

CREATE TABLE `recent_event` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(555) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recent_event`
--

INSERT INTO `recent_event` (`id`, `img`, `title`, `description`, `topic`, `date`) VALUES
(1, 'img-1.jpg', 'Education Event', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Education,Study,Management', '2024-02-16'),
(10, 'img-1.jpg', 'Education Event 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Education,Study,Management', '2024-02-16'),
(11, 'img-1.jpg', 'Education Event 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Education,Study,Management', '2024-02-16'),
(12, 'img-1.jpg', 'Education Event 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Education,Study,Management', '2024-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slide_name`, `slide_img`) VALUES
(4, 'Slider 1', 'img-1.jpg'),
(5, 'Slider 2', 'img-2.jpg'),
(6, 'Slider 3', 'img-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `event_name` varchar(555) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `trans_id` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `ticket_cat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `event_name`, `name`, `email`, `phone`, `trans_id`, `img`, `ticket_cat`) VALUES
(1, 'MIT Summit 20256', 'Mohammad', 'Mohammad@gmail.com', '1234567890', '13235455', 'user.jpg', 'Priority');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizer`
--
ALTER TABLE `organizer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recent_event`
--
ALTER TABLE `recent_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `organizer`
--
ALTER TABLE `organizer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recent_event`
--
ALTER TABLE `recent_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
