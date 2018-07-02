-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2015 at 05:33 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;

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
(219, 1430492131, 'user', 1, 'add', '', 0, 'status', 16),
(220, 1430727326, 'user', 1, 'remove', 'status', 16, '', 0),
(221, 1430727345, 'user', 1, 'remove', 'status', 14, '', 0),
(222, 1430727348, 'user', 1, 'remove', 'status', 13, '', 0),
(223, 1430727351, 'user', 1, 'remove', 'status', 12, '', 0),
(224, 1430727354, 'user', 1, 'remove', 'status', 11, '', 0),
(225, 1430727357, 'user', 1, 'remove', 'status', 10, '', 0),
(226, 1430727360, 'user', 1, 'remove', 'status', 9, '', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=latin1;

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
(201, 'image_faces_thumbnail', 'en', '150'),
(202, 'hash_comment_content', 'en', 'g::key::comment->content');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_views`
--

INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES
(1, 1429973122, 1, 'user', '1', '0'),
(2, 1430063287, 1, 'user', '1', '0'),
(3, 1430493119, 5, 'user', '1', '0'),
(4, 1430493119, 4, 'user', '1', '0'),
(5, 1430493119, 2, 'user', '1', '0'),
(6, 1430493119, 3, 'user', '1', '0'),
(7, 1430620473, 4, 'user', '1', '0'),
(8, 1430620473, 2, 'user', '1', '0'),
(9, 1430620473, 3, 'user', '1', '0'),
(10, 1430620474, 5, 'user', '1', '0'),
(11, 1430726557, 4, 'user', '1', '0'),
(12, 1430726557, 3, 'user', '1', '0'),
(13, 1430726557, 2, 'user', '1', '0'),
(14, 1430726557, 5, 'user', '1', '0');

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
('-UM6jBYoG-2iCdJPqGu,8ijA,nekSX3MbQ2zXDBFnM7', 1430926401, 'pAdaycPihVBUmvSS+xkKw82tSpQlMhHAMoxdiBruiv8WW3kRgiDt1N6JN9rnvYTZMFeyEi0npgCUuwbNNI3iRtp296wuwaRjaew8j/xxXPHxF6ENQu+X7kQiyPn3myLoeeVcsNlcEjSzhbXhIUHbpekyh6mlcxoW7iDCWlPzIN5upLdm3WY/zpozqDcZOnqOcZxYAqm0wHhnG3smGsLhZavX3150TpvxEV7j4MdwNSFNum7IKAtf6X0jaA06Uu+Jgvp99aRsgWpuTLexiTaDK6BWbr+pLpRsqYPAYyzQBcLFQjnsmwyDDyqID1W5cOmh2D3z2xPyQFUAEG47wnc0cCQ7zNVdMOcv+Nbe0q5uzqEElZnyyyHb0PPFd4t4xaNc1LVUnv6OE/bV4uDWVuzQNdCPELqHGQBk6y3E7CALL3FmQK8yPQkV6+QLUM2VaL0HCu9SYcx04FelpYXt4v03KtaAMwyZ99fN8+WB8Wx67y5pRAaVuMjP1cVIemew5fpztgR6klDtHWlqcnndW4CELlvYdpHz1Iv5M7B7saOiEd+xH6ZmCcIYYagP6jZlLpkc66+O/ybNgLY9aCUxyfuWnrl1VWCEVodCm6IOX7k67HEAI24j+NTbXzArxQBU08eANLYNjU1JgJ+YhUvQjP/6/b81cyDP9taoZl8WhActNEkm0pnpU7dFbw15ILxRCXc3ARxll8CWd5u8VxpjJuGsMLAbuzUAjwd9RJ9pSPDGwOfXDBvhSnLgKAdn6NsKRZ6MTd8jJOx9qwqPKIHGKyWSLXDxIWcG994Dvhst64P5TxIbTs/QGu7IaHo3XUg6FoE+HGsV9BRPw38xdvnD3iSns4T3yX04lnobCMxldTJfQlEPRX5F8TNrp1Fqbt6zdYVJBKibs0px9GJL+ztyPDuqUreiy5N1R8GApoNRItXGqFtbTnFqpOuH7ikGNUzZKClGgwZ4DxQuMaKEXS2Ma5vNVmBMuDyOVWZ8QTg0bDkyeA/pKJ+QDyGEncNk7RrJmUQq3E/uDlx+KW/50VaWmMSPTR7FwEHf/8XLemXYm7JQnE8I1oqppFE5jRM+dejfCFoRlN/qJOYB2y2jug3TrdC7B37cGidjCkonJIAjGbUodWiKj6g8j1AM85+hLNwYanpv8L+0jwuaT9PA4SiupHKmg2lVqmqF6v46LpQNiINy7E1977V3n1TAVw6JUuXagVJOvJmZFQmKYCpSEz3ebTw+EsuxFuE03aBG86xfhl0cU4Xl8ZY9ckgw4uDNb96XQZ/rBld8GlFiirzLiVqbQFDPafh/g7d4/vqM2WvCwz7Ek7dJekq3hevD8JXGE/Su3MBq/fTJjIZgIrJO89c0HbxOqs98x14FidK307thf4ro3bx0ulXd2vB4txVFc57zZbxBBB+XK8cHKt/mIap1U0adH6YDvE0JTbKTKqJrVWrjebZai2+Pyeqw+RLdiTIw1yJzueMDI6RnE/KuPCFy6XRV25GvffsyCd7uleNYD2roj7D1C5G309A/X0Vo+blq3rRHIbg7LL1ecHsM1kCYdns+E6IEep/nAH55W1wQx1ixnyhVNOcgxZt4YwdOiomC0t+OE7vANwu/D24oO4984y5C6NRI1e0o0xzffqGiaq88x750r+EivtphLjvUboZYAjLFQGPL8tSk1r/Q1m4RsWagwi0l3zrjZ/C9SYN1qcg96+pQsUBXb6CZb15g65VCba/f+09FMZ8GCb7NrRVXjPLvLeT+soEUqlDe/A5BDCetJz/YxZrMSfloIAC9bl+KC5VjMbGZ7ZJCxdqOLvgOsiW/7LFE65sq1VoHG7nAjk35RxOvhsXBucivmWcQYH+ru6ydZMEZRWmJ7UOk8Ju9z8B+hC4jApBYZ/HjkrQA7cPLY4gk1/90SmsSoz2J+zzWr/yD/3hn0kdju68pLp05RkSQ2EVQTNcz5mo4bYHulyBCNfi32jYSXqApq07yzHIPYpUu9hR62WbsdvOuxyj+JrlahaVcoEBiUywwDw5CCXoNHKvDth9BClQaBKOJmaSDeaW0sR+mZgnCGGGoD+o2ZS6ZHOuvjv8mzYC2PWglMcn7lp50PRmGGCp/5xehGXqhP5fnk9vObijIInk9urm/WiYTg1Uh2YpfO8FsHOkqNLhqXSgOT1Fj9SGdLS+pMS0HOIYmFpRdFjz+rbY3cnNvxLbjbEcBDs0PP82JjMShuDTvXjum38JM1U7ePT1tHvoKzG6NKXYl5AxQ3NfgZBDJCVOSB3co2TCvVA9nlDwnzZKJHxVlsjGmrRgVlCGpk+OFua3TKfLlR5tH7R7JA9EkhIo4bgX5P4DiT4qp8vIa1Oz3bqxArn60y1dhGIwURn3iAjC6E5RlqEAwxHmmLpdXvG3c2kKsZQgkmWeY7P7abGGTq9EPIcwSJcaNlLG6AleSRdH7iBpPGtVjvjp8sIGlQryboeieYNbyB1QxA1V8hiAhDrmHofvl5XApWUx2uJ9avUAfYyxH/4bfkWUmNmwjtjygRhiHe2IofpLY5uLl69OiYmhK20N9ICdpjEkp7kSHsW34B8tkbMbNe9DBtKUzUx4DAnHvTA5QQLur4dPlLxCXK2nHsNYaI7a+1HZQSEok6cofCUNYESNRDUX4gniaZpIosfTso1tyqp+erIUJqeF5EWEk+DYmPTapZSkNW2/GlTql/WrJTQ8qSpzaZLCkC8rYdtFhvcGodB3AgqOB23Ww2P6YUUGRazQ/OplTkVW4mp2RyhGdNV797RSzIYw71OU0eyLAGpk7DUHD3cBdpWj6VZYtB2YajUT4JrIaTTNvoe8FD+0lQgq4L0DeKpcc6lzzUHNsHW2J9BuZuXCDDn8nx6VzaF//BQ3m3PqsDTkbqmj3B7fxjud7pvjmKcXmuyppdMnbpI2GUlGiYYB7Esv6WAeigVUPcJrj5tfk64pRci3FJgjSELNS0Io9C0Hnasf6mFCKXaIVsCrHaoTRcSXnwap+pMbGnbro9n0Z0Aeci1qcHhrREUwMpAFyiOARHBVUob2Ve3WHPuOMG/7HHcfOnS88YXTFyskNswXvEbKl/oIhR1YQ0S1YgdLBM0dB9Xh3w0+zaKZ/5SVbcEluzy05v6alQQSlp292fp+3LNDWYGSwQnuDLl/K2ttlYcB7dnZIGkq8HjUVfUb4ud/jU+KvPI/sDEoXE60siurmeZS8ZMuJrOCoYBn+gKrCv0AxAjODoERjXIM8HAVE4nm1ahoK4fkPXN1MBq64coo5PqcR6WOWOq3smirAkEwY3cR5XGexvkL6N0NepCftmzpZ/1eQdvpbqxJUvNfMKZVSo4l4QDj/ycLp+DSDmL9dzpsBPkIQV6zm7s1TuUJPbLywmno3HAhVD2C7p6PgfCYxOQqSy8su8kYe/aZkE+kMWMhBum1CxaXIkn2UVsgrAxaUn8Z0VLRhZfbNPc4k3yFSTiOaEeAshHJgm3tT2nJKRhH83s1jXschW//8ruAn1H4/VRDmpnBm4xD1AZFe/gRKhUJXQcqbDBEsG3EyrKC773rqSt2JEAayEMEiidhYjs2+Sk7oEJ2zXv9yd4lYIciLuK+AxBXG2UqHUamadJvuvYMhJ9Mf3xuiJBRlRJTIsBvh317wm6w5zyhSefWSXCn0CLQhNzLxuZWqz3J6KEJhPgiN/xXm1imxJAESR1wc3iW4xS5fIi7yF0RiwbNlXqZfarsAs03PTPQZuP+36oX1WC7Z4+ngOMdMiU6i/S1vmMBFKVjDogJ/lOvuCYIkNUdRUpELbpu2wkxF3L7KFA6X/vf0HHe1HgYL6M2fZwrg/nTGSwp+kx9483smi7QLQPGe2XBa2WWsMGrwAWddWRCPsIunnkdJrGweODMzMogxmLJTb8MpiH4AMsqFjwqVFySVjJI8ZyNBgxyhGH1h7g3DVSlH/SA71bEfpmYJwhhhqA/qNmUumRzrr47/Js2Atj1oJTHJ+5aeFYF3xcaSDgL1NZ1Fw5bDveGeKmRzO9Fat5es6vz8aMBiIDHm6yIBbaxFHzHk0liudnigH65A2eNv8Mx1q5KGfYTwJVLjWLn8/K7VMVnrBbtXZSpG/e85hPJYX3OBFMg1rsasMIpXQdkFrhsfMs+7AIia/LVNS739TAxFc//xxLIPxRhWYKdroYLt0L9LfA73Hdv8J1tz/MU11N2EV7HVqZJKkMrrAqMT+zS4p159QXNS/zAwJADAwsZ3beBa9LwbPTyIRYQ8doeZ0o4gNH3ambNPXmZrYTU8BbswWeTfogdTxpHrb2dW5926Ub6/AGjEkU9/5AB4/rP847+1HXL6MWLt94HldSkaLfd+XJADKXldjGW8Xe3bZKuQhJtcSAPQjKSu+wwchyAv2UsVetnglRjTS/JSGh54qcSVmB7dMnQ14cJaLqxhnBS0WoZbSyCElnGW0QeIDaH0AyqcmgQVkErHCprQzf26X5CxspoEc7DPyfo/yHIQ0nVh/nk4vcdtk179teNEzp6wAdwEpLWi2TRspdon1lZBR3MxlC3Ui5+iDHre1BrZ+359Gsz17UAVZjYEKbxVEwtsdMJrNR0d9cGysNBjbHp299SbMHMOulkN4rK+9qWG2yiHq4osxumeiZoGmmhywbS53L8wtsYCDnRoEYfKtFGdUSPuNxBtzBUdiCrjg5QJUxwK1TD3a/ESK0bM4PP7Grgln9XGVIaFivcB6bJU5zOfcs2ckrCu3vYK/v2VOa/yH5e7bPo4RqhBGAoOlwMM7zBehJj5emvAdwatZqppBhgD9zNflbesHYtyQZwEhSQS6BMEkNz0RYjFT0CPU4pJ+bKP3KSKxskxVmL9ECLYFUETdw6x2zq0ehV5yhUYG/spEEX4/einRbdnTjY1895RXczd2AOlnjAbwGkllVhV8RnNapSNIdrRr1GI/+LqyWwwrH0CJA0DR1PxJNKnQNYLK4PUmsttm7fk+krHCprQzf26X5CxspoEc7DPyfo/yHIQ0nVh/nk4vcdtIbWBa/zdoRhZEdhJR5WJYkJNpuYouZxwl1j8SpTlfG+La0RtPuiOFvxWY7h2N9N2E8ld32ocpNbKlUD6wjz5B8vOm787QayCmBO2ceobF56rw0GplNvV/mWzFztmtAKnsR+mZgnCGGGoD+o2ZS6ZHOuvjv8mzYC2PWglMcn7lp6itBkXxJOl6tTGZqIwyBp70MxtVG4z6avY7+IL8uYSVf/IMKUoF+oB9SiosTC0HpaKu5B4aXlB/kcFkPAirv46aKoJKoJ6yivkaCT2ZhmEsT/E8FH0QvUYXKfTjekOH1xrbfGfdJK7/wA18KcKDUSEY6QK8PM9jbTOsjliXzlkUSAR9V/4i8vGYcQHR0KGwez+oiI9IO9PZ12c9UfHnto+LR7Gcs0MmFYYRbtkop+sW8meUcw86tt9tIqlPtz8u4qPcl+Ji5DFHVapbfykyrx/XKvhQKIe3ncLrOdiLLDRSY4auwhB5UdVq4K2faY06zuKtDZOksCdboxNzK+CFRXlGXjcvm4G63V0FQYN8ZMauRqwDVMv66EwNXYVn+Phz3FlD4Wru7JpmCCgyEFrswgIEVUEzPShzQMvmfbGB/eAGW4GjkVT5OtdhnDk76a2qmAbvwEIvgckxl+GMUg9BM/mQM1u7l6QtcpqWfDu8m1PjlzRYBg/aOhYN3zinH+kNWs8WylxtjJxeloCxSJkm2rm/dN2KOkH6Kq7bgiMc+aEcMFZ2lV4BWLVdgS4olnWDgc/nlSG8EUSjA2BBZxqkQvoNQ1005sthZtlhtHtVOQ0ggMwjbxELBZCi+jpDuS6Z5eYY8AhqJK4gpy6TEKyE1nY8hrdDGfl6sx5DemQGqPZArH1pwPqxoaR0HPcQZbkNnaElsNsQT3J69AN5tTSjJJO/1rx0mvc701NwCseRPhg+sVAP4MuS1ZWhd07QpY5u7xMZHp0joplScDHoKfuCUIIh9JGJnVn++kX9qfdlkO+FvngVzGP3ntXAhWY5+/bKCKsNeBYGB+CbCAuiMUsoxWmPHdAzUZR9eM4dNey6oKqnegANc3xK1VHyf5UeFKrRfSmlLRTv4cy65O5QWIfOwGDVvg9NtO/rYivauDV4KyTsmtXGNL73wpk5Uw8C5FJFxKIe6AXepQ0Clw1L519JJDIayof4nfTP+QObphSkxcN5CcjxUMzri1GwOeyczWvaNCSNNupd0plh6XMPt+P8PZTZXmPvw2qGKnBNFcL5KIe+zcZOBMHf0CWPUKhz4jx/Dl9kaqFDCX7KqyTCvfEXYmtIj9BqwNfKq/oca1+sjDDEpU+Usln3srCROk0JdNa59nJQQQbTxjg20c3dvKKaJUKThtIGO0pBlFQTDvDt5jrol2XF86bKMv2upTgf8xcHzVSV9irJm+Zo8PAwM1QgcSmx1KJ+XosV7dzBht35DHs7EtS5Uust+fbHMNrNaTbY4esJmNj5Bfx1oKfEj9leZ8+nD9RZ55ZqGQY+IEJCptq/dvLutSKXDqW5XRfBbrDmD3wCddyBwApmThSabwnzwOdgV50qs+y29pAV/g4k72PZmzxLthHB00MMADMgw/NPrecNdLsUQjQkxHI/8ljbqEz6NnPJ0yptAAwlFyamjArbwG78qJFbfqnRzoL2RK1/qV3u6slskjQt+mSrz3G/zbFoRNSbILvlo8VZodgZ80DnMaFUj70E/TEUrYffSjLfk0eSSF4KAM33YDkzQTV7dxMyREve9Cksqf1JbAle79ouyXzg8ne37N2SYf6iwuKdNIiJBovzM9u+oPd5qWrCTYR40gSd0g9X0IWdXKn4gNGRtO0bBRi3ygVcdtqEhcL0ZGUJaVT5oboYqfzXmUgTY075jrap7g72NyTw9yNKge0N8pQK2d2KThLsOEhjUc9DuJDh5eCJCRF3eOtnBarAu9+xR4Hieb79+npQpbtQ1YHrWksiSD9Jx4bgbEakVKBmXRzDym3TWCZvLfVquwlSVEK5cVeYItLnN+Li3Tpqx9Fr2ENBT1FrLer/ef1Bf0/O0tRPIob2RO2HLhcYY4uAB7D3qCKnBIwT8DAAza/sfMGPntawsAyyeNOCtFUgDsBKvcoltPVU10ltycPZ/1xGtkHEqrBezhIegRoxQ3fhx0q8qfb7ZzCpBP/kcZaag4yeN+e2E1x5Zu73EiwB61fNUF/JHhjzLAGIGZVNS+HFgC3mFuummh/j+y62K52eq7TRfIL29UXPkafpn7L/WoXu0kZD5GHUv1EneuqEvlMPy3wtvC/4noWSnt2MGnFQkwCpfshNoO0wM3naN9+LJkMfL4diJboGiSixKB/yf9wm6W1Z3XakoTImgP/jb+Wk7pZTvCSyX5ynfcwsTduQFyeX2OhcmEffjz0mB5Oe9Y2+mpykpZ8u8FfQ5z1FGSz9V5dS6yR83rfKlzaN2TrXJ12soHua2wQo3EDBxMWttinBrtrJCNMvEyzCPj4YBlqqJ3jRq6hCgJ1Ow4+BXQvV+Er398eLY9Gmcmwq3qo2IwHc1ewOqtkjNN770AJq9eM8XNyVpmJEwjBRPaOnwk81OmumImkjykEXXDmrpwCWNM4eQ6hos11k6pWMxM4z4yy1fZbpIqE61SC4+2/AD0JnVotw/8o4zLi2syXHezQh/UKPWXy17ARubeqN2DwfiQBp4rJLj9lTyrW1ajJOLFL4QL+LE1tJCoSgkZoty6nIX0em7MRye5ZCaU1U1+q355LoJnPnaPda9kLzWUU/mWpUWbXvbmMGxuFNvB4d+nc8Q7vh+W6HVe6ervG7w5dZJGk8+ZChenc2cx6rC8QnhiyRf2mk1jic6zgKn0oXkEd7pZIXm6C1b/1ZG00CGYLxMM6CT6NbeIGyiMinM3YVe/OeztC+Q29gcZ2CICA8pFh11atWdl7e99+G/RGGBcHbd8TvIuNUCvY+C+7I3bCd6KPNu5Qyb6aSc6EHVZpGrmUq2qKx5yn7IjDvoIy2C9qNdzY/abejP3ED1UN2+I2Gh4t8qyovk3y7wqbd10UcrngEFVcCLJQujOLNdn4I6uvruAbnz+puE9c+7RIPMOvzfvTXtc5TM5mzXlYTk9JBIRxaEJ10hcl/Df7HaqgAvHMtFKMLD1GbkSCKFlAq7/nyR8lCzpEZ/7NSSfSblpt8UeWGHwlDNtXk9ATsJLw/WtU2j/QuEznHU8cid+4KK+eJe67kKXdAjQwsikX+9BVFGbhREKXC8lPksiH4SK8oka/eAiNHy/1xaT9ZrMJ6UPDK92PbvLe1IkyjjtInxaIR+wWUB1UIz9N9rps45WGlvmAVv82oQpHO2dbNIWzpyEQUInJgJNkfjbH/a/aYsvd6aI14qprcquoIomiHXh6lKByIq2+CysGFqHbPS6/s4QYJ7cf79Q+/fJndBw7IHWT41WxnCDSI3YSaJSQigbCd8w2bcnapjhYpIR7TInolRXS8ki6K7AuYIZrlW5HM0E7qPJbyHynKSo3Lkj6gZWSigwpaM0DVjWtG3CxH6ZmCcIYYagP6jZlLpkc66+O/ybNgLY9aCUxyfuWnn6hMD5IhWM9U9Uv7kJtrL8nnROyaUZQXUrDLrSnzroN+u98TU1LcyX3ma4XtQXfDxx9R5Ndw3Y+uGqPVjbDTSHMQnC5JbZARFEbisPbz0wEIYQtT7zc3nohsFsNBpI805f5UPntVriBzPUPivKPSMG1VNclUtEgYJzE4ZnNt3AW8L/iehZKe3YwacVCTAKl+yE2g7TAzedo334smQx8vh1iuEemqITPCSvbqYp/qM+8L7kaWdZjHrZpT4N1sftknPnhJYxda4F3rO3+WJvtsLZNNbXwiBri2tZtilODUahOEFcu++9aj4/aiNWI4Kh68qU3gx9W+BFViUAfWN87ZYfoLcOUYwjZHbiHt7BAfqInP5BLTYVvAcafOSJ1Wjr10hNUpxyaYMUj6VwuM/n9KUOfp4CTaUx/e4jvdNjoxAkq15gMB3aog7pbhzwh0cF1AgQN4gP9KE+buajYPgEX2Li0B/yxYpAzDBoKQzhs5A0MtFmdcLmu0rrwpt8/PslwcrU6DbnrnWY+7X4hQRb2r5rhEP+dKqVkeX1WgxrYdaFTQCU2rdiIuP5IORjWLJ6rNiU7sHEV1lXFSksHA0BnK/xOWBoiQiahXQlt8scjZXLuKjcb6w0eJznxiYofUbh0eQJHW/nuIHGBmonNgQqsTd+65lQ+9BXR+fxOwYCrJUOG9lUsTZa7/VTVs/noKdbQDAC+ltbBDEhg09lIxmbRF0IQb/awLwDPPP9QHXD2JRLFTYVApHCBLIWtWpuVxcFRiX8Y3JgdR7P7UfRmlw5g82QhpsTxKKGFI9eEtezVZDZ8NymWqJEswee1z2AKutqgpzAz6Mamt6Ua1qg88aVl/EJX3rLEwG5IMCTaADlx9EvKviRpghC9QUPmibIu6UqYc0hDrFD4GlT16WZPESCIyWhxWa1nMpN/OMuwa0BtbGcXwkdy1Ca2CYHUT9y1kIsEO5HHvif8ZDQH/8JE/c1IglcmZxnVLCKNyT4S7eiO96FJXO+wxPCz9taAlH3MLDcUrLIfbgJsXdUc7G2+xA9E56yDOMK90fLckVM9OpmeferLSmhDsEzZV6LuVUhwZzmRJsMUPUMJQyKPgrn7h4S9rWirHSzgyuGuLPQh6JfZIBjeUzPm6O4GZzcFbTUdmPxgohrwYdI2woW/gwjDCusX5Oeahu3KmY/zt660DtrnCuYYXi0oFoAYbmQeia4jiwhOdScg/6Ig3gaTmtKcuNmgGNy/9qFpX1KueWPqxfYPt7ab45/pa8eY5XyGzsYCJ5U5SMBLOiTVdWmQYkF+EC40NbfEj/vmXn1YMJ6WsPTOVcedIoHBLeZ9hV+ukpb4LbJtfIYzm634KiBpTdBmF5WYmM0IDG3t3FKK6Kcgo6CiHs6o/J3wE25qDlecJgttGebQpfRPQgqB+wulMgcFKaT2STxBpSVdcCmpuO6CvQ4fO8NuZdRwdPiS/pSb50T2+pFPJX6xCAi2EJGToNAHMzHo5RlSB6qztGrKlfWvx/ahZSISuASyetvKSq0KFyN6JxoEtXl+KZID+9ctK9mYuT6SZ3l1+AC1jrR5VIL5y7zbaO0UYzc7+ATbIDOmhEkgSqmfucvEEn9FWUcn85rqRsjFZrngzAbkfWnZZFV/asbb4ZfQpFfsXR1aSCfgbh43bNFUYePIlH+BnTOkgAq2TKJNW7LegMj7T4gxrFxrOIv9eRQTN9XlYBhQi0uYfTYL6yD+9bHG4L+uEkkpsbA3zM8Udd3LrNn1o+sQIMLt0va5MjMgEXaqkhwAkQKpArPDWLNMEoaECDsI0ymvw9wMzAfkJ6697mN/23hg2UBvAUUotJPG3yENP5+Xr3sAgVNFvhah2iG1OHvhqiL0sGmI6P6L2VoKYv70nhafKa1X+bkSf2mgNJKStArxO1Phgqc1NRuzpnOeHx1/yjXla5gthcvjQlbtiID9X3JKw1VrYB6bXGzG5wygdcgXJJOWVgvEwV1zE4Ym80Glz8y3fbxYHvYQXxySTW/tjtoasU4PMOPzAvtIEH970RCxtP/Mkd9426nqABrsnP4c59BbrihMKFDHmRFIUMU7J/0Ne7P6UPdgPky/JYWaOb1u85XCrxvu/NDsJRLbPAKlNcA/i6dsdqKOrjGYohnROe27hnZxdXFbmrMAIZc91WlVULJRPeF7gf6qArz5szK63uIr8ep4fIoLgjPm+dwsjjimJmEc7vjG3U0dCmL+9J4WnymtV/m5En9poDSSkrQK8TtT4YKnNTUbs6aJX5xgPJYrED7ZrZAdUvfi3+F/9sEqJs5gp9Xx09HFnHNzKdGzIsTD7wir+6CHxNS2+WHhdZE5dVK/e98qzaJQW86lx/hhyiBDMqkxX+WSg0gB9I1A7wuf/VGehOfI3MZMMlCnahZmJcFPOTdw2BeUiyTxM3ch07TShvDgj0UXI1eVMXyHCmgwbZua9JOsidQxaGllXrRoOwECVPw6helsoBYHMETkokCtOcIcZ++GtiWO51Ur+BX91ExFNKpaAkptlVByTsv7JnI5KIctzJe1Ej3vAeu/zsG6EnpkVPb9QkrHCprQzf26X5CxspoEc7DPyfo/yHIQ0nVh/nk4vcdtWRhz7wCKjMHnKEdS97xKfPazrs9aPN9E3VcUP95Ibpi7nVZzdNs+8z4p4kyctpDSQTuGPMJxOp9/pBQO4zdbHUhVHfwRQEQKt1TGxE7YYzF6VlHr3khk5eWKTrzxpt/skRPBlSZJOy9rlMTSpaqVntQRXptEMP/GyxUUnN6mnrErGIpbYRGVlkzitKa7/EIvCkfLcnsHygG9pR1Z3amm5nSqpsrBWuyoAfQrGMQQufymhziJ09yEfV6c+vNLRismyc7C3OsN7uPjzz2XwZXG28LrFx4KeBxQ4JcEzc0InQViRD1o3z5qM043dtWxRzFeT2RKq8hwjKXfUjMppHh/C7EfpmYJwhhhqA/qNmUumRzrr47/Js2Atj1oJTHJ+5aenq34AbjWo+IIH59pXnJOrgsmca2fybbPgcvewX7b5/MkXxLIV5wHHoHsSBBj5OVxVFneDsuv8XSNYLfxFc0sHwHYqLy0C2EdYyPKEXl36sKQOL0jyhgani+aATTj95AzOzxHqnXISSWNLIgKUm0oskbk/IIMSD/aGxQpBFxqTPCjRQMi/eKGDhqGQ6ACSbbPvwLPU3Yc3lYUmdy1638ml9lebKG3Wqzdw3uNyT+0o+masBnIk2fduSBkqPGwNmAkABdAH0+j09numF8jqOyM99EYqZwqtmnLRC3F1v4pGlC1KbsyYsvWDwwbs41My/GGijcwd5uq4WZZ55B+asqyRARSWPQkBQqMt8cSZ/AwRORssoqo6IdehMBK/fGFkmRxMU0btfP8Yl/dR9EgrGI2YtxLLR1lamy/a5IXF0jzL/Y6ZUrQFWxXtWsfrIojhWl0DSS1big7ywJMq7u4jxdt1f8sPTajatjrWbBjHTggJsrywHYq3gjt4g2cRcKmmRLdjKqeb6aCfSoHG8a0UIR6d7crrKO8kyBoEhasd5z9hhlSyOrizoD/R5qYOxq38V45PaGY7Up3r//h9OcnMaICMa4VV79ppCN4WM2dPOfSUXG5UBXVr2Wl5RSJQvTAgPq2mPNWoSSGD4XgxdNOrswgsCSQbuj0UvsH82nz7p3zjlbCccUckT0a1DQc1vw1EJKJnfbRsBN3x225elEN6iYUE4Xy0wcLMEffTAOm53qjQIzhheEw/+o3xl0P0K1b2iNdTK/xRXHJwKxAbeUZ7rqDnL6iuWbMCCMsJSSpX5DAX+DPfMdeBYnSt9O7YX+K6N28dLpV3drweLcVRXOe82W8QcCBQ7eRlpejQkabvBZ4DUv1/9mygMTvNuI37/2LdXZOFNGAHtiK5DT0+KYKFpAeckfziuPwxN6hSrH0GbmdMYSour0tHdOh/2ufq6ga5CnvSuTnC+cvT4Dfz6Jii9QwBM0/ZA8mQGh66+WW4M17Tl/LyvQGd2qagHjK1l1A5KtBDBAGpdCLbIL3gUM9H7HQG9Dvsfp61uS/JgcYOUzqVRCBy/MrTROlaNFTEh8ECP4Nb72WyJP3lnscwpb6H3/5tHLa05viIdORT5kkFfV/unXMiV816kzamJkYbOCmPcdrAZElHPFO7L2DPc3RR0Rs3lqsHFq+38+UWSKTbtry6WOLUvgnABU797iH4hkPCxihz5ZQC9hkueLAgBfCU2GsagwgHVW4G9t/yMhr+MNZR6sQesA00VWWLnQ34yiN7NBUez3Y6K88GX0to9dDVXRGXI7WUOghYA6K7ejU7Xb5VwcdAwATyrG/8NAwuKraXt6UsAQ2VTrAVlHLQMmt7Z3ZnGkZbyDYy7R1v9GX/S66aUQyO7qcxtusiCElWmcOoDotTmlD1JPZBULH6/7PtuiAmFclvIcSQpxhh+6UFguvyr2wTs7fd6jXKqs4PkDQDnNjuQsy5wOk1HSzFyPuHO62mCsCrfuUXRdCqzU7vvAk67NlPcx+q1BuZwwj9FFIe7mzXdjy2RqWYQb++ndPeNpHhPOjtK67eU5B+1J93fryUUVpuaugR41yt6QrbIFVVtKzbUo5a8wKcb7GMLfJgF9F+fC/4noWSnt2MGnFQkwCpfshNoO0wM3naN9+LJkMfL4d3zzcnAATvXPAFt3twR9XyU2rd06WKWysUUqzLndZ3JQ9e8TS+QP+tT235k4HSZFopT66PMXVPCff9hCcf21YSiWOMIrJ1DFbr5R+LKgA2Z19FyeDCtpoEpX9WIU1qMYDjCWtlWF0q8/OaHZjNC9e1z7vTWiZBb80Ia+4Qz5ZLA3wlvrv38CBHRYb5y23wNygm5YdLi+Bq92QU5ctWFKqL+3QrmGFLV//KYo7AXfKWf2fCbpdGA5ZYXONBfTOtS4QnnjqjbPjfErr3AZmX8JEGTbuFoL42nmzbJOR2wmz6aoKYv70nhafKa1X+bkSf2mgNJKStArxO1Phgqc1NRuzplcX0+0gIxfYV+MEndYMDIPq8PicSDPfUnKhULwvfanFQekpN0+j94AGtVGm4Rray1MLYJYDpSu8SBIhu/0ujzjgMxr2Kwu7KRQbMNKaadKL51H65K7OyPTUPGR93T+VNDYek2xWsomOZDQYENOhQiWw4hlUUkZnMLDQCFOEXx8+rKk5TFROtJzX9pts9SYs1zRqgVRrUzskJx8qfmj16pFMY3RxKrsYLdP0fcekJBPS2yPgQOfKckvuuZxt+3V6F5UruHJZssxINcwcY4JCSPGoxMsXgZGIv9nIvAOUpFencVLDbGoM3MsTcx6bLDOA3QZLZDB15onlc84wUtN4qdLwv+J6Fkp7djBpxUJMAqX7ITaDtMDN52jffiyZDHy+HZI2qIwK4n3w2RqUt5Agir7kozo7M3TSlrl4VeaD5mmYSgwUG4/q/t+PUDPEWWDx+xQEtOPRQHEQi3FOrbVmnr9I9Q8BP0tR0D5sqNznT5RBP+AqhrOz6s4X24lnlhnplm/3Znn0jhadmWqHHnr9kurItfvMCy1rXdCOj0m6NnjDqNbPZY7Ejkujq447/kMxfK1/9ZtIk7okt5ALlThYnkYjSoc6k5v4wxsDCIw9gIYqv4NFLueWkbTIAfKR/GGmkR5dZkGDSJ05TIuoSnLHRxFQsUrEAqQOg8/J4lEnBU7/zg8VNnuLK/ACXjyQw5dqd2gqSenIffRx8fbGZBVrxaaRUx9Gk7OpqH+V5m2Wd21sJZe2EStCroFmFVyQ2Vqb/3g0rlXDf2M2Seepkir2KhTmoNWXgrMB3b4NDMqt1OoqDqp0De/LYYdot+BagBBvJYuWf6qSKxRiB0dFL4nEDCyUTJnCeZjw+d19XLG8VRS0RrL7WN7BVJrUdMD1cFkgZTL+XcKutg+NBSRLw2RXun7R3oLuDPlNPWPrmOgMzEAvIB5OsIPhpY90JzYm+srLdGFIJl+03J+2YhrrTIy4VOwxQOjBM3ujDx6qZbcTYoczhzZeaeV/kRKxVUJH4NUBvoexhZdYfhtToJyv4y/b/boc4cn9Jnxj6QPZWSeH8/YuXGxqHqVXYnUdQycX605MJu1b7+dpd2492rI/gbhC0cBph1EO45r0375s2P7MxT7GElmtfZrpsT4uZlgnQZmWk5Eedodyb5kAVbp84zQviR7IpO7NN6dCbUPV02VXak9HNT5moaI42Xxx+5qi2y58v5e3e2PomZddJPSLGbQoGe0p5bi81pCbiZ5AaDcy3RgKb3FFEDKUJaGKTRrZvtqoHU54p1uzbNABhn2ge/G9zO9QH5G9AcUovxFv022dD19JyO/ZHPsnE3in8RpHt6iFUTjVUveLHqH5B48e3i0uxTc2V5w6inXt0ZiGAgLoJWMOgJFZMwhWMoCEHZa3fmkDjel4aLCqOmqXvH4C5L5g9/6c8qtpjtjqn7MTb3pTa8QaxP60GhTVfooiO0CWJGh6H0gCshiM5joH/Bk8bJ9L8C5CbsHvag+hVXj2rYaLYZ5Y5c0XBFa8U9euz6gdYRglzVYuKEG8ZcmOSxJ6/oaDK28pvSVWpzUYNIO2tP6R99ab0SyLcyeIIO3zkV7S95Zx8Xs3CTNhGbqg3UnqFCKqH+YHiMvaSh/t0/mkMBJLagLFIDiHeCrb5+nfbJiWHyRnvyexkbf+lMu/46BFdRHjvgBM59MYXjrorF4ONEeZyewpvVj4ll2bVsXlgo58hc7sKh7cArliXJltpGulov2zhnrPfMdeBYnSt9O7YX+K6N28dLpV3drweLcVRXOe82W8QbY5pwULO/hYpk3qNsAvE9922NrR0ObarYFaNgi9q+xw5+ie0ivRbcoU5Iy4KTRpYHlx1RhX/1aF8ofCUBPrHwQUSYfxWM46Flb09EMmWYBUmykqe2MhexUfDT/vejUyZh2UCXbbFajVHNpq/gS/m4NK3maBfNUaEV2pxbK+vFq3E+iMYZJdQqxtFSpMkubel/GK/OrgMPrOZMeiugIZO8/UzHab+KoVfuQqJhAIh99Yk1r5a+xlmOaAB8C/bqkWnPFuouXmJRgurvCztXrlnkROzhm+PAU/IQ+rSzCRre5ecOgTJX4inlcS93+K4wKocdGCTZkzxdMfAAqOJPRbvezwDLo6HbWr+WGeSXj6NUGeXM4hPCCKRd3jMlZPWQaCC6VBRhb0kS3a8X47QvmMoiQB4WcRbyP0SD5y8bMA3bMPDClPkOX/3DAC7dYX+eqbKKcoDIDo0ofPj0GaNaFXq6GPWqevr3E2Wb7Di1L7rgpDw/a2Dg8rsCa0vKUzmruWmgtQry+3f5seOFNBhFk755b8Kcl4FEuq8KLBFPJsOddtiOMtzkh6Q6nmYtw4XTFrsU0skBHrP8p0hbQ3kSzMDy7qjITrcedQGykVLf1swt5c9TfNo4mQGnI3ltq9Om8F0W1/W0F4zrNTV281bH4959QuD0HHTnyJ5M8cRfjDF0tkLSGuUMPQMs2R4EAXSi/23wSECh5wTlKP7Z6PL3H3X1PPfMdeBYnSt9O7YX+K6N28dLpV3drweLcVRXOe82W8QQbdZtjOAyEHg6s7V9Q2mUAcY3wc/utJJzJm2ATijsdaIPl9UXCQOrUOsVGuxsOAgYbwlt/jPIOdw/NXITJFCq29EZM1TDVL65ZKA+X4bUf7G3ChnZiz7REzuqmKFHlDJFFu0aiwXCeOJ+QwqKGJwPVPSsafwThp6kkENUUrSthvLiMCkFhn8eOStADtw8tjiCTX/3RKaxKjPYn7PNav/IO/ZS9OLqkwXQWrJqc+s/0OX091GKLkU5pu0qH9wibjwrqLBHYKmVWVRk30Kvt9ZprcGgsjF4fwVUcPdQo7Dn7YCE3NynSruPqXdEXjpE4gni7wxJt28UwWayCrGoMGlVMtzrOZQsYxjtShG50vxiWayRQBE6DNjm+BiSkQGWdbXMLMah5tfkl7r5w93Z5osuTLICZDkILiWg1ZnlD1cfbaeDVb5BOq5uZmaU6wgXeCJOvZJVxt6hCABmA3unQWo8iP2s+YTc7uA4WMWNsSgIyeuz6fPtqFrgGwXGT6MT53F6loOjw2yRnvco8Vq/iBrdi62WM28m2Da2Cu2n0jRTn8DFpsCgLUGS9Rk1zPdfyF/hbbImg2tE667EmY20darePb3qQSPYKwuqcqRuy3yijYfyVwk1rHydyhAK7NiCkY1RFCJIHO4OQxrL9UDEQ77pEEZedrW0z5FLKraHDfIgkznjqg4gDmaY8tmHFnvBhvmQTRz3xoH3Ggdz5mn2QvH6B3Z2N6ewYx1zxf/NYsgBEKUsPYnIXVR4+DFBErthEeq7EfpmYJwhhhqA/qNmUumRzrr47/Js2Atj1oJTHJ+5aeEfI8dhR3HFOx9EMg4wCpRGWWPGDiM8kvJoYLe23NKEgRZQMpaDCEq9W6v6JI6PouPWGJRuKkxaW5nTVMywEUbB1e2tQp0eaX76raJp8p7EXfc0oQqU7qhxUaKNc2iqpXHt7Epdipq96/Jzfa0U/ZzXWER2gz85rBFO2nlQ74pBAC00a0yz956hcnTHmPOUp+bU6rfU78TTLSGFZR7gRmVCMomZDRHxYOnJzmzsi8g0GRxefP8OD5YPGQp4krqhTzMv8ObaCn11FVxLg2Rw2fq3eTGnhYn2jNvLvLqFpwRLZn67maQWP7Ub3aAsDMeiT8fD56a545Hi6It56HzwRigO1tyX4IaweKm1csYoUAjd5SBkbslUs3XGUED39syg2PeZfW5/QnkbW9NuXi6f8rbX+krLsrPS0nwSqjDDU5RBbxH/Id+1gjkbFTRDiOVrI4Tk924ElzG6DpNYfpAFoCtDMV/VMQT/ZjGcCINaJ76vteZALld+L+qPnde2uwlAzRhHHP0u386gEiElw6PQjFtBRb58Cuat425GKipX2Lj0E9sRmvXu5VWEyOs8kUDlaztTfuNEQLo6227uiZngz6njWQljAl3yle31Y3IKwWQcbBCDavcP2lRrliK0d7SgcDkJ8MHRkwTgbKm0OIge4BVtIw2x2csvCPtP1lwFa1bAOLCfVqstsbuIzkv13NGhBrancxX6apNdFJwGm8tE7TIKomG7NEnFVltve8kbu2jIgXiFI2It127pJr8h9adjALXm0yHCdpg3wQrr4a5IbSox7+u9I50Wz+SZLu68m4VjgLHd8shGviRM2rUgfTxM7fWwIzBf8yvr0Fj/oT+tBqM1arn2l51oZFEOjKRyrO8UOURhoUTSLvfTy/85xvwMsRnc9v+HVXAslOnoq5M8z0NUTJz7ztx2TWQRpMP/e8tLh8dtNcGBdCD6AkPsdok3fK9dzuwvO5I2sNN/GLjKo1KIHKAcFpsqKIBExtcZbn3qYr/zCv0bUqK1bhplP7t/MKC+a6UWSDS/9XYnKaTBK/lhlgq49dtfRERd1Z8b9ZBAwTIFstseGjfqCxy2Mq/tEt58wESc5BdKglU2JSYdoisWt61swD5Fh5XvkpVxEbjAwSr22TzVJ/sRUVw5lUbE3+iOydk5l1lttxPkCDHFwu6/ndfd9KqLjsk1/oQlhvTYVySemeWdiC4MNPpNZiJ2smIXJOKcG4Z+9cpdOuqLud958L0B886Gng/hAj3fuhrGkHzsRcAHf+pczq2igB31SOfxjcmB1Hs/tR9GaXDmDzZCGmxPEooYUj14S17NVkNnzhKmCDbhN83lO+UewNEfODg8vxsYQwJZoCzuPojjmFyd2NpLiUjCzUEzhr3KWNpDlEDjhTbKHJDHHIxgy4kUTpfx4x+q+CAySnAF2WPFIOcXVj2Gg63B8CSvgK/OYR5wTD/d+3vCFaCBl6PyPY45RxDgaKfa1OrclrVsSrud3PKW1x0RrtgPNDMxmoa49GBxrEHWqNH1x5Kwr6w+OInweEVAWVphEGFP5itvHKJVPwxYcMVscQJ4T7udXkWcRYfANBwB9idXL02Wm6oxsZpWpjP+hguLGZtZxyK8E2Wnbu8uYdqnbdAlQs00Dm/AYDDO6uQx78TTFl5Iqi/TyaHIWvYD4msJF3nCsclIaYUtxfDURl6bCjs24w5lpWDICeSzR43j1ON78hK2ZUoMHWag73WfYnjgmU42j/47sT3QgyN14x3l209L61jLrkTCXKJDsOUdA6MD58R7cn4yPyUIlTy1LUrcePqy8+eF0zC1u1LNY2j/WIEgNDCioPhWtK+ifVU2ba4R8NqAYnpOgxezurdK8O2WCJXK5ufJOR7Aw4hJ56yyL4Q8gHoB1SDp9k01t0KMk4bZNabbEZ39tGVRFB5MXbdD3AAqKNRRsuzI3QK2oZNDuLerWY8vF27GqkH9ENMzC365qO+Uk/lR466ph5L9rKLR88Kxj6KdYR2283NfC/4noWSnt2MGnFQkwCpfshNoO0wM3naN9+LJkMfL4doXEBlp/CLV3MtWxu6Y1YfArAqeB8QMm49ig0PNZjnJt+Ry8mnpCWxLkpZcs3t6X6mLI7xHY77RWl8CFlAIcArOYHnz24EJhaOJuJB/QMwqeNsg8i6xh0NkiFhjZwRl0g6SeXVUF/I1pDCVCuo9QtxmDwzkq5FU0hiyxbVut7RNchVAtzX4pqqgT7ymA3Emgf78O06ixW4x6+0UWqiVGJTzbErOMBa45Al3w/o+ygNa0pNHWZcfk6xTVNQ4a9X/x4KsuXB6GhcfjEetY/xoyBRsbPLoAc5etK+olhNzZAdbhFYzVnHslBEQvYBzAsh37YNV2TsGjJS4m843SYsv845rGqzqS6JRolu/h0J4tUzfrUB2D1KoWQfjUbIinOcQlDC8aH4WO3w8HNUESiHmAa4AkvIrHEMDTwImbNpItkXG4wmzimudYW8+ZrwMePM/adpNVaZaGUhMj3AuaFnmeAhDW6LYKcOvw3wwsoUfINauwy7UrrDUEo+OQdZgUDsWgudRzw0tQJ0KLMYXPkMn6qvvCD1UUObXs0cu2ahF5zI3VTHOprZmGisBJLNhKdzwhyRkuUXHL4p09MdOv8Kwb0oBYX2yignM9J9Syu+NnKzKzIih+sqq08T48W/2hL97t/vpajgduQD+xSSjQYSFMxTmlV3KFN15f1pY7U+sL5EoOubgXNhx69g2xiOYS33wVoP9z+1v5LB20JsTB/2TKnd2RQ55o6SmQgKMSLNlO5ipyDiEvTDs+3Y6GBjz1numZF6bdQnU9I0ZXmxRGliuRfUMiQH57AEbvghWSOjZ8e839/GNyYHUez+1H0ZpcOYPNkIabE8SihhSPXhLXs1WQ2fEAyC/Y6YZX+eeXZn+FBP7niBe6/VlnrSVD9zhtJpEWxnxJKEW/WbYuuLjrTMfipuhcvda1zRFhHVtzimobcQdbSPcXi1XZp9/M4mjMR852lNoGWQ9vWbrYm51wLeFs4uNOUOXKcvPnACeguA+m43vR0AUORkb7ef5VxoYKFZlCcicjKimsEOw74VheYkSM3x31ZX6ZNTMiLYhkHYLJVAY91kLR2G7aEvTIjZ7far3S1ytcdBsZKK1vHUlFh4hKw2+TkXYO4aVfr5WSJ0Qiiw516t827djTKj3YJh4XlhWzxR8qLF7BqhPZ9B+HqKFVHGkCzJNIW/IbIGKpL/ywFQYrwv+J6Fkp7djBpxUJMAqX7ITaDtMDN52jffiyZDHy+HRQ85DiPUu+Z/NQyglxOM6YQQ+qyXpyGKeEb2GcIzQ8Ioh3eecDVNSxrUYvbnjaK5tdqK4SyMwFUpzH/ov3swsRqQkFxHahZqNFjQ4pZc4bc6QHbhoBLE5iImSSp2I0RZzr6hMDuX4X9ZmW34CaNHYHdS2jRNZXTcWJdk9JsSMPzisqR7bXNfVDq+bbYFE88ACvXDE+U7wcTTrvJOs08j6Da5LryRuX6kCmsTpfhKekUFWjX5IET8BPompKyB3n/Bei+wNzOsMh5/VCELPQ6jAZAPKtKqbifr1AetZXnPR2lIL0F8LEpvLHs8mee3V5kgc9ozI1Cu36j5aqb7GNa5JoTFXWLicAgvjTWjOxQ1Vyncrv5vr/hrmMAYaaNHsh/ecuVSfI1m3g85M1/VzbwOiJ/KrZjqlLhcyQmwzQMHPu45kKrr6LU4+rWLzWfVGRpa0VkQmhcfjGHs54fB1mZ+GrUmMQDIXmvj7Qfr8p/t3pU7BZq/Q1pGav/Sn/020GzuwOD2fow/d+9WfkS/49cZab0ggR0ehu9aG5NFNYDtH8IMlByrS13LDFiXsXkYZRxWETppIwZevIqB+AWFZGkGllVWmadpY7xfafAmSU3UMdTTWyubX2Rx/uXceN3/v25is9RLiP4zOTV3/SQsVVg6Cw+VisN07yW3TMhZSuKaGCDXIm+GpDqJZ1RTBRusmpKogDi3FuPE7CmNl/uSjPgZgddqdZw+6PdM+yVwlW6nm0JH3GWapUwKnE7IQGXD9UY+SW8IixEsgF8ph92/+kXql66Bp+oYmCBhP9u+KH3+uhyZt8NbWwZRg3zukplKgKXK6cST0mzyFAv/O0UU7Cf+zbpMMC703HP3B1JGrd+dhGm1wUdp3EvcjJTEgvhqKRh1dvOkfkVMzoCQ4GeFGcCmp+way5T1AWrSIYJNuva32/TCkWKg1MBUeiXOI9fcnzUYksYSklPkocqzUSBTMOqh0HCQx0ua9EXXtlKsuRlp5HntRqC6VGGp3wPuJFcNwEsPbEfpmYJwhhhqA/qNmUumRzrr47/Js2Atj1oJTHJ+5aeG/EzYeukqybUT+qFbItb/artdbsacFgxefMK6hVPzzADWfM9ytfFEcYTqdbr2ZPs3NtUaWetQQUY52UKDNPE8mVIQgAoP/HZm9dvHV9t+vsfji5qiSP9f5R03QKAQvkSTYaci2R379PlSKsB7P9q9G7Wse1K5nPwYE9FXzpiJbBdfNN+ptb9OVPbm5+M/j/MLn3QaKfaluw80ZrgRmegHebe9f3Jv6zhW6GmkPABI9Zsalsv1Ua0O2MWxzdhcH8QCmL+9J4WnymtV/m5En9poDSSkrQK8TtT4YKnNTUbs6aR0mZ51Ap/mzgMDIvJMgi0CZcUD45a9SQ6XX8NUTyzpb/ZtJAuB5GdvnAv/cSl9uIocDb7crmLRN50Wsv0Fuq3o9WgYgbQzV6eOSbCrYr3hR7I7VHXXLKrilK42yvbIqbV6SCli1ivLPXbkvUjDItjQO2etwxOc8xjEDdA3WhFSW/+KwVQ3d+Z5rqZIsatxDwP3XWIsgWLFQZ5Nlwlmnw7nEYUKRTCku2nqD+tEtV3PtujmBbFd4LSrw+NBGT+yV5/FzPPc2JfNrz0t44DGQE1iCgRF8fkPspRhoIubxiE9kF6lf+dSfibzV6LPTNe7VYH2zJp/AW2hWBSv6uUziWWXhjK8TDTonCj2/ErICetrmSjNO8kYWYA9PeyTvhsBXpMXJ1wKU6J4vK6CYlmmYBizA0bIXetG8TYoUTrqWuAhErHCprQzf26X5CxspoEc7DPyfo/yHIQ0nVh/nk4vcdt+VCyk/vzr2I55QotQyJaJjq6x6YcPJNYcXC51g6MjxyXAQiUSE5TOhaY6K3dA0M2S/NvlXRvZDZHyqm5foTHyazlLTIvtbQidgxVGieCoF050K2ZdBhjsvuUR2YHLC1TsG1BEMKiy8cdIvdXPILp2m179mk4UN6r2DOkJIqaTf7qUXSmxOBlFAEeH7dtwhE+Hj+TK40X1IqdakybiMXdRGmFTlIVzKfHjXk0hckBtn71VcGTmYdostRfnVHHJOvnN+bzfI3gHxfnabfvz5e+Ol6my3MwGNB9U5wLtq0bSwiVi9f41kIYZTU3CCKMndAQ5ZWd7AtspXVOJGCDbndS9T5Qs3DNfAw8lQ4Yq/EJZoxzaHX8EAhB/WcV1jvgn7bvnJZ+1w9c5aM8N+anvQc3c5Ra30TjFs4/uJhzaJipldIZZPnsk6Yd8IINWQqWXcujBuhTqiNmOleU+34ersZWcPDyDvv/UrDdipSd7wVfGObRGacBxb2Tjb0Zb5rSxQ0lPejDAoRdn7ktDiedR6911bXQlQP7KmzHxKXt5p11ZFZL2VmnZULhvfU1NSB+RuAia+ERLfMgyCnfWAhsTbqsug9SsaWglXL+Y/v7COrdYcQWN/ndNs5FVdyHfGYxX7tE4Y9S503A4GFB/xn9qe1GKkvN16np2KyEu4VJpYzy1yhbP8kk3k6/1Gh5KermFMktL1UPz0is4zwT56KeW7tRF7tjexMsPrjoX0s6yc+IrjM9sv8g8WKeV56ouOtCTjL1CmL+9J4WnymtV/m5En9poDSSkrQK8TtT4YKnNTUbs6YUvv7ySd1VoyWfcTVf6DwOnUSjImoZRQrVyNPYl7rsvOUuN2xABClG6oKmastp4et+qxmXYYlBHjQKRit026k/0Vx36lC4Uxh4Fy9NDRmX4ySLGw22WgMYzCRRM+nsbYewG7s1AI8HfUSfaUjwxsDn1wwb4Upy4CgHZ+jbCkWejJ+xdsa1lT3t6sWoPvH5w8Vce1MItKVN9pqNiy3olOpV/bfNXX0KdRKQHbhPYS7DqWZSRRa4lCb4BEgKU6TvcQS6b1D1ak+r3451vItP8CNLPBTC5iM2QsyVBQBuY8WVBssM7MLgG1Z3mMJ9aApOgd8qsTVWcJWmZivaO9/bmebLMqHMblHxkAbunbvnzhc2vIFkgBH4a1lrvqXyx5aI38LdveUzEEqWXILJkK7uEKj8d6ji6tMKmNLaiNR0OW/FDloB2HNz5VPskuU7tzzgWWp6FG5eK09SHscQ/A3wYibkNwodrc3sJTiYZxPVM8m3wNptNKrKvq93/4L7A4sFDtISazft7cIAC57wXutFuPy+EjxatpspOnrEYebjzOFubM4ivnN5ubkGc9xJHLsJUMVI1+sCVnuB3EuS3dldn3ey0LoSaPCCR8df1Wuo4YQyBXtCP6UNT1WKoNRR5bmPemSADjb//mOQpiwLxBCfI/ZVAXTPlOovTZVuNBKdqFflIEv8W6j5w9SxCDU1WHF5WtkTwkJPEbgRCFuWe8QkIGCIhGcTnAL5BtnMail7ZTTtnWcHRPCZuYmAEgGAcNmmloBtbG82ftKykpzQ2KeCBeT1Hi5zk5JGIyZbHz2467j3IygXoEFRV06WoZwpZ2Dfo7jS4wShXBb6NzflBSuUhGFAy74ato3EJ9nOa/I8B+LK7JJbQKl4hHGkV1YyRqe2pcaNESt8nh+NB6L7A+aYUAw5PwJ839JvUNBFHxrx3/SGrLEfpmYJwhhhqA/qNmUumRzrr47/Js2Atj1oJTHJ+5aeXTfKZMb1jQh4Xs4VjMdwA1ur/ps/+0JTsazUalh0xn5QuvLaGaJ86UI4TLzZLJo8+CQP1SqtSdSkcgDNJ/ny+hPIryMw2ISDBfw2EAp/FI11aOmMlGLHjbbkw7GbaLp2kRY8kVxFF5RHsa0LwVchfoJbEEABCqGUixm5fg05icsXGaurUgELbqAPpzbRmlUWiiz0ll9TdJaq5pGgVhTA/LzI+RytA9LwY14EwSUBe+FDZSODSYJ2gyjqvmKlVuZMU3n8D4TjVp/ghaC8BrDeJtPbWsiIuWkPQGDXOSKUvwzpUVsQcogX9P91iYZLNaFwgGkOwFCHOiINUIOYnNQ9VgeeSYO1kvhyFSnA2iQGzCDcU35Vt03s7OdJmZX5hLhTBj/bVnUMJcZsrL6I/BgTSrufGDn2+bKTcLCClsD8oBhQo76QKbSWgCDqE0B386QaEe6MpfG6L+qPBCXzyChPZgLV1enXPWQgsm5fMhoC9TZiW1bnS3jU+m7n3/yR0CwrSscKmtDN/bpfkLGymgRzsM/J+j/IchDSdWH+eTi9x21PfrRnfl6dTMx6WIM4gv4D0GSSZmh7mOfF6XAttBqRkVn15TQYv+EMjJPEpEPNpJ6L4Pz0XGqEIbATlRWSxSfOBkQkTB0FAig+wHvuLIX5WVdwYmNNDVXe6nIY1IszDa/JQQQbTxjg20c3dvKKaJUKThtIGO0pBlFQTDvDt5jrolpRhjRV1PBleuZXznnxcB4BjgfZXsbZMh3Ay/vCI+ZJAADRsHIh1ZVS23+FG+ChV5mgxb8qcxDOsM2bNO8P7mx3kwXc5Twp+Jz4BRsgBLAVZBvbgaLeffMd73oMH5a3kSQCsocjAIi8CtBry2yq3eu9oTvpanR+UVPI1hBkRP+8pFcsR3lrJ33VpGdaqPNdL+v5Owg4ZYEU4rbvuxUsF6nFU8SB+TBL2lsQP8bANhDkp8lSF65sZrDwXvNUeBuAuEEgVKRQLsUgODk/I7tdk1KyUrqyuQx/hc91rEqw9pq+S67CR4l6BVi5LwYR3HLPlhxSH/e8gVTjpkqC2mDQjdyWHTj96qOEgK2RdKnITlUUAqQPQgA0rBi2cPa0dXNnBcf5Y+P1TNNt6MW0biAdrAHoIScX+jN/ltHB90yW+yMyTDJQp2oWZiXBTzk3cNgXlIsk8TN3IdO00obw4I9FFyM9ZNTYOqBJ3LVC7E6736Cm6EGB4fcCMvaY5OuoK0ec7enDSRVrAx4MlFgv7iCuer5hOUBaTXTkt0GpVjkKdKo0NdHC43nQ2c9hNeudXUlmANwhWOxngnm07Umy4JkqBEXwv+J6Fkp7djBpxUJMAqX7ITaDtMDN52jffiyZDHy+Hfj5pTKqQAH8SGpC2DZ1j5XijWQQNe6hGrVftBP0aoffmmcF0OnBotj0Enp4d+UXz3hTVNWSS0diCMcSiXX1ndDQKyWwz6RWzr42anxCDJEJtIFNADjz1bVHRqcPTxdXxsnjoPkO17Enmz4iz6Lo0s5G6uXL15780tuWhbiFoUdFXZ3vuRvo0xBK8nYuvnNcY/dzfY/yVKIHACOKShDtIf6HM8Uz1u8Z9JdIRbCt++v3KXkz5Ve4YnNkMCkO052xkFFkSjWctBsJ4+Rr6Vf0qgt7u8WxsoXKl+hnhVGr+OUHAbvyokVt+qdHOgvZErX+pXe7qyWySNC36ZKvPcb/NsXWsC4gRVtOhRvYpnMISp3T8ZLGfD7KyGl1nJtQnImbsEbL9OuDx+aJBP48e4tKwYpdC9Nu0aFbVNiGNK8SVGPVMvWSno84N3MI2B5k4Q2aaQyxR5HehK0LM+K4TL5WqG1E9LEEeLiDPkSEpUEPQ8hf0htXCutQBdfIM7zjp5DrIfzHeJhnKNlI6WDuS4EfC9rmURfY7uum2Dfy6/kiQo4+42ekFjanMrY0+B21XVa+bLQNVh0Pk9sYaVTfRZ+xsXptMKyptmkTBdlRraxAhEa2ii4/CsEAMSfV25KgUsWCYb/HtRJPO5Qj5qi7GljgF0VFhW93107SG+swfC5F/xWDdsj3Vx8Cvb2iTtkgne+6OxI7W93YTn+8TTssT8PVPNnumxEfzXsXdSbGh/DSsIy+lIN14UxK8QpXUu7Nvn4jZy4jApBYZ/HjkrQA7cPLY4gk1/90SmsSoz2J+zzWr/yDtgQ7gy5Nbb4nf27wcQFXq/YWJTxruj+/IZ5eIfroE1x2d5YLZDsLOk2xSxaaRebh6iwDhHH1GMVMPdfjsoH2h+TyfCfSkfEpwtd4epI1Emm4eC91FO3jt4Jc+wd0goxbfxjcmB1Hs/tR9GaXDmDzZCGmxPEooYUj14S17NVkNnyaSV6fT5jzlKUguhJKW/lPpofJtHJBwucXT7MT/pTNA+AvueikUVUWE6bN2/so3pudtuAM0pB6/yRb6GS5IKFHNwQzBbqsgp7LQ9waPPXXL8EocarhandZ3B/7WCo+npAFqFU2KJL9C+eJDjH1BaGXnt/LmS3ozZ3mWJVATTBVbS4jApBYZ/HjkrQA7cPLY4gk1/90SmsSoz2J+zzWr/yD9iMUMw+tW3zTZkX24jS+QtReGsIa8knJJN3qI2tm1tuWmcG4h1mbCZNo+d6yu3Q0kPUKE6RsY2g5VPfw9SkVJyaGy2ZnSmbjTVZvUzJC1ctj0HvptvBgjOo1HK5Qi4bkzd7rfTP2t32+Xm6vGDukNsG1bQ3TxqC6gxuFT4SuDWXG+0SYz+XUHm8MmKHstUBkH5GXPKbeiWbo9OsJZQCvqAFTuzp89JWDsjQ0RaKOd6gmjNSHpGdqhbt4dwPW2OujyeOg+Q7XsSebPiLPoujSzkbq5cvXnvzS25aFuIWhR0WkgiMISyBMOHhukj+ha51aeP7X69zI/JOA4yN124uLcl/1s+Hh7dkn553gF2y2o/fpRENvdk0J7npi+O+q4SE+UM60QOLWdZCWAyvCYaeO2B7ceHInR1ieAWeCAGqz/vuMyxwYJzmA1sXKUZ6QHf15wJ21y5yuAl3gNGxQmcdIrn6O7bDxiU4AnMjqWqUfb3fQya6c+HM0C/L4gNDz/fCkNwknDLDwv4m8ajAVsKCYunqqGSFvA7OvhCYZ095YkTVkwSHa5y0YqZupXLlQGv1VgSNEZh9sq+LJ4uEcAXA6G/JRe+SIDNlRgPESAkhstEdaavRwshTSIVdgAgYvg8TsuxzifdUVuD4hZwZ5mZ9jMztisqnhbpE4Ugm2qHPVW6TePwAfoV7B1HpJ/89A2rjRCJcSVKEubUCdcDHwo61kRGQygbZxfl1kFOIMtNYc9B/xK/iHu2kRn4jnDE/wBCe9HCcrFlr7eYZ79ji50zOvCqQpDAwEPHXK1+DVHc+YGXu0rDDWcbBn/hnAvP2rlYYpDdr3XXWMPh2EUq0PfEaafPT0WgDfyZMgAlFR8cv7bZmfE5povGqF/4nEWC+Iv4oZyCVGec+mapEjxO69q6Uyf4jNRzJXSS6eHAlOwLoHewJ7qknOOqgRmzaotvgeVR576QX8GMHSTfTZ+ugP0we7ScnjoPkO17Enmz4iz6Lo0s5G6uXL15780tuWhbiFoUdFcV8fZays/wq/0Ahlrlnx6NAr7zuNC1L08+N+suVFhqGhYy8+Pfhj89OyqOF2XBkn/rgzRdTFelI0U7xU7vHVuX8QPQwJ+zKj9vY9JC36eTlINqDepSh8vp0+C6U2sMXuCmL+9J4WnymtV/m5En9poDSSkrQK8TtT4YKnNTUbs6YTpNhPPwlQfUpMWD5l5xqYmugbLb/+JqTy5TeCeuunTmJmqq9oblx+pCAsFkSrZPB2lH/2TNop0EN7/lf1wjJsl+ZYzNckpJhltNdZrvtaI9THJct+lUKCvLiidR2prTXJ46D5DtexJ5s+Is+i6NLORurly9ee/NLbloW4haFHRXpasVrKcWSZNuHhIrWIVc8qy4ugs+ss6ixOdQ+mdQ8Tts89+YxgftCqxZDFDQbtqjVMdwVFDeForzMT0C0/b0BGnD27PnGwM3s+3eiQ4I0jw7AdROuF6N/QX4+FVjwQS7EfpmYJwhhhqA/qNmUumRzrr47/Js2Atj1oJTHJ+5aeG497pgg0Fc+FxAACJ60NnhVufZfNGbd23rU370L8BNFwkSmbFeQTSnMHYcyiKvNt/8aVs3yQPAan2lU1ycQvKpcFYmrJCDucDYf9hphbi89biTWLnUyCAryO37yZta/5SscKmtDN/bpfkLGymgRzsM/J+j/IchDSdWH+eTi9x20APZmCFKRLAakrCh2YM4EvxE1uHu2ZIULsQW/eZCzc3zduSbfh4opyD3q5dQtM8gNSK3D2iOsvOMAzibdoqQssC2618nT7EKNrbxCDn9wYpENrnIv2Jq1arhn+Xx1WerEDcQ922orzK+bc4T61rBzossuX5GXtFeXzn9EWPXqwaRWGXgxLeBc1/jJ/E/BYp+asaT9Pgqqm146pTvc2c8uHFcVeBosSVpQr+y7AzrVPSZrSHyTUNyfbEeJ0PVT9woXJpaWn0sq+yPeLFQNNjzYrr3+Ovp/+fe2wzWJfwZmbYE6KqUVU3hoYHuHgSSZSo/rDBm4yO/LF4tHp7CycYtwR8LRZiItRCg6FEfNX/0PQq54uTwg9oV+wWQzQrP2WVX+79GEMdhdLgRo/Iimw0Mi0bFuWBuxACobB6mxmxNOo7wYc1sLdEsRCTy5FhCHuMgoA2BKAn6Q5vmjSxbnkbL4LGZ3NzX7cglXGGGZGL9OlFctK73q0xAHQBRCpQCnl+w8QM5qtj1xcJnPMECU/PDXFe+qqHB+qOWjNfqOX8rmFzfijxcb9dFCfEpdwVV2SM3WlBQW5WWTGXUKHJJTjqrGCzyU79/dMoN05cdKxtwiRwlV54wwogtrjux+mP+UTR2G8C46fiZUXY5dIJ+e0ybTQLGDXAHBcypUsTtGktTaWL5uSxJphddSHlxMJ4c/60gjU58SP3+FLNhA/WzLmnX5dP1Wyfqb5i6/p9FRAgW756iwKYyd5LOd0GUwU2I0wEHXSsTiB1KagwaLrxTTXJRstWbsyzxtFKAz1ZE9ytDcX9n8Y3JgdR7P7UfRmlw5g82QhpsTxKKGFI9eEtezVZDZ8FjDkunQS0z5NiqyUmigzEWGQo78y0bGbinVXFXfBVyYOpleloFukPOb75DtEVQJ+mJ+SeqkIZahkoC+58l9Q5rlhg/5vRdjNjRvpoHPZ+b2D6sgV8qfotH3NmifhFOuzZI6TnED9g8ur3xoHTJ3weBxJOrIxJkQ9BJVaBN/7EJxourekeSTZSqg5xZ1vlY2xKUIeIkf6uVofkidskPkWf1szAbjBEV2V0bzs0icGQQDHIq+ZLBnNRyFIRaYy5O5M2BcrPobrds0+0KJm4RrLkl6bK3AX/OTWwYuBJUYjEv21M8+BK0SQmi3bg2ZPkAmHHv/QBf6UX13CCX9eoidF5hDVrpbfY0TXRZUXmCegQXszGjK5a2h+hL+gX8S4ra8tCyQjV3Ey7eC47NurQclkA3i4rxwZ3ZFZQLZN6QGF0AhkKpXBP/HN2QYsl4MrLbjJK/7iLbNyuu/+Sr8yIYYXzJUvfGMxQ4w701WRFw5C+s+o8CnlNb95Cf6Nrm1+bb8tJ1upaLcms2hXRGLKERKlByj/noZj95DrbTCEaqsCZzmjZbeW/W7d4F/86nJgII9WNywAY4IUa89ZKGehO+u8WduZElI7xufrAR0cRyIL4Vrwq1xq+JJtBNMWqkTGboA2A4uICARog7muCyXqSwyPqqPPq45mY/tP0NCxSu+dNq+PXesN7jBAvs57NVDlI8Pm7YNaDHd4itJC2UjjX54F6SOYgI59D9rmQORmDP11OUmzgLwVDjx/jGcckRJ7jP3YtHcfxGKBrRGbqyuK3DUbX9gu3HzMLynqPf/gDk/fIs/PfMdeBYnSt9O7YX+K6N28dLpV3drweLcVRXOe82W8QSsg0qAowk9kSqWP+2RY8y3JowkmyAc7CXIsKlcUMQoJ1INqNSrSg68bFLzwT92QoQ3X4bLEvOsgIOi2+HyG+s/Q0LKJDMuQR3RwZMyBwbckAYSauNRNFkA4toCAbeiewC4jApBYZ/HjkrQA7cPLY4gk1/90SmsSoz2J+zzWr/yD0n4unO4iE9ULv0WdP7/Muwx8ZY5ld1YmeYMipXby0OeTUv9mgvKrEAJ2EsUrBmark4Y4XViM01FnQCzUgKxY6iOc83jsx+zRRnoxoJ/aOqRA6t2hgne6urMlq56uNjjbAbvyokVt+qdHOgvZErX+pXe7qyWySNC36ZKvPcb/NsXuerorVBjZzMg04eFSrMPzO5ynx8bh0OiOHlftu6RqRxdpxAfMmoEfTUu5l3CM7Ieew8h4lh9RWqlKhsVi8QitSs86HCasqH4xyoAtB9NwqnPDYalvT24lB2b+gYblkwnrzlomUNZIiGv+z+YmchKAMxoZzinVtK34IHqQ3HpLP5rEoKpN/r8+MmSeZJqVmS5pqnQzOzkABur11KRaYSlHN5pgHWC948uYezIwTUr/nizZnFiQ5+nQDy0msdxci9YtJF6H4zU/NkSdUoXtUJ2d0PTv0UXyHjQ5FtI6Xszgm4SrEKyYPrn61cJridPmu7RMVaPayjb2tVoE215oR2w2xN82gXPswG+JCuK9EiXpq5lrZI+88vZ8wYzXIbi3zjBB8tCdXBPxq9ej08Jw+BMYM5ZeuKfU0ooHh9IFetpsTbyPJUPWuZvYkHeK0BMbckihkFZpdARSvTc83/DMwHyhCmL+9J4WnymtV/m5En9poDSSkrQK8TtT4YKnNTUbs6aWQlVphHO36JoDGHj78xNg90pOCbOvo844rYCuftrMKR5vviLdqHrYUN537XuvzuC1zH3tRVaUfYt29G7zTUjiji5FBJSqH63rnEe44e/J+Mqf1K0JT1sQaBP6mn1YIgfwv+J6Fkp7djBpxUJMAqX7ITaDtMDN52jffiyZDHy+HZKT8qiUEqtbQ0MHlfmog7VKebtbC9ZFUD/tolKry2sPKwWSlp+CrDz65Ie8vvxuPKF+HUkSTkWWwsCKf0DSxP3imiP6rV8LaYS16fmpLKjHFeM/wmBoNFT7wWQd/mnp3Mew1hojtr7UdlBISiTpyh8JQ1gRI1ENRfiCeJpmkiixTX77Lwif2Q/ePin7o8vku79YcHUVsGkthHnYHDu56YGNOToyNAT3hMJCz8/xU1GIFnQXzzXQvRYzwu/UzAxxOUyAxCNi9f94peWLatlk3bs7f2ZnIuNd1iPHkZVP7RCTsG1BEMKiy8cdIvdXPILp2m179mk4UN6r2DOkJIqaTf4ihDhFLnltximqsYbI9fghRy/o6y+p/sUd/r7E2e6S4fYwulmTuZRivyts63zEMKa7I7H5zyR0RSNBu1gF2KnQqCdwA66H63atkYYntk/ZoS/eLutAz+le8UhGj7wkwCAKnHeZj1PU5sKl0ewS17mS6Arux92JwPqXtSHkqpPTMhJemNywSDpOnHj7PAuiBJMTpEHtAiDKlyNtab2F3XjiBV6SUu17DJYtaRb5f/VYKCRG5oOiDLMsSrdcZVDdlgLA2tnTi3ddeAMJLMC/W3IKSdWkWYVEI1QqxmRXFKwn+qDbq7HbPPuYzU0yc2HYtUT3kYemYpP3SuxgsiZAP8Dp4mOi3CvmheMmKCj56yCCbOY0/l+8O+zbfQsAytAJYuEyn18cMurP46HiTyXzM7PUAOES4exB6+Z+IQdRCCxV5YxbzskmTNRerPYQegyD7xtywiGzenabaiLsC0sDo56tHqKfwTUOaZJOUyrSuRG+OpdEXR/5Ma5vXIaGn+JNvhkacJ+9k498TQGkIBphoghyzHJ3NV6e0NFVSyhFX1WCfkZNywUey+LiUINKeG8H0NU9rmixO487UUVYUp1fRJsWRjSgZS+lPT9B2QjE65j36KEzE1bA6BkL6nqDlaudOxuxH6ZmCcIYYagP6jZlLpkc66+O/ybNgLY9aCUxyfuWnlG9NtIbyBksYLboDhUAwFKGp0rHACV9oPjICDkzFLfzvCdJY4FAIhEvk3ryuC+iz3/HQSZIEhXvdYm9Tv81o0WIwWJuNlAm28661FYePL2WIfvmQNGTBlFQk/Jq6TDqFQ63idn8FB22yk1r8j7hCXbLSXiw8AXP4FO169MKs1/eXKYdMuJgsT2fUk4aHDT5lFf8YB3k5nAi1OjndPsDbU9dAakuPkEKnCHGr5skWzcFu39KXfetrruP6pKelJXl0nQfei6UcRrtriL0gX8DBGk3finHlyC5mA4yLHMcTbuFq3stQPLhhMRJ26AT36lRjHOObJmIZ7PZvaw7PDeA3w9FLQ15M/blovxWRZCZrxIXC5tnvfqbipVN/EmvQ3YWb1C48vmHZC5Vw0af90QOY1UzK+npgQJu42EtHThY8RvqpBh6dS08aw4TuqJh8tsrJFYX1jsbuBAPL/AQxmysknv30nE4ByXDimTtMwy/0usTXcdmL8IqlFMtVkHB1YafUC4jApBYZ/HjkrQA7cPLY4gk1/90SmsSoz2J+zzWr/yD5nOO/6aeBlHCjnIezSFNU+vqbDakB6A3oFD3n+DqFm8Nzv/8gom624GtS84Wx4TLBoa1vYrCDbxCU38ISwCh/rHqcVxTmZvjii+QdbxuctOq0SZjxJfSaqOcxDVEhVGLfxjcmB1Hs/tR9GaXDmDzZCGmxPEooYUj14S17NVkNnzZoUsxijmjmrW/ivH8cQZbk9GR44CjuCwcPrRf4f/7Y9NLsKfpqIijP9rWNQ3mL1pS3yJOaTey5n/ZlwkbGMEKIAzs69yI0iTUCOUT8MsTvVOweVvv7+xxzjdAceU3rtJURsP+XpRHKjJ9w2TyF0cWXR5obMuPkexxo1c4WeHtenKjUv0/x9KDJPzjTYRHmpq+Iz6J+6zGJmI5++SU7MN8lQOQSQt/elNvrB1CYj38zw6a0YLxJnIX2K6D6PKf4a6m4X4NK0P24xBvJJt80WDtpWss2xYx1mZqHsAfamLf/1JpzTZ9F0+q9U6qIoUaaY0ONFe8OCSDZgQCLsLvwcx75lHoXD5NLeaD/YmSGQV8jrn1KTJibh0jPPnJ1eqlD+Ld+yU6jcm480cn3MtfTpUTFnXkkBCTXHmZkX9L0L7LoHC7G80INfkG4lLj3TDfhVBwNtU/uWsAslp7TmBlR1AqEM0AqqoqCwvViGqaf8MseJgfTubE01l+Yu/6+IVTi/yd/wt6e0k+5flt/C26UfcWhAgbyIW91kxFMwpJOsL2dtBMDhEAcVqycSdv8iLBGEp30RVoexzfsNgxvq3oiAYQeTxRbBRA9WJImdtB40Fi8BJ+b9hmeDXC9oKqw5kJwvH6d508OjNpnz+ZCIDcfWo5wG9JX/cSe6CYW+WZ5idK6PBIrlBaHcO2+vbuT0j1wv8CVBhGU76HI4hOrIzG8T/iJIVtHVs4ye3bd/607HOeHCE0glclx3Gq0myC6JmIct+rUlwUL8mPP+2eY8S2lLUmFKgSCwucHI3CYs+6sQYfdvKhlhwtcU1o6HkoecDLNp7IYGqF2Ap7uanCkxlHRQEG8UBCEqTaNxeNLLwkzYNa9iRZB6KCMKzhFdgOy7gahUaM7PMmcGkUdA/mIsBOKPwz9SXud1IbuNhot9tCODLyaYnoZsf+r9Jh5d5gAwpcvvBe+zNWOhjtuebBkjgrgwqXqGs27tfrZb9znw/IZ+TRQdF43r6rN1v8etUoJdz0DvOBuY2f7zZhnYbOOLYw55qjXGeLLUjC3J472T/aG/urIzLtpKVZeZvFDCEFwnUrL9rd+25AZDA0RJOPt4dcSks9yeOg+Q7XsSebPiLPoujSzkbq5cvXnvzS25aFuIWhR0W0uJcsZCIi5YmKCHPfnV+QWMiyufiIu9sCUkIO+AyzMoFD69/j/STEVHQcCsZPk3o2knk9U9XB0ch00l7prAF+DCfoiRezy84+xQ8pzgnnMcfOT+C8PqdzUfKQdGPUS99jAzc6WvLNCcpVDJPfW6duWpt6Ae5WYVMRVXBOO3N0YzzzSuTD3IPca7DLqqxAqZUVnIknwxmJru8my/036igN7yaNIF6n/v4MNKGLnnnZLlehz9rz1QXuV9Lc0DxSZXItQ9MtYrevDCyUubjoXWOkwb9HLr1nFxVzw3wTce+k+/htaJUiwKiGR2QjAyZf0BCydNyYh0CJpyPmRxqEvRZsYRLZG964jBAHaTV++8bFwOhsENL/S0h7Jnykok8uGiGAQy3HlO0UeILJQxrNNhnMQ9WQZ6YgjK4E2W7hwWcRdS4FARysmmRPimH6c+AdT7/sSb+cYf5zwX81NZ4Bb263ppmKH0VNOuEdzT3w8A+ZmcsEpARtJtZxPZTsetjVMwqxH6ZmCcIYYagP6jZlLpkc66+O/ybNgLY9aCUxyfuWnvIl8VNojEDVa6Dqurs/QISVWVKBSl+iIa0HsINq/sWS5uWcNCfeSeOBcgZuo1zscIHWeUAA4Yrg380MMwt2Rz+ZWIwQqeHN7ymKFKhs0EJ1VsI/nU0cUwWDyFKt99Fq6c98x14FidK307thf4ro3bx0ulXd2vB4txVFc57zZbxBSWlOXNg/77hSdGyVODfMoboeBXOui0RRC3dlJOhqShesTJ/DYtpzaYxzYYtqN43+xIOOd2ZgWZL1DnwFgAMhqF7BHL1m1cZaNBa9d2oAh1xZlME62bZhqkkA7ddC14k7DOm85xyR//CJoHmH5bhilufqKKzFJbTZjvhWzsflLT5Sxjir4gbLqlktPUAIzGHez+QD7ZYAegc6A+gi0GYb5O4pQHpkVBvgNiOxwn16JWRP9hzbFDiExa9O7vVQ2tz8CHnWDZaAt7NwWxi7k7SgOeS6/Wbj2IGWNBM1PuxM83j4Y0hABx+F2uT4xsxALWjR1FOy4hgQisfazoiwRw5QF9/oExaIaWmPpURKmX5wYVpLXWTBmdYzmdA/hvzDj9pqGAJY1BJ3ecizCfiVZQqldvtD+nqafsE5Fggg+kdri6g9qTO4l7VuLU7CXqTbWjO9OE7V/f5kiAarvh/lLG323covOrqlaiFtM+b3NMLJagOvsG0+gjo4pOhbSPOp4frVPMKoNQMlTIpHomR9UYmy0hX5M3RiVDKfyo4tNNhxUtyOMibYHa2e7C0VoslZFh1bAN264rydjZIq2StO/Lfv+i4jApBYZ/HjkrQA7cPLY4gk1/90SmsSoz2J+zzWr/yDGDn89gu+zu8uVa3S2/hFIYG9GwQ+dj7k9h06GAw/Cn0YKwW2GpPtBExQN8kamwuFb6w2CRpx8tdD2Jci6CRfEQjks4+bER9chf8JQJMcgOMLzDAiWauFF2/jAEY5fJePtA6IbQGGM+anfdqnlSXu5+AXzd505Ei4WE6aw2OKvWGnTurxTePKWuDBkcl0VJhKf+7r1KOo5MPlH2QaGP6M4439H1Avs8ufBtiX8toQEjSs2dcnZ21SIaGKH0+AwdnhfcwBuq5g/QB4MHCh1rOcySXdy196HnUZth9VoAoVlxKcZJAlwV3J+JTtW2rNb9FZ+wkGPS6tRRhYKcPhIquPdMHSrgV00mL//zyCE7WUsTHytRKNuUtlnkJUYaakX3GD8x+llN+faRMDxlQr2rJGgcckALCGiM5jZSuZeVfe/9DqMtRBF5F9xX2/mAbTSv/TBkwLfxu76VOHLoCEGsrpwSoWwilizxWZ1ffKgbI/J1t5NW6x+RhbZPJtni5/vJTLPgMe/X9K2z5Z2Df+U2y57F9NtpNeiXkrCi5ZOW33FkVIu8X9TC7i8kWPxqx/kESaP/HKg7JqLKqassoqHUdT6Hki60KvMCsrnJbvSF7pQFNOzf+32xqTeWeGYeKXO4+Sz3zHXgWJ0rfTu2F/iujdvHS6Vd3a8Hi3FUVznvNlvEF/GtY03B1sD7AsFyqV6/MKIQDC79gv9ii7x+aXQVYGUtiEdHw9Z27adocYN5fKEL451RRg0rCid26VRMkZapizfsRiyaG+qk+KbgYZEjBb8JkXkNcPdrbDgIRrRfLRcmVQjpNH+fV8mlBfe/nJ55WwbchA7gtatq7t/fERpf4Y3F2pJ2J9ETVOzTqc5cq+fQ9w05+4UpKRtCUM9e+9Z1M616whay7T2zdv9SxSoa1YlZCA0VSpigRPuI9HnckSWqvFPGiD/BaZrfAPvJxONwY3miPjXbzGgbyzaW845t/K268ZGSEDT1zavCaTfIeMdqXKG5rW2hhYeyr9VELLObrIrklxQlz3cE5lA3IK0/x/EU8GFhTAR4R8qO0vx98NXWzJKe3SPRLbEdx+nBAn4XZDpl5qhU5B3nwCPeWKjjGZK4cjNsZwn/wO+jU2ZQQMMcsKOwqjdTH2+dNtXm/JDwYlv5sKb+pMp+4wLmrYheOEyejdV1Ffn0AfuIXzwVj/e6Dwv+J6Fkp7djBpxUJMAqX7ITaDtMDN52jffiyZDHy+HYHtYgt5WWxK2SyUbL1NG5iSQ1Mcr7KBJGxs/u4DDsoJutQIZ6b3tLAaBZ/Yrpyz/OlUyjRizK+Sx/JXadTiY8QmMR9IyPTu2oJfLC6xGNre9n8kB43ygIaaqbRpDsSb4ONawyhtI+2FlVk2Pl+JQm/g1JaJ2lV83hZ90vg6c/x7roBsGj7dcLHtwG67FJ1khktj9pLJJM1rl73jOXl6FlZGNoKo/QQbHToIy6dqSRoREwKwN6/+HkSo2stgIIwep177VCo5A62ORg6Z8DHXITCXfpE6+Tlqwa3ZvVibdGdSs39L4T9bHUOB82nDfTQ76vvoUBvglw0+YRFY0IUOJLQXMimOLSeasbPxgCgPb5taa482u8YbnBCX/nc61F4BILvpqLTF46OI7N1P07XTKVAkTgx1s23ybu/+Gv4J3mciGK+znI+hOsVV42rVDEZU9JRogw6TAaZoWUCqJkQUjbCd3XX3mGs3y0UMmkFXQJdZQ2UvLbow3KVTTNAsjrfMVFoNG+TrrVH0xJEurmnFe5KN0qp/yZE1xBseGWje2FIb8l7pkHLlzVCUpd2heuv3/AakJ0ZM8AmPR7Lp5zktQKOFPor6+ffwyctDMrc+4yHIxIzoe8k+haUkqy86IM2QvLEfpmYJwhhhqA/qNmUumRzrr47/Js2Atj1oJTHJ+5aeTg/72cxVlXUsbQKgUyLNIkVy0wM5hJXWZM4FbwHnAzGa7qHdV8jKVlgwYgVAjqEpNh01Wi5x8gHNMCSqK0re6FmnbKiYudNpbuikZGLrqbNyXwzaIe2GkzX2kIaatTQTSscKmtDN/bpfkLGymgRzsM/J+j/IchDSdWH+eTi9x20gYkV4ERwp4tGtWGEE/Sbi+QVgdS2RCmuGkXySIm/urHWgp4ydKKMC8Vg9cDqR7MC5cIAyoFL9JlErTW7//uv2mp0Qd51B7POgfKsrV956k9n7O352cYCS0NXhOFmk1Y9RBpSbPZEWkzcl+wVsW213ZV9YepMExk5yqZ6tA/CzFM0nQlon54HfwfrksXrrkCIrJgvr2oBquQ2fdsqrBTRlhW2691WAy8Uxo0TNJWq6iRHxcdkBDEWaEE2XhzDCE0+AsIaudaMOUKthRBNyb5RZwTRdkZkui1UXaulgAOF5EKJc6sNDJbco6kKxBCtI676BW/mIu7GpNZx8QQvXFON++1KJg8d22eAYeDAY0/mVHq+XYkbdAwZ6W2YWgvrEqAKjh96AD6FyM0DXGNQLpT7exDGs8YELtOcXXPDCMEnpSxU+0yJph5aw45EgDp+3yAOczaJI/+MVjO7hQCUk2nkOt5dWVGmE7TSVoUYujv7a/CG3P1qFpCdb9iwYX3fMR85qOE5LnPVuT708vTMqDGt+1erBIXFTcEJeD55cJprwdYp5vx7nu/POtl/0WeIX9gHzMlrhv1iy2qjNom+oXIW9+u/2AYDZa+oczdC3SwRXB28/5u1kpMcpgtWfr+0f9D8hrjZqPhd6pSf71FCwdGYM0hY2+qt0eJwn6B1zhbW7C7CRlmN76AJFzb5jN3XyeFXJqth+B3lsNeyocVOtSruJ7llWERrzRgP/k4ArtfSCD8ouMuaYvtUGW4oEE8Ei4IEZ3ouQmmJ4PZMY1ILoeDfFSTX4NtR5+dGIQdhsuajW4fOU4DrTvrGkuaxzUvzv9VNTwBwA+TD0bZey7LzBko05I53b1VVPUWbuciPIbeRPQOCW3z2opibGQdib10t0rbRMRcPWocTlhAlFcVw6SCCCGn0LEZb2J70tKOEy8IbyeGzV/4co9a2EC6lRgteZtGkL/dFTdqY++eZM/T57tOTdr0soLgd3UlVnkbEC+KK6w5JEO41TUNBqC058kYHHkzHrlqr8w8u+gCrh7vknMGM6VdBBwQn2srijdvR4elfcceStEhWxSbjP1uiHU8kUnDXRYZW7myimJdNbsGRM3P8M102lAwAC9UnEAvFZyZoqKe99TmcY9UQvmUVaIu6CkDRmsuzfBDuAPmEyi5/C2oalJP6PDQrvTnPFtWI0LX5+bkRWZt+5gi9tdK5Y7F6XOlUr28JPYgBQBu+Nn40SRL098L/iehZKe3YwacVCTAKl+yE2g7TAzedo334smQx8vh208Y9vWO9qA4LD2Reb4rZSJKYXI1zjX7PwUXCBEKAl+WVr8yFEkFT+tkfm/oqqvr/8Dgq9zzEsKsCIsr3X/QKR6VJyxgXzOryBLVNGCyAWXX52D5LRdlqub3bDPuqGF/1XKR3HAzxgvyBy/ryT6B921MAVCArnQd3rlAYG7RphSLwPdbR71+yoXdgUfpgBhZXrvJeo6Zks8cDOEsCD910FelI0Omd/V+IArvx8nkuevK4X6lr4WSP95zdpoh6KLlmTNl0Q+2o0wKFo3kxwSYdunqgqaLXSGDtBOr5TrfQDcwpi/vSeFp8prVf5uRJ/aaA0kpK0CvE7U+GCpzU1G7OmRNyLvo/J3HCfAEmYK1CwuarBPsu1htHlc7BUPaIe4yEvG7IOpXKGv6QF8UMagaO3eYqPjOs7qvnOAQWNpqnbclQnsqCvNyCkt6SibdrrfL7s40122FIRcZvqbm7cgMxfLEYtQrDNno55WfuKmpUC+X8tFVG+aS9jpbd6Qollrq2xQjgy1Vydh6pDW0gN/jMPQV/ndXKz5uSt4sktf1xnLHYtYXmGIomCWquOh+D0vJ00S4YAtrpI3IdCqbRr7434Rs01ACxEKLIH36mdNtTwvaD0nusKkg47fOmhCiBqIqaEPVv8Y+vk3bq2Jn5kL+q5gQptDY+GDGSqQCjkG6G5IFOXOkTP0lIjMpL+iqXQQwlpJ/LMtqnDe/ZCK87nm5f9eaco7r00yKqEXzfdqgWqA65EJwVRsAq66GYStFfJ0W1Kxwqa0M39ul+QsbKaBHOwz8n6P8hyENJ1Yf55OL3Hbdw1Znn/83H4AeK4irI/MIw8QEqe3PamTrTYjAcqnsB/VvY9J2oRnsO9TFU6fhHobHChhK9nn5UUmlir0sHmy/fIqMcJyPw6F414FLVXpYCmyhIit4UfcJeFImMzO4oz08mEIAkY+wXuoQ3/q31EEsFRzlja9NUOeBS5kzQaKrGJFWzI83c1y0C8fnPhdkFumFzBTcQfPr6/BlFDIso4p0VY3367qfD37UAfoEMXS/Ob+aeLGRIBuZ+gScjx60nWJotgJxZ+0mZj38be+wAUgGJfQZ8Zovmubom7hW+JQGlWg/pFbrVkCk6/VR3R4kQji1ElaEBxFdUlF2kC+tEQNBpWEcUdwc1Vbqr3cI3QiZVqbKR4P67HHF8btLY12E4pbA+KEng9otb3ZC05a64v+GPj+DZ40tZAezP/bgfJ3PnuRMAJog/JN2VEroEZ3JMxONphGthqdEusOmZirNK2KXsVzKgfc0hMwtI4/QI0idsETcSglbE8Rkc7ySx4f0+2mwqExXzWIiCkS1eFEJmhQq9MAPs/RNxTzXCv4EGMH48M1lOeRKKGQyiOen6fe+SW0nDVDXn9vhCiBjM9CFD4ajQbgJ7Eh1s71VZU697/E5/XtWRanhd28GOyFFyrRGHxQ2f2Cw3ADSbBsZ7x46cz5uy/8RtTv9VggoC2sNTUaCatpJ0YIksaN8Z5uPjWwdZJBzflnc07CdppHRZPFrNpJCUbb4K/q3xE3JV1fbr+dHkiMheUXBLQ/49kPrNqH2ixvM0gtSvh4I3udTUKYZHvG3x8CRtwajjZfI1kamLnRbsRIxQe2s0QzgfXOM18WY3w+ot6iwgwXoXU48WdOawsD50kTLUtWVD2Ffga64l8UJ7c+Q7RQJk95jVE6j39Kb3oaKZRFg17k06dhFp3jtE49X+AdEwgLunPLH9euVcgYOzaCjwS/N2HDO0WVcaPrs7JpxxXZrghbldZJVTR+CQbIuLthu2f+GZFNmSTHslsn+MPQjTTTaSInUD9gd2mV0pXz4syF9zO1P5tbS/2vd10rOg6Bf1xmD0aE9vJDM1nLHTLs3FOtTHv0jCGHvVAmpBD3WzVKgf8Q6b05tYrgZS/Il9OmHI1/7BnronbOOZpE7ZYHhYZHrbb+J4RRcWJylK7qois0u4BDj2cIRNGAHThpQKfavTNA8J8zPNAi+3OpJtsdh4f4A2rjYvbsoKzXJvlN1AqxPDhukSTKI3AkKDjNrVUMhWE/wX2cW3uoPeUZtYuCA2Zot6PfYjb4XIDENu68WN0HaP6uGtcWquKV0BzIn/0wW8VG4syjDngRGBUHlqCgVaAubjsLOlcf50M306ruaxn1/w4cArF+DnZauqt0z4uIwKQWGfx45K0AO3Dy2OIJNf/dEprEqM9ifs81q/8gyOFFh+3dLYoqSJZeMpkxoH2yZtgBIbPLOxDDUuFidh4sqkz35ZyJcwny9wx2UtsnmFjD5CL9+WHlvZmWtDdzLz1rEChpnLb14aiVDHdgfyALYbhBvStTDI5UONUh22Yo2svXd13nmzjcAblfoKWU0sQqqwL4wacsxlOLYEJ5fwUyeOg+Q7XsSebPiLPoujSzkbq5cvXnvzS25aFuIWhR0WZeoFke0s2Ud0cB/YS1GIvg4PpdeUPdS/KT/Tt8/OtBJ5DhMNgNxTi2oW3krL+8MUBWPxxJoaMfNhmEZCCiHlEh7hoMUl9vmzvE41DGUagQBM0FaOr2PwjdyZV2NUBE+Lpcc0z+0jj6XDtuzxC/FbIzjfi3itV6jlNOTHDMYEDGaElq5CjPiey2+rZXOHK8+zhGuXLzEyIv0+hw3JLDteYFEB321Q8q2K3T0RcU9jaj4PRYNPWDt9gqL6q2m76CoJ03NfqULTPhpr9HiQ9NxlbQ1P8zUWZffxkypGu+3B7ensoUsi58VYQDNffHqNge0T1J1ogvHuMBDGHaL8z2a0TJ0H/MCN0468Tz8KzzgVapx5IOyHDUjH0tG4bah+3agTLDQNkkwyY49xPcoeZ4+iSFF4QeggNqhpg/I3Vb9LGUvC/4noWSnt2MGnFQkwCpfshNoO0wM3naN9+LJkMfL4d8utUL1MA1idYDT69k8wvtVxozGamP4kfZ2g6BnZHfaooQnOsA0YQw+Fi0M8lQuO7VAVghFQDyU21iDHWLIzT5SjA3vqgipVzwEjjxlnWFNiyniqt5tSLCDIc10rYkws+uv8Sl5djN3caMzJTRtIk/lUBL0HEAM21KnJs/TlKg49Z01EH8VfkDdGbGJqCFdktSp+6p5119aCVGMoGvNxYyQMKzObw6TL/AuymC06IQSrhbi0R4QqGqB0MbZisKDk/7+IKcjWPRHnjYOzbwIAqyOQsuaysCMrVuHwZtz6WVUh6/Lj4OWQq8ewnWBzM5X0YfkdFa6ydodHJUsEkkKp1g/ZXf0MUVmcbZ6zHIZBILf6R2Gu3Qsu8jOlFxZjmSt4+afgVK5jB10tNh52GMXkMfRJdH6TWk2DGTSno2C3nlrVKxwqa0M39ul+QsbKaBHOwz8n6P8hyENJ1Yf55OL3HbQm38R2oTzPL/56DugI/Mnmrx9K+kxUDYPTMhasblQBi/qhlFWT6T2HEInubvMMG1khJ+trsAvvdFqYgo1sLOZuA8rB+a5t66EgpSfxcAD8BD1mgdOumOOAv3dH1ugMFp/C/4noWSnt2MGnFQkwCpfshNoO0wM3naN9+LJkMfL4dKMWMKZUvl+sfBZMi789tJEiQ0v8BVlE9wybzh9iaodEZq5SDIOxkoRNxgujz0Uh5UVtk4YqdM+9uO3Ei/3KZm61+n4ZjuI9sZ1r2Md75LHIA+i0PpJGs5NWj0C/D4kftZwBH+JJ8F7Skqz83CBZeG47vdLS7GUsD38E/GZ0nCc9WDA/hKmILCVhViymImt7CtIvFIF8LKW+RJmFqZYP08nJ3k6kNx58gSVKtFGazMhnRyg3zUb2heGmK7d46tZucsx8oSoMc8U3jS3CloS0rf9SNJ5FA4GKVr8TlOTiE4cRQlQPBK6RZ9Um95LR36dkJVJQ3lD39SgF3/hurFLiXFEjo8Kg7L8WigpBsNSZCVmIlaKYGK1GpOhrN27lfK9J14q7nVzeTwVRCwiJUD2AWq5+IfeHjSLfseXiOmd2KdySMIYIAgDCA8AwsiV6Vgx74wCOTSsYDrbfDVhIsuduat+YsmFr0wyNxc9Ieg8N4L88WNUJxZiVINRJd8K1Nq+7BJzp/lbogKTFyeZjwB7wqM2kDlIgrwETjBPvPzFqqC8piBxuXFusjtU+zBUA1Mwkx3WStQ7QYDt8po+qncHJLS/TBSWm/jOkxF8qKRZza3IJ/SKze2vtIbtUcJXvsDfQan8xVelcwfgCFS0DlgSDm0gt0t6bjTVa469AE0MmqNqJ/GNyYHUez+1H0ZpcOYPNkIabE8SihhSPXhLXs1WQ2fOLfRzkTQPbSAHSBfUX/AoMQbuv1JyHU2a6czhJpn0E5hoUAZhIDL0YCKyzpxr+qk+y75ZT+07gWwK3goxJvJpoO/uSsSk3kgmx1BtBwjTtmPTun6XyLk2yCEGDUe8Oz4xG4RfI3cT+e1uf9496c8HKx205+ui/Rp2IPH7TDg8urZFmXO/1tXhMcUQDvK93NTxAB4VPUp9KMxWQVde2k4MIyWyMylyHk92UCQ7PvTnQoJ+kwz8SmVZnjanxjSrGEHCoERqIO/Ek4f54H5HI/WNPrX2KC4wyI9IrZyOdJ/mMp2lB1wILlkYS6FxDGpjO3y27MFLmrVlo8PA74dfiUvRVGQ2SF0EkP2u3XNb5tCeq4/FSaBaTlBK3RpecWVB+BZrF12C5lQLdOvyJswg3oQ1lI8YNjZQpLQCY53DJKd7vSCWou5TmIHKaP1aMENSZibiFXzYwtqTybHSq/vKAMUe35Yme1n3P1+1zAkAwC28vAp9EPmCgWzZvnuRtDEzSa/TIAJdMFaFG6fjBhpOzqpqqs4wBlaFwnLxc0IkMDE8lyM5/FicQS54oUhriMq9VTmRCjIkvLBK0omnwikCkPOBKv4C7mHiT3uQa6rw4f+Pbrp6e6KVwrpIfggDCuD4kBkSmiwbWFseJNKmuwVdZzKAzS/Hs2nhvjDFdD/fTCys80DWJjboytOjOoC671w2umTJOtDQWMAxq8m0aOmHM0iHDjCXFuyr0KRs86JsIyBTdDXR4QNcc8wUgYTOxeQvu90kwyUKdqFmYlwU85N3DYF5SLJPEzdyHTtNKG8OCPRRcj/1yjRXpZ7Kx5zhvHQosPfHhgvl8A1KHc5v71CkAPA1XJKD/OvleUSA3JHPgqw9dVhZgsVXXM/sm3SugCAuEQZWGi7W2N9+EtAbpbTt2jkjQz6M7YGP76lkIra+JZkYJxfxjcmB1Hs/tR9GaXDmDzZCGmxPEooYUj14S17NVkNnxDhfnbyPObRaatYdbQNUmCbjnVOX5cPRfGsNHWEbpY9kPOuLWaScTrnrgXlwJy12HeKS4QkAb0zInW/4kUNUPxbSJkIlfVHxyvdumS51X+CG38Ed00vnob044P04b4Uzwp2kklKdbpNog9tuOVbjT+AiZhEYkxRKbA25UZxUuqmCSWbZNb5htonTkJYiwx/bTNFnic+VCfelKKYguazVesZrmMuZ/WyGzRXCORvoiMaIhtw6Qws//Bj8lVU6K2rJTCb4ZYlhdDTzq8JlLXmf5CGqRR+Qc61/AdLBKR/MgaNL4d2HL2eUIJGWdR5tXO+6v94VHF66nbUyHa7gk2P79DSUsWG088pheoQNJ8ye7vK0oY5x0gQMhrp/3NYUuniaxIDAkfoYnN9EdTOGcvE8Km/XS53Qt8osV46CirrdttqtiAgnzqUw65RmiAM15Gi7hB1T1hZ4TZrvNlKRGJ5FcIBgPOTZF6QK63XTw68/ZJTWWV/N3XYHU8M4JecRX1TT+G1NIvaspZP7xz8nhacy6EtR3ubJhuutFloguuMj3FKC8/iZ1UQOYTHldcbe07K8uiR0QwmZf36b/yNswlSrc+wmcvDBO6j+o2z3ENxXjTQsXWPKXc3yfBxE2+cS0VhsuhKS74y/ZLt4Mht0ZffvWsJ2md16Yy7DzEmBSAYo8g9xDxP0LEyzO5XDPmJlZXCHytJ0e13DtMXOXWwaxb7LRlC6lzzRfSWgDoDFthpYnQe8qyL/014FVxuIAUNqjq0JIVlj3QDn3UKs8UYYHdT9vr7o7qWCR+z60a6xzqtyavxV4hZtU9Yq80vpZbsVD/vW/9BZlbIYK451tSMCDzBCNFlIKk046JCK4sq4hbGJTXxC3PAs0WmbAbmwIK6pR3nsmz3QQfJ8ZvknB/hb8zeIwKR+mnVT/rp9KRQyuFPEASEYPBJmiIe/jyAu454C0pmKxOn6HAZoC/g0VnXoaGAW2v/LHw0pp4M8r8ZNT9UXTspN+30wznkUxR/LJBomzTq9Yoa5spowP5q5nDYGWrgcL/PwEq/rhbUS7kDXim+/FA0xSailzhysNrto0p2gnQEX5xMFNvjN5jtsx7igAgnKupRpgaCpYFdPmGGU22choYDqj6nCE0KTQJjKCNP2QmAXpCvYTg5UW8wlXZMsqSPMp+gW4TSKopKZsECkh51mpgRtV6IfvxG7Av9esds1uqhA0QwiWHtYDrZk/KVA9Zalf9hLOoUepWAWlihdG4898WwAqxLCMfdXyQSyUUH9ndgGSL1iTla+CgwUqa5A0PxxIkOy4u9L9oV/bQvynuu7suYYyqnm+mgn0qBxvGtFCEene3K6yjvJMgaBIWrHec/YYZe3Ygxxkf8EYIPF3teDo0jMwMMKIDTYq3HUuIccWI6AWcl4NIxhgRn9QZcTOqBEPpyER0AKPwOFtD5rfkpkYzcT4wUSHhVNpPewg9vwDk4QKneCGPf1/MODCnI1y6soFmd2eBd2jP53yMipmVzXs/0bLOy2/N3ay866iNCOPpbP/OeSzKRXkfZEMEBrLH9iNLOo7r8G+zetW1ydN3yMysUqGZ+sPTE8ZfeQ2FNlpnBOgPHYre5e9ANe3l4ze91tM0M7vH1PTial873cMQ7pHthVKhOviudDRVXx88a6EeaYl/GNyYHUez+1H0ZpcOYPNkIabE8SihhSPXhLXs1WQ2fISR88INgWb4ox6DhLgrtwtkRqeoZcJcKt1LJsMi8NT1iqjGUobObmwDkE+w7J+Z+IR73ivAv3Hzh99xpzMDLAzzq9KE0Tr7Xq7DRMyU85DvjMaS9zkJuf3DQurp0EmtI2YKX5WMLMK17Raam5ILD5gcevMEAKFS6eJ+N7yw4wiv2loWychjulYwCcd74Azl7NPcqPFGV1jou0bwA82x50wIHYzqktIVUfZmqpTpQgyP4a9Wva1o3dg/VgW7CjkxcfW06x4ksHO2C9UznyJ50dvUt9cppz+AuZb7i/QzrxUH4pXIbUxwHobP67gl0CbSFutDYXbKJUTATA6KtIvH7J8bLfOz77MoiukJGWYdzA3uipYCDyur9DIjOsXiMzGUU/C/4noWSnt2MGnFQkwCpfshNoO0wM3naN9+LJkMfL4dTPp0p0LdTNUCXA89XMjaNiIjjoAqPP4le/142wYKWahXqZHGhuD1vNWG++RSxZXGVFunJ0gWeSr1g+W3q1JuxkA5uXueOAlGcD/cQAfdTEm3u8JqGmi9FyIYbWJMUaGGh66juM6ToLAIvfJWxvzoQTXQ0nosKb87R/U2hJYZQjHjaRGrq+FqDVMv33s+5/rhvtrIPXWrDLoV05/bURbq0tVZLHk1qG6ijTeLIXnD35WWOckm7WX8whBqLVIDuikFnKWizqMkJkcRb4fP9An0iIH81u50Dca4gShG3jDBStVFKri0Yg0LsjPCY1LQUtgjorgftoO0UXprqMbp8VWa0nUidRFTMgh8xNMDMwPDCxwm36fMnxd7KFqzSn5EXWjwKP0RnBPF/ePJnYgO1Alj4iL4uq5S7biU7W72cfoD4B72PoHGhdahQHcQ24Me1mbZcl63ClW2tmuOUolNESkaAR0DLMjQ/rq3psAhEU3u4enLIim6U84aDMy17W0dMUCSfxjcmB1Hs/tR9GaXDmDzZCGmxPEooYUj14S17NVkNnyUYfsKQTZvnzuTTugTLoMAMJbwRGazdowyOBhFQdVsoipPOjsdVS4FYVqXePIKcIWL5GjeERY+TDAFklSlYbjRWAY7ylT38+Lp+KcVGqAE8Ut7qMHMDI1Nf9uSzO2DiG+qBPH0fNXlvPdNwaO00rLLhoGVtHIIx0lHVHYzmy3VZ/C/4noWSnt2MGnFQkwCpfshNoO0wM3naN9+LJkMfL4dTh9Mc3Ixpy4/pC/CNREzUNk1BAna8QD/L0XuaNXPOndhbOpqiBcfwyEFpj0pNrxhS8SyA+svgPOvxRX50hVQB4vJGU7pwt0oYID/HfWk2FsRdxrKYa+JNw4xdBeVtXHfi8/Baow6NHKhObNkCDKpifKfSqwcwCcrZc3L/LdDXVDaey1xkgrVtx72C+rTgcuhyX+NlLT2WqThsulFBDnfLxYyZJaevAQbBD2NVE9XGpiHU5+KNJwdtY3mUlOBr78elwgqNpKa3iSi8owibhp8jN8waL7hqXtRICkTEUuUsPuoOYJlzFgiJSWvVkY7thvXxab/vv5AzLYNqmvdxYiEH9z3/J/i6G3138PW9DsLqvnsbRVOIE7l/Wh7pmKxLvvVwECmnEnF96J1GNENi1K0MIxExpQDFV21oGDZ47hCeaycsfSaLVR4SlnoiOK4QAT6a6mok3o2LxYTOLZDPB00YlpMwaekpa2ZJ6CQtdz90Qx6NqVfDGLADN1JLLCMcRpHRJzagN9liDELpumIQgC3QhoufnffsRtNpZbotmaTlxb4cbtf9ILRzK037QXyF93ZktUazwS0jcCS3curalB+8O/0wrbW/52ioZmGd7+LvC0IoFji5/yvN+c1XjIF5sdPmRIcOa0JaPc3qqjapAnyVRgPLZfviqmGd4ecFArmDL+tVPQ9fbwuSpjn1KyBM8Cadt1k43BCcI0yuQcYT0isw8DMKxMW3Qz0CxU+SDWIteC2y0qXye7p2meVzHTChFA76r8Gi+uE27f4XSWCiMtEGJ4TT7nkaDwIJPS8SBrpaD4lFJcnh7M4khfWyIYHQVUqJm8Jt2p9WdJKLt56nHXGE/C/4noWSnt2MGnFQkwCpfshNoO0wM3naN9+LJkMfL4dtIYbqlAJmvFhdbzAW0jQFxSEuMj3773iseI0cshvZvsNHwQbKR8goAgb48hCnFY0j313nUrxXssXB0xeweNWIfUCEiR7VW9cV59IU0q9QyRcdSnFUzer+lGAgKbEnTXznwemU1/MpOAwpUAIVmvaf6Xy0scfGlw+tF71KGqrPsitEzMV+1aYWxXZHsuO/UGFCGabK/2/QwQ/1r6QqnVIQXC32OHhvDC2cWMVGeDHrtOKO17S7XFFtrqTvIL7srQS/gyXmaTnKz8WgPAEKmWJHr9oirwimHgAcQTjx+1mmtI3IuC4PxhMXeoje/mVyotAHFiUvKDeBuRmto5h/kQkqGyIv2jyb4UifKVZQjXMjv6fUOkjVs7c2D5VOnWhvOR+j4Gp/TxH759pXnKyFpaPzFNJqyChZcxYh2dWNoaytlz0j+o8kmZ8NRkZf2cTispKbtr3fTE+QGHyCcNg15XNQVPAsg/6sj+QTb2GfHi1ZFeE5ZOnToygaG4eMMXbFJ348JIBlgb6hF7sszNYzZbLhGvYOsJVuANR1It0sj/DUUVCJsUxLGR+i9jbUNlsro+8Jw+BlFYskvJND9/QiSGc90yfImWCiv2+bKMvSeWFJHbWlmSw9Io5RkFa5pqOvBs+sEhUgSYA6pT2qASzACDme5Ac2kcaTKxdvOCuZwm0CW0pz+V/PtWqmpQYh8DjngudDoHEjhrUCX84ioN9a/1FC0cQFJGFHGqoAZ/0ETOgYj0grHv8A6GRxm21vmxgUTOL9VkFCP60IBL4KmJMJyuT720FLgcixPrSRZfvqrDVePY+dvpAyEMMiEZoWrjXVuP53GIHSD/ATiWTDYHM14y/CQpi/vSeFp8prVf5uRJ/aaA0kpK0CvE7U+GCpzU1G7Om2hLzqlyhYBFtzfSFmouYz9oEnYSdgxjYX/josYrbK5cOjsai2S/xuKVdxNcisbR2eYCbGPy170e5RYqP+oHXLYkhHf5n9iH+XE/OAqYhBpaey1VeuEKUZKPhT+P6CtW/OqDS3n5hro6McIUPRzKJ3hIWyPLwsxdpMFtzzSDXuCsyjvSFJ/MnVbCW+c/iSwDU3W7l9RjXnGyLFVmi+DcG05hGtGx5XaftxcFIP9LZY+sfFLL4HJi0V4FRga+wteg4I4NnMPdwtMTa3IJlpBeg9a4f+ky0ZDMSfJ48k/NBGDCTOpeF2CjrIrY+8STZLmEHVQMbuhXtugQ5iTOJr8C37x9bDeIUQoBxE4LvWuFL5pZ4CsrX9yFF3vgojqQWv9t88/GgLMyak0dMXmDuj2M6o0SDWbYYYDcnwy3y7rTHp+x8LUnP85ibB/OnMhvzCqdGQSRGhuexgM2uEXsTSHeudaziGvwoFpeJWEWh7YCfpGTgL8fWsq+kmTgeDZjt00sVfg3QkhwCIXNbUgs6MMGgPSJvrkqPT1FINEBmX23aXQmeiX4GA9KagGIthfiGVwwvh5nbZGxnkePb+0emoIa4dfC/4noWSnt2MGnFQkwCpfshNoO0wM3naN9+LJkMfL4dgdfFyE0+ztf/6+DwsacuSC/2jltlmlTMJCZSwfpxku1YGgcWCcjZdd5IYEMskuIpcgGNpdk5Wkkpbr4UiHxN0BsKZQPW64Oj5luP7vSFLP5e20aStOO5L0GHGq6/a+shMs4GJ7HO24wuj9ONlV56IrWktPclIKWnVtxZotVxNpkvN7iBL+aDqC5BDIWmMgbbVwxuMZkz9QwT8ZWqo/jNj9H4iqXVyWdtpayR0a5zoV7yiOAyWPmpoRN/cZpsQoM0AnHPE8YWPV12kbKFpveZrdVYsqY2G3y9mAExKggeELE0TsjPfEE4rgTQabkwEfQWceY/mWn+6q3J/XeYLFluPhPFA9iZ9/n6QMmVJZVxQKdGTCSQZUVATZTn7wEXk0ngEwUuDcAnFpl4n5iF51TwVDZB6Mtw5jo4TUmZxsJ7ji+5TeW/Gwl7HwjSaCyZC6u4BAkBiBb/U917QCS5glgBB++4wf37JeetKq/RNcOmy6feEHWKrmMX+Nsc+KFgAsVg5Kc4FUJlXL9DPT0cuFCDSJ+zr3iDluhmthuq/w1n/NVC/nyqu2kqzvng3khw7y+kurVRz1Nx8E5g24wMpXV2ZvC/4noWSnt2MGnFQkwCpfshNoO0wM3naN9+LJkMfL4daE05uUBcixTNfyYyjOBBZpXCzp6njkVRLxsE+dEoFvs8gZMGM9Ope/UPs417TQ6n00QzQE402n8WoNnBsyPctlXvd/vBQoIn3YSGobLguvApSsksslMAnsJQFAyibpa86S/J1bzUjULUabmqpB46MrXf2I58lqrkAIC6dzi1vFLBzVpft22K5DXecP85vuRJ154c3ymD+zAGTywekE/CX0ZwOgss3KKqZla5owqCwX5yAm53pEZ1NJZOU+7uUjn74TzEm2N9MoML8CkDjHFELN+giEWbkwjxN9lVEAvXpOyxH6ZmCcIYYagP6jZlLpkc66+O/ybNgLY9aCUxyfuWnqeb9PyOgjue3TjxuRp0Qr8HhmUVcdJm+lloD97g46Cq/kZn51r12zo3JeVCTrpFgbUsD3iLKrsb98PHwyjB0NQofPHeKQRdG0wAgtqQMKSW1D6LtGLeA47N7po4+DpF4zqg0t5+Ya6OjHCFD0cyid4SFsjy8LMXaTBbc80g17gr3vRzhDT4AyXxlVtNWWCw4Fk99HgVm+EqOHtHEmJaRm43ErxlQklARJJE12mY7F2afthNJXknllXFbP4l2o7Gb7jyY5WLY5yu1s4byamOK4lc0vnEQHHaI4txZ9ovvspBJpcxxpCLVLesr+JtWU8ikE7MGfdREMitPsMQnKfi/ZA9HMssAoiZ7OYB6IiVWJ1Bu8RC5pkETSvjWa2CC+g+tBm/eAf7abjUPzymFcksUAJprNyMr9kbPppIGdZ4UST2vA4cVCDBYh69Wb/aHrzozNdQXt2kHRAiu4eGxq57uNS8vfJvdqmed+wYyfXknfKPTcJc3cNDjyxuUr6omolK+TRoUJgNSG6+WEv7xzmdOjyJoXaMLDvRw07nAWOwBqn0S7P5+vK97eVef/6EapOkq69KfP1DkxztghRwKNg325Ph5zGxn23X2mDKLDDOoANZDjv0RtYpXHL2HAOTMyS0kJy2PE7havaDejC9owWPAJ4wkVUj7IqTS+zwggvkfrSvMnR7/U8L2eFshi2ITUdS/eUBHtZTzlA8oUo4mbrMK7e9j2oxwHcHm8U7/BCx3wkZauVG/QBH3Kr4QwJFEv55ukAwBRDg5eltANH5/zKXKDRs6GY6y6waih8vWFmiKrP11zF4MP+uBOmIvnuOV2UsaCmkimpCLdvOZYZdxf+s9jzmZxsniJITAwkrUn+sQjiCagoF+mObKTGQZujKgiOMVuN8V/Ov8s0D2o5PMOvB+/NZiKMVgOrBqcuADFrXq+fkQRQxlpC+mopwE/mSTEVB3F3AfANWDNPDbVQMstBS97sLtQXWkDzAmhj0b7p4mhrAMR8Fbrh8bkzCsBNOn9KM+HfYDcf8+6StZ0W1katd1rYHe6yXeF/5TppzL5+tyM4qTjFQdmU7QEUQUh5GqNo26tcLgswyJVC74ggHlfBMy3WrT7CmlVOUgKExfJgC61Yxw7/qPd+1p8rFK4yzQgmJOxP1lGYbMa5k3Oj5su/rl+N40dOtqz1DEFcRWMW5bl3R988iGTXx8NOo0C0pTRJXFhMshEKiI20NygdePhHObvJnu/iEj/8U0sN9jNB/INdvEK9O66IjNM+s+PbFOoL2cFveJ+DK3U4mHajrVGss3YFMyiD1YdEeCqm12SPC7ChZnzeeTdCYzoLtKjtFrhHvb3aiN6l0mwztxlViuVLX4UdKxwqa0M39ul+QsbKaBHOwz8n6P8hyENJ1Yf55OL3HbTsP4pVt877QwvPsSSjlSeL6bQhYinUJfJ8/jE9Tq/D8J2Ctl01yHnVGwPTvfqrbzfMmJbqPdAB3Pz0kKtbrOt6iG9LM6E205PmYh+0EFRb7BEXfXUnEcI+4yoQCsF9XJJFTH0aTs6mof5XmbZZ3bWwll7YRK0KugWYVXJDZWpv/GgBlsW9GGidCF6Bo6AwL5AZsgUYExJa+rtMGF6E2XpkiwBvRpIneUy99yHNHew7RSxkj9gYzmFHxUVZtWdTQ8eHQie8bEl1MtEuTnE98S+9iDm/Bj0MygWIA9DKo7Pgv9uKkGshmBrPsWtQj6kFW4KHuTzABy/A8uNSMSvPbAn4+0P+L7/nqqaFYswd8PcDVLGzqS3U9wKXBK8IoflD5cqux/vdZyfKlizGs7gpjDDTJZi+NFWMIK5hKjwabNcdCKGgnndYzjlHmViSBcjLrSSNhkJTjBPJ6J1QunpRO8vMw69MqU0TdlvsRt1+/Y97Z6Rv+HppsNG/lZeSJChY8wfVjPK10GAEfh7+3GCqmlgDTuh83X4rX4tCv3Ll+ZYvfrlugtwWe34+kZk80ZTYP+1BMc42K6b8bpOA7oeUE33lzb/yWCaMTuVMphExXMDHoEszjrqzBQW+nN8E7BAG6L03nYJBN3xlEFt1fq9dxtFaU1pEywuzaPjgCphU8XihtFg8b+leZpR022eYi+XeUE+iXCUThQLOqqpUhwbLfnsqu5VHZRqFBDpy1PjK0DFfFKzJZ3f47OACCqvkS6C1Lba8TOtuHW75i4f3xLzIjYzdt+nNKnxFpLkZqohCOP+imWC7QChSLHn3UkmcsJdNp0lCCpu2XOHbCcclZ7LHS2KoaBcYIjBcCiZmW3wWdq2FZizA8GsOghUfUDLUQwwMX/Wx1sectu/Ajzotzn5LZDOpmi0+hKxutfYlVFx9Ii5tWujtQ38mhzPXG/vHYSGdJ+l/nspaZYW4qqi6PTOYma2DPfMdeBYnSt9O7YX+K6N28dLpV3drweLcVRXOe82W8QaL5uFB6gmGV69RzDbzZCfIdCAz+CN2BaTXxwIFbXUPICAAhLdZ4Ro+Fhq+TB+Dt0vOFbSNLb5F6sBE1Fnej7io2Kc7+P+OxfrdmXNMFMg00D+R/LvU1qDayGOo04Rof8HXxWaAI9fbi4RfgCsZ7n3uOIF3SW5AWcnJ+oanzAp5WDqHGOqC9XoQqJPlUmiSJ829sgBv6ypY9BW5BB7sPB2hKxwqa0M39ul+QsbKaBHOwz8n6P8hyENJ1Yf55OL3HbYup5K1bwsQzruTgBLmLTW4Dw66WFZCQTl/ouDB5w/QAW1zB8p1KnZHLLIlBR1V/VrkqAn+IHPYZNSHW5cl2XN0A8UmZrYXHuF8n5BytioTrGtS9dwTK1soQDDuv8Nt+DoHVNOWjhdKHQ2kCJqoDo3SnXJISMcuOhrksAkss02Gx5A9AibdcLNBA0lhW9l6zs48usOK1/cfQGH+5fwELGJp4/k6oVry475C1ueBRtqYg6aa/KQimyyCDKzoGvoahIjp31Cip/6sHDqwz5+k/8qWRFvw0pQZNRP7zyKdAGea8r1XFlx2+S7xA+sxeizSFowFzb1cCDgViABIpwEr6EsrrXHAF4dhg3U71FuNHQ21RzBdDpTjtdu0ttM5025nArjgFLi9vHUyo+PYJP6SyLo//kotPZFTInmAWrBIUEXZ+kHB3GZNMiIljni26aCtcOaouOwrO6YCB05Pu0hyCljSPQ/2rthNbyDh0XsZdmeOLF9vXGMbHjCPcwYXQNx7Xni/tUBr+s1KPyJMIIgDuniqqvr/cK9O5U/2eUi+36CcIRdfdDxlxlZOdw2nsoENE4xakyP3bley+ZimJ/i8zCQU0KcGiYXbffNphiF6PCCBvzjoCIZMW0BmyikYHqbkD/m3ZFaHeJSluM51x0prm6QKLpL4Wo2lhWuQHZzOJMZlvv5cKfPaDnfGLuwinNyYbADmnpSeZVdq7WvV+fYdfKoEE+oBUave19ZP3KB14LNBOwYYrlYtQonxwibda6OnZtc1pKyY5DAfD/L/1DcFue98jGlJIbcXXU1rmXEHG0CcPFbdJx70s5D465GRUcSuP7eWiTK8CDPcjVBishc0+w4zyr2QCST0Ndv5FWT8XaccEAb6gKg0cJjK/ZFjaEVj9Y3dZM89vx1u43bbTJremJnNo+4HY81MiVrtMUp3+i8W0HNpio9ai9f2zsYF30yyPc4hjeLvca6ayhUfl5GlDuCpKnhjn/mNlF5MkjwY28Xy/0+G3dnSY9hepsltQfSd8h1w+5S8lUfyUcPZNp38rn37kr34aE9MAPejWEZOEI1mcHMSgQu8+JFqI4aHxYe+yyPgLRTD2r1Crd+0b1RPOn9TRNpHXqxxNSQaEsqqQYEN/Pie9Lmlg6EGWHAmkzMx2DZFTH0aTs6mof5XmbZZ3bWwll7YRK0KugWYVXJDZWpv/gh61QRZrbvG4fn6ls+YkUlQ6qdDKfyGBYvy7HEb3bJzFWIjDctcHzrfk5GiNw+k1YjDdTFYZmUNZcyLUtxdiZTpKgvDxAfmMBjOxdGoloFXodnPJESe4geQQANVw2+uswBGL7L/H/vjcvSsWAVVYOFWuCIKI/zlqKzBGyMZax8RyRLylSKAfsQJGvhyMDxO6OjcpDNtWKzXgmrLRsepTiPrxlZ+Va7WvR9TjBqs8i3YSdUGz4ryspmvsfeuF/egFToks0fHp+hRs7YXzxaz1f39y3QDVifIT2fx6GzgAB7nb/jd8mw8iPYoqUhmi603nne3U0zrfbzu6zu9SsE3XxVf21hwQxqmGv+CfTYqD3EXcBCdeHpvMpnsAUj2NSn9Z0qX5Rqyxqvg8sZW1a1WG0336Txp7TfiDLfnng+2um4m51B9sBnCIQtDKl065e12zV5U29+TU4M/zCJHLu0lFO0rHCprQzf26X5CxspoEc7DPyfo/yHIQ0nVh/nk4vcdtOs8hVA/WMNUPFJr3Jxxhx78rOH58ITA6YzF4cU1rBM+AVSg39Kf6aNcfy5SKqCLK4IWH1M0NXFx2vBXwlGqly7zgJMHVjbtmK5Rc9yk/fmuTsFwSoU5J7T2viO2K2e/+yeOg+Q7XsSebPiLPoujSzkbq5cvXnvzS25aFuIWhR0VBy+GPFuXD5/QFq6NlF4+D3jX58qX/RqWrkFFnbHGIw8tmOGBGHi1yEirbnqGkk9TUc3t19jP+coZrTBJto/pWzfh5w8bpkWRZydCRqrh963yPKrhGEEDL/f/pWiLuSrJpxbicSvzru/euk/Sug+gfsLZgjUbKnFFv2t+xucbjH5yxFU8ponYv9eTpBAvIod8+W2MHPs15zFLddT0AUrwypIJyWtPGbWqwa6Fwh9DITFXjSDTAXeI4ABwwdJhmVPDPfMdeBYnSt9O7YX+K6N28dLpV3drweLcVRXOe82W8QRRkTqsynoIm7Z9ltLCxwR3Qgocqr9u/S9SwaiQ2LamJfiPSSBp3iNBMyIVKZb0Rc6PyWLmi/oRU+/AmQ3FmqCiEH8R+xyhPQMz/auYic2mAZ6bY58G87qrhWM6Q9TD2p0hV1HWIkETiomVkBw8k8R2PZvaJbRSuIKh6qAI1/9n7vl52jtHLPZ1vgOYSdC7aKqCHmo8WurrZr6vTMF37lXn4/bxFG/d7JMwf8BDsDUNbmkhb1tEPOZ6NP5HN1igL7L1zxvnQgG1k7+jdvkQ2zs+mkrDa/unaWpXDQPfW1CiFZfUq7ZNIGBOV1IhVTVRZcHuILIl6Md4KqN1LU3GTIy7/hixIMlLh8AcWw62u4xhEPxaOXVUyCoWv6yBeLyB0L1g7lWRgDCvwuEWYBJlXVdWH79du1ki8SgU9tAzH0E0fk+gSOunVNm1N4EK8Abtj+tCDatpLPGbr63qJBI+cNwBpI0W+FI/mf5WBrPeAKcKjPiVxUvA2p6rySjfkAxdS+5ruEQr3u7QfF1sM3Ame07soZvzAzh5PD9YkDEAj73w10WOVFPIaqDyo2nd7NbDOw/BqODCXoZ50j4+mWnN9u4EghX+BJgfHLNup6BKuDU3hksceJTmvxM95I7P/Q4GlBNsVBCNImRsuscCsc3/grFrJ7BMiC8MFS38+zZHhB8qoU2VpsLAeFZ1C1cfv/hfNADAor67OcKJOEc0nQstJ8ToTZDkyLNhlr9zQhpIWuGcrIJwRUGLOWyf7s24mtep6OfP1ENPNfp99NZ9fqcsIiEe6DTLHQTSTNBmITODaOPw5rOdMkH07bHwaPYGhYQFc06Ze/ggIwANLeoVDR5BEJf4YTN0Msc2YJQkmzNRCrVtVSDhu9+OY5ctUpPf69GkutbJepsC6++f9bsJOvxYwYIqa1Wt+rbSSDFwVR9hIOc7YPbR0nI46LxdsAGyVAgmNQfL/2iVpNLoxdoLc2VWhx8mZ0cCRkpk7Luz7DT7FDv+9At5u43GHDYk37FEimck54h8Cf3yMO8cQ6WZkLTQFDCL7QMSWAm1xPi/j5dvASXPzo8bLYmNiOavc0ywfkBxA0J1GsiXnhnkgEBSs4V2/tN/Xylv2GuaqiOj3KVUnKlk7Ia+Pc6ROTzhBn4EltenM/4rVVPH5BsDKBATfjvUh9BtRu2JYkwud0LkVk3lVA4rDmfWQdeHITW1qkBd0WuViggsdStxX2Uh09akEpG8TmAPZ4XJS5rAgG8Z5sgCwQqHpPkJpmMLFAHEx2HXQlE8mzTyFC7e7T04tYjOgUGde8KZ4gLKXdgjdxzrYtRtmjmvEMfElhsDi1JP0yqLfSgeZckNzAA7MgRGKHOxwLhnuReIUs/mJuqQBcXOY3fQJfEsIB/xyf4FYJ8nKLhhC4gcdGgTS9xlXvm4EUQbkTEhtdS9KWH6ZfHH8Hq4PGPIo52EaH4vE7oha3DYKqPSbS9RHv4otwtHKDiHtddBDrMnNDIHgJGchKaUu+WoskVRhX0jwH21gnzyN4T9NWPgGNPqdbV87B48HV/meldWgnDGquovcUpKa5ZBUJyRhMqfMk+GFw6OLRd1DyBgDcnBD+nh+d4L+puK1saHhx5zQWrNaLhDHWLTLQdiMnrpxH5iOsGBd6hanI3mKOcjHdrti7EGwAooZPFmIzpro6rB2PMUicJjmMRvBOMN02hMszI3HoVdFVqRoCba/QDGmVaMvYwtvkkPQ1lOHkHE5XZYY5n247DGms3lMzgTaBagRKe6wNthwnElSY0ETc0EMtgXEoa3nHuT22tU064NzoTlP5qOQp+b8OJizXXYAtY2RwlJs99vUPAZygraZt7tIjW41PA5JbIISWCwYZlHLtmAK1xtG8X/CbSmW26CItkk7mRKijIt28LEdBBEUaQ1LSwZJLQKVrXoE84cJlLzT2poxezaBsR+0+lGrSMr7ogiJ9KzmgIwKWd/FCSuOUZxvOygK6y/jNMqva5c1SXTgzHkQLJWOiF2LNoVUhYak4ndBTUfW02LrINCGDTNj7m6DiUkMoQ44xx4Kd/zNSx6BUgXZ8mJgM1DWjQZ6LRU65DqLJ74A/UuaQg4AsilhdRaKgkh4gZcN2eDwHU4L1yEPDoNIdlb2RZaAlns4I2qFBvphhC/IieVAcTbE1DKWVkmaCp2D8elvO95HgAl9zsNwMACvNm1q8c0IfUTROf1tGItgvHfYTbYPACMdX1W40oWqkuZS5UJyFH0U9gzTp1u8XHxLk2+Httk5o5TeGFe3i0XS+tpovOZIhNdnP6bNHir55hNZrrzt/1+ms8zMXmGNS7BmRvQ63jcXOnOXC4oZFYZw3+3dJFGXqoLBWPrfYnoinwi+OL7pQ1DcU/XQg3l347MfgAhjmgzPfMdeBYnSt9O7YX+K6N28dLpV3drweLcVRXOe82W8QQBOlwxMYXN2EaDuSDupov56Z9yLiZ5qY6kVuGU33GoPCv+2pq3sKE2I2mZlgMsJIhjyxRhXutdYVsfXOQktNBkDnCQ/MINSyrgC/AEf1KJDY5Vcg48KDKowv/y6LJoiZPC/4noWSnt2MGnFQkwCpfshNoO0wM3naN9+LJkMfL4dhRSWvr80NKAaWVueMAc9zbe5K4bW/C4ZWxQYc5D6pDfKjxYFUrt/rkn/iICISnOkI+xFzuYXxJc++shVsKKT/2/tDtaNzBz0f7/gxgLorMFWKmRO21IxzolhtjLce6YD1CO4jSkHaGwIDPdlA9ThK13mOQX5STbDUclCzD2dD9tKxwqa0M39ul+QsbKaBHOwz8n6P8hyENJ1Yf55OL3HbbHLY+BS5qndTU+KgIoH7+y3O5oWCc3Hy8sdOY8Ajb5fX42EO3zKuOUYe7tLUdlA0Y8EqIkTKyHVoGUMrApvsbqMRDEGYYcfHO0RlAMZPETDi9sr2zPrdZ7G7T+SZsf6zsnjoPkO17Enmz4iz6Lo0s5G6uXL15780tuWhbiFoUdFjHiOoOV4JQK3hk8aFYhd0yA95QqJGMf8PvXvt4AwsXZsw9DW7Z1l+GISyOW7Z1vgAvWCVPYvVC6/IykmWQg8KphqMt2Yal1kO9PinwhGjbWjIpxJj9fgmKqykt4lqcy1sG1BEMKiy8cdIvdXPILp2m179mk4UN6r2DOkJIqaTf5qquSUnw7Ei9ORv2X/FB9TjP1SdZMSlgqJBsk9XUGsNVEjSPNoSVthl50sxXC+8nTJtap3oEK/MYJyUoAGsF8sz2zWRfsQK8hG/362Oxg4n1us44U6598Fq3VyJNY1GoCH1paYRTJWGSy1kmsjCMaOYdztSCkigWZk9extaK4OpV3JrMRAFrwW7uChN4jU/IFuvvuMnWYPuXKZfYQgtHpT61ccV9Uos0bBifzhqrOMr5CvVMMsmX02PWxNouCaZyIQlhKmg6P5N/s5lS+Z/PwWWgqFsGhEVnLCtYB78rtUSZKZ1oesiVFcJO3LQAHgddal9hbu3Rciy/kdGTG5kFrwMKL3p/E/MiK/Kq1mRASYNI213efvyQ7UkCV7jrKtkz4Zp6JffCpTNZ07V3SaUIhNaTqvC/j7Qgh/cWsMATU4leHCHMMx+nEX8PlQrPU+QTEDd9oVnz6iXgjPXRmcCM04qd+q38YEEBSJp7IkYLbvRl63fbW4v2jXv7Lylr6rI74Xb6aHCzKBnhKnE//RirA5O2b2Ki90HrENNtNtPpSTGjHmrSixrN71Cuq8os5tkwNKPEAUQK1jDNefZqd7JshU7NcbkG2J8GiURr/1NSMy5QnqaB+bQ0uQ4BxZ3zVkyRrvF9MVfMELaEZUzWW/n5o2YUvXtYUWO+IQcDEFfFy1Rz0HJz3pPTk4FyKNvES8WWhQ/MTP8mvDK8rTt6clYQxBf153xDODROEiOoTkVG44Ef73vNmfb8+m2Mlc4p0nx3lzxjRBDT84TSfKQwX+7E9TqQZa/r/5xYUdEF2nYzzijFKlnmrEoeUQr/37VqOrU3XQ3r9hxcCajwJ5jXUpHNog6XPHNlCHkVtzEdNsxlxkRTrNYT8JHsuFjsxx+DADzp3PfMdeBYnSt9O7YX+K6N28dLpV3drweLcVRXOe82W8QXOukbMGPU0A7EyMr6PWDP9zOUwdRtz8rNxS5s2CYfJsIjislPZmhu3p5h4Oa1CTIycX04+9qfPPyfw21Mu93PsWQHTxZjXCU8POuFjT+3j9Gz85PDwDUsvX2XJAT4/aZexxYlRZUlhOpAN9bAx1U5xVBHsA3QKrVjwc81DaZsAJr+Au5h4k97kGuq8OH/j266enuilcK6SH4IAwrg+JAZEzFEe9dPW3h6/2oj2moLXTX7e0xwgiaOQV04XBhZUCNv7HntU9iC+Avq+At7NzCNMtQOi1Vh0wznx2JiwA+mFxJyd202Up5fY0vedg+EingrH8UpaPNyGUGFxRLqII4vfOKTip9VHxm6XZi8DTFCTbFrhklCffOSJfOIlrLS5dyErFbKLHtT7Nz8EbVee8LjYFduYRkIu+/kFgamhatdfwhKmcjhhluKFGfqVB2ntgRUDn6H6quY0laQlq7YUDMPT5zn2KZihjvKCTMJKX5NzYePC56PGmO7B/dbUqwmsUBw70DSP+xpdX+r8Y713kVK9At7ch9+oXCP48D8d9z9FqkSMEn6n4uVo8pg2FNiEf5lNtQuQaNT+S5R2z63MhXZPKOGeaFW58QlMhrNwsMmMU7IGmRqJ+MqW5Mq8Tn9JnjONcfIzCEl1R30BeYf5ByXIxtWHzplVyT/hKOWu7cfvPcC1bx9F0zsrHTdkJy4PatBMfE8ubRaEFvLXapymU82C1Vu5crtst5QwNR2MQ+ioSZbTBOadZCzQ123niegT7sibWp95O3h8hA3ugAS22CfG6qqM2GwbNeL65JP8g7Vw7oYAPXEnUHBr3BSKLJeYDjSPNjEsW0u/qUU6TnWxDFKR33oAYGoWbMIIvXXWE6Bqqgj0/vdGbRISqmGpqjM0Qd0WwNwJzKh0sijpPVJ9e1egZJNHHPfzYRS/wdTGbI0TGJ8CXwRprtKph85XmaZ/Tcc4W94UqHq5JwoxgHyrHB6FWni8T70ld6fyiEs/CnRDohfVXcWpgoMBvrjDOz4j4TGDL212S+RuTelXB/Wn5fwK+IIrhK1VLcUVEiyUifZFdhH3+Ri+7ixiYFaLghi/lhtAystWBCDLyK8t7tGeHm0ce5VSlEa0amcDYli8RzH+JKqD2AHFTxnNSE26Bk/X3n/OvbIlxdjUojo7EiLaoSp6R88lhdF1OzB/fe7UQasGQ2YzdINcW//pM7GjrbwklT5tNSLif/Eb0YhSTnQTHPjfJcgPPbYYG1okhnbq0eJqYTMzrT2yPjZNsdp0tjL6mGeYk3YTz2KA5DfiwtabjcdLi9rwI72iBMmVNZVlHxk2juUe2E1pn2mKY+MMnX/4ey32CfRxEGmNFac4BQgbg/p9gSMgUI6aUKKmeT000qLufptNHX7JuF/QTo7m3CAUxh7EfpmYJwhhhqA/qNmUumRzrr47/Js2Atj1oJTHJ+5aeDuFxeBOlg6tf9QrWQ9/vEkkqs06zulwKmzKJbzn5aV3399grsxRBr73QqWsJ7OSZfMtlpExUkxdBvBl4dtmh3C6Czv7KGm4XISRXeLBef444bEF+sQWjV9lqXgxzzVZWTvvtB55ULanC+Yvk/oGPHHjjpWkpju8QHpsfjMfFLCQMlkkVuwEDzfiKWlDonV2lf14TMrPERdmXuvHXLMGXZXLPcJxDujXzzjCwy/2XddYhZSe9vEfv3Ytf1eobshHs/dxz4Yq5hKtLjDgL3B/vAIfbDFIEDn1How/NMEsAX1Zc7nrxoVWstd+mQMrE0D+QH/bp1lbi+tOndi9s33l5FJmK5tLyi8cAca/0siW/TIq1A0nKCH6t0ejJPgJEStf6czJOYM4JUPZq2sOuSqDDK/sMpLnw0ohp+VZxGpXemruB3RN4Go/JkWdvjOycsabLdM6TMmZ+sWbY+VB4Mcu7KK5x9DZqoRPO4mbj+3ewYYBnz770hVEDBA5TMTIm9t5gTqaR+WeLLEuWHe8I7LbGZV7GODwxQu3QFtliO2+hZs9TYyDZtYWRxZf8CM80ElUqIZVgL7nBHC2CWmo2Fkw5gPjJ1r0NmVbBwx8GSoHPPRVrbYS6/z8yKa5yzdSm9vr75VnInam0HTOqPKVUijo2pAN4YpyHbQSrfEjI/6G04gouKiqBTfF5t7awdZ3j0VFkUr6OeQYg6FjvkXxF9hYcVujkuYSMeVrZzppd3vIOfmQqsc4JQv0csVz4nyfsV50cQM3As3ymSo6ezhfH1X5PFxwaM4RKLl0erEGQRz2zixAoFYx1vyKN4OvK4FYayr/gn9OvO7cbyHkt6V5uTEAwq1y8dsJ5nwyu8SQITuBJasWusdQHqqoVokcdUGov//ImJJt//Wp7tdD2cIuDMlJ0Mj0TkGrHDG/BZijoyOBy6Q4lXGvpa7svN0smCnQyIVEoIfvMT39lupkRdDY7ZvDG/kKEdU8K/kZqLOvcbROH96/brMyCoppQlWPRmsXX4LFd5rbhtVhdx4+suVL121oR9Os9WmPGB07RCwZOgHgR+vl/GNyYHUez+1H0ZpcOYPNkIabE8SihhSPXhLXs1WQ2fB3KHcUcpaHVAmgTjoE/ZSoE6z1f1JpkRqCtNDNJ1s0f5AzjFAhmZU3Wzcs4XHX6Dc7HQrhCxo06Oa/pewPxL51+45+VG0nOHizo4S+QzsEjd/uW8fL/S5dl23BjwGPPoU5a/b79vllN6LO/MlaOVMvF2NnWGad1orS8aFRkB6GO0QZPKAipt9vBAsPXZor7DVQ7ceWRvGBj57oJSfaHwZfd3rpr788m8h1dCCxSxegbUzKgI/RWkI8QIapqQ+whrbzzH93DA+cViecVNOSc/fxDi9XacyRLjEF+8obneHQsxil3Ey0EUDGDK1yiZ3Q8VDvyQWw9ulBUtmNjdVnopl+3htXxqlchFDdsbsYwgnR2BAFFeq974nZ9S/SA4vnShOi4g0e3dYGX2MZy1ID7TTAM9zRWCI56G3F0xwt8CXSAsWf0LiFckmD7pA9o8o18tvEiulB3E4pBriUJAZPjI1ph3jME4R34V5wD38pVOAkZcedLj2oYQU2oeHc/X1FPrxZjK9p2gRpLiT+uupT6Cr0qi1sn5crK8/LQ5X0oSRQHZRkojF+DWjdqyc9P9WeOFXk57m1UuJLBaGUmSY8qBu+1VLyXkQtbFaMqXXfKLezeXZtHEA8xp41RjyFKtaaZju58VVQM3s+k7xu8Y6B64HNAiQ5ZJxELLZUJXwkfL19XYdDiglfKVct+GIzi7CvLpyMkV7sAb+c0hvfRwYjue90mAIXmTq7lCsVeLqLoayY1fC5sK5sWKSs5kURhsJ7+8uVPlCoYiWkvCXi3CJHOavx5V54ZF59Rd9C9T519t00hU3FZv5NCt1fTxlH4nT2ykTj90sosYR9Rbl7H5sJ0E7f+TFm4rRgVMvBhmXS8He5OSvkbeYflu5ZJvfQ76pkkcTCHNa6MWyLq6c74nYQX75walmRQw/w542GW+iooFMhTK/P+ArDQvhJ6nzw/0bc2cL9WX8bG213VfJSQA3U00o3zoUvLocIulHy1VpUXpRAUWoj00ncx1BTUeyCHxJNzOBhFiIOQDE66ysL+Noszj7BIlcNuVmBFhLHi4svFshgk7GDbQgOoQAAm+l2jekMFt2pKVE3s4qzfZBlUgOc4SOxkdIC9Trn/NHH4S1EnUYUKkmZxdplStxHZh1wfAKgQNfJQvOVrWG6I/c6jPYmP2iZEWm/SlVFA1f/3mfgbZTsyxXauEgyoWa5/kORVgBDzRXLkUmREh/H+xgkX6tjph33EJebqdpVSnHVhpRkbSi07rmpAv9UDiMXomnBpaHhJZHj0VPmmrdF/UlFxb7pyC9uhiOstMVhc63+qYNBafj6NV2dOTAfMnSzSC8o9JrkJYP51ceeSJK+ZI3rHCgzxQ2J/GNyYHUez+1H0ZpcOYPNkIabE8SihhSPXhLXs1WQ2fIQ9IxD9ZfelKcikv4iE93tYRBpQmC076ZtGPpClIfAUstIzQK7Cpbo28jG5NXkQwNZr8uAtaKAGl5hI26e/SWcI46vmlH/vpqH2kJJHdWLt0uZWLkSNIlI6OzR9I8nZhi4jApBYZ/HjkrQA7cPLY4gk1/90SmsSoz2J+zzWr/yDbA8lA5jCbTDvSKGloiXi+YCKo0bYToukep9xR9ZOEiV+4N6igSbYhyWnccq3Fy2aTCBgtSUXciOYtYrz7PKUwb8y3hbj6SCWmulFtS/EXMNLTAXLWS39AQzefPy4hihwaBZFyTewKNNy4OsJ4a1euOusSptHKDrH4/zh0CoQ4mCxH6ZmCcIYYagP6jZlLpkc66+O/ybNgLY9aCUxyfuWnt7AD82tilEztefbuhyTFDnY5Ho9CtfqfI8MHosfAOxzayrWjZNeATez7jSQGvRXEmdAWtnz4FkMRdchP28ggsDP337vHoqaLVOLxjMGMKsyVvYjLewFm5UUmHVEt75bLL377SI69Ro7eGr/snStJ78VBxJvIGhH2TxmuHmuNLvuCmL+9J4WnymtV/m5En9poDSSkrQK8TtT4YKnNTUbs6YZMC4irwK2jwqH2I3JXG7AkYKZL3VxZNeqVtD58E8iyXwKcrxVda9vhJA3/MMqWzOPd4MKkA27YXjjlIdi66RAELzk+CM7zBtGjZCDn5beOvonvtJFWKB+lxOddl8OBmB5Pg74M7TzT5hO+/Kt2wUJYYBaPwu7XVtX1O4W2IY/0VQ29G9iLwc7JghLANJQ9wsBdRJgfXT91CrUUd4BENe6X1P3RLs2+h6Wu4qWykL+miJ2g/7QBZKuGsTDhS24yunkblB5nk4e2jxh3V3QF/Ej4Ay1rcH8fkMi+qnuZ+2c78vGbUvJuvbHt4Yu6bGYgwmt2YDf9YEeiUrmLNOyzC8ruRFHfN9/XjPDyqgeEXxIdIrXzx6Ida7lOKd6KBQ177Ogm2oKZ4onlPqN2O62qN0y0cx8SFAoeBcIFp7WvmC1Bk49bhd6HbB20uPi2eYsFRuMpnsjU3Aru76vapGW9TnTlIJrkKa2yTf6Llo1hrEM/mcToAKBPuLWaLNQItywlDgugWq4frcuwRESCTFkJVJSzTHWNo21VTPJZio7ygM2ofGCG8zaYBFmA2t8zG+foloXSTG+zL01eJOqZRWLDMV/4f2jE+eum6TvROAvXHqEeEHnoRj6+mAT/sSFWrFnhZLIEYFqx75PldVIX+vY8ZJbY/b1CdVWYKa4MDRDOS82XnPe2jB01KzfhcX3sarl//Qyeb7fxvByHqW46ZndE1gGQK9MxMqgKEhwXY68Ao63MjmcoRQH15yh7SDp3K5a5waFjEzDQ22uYbswojSNJza6O6C7OhI+yvV3sZ2cUilg5kutNYAEzRHUWqV8n3CnL5SA2gSBdoPo0/iBDCfFcJeuqPeWRwv8hNRZ4yhBMkWXqs2g3elaMMPofH0IsCX9zATwv+J6Fkp7djBpxUJMAqX7ITaDtMDN52jffiyZDHy+HQntykolzabIUp8ymzpNP5OMGfUROekvtM/JYzJ3rgrXwerbhBs+IsUcila3LkX1MbHJ8xNmeD7C6lh8W6J3oqF4b3bxSL480LYgLX2SJQhyr6rA/RKmdAsREQWHnZwSlDYx+jGkZb/WLq8NFFgJXqEl6ZHdFRBSvDjQDEI1pWo4hoEo7KT98OaT774m4VNw2SP1bgSYG020xFyOdWg5Ln240+PnDt7cmD2OXetmhj/PKtU80/du9OpnHy1GyBPApp3T6fX6dTe20Mdxyb519/sZFNjebrcM/gxOlF8hOn+wTXljguxfFhVJzyblgrZomydc7nrYveVZlfMflWpiD7UW/VhjyQccwsIS+MQte3rLCl7K2Ui9IRVwAthLZnnKaty4ghzqti07pMFpNtTrDfNDzsk2UNn2LP9Hjcp726Y7T36OYcOgg2eTWslDUmhz8FR1b5tNOZ7T3HfhRZQsGPi79oto7MKeTy5i3jmojnxeV3Bra/0o3deGwMSREdF2TfAEXXhPCdCZxOqk4ioXYPt8nlDzk6rhmF0yf627BNFq3fwmLb85PPqxEmPXR6nmzwknu2JT/9xUefvW2AWNTQgG4I+F/nKjs3pC5dP8eujAybSPNVvkJ3R7k1WXooPT5p5eWZl+qqlwjlnb7TlmFSmBb/x4AI/j661YGpUsAAWy4reRuh1bmts5ZNx5cb4RB43tYTKkK+pWmVtsljIDBMF6BtYmU+QebpsXWPQIN62IsgyhuhlLkzvc/YpLFAWlp0fkypiReoBK8tTuyL2l4jZY4lCu+/AJZg4I0Cu3P2SWkroaLErOKso4Fv5z9s8iCKx7jiswwbW8AgiA08jUIdrOllsGsYCPDBE6XqCmO72cZnAYXBKPMbNxOOPKn7f5/jWxbAa7h1VduDKgSOO0fG3lIzDe5UgpTDT+8cvleSL/RnhFFfFjTMwzKg5YdjUca+KThusSuclUDHrvfBJlakLctcaGdkkG0wFGTEBy/GyA0uE1qwlu2idVF1ntmDOcDpNGuFtuWoVQeKWmsX/MsJZF5/jnk1eWjqjqYWtwaKAwJV2+XvkhbRfaMBaw40/pIu1bZAah0Z4JXRNwBQubt0ePY69ziHBvF+/drZ8y/XKLxyQVuBbvbh5I7mA04lYTwHwixFwXcfaCxwSyn75wgQ8/2QRJqYPIpkXVC+zsqV95Jo/EDulh1oje5NE49SHvZA4Ex7jeCN5FfVxIuJb5V7Fv+pxkGn5b7xmmFzUhArkegZqVhXIzcalZF8u7ncBY6i6/N0culQTzMWY0y2qNobtef/+qOpLNhjJi0rDbKmWqoWWm86ncfhvI9X/n2RsU8QLoNQaDKPBy3hXv3MqQzNSY3NeVyspdz935sNjprQxXLLG8238omakaapdR+QUCdmIXg4EAWD8FspCHEcd4IK8YigxfMHg3KPIw3UAGmr5dS6dlc7fizn+doow9XsRMg/HjUNB/DI4E1YCUaVD33np8dqKobkYIjRDYAK/SZdnl16MBtN4pTA0nbfLvMc63z6DsKOHF6VfI48hq7EYZdHq3uX0WablXsdtSOqwwZsa4fxjcmB1Hs/tR9GaXDmDzZCGmxPEooYUj14S17NVkNnxCPBy+K6A/Xd1pi9EER0MflO7Gt0r7T+E/XbpVG5IQWhTga8wMPXQvhDka3o+NKpyeAbvfZa2idp0xPGKjGXIJfW8YaWvB9sy7eSWS+1d8Aab+L/NwpVUJqTLbigEZ4kHnRekhtyBHdMPsEthGCMH5Q/4FFqCxYBnjOxBybM2cvXML9tCdvsmUN4k7U+jxpDKCvVVPJuE233k/MdHHZJ4+roodtvfU65cRpf73D9UPlr95pmiSMHHZDThXqRbKi0544KccVSv3CLaYTymP+QRApZb0RRDK2yd1kVWHjG0j3/9BbKI1g+SIOYDuzmqhi1j872qH69RbR9pLmG9EEovTz3zHXgWJ0rfTu2F/iujdvHS6Vd3a8Hi3FUVznvNlvEHddNpHMcrQL24rsZBs+Z9AGwlAzzOjUoTlCwIA8QywychkhH2gZwzwgaoy9RyUSXphL+mtkHgSSN4ImjIqA9s2PKC9nsdguJsgIUFukeXC0ZPfr0PnnEGk35tdg/FNnc2n8ArufrNIdOMSAD00eNp1nxA3+6YaWj5uVzCHyYwa+6rAaHbmTsuN+fXNlb5a0vs0tgzDVBzgxRf8vZSdC6DRRzP/RzZX+s1lhFJzNpd9BLIouwU70Xq2mLMQqvrOkuP9/M0HeVVBXz8oxMD9d+PaWpkbAoBVHcXzsLS464/shKzQ8/H5ZsO4f3qUTwGpqsAOlTIU/TRtmEHLi+7Yc+2R/LO6A1k1dOmX+M4ldnH/j/9wYz5tvaiC2W77chJ+v3JMMlCnahZmJcFPOTdw2BeUiyTxM3ch07TShvDgj0UXI2e9b+lsqTVcLVxTjd9fuxUtuhgWzuU4NQVhCN0OFb/EDV+62ytcwWDQdBd3m9XOIeMJd5KtvI/Nm0rzM183Qf0NzBVidDoVkiIP3lcWr9H7u20BX0hMWkLpqcAtp3nxbOnBUVXNMIh3XFX6jEA8KW9buD/1tV+NphLEh2N5m2WnEbJqnCxK++D11dPOm95KPxaxA5fBWur2uuEGkfwHpoQJn1p/ILAji3QM6mlEuC0CElVjAIhdTtn7HFOT8rxRn/wegcDBXWsep31k9/U9tfyBYNs7dJN4Ll+molewih1WqDB4fAzcaBQU4DNg5MQL/JLn2mBrwfcDuA6XP1Obl5gk9UBWKj+AwDY3APjBYBxMbQugQB4lfsSUQDeqOM2FCsFgVbn3mjMhJYrO5zKYJRpbHwGoW/HUKp22pxk1AsP2MMr4tIFV7lVpaQdU3MeTB7GomaMc9vvjnJ1xnJJt9l2NFUAbU+jO5lLpYNlbkeGBRyrMk2m/Qk1dlevLZ+tPPS4Yry+tv1mLVUYf/sh1soHmWItseKpYeFsYL7D/+6xnuF/MeaEYXMJJ6gh2baVq+el4kGarrrEGm0sO0/LkGjDMhcmDDnbcHPpaCLx2bcHNxSDjHIZqv/GPYXFWVae2yNx7LHSGO3Oy70sVegveZczIbSy/YWQvFevfjGMsb1q21LLNbtQRp4L9Ww2dxcjfOFyD0kHitaUQZVbuo6rknNDnnSJJvTQLEB6SLO/7eze1NEjPnN3o4IVRc9UxBSmFcZv8Fw/tGfug9+XUjDyqwB+PQf7RTzStek0cvyYmDKGaZuZIO2QQ5CIg7Vfjz3fgwBFV1JY7J7S9mAUiYQ1LY6IrXdKM7QIpkEcjeEC6f8s9n0PFG9l1QFPXdj625m2BMIoFIu28NgB3tVwbb1Mz+FISjSx/O/0t1zR7t+Ta347LpNZIoqioTFLx+32kS7R9HLkR6jpVyVuMCh9WFSn8Bc0TW8Z5pLwGUqk0E2J+rI6iGK4rARSTvlkiV8aXwXrOI3svB8p9hqgp/IOCn1MACz3YYEc+/mNIeCMwmaC3djjSElgXI1C9H1yxpZeeuc34iudpwSUam69iOSwwN5hQ1pNG+9JBi3L0Wdu5T5D3rulargpWbqSA0J5J6mNCbsNoWs7DJ3ZI/dQxB0hIfxdGywlrKVWufDaO+eN6iWYLlPLPwzMfTLZvYAynDxDj+ICLCcVtF83MOznFIAoQ/go9pdtnM1XfuAVi/ixNrwlybT8SEdTa5mS/LlIlOswW7kQopRRie6V2PH79xerE2/vnMaMp7PxOplOEbHg8qNwf8mJuGmB0EndGZoRTE8cBA4KLoCSHF4DOJ6mxUUt4dk8tyKTQE+shRvacViyp4XrQkVHWEaujZSjjvLy1VUqk+aGMECj/tlNukEA1lXZo2QonF+26HrazhK2UeLO5qG3QwBh+ituwZsSLnAeHyhv0ZXLu3OnihGYV4MxnmUUeefjfvfodYU/qrjf6NQ0MDmHVjl0j4Bh+BKDAd3SrrBYrfcZsseshP4gIWE5KtoJ3c22/hHDvrXGp570vHyzvbGrookpOAmUlGIeiY65sBdyHBDREvODfep3+HjwpgmiK7yXw7oSq19fxeISpE6bQav3IYGddyU0/OmM1ofzNqoA1mOe+AbEfpmYJwhhhqA/qNmUumRzrr47/Js2Atj1oJTHJ+5ae37bqpz3MeFbhlOuN1RW/ufhjkULvT9hRN6PjdttS+e3ZXYF5E3oT1tnW2M5Kov3rmKhcpw/6lBmEaL52+N8uENXNGI/37R187HKVgXlsGfSSLEea37hNr9IFHqaahtQM3jO970Ycc8DC7rNI0Y1Qzx+2vTVvIX4/+jhQTH1N7+lBtgX5ODZiSIf8PKmZglg+v+GKXI5eu6IrAzu6sUd3W3HXWBMHwSYGscpMhTB7G/01W0kIXHvDkz/Fz6EuYB4Tk7rr6JiStgEeX/9Z1eH4XmigXxhltzrRpl/h4gdRHNQSoGnnCCzudDadEIAed8FGGHnNk0ijy+T3XpEo948C6EzWgcRqh0fucySwAYVpuLoB14mTfku1bY4cLXMaxbsc3Pua+ViSmFVT958WSZkefRunt/I78x9sODO/UBRcsck2RuLrDWGGa4AcKpkKfv8wdpLqb1gLWCdBrL9xrYWLEUJgJ7p9U3Wz3R4qAWjdLEzP1eiFQnPWLUgW5NVwESa6n1Xh3bCdE3sEzWe4pUqlb8HJ0HURH0vZ8C6gF3kmZhw2wDnD8bTJ2aejPYKQlEHSagcSHjFuRWUPCflayXCJyv/L7ziNcwbv+WFfBLIPsFZNA/i0QEMZHLEtltL+/orh5PMnk3w6Mm6/WhyK/iqCAFauoEqt3ssCno0ZzC3D4lrPUeRv66et30dfour8UVT+q55jVRLluGDAY+wlA7Hy1fc4FuFU2H56kpbADNcKFG0pUncl4zqMPQvnLSFtLrYZYOU+BIek0a/9TE2LHHa4GsWxJLnEuBdlO6O/Y3KNITVyDBp7jAwT1vHU+174pB34457+Z3OQXLmzMyVgkD+d/xh/m1Lz/g1JlZrsIhnKKuS2TxZI1C3WHCdTkf/ILKIpymCRriNWMX3gLQlwcaIOzXsKDmm92KdPi+788Jqmtk1q6nV+JlDeMx/qBtfVp/ZMyxUsLs9/HZGX8iqJkbP49huvVv7MLpeOwb510SAz+I4t1FRNVdiaI21x4P+sgezdnxuEvwe/m6P/W6GO2Ai2ixOOIw/T881/RZMayFSpzIwmHyENfpAOBVFxzCI3jpSvBoQ0kZ9MNfr5fXE0jwXQjcnjoPkO17Enmz4iz6Lo0s5G6uXL15780tuWhbiFoUdFgcztZHUjTNu6NGKVyFNBjmMFexcADp7TX0fzcldNrn8rLZAX5OTpw0a7mOCTejHYh1V0i1gUzJq1RAaOkMBVOjHiWaSG3gy1nM+ZVMkIQ89Ug8mOFQpFKlEuQFGq8ArNLiMCkFhn8eOStADtw8tjiCTX/3RKaxKjPYn7PNav/INOZtCipDNLXVLsBg5OmbZQY7Nn5mZbc9UpqgxGWO17zT+dGMvUqYzxDkvA5nE07M3qCE9jF/UvobDj/kcKr6IkEahD/h1W0XvVnfsaKzph1rLzCpligsWv7KMtAlmcETjJ46D5DtexJ5s+Is+i6NLORurly9ee/NLbloW4haFHRaQXJfdCjjkkvERQxT5F80STALST2OgUBbzCLQiBX9YcY9DSWBsjgidp8DzLdC/SgIHvcMbxsXgLXxMTQe0/eRGqkdx8JvGscGq+cZjwBjG+f+jAHyKpyDtGuOg6YRd7g+2PzgGj9P7Jyq4yO3mUV54yxkOo+OIG2yyen2dH2cnFWqZQ+QClFc9+oF7XXLoblro3IgeuvEubnABxJ/qoEtC0MhI+mqKnffYl0a9/ePcx0cQu4sNedWVHP9Jxn9blHh8FPo6cTSr93CuZMIEHzhyjUX+dz1e2wzFLWJQ72WDT/iUirUK3VSGIb3MtxK86bIypC3t5y0v/+LG+uDm+idkjfUCcuE+7Hbkppq46A10ykW4CJ2LAEWWNy09iwHT++UnINkONH/2QYM+sltT7ts8loMWIIqyDVz7gQO2cSHYi0PXTk+72oWCyk+x9msXDxhcW/XXV6B5WcJTbdzyuCDHS7KoVRSF5jfb6WLB8q8Uthd7fMx3nJ99WYOh0HB9JxDkBWInwRGP8eeDF7nO878qnPSGy07XKmpf/s0NqyLgAq7zk9I4s17Gfae/rh7Pe+aSPcf1eqyZBCDiR+PxNYQmrnKy1XVZJC0NM57KgdwBUHRpi1b2Gl1+55QnchpdhEqFP3c3rDyPDsBbyHUfJbML6/TXkYeiDp7/Wuh5XMoVGCciW+bqMQyf0v28S/OktJ1MCNhuZGD54wzPeTE3rCVva65UUXVFVCwIGgAODKgUizphyrqqnTf41FvrE1JStUSecPpTDmzAV9TA2kQlg+cSXp3fRKZJIf9G/7qZkxTqgIm2NdgLeOenPjTlvkld2X0+wtkB9QclAyXbNSLGENMTplEq//kfJWwrghl195+L4UMarzt/A8f8fsUz5YdTucYeh/ZYjFrk6BFpSXYgv1SgDkAnz+VP/OVgiHWj6Dwi7g3oYraZi+9TDB0GH1nEnKlWh7pTZLBiecaUc+82hxMsibY12At456c+NOW+SV3ZfT7C2QH1ByUDJds1IsYQ0xEleJPUAdjOZFFUBXQ3hYiJh/zbLP6FAck+AHUAkCBThehwzLTZHyUpupui9BOsodQeG1CwF+5spKkUVa+yrWFNdzATGsKC7OyAMEs1ZQ61GUzNiFLxlCbaRh5+6XdXoEcew1hojtr7UdlBISiTpyh8JQ1gRI1ENRfiCeJpmkiixD9MTL8C18YH1dnkdJk7PBLrwyAhJVdVzn+r0v1TgCq6grML+aV2/5yxuMdmkoukuxSBff5DEhXd918MZQM1tJy8qpHitzguT5WOh12FZtBGWKKfVTidMEg9Q1y8Ibe1u8L/iehZKe3YwacVCTAKl+yE2g7TAzedo334smQx8vh2TCcoIf17p9e0tMN287P6tP9O+u5jArYhmgG6nUafGrNRkGCwJTb7RSqVhv3ycv2/H6j3Q0ZKTYfSONmnEREFLcAkZ3vtZ7OdyOedNfAnNMMkk5BFy/6Gg8KFA+ViGEOLJ46D5DtexJ5s+Is+i6NLORurly9ee/NLbloW4haFHRaZQpgu8XB9A/Fk1mbcZTACN2rGIwH9YPG40qMPKqwBVNb1VeXbs+Udih4q/cBFfliHNNrJ7LTeBfTTpDgZaY35qR5jEcJaR+CRU/5aig0mLc0T0YcX7gv/BWt0ziz1Xy6+OWbwsDeJsmvV/00NEwchc5MkaojpcSM/yHurb7sJUU4QpdEAIzuCKHq/hj084k+Y3MgGXkbO/3g1NqYaCdYfTUVnJwBbTzTTqhclouKVkUNzB9MlhtqkF0TpC14dGIXMMgbHx4cdPKod0ufHK1R60aTawDt8ml8Oh2wuEek5hnpM7FgmygTXjmlg7xGVgUJsbPF5H/ukgUg77JZa/4AGj5gNPINLimnTA6ZmMNgkllBOag0w/CG30AqM+mqkgGA0yFZ/gYt1SBmG6i5ndi7lIaKiLK04XU0aMafPbQcyOj9RJNxVwKppZd4r6U/0+Rc7tg7SW6RDcPiTzg1WWp4N/GNyYHUez+1H0ZpcOYPNkIabE8SihhSPXhLXs1WQ2fBtqbnAVQTCRw9Uv+P+0RcqyOKBeigEQDayYovv6SagAaZjiq6+sphq0sLkNvP7SxeY1PjEHu/3r6t+Wk9CDmpxkRb7nFtulwlNJGK7MMG9G0xYVUDa5F57W1qA22kB7bUm70cUANlDOkw1CTDRUic4iDT7cJzXjgRG1NJc6ChRD0E5bUgwckUBQKQX+8HZ93Ep+jfHnd/AMECykINrVIkEzWfuNU8Zb+o8aszv3vRw3ic1p9/fG7/wDaiLJ6VJ+akt9DEIQk+hGXNBz+PVgfI3XFuOzQEQ89pvkkJieiL3mf1c0NJjDN1hqGla4vwRlUDynV6ZuPwTNM8Lkxvxnn2RExClEzAr8StiXBqx3dxmqzHyABss5UR9kfe8Cz8OFbhMjuJqAZR/ZlEE7n7xXqMOACTzqoPuNZabDfTjLhyGnaLYb8u0mTJLTMuiQVz3vq2Ch1pLHEPKOP2q1dfRdn1o5wvzXIwYFXdzACBxTVa1jlTjiRgJveMDrhJ4C+QkKDic83jPSGoUXaS6KdVCCz0hELSKqAf6GwUWr4uHReguwsGGbyM1rEqfK0S2atwhTUgKBNTN/B9Z8x7adS0mza9td8mbdPGS5j64aahVUnAxsom31ixdEmezFFoQJ+6T1jBdmleNbYWuhm0EJaUv+tjjSPbJb9KRxP3EghmZQrmmIUz2smc4M07DwRFk43P/SnhomE/o9HGZFV+eal0fgIXExfA4odosdy70E04051EVWx/V52tiKxNYOo4ne0LWkjgeYamlp3UuAcSfn/rwu3dUMaVWvnCe2TAiWkXncem451UzxsAqyf6iUEuoi6rBY6MxSUps0oCXg9Dpr7IKzc8IKYv70nhafKa1X+bkSf2mgNJKStArxO1Phgqc1NRuzppOWCyj8GqG6Pvg5GPLBIgk7RX/7JTn2fplPT4xDVjn7z2hYVtkhCt8dzIsV6XnC38IxOYzibtUteG3LaPq9nmbprzAaUSCrLKzeCLQnWCcSmi8d+iUUzU5COrADIMRHhrj4jdIdRQuIiWU4gvXkVyin1ufiygd05VlRNJQ6spFTaDRNXOiM3DSCFJZSo2VgqfkNEm3EoU40gsurQNdHyqc5icAluG2q0jl8hGSOKBzMbKG9MXbhgNhPIdP5BR9UxzKA3oC0VQaem1PTAk+eVKY4creliEBG+9CkEnj4ccnR4Vkxs2LdoSqf+tzjNp1/pMETPSi4kHzwj4e2lJ3DVvHEZNzFcNukpN0beGTAGIeVF3Q6Q/YbsTRTUKBOAQE0enISkcuoQk+nZ559QcDwDbwfp7IHSO4ie7rkndJkyVjIdywu4VCH2faTz3+ZzaTA2rYeHUPTEkaS6bJfrxAPZW7qbiGJJMXfG9vshu0IP0R/2SruBVq3JNChp3+OgCgiTG1BlwD8MynItPAHlzDckcl65EEC5HV/zcfPBISSOw5rsR+mZgnCGGGoD+o2ZS6ZHOuvjv8mzYC2PWglMcn7lp7ftEaAt1bYsqhhc4TvOJFnrqFLm+C6RgdXdEt25DpW6v9/pu9+0eSzFjs5d+WsPt/8+Di43ud6vmtBzNM2xeQFLpKIdAeLCk0gYEUiOxSnHbTX1AsgrnjzoPU+tle0maV1d8ggPeQO8MCi9uH4OUQnEjkeYhERBJ4ib+sZWFsSV8okYvE0dZ++ZN0dY44R0SkpKhkm7lWQGodTWm03evncq79Y9opIPgpgioCHrxVxk75ZGYxkuVbKik52BBMEwm/a7jM1Bc6utC7vKJsvSoAERMtpFjeWkoXMGvJFptHqm6PIRrt6TNYwz3uJlaOyvhYH1iuqP4JEaFNn3/2dZbk/GFigis1UQwVJgnUKWe3d6N4VX34hWymN+P7MQz973/5NMCdzpz+i3M18512oo2GFL+MolSzDrQwHHoO63MjY1Dqg0t5+Ya6OjHCFD0cyid4SFsjy8LMXaTBbc80g17gr7WYzjCsb5ybyy9fE7No9Bvr1oF7FPTliAezVePdcmPrzAlm0tBqfLU73dw49Bp7fYqdkc6bQ2sqGud4QxKSC/71/jnOSl1h173cEctgatHG111xC3ixvDaY/JG0p+M8E251R1HLoxPuhSVKybhSyK1gPNHelv222Wuhy4D0u2Brox6AfCVSBH3eeSOtMPs6/3O4SZnr0kNtW6TEmRQpCcs/4JwCVT3QWVnxi4Ifgdore1GwigzpR3FD2DcpBcjnbjDocFEJFiMeePR4RIoXrZgZ/uwFeJyJhgWqbj06vg8yyliztM5HngAArCnZjWcn9Jcq/K4D5hoRwnEsn5DUbfyny5UebR+0eyQPRJISKOG4F+T+A4k+KqfLyGtTs926sZ8zFzMVQfvUo5K90iul2s/0NynM/o0CayG+ilIxCrZhUeciYI8+OWMZ9oGPSOmUKEx0oVMJm7rVUfzqVMFUOU8lyjl+Z+KvrXT8jp0fFNSotzQOSrsaN+bk023G/BNeF6hJLzFj3NZbD58GYJ7ij2bbk57d7FrDB6QXgEskix6BpxMb8EWwjLWfWdBMaXMdGPsq1SBPWVKIUkhsOjGBuSPMx7Um5ViEcJgUYtDR/7MJ83ZLy+f2yUzFUZjv0Cci60JVweC43B9unNbl+0HxXaYYOBxyHJsOVARp5k8g5JNy0zJ1zZ1E2+qovr5RtGTR7cNsfacdjkP+Q2C4p3pl1xu8V5qSO+4naPI9/naElwJrSOfcH7nVHkQJXHSO/XJ1YvTYsF226qWifeMVCz7MywchGsC45oc7kPjugmb0g6f+pBvvzKGDv6RJBZ4lieSz8XDwIL35o38j6K00M9/KMOv5SsEecBZ1gAX2Eb9UnT6b99glBzEC58n6cmLXc+tJUwmI7LbErQ2DioBHtBiV+IOLGHm2NBpeK9Q3OaPfz6vES7OB6nie0LZcwYvXDX17HYLoXwB7dECW2elJWOwxMgC4jApBYZ/HjkrQA7cPLY4gk1/90SmsSoz2J+zzWr/yDQanazNzuVm2BK1j7Ty0mJ73DnjmQQRkCKr01atwgahqYxz54ZnlTtG3I1OJY+W2yWx5SP8WsKeDWq/fwlR5OP6UzfIcmkxpq/dIqZJ+HGF0y/iyPuE+rcoYESmRPeIMeCuelvfQLKNq68B719zCTBzh+IUc7+LFvwhk6xhBSamUAjD3+hRyJqD7uesKtQZZjBzXfHp2ORSV1p6rECloswcyH/7TtyiQQsC+9iDhcAwaH5+32s8yB3+u+VTgttwGRq+dhrBpdHtSXDQk3wR9ydYbm9Z0cBVeOYTZfqWO6ovANgTc5VYi2ijTGp4pWjfLH1f7QIddZWEjE4MEknuAp9DvE4YoKrrbqvt/xoQbhHs3Qdvk47K1URCUEphY4amIe2YXsjD1YsXNIKSSTW3XYrCE0AkZ5r5PxLqJIKZhya97oob76FzEv/dPw9UiooMa2PvpYMUMdkVYO9qXydPRX2H8Y3JgdR7P7UfRmlw5g82QhpsTxKKGFI9eEtezVZDZ8kCufQzNJX28JLcQ5ALevy4iOMXNEXKTBPi2mC4n/HVVCsfklYnhYC/MZcr49wEenpLt19RuLT0osPOMITxB3PLvRwQ8fXpCZcrG9yGQhYbe6y/rstExKEQXC1FXRakPHbhG8yGYGCZkeD/Gsu/5pMI3JStjYF2HtMUsAIbUh9CuQh017wyZezo234ZpFelKf2Sy/Hshrs0RdtxaoCZ64+5xUOOXbqLGDrmoFxHqM8qcIT/+iwv2DJiMD5ek4KCcHqzJt025R609s7bi21p5LFnMXFVfPAnMV9mRwg68u2f2hSQe2SbmtvLBYNfd2TrRRDojh+jjkcZtoNo67fwIzSpilfpSYv69sfHpXTq5eL0aZS3Ispj5IhdB7E/ngLzJOlNLSeO9pn6OxAbF2CTVP6BNyZ5iVhV5fA8oWBh0XId+YSJac+XnNSOUNk5spC91wgOvmwKjmXLML10iijyY3DJmppYRavNDQeUjsArQsSI6hIuWV/3DYZJojNj/Mi4getuseCEUVzJo9ascvrgHmOySsY9NC5eVN+KHwSMQTFgPKBh+ToKSAHik2yI/YPhSIS9u2iG9ng+GYW5W5HezczPC/4noWSnt2MGnFQkwCpfshNoO0wM3naN9+LJkMfL4d3QvTVfAb6V6iM7c5OEI+uFJd7Qm5Bxzsp8LKiMdM2GoR/77rfWVWRbgMONTziWDsF2Tu/emvDJTR/WZsPJtdf0FvnWCIi1EOFYuydRVQXWP2H71v5j1TI3XfJbjd7C+tTgH2Nt5WascFb1ahXtX+zSq8qXPK0+vRFsGeX9SxDOrJ46D5DtexJ5s+Is+i6NLORurly9ee/NLbloW4haFHRRQqZdsDuhEz8qZ05B/cDaGqmXqkF13kdrraOe56a/L1N413ZXBXFbINo2X92ltJ9EDJCOFMuUzcLVGEK2XtDeiDzRToGhxfmzGxoV9UEMhcbwpqi2z0UtE2qZyjA164oGFfz/QJa4xbnS9kIRRl4EdjhdBmSq+2eWCUATWmntJDfxjcmB1Hs/tR9GaXDmDzZCGmxPEooYUj14S17NVkNnyDmGqMo3Oy8YeXm7kGWbXAVEL2ZPRWRXIDR/H1MvyyB3TaC/Ts0huZWeUn4tnMKH/DuWnFLJHCUhxokapL5e9UCvstOF5r7aDlEULEGt58jxlHti/Mu1MX5eBQHFps+YYKj5+jC63SoXqAEyLFc8W2dtP+0ofWA7nP8BPTpZz20hGX5IXU2th7jutf/lGFV3r/fPa9QoGhw02ayto4Du0MWM2MzmxrJmXNVzXrAhbZxrhkzAPYPQu8t/qNtGXb7no9tNi6b1LXgQ0YpSpO9pxMf9vCsaQ3eDgnG+GlL1IDXuyjXyD7zhhRXlM7sa2OPpg+u7Zh/FHpknwxyqigZb+0/s5JDmq95UyaCet3nMLVcGZZVDhT8oIqHeJ4Wda1AJPm+EhsxlAmy1pE5UaHni0EGWCMql//ug9DGVagjkSOrTyGjgcqmvsMgKNA4hMgnmnzDYV+mfdpo7PYTk9waX0niBJXfcrnsec9ec6TsniVBr0HkE4lD567Bc7lEikTMzmxIBnLQxI2SgA6VlpkN/BhNLFCdSPlSYL9BGMcDp6McTksnHxsx0+24Ty39elg3UphnnPJd2XrABsc2cQuzGfstgqzp2Ewb0ywqVZlS05L7htytHzzsxdQHzOqfcTYVNvjcry0vpNplLqxc9Bd7NzbUiFqHaWnTc3EHYOs8pie9msnVkjN1PDeNynns8KCd0Gsgn3vuR9mFAe5wkYPJy1VLiMCkFhn8eOStADtw8tjiCTX/3RKaxKjPYn7PNav/IN9MSpUoVAXnMDXqdrKAnlSeF7hEpKlvSuXkOwfItI74yD3mr6oVCGI4Y4Raba1/jCUCfR995lHSOhbSF/uye44fsXohpTnxiIggvJCsQ2jfnWFlPdpKMAHF2ZHsFFtUBawbUEQwqLLxx0i91c8gunabXv2aThQ3qvYM6QkippN/nmZLQn3wos7tnh6EQB3q7DjBQM5rd45BkSz6FQuMAOFnyehdrKeG5vsktlqoCmNRgnROXcmTlR9RbFtsli+IUrLm8URXN4WtN7dKLY6v06Jk7djqLKvrJy8XEimSz9DNDiShlfB40JWd4H0DmgIMYlylENNOqHpXl9o8jiNqty6lCPyEI4346SdR4mCDkFtmt+Ru+jzxLJdEg6aMARpR/aq6IIv5Ddz/tiH/e1oZPHcOhRWaorz5GQ0QTWnMdV94NxlGUvNcMVCjXmWr4Tbx6dWZcPjY4KAGXXt487RcIrKiCAbLXg32xgRGE9ya92Ebu+nJ94w79isBmAc6+SW5zW+0GVXqdLDMn8PeokDI50oF7sfW+BOHvwyBwGvNEFC8/Qf2o4o8yBTrJdC4CbaRCoXSQO9RYGK2cJ+0xqv+mGPczSbL2UjWFvBJUioAfoVTPI98Vk2q8A4WCZn2rHFpVPPfMdeBYnSt9O7YX+K6N28dLpV3drweLcVRXOe82W8QSSfIrcVGTQCtpEmJgHBrESzkWoSGsMxwLWC5FebZ6vpfGV9Ef4iL+og28qffx99Q1lPyq3KDCRYsyT5WknsO52JFam8XYooVwW437tb4Zk0+900yN23nQyXzP/YMpq5wp7sBag1vCxPuXIJhmtnSpst/E4Hkz8u14OOtjkLw1VgnBlE0eFL6QTyc/57U0hPLJkXlAazYoO6Uw/6xPi/AIN5vhPO6OgD7iHwJvt0vNmGlRso0RZVbGE1/flUOdYbITaUKxpZd6lZpVFMuIFQyjX1ZRWg95xu3LTnnA3duPfgNm0Tz5QedKpnCkgoMmbD+jsdgJIiqJZABXMwP7ggC8+7+VdLuAt0tg/h9Asg4rrazaOW/+D/Kk6N++c+kVy9+qpjnIVJJuDYojl4oK8vokFWvwEpZg2FObSHskYXzr6Pi6X+YIDUSktroebYwnhSW/25OKcmNUTOYLd6nyrnEQl3JstpMVV5BZoquiQUlonOJpi/enpTxGYprcV4S9YCj+vCJ+XfZOwRzYE1n3u7qIQZE2+FCOXH0f0BZnLhpKBwFvf51xII8WvZCdz6OnZkUskzHRYYBHMGgN1S0ZRPTxpupn9A2gDEEOj501Ua2qg335fx4U08DY/RE3qVf5tqu8AAkkwZfKiTRjML4zuZ4drsRnVrmKgb3Jw4Hx+yD3A0YdNa6/lVqurpbyXEbgvph1vUxB+RN7abou17YZ5zTRhuhnBKtIqBShZLxmXCL7H4iU9XrYicuhF5XZjwwBfSxcpwS2kJCcwYqD3rf1udVMZ0dENCX1muKXbRP8xESvrPD3kCmodInCcEGSalLVGoN0UE4Z4x6oZjq3tFtypvKqdkf8tOZBLCglU2nopcp6mYWSMRWQzRMr4d0cL76QdHEd9ybBJyVriC8gX7rwmcOYMsLjgot40SHbdxONQiqWETmGhLEMnuJAhd/tq8TFCZbWVEOMWioAKUXI4RGK6nHbX3wuYW/gS3OQ1BIu0ScCHfmyxfZ+eV0kX9UFNOm1sGFij2G3Gw1nHSlUOligILoK+SDErntI3HzNzoSRsKgmiKDrp/rSmBclo5Wvj70Eagmx5msLYyn8LsDYbwjnYJ/sbnwaXc5K1dUztLIOoj+BJ9nW/JH4smV8KG7Wa7Wkk5f/2i6BZrZ/Gmif2CNEDoagcyg9gz1gmTkOZ1mAmOvsL5wQskZ3FlrbdkcVF9R6W5G2TIraQtha2ciPNumTU19fIWZ1s7nuRbVlh7NsHNZk85uBDpCaEB7aMe33cIiuGVZa5Ne7207XPk71HLYEAdbBkCG2XiGTQxVcyypjHLfHZESscKmtDN/bpfkLGymgRzsM/J+j/IchDSdWH+eTi9x23H18LNecYsSILasaHFqX2CKPkW18+plKDMhizGSgzK4wmytv8YZ+yZl+JlZZPUea2CKIVgTRtQzIQWO1hL0E+ohM4Zmzfm7TtVEJzNchr877HVMBW052M5wOunIUadOyyxH6ZmCcIYYagP6jZlLpkc66+O/ybNgLY9aCUxyfuWnpaPSX7ueB1/oz7mywP+g+I7vQXMLPwFIgjT/ji4QYAQGJsKBENjPnSOQ4F8qTlSkb5LgbkrBARrKIA6tgZhaiTIiF6IeAqgmMgs51yh8SzhD3kcX9yiKiUu4oEwY7ARnC4jApBYZ/HjkrQA7cPLY4gk1/90SmsSoz2J+zzWr/yDV4Ewk2jEsS1LfqgFj+sa/mr8wiItJYBWIdAfukFra574U8Be2ot4bdFcFb+3YSH4O8WNBNVn2FXnxlJbWCMw4oW5ldsRLjIOFyqVFaORM8pE8Eepf6cJ9yAakfZBI0Mt1lk6jUCw2R4C8TGzIYidsh3Ya3G7heTGahNnmSVlZCJKxwqa0M39ul+QsbKaBHOwz8n6P8hyENJ1Yf55OL3HbVKLuU6GGw88i1FKQcWJuHW0Jfe6BdPYdVHTJiDYHgp6a2tuX/U1maLh0vqcl+k/LKxU1xsVEs7TSjaJXzV4g75Tpso+gDVY9DG6wI9vvmBGW3zvrDGB2MjkLn73LTMb+a609FYIwjickKIeJSCDQNeYV7W0aqp4N0plarvf8cX++RDjF9TyaqbkzooLdmiaJ5HH4C9kZnA1g3YwB+muSjmwuWIpJXODYn+fDMcl5TEBrg2+p8PDkn5S3NGTzp8c62A2cHuuIxmHVz9diK8IjDgml+ogNSmaAqstgtIN7jfc+5hg5ET9T8TRy+YTB0+NEAXwMuRH5p43AAHPwmcW3Q/ZSodRqZp0m+69gyEn0x/fG6IkFGVElMiwG+HfXvCbrHMejVnXkZxvLVAK2DDeoHlCo00cMOhckb8W9xqjc4UTzA7BzYYqgOLL6oNdri9sfDBxGqHaRRZANfVFtuzgzgnPaI05jS3ChQ2r5H7rTAyRJNm9bhvtJzNg/VY3YuuUTg63idn8FB22yk1r8j7hCXbLSXiw8AXP4FO169MKs1/eLr9pfCl9kA+owgxsiztXCKHrjJxBhgO69SX/ziljyw1bjmxEePsSfoWG43CfkrZ5+sxdGpe5KS/EOE5WJIdZb+JrWlqela/ytiT500VyuLd5u/dUxl4NOvZSpKOCujtxBI5a7SqWwqsCERpE3kFBuJbw48xnB//OtX5wLDtkTpaRoFMhFyF6xXqEvSE97rUtAtktOSFM6R/7a9Y6T5+5yRfZIoHGdTeuPtOP+cchlMUyt081+l/izeWnyt9eiRt1IJsdDINVZ1kzjeX5lookzYHOO1TgxKPBXrcX30bPLw4aLd7LjtWhshkLN1fgGSNt8Ea13aC+FAq8XoJVdUft7tPequ6RT6I9z7fjqYr0pkshCCT8A+tKj0MR4VjutVoykR3N6gb69OQBL4WWsExZWyrG892exj811oBPSzF8Nm6ey08vPDAJ2H5ODYtqbVOlm1dK080h6b2BsYSRYQ8b9JeR2DposjW1B7NpAiRMqt5c3ktormeDrISHM8VzO/Vwj6JodTJxPDKMXPeBPoBZAaW3+qoCnLFOSdzRtnIBgCyxuS+lqwfwUEJqbipz2lsHYBthX1gfcApbRCKEaNCjY898x14FidK307thf4ro3bx0ulXd2vB4txVFc57zZbxBnAfp5imFX3OZ/LMznpK0WiC7+jAsb7V7yZNcBZfkAZ1Qv4PTYvknFwBVuNhoz1DBB6jTfF5jLi5cmUIMr7/tU9HThZLXTZx5deaOsPlNPy7A4lU6Kn3KAHWHfTAvAXeON4gy4ftmBKvzN2uz+5zNomb9vwCfQEDX0KKZ8Iz6heNJm8XjbZIYIHqI9hMYncTSsIr6nFaVhMeGQ1NFnLXNV4+Bd9PwKab2U+oiMpee4j9A4pdscIw6BEjWi8hpLK67q8gghWRC7hqO515xPsQr6rlkxBD57I5l0W4IXZ/eR9rwv+J6Fkp7djBpxUJMAqX7ITaDtMDN52jffiyZDHy+HQEc1eYfnMdXR5rZfWmd1K6Jn4M+UEK1dm2feAT8HO9oq3IWzlWvkC7UopeAH6GMgXJ0TViFbWUFFHMwnJ5cDRyKmRSG9LQSSFsBpnfPzF36O8wx9eD24+oJGcvo0FKS1X15Pv/5t3v4+yP+cL54MxYU5eUkuXIUD12bS0BpbqyiGNvd9HKZlVJNtwA1+n9ByD4eBWIYdF7j5GDOuRxvJf6PbzFWoTg2JHcfEYmBFsI+9KYsL2lDil5yTJwvuWsg1ZpTnJTdCD/PbE5vtd+KQaRYSj39SKdoAAQD87YVKWCg9zQwDN/QPm0mFUvIHyO9E8YRr+dWVlLUquzjnh9+dOr21fIXQfalsh/mjA66B9q+GVzZmJZ1Qr+dFiXXL6kPRTGZ4udkSgVQa3XKFEWLyGtjhsbDxHpaWfuS59w9qrRrzraiyPoWhrqR3AlHSCfrlf0u+rWOQKBXm+SGd8KlM5L7s+fVBHml/vjiZFs5xyIKSTlCbetrX9pgG1H8CTak4zN7Dx04sT/9cMQNc9+2h+26gjtE2hEftYCZ9AQvZDGglIKk046JCK4sq4hbGJTXxC3PAs0WmbAbmwIK6pR3nsk9gvSJtxaHpCOhdc3Os2Q276LsAWKCzLonluhGF+al8rACL0bMJ0XH62GqIoFDwHqMj2LIxhrqCgmV0lKGpU1LAQxOz1vPJdAXM4yLVrI/xSmhvjYn6+vhHr1ccE2s86qH0nH+RU90NGXXSh+QhppV+FpNLTL6PER/hRRmsBv3prxUk2yxBZVc61DSX+ic6ZLBWzZmuyO9jBmPyNXTJifq+NyyUQcoGtb3PPfrN52pAPOb+dPHrFuJZEGjKTEFuetfQx5EDCDeNL7e4VgKDgHCepKETY/tx6iMO8WsBuWb8riFCz5X16uwdTQZEEKJxPbY/sq6T6cCGPrf5FGBkGus4jrsmsJzNxuVPuMZbFQIUNOHIDaDtMa5XlwU4AJ0di6LwbbYvNn5GQxYYrbXQvI2WFbclK7ppj+7FMOP08r90MEj4/1voa9L35aJ7Vbhqm8wlNhkdZBRVQ2XxDlA3icxTYcICtukrq6wYj1mKLlosPaKcfwGmHswCvzSt1lX0Waqywcvkp6lt2eYuA4Ll2orlywkAn2SvfbTWrthjsDhOWECpCxazkudMxK0eaL2G9sDuql1zJagFleeqEFLYuQNTjG0/zuDoc7syVywj1GvRWtcsaqNM5U906Lqjgn1NmxvAn0nq/4aoDVM55gh2eungA+siB3W7fcO9XRMKZyYvHSDBahhNIO6rU7uTvbMjWIuz/vxD6NmxCIURyo4tcmdufNAfkZvpt/0SPPPDbZnmzsLdwDY8kV8I2o72wrbNsr9ppg6rEUgPn4FceU3KxAEF41wnxvpG6yNjABynV9f56b87nSqq+f5hYWcihMWszXMTaBgtYCHy0fqQyM4TceR6ICj/q9CHlmsiKAy+5hb51rOUIOTRCULo0OvVerw+EZe/ZsUt20VTH7qPkk6KBBquEbxSrxXMeG7Pe4i4REOuvPMceNzC8uwTnWeHRUv447+4uzNdceSMdiqfC9xvm3ZfsMQG8orUBQOo4EHF9B9sFhTLWM1O77TqIR6W7XAGys0JPxDdnQCBlQyNyuWOmUdm7TAF2Wxc8/+ouyU3ROpoAkjhaQUYmedT0vI0ZoIJjOdJ2pFmLMApmTWgajQq5ZtA/bDSVUTuVEK9YRUFEz7RvPrTr0eXCouRgQWdldp4Jz6bqj0eOTt5wFQE1qtvcBa55yGnRryYTRiP4S56M5M2ZeVBzoj6rAMKK+1OyvmBkB/XlsPig6tDDwAmKbXXLc50YMHAI2X7AB7YFcRiEgGKV9ljGrvh2LbCFrW1oelALAwXiUEuBkA9Z3cFInOfST0uzXavzcBCUW7ZxgPO9k20jXxRi7HogGEW3Z0QC3lf8xJ1f0Peo7LDZqPZmLTOT2C5z6QOlaRb7yThP2M62UO0P52A/gwXeT9eqxK5eLJF/G00noEXN2Oet/M+EsdnDPY+7a7vajR93fvd7j7uvHrofwJufxZRre9tihnY8YAkA6IhIrYJThUbenutzuDKlVsprYobS5aXd8d9fh9akpwwIYt8KiE1A8ufU0hfvKK4u+KivmJW4QR1Ik+YTJl7jjSQisl6sfUwdPrer/ASNLDIS8Ix4phsdyIllA9RloTJhhiVTH3tt9ZMCxBf8nOqVhgyC0Qm0FVoVEKWRWWrq8Ki0udUKX12+zNVPuitNNTKeH0VbZTqexY2BLqTxSuOr/Gq8Aq5Rtp7t7+7l9+vEn7aVLXJkx5LzUw6eT/Zw4ejKNlrlfEZCea1ajK+0W+ELxwwOt4m0BekxAyP8TPWtPpyBFQLhTbek29fIWAPHsYlnmvrwlFysUx8c29936QDwegfFxOZgiyTPQI0edmjNuIeiPga4jstwnpX8PaNM7yhgK85g9J8LTGr66v57EWyUlVAdQEA8EW5+7Z8VcfSazoZ5yuQfIUg3fPN4Qh94V+7kE1WN3NdWZkju48tSfwZYP0Ach/xbvAvESYs7L3cYw6n9977AS5ffEUa1ZMmkt2iKsU7EtG7EZHw8nfjVrcGON4KsSZlu7vu4qvFlI5bidH85HemshYkEAmvJd+DYE8htsCugcLJtiqchYLPuBiSTAR3c8A6QxFTkBDDml69VplzKtIDBdEc6aEQ6+pHpBsgFxjFg/pMlYZo4w0YkbbjrcTz3zHXgWJ0rfTu2F/iujdvHS6Vd3a8Hi3FUVznvNlvEFhQN2rmd0cT1msL04b/BZ5bdLVovGuCETJrMIqlttab8GeAPZca3dlAdaWQvmNvAmrKJeWXui5NHgB2iGvEFLrFrC8yMJbsd4BM+jvR65UlJzcPzSvGqCZuys74q+yO2CrDGhUH9SIXHLOBa2lcpZB3m+ZUm4eXwKH02SwwQ33eQ+CfjeKk2i43dxTQoRd0M0Bv24XJ8wETRKSVXW3dXqL00ztEdx2aDHyVol9NY3vR0+NR+FWRA3T6gUuMGS5WJ8wRfJqc8PyFKMVyfu3RYE2I8svn9jLxOD1c5H/ow6ALaMFV6pAOGyJdFHd9H1/Cyh6Lx0bcBf16Xq7HpnmjRledEed9Xabc3YvXfVxURy5+pGyglZU8WYMzSWh2lJrsNjurWKQYsL2SIM6f7pVploiBJaL/oPqqDy3ExlohpMe1v4Rtg4bFIQcBzYaSting6RGeq3mLmw4aS3Wdx+U38guTnW0rMfhpbaJihzOnhZbd8228FVdJzT0U3YXr3kMwCPsbfE+k9PgClIPUPtEtHabNH/60AJ+hfImpyYPJjx5dMehM+ZL2Ym3aWU5KvAHrdaveWqR52ZTVRQf0AUuk6KmhMornN4PEpYglrQJRCtDG6ZxmebqysAAtDv5pJSiV2n9w/a/9UUbsMxXKiOzdR/4KBMAcOU5hXhvqMWTV4nXHSPljJ1NuSDlDvoUSZs5q1AYdvfg5JwQOdqbldvMbFw68L/iehZKe3YwacVCTAKl+yE2g7TAzedo334smQx8vh1sM2EDL9Ncj1O7WoQhwjPFkah+OXgDWKTW1hLpbWW/V7+gCcCpvq702Dgcx6iJQZuW9q4Yc3+AYcFQ6aepH78xiDnsBwHmqYB1GG7dg5Q7so3XD+plh4vAmqVnolxt23jPfMdeBYnSt9O7YX+K6N28dLpV3drweLcVRXOe82W8QYgHjgDdddR/whxNGJWwnvMLckkgT4qPa83+p6JXx6OsvX4wTVBWt8WRUgYWqyv61UoqSwS2ZoDP11jcApHLx7ruZJ37ManyZVYZ3SRPXXfM2Yda5ZpmKkYzcsEgNSQ1zK1GqLTNOwrkiDoG7pCm6T+sI7kC7m03/+cAfvF9bI6bfxjcmB1Hs/tR9GaXDmDzZCGmxPEooYUj14S17NVkNnwCQoDnh1cEVPWphRLJivIIr8YN4h6nYLg7zXmE8VvVquEXLi13gnPEWmjoIhpHmsqgNXph4Tpm5PQWA5lB4KJqQIJar9kSJB/FIFgHFWd3ay7G0uX48HyHxKdO5MO1KuJMMlCnahZmJcFPOTdw2BeUiyTxM3ch07TShvDgj0UXI0/USa4T62USmtGsYARTvR2Qj4h4WrtIIzsF203Cng99UdlbVZwLQwV4X4ZpQVd1gOvbe+ypf/LtOPpcVZJyTYP66PDClFVgUcD7TbPcMe1BG9QdAy1D7sqeGw84U8nKzwpi/vSeFp8prVf5uRJ/aaA0kpK0CvE7U+GCpzU1G7OmUT69V9vofQa3ezAI5dBovux4PEBuEzwquLxS+Pz9Y57AMTgF3DcRqOlZ1DF1Nq4z6wMthoTTjPtYsC+3yxx7cQnYeY8y5dru69gLew6OJNVngvCQBdZWAQEQhaWFfbZ4j48/jNs+B5Iz4lzZ6YWok4V378TAIJR0Klwap+zv8YOt7wDGCLTimxgM0l6x1cLyQ8TU+Xw0ZZTWHS+VYeafRv0cTDzv0lzxe4MB5JiRvIL9Y4jKbZVaFH6swEslhD+8nke6Cq16z0U05GNRmM4U7b7sbkIkfB3Jn4RoqIIvy/BuEgH6IbqqrHu1SodxEuowlEV8VcegY9cTjyBFyqmpaDJ1Wgs43rH9RK6R75LJUhfxUKvFUQl9DBDkknu1OMGvZSwfVhRG3imJ6/ykFXjcqNaqP6Gqqq+XSMcJxBOR3I+VbgKl+v2iU19bpAhPyzNjbCXPY+2KuyLq7dL/wGvyUkjP9hoM5FiTerB9A/gUIz3d3KihhPLQOCINDYx32nEB+rXA6Y3oJ6cq4C1Ud5pmtxG2t4gPuuBX+FSy13XPFX1U+r1sT8VyDXLx3aTj2XfAca3b9upKIYFWX7J6AVj3FQwyj2z3Vzu3PUVReve6f+oSfYSae2EYpCU1dF+m47gHVL+FbMPq5Ggjy1l0B7zWoeYsKNIZoE3Qd2T49sqH76icyr0M3Ia2MqwOliuDDfgasnr22QlYEHuKKfXIXt60L8DddNDBkSSb214OtS2oFRhM4xCrjsGU2hmoHwEl543xotA6+QeMWdcyNcZiodNubZySjolMABwQvq4tS18Y4wTS5f3CSSDL5gLZcifdgCzDFcdesMTcLzRqzTeFL36/lC4jApBYZ/HjkrQA7cPLY4gk1/90SmsSoz2J+zzWr/yDzDHTIIUXackz2vBHB5PDgurPONJ1ot8nprRSK4aR530Mg9IVkkQ0bSv3NLncUoZhsomxzU1Os5OwbpwLV8+vgERHfv6ipARvKjY6fPRdC/VNFQ56TvtJ+xawh+LkZOydYCX0b6uqfyNyhTpAuiy0HyVEzvPtBt6FsblD95iufAKVZI8dR2ItjfI3Wq16s3ZKeqZwLqNiTGnyX02UbToIF6bPojKAxCAweFLN0LBgJqztIMdLGNtqgBfnHDWVrp3+S3WdZUg+68PV5dZ0PSse78jl2L51hay1AVu1gGOoUleW+P6cYsG9najyJxArB4FPTWIj/5G75HKo1cda6uuXpcf4cOfVOh80Q1Y6q7FVeig9otNL+0xoad516Nih/ZgjAh/fXfqGvJWkEPwm4V0AQ5UlAPAinp5WmiVnf6mc98YECxgStYWinl+gDWZVL19Y6xd0+S4HBOXmBkk160rykp1C0am4E0/M2vEvIioEbyM1yhKQjv18E7wct4sKJQYH6wUqX7sSbQ+tehbtQ6LeOPc9Ww2JBTE39xmp8ch0CdPurIGiE6q5h4GxAZ6sQe/qQlmw8GEaGV+GS5hMS2kIJ3LBvNkx/QnNrLF1e3DP60xvoPNgXH35oZSVQQeCPxiCcOt+gf/gJrae0KVKs0c+VPMn0tf9qKVEazqXyQjTX4aTjxcQxvsSnp3aNyDGKr48PW6ORIluqVXzdxKyIrjseRkTp/zS3UtKfpC6jlwH1DSdNF/DCTJQ6mcHQPHPOBNzA6b5D5oUUbbTsWcjJCwKf/ZUVwN50zT8TGuaAlriVSdYs5JlELdV1w7/JFAVRmVLqWsifbaE0HfIgYhQF2mlsAoPXXznqM8+tYj9RRbQicR7ZSb0zMWiPktrXKRK9W5hQx8amhNma9U9riS4PWSBSOGVCIr0rSRmyL4+aICd/dnmXQcPGgrjoHkEwSrrPXFqK9ClLw+jyo66tcTtWXtopwA18UUyBnizfeNNt383wOGG1GBTS3ULHtML7H/6B+8/6l5TWcA187Uz4xb+IdFiPVqZcn4bQiphVGJ483L4mUkE9kPhwRJ22jFUljg5+dewBaNBwcq0yYLSeCEz05tjSWD7n5+0LRb3ZzWWiKhHPpoJVPLqow7zEjuskzf3B+L5r49rT6WOnkZcy8WXxgEUGjWiX/HdOjXFwB2qHDZDPKEzEnFyZGeG/EkXwA6htSLEw81WdMXAZ3TOmf9ZKEXaG4m8dz6jlJImxtNyRpJuwd2NPgX78u8LUzwKftzq2c5JI3AX5mNpTUxMIPQ53Mwno5a9432znXUPZ/U7hYJsH1ohZcwBXA0O2ogU5TSsBC08/qcQJnvS0r5s1F7kckYrG7BwaB5hGRLLUhp1J+tlZaW584dA8UJ7acjjlAtDF92B6jAr1OB5wzVmYT4gNIVEeMKcTvNbpGY2czcuggQ7pbgYVX2uUhBe0b2lRoYzVOx2o1bssCco8cfjwHYkxdIX0/GodFKyuwxc8z+ksqNJyQrlgwnyjjSkF5cq9PUiUEOCuizQ9oP1eOR6Z2OBYTbi+7rcYOVXeQ7gRJhROn7/BTUJBE2vvgVhjp0nm9h6C+VADiQ8aI3dPK8zXY4wJpcCIxmVFzL44/4WK5WKKmI07xyhmBT+llPoueluyV2TIotJyJ0CRADEwO4+MZOPeHoxCCCHveLmtt9+KZXBnR2NS9eAr8fG9fpadcFmtR4s9pRvg5xCXHeVLON8Q9Z3QbLXEFN6WjAq61Sfi9NZSXSv0lfiL3LjnwItBn79j6EeVvxth6pOr4wEaMfj885C9o/ovDZv71m03cbq+RLKrJtlMlajvha2gCTgVKEl0AmNTpOlOoO7LpOIT/Lp9mbXVWsHCmtaLgUAoKgUVeav8LPOXm+HqRP73ChJ7vsgVzPAz7K2WzttjpSwN7Nnoi4PO8+KUKiyZRqRHkU4lCLrqmYNCZJKKrzBZDPtPNqJsxnTLhBaCVFxRKkuTosGNzzHqGbA/Yy8f2X8nEMYeVQxwhvEe9EQprBF1bBnUZeLvpLdBfxGKuMxO+QALPXjbw73HOy/IbyqWqhbGO8a/a+sbvBqnSHOS3D6Q7ihi3rhqsUJq0AwklXQvaM/3tm5hemN7Y6Y+gyLDuqCCYI4DBYJcmu4qg3gjpK3OrTjs0hUW5MEiZ0gsgNGr3ieX28iIObj+LlI3cIjv5hG985vwLcLahX275y24Mllalp1ZbxLtjs6+cJ2WC4lX9qePYz82HfxrmFFs1YmGjypAI7f6iUayzd+AzNOST+8QOnlQvg31S03eAjaDIzv7z9YJ/qx/UUBDmy599pwFcL/JzKIS2Hr14+Eiz5yYw2V7bS9ENG75amXKhYLZhyUjXlkh6bI4l5X+krF1u15FSmrO2CDKOPtG/e36lf6kcwv5x+NW2WTyK5MIYUI23mvVf8xXa01BY9rskTaZh775rvgWoORIqwYmR4G1X7D2RgyWlH+qy3mM47IGkXq2xJNTsbKrhM1Sb8ULsBwvbzIcOdaU998CFUuTr5y9JpmPRrWwf9l2ZAlz9HCZbllHNCFq2+3qpdvCZwH+HDtgw1uFnI4j79+AJU8u2dUD/kJW/LTll4GzRkteRwVucomvig80dlQk/xbT4Sxxs+JF4uKJr7Mp1KL5vUSZwfYALhCeYqL409esycdDAzNQvHnvDC35nu+m+rFOzUknWnLuRLpOX3ZcstTlKr8CN5wSg3wP9Xsnpba6tfjKKCzbyTSPVuEAtl1J7xl37NbnrVUuUeZP3blcFCZmcI772CE521jNFWPBe2dAorBo5XGCoF6oDUHYk1dv3WBLUnlKNMm4LDr0lUYEBcVFDTDR9gklzMpxP0SHNH/2MRhyov7Q83wlufT81YSTyGrkhq+CrJVQ3U1cR/HYoGTl9cXx6eYvPNpFwQOxiVD7rfoleAP1K6KDneiBeC3JGpl3YS3hUmSEcSjtKE8jb0tD314q9U8pIg1PCR1RbBohSkAofzjBtbLhY9H0HOmt2ds8H3fcGADoKsh0uY4XuVgbNodsXsTPnUz/Af9cMD0g1Y/3WBJSbPZCQMz+uO3dxpZ5PMKWlIMttIOnN5tQUK19rOQzy5M1Y3x4pyEZfLfPmaCpDrao3VtpMFQV3qWV9PWuuGJXgP+oWMz4ebBrHPd+MuGdxeG7TtVMRlp32zclREBvhFSKjNpVdVwk30ZoojAo1LJQCUMijcGwJUJf+GsKKFjYbyLYpITIGxcNkPwIwypCpcJZL+T0ugBLUFGS+P1yWBZxW4Jo6mnQvQJTMq475qrJdQGC58IwZh8aCGWWBTkWSjA/p+IKh1q+/r7iA+HZ5+psOgCMYLJ15R7pPWAuEMezpwZ3xcnzw7jF5qLWIxPIm6JAembd5juWhVSowjbarzAKNd6T/HVjV5ynf0AfFJbk2SPHh/YYl1KHNYLS2zPlEC+UReIpblBTXSV6YIDyqOhzrJG09iXY+GJLOYxoZoWqKYRSS1hFlb/kPL+0Rx9Cl/i6gWkUqvRbNsMQurtoyFk+YX5xGg5hoXWsyk3KXr7cLwnGuDdeEpGuFoHm+cv5K41O/285Wsu7rcyPEWc7hG2e/zhc5+WtePpJ51yx99lS6/OFHG7+on+xNCt1kovgjvgbXtEq7KbajpLp7cxus/Bns9NxRdWNKse4eDjKEGiCIJCEFxPy9Ih52zQ4WD42EbvIhOdC0opesC+MfYZR+hCIcQH/GFjpfJgYfC6BkOv1QCH1HrzZZdCpPxvm69NCROKFSpKu2s2J+5N/963dsDHZ+fhksIEH/ToBEHgj9XLiGkNUj3jpw4xuzSsIL6rwJpoVsc4RMOROI6ca0AXtafMMpocZZglAdh3U6I4i3XuqIKQhX8PrfaT2UKN6C0VpF2DS3KBqbNJ+FydKYXtt0U7cISr4hG272cQDdvvY1/9k4i/9G3SKEzMhMnKtJBX9XacwHFc4VksB855H0S4hl45dW0SDSozw41fDGEWYHjNlPrMYKEh0qDURvJgXGfbHQ8XHwf7PQbxlKahtlyO968fqURTwFmBpyNFQr5SUwRuLQWcVZge7wUPJyDdLoxJTtgzS1CaNCT8f6z9EW0ph8lIAnqN6fc3WJiz8diJA+FAsaVHxMWr+1BUIP8eZw9JTQgMDfsVD78+Aq2j7pOku4yxNKJgHOjIIWXv+nsm1ndC+qIl+SuSPrJHDbEJtfeEldKGiuzUcccb6yu270lsg5e25jQ+hEOII8hLKrqUtFxX/qxs7AOGluhRGfuz5q5RttU+v4M4sENw6AEJmNGLiFSEEOVIRsb6kWH2ik2G6C89Q6dX7WkoOdrVzpCUs5OqAOW3HcpM7E2pQ6e7q3Uyhbzk6FAh8i7wZWpMN+NT+eEGp6oUbiRXDL/Mj6/40WkclUPXf6rhD/+8ZpmAJsiaTcrGy1c/OmeNzkm515vU7q0j3EKG3opMqM17hOZErpKcFIRv1ax7d1Tq9h6z1Smb3D6qV0MUV3CuWds2bcPlUoQh42x6BD1UTg20fQyWPtb7GnkdPOprmOMc3hBXPtYfEzkExSUXhG/BKVWqXU1ProKvlIxs/fmEUW9OtxB7AF31DwXHLP8o/0Ex6uFoLvQnzL8wFPaKQJKr9uiQQJg2CkU7dCmXF4waH9TxHdcWd1Y3Q96qluOc34a4OlbSbVu2vqEOao1DCqqTiF6W7RpAJLsxDn6VKHBxOUaDtwVCrpRwaiGYlA3FZFFRrzwKUSS9px//+E/7yCaC6IwM1edBem8tIvYKSdxkYXMD0luD97lsIOSXTNX62TkBerg6aB7r1q8OXah2lW3lR7+aDw6UicPGdWFkX4oI+tUyV7ifZXB0ZH/4+ix0hXTZaaiBZ2JkwJX57El2kH46XrsPOt114xKVAzJY/UyY41r3p620QaLhItuI9pIIie7svVaFik9ZLC5khxk555suXpDwh7uHZ7yYvvgPKuaXaQeA1FakpQ4kUXsuu8wvZs4EqwPTUJkBh2naeJHUfJhy4k04KiMTPwGl2wMymcpukpElUfTKLIAEsoHMDC2D3tlmpBECuvZoyXMqbVVpDo6FdYfyz8avIvuiESWbLkKWET2wRh+wOLIrtfEHsyAlvmqJIUjth9Mpy04g/mqNsYH1jvUDyGK+Eos5Q32lFUnnFaJAHbeSNndojNFO1axTaIuYR/o1xL7wDQ/gUwAZkH0mczNRlOjuh/JwmyD0122cuBIUSSdk1VTdOOtXEbv2/Gv71Pj+xI0gm9vDfpBkb8uLpxvlCtDXoLXnHna+2zQkZFr/lTxXU0iBqZtU3QkYYURkXRVeqoD13bC7sMm2O0y5KK56DzKCRORVYmh1Lny5Yq3bLhsVwUEwAq+sBDxn3ApfwoPRVBciqihP/JHgphc4uedW2uAcIuqY2BosZ1DHKNTBZStuXWNHlVSg6cV4KVmxI+qxVk3wloADNujOQ65OvNtRX8jyuac3abjy9HBlUPhA/kIF2FDAfj1R4RKcz8/hct6jm5fFFb++dRvzPrapxaddCBGa9/rqIYFKLkGIwKwYv9tHj8wCTvvYgq6zJML0TbYzStdCVW/V+fDXbPgJ1BLZkmD1H3VjzxLh1BdX7Q051IC+TGVzGxEl00WholPBTCPuxxKsWUvC9NqhGD+tLBIfGd8rDHEnyMSkn8jwIUKNxnbvrzD0L2M8AwxCNydiicGw7UoRN/8om8scEnwb5g5E8W0uzcNWFhrGqmw5LNsW96nJ31hHM4FwOHPU1Rky7Bj+gp0CgjRNrvbLYYXo1WSavlwAJ/31sThd86b+p0xaGaS6ibkXLOdAeHZOgnWEoRmHCed425PkgfUYB/yCVf99sTowDsY65+xJ61n8ZGjdsyw5jM5DS33xpwNpFK0zJxAsn2oIT1Jecc0yjsEeyQFrnMryEypW8gAwE6lmTSMTPz2eX046S1/VQAfz/qnYv2pX3KH3vwFIfC4mQLK5K12Sa1O5dhMCZY1OF4En11WhM+oTrJC4jKZeO4GENlC+Dv1Frn3MGJejenWbGlnIsZ0wvp2UdloNwEHQ7m6OSRIF1sMqUeHdik4p+JB69I8E+zMcG1X+mEzoHT+G/Z9OCX80CTm8iZLhtj8XBn3VLDRa/vNaJyIbFHpEKXKl8j15eh5KcOQkjjS6t5YE136Tc45SgSh1iLca+su0jMh8JiceyVQB5omdN12YOpqjamhNxM4YccitqzIdMtegJNHJrYXDLUtM3tW8WT5VixV6NV4uUtfWWQcnU2v1/LSi4kKsFM+cySbXKqpY0q9suTuXBoUuwgwVVQxeIxO/k3kopBkZ5nnQIt/qgRAVom2uxPio9DnYc25THH1rCXh4oWbIElwrmySR20i3zKBqandqAdIiFUrBpu8FpEQgV5FB2f9OXrXvBoVuzW4TGEzGMNolImxx1Wh+ZmEDUHCEUZsU0bsjPLnl9yjz+8kcSTVZHKfwZCgF0RFiiWdRNZt9tGtF8oZ039a3zMWNo4hPfsdGdjBGuckqACEdicgVlFcZwfnfTd5mYzxnylJ7OqlLnnD594tf+Jpj07b4yd+3olt44CNGtyUGAArZ1+bQyCjHXkNLfbvwLW2cPA545kl0V62GZpu4gvSAYG1cjftxQwQprXX+imj5JhrBF+D//O/57ArWC68BlMBCxn+IjBB5GjlNURU5pf5MNeFBTspptuXXC0z+9ZTeNkfOtIFae7muPITHwO7dpgcmNQvn4Kof4+HMey3aSwysMukBJ2ETFuaOlI2t5N4mNjK4YxgUh/xVabZtSltG2j0cJvXxRAj7nRq+l1NnEg0UhfI96D/Lr8n61wlAgQJrwpSggilm+IEHDyg1uAIcvX5xwGGgTamsirZbx1QCIZAG88b6VBDwbzQ7ldlvUCrFccYzgreREFkTPCg2JzWVxOgXzKGcfVqFwMhRT5NDJIczavyWCpfzUCvN+V5OTA9sK/S7DJDQdEJEx6et/nzY9xX/fzKVdw5+/kdC3sfhCVxfIEDEVfxISXEjz7fLZnVaeNd1HG2Y00YyZ/zbcFIBXxBUx68mTuBYgBQpaLkIuAYYhjOlSFgDsXBjqVL5Q9NNvNWcITQrvzhKNZ0q/ba001hYYeDTLvKT30SoVuJvzembJlPR2Tp6gMHO78/u+cAjZBOlE7Bz77+YlnlLry3Iy3zSYbyYIuk7THkhAaiJvAmHsRsk0j2BUPQb9ABXEJBn5IQVq4oGbvmRGP2hLxbENfSvTqiMTPgJ4+jceQ5T546B16P5h0ZiGg/6t5pkSEh8sCXBpV9WvC+FgAxQHscL5PwtlQ8QO3e9guaPx4zgKSAuAVO2oLcQ4YEiH1YPz2KFxMs3WjOMQPLPwQ1J7n94CurinmH7tHD5+BWChDFNmZ/qcYj2zDf+8DlTo52vNObr9+6YEecCtJPA9Y7TS7w4p8Z8H6Twis9ZlPInY0JYqbz4AFWbIKCMTQzwjqrvBJTE3oweo6ZcVVt2o1v7LzJGFpd8FRTPIJ9AZ/PNjRO6E1iA7TSJB+KY7wX5fqq1iS5dN6Tpju3yodm7nmER0AAEdwVBp67keIgMP9nJ7uFQbfqwpx7SzyyjyF8JEqGaT+MZWp3xJTkYLJZCwK+TbUsCVyzsRmTw74BOdsJm8cnkl9nNEG9+kXNT6YSLey9uJpEsKeJWRpGusX4j+mGGf7BpyzShMPs7iK4bASYEqdrAHPMS5iQKupzbotRBSFs50FO6nLsmtjGKvOKrZE2Vcd1fLwTOGk24x8vgYN5zKJexJh+P45A2s9yJ3TFzQ+vmu+6oGHL7tY5KbBZJGGlGlHQtPYvM+mS119TPrh1cbt/cXGQIJHkdiw/bLNd3MfSlgdbeW/kGu9U3SQ57VALVmBpz98X23L/UKkZIINEbhy1uLQcuGkEVD2Xd+vgWwmdofp8QHw5rDNk6feD3p5xMXH1CDXETApaVrJuijhUru1uwhGeEbmEe7WsUAUm1UZUQbDJZjmmmYJv2gV7Au8hhDuiYA1y+x5cnbMAar14WdHwlNdUPFmGmnUcL3atcqz2DQorV5+r7LTMOIS0HjHSmMijm8TKa36vGOBkSrEQVyzDsNCfym0tiiML8rMhC80M9Z+j38SWyWTmAf+p2Unk6Zgk/QbEq7nc/xqEWyMBmak618Iq6r04jz1jMOC20SJE1ncQoXQUF2NQ1rjBe220t773LyKob3wFL2xIAKVP7CcVaplPiRD2LipLwcj6LfbIHXTW1najBR0Cgj7PC60C6eziBTNJlytim4zpakewW1ZOkJQrx1CZ3Az2cpjL7ZTeACeTTxIwiPxxaZgo2clqjtdz/l6Q3JW8cHXN/7788XBZHTEV725GxElPWxe9LJ7Ge90xYDDVpkPXgEf8CEmUJTF3CTq+mf/a3bPzbt+5v1K8CT9DRKqNps+lhAZHrC7Zt4tKBfv3AwP7bnEwJDkOp1C1e5BKttfKO/BkzYVNVa56EwwuXrmSLAAS0OiJhEicKmfBKuLDg8n6wOH5r62hJsHNO1gAeDtrK+MJPRXqbFpwKleh1aMS3mydBO8c7XuRfqi0zr87DSpayrMz8dn62Wt52LduIMDDDw3dWCg9RUgdTYuPI35doYNoHTanvSQ6KZqge4ZVZ1MReYsNYllCanHrhB6bgQJuFqeDRZfx4iPFBrVmcWrEH0+jFH8IwMwWbJxaFxkI9aq4rRGTqaD1HKr7iF/RVNm8esYCwBDAFmrJqOaeQLwmFiP/sEmvsiDZpFuUJYXHwLN7ZwHqfShfuMvXw4tTmWzR9xS/454kaejYbNAhRDkROaOfTPgEFMmkKjBTa/XMkT2+G8HpEbgoczNJla/HgUPUJuE4RzZgwfSGdshaC/c9L/Z7KoWmsHQXcNwrGegy936XnxS0AIkiiG0iyXvBBX/3mcEp+TCbpq5XotCettgSmB1P8sFF2BVDQ0f+iYwQ3PRKCx8GMQgCe/cFlHly+fmfkGychLfV8pZ/6BGgG3ArlqRkYUu31jtNLvDinxnwfpPCKz1mU8idjQlipvPgAVZsgoIxNDGMTQU1rJ5W4UEPeA/Jumno6XnbhwQJz9jP+nKspCtEMYYYJKrnvg2BcV8VzRUl42dx0YTtuwUROEaPfBhigbiQXkSLAeXcgxDO65AIhZ+PfkRQ28EZgTQjtfvA+FY0tqt5uxMyWj0bxL6vF2ZRRP6XWyUg0nqifURCd2ZAu5K61Zkqy6IHnI1TCgvmJxII4g+6i9nMTaX5xxj8XPBqQbRsrXA/w3pO9yDF7yQGPk7w1g3YX3saQgCyRA/7fDWMdGBWsJAmmh5iZlELaec69fYYqy3QZPgi72sUBKCkrGRANBhEaOTtsYQEWf8UKtoqwwn2pxdlqyqndhCJKtok/5uPvZYPf3Gmqbgh3qUa67FycaP0WqF6ukhAIEgeIjbz93qapR7Ydnks9T8K71eHDqZRjeCWaTzw8vZOOJUUI1gKGhaPy8fBqf50qmwLWkJ2+NgjYp449zmJHkGCdDGWRc8mYFmSSD+id7a3zWnWxh2yyppnfpFQpz+3/E9Cn1qKPFSrrGxj5cQKfQDu0WK0xwJFSgvjnOMBnQb9hWt7YokYsDTQmI+cwWRlxumEh8NofVU90FqcEdIwJRe5B/WQ3nbLidrPs/ITnVPoV0ActFCyRlYVrnehYBSG94lSTJeYcLs9OqTkAY+sZqfBvDiyExgXEXtQeVawigm+rfRFYwV3gtznhxuh5zEuqtUiOebBU902+sHaiA8uNTpXDVoposdXsUkvVAUskFvPxA4wuc0hg5rKQ28ek6BydMjJ5J5SIPO01XFI+imFFFOa01WUh68uEpCuhMmDf5x+GCzUP2nSOv1G/k6bB2UDpYE0dySvwEyoQOw5er8c5wMkSFbJMHSdhXEA0dMl9EtMe6Cn/KmPeBXCJci1FVxooHt3AxGBYZK3qpqIdcJi2P+55CXdrnN8M6Pdrh5M5MuWnjhJ6tcmbKNAufqHxpAac0p1CDXvNovRwA9iHPGTWMpIm42WDDWUyNuUK93D+7B/IEa69pn+36Bfvw+p5fCX4O4K5OLrJ3/MYtbt5Tl9xnqkCMazsyA5lvuof1R3t0hWBnEMkMXQsaIfo1Rq+O9/GKJBz/N20cn916JIohVD0B23D82SiGBUv5fQ/3/8cwTBgFPV5kjt9svGxZpTTAvfoyt5sl03BMgOfqIJry51xcJB8xZ/kU9uRaRrPFG+RUu2hSrF9AE4tw5RdGoL/5XUX0Re+IR5xRJwlFov72KZCnDT4kjkGiZScKZnxRKY79ThB5tUpbZRJwkzZmN89uaKx7S3YGWnWbhtIrYtcJkcy8leEaGQyt94ZGbxVeXeTN7HA9zI2S9ClrVJoVrP87CeI3F8VY1ejA/ds27DoeE7rv2TONTe7vRfwsR4Y5t0WOhks3GX9K++7ZrB5W7PyKMbXwLSo3lGZmrkZoDPjCVcl2B5kwafQAYcxcgvW34+WNV5A9qGsSiGZULTlxXtE0TF4sSqyhXS9hCYPZSWP45nzOV2IDtZkh+pohdGvrhQUWCMruhXBQ9ZZ3xs32jqdlofH0htM/cqkNQSVlRGwt89ql4fvyGF+aAtyDPfgTVawHm3FQHgCITgWfD0UbIT7I5hv3rxE3NzGZ+gNCFMjhX+hoS7ekZyLr58qL1kBpmNtqb2JIjRo5d1CX4Wf712nhU2KMHFS07ryZdSL0nETCytiIwLMXPZ6d8tNOqLtIw9dkyZfOmnZp2qEvhY6UYPOQ1JO/wB9C2WyJ91c0Zlh8ksGI5NX5226Gim9RS+lW6j6pthPmFpb6uYYS3p73rLVKMekr/7YX1KA4O16rizd9HmSG0meJEar2Zo89W3c7jPv5ef858CuigcNVyc6+NiXdbVcpMihuKWsQywZdV6B36YQhW4/QL4xuiGewTtrODKD2YdJ1eD9ULwr4WrP1O7wV2KWu++7Q1va8NNjpOLTo6+lhnIKSbia1eH34F6qjUDZPR2x24yVsGJZjJxTcjO1erRNigJIh4x0f/fkRQnQLw57DANGBTWKz5d9qyED3AYskpby3k15gX1woqp9J/2nx4hj9Bec/htYjHhL6QVfzq3PiJtHImyuCXmbryzLpr//AcqyBlvI7miwiyDu9VjX9QGBintZd9Gp40HUfYKScCQRqZcSpoIQ0WL7w6APu+fmOBdCeKEtlGAATY4tihYJ8I7oOxzlX1rftWVg8YlSCzqKG3GI9m2Q16ldjNlyRf5wBG+50YGtoXDt0q2yDuUswd64idaCN8+b4MnaOOu7j+fvZwMfXcnNe7gAOefCqm9AUBshqlEeYMgYYZwUjUhJ7qM29AD1Ox0EKuU2TAHcQIr9zUMiCTUjuJyFsLwwsn3VzKv4y2F8k9n8V2/+OY3kmNwUP4E79NrcKt7m/TY9kI8ZsjBNnLFyDn2Y8/CXMQh/CbCF1U/bjYsSdjy8ayNjtD1Qpw7ATwkfJLC5yszRXjJ3cvv5dElojZmwSGeP2jwJwprqS/YnfiTiScFhC1C0BU9CM6ZFscAZJKIMWWxrwqK9m11Joit3R8dT4f7fUnDkdPgSwGlOuMtGS5Qa4rPeK8CiC33Ylyi8rBXiGFsDbhbXORjg0YLOXUAURdRwciYV/bc0NHXrtQ4OboKu74PGdK2Dj5nVV7nsei2WWkXf8QjDG/25SPA2kKqROzueC1h2NKxJ9Gp/T9/c/eS+rwSaM6uip6K+7SJXxBmPWrCtcT/NkzvdoBGQaD3EFVfT1lOiqeCrixhKfwI6lAAksZtT5ZCUdlQXaKh5HPE4HygSX/d83vdrwL2Bw6QAqwc8nxM8TQXeLkZCG02u45ZBt3P+jzHQd5Lp+oiHxpq7hCE1T0Y7ffRkBzZu9Gf2AfTajLz5dzuZP5nyDAdFUEkdFgqj1SqxKkGna+xQFjDgKm7xPwqKj3Cqx+v/tX5RtmwCSzLys1Yu9Tcy9lsoc2f5HC4QLcee5UROCSR5cif3ViQQis9GuMujDGE93UK2+fwLzrC1/267fyrvZt2dIKIvj6qF0AzCvgAuOx2yy2lCMURj/jG1GgXl70iK5S3qGGLzamRpAVWE+x96AWQCef6sjy4bJSTEaE9eh3IDRyc4OjghVvvxSCVwVy9lrrlkVdL/ZKeJqVTzO9Mt/ElgsDnfbHPtjbwP+Xmnjk4nHLfcynA3b/ZSxHpGOuiRoVYYHJjGXUPuNToGmHrKyq65qwEgG8zK9a7D9uphnqFsiCZiqBanIazsIO3eVEM9tTTWuzcPIFnISyHe8Z0EqNkmnzs3gCqxmv8q9nKYJrLkSO9d9e09yRKV9LLcLW8fYWtZYIdtdqiYqi4TAFayoP0745nH28RuK8h00oSoO+b8RcFNfR8Ej0hUHV6UZA0P7xXxSA8YEgXsrwLnjAM/FxwHPDC4WE4GQulf1Yq0wLfyaj6b3ccZFRDSI03whvdZrUPSKATIuj6Bg6rxAJLHl906fxseYie2TrBxxiQs4d1D8VqC2iH6msq/F6QnsX0eNR/FNB6kusxv9L+cqhomYfJN/h6+2IjiGaLSHz0f4stwByTB0cZOLYiu/pXHwexHsm6tzHuydROULDwFoLeMUMHcDjebyXIph1k6h+UTmzeObddbWVho3jPLGal/QZOWAhqZEzkMfwm4o1WYvX+GxMZS+VIB5LN82yufBnGwsleHGIDomGjM+HNCmrv2gjrBvGvBjIt+mQS/wVbaxpzWviqYWP0jRfF8YSClRf6RK5a3gNAA89vz/30VlatOUES1yQuc+jGnMp8VZAt0L0tWj2kXTI/RYb7ySXjsTr706vv1nBlYc0idXQNx3S5EKDpVoGTVNIUJ2HvpKeD/E4buZELiY8XxF9xl6YW+QvvbIqKUfhWLceEj2t0Efu18wFEaRuzXAiDhDJ60uYdA27ZsPp5sJ4aPxEICWHBZ0LiRzudl7z6ZyC6QiTen3yIQR1OfNjFFmS8/9Ce5j5HfB2U/u+H4ST3KwagaAKJxFIo3RDzuxHscf5GwRBXGaJYWDtsI6hvxPPeN/BG1OlxgcNf6QYdeXFftzm51ftev2C1X5f0RTh6krNRsGhJGFpziNcWWlQRJPYVpi2VRaqqtK1VdUZObeHayL8ixt8WqbeV6y6J686m9Ty5tGZUTnNtewJierCWAsuzE3NsBLyy51zbLBMPrqelJT6X1LTIdHbl4kPx4Ta6OZ24Uz1/0WmRDRaOTa4WLG0GvhrhOMtUgS8xE0xPI1EHpGLYzsjDmU1LuEJZJHfdgVUxYSD9ZFlgsjXAQeGN0d/3zHwoc2HLZqlRjTtk54Mpx4uSX16kkflcABrVpqRP048WJZ+leYm+hXHSnPEsjw9inX9W/mhU/512ejJRYwf32mSd1DYue4s3tjutI21t132Ji3Cp6uH57k1ATIwO2MOsSsjy9LM0HAK7j9OYA6liTxAkcZVLJfsQyO6XNGxziUg9RJcl9UjQD7uz0c0sgnllL1IX8IjUcqm5D3ZomTxncFkRMnDLmgvG1bnrAv4nCSEFeiYIeZIA+fOCqoGFd/i/AOt5XyzuB8iZ/f8lzFlsbCiuY7y06aX/57qs//5mqQIqLn8qbKtfJg1LiimTDu4kJ4i+aqmVUcDKKcNa6OkiTgFsX/i4LqzrJoeRg5MLr3CXpHmP17mGJmnJeq0fdV1phg79zO31kYcz67AJfU83YP4dZhXUQ9l+Xc+6lsYy4g8s/jqN4/btUaNNngudC2He5xPEyLeksY0w7vj1zfR0NwfxFQ6LbN4izve7lPvwxNdinlXSkZc8oY9H81XdTFHNx6huAggzqQwrPCVlG03bUltEt+mq65/BcWodC8pdF+vJa5yN0OFuYOzG7VoxVGSMzQylqufgYSiytYcKcnXKb6LPkzuwGN60kABu5j5B6NfpRvI54sLck+e0yTubB9XFgVRVRcXRFHINLJF2PhbF6TN4Ode2rXYpVXe8eC5C3TsyMRni27MX0G9m8ycRE1JH3jKCap3NjiOr5Y5WT2dhI/JDVcIpj3KRrAHYzh0Xn5hzNX9ehCzVPD55rYqBjBFSkaw/AUL/WefayaceqaeDEOT5yoNXaiCQccGgWhji9IYHXiKRYd23g3atJvsjvl9Mg0S/qavINryL07y66wUrobXDfAM2dBQts7Q9tpZMCzzUphRiWS5ib2afoIyT+nOSpG7T64NdSi9kwVIBQGd9El5HeWHVKcE3lyFSwFhvMqicRuKJ7pIB80FkplZ2sjYZc6QHFE9mH3382CTtsljPw68wNwHXrsuT7tbiOLVy9fUpe7kQsmj3JkkpUyRIOnRkoXf1QXqodRoKZI78HR4rZ1SqFNsRba33h+FXCzJmX/PSEbegImQJ7KvdP7YHdVagYWmEjknWBDxcbSYnFo6nYCQrNDbIQyo1E4txXs9tESAMx34R/Ce9Qa8INxQHCf0iST8FQvTlU1apLUe50twa7cWNMXEPgE1BXRBraarGtUBlJ/sTRnJCVYc7GUJ0ShxPcfzG/a1vuuV/1jAlQSrZIq+5OkvF5ICnkpUDpH2O+UWuOkI/s+U8l0zoC7RxEYlMmuNRKy5V6CKRHozvKg1nwqHIj7/JdZiZ9izbI41RKdPAmGUOCiZ7o9vznpc6syANYWsrurZJu5J+Hfzh1gOC+Hv9A6wfstUIwxuJe4Qb6SyUzur5IYSuYiNwtABqxROeMkXaz/mQQGlDGAohSxT454Y2sGkVuDJDEP/hiYv7BVCDUAFOrNqdD6HR3cMoMvKZqgQEeOmoljwz5XX2cw72Xwn3UpkOZ4OjpwzD6siGXoHBV84u8D8lHhJg8IYWMR07IuaRbGX6Qofo2pz+IBZGiMl1uW6URhbnZRcl9EQK1zrH2w/X75YW08izZYfzEkp9dQ//DNBaTNQRYhnxoacemUxc41gZUpuF6MkxYgYIzWBChZEmtM6q1wLE1VAY3UCkLpO6u4F3uwbvVUw4Yvz8k1LQkXWhdjHFPdyc+6SMHE0TeOk1yvhHEttOl/921PsxPktVePtKlqawfjLXmNrGCyBNrpKxVfatCxmmjvzU2lavVAG8LcLOFdct4rewJickKwHgFlWTUjW0eZ8GLIFTHpHd3Q3BF7+AxGqz53Bt2He9mQF6FDNQ5g6HAIZRoePf5ay8/VkWd7oRX299Qt3hdSKL28Zg89C2SZY8v4IvzlMMJHVzmaRj5sLB3iYK4IqLZRbhwqpM9dJwvS5dZM1KtHEB4MQKJOJoyNOjuuU+irE/bnFRGq6Nw9bx0h7bpVMNDz7z5eiT0oUUAgaamtLQih1/Tf/pzauEtbf8XjtIKp9dKMxqkFdxc5s24VKtZtevEcJfJBmQbMNHF1EOV8s1BHOFbMTt9DVasqi0f04gB5Z8VO5uTH356AH6aW5gQd68bVzICRWA0bH5SMTvMyDvBtnOpAhggo9nBdrQ9wtNi09nsyMMyJG3i11hBG1s3TE3iY4GJyBOrdNyzgp8e0JauvrVsOQmQAgTUCvY/45wZrjW72Wh++6+OEe45saBhBRsN0r2a05N1MkLvRagRuiJl+60qONs1KeXdD0fwu+Yr2MV0kvyGp9ipy6hf4Nw5QHvUJ3j1csMp8MPABPjB/CfSRHu6JAhCraWUhOlClCOroGc//F3RlxUKjPdXdcMEE8t/MXS8soFovl2+ytetlUZ8a9TRm3TIda7DO0fuXd+y8bd42KlVdMrSn3UcFFYRW/J/QFOkt3h9C0GeCupvq84CEAx63KXPhs8n3+1kvw2cGuxwPuV3y5YMqG/dIivQQaeih2LIZlY7ZWpcurq/oBNxtkXXBuwrTTUnjgwxWeWkn0uvdS7vAyRtUvIv9QMQBs+wFwIYSyKg+iYfOd6qek/7Hdvb81dyTUAHs7o8MU6dxWd7ts3GSTERQRB9kPYeaTciIEEG3Odclci4ukKxqga7oRXrKJsK+Vg8mURCc8YOfYS4ehv1I2REW8pFm+UjKL4LJFdwvBpaCQeC4CYXWsPnw9D2W+/a7SrFGsZonE+WeEuIyqcvjb2Pw5q3gFC2dOCyhJeZdw3KEcdH/r6o2MtoZn+lwl3JJd5SSgQ3btq5vMAxdeJ5vtiUV6X7PU+fkey1GWrx0oQ519UN67schFnM+2wjDmUz7g8PIWts1vR03u4EFNlZ8ObIsrB9s6vjwwxMb5xY3STmhxPS0Tikc8QDqcXHgQZzGdsxrt7HebaAd+KBxtyZ6dtMvL2H4ntfa0rD5yvUkWNrKi5vLNZQSJWL8q6F6I10qhVMNJYw2y/4UCw3ZNilZmeHl9B6Ums01w3cq3DudsaSFZW7leHJqDQ5y80BrtdlRHLCjfyJG5WdJNV0m58s+T0x8EL3/XeyJBSi59aoRSwqxduV3EiUCGORadvhomd3bYWBiQ/Q17Fut/qveclaVg+pvExsxNx+5L6JiD/GRnpHExs/kjHAVqemoXENemO765fxlwr19YrAx6L0Ohfgcb+EwkGavmW1Nx11Zw3WYqN956oTVLbFl4igxAdsRWEIr/hj/g2V337zxnlJNm7TO4OE2jYBQg0/CpZoHNZEb8xIH3vzSpYWjVyZDaPhWts8JzxAKI0PXAfjamq9gAytz8jcIoLVxFU1jfgSU6cJ6pTMWyO1pvm8EIcnmR1E9/gVuJGcECt3oj93/wqBMTPCntVBf9nKvBUr58Zgw5u7sUZpSEuIS+vKw1fuGENhV3cGG23a155L6QEVlpCxenqxNIlJ109ruUvpHVKqBhMyihMuBonfIwuCrwiyy7SQs6vX4dlTH9FrQPHU3f8GFldCycgrasRDHZUk2YnCV/c2dvXWSmiil83WWQ0BcH6Q3sbdKwR2a1kGK8hn9Aacn+PdyiVxP9IoTdbWsJCK5mQTdM1+0/ge0mWL/08cx27ZQtOFdXxOOEaJWTsXIPIzlFg2EHi8YxKHYNv0ZceXrjHkdzyZnvUQXyrnxgxT2SYzd1ZoJzBJn8Zb+b0gFLNnLLqoCL9/n0r1YjJ1ZK8Tm7u6xBrirvdCh5gvv/GjDRhr0NHnUtw9M0V4Ua6OegdJPoObrfCuBuO7PLC76drLykZqRWCMl3F+Ov02LJspfqhIdCNSJ/MusfeSZ3/aqLuJfbeDQSTGgnk2Rapxn33+oM5mzCcuj8g4Gn5GITiRnEK+P5u0PwNz2uTRktOBDuNWtm0wRRh6ZTfYvvQXvjkghNppODbfi+9PiV5dngRt4vAKKJBi+oMJ8clVP5HpWtdd2GSONgENMQZvuEGqlrdrVl9OxJGbnhfpXQMNQRwsvEc/L8rIB9FUfi3BYfRQrtwQ+tL1rY5uSBu8LN9kJyBN79y4ZQwmU/Hjr0P3K0OC6ZzdrikVG/s9GaRwi9PJD52r6GI97nr90SZEK7PkgVtLD++A1KQkv9TlVmolPYX7avP9fkgOiX3GhKFsjFxeMXFRhcuGmoheCw+FzWPZiWunS3gR4nRaFXUYvNBfrUCRDujjG6ex5GREZGelhw58ROf4vT0/IOe1JUM1FF5SK8rGOoaSfvX77ePF+UviN/zETcfxzG/StytBzIV0Fv7NjXvDYmdlfApyGfj9kKzT2iuqsVnyEzG9j+uS70fW90+XJBk8wTH9vynAreePhRPy/HFsYTHP6ffzfQ3xjMMY4x6Aq3nhgp23LdhqC5PFfjG7rrdu/rRXZw+OHIHHfJnIiFtxogMeYGgiZl4RT/dewqPQscPr6ulh6d6Z9bPXvNI/EaTx1PN3OtKcpDDorYBV9fUXoBcy8w2sjBf3ZhdGvWXSIXF/yRJFntqvfvLy+1UuGcX2fU2ypEFxrdTOW/LE98wTdFo6vrIJAs93Wf2+YHDti81RwgwsjzsS45Bhri+ruNVrUkTEc2RTFfDsa4EMqzYYKHhM4fjimx8xB5VGfIFcgffcmHsUNrL+bpCMN2z2xuyAgMRRcizmuD4VYBCASCt7cweO+fn5UohwQUAMiglvItr0ItiFeqa79X9HK09b7WLtnxfvIn7CrTBopfi+OFx3qupfZSl9F9kTjB3Q/xkPzTekEFu5Du+l/Q3EyZYwlUuMMbyaOt7/um4/cfvsJucIBab6M5Xrl8cOcwaJ+BfGIrcX3wdVkFvuwPOczebLM2M981F1eJVpuuv7xfsqIVey3Y9jJnx1QFQiDa+RjOWYfXQpeudWgcFcT/dsGll/Op4YcqL/nDq3yLYeDeQM+a7AP32nOe6xprU9gwuCuYNt3oLZJP/It8A0zBJY06r94MWXEnaicwTWiLr7OlFMm7lFRwXMThcQTL+SkMS8S/knHQRa11hszLoeyp1AJ3r5glW5z3lxo77eIKpfSlLtVjzY5WoNf2gx3RuySnJ8iPT9eLrPSCp/AV/7aYyAgyzueu+xQcYzKwxG53R9RV3P54+eeVgoFxK4HrJpkuO3dGqr7xfp0I7qGBb3tNUI1GXeQ6nMeacy929jmecY2YtJHoUI/QxqL+ULC+bh3QDFlprdAwyu8d4M83rQnwiKSiHJg5UMKnpI/U9cJwKB+dwVUwyECGu5z25K/OiicW8jm8YZIhdlWAtmtM2Rdy1D1359gK67yismmrAY7RfYcAphPZ5MF0QvQei/oqDvwIvnRQO1Ih0r8Kf6htTuLbt+DqDyUpnJSsRrK76IQoBLFoK5g23egtkk/8i3wDTMEljTqv3gxZcSdqJzBNaIuvs6+k/vACE+q2FRNDLtEO7gHrA0w0xYD78xKs9GcS10iY+Ied5C4yl2HeWQSAxGKetggpW5mYDa5KjfCzAGu4L/zw0B1e6qAT7qHTXeyrv2yU8vc8da2RMKrbrETQh1WjSuTqRmY9GV4/7UEHS6qSFtWncVV8niDPJoZP34nhdmgKRAlNrJmz1cK1uiN0six8QsrcZ7fDs/UrCOhNU/PFq1pFxJtnbYmOULhEBCazBsB/aVOOD5305z6OOyfLcVl0f/5U6F1PcFmrRdP6zaX5bTETs+v8ch+kz1KvacDCRmwQjmfibO+RVWZTjVfK0mg3wFYSpY3Y5Yk0vbFCaHM70mWD2rTBEGcqEzBOyAsEQw/EKLg32ffXv49uEG6eKTozILtp7zmb1Us6OH9puGaSGvtAUJF5O6nJvrc7hoCamFxZX+P+ceTASegq9zasSONvgQ65mfBXclseUOY1w3cZIsVo/fLlmvGqiXvLUu2BM73als+iS/JFJxuIy2zs71bli5yRRu38lpntk4rlKXvu3vJmMvlqLnEbJN1nWqm78gcSCo9dqbn9DOR0vb02kiHnipXkEEyyk59IL2hFpLKvl56SH0B0crnv7CiZZ6X9MVe9BD4myzbjO9KI2R8lTuIOTy1AxCWfcgpVcPxbFfri3gMY5wlSoownuefoNAHLKoeqdFCBfHa83DaY05BKNgUxda4OnKY+q92XZR5/hojscK5oHlvdW3pzw1bOM3kK7HeVfCHNRCsLw6+3J1Fy1oFKlVW+7hukAhkUUJtjSaCh/D3gKyzBkXBUZ6Sv33TjuizGhI5t7CoePAIk1BNC1wwcpWcxcdC4VexAC+94a52GqQscV4WUY/c021l4cAnCUjE701YcOOOkFUOl3YbSu7ggb7C7E1m8WSDLqNLxOOYaXjFM6K9yoY32fndBebNZvczw4tFcXUUMQ9TXFHxtHG6s64g2Gm8wZZC8dvxSrTKjm7acEFq0RzO7b/VX+4q2tBKHJF0XclFakIuz4Ddqd3q+GaKFJmGva8fYtuWxh812jyCqB4At2J0YFH8zmx2NQ1DGhp6VZ8eJYEe0Qi1LuXEaDaxNJjzj8FGKml3ZdRARzNLm454uAmxWxjeBaMaFid8OJg46oVhAa+WVTP+89onLlkgBxpNGRsepTYWXscI7eiT6z3NlU4YvxT7mdkfsHGOpnQtjo7C/n/ij1MI0BT6t2vqkKDbvJzu7Tc5sEdBfcHO4wu5BNEgLWbl0wJ7WOEKmRLLPOu5jSr9bxmMZv3aFc+lI+D2w43pw+fIgo2DXO2QDzezp042Yk4TnqqZcb3SfRAkpyLrM1sG+Sg6VZOJua4bmWud4dchn4tXjAu5dtBGIc7JYPblDh/yqqi4QVDCMmXZ6X7qV3ixNAz528Am8ZwGQmA/UWwyRm2lgm4XrXxp47lqXGq1FGmUt0s8hGVq9p41WSoZ9YqbaZ+WvtIuocv6As0tHX8eFpn4J6pOuWcc5Rxx43UiJvpgCqIcKV2oA6pxFsR9q3eWYDnuDfm8sfjmmy5NqdA4rUrVKxFZ3Dto9hJshfC57JPc7+VOQ0tihMmIDx2OhFxq2XUTr6pgWl7qIoH8Y0YUvV7OV2alahwvw/XhdEroKjYuNvyBeS162QgK79Ziv2Loa8extcwUrRpE5l8g/vLKgi5WL8M0UT6ZoCOAjj3DQERnXMH3qQrrkimAcYnsAKU/TEwXm0gWjzLiB/F3Pm9lIDuVnk8nEdl08rlGlCqfZnCdCIT1eI3IFeAQyVhBylr4pri/7ee16v9M5xkXT9ExKARqQ/OeoVrslTbnzcZbIilXDWeAtn1GixcSbZ22JjlC4RAQmswbAf2lTjg+d9Oc+jjsny3FZdH/07BZfuHmeVkRUiamByax95CSsIUUKRRyEJbxDRzObQMPvvDn5R5VrtbU6PQBdKj5E10mDS53/zg81ei2WBqWTIu2zLVoE6CUH4qDW+SGTTG1S+69BpzsJdolqAMn/vkEe28A9oqR/jEkS9Bt+8uqSbjrZ67IiFOW7YOV9j60+SveamHI9v15xzy1v/NcwRyi0rlxgLr71sS0ckGiHuBZp8+0DiW45h1I2xI05k3dvCOyD5ya66X2jh70IXVaV1uVbKpqYzchnkuoyT1uSs3BvaX5rcygMHoqIDDqyofpYQXNw9F0ecMQWrlDGU1T+1PLazIme674VXJUTbKEWmMHu2UwK2Zsx8eH9afpJdtCqCTP/tawzRWhoH6xrfaaLDzSrKbnmB19RU77kEXGoPYncFZjGDEXFzPS+TWheKHruv8qAXhPZG+uaV/mheTKGbN4kd52d5YGhjVd+F1K5hNdcS8SmGxfOj5WTNavznOJ3C1fbI/M2Uk7L3Z0qcYguLeSJnFLojtk7DEylSbvLHPPVQXnrYSFBA6uRvgO1gr9K6qx0BRXcexfvIahN7omQ1ojWRjxN2EhB08MdGI3jGk5pW/zSd+NafaRqq61Kbwstgjn3GAJBLM9lJWS4k7/PsBPNKgzSIuanw6VvBheqfmin6mebuIE6pSMlzsYDEbkG825xOPgcp9I0fIYEqwIb9Ls8HbKZgg7a5QRdM3hmMd/JDfH/oBGBjf78xI1ronSZ2kf4000n8aIf3Ig2b/JoZSosfrpB15sdffMvsTPWDkxKO6YuovYdhYInCj57NS2MGadMI4BW/5J8M5cU+mXs7d98DG0tspdWDdxTTQzWrFi6XL914GOKDIIjDkMZCog3vWQNj83KP4AJkHFLHVfo2pbKYqY83guEmtiU7mR0KzVtpzc1eZt1Ct3+jkmdLgSr/fGJwsGzYe4BeIU1/uqPsBN5cPSwF0OnuJiELuyQdFhX1Fq7kSpcfvYSZydI39rFoZ0gXflZXf8n6bqgy4XihowyejEX9ot3O1zdm4nfoF/WtBidtFi3dbPX41MNfRctCNQcbyLBlVPLEVtegmg9tga+eat3j/1xcZbZN7gv8J/4KVnhigcswlBLQNmPw6fEhzJzR4T71csCwHv8NR4jAkPUvghnKqd0cr3C+CwJFC3+UJQImwlH5X8n5VuiJM3eoMed/mHL6ttJ5a+AowHGrlEzBzzR9Jzc1c+XY8h4FGmO1SWYUVdebbyOSxkfrtRfJ4qE4lIoT/Y7pq8GdvkC/wk8AeYij16yGfPOMLrjfAnsgzRjuh0HZiZusw3ZksaaIR2PC1s5p6mzbwIlw+aD3lGpQN/g7LSxAR4jc8yFxC9VOKb0B8GM/QRvc8khptZPmnQsUeVfsKYN3EHAfDWP7b5l918FKZZe4AiG6jb7DrE1rbqQoI1uthYwB8lOED2CY4K1uQ1unKursx3RNr7p8qPoRbm9cA4xI1hs8fxzTS1R+bLDl9ms1xwSqBBvyVZw10dKUlnIz7MSfNO4MVm2JUNynRZ8lMcYaU6NtA+jQJNPji2jowiObVeU3MTmkgalTRdkIy7dxtsTCY5QnSl1HlHeuwjN0uCCmyvJYjOspjJV7D3TXRM7nV/JnPD830j2+u52iDcBQFE6+xAsz7tr6RdYodnaJQAYlQnJkOhxqFc1YCf0kkfhxNcWsm296V3oVyGrCUkj7G9PXr1zZO+QmOTr85KAX5XVyesycvI2kfeVn6ondTNTRcCZOwgybQh0/GCR81lpE/hA1sQXbd2iRZq640JBsVqmAofRMOdb/N41afijmKR/3o30JAJVbHMmuCcGbV43R1esjY4q3S42bmGe2xpUzhNKahVFxfPj44nST7nc1Th9WuSb4Hksd4z9JYIU5M7Yhp0Zd9FKOj2CG/PM5IRJpMUjafbhaJsr5J4vr3ATeiGqcNxnkKb2ML374iVhRb+0CYaI5dv4d+tNB7IUtSnyfXjpRSCPcTuVn25vRVacZPSUsKrg4EfuIvam6+3hfX6rJPUVFQo0in6XOCiATKEOp2N0KI0GcqCXFY+tkB65DSlgTZKkavHTwaLZt23mGR5TKjLmQyD+KU5Qnj8mMIBGITtcsDfCrf05Bx/AFilOsevO5LmZJBaDvHFkBM8lUd9pmbLVnf8/r989nsJxxamEZV7NIGtHHhge15hE20e0xlZ2qkKKivwYZoYKBZ/T4JWqwEfjQhj9yHxr3eoHRh7PFP+QUw4eVVOEW65upSoVIv8B4hDdQK1Q11VCY+62sIW+x0A7SXLWZVEKwVMHTYlPJ0q7tGjx3jiZJnHPG7ItnzZf/g3HMIdNACXzMPJJLNpD7qm8UFy/t8P+D2qDt/wt6hti8RIwrko51AxS/aIoBixbxljoBFUqI8TPD+LeyDcyqKtkioUX1+AHLV7g1sqFVp820I9cBbGmL7dZ/XMrFwid8wDWnc5dn7trMXWlZgivpO+W4nxOVDdQwf1YmcAeubzeoapgGk5XueOInjJWyYnJQ6ZH3V+pLxRGdWAw0sHf5+nRZB2O8foLGGbYFwnGjG4EvUQ7vHCTndMC13+GVVdfc+vBHn8FvQA/Xhf32jQeuFoCT5DUrtC/INDXKYoWgPZy3xOxfVyfjuc/of3gf6YHynhAq3kEpIVN55ZNXa3gim/v5VFfO5r8KeNGeNUeSzQ1QeDbs2kRY7XAVyP3L4raH06yaRv1X3ZDoabWlrolH5zKIULSumINX0DWWIsfM9XYCT78imuc2ReN4/g8XYj+oyUEpzD31nvLZPWkB6yRnkCMTLFpy4J5aPsJaXMDE42N7d8DFgq1z+2EWs9XQf/gWnUCVU3+OzsOtpH6skvM7YDy8At9VM76YKWp0MF21gxlEO3pxSTjTi1DFOgawixfWCT7hz3Oofwzt0avlVagy4QzoJm7kbgM/G4aRyXPKaR84qrJFJgtMkuKwp9u7MjsL2C+daFKqhzDcwQj3QYeet7ERjbNRfdPmboS3QJ08bTw9v72a8D4zCtRUMhnWzKTXldi0hCnplH9/Ah5cB1Z7fCy3zrviMmd4IV60VJo3XvD3SUwwrGGaFIvfhISuAjQHC+N5xHSV8GBCfxBrR3yJ2hTWPuYrAtHGIjbj0olq6z0N833aPKb2TMfUQ0Dry7C3f4wViWy2fJycBCFZYw73ll3mcvM99l71le5gHr4bEMOjj9Tox6V8nFS3H4PBbEj6O6DsC0W+Hjf/EDENynUnBr9VejCthUNPEOHoG+n4mz2fJTP5+IhFF2ixbiJkuENW+28ATRU3EUeIGnnmXL7S42TRI3nqC//Ym/26fYbzFlbJySHe1ldpr3XKMol9E3yJXYrpcssTJrBXiVwyIxVYii4cQ45As+rZ6yuUf0TI53BW54UMHKSKlUlJNtfVD3tIQ/hneFiqd6Q91xrqCWcDn5Yq/bfgMUel1wrg8knfH+ZE5e75TCAnM6mhJAS4MLIH/QgYqfABwgGSxFSWty85quf9fYp4pHIXHfGUySFmwplpnPsshvyRDilHNwQ2e+iO4hBuYrQRIaRc1SRPYszY3KCJlAioX1nm/DQarWmMTpcnyzzfn71UAjftNUdjj3mOxL0J4Dpj/8JooX5XzkV2hgpLo1Dwu0Lzu37MMBTScwcLPkoaFuxYD+FEIaqGO5CldxhNYvAE4kgTCOOrxPfS4CyUngDrwld6izydSBbkFZ9KwosOzqng61572nNrsO3k8u7bamRQ8BHsc6pWlE0CFufJYNgomo1eCONnsncbKXm4ESYJZAW+iFeDsnCm5s5LOx0HS8LmjsaP7c7lvk4u1u0R/Rx82iFP2Z8rLfowWemFtrwzpI8jxM3IWOJ9Hm57ZM1+6xFTogFqQQp55Ayh+nkdEXxyNdHN8ketOwSpDVuSTmAssw3a9wj+O/CZKg2URg5Ie0oFVSXFNKjJB9rSRUKV5wDasaXgZyAiELt6U6QnX1nLHRtE2i3qrkQZBeKYep7vYpmgiQIE7N/TbV8hcV5clUYI5LBJmi6mh1qdggUnTNz06lUcYsG/IsZspfIiHfxwt8ET7qMGWM+gNXY/H/LkGmWe941thobTcV354wcMByN2aFtOZs951wyXNJK9Q586zumTILBIAg9xrWAbedJHmjaoPVO0hXeatZ4U2G/ABV03BNz9z4RLtO4OWySmUkjMZXSPwei67YwegEkrWJoChFkLb1cZbfGvmRabZcekTeI9t1fx/3WfxKsvNop7q+SUU12lCLhQgYzhbm5ua58e972wRa0TIG/NyZncBb8X2ekH0x1WqeuLeVJjoWmNws/7BwPkmVV0GGLz/+MttXmp0ReFGRT+ftB46rgr71/qpUD+7NmrTzLMuuLYxRam+MuVxu2JbKh/geJ15fiK8dY93TrMJV6aRRqOXHategUsySdQmmrFznTaWI3OI3aQ5YiSh5W7dIekzow3W9KoM9U/xwVSnurz1QN6EkxJR55E2uyEFkFXdgyiy6AtYe5E5XdumgMEkX5bfPkNHlIU8fiM4AfAKcV2kWw6FvsKaxhY8SYs0FWb6/4GrO/yQgshXmg5CXcmhA2ETtEvE1r9Ia58WKHv5+p3OHmLEJzSjuplnGXshT/+Afe6jGvMSlFdy7NP0q4+tQDSrA7WrBxygxWKGzYX1mLtWwmej//UZHnU8h0ELsy7S6sNbarwxNrvEtpigPELwH9LdEP2B+aAPpB+IN/KIMKlkTxnwS65KNHTOqmgVNBYgGx0mpKdM2uCF512sJy6+TVu0MUQHx0SQER5VmR8icHM4u/68rsCFLLQe2o13jK/mcLO3AnoXOl2Yyv3p+GFlWxyqPESaHiEDRfCg+jYQPrJ1SOfWdmBWW7SAbd1ivMCRD1FCQNdjaK2Dm8gBGcK8wMzAvZgYd8Z+hiGDANsfIAhm1BAUR92hDbah1ui2EVSNJ3h/oHC7bc/lOG3k3ln/tpLwiq2tfanATPn1yGlxrUVcj+LVGIH5UBO+37r7/UUR+VzeH6vMLtgjYLyVTS1PPkptxUl7c9d0QZkNyaHxjPZnnoGijRa3UX2/WUY+o0XK80FSi3pYPVK9ijC985fFCWog7kaXciaUdNkVyvohb3sLotlH0/OjzCzwI/1FlKawksQxXuukBCLUMk8EEr5KF0X5xCvpKwQYs7IdrVkrSeyFPtloDvK8pPZuMqyRucz8k2Wr/M10kXuW/TbolMmx0ANzutObN6go8wzRnWPDPBsVJ+S/NXSGok0hMpKm1fApQ4z5igdwgwqCaH5h+LmEC/211WKzO0zvS3Lkvtw+a3Du/WUgdqwCTuwiBNJWVK195SB1bOkILzPMGvyhs8EZL9IjUY1nKBwDvtTuR/4HP7DVuC2jpLgNnQ/9spB+VrLEvk1Rq/6JBjt9ekWpSD8gXY8sY0x6/JoJLbGfZbAPTROcjF/P4zL0jVoM7aCZ5El56pdWBGBS2AfQzkh6+zz74AhBo++Haeo2Xfu4JC7oDHvJIFtFYLzZbGWhBKPeuk7Ic9Va4k7CVBLpg3W3R5RT38Xl98CTzRQqJJ5imy/eY1Kz4PuI6sIXAloAPoLkFApDyKuPqp5f47OzV6CvUCBLi/xT8u7zU3PWofbJMGX73uQqyLjvetSTsw7hQ7aaU7Fa+sTld6TCBxAV+CkJL1yPxhkpgFct8B5r0STmUcRXBY79aGXj1suyuyPeHgzmFwyedcDR9030y9NJvguCBbxf8UlYq9N01xtcAGyST4w5VE8hNJr5nYFrqL1MoHAjRxcWrf7AAoBjURW6w2livOiE8oQqV5c309cMBmoHXJfzhD5P6OsSAVqgYqAiwLE9zUal2hLOoPlQFHIDy/79OkENXn9dDsH2X54l/W3+7S8hsTvSEavo8JibbwavL0yBtxFfNRfWeX4NZGgW2wa0sccjun0v5Q5fqTFtdsO13hTnjvTzSTFz8fn8b44g1HEVmTlyTRF72f5MAmKFqKZpAfOm/WjLR9bfsbHhC1zd9uiQvzi2/qDLsNjjkmhyiiZsa5LPTDktkoQF1NX4K65qIYrpl6YhInQfGUeMmRiiIf/NygO3VsROsPyKWtDS7ZLhJ9YvSxdktL1hs2eXjdJ/9YzAb+iQT3kyZBH9Gjk6zXlB/jrLyX4LIgtBZQBxqiA1SSy16NLXh50cpPTV7u8HJ0l1eaZb4zxHptV0AIkra7VKivo6QKOkgphn3tclSAKYPi269sKrp7kswdAFA9P57ZW1hQdxmD2vZjE2TfsiBRf/y/J2rv7BlP8+gh5uCAS7JEahDEzyIOoNv6swHMhnSs1vho2H9VxW9K3mPut1ztvgjCaWdjAaMKcTJu1hld3i+cCvh7Hw+bVrOuSnEHduryh+4tiH0dHNL4eNhOxUsASU2geo4FwQiqLYae9FgMLzo7Ct+5IrZnhF4PE2h8AsQ5GT+z5cVg84zEoYGCo0W1IyphaDllOwKix1iZaQnVxs2RX6StAIYRn6J7CmwX/BmTJ0cWt66Mq2meTxWFfgKz92oez5pNZ8oN+z4ybSobK6Tsz8V+tBbWwYxSl6hfBmzQqYP4y6KkTZ+SpkuEDc8wQC7WeKL54M2t7L90qQdCSNRn7aoRWt9WxhYoydFt00llLDAFXrdbqzkn+r8AZKvvqmiKhI/kQF19jJDoiybaaBRdCVll7J6CtI7fotnvKGXPy65NQxNeQ/Hdm/H/0+SQTUHt6kBzF5kspbMNqwQ8Sq2faVVWu6WzCdoQGU1B7xtQErFPByGXzVi4rDaAg53IfX+gdPO+kPrOVr2wFq7XvDgn1KzTGGEOFoF5c+1zg4zX9o+oreyaX5FtZhTEpZCXchr+4HvVPudtG454CozyF1FGXwsOoZ8/7WIJ/xbHaam+I5kbFQ6ECOzlOrTUhhopKfC1ZtzZswlHnOxUX67/tv5mjOqjAqNUQTii0lIhUxphq2ss11YZS77sHV5u4EoBo2h4HxSD/oAbUzPvtAKfmzoDmc5jFL3WASEkFhZskOkMlMhEgm3WSnTXJoqD+tt6rSxWlAIgKGVmykQ0NEXB58tvbLdcfAfQsX7aeKl6lwzkEiuqsTYNvdsTP/DIqi+7fjNNDkjITXV9nz9/IQqVCI3YJ/Rljy4XFP2/qb1Yo3JYXJ9VbqxXj4yAGK4uI82kpPm+8k9g==', 'a83ff30a');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '', 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, '', 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0),
(4, '4ac81ee1', 'cdc15f62fbc2a575515cc489a7050480', 1429279357, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'INticzZTHECI2CllQIruL3UOa6ZCtkgJc1JV1GKt1zI=', 0, 0, 0, 0, 0, 0),
(7, 'f1221a7f', '8ae5d043205e82a0ccb1a1e53abb9da5', 1429365870, NULL, 0, 1, 'user', 1, 3, 3, 3, 'videos', '/5eVsdIw7HFUfLyvxHAy/jWSjJpjCqd/PFliW1xSNok=', 0, 0, 0, 0, 0, 0),
(15, 'a415c5d1', '0e4a78fbac81120f73fd38a1dfba2f26', 1430492052, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', 'FUj/pVxJU431/35+sNlcRQRv2H1+8h+PWtET47gpAHs=', 0, 0, 0, 0, 0, 0);

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
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) DEFAULT NULL,
  `inside.id` int(11) DEFAULT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `edit` int(11) DEFAULT NULL,
  `content` text,
  `logscontent` text
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(7, 'e5ae91d7', 'f5df8303d8ed36f3f6e14a04dd7da0d5', 1430837980, 'status', 15, 1, 'user', 1, 1430837980, 'Y3IyBttgxyCv39WpEOJSplsLxoZBo1DJgqY7ya3Qsmc=', ''),
(8, '2577d974', 'c9c1471b9eaeeb406b75f7b3d65b0d05', 1430838403, 'status', 15, 1, 'user', 1, 0, 'waZJa/bbrEZPkWcjesLpuYTOPUZu4Qv9abTVv0RzPso=', ''),
(9, 'ffaac268', '45d8993cfdca317834de379ba3cc257f', 1430838702, 'comment', 8, 1, 'user', 1, 0, '7W57T2bY+zNoleC9xUb5iN5UoJ9y27GZHk1zR8j2mrk=', ''),
(10, '4fa3c3da', '085d7d1ff3163cd3a58f23f1cfba2a60', 1430838718, 'comment', 8, 1, 'user', 1, 0, 'VdesS7jJe5uV7qzOWMoR9ZSCi7iHQ3Wzaxzr4fGcmd4=', ''),
(11, '7155dee8', '8a1e56a0d551b844c77ba595e7080cad', 1430838733, 'comment', 8, 1, 'user', 1, 0, 'ryGXbyxvSfH+jmTAGx06EUEUiPaywP0EDf7f7Wh+1pE=', ''),
(12, '8dccfb69', 'c4fc9fc72a89a6408b095c40e2f14876', 1430838788, 'status', 15, 1, 'user', 1, 0, 'G4Wk7o53VS+U6cVMYZCPEmt9pHrlzvufdesNS9ZSCD4=', ''),
(13, '96175174', '70ce2f08f107fe9c7fe43ec50963d0cf', 1430839946, 'status', 15, 1, 'user', 1, 0, 'K2jbAiBCSq0m3CWfcIOS0XvWHjPkjGIbZp+A/LfU2cI=', ''),
(14, 'cfae34a1', '8a48b16abf3909f96d0d5e42ed03f75e', 1430840039, 'status', 15, 1, 'user', 1, 0, '1kc9C4I2qg3Fz9dTu/ssQRlZMVMXkNKRJOnNDRzmEKs=', ''),
(15, '3100bfde', 'a8bbb16771f045ae509171928d1c0d91', 1430840081, 'status', 15, 1, 'user', 1, 0, 'FpKfoQL1C/zVOkNPURpN1ahy1LDhbYEpZenAUfiPzno=', ''),
(16, 'fe8f1d3d', '9697835ed367e144b24ecd839a4d48f8', 1430840279, 'status', 15, 1, 'user', 1, 0, '4ybNuBWiynU89dnfK2Z4u/6zrWq+GpXbDk3MC2HSg0A=', ''),
(17, 'fd19c7f1', '0ba83987470fbd6c469b0cd36134a27c', 1430840297, 'status', 15, 1, 'user', 1, 0, 'vDHwNxv+yCWkWlDsTHWDhp1jPTDm8hN1sB54ZN78FxU=', ''),
(18, '5c507ebd', 'd57625f69de0283f6837395868d954b3', 1430840397, 'status', 15, 1, 'user', 1, 0, 'zEost6FkugYdOWGcFHswKMOOeQj2eKCwOUMYas7u2jA=', ''),
(19, '6d7577cb', 'e9576afb11bc2935017048cee29acedd', 1430840431, 'status', 15, 1, 'user', 1, 0, 'EuXi1H8xDVdc0rp5YqPtNE9aMivHGBxSYLx8nmoGteU=', ''),
(20, '41a98a7d', '6bbc56f75bc249fc85660b5b62cc8eac', 1430840486, 'status', 15, 1, 'user', 1, 0, 'Ph2MSuk9dZpUaAtb+vp0/EJ+h/32SzR0D4XkkZvr51g=', ''),
(21, 'dff48d34', '8976ef4398dd25e2069a69531fc87182', 1430840550, 'status', 15, 1, 'user', 1, 0, 'uwwZUM0XZQ/ohboisueVRE9nW+WuVLBtDbDP3pGlGJU=', ''),
(22, '1095b058', '764b02fa05b8ea846152e183960fed78', 1430840571, 'status', 15, 1, 'user', 1, 0, 'HZ6svqeA4MBlSoUYTJSSSpwujbdLB8PkbGaJkw1CzRc=', ''),
(23, '175575b2', '2e239e3562172fcf65c7edfc5eb1b575', 1430840588, 'status', 15, 1, 'user', 1, 0, 'TE+Hxq4liSBhTqrf8gBo40SHyDlIc8988djA7ys47Bg=', ''),
(24, '6b3b7c45', '3909218fa2c30522dacbacee1d39ef9b', 1430840694, 'status', 15, 1, 'user', 1, 0, 'Lg83Ny4+ZhjsKN6VrVk5Tm+0EadfKbgJWfUqbcqj3AQ=', ''),
(25, '91922d83', 'a6db4a0de934ffbb8cd12ae58d768d49', 1430840696, 'status', 15, 1, 'user', 1, 0, 'H0x0z8RH6+I3wGxpRN9QGtBh9FU5lVTtkGBrD3RtQrc=', ''),
(26, '7fadbfe4', '1053d5fcafc3d4e8dff0c63815f2945d', 1430840699, 'status', 15, 1, 'user', 1, 0, 'eQrpIz8H5qFQ+Ne3AYOoLHslTgYcqFOz1Q/b9tXb3Is=', ''),
(27, '1f0e0f6b', 'fc5b9e707c3614a7c84e2a10d4b441f0', 1430840705, 'status', 15, 1, 'user', 1, 0, 'vxYio1affxw77Fm1+x2GsoU9gOJBk4e/J3KYET05jlQ=', ''),
(28, 'e0f2d0be', 'd16c8c446e39892c02f75c48c23abb36', 1430840708, 'status', 15, 1, 'user', 1, 0, 'NgipW4S4zl06FVVPO+nAnckQlMFqPpDQKlovHswrnS4=', ''),
(29, '0facc758', '931cc8edd1a46d71cf4a66701c43db6f', 1430840715, 'status', 15, 1, 'user', 1, 0, 'fjWu7zdmxtmhBImmEiH5mYgF6pUPJosajf//lWcK6sk=', ''),
(30, 'c5209da6', '0f06f51802b7924121566f4c866929a5', 1430840718, 'status', 15, 1, 'user', 1, 0, 'XLrVS8A7dcStyHsp1w2JuW74wA33QzzHcajL+9u2HEI=', ''),
(31, 'fa75870c', '17ef09fab66ef92c56d2c4d357c2e458', 1430840719, 'status', 15, 1, 'user', 1, 0, 'YCXWmjHHljScOwVuoHcmznqBJAH3XnezHMngscA6ezo=', ''),
(32, 'b394a988', '3b2fdc8cadb4e8ea6a00c9dc98a5ddf0', 1430920767, 'status', 15, 1, 'user', 1, 0, 'kNFXCYWh7zpCWSXs26gCYu9KA8HlqWFFtBoG6hpSgT0=', ''),
(33, '9f453776', '1da3f85b132b667e9d458c011ddeee19', 1430920933, 'status', 15, 1, 'user', 1, 0, 'YBT3AaesnUbMd4CbD7ZUzclkL/CapbNycavMpc+Polc=', ''),
(34, '896b82ab', 'dc2a9681ede95dc1d5cc0cffb37b33be', 1430920940, 'status', 15, 1, 'user', 1, 0, 'bfjW8WXzp/IyneW2KtFUZenjdp4+1svNhkLO21C6uIw=', '');

-- --------------------------------------------------------

--
-- Table structure for table `status_comment_favorite`
--

CREATE TABLE IF NOT EXISTS `status_comment_favorite` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `comment.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment_favorite`
--

INSERT INTO `status_comment_favorite` (`id`, `time`, `comment.id`, `guy.type`, `guy.id`) VALUES
(17, 1430926113, 34, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1),
(4, 1429279357, 4, 'user', 1),
(7, 1429365870, 7, 'user', 1),
(15, 1430492052, 15, 'user', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

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
(106, 1430490161, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(107, 1430499670, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(108, 1430620446, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(109, 1430643977, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(110, 1430655601, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(111, 1430660956, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(112, 1430802102, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(113, 1430920577, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135');

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
(2, 1429253663, 2, 'user', '1', 1431409012, 166),
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

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
(17, 1430471420, 5, 'user', '1', '0', '0'),
(18, 1430804204, 2, 'user', '1', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
