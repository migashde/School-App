-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2022 at 04:15 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etugen`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `created_at`, `views`) VALUES
(1, '\"Сувилахуй\" мэргэжлийн бакалаврын хөтөлбөр', 'Боловсролын магадлан итгэмжлэх үндэсний зөвлөлөөс томилогдсон шинжээчдийн баг \"Сувилахуй\" мэргэжлийн бакалаврын хөтөлбөрт хөндлөнгийн үнэлгээ хийхээр манай сургууль дээр ажиллаж байна.\r\nХөтөлбөрийн багийн гишүүддээ амжилт хүсье.', '2022-03-23 09:00:43', 1),
(2, 'Оюутанд зөвлөгөө өгөх төв', 'ОЮУТАНДАА ТОХИОЛДСОН СЭТГЭЛЗҮЙН БЭРХШЭЭЛТЭЙ, ТУЛГАМДСАН АСУУДЛУУДЫГ БИД ХАМТРАН ЯРИЛЦАЖ, ҮНЭ ТӨЛБӨРГҮЙ СЭТГЭЛЗҮЙН ЗӨВЛӨГӨӨ ӨГНӨ.\r\nХаяг: Этүгэн их сургуулийн хичээлийн 5-р байрны 405 тоот өрөө:\r\nУтас: 99232589\r\nЦагийн хуваарь: Ажлын өдрүүдэд 15:00-17:00 цаг', '2022-03-23 09:00:43', 2);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `content`, `created_at`) VALUES
(1, 'test', 'test', '2022-03-23 09:00:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
