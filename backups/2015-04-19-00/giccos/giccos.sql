-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2015 at 04:48 PM
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
('GNPTO2syRgnA9sUKv0gR4mMTxKhhiS7-EQ3vHAKv838', 1429454909, '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', 'af5a32e2');

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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

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
(82, 1429428422, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

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
(8, 1429428565, 5, 'user', '1', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
