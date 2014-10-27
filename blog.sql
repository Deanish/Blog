-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2014 at 05:49 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `topic_id`, `user_id`, `body`, `created`, `modified`) VALUES
(3, 4, 0, 'New Post', '2014-10-27 07:52:03', '2014-10-27 07:52:03'),
(4, 2, 0, 'Topic ID 2', '2014-10-27 08:10:26', '2014-10-27 08:10:26'),
(5, 4, 0, 'Topic ID 4', '2014-10-27 08:13:18', '2014-10-27 08:13:18'),
(6, 2, 0, '2nd Post', '2014-10-27 08:57:44', '2014-10-27 08:57:44'),
(7, 18, 7, 'Post with user id', '2014-10-27 14:16:58', '2014-10-27 14:16:58'),
(8, 18, 7, 'aaaaaaaaaaaaaa', '2014-10-27 17:39:53', '2014-10-27 17:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `visible` tinyint(2) NOT NULL COMMENT '1 for hidden, 2 for visible',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `user_id`, `title`, `visible`, `created`, `modified`) VALUES
(15, 0, 'adasfdgfdg', 1, '2014-10-27 13:28:47', '2014-10-27 13:53:33'),
(16, 0, '231232432', 1, '2014-10-27 13:28:55', '2014-10-27 13:53:38'),
(17, 0, 'ddddddddddd', 2, '2014-10-27 13:52:22', '2014-10-27 13:52:22'),
(18, 2, 'user id', 1, '2014-10-27 14:11:37', '2014-10-27 14:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `role` tinyint(2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `role`, `created`, `modified`) VALUES
(2, 'admin', 'b642224a39f2e70a30c22a2ddc24fa290197c936', 'Admin', 2, '2014-10-27 09:22:06', '2014-10-27 09:22:06'),
(3, 'test', '195dd75f2a6d9e4e46c2878082c1c7712b7a2e4d', 'Test', 1, '2014-10-27 09:43:54', '2014-10-27 09:43:54'),
(7, 'a', '6bcb26e68cc7a8d18b9222d0974e49dcb3e6fd1c', 'a', 1, '2014-10-27 12:20:00', '2014-10-27 12:20:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
