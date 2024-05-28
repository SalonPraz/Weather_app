-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 01:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weather_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather_data`
--

CREATE TABLE `weather_data` (
  `id` int(11) NOT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `conditions` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `pressure` int(11) NOT NULL,
  `humidity` int(11) NOT NULL,
  `wind_speed` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `weather_data`
--

INSERT INTO `weather_data` (`id`, `city_name`, `date`, `day`, `temperature`, `conditions`, `icon`, `pressure`, `humidity`, `wind_speed`) VALUES
(51, 'nizamabad', 'Jan-23-2024', 2, 30.8, 'clear sky', 'https://openweathermap.org/img/w/01d.png', 1012, 35, 4.52),
(52, 'kathmandu', 'Jan-23-2024', 2, 16.12, 'scattered clouds', 'https://openweathermap.org/img/w/03d.png', 1018, 41, 1.54),
(55, 'nizamabad', 'Jan-24-2024', 3, 22.02, 'overcast clouds', 'https://openweathermap.org/img/w/04d.png', 1018, 57, 2.2),
(56, 'kathmandu', 'Jan-24-2024', 3, 9.12, 'mist', 'https://openweathermap.org/img/w/50d.png', 1022, 76, 1.03),
(57, 'china', 'Jan-24-2024', 3, 19.95, 'overcast clouds', 'https://openweathermap.org/img/w/04n.png', 1011, 90, 3.99),
(58, 'nizamabad', 'Jan-25-2024', 4, 28.64, 'clear sky', 'https://openweathermap.org/img/w/01d.png', 1015, 26, 0.95),
(59, 'kathmandu', 'Jan-25-2024', 4, 16.12, 'scattered clouds', 'https://openweathermap.org/img/w/03d.png', 1020, 36, 2.57),
(60, 'london', 'Jan-25-2024', 4, 11.76, 'overcast clouds', 'https://openweathermap.org/img/w/04d.png', 1024, 88, 5.36),
(61, 'nizamabad', 'Jan-26-2024', 5, 30.26, 'broken clouds', 'https://openweathermap.org/img/w/04d.png', 1015, 25, 1.94),
(62, 'nizamabad', 'Jan-27-2024', 6, 30.24, 'clear sky', 'https://openweathermap.org/img/w/01d.png', 1015, 23, 2.62),
(63, 'nizamabad', 'Jan-28-2024', 7, 30.99, 'broken clouds', 'https://openweathermap.org/img/w/04d.png', 1013, 12, 1.27),
(64, 'kathmandu', 'Jan-28-2024', 7, 9.12, 'few clouds', 'https://openweathermap.org/img/w/02n.png', 1023, 71, 1.54),
(65, 'nizamabad', 'Jan-29-2024', 1, 31.19, 'overcast clouds', 'https://openweathermap.org/img/w/04d.png', 1015, 22, 0.87),
(66, 'kathmandu', 'Jan-29-2024', 1, 18.12, 'few clouds', 'https://openweathermap.org/img/w/02d.png', 1019, 32, 1.03),
(67, 'london', 'Jan-29-2024', 1, 10.01, 'overcast clouds', 'https://openweathermap.org/img/w/04d.png', 1022, 93, 2.24),
(68, 'canada', 'Jan-29-2024', 1, 9.02, 'overcast clouds', 'https://openweathermap.org/img/w/04d.png', 1031, 85, 3.18),
(69, 'china', 'Jan-29-2024', 1, 13.17, 'clear sky', 'https://openweathermap.org/img/w/01n.png', 1028, 54, 3.53),
(70, 'usa', 'Jan-29-2024', 1, 27.86, 'broken clouds', 'https://openweathermap.org/img/w/04d.png', 1014, 48, 1.33),
(71, 'japan', 'Jan-29-2024', 1, 9.25, 'few clouds', 'https://openweathermap.org/img/w/02n.png', 1026, 44, 1.03),
(72, 'seoul', 'Jan-29-2024', 1, 2.96, 'few clouds', 'https://openweathermap.org/img/w/02d.png', 1031, 48, 1.54),
(73, 'korea', 'Jan-29-2024', 1, 2.73, 'broken clouds', 'https://openweathermap.org/img/w/04d.png', 1032, 67, 3.97),
(74, 'saga', 'Jan-29-2024', 1, 8.47, 'scattered clouds', 'https://openweathermap.org/img/w/03n.png', 1029, 57, 2.06),
(75, 'nizamabad', 'Jan-30-2024', 2, 18.46, 'clear sky', 'https://openweathermap.org/img/w/01d.png', 1016, 56, 2.17),
(76, 'hamilton', 'Jan-30-2024', 2, 0.84, 'overcast clouds', 'https://openweathermap.org/img/w/04n.png', 1018, 87, 3.6),
(77, 'nizamabad', 'Jan-31-2024', 3, 25.81, 'scattered clouds', 'https://openweathermap.org/img/w/03d.png', 1016, 36, 3.66),
(78, 'nizamabad', 'Feb-01-2024', 4, 27.85, 'overcast clouds', 'https://openweathermap.org/img/w/04d.png', 1016, 34, 4.18),
(79, 'kathmandu', 'Feb-01-2024', 4, 13.12, 'haze', 'https://openweathermap.org/img/w/50d.png', 1022, 62, 2.06),
(80, 'nizamabad', 'Feb-02-2024', 5, 23.01, 'broken clouds', 'https://openweathermap.org/img/w/04n.png', 1016, 33, 2.89),
(81, 'kathmandu', 'Feb-02-2024', 5, 8.12, 'few clouds', 'https://openweathermap.org/img/w/02n.png', 1017, 76, 1.03),
(82, 'nizamabad', 'Feb-03-2024', 6, 10.12, 'few clouds', 'https://openweathermap.org/img/w/02n.png', 1010, 76, 3.12),
(83, 'nizamabad', 'Feb-04-2024', 7, 33.36, 'clear sky', 'https://openweathermap.org/img/w/01d.png', 1014, 19, 1.88),
(84, 'asdas', 'Feb-04-2024', 7, 26.26, 'clear sky', 'https://openweathermap.org/img/w/01d.png', 1016, 24, 2.15),
(85, 'nizamabad', 'Feb-05-2024', 1, 33.89, 'clear sky', 'https://openweathermap.org/img/w/01d.png', 1015, 24, 2.89),
(86, 'nizamabad', 'Feb-06-2024', 2, 30.5, 'clear sky', 'https://openweathermap.org/img/w/01d.png', 1018, 32, 3.14),
(87, 'kathmandu', 'Feb-06-2024', 2, 14.12, 'broken clouds', 'https://openweathermap.org/img/w/04d.png', 1021, 51, 1.03),
(88, 'nizamabad', 'Feb-07-2024', 3, 33.03, 'clear sky', 'https://openweathermap.org/img/w/04d.png', 1011, 50, 3.02),
(89, 'nizamabad', 'Feb-08-2024', 4, 30.68, 'few clouds', 'https://openweathermap.org/img/w/02d.png', 1017, 28, 2.76),
(90, 'kathmandu', 'Feb-08-2024', 4, 17.12, 'few clouds', 'https://openweathermap.org/img/w/02d.png', 1017, 34, 2.57),
(91, 'nizamabad', 'Feb-10-2024', 6, 28.25, 'overcast clouds', 'https://openweathermap.org/img/w/04n.png', 1016, 41, 4.27),
(92, 'nizamabad', 'Feb-11-2024', 7, 33.15, 'clear sky', 'https://openweathermap.org/img/w/01d.png', 1016, 30, 4.22),
(93, 'nizamabad', 'Feb-12-2024', 1, 33.32, 'scattered clouds', 'https://openweathermap.org/img/w/03d.png', 1012, 20, 2.79),
(94, 'nizamabad', 'Feb-13-2024', 2, 34.02, 'broken clouds', 'https://openweathermap.org/img/w/04d.png', 1011, 16, 1.68),
(95, 'nizamabad', 'Feb-14-2024', 3, 32.63, 'overcast clouds', 'https://openweathermap.org/img/w/04d.png', 1015, 24, 1.11),
(96, 'nizamabad', 'Feb-15-2024', 4, 33.76, 'broken clouds', 'https://openweathermap.org/img/w/04d.png', 1013, 20, 2.51),
(97, 'kathmandu', 'Feb-15-2024', 4, 20.12, 'few clouds', 'https://openweathermap.org/img/w/02d.png', 1022, 30, 2.06),
(98, 'nizamabad', 'Feb-18-2024', 7, 26.48, 'clear sky', 'https://openweathermap.org/img/w/01n.png', 1012, 22, 2.12),
(99, 'nizamabad', 'Feb-19-2024', 1, 27.2, 'clear sky', 'https://openweathermap.org/img/w/01n.png', 1012, 23, 1.87),
(100, 'nizamabad', 'Feb-20-2024', 2, 34.19, 'clear sky', 'https://openweathermap.org/img/w/01d.png', 1012, 19, 5.03),
(101, 'nizamabad', 'Feb-16-2024', 5, 20.1, 'overcast clouds', 'https://openweathermap.org/img/w/04n.png', 1013, 19, 2.22),
(102, 'nizamabad', 'Feb-17-2024', 6, 20.1, 'overcast clouds', 'https://openweathermap.org/img/w/04n.png', 1016, 16, 3.73),
(103, 'kathmandu', 'Feb-20-2024', 2, 20.12, 'haze', 'https://openweathermap.org/img/w/50d.png', 1018, 42, 3.09),
(104, 'california', 'Feb-20-2024', 2, -1.15, 'clear sky', 'https://openweathermap.org/img/w/01n.png', 1026, 89, 0),
(105, 'pokhara', 'Feb-20-2024', 2, 23.19, 'broken clouds', 'https://openweathermap.org/img/w/04d.png', 1012, 29, 0.76),
(106, 'nizamabad', 'Feb-21-2024', 3, 22.83, 'clear sky', 'https://openweathermap.org/img/w/01d.png', 1013, 31, 1.4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weather_data`
--
ALTER TABLE `weather_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `weather_data`
--
ALTER TABLE `weather_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
