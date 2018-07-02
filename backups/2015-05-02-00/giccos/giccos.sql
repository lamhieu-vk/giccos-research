-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2015 at 05:13 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `giccos`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertising_actions`
--

CREATE TABLE IF NOT EXISTS `advertising_actions` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `advertising.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(10) NOT NULL,
  `action` char(10) NOT NULL,
  `location.hostname` varchar(40) DEFAULT NULL,
  `location.port` varchar(40) DEFAULT NULL,
  `location.protocol` char(10) DEFAULT NULL,
  `location.pathname` varchar(255) DEFAULT NULL,
  `location.href` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `advertising_id`
--

CREATE TABLE IF NOT EXISTS `advertising_id` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `type` char(10) NOT NULL,
  `status` int(1) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `expires` int(11) NOT NULL,
  `version` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `analysis_faces`
--

CREATE TABLE IF NOT EXISTS `analysis_faces` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` char(10) NOT NULL,
  `tag` varchar(40) NOT NULL,
  `thumbnail` char(10) NOT NULL,
  `faces` varchar(20) NOT NULL,
  `confidence` char(6) NOT NULL,
  `eye.left.x` char(6) NOT NULL,
  `eye.left.y` char(6) NOT NULL,
  `eye.right.x` char(6) NOT NULL,
  `eye.right.y` char(6) NOT NULL,
  `nose.x` char(6) NOT NULL,
  `nose.y` char(6) NOT NULL,
  `mouth.tl.x` char(6) NOT NULL,
  `mouth.tl.y` char(6) NOT NULL,
  `mouth.bl.x` char(6) NOT NULL,
  `mouth.bl.y` char(6) NOT NULL,
  `mouth.tr.x` char(6) NOT NULL,
  `mouth.tr.y` char(6) NOT NULL,
  `mouth.br.x` char(6) NOT NULL,
  `mouth.br.y` char(6) NOT NULL,
  `pose.roll` char(6) NOT NULL,
  `pose.yaw` char(6) NOT NULL,
  `pose.pitch` char(6) NOT NULL,
  `race.text` varchar(20) NOT NULL,
  `race.value` char(6) NOT NULL,
  `quality.brn` char(6) NOT NULL,
  `quality.shn` char(6) NOT NULL,
  `emotion.oe.text` varchar(20) NOT NULL,
  `emotion.oe.value` char(6) NOT NULL,
  `emotion.to.text` varchar(20) NOT NULL,
  `emotion.to.value` char(6) NOT NULL,
  `emotion.te.text` varchar(20) NOT NULL,
  `emotion.te.value` char(6) NOT NULL,
  `age` char(6) NOT NULL,
  `smile` char(6) NOT NULL,
  `glasses` char(6) NOT NULL,
  `sunglasses` char(6) NOT NULL,
  `eye_closed` char(6) NOT NULL,
  `mouth_open_wide` char(6) NOT NULL,
  `beauty` char(6) NOT NULL,
  `sex` char(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analysis_faces`
--

