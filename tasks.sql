-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2025 at 09:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `priority` enum('Low','Medium','High') NOT NULL DEFAULT 'Low',
  `due_date` date NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `priority`, `due_date`, `is_completed`, `created_at`) VALUES
(1, 'writing', 'ghijlijlkihlkj', 'Low', '2025-08-15', 1, '2025-08-09 23:46:16'),
(2, 'Writing Test', 'writing test', 'High', '2025-08-09', 1, '2025-08-09 23:59:02'),
(3, 'Attending classes', 'Must', 'High', '2025-08-10', 0, '2025-08-10 00:01:22'),
(4, 'lunch', '', 'Medium', '2025-08-10', 0, '2025-08-10 00:02:00'),
(5, 'Attend Interview', '', 'High', '2025-08-14', 0, '2025-08-10 00:05:35'),
(6, 'test', 'write science exam', 'Medium', '2025-08-13', 0, '2025-08-10 20:36:34'),
(7, 'test', 'writing maths exam', 'Medium', '2025-08-23', 0, '2025-08-11 00:02:00'),
(8, 'test', 'write science test', 'Medium', '2025-08-12', 0, '2025-08-12 09:11:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_due_date` (`due_date`),
  ADD KEY `idx_completed` (`is_completed`),
  ADD KEY `idx_priority` (`priority`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
