-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2015 at 05:37 PM
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
  `uploader.type` char(10) NOT NULL,
  `uploader.id` int(11) NOT NULL,
  `taged` int(1) NOT NULL DEFAULT '0',
  `thumbnail` char(10) NOT NULL,
  `img_index` varchar(20) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=latin1;

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
(364, 'en', 'question_photoEditor_close', 'you want to apply effects before exiting ?', 'false'),
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
(517, 'en', 'tag_photos', 'tag photos', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=latin1;

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
(207, 1429974337, 'user', 1, 'add', '', 0, 'status', 9);

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
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;

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
(197, 'rekognition_url', 'en', 'http://rekognition.com/func/api/');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_cache_usertag`
--

CREATE TABLE IF NOT EXISTS `photos_cache_usertag` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `photos` char(10) NOT NULL,
  `faces` char(10) NOT NULL,
  `faces.image` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `guy.type` char(10) DEFAULT NULL,
  `guy.id` int(11) DEFAULT NULL,
  `boundingbox.tl.x` char(6) NOT NULL,
  `boundingbox.tl.y` char(6) NOT NULL,
  `boundingbox.ratio.height` char(6) NOT NULL,
  `boundingbox.ratio.width` char(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_faces`
--

CREATE TABLE IF NOT EXISTS `photos_faces` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `faces.id` char(10) NOT NULL,
  `photos.type` char(10) NOT NULL,
  `photos.id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 1, 'user', 1, 0, 1429379219, 'b01d0653', 'fee5909672179ff7db422c1092fceac6', '47bf294f.jpg', '4815bc31 (1).jpg', '', '', 0, 0, 4, 4, 4, '236c5e12e465fe2af50b81838bf4c99c.jpg', '0', 'a715a28c7a527fec1e2698f9b8e8c72f.jpg', 'd6a04472c937bce6ee751bd29fbcff94.jpg', '40671ca8a56801b76f59df00dd01f6b3', '0', '309f667392100ca3b12b380267e09289', 'c5d462b4a06f45a9c0a87653411a3200', 'cd89ca0e', '0', '1dcafc18', '26a564d3', 2348, 1409, 'f/2.4', '0', 0, 1429379217, 2292541, 2, '0', 0, '392/100', 1600, 'lge', 'LG-F180L', 3, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '1/12', 0, '0/1', '24/10', 0, '3584963/10', '0');

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
-- Table structure for table `photos_tags`
--

CREATE TABLE IF NOT EXISTS `photos_tags` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `ratio` int(11) NOT NULL,
  `position.y` int(11) NOT NULL,
  `position.x` int(11) NOT NULL,
  `size.width` int(11) NOT NULL,
  `size.height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_tips`
--

CREATE TABLE IF NOT EXISTS `photos_tips` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `text` varchar(200) DEFAULT NULL,
  `size.width` int(11) NOT NULL,
  `size.height` int(11) NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_views`
--

INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES
(1, 1429973122, 1, 'user', '1', '0');

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
('4izc5Kepd,2ntWfV,dad6ubK2K2M,SjkhBzwVDzQZ,4', 1429976211, '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', '9fe6e7f0');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '', 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, '', 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0),
(4, '4ac81ee1', 'cdc15f62fbc2a575515cc489a7050480', 1429279357, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'INticzZTHECI2CllQIruL3UOa6ZCtkgJc1JV1GKt1zI=', 0, 0, 0, 0, 0, 0),
(7, 'f1221a7f', '8ae5d043205e82a0ccb1a1e53abb9da5', 1429365870, NULL, 0, 1, 'user', 1, 3, 3, 3, 'videos', '/5eVsdIw7HFUfLyvxHAy/jWSjJpjCqd/PFliW1xSNok=', 0, 0, 0, 0, 0, 0),
(8, 'a9ce73de', '8a5a88d95b81c7d8ceb8e07e419b2701', 1429379218, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', '201UDIuRsuPFDiN+ji0Habp8RKJdeVS+idi2hpcj0G8=', 0, 0, 0, 0, 0, 0),
(9, 'ee75fc76', '48ec7e719e8c9ebc402fbd20f53d3df0', 1429974337, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'Y+43ZfXpOri7s4LYoqVgyACAYcRS2SsQNXarkC69YiM=', 0, 0, 0, 0, 0, 0);

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
(2, 1429796175, 8, 0, 'user', 1, NULL, 'PYqKoVX4jtitJzpCJ7XG2cnN/ekGljg5HS5cP+dmQVQ=', NULL),
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1),
(4, 1429279357, 4, 'user', 1),
(7, 1429365870, 7, 'user', 1),
(8, 1429379218, 8, 'user', 1),
(9, 1429974337, 9, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_photos`
--

INSERT INTO `status_photos` (`id`, `status.id`, `photos.id`) VALUES
(1, 8, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

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
(99, 'faces', 10, 1429971704, 'edc9ae55', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'vMg9BHtCGU3z67FCVq8fVtDNeZbWZmsOpgJNwOyMFvL74+ATbzexUzI7ehyS5aVHyM1jbW8kSSOgu4AZjCKzfw==', 'image/jpeg', '7dfc7bf6', '115.jpg', 1429971704, 37566);

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
(1, '51e97042', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'lamhieu', 'lamhieu@giccos.co', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sH4sSk2ab2euudk+Tt26k03x/Ye75GTwpoZJKe8Fg4Y=', '0946083033', 'Lam Hieu', 'LÃ¢m', NULL, 'Hiáº¿u', 'lh', 1, 2, 923871661, 'm/d/Y', 1, NULL, NULL, 'en', 'Asia/Saigon', 'I created it. Giccos social network.', 'I see tomorrow.', '0', '0', '0', '0', '0', '0', 1, 'wall/lamhieu', 1410787532, 1, 1, 4, 4, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '3', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 1, 0),
(2, '3d15fafb', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'QHqCu+ywO6slZ22otoJGVpV9TO1CJiJWWcxMbiO/kTQ=', '0946083033', 'Truong Tuan', 'Truong', NULL, 'Tuan', NULL, 1, NULL, 923853661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Saigon', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/truongtuan', 1414757503, 1, 1, 4, 4, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(3, '984c3d3f', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'thainguyen', 'thainguyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'oRNqTlcTL0ngnzvIH+vZ9U1+xeZT4QVghrwCcHL0e1I=', '0946083033', 'Thai Nguyen', 'Thai', NULL, 'Nguyen', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/thainguyen', 1414850443, 3, 1, 4, 4, 0, 0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(4, 'e84211a9', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'wH0xYlKOrs1MzGEqHkohSJD82YMUw6rewLBIxhsAsUQ=', '0946083033', 'Tran Duong', 'Tran', NULL, 'Duong', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/tranduong', 1414905982, 3, 1, 4, 4, 0, 4, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

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
(90, 1429939445, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90');

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
(5, 1, 'user', 1, 0, 1429365871, '2e034807', 'bd5a0c78cae8a275e057e63a8ec966bc', 'x', 'Home - CloudFlare - The web performance &amp; security company.MP4', '', '', 4, 4, 4, '2f4861b1be3231110a218f8350fd3242.png', '0', '0', '4ab04dd0288ce290db7293ffdb924acc.mp4', '', '0', '0', '768f0b5e43d356d8abb8b3f8569f2c8e', '588af2b4', '0', '0', 'c98f61f6', 0, 10069607, 'h264', 360, 640, '16:9', 855138, '30000/1001', 94.203331, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 94, 107039);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_replay`
--

INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(2, 1429253663, 2, 'user', '1', 1429948840, 165),
(3, 1429365808, 4, 'user', '1', 1429970613, 1),
(4, 1429365845, 3, 'user', '1', 1429970645, 0),
(12, 1429542964, 5, 'user', '1', 1430318710, 52);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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
(14, 1429852288, 5, 'user', '1', '0', '0');

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
-- Indexes for table `photos_cache_usertag`
--
ALTER TABLE `photos_cache_usertag`
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
-- Indexes for table `photos_tags`
--
ALTER TABLE `photos_tags`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=518;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=208;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=198;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `photos_cache_usertag`
--
ALTER TABLE `photos_cache_usertag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `photos_faces`
--
ALTER TABLE `photos_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_info`
--
ALTER TABLE `photos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_tags`
--
ALTER TABLE `photos_tags`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=115;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