INSERT INTO `analysis_faces` (`id`, `time`, `updated`, `token`, `display`, `tag`, `thumbnail`, `faces`, `confidence`, `eye.left.x`, `eye.left.y`, `eye.right.x`, `eye.right.y`, `nose.x`, `nose.y`, `mouth.tl.x`, `mouth.tl.y`, `mouth.bl.x`, `mouth.bl.y`, `mouth.tr.x`, `mouth.tr.y`, `mouth.br.x`, `mouth.br.y`, `pose.roll`, `pose.yaw`, `pose.pitch`, `race.text`, `race.value`, `quality.brn`, `quality.shn`, `emotion.oe.text`, `emotion.oe.value`, `emotion.to.text`, `emotion.to.value`, `emotion.te.text`, `emotion.te.value`, `age`, `smile`, `glasses`, `sunglasses`, `eye_closed`, `mouth_open_wide`, `beauty`, `sex`) VALUES
(9, 1430489614, 1430489614, '4bfcc403', '10736b63', '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '42004592', '7b127898', '0.97', '54.6', '56.3', '99.2', '58', '74.1', '90.7', '54.3', '102', '54.3', '102', '86.9', '103.1', '86.9', '103.1', '1.7', '7.48', '-17.59', 'asian', '0.97', '0.47', '0.5', 'surprised', '0.02', '', '0', '', '0', '21.34', '0.08', '0', '0', '0', '0', '0.9526', '1'),
(10, 1430490094, 1430490094, '5f190565', '817d59c8', '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '15abf5b5', '4feb225a', '0.98', '250', '255', '449', '264.8', '334', '408.7', '247.4', '460.9', '247.4', '460.9', '397.4', '470.5', '397.4', '470.5', '2.37', '6.1', '-17.76', 'asian', '0.98', '0.57', '1', 'confused', '0.02', '', '0', '', '0', '18.67', '0.62', '0', '0', '0', '0', '0.8536', '1');

-- --------------------------------------------------------

--
-- Table structure for table `answers_category`
--

CREATE TABLE IF NOT EXISTS `answers_category` (
  `id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answers_post`
--

CREATE TABLE IF NOT EXISTS `answers_post` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `question` int(1) NOT NULL,
  `is.author` int(1) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answers_rate`
--

CREATE TABLE IF NOT EXISTS `answers_rate` (
`id` int(11) NOT NULL,
  `topic.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `value` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answers_topic`
--

CREATE TABLE IF NOT EXISTS `answers_topic` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers_topic`
--

INSERT INTO `answers_topic` (`id`, `time`, `language`, `category`, `title`) VALUES
(28, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/b1fb8e18.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -vf scale=640x360,pad=640:480:0:60:black D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/b1fb8e18.png 2>&1'),
(29, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/f9c8b212.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -s 640x360 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/f9c8b212.png 2>&1'),
(30, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/65166e79.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/65166e79.png 2>&1'),
(31, 1, '1', 1, 'ffmpeg -itsoffset -15  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/9bb0e980.wmv -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/9bb0e980.png 2>&1'),
(32, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/ebd94d9a.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/ebd94d9a.png 2>&1'),
(33, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/f87a9347.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/f87a9347.png 2>&1');

-- --------------------------------------------------------

--
-- Table structure for table `cited`
--

CREATE TABLE IF NOT EXISTS `cited` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `author` varchar(40) NOT NULL,
  `quote` varchar(255) NOT NULL,
  `photos.id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `time`, `user.id`, `guy.id`) VALUES
(7, 1, 1, 5),
(8, 1, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `friends_request`
--

CREATE TABLE IF NOT EXISTS `friends_request` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
`id` int(11) NOT NULL,
  `language` varchar(40) NOT NULL,
  `code` varchar(2) NOT NULL,
  `note` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `code`, `note`) VALUES
(1, 'english', 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages_codes`
--

CREATE TABLE IF NOT EXISTS `languages_codes` (
`id` int(11) NOT NULL,
  `country` varchar(2) NOT NULL,
  `code` char(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages_codes`
--

INSERT INTO `languages_codes` (`id`, `country`, `code`) VALUES
(1, 'vn', 'vi'),
(2, 'us', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `languages_values`
--

CREATE TABLE IF NOT EXISTS `languages_values` (
`id` int(11) NOT NULL,
  `language` varchar(4) NOT NULL,
  `code` text NOT NULL,
  `text` text NOT NULL,
  `short` char(10) DEFAULT 'false'
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages_values`
--

INSERT INTO `languages_values` (`id`, `language`, `code`, `text`, `short`) VALUES
(1, 'en', 'pages_feed.title', 'general :: feed :: giccos', 'false'),
(2, 'en', 'a_few_seconds', 'a few seconds', 'false'),
(3, 'en', 'minutes_ago', 'minutes ago', 'false'),
(4, 'en', 'hours_ago', 'hours ago', 'false'),
(5, 'en', 'days_ago', 'days ago', 'false'),
(6, 'en', 'months_ago', 'months ago', 'false'),
(7, 'en', 'years_ago', 'years ago', 'false'),
(8, 'en', 'weeks_ago', 'weeks ago', 'false'),
(9, 'en', 'private_1_text', 'only me', 'false'),
(10, 'en', 'private_1_tip', 'share only me', 'false'),
(11, 'en', 'private_2_text', 'friends', 'false'),
(12, 'en', 'private_2_tip', 'share with friends', 'false'),
(13, 'en', 'private_3_text', 'all friends', 'false'),
(14, 'en', 'private_3_tip', 'share with all friends', 'false'),
(15, 'en', 'private_4_text', 'public', 'false'),
(16, 'en', 'private_4_tip', 'share public', 'false'),
(17, 'en', 'favorite', 'favorite', 'false'),
(18, 'en', 'unfavorite', 'unfavorite', 'false'),
(19, 'en', 'invite', 'invite', 'false'),
(20, 'en', 'share', 'share', 'false'),
(21, 'en', 'write_a_comment', 'type a comment...', 'false'),
(22, 'en', 'comment', 'comment', 'false'),
(23, 'en', 'comments', 'comments', 'false'),
(24, 'en', 'comment(s)', 'comment(s)', 'false'),
(25, 'en', 'show_more_comments', 'show more comments', 'false'),
(26, 'en', 'status_null_comment', 'status not a comment', 'false'),
(27, 'en', 'groups', 'groups', 'false'),
(28, 'en', 'hashtags', 'hashtags', 'false'),
(29, 'en', 'messages', 'messages', 'false'),
(30, 'en', 'actions_of_friends', 'actions of friends', 'false'),
(31, 'en', 'status_unlimited_comment', 'status unlimited comment', 'false'),
(32, 'en', 'pages_accounts_login.title', 'login :: accounts :: giccos', 'false'),
(33, 'en', 'giccos_accounts', 'giccos accounts', 'false'),
(34, 'en', 'pages_accounts_login.desc', 'one account for all services', 'false'),
(35, 'en', 'login_to_account', 'login to account', 'false'),
(36, 'en', 'about', 'about', 'false'),
(37, 'en', 'privacy', 'privacy', 'false'),
(38, 'en', 'ads', 'ads', 'false'),
(39, 'en', 'developer', 'developer', 'false'),
(40, 'en', 'developers', 'developers', 'false'),
(41, 'en', 'help', 'help', 'false'),
(42, 'en', 'username', 'username', 'false'),
(43, 'en', 'password', 'password', 'false'),
(44, 'en', 'remember_me_next_time', 'remember me next time', 'false'),
(45, 'en', 'login', 'login', 'false'),
(46, 'en', 'register', 'register', 'false'),
(47, 'en', 'forget_password', 'fotget password', 'false'),
(48, 'en', 'username_regex_tip', 'characters: a-z, A-Z, 0-9, ''.'' or ''_''', 'false'),
(49, 'en', 'password_regex_tip', 'characters: a-z, A-Z, 0-9, ''.'' or ''_''', 'false'),
(50, 'en', 'type_username_or_email', 'type username or email', 'false'),
(51, 'en', 'type_password', 'type password', 'false'),
(52, 'en', 'pages_accounts_register.title', 'register :: accounts :: giccos', 'false'),
(53, 'en', 'pages_accounts_register.desc', 'create a new account for all services', 'false'),
(54, 'en', 'type_your_info', 'type your info', 'false'),
(55, 'en', 'checkbox_agree_terms', 'agree to the terms of use', 'false'),
(56, 'en', 'type_username', 'type username', 'false'),
(57, 'en', 'type_email', 'type email', 'false'),
(58, 'en', 'email', 'email', 'false'),
(59, 'en', 're_password', 'repeat password', 'false'),
(61, 'en', 'firstname', 'firstname', 'false'),
(62, 'en', 'lastname', 'lastname', 'false'),
(63, 'en', 'type_firstname', 'type first name', 'false'),
(64, 'en', 'type_lastname', 'type last name', 'false'),
(65, 'en', 'select_days_of_birth', 'select days of birth', 'false'),
(66, 'en', 'select_months_of_birth', 'select months of birth', 'false'),
(67, 'en', 'select_years_of_years', 'select years of years', 'false'),
(68, 'en', 'days', 'days', 'false'),
(69, 'en', 'months', 'months', 'false'),
(70, 'en', 'years', 'years', 'false'),
(71, 'en', 'phone', 'phone', 'false'),
(72, 'en', 'type_phone', 'type phone', 'false'),
(73, 'en', 'gender', 'gender', 'false'),
(74, 'en', 'select_gender', 'select gender', 'false'),
(75, 'en', 'male', 'male', 'false'),
(76, 'en', 'female', 'female', 'false'),
(77, 'en', 'transmission_error', 'transmission error', 'false'),
(78, 'en', 'please_try_agian', 'please try agian', 'false'),
(79, 'en', 'username_is_invalid', 'username is invalid', 'false'),
(80, 'en', 'password_is_invalid', 'password is invalid', 'false'),
(81, 'en', 'username_is_not_found', 'username is not found', 'false'),
(82, 'en', 'password_is_incorrect', 'password is incorrect', 'false'),
(83, 'en', 'remember_return_is_invalid', 'remember return is invalid', 'false'),
(84, 'en', 'please_refresh_page', 'please refresh page', 'false'),
(85, 'en', 'username_is_already_exists', 'username is already exists', 'false'),
(86, 'en', 'email_is_already_exists', 'email is already exists', 'false'),
(87, 'en', 'name_is_invalid', 'name is invalid', 'false'),
(88, 'en', 'gender_is_invalid', 'gender is invalid', 'false'),
(89, 'en', 'birthday_is_invalid', 'birthday is invalid', 'false'),
(90, 'en', 'agree_return_is_invalid', 'agree return is invalid', 'false'),
(91, 'en', 'agree_is_not_check', 'agree terms of use not selected', 'false'),
(92, 'en', 'email_is_invalid', 'email is invalid', 'false'),
(93, 'en', 'phone_is_invalid', 'phone is invalid', 'false'),
(94, 'en', 'repeat_password_is_not_coincide', 'repeat password is not coincide', 'false'),
(96, 'en', 'input_search_placeholder', 'type name of friends, groups or places ...', 'false'),
(97, 'en', 'ads', 'ads', 'false'),
(98, 'en', 'donors', 'donors', 'false'),
(100, 'en', 'suggest', 'suggest', 'false'),
(102, 'en', 'feed', 'feed', 'false'),
(103, 'en', 'bells', 'bells', 'false'),
(104, 'en', 'sending...', 'sending...', 'false'),
(105, 'en', 'from', 'from', 'false'),
(106, 'en', 'system', 'system', 'false'),
(107, 'en', 'error', 'error', 'false'),
(108, 'en', 'comment_is_not_found', 'comment content is not found', 'false'),
(109, 'en', 'status_id_is_invalid', 'status id is invalid', 'false'),
(110, 'en', 'error_in_the_implementation_process', 'error in the implementation process', 'false'),
(111, 'en', 'action_is_not_allowed', 'action is not allowed', 'false'),
(112, 'en', 'action_have_been_implemented', 'action have been implemented', 'false'),
(113, 'en', 'status_is_not_found', 'status is not found', 'false'),
(114, 'en', 'user_is_not_found', 'user is not found', 'false'),
(115, 'en', 'action_is_invalid', 'action is invalid', 'false'),
(116, 'en', 'not_identified', 'not identified', 'false'),
(117, 'en', 'action_is_being_carried_out', 'action is being carried out', 'false'),
(118, 'en', 'click_to_close', 'click to close', 'false'),
(119, 'en', 'january', 'january', 'false'),
(120, 'en', 'february', 'february', 'false'),
(121, 'en', 'march', 'march', 'false'),
(122, 'en', 'april', 'april', 'false'),
(123, 'en', 'may', 'may', 'false'),
(124, 'en', 'june', 'june', 'false'),
(125, 'en', 'july', 'july', 'false'),
(126, 'en', 'december', 'december', 'false'),
(127, 'en', 'august', 'august', 'false'),
(128, 'en', 'september', 'september', 'false'),
(129, 'en', 'october', 'october', 'false'),
(130, 'en', 'november', 'november', 'false'),
(131, 'en', 'monday', 'monday', 'false'),
(132, 'en', 'tuesday', 'tuesday', 'false'),
(133, 'en', 'wednesday', 'wednesday', 'false'),
(134, 'en', 'thursday', 'thursday', 'false'),
(135, 'en', 'friday', 'friday', 'false'),
(136, 'en', 'saturday', 'saturday', 'false'),
(137, 'en', 'sunday', 'sunday', 'false'),
(138, 'en', 'comment_id_is_invalid', 'comment id is invalid', 'false'),
(139, 'en', 'what_are_you_thinking', 'what are you thinking ?', 'false'),
(140, 'en', 'status', 'status', 'false'),
(141, 'en', 'photos', 'photos', 'false'),
(142, 'en', 'music', 'music', 'false'),
(143, 'en', 'videos', 'videos', 'false'),
(144, 'en', 'quote', 'quote', 'false'),
(145, 'en', 'add_friends', 'add friends', 'false'),
(146, 'en', 'add_places', 'add places', 'false'),
(147, 'en', 'add_thoughts', 'add thoughts', 'false'),
(148, 'en', 'with', 'with', 'false'),
(149, 'en', 'in', 'in', 'false'),
(150, 'en', 'places', 'places', 'false'),
(151, 'en', 'description', 'description', 'false'),
(152, 'en', 'information_about_places', 'information about places', 'false'),
(153, 'en', 'town', 'town', 'false'),
(154, 'en', 'at', 'at', 'false'),
(155, 'en', 'where_are_you', 'where are you ?', 'false'),
(156, 'en', 'please_try_later', 'please try later', 'false'),
(157, 'en', 'you_are_join', 'you are join', 'false'),
(159, 'en', 'you_are_used', 'you are used', 'false'),
(160, 'en', 'top_hashtag', 'top hashtag', 'false'),
(161, 'en', 'edited_at', 'edited at', 'false'),
(162, 'en', 'posted_at', 'posted at', 'false'),
(165, 'en', 'who_with_you', 'who with you ?', 'false'),
(166, 'en', 'what_you_feel', 'what you feel ?', 'false'),
(167, 'en', '[feel]happy', 'happy', 'false'),
(168, 'en', '[feel]so_happy', 'so happy', 'false'),
(169, 'en', '[feel]great', 'great', 'false'),
(170, 'en', '[feel]fine', 'fine', 'false'),
(171, 'en', '[feel]inquisitive', 'inquisitive', 'false'),
(172, 'en', '[feel]disturb', 'disturb', 'false'),
(173, 'en', '[feel]despair', 'despair', 'false'),
(174, 'en', '[feel]angry', 'angry', 'false'),
(175, 'en', '[feel]proud', 'proud', 'false'),
(176, 'en', '[feel]empty', 'empty', 'false'),
(177, 'en', '[feel]disgusting', 'disgusting', 'false'),
(178, 'en', '[feel]beneath', 'beneath', 'false'),
(179, 'en', '[feel]scarcely', 'scarcely', 'false'),
(180, 'en', '[feel]shame', 'shame', 'false'),
(181, 'en', '[feel]dirty', 'dirty', 'false'),
(182, 'en', '[feel]fail', 'fail', 'false'),
(183, 'en', '[feel]serenity', 'serenity', 'false'),
(184, 'en', '[feel]sad', 'sad', 'false'),
(185, 'en', '[feel]so_sad', 'so sad', 'false'),
(186, 'en', '[feel]regretful', 'regretful', 'false'),
(187, 'en', '[feel]interesting', 'interesting', 'false'),
(188, 'en', '[feel]not_assured', 'not assured', 'false'),
(189, 'en', 'what_do_you_doing', 'what do you doing ?', 'false'),
(190, 'en', 'upload_photos', 'upload photos', 'false'),
(191, 'en', 'edit_photos', 'edit photos', 'false'),
(192, 'en', 'apply', 'apply', 'false'),
(193, 'en', 'cancel', 'cancel', 'false'),
(194, 'en', 'photos_editor', 'photos editor', 'false'),
(195, 'en', 'filters', 'filters', 'false'),
(196, 'en', 'brightness', 'brightness', 'false'),
(197, 'en', 'contrast', 'contrast', 'false'),
(198, 'en', 'rotate', 'rotate', 'false'),
(199, 'en', 'custom_brightness', 'custom brightness', 'false'),
(200, 'en', 'custom_contrast', 'custom contrast', 'false'),
(201, 'en', 'rotate_left', 'rotate left', 'false'),
(202, 'en', 'rotate_right', 'rotate right', 'false'),
(203, 'en', 'post', 'post', 'false'),
(204, 'en', 'scrapbook', 'scrapbook', 'false'),
(206, 'en', 'name', 'name', 'false'),
(207, 'en', 'default', 'default', 'false'),
(208, 'en', 'life', 'life', 'false'),
(209, 'en', 'upload_videos', 'upload videos', 'false'),
(221, 'en', 'edit_videos', 'edit videos', 'false'),
(222, 'en', 'choose_videos', 'choose videos', 'false'),
(224, 'en', 'upload_music', 'upload music', 'false'),
(225, 'en', 'choose_music', 'choose music', 'false'),
(226, 'en', 'size_limit_per_file', 'size limit per file', 'false'),
(227, 'en', 'author', 'author', 'false'),
(228, 'en', 'quote', 'quote', 'false'),
(229, 'en', 'used_as_background_image', 'used as background image', 'false'),
(230, 'en', 'cited', 'cited', 'false'),
(231, 'en', 'choose_photos', 'choose photos', 'false'),
(232, 'en', 'music_name', 'music name', 'false'),
(233, 'en', 'videos_name', 'videos name', 'false'),
(234, 'en', 'tags', 'tags', 'false'),
(235, 'en', 'separated_by_whitespace', 'separated by whitespace', 'false'),
(236, 'en', 'editor_missing_content', 'editor missing content', 'false'),
(237, 'en', 'media_file_missing_info', 'media file missing info', 'false'),
(238, 'en', 'media', 'media', 'false'),
(240, 'en', 'scrapbook_name', 'scrapbook name', 'false'),
(241, 'en', 'playlist', 'playlist', 'false'),
(242, 'en', 'album', 'album', 'false'),
(243, 'en', 'feel', 'feel', 'false'),
(244, 'en', 'minutes', 'minutes', 'false'),
(245, 'en', 'hours', 'hours', 'false'),
(247, 'en', 'weeks', 'weeks', 'false'),
(250, 'en', 'not_updated', 'not updated', 'false'),
(251, 'en', 'presented_by', 'presented by', 'false'),
(252, 'en', 'null:description_music', 'listen and feel this song', 'false'),
(253, 'en', 'singer', 'singer', 'false'),
(254, 'en', 'null:music_name', 'untitled song', 'false'),
(255, 'en', 'null:videos_name', 'untitled videos', 'false'),
(256, 'en', 'null:description_videos', 'view and comment your thoughts', 'false'),
(258, 'en', 'block', 'block', 'false'),
(259, 'en', 'report', 'report', 'false'),
(260, 'en', 'edit', 'edit', 'false'),
(261, 'en', 'delete', 'delete', 'false'),
(262, 'en', 'remove', 'remove', 'false'),
(263, 'en', 'follow', 'follow', 'false'),
(264, 'en', 'unfollow', 'unfollow', 'false'),
(265, 'en', 'popup', 'popup', 'false'),
(266, 'en', 'link', 'link', 'false'),
(267, 'en', 'not_authorized_to_perform', 'not authorized to perform', 'false'),
(268, 'en', 'status_has_been_removed', 'status has been removed', 'false'),
(269, 'en', 'notification', 'notification', 'false'),
(271, 'en', 'add', 'add', 'false'),
(272, 'en', 'remove', 'remove', 'false'),
(273, 'en', 'accept', 'accept', 'false'),
(274, 'en', 'refuse', 'refuse', 'false'),
(275, 'en', 'send_request', 'send request', 'false'),
(276, 'en', 'refuse_request', 'refuse request', 'false'),
(277, 'en', 'accept_request', 'accept request', 'false'),
(278, 'en', 'remove_request', 'remove request', 'false'),
(279, 'en', 'hide', 'hide', 'false'),
(280, 'en', 'you_can_tell_us', 'you can tell us ?', 'false'),
(281, 'en', 'ask_live_description', 'you need to enter because it will help you to easily find more people around', 'false'),
(282, 'en', 'where_do_you_live', 'where do you live ?', 'false'),
(283, 'en', 'update', 'update', 'false'),
(284, 'en', 'where_do_you_from', 'where do you from?', 'false'),
(285, 'en', 'information_has_been_updated', 'information has been updated', 'false'),
(286, 'en', 'status_has_been_posted', 'status has been posted', 'false'),
(287, 'en', 'type_content_status', 'type content status...', 'false'),
(288, 'en', 'edit_success_status', 'edit success status', 'false'),
(289, 'en', 'confirm', 'confirm', 'false'),
(290, 'en', 'question_remove_status', 'you want to remove status ?', 'false'),
(291, 'en', 'count', 'count', 'false'),
(292, 'en', 'mentioned', 'mentioned', 'false'),
(294, 'en', 'question_block_status', 'you want to block status ?', 'false'),
(296, 'en', 'pages_hashtag.title', 'hashtag :: feed :: giccos', 'false'),
(297, 'en', 'keyword', 'keyword', 'false'),
(298, 'en', 'tag', 'tag', 'false'),
(299, 'en', 'pages_hashtag.quickdescription', 'general status related to', 'false'),
(300, 'en', 'news_feed', 'news feed', 'false'),
(301, 'en', 'pages_feed.quickdescription', 'general status from', 'false'),
(302, 'en', 'family', 'family', 'false'),
(303, 'en', 'family', 'family', 'false'),
(304, 'en', 'friends', 'friends', 'false'),
(305, 'en', 'country', 'country', 'false'),
(306, 'en', 'live', 'live', 'false'),
(307, 'en', 'pages', 'pages', 'false'),
(308, 'en', 'general', 'general', 'false'),
(309, 'en', 'statistic', 'statistic', 'false'),
(310, 'en', 'total', 'total', 'false'),
(311, 'en', 'today', 'today', 'false'),
(312, 'en', 'related_people', 'related people', 'false'),
(313, 'en', 'locations', 'locations', 'false'),
(314, 'en', 'repeats', 'repeats', 'false'),
(315, 'en', 'chatbox', 'chatbox', 'false'),
(316, 'en', 'click_close', 'click to close', 'false'),
(317, 'en', 'click_open', 'click to open', 'false'),
(318, 'en', 'messages_sending', 'messages sending...', 'false'),
(319, 'en', 'type_messages', 'type messages...', 'false'),
(320, 'en', 'drawn_up_for_update', 'drawn up for updates', 'false'),
(321, 'en', 'new_status', 'new status', 'false'),
(322, 'en', 'status_are_selected', 'status are selected', 'false'),
(323, 'en', 'pages_status.title', 'status :: feed :: giccos', 'false'),
(324, 'en', 'status_not_found', 'status not found', 'false'),
(325, 'en', 'pages_status.quickdescription.notfound', 'sorry, we could not find the status of your request', 'false'),
(326, 'en', 'pages_status.quickdescription.notfound.more', 'could it have been hidden away for privacy', 'false'),
(327, 'en', 'console.warning_text', 'the use of the console could help other people to steal your account. Please do not make the code or any action here', 'false'),
(328, 'en', 'console.warning_text_from', 'warning from Giccos', 'false'),
(329, 'en', 'console.warning_text_contact', 'if you detect security flaws or problems that the system, please contact us', 'false'),
(330, 'en', 'please_use_hashtag_on_status', 'please use hashtag on status', 'false'),
(331, 'en', 'others', 'other(s)', 'false'),
(332, 'en', 'conversation_with', 'conversation with', 'false'),
(333, 'en', 'typing', 'typing', 'false'),
(334, 'en', 'seen_by', 'seen by', 'false'),
(336, 'en', 'push.time_ago', 'ago', 'false'),
(337, 'en', 'seen', 'seen', 'false'),
(338, 'en', 'by', 'by', 'false'),
(339, 'en', 'and', 'and', 'false'),
(340, 'en', 'press_enter_to_send', 'press enter to send', 'false'),
(341, 'en', 'send', 'send', 'false'),
(342, 'en', 'type_a_messages', 'type a messages...', 'false'),
(343, 'en', 'select_photos', 'select photos', 'false'),
(344, 'en', 'select_music', 'select music', 'false'),
(345, 'en', 'select_videos', 'select videos', 'false'),
(346, 'en', 'explorer', 'explorer', 'false'),
(347, 'en', 'save_at', 'save at', 'false'),
(348, 'en', 'explorer', 'explorer', 'false'),
(349, 'en', 'loading_data', 'loading data', 'false'),
(350, 'en', 'please_wait', 'please wait', 'false'),
(351, 'en', 'undefined', 'undefined', 'false'),
(352, 'en', 'data_storage_empty', 'data storage is empty', 'false'),
(353, 'en', 'file_info', 'file info', 'false'),
(354, 'en', 'some_action_is_not_completed', 'some action is not completed', 'false'),
(355, 'en', 'a_few_seconds', 'new', 'true'),
(356, 'en', 'minutes_ago', 'mins', 'true'),
(357, 'en', 'hours_ago', 'hrs', 'true'),
(358, 'en', 'days_ago', 'd', 'true'),
(359, 'en', 'weeks_ago', 'w', 'true'),
(360, 'en', 'months_ago', 'M', 'true'),
(361, 'en', 'years_ago', 'y', 'true'),
(362, 'en', 'continue', 'continue', 'false'),
(363, 'en', 'question_media_continue', 'do you want continue to play at', 'false'),
(364, 'en', 'question_photosEditor_close', 'you want to apply effects before exiting ?', 'false'),
(365, 'en', 'activity_from_friends', 'activity from friends', 'false'),
(366, 'en', 'weather', 'weather', 'false'),
(369, 'en', 'monday', 'mon', 'true'),
(370, 'en', 'tuesday', 'tue', 'true'),
(371, 'en', 'wednesday', 'wed', 'true'),
(372, 'en', 'thursday', 'thu', 'true'),
(373, 'en', 'friday', 'fri', 'true'),
(374, 'en', 'saturday', 'sat', 'true'),
(375, 'en', 'sunday', 'sun', 'true'),
(376, 'en', 'wind', 'wind', 'false'),
(377, 'en', 'atmosphere', 'atmosphere', 'false'),
(378, 'en', 'direction', 'direction', 'false'),
(379, 'en', 'speed', 'speed', 'false'),
(380, 'en', 'humidity', 'humidity', 'false'),
(381, 'en', 'pressure', 'pressure', 'false'),
(382, 'en', 'temperature', 'temperature', 'false'),
(386, 'en', 'places_may_visit', 'places may visit', 'false'),
(387, 'en', 'group_may_join', 'group may join', 'false'),
(388, 'en', 'people_may_know', 'people may know', 'false'),
(389, 'en', 'pages_may_subscribe', 'pages may subscribe', 'false'),
(390, 'en', 'time', 'time', 'false'),
(391, 'en', 'update_at', 'update at', 'false'),
(392, 'en', 'automatically_pulled_down', 'automatically pulled down', 'false'),
(393, 'en', 'scrolldown_seen_messages', 'new messages, scroll down to seen', 'false'),
(394, 'en', 'weather_data_are_not_available', 'weather data are not available', 'false'),
(395, 'en', 'load_more', 'load more', 'false'),
(396, 'en', 'share_this_status', 'share this status', 'false'),
(397, 'en', 'feelings_about_it', 'your feelings about it', 'false'),
(398, 'en', 'done', 'done', 'false'),
(399, 'en', 'type_name_your_friends', 'type name your friends', 'false'),
(400, 'en', 'invite_your_friends', 'invite your friends', 'false'),
(401, 'en', 'pages_accounts.span', 'giccos accounts', 'false'),
(402, 'en', 'pages_loading.title', '... :: loading :: giccos', 'false'),
(403, 'en', 'write_by', 'write by', 'false'),
(404, 'en', 'pages_wall.title', 'wall :: giccos', 'false'),
(405, 'en', 'verified', 'verified', 'false'),
(406, 'en', 'timeline', 'timeline', 'false'),
(407, 'en', 'info', 'info', 'false'),
(408, 'en', 'more', 'more', 'false'),
(409, 'en', 'wall_desc_timeline', 'Timeline of _____. The status updated by _____.', 'false'),
(410, 'en', 'wall_desc_photos', 'gallery of _____. The photos updated by _____.', 'false'),
(411, 'en', 'wall_desc_friends', 'friends of _____.', 'false'),
(412, 'en', 'wall_desc_about', 'about of _____.', 'false'),
(413, 'en', 'wall_desc_music', 'music of _____. The music updated by _____.', 'false'),
(414, 'en', 'wall_desc_videos', 'videos of _____. The videos updated by _____.', 'false'),
(415, 'en', 'wall_desc_places', 'places visited by _____. The places checkin by _____.', 'false'),
(416, 'en', 'workplaces', 'workplaces', 'false'),
(417, 'en', 'education', 'education', 'false'),
(418, 'en', 'introduction', 'introduction', 'false'),
(419, 'en', 'contact', 'contact', 'false'),
(420, 'en', 'slogan', 'slogan', 'false'),
(421, 'en', 'wall_info_introduction_null', '_____ has not updated the introduction.', 'false'),
(422, 'en', 'wall_info_about_null', '_____ has not updated the infomation.', 'false'),
(423, 'en', 'wall_info_contact_null', '_____ has not updated the contact.', 'false'),
(424, 'en', 'nickname', 'nickname', 'false'),
(425, 'en', 'user', 'user', 'false'),
(426, 'en', 'language', 'language', 'false'),
(427, 'en', 'language_en', 'english', 'false'),
(428, 'en', 'language_vi', 'vietnamese', 'false'),
(429, 'en', 'gender_1', 'male', 'false'),
(430, 'en', 'gender_2', 'female', 'false'),
(431, 'en', 'interest', 'interest', 'false'),
(432, 'en', 'relationship', 'relationship', 'false'),
(433, 'en', 'relationship_0', 'not disclosed', 'false'),
(434, 'en', 'relationship_1', 'single', 'false'),
(435, 'en', 'relationship_2', 'datting', 'false'),
(436, 'en', 'relationship_3', 'got married', 'false'),
(437, 'en', 'relationship_4', 'complex', 'false'),
(438, 'en', 'relationship_5', 'an open relationship', 'false'),
(439, 'en', 'birthday', 'birthday', 'false'),
(440, 'en', 'format', 'format', 'false'),
(441, 'en', 'wall_info_places_null', '_____ has not updated the living and country.', 'false'),
(442, 'en', 'country_like_living', 'location _____''s living.', 'false'),
(443, 'en', 'you_have_not_joined_any_groups', 'you have not joined any groups', 'false'),
(444, 'en', 'wall_info_education_null', '_____ has not updated the level of education.', 'false'),
(445, 'en', 'wall_info_workplaces_null', '_____ has not updated the jobs and workplaces.', 'false'),
(446, 'en', 'unknown_coordinates', 'unknown coordinates', 'false'),
(447, 'en', 'work', 'work', 'false'),
(448, 'en', 'home', 'home', 'false'),
(449, 'en', 'unknown', 'unknown', 'false'),
(450, 'en', 'now', 'now', 'false'),
(451, 'en', 'address', 'address', 'false'),
(452, 'en', 'awards', 'awards', 'false'),
(453, 'en', 'all_friends', 'all friends', 'false'),
(456, 'en', 'mutual_friends', 'mutual friends', 'false'),
(457, 'en', 'school', 'school', 'false'),
(458, 'en', 'request_is_invalid', 'request is invalid', 'false'),
(459, 'en', 'remove_friends', 'remove friends', 'false'),
(460, 'en', 'you', 'you', 'false'),
(461, 'en', 'cancel_request', 'cancel request', 'false'),
(462, 'en', 'send_request_success', 'send request add friends', 'false'),
(463, 'en', 'cancel_request_success', 'canceled request add friends', 'false'),
(464, 'en', 'remove_friends_success', 'removed this user from friends list', 'false'),
(465, 'en', 'add_friends_success', 'added this user from friends list', 'false'),
(466, 'en', 'refuse_friends_success', 'refused request from this user', 'false'),
(467, 'en', 'pull_up_for_updates', 'pull up for updates', 'false'),
(468, 'en', 'dead', 'dead', 'false'),
(469, 'en', 'user_have_not_friends', 'friends do not find this person', 'false'),
(470, 'en', 'timeline_is_null', 'timeline of _____''s empty', 'false'),
(471, 'en', 'yesterday', 'yesterday', 'false'),
(472, 'en', 'last_week', 'last week', 'false'),
(473, 'en', 'about_a_minute_ago', 'about a minute ago', 'false'),
(474, 'en', 'feeling', 'feeling', 'false'),
(475, 'en', 'comment_sent_successfully', 'comment has been sent successfully', 'false'),
(476, 'en', 'status_follow_add_success', 'has subscribed information from status', 'false'),
(477, 'en', 'status_follow_remove_success', 'has unsubscribe information from status', 'false'),
(478, 'en', 'pages_time.title', 'time :: feed :: giccos', 'false'),
(480, 'en', 'time_custom', 'time custom', 'false'),
(481, 'en', 'seconds', 'seconds', 'false'),
(482, 'en', 'to', 'to', 'false'),
(483, 'en', 'request', 'request', 'false'),
(484, 'en', 'go_to_page', 'go to page', 'false'),
(485, 'en', 'do_you_want_redirect_page', 'do you want to redirect the page', 'false'),
(486, 'en', 'agree', 'agree', 'false'),
(487, 'en', 'pages_photos_picture.title', 'picture :: photos :: giccos', 'false'),
(488, 'en', 'related_content', 'related content', 'false'),
(489, 'en', 'information', 'information', 'false'),
(490, 'en', 'not_found', 'not found', 'false'),
(491, 'en', 'oops_description_notfound', 'Web page you are looking for does not exist or has been deleted or blocked by managers', 'false'),
(492, 'en', 'oops_error_notfound', 'error#404', 'false'),
(493, 'en', 'level', 'level', 'false'),
(494, 'en', 'click_to_edit', 'click to edit', 'false'),
(495, 'en', 'addons_updating', 'add-ons updating', 'false'),
(496, 'en', 'inFeeds_null_notify_text', 'there are currently no status on feed', 'false'),
(497, 'en', 'inFeeds_null_title_text', 'empty contents', 'false'),
(498, 'en', 'warning', 'warning', 'false'),
(499, 'en', 'status_display_with_link', 'status show only those with link', 'false'),
(500, 'en', 'private_0_tip', 'those with link', 'false'),
(501, 'en', 'private_0_text', 'link', 'false'),
(502, 'en', 'sponsored', 'sponsored', 'false'),
(503, 'en', 'you_may_need', 'you may need', 'false'),
(504, 'en', 'you_may_want_watch', 'you may want watch', 'false'),
(505, 'en', 'views', 'views', 'false'),
(507, 'en', 'videos_watch_views_description', 'total {_viewstotal_} views. {_viewsmonth_} people have viewed this month, {_viewstoday_} people watching today and {_viewsnow_} viewing now.', 'false'),
(508, 'en', 'statistical_views', 'statistical views', 'false'),
(509, 'en', 'statistical_share', 'statistical share', 'false'),
(510, 'en', 'videos_watch_share_description', 'total {_sharetotal_} shared. {_shareingiccos_} people shared on Giccos and {_shareinother_} people shared on other sites.', 'false'),
(511, 'en', 'login_interact_this_author', 'login to interact with this author', 'false'),
(512, 'en', 'time_upload', 'time upload', 'false'),
(513, 'en', 'description_not_updated', 'description has not updated', 'false'),
(514, 'en', 'duration', 'duration', 'false'),
(515, 'en', 'reply_comment', 'reply comment', 'false'),
(516, 'en', 'reply', 'reply', 'false'),
(517, 'en', 'tag_photos', 'tag photos', 'false'),
(518, 'en', 'photos_tag', 'photos tag', 'false'),
(519, 'en', 'who_is_it', 'who is it ?', 'false'),
(520, 'en', 'PhotosEditorPopup_footer_text', 'PhotosEditor &copy; Giccos', 'false'),
(521, 'en', 'Explorer_footer_text', 'Explorer &copy; Giccos', 'false'),
(522, 'en', 'PhotosTagPopup_footer_text', 'PhotosTag &copy; Giccos', 'false'),
(523, 'en', 'question_photosTag_close', 'do you want close it ?', 'false'),
(524, 'en', 'data_processing', 'data processing', 'false'),
(525, 'en', 'remove_from_list', 'remove from list', 'false'),
(526, 'en', 'remove_photos', 'remove photos', 'false'),
(527, 'en', 'comment_disabled', 'comments has disabled', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `logs_actions`
--

CREATE TABLE IF NOT EXISTS `logs_actions` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `things` varchar(20) NOT NULL,
  `things.id` int(11) NOT NULL,
  `obj` varchar(20) NOT NULL,
  `obj.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `author.type`, `author.id`, `action`, `things`, `things.id`, `obj`, `obj.id`) VALUES
(16, 1423880117, 'user', 1, 'favorite', 'status', 176, '', 0),
(17, 1423880133, 'user', 1, 'add', 'status', 176, 'comment', 42),
(18, 1423880144, 'user', 1, 'unfavorite', 'status', 176, '', 0),
(19, 1423880151, 'user', 1, 'favorite', 'status_comment', 42, '', 0),
(20, 1423881486, 'user', 1, 'add', '', 0, 'status', 177),
(21, 1423882595, 'user', 1, 'add', '', 0, 'status', 178),
(22, 1423883226, 'user', 1, 'share', 'status', 177, 'status', 179),
(23, 1423895622, 'user', 1, 'remove', 'status', 178, '', 0),
(24, 1423895622, 'user', 1, 'remove', 'status', 177, '', 0),
(25, 1424152523, 'user', 1, 'add', '', 0, 'status', 180),
(26, 1424152546, 'user', 1, 'add', '', 0, 'status', 181),
(27, 1425881753, 'user', 1, 'add', '', 0, 'status', 182),
(28, 1425881932, 'user', 1, 'remove', 'status', 182, '', 0),
(29, 1425881940, 'user', 1, 'add', '', 0, 'status', 183),
(30, 1425883240, 'user', 1, 'add', '', 0, 'status', 184),
(31, 1425883278, 'user', 1, 'remove', 'status', 184, '', 0),
(32, 1425883280, 'user', 1, 'remove', 'status', 183, '', 0),
(33, 1426131205, 'user', 1, 'add', '', 0, 'status', 182),
(34, 1426131508, 'user', 1, 'add', '', 0, 'status', 183),
(35, 1426158301, 'user', 1, 'add', '', 0, 'status', 184),
(36, 1426766917, 'user', 1, 'add', '', 0, 'status', 185),
(37, 1426767162, 'user', 1, 'remove', 'status', 185, '', 0),
(38, 1426767175, 'user', 1, 'add', '', 0, 'status', 186),
(39, 1426767526, 'user', 1, 'remove', 'status', 186, '', 0),
(40, 1426767530, 'user', 1, 'remove', 'status', 184, '', 0),
(41, 1426768696, 'user', 1, 'add', '', 0, 'status', 187),
(42, 1426769239, 'user', 1, 'add', '', 0, 'status', 188),
(43, 1426769647, 'user', 1, 'add', '', 0, 'status', 189),
(44, 1426770047, 'user', 1, 'remove', 'status', 189, '', 0),
(45, 1426770050, 'user', 1, 'remove', 'status', 188, '', 0),
(46, 1426770053, 'user', 1, 'remove', 'status', 187, '', 0),
(47, 1426770075, 'user', 1, 'add', '', 0, 'status', 190),
(48, 1426770106, 'user', 1, 'add', '', 0, 'status', 191),
(49, 1426770144, 'user', 1, 'remove', 'status', 191, '', 0),
(50, 1426770157, 'user', 1, 'add', '', 0, 'status', 192),
(51, 1426770196, 'user', 1, 'remove', 'status', 192, '', 0),
(52, 1426770908, 'user', 1, 'add', '', 0, 'status', 193),
(53, 1426836364, 'user', 1, 'add', '', 0, 'status', 194),
(54, 1426837403, 'user', 1, 'add', '', 0, 'status', 195),
(55, 1426837467, 'user', 1, 'remove', 'status', 195, '', 0),
(56, 1426837483, 'user', 1, 'add', '', 0, 'status', 196),
(57, 1426837531, 'user', 1, 'add', '', 0, 'status', 197),
(58, 1426837535, 'user', 1, 'remove', 'status', 197, '', 0),
(59, 1426928323, 'user', 1, 'remove', 'status', 196, '', 0),
(60, 1426928325, 'user', 1, 'remove', 'status', 194, '', 0),
(61, 1426928358, 'user', 1, 'add', '', 0, 'status', 197),
(62, 1427007059, 'user', 1, 'share', 'status', 167, 'status', 198),
(63, 1427183228, 'user', 1, 'add', '', 0, 'status', 199),
(64, 1427526748, 'user', 1, 'add', '', 0, 'status', 200),
(65, 1427527136, 'user', 1, 'add', '', 0, 'status', 201),
(66, 1427527174, 'user', 1, 'remove', 'status', 201, '', 0),
(67, 1427527176, 'user', 1, 'add', '', 0, 'status', 202),
(68, 1427527214, 'user', 1, 'remove', 'status', 202, '', 0),
(69, 1427559940, 'user', 1, 'add', '', 0, 'status', 203),
(70, 1427559940, 'user', 1, 'add', '', 0, 'status', 204),
(71, 1427559962, 'user', 1, 'add', '', 0, 'status', 205),
(72, 1427559972, 'user', 1, 'add', '', 0, 'status', 206),
(73, 1427559980, 'user', 1, 'remove', 'status', 206, '', 0),
(74, 1427559982, 'user', 1, 'remove', 'status', 205, '', 0),
(75, 1427559984, 'user', 1, 'remove', 'status', 204, '', 0),
(76, 1427559986, 'user', 1, 'remove', 'status', 203, '', 0),
(77, 1427559988, 'user', 1, 'remove', 'status', 200, '', 0),
(78, 1427559991, 'user', 1, 'add', '', 0, 'status', 207),
(79, 1427560152, 'user', 1, 'add', '', 0, 'status', 208),
(80, 1427560212, 'user', 1, 'remove', 'status', 208, '', 0),
(81, 1427560233, 'user', 1, 'add', '', 0, 'status', 209),
(82, 1427560297, 'user', 1, 'remove', 'status', 209, '', 0),
(83, 1427560400, 'user', 1, 'remove', 'status', 210, '', 0),
(84, 1427560592, 'user', 1, 'remove', 'status', 211, '', 0),
(85, 1427560602, 'user', 1, 'add', '', 0, 'status', 212),
(86, 1427560609, 'user', 1, 'remove', 'status', 212, '', 0),
(87, 1427560667, 'user', 1, 'add', '', 0, 'status', 213),
(88, 1427638082, 'user', 1, 'add', '', 0, 'status', 214),
(89, 1427638156, 'user', 1, 'add', '', 0, 'status', 215),
(90, 1427638244, 'user', 1, 'remove', 'status', 214, '', 0),
(91, 1427638247, 'user', 1, 'remove', 'status', 215, '', 0),
(92, 1427638250, 'user', 1, 'remove', 'status', 213, '', 0),
(93, 1427639656, 'user', 1, 'add', '', 0, 'status', 216),
(94, 1427639662, 'user', 1, 'add', '', 0, 'status', 217),
(95, 1427639716, 'user', 1, 'remove', 'status', 217, '', 0),
(96, 1427639753, 'user', 1, 'add', '', 0, 'status', 218),
(97, 1427639814, 'user', 1, 'remove', 'status', 218, '', 0),
(98, 1427639831, 'user', 1, 'remove', 'status', 216, '', 0),
(99, 1427639896, 'user', 1, 'remove', 'status', 219, '', 0),
(100, 1427640018, 'user', 1, 'add', '', 0, 'status', 220),
(101, 1427640037, 'user', 1, 'add', '', 0, 'status', 221),
(102, 1427640046, 'user', 1, 'remove', 'status', 221, '', 0),
(103, 1427640313, 'user', 1, 'remove', 'status', 220, '', 0),
(104, 1427640344, 'user', 1, 'add', '', 0, 'status', 222),
(105, 1427640356, 'user', 1, 'remove', 'status', 222, '', 0),
(106, 1427640422, 'user', 1, 'add', '', 0, 'status', 223),
(107, 1427640429, 'user', 1, 'remove', 'status', 223, '', 0),
(108, 1427640464, 'user', 1, 'add', '', 0, 'status', 224),
(109, 1427720534, 'user', 1, 'edit', 'status', 224, '', 0),
(110, 1427720547, 'user', 1, 'edit', 'status', 224, '', 0),
(111, 1427809370, 'user', 1, 'remove', 'status', 199, '', 0),
(112, 1428414267, 'user', 1, 'add', 'status', 224, 'comment', 43),
(113, 1428586404, 'user', 1, 'add', '', 0, 'status', 225),
(114, 1428586404, 'user', 1, 'add', '', 0, 'status', 226),
(115, 1428586482, 'user', 1, 'remove', 'status', 226, '', 0),
(116, 1428586487, 'user', 1, 'remove', 'status', 225, '', 0),
(117, 1428586499, 'user', 1, 'add', '', 0, 'status', 227),
(118, 1428586523, 'user', 1, 'remove', 'status', 227, '', 0),
(119, 1428586533, 'user', 1, 'add', '', 0, 'status', 228),
(120, 1428587809, 'user', 1, 'remove', 'status', 228, '', 0),
(121, 1428587827, 'user', 1, 'add', '', 0, 'status', 229),
(122, 1428588381, 'user', 1, 'remove', 'status', 229, '', 0),
(123, 1428588393, 'user', 1, 'add', '', 0, 'status', 230),
(124, 1428590627, 'user', 1, 'add', '', 0, 'status', 231),
(125, 1428590750, 'user', 1, 'remove', 'status', 231, '', 0),
(126, 1428590759, 'user', 1, 'add', '', 0, 'status', 232),
(127, 1428591008, 'user', 1, 'remove', 'status', 232, '', 0),
(128, 1428591026, 'user', 1, 'add', '', 0, 'status', 233),
(129, 1428654339, 'user', 1, 'add', '', 0, 'status', 234),
(130, 1428654413, 'user', 1, 'remove', 'status', 234, '', 0),
(131, 1428654453, 'user', 1, 'add', '', 0, 'status', 235),
(132, 1428654590, 'user', 1, 'add', '', 0, 'status', 236),
(133, 1428655330, 'user', 1, 'remove', 'status', 236, '', 0),
(134, 1428655447, 'user', 1, 'add', '', 0, 'status', 237),
(135, 1428655653, 'user', 1, 'add', '', 0, 'status', 238),
(136, 1428655700, 'user', 1, 'remove', 'status', 238, '', 0),
(137, 1428655709, 'user', 1, 'remove', 'status', 237, '', 0),
(138, 1428655723, 'user', 1, 'add', '', 0, 'status', 239),
(139, 1428655799, 'user', 1, 'remove', 'status', 239, '', 0),
(140, 1428655948, 'user', 1, 'remove', 'status', 235, '', 0),
(141, 1428655971, 'user', 1, 'add', '', 0, 'status', 240),
(142, 1428656102, 'user', 1, 'add', '', 0, 'status', 241),
(143, 1428656137, 'user', 1, 'add', '', 0, 'status', 242),
(144, 1428656156, 'user', 1, 'add', '', 0, 'status', 243),
(145, 1428742983, 'user', 1, 'remove', 'status', 244, '', 0),
(146, 1428743055, 'user', 1, 'remove', 'status', 245, '', 0),
(147, 1428743194, 'user', 1, 'remove', 'status', 246, '', 0),
(148, 1428743200, 'user', 1, 'add', '', 0, 'status', 247),
(149, 1428765105, 'user', 1, 'add', '', 0, 'status', 248),
(150, 1428766048, 'user', 1, 'add', '', 0, 'status', 249),
(151, 1428766189, 'user', 1, 'add', '', 0, 'status', 250),
(152, 1428766505, 'user', 1, 'add', '', 0, 'status', 251),
(153, 1428766543, 'user', 1, 'add', '', 0, 'status', 252),
(154, 1428766576, 'user', 1, 'add', '', 0, 'status', 253),
(155, 1428766602, 'user', 1, 'add', '', 0, 'status', 254),
(156, 1428766792, 'user', 1, 'add', '', 0, 'status', 255),
(157, 1428766809, 'user', 1, 'add', '', 0, 'status', 256),
(158, 1428766858, 'user', 1, 'add', '', 0, 'status', 257),
(159, 1428766893, 'user', 1, 'add', '', 0, 'status', 258),
(160, 1428767174, 'user', 1, 'add', '', 0, 'status', 259),
(161, 1428769621, 'user', 1, 'add', '', 0, 'status', 260),
(162, 1428821429, 'user', 1, 'add', '', 0, 'status', 261),
(163, 1428932551, 'user', 2, 'add', '', 0, 'status', 1),
(164, 1429187371, 'user', 1, 'add', '', 0, 'status', 2),
(165, 1429187801, 'user', 1, 'remove', 'status', 2, '', 0),
(166, 1429188004, 'user', 1, 'add', '', 0, 'status', 3),
(167, 1429188222, 'user', 1, 'remove', 'status', 3, '', 0),
(168, 1429188230, 'user', 1, 'add', '', 0, 'status', 4),
(169, 1429188299, 'user', 1, 'remove', 'status', 4, '', 0),
(170, 1429188382, 'user', 1, 'add', '', 0, 'status', 5),
(171, 1429188422, 'user', 1, 'remove', 'status', 5, '', 0),
(172, 1429188427, 'user', 1, 'add', '', 0, 'status', 6),
(173, 1429188453, 'user', 1, 'remove', 'status', 6, '', 0),
(174, 1429188459, 'user', 1, 'add', '', 0, 'status', 7),
(175, 1429188476, 'user', 1, 'add', '', 0, 'status', 8),
(176, 1429188554, 'user', 1, 'add', '', 0, 'status', 9),
(177, 1429188595, 'user', 1, 'remove', 'status', 9, '', 0),
(178, 1429188597, 'user', 1, 'remove', 'status', 8, '', 0),
(179, 1429188605, 'user', 1, 'remove', 'status', 7, '', 0),
(180, 1429188615, 'user', 1, 'add', '', 0, 'status', 10),
(181, 1429188846, 'user', 1, 'remove', 'status', 10, '', 0),
(182, 1429188887, 'user', 1, 'remove', 'status', 11, '', 0),
(183, 1429188896, 'user', 1, 'add', '', 0, 'status', 12),
(184, 1429188896, 'user', 1, 'add', '', 0, 'status', 13),
(185, 1429189798, 'user', 1, 'remove', 'status', 13, '', 0),
(186, 1429189803, 'user', 1, 'remove', 'status', 12, '', 0),
(187, 1429189934, 'user', 1, 'add', '', 0, 'status', 14),
(188, 1429189934, 'user', 1, 'add', '', 0, 'status', 15),
(189, 1429189971, 'user', 1, 'add', '', 0, 'status', 16),
(190, 1429190001, 'user', 1, 'add', '', 0, 'status', 17),
(191, 1429190446, 'user', 1, 'add', '', 0, 'status', 1),
(192, 1429192118, 'user', 1, 'add', '', 0, 'status', 2),
(193, 1429192337, 'user', 1, 'remove', 'status', 2, '', 0),
(194, 1429192377, 'user', 1, 'add', '', 0, 'status', 3),
(195, 1429279357, 'user', 1, 'add', '', 0, 'status', 4),
(196, 1429365563, 'user', 1, 'add', '', 0, 'status', 5),
(197, 1429365787, 'user', 1, 'add', '', 0, 'status', 6),
(198, 1429365850, 'user', 1, 'remove', 'status', 6, '', 0),
(199, 1429365875, 'user', 1, 'add', '', 0, 'status', 7),
(200, 1429365908, 'user', 1, 'remove', 'status', 5, '', 0),
(201, 1429379220, 'user', 1, 'add', '', 0, 'status', 8),
(202, 1429713683, 'user', 1, 'add', 'status', 7, 'comment', 1),
(203, 1429713688, 'user', 1, 'favorite', 'status_comment', 1, '', 0),
(204, 1429713689, 'user', 1, 'unfavorite', 'status_comment', 1, '', 0),
(205, 1429796175, 'user', 1, 'add', 'status', 8, 'comment', 2),
(206, 1429796482, 'user', 1, 'add', 'status', 8, 'comment', 3),
(207, 1429974337, 'user', 1, 'add', '', 0, 'status', 9),
(208, 1430407892, 'user', 1, 'remove', 'status', 8, '', 0),
(209, 1430408421, 'user', 1, 'remove', 'status', 9, '', 0),
(210, 1430484850, 'user', 1, 'add', '', 0, 'status', 8),
(211, 1430484969, 'user', 1, 'remove', 'status', 8, '', 0),
(212, 1430484971, 'user', 1, 'add', '', 0, 'status', 9),
(213, 1430490905, 'user', 1, 'add', '', 0, 'status', 10),
(214, 1430490999, 'user', 1, 'add', '', 0, 'status', 11),
(215, 1430491179, 'user', 1, 'add', '', 0, 'status', 12),
(216, 1430491819, 'user', 1, 'add', '', 0, 'status', 13),
(217, 1430492013, 'user', 1, 'add', '', 0, 'status', 14),
(218, 1430492052, 'user', 1, 'add', '', 0, 'status', 15),
(219, 1430492131, 'user', 1, 'add', '', 0, 'status', 16);

-- --------------------------------------------------------

--
-- Table structure for table `logs_ajax`
--

CREATE TABLE IF NOT EXISTS `logs_ajax` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `token` varchar(40) NOT NULL,
  `platform` varchar(20) NOT NULL,
  `platform.version` char(10) NOT NULL,
  `browser` varchar(20) NOT NULL,
  `browser.version` char(10) NOT NULL,
  `browser.kernel` char(10) NOT NULL,
  `header` text NOT NULL,
  `request` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs_client`
--

CREATE TABLE IF NOT EXISTS `logs_client` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` varchar(10) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `platform` varchar(40) NOT NULL,
  `browser` varchar(40) NOT NULL,
  `browser.kernel` char(10) NOT NULL,
  `browser.version` varchar(15) NOT NULL,
  `agent` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES
(3, 1427524390, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '41.0.2272.101', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safa'),
(4, 1428588669, 'fb6f173f', '::1', 'Unknown', 'Unknown', '', '?', '');

-- --------------------------------------------------------

--
-- Table structure for table `maps_places`
--

CREATE TABLE IF NOT EXISTS `maps_places` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `code` varchar(50) NOT NULL,
  `reference` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(30) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `icon` text NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `code`, `reference`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `icon`, `thumbnail`) VALUES
(1, '', 'ChIJ0wPk--NnoTERe6JmxzwUajk', 'ChIJ0wPk--NnoTERe6JmxzwUajk', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'http://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif'),
(2, '', 'ChIJfVSScR3SdDERarq1P6Mafi0', 'ChIJfVSScR3SdDERarq1P6Mafi0', 'Khu du lá»‹ch Äáº¡i Nam', 'QL 13, Hiá»‡p An, tp. Thá»§ Dáº§u Má»™t, Binh Duong, Vietnam', '11.036086,106.632199', 11.036086, 106.632202, 'rv_park', 'http://maps.gstatic.com/mapfiles/place_api/icons/camping-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=11.036086,106.632199&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C11.036086,106.632199&format=gif'),
(3, '', 'ChIJ0T2NLikpdTERKxE8d61aX_E', 'ChIJ0T2NLikpdTERKxE8d61aX_E', 'Ho Chi Minh City', 'Ho Chi Minh City, Ho Chi Minh, Vietnam', '10.8230989,106.6296638', 10.823099, 106.629662, 'locality', 'http://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.8230989,106.6296638&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C10.8230989,106.6296638&format=gif'),
(6, '', 'ChIJA2Ui9N0udTERLRHZAuT3cBY', 'ChIJA2Ui9N0udTERLRHZAuT3cBY', 'Tinh Táº¿ Cafe', '436 3 ThÃ¡ng 2, 12, 10, Há»“ ChÃ­ Minh, Vietnam', '10.769319,106.669258', 10.769319, 106.669258, 'cafe', 'http://maps.gstatic.com/mapfiles/place_api/icons/cafe-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.769319,106.669258&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C10.769319,106.669258&format=gif'),
(7, '', 'ChIJgwBiJxCkNTERmrzuxYyvpfg', 'ChIJgwBiJxCkNTERmrzuxYyvpfg', 'Äáº¡i LÃ½ ChÄƒn Ga Gá»‘i Äá»‡m Autralia', 'Chá»£ ÄÆ°á»ng CÃ¡i, Huyá»‡n VÄƒn LÃ¢m, HÆ°ng YÃªn, Vietnam', '20.974658,106.052262', 20.974657, 106.052261, 'store', 'http://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=20.974658,106.052262&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C20.974658,106.052262&format=gif'),
(8, '', 'ChIJc7PBOygpdTERBfm195KyEzY', 'ChIJc7PBOygpdTERBfm195KyEzY', 'Vienmaytinh.com', '180 HoÃ ng VÄƒn Thá»¥, 9, PhÃº Nhuáº­n, Há»“ ChÃ­ Minh, Vietnam', '10.799588,106.67532', 10.799588, 106.675323, 'electronics_store', 'http://maps.gstatic.com/mapfiles/place_api/icons/electronics-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.799588,106.67532&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C10.799588,106.67532&format=gif');

-- --------------------------------------------------------

--
-- Table structure for table `messages_data`
--

CREATE TABLE IF NOT EXISTS `messages_data` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `content` text NOT NULL,
  `emoticons` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_data`
--

INSERT INTO `messages_data` (`id`, `time`, `tab`, `author.type`, `author.id`, `content`, `emoticons`) VALUES
(2, 1418192623, 1, 'user', 1, 'xmxOo3PY+igrcPacZ6lMu+aHuv5ht5b9lI7cAOl2Mnc=', ''),
(3, 1418192624, 1, 'user', 1, 'mL3TMoXDG6hLZ7vFXNve7KV3qgHEWHzDmGMH3l+7+bs=', ''),
(4, 1418192625, 1, 'user', 1, 'PewIUU5KG4DJ03VJY4VPLaUCOiLEtWkPLrEm47HIFyk=', ''),
(5, 1418192625, 1, 'user', 1, '3F5sFWBzQ7bCzYtsMuDdsBy0XfjhbbsNMjxnDrLIrG8=', ''),
(6, 1418192626, 1, 'user', 1, '+GdchkAhwP9brSxUUUjXMa0HXZTDtBRK1+hnYtg7AB4=', ''),
(7, 1418192627, 1, 'user', 1, 'fEoHvmZ3fIdClooBXYn1Xqo+FeuyS+RhRDL4zU89DHo=', ''),
(8, 1418192628, 1, 'user', 1, 'rUuVUosxABLcMEz/IXcyDSaqthvfFTmmrRiOP/ZSnh4=', ''),
(9, 1418192629, 1, 'user', 1, 'j2PTBXM7IKCEgnETPDc5tglLBBvdRC7tgdtfabqDTgA=', ''),
(10, 1418192629, 1, 'user', 1, '1M0EpyAjSTGirn0PoF4m65R5Jilyprxn0V43iuf9TjU=', ''),
(11, 1418192693, 1, 'user', 1, 'KFA05A8BKJ0258fqTOnyQckzbjwsPv696zpnwu9FXGU=', ''),
(12, 1418192693, 1, 'user', 1, 'BZs49HewgvmvGO9JVvwCNVld6d3NDwBiYzLPpPI5jUQ=', ''),
(13, 1418192695, 1, 'user', 1, '6MSGxBg0BSW9Fv1XTFNGXMy0ag2uIXI5dqBBIo37qEI=', ''),
(14, 1418192696, 1, 'user', 1, '0HzRQk5N4jthwQS/Dzx9a5nXAqFhjalcclHiQt+qQkI=', ''),
(15, 1418192697, 1, 'user', 2, 'Ax1ggQOBjF/FKon5bDePU/K6QMS/e6tWYfn/lmFC3zI=', ''),
(16, 1418192698, 1, 'user', 1, '/uku1amqqFEs4cWLTJR92aTjAo8KbDMnEzHO+WUhnCM=', ''),
(17, 1418192699, 1, 'user', 1, 'r4Jzos9+qOvRyBvFBfxddL7rgAyVO2TrIUDlBbrIRXY=', ''),
(18, 1418192700, 1, 'user', 1, 'EkMtrfVQms2QvBxnImcVQhtnIdlpOlBWqIIfU4Jpz+U=', ''),
(19, 1418192700, 1, 'user', 2, 'NZJaAAUJ9gS2xAZJNPG5BfxH8+/a83dnHl1fOP56KDY=', ''),
(20, 1418192701, 1, 'user', 1, '643c0onF1xyzv/0672tGY/u2JqA4cgoxAPV1cUSQEu0=', ''),
(21, 1418192703, 1, 'user', 3, 'cI3gpLhSGlHyT2Ntw/xtVnfPRMaRqjKoGw76c6vMMIc=', ''),
(22, 1418192704, 1, 'user', 1, 'nGRIDZKLS5Wb/9Ue/rT7+9cABOPeZyEE+acgrtezHzM=', ''),
(23, 1418192704, 1, 'user', 2, 'uQyGSOqvaUmyLeZP+u68J+YICw1YQNCtys3SQwd+FxU=', ''),
(24, 1418192704, 1, 'user', 1, 'ne9tAATBKFq8d/veHOeVn56zgUw7zGs1gloLDOgYR8A=', ''),
(25, 1418192705, 1, 'user', 2, '0A6FSrtFiwtm3Czx/FD5EpZvVx2pD1AnBSExCGJwe0c=', ''),
(26, 1418192705, 1, 'user', 1, 'l1i61HQuh49ScBmgLAk0POmgbIsA3a7tEhAo1SAfpxI=', ''),
(27, 1418192705, 1, 'user', 1, 'abAntmFbTacYBbIxqHGLX8oKM55dgIUhxmvX7e50Bqg=', ''),
(28, 1418192706, 1, 'user', 3, 'mF0NoG56+RznRoM1ucHkdOzSph4XF00GVxH3+B5I9zI=', ''),
(29, 1418192706, 1, 'user', 1, '3Mfq+SErA7lxRL4uLSqM17/Xju2ux52yLf/yaHHc5d4=', ''),
(30, 1418192707, 1, 'user', 2, 'ikIxxh3Y116WDx93qKOj8M5Tb4eKS95piDU4+5zyxaY=', ''),
(31, 1418192707, 1, 'user', 1, 'Cf48e4yrc3Kj/ct1i7AwlzkvrwLmzjEhSAUYAEBGxTI=', ''),
(32, 1418192707, 1, 'user', 1, 'Ph6BfrfyozKqP/tBv2RblA1MRwFsvwtcfyeEV9BqEm4=', ''),
(33, 1418192708, 1, 'user', 3, 'XduhcotxaJIwWh41rZ04apGGhxZRA2t8BlpL2z/iRos=', ''),
(34, 1418192708, 1, 'user', 1, 'cvXZWnkSNV9HuK6rB5wNWT6Aqef2B3sgMCS+mIAjAfk=', ''),
(35, 1418192708, 1, 'user', 1, 'N/rKj7XoseiA5ibJkhp8uJXYHiQpgmBRjxl7qkbUDEU=', ''),
(36, 1418192709, 1, 'user', 1, 'CyvlZ6YTS78kEz+FGeR+jZ0ivnhIsDovOV2ik5gABPA=', ''),
(37, 1418192709, 1, 'user', 3, 'M+LECUyTYwx5YnhnM3ABVp/3M/bQv0jB3TofZ4mwlzY=', ''),
(38, 1418192709, 1, 'user', 1, 'JN/MVR7e1vmQQcch9JWM71qLGm/bgYMc34c7IkV+uTs=', ''),
(39, 1418197110, 1, 'user', 2, 'BFQrtIqculykD+UlmixH2uU6c7FgI4GJ/ie11XVNE+8=', ''),
(40, 1418197128, 1, 'user', 2, 'tf8ifcPucQpfca/+b60U71gwa1KHebaBLrvu7tVXeVM=', ''),
(41, 1418197131, 1, 'user', 2, '1NGwpBr8Th2XwbWp2zx+iMk7ciidC0uYhS73/4LHr0g=', ''),
(42, 1418197141, 1, 'user', 2, 'VGC1VCRMC4OC+8rERwpBLa7J+qTsQJvQK/gX2Wam2+w=', ''),
(43, 1418197417, 1, 'user', 1, 'j9AakhTAUzFWZTFtTBhfNeKSRZ5sJfctoXgRX0Ld7iwhciM7F4wv7mYnaZrdEBLg3ur7gxdK7NMcUtUlBPumhQ==', ''),
(44, 1418197456, 1, 'user', 1, '4IZoQQnyekMsn7r53XB8hZdyUlsUTS/psHggX8sWkwO9SaLXQyh7kQCDMWhmggM7CudrysKgMTOydivprsTqZg==', ''),
(45, 1418197547, 1, 'user', 2, 'RjKtAC4dSgBLGHqKyN5GDs+rTSfleTah5FWJ7xedV4LYhROiBxL5xaLPiB7T8nyZMord/E4/34hrVIs3cImkdQ==', ''),
(46, 1418200090, 1, 'user', 1, 'MOc0Jme7/0hrlZcYvo/B7SgjhvVxLYIeq8G7LIH8i1M=', ''),
(47, 1418200244, 1, 'user', 1, 'hDmpuW357nz6/WcJcM5xLrRlgZJ1wwrkaPJUUOnEju0=', ''),
(48, 1418200505, 1, 'user', 2, 'M/Ae3y39vWoFxFfX/p9jR+MMsGZl9SWWVwMlQxcXz/0=', ''),
(49, 1418200567, 1, 'user', 2, 'YdkJoMu+BJ8/w2p61vKqY0792yN6jzpnHS7tGXnq8So=', ''),
(50, 1418200577, 1, 'user', 1, 'v6Dg7z/YG0fdtNfubjU9hbHyfwnKoEFltiBMNWQlW5s=', ''),
(51, 1418200631, 1, 'user', 2, 'jcOrwjkQ2vPKto0/MJTGpJSPATKzdLoC7hc+TtJOC7A=', ''),
(52, 1418200669, 1, 'user', 1, '5qFDWWir+yrY71YrIYnEVihCDiM2HzwZGWC3bbvrOPc=', ''),
(53, 1418200777, 1, 'user', 2, 'o7ggwrv2IUdk9abqJHXdwFCHpowvWtXBeDYEQG5HD+E=', ''),
(54, 1418200797, 1, 'user', 2, '4rm2erf1JqfVehv+y/5RvK5UxaAg1/GzpGM8kTOjoV8=', ''),
(55, 1418200805, 1, 'user', 2, 'G7VpHe+xlH9ZAsIu9fFICDiEQXsp70nuym+MxpVRYEQ=', ''),
(56, 1418200827, 1, 'user', 1, 'ciOXXE6IckxiMT50XAoAw6RoHFSuIZC7gVS6gT5ceIk=', ''),
(57, 1418200851, 1, 'user', 1, 'Z7u/AYeOMkwNGWcMGfUn0HYSYM9AO/jYOWV9cVkY44s=', ''),
(58, 1418200914, 1, 'user', 1, 'Fi9NPWnu10uZok5DacXKRSGxdTpnowKwp0d80qmNs6k=', ''),
(59, 1418200937, 1, 'user', 1, 'YbhtAloTk2/Her8LkDifk1LwWLYChq5KyPygEgz8vr0=', ''),
(60, 1418200953, 1, 'user', 2, 'qobUWYW5kIQrxDG026VoOGswNErVYwnIg4+fPaIgWtY=', ''),
(61, 1418201018, 1, 'user', 2, 'OyYunL2rO7FKJa5H6316B6nzDNzKGHcjapDUu5LtG4Q=', ''),
(62, 1418201020, 1, 'user', 2, '0G0ChhntMrAiBVubZs1TDBBUpMVK98NtzVbYnslccMM=', ''),
(63, 1418201034, 1, 'user', 2, '2dWNI1mZDFw1RTnOiZgvVgHUxhzg7QL1DJcSNieHw9A=', ''),
(64, 1418201146, 1, 'user', 1, '2dJ99UC2nQE5faQSRGG/HXgW86LO0N1wDJkp67/VjCc=', ''),
(65, 1418201389, 1, 'user', 1, 'YiMgUCvWLZhXpO+MSvYkA2IKnAkTL2tCn2zo0rG9GZo=', ''),
(66, 1418201469, 1, 'user', 2, 'LWcQm7+GtLujATv0HNeV6c06PcCJLpjXS19WEtv8ruc=', ''),
(67, 1418201626, 1, 'user', 1, 'DVAVj5G+9U7s2bCo3vLsH0sCWsDaU2SjXsR6FF6K3R8=', ''),
(68, 1418201899, 1, 'user', 2, 'JWDx5Pw7vf35kqPEGAeKBJUwvpCiJpy2/s+Lj8dKAQ8=', ''),
(69, 1418202222, 1, 'user', 1, 'juf6eZ8q0nX11/U+8VwKxCBgUT81jFbNPRDkD8l2BWE=', ''),
(70, 1418216968, 1, 'user', 3, 'Gjcj4ftxLPlJNnIjSpc/vqQU5Iekuy4HSmqf7C8JdjU=', ''),
(71, 1418338075, 1, 'user', 1, '728fJ7FeMTgLtR0aYd0ANJaVFCA2ylH749SKL/nWZ8w=', ''),
(72, 1418338294, 1, 'user', 2, 'nWv9f7Cj22VYP3/5T3YjS5z6BSRGZf3KT6JGrly6ORs=', ''),
(73, 1418382075, 1, 'user', 1, 'NU+ThQpual0KmhqsrC2XGLGXNPyoWp3r0Ky3yHUX8vc=', ''),
(74, 1418382895, 1, 'user', 1, 'ZrjrFSegYGVTIufzChtRUi3P4S8RpFgNj7Rm427u/Mw=', ''),
(75, 1418382959, 1, 'user', 1, 'NKd/UHlU2yEqkcKK4RXyvh++fZAXib6DkxN8eNl/iNs=', ''),
(76, 1418382995, 1, 'user', 2, '4uwMI6KUBG5+2mqkaKsl70Kkcs39Z+0nRogjohYDC+Y=', ''),
(77, 1418383008, 1, 'user', 2, 'XgD6xFt5KSdcFxD3FJQ5cE0ZSvWPbXjsTxrYBDOiAgQ=', ''),
(78, 1418383013, 1, 'user', 1, 'q9Tgka9Z89LWhrruODhGDQYgWg/Pe98epvqVCPh0lZM=', ''),
(79, 1418383088, 1, 'user', 1, 'KwO94USGZrgccOstvmfe7MZW9BrYUXXMi8bnbtFfPRA=', ''),
(80, 1418383425, 1, 'user', 2, 'Kv4G87hECuMbmrKDimDF+Jc18A/6niYPAE7weA5YvdA=', ''),
(82, 1418383454, 1, 'user', 1, '8FHccz0bG6JLxh94tWAjlA3F4ByfyX0t+ObaTGK1jMc=', ''),
(83, 1418383643, 1, 'user', 2, 'HA3HaTuthex47vLj38kPx07rpG566a/Xbs59VCHcgtg=', ''),
(84, 1418383651, 1, 'user', 2, 'upis6yK3cyGTgqvJ+3Au3cbDBgT6Yh83rtOT/xOncgA=', ''),
(85, 1418383661, 1, 'user', 1, 'EQiFdRC2vad4Qh5ud7haqwly8DwOw/NWM5VDup206vM=', ''),
(86, 1418531590, 1, 'user', 1, 'JD96K7+cvPYV0S/1Q+GN+UTLYALc9cGumYX2AtOOu34=', ''),
(87, 1422195462, 1, 'user', 1, 'IRhVPnmEdgCCxZHkhhe3HsqK9iRIJvBxbkGI6Ztir/o=', ''),
(88, 1422195472, 1, 'user', 1, 'mlow3jFTRFjraQd6LprbToEqaK8q+dVr7BwqnbjnG6c=', ''),
(89, 1422195473, 1, 'user', 1, 'dgqF23A7UqRVaPmdf4gBFkxrmhQbuXRwisCvLXrYpLk=', ''),
(90, 1422195474, 1, 'user', 1, '4pVJ/yxIDic2bDv68o4GqsKOhj4RK64Kn3PeTxmmhM8=', ''),
(91, 1422195668, 1, 'user', 1, 'ekULvYg6Owg8ZfQ6sd8tjxB86lP8fqZYeJE73oyh/D8=', ''),
(92, 1422196030, 1, 'user', 1, '2vCFS3qh+resoXS0Q3SNzLt8jrlM3vyNLXIvFhdGUaw=', ''),
(93, 1422196033, 1, 'user', 1, 'xSVp7SpcfiTD9Fo1Fa51ROaMUJjjSw8GG4sya+cSik8=', ''),
(94, 1422595683, 1, 'user', 1, 'QAOEGXTDJVrUHxKAd/NbC8ZtqxnavXWsTdZaiJjRbis=', ''),
(95, 1422595686, 1, 'user', 1, '5KNYVJYvE866TPMGsYIeYxo3ELMNpll0p+PHNVyo59c=', ''),
(96, 1427004848, 1, 'user', 1, 'GMBNTn76TkQ7LgH6amMvDloaIuBxfeVDp7TQQnci+Mo=', ''),
(97, 1427004883, 1, 'user', 1, 'q8sXKoRKaOsUDS8hypJnKdNDe3zwhWn4euXcG68upf8=', ''),
(98, 1427004893, 1, 'user', 1, 'cwjlsmg9mdo3ZJsnRE10b9l31XJBevjMa7R9Gw0NwWU=', '');

-- --------------------------------------------------------

--
-- Table structure for table `messages_hashtag`
--

CREATE TABLE IF NOT EXISTS `messages_hashtag` (
`id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `content` text
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_hashtag`
--

INSERT INTO `messages_hashtag` (`id`, `hashtag`, `author.type`, `author.id`, `time`, `content`) VALUES
(7, 'tag', 'user', 1, 1418363022, 'v'),
(10, 'code', 'user', 1, 1418964326, 's'),
(11, 'code', 'user', 1, 1418964352, 'x'),
(12, 'code', 'user', 1, 1418964546, 's'),
(13, 'code', 'user', 1, 1418964653, 's'),
(14, 'code', 'user', 1, 1418964666, 'g'),
(15, 'hashtag', 'user', 1, 1423665527, '.'),
(16, 'hashtag', 'user', 1, 1423665540, '..'),
(17, 'hashtag', 'user', 1, 1423665625, '...'),
(18, 'hashtag', 'user', 1, 1423665670, '....'),
(19, 'hashtag', 'user', 1, 1423665763, '.....'),
(20, 'hashtag', 'user', 1, 1423665832, '......');

-- --------------------------------------------------------

--
-- Table structure for table `messages_id`
--

CREATE TABLE IF NOT EXISTS `messages_id` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `private` int(1) NOT NULL,
  `type` int(1) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `private`, `type`, `name`) VALUES
(1, 1416920954, 'ebe59e14', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `messages_members`
--

CREATE TABLE IF NOT EXISTS `messages_members` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `regency` char(10) NOT NULL,
  `translate` int(1) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(1, 1416920954, 1, '1', 0, 'user', 1),
(2, 1416920954, 1, '1', 1, 'user', 2),
(3, 1416920954, 1, '1', 0, 'user', 3);

-- --------------------------------------------------------

--
-- Table structure for table `messages_typing`
--

CREATE TABLE IF NOT EXISTS `messages_typing` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_views`
--

CREATE TABLE IF NOT EXISTS `messages_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_views`
--

INSERT INTO `messages_views` (`id`, `time`, `tab`, `author.type`, `author.id`) VALUES
(1, 1427297824, 1, 'user', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mood`
--

CREATE TABLE IF NOT EXISTS `mood` (
`id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `emoticon` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mood`
--

INSERT INTO `mood` (`id`, `type`, `code`, `emoticon`) VALUES
(2, 'feel', '[feel]happy', ''),
(3, 'feel', '[feel]so_happy', ''),
(4, 'feel', '[feel]great', ''),
(5, 'feel', '[feel]fine', ''),
(6, 'feel', '[feel]inquisitive', ''),
(7, 'feel', '[feel]disturb', ''),
(8, 'feel', '[feel]despair', ''),
(9, 'feel', '[feel]angry', ''),
(10, 'feel', '[feel]proud', ''),
(11, 'feel', '[feel]empty', ''),
(12, 'feel', '[feel]disgusting', ''),
(13, 'feel', '[feel]beneath', ''),
(14, 'feel', '[feel]scarcely', ''),
(15, 'feel', '[feel]shame', ''),
(16, 'feel', '[feel]dirty', ''),
(17, 'feel', '[feel]fail', ''),
(18, 'feel', '[feel]serenity', ''),
(19, 'feel', '[feel]sad', ''),
(20, 'feel', '[feel]so_sad', ''),
(21, 'feel', '[feel]regretful', ''),
(22, 'feel', '[feel]interesting', ''),
(23, 'feel', '[feel]not_assured', '');

-- --------------------------------------------------------

--
-- Table structure for table `music_album`
--

CREATE TABLE IF NOT EXISTS `music_album` (
`id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `places.type` int(1) NOT NULL,
  `places.value` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `tags` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `music_block`
--

CREATE TABLE IF NOT EXISTS `music_block` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `this.type` char(10) NOT NULL,
  `this.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `music_cache`
--

CREATE TABLE IF NOT EXISTS `music_cache` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `close` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` char(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `copy` varchar(20) NOT NULL,
  `mime` char(15) NOT NULL,
  `size` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `path` text NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `music_info`
--

CREATE TABLE IF NOT EXISTS `music_info` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `singer` varchar(40) NOT NULL,
  `tags` text,
  `description` varchar(255) NOT NULL,
  `private.view` int(1) NOT NULL,
  `private.comment` int(1) NOT NULL,
  `private.share` int(1) NOT NULL,
  `file.original` varchar(255) NOT NULL,
  `secret.original` varchar(40) NOT NULL,
  `path.original` text NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec` char(10) NOT NULL,
  `bitrate` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `mime_type` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_info`
--

INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `display`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `secret.original`, `path.original`, `file.datetime`, `file.size`, `codec`, `bitrate`, `duration`, `mime_type`) VALUES
(1, 1, 'user', 1, 0, 1429190446, 'f8934a6e', 'cf34645d98a7630e2bcca98b3e29c8f2', 'ss', 'Láº·ng tháº§m.mp3', '', '', '', 4, 4, 4, '23ac7f8ce645aec0e94a5e0700d9efc1.mp3', 'd31ffd62f049fdd180017baf0e0634d7', '0536ef93', 0, 3201024, 'mp3', 128011, 200.045685, 'audio/mp3');

-- --------------------------------------------------------

--
-- Table structure for table `music_replay`
--

CREATE TABLE IF NOT EXISTS `music_replay` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `music.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_replay`
--

INSERT INTO `music_replay` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(1, 1429280140, 1, 'user', '1', 1429885041, 114);

-- --------------------------------------------------------

--
-- Table structure for table `music_reviewlater`
--

CREATE TABLE IF NOT EXISTS `music_reviewlater` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `music.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `music_views`
--

CREATE TABLE IF NOT EXISTS `music_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `music.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `quality` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_views`
--

INSERT INTO `music_views` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `quality`) VALUES
(1, 1429190453, 1, 'user', '1', '0'),
(2, 1429280125, 1, 'user', '1', '0'),
(3, 1429333217, 1, 'user', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
`id` int(11) NOT NULL,
  `code` text NOT NULL,
  `language` char(4) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id`, `code`, `language`, `value`) VALUES
(1, 'notification_error_timeout', 'en', '3000'),
(2, 'contentType_urlencoded.utf8', 'en', 'application/x-www-form-urlencoded; charset: utf-8'),
(3, 'status_comment_effect_show', 'en', '100'),
(4, 'status_comment_effect_duration', 'en', '500'),
(5, 'status_comment_effect_nextTime', 'en', '250'),
(6, 'status_comment_scrollbar_limit', 'en', '8'),
(7, 'contentType_html.utf8', 'en', 'text/html; charset: utf-8'),
(8, 'contentType_js.utf8', 'en', 'text/javascript; charset: utf-8'),
(9, 'contentType_css.utf8', 'en', 'text/css; charset: utf-8'),
(10, 'contentType_json.utf8', 'en', 'application/json; charset: utf-8'),
(11, 'call_function_timeout', 'en', '100'),
(12, 'setupTimestamp_timeout', 'en', '60000'),
(13, 'popupNotification_timeout', 'en', '5000'),
(14, 'popupNotification_limit', 'en', '5'),
(15, 'sleep_when_error', 'en', '1000'),
(16, 'sites_id_time_limit', 'en', '3600'),
(17, 'sites_info_time_limit', 'en', '3600'),
(18, 'sites_id_rate_v1', 'en', '1'),
(19, 'sites_id_rate_v2', 'en', '2000'),
(20, 'sites_id_rate_v3', 'en', '3000'),
(21, 'sites_id_rate_v4', 'en', '4000'),
(22, 'sites_id_rate_v5', 'en', '5000'),
(23, 'notification_info_places', 'en', '5000'),
(25, 'updateLoop_timeout', 'en', '60000'),
(27, 'user_private.tag_agree', 'en', '1'),
(28, 'user_private.tag_refuse', 'en', '0'),
(29, 'user_private.search_agree', 'en', '1'),
(30, 'user_private.search_refuse', 'en', '0'),
(31, 'AutoComplete_type', 'en', 'autocomplete'),
(32, 'photos_allow_format', 'en', 'a:4:{i:0;s:3:"jpg";i:1;s:3:"gif";i:2;s:3:"png";i:3;s:4:"jpeg";}'),
(33, 'photos_allow_size', 'en', '3145728'),
(34, 'photos_folder_min', 'en', '1'),
(35, 'photos_folder_max', 'en', '9'),
(36, 'photos_folder_path', 'en', 'storage/photos/drive'),
(37, 'photos_size_large_w', 'en', '1440'),
(38, 'photos_size_medium_w', 'en', '720'),
(39, 'photos_size_small_w', 'en', '360'),
(40, 'photos_cache_forder', 'en', 'storage/cache/photos'),
(41, 'photos_cache_time', 'en', '1800'),
(42, 'photos_name_pack_large', 'en', '_l'),
(43, 'photos_name_pack_medium', 'en', '_m'),
(44, 'photos_name_pack_small', 'en', '_s'),
(45, 'PhotosEditorPopup_footer_text', 'en', 'Â© Giccos'),
(46, 'path_image_static_default', 'en', 'storage/image/static/default'),
(47, 'pathVirtual_cache_photos', 'en', 'photos/cache'),
(48, 'media_cache_time_push', 'en', '180'),
(49, 'media_cache_time_close', 'en', '3600'),
(51, 'media_cache_time_push_ms', 'en', '180000'),
(52, 'user_private.search_default', 'en', '1'),
(53, 'user_private.tag_default', 'en', '3'),
(54, 'user_guide.default', 'en', '0'),
(55, 'user_theme.default', 'en', '1'),
(58, 'contentType_xml.utf8', 'en', 'application/xml; charset=utf-8'),
(60, 'path_video_static_default', 'en', 'storage/video/static/default'),
(61, 'videos_cache_time', 'en', '1800'),
(62, 'videos_cache_forder', 'en', 'storage/cache/videos'),
(63, 'videos_folder_path', 'en', 'storage/videos/drive'),
(64, 'videos_folder_min', 'en', '1'),
(65, 'videos_folder_max', 'en', '9'),
(66, 'pathVirtual_cache_videos', 'en', 'videos/cache'),
(78, 'music_folder_min', 'en', '1'),
(79, 'music_folder_max', 'en', '9'),
(80, 'pathVirtual_cache_music', 'en', 'music/cache'),
(81, 'music_folder_path', 'en', 'storage/music/drive'),
(82, 'music_cache_forder', 'en', 'storage/cache/music'),
(83, 'music_cache_time', 'en', '1800'),
(84, 'path_audio_static_default', 'en', 'storage/audio/static/default'),
(86, 'videos_allow_format', 'en', 'a:6:{i:0;s:3:"mp4";i:1;s:3:"avi";i:2;s:3:"3gp";i:3;s:3:"flv";i:4;s:3:"mov";i:5;s:3:"mov";}'),
(87, 'videos_allow_size', 'en', '52428800'),
(88, 'music_allow_format', 'en', 'a:1:{i:0;s:3:"mp3";}'),
(89, 'music_allow_size', 'en', '10485760'),
(92, 'maps_statismap_zoom', 'en', '15'),
(93, 'maps_statismap_size', 'en', '480x480'),
(94, 'maps_statismap_type', 'en', 'roadmap'),
(95, 'maps_statismap_markers', 'en', 'color:red'),
(96, 'photos_size_original_w', 'en', '0'),
(97, 'exif_read_data_allow', 'en', 'a:2:{i:0;s:3:"jpg";i:1;s:4:"jpeg";}'),
(98, 'regex_hashtag', 'en', '/(^|\\s)#([a-zA-Z0-9\\_]+)/'),
(99, 'regex_usertag', 'en', '/(^|\\s)@([a-zA-Z0-9\\_]+)/'),
(100, 'cited_inputAuthor_length', 'en', '40'),
(101, 'cited_inputQuote_length', 'en', '255'),
(102, 'cited_photosID_default', 'en', '0'),
(103, 'cited_photosSize_length', 'en', '500'),
(104, 'status_effect_show', 'en', '100'),
(105, 'status_effect_duration', 'en', '500'),
(106, 'status_effect_nextTime', 'en', '250'),
(107, 'feed_update_call', 'en', '10000'),
(108, 'feed_update_timeout', 'en', '10000'),
(109, 'hash_status_content', 'en', 'g::key::status->content'),
(110, 'hash_user_password', 'en', 'g::key::user->password'),
(112, 'user_timezone.default', 'en', 'Asia/Saigon'),
(113, 'user_language.default', 'en', 'en'),
(114, 'user_private.status_default', 'en', '3'),
(115, 'hash_photos_static', 'en', 'g::key::photos->static'),
(116, 'hash_photos_other', 'en', 'g::key::photos->other'),
(117, 'user_private.info_default', 'en', '4'),
(118, 'notification_text_timeout', 'en', '4000'),
(119, 'key_api_google_1', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(120, 'key_api_google_2', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(121, 'key_api_google_3', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(122, 'key_api_google_4', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(123, 'key_api_google_5', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(124, 'key_api_google_6', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(125, 'key_api_google_7', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(126, 'key_api_google_8', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(127, 'key_api_google_9', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(128, 'key_api_google_10', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(129, 'hash_sites_direct', 'en', 'g::key::sites->direct'),
(130, 'regex_domain', 'en', 'localhost\\/giccos'),
(131, 'status_effect_id', 'en', '2'),
(132, 'status_effect_type', 'en', 'fade'),
(133, 'http_secure', 'en', 'false'),
(134, 'status_timeout_newcheck', 'en', '60000'),
(135, 'contentType_swf.utf8', 'en', 'application/x-shockwave-flash; charset: utf-8'),
(136, 'videos_thumbnail_path', 'en', 'storage/videos/thumbnail'),
(137, 'mediaPlayer_rememberTime', 'en', '5000'),
(138, 'security_accounts_loginTimesIncorrect', 'en', '5'),
(139, 'security_accounts_loginTimeAllow', 'en', '3'),
(140, 'http_cache_expire', 'en', '86400'),
(141, 'http_cache_expire_quick', 'en', '3600'),
(142, 'http_cache_expire_static', 'en', '129600'),
(143, 'default_user_avatar_large', 'en', 'storage/photos/static/no-avatar.jpg'),
(144, 'default_user_avatar_medium', 'en', 'storage/photos/static/no-avatar.jpg'),
(145, 'default_user_avatar_small', 'en', 'storage/photos/static/no-avatar.jpg'),
(146, 'default_user_cover_large', 'en', 'storage/photos/static/no-cover.jpg'),
(147, 'default_user_cover_medium', 'en', 'storage/photos/static/no-cover.jpg'),
(148, 'default_user_cover_small', 'en', 'storage/photos/static/no-cover.jpg'),
(149, 'suggest_weather_reopen', 'en', '1800'),
(150, 'suggest_weather_reload', 'en', '3600'),
(151, 'suggest_news_reload', 'en', '3600'),
(152, 'suggest_guys_reload', 'en', '3600'),
(153, 'suggest_guys_reopen', 'en', '1800'),
(154, 'suggest_news_reopen', 'en', '1800'),
(155, 'select_time_years_min_limit', 'en', '1975'),
(156, 'select_time_years_max_limit', 'en', '2015'),
(157, 'select_time_months_min_limit', 'en', '1'),
(158, 'select_time_months_max_limit', 'en', '12'),
(159, 'select_time_days_min_limit', 'en', '1'),
(160, 'select_time_days_max_limit', 'en', '30'),
(161, 'select_time_hours_min_limit', 'en', '0'),
(162, 'select_time_hours_max_limit', 'en', '23'),
(163, 'select_time_minutes_min_limit', 'en', '0'),
(164, 'select_time_minutes_max_limit', 'en', '59'),
(165, 'select_time_seconds_min_limit', 'en', '0'),
(166, 'select_time_seconds_max_limit', 'en', '59'),
(167, 'key_api_virustotal_1', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(168, 'key_api_virustotal_2', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(169, 'key_api_virustotal_3', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(170, 'key_api_virustotal_4', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(171, 'key_api_virustotal_5', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(172, 'key_api_virustotal_6', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(173, 'key_api_virustotal_7', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(174, 'key_api_virustotal_8', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(175, 'key_api_virustotal_9', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(176, 'key_api_virustotal_10', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(177, 'media_view_time_limit', 'en', '86400'),
(178, 'user_private.photos_default', 'en', '4'),
(179, 'user_private.music_default', 'en', '4'),
(180, 'user_private.videos_default', 'en', '4'),
(181, 'explorer_length_randKeyEvent', 'en', '32'),
(182, 'private.public', 'en', '4'),
(183, 'media_settings.replay_default', 'en', '1'),
(184, 'media_settings.replay_allow', 'en', '1'),
(185, 'cookie.host.path', 'en', '/giccos'),
(186, 'storage_folder_path', 'en', 'storage'),
(187, 'storage_folder_min', 'en', '1'),
(188, 'storage_folder_max', 'en', '10'),
(189, 'storage_folder_name', 'en', 'drive'),
(190, 'cacheClean_by_users_limit_rand_min', 'en', '10'),
(191, 'cacheClean_by_users_limit_rand_max', 'en', '100'),
(192, 'videos_thumbnail_image_mime', 'en', 'image/png'),
(193, 'rekognition_key', 'en', 'aJyI214g7jnoRP2I'),
(194, 'rekognition_secret', 'en', 'eAcco8pF6fpDgdJg'),
(195, 'rekognition_namespace', 'en', 'giccos'),
(196, 'rekognition_userid', 'en', 'database'),
(197, 'rekognition_url', 'en', 'http://rekognition.com/func/api/'),
(198, 'rekognition_rate_allow', 'en', '0.25'),
(199, 'rekognition_tagupload', 'en', 'untagged'),
(200, 'rekognition_tagdefault', 'en', '_x_all'),
(201, 'image_faces_thumbnail', 'en', '150');

-- --------------------------------------------------------

--
-- Table structure for table `photos_block`
--

CREATE TABLE IF NOT EXISTS `photos_block` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `this.type` char(10) NOT NULL,
  `this.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_cache`
--

CREATE TABLE IF NOT EXISTS `photos_cache` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `close` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` char(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `copy` varchar(20) NOT NULL,
  `mime` char(15) NOT NULL,
  `size` int(11) NOT NULL,
  `path` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_faces`
--

CREATE TABLE IF NOT EXISTS `photos_faces` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `photos` varchar(40) NOT NULL,
  `photos.local` varchar(20) NOT NULL,
  `faces` char(10) NOT NULL,
  `guy.type` char(10) DEFAULT NULL,
  `guy.id` int(11) DEFAULT NULL,
  `boundingbox.tl.y` char(6) NOT NULL,
  `boundingbox.tl.x` char(6) NOT NULL,
  `boundingbox.size.height` char(6) NOT NULL,
  `boundingbox.size.width` char(6) NOT NULL,
  `boundingbox.ratio.height` char(6) NOT NULL,
  `boundingbox.ratio.width` char(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_faces`
--

INSERT INTO `photos_faces` (`id`, `token`, `display`, `user.id`, `author.type`, `author.id`, `photos`, `photos.local`, `faces`, `guy.type`, `guy.id`, `boundingbox.tl.y`, `boundingbox.tl.x`, `boundingbox.size.height`, `boundingbox.size.width`, `boundingbox.ratio.height`, `boundingbox.ratio.width`) VALUES
(11, 'ad10174a', '13554915b77fe833a205485ea61e41ba', 1, 'user', 1, '726b114fe58b6cd35b839371071ae1f4', 'drive', '10736b63', NULL, NULL, '10.77', '10.77', '125.38', '125.38', '1.1963', '1.1963'),
(12, '2a498d1e', '27e3a96afa5697df4f5d5dc5b56af0df', 1, 'user', 1, '343e28ee2ec6ec80943b410d2cce74c1', 'drive', '817d59c8', NULL, NULL, '91.54', '91.54', '503.85', '503.85', '1.3396', '1.3396');

-- --------------------------------------------------------

--
-- Table structure for table `photos_info`
--

CREATE TABLE IF NOT EXISTS `photos_info` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `scrapbook` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `tags` text,
  `description` varchar(255) NOT NULL,
  `attachments` int(1) NOT NULL,
  `public` int(1) NOT NULL,
  `private.view` int(1) NOT NULL,
  `private.comment` int(1) NOT NULL,
  `private.share` int(1) NOT NULL,
  `file.original` varchar(50) NOT NULL,
  `file.large` varchar(50) NOT NULL,
  `file.medium` varchar(50) NOT NULL,
  `file.small` varchar(50) NOT NULL,
  `secret.original` varchar(40) NOT NULL,
  `secret.large` varchar(40) NOT NULL,
  `secret.medium` varchar(40) NOT NULL,
  `secret.small` varchar(40) NOT NULL,
  `path.original` text NOT NULL,
  `path.large` text NOT NULL,
  `path.medium` text NOT NULL,
  `path.small` text NOT NULL,
  `size.height` int(11) NOT NULL,
  `size.width` int(11) NOT NULL,
  `aperture.f` char(10) DEFAULT NULL,
  `aperture.max_value` char(10) DEFAULT NULL,
  `b.o.m` int(1) DEFAULT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `file.type` int(1) NOT NULL,
  `file.source` varchar(50) DEFAULT NULL,
  `flash` int(11) DEFAULT NULL,
  `focal.length` varchar(20) DEFAULT NULL,
  `iso` int(5) DEFAULT NULL,
  `make` varchar(30) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL,
  `metering.mode` int(1) DEFAULT NULL,
  `mime_type` varchar(30) NOT NULL,
  `software` varchar(50) DEFAULT NULL,
  `ccd.width` char(10) DEFAULT NULL,
  `exposure.time` char(10) DEFAULT NULL,
  `exposure.mode` int(1) DEFAULT NULL,
  `exposure.bias_value` char(10) DEFAULT NULL,
  `f_number` char(10) DEFAULT NULL,
  `sensing.method` int(1) DEFAULT NULL,
  `shutter.speed` char(10) DEFAULT NULL,
  `digital_zoom.ratio` varchar(15) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 1, 'user', 1, 0, 1429379219, 'b01d0653', 'fee5909672179ff7db422c1092fceac6', '47bf294f.jpg', '4815bc31 (1).jpg', '', '', 0, 0, 4, 4, 4, '236c5e12e465fe2af50b81838bf4c99c.jpg', '0', 'a715a28c7a527fec1e2698f9b8e8c72f.jpg', 'd6a04472c937bce6ee751bd29fbcff94.jpg', '40671ca8a56801b76f59df00dd01f6b3', '0', '309f667392100ca3b12b380267e09289', 'c5d462b4a06f45a9c0a87653411a3200', 'cd89ca0e', '0', '1dcafc18', '26a564d3', 2348, 1409, 'f/2.4', '0', 0, 1429379217, 2292541, 2, '0', 0, '392/100', 1600, 'lge', 'LG-F180L', 3, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '1/12', 0, '0/1', '24/10', 0, '3584963/10', '0'),
(2, 1, 'user', 1, 0, 1430492130, 'dc85621d', '343e28ee2ec6ec80943b410d2cce74c1', '9bb57ecf.jpg', '0fc454ff.jpg', '', '', 0, 0, 4, 4, 4, '5dc53266e7f4d9f3b051892f43cf61ae.jpg', '0', '0', '15807dfd4cc421fb9d577726ea2f6cd9.jpg', '3341d870c96c03952ed8e4a0970b38da', '0', '0', 'c5a0f8411a4cd417af6caf3e7f60b4dd', '4dcaf1e3', '0', '0', '40219890', 675, 675, '0', '0', 1, 1430490988, 292389, 2, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '0', 0, '0', '0', 0, '0', '0'),
(3, 1, 'user', 1, 0, 1430492130, 'f3dd1a1a', '726b114fe58b6cd35b839371071ae1f4', '4d191094.png', '0fc45x4ff.png', '', '', 0, 0, 4, 4, 4, '46c2acb0c8b370100183d0f14248c56c.png', '0', '0', '0', '0a90cb74f6e23f994325fbb27749dcb5', '0', '0', '0', '54c0cdb9', '0', '0', '0', 150, 150, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/png', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(4, 1, 'user', 1, 0, 1430492131, 'be0f55b2', '4ad28ddfdaf6cc3653f6d0997666df91', '7aa01062.jpg', '0fc454ff.jpg', '', '', 0, 0, 4, 4, 4, '28f321ad7e5327ca55a2749d2a5f8435.jpg', '0', '0', '6303ddd26e1bcd1f4c9f8a41858552a1.jpg', '3341d870c96c03952ed8e4a0970b38da', '0', '0', 'c5a0f8411a4cd417af6caf3e7f60b4dd', '76481406', '0', '0', 'ab477c30', 675, 675, '0', '0', 1, 1430489601, 292389, 2, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '0', 0, '0', '0', 0, '0', '0'),
(5, 1, 'user', 1, 0, 1430492131, 'bce7ee39', '6ea20ad3fad7bede08e70742dd47d25f', 'b70361a1.png', '0fc45x4ff.png', '', '', 0, 0, 4, 4, 4, 'e71da2202ef7c3a5c261bbc2c592a01e.png', '0', '0', '0', '0a90cb74f6e23f994325fbb27749dcb5', '0', '0', '0', '20ba0d09', '0', '0', '0', 150, 150, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/png', '0', '0', '0', 0, '0', '0', 0, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `photos_scrapbook`
--

CREATE TABLE IF NOT EXISTS `photos_scrapbook` (
`id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `places.type` int(1) NOT NULL,
  `places.value` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `tags` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_tips`
--

CREATE TABLE IF NOT EXISTS `photos_tips` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `boundingbox.tl.y` char(6) NOT NULL,
  `boundingbox.tl.x` char(6) NOT NULL,
  `boundingbox.size.height` char(6) NOT NULL,
  `boundingbox.size.width` char(6) NOT NULL,
  `boundingbox.ratio.height` char(6) NOT NULL,
  `boundingbox.ratio.width` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_views`
--

CREATE TABLE IF NOT EXISTS `photos_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(10) NOT NULL,
  `size` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_views`
--

INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES
(1, 1429973122, 1, 'user', '1', '0'),
(2, 1430063287, 1, 'user', '1', '0'),
(3, 1430493119, 5, 'user', '1', '0'),
(4, 1430493119, 4, 'user', '1', '0'),
(5, 1430493119, 2, 'user', '1', '0'),
(6, 1430493119, 3, 'user', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` char(128) NOT NULL,
  `time` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `token` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('ttMGRXFgIra81ypfw,-BmuGphsZJ75bKw8TVluA2BB8', 1430493206, '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', '28416c1e');

-- --------------------------------------------------------

--
-- Table structure for table `sites_author`
--

CREATE TABLE IF NOT EXISTS `sites_author` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `host` varchar(100) NOT NULL,
  `verified` int(1) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_id`
--

CREATE TABLE IF NOT EXISTS `sites_id` (
`id` int(11) NOT NULL,
  `host` varchar(100) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  `rate` int(1) NOT NULL,
  `count` int(11) NOT NULL,
  `secure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_info`
--

CREATE TABLE IF NOT EXISTS `sites_info` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `secure` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `host` varchar(100) NOT NULL,
  `path` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_secure`
--

CREATE TABLE IF NOT EXISTS `sites_secure` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `host` varchar(100) NOT NULL,
  `verified` int(1) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_views`
--

CREATE TABLE IF NOT EXISTS `sites_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `date` int(11) DEFAULT NULL,
  `edit` int(11) DEFAULT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `private.view` int(1) NOT NULL DEFAULT '4',
  `private.comment` int(1) NOT NULL DEFAULT '4',
  `private.share` int(1) NOT NULL DEFAULT '4',
  `type` char(10) NOT NULL,
  `content` text,
  `usertag` int(1) NOT NULL,
  `hashtag` int(1) NOT NULL,
  `places` int(1) NOT NULL,
  `mood` int(1) NOT NULL,
  `link` int(1) NOT NULL,
  `share` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '', 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, '', 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0),
(4, '4ac81ee1', 'cdc15f62fbc2a575515cc489a7050480', 1429279357, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'INticzZTHECI2CllQIruL3UOa6ZCtkgJc1JV1GKt1zI=', 0, 0, 0, 0, 0, 0),
(7, 'f1221a7f', '8ae5d043205e82a0ccb1a1e53abb9da5', 1429365870, NULL, 0, 1, 'user', 1, 3, 3, 3, 'videos', '/5eVsdIw7HFUfLyvxHAy/jWSjJpjCqd/PFliW1xSNok=', 0, 0, 0, 0, 0, 0),
(9, '6f140cd3', '9f8bdab6c98d562561b4c29fab99847c', 1430484971, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', '0jRPO6mj6iWaY88fvJb33fqyHIGMnB00NipI8gaMyn4=', 0, 0, 0, 0, 0, 0),
(10, 'fc696f35', '8b4c01fb97c56ecce0f5b687464d682d', 1430490905, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', 'ATrUv7yCPNNmpRk2bWf1sPfnPcCrOH1x7P0PdDG67Sw=', 0, 0, 0, 0, 0, 0),
(11, '55763faa', 'bc375f1034aa9e1bfc8d21baeed576df', 1430490999, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', 'KuD5o2CmrwMPRVdInp9F1mOV9CknjA4dG04f44lyFe4=', 0, 0, 0, 0, 0, 0),
(12, '56928b15', 'e5d07c953d4d89701a42efbca1b5dea0', 1430491179, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', '2KtFrp9AX9wtKo6DFn0xXGO7ZFMF0iFs9yIhS6He3RA=', 0, 0, 0, 0, 0, 0),
(13, '08f11e66', 'dd336789c1aadfb84562850546e8e274', 1430491818, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', 'lwGYPI2naJQdFWVB23a04UTymvn3b8lnZ4uCPM7Ijgg=', 0, 0, 0, 0, 0, 0),
(14, '1fe5eef1', '94a4b3fadf271dd0d262916b27741dae', 1430492013, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', 'BY5pvyC0BU0aDLMMXDZuG1j/KoV+FsTmo4lSRL352wE=', 0, 0, 0, 0, 0, 0),
(15, 'a415c5d1', '0e4a78fbac81120f73fd38a1dfba2f26', 1430492052, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', 'FUj/pVxJU431/35+sNlcRQRv2H1+8h+PWtET47gpAHs=', 0, 0, 0, 0, 0, 0),
(16, 'aea8392d', '82d78588eac0dfbde6d2855a7a7e8d5a', 1430492129, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', 'msz6CaiAl0IyidUkk2Bp0mID4weWu7I4kbz6p5bH3HA=', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `status_block`
--

CREATE TABLE IF NOT EXISTS `status_block` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_cited`
--

CREATE TABLE IF NOT EXISTS `status_cited` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `cited.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_comment`
--

CREATE TABLE IF NOT EXISTS `status_comment` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) DEFAULT NULL,
  `comment.id` int(11) DEFAULT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `edit` int(11) DEFAULT NULL,
  `content` text,
  `logscontent` text
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `time`, `status.id`, `comment.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(1, 1429713683, 7, 0, 'user', 1, NULL, 'FT31nobrZDH1472m/oStm02yEbAitfHJv//eHCyUbps=', NULL),
(3, 1429796482, 0, 2, 'user', 1, NULL, 'N+XMxidfhzNtzJS6ByaZcunkES1Ux0DaRsbugddCXiY=', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_comment_favorite`
--

CREATE TABLE IF NOT EXISTS `status_comment_favorite` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `comment.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_edit`
--

CREATE TABLE IF NOT EXISTS `status_edit` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_favorite`
--

CREATE TABLE IF NOT EXISTS `status_favorite` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_follow`
--

CREATE TABLE IF NOT EXISTS `status_follow` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1),
(4, 1429279357, 4, 'user', 1),
(7, 1429365870, 7, 'user', 1),
(9, 1430484971, 9, 'user', 1),
(10, 1430490905, 10, 'user', 1),
(11, 1430490999, 11, 'user', 1),
(12, 1430491179, 12, 'user', 1),
(13, 1430491818, 13, 'user', 1),
(14, 1430492013, 14, 'user', 1),
(15, 1430492052, 15, 'user', 1),
(16, 1430492129, 16, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_hashtag`
--

CREATE TABLE IF NOT EXISTS `status_hashtag` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_invite`
--

CREATE TABLE IF NOT EXISTS `status_invite` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_link`
--

CREATE TABLE IF NOT EXISTS `status_link` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_mood`
--

CREATE TABLE IF NOT EXISTS `status_mood` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_music`
--

CREATE TABLE IF NOT EXISTS `status_music` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `music.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_music`
--

INSERT INTO `status_music` (`id`, `status.id`, `music.id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_photos`
--

CREATE TABLE IF NOT EXISTS `status_photos` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_photos`
--

INSERT INTO `status_photos` (`id`, `status.id`, `photos.id`) VALUES
(1, 16, 2),
(2, 16, 3),
(3, 16, 4),
(4, 16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `status_places`
--

CREATE TABLE IF NOT EXISTS `status_places` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_share`
--

CREATE TABLE IF NOT EXISTS `status_share` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `this.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_usertag`
--

CREATE TABLE IF NOT EXISTS `status_usertag` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_videos`
--

CREATE TABLE IF NOT EXISTS `status_videos` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(2, 3, 2),
(5, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `storage_audio`
--

CREATE TABLE IF NOT EXISTS `storage_audio` (
`id` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` text NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 3, 1429190444, '09c0d755', '', 'd31ffd62f049fdd180017baf0e0634d7', 'm+2K6NMnsQfCIzu5B4+EqOdl4HqEkEu5qy9JNzeR6CNuyqGwwv/lZKo0lMzP2+WhcNfjyjcd84BEvXEStQakUQ==', 'audio/mp3', '07ebc063', 'Láº·ng tháº§m.mp3', 1429190444, 3201024),
(2, 'drive', 6, 1429190446, '5e447272', '', 'd31ffd62f049fdd180017baf0e0634d7', 'jKQDby8NnxSsw2fH4vqPmBo+EZesl4blPsEwU1qX9FB/k38KSHayplYDXQia7hYTwNO6BaIWXN8+pqH1TkziLQ==', 'audio/mp3', '0536ef93', 'Láº·ng tháº§m.mp3', 1429190446, 3201024);

-- --------------------------------------------------------

--
-- Table structure for table `storage_image`
--

CREATE TABLE IF NOT EXISTS `storage_image` (
`id` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` text NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 8, 1429192096, '17ecd421', '', '6d019b64e1c1245ea463de79345e52b3', 'gtVogaCEIvsnhCZxN0AFIKb1Sito/eSHqz6FAv2SnGLgs5G5rHAXhV1ahhwak5eatf9lS7Nm8aHDYZYujBoepQ==', 'image/png', '005637ce', 'eb8cccf0.png', 1429192107, 11900),
(2, 'drive', 5, 1429192118, 'dfd8dcf0', '', '0', 'R/4P0nc+HvgI7R6sHVpke/pR0gZsthC3SSO08snJJUlxXcYa4r1Ba1hdoCA1Q7cx9GqwgDrRVO4r/CQ6nmZKxQ==', 'image/png', '374bd3ab', 'a36eb7ae191dd1692e80e2cb2783bece.png', 0, 0),
(3, 'drive', 6, 1429192346, '4745168f', '', '6d019b64e1c1245ea463de79345e52b3', 'nwpFLm8P6XLAmfT7HtKvBiAkYmLmC6CDeFg869MYEsKiZiJdk9ZaxmFL3rDU42VB35qUiCvwjXoN11j0eDO/0g==', 'image/png', '76658e7c', 'ed6531b4.png', 1429192356, 11900),
(4, 'drive', 9, 1429192361, '317e296a', '', '6d019b64e1c1245ea463de79345e52b3', 'eEuFnaBM5gvAiYNVlGUdeltMUxtvlb0CysRxRw5m2xmvjrG6pUUDjpZQikvoiZL+6ge7196d2wRGvqYS5c+Y0Q==', 'image/png', '8e2418ef', 'bbb55a2d4b12267706ddfc90a4d67aaa.png', 1429192377, 11900),
(5, 'drive', 5, 1429364676, '72804900', '', '6d019b64e1c1245ea463de79345e52b3', '3TJuNpeAvkVDBx/ZCnSRS9USt0YAePXpFgdTqnBnFJXeYe+mKKSaJ3Mq213VRYesQhmuHsMgLXlhxE9QlFwpHw==', 'image/png', '1c3fb179', '49b151a0.png', 1429364689, 11900),
(6, 'drive', 2, 1429364738, 'b74ebe8f', '', '6d019b64e1c1245ea463de79345e52b3', 'AGZRnqcC7wriclPxAi7siaw9Ptp/4qHvit/mw8vkNXSz2Hk77fsEqYgkGg8V5mMjThiZM9B4DuT12hKBXm7tjw==', 'image/png', '07af1318', '1be94b77.png', 1429364748, 11900),
(7, 'drive', 7, 1429364862, '77ac8bd2', '', '6d019b64e1c1245ea463de79345e52b3', 'jndr08AWmMofokg5TbY54wg4jdvBT9FRXKSaW58R1PfxqMLr85Pii86VNRzf5EUgT02Pg0d0EpV9d2JQpf8HlQ==', 'image/png', '90b17a0a', 'b8655859.png', 1429364873, 11900),
(8, 'drive', 8, 1429365059, '2e43ee74', '', 'd41d8cd98f00b204e9800998ecf8427e', 'WC3Djm9z3PrANfKNAHVPxrtbbEif4Wqf+QpA94YR2eu44I1PA6mctuwxSrGS7r9Tf/xL7GygGQmL3+4nLDJNUQ==', 'image/png', '68609900', '8ad3a70d.png', 1429365059, 0),
(9, 'drive', 8, 1429365315, '056ee945', '', 'd1883688fa28b0f520795c517faae576', '7XT86nE8qBF7TnTtm3tF1frsNhN1jP6LbYlkV74qi7ZPQK8HwzZxAp15u0X8DyAIquCXmOxdt3pFvSdDAjUpLg==', 'image/png', '12f1aad0', '83fddd34.png', 1429365318, 14890),
(10, 'drive', 9, 1429365454, 'c504240f', '', 'b3c620b4e54f26994512dcf93d6498e2', 'x/yO1/PKvL6aViGsoFTO8OGLCTDNWkc4kAAdHPcjf4CceGCwgwWxFuwJ9jNAURRu6qHjSgWh5MEPZxcKxiY8kw==', 'image/png', '43479fbb', '6644746a.png', 1429365458, 36956),
(11, 'drive', 5, 1429365555, 'a798b03a', '', 'b3c620b4e54f26994512dcf93d6498e2', 'nD885KwTGnvcgMMJ2Cm1yBMEqzaXAZGiYxnEVtk8Bo0ouZEJ3Pg5nVK4gOZb7Y0kGqVk5Gf53oRvH1j+epIvOA==', 'image/png', 'f4ccce7c', '760459ef915fdbe3f68970d0d62d3883.png', 1429365563, 36956),
(12, 'drive', 6, 1429365771, '5f3ea35f', '', 'b3c620b4e54f26994512dcf93d6498e2', 'Xkq1LNA+L9Wp30ftm4x31osSe98g+f3GfnOZ2Fol/8KvZUarcQLciVr+oQAo64loCEXYTENj/V6/q/4eKsef0w==', 'image/png', 'f8f08ae3', '84d0573f.png', 1429365776, 36956),
(13, 'drive', 7, 1429365780, '099f4fb5', '', 'b3c620b4e54f26994512dcf93d6498e2', 'WrrQEVoqfoRgkacnCf/G3/EZRmp8BWqyb7Vufa0mPi687hjJwEu9qZ0CqbQ1xE3XG4KjpaVdbHrjK86ZNsWl0w==', 'image/png', '9d7344f7', '57a97cb03ea0994c7f4230357f296aa5.png', 1429365787, 36956),
(14, 'drive', 10, 1429365854, '1c11a9a3', '', '2e52f78b7d88ddc4e9782e8c10eb65c1', '7N+bvzQOGQwzCsIHWoIxEdJq6k9NmTFG8S+ZH+8DTWf6WL82wUZQSHsbGG6fvXW+F5ifpJ9tYoeX9jDznCiwyA==', 'image/png', '08f4ae1a', 'e2869f53.png', 1429365857, 36164),
(15, 'drive', 10, 1429365871, '45bd766d', '', '2e52f78b7d88ddc4e9782e8c10eb65c1', 'LbxHThsMmxE/ufGr6oo5qhtcScPQledSmj+PU8gAr9LaoT9sIzUQGDmO8zzJjRDwi6T5zJNWGxcXdk2vdThZbw==', 'image/png', '588af2b4', '2f4861b1be3231110a218f8350fd3242.png', 1429365875, 36164),
(16, 'drive', 6, 1429379215, '4bdcb2a3', '', '88ad80e8a4aaea8c7a7e0b453e84801c', 'u+1C3sRLLj2nqcpOcrZhg4XW5NyTYdWmZBrI3i9mVoGMeL5QGDUbEABeHNxnHqJm9JuMR8yVjM/oGbeNJyyJIw==', 'image/jpeg', 'c62e8b0e', '4815bc31 (1).jpg', 1429379215, 3886727),
(17, 'drive', 6, 1429379218, '73087217', '', '40671ca8a56801b76f59df00dd01f6b3', 'SuCgm9m/9bIK6ysSsn+9+9q4RxsDJ2oSBckqJN6T6D4Ttrfs6tO3zGIy4Sfy4YwMEeSnWzO/emEnFhEsPK3teg==', 'image/jpeg', 'cd89ca0e', '4815bc31 (1).jpg', 1429379218, 2292541),
(18, 'drive', 5, 1429379219, '78b4449c', '', '309f667392100ca3b12b380267e09289', 'xXHr0zsn8Wly2Dk96td9I8JntvLWlID9aQr+pjy77gSPM2JV/MjxdIUz4npWp3FYTBwtqx7iN9f6zCIlmazLDg==', 'image/jpeg', '1dcafc18', '4815bc31 (1).jpg', 1429379219, 2292541),
(19, 'drive', 9, 1429379219, '068f424d', '', 'c5d462b4a06f45a9c0a87653411a3200', 'uPGWH+9PLjXzlLgJYqmDmYvzJPgcnIVPcdW/aKEjylX2JrOSLHxjKy3DXSrelLTNakj9G/aDIPtCeJGwzUvHzA==', 'image/jpeg', '26a564d3', '4815bc31 (1).jpg', 1429379219, 2292541),
(28, 'faces', 561, 1429945732, 'c0ef6fab', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'Gf6AV/KuZdQVqjKQEoY6PGGEk1Dd///z9387uWPq7MbcZqfRZ1m/FNnByaOh9EUtLxAYh9mKGeJyWaBWVzF6YQxw1e8z8fH6LvyGo2uZTBQgvA90Pri72iHRbWdFOSNZzm586Mc8ANaXF/p1amX1TCrXoKUEz2ITbP5AIPSRReY=', 'image/jpeg', '100df54f', '10985280_458046784350741_8656683154662365614_n.jpg', 1429945732, 79563),
(29, 'faces', 561, 1429946080, 'fe813fc3', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'LEBX7TF9IGtrpp6DmogpnMmCXKqlytzV7PZHeD7VLd3Juv4E3Isqp4gH6UNV4Vhzniudl3IFzaxTU3fCwl/FJWG5SBnaUudx30QNMJWIhuUlkYeRet9fWWN/+JOrVHNsD+9uLbgS7mRoRD9vEOFsrC/kUhiwWoH3iBQn5MPgnKI=', 'image/jpeg', '1436e8b0', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946080, 79563),
(30, 'faces', 561, 1429946179, 'e18b79ab', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'JiFmsyZ2YWuJULU3+EV5jGUyvkaRZ5JrXT9JVTa+/6VqZ5G9+1YH+o+VSTWHM1V5y1tGuSaOGmYmJW0N4QGegkIY7QL3YCtrPJm5uxTOWyYhBRVu1a6OkyvU6ACZwa0mbcVM3QJdg/jupbwL3oRYogk1cE7W/Nzw4Y+Ley/GrEQ=', 'image/jpeg', 'feeb5d89', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946179, 79563),
(31, 'faces', 561, 1429946211, '7b36bcab', '', 'c4e033f58424ee2ba6a1df5c54694a78', '16CseZmeWF6UGlA8SvaoUJpkiTyLhRnsQEOMr58QqNxRTmu24G5NItlnW9wKNjom2W8I22CBD7jDqnESgzVCCPlIH4Qwy5eyFVuiFDSF7ybSsQbAGqSdtK/3gv3mC3P2M8DKo9wOVtF1txfYqtxoaCg5Naj0615UWsoB0LVUVnQ=', 'image/jpeg', 'aeaabb3f', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946211, 79563),
(32, 'faces', 561, 1429946289, 'edcc9de1', '', 'c4e033f58424ee2ba6a1df5c54694a78', '6VbpBreJZ/8d4tzTE1arYdPDeiypaHUWspxTUtnRuc8ju4PHp6YT7uJwaO9HL/4VIE0UvXlrlbm6EY6bG2J6iMY9SYC4Hhtl2x9eXjvElYslcKQDbbSPrixRYvqZ1GlW6l4G54M6kvJHlrrTHebBw1wk1ZZsZJx9vWXiRLJm9Kc=', 'image/jpeg', 'cb31b63c', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946289, 79563),
(33, 'faces', 561, 1429946304, 'bbdcaa66', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'I/ZNaw0A7FLz5fgRrCY+zs/oP6TDcUfJ9cEhVuMQxXfmWZ7ML8RtJptBDsu+AVXiboN1rcD25qC88QqTwvuJ+dR8Vj9lbSv5iC4Cgy6vxG/k+FogvLdaRM1CbacnT6FUhQkVozVwrpBN7/pg0Dk72QFVOdorhAThNxVexFUw6Dg=', 'image/jpeg', '5db614b8', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946304, 79563),
(34, 'faces', 561, 1429946404, '4d241371', '', 'c4e033f58424ee2ba6a1df5c54694a78', '9LYtzPebcocWOflxGFuIzd+QRaVS4DiIpUGFofkxpEpIF7zAxb1hq4DBSY/G9ytk61N78pU68kMCYOr1iyNA9Rkb1GGeiMRdohGYsgbn2pkzj9GLKdQMWA0uFLH1ail7cOIa+Vd9qX2QA8Gfd6nxDuMkg7JoxXQyLos8rivfEB4=', 'image/jpeg', '4c439d11', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946404, 79563),
(36, 'faces', 10, 1429947076, '8106173f', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'BOX+nrO5h6TMwf5+WIBcsI2JARx8iEllm8pZ6DQAQmv5roylZpccMUj4an8YbEfGdVBJ1r8aXWuZ18fK3bzEUA==', 'image/jpeg', '7796ba2b', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947076, 69608),
(37, 'faces', 4, 1429947110, '3eb5cd2b', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'qJcn3mDw0V1MZ4NB+rNuNcI3o260LjxTYioJflrSNGbvBxMbW/o/GQngHgWwod875Y7/6ojRjZObAfygu2WqaA==', 'image/jpeg', '35c8f9e1', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947110, 69608),
(38, 'faces', 6, 1429947160, 'c59dd9b2', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'ZPv97LtclVoSAaOv+xdhFCTKWie7gvzDs7gCCxUpo2bI11L+KNhRe8yvqkm6u1rVDq6S/9PmXAmBh/tPyF9lUg==', 'image/jpeg', 'ab3b0e88', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947160, 69608),
(39, 'faces', 2, 1429947186, '9a1f1350', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'af8iFBrj0R1Gw+n/0Ip7aRSOIgvtp93sAmhtKLM5QYZpc3AocfOrJl3d453yDqvaQXQ25tB92bKuC9fXO+o07g==', 'image/jpeg', 'bdaf741c', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947186, 69608),
(40, 'faces', 2, 1429947216, 'dc4b9033', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'Vab9jB+9gZ5pjLQSScRsZyPFc4AsYQRIL2k5GDpMumKbFdMCTvMstDUEJsSOHG7r+YOpgIhQxkfa6D0OCgx83g==', 'image/jpeg', '9a5ce330', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947216, 69608),
(41, 'faces', 10, 1429947242, '86cbd5fa', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'WxI32JFIkjqeDOu5FWOsCjtstT0s2Y4GcP2jAlEKN9bvVPnQKBvwJzNO9hfxezM2fR+mcsCc0FByYT5mgBAZAtr7EObqAnHZ3LHyGEJfhTTGO0f3PTePaPQ7ys43KSZB', 'image/jpeg', '0ea6cc70', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947242, 69608),
(42, 'faces', 6, 1429947322, '820404e4', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'zOeOcE3zsYJnELwLqES7pWCLI+Vlqg/Ikue+nb0Uc2mUuIrMzA8i57dyeRdgUwfdq2YmUdzjaFyYQMxQdbWYUQ==', 'image/jpeg', 'f0568973', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947322, 69608),
(43, 'faces', 7, 1429947410, '0fc02ae7', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', '2pvbFrfGfv24ADgjRaOJJJGTWrJd8elco3TVhebLUXTbc9tn4l6JLfOs1E3uVjdYI6xHQfRiLAYRqoFHHlM6Nw==', 'image/jpeg', 'bd8c695b', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947410, 69608),
(44, 'faces', 10, 1429947446, '90bad22c', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', '7MugdbtZ7EHFlmy9SmtjncmtgLjUkbx7Od2x/UriL7TGGxyVlUyLRgyRnVAKPhUg4W/rEHiERLTPrU3RR0wCCG3MWqtAThE1jBoaq+j+FCvD4jHrp477+6PGXbAjnDrY', 'image/jpeg', 'f718da54', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947446, 69608),
(45, 'faces', 8, 1429948013, 'ab265d98', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'ndGK1zwpLiz3ctuBxoqiyCgIFt4TY7aL2xdRmEwDClXZILgMBtBFMb7dvevRS5K5Oc67mrrxD9gpfFmloszF5w==', 'image/jpeg', '80be6259', '1234489_638157786330815_1794467412252996416_n.jpg', 1429948013, 69608),
(47, 'faces', 4, 1429951501, '092ff2f3', '', '17b5102fb1191b7686180671731f91b2', 'geqU92/on0IQQLjA19wIt160oK+MtQV/SV/kfXxg1KmPCrVoDC8s5pOPUrJStSBxw4XkaPyXz4wshn/5MGMEvw==', 'image/jpeg', '4dad00aa', '11182252_1416413628676582_8957238758697593813_n.jpg', 1429951501, 15949),
(49, 'faces', 3, 1429952210, '42848c96', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'cwrXOSs6esmDQUSqxL1l7b1b/FRrh1k36QvGyeitJJltB6qEPVTke0dysikDNivPMMtAlOmCogNxf8ig5/+vvA==', 'image/jpeg', '7416ba14', '115.jpg', 1429952210, 37566),
(51, 'faces', 6, 1429954360, '37832c94', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'zYjtYWvCV85buMdNT9NrUqLcpXE8byJLuWT6EQlne81iEN8C3bmUaAGwvo0xzAHXpwVjzFOZHtwUlb0/gqBnYg==', 'image/jpeg', 'fe684453', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954360, 79563),
(52, 'faces', 3, 1429954429, '7a6c9891', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'ZpW0SDd8ZVItV1wsmANF8UADBI1WDr2aiVEwUcd0Qg2GgNIt0NiBkLPxQjHcBBrUeXMihYz/hvTgelhZKNpXNQ==', 'image/jpeg', '19153703', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954429, 79563),
(53, 'faces', 4, 1429954523, '8ca4d5ce', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'nrGnk6h4PcbMxK1azSjrT13RqAOKKivQvKCr/JKb+k/+ed/l7AvJ2278sNCBkNA1ZTLc5jXchjYiONTa3MJm0A==', 'image/jpeg', '5bb062f1', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954523, 79563),
(54, 'faces', 6, 1429954552, '0d76ecf8', '', 'c4e033f58424ee2ba6a1df5c54694a78', '+8a4fc/QmyKYZCm+ZES6/qqvPn8J3w/Zae7T3ZtIuIwFAq5ygeOAFUgzc21lIBhFpMqHv4MGt6aDoi1xivtnlw==', 'image/jpeg', '9e04dd0e', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954552, 79563),
(55, 'faces', 10, 1429954579, 'cca5da5f', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'djugqwzCZJqmSHhSU2WEXzJqD+9kPF3nKUyR86et5kU/sheDQQm/o29Egn5lbFd9Uws7RWNGv1QGloUr60ZIOg==', 'image/jpeg', 'b3597846', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954579, 79563),
(56, 'faces', 9, 1429954594, '38d6fd5c', '', 'c4e033f58424ee2ba6a1df5c54694a78', '3BoKkWJajcg/C6hA8IYcNreLUR8AP5GqbB7miMmZFyzaEscBDiT2pXUmyEb0blPBiuYnlYjZgNaYTy6igzeUKg==', 'image/jpeg', 'ec5a8084', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954594, 79563),
(57, 'faces', 10, 1429954618, '330d22a0', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'yow/wQkXSctFucwfOZjhUg/oGrqT+eZl+hwW3XRGL+gzXh2gEcp2fog1FygsJ3mFK/6LBmiKnDWc20Nuwcu57Q==', 'image/jpeg', '6d1f416f', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954618, 79563),
(58, 'faces', 4, 1429954669, '4651225c', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'JaPZoVJ7x5rCeU8BjVZeTRSWLmrjdZj0YYxsgWUa5LH34/U8vURbrQ+EWOhhhXcwZzW4imfm1720l/Vur/gTtQ==', 'image/jpeg', 'a24ba065', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954669, 79563),
(59, 'faces', 4, 1429954701, '11a055c9', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'g2JK7N5mVfLZ2GGeNfwq6ZDM9p++n5/jCg/Ig8/7dE2jlcr/YSE3TnVVoaD4robQLu1LXLgpns3cNPRCUXjyAQ==', 'image/jpeg', '09fb1e05', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954701, 79563),
(60, 'faces', 7, 1429954734, '54010674', '', 'c4e033f58424ee2ba6a1df5c54694a78', '2iaeGjRrVTsvmMVDQ1Q5CxKUYHqCQLQ9eJc391zuz2EuRt3x5jK2cyXoyJlQZFoPitAM4q+KzxDjjaZYBLmvqA==', 'image/jpeg', '1a807daa', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954734, 79563),
(61, 'faces', 5, 1429954785, '282cace7', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'uvYME7Xh4pZxxylMdcTUZwwxsvRpE3cN1ZvoiAN9WURfa22Z1cgMKrkEHCv7n/igrPinsuRK2Tukvv/YyqvVyA==', 'image/jpeg', '950af92c', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954785, 79563),
(62, 'faces', 4, 1429954895, '50a9688c', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'V45KnYIbygBKZNYDboyrByX/XyuBaNd4C1JBaCm/1NoddMrXLsCqFFhFQns/RsJ7wMi94wR1tXWnJrN0ZcuB3Q==', 'image/jpeg', 'cec34abe', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954895, 79563),
(63, 'faces', 4, 1429954952, '2327d1b6', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'WtJaYCLL7ECzeaqe2r3VaP776t9R9NcGQP5okyrX99TkjP1ldB4p7uDWmOStR9qu6nrh0tTyfl4XLt5xmGeNzQ==', 'image/jpeg', '504253d0', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954952, 79563),
(64, 'faces', 2, 1429955213, 'f3d9147d', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'nEeBVF8ADaMF27u4GgQOgohCLUhH8be12xUSDv4p8zu64NTQ1UocSKJy1jRiCE4bUC4S7NTrrj2umADUhZoIxQ==', 'image/jpeg', 'd0600451', '10985280_458046784350741_8656683154662365614_n.jpg', 1429955213, 79563),
(65, 'faces', 4, 1429955307, 'fad9f241', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'v6Z5O8hV6DmKaaK6wS+g4Rvf3YAXHEQy2VjZJoNeZZEcYrp/Hg8j9Z++XTCPkZZxlgAJvu1bNbwaNxdc6RJlTQ==', 'image/jpeg', 'e789bf9e', '10985280_458046784350741_8656683154662365614_n.jpg', 1429955307, 79563),
(66, 'faces', 3, 1429955348, 'ce3ac646', '', 'c4e033f58424ee2ba6a1df5c54694a78', '7RfiGwbviNlIFxlxkLT7Mnw3af0W4mjJgChCH90rqQP6ByjEwAl7+2/Umbi6bMGEwk5vBhQSEmFofMPox2jPQQ==', 'image/jpeg', '534394cc', '10985280_458046784350741_8656683154662365614_n.jpg', 1429955348, 79563),
(70, 'faces', 6, 1429961372, '44055703', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'fVWvzgxWpEfl/L3m71F7oD/cmjQAF8BWlO9HSCSQv/D9edGj7HZUXd0EFamIgv56juIBAZqT5MTjjasz8j69yg==', 'image/jpeg', '198be059', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961372, 79563),
(71, 'faces', 9, 1429961493, 'f5976e28', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'HpN8Y5aWm6Oo/xF3KVD+EGZBUc6FKh1++EouRgujalUbmd1kfbIxOMvlUog+tjO3eTlcKZda1swOJyxHxtkUmw==', 'image/jpeg', '09a76061', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961493, 79563),
(72, 'faces', 3, 1429961538, '9a70b143', '', 'c4e033f58424ee2ba6a1df5c54694a78', '/CfgLsXEhOTOxYTEdtYuwfBs3mU9DWZfuXH5SuEqhXykwahIjQs3uSMnsgi4/EsvFHG4x7j9d7zOJhmwfLZdWg==', 'image/jpeg', 'f570e9eb', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961538, 79563),
(73, 'faces', 3, 1429961577, '0c3def61', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'lElQR9w0AnOyAOG1FSYuPBCh3BdJmypHphSbSqb2CKyL9DlRYk50o6MrjrwO/3W6ybybPHHSlXJEcshl5YQEIQ==', 'image/jpeg', '3def7ee8', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961577, 79563),
(74, 'faces', 2, 1429961646, 'c16bce21', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'QeJ9By+cZ+terRKJQrD2lYghivKOiLoNXD4Zlm6mYVaXNw0zzcnVjj/+biPBKfl6OVkfWwHpIymVLidez7MFUg==', 'image/jpeg', '109334b9', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961646, 79563),
(75, 'faces', 1, 1429961709, 'f81d8b9d', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'qzMYG/xyKj+lflv7UsIeir/seh2IaK/oxSAEUepzPgjd7es4cm1U2LYt1VxHJ0AjJ4VaUWnDgxk1ChBSzej7qQ==', 'image/jpeg', 'a950eb6a', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961709, 79563),
(76, 'faces', 2, 1429962362, 'c11ffeef', '', 'c4e033f58424ee2ba6a1df5c54694a78', '+4ZdBugi7Ip/aStDG80ZLAGX9dRHB9/UG5Qqm6Ms21Xjoly+vfHEzW3hIeaT5kq7GoF85tQXQs7J5GnCheLMeg==', 'image/jpeg', '6e968878', '10985280_458046784350741_8656683154662365614_n.jpg', 1429962362, 79563),
(78, 'faces', 8, 1429962406, '5eb8787e', '', '6102a0745b62d39feac33080816ec5a0', '/Ft2otiZNRvhNABlUkC63iUWdctr4xLIDhXRYbF91UeYlmuqND1vjRfuaPltYECdlZMgQoM+cqwsYF1zbpZxrQ==', 'image/jpeg', '218262a5', '11046663_353677424833018_1299055706151198721_n.jpg', 1429962406, 84548),
(79, 'faces', 4, 1429962411, '9c18ed68', '', '6102a0745b62d39feac33080816ec5a0', 'gU0PRvBE0z95AveaB4bxQAg9SCZFX3Qa/FJKV4IKz0r6pGzF1tmOvfawu+47EwiYDhB684T4DgC0bcWE9IyrPg==', 'image/jpeg', 'efd47e94', '11046663_353677424833018_1299055706151198721_n.jpg', 1429962411, 84548),
(80, 'faces', 3, 1429962414, '8a2918e0', '', '6102a0745b62d39feac33080816ec5a0', '8M2TkNLDwFDJta/tIBMHJchZ3EOeFcG1G0cQxOi6+zz6+EvqXlLlIHUq36zW3uXI7OUfQc4LQxUMhaDIeKA69A==', 'image/jpeg', '51230408', '11046663_353677424833018_1299055706151198721_n.jpg', 1429962414, 84548),
(84, 'faces', 8, 1429970706, 'b4217fcd', '', 'cce20705f5896f290aca3bdf211ea685', '7ZByIks8DU9LsWWddIVDjoYwAggU5YIhD7nfwsYoOn0eOYPop+JJEhvOOnnRPmsHKV+XB4VpCPyRtps4dekZ+A==', 'image/jpeg', '88f83612', '10984130_640550226091571_7053296818168215029_n.jpg', 1429970706, 14318),
(85, 'faces', 7, 1429970708, 'c75d1367', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'cFKumwRFl3QNi5WxL5OA4TD739V6zYAPXaRTeoy+8h21LYyAKYyo7EBP+FTsaBazJv+WFo1GJPjMUK6XVTtJzw==', 'image/jpeg', '465e5d2b', '10847938_598251166988144_4544651445744408482_n.jpg', 1429970708, 48777),
(86, 'faces', 7, 1429970710, '365af501', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', '7ebj4NjFzDlcc79C9pAiP8UFChTAIcV2SIafzxqXUjGIvPLlaEpNskExa9EIm1UQLNDFr9IZ6bL+mhdJaXgELg==', 'image/jpeg', '4b8bcddf', '1234489_638157786330815_1794467412252996416_n.jpg', 1429970710, 69608),
(87, 'faces', 3, 1429970807, '0e059540', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'GveWVoJ9mbl5ZiTBCV0geXHoEv4YxYtE2GNFM0BCWmxwkGTxPHXmqlDIULgmn2bGUqEFRdLzFoEaTbJSk8tZQA==', 'image/jpeg', 'c309c2c0', '1234489_638157786330815_1794467412252996416_n.jpg', 1429970807, 69608),
(88, 'faces', 7, 1429970862, '425b4f3c', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'iNclcvgJkMbDqsTezaSiK2J/ByTz9RfewZaf9cgz1b9gKnJJtAJxP/2XlMqnDpjaua4M5Btf1k7uoUK0uQMLNQ==', 'image/jpeg', '42d3c94b', '1234489_638157786330815_1794467412252996416_n.jpg', 1429970862, 69608),
(89, 'faces', 6, 1429970909, '585f15af', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'iyPJNuZsHEvQ/BULUPEBjwy3zWvvK1zPQZ/pC4+3RVKnvylZETTRNpC+ChUom58nmzfJICen7vwURFjUbidw1Q==', 'image/jpeg', '7fef7bf2', '1234489_638157786330815_1794467412252996416_n.jpg', 1429970909, 69608),
(91, 'faces', 8, 1429971106, 'ed1d842e', '', '2cabf5729cb487206cbcdd8844c6ee77', 'a8qWEaL9mesgReEXbo18xND3owwdsggzbs56tORwDfGrk3iOpf2aVu2lkiei5Q6Hzw8XRUwTWWn1uWEQ5Ub1JA==', 'image/jpeg', '53fe462d', '11058415_1564846553801245_3565501618256816433_n.jpg', 1429971106, 41553),
(92, 'faces', 10, 1429971252, '331aabdf', '', '2cabf5729cb487206cbcdd8844c6ee77', '0qA4tM6+oGT19uawZM8uxQOUTXnnaGkO5p2DMUtstKOlyDvozrZWqKDa1Zjfgzr3DNbKgwh12YF/qWOpCHsBDQ==', 'image/jpeg', 'f3166dc5', '11058415_1564846553801245_3565501618256816433_n.jpg', 1429971252, 41553),
(94, 'faces', 9, 1429971374, 'e53864d0', '', 'bbe6a039d707951c802a937a76f0d078', '54i+KUAuvdy/kj5RIBF6dlcq0Sd0EGdTI9CQE7vT1rkIwvodU4Y2UEyFMkoLYh9YUWBKJoSD5V/89lg2C024Bw==', 'image/jpeg', '037f2820', '11015098_642463922566868_5402341216199440277_n.jpg', 1429971374, 49420),
(95, 'faces', 5, 1429971436, '31dcc22a', '', 'bbe6a039d707951c802a937a76f0d078', 'vXkkxqQteTJE4FQZ48ugixuL7/8VyOpV8/uc44KMCpTFAFjCl4/tzm3PhQ2D63T0kn8T9072zYnz9KG/JCKAqQ==', 'image/jpeg', '4331a8a5', '11015098_642463922566868_5402341216199440277_n.jpg', 1429971436, 49420),
(96, 'faces', 8, 1429971520, '8dd348ea', '', 'bbe6a039d707951c802a937a76f0d078', 'sLCkbKKLu9iNLCts4e0fhAhMH0FJFxSIsiPlj/nXcO430QAAFLT0wUH8DrHjsTuBKV0ulupz+K6xMw/7a8OUtg==', 'image/jpeg', '38a8c64d', '11015098_642463922566868_5402341216199440277_n.jpg', 1429971520, 49420),
(99, 'faces', 10, 1429971704, 'edc9ae55', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'vMg9BHtCGU3z67FCVq8fVtDNeZbWZmsOpgJNwOyMFvL74+ATbzexUzI7ehyS5aVHyM1jbW8kSSOgu4AZjCKzfw==', 'image/jpeg', '7dfc7bf6', '115.jpg', 1429971704, 37566),
(173, 'faces', 4, 1430044854, '891d1e26', '', 'f6445aee92e64112a4eae2c1054da60f', 'x+MNqrf6EjHgyyAimqWGQ4LerHlJrD70KW0goz9Y70qifWZUbaZG1lIRmlS5fqOVG1u10AUNtXOmLaGj6yWhRg==', 'image/jpeg', 'c4f83796', '11061781_353337004858260_4178643732005538742_o.jpg', 1430044854, 294764),
(188, 'faces', 3, 1430048816, 'd008bc75', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'ZCc669mKpDOiRJANJQ2Fg/coIXNAPZMk+iYlmFE/YAGcvFlGu/nkXjXM3ktg2ATK0/5i/BmSLHgNRord+MzzFA==', 'image/jpeg', '92fd5b20', '10985280_458046784350741_8656683154662365614_n.jpg', 1430048816, 79563),
(190, 'faces', 4, 1430049555, 'eca0e312', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'dXCYQRVm78wsXwouPTH6Enn+YkJqIbGFD4eX0uMjC+InnxX3Ma7tKuRr1t8VOogFlK2ZsBBua5zISAxuTFCwTA==', 'image/jpeg', 'cdbc4e68', '10847938_598251166988144_4544651445744408482_n.jpg', 1430049555, 48777),
(230, 'faces', 1, 1430061307, '437d2ed3', '', '4f7fd659c3630112913d29e2769cae74', 'HDCIDqtV6z9siAv5ZbiYzGyYO7PCng8u4UkS1xe56L6fyu8GNz1OHk4HD7QWMVVvye98ZsGn5jnu93nTLHVGnA==', 'image/jpeg', '4d5ee95c', 'nhung-buc-anh-tap-the-lop-vui-nhon.jpg', 1430061307, 99113),
(236, 'faces', 1, 1430120225, '6191b392', '', '934b6ffba5b4547e1d8008f0abd34393', '2HBsiXFJzxqq56yCXMndbdOKWof7Ee05cI86WGZwk6mzI9XWFB8RAR1fm/HPMuM0OQEBblWaFauUwaIAPmDJDA==', 'image/jpeg', 'ec6c831b', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120225, 146301),
(237, 'faces', 8, 1430120233, '4e93f269', '', '934b6ffba5b4547e1d8008f0abd34393', 'gbLhYhkSzSlFfva7U9ll5+5OV4wg6yhr5TDseLprrwRdYHy+dYCIZW9rNlkm5ijr54oDAdnFsM7pYeeBfZ/3mw==', 'image/jpeg', '7fbf5d9e', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120233, 146301),
(238, 'faces', 5, 1430120239, '0784cb86', '', '934b6ffba5b4547e1d8008f0abd34393', 'hs8ieJRZ53cFpgPbGr7fzXF8cLHJkOU6lkv2n1t6y5zcv/q/QjjWoyd6KSv6oMndWFOrwyN6Yun/ndEbY1aOPQ==', 'image/jpeg', 'c0576c64', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120239, 146301),
(239, 'faces', 3, 1430120246, '741be0ec', '', '934b6ffba5b4547e1d8008f0abd34393', 'SgZGind/LIO3l7JJycfM4qMfMrwSHUgAYnxO3Oi10Hoqh2PyKMDc00cw+UPyYYWY98MQ5fclw9HOef8CSmcqCQ==', 'image/jpeg', '3783604d', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120246, 146301),
(240, 'faces', 8, 1430120253, '5d4dabb1', '', '934b6ffba5b4547e1d8008f0abd34393', '4J4ub7j52r6Kp0HpP8oU74HQOn/bHcirV5FX8bkRkst3ZGexjSE5VqBFDBvNTDpSYNovWC6oK5UBGyRg08E2lA==', 'image/jpeg', '2f52801f', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120253, 146301),
(241, 'faces', 5, 1430120254, '3c91c0c7', '', '934b6ffba5b4547e1d8008f0abd34393', 'tox+jzY5X/DjddzNggiHL3/bDy2TxHWUAS+IeiV04IiFS0pMIqYGfM5CqXPyFWHm/smr6NcQEdanBbwrLSB+uw==', 'image/jpeg', 'e92e5c74', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120254, 146301),
(242, 'faces', 3, 1430120259, '25de4f49', '', '934b6ffba5b4547e1d8008f0abd34393', 'b8oLe0Noz+evNlO2oWQw6saxD4lP3RBdcFIpHGVQKTwUFyHHoXVmxa6sgkunqaqHYfXJE8B121vdwsD88mVJ2A==', 'image/jpeg', 'cbfd7498', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120259, 146301),
(243, 'faces', 4, 1430120264, '3b87f1cb', '', '934b6ffba5b4547e1d8008f0abd34393', 'tX7ca6zW1UrpUhFA2Zs31ca2GZcdc5pnAFhXeicKPLBfhaJQBtwu2QKZxll2B/epjRADea2M3JtQlCIMbIr6Uw==', 'image/jpeg', '40bddf5c', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120264, 146301),
(244, 'faces', 8, 1430120268, '57b75e93', '', '934b6ffba5b4547e1d8008f0abd34393', 'BPEE2bOVgG1U9UX5t/1skbPPIMlrUrZt2Jai1SqD6HhPkepTYnQFDK7beYNFXcKo+Tan6fsTnH39azuaaptRew==', 'image/jpeg', 'bfd17721', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120268, 146301),
(245, 'faces', 7, 1430120272, 'a22e636b', '', '934b6ffba5b4547e1d8008f0abd34393', '+2XW+SKdZHxhMZTYTMw/edG53/tGO6kOZoexmBZVHXTv5oyMQAOzmJfugqv0oo+R/hpy2rgSormx4O9CXe6ukA==', 'image/jpeg', 'd249d091', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120272, 146301),
(246, 'faces', 3, 1430121295, 'ada39246', '', '934b6ffba5b4547e1d8008f0abd34393', 'TqS1IZKl+ABDuAl5PK4PKYL+yHDedUK4euN8Wchjpe4cId6/ha9+6LvGdI3SDv0xM6wanNF2xsao24aKGqoeqQ==', 'image/jpeg', 'd22c8317', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121295, 146301),
(247, 'faces', 8, 1430121300, 'e31ac20d', '', '934b6ffba5b4547e1d8008f0abd34393', 'JA6lzemcXo65+fL1m2ehPMY8saIL91igt7+8T9ZjU530G2SY2Q1aa1vkxaITbnnKuLHvwUXFexrdippRxNQozg==', 'image/jpeg', '80ee5ac1', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121300, 146301),
(248, 'faces', 9, 1430121305, '4742ff81', '', '934b6ffba5b4547e1d8008f0abd34393', 'Rurmba5Kk/4s4dU057+Srs5ZY9UVrfpS3SqjIRe8kMJoeyQwcmySQmr5TIKnx2ccUailS7P6NU1Lcc8j5Ie3VQ==', 'image/jpeg', '4d1f99b0', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121305, 146301),
(249, 'faces', 4, 1430121309, '09beacfa', '', '934b6ffba5b4547e1d8008f0abd34393', 'PcvQd+La79F2uRkKK6dU9/ELCEAeYcfv3OtZe+skO+QGG34fr42vmp7oE8LMXl8FL5kMGVsqPO6Z1RJghmNTqw==', 'image/jpeg', '6af73d10', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121309, 146301),
(250, 'faces', 5, 1430121314, '417c1079', '', '934b6ffba5b4547e1d8008f0abd34393', 'ps7SZQ5NvdGuS77XBcuwj17nVEb/ySd2cVjVx/ee5kEz+L0qzHxH2YZKqFBG691pLW4ALH2lbf+/pZPSwAl//A==', 'image/jpeg', '649ebe38', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121314, 146301),
(264, 'faces', 4, 1430125899, 'eb1b10ca', '', '8934d73eec4b5aca7bd2a5cb08b52b19', 'aePd95HgsZdygBzI05zCtf74rHx7jCEIbYecFZDMGlHWFGnAnC/0sE/P7TNTN3aEYqS6IHDvSamDmnOEyES28g==', 'image/jpeg', 'e52f758a', '11037216_745881038858595_9190097026788226341_n.jpg', 1430125899, 72332),
(269, 'faces', 5, 1430125990, '906a2b9c', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'O1h0xOfEc0wk9FJ+gGV8sr4nH+vUkGohzRFgJiwNDHpbL9GP1fLzDXWEpOLT/0WbruCAkrvHx0BlWFyS8GRwhg==', 'image/jpeg', '89d8542b', '115.jpg', 1430125990, 37566),
(271, 'faces', 5, 1430126112, '0bfafc9b', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'Hoq8nIDtYi6UveEnw7XA7PTIUK/MOThGKwRF055FDl7MUhTRWXBKX6kd0Out5ly24rp8gfEG0o5hJ9NgBc4EFw==', 'image/jpeg', '3c9e0271', '115.jpg', 1430126112, 37566),
(274, 'faces', 8, 1430126382, '9176dc21', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'rVzqPOCah9qFkLL9JDnhDe9dHrqnovwgifNgfHFy4LBdkz9mZbf2/Tf3h2qfZ23xJZ3lu7KjUSarFkW9nFmv3Q==', 'image/jpeg', 'e362566f', '10847938_598251166988144_4544651445744408482_n.jpg', 1430126382, 48777),
(308, 'faces', 2, 1430201816, '99b71f76', '', '30aa18e9939695e74a5c10f430036c6c', '6OzWipmcTmh52SKMGyCrxEqzAJGY+adKtCP7qk+6O2nr02+hmjsTii7paUaz+VgqSsJ6bQ5PAjg4U5PUXLyvpw==', 'image/jpeg', '3a5a714d', '11046687_383521038502730_6349441757754271948_n.jpg', 1430201816, 22205),
(312, 'drive', 6, 1430233303, 'd3a8d29a', '', '59a4659d3004f7ca6b52eae364a3eba0', 'Tpkz5uE7fVRu+/sN2njEkXqQuf2JazX0oDkETZpsYi2D0IfheqEanfR+4YFdk+jZgSMc7WOZXWc44spVH8mP2A==', 'application/octet-stream', '9891d522', 'C360_2015-04-28-19-55-26-791.png', 1430233303, 10576856),
(314, 'faces', 8, 1430234882, 'b079b75f', '', '59a4659d3004f7ca6b52eae364a3eba0', 'P8pyPNPplAEvRdA9C45OoiXgpZqVl1vQOsrExwyZEe4+xkHyYeJylB/AonvQ5bT9UjQYX3VABXdl2+4aA0Y2qQ==', 'image/png', '01276e4c', 'C360_2015-04-28-19-55-26-791.png', 1430234882, 956490),
(315, 'faces', 5, 1430235066, 'e0935808', '', '59a4659d3004f7ca6b52eae364a3eba0', '/TcxYcGeD8rqDZiQUkJ70Qb0EdsMO39C8MG5Wpv0RS8/OWwwD0rn3hx9S/7nALVD/LIH9i/R8p3F3rQs6RrXQg==', 'image/png', '442be678', 'C360_2015-04-28-19-55-26-791.png', 1430235066, 956490),
(316, 'faces', 10, 1430235294, 'f47d6e80', '', '59a4659d3004f7ca6b52eae364a3eba0', 'dhH3a6qqxloTcqDI1zl9ruCO5p/Od959ekF8JyAK1kE5YXQ5m6clZ4SEeJi7aZzI48qAI94VDqnoivOr4W1uUg==', 'image/png', 'e81e3aff', 'C360_2015-04-28-19-55-26-791.png', 1430235294, 956490),
(317, 'faces', 7, 1430235568, '9658dd2e', '', '59a4659d3004f7ca6b52eae364a3eba0', 'am0LP4/SIXhZZxMi4prV7z+nF9Y+4Mxbl+9uy6O/aGhVc2tEKrlk9AkQNS0gkQhRCdzypJKA6WWneUvsXTzi0A==', 'image/png', '02acfc2c', 'C360_2015-04-28-19-55-26-791.png', 1430235568, 956490),
(319, 'faces', 9, 1430235802, 'e8220501', '', 'b29d292f5349619e6944ec7c35af2c33', 'qC77YsW93mjopXdjB1Ay7DmpOQ276NwJiAeJ7OMoC6ahwloEDHtrkjqhcFttU4vpAYKZmgCV/CVYrkphplxRNg==', 'image/png', '7917c43c', 'bc3c5f9a.png', 1430235802, 993092),
(320, 'faces', 3, 1430235952, '9b965eb5', '', 'b29d292f5349619e6944ec7c35af2c33', '8PWbFebx/pG9U4Nlmw+iLqOEn2GOgTnG7fxGWb+OmilxGbbXwUou7MkdC/oHJrUYExKbtgNfKpy2ofSzKNpYcQ==', 'image/png', 'f5dd4ff3', 'bc3c5f9a.png', 1430235952, 993092),
(321, 'faces', 1, 1430236085, '71bb9980', '', 'b29d292f5349619e6944ec7c35af2c33', 'IprStT69eJDkHDdx3LJps+/eQGj4cU1Yyf8BW872FtkiAiD6hFmMBo2m2yPvDbJ6b8f9ClHcy2TfkOqqU0R8cg==', 'image/png', '38e0a4e5', 'bc3c5f9a.png', 1430236085, 993092),
(322, 'faces', 1, 1430236874, '604cc877', '', 'b29d292f5349619e6944ec7c35af2c33', 'symZg1XSVprJ11eLXSOC9VdWJfHe6MIQ8easpc+bFWYHVKurOfp0k8RE7lq7dDxyQBSvKb+6vYkZMv2giHqutA==', 'image/png', '74098445', 'bc3c5f9a.png', 1430236874, 993092),
(324, 'faces', 3, 1430295672, '0f4ee763', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'jPjCNksqoVbH2bueyPw0V8Vtz7t0AZ0Aap2Q9dXtAVpHfHAH1QDTYP3/pk5yuCamwnzHIxK0ne5YtY1XyaLojw==', 'image/jpeg', '63019bf5', '10985280_458046784350741_8656683154662365614_n.jpg', 1430295672, 79563),
(327, 'faces', 9, 1430320571, '8c252ddd', '', 'b3b553b30941abcd81ac7896f2e2e8f6', 'HqfzutMg08EuEE7RO6cMNWoxPo71A0NXiWXZikRWBZqqMbCiVGZ8p+Z4fdp73/gHryfCOfXlFrIctIloysKWBw==', 'image/jpeg', '0be64c4c', '11173356_628503133951364_5877760069393779979_n.jpg', 1430320571, 92465),
(329, 'faces', 9, 1430324400, '1ee205c8', '', '163093cc6c2cb87b92006a6dafdb66aa', 'xJT+WlKJesJ9eWmA5s5GdZ//5T+NOUeLr15oGo9P2pImzcnRrE5bm+xatdlDTA5XD2eg4UPJcDnDNQR7RrD44Q==', 'image/jpeg', '20799b14', '11141176_747089155404450_9041291105451923514_n.jpg', 1430324400, 85622),
(330, 'faces', 9, 1430324404, '920d9089', '', '163093cc6c2cb87b92006a6dafdb66aa', '02N8GCm9MD0TXkpd5Bu1DrqUTPXBiviJ1ylCw3T1ZfkqjGlb4iNowYP0RD/x0EcF/4SgQTVpwUlIHoQrB+70iA==', 'image/jpeg', '62e57af2', '11141176_747089155404450_9041291105451923514_n.jpg', 1430324404, 85622),
(331, 'faces', 3, 1430324408, '0cdca99e', '', '163093cc6c2cb87b92006a6dafdb66aa', 'gw4bGMElFfOz6S7cQCRSveVdu4cY6xfngyvBjWR8WbhgksTIeZlljGMfcmtYcgKsimRIKq4ZT87VZvBtM+w1cw==', 'image/jpeg', '2f590ffe', '11141176_747089155404450_9041291105451923514_n.jpg', 1430324408, 85622),
(332, 'faces', 3, 1430324413, 'a9dbccdf', '', '163093cc6c2cb87b92006a6dafdb66aa', 'GJ5Gi20MO1Hq79IDlACdvSYzY4GWEsJfeRqWLubKX3yV56F9EzbPqTAVAB61mLr28MW+GcEKjFmXF99PqBYs3g==', 'image/jpeg', 'feca18fb', '11141176_747089155404450_9041291105451923514_n.jpg', 1430324413, 85622),
(334, 'faces', 8, 1430325065, '60ed513d', '', '6c576d37c2a5d0121bb74cb5b09d3428', 'Ga0NoQ1XtGGVU0Wkzs4ecG/ACdCzp4j5cGwdZ+nLHSkyubtaUvZK4vGcteVIObwui2TlxV/R1Mv5ENFpQF++rA==', 'image/jpeg', '7f4b8e1a', '10997097_431451950355779_1526286295_n.jpg', 1430325065, 73810),
(335, 'faces', 4, 1430325069, '8f293f65', '', '6c576d37c2a5d0121bb74cb5b09d3428', 'ohwFND+HzBij9/tP8rWbffDlLK16mHZUS/gFTwY4f4G+9/sUj70e05bgklFhe0hcXA3z8S1XBHnpv2gPj6Cv6w==', 'image/jpeg', '35abf509', '10997097_431451950355779_1526286295_n.jpg', 1430325069, 73810),
(336, 'faces', 6, 1430325074, 'dac28e85', '', '6c576d37c2a5d0121bb74cb5b09d3428', '+5rph3W6SlNBsoeLGZ7ASU5QNDz33loJ3E5e6jScX7tvoUyK8tTq8TadMtbosxadGs/RI4ay7OZF2THZnNyTVQ==', 'image/jpeg', 'a8461a5f', '10997097_431451950355779_1526286295_n.jpg', 1430325074, 73810),
(337, 'faces', 5, 1430325078, '80e7139e', '', '6c576d37c2a5d0121bb74cb5b09d3428', '0T8nXQ5jc0mt51eBE2lb+SkTFLEu2lO3Sqwkij8HDrzg4S1cr6rhjp1R9WBkOl/CAsXkN7idQl00d064w4oimA==', 'image/jpeg', '6e31371c', '10997097_431451950355779_1526286295_n.jpg', 1430325078, 73810),
(339, 'faces', 9, 1430380653, '4b7a7c8b', '', '59a4659d3004f7ca6b52eae364a3eba0', 'HG8ddLhCcwopyEbfM1YYe8tEKzCmRa///98F7jVnCp0dh9ci3+hGSbotBNKVKO1+8yCe6colULqJMLYYWhehSg==', 'image/png', 'c3c2db4e', '0fc454ff.png', 1430380653, 956490),
(347, 'drive', 10, 1430404702, '23bf98b2', '', '59a4659d3004f7ca6b52eae364a3eba0', 'EgVy72RnZUo+zZ/UlSvlV9M+SGcO1KbjVTTsx2aYU2iR88vRTtzksNSfPaFF0+18tQW5mPqe9VCc5HuPnMgdvA==', 'image/png', '27bcee19', '94a796da.png', 1430404702, 956490),
(350, 'faces', 8, 1430404980, '6824a2c3', '', 'c4e0ef97cf8d1c58f67abd0b7cadb7c0', 'RZaDCogBmvRHagfjG/KGKETKI8eFew2w946vVEshU27d3NCsQE/NdanvKAVQd0Qq+40d5txOIvzMQaZ2yPuXFw==', 'image/jpeg', '01ceefa4', '11112459_1578533342400668_3637651088142192147_n.jpg', 1430404980, 50024),
(352, 'drive', 2, 1430405049, 'd5ce5819', '', 'c4e0ef97cf8d1c58f67abd0b7cadb7c0', 'PbOVcO13mdPO+hlDJjNAo0qPGRn9vMxiJ0VDCNGqmEjFNPyba8fpoYCkQknMvYTr/FCeQ7ycGe9/gr6Nw3CSmg==', 'image/jpeg', '7917763d', '11112459_1578533342400668_3637651088142192147_n - Copy.jpg', 1430405049, 50024),
(356, 'faces', 8, 1430484817, 'bdebb9ae', '', '44e8a00763cbdfef4a66f30e6a4fde27', 'D0GDiAWJ5+H47mGHzaTeJeQhPKR1Mk9szGP6SeUFqbbcBo/aQcTSB5VSrjunllUHBJYBp+XkEdwmXq2iTnNsEw==', 'image/png', '648a1c5b', '0fc454ff.png', 1430484817, 582409),
(359, 'faces', 7, 1430484950, '71d5a20a', '', '3341d870c96c03952ed8e4a0970b38da', 'wRJJKcRUV1wV0idx12IEw4PddTlcZ4tRX+dS7G+B44p0P/0Cwu10mPmkWPP7860kVJuBackAiceE92zZF871NQ==', 'image/jpeg', 'c1a8f0e4', '0fc454ff.jpg', 1430484950, 292389),
(362, 'faces', 3, 1430486597, '779ec50b', '', '3341d870c96c03952ed8e4a0970b38da', 'fQOy2SMuHj9jK9rKdNWf5ZvqnfGV2/9/IotwgLl2mYPSlZLEBk8brKg2RQ2cUNbSfgCJoUuT+SjLDB2fL8YfKw==', 'image/jpeg', '0a0b84ba', '0fc454ff.jpg', 1430486597, 292389),
(363, 'faces', 2, 1430486687, '2cec4157', '', '3341d870c96c03952ed8e4a0970b38da', 'HVvxemOQajGd2H0OdQu7U7CJHiy5Uw4C7tBD41DSFYeDbWxiT1N1izAFtjAVOih+XIThpg5CLdbLR/iHYYl+4w==', 'image/jpeg', '2d104764', '0fc454ff.jpg', 1430486687, 292389),
(364, 'faces', 3, 1430486756, 'a26e9077', '', '3341d870c96c03952ed8e4a0970b38da', 'loCAFT1K4YfErJgu+jLJdBZlmn9wQTY1PemZu0u7cupSMnTlPSS1Vd1UGl93duDj4v1PkUq77P0uq8nWF6+yEQ==', 'image/jpeg', '6aee3aa7', '0fc454ff.jpg', 1430486756, 292389),
(365, 'faces', 5, 1430487027, '874376e0', '', '3341d870c96c03952ed8e4a0970b38da', 'aQFpVdMZkCd8ejBgtWJHmPp9JZ17bxNX/0MoPZ7xSv9OrRYXLDUpsIapeeL1OYqKwe+67N/2WuIupk+w56fkcg==', 'image/jpeg', '5f4c369e', '0fc454ff.jpg', 1430487027, 292389),
(392, 'faces', 4, 1430489541, '55d9da9b', '', '0a90cb74f6e23f994325fbb27749dcb5', 'b+SpPWw2sC5srm0Czr9pGNkbuCHuGYkYK5CySVZHema6v/bQG4Nj283AEJS1I2gt60Y8+fC19jeMNM909eYLJw==', 'image/png', 'ff467097', '0fc45x4ff.png', 1430489541, 50514),
(393, 'drive', 7, 1430489601, 'ab2b9748', '', '0a90cb74f6e23f994325fbb27749dcb5', 'SgpLrC5AjTGPtnHbuz5FPAB2stPYNUqYF2TxMBCSUQ4sWShsAsjeFbreS4HfaAh90lwdwqRaog01T+46Jf1AqA==', 'image/png', '405b2c0d', '0fc45x4ff.png', 1430489601, 50514),
(394, 'drive', 6, 1430489601, '4c3e8179', '', '3341d870c96c03952ed8e4a0970b38da', 'qok1jiFfE1KgCbLwvSaOt/o9yn4tg3L86vQM+FsCWgq7nbvVM/gl4da+BEHXijl2KK94u6FRvVESOd40tzPwjQ==', 'image/jpeg', '2097fb2e', '0fc454ff.jpg', 1430489601, 292389),
(395, 'faces', 1, 1430489610, '1de4750f', '', '0a90cb74f6e23f994325fbb27749dcb5', 'TTJsMY6dE9zbKv4kQHt04V/VcWRG6PkbDZM2KcqyX1MQe43c/lWQZZGwq2qKuWlFNVPf/AfDkT8CIVs17cZX/w==', 'image/png', '42004592', '0fc45x4ff.png', 1430489610, 50514),
(396, 'faces', 8, 1430490090, '85461113', '', '3341d870c96c03952ed8e4a0970b38da', '5vLhgg6xVz9VApIW7LvUmBeON737X4V+yDpg+gDoEUkCo68AWCnGgZtHVFQ2c0U4lr9D8hDtyUt5QC3kLchDaw==', 'image/jpeg', '15abf5b5', '0fc454ff.jpg', 1430490090, 292389),
(397, 'drive', 9, 1430490988, '74f3680b', '', '0a90cb74f6e23f994325fbb27749dcb5', 'gr9yJu8X6st6jfVrvNTppRYo/QMLznvUt0bRaCBrLKcM8YnIPtHtbdtHQ5p2KJPkvE0d4Q8GMkAE2DrUgEe0kQ==', 'image/png', '3873372c', '0fc45x4ff.png', 1430490988, 50514),
(398, 'drive', 4, 1430490988, '81197b4b', '', '3341d870c96c03952ed8e4a0970b38da', 'mOQrJOwUZIqCvQnrGXKwSRWbcQAL6CiSux6vjVl9z6pKFspioH/saH8dNqQXBSLl/74CevickGePa5XeYODkMw==', 'image/jpeg', '4c2ca703', '0fc454ff.jpg', 1430490988, 292389),
(399, 'drive', 3, 1430492130, 'bac643d9', '', '3341d870c96c03952ed8e4a0970b38da', '9fH9MdYSqAJuutjMzchzBgn0zf44mD5mVWHv+3CP0wTrZlKsqWRiiSa79SG1CZbBZSj6ifzYJ4AlL/FNGyAmRQ==', 'image/jpeg', '4dcaf1e3', '0fc454ff.jpg', 1430492130, 292389),
(400, 'drive', 5, 1430492130, '9046914d', '', 'c5a0f8411a4cd417af6caf3e7f60b4dd', '/OoAWp+NBI92L0BXh1vqUhp9A+hMkA5zpp7kqUPvznAqcg/Ejb2em+2+aA41N2Hb4iSltDbdviK9Ixur4f8IPw==', 'image/jpeg', '40219890', '0fc454ff.jpg', 1430492130, 292389),
(401, 'drive', 6, 1430492130, '7c1b39c5', '', '0a90cb74f6e23f994325fbb27749dcb5', '8pwl5GqzOdENVIlhC3wBm9QNjNmIgysRu7QXT8YMR8D3D8LoQ5y+ohvFiBEcSNBM5l3YKsuLd8orCrftLtWSaA==', 'image/png', '54c0cdb9', '0fc45x4ff.png', 1430492130, 50514),
(402, 'drive', 7, 1430492131, '8ca90f20', '', '3341d870c96c03952ed8e4a0970b38da', 'LyG0ZLyW3j1Ja8Rgc967fGfMDDeESTFd0QSdh6dW7mDeZtZdnFGkXov1iIx1SL8Nb+wHpAf8vI3z5/N1ryF1iw==', 'image/jpeg', '76481406', '0fc454ff.jpg', 1430492131, 292389),
(403, 'drive', 8, 1430492131, '1c74e9b6', '', 'c5a0f8411a4cd417af6caf3e7f60b4dd', 'IsHAx+rcIDA3ZARTnNdVxggl46E5K5jReicg5DXZigX3rXnHMfpyY0XFORsKUn+va5hrrQFnX5C0FWynSIxylA==', 'image/jpeg', 'ab477c30', '0fc454ff.jpg', 1430492131, 292389),
(404, 'drive', 1, 1430492131, 'd4c224e8', '', '0a90cb74f6e23f994325fbb27749dcb5', 'GYiP3lMl3KpDcIcuZZB+3IqRoWT6NLeAOLoudWWqxcP6vfH4epgSpknQglyy/uF1I+wqnPeB2th+UnwRdMIjrg==', 'image/png', '20ba0d09', '0fc45x4ff.png', 1430492131, 50514);

-- --------------------------------------------------------

--
-- Table structure for table `storage_static`
--

CREATE TABLE IF NOT EXISTS `storage_static` (
`id` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` text NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_static`
--

INSERT INTO `storage_static` (`id`, `folder`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'swf', 1429190446, '0b2829d9', '62f691cf0d3bb2b8cc8300d1107ff931', '', 'AG5aUd7jzk17rxOvAsf8b5uE/3gduecPYB/7tbhvnW8=', 'application/x-shockwave-flash', 'eb0e03d5', 'gplayer.swf', 1, 50221),
(2, 'xap', 1429190446, 'ae46f3cb', 'a83ab83a3d43222e4ba77cf96e0074aa', '', '6ETAZpJ8OYMcqKL7e4G1mZ8usEhVvhWg2X+uBR8ZHmM=', 'application/octet-stream', '3e629def', 'gplayer.xap', 1, 50221);

-- --------------------------------------------------------

--
-- Table structure for table `storage_video`
--

CREATE TABLE IF NOT EXISTS `storage_video` (
`id` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` text NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 8, 1429192096, 'a2feca4b', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'fYkUFHJl6X/A3GtysbOtGYynlyy8Fzw2yy6ZmrfvhJyr8rCZrUTbl/VdA/o93BoBFKICNyShi+lg3abAFfPssQ==', 'video/mp4', '42e0c9d5', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192096, 47959396),
(2, 'drive', 4, 1429192117, '2f26626b', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'pQom57rWOXNSbzILKf2V8PpP4VnGRObVFTIaLv7ag4xk5eYIR60YdncVnA39a6UlUMte5ZnSdBWpal4OVO+zOg==', 'video/mp4', '9195bb7a', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192117, 47959396),
(3, 'drive', 5, 1429192346, '34bf7db4', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'XpgoduXBmW1O6iMTQnuspP5isQ/7NPSrbe1ZL3pfYsnavFZc3bCXa7cOW0fpdfjZYpOtIFCnkU0UZl4Y/9f9VQ==', 'video/mp4', 'ddebafeb', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192346, 47959396),
(4, 'drive', 7, 1429192361, '42be53d4', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'ecoSXvjCbxOWocg3yV5BEudrkp1LwlQRiSntYw1oBnNJ8aGQNCIbnT9b1v8M3j8wM42fZk24o/l10l/LTG+xng==', 'video/mp4', '001c4826', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192361, 47959396),
(10, 'drive', 5, 1429365454, '78502b41', '', '578f92e722a29145902e935ba20030b1', '/1G1B8/Rj/ClEDC3/b+bc0nmecBSzDCfPAK9iUhd8LfbAGyqOJHcH0AtQlqHI1N/gpymy+Bo00wHJ0SKCcLbQg==', 'video/mp4', '43e7e9dc', 'L&aacute; Di&ecirc;u B&ocirc;ng (Remix) Ch&acirc;u Kháº£i Phong - YouTube.MP4', 1429365454, 11800047),
(11, 'drive', 7, 1429365555, '1434ce24', '', '578f92e722a29145902e935ba20030b1', 'hTXH3JskRIqlscIHku7uuzfqPPYnPEpAYc+VzGZe/cs/Bfd7jofjZKix57GUYFGng1Sht2vM3aOtP20zBaJYFQ==', 'video/mp4', 'd7ee3f3c', 'L&amp;aacute; Di&amp;ecirc;u B&amp;ocirc;ng (Remix) Ch&amp;acirc;u Kháº£i Phong - YouTube.MP4', 1429365555, 11800047),
(12, 'drive', 3, 1429365771, 'fc8a15cc', '', '578f92e722a29145902e935ba20030b1', 'Xc20uMTe8D7gmyptDT/rmKGU0yh15YrhRgCGgnLf/cCgU8nR728BVnx5sUh67sYmuWuJ9h1gNKNl+QVjvT8Nzg==', 'video/mp4', '70c9873f', 'L&aacute; Di&ecirc;u B&ocirc;ng (Remix) Ch&acirc;u Kháº£i Phong - YouTube.MP4', 1429365771, 11800047),
(13, 'drive', 2, 1429365780, 'ac05fe39', '', '578f92e722a29145902e935ba20030b1', 'eJmi5a5s8Itjz1bKPlXBDmhKt2ZitDE0NPGxtdL2b09ePvZTDZW1drCDr2dVGq1do2QHlaitDqg5i/SI74/uTQ==', 'video/mp4', '0307a192', 'L&amp;aacute; Di&amp;ecirc;u B&amp;ocirc;ng (Remix) Ch&amp;acirc;u Kháº£i Phong - YouTube.MP4', 1429365780, 11800047),
(14, 'drive', 6, 1429365854, '8fe3ca8d', '', '768f0b5e43d356d8abb8b3f8569f2c8e', 'TXMEqcQSmIJag8JciTkDyMH5FhGwVs/QHwCsALobf8poK42jUW0b15DAkVETeBl6hO9m2PZC4/NEUBIyD92wDQ==', 'video/mp4', 'e328decd', 'Home - CloudFlare - The web performance &amp; security company.MP4', 1429365854, 10069607),
(15, 'drive', 6, 1429365871, '2257726f', '', '768f0b5e43d356d8abb8b3f8569f2c8e', 'E5815JnihXHLutWPBmSCkS+Db5u3zC6UOBND75Mceoa95tFJ0mM2JpEEMSu6+UfVTXrP9eybGyuL/gyfY9zQtw==', 'video/mp4', 'c98f61f6', 'Home - CloudFlare - The web performance &amp;amp; security company.MP4', 1429365871, 10069607);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `password.hash` text NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `middlename` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `interest` int(1) DEFAULT NULL,
  `birthday` int(11) DEFAULT NULL,
  `birthday.format` char(10) DEFAULT NULL,
  `relationship` int(1) DEFAULT NULL,
  `mate` int(11) DEFAULT NULL,
  `family` varchar(100) DEFAULT NULL,
  `language` char(2) DEFAULT NULL,
  `timezone` varchar(20) DEFAULT NULL,
  `introduction` varchar(400) DEFAULT NULL,
  `slogan` varchar(100) DEFAULT NULL,
  `avatar.large` text,
  `avatar.medium` text,
  `avatar.small` text,
  `cover.large` text,
  `cover.medium` text,
  `cover.small` text,
  `theme` int(1) DEFAULT NULL,
  `link` text,
  `register` int(11) NOT NULL,
  `private.tag` int(1) NOT NULL,
  `private.search` int(1) NOT NULL,
  `private.info.friends` int(1) NOT NULL,
  `private.info.birthday` int(1) NOT NULL,
  `private.info.country` int(1) NOT NULL,
  `private.info.live` int(1) NOT NULL,
  `private.info.email` int(1) NOT NULL,
  `private.info.phone` int(1) NOT NULL,
  `private.status.view` int(1) NOT NULL,
  `private.status.comment` int(1) NOT NULL,
  `private.status.share` int(1) NOT NULL,
  `private.photos.view` int(1) NOT NULL,
  `private.photos.comment` int(1) NOT NULL,
  `private.photos.share` int(1) NOT NULL,
  `private.music.view` int(1) NOT NULL,
  `private.music.comment` int(1) NOT NULL,
  `private.music.share` int(1) NOT NULL,
  `private.videos.view` int(1) NOT NULL,
  `private.videos.comment` int(1) NOT NULL,
  `private.videos.share` int(1) NOT NULL,
  `country` varchar(50) NOT NULL,
  `live` varchar(50) NOT NULL,
  `units.temperature` char(1) NOT NULL,
  `units.speed` char(10) NOT NULL,
  `units.pressure` char(5) NOT NULL,
  `units.distance` char(5) NOT NULL,
  `videos.replay` int(1) NOT NULL,
  `music.replay` int(1) NOT NULL,
  `verified` int(1) NOT NULL,
  `dead` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `slogan`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `register`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `verified`, `dead`) VALUES
(1, '51e97042', '561ff2d840decaddbf2asfbcf8136ec9682d22c7', 'lamhieu', 'lamhieu@giccos.co', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sH4sSk2ab2euudk+Tt26k03x/Ye75GTwpoZJKe8Fg4Y=', '0946083033', 'Lam Hieu', 'LÃ¢m', NULL, 'Hiáº¿u', 'lh', 1, 2, 923871661, 'm/d/Y', 1, NULL, NULL, 'en', 'Asia/Saigon', 'I created it. Giccos social network.', 'I see tomorrow.', '0', '0', '0', '0', '0', '0', 1, 'wall/lamhieu', 1410787532, 1, 1, 4, 4, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '3', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 1, 0),
(2, '3d15fafb', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'QHqCu+ywO6slZ22otoJGVpV9TO1CJiJWWcxMbiO/kTQ=', '0946083033', 'Truong Tuan', 'Truong', NULL, 'Tuan', NULL, 1, NULL, 923853661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Saigon', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/truongtuan', 1414757503, 1, 1, 4, 4, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(3, '984c3d3f', '561ff2d840decaasdddbf136ec9682d22c7', 'thainguyen', 'thainguyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'oRNqTlcTL0ngnzvIH+vZ9U1+xeZT4QVghrwCcHL0e1I=', '0946083033', 'Thai Nguyen', 'Thai', NULL, 'Nguyen', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/thainguyen', 1414850443, 3, 1, 4, 4, 0, 0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(4, 'e84211a9', '561ff2d8ecdbfdsds2c0ebcf8136ec9682d22c7', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'wH0xYlKOrs1MzGEqHkohSJD82YMUw6rewLBIxhsAsUQ=', '0946083033', 'Tran Duong', 'Tran', NULL, 'Duong', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/tranduong', 1414905982, 3, 1, 4, 4, 0, 4, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(5, '6a9e1ef6', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'minhson', 'minhson@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'Adn6fwgLZuTUheXXW0+fSk22rieUVvtoBOPJYAQDGrg=', '0946083033', 'Minh Son', 'Minh', NULL, 'Son', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/minhson', 1414988945, 3, 1, 4, 4, 3, 0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_block`
--

CREATE TABLE IF NOT EXISTS `users_block` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_contact`
--

CREATE TABLE IF NOT EXISTS `users_contact` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `time` int(11) NOT NULL,
  `type` char(10) NOT NULL,
  `at` char(10) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_contact`
--

INSERT INTO `users_contact` (`id`, `user.id`, `private`, `time`, `type`, `at`, `value`) VALUES
(2, 1, 1, 1410787532, 'email', 'home', 'lamhieu.vk@gmail.com'),
(3, 1, 2, 1410787532, 'phone', 'home', '0946083033'),
(4, 1, 2, 1410787532, 'email', 'work', 'lamhieu@giccos.co');

-- --------------------------------------------------------

--
-- Table structure for table `users_education`
--

CREATE TABLE IF NOT EXISTS `users_education` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `time.format` char(10) DEFAULT NULL,
  `time.start` int(11) DEFAULT NULL,
  `time.stop` int(11) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_education`
--

INSERT INTO `users_education` (`id`, `user.id`, `private`, `time.format`, `time.start`, `time.stop`, `school`, `level`, `description`, `address`) VALUES
(1, 1, 2, 'm/d/Y', 1410787532, 0, 'THPT Ganh Hao', 'High school', NULL, '1'),
(2, 1, 2, 'm/d/Y', 1410787532, 0, 'TH Ganh Hao', 'Primary school', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `users_faces`
--

CREATE TABLE IF NOT EXISTS `users_faces` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `faces.id` int(11) NOT NULL,
  `verified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_follow`
--

CREATE TABLE IF NOT EXISTS `users_follow` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_follow`
--

INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES
(1, 1414828075, 1, 'user', 1),
(3, 1414828075, 2, 'user', 2),
(5, 1414850443, 3, 'user', 3),
(6, 1414905982, 4, 'user', 4),
(7, 1414988945, 5, 'user', 5),
(8, 1414988945, 2, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_guide`
--

CREATE TABLE IF NOT EXISTS `users_guide` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_guide`
--

INSERT INTO `users_guide` (`id`, `user.id`, `code`) VALUES
(1, 1, 'explorer:select_a_file');

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE IF NOT EXISTS `users_login` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `client` char(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `platform` varchar(40) NOT NULL,
  `browser.name` varchar(20) NOT NULL,
  `browser.version` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `time`, `user.id`, `status`, `client`, `ip`, `platform`, `browser.name`, `browser.version`) VALUES
(1, 1424923573, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(2, 1425711630, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(3, 1425878188, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(4, 1425902195, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(5, 1425967943, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(6, 1426156274, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(7, 1426492718, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '41.0.2272.89'),
(8, 1426503780, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '41.0.2272.89'),
(9, 1426667251, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '41.0.2272.89'),
(10, 1426766353, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '41.0.2272.89'),
(11, 1426836092, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(12, 1426836157, 1, 1, '50ee0459', '::1', 'Unknown', 'Apple Safari', '10.0.9.2372'),
(13, 1426836292, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(14, 1426837652, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(15, 1426837701, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(16, 1426927703, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(17, 1426949773, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(18, 1426954818, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(19, 1426999482, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(20, 1426999489, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(21, 1426999493, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(22, 1427004681, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(23, 1427005357, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(24, 1427006996, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(25, 1427007038, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(26, 1427028782, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(27, 1427116355, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(28, 1427179531, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(29, 1427271401, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(30, 1427284523, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(31, 1427284803, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(32, 1427286585, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(33, 1427297803, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(34, 1427331920, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(35, 1427439227, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(36, 1427459726, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(37, 1427461977, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(38, 1427522813, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(39, 1427526495, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(40, 1427633980, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(41, 1427716675, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(42, 1427809220, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(43, 1427809231, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(44, 1427891806, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(45, 1427897996, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(46, 1427982013, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(47, 1428238359, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(48, 1428328136, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(49, 1428411466, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(50, 1428469542, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(51, 1428473540, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(52, 1428474271, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(53, 1428479332, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(54, 1428553737, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(55, 1428653838, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(56, 1428667441, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(57, 1428742687, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(58, 1428765064, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(59, 1428773298, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(60, 1428773308, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(61, 1428773428, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(62, 1428773526, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(63, 1428773810, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(64, 1428814180, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(65, 1428931871, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(66, 1428932109, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(67, 1428932179, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(68, 1428932535, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(69, 1428937471, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(70, 1428941287, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(71, 1429106717, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(72, 1429187227, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(73, 1429248511, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(74, 1429252130, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(75, 1429273616, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(76, 1429274432, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(77, 1429331094, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(78, 1429335701, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(79, 1429335974, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(80, 1429361980, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(81, 1429377266, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(82, 1429428422, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(83, 1429537314, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(84, 1429600856, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(85, 1429691695, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(86, 1429712488, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(87, 1429795800, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(88, 1429851961, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(89, 1429862688, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(90, 1429939445, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(91, 1430031222, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(92, 1430059740, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(93, 1430117184, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(94, 1430120857, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(95, 1430121547, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(96, 1430145116, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(97, 1430200936, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(98, 1430214325, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(99, 1430295208, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(100, 1430324370, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(101, 1430380489, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(102, 1430384812, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(103, 1430399759, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(104, 1430471411, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(105, 1430486555, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(106, 1430490161, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135');

-- --------------------------------------------------------

--
-- Table structure for table `users_remembers`
--

CREATE TABLE IF NOT EXISTS `users_remembers` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_remembers`
--

INSERT INTO `users_remembers` (`id`, `user.id`, `client`, `token`, `time`) VALUES
(20, 1, '2b0bad37', 'ea7f2d79', 1453814608),
(22, 1, '6c6f7705', 'bda0b029', 1454909318);

-- --------------------------------------------------------

--
-- Table structure for table `users_workplaces`
--

CREATE TABLE IF NOT EXISTS `users_workplaces` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `time.format` char(10) DEFAULT NULL,
  `time.start` int(11) DEFAULT NULL,
  `time.stop` int(11) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `work` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `awards` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_workplaces`
--

INSERT INTO `users_workplaces` (`id`, `user.id`, `private`, `time.format`, `time.start`, `time.stop`, `company`, `work`, `description`, `address`, `awards`) VALUES
(1, 1, 2, 'm/d/Y', 1410787532, 0, 'Giccos Inc', 'CEO', '', '3', 'Author of Giccos Inc');

-- --------------------------------------------------------

--
-- Table structure for table `videos_block`
--

CREATE TABLE IF NOT EXISTS `videos_block` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `this.type` char(10) NOT NULL,
  `this.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos_cache`
--

CREATE TABLE IF NOT EXISTS `videos_cache` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `close` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` char(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nameraw` varchar(225) DEFAULT NULL,
  `thumbnail` varchar(20) NOT NULL,
  `thumbnail.path` char(10) DEFAULT NULL,
  `copy` varchar(20) NOT NULL,
  `mime` char(15) NOT NULL,
  `size` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos_comment`
--

CREATE TABLE IF NOT EXISTS `videos_comment` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) DEFAULT NULL,
  `comment.id` int(11) DEFAULT NULL,
  `author.type` char(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `content` text,
  `logscontent` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos_info`
--

CREATE TABLE IF NOT EXISTS `videos_info` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `playlist` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `tags` text,
  `description` varchar(255) NOT NULL,
  `private.view` int(1) NOT NULL,
  `private.comment` int(1) NOT NULL,
  `private.share` int(1) NOT NULL,
  `file.thumbnail` varchar(50) NOT NULL,
  `file.audio` varchar(50) NOT NULL,
  `file.hd` varchar(50) NOT NULL,
  `file.sd` varchar(50) NOT NULL,
  `secret.thumbnail` varchar(40) NOT NULL,
  `secret.audio` varchar(40) NOT NULL,
  `secret.hd` varchar(40) NOT NULL,
  `secret.sd` varchar(40) NOT NULL,
  `path.thumbnail` char(10) NOT NULL,
  `path.audio` char(10) NOT NULL,
  `path.hd` char(10) NOT NULL,
  `path.sd` char(10) NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec` char(10) NOT NULL,
  `dimension.height` int(11) NOT NULL,
  `dimension.width` int(11) NOT NULL,
  `display.ratio` char(10) NOT NULL,
  `bitrate` int(11) NOT NULL,
  `framerate` varchar(20) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `mime_type` varchar(30) NOT NULL,
  `audio.codec_name` char(20) DEFAULT NULL,
  `audio.codec_long_name` varchar(40) DEFAULT NULL,
  `audio.profile` char(10) DEFAULT NULL,
  `audio.codec_type` char(20) DEFAULT NULL,
  `audio.codec_time_base` char(20) DEFAULT NULL,
  `audio.codec_tag_string` char(10) DEFAULT NULL,
  `audio.channels` char(10) DEFAULT NULL,
  `audio.channel_layout` char(10) DEFAULT NULL,
  `audio.duration` int(11) DEFAULT NULL,
  `audio.bit_rate` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_info`
--

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.sd`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.sd`, `path.thumbnail`, `path.audio`, `path.hd`, `path.sd`, `file.datetime`, `file.size`, `codec`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(1, 1, 'user', 1, 1, 1429192118, 'a563e8db', '183539e54667dddc02d46f94bc0d43c5', 'Biet noi la tai sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, 'a36eb7ae191dd1692e80e2cb2783bece.png', '0', '0', '1f7a30ef62efff22dc0582d6ea60ee6e.mp4', '', '0', '0', 'adf7d74f3b3001ac7f3d14514e57f87d', '374bd3ab', '0', '0', '9195bb7a', 0, 47959396, 'h264', 360, 640, '0:1', 928743, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807),
(2, 1, 'user', 1, 1, 1429192361, 'fb7450dc', '63154d5661f774fb7d2d11701d466aa2', 'Biet noi la tai sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, 'bbb55a2d4b12267706ddfc90a4d67aaa.png', '0', '0', '5450cb8b869148499855abfb22689b0f.mp4', '', '0', '0', 'adf7d74f3b3001ac7f3d14514e57f87d', '8e2418ef', '0', '0', '001c4826', 0, 47959396, 'h264', 360, 640, '0:1', 928743, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807),
(3, 1, 'user', 1, 2, 1429365555, '0b82d4fd', 'd4bfc50adf9047e828a28dbfd5c006d6', 'L&aacute; di&ecirc;u b&ocirc;ng - Remix', 'L&aacute; Di&ecirc;u B&ocirc;ng (Remix) Ch&acirc;u Kháº£i Phong - YouTube.MP4', '', '', 4, 4, 4, '760459ef915fdbe3f68970d0d62d3883.png', '0', '0', 'd91db1f6a7f388ffd90b471b229061ec.mp4', '', '0', '0', '578f92e722a29145902e935ba20030b1', 'f4ccce7c', '0', '0', 'd7ee3f3c', 0, 11800047, 'h264', 360, 640, '16:9', 511029, '30000/1001', 184.725998, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 185, 125596),
(4, 1, 'user', 1, 0, 1429365780, 'd99b82a5', '42e44882afb0ead4c7b5ba3cadbda89a', 's', 'L&aacute; Di&ecirc;u B&ocirc;ng (Remix) Ch&acirc;u Kháº£i Phong - YouTube.MP4', '', '', 4, 4, 4, '57a97cb03ea0994c7f4230357f296aa5.png', '0', '0', 'db3acb91b7c9557d9639e7b66044d267.mp4', '', '0', '0', '578f92e722a29145902e935ba20030b1', '9d7344f7', '0', '0', '0307a192', 0, 11800047, 'h264', 360, 640, '16:9', 511029, '30000/1001', 184.725998, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 185, 125596),
(5, 1, 'user', 1, 0, 1429365871, '2e034807', 'bd5a0c78cae8a275e057e63a8ec966bc', 'Home - CloudFlare - The web performance &amp; security company', 'Home - CloudFlare - The web performance &amp; security company.MP4', '', '', 4, 3, 4, '2f4861b1be3231110a218f8350fd3242.png', '0', '0', '4ab04dd0288ce290db7293ffdb924acc.mp4', '', '0', '0', '768f0b5e43d356d8abb8b3f8569f2c8e', '588af2b4', '0', '0', 'c98f61f6', 0, 10069607, 'h264', 360, 640, '16:9', 855138, '30000/1001', 94.203331, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 94, 107039);

-- --------------------------------------------------------

--
-- Table structure for table `videos_playlist`
--

CREATE TABLE IF NOT EXISTS `videos_playlist` (
`id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `places.type` int(1) NOT NULL,
  `places.value` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `tags` text
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_playlist`
--

INSERT INTO `videos_playlist` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 1, '6839d58e', '', 1429192117, 'Khac Viet', 0, '', '', NULL),
(2, 'user', 1, 'c1caa202', '82161083648835307bc2c21ab8e07009', 1429365555, 'remix', 0, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos_replay`
--

CREATE TABLE IF NOT EXISTS `videos_replay` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_replay`
--

INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(2, 1429253663, 2, 'user', '1', 1429948840, 165),
(3, 1429365808, 4, 'user', '1', 1429970613, 1),
(4, 1429365845, 3, 'user', '1', 1429970645, 0);

-- --------------------------------------------------------

--
-- Table structure for table `videos_views`
--

CREATE TABLE IF NOT EXISTS `videos_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `quality` char(10) NOT NULL,
  `captions` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_views`
--

INSERT INTO `videos_views` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `quality`, `captions`) VALUES
(1, 1429192847, 2, 'user', '1', '0', '0'),
(2, 1429248743, 2, 'user', '1', '0', '0'),
(3, 1429252108, 2, 'guy', 'c52e3357', '0', '0'),
(4, 1429331616, 2, 'user', '1', '0', '0'),
(5, 1429365791, 4, 'user', '1', '0', '0'),
(6, 1429365830, 3, 'user', '1', '0', '0'),
(7, 1429365883, 5, 'user', '1', '0', '0'),
(8, 1429428565, 5, 'user', '1', '0', '0'),
(9, 1429518365, 5, 'guy', 'c52e3357', '0', '0'),
(10, 1429537319, 5, 'user', '1', '0', '0'),
(11, 1429600805, 5, 'guy', 'c52e3357', '0', '0'),
(12, 1429600863, 5, 'user', '1', '0', '0'),
(13, 1429691716, 5, 'user', '1', '0', '0'),
(14, 1429852288, 5, 'user', '1', '0', '0'),
(15, 1430384846, 5, 'user', '1', '0', '0'),
(16, 1430384866, 5, 'guy', 'c52e3357', '0', '0'),
(17, 1430471420, 5, 'user', '1', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wiki_pages`
--

CREATE TABLE IF NOT EXISTS `wiki_pages` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertising_actions`
--
ALTER TABLE `advertising_actions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertising_id`
--
ALTER TABLE `advertising_id`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analysis_faces`
--
ALTER TABLE `analysis_faces`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers_post`
--
ALTER TABLE `answers_post`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers_rate`
--
ALTER TABLE `answers_rate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers_topic`
--
ALTER TABLE `answers_topic`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cited`
--
ALTER TABLE `cited`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends_request`
--
ALTER TABLE `friends_request`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages_codes`
--
ALTER TABLE `languages_codes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages_values`
--
ALTER TABLE `languages_values`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_actions`
--
ALTER TABLE `logs_actions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_client`
--
ALTER TABLE `logs_client`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maps_places`
--
ALTER TABLE `maps_places`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_data`
--
ALTER TABLE `messages_data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_id`
--
ALTER TABLE `messages_id`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_members`
--
ALTER TABLE `messages_members`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_typing`
--
ALTER TABLE `messages_typing`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_views`
--
ALTER TABLE `messages_views`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mood`
--
ALTER TABLE `mood`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_album`
--
ALTER TABLE `music_album`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_block`
--
ALTER TABLE `music_block`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_cache`
--
ALTER TABLE `music_cache`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_info`
--
ALTER TABLE `music_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_replay`
--
ALTER TABLE `music_replay`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_views`
--
ALTER TABLE `music_views`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_block`
--
ALTER TABLE `photos_block`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_cache`
--
ALTER TABLE `photos_cache`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_faces`
--
ALTER TABLE `photos_faces`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_info`
--
ALTER TABLE `photos_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_tips`
--
ALTER TABLE `photos_tips`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_views`
--
ALTER TABLE `photos_views`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_author`
--
ALTER TABLE `sites_author`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_id`
--
ALTER TABLE `sites_id`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_info`
--
ALTER TABLE `sites_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_secure`
--
ALTER TABLE `sites_secure`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_views`
--
ALTER TABLE `sites_views`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_block`
--
ALTER TABLE `status_block`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_cited`
--
ALTER TABLE `status_cited`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_comment`
--
ALTER TABLE `status_comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_edit`
--
ALTER TABLE `status_edit`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_favorite`
--
ALTER TABLE `status_favorite`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_follow`
--
ALTER TABLE `status_follow`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_invite`
--
ALTER TABLE `status_invite`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_link`
--
ALTER TABLE `status_link`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_mood`
--
ALTER TABLE `status_mood`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_music`
--
ALTER TABLE `status_music`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_photos`
--
ALTER TABLE `status_photos`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_places`
--
ALTER TABLE `status_places`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_share`
--
ALTER TABLE `status_share`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_usertag`
--
ALTER TABLE `status_usertag`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_videos`
--
ALTER TABLE `status_videos`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_audio`
--
ALTER TABLE `storage_audio`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_image`
--
ALTER TABLE `storage_image`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_static`
--
ALTER TABLE `storage_static`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_video`
--
ALTER TABLE `storage_video`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_block`
--
ALTER TABLE `users_block`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_contact`
--
ALTER TABLE `users_contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_education`
--
ALTER TABLE `users_education`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_faces`
--
ALTER TABLE `users_faces`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_follow`
--
ALTER TABLE `users_follow`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_guide`
--
ALTER TABLE `users_guide`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_remembers`
--
ALTER TABLE `users_remembers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_workplaces`
--
ALTER TABLE `users_workplaces`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_block`
--
ALTER TABLE `videos_block`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_cache`
--
ALTER TABLE `videos_cache`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_comment`
--
ALTER TABLE `videos_comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_info`
--
ALTER TABLE `videos_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_replay`
--
ALTER TABLE `videos_replay`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_views`
--
ALTER TABLE `videos_views`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertising_actions`
--
ALTER TABLE `advertising_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `advertising_id`
--
ALTER TABLE `advertising_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `analysis_faces`
--
ALTER TABLE `analysis_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `answers_post`
--
ALTER TABLE `answers_post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `answers_rate`
--
ALTER TABLE `answers_rate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `answers_topic`
--
ALTER TABLE `answers_topic`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `cited`
--
ALTER TABLE `cited`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `friends_request`
--
ALTER TABLE `friends_request`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `languages_codes`
--
ALTER TABLE `languages_codes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `languages_values`
--
ALTER TABLE `languages_values`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=528;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `messages_id`
--
ALTER TABLE `messages_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `messages_typing`
--
ALTER TABLE `messages_typing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_views`
--
ALTER TABLE `messages_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mood`
--
ALTER TABLE `mood`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `music_album`
--
ALTER TABLE `music_album`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_block`
--
ALTER TABLE `music_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_cache`
--
ALTER TABLE `music_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_info`
--
ALTER TABLE `music_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `music_replay`
--
ALTER TABLE `music_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_views`
--
ALTER TABLE `music_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `photos_faces`
--
ALTER TABLE `photos_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `photos_info`
--
ALTER TABLE `photos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_tips`
--
ALTER TABLE `photos_tips`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_views`
--
ALTER TABLE `photos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sites_author`
--
ALTER TABLE `sites_author`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_id`
--
ALTER TABLE `sites_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_info`
--
ALTER TABLE `sites_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_secure`
--
ALTER TABLE `sites_secure`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_views`
--
ALTER TABLE `sites_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `status_block`
--
ALTER TABLE `status_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_cited`
--
ALTER TABLE `status_cited`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_comment`
--
ALTER TABLE `status_comment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_edit`
--
ALTER TABLE `status_edit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_favorite`
--
ALTER TABLE `status_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_invite`
--
ALTER TABLE `status_invite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_link`
--
ALTER TABLE `status_link`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_mood`
--
ALTER TABLE `status_mood`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_music`
--
ALTER TABLE `status_music`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_photos`
--
ALTER TABLE `status_photos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `status_places`
--
ALTER TABLE `status_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_share`
--
ALTER TABLE `status_share`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_usertag`
--
ALTER TABLE `status_usertag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_videos`
--
ALTER TABLE `status_videos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=405;
--
-- AUTO_INCREMENT for table `storage_static`
--
ALTER TABLE `storage_static`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users_block`
--
ALTER TABLE `users_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_contact`
--
ALTER TABLE `users_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users_education`
--
ALTER TABLE `users_education`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_faces`
--
ALTER TABLE `users_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_follow`
--
ALTER TABLE `users_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users_guide`
--
ALTER TABLE `users_guide`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `users_remembers`
--
ALTER TABLE `users_remembers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users_workplaces`
--
ALTER TABLE `users_workplaces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_block`
--
ALTER TABLE `videos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_cache`
--
ALTER TABLE `videos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_comment`
--
ALTER TABLE `videos_comment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_info`
--
ALTER TABLE `videos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `videos_replay`
--
ALTER TABLE `videos_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
