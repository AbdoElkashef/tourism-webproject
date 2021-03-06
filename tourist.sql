-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2018 at 08:58 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourist`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `c_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `p_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`p_id`, `c_id`, `name`, `img`, `price`, `description`) VALUES
(1, 1, 'Ù…Ø³Ø¬Ø¯ Ø§Ù„Ø·Ø§Ø¨ÙŠØ© Ø¨Ù…Ø¯ÙŠÙ†Ø© Ø£Ø³ÙˆØ§Ù†', 'images/42939-1-(11).jpg', '0.00', 'ÙˆÙŠØ¹Ø¯ Ù…Ø³Ø¬Ø¯ Ø¨Ø¯Ø± Ø¨Ù…Ù†Ø·Ù‚Ø© Ø§Ù„Ø·Ø§Ø¨ÙŠØ© Ù…Ù† Ø£Ù‡Ù… Ø§Ù„Ù…Ø³Ø§Ø¬Ø¯ Ø¨Ø£Ø³ÙˆØ§Ù†ØŒ ÙˆÙŠÙ‚Ø¨Ù„ Ø¹Ù„ÙŠÙ‡ Ø§Ù„ÙƒØ«ÙŠØ± Ù…Ù† Ø§Ù„Ù…ÙˆØ§Ø·Ù†ÙŠÙ† ÙÙ‰ Ø§Ù„Ø¹Ø¯ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ù†Ø§Ø³Ø¨Ø§Øª Ø§Ù„Ø¯ÙŠÙ†ÙŠØ© ÙˆØ§Ù„Ø§Ø­ØªÙØ§Ù„Ø§Øª ÙˆØ§Ù„Ø£Ø¹ÙŠØ§Ø¯ØŒ ÙƒÙ…Ø§ Ø£Ù†Ù‡ Ù…Ø²Ø§Ø± Ø³ÙŠØ§Ø­Ù‰ ØªØ£ØªÙ‰ Ø¥Ù„ÙŠÙ‡ Ø§Ù„Ø£ÙÙˆØ§Ø¬ Ø§Ù„Ø³ÙŠØ§Ø­ÙŠØ© Ù„Ø²ÙŠØ§Ø±ØªÙ‡ Ù†Ø¸Ø±Ø§Ù‹ Ù„Ø£Ù‡Ù…ÙŠØªÙ‡ Ø§Ù„ØªØ§Ø±ÙŠØ®ÙŠØ©ØŒ ÙˆØ¨Ø³Ø¨Ø¨ Ø§Ø±ØªÙØ§Ø¹Ù‡ Ø§Ù„Ù†Ø³Ø¨Ù‰ Ø¹Ù† Ø§Ù„Ù…Ø¯ÙŠÙ†Ø© ÙŠÙ…ÙƒÙ† Ù„Ù„Ø²Ø§Ø¦Ø±ÙŠÙ† Ø±Ø¤ÙŠØ© Ø§Ù„Ù…Ø¯ÙŠÙ†Ø© Ø¨Ø£ÙƒÙ…Ù„Ù‡Ø§ Ù…Ù† ÙÙˆÙ‚ Ù‚Ù…Ø© Ø§Ù„Ù…Ø³Ø¬Ø¯ØŒ ÙˆØ³ÙŠØ®Ø¯Ù… Ù„Ø§Ø³ØªØ·Ù„Ø§Ø¹ Ù‡Ù„Ø§Ù„ Ø´Ù‡Ø± Ø±Ù…Ø¶Ø§Ù†ØŒ ÙˆÙÙ‰ Ø§Ù„Ù…Ø³Ø§Ø¡ ÙŠÙ‚Ø§Ù… Ø¨Ù‡ Ø¹Ø±Ø¶ Ø§Ù„ØµÙˆØª ÙˆØ§Ù„Ø¶ÙˆØ¡.'),
(2, 1, 'Ø§Ù„Ø³Ø¯ Ø§Ù„Ø¹Ø§Ù„Ù‰', 'images/48162-1-(1).jpg', '99.99', 'Ù„Ø§ ØªØ®ÙÙ‰ Ø§Ù„Ø£Ù‡Ù…ÙŠØ© Ø§Ù„ØªØ§Ø±ÙŠØ®ÙŠØ© Ù„Ù„Ø³Ø¯ Ø§Ù„Ø¹Ø§Ù„Ù‰ Ø¹Ù† Ø°Ø§ÙƒØ±Ø© Ø§Ù„Ù…ØµØ±ÙŠÙŠÙ† Ø¹Ø¨Ø± Ø§Ù„Ø¹ØµÙˆØ± Ø§Ù„Ù…ØªÙ„Ø§Ø­Ù‚Ø©ØŒ ÙÙ‡Ùˆ Ø£Ø¶Ø®Ù… Ù…Ø´Ø±ÙˆØ¹ Ù‚ÙˆÙ…Ù‰ Ø®Ù„Ø§Ù„ Ø§Ù„Ù‚Ø±Ù† Ø§Ù„Ø¹Ø´Ø±ÙŠÙ†ØŒ ÙˆÙŠØªÙ…ØªØ¹ Ø§Ù„Ø³Ø¯ Ø§Ù„Ø¹Ø§Ù„Ù‰ Ù…Ù† Ø§Ù„Ù†Ø§Ø­ÙŠØ© Ø§Ù„Ø³ÙŠØ§Ø­ÙŠØ© Ø¨Ù…Ù†Ø§Ø¸Ø± Ø®Ù„Ø§Ø¨Ø© Ù„Ù…Ø¬Ø±Ù‰ Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ ÙˆØ¨ÙˆØ§Ø¨Ø§Øª Ø§Ù„Ù…ÙŠØ§Ù‡ Ø§Ù„ØªÙ‰ ÙŠÙ…ÙƒÙ† Ø±ØµØ¯Ù‡Ø§ Ù…Ù† Ø®Ù„Ø§Ù„ Ù†Ù‚Ø·Ø© Ø§Ù„Ù…Ø´Ø§Ù‡Ø¯Ø© Ø¨Ø§Ù„Ø³Ø¯ Ø§Ù„Ø¹Ø§Ù„Ù‰ØŒ ÙˆØªØ±ØªÙØ¹ Ø§Ù„Ù…ÙŠØ§Ù‡ Ø¨ØºØ²Ø§Ø±Ø© Ø¹Ù†Ø¯ ÙØªØ­ Ø¨ÙˆØ§Ø¨Ø§Øª Ø§Ù„Ø³Ø¯ Ø§Ù„Ø¹Ø§Ù„Ù‰ Ù„ØªØ±Ø³Ù… Ø£Ù…Ø§Ù… Ø§Ù„Ø³Ø¯ Ø§Ù„Ø¹Ø§Ù„Ù‰ Ù…Ø´Ù‡Ø¯Ø§Ù‹ Ù„Ù‚ÙˆØ³ Ù‚Ø²Ø­ Ø¨Ø£Ù„ÙˆØ§Ù† Ø§Ù„Ø·ÙŠÙ Ø§Ù„Ø³Ø¨Ø¹Ø©.'),
(3, 1, 'Ø±Ù…Ø² Ø§Ù„ØµØ¯Ø§Ù‚Ø© Ø¨Ø§Ù„Ø³Ø¯ Ø§Ù„Ø¹Ø§Ù„Ù‰', 'images/55351-1-(2).jpg', '50.00', 'ÙŠÙ…ÙƒÙ† Ù„Ø²Ø§Ø¦Ø± Ø§Ù„Ø³Ø¯ Ø§Ù„Ø¹Ø§Ù„Ù‰ Ø£Ù† ÙŠØªÙ…ØªØ¹ Ø£ÙŠØ¶Ø§Ù‹ Ø¨ØªÙÙ‚Ø¯ Ù…ÙˆÙ‚Ø¹ Ø±Ù…Ø² Ø§Ù„ØµØ¯Ø§Ù‚Ø© Ø§Ù„Ù…ØµØ±ÙŠØ© Ø§Ù„Ø³ÙˆÙÙŠØªÙŠØ©ØŒ ÙˆÙ‡Ùˆ Ø¹Ø¨Ø§Ø±Ø© Ø¹Ù† Ø¨Ù†Ø§Ø¡ ÙŠØ´Ø¨Ù‡ Ø²Ù‡Ø±Ø© Ø§Ù„Ù„ÙˆØªØ³ Ø§Ù„Ù…ÙØªÙˆØ­Ø©ØŒ ÙˆØ§Ù„Ø°Ù‰ ØµÙ…Ù…Ù‡ Ø§Ù„Ù…Ù‡Ù†Ø¯Ø³ Ø§Ù„Ù…Ø¹Ù…Ø§Ø±Ù‰ Ø§Ù„Ø±ÙˆØ³Ù‰ ÙŠÙˆØ±Ù‰ Ø§ÙˆÙ…Ù„ÙŠØªØ± Ø´ÙŠÙ†ÙƒÙˆ Ø®Ù„Ø§Ù„ Ø¹Ø§Ù… 1967ØŒ ÙˆØ¹Ù„Ù‰ Ø§Ù„Ø±ØºÙ… Ù…Ù† Ø£Ù† Ø§Ø±ØªÙØ§Ø¹Ù‡ ÙÙ‚Ø· 72 Ù…ØªØ±Ø§Ù‹ØŒ Ø¥Ù„Ø§ Ø£Ù† Ø§Ø±ØªÙØ§Ø¹ Ø§Ù„Ø±Ù…Ø² ÙŠØ¶Ø§Ù‡Ù‰ Ù‡Ø¶Ø¨Ø© Ø§Ù„Ù…Ù‚Ø·Ù…ØŒ ÙˆØ£Ø¹Ù„Ù‰ Ù…Ù† Ø¨Ø±Ø¬ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© Ø§Ù„Ø°Ù‰ ÙŠØµÙ„ Ø§Ø±ØªÙØ§Ø¹Ù‡ Ø¥Ù„Ù‰ 600 Ù…ØªØ±Ø§Ù‹.'),
(4, 1, 'Ù…ØªØ­Ù Ø§Ù„Ù†ÙŠÙ„ Ø¨Ø£Ø³ÙˆØ§Ù†', 'images/39417-1-(10).jpg', '75.00', 'Ø­Ø¸Ù‰ Ù…ØªØ­Ù Ø§Ù„Ù†ÙŠÙ„ ÙÙ‰ Ù…Ø¯ÙŠÙ†Ø© Ø£Ø³ÙˆØ§Ù†ØŒ Ø¨Ø£Ù‡Ù…ÙŠØ© Ù„Ø¯Ù‰ Ø§Ù„Ù…ÙˆØ§Ø·Ù†ÙŠÙ† ÙˆØ§Ù„Ø³Ø§Ø¦Ø­ÙŠÙ† Ø§Ù„Ø£Ø¬Ø§Ù†Ø¨ØŒ Ø¹Ù„Ù‰ Ø§Ù„Ø±ØºÙ… Ù…Ù† Ø­Ø¯Ø§Ø«Ø© Ø¥Ù†Ø´Ø§Ø¦Ù‡ Ø®Ù„Ø§Ù„ Ø´Ù‡Ø± ÙŠÙ†Ø§ÙŠØ± Ù…Ù† Ø§Ù„Ø¹Ø§Ù… Ø§Ù„Ø¬Ø§Ø±Ù‰ Ø¨Ø§Ù„ØªØ²Ø§Ù…Ù† Ù…Ø¹ Ø¹ÙŠØ¯ Ø£Ø³ÙˆØ§Ù† Ø§Ù„Ù‚ÙˆÙ…Ù‰ØŒ ÙˆØªÙ… ÙˆØ¶Ø¹Ù‡ Ø¹Ù„Ù‰ Ø®Ø§Ø±Ø·Ø© Ø§Ù„Ù…ÙˆØ§Ù‚Ø¹ Ø§Ù„Ø³ÙŠØ§Ø­ÙŠØ© Ø¨Ø£Ø³ÙˆØ§Ù† ÙˆÙŠØªÙƒÙˆÙ† Ø§Ù„Ù…ØªØ­Ù Ø§Ù„Ù…Ø¬Ø§ÙˆØ± Ù„Ø®Ø²Ø§Ù† Ø£Ø³ÙˆØ§Ù†ØŒ Ù…Ù† Ù…Ø¨Ù†Ù‰ 3 Ø·ÙˆØ§Ø¨Ù‚ ÙˆØ­Ø¯ÙŠÙ‚Ø©ØŒ ÙˆÙŠØ¶Ù… Ù…Ø¦Ø§Øª Ø§Ù„ØµÙˆØ± ÙˆØ§Ù„Ù…Ø¹Ø±ÙˆØ¶Ø§Øª Ø§Ù„ØªÙ‰ ØªØ­ÙƒÙ‰ ØªØ§Ø±ÙŠØ® Ø§Ù„Ù†ÙŠÙ„ ÙˆØ§Ù„Ù…Ø´Ø±ÙˆØ¹Ø§Øª Ø§Ù„Ù…ØµØ±ÙŠØ© Ø§Ù„ØªÙ‰ Ø£Ù‚ÙŠÙ…Øª Ø¹Ù„ÙŠÙ‡ØŒ Ø¨Ø¬Ø§Ù†Ø¨ Ø¹Ø±Ø¶ Ù„Ø£Ù‡Ù… Ø§Ù„Ù…Ø´Ø±ÙˆØ¹Ø§Øª Ø§Ù„Ù‚ÙˆÙ…ÙŠØ© Ù„ÙˆØ²Ø§Ø±Ø© Ø§Ù„Ø±Ù‰ØŒ ÙˆØ§Ù„ØªÙ‰ Ø³Ø§Ù‡Ù…Øª ÙÙŠÙ‡Ø§ Ø¨Ø¯Ø¡Ø§Ù‹ Ù…Ù† Ø§Ù„Ù‚Ù†Ø§Ø·Ø± Ø§Ù„Ø®ÙŠØ±ÙŠØ© Ø£ÙŠØ§Ù… Ù…Ø­Ù…Ø¯ Ø¹Ù„Ù‰ØŒ Ù…Ø±ÙˆØ±Ø§Ù‹ Ø¨ØªØ±Ø¹Ø© Ø§Ù„Ø³Ù„Ø§Ù… ÙˆÙ…Ø´Ø±ÙˆØ¹ ØªÙˆØ´ÙƒÙ‰ØŒ ÙˆÙ†Ù‡Ø§ÙŠØ© Ø¨Ù…Ø´Ø±ÙˆØ¹ 4 Ù…Ù„Ø§ÙŠÙŠÙ† ÙØ¯Ø§Ù†ØŒ ÙˆÙ…Ø´Ø±ÙˆØ¹Ø§Øª Ø­Ù…Ø§ÙŠØ© ÙˆØ¥Ù†Ù‚Ø§Ø° Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ØŒ ÙˆØ£Ù‡Ù… Ø§Ù„ÙˆØ«Ø§Ø¦Ù‚ Ø§Ù„ØªØ§Ø±ÙŠØ®ÙŠØ©ØŒ ÙˆÙ…Ù†Ù‡Ø§ ÙˆØ«ÙŠÙ‚Ø© Ø§ØªÙØ§Ù‚ÙŠØ© 59 Ø¨ÙŠÙ† Ù…ØµØ± ÙˆØ§Ù„Ø³ÙˆØ¯Ø§Ù†ØŒ ÙˆÙˆØ«ÙŠÙ‚Ø© Ø­Ù…Ø§ÙŠØ© Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„.'),
(5, 1, 'Ù…ØªØ­Ù Ø§Ù„Ù†ÙˆØ¨Ø©', 'images/58255-1-(6).jpg', '60.00', 'ÙˆÙ‡Ùˆ Ø§Ù„Ù…ØªØ­Ù Ø§Ù„Ø°Ù‰ Ø£Ù†Ø´Ø£ØªÙ‡ Ù…Ù†Ø¸Ù…Ø© Ø§Ù„ÙŠÙˆÙ†Ø³ÙƒÙˆ Ù„Ø¹Ø±Ø¶ Ø§Ù„Ø¢Ø«Ø§Ø± Ø§Ù„Ø®Ø§ØµØ© Ø¨Ø§Ù„Ø­Ø¶Ø§Ø±Ø© Ø§Ù„Ù†ÙˆØ¨ÙŠØ© Ø§Ù„Ù‚Ø¯ÙŠÙ…Ø©ØŒ Ø¹Ø§Ù… 1997ØŒ Ø­ÙŠØ« ÙŠØ­ØªÙ„ Ø±Ø¨ÙˆØ© Ø¹Ø§Ù„ÙŠØ© ØªØ¬Ø§ÙˆØ±Ù‡ Ø§Ù„Ù‚Ø¨Ø§Ø¨ Ø§Ù„ÙØ§Ø·Ù…ÙŠØ© Ø§Ù„Ø¥Ø³Ù„Ø§Ù…ÙŠØ© Ø§Ù„Ù…Ø¹Ø±ÙˆÙØ©ØŒ Ù…Ù† Ø«Ù„Ø§Ø«Ø© Ø£Ø¯ÙˆØ§Ø±ØŒ Ø§Ù„Ø¯ÙˆØ± Ø§Ù„Ø£Ø±Ø¶Ù‰ØŒ ÙˆÙŠØ¶Ù… Ù…Ø¯Ø®Ù„ Ø±Ø¦ÙŠØ³Ù‰ ÙˆÙ‚Ø§Ø¹Ø© Ø¹Ø±Ø¶ ÙˆÙ‚Ø§Ø¹Ø© Ø§Ù„Ù…Ø­Ø§Ø¶Ø±Ø§Øª ÙˆÙ‚Ø§Ø¹Ø© Ù„ÙƒØ¨Ø§Ø± Ø§Ù„Ø²ÙˆØ§Ø± ÙˆØºØ±Ù Ø§Ù„Ø£Ù…Ù† ÙˆØ§Ù„Ø¥Ø¯Ø§Ø±Ø© ÙˆØºØ±ÙØ© Ù…Ø¯ÙŠØ± Ø¹Ø§Ù… Ø§Ù„Ù…ØªØ§Ø­ÙØŒ ÙˆØ§Ù„Ø¯ÙˆØ± Ø§Ù„Ø£ÙˆÙ„ØŒ ÙˆÙŠØ¶Ù… Ø§Ù„ÙƒØ§ÙÙŠØªØ±ÙŠØ§ ÙˆØ§Ù„Ù…ÙƒØªØ¨Ø© ÙˆØ£Ù…Ù†Ø§Ø¡ Ø§Ù„Ù…ØªØ­Ù ÙˆØ­Ø¬Ø±Ø§Øª ØªØµÙˆÙŠØ± ÙÙˆØªÙˆØºØ±Ø§ÙÙ‰ ÙˆÙ…ÙŠÙƒØ±ÙˆÙÙŠÙ„Ù… ÙˆØ¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…ØªØ­Ù ÙˆØ§Ù„Ø®Ø¯Ù…Ø§ØªØŒ ÙˆØ§Ù„Ø¨Ø¯Ø±ÙˆÙ… ÙˆÙŠØ¶Ù… ÙŠØ­ØªÙˆÙ‰ Ø¹Ù„Ù‰ Ù‚Ø§Ø¹Ø© Ø§Ù„Ø¹Ø±Ø¶ Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠØ© ÙˆÙ…Ø¹Ø§Ù…Ù„ Ø§Ù„ØªØ±Ù…ÙŠÙ… ÙˆØ§Ù„ÙˆØ±Ø´ ÙˆÙ…Ø®Ø§Ø²Ù† Ø§Ù„Ø¢Ø«Ø§Ø± ÙˆÙ…Ø±ÙƒØ² Ø§Ø³ØªÙ‚Ø¨Ø§Ù„ ÙˆØ§Ù„Ù…Ø³Ø±Ø­ Ø§Ù„Ù…ÙƒØ´ÙˆÙØŒ ÙˆÙŠØ­ØªÙˆÙ‰ Ø§Ù„Ù…ØªØ­Ù Ø¹Ù„Ù‰ 5 Ø¢Ù„Ø§Ù Ù‚Ø·Ø¹Ø© Ø£Ø«Ø±ÙŠØ© ØªÙ…Ø«Ù„ Ù…Ø±Ø§Ø­Ù„ ØªØ·ÙˆØ± Ø§Ù„Ø­Ø¶Ø§Ø±Ø© ÙˆØ§Ù„ØªØ±Ø§Ø« Ø§Ù„Ù†ÙˆØ¨Ù‰ØŒ ÙˆÙŠØ¶Ù… Ø§Ù„Ø¹Ø±Ø¶ Ø§Ù„Ø®Ø§Ø±Ø¬Ù‰ Ù„Ù„Ù…ØªØ­Ù 86 Ù‚Ø·Ø¹Ø© ÙØ±ÙŠØ¯Ø© Ù…Ù† Ø§Ù„ØªÙ…Ø§Ø«ÙŠÙ„ Ø§Ù„ÙƒØ¨ÙŠØ±Ø© ÙˆØ§Ù„Ù„ÙˆØ­Ø§Øª Ø§Ù„Ø£Ø«Ø±ÙŠØ© Ù…Ø®ØªÙ„ÙØ© Ø§Ù„Ø£Ø­Ø¬Ø§Ù….'),
(6, 1, 'Ø¬Ø²ÙŠØ±Ø© Ø§Ù„Ù†Ø¨Ø§ØªØ§Øª Ø¨Ø£Ø³ÙˆØ§Ù†', 'images/80186-1-(3).jpg', '40.00', 'ØªØ¹Ø¯ Ø§Ù„Ø­Ø¯ÙŠÙ‚Ø© Ø§Ù„Ù†Ø¨Ø§ØªÙŠØ© Ø¨Ø£Ø³ÙˆØ§Ù†ØŒ ÙˆØ§Ø­Ø¯Ø© Ù…Ù† Ø£Ù†Ø¯Ø± Ø§Ù„Ø¬Ø²Ø± Ø§Ù„Ù†ÙŠÙ„ÙŠØ© ÙÙ‰ Ø§Ù„Ø¹Ø§Ù„Ù… ÙˆØ§Ù„ØªÙ‰ ØªØªÙ…ØªØ¹ Ø¨ÙˆØ¬ÙˆØ¯ Ø£ÙƒØ«Ø± Ù…Ù† 500 Ù†ÙˆØ¹ Ù†Ø¨Ø§ØªÙ‰ Ù…Ø®ØªÙ„ÙØŒ Ù…Ù† Ø¬Ù…ÙŠØ¹ Ø£Ù†Ø­Ø§Ø¡ Ø§Ù„Ø¹Ø§Ù„Ù…'),
(7, 1, 'Ø­Ø¯ÙŠÙ‚Ø© Ø§Ù„Ø£Ù…ÙŠØ±Ø© ÙØ±ÙŠØ§Ù„', 'images/72656-1-(9).jpg', '80.00', 'Ø­Ø¯ÙŠÙ‚Ø© ÙØ±ÙŠØ§Ù„ Ø¨Ø§Ù†ÙˆØ±Ø§Ù…Ø§ Ø¬Ù…Ø§Ù„ÙŠØ© Ø¹Ù„Ù‰ ØµÙØ­Ø© Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ Ø¨Ù…Ø­Ø§ÙØ¸Ø© Ø£Ø³ÙˆØ§Ù† Ù…Ù† Ø§Ù„Ø¬Ù‡Ø© Ø§Ù„Ø¬Ù†ÙˆØ¨ÙŠØ© Ø­ÙŠØ« ØªÙ… Ø¥Ù†Ø´Ø§Ø¤Ù‡Ø§ ÙÙ‰ Ø§Ù„Ø£Ø±Ø¨Ø¹ÙŠÙ†ÙŠØ§Øª Ø¨Ø±Ø¹Ø§ÙŠØ© Ù…Ù† Ø§Ù„Ø£Ù…ÙŠØ±Ø© ÙØ±ÙŠØ§Ù„ Ø´Ù‚ÙŠÙ‚Ø© Ø§Ù„Ù…Ù„Ùƒ ÙØ§Ø±ÙˆÙ‚ØŒ ÙˆØ£Ø·Ù„Ù‚ Ø§Ø³Ù…Ù‡Ø§ Ø¹Ù„Ù‰ Ø§Ù„Ø­Ø¯ÙŠÙ‚Ø© ØªÙ‚Ø¯ÙŠØ±Ø§Ù‹ Ù„Ø¯ÙˆØ±Ù‡Ø§ ÙÙ‰ Ø¥Ù†Ø´Ø§Ø¦Ù‡Ø§.'),
(8, 1, 'ØºØ±Ø¨ Ø³Ù‡ÙŠÙ„', 'images/64203-1-(5).jpg', '99.99', 'ØªØ­Ø¸Ù‰ Ù…Ù†Ø·Ù‚Ø© ØºØ±Ø¨ Ø³Ù‡ÙŠÙ„ Ø¨Ù…Ø¯ÙŠÙ†Ø© Ø£Ø³ÙˆØ§Ù†ØŒ Ø¨Ø£Ù‡Ù…ÙŠØ© Ø³ÙŠØ§Ø­ÙŠØ© Ø®Ø§ØµØ©ØŒ ÙˆÙ„Ø¬Ø£Øª Ù…Ø¹Ø¸Ù… Ø´Ø±ÙƒØ§Øª Ø§Ù„Ø³ÙŠØ§Ø­Ø© Ø­Ø§Ù„ÙŠØ§Ù‹ Ø¥Ù„Ù‰ ÙˆØ¶Ø¹Ù‡Ø§ Ø¹Ù„Ù‰ Ø®Ø§Ø±Ø·Ø© Ø§Ù„Ø³Ø§Ø¦Ø­ Ø§Ù„Ø£Ø¬Ù†Ø¨Ù‰ Ø§Ù„Ø²Ø§Ø¦Ø± Ù„Ù…ØµØ± ÙˆÙ…Ø­Ø§ÙØ¸Ø© Ø£Ø³ÙˆØ§Ù† ÙˆÙ†Ø¬Ø­ Ø£Ø¨Ù†Ø§Ø¡ Ø§Ù„Ù†ÙˆØ¨Ø© ÙÙ‰ ØªØ¬Ø³ÙŠØ¯ Ø§Ù„ÙÙ„ÙƒÙˆØ± Ø§Ù„Ù†ÙˆØ¨Ù‰ ÙˆØ§Ù„Ù…ÙˆØ±ÙˆØ«Ø§Øª Ø§Ù„Ù†ÙˆØ¨ÙŠØ© Ø§Ù„Ù‚Ø¯ÙŠÙ…Ø© ÙÙ‰ Ø´ÙƒÙ„ Ù…Ø²Ø§Ø± Ø³ÙŠØ§Ø­Ù‰ ÙŠÙ‚Ø¯Ù… Ù„Ù„Ø³Ø§Ø¦Ø­ÙŠÙ† Ø¹Ù„Ù‰ Ø¶ÙØ§Ù Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ Ø¨Ø´ÙƒÙ„ Ù…Ø¨Ø³Ø·ØŒ ÙŠØ®ØªÙ„Ù Ø¹Ù† Ø§Ù„ÙÙ†Ø§Ø¯Ù‚ Ø§Ù„Ø¹Ù…Ù„Ø§Ù‚Ø© ÙˆØ§Ù„Ø¨Ù†Ø§ÙŠØ§Øª Ø§Ù„Ø­Ø¯ÙŠØ«Ø©.'),
(9, 1, 'Ø§Ù„Ø¬Ø²Ø± Ø§Ù„Ù†ÙŠÙ„ÙŠØ© Ø¨Ø£Ø³ÙˆØ§Ù†', 'images/38026-1-(4).jpg', '99.99', 'Ø£Ø³ÙˆØ§Ù† Ø§Ø³ØªØ·Ø§Ø¹Øª Ø£Ù† ØªØ­Ø¸Ù‰ Ø¨Ù„Ù‚Ø¨ Ø¹Ø±ÙˆØ³ Ø§Ù„Ù†ÙŠÙ„ Ø¨ÙØ¶Ù„ Ø§Ù„Ø¬Ø²Ø± Ø§Ù„Ù†ÙŠÙ„ÙŠØ© ÙˆØ§Ù„ØµØ®ÙˆØ± Ø§Ù„Ø·Ø¨ÙŠØ¹ÙŠØ© Ø§Ù„ØªÙ‰ Ø­Ø¨Ø§Ù‡Ø§ Ø§Ù„Ù„Ù‡ Ø¨Ù‡Ø§ ÙˆØ³Ø· Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ØŒ ÙˆÙŠÙƒÙ† Ù„Ù„Ù…ÙˆØ§Ø·Ù† Ø£Ù† ÙŠØµØ·Ø­Ø¨ Ø²ÙˆØ¬ØªÙ‡ ÙˆØ£ÙˆÙ„Ø§Ø¯Ù‡ ÙÙ‰ Ø±Ø­Ù„Ø© Ù†ÙŠÙ„ÙŠØ© Ø¹Ø¨Ø± Ø§Ù„Ù…Ø±Ø§ÙƒØ¨ Ø§Ù„Ù†ÙŠÙ„ÙŠØ© â€“ Ù„Ù… ØªÙƒÙ„ÙÙ‡ Ø§Ù„ÙƒØ«ÙŠØ± Ù…Ù† Ø§Ù„Ù…Ø§Ù„ â€“ ÙˆÙŠØ³ØªÙ…ØªØ¹ Ø®Ù„Ø§Ù„ Ø³Ø§Ø¹Ø© Ø¨Ø§Ù„Ù…Ù†Ø§Ø¸Ø± Ø§Ù„Ø®Ù„Ø§Ø¨Ø© ÙˆØ§Ù„Ø·ÙŠØ¹Ø© Ø§Ù„Ø³Ø§Ø­Ø±Ø© ÙˆØ³Ø· Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ ÙˆÙÙ‰ Ø§Ù„Ø¹ÙŠØ¯ ÙŠÙ…ÙƒÙ† Ù‚Ø¶Ø§Ø¡ Ø§Ù„ÙŠÙˆÙ… ÙƒØ§Ù…Ù„Ø§Ù‹ Ø¹Ù„Ù‰ Ø¥Ø­Ø¯Ù‰ Ø§Ù„Ø¬Ø²Ø± Ø§Ù„Ù†ÙŠÙ„ÙŠØ©ØŒ ÙˆÙ…Ù† Ø£Ø´Ù‡Ø± Ù‡Ø°Ù‡ Ø§Ù„Ø¬Ø²Ø±  Ù‡ÙŠØ³Ø© ÙˆØ¨Ø±Ø¨Ø± ÙˆØ§Ù„ØªÙ…Ø³Ø§Ø­ ÙˆØºÙŠØ±Ù‡Ø§.'),
(10, 1, 'Ù…Ø¹Ø¨Ø¯ Ø§Ø¨ÙˆØ³Ù…Ø¨Ù„', 'images/41346-1-(7).jpg', '99.99', 'ØªØ¹Ø¯ Ø§Ù„Ù…Ø¹Ø§Ø¨Ø¯ Ø§Ù„ÙØ±Ø¹ÙˆÙ†ÙŠØ© Ù‚Ø¨Ù„Ø© Ø§Ù„ÙƒØ«ÙŠØ± Ù…Ù† Ø§Ù„Ø²Ø§Ø¦Ø±ÙŠÙ† Ø®Ù„Ø§Ù„ Ø¥Ø¬Ø§Ø²Ø© Ø§Ù„Ø¹ÙŠØ¯ØŒ ÙˆÙŠØ­Ø±Øµ Ø£Ø¨Ù†Ø§Ø¡ Ø£Ø³ÙˆØ§Ù† Ø¨Ù…Ø´Ø§Ù‡Ø¯Ø© Ø§Ù„Ø­Ø¶Ø§Ø±Ø© Ø§Ù„ÙØ±Ø¹ÙˆÙ†ÙŠØ© Ø§Ù„Ø¹Ø±ÙŠÙ‚Ø© Ø¯Ø§Ø®Ù„ Ù…Ø¹Ø¨Ø¯ Ø£Ø¨ÙˆØ³Ù…Ø¨Ù„ØŒ ÙˆØ§Ù„Ø°Ù‰ ÙŠØ¶Ù… Ù…Ø¹Ø¨Ø¯Ù‰ Ø§Ù„Ù…Ù„Ùƒ Ø±Ù…Ø³ÙŠØ³ Ø§Ù„Ø«Ø§Ù†Ù‰ØŒ ÙˆØ²ÙˆØ¬ØªÙ‡ Ø§Ù„Ù…Ù„ÙƒØ© Ù†ÙØ§Ø±ØªØ§Ø±Ù‰ØŒ Ø¹Ù„Ù‰ Ø¶ÙØ§Ù Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ Ø¬Ù†ÙˆØ¨ Ù…Ø¯ÙŠÙ†Ø© Ø£Ø³ÙˆØ§Ù† ÙƒÙ…Ø§ ÙŠØ­Ø±Øµ Ø§Ù„ÙƒØ«ÙŠØ± Ù…Ù† Ø£Ø¨Ù†Ø§Ø¡ Ø£Ø³ÙˆØ§Ù† ÙˆØ§Ù„Ø³Ø§Ø¦Ø­ÙŠÙ† Ø¹Ù„Ù‰ Ø²ÙŠØ§Ø±Ø© Ù…Ø¹Ø¨Ø¯ ÙƒÙˆÙ… Ø£Ù…Ø¨Ùˆ Ø¹Ù„Ù‰ Ø¶ÙØ§Ù Ø§Ù„Ù†ÙŠÙ„ Ø¨Ù…Ù†Ø·Ù‚Ø© Ø§Ù„Ø¨ÙŠØ§Ø±Ø© Ø¨Ù…Ø­Ø§ÙØ¸Ø© Ø£Ø³ÙˆØ§Ù†ØŒ ÙˆØ§Ù„Ø§Ø³ØªÙ…ØªØ§Ø¹ Ø¨Ù…Ø´Ø§Ù‡Ø¯Ø© Ø§Ù„Ø­Ø¶Ø§Ø±Ø© Ø§Ù„ÙØ±Ø¹ÙˆÙ†ÙŠØ© ÙˆØ¹Ø±ÙˆØ¶ Ø§Ù„ØµÙˆØª ÙˆØ§Ù„Ø¶ÙˆØ¡ØŒ Ø¨Ø¬Ø§Ù†Ø¨ ØªÙÙ‚Ø¯ Ù…ØªØ­Ù Ø§Ù„ØªÙ…Ø³Ø§Ø­ Ø¨Ø§Ù„Ù…Ø¹Ø¨Ø¯ØŒ ÙˆØ§Ù„Ø¬Ù„ÙˆØ³ Ø¹Ù„Ù‰ Ø§Ù„ÙƒØ§ÙÙŠÙ‡Ø§Øª Ø§Ù„Ù‚Ø±ÙŠØ¨Ø© Ù…Ù† Ø§Ù„Ù…Ø¹Ø¨Ø¯ ÙˆÙ†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„. '),
(11, 2, 'Ù…Ø¹Ø¨Ø¯ Ø§Ù„ÙƒØ±Ù†Ùƒ Ø§Ù„Ø§Ù‚ØµØ±', 'images/Tourism-in-Luxor-4.jpg', '80.00', 'Ù…Ø¹Ø¨Ø¯ Ø§Ù„ÙƒØ±Ù†Ùƒ Ø§Ù„Ø§Ù‚ØµØ± Luxor Karnak Temple Ù‡Ùˆ Ø³Ù„Ø³Ù„Ø© Ù…Ù† Ø¯ÙˆØ± Ø§Ù„Ø¹Ø¨Ø§Ø¯Ø© Ø§Ù„ØªÙŠ ÙŠØ±Ø¬Ø¹ ØªØ§Ø±ÙŠØ®Ù‡Ø§ Ø¥Ù„Ù‰ Ø§Ù„Ø¹ØµØ± Ø§Ù„ÙØ±Ø¹ÙˆÙ†ÙŠØŒ ÙˆØªÙ…ØªØ¯ Ø¹Ù„Ù‰ Ù…Ø³Ø§Ø­Ø© Ø£ÙƒØ«Ø± Ù…Ù† 60 ÙØ¯Ø§Ù† Ø´Ù…Ø§Ù„ Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ø§Ù‚ØµØ± ØŒ ÙˆÙŠÙØ¹Ø¯ Ù…Ø¹Ø¨Ø¯ Ø§Ù„ÙƒØ±Ù†Ùƒ Ù‡Ùˆ Ø§Ù„Ø£ÙƒØ¨Ø± Ù…Ù† Ù†ÙˆØ¹Ù‡ Ø¹Ù„Ù‰ Ù…Ø³ØªÙˆÙ‰ Ù…ØµØ± ÙˆØ§Ù„Ø¹Ø§Ù„Ù….\r\nÙŠØ¹ÙƒØ³ Ù‡Ø°Ø§ Ø§Ù„Ù…Ø¹Ø¨Ø¯ Ù…Ù† Ø®Ù„Ø§Ù„ Ù…Ø±Ø§Ø­Ù„ Ø¨Ù†Ø§Ø¦Ù‡ ÙˆØªØ·ÙˆØ±Ù‡ ØªØ§Ø±ÙŠØ® ÙˆØ«Ù‚Ø§ÙØ© Ù…ØµØ± Ø§Ù„Ù‚Ø¯ÙŠÙ…Ø©ØŒ ØªØ¨Ø¯Ø£ Ù…Ù† Ø§Ù„Ø­Ù‚Ø¨Ø© Ø§Ù„ÙØ±Ø¹ÙˆÙ†ÙŠØ© Ø§Ù„ÙˆØ³Ø·Ù‰ ÙˆØªÙ†ØªÙ‡ÙŠ Ø¨Ø¹ØµØ± Ø§Ù„Ø¨Ø·Ø§Ù„Ù…Ø© Ø¹Ø¨Ø± 8 Ø¨ÙˆØ§Ø¨Ø§Øª ÙƒÙ„ Ø¨ÙˆØ§Ø¨Ø© Ù…Ù†Ù‡Ø§ ØªÙ‚ÙˆØ¯ Ø¥Ù„Ù‰ Ø¨Ù†Ø§Ø¡ Ù…ÙÙ‡ÙŠØ¨ Ù…Ù† 10 Ø£Ø¨Ù†ÙŠØ© Ø¹Ø¸ÙŠÙ…Ø©ØŒ ØªØ¬Ø¹Ù„ Ù…Ù†Ù‡ ÙˆØ§Ø­Ø¯ Ù…Ù† Ø£Ù‡Ù… Ù…Ø¹Ø§Ù„Ù… Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ù…ØµØ± .\r\nÙØ¥Ù† ÙƒÙ†Øª Ø¹Ù„Ù‰ Ø§Ø³ØªØ¹Ø¯Ø§Ø¯ Ù„Ø±ÙƒÙˆØ¨ Ø¢Ù„Ø© Ø§Ù„Ø²Ù…Ù† ÙˆØ§Ù„Ø¥Ø¨Ø­Ø§Ø± Ø¨ÙŠÙ† Ø­Ø¶Ø§Ø±Ø§Øª Ù…Ø§ Ù‚Ø¨Ù„ 7 Ø¢Ù„Ø§Ù Ø³Ù†Ø© Ù…Ù† Ø§Ù„Ø¢Ù†ØŒ ÙØ¥Ø¨Ù‚Ù‰ Ù…Ø¹Ù†Ø§ Ø®Ù„Ø§Ù„ Ù‡Ø°Ù‡ Ø§Ù„Ø±Ø­Ù„Ø© Ø§Ù„Ù…ÙØ«ÙŠØ±Ø© Ø¯Ø§Ø®Ù„ Ù…Ø¹Ø¨Ø¯ Ø§Ù„ÙƒØ±Ù†Ùƒ Ø§Ù„Ø§Ù‚ØµØ± Ø§Ù„Ø´Ù‡ÙŠØ±.'),
(12, 2, 'ÙˆØ§Ø¯ÙŠ Ø§Ù„Ù…Ù„ÙˆÙƒ Ø¨Ø§Ù„Ø§Ù‚ØµØ±', 'images/Tourism-in-Luxor-2.jpg', '99.99', '\r\nÙˆØ§Ø¯ÙŠ Ø§Ù„Ù…Ù„ÙˆÙƒ Ø§Ù„Ø§Ù‚ØµØ± Ø£Ùˆ ÙˆØ§Ø¯ÙŠ Ø¨ÙŠØ¨Ø§Ù† Ø§Ù„Ù…Ù„ÙˆÙƒ Valley of kings ÙŠÙ‚Ø¹ Ø¹Ù„Ù‰ Ø§Ù„Ø¶ÙØ© Ø§Ù„ØºØ±Ø¨ÙŠØ© Ù„Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ Ù…Ù‚Ø§Ø¨Ù„Ù‹Ø§ Ù„Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ø£Ù‚ØµØ±ØŒ ÙˆÙŠØ¶Ù… Ù…Ù‚Ø§Ø¨Ø± Ù„Ù…Ù„ÙˆÙƒ ÙˆØ­Ø§Ø´ÙŠØ© Ø§Ù„Ø£Ø³Ø± Ø§Ù„ÙØ±Ø¹ÙˆÙ†ÙŠØ© Ù…Ù† Ø§Ù„Ø£Ø³Ø±Ø© 18 ÙˆØ­ØªÙ‰ 20 ÙˆØ§Ù„ØªÙŠ Ø­ÙƒÙ…Øª Ù…ØµØ± Ø¹Ù„Ù‰ Ù…Ø¯Ø§Ø± 5 Ù‚Ø±ÙˆÙ†.\r\nÙˆÙŠÙ†Ù‚Ø³Ù… Ø§Ù„ÙˆØ§Ø¯ÙŠ Ø¥Ù„Ù‰ Ø¬Ù‡ØªÙŠÙ† Ø¬Ù‡Ø© Ø´Ø±Ù‚ÙŠØ© ØªØ¶Ù… Ø£ØºÙ„Ø¨ Ø§Ù„Ù…Ù‚Ø§Ø¨Ø± Ø§Ù„Ù…Ù„ÙƒÙŠØ© ÙˆØ¬Ù‡Ø© ØºØ±Ø¨ÙŠØ©ØŒ ÙƒÙ…Ø§ ØªØªØ±Ø§ÙˆØ­ Ù…Ù‚Ø§Ø¨Ø±Ù‡ Ù…Ø§ Ø¨ÙŠÙ† Ø§Ù„Ø¨Ø³ÙŠØ·Ø© ÙˆØ§Ù„Ù…ÙØ¹Ù‚Ø¯Ø© Ø§Ù„ÙƒØ¨ÙŠØ±Ø© Ø§Ù„ØªÙŠ ØªØ¶Ù… Ù†Ø­Ùˆ 120 Ù…Ù‚Ø¨Ø±Ø© ØªÙ‚Ø±ÙŠØ¨Ù‹Ø§ ØªÙ… Ø¨Ù†Ø§Ø¦Ù‡Ø§ Ù…Ø§ Ø¨ÙŠÙ† Ø§Ù„Ù‚Ø±Ù†ÙŠÙ† 11 Ùˆ16 Ù‚Ø¨Ù„ Ø§Ù„Ù…ÙŠÙ„Ø§Ø¯ØŒ ÙˆÙŠØ¹Ø¯ Ù…Ù† Ø£Ù‡Ù… Ù…Ø¹Ø§Ù„Ù… Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ù…ØµØ± .'),
(13, 2, 'ØªÙ…Ø«Ø§Ù„ÙŠ Ù…Ù…Ù†ÙˆÙ† ÙÙŠ Ø§Ù„Ø§Ù‚ØµØ±', 'images/tourism-luxor-1.jpg', '50.00', 'ØªÙ…Ø«Ø§Ù„ Ù…Ù…Ù†ÙˆÙ† Ø§Ù„Ø§Ù‚ØµØ± Statue of Memnon Ø£Ùˆ ÙƒÙ…Ø§ Ø£Ø·Ù„Ù‚ Ø¹Ù„ÙŠÙ‡Ù…Ø§ Ù‚Ø¯ÙŠÙ…Ù‹Ø§ Ø§Ù„ØªÙ…Ø§Ø«ÙŠÙ„ Ø§Ù„ØºÙ†Ø§Ø¡ØŒ Ø§Ù„Ø°ÙŠ ÙŠØ¹Ø¯ Ù…Ù† Ø£Ø¬Ù…Ù„ Ù…Ø¹Ø§Ù„Ù… Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ø§Ù„Ø§Ù‚ØµØ± Ø­ÙŠØ« ÙƒØ§Ù†Ø§ ÙŠØ´ØªÙ‡Ø±Ø§ ÙÙŠ Ø§Ù„Ø¹ØµÙˆØ± Ø§Ù„Ù‚Ø¯ÙŠÙ…Ø© Ø¨ØµØ¯ÙˆØ± Ø£ØµÙˆØ§ØªÙ‹Ø§ ØºÙŠØ± Ù…Ø¹Ø±ÙˆÙØ© Ø§Ù„Ø³Ø¨Ø¨ ÙˆÙ‚Øª Ø§Ù„ÙØ¬Ø±ØŒ ÙˆÙ…Ø¹ Ù…Ø±ÙˆØ± Ø§Ù„Ø²Ù…Ù† ÙØ³Ø± Ø§Ù„Ø¹Ù„Ù…Ø§Ø¡ ØªÙ„Ùƒ Ø§Ù„Ø£ØµÙˆØ§Øª Ø¨Ø£Ù†Ù‡Ø§ Ù†ØªÙŠØ¬Ø© Ù…Ø±ÙˆØ± Ø§Ù„Ù‡ÙˆØ§Ø¡ Ø¨Ù…Ø³Ø§Ù… Ø§Ù„Ø­Ø¬Ø§Ø±Ø© Ø§Ù„Ø¶Ø®Ù…Ø© ÙˆÙ‚Øª Ø§Ù„Ø³ÙƒÙˆÙ†.\r\nÙˆÙŠÙ‚Ø¹ ØªÙ…Ø«Ø§Ù„ÙŠ Ù…Ù…Ù†ÙˆÙ† Ø§Ù„Ø§Ù‚ØµØ± ÙÙŠ Ø§Ù„Ø¨Ø± Ø§Ù„ØºØ±Ø¨ÙŠ Ø¹Ù„Ù‰ Ø§Ù„Ø·Ø±ÙŠÙ‚ Ø§Ù„ÙˆØ§ØµÙ„ Ø¥Ù„Ù‰ Ù…Ù‚Ø¨Ø±Ø© Ø·ÙŠØ¨Ø© ÙÙŠ Ø§Ù„Ø£Ù‚ØµØ± Ø¨Ù…Ù†Ø·Ù‚Ø© ÙˆØ§Ø¯ÙŠ Ø§Ù„Ù…Ù„ÙˆÙƒØŒ Ø­ÙŠØ« ÙŠØ³ØªÙ‚Ø¨Ù„Ø§ Ø§Ù„Ø²ÙˆØ§Ø± Ø§Ù„ÙˆØ§ÙØ¯ÙŠÙ† Ù…Ù† Ø§Ù„Ø¶ÙØ© Ø§Ù„Ø´Ø±Ù‚ÙŠØ© Ù„Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ØŒ ÙˆÙŠÙØ¬Ø³Ø¯Ø§ Ø§Ù„ÙØ±Ø¹ÙˆÙ† Ø£Ù…Ù†Ø­ØªØ¨ Ø§Ù„Ø«Ø§Ù„Ø« ÙˆØ²ÙˆØ¬ØªÙ‡ ØªÙŠÙŠØŒ ÙˆÙ‚Ø¯ ØªÙ… ØµÙ†Ø¹Ù‡Ù…Ø§ ÙÙŠ Ø§Ù„Ù‚Ø±Ù† Ø§Ù„Ø±Ø§Ø¨Ø¹ Ø¹Ø´Ø± Ù‚Ø¨Ù„ Ø§Ù„Ù…ÙŠÙ„Ø§Ø¯ Ø¨Ø§Ø±ØªÙØ§Ø¹ Ù„ÙƒÙ„Ù Ù…Ù†Ù‡Ù…Ø§ ÙŠØµÙ„ Ø¥Ù„Ù‰ Ø­ÙˆØ§Ù„ÙŠ 22 Ù…ØªØ±ØŒ ÙˆÙ‡Ùˆ ÙˆØ§Ø­Ø¯ Ù…Ù† Ø£Ù‡Ù… Ù…Ø¹Ø§Ù„Ù… Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ù…ØµØ± .'),
(14, 2, 'Ù…Ø¹Ø¨Ø¯ Ù‡Ø§Ø¨Ùˆ Ø§Ù„Ø§Ù‚ØµØ±', 'images/Tourism-in-Luxor-2-1.jpg', '65.00', 'Ù…Ø¹Ø¨Ø¯ Ù‡Ø§Ø¨Ùˆ Ø¨Ø§Ù„Ø§Ù‚ØµØ± Habu temple in Luxor Ø£Ùˆ ÙƒÙ…Ø§ ÙŠÙØ¹Ø±Ù Ø¨Ù…Ø¹Ø¨Ø¯ Ø±Ù…Ø³ÙŠØ³ Ø§Ù„Ø«Ø§Ù„Ø« ÙÙŠ Ù…Ø¯ÙŠÙ†Ø© Ù‡Ø§Ø¨Ùˆ Ø¨Ø§Ù„Ø£Ù‚ØµØ± Ù‡Ùˆ Ù…Ø¹Ø¨Ø¯ Ø¬Ù†Ø§Ø¦Ø²ÙŠ Ø´ÙÙŠÙ‘Ø¯ ÙÙŠ Ø¨Ø¯Ø§ÙŠØ© Ø¹Ù‡Ø¯ Ø§Ù„Ù…Ù„Ùƒ Ø±Ù…Ø³ÙŠØ³ Ø§Ù„Ø«Ø§Ù„Ø« Ø³Ù„ÙŠÙ„ Ø§Ù„Ø£Ø³Ø±Ø© 20 Ø®Ù„Ø§Ù„ Ø¹ØµØ± Ø§Ù„Ø¯ÙˆÙ„Ø© Ø§Ù„ÙØ±Ø¹ÙˆÙ†ÙŠØ© Ø§Ù„Ø­Ø¯ÙŠØ«Ø© Ù„ÙŠÙØµØ¨Ø­ Ø§Ù„Ø¢Ù† Ù…Ù† Ø£ÙƒØ¨Ø± Ø§Ù„Ù…Ø¹Ø§Ø¨Ø¯ Ø§Ù„Ø¬Ù†Ø§Ø¦Ø²ÙŠØ© Ø§Ù„Ù…ØµØ±ÙŠØ© Ø®Ù„Ø§Ù„ Ù‡Ø°Ø§ Ø§Ù„Ø¹ØµØ±.\r\nÙˆÙ‚Ø¯ Ø§Ø®ØªÙ„ÙØª Ø§Ù„Ø£Ù‚Ø§ÙˆÙŠÙ„ Ø­ÙˆÙ„ Ø³Ø¨Ø¨ Ø´Ù‡Ø±Ø© Ø§Ù„Ù…Ø¹Ø¨Ø¯ Ø¨Ù‡Ø°Ø§ Ø§Ù„Ø§Ø³Ù…ØŒ ÙØ§Ù„Ø¨Ø¹Ø¶ ÙŠÙØ±Ø¬Ø­ Ø£Ù† Ù‡Ø§Ø¨Ùˆ Ù‡Ùˆ Ø§Ø³Ù… ÙƒØ§Ù‡Ù† ÙƒØ§Ù† ÙŠØ³ÙƒÙ† Ø§Ù„Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ù‚Ø¨Ø·ÙŠØ© Ø§Ù„ØªÙŠ ÙƒØ§Ù†Øª Ù…Ø¨Ù†ÙŠØ© Ø¨ÙŠÙ† Ø£Ø³ÙˆØ§Ø± Ø§Ù„Ù…Ø¹Ø¨Ø¯ØŒ Ø¨ÙŠÙ†Ù…Ø§ ÙŠÙØ±Ø¬Ø­ Ø§Ù„Ø¨Ø¹Ø¶ Ø§Ù„Ø¢Ø®Ø± Ø£Ù† Ø§Ù„Ø§Ø³Ù… ÙŠØ±Ø¬Ø¹ Ø¥Ù„Ù‰ Ø£Ù…Ù†Ø­ØªØ¨ Ø¨Ù† Ø­Ø§Ø¨Ùˆ ÙˆØ²ÙŠØ± Ø£Ù…Ù†Ø­ØªØ¨ Ø§Ù„Ø«Ø§Ù„Ø«.\r\nÙŠØ¹ØªØ¨Ø± Ø§Ù„Ù…Ø¹Ø¨Ø¯ Ù…Ù† Ø§Ø´Ù‡Ø± Ø§Ù„Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­ÙŠØ© ÙÙŠ Ø§Ù„Ø§Ù‚ØµØ± Ù…ØµØ± .'),
(15, 2, 'Ù…Ø¹Ø¨Ø¯ Ø­ØªØ´Ø¨Ø³ÙˆØª', 'images/Tourism-in-Luxor-1-1.jpg', '80.00', '   \r\n Ù…Ø¹Ø¨Ø¯ Ø­ØªØ´Ø¨Ø³ÙˆØª Ø§Ù„Ø§Ù‚ØµØ± Ø§Ù„Ø´Ù‡ÙŠØ± Ø£Ùˆ ÙƒÙ…Ø§ ÙŠÙØ³Ù…Ù‰ Ø¨Ù…Ø¹Ø¨Ø¯ Ø§Ù„Ø¯ÙŠØ± Ø§Ù„Ø¨Ø­Ø±ÙŠ Mortuary Temple of Hatshepsut Ù‡Ùˆ Ù…Ø¹Ø¨Ø¯ Ø¬Ù†Ø§Ø¦Ø²ÙŠ Ø´ÙÙŠÙ‘Ø¯ÙŽ Ø¹Ù„Ù‰ Ø§Ù„Ø¶ÙØ© Ø§Ù„ØºØ±Ø¨ÙŠØ© Ù„Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ ÙÙŠ Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ø§Ù‚ØµØ± Ø¹Ù„Ù‰ Ù…Ø¯Ø§Ø± 15 Ø¹Ø§Ù…Ù‹Ø§ Ù…Ù† Ø­ÙƒÙ… Ø§Ù„Ù…Ù„ÙƒØ© Ø­ØªØ´Ø¨Ø³ÙˆØª Ø¹Ù„Ù‰ Ø·Ø±Ø§Ø² ÙŠØ®ØªÙ„Ù ØªÙ…Ø§Ù…Ù‹Ø§ Ø¹Ù† ØºÙŠØ±Ù‡ Ù…Ù† Ø§Ù„Ù…Ø¹Ø§Ø¨Ø¯ Ø§Ù„Ø´Ø±Ù‚ÙŠØ©.\r\nÙØ§Ù„Ù…Ø¹Ø¨Ø¯ Ù…ÙØ´ÙŠÙ‘Ø¯ Ù…Ù† Ø§Ù„Ø­Ø¬Ø± Ø§Ù„Ø¬ÙŠØ±ÙŠ Ø§Ù„Ù…ÙÙ„ÙˆÙ‘Ù†ØŒ ÙˆØªØ­ÙˆÙ„ ÙÙŠ Ù†Ù‡Ø§ÙŠØ© Ø§Ù„Ø­ÙƒÙ… Ø§Ù„Ø¨Ø·Ù„Ù…ÙŠ ÙˆÙ…Ø¹ Ø¨Ø¯Ø§ÙŠØ© Ø§Ù†ØªØ´Ø§Ø± Ø§Ù„Ù…Ø³ÙŠØ­ÙŠØ© ÙÙŠ Ù…ØµØ± Ø¥Ù„Ù‰ Ø¯ÙŠØ± Ù‚Ø¨Ø·ÙŠ Ù‚Ø¨Ù„ Ø£Ù† ÙŠØ¹ÙˆØ¯ Ù„Ø£ØµÙ„Ù‡ Ù…Ø±Ø© Ø£Ø®Ø±Ù‰ØŒ ÙˆØ±ØºÙ… Ù…Ø§ Ù…Ø± Ø¨Ù…Ø¹Ø¨Ø¯ Ø­ØªØ´Ø¨Ø³ÙˆØª Ø·ÙŠÙ„Ø© Ù‡Ø°Ù‡ Ø§Ù„Ù‚Ø±ÙˆÙ† Ù„Ø§ ÙŠØ²Ø§Ù„ Ù„Ù‡ Ø¬Ù…Ø§Ù„Ù‡ ÙˆØ³Ø­Ø±Ù‡ Ø§Ù„Ø®Ø§Øµ Ù…Ù…Ø§ Ø¬Ø¹Ù„Ù‡ Ù…Ù† Ø£Ù‡Ù… Ù…Ø¹Ø§Ù„Ù… Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ù…ØµØ± .'),
(16, 2, 'Ù…Ø¹Ø¨Ø¯ Ø§Ù„Ø§Ù‚ØµØ±', 'images/LuXor-temple.jpg', '70.00', 'Ù…Ø¹Ø¨Ø¯ Ø§Ù„Ø§Ù‚ØµØ± Luxor Temple ÙˆØ§Ø­Ø¯ Ù…Ù† Ø£Ù‡Ù… ÙˆØ£Ø¬Ù…Ù„ Ø§Ù„Ù…Ø¹Ø§Ø¨Ø¯ Ø§Ù„Ù…ØµØ±ÙŠØ© Ø§Ù„Ù‚Ø¯ÙŠÙ…Ø© Ø§Ù„ØªÙŠ Ø´ÙÙŠÙ‘Ø¯Øª Ø¹Ù„Ù‰ Ø§Ù„Ø¶ÙØ© Ø§Ù„Ø´Ø±Ù‚ÙŠØ© Ù„Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ Ø¨Ø§Ù„Ø£Ù‚ØµØ± Ù…ÙÙ†Ø° Ø¹Ø§Ù… 1400 Ù‚Ø¨Ù„ Ø§Ù„Ù…ÙŠÙ„Ø§Ø¯ØŒ ØªÙ‚Ø¯ÙŠØ³Ù‹Ø§ Ù„Ù„Ø¥Ù„Ù‡ Ø¢Ù…ÙˆÙ† ÙˆØ²ÙˆØ¬ØªÙ‡ Ù…ÙˆØª ÙˆØ§Ø¨Ù†Ù‡Ù…Ø§ Ø®ÙˆÙ†Ø³Ùˆ Ø£Ùˆ Ù…ÙŽØ§ ÙŠÙØ·Ù„Ù‚ Ø¹Ù„ÙŠÙ‡Ù… Ø«Ø§Ù„ÙˆØ« Ø·ÙŠØ¨Ø© Ø§Ù„Ù…ÙÙ‚Ø¯Ù‘Ø³ØŒ ÙˆÙŠØ¹Ø¯ Ù…Ù† Ø£Ù‡Ù… Ù…Ø¹Ø§Ù„Ù… Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ø§Ù„Ø§Ù‚ØµØ± .\r\nÙˆÙŠØ¶Ù… Ø§Ù„Ù…Ø¹Ø¨Ø¯ Ù…Ø¬Ù…ÙˆØ¹Ø© Ø±Ø§Ø¦Ø¹Ø© Ù…Ù† Ø§Ù„ØµØ±ÙˆØ­ Ø§Ù„ØªÙŠ ØªÙ… ØªØ´ÙŠÙŠØ¯Ù‡Ø§ ÙÙŠ Ø¹Ù‡Ø¯ Ø§Ù„Ù…Ù„ÙˆÙƒ Ø£Ù…Ù†Ø­ÙˆØªØ¨ Ø§Ù„Ø«Ø§Ù„Ø«ØŒ ØªØ­ØªÙ…Ø³ Ø§Ù„Ø«Ø§Ù„Ø«ØŒ Ø±Ù…Ø³ÙŠØ³ Ø§Ù„Ø«Ø§Ù†ÙŠØŒ Ø­ØªØ´Ø¨Ø³ÙˆØªØŒ ØªÙˆØª Ø¹Ù†Ø® Ø¢Ù…ÙˆÙ†. ÙˆØ§Ù„ÙŠÙˆÙ… Ø³ÙˆÙ Ù†Ø£Ø®ÙØ°ÙƒÙŽ ÙÙŠ Ø¬ÙˆÙ„Ø© Ù‚ØµÙŠØ±Ø© Ø¯Ø§Ø®Ù„ Ù…Ø¹Ø¨Ø¯ Ø§Ù„Ø§Ù‚ØµØ± Ù„Ù†ØªØ¹Ø±Ù Ø³ÙˆÙŠÙ‹Ø§ Ø¹Ù„Ù‰ ÙˆØ§Ø­Ø¯ Ù…Ù† Ø£Ø¬Ù…Ù„ Ù…Ø¹Ø§Ù„Ù… Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ù…ØµØ± .'),
(17, 2, 'Ù…ØªØ­Ù Ø§Ù„Ø§Ù‚ØµØ±', 'images/Luxor-Museum.jpg', '90.00', 'Ù…ØªØ­Ù Ø§Ù„Ø§Ù‚ØµØ± Museum of Luxor Ù‡Ø°Ø§ Ø§Ù„Ù…ÙƒØ§Ù† Ø§Ù„Ø°ÙŠ ÙŠØ¶Ù… Ø¨Ø¯Ø§Ø®Ù„Ù‡ Ø§Ù„ØªØ§Ø±ÙŠØ® Ø§Ù„Ù…ØµØ±ÙŠ Ø§Ù„Ø¹Ø±ÙŠÙ‚ ÙˆÙ…Ø¬Ù…ÙˆØ¹Ø© Ù†Ø§Ø¯Ø±Ø© Ù…Ù† Ø§Ù„Ù…Ø¹Ø±ÙˆØ¶Ø§Øª ØªÙØºØ·ÙŠ ÙØªØ±Ø© Ø²Ù…Ù†ÙŠØ© ØªØ²ÙŠØ¯ Ø¹Ù† 4 Ø¢Ù„Ø§Ù Ø¹Ø§Ù…Ù‹Ø§ØŒ Ø¨Ø¯Ø§ÙŠØ©Ù‹ Ù…Ù† Ø¹ØµÙˆØ± Ù…Ø§ Ù‚Ø¨Ù„ Ø§Ù„Ù…ÙŠÙ„Ø§Ø¯ ÙˆØµÙˆÙ„Ù‹Ø§ Ø¥Ù„Ù‰ Ø§Ù„Ø¹ØµØ± Ø§Ù„Ø¥Ø³Ù„Ø§Ù…ÙŠØŒ ÙˆØ°Ù„Ùƒ Ø¹Ù„Ù‰ Ù…Ø³Ø§Ø­Ø© ØªØ¨Ù„Øº 1595 Ù…ØªØ± Ù…Ø±Ø¨Ø¹.\r\nÙŠÙ‚Ø¹ Ù…ØªØ­Ù Ø§Ù„Ø§Ù‚ØµØ± Ø¨Ø§Ù„Ø¶ÙØ© Ø§Ù„Ø´Ø±Ù‚ÙŠØ© Ù…Ù† Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ ÙÙŠ Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ø§Ù‚ØµØ± ØŒ ÙˆÙŠØ­ØªØ¶Ù†Ù‡ Ù…Ù† Ø§Ù„Ø¬Ù†ÙˆØ¨ Ù…Ø¹Ø¨Ø¯ Ø§Ù„Ø£Ù‚ØµØ± ÙˆÙ…Ù† Ø§Ù„Ø´Ù…Ø§Ù„ Ù…Ø¹Ø¨Ø¯ Ø§Ù„ÙƒØ±Ù†ÙƒØŒ ÙˆÙ‚Ø¯ ØªÙ… ØªØµÙ…ÙŠÙ…Ù‡ Ù„ÙŠÙƒÙˆÙ† Ù…ÙˆØ§Ø¬Ù‡Ù‹Ø§ Ù„Ù„Ù†ÙŠÙ„ØŒ ÙˆØªÙ… Ø§ÙØªØªØ§Ø­Ù‡ Ù„Ø£ÙˆÙ„ Ù…Ø±Ø© Ù„Ù„Ø¬Ù…Ù‡ÙˆØ± Ø¹Ø§Ù… 1975ØŒ ÙˆÙŠØ¹Ø¯ Ù…Ù† Ø£Ù‡Ù… Ù…Ø¹Ø§Ù„Ù… Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ù…ØµØ± .'),
(18, 2, 'Ø§Ù„Ø­Ø¯ÙŠÙ‚Ø© Ø§Ù„Ø¯ÙˆÙ„ÙŠØ© Ø¨Ø§Ù„Ø§Ù‚ØµØ±', 'images/Tourism-in-Luxor-1.jpg', '40.00', 'ÙŠØ¸Ù† Ø§Ù„ÙƒØ«ÙŠØ±ÙˆÙ† Ø£Ù† Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ø§Ù„Ø§Ù‚ØµØ± Ø³ÙŠØ§Ø­Ø© Ø¢Ø«Ø§Ø± ÙØ­Ø³Ø¨ ØªÙØªÙ‚Ø± Ø¥Ù„Ù‰ Ø¬ÙˆØ§Ù†Ø¨ Ø§Ù„Ù…ØªØ¹Ø© ÙˆØ§Ù„ØªØ±ÙÙŠÙ‡ Ø§Ù„ØªÙŠ Ù‚Ø¯ ØªØªØ·Ù„Ø¨Ù‡Ø§ Ø§Ù„Ø±Ø­Ù„Ø§Øª Ø§Ù„Ø¹Ø§Ø¦Ù„ÙŠØ© Ø¨ØµØ­Ø¨Ø© Ø§Ù„Ø£Ø·ÙØ§Ù„ØŒ ÙˆÙ„ÙƒÙ† ÙÙŠ Ø§Ù„Ø­Ù‚ÙŠÙ‚Ø© ØªØ¶Ù… Ø§Ù„Ø£Ù‚ØµØ± Ø³Ù„Ø³Ù„Ø© Ù…Ù† Ø§Ù„Ø­Ø¯Ø§Ø¦Ù‚ ÙˆØ§Ù„Ù…ÙØ³Ø·Ø­Ø§Øª Ø§Ù„Ø®Ø¶Ø±Ø§Ø¡ Ø£Ø´Ù‡Ø±Ù‡Ø§ Ø§Ù„Ø­Ø¯ÙŠÙ‚Ø© Ø§Ù„Ø¯ÙˆÙ„ÙŠØ© Ø­ÙŠØ« ØªØ¬ØªÙ…Ø¹ Ø§Ù„Ø®ÙØ¶Ø±Ø© Ù…Ø¹ Ø§Ù„Ù…Ø§Ø¡ Ø§Ù„Ø¹Ø°Ø¨ Ø§Ù„Ø³Ø§Ø­Ø±.'),
(19, 3, 'Ø§Ù‡Ø±Ù…Ø§Øª Ø§Ù„Ø¬ÙŠØ²Ø© Ø¨Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©', 'images/giza-pyramid-complex.jpg', '20.00', ' \r\nØ§Ù‡Ø±Ø§Ù…Ø§Øª Ù…ØµØ± Ø§Ù„Ø¬ÙŠØ²Ø© ÙÙŠ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© ØªÙ‚Ø¹ Ø¹Ù„Ù‰ Ù‡Ø¶Ø¨Ø© Ø§Ù„Ø¬ÙŠØ²Ø© ÙÙŠ Ù…Ø­Ø§ÙØ¸Ø© Ø§Ù„Ø¬ÙŠØ²Ø© Ø§ÙŠ Ø¹Ù„Ù‰ Ø§Ù„Ø¶ÙØ© Ø§Ù„ØºØ±Ø¨ÙŠØ© Ù„Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„ .ÙˆÙ‡ÙŠ ØªØ´Ù…Ù„ Ø«Ù„Ø§Ø«Ø© Ø§Ù‡Ø±Ø§Ù…Ø§Øª Ø®ÙˆÙÙˆ ØŒØ®ÙØ±Ø¹ ØŒÙ…Ù†Ù‚Ø±Ø¹ ÙˆØ§Ù„ØªÙŠ Ø¨Ù†ÙŠØª Ù‚Ø¨Ù„ Ø­ÙˆØ§Ù„ÙŠ 25 Ù‚Ø±Ù† Ù‚Ø¨Ù„ Ø§Ù„Ù…ÙŠÙ„Ø§Ø¯ ÙˆÙ‡ÙŠ Ù…Ù‚Ø§Ø¨Ø± Ù…Ù„ÙƒÙŠØ© ÙƒÙ„ Ù…Ù†Ù‡Ø§ ÙŠØ­Ù…Ù„ Ø§Ø³Ù… Ø§Ù„Ù…Ù„Ùƒ Ø§Ù„Ø°ÙŠ Ø¨Ù†Ø§Ù‡ ÙˆØ§Ù„Ø°ÙŠ Ø¯ÙÙ† ÙÙŠÙ‡ ÙˆØ§Ù„Ø¨Ù†Ø§Ø¡ Ø§Ù„Ù‡Ø±Ù…ÙŠ Ù‡Ù†Ø§ Ù‡Ùˆ Ù…Ø±Ø­Ù„Ø© ØªØ·ÙˆØ± Ø¹Ù…Ø§Ø±Ø© Ø§Ù„Ù…Ù‚Ø§Ø¨Ø± ÙÙŠ Ù…ØµØ± Ø§Ù„Ù‚Ø¯ÙŠÙ…Ø©. ÙˆØªØ¹Ø¯ Ø§Ù„Ø§Ù‡Ø±Ø§Ù…Ø§Øª Ù…Ù† Ø§Ù‡Ù… Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ù…ØµØ±\r\nØªØªØµÙ Ø§Ù‡Ø±Ø§Ù…Ø§Øª Ù…ØµØ± Ø§Ù„Ø«Ù„Ø§Ø«Ø© Ø¨Ø£Ù†Ù‡Ø§ Ø§Ø­Ø¯ Ø§Ù‡Ù… Ø¹Ø¬Ø§Ø¦Ø¨ Ø§Ù„Ø¯Ù†ÙŠØ§ Ø§Ù„Ø³Ø¨Ø¹Ø© ÙˆØ§Ø­Ø¯ Ø§ÙƒØ¨Ø± Ø§Ù„ØºØ§Ø² Ø§Ù„ØªØ§Ø±ÙŠØ® Ø§Ù„Ù‚Ø¯ÙŠÙ… ÙˆØ§Ù„Ø­Ø¯ÙŠØ« ÙˆØ§Ù‡Ù… Ø§Ù„Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­ÙŠØ© ÙÙŠ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©'),
(20, 3, 'Ø§Ù„Ù‚Ø±ÙŠØ© Ø§Ù„ÙØ±Ø¹ÙˆÙ†ÙŠÙ‘Ø© ÙÙŠ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©', 'images/Pharonic-Village6.jpg', '99.99', 'Ø£Ù†Ø´Ø¦ Ø§Ù„Ù‚Ø±ÙŠØ© Ø§Ù„ÙØ±Ø¹ÙˆÙ†ÙŠØ© ÙÙŠ Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© Ø§Ù„Ù…Ø¹Ù…Ø§Ø±ÙŠ Ø§Ù„Ù…ØµØ±ÙŠ Ø­Ø³Ù† Ø±Ø¬Ø¨ ÙˆÙ‚Ø¯ Ø¬Ø§Ø¦ØªÙ‡ ØªÙ„Ùƒ Ø§Ù„ÙÙƒØ±Ø© Ø¹Ù†Ø¯ Ø²ÙŠØ§Ø±ØªÙ‡ Ù„Ø§Ù…Ø±ÙŠÙƒØ§ ÙˆØ±Ø¤ÙŠØªÙ‡ Ù„Ù‚Ø±ÙŠØ© ÙˆÙŠÙ„ÙŠØ§Ù…Ø²Ø¨ÙŠØ±Øº ÙÙŠ ÙÙŠØ±Ø¬ÙŠÙ†ÙŠØ§ Ø§Ù„ØªÙŠ ØªØ­ÙƒÙŠ Ø­ÙŠØ§Ø© Ø§Ù„Ù…Ø³ØªÙˆØ·Ù†ÙŠÙ† Ø§Ù„Ø§ÙˆØ§Ø¦Ù„ Ù„Ù„ÙˆÙ„Ø§ÙŠØ§Øª Ø§Ù„Ù…ØªØ­Ø¯Ø© ÙˆÙˆÙ‚Ø¹ Ø§Ø®ØªÙŠØ§Ø±Ù‡ Ø¹Ù„Ù‰ Ø¬Ø²ÙŠØ±Ø© ÙŠØ¹Ù‚ÙˆØ¨ ÙƒÙ…ÙƒØ§Ù† Ù„Ù„Ù‚Ø±ÙŠØ© Ø§Ù„ÙØ±Ø¹ÙˆÙ†ÙŠØ©.\r\nÙˆØ¨Ø¯Ø£ Ø§Ù„Ø¹Ù…Ù„ ÙÙŠÙ‡Ø§ ÙÙŠ Ø¹Ø§Ù… 1977 ÙˆØºØ±Ø³ 5000 Ø´Ø¬Ø±Ø© Ù…Ù† Ø§Ù„Ø§Ø´Ø¬Ø§Ø± Ø§Ù„ØªÙŠ ØªØªÙ…ÙŠØ² Ø¨Ù‡Ø§ Ù…ØµØ± Ø§Ù„ÙØ±Ø¹ÙˆÙ†ÙŠØ© ÙˆØ¬Ø±Ù‰ Ø­ÙØ± Ø§Ù„Ù…Ù…Ø±Ø§Øª ÙˆØ§Ù„Ù‚Ù†ÙˆØ§Øª Ø§Ù„Ù…Ø§Ø¦ÙŠØ©\r\nÙˆØ´ÙŠØ¦Ø§Ù‹ ÙØ´ÙŠØ¦Ø§Ù‹ ØªØ­Ù‚Ù‚ Ø§Ù„Ø­Ù„Ù… ÙˆÙØªØ­Øª Ù‡Ø°Ù‡ Ø§Ù„Ù‚Ø±ÙŠØ© Ø§Ù„Ù…ØªÙƒØ§Ù…Ù„Ø© ÙÙŠ Ø¹Ø§Ù… 1984 Ø³ØªØ¬Ø¯ ÙÙŠ Ø§Ù„Ù‚Ø±ÙŠØ© Ø§Ù„ÙØ±Ø¹ÙˆÙ†ÙŠØ© Ø§Ø´Ù‡Ø± Ù…Ø¹Ø§Ø¨Ø¯ Ù…Ù„ÙˆÙƒ Ø§Ù„ÙØ±Ø§Ø¹Ù†Ø©\r\nÙˆØ­ÙŠØ§Ø© Ø§Ù„Ù…ØµØ±ÙŠ Ø§Ù„Ù‚Ø¯ÙŠÙ… Ø§Ù„Ø¨Ø³ÙŠØ·Ø© Ø¨ÙŠÙ† Ø§Ù„Ø²Ø±Ø§Ø¹Ø© ÙˆØ§Ù„ØµÙŠØ¯ ÙˆØªØ­Ù†ÙŠØ· Ø§Ù„Ù…ÙˆØªÙ‰ ÙˆØ§Ù„ÙƒØªØ§Ø¨Ø© Ø¹Ù„Ù‰ Ø§Ù„ÙˆØ±Ù‚.'),
(21, 3, 'Ø®Ø§Ù† Ø§Ù„Ø®Ù„ÙŠÙ„ÙŠ', 'images/khan-el-khalili-cairo.jpg', '0.00', 'Ø®Ø§Ù† Ø§Ù„Ø®Ù„ÙŠÙ„ÙŠ Ø§Ø­Ø¯ Ø£Ø­ÙŠØ§Ø¡ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© Ø§Ù„Ù‚Ø¯ÙŠÙ…Ø©ØŒ ÙˆÙ‡Ùˆ ÙŠØªÙ…ØªØ¹ Ø¨Ø¬Ø°Ø¨ Ø³ÙŠØ§Ø­ÙŠ ÙƒØ¨ÙŠØ± Ø¨Ø§Ù„Ù†Ø³Ø¨Ø© Ù„Ø²ÙˆØ§Ø± Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© ÙˆÙ…ØµØ± Ø¨Ø´ÙƒÙ„ Ø¹Ø§Ù…. ÙŠØªÙ…ÙŠØ² Ø¨ÙˆØ¬ÙˆØ¯ Ø¨Ø§Ø²Ø§Ø±Ø§Øª ÙˆÙ…Ø­Ù„Ø§Øª ÙˆÙ…Ø·Ø§Ø¹Ù… Ø´Ø¹Ø¨ÙŠØ©ØŒ ÙƒÙ…Ø§ ÙŠØªÙ…ÙŠØ² Ø¨ÙƒØ«Ø±Ø© Ø£Ø¹Ø¯Ø§Ø¯ Ø§Ù„Ø³ÙŠØ§Ø­ ÙˆØ§Ø¹ØªÙŠØ§Ø¯ Ø³ÙƒØ§Ù†Ù‡ Ø¹Ù„ÙŠÙ‡Ù….\r\nØ®Ø§Ù† Ø§Ù„Ø®Ù„ÙŠÙ„ÙŠ ÙˆØ§Ø­Ø¯ Ù…Ù† Ø£Ø¹Ø±Ù‚ Ø£Ø³ÙˆØ§Ù‚ Ø§Ù„Ø´Ø±Ù‚ØŒ ÙŠØ²ÙŠØ¯ Ø¹Ù…Ø±Ù‡ Ø¹Ù† 600 Ø¹Ø§Ù…ØŒ ÙˆÙ…Ø§ Ø²Ø§Ù„ Ù…Ø¹Ù…Ø§Ø±Ù‡ Ø§Ù„Ø£ØµÙŠÙ„ Ø¨Ø§Ù‚ÙŠØ§Ù‹ Ø¹Ù„Ù‰ Ø­Ø§Ù„Ù‡ Ù…Ù†Ø° Ø¹ØµØ± Ø§Ù„Ù…Ù…Ø§Ù„ÙŠÙƒ ÙˆØ­ØªÙ‰ Ø§Ù„Ø¢Ù†. ÙˆÙŠØ¹ØªØ¨Ø± Ù…Ù† Ø§ÙØ¶Ù„ Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©'),
(22, 3, 'Ø¨Ø±Ø¬ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©', 'images/cairo-tower.jpg', '50.00', 'Ø¨Ø±Ø¬ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© ÙŠÙ‚Ø¹ ÙÙŠ Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© Ø§Ù„Ù…ØµØ±ÙŠØ© ØŒ ØªÙ… Ø¨Ù†Ø§Ø¤Ù‡ Ø¨ÙŠÙ† Ø¹Ø§Ù…ÙŠ 1956 Ùˆ 1961 Ù…Ù† Ø§Ù„Ø®Ø±Ø³Ø§Ù†Ø© Ø§Ù„Ù…Ø³Ù„Ø­Ø© Ø¹Ù„Ù‰ ØªØµÙ…ÙŠÙ… Ø²Ù‡Ø±Ø© Ø§Ù„Ù„ÙˆØªØ³ Ø§Ù„Ù…ØµØ±ÙŠØ©ØŒ Ù…Ù† ØªØµÙ…ÙŠÙ… Ø§Ù„Ù…Ù‡Ù†Ø¯Ø³ Ù†Ø¹ÙˆÙ… Ø´Ø¨ÙŠØ¨ØŒ ÙˆÙŠÙ‚Ø¹ ÙÙŠ Ù‚Ù„Ø¨ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© Ø¹Ù„Ù‰ Ø¬Ø²ÙŠØ±Ø© Ø§Ù„Ø²Ù…Ø§Ù„Ùƒ Ø¨Ù†Ù‡Ø± Ø§Ù„Ù†ÙŠÙ„.\r\nÙŠØµÙ„ Ø§Ø±ØªÙØ§Ø¹Ù‡ Ø¥Ù„Ù‰ 187 Ù…ØªØ±Ø§Ù‹ ÙˆÙ‡Ùˆ Ø£Ø¹Ù„Ù‰ Ù…Ù† Ø§Ù„Ù‡Ø±Ù… Ø§Ù„Ø£ÙƒØ¨Ø± Ø¨Ø§Ù„Ø¬ÙŠØ²Ø© Ø¨Ø­ÙˆØ§Ù„ÙŠ 43 Ù…ØªØ±Ø§ØŒ Ø­ÙŠØ« ÙŠØ¹Ø¯ Ù…Ù† Ø§Ù‡Ù… Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©'),
(23, 3, 'Ù‚ØµØ± Ø¹Ø§Ø¨Ø¯ÙŠÙ†', 'images/abdeen-palace.jpg', '99.99', 'ÙŠØ¹ØªØ¨Ø± Ù‚ØµØ± Ø¹Ø§Ø¨Ø¯ÙŠÙ† Abdeen Palace ÙÙŠ Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© Ù…Ù† Ø£Ø´Ù‡Ø± Ø§Ù„Ù‚ØµÙˆØ± Ø§Ù„Ù…ØµØ±ÙŠØ© Ø§Ù„ØªÙŠ Ø´ÙŠØ¯Øª Ø®Ù„Ø§Ù„ Ø­ÙƒÙ… Ø£Ø³Ø±Ø© Ù…Ø­Ù…Ø¯ Ø¹Ù„ÙŠ Ø¨Ø§Ø´Ø§ Ù„Ù…ØµØ± Ø­ÙŠØ« ÙƒØ§Ù† Ù…Ù‚Ø±Ø§Ù‹ Ù„Ù„Ø­ÙƒÙ… â€Ù…Ù† Ø§Ù„Ø¹Ø§Ù… 1872 Ø­ØªÙ‰ Ø§Ù„Ø¹Ø§Ù… 1952ØŒ ÙˆØ´Ù‡Ø¯ Ø§Ù„ÙƒØ«ÙŠØ± Ù…Ù† Ø§Ù„Ø£Ø­Ø¯Ø§Ø« Ù…Ù†Ø° Ø§Ù„Ø¹Ù‡Ø¯ Ø§Ù„Ù…Ù„ÙƒÙŠ ØŒÙˆØ­ØªÙ‰ Ù†Ø´Ø£Ø© Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© Ø§Ù„Ø­Ø¯ÙŠØ«Ø©.\r\nÙŠØ¹Ø¯ Ù‚ØµØ± Ø¹Ø§Ø¨Ø¯ÙŠÙ† ØªØ­ÙØ© â€ØªØ§Ø±ÙŠØ®ÙŠØ© Ù†Ø§Ø¯Ø±Ø© Ø¨Ø§Ù„Ø´ÙƒÙ„ Ø§Ù„Ø°ÙŠ Ø­ÙˆÙ„Ù‡ Ø¥Ù„Ù‰ Ù…ØªØ­Ù ÙŠØ¹ÙƒØ³ Ø§Ù„ÙØ®Ø§Ù…Ø© Ø§Ù„ØªÙŠ Ø´ÙŠØ¯ Ø¨Ù‡Ø§ Ø§Ù„Ù‚ØµØ± ÙˆÙŠØ­Ø±Øµ Ø§Ù„ÙƒØ«ÙŠØ± Ù…Ù† Ø§Ù„Ù…Ù‡ØªÙ…ÙŠÙ† Ø¨Ø§Ù„Ù…ØªØ§Ø­Ù Ø¹Ù„Ù‰ Ø²ÙŠØ§Ø±ØªÙ‡ØŒ Ø­ÙŠØ« ÙŠØ¹ØªØ¨Ø± Ù…Ù† Ø§ÙØ¶Ù„ Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© Ù…ØµØ±'),
(24, 3, 'Ø¯Ø§Ø± Ø§Ù„Ø£ÙˆØ¨Ø±Ø§ Ø§Ù„Ù…ØµØ±ÙŠØ©', 'images/Cairo-Opera-House.jpg', '99.99', 'Ø¯Ø§Ø± Ø§Ù„Ø£ÙˆØ¨Ø±Ø§ Ø§Ù„Ù…ØµØ±ÙŠØ© cairo opera house ØŒ Ø£Ùˆ Ø§Ù„Ù…Ø±ÙƒØ² Ø§Ù„Ø«Ù‚Ø§ÙÙŠ Ø§Ù„Ù‚ÙˆÙ…ÙŠ Ø£ÙØªØªØ­Øª ÙÙŠ Ø¹Ø§Ù… 1988 ÙˆØªÙ‚Ø¹ ÙÙŠ Ù…Ø¨Ù†Ø§Ù‡Ø§ Ø§Ù„Ø¬Ø¯ÙŠØ¯ ÙˆØ§Ù„Ø°ÙŠ ØªÙ… ØªØ´ÙŠÙŠØ¯Ù‡ ÙƒÙ…Ù†Ø­Ø© Ù…Ù† Ø§Ù„Ø­ÙƒÙˆÙ…Ø© Ø§Ù„ÙŠØ§Ø¨Ø§Ù†ÙŠØ© Ù„Ù†Ø¸ÙŠØ±ØªÙ‡Ø§ Ø§Ù„Ù…ØµØ±ÙŠØ© Ø¨Ø£Ø±Ø¶ Ø§Ù„Ø¬Ø²ÙŠØ±Ø© ÙÙŠ Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©'),
(25, 3, 'Ù‚ØµØ± Ø§Ù„Ø¨Ø§Ø±ÙˆÙ†', 'images/Baron-Empain-Palace-2.jpg', '99.99', 'Ù‚ØµØ± Ø§Ù„Ø¨Ø§Ø±ÙˆÙ† Ø¨Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© Baron Empain Palace Ù‡Ùˆ ØªØ­ÙØ© Ù…Ø¹Ù…Ø§Ø±ÙŠØ© ÙØ±ÙŠØ¯Ø© Ù…Ù† Ù†ÙˆØ¹Ù‡Ø§ ÙÙŠ Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© ØŒ Ø´ÙŠØ¯Ù‡ Ø§Ù„Ù…Ù„ÙŠÙˆÙ†ÙŠØ± Ø§Ù„Ø¨Ù„Ø¬ÙŠÙƒÙŠ Ø§Ù„Ø¨Ø§Ø±ÙˆÙ† Ø§Ø¯ÙˆØ§Ø±ØŒ ÙˆØ§Ù„Ø°ÙŠ Ø¬Ø§Ø¡ Ø¥Ù„Ù‰ Ù…ØµØ± Ù…Ù† Ø§Ù„Ù‡Ù†Ø¯ ÙÙŠ Ù†Ù‡Ø§ÙŠØ© Ø§Ù„Ù‚Ø±Ù† Ø§Ù„ØªØ§Ø³Ø¹ Ø¹Ø´Ø± Ø¨Ø¹Ø¯ ÙˆÙ‚Øª Ù‚Ù„ÙŠÙ„ Ù…Ù† Ø§ÙØªØªØ§Ø­ Ù‚Ù†Ø§Ø© Ø§Ù„Ø³ÙˆÙŠØ³.\r\nÙŠÙ‚Ø¹ Ø§Ù„Ù‚ØµØ± ÙÙŠ Ù‚Ù„Ø¨ Ù…Ù†Ø·Ù‚Ø© Ù…ØµØ± Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø© Ø¨Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©ØŒ ØªØ­Ø¯ÙŠØ¯Ø§Ù‹ ÙÙŠ Ø´Ø§Ø±Ø¹ Ø§Ù„Ø¹Ø±ÙˆØ¨Ø© Ø¹Ù„Ù‰ Ø§Ù„Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠ Ø§Ù„Ù…Ø¤Ø¯ÙŠ Ø§Ù„Ù‰ Ù…Ø·Ø§Ø± Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© Ø§Ù„Ø¯ÙˆÙ„ÙŠ. ÙˆÙŠØ¹ØªØ¨Ø± Ù…Ù† Ø§Ø´Ù‡Ø± Ø§Ù„Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­ÙŠØ© ÙÙŠ Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©'),
(26, 3, 'Ù…Ø¬Ù…Ø¹ Ø³ÙŠØªÙŠ Ø³ØªØ§Ø±Ø²', 'images/city-star-mall.jpg', '0.00', 'Ù…ÙˆÙ„ Ø³ÙŠØªÙ‰ Ø³ØªØ§Ø±Ø² ÙÙŠ Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© Ù‡Ùˆ Ù…Ø±ÙƒØ² ØªØ¬Ø§Ø±ÙŠ Ø£ÙØªØªØ­ ÙÙŠ Ø¯ÙŠØ³Ù…Ø¨Ø± Ø¹Ø§Ù… 2004 ÙŠÙ‚Ø¹ ÙÙŠ Ù…Ø¯ÙŠÙ†Ø© Ù†ØµØ± ÙˆÙ‡Ùˆ ÙŠØ¹ØªØ¨Ø± Ø£ÙˆÙ„ Ù…Ø´Ø±ÙˆØ¹ Ù„Ù„ØªÙ†Ù…ÙŠØ© Ø§Ù„Ù…ØªÙƒØ§Ù…Ù„Ø© Ù…Ù† Ù†ÙˆØ¹Ù‡ ÙÙŠ Ø§Ù„Ø´Ø±Ù‚ Ø§Ù„Ø£ÙˆØ³Ø· ÙˆØ£ÙØ±ÙŠÙ‚ÙŠØ§ ÙˆÙ‡Ùˆ Ø£ÙƒØ¨Ø± Ù…Ø±ÙƒØ² ØªØ¬Ø§Ø±ÙŠ ÙÙŠ Ù…ØµØ±.\r\nØ·Ø±Ø§Ø²Ù‡ ÙŠØ­Ø§ÙƒÙŠ Ø§Ù„Ø­Ø¶Ø§Ø±Ø© Ø§Ù„Ù…ØµØ±ÙŠØ© Ø§Ù„Ù‚Ø¯ÙŠÙ…Ø© Ø­ÙŠØ« ÙŠØªÙƒÙˆÙ† Ù…Ù† Ø«Ù„Ø§Ø«Ø© Ø£Ù‡Ø±Ø§Ù…Ø§Øª Ø²Ø¬Ø§Ø¬ÙŠØ© Ø¬Ø²Ø¦ÙŠØ§Ù‹ ÙŠØ­ÙŠØ· Ø¨Ù‡Ø§ 11 Ø¨Ø±Ø¬ Ø¨Ø§Ù„Ø§Ø¶Ø§ÙØ© Ø§Ù„Ù‰ Ù…Ø¨Ù†Ù‰ ÙƒØ¨ÙŠØ± Ù…Ù†ÙØµÙ„ Ù‡Ùˆ Ø¹Ø¨Ø§Ø±Ø© Ø¹Ù† Ù…Ø¬Ù…Ø¹ Ù…Ø­Ù„Ø§Øª Ù„Ù„ØªØ³ÙˆÙ‚ ÙˆÙ†Ù„Ø§Ø­Ø¸ Ø§Ù† Ø§Ù„Ø¨Ù†ÙŠØ© Ø§Ù„ØªØ­ØªÙŠØ© Ù„Ù„Ù…ÙˆÙ„ Ù…ØªØ·ÙˆØ±Ø© ÙˆÙ…Ø¬Ù‡Ø²Ø© Ø¨Ø´Ø¨ÙƒØ§Øª ÙˆØ³Ø§Ø¦Ø· Ø§Ø¹Ù„Ø§Ù… Ù…ØªØ¹Ø¯Ø¯Ø© ÙˆØ®Ø¯Ù…Ø§Øª Ø§Ù„Ù‰ Ø¬Ø§Ù†Ø¨ 6000 Ù…Ø±ÙÙ‚ Ù„Ù„Ù…Ø±ÙƒØ¨Ø§Øª Ù„Ø³Ù‡ÙˆÙ„Ø© ÙˆÙ‚ÙˆÙ Ø§Ù„Ø³ÙŠØ§Ø±Ø§Øª ÙÙŠ Ø§Ù„Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ù…ØºÙ„Ù‚Ø©.'),
(27, 4, 'Ù…ØªØ­Ù Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© Ø§Ù„Ù‚ÙˆÙ…ÙŠ', 'images/alexandria-national-museum.jpg', '99.99', 'Ù…ØªØ­Ù Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© Ø§Ù„Ù‚ÙˆÙ…ÙŠ Alexandria National Museum Ù‡Ùˆ Ø£Ø­Ø¯ Ø£Ù‡Ù… Ù…ØªØ§Ø­Ù Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© Ù…ØµØ± ØŒÙŠØ­ØªÙˆÙŠ Ø§Ù„Ù…ØªØ­Ù Ø¹Ù„Ù‰ Ù…Ø§ÙŠØ²ÙŠØ¯ Ø¹Ù† 1800 Ù‚Ø·Ø¹Ø© Ø£Ø«Ø±ÙŠØ© ØªÙ…Ø«Ù„ Ù…Ø¹Ø¸Ù… Ø§Ù„Ø¹ØµÙˆØ± Ø§Ù„ØªÙŠ Ù…Ø±Øª Ø¹Ù„Ù‰ Ø§Ù„Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„ØªÙŠ ØªØ£Ø³Ø³Øª ÙÙŠ Ø§Ù„Ø¹Ø§Ù… 332 Ù‚.Ù…\r\nÙŠÙ‚Ø¹ Ø¹Ù„Ù‰ Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø­Ø±ÙŠØ©ØŒ ÙˆÙ…Ø¨Ù†Ù‰ Ø§Ù„Ù…ØªØ­Ù Ù‡Ùˆ Ø¹Ø¨Ø§Ø±Ø© Ø¹Ù† Ù‚ØµØ± Ø³Ø§Ø¨Ù‚ Ù„Ø§Ø­Ø¯Ù‰ ØªØ¬Ø§Ø± Ø§Ù„Ø§Ø®Ø´Ø§Ø¨ Ø§Ù„Ø£Ø«Ø±ÙŠØ§Ø¡ ÙÙŠ Ø§Ù„Ù…Ø¯ÙŠÙ†Ø© ÙˆÙ‡Ùˆ Ø£Ø³Ø¹Ø¯ Ø¨Ø§Ø³ÙŠÙ„ÙŠ Ø§Ù„Ø°ÙŠ Ù‚Ø§Ù… Ø¨Ø§Ù†Ø´Ø§Ø¦Ù‡ Ø¹Ù„Ù‰ Ø·Ø±Ø§Ø² Ø§Ù„Ù…Ø¹Ù…Ø§Ø± Ø§Ù„Ø§ÙŠØ·Ø§Ù„ÙŠØŒ ÙˆÙŠØ¹ØªØ¨Ø± Ù…Ù† Ø§Ø´Ù‡Ø± Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ©'),
(28, 4, 'Ø§Ù„Ù…Ø³Ø±Ø­ Ø§Ù„Ø±ÙˆÙ…Ø§Ù†ÙŠ', 'images/Roman-Amphitheatre.jpg', '15.00', '\r\nØ§Ù„Ù…Ø³Ø±Ø­ Ø§Ù„Ø±ÙˆÙ…Ø§Ù†ÙŠ Ø¨Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© Roman Amphitheatre ØŒ ÙŠÙ‚Ø¹ Ø§Ù„Ù…Ø³Ø±Ø­ ÙÙŠ ÙƒÙˆÙ… Ø§Ù„Ø¯ÙƒØ©ØŒ ÙˆÙ‡Ùˆ Ø£Ø­Ø¯ Ø¢Ø«Ø§Ø± Ø§Ù„Ø¹ØµØ± Ø§Ù„Ø±ÙˆÙ…Ø§Ù†ÙŠ ÙˆÙ‚Ø¯ ØªÙ… Ø¨Ù†Ø§Ø¡Ù‡ ÙÙŠ Ø¨Ø¯Ø§ÙŠØ© Ø§Ù„Ù‚Ø±Ù† Ø§Ù„Ø±Ø§Ø¨Ø¹ Ù…ÙŠÙ„Ø§Ø¯ÙŠ.\r\nÙˆÙŠØ¹ØªØ¨Ø± Ø§Ù„Ù…Ø³Ø±Ø­ Ø§Ù„Ø±ÙˆÙ…Ø§Ù†ÙŠ Ø§Ù„Ø¢Ù† Ù…Ù† Ø§Ù‡Ù… Ø§Ù„Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­ÙŠØ© ÙÙŠ Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ©'),
(29, 4, 'Ù…ÙˆÙ„ Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© Ø³ÙŠØªÙŠ Ø³Ù†ØªØ±', 'images/City-Centre-Alexandria.jpg', '0.00', 'ÙŠØ¹Ø¯ Ù…ÙˆÙ„ Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© Ø³ÙŠØªÙŠ Ø³Ù†ØªØ± City Centre Alexandria Ø§Ø­Ø¯ Ø§Ø´Ù‡Ø± Ø§Ù„Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­ÙŠØ© ÙÙŠ Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© ÙˆÙŠØªÙ…ÙŠØ² Ø¨Ù…ÙˆÙ‚Ø¹ Ø±Ø§Ø¦Ø¹ Ø¹Ù„Ù‰ Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© Ø§Ù„Ù‚Ø§Ù‡Ø±Ø© Ø§Ù„ØµØ­Ø±Ø§ÙˆÙŠ ÙˆÙŠØ¨Ø¹Ø¯ Ù…Ø³Ø§ÙØ© Ù‚Ø±ÙŠØ¨Ø© Ø¹Ù† ÙˆØ³Ø· Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© ØŒ ØªÙ… Ø§ÙØªØªØ§Ø­Ù‡ ÙÙŠ Ø¹Ø§Ù… 2003 Ù„ÙŠØ¶Ù… Ø§ÙƒØ«Ø± Ù…Ù† 150 Ù…ØªØ¬Ø±Ø§Ù‹ Ù„Ø¨ÙŠØ¹ Ø§Ù„Ø¹Ø¯ÙŠØ¯ Ù…Ù† Ø§Ù„Ù…Ù†ØªØ¬Ø§Øª Ø§Ù„Ù…ØªÙ†ÙˆØ¹Ø© Ù…Ù† Ø§Ù„Ù…Ø§Ø±ÙƒØ§Øª Ø§Ù„Ø¹Ø§Ù„Ù…ÙŠØ©.'),
(30, 4, 'Ù‚ØµØ± Ø§Ù„Ù…Ù†ØªØ²Ù‡', 'images/montaza-palace.jpg', '10.00', 'Ù‚ØµØ± Ø§Ù„Ù…Ù†ØªØ²Ù‡ Ø¨Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© montaza palace Ù…Ø§Ø¨ÙŠÙ† Ø§Ù„Ø±ÙˆØ¹Ø© ÙˆØ§Ù„Ø¬Ù…Ø§Ù„ Ø§Ù„Ø·Ø¨ÙŠØ¹ÙŠ ÙˆØ§Ù„Ø­Ø¯Ø§Ø¦Ù‚ Ø§Ù„Ø®Ù„Ø§Ø¨Ø© ÙˆØ§Ù„Ø´ÙˆØ§Ø·Ø¦ Ø§Ù„Ø³Ø§Ø­Ø±Ø© ÙŠÙ‚Ø¹ Ù‚ØµØ± Ø§Ù„Ù…Ù†ØªØ²Ù‡ ÙÙŠ Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© Ù…ØµØ± .\r\nÙ‚Ø§Ù… Ø¨ØªØ´ÙŠÙŠØ¯ Ø§Ù„Ù…Ù†ØªØ²Ù‡ Ù…Ø­Ù…Ø¯ Ø¹Ù„ÙŠ Ø¨Ø§Ø´Ø§ Ù„ÙŠÙƒÙˆÙ† Ù…Ù‚Ø±Ø§Ù‹ ØµÙŠÙÙŠØ§Ù‹ Ù„Ø§Ø³Ø±ØªÙ‡ Ù„Ù‚Ø¶Ø§Ø¡ Ø£Ø´Ù‡Ø± Ø§Ù„ØµÙŠÙ Ø§Ù„Ø­Ø§Ø±Ø© ÙˆØ§Ù„Ø°ÙŠ ÙŠØ¹ØªØ¨Ø± Ø§Ù„Ø¢Ù† Ø£Ø­Ø¯ Ø±Ù…ÙˆØ² Ø§Ù„Ø¬Ù…Ø§Ù„ Ø§Ù„Ù†Ø§Ø¯Ø± ÙÙŠ Ø§Ù„Ø¹Ø§Ù„Ù….'),
(31, 4, 'Ù…ØªØ­Ù Ø§Ù„Ø£Ø­ÙŠØ§Ø¡ Ø§Ù„Ù…Ø§Ø¦ÙŠØ©', 'images/Alexandria-Aquarium.jpg', '15.00', 'Ù…ØªØ­Ù Ø§Ù„Ù…Ø¬ÙˆÙ‡Ø±Ø§Øª Ø§Ù„Ù…Ù„ÙƒÙŠØ© ÙˆÙ‡Ùˆ Ù…ØªØ­Ù ÙŠØ¹Ø±Ø¶ Ù…Ø¬ÙˆÙ‡Ø±Ø§Øª Ø§Ù„Ø£Ø³Ø± Ø§Ù„Ù…Ø§Ù„ÙƒØ© Ø§Ù„ØªÙŠ Ø­ÙƒÙ…Øª Ù…ØµØ±ØŒ ÙˆÙŠÙ‚Ø¹ ÙÙŠ Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ø¥Ø³ÙƒÙ†Ø¯Ø±ÙŠØ©.\r\nØ´ÙŠØ¯ Ø§Ù„Ù‚ØµØ± Ø¹Ø§Ù… 1919 ÙÙŠ Ù…Ù†Ø·Ù‚Ø© Ø²ÙŠØ²ÙŠÙ†ÙŠØ§ ÙˆÙŠØ¹ØªØ¨Ø± ØªØ­ÙØ© Ù…Ø¹Ù…Ø§Ø±ÙŠØ© ÙØ±ÙŠØ¯Ø© Ù…Ù† Ù†ÙˆØ¹Ù‡Ø§ØŒ ÙˆÙ…Ù† Ø§ÙØ¶Ù„ Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­Ø© ÙÙŠ Ù…ØµØ±\r\nÙˆØªØ¨Ù„Øº Ù…Ø³Ø§Ø­ØªÙ‡ 4185 Ù…ØªØ±Ø§Ù‹ Ù…Ø±Ø¨Ø¹Ø§ ÙˆÙƒØ§Ù† ÙŠØ¤ÙˆÙ„ Ù„Ù„Ø£Ù…ÙŠØ±Ø© ÙØ§Ø·Ù…Ø© Ø§Ù„Ø²Ù‡Ø±Ø§Ø¡ Ø¥Ø­Ø¯Ù‰ Ø£Ù…ÙŠØ±Ø§Øª Ø§Ù„Ø£Ø³Ø±Ø© Ø§Ù„Ù…Ø§Ù„ÙƒØ©ØŒ Ù…Ù…Ø§ Ø¬Ø¹Ù„Ù‡ Ù…Ù† Ø§Ù‡Ù… Ù…ØªØ§Ø­Ù Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© Ø§Ù„Ø¹Ø±ÙŠÙ‚Ø©.'),
(32, 4, 'Ù‚Ù„Ø¹Ø© Ù‚Ø§ÙŠØªØ¨Ø§ÙŠ', 'images/kayitbay-castle.jpg', '40.00', 'ØªØ¹Ø¯ Ù‚Ù„Ø¹Ø© Ù‚Ø§ÙŠØªØ¨Ø§ÙŠ kayitbay castle Ù…Ù† Ø§Ù‡Ù… Ø§Ù„Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­ÙŠØ© ÙÙŠ Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© ØŒ Ø­ÙŠØ« ØªÙ‚Ø¹ ÙÙŠ Ù†Ù‡Ø§ÙŠØ© Ø¬Ø²ÙŠØ±Ø© ÙØ§Ø±ÙˆØ³ Ø¨Ø£Ù‚ØµÙ‰ ØºØ±Ø¨ Ù…Ø¯ÙŠÙ†Ø© Ø§Ù„Ø¥Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© ÙˆÙŠØ­ÙŠØ· Ø¨Ù‡Ø§ Ø§Ù„Ø¨Ø­Ø± Ù…Ù† Ø«Ù„Ø§Ø« Ø¬Ù‡Ø§Øª Ù…Ù…Ø§ ÙŠØ¹Ø·ÙŠÙ‡Ø§ Ø±ÙˆØ¹Ø© ÙˆØ¬Ù…Ø§Ù„Ø§Ù‹ Ø®ÙŠØ§Ù„ÙŠØ§Ù‹ Ù„ØªÙƒÙˆÙ† Ø§Ø³Ø·ÙˆØ±Ø© Ø¹Ø±ÙˆØ³ Ø§Ù„Ø¨Ø­Ø± Ø§Ù„Ø£Ø¨ÙŠØ¶ Ø§Ù„Ù…ØªÙˆØ³Ø·.\r\nÙŠØ¹ÙˆØ¯ Ø¨Ù†Ø§Ø¡ Ø§Ù„Ù‚Ù„Ø¹Ø© Ø§Ù„Ù‰ Ø¹Ø§Ù… 884 Ù‡Ù€ / 1477 Ù…  ÙˆØªØ¹ØªØ¨Ø± Ø§Ø­Ø¯ Ø§Ù‚Ø¯Ù… Ø§Ù„Ø§Ù…Ø§ÙƒÙ† Ø§Ù„Ø³ÙŠØ§Ø­ÙŠØ© ÙÙŠ Ø§Ù„Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ© ÙƒÙ…Ø§ Ø§Ù†Ù‡Ø§ Ø§Ø­Ø¯Ù‰ Ø¹Ø¬Ø§Ø¦Ø¨ Ø§Ù„Ø¯Ù†ÙŠØ§ Ø§Ù„Ø³Ø¨Ø¹Ø©.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
