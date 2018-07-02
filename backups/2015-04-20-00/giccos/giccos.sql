-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2015 at 05:18 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=latin1;

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
(510, 'en', 'videos_watch_share_description', 'total {_sharetotal_} shared. {_shareingiccos_} people shared on Giccos and {_shareinother_} people shared on other sites.', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

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
(201, 1429379220, 'user', 1, 'add', '', 0, 'status', 8);

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
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;

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
(192, 'videos_thumbnail_image_mime', 'en', 'image/png');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('yTsqJqk,Ji4tEM1ck,pCW7K7XTEj1ixCPtUyKIf6jUd', 1429543090, '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', '3dcc2c98');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '', 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, '', 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0),
(4, '4ac81ee1', 'cdc15f62fbc2a575515cc489a7050480', 1429279357, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'INticzZTHECI2CllQIruL3UOa6ZCtkgJc1JV1GKt1zI=', 0, 0, 0, 0, 0, 0),
(7, 'f1221a7f', '8ae5d043205e82a0ccb1a1e53abb9da5', 1429365870, NULL, 0, 1, 'user', 1, 3, 3, 3, 'videos', '/5eVsdIw7HFUfLyvxHAy/jWSjJpjCqd/PFliW1xSNok=', 0, 0, 0, 0, 0, 0),
(8, 'a9ce73de', '8a5a88d95b81c7d8ceb8e07e419b2701', 1429379218, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', '201UDIuRsuPFDiN+ji0Habp8RKJdeVS+idi2hpcj0G8=', 0, 0, 0, 0, 0, 0);

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
  `status.id` int(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `edit` int(11) DEFAULT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1),
(4, 1429279357, 4, 'user', 1),
(7, 1429365870, 7, 'user', 1),
(8, 1429379218, 8, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

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
(19, 'drive', 9, 1429379219, '068f424d', '', 'c5d462b4a06f45a9c0a87653411a3200', 'uPGWH+9PLjXzlLgJYqmDmYvzJPgcnIVPcdW/aKEjylX2JrOSLHxjKy3DXSrelLTNakj9G/aDIPtCeJGwzUvHzA==', 'image/jpeg', '26a564d3', '4815bc31 (1).jpg', 1429379219, 2292541);

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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

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
(83, 1429537314, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90');

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
(12, 1429542964, 5, 'user', '1', 1430147887, 59);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

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
(10, 1429537319, 5, 'user', '1', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=511;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=193;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
