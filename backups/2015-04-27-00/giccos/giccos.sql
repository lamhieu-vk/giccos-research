-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2015 at 11:34 AM
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
  `user.id` int(11) NOT NULL,
  `uploader.type` char(10) NOT NULL,
  `uploader.id` int(11) NOT NULL,
  `tag` varchar(40) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=latin1;

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
(526, 'en', 'remove_photos', 'remove photos', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

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
(200, 'rekognition_tagdefault', 'en', '_x_all');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_cache_usertag`
--

CREATE TABLE IF NOT EXISTS `photos_cache_usertag` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `photos` char(10) NOT NULL,
  `faces` char(10) NOT NULL,
  `faces.image` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `guy.type` char(10) DEFAULT NULL,
  `guy.id` int(11) DEFAULT NULL,
  `boundingbox.tl.y` char(6) NOT NULL,
  `boundingbox.tl.x` char(6) NOT NULL,
  `boundingbox.size.height` char(6) NOT NULL,
  `boundingbox.size.width` char(6) NOT NULL,
  `boundingbox.ratio.height` char(6) NOT NULL,
  `boundingbox.ratio.width` char(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_views`
--

INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES
(1, 1429973122, 1, 'user', '1', '0'),
(2, 1430063287, 1, 'user', '1', '0');

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
('9vWqPzzu5eL3QzZZv1TcRkwjLFT69LVVA1CrgMW8Lca', 1430127248, '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', '1bb41b7d');

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
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=latin1;

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
(274, 'faces', 8, 1430126382, '9176dc21', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'rVzqPOCah9qFkLL9JDnhDe9dHrqnovwgifNgfHFy4LBdkz9mZbf2/Tf3h2qfZ23xJZ3lu7KjUSarFkW9nFmv3Q==', 'image/jpeg', 'e362566f', '10847938_598251166988144_4544651445744408482_n.jpg', 1430126382, 48777);

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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

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
(95, 1430121547, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=527;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `photos_cache_usertag`
--
ALTER TABLE `photos_cache_usertag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=282;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
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
