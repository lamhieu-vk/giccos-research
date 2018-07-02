-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2015 at 04:45 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=latin1;

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
(504, 'en', 'you_may_want_watch', 'you may want watch', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

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
(200, 1429365908, 'user', 1, 'remove', 'status', 5, '', 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('yVdG6wOlJ5fx,2Gz4ltbmVyPnTdYQlJp7U0,RxY-HR6', 1429368294, 'PQUEXBzhMVCc53WSYbzQFfbnrUrzWFpLQcUNlwcbgQB+JNuR/fhyJCfuqzb0c+ubkJJSLyZ64IxmsNWAWkOOXYuU2j/yXF6Tc7xit/tTF0t4GGJbfey6ehZAIr+qzdPw9cuf+qo1g0KwRkMveK56J52Da24NtReR0u6swNiqSEzUFTvap6XLlmr+NP2q3bACiHQ4UrizdYc+pP9XYHYvaIyyBgEJrbNP7ploNS/aZq91f0TcRnikfrZY8Pw0hIjXvz2Q9z4KqNSrKaJDyYuLGFEo63Gbw3o59fTjRYlGFuiRUDmFufcr9nLsQa5XtwgIZExmU9fFg+VAcnK06bnmNUX2BDQCCUzsBLF4ret3z8YFmEhE+eDStWi+20+lb40s/DVqdB3z+sjkFGVd030y4d+xC5Dn3Ol0ixG83/g5LLFMQe8hceuyzL/xvWElt4gEqfvDSDyIKMdmWz5LQ7+FY1uV4x4SJwOSUcY/FRSXdqSRnUVN9mJ/copzMIyK6XzXds4qbukPlgxipFIL1UVIFyjzSXsvdVQzik4qIFzSi3wlX25lK1fw9FsCAsQkIkxQ9+fmauPpEVjVWZQDlm85jL+CbrDeux8+QK2Bao+sYIv6mOPzHR9VZ18QBIjyl2ahERhOVs5Mi+tTlm9lbGvm4+4b8NXxTMIESKYuT9QNp2HE4adnOKyi8qzRuCiDHXTvSerEepQezqju0+8m/RnAekbt5wEB0kFLQHgrWwAljRYEym874+XNDYUFn490Yum/fIHOtRFnAFcvr5RFsYwyvzPmY8s5M3VipWR3swp3LtgNInYwzLVmZ5nhK4qmgt6o2LMU9zi4mNxKjB5k/OubFCnxSUSWJYvtQWUKqQjt1++ghsIuOb/PBJwer9L4afYkO5tIPDrizruNOFXvGa8HXQ5hSuvEsjt4RT4GHREc1J6JiqLbupcupAif8lOKFfyClfdHPJDcovSfTBi5ME0eIi+VNZe1VsL32gecrwyjdQQbFg/6WB4rKtkW2+aFutxcMsVYB+xyi4NI9ZrGlmSjikAzWRrcJZQaQoSeezqVUDMUfanItvWQc1P3JcAxmd7w85HjRuYXuLrQ4d/VKVDzW7LtPge4JdVV3nnyAGDQ4mx2o4WDPV8itq4WzNSE0ydAqqrg50zm7VX1kX4kduaMo3MhfeMFh6wyTgVVauBVTf7Bb3kwRoItv/PV7s3luMPaV71hC+C3NEMbJKOt4fa9ATLBoelg8svHVUyjVhmO2jmP0yDWPcggKYc/7gEwjMsMVfb/0Moa1346FJaUj5JEwOeBusL9LVoTmDQ19TsXOGJpGko1uThR56Fk3eggKFbJtH9BUF32JUxk1IjbYvToeQ/fZEOFDe+X6ZGzlxEyBkiLaw6an2RE92S1y6w7I4YnWSlS8msIcZYwutXvPdAwj0zxzVTSwpRA1caxkZWYcBsjdP9sj0+ItclGcHuGuSIVJFExHe/3valdAIP7+9fL0Qwnn9WOvPq08X6CIQ/7CmitGxjKzq8zlatj+d8q9824EUNBiwWTfPJe30dlQoBinhvt/FeC2rpjVeDDr/5V8V2I/Js04n5lyKd1hI8AsWl5WLjObPA0tZQTGLdea+8DZ+eNNCNeCjdovb/y2ME6NBPqRSh6vIdCNy03S+/UURSgxCKD66m/KQzmfJbcnXWpbvbxtJ1+Xy9SYkplhI0ugF06raI5+MOzDss71Z1a7oDekmfYMl4ntnEfFWGvQKgyvpSexd80b947QLyjJiGBk2F0HMpJQMUCcOYfGnQExPz3nxAK35FSn8Xj307zQc7zZIfQShHwyRcI/A8un1Wx5+hi4wVbjWIj2+WagZhXNu5seV2XM8tfHxjCKvxGDNYJGixM3/3NL/DXdJvwUC8S/gZJ1i+wRH4j3cGOJPTjbv7q03hhLXNQtAB0u4tcz63TIUAqYgKeTAf/sbVFExHwvmWbAZdw9xV+3QTEhbmtGtDNROZ8IrNci7BfTmTbWvPUFxQADwo14AH/KCwdFkml3WU7XkSKrDrDNIAkm7IU2HQvJV9uZStX8PRbAgLEJCJMUPfn5mrj6RFY1VmUA5ZvOYy4NmsYgZtqr+SthX6Ri3dryUASiKLM9CsftWPIwB3rs0dNiFTCZQZuDeHcf34Wk6cjGbwT87eYwtyu6+oi462KfIM/PwTDPCeuCa3xkdsXgytyvPnIcvKOfOiANu2mQ9tSYlSjuA7+5u/+enuhzkFnP5fJKjVeD0zMKxpEZv47AlxnIyIc+73lohF40Zq18pX2nf9uM25BPPnty8MY/TYhb0PZDaA3Ete9r218SQKQu5+eVEA73KiT8rlACZRupvtTzFppvIgXxf23imsZH9sD1n1sjoENpLzJzbLMm3crB6Wl8sccaW1wQjaPWLnHHYnhJWZjU8tcgvIiMkGyzpPA1ShJaSRok57Mu7xnRtf53riG9szXySquDYu1vndPk2PsxmRLAE8W0YUqx/jbIF/665heEHJ1ue8Oj0Xmm2FbxFSzsJ7cmTzv8DpG3GbAe4UITbw9J0cvlP1pLjd2d2CZgYPDzSx/psA+QbmyOV8aqguH2fxHu8CdN7RKZBhW/Rn0e6IlpcHYGEZGpaa5hiFg0bWVfd0KD6FNcMlnaM243SS1x2doB73pjGWghJEL3oHy5Mw0Tu46QDqnacx7kSeAztOa88ETH84vJec7EEb+NgwKjm/VYPV9FWFk8FdSe+3ZLwzgf5QbvcKZuSgjUdx2Hlm3IpEYatJg1eLOsx9dzK2mlmsaTIKWIsncQ09D6XRzd+y3tUhr83yr+OXBUbilVKLMUepEZTdgX5H7IvKUE7pz1BZsmEre3DKn2rXMMCja1rYx5L+ethduMm+0AyHMbDQdS+TkVauKMqoYwde/KISJ/gNRyzCsSaYmhEotHcbKjC13xQkKE+vx849kpyf1cB9XM5fiZOfnL+G/cNZvD9Y3JXF3wtMQ73jqU2ha7T3KOz3wgzFm832vrgE9VBvo3G4yTK/dGiEUpah0liclwgI6SiwPYwy570XqSdVB1hz/3SKV3tK0TuW0rEGgNdwaebNC3kebXpbOYP1ioKui03N/PC/eLQxcXV4KX2XDHOKcnGqMw4GLKLohu8BkjJr8pTqDgMz+3CZWV1RC3gUu0qsuP9XvU5IBwvwDgZ6JHC5XToM7gd5unvV1nmAtwqJUbJ61IcsSS8iduIgXKbSuhPQ6FGTrcaSQOxZhLpN+V3Teb0y0ECX1Wtegt2IHYYNLJUXcB+FxUfty5/IslR33Q0KJWFNP5UqYWnQ46jB7nWVJmq8zwaiocFf9d4NXdsHZeRhsw8BlBCwHJZrc3mqhGs9m1gfILTRTdydcSlfZIoeIqkV6KLVGVyHWXqnVykPcqyF1vCro0oG7IqkNmFVZX8JOpcxbFOWmgziuLk0MXeLW0phqK9sjXEDLZ1KQJeG0d+/wmcqPq+P8Lvf7q2fMr9VariNkqOmhYS/KymZgKR/gvDggUaQPMbJOmysIkT3KQ4eJJZ2h0JpYvZsePvM8/2AvC8Ogf5aFwtWApddUDlX6ltt3Ok13mOCpE0GeZ/Zo17mLP5Y5Jbc4b6vQEAu4U+LhRJRg+eG+s7HauldWn/5oAbWzVbKzX4ln3LyQvIAHoXqpLesWwU1KeVZFlJKcsTcKdCNMRYoZI+IT0tYC1/mV9mv3HOmzXvje+cBRuPno1Q2ixaqqNIcnEndPx7tdvlA6gz3W7P3qPZwjSNdeSvxml8rwb7f4LosfEXQQdtUDi7YBxhGjAOtZak7lS+MES+z9FZYElZOUmw3fpIkJzrdfR1Dur03bRRIxJXKfp1u/Zgskimv+yuSi5tL5bMsF2jNFpuL2Asz5p0PS0S0NJdAUGHCz2+UF8fUmojJt+ijAlVLHaHqOxPgY2eC1XQ0WziVfbmUrV/D0WwICxCQiTFD35+Zq4+kRWNVZlAOWbzmMunOhxOwIvXkvH3JjioLaoLjf0jSSARpULQ//U1VJ5s1vygicwqED+CfWtL8e53c4mDSzJfJvWQY2qLASmLsKIJm0kIt5lb2M/AxW9xIQQVxmEx3AkO2Doi+OPP64cVuAW0nTUVp0ExcPXONsRzmi5uthskaZXuhjLbA9uk5aVWirCuskUN0szuyFWZ0ReTnS7uSn2zfURnwYK4eo49BXa0KOnQQSUVVDcoiQ6RH6gqZY4RPQI7919w0tcpO+BMdD5lZN+BVKPsXI4XTkYhs8033shoN7uroBJ/5VUfZuumCLjU4TWIpi6Z07buJdcFKUcZ+/LldT93JvbelE4SZ3BzRdYC+4N24fwaVEOK0qx7Z4hN4sjnsha/AWK6P9iby9iQQOvUW0ax9V7Xlp0CduHqEF3Wal44oCTsO+2m/Jhu6GbnZYD6vvQo/MlBY8WGVtp+EfFIT7JvB9SPTpm9G57OZHDGmyPQg1QQWWIo+BEMv2uwUwEzmSi731y/WrlFu/EOt7zGUBfOEUtWJtfwTtlwWCAhtDXawmVAxJ1XGuGYq/LpMsL9u04DW7ySZfTx29JukUxWoqDKc5QITSpeUp14qHNVKwbqO1P5V1v9pooPZXtEmaqJrR54UZ+76DyoTyZ2/4NPlS+bF0navfWLrtKrqmOC/ScIRUDGhsTU2cNo9h+WP1M9Mrf1XdtfWg9f1lC33q09i0GOAN4W+HRdcWaSGBEihXdDn3ntPPteDoA1g9PkVwzh+g8i414MydBEi9tyZLY/o55jHpqEQg7k/HAV0TxKz7/xj0Ye1PwYpF+prqmKS3e+93Qledpo0Ct/9+SVYm/lA8RjaJu2pPnhB43/FKe0FyniY1Tk79LliSYUqOiuD9KYN9ViTwiNdNWTiruszXvsgzcUK+AzM1ngDWF6KEL7lhTGuMLcftItKB6VpKBmNR1XnvQeW9C9EOlM+U7vhAyQKgO7Hzi6i9D+vnGeZHDGmyPQg1QQWWIo+BEMv2uwUwEzmSi731y/WrlFu/SPEOhCzX76+ZTMgMZSV0IAQVupqd5tnAtRcOI6cxw5iVQHvP4dOcmoDUABMZQEYdosreIVZ9w2UFsmxcGK83C8n/6ilFjifpjmoezlYC7SP/yM7KTW5trlOsYHhpP7qbJV9uZStX8PRbAgLEJCJMUPfn5mrj6RFY1VmUA5ZvOYwvEcmnaiYdD3xk9o8qARMQkkQIfBw9HDiL08d/7/VaOBc1otJjQSRuNroVKPW1nUtaOd5mVFMcoFIT6fVQrXhdkMfG51ROpMcveN9A9DrKxqyjCatWqbsrUUYiMI+OqDm4YgkVQAKCRgr/ATrEu541MC7AIq7/t8a2rBaC2ifEHZ3rjJwF3aQZxP7Qyrq9IgOq+SCpF0577TDazWFvd//P8/B5A8uPS3510IPX1gXJkWPnSP58u0w65YoqhTdv9umsYgdbd/ayX74IKhsaWm5DwaNxf5veM7SCWvxbyE2ij3OJCKEUv6XCylLliHmwNt8wpLl9RLURPe8KJ7VHWE9SJra/b7HU0eEZEjRAj/ZHsNi998F3GNGBGs/4NczJgP4U1uiJ3xNaHxp4YqE3fRgZnY8bschpN7VN0TGuSYoubkHkMoMUd2gzla0BJrTtBgjcLZyQ4jzYK++yCbaRdHaghecU13P4K0mW1mIw3+OuU0hjf02XFqT582Ath6vocn5pkQBZEYMspSHf7rpW7mmQLu3Ne4oWnC009kkvF9l80qQ6QFM+bmwV9m8LkGKf84taRe8r9bMcYshx6U7XCx1BcDmUXT/r0LKFhLD3LUADss0HFYNZMGG0EZNcmT0N74JhGDuOncx1sKPfi3DHrOtLZYIH4Du5/Vf/WA8yXiA8oPJH1/iOQXk2kP1QSTDfy5LTBtrFDuaKX2tZHTeoPVu0rO70h+LWyqrKFdl7iHEloOzDYg+iyLrjgY2F5rxBRJrrn2mHJIMMN1fCFbLmdfoAB7z4X5IagK5uYVwwP4McSNxNGYhNTTfaScAp0EOjmj2w7S1Vh7rCnfXfaS6Nmv+iRtTBlHM8+qE31W1UQy2WHTm/dRh3iSzNujEyqkxvx9X8YouXK8ZKRSvv+t+w4+0La8jUaHojEJJeaMjVFDOr9xqKS4evXDnia/mcbIgi50juMed9clT1Y/7COFsK0eHkggyPVfhFbnNoAqrX9MyJjy+PMKSb410S7rbm084Iol8A8EV8IY4wKE0yB7EqRdgFk4obxNxW/fktSFyCvYSHT+OfMLUNLa3+10AUqekQDqTIYQK58KgJcE+Db2gnXd0KdrVEWwcx3ENBF0hXQ736KAZv9F60nZyeVdGMBlotKeQu44ZU1wo4IOWZjxT5FYkzoTtDI9GRcXX2nZlimtbQcGjhI0SRPIpWPNy1WT60mR1ZKOFGiEtMYIk/v9ml6+/J5VEvFjo21bRfsHKnBeQKiMYl4XCHoT1bt90rb/70mUoeNztwPoAr05PARkXB3q9cBaRFBHDeKFnMuoJnEc74TWxjI3MckD5ekSQfBL0VLhXWZIkZV/6aIlAsiLtPrVVUHKFKU7C+PI3mv9z7Ic+KjgRsxxMin9CgDjs/SUoBGjeY7fPra+3kMCKOjLuL9CM3NnaLz0SuwziQU5a9ADTfNBJ+rKUJu5IKFglawCFxq2taooWFdbsLqoqjzf5F+yEKsNRlxkLKjnr1n7gYJ82/Ezah7G957X/W13T21TBbhITu1hCc50qiRyfiiePkN6VRiefp4cdQMQUrjD+TDM3SvaNXXW8dNkyx3Wm7TzaqevArphqy3PHaw54rndkha9NvAq1wigh0dsVG4uDDQCU19UoK/NJ8ongXO8UqP9eXJ1pzUGm86ACar0MYp56MHLhg7NV7Y9IFnNHI2WQLCOLtcbojVkZDvdMVQW8bSXUn+4uMsycqjf49fLUqe4sm8i6pAci7OS4gWpmlhAVeVy5Buut9K5bpZN2uGOE7IxXxnseSeUZ6XyRmscnh0w0plfBjRA2KdSVpXen/ziR4uCT5Ieht9u352nCOGsf4OtHcn/vqmr1VDX+OG6UZ/O+lli3kEILvTXbdX6P24h78U/ddzsnw5sgZwWvGCMHSS0IO7ehAgYHFqdlpysyPBGWH6P0p8XG2b6l8Bum9jG4KUV9+ADx+CCOW4onKOI+s6JhnSO6naa5RYdMsoSc4rX09ch7uGuSE501UkRZBw5PEixKVOVlPGfEQtzGxZ1Q7t1K00wiFMishbnKfQfoJdoWaqM0fM0Igm5LT7zifqnvYG+nqsr5L1HPlJtf6nHe/h6oOe7FWQcOcmp2rFaHrakM3ASzh0yPKuWNWIaQTyZKskbfUYqx+uBzGrdXqK6YcTdrnNoim8SFcG95kpAPaqSjs/Mcn7l+3dRqZLHUM51lKZqaXUfXgAsapM0Dz0Qe1xmMPaMaM9kWhaw6U4PdnLVWJVNj4LWQ0+NpvXuzEkpl8Mh8mmzTujY1OHPnD2JBXJFzi4JkTQj/D2cOLFSgx2uBmBmz7MKb9aXmMKo+2VtnsJd9X0ItBgkvSgz/hV3cp1hxWJx9xhL8/D7kz3khDtMbchHb0MD4NRvvR0MyYk+E5Wj3AIeR7w+tT1BCSyT+N9MFHjt9oTUhzhPWc2c0OI0AEYdAljHXIyQpUnjvQPxp9WUzyPJ7uip1n1SSbKJ0JNyOGQY7pjQ1/CsVlUFnVCw8f8In6GmUHVIs2CvwYrGKzGyPY8MxUuNsFcs0LrKSr1Hyx1pNDQMCq4WVmK64VDku+qT0X+jUK0wHifHrmsYMLbQRVd9Rvf+fCtf9sy8ZaefAf3b/T9d51wCEfzq72V1oppk44v557jLzNHLYP/caL3PM71OEPEM89pT1OmU0n1/XyLTO7uKyt+Cvaw0YShl6w1s3KcX+RO1LJRlLHOKqTQpci3ce8G5VhFcY/KR0AmeRfakJQJl4P+0W1S3US2e0hvZfbiU11s7q6Dd+fahPbruko/1L0llMHWRlCXgjdARjy1XiHZAMLljWrtNk0/zByPApv4ZkR0Dkria5USBRqm06kCi5/G4NcOb8r+cvpRMKhqkTUHn6wTht+yUEtBtmeB5q/Uuz0fLL3Vy450tnB019xA0cMQch2zQPDfCN57QkbpKMlk0moXqZ7F+En2YQF1YMVApaMkWSAxT0xSWRPbVWcCl0K9Fnf1H8mz+DYB7pBswTK+utjeM2xs03M52Vxe9oN3CSHz3kG8ze9vHyqfyY9eRORjl1K0x1obXM9VM2GiRUIHcWO3mwY+csSN3gYS0zpWElJvdYCV20LyM2aOxaLIqRE9wKCr5ScfAx8tGArtPtT9XsicisPO0blKXawtyVtZlHbnDUY7PXf55u47oFh53qBBAbiatxz4KJJhp/28W8w44HlNfHif42L9muAGbHH+fVZmVxxbHt16cHjtgj+Zw7AM9mlPsdBdY/Usk4Tdz4fourLrq/VGyIIEG+Vh6YLVU8xf2w7hXOawzmY6Nxh5+MOGYE7z+N3MjhgLOwF86clX25lK1fw9FsCAsQkIkxQ9+fmauPpEVjVWZQDlm85jDd14PHYpYFHgwhel3+4gtTeyE1hPbeB8OD96Vb60OiWty1G4nE80/TIwPfUJFb1EmBLFkF7tifZwnDqWrTOKQJFgLwBX73cl42bFPJJyOJgLDCtHHJSL+ppsDDg5Uo76R+zM0PSkcCjsXmlnSrX4Cmk+U0jRnIwoqquYJa9PuXLvkvUc+Um1/qcd7+Hqg57sVZBw5yanasVoetqQzcBLOF97sxsBQqST1HI7e86liJaN7cFnebIpDb8JmbgoiAhmRafxDKOeExByadkvxKfIo0mHgUT7z1b6nIaoLe9OwCvbUy0C91ptTbo/92EnKFlqWv3/NBzRiGe2Pm1z8iG5Hg7EP0HnCA74AfOcs5Zuboj3QcGncWLXZtxXEVKQ6gdzIaggPEh9SO9VufW2Ji4S2Yp8Q3HyxoZml759QerpPqg+2JkXLq1GHXXMqch/6VHgjUqORv2W4kgjFHoyj/7NycrqlTRnaxMbFlDoEGHODGg1i2qBlPf1uhkenjlthJMHqvnJUvMQpwtnkd7HCkaoMSx72bS95CTgW+ouG9MipQyLZrTaNKSnagAvuOhOQlpKsbd454Y1LE6Dh4RnkDK169CbLmJixMPgNBqOCIsXHz4slKD0cOF8wOVSGBbsfJr9PHcTrxmXUjq7bacwYBXoFH8MfYRXX+Cwk0K25mm9HqjbuIVKXz9zaoZGhoifSGOyroX0Qweuam0hqGI/2DOiZRvUNNoliSD/HeXiWHo69ZwFJeHlpWbg9h3Uaiqv99GNyLbtJwwFi7OwXVDJNAAkfBkfh9Nj1q9F9U26b3yK+G4zq7OMNlzIm6J1CtV59TLdGZcOCblT490IBuRO1YFhI2/UWIekTRV215Kb0cYg1DGPI/D2LE0A2ackKjXRdv4H3KYG7vmDEHzarV5sn2oW7Axg7NZCknUN1/M4W1FZH1Qk0RByQ/aQ6M57eOJ3OEP2BxnBI+SNwmWgRhTIDEGR65bjQ4mShDgsnQYJPSRLu6IBd6+HREB9lV1BDIb8l9UWtzc1ymZsZQ4e0BS2v1YE9mm+Y+7Hz5Ogay/MVoJbje7LVL+ZxTqcCorMY2LXOjUx6K/mMaMDlTgbmv+mRXk65o9egLlHL0oC4oi3AKnJ15+k1Hxy018M45AAlntiehc15ODndACUQ9NgxgF+rW+ITAn33T8FXA0wQamnca5vZ7ffpNQCIR1dlPOnm6pBJM17Dw8Gur+KDGF7fXEYRx8P3SyrF2wyBm7/HiXngq+pYpwUM+u6rtClqprsAed6UMlO/c87pjSZmb73c85ClyxhoIeM9FBE49vf6/yod1BaTRxEK7uMAtn/MF9fAG9h2mpck1tbCq1T8WwFmiIrh44Qcypw7pKoZ/LeZB9SYcNJSQ95n6jf34o/yhufIL+BX7Mbx1op8gfpslu6z0DQAP5VKV5vUeaFikZyhfaYont5HbBY9GbPN5iiKa0Y86SFBxwNGX6BLTWYPmh7f4bBTEpl210SYCKWTkzpbLbdbIdWrjtWluJ75Y3lqGDfW9W5aI72yKruFxyBXbkGG8WuZyxGxZFnL82DvHmHxq/CGLLeTesMeBbpxYXX9JtkOq7GPotyCT9jb0E7re3P5yl1x0ukJtmM4FsKAsyZsLuQsPGy5KyIjJPgUgArGcaSHViCRuQwz8TMjRVF2ACABTr7vb012U/ktlGp3+k6IjawPqvwLXaXn3I6uSXagIzagja77OuP1HKXeEvdOm72nW6s++eBy+i9kGIn3SfqKivYynpXHJwj6GupFMDMQIqrQZ5NdRS19cVkp/qTZJsto8yTGSnstf4l+pQ78fXlMNyw1FtCOteo6M4Y+BbLpcu9q8Th3zrhHKvv0QQ7JoFAOEMzIHday5/nE4HeE2K0srGC4k+3H2SiT0SFV5uSX2J9/RfjNQaEUpCUbTXbeLil5UQC1ewU+e+XFjkhRU2fRp4nEVkxQYbg95ccOBF8teSEi36MeZlhpWfAj2xi3QALewOf41lm6hZFc/+X6rYhcM+3PbeLAQ2skEkgOauEpnK5ECTHdx/yAlWoZc1h5ayMlgE62dPnQ84JTDgqAIkVjE75SYHLexSIv7trzASeO/o9/HNEvbzj4R9iT+FmfjRLf5pBLoW6pZxZxDym/nM6Mm18e4QuGmp4s4fX9k5TFQQ3Ou6ED2ydMc4PX2o3sYbYvYZhE8z1cYu24rts6TpATXq8gOcONCkf5xOB3hNitLKxguJPtx9kok9EhVebkl9iff0X4zUGhGGJxyEhvB2ENoFyya1HMuo91VtUhYJTF4PCVR1N/FHAz1SDEy6kn+k/nOudjj5jf/Xc4Cm8SFeunQHqRCwuerFm7ijHsem1Y6fZ5lWu5e3TJTVVF2NIe6B7Qvrr92KW3Dz9sA+X6RQc1A4jFvfAFiUrOpG3HEH+xXlvsyAiNNU/hpwrAcb4bM3ejjDaq6eKVErGKy/7Z5sEXvJRRfyZUyv+VBBFMRxGqke6a0WGojPe6A+9KHZgxpqB3xOIoX0FcsECW276wwuZ6fC+XqvzLwBtdaP+cfpT5nNzsyeoHPGjOZHDGmyPQg1QQWWIo+BEMv2uwUwEzmSi731y/WrlFu/jRC20PVx7QHdD5o44qfB7FVIwjZM1nb/o+TphbRPHx4poVWVHwxW42LZFZyVSHfzGQKnvYxjMcD80f/EfXKB/01yLmzPIFdm9TwiWLL5a0/TrdiHkEX7yo9LvaGWBwQZKv+8kYzGxm29WlsCD8uLEAqaC+ATlNrqA3ysSefYORlMW/7RyIVwK6eWejqNoFkskIwHq/bl2+71CznbOVR/4aQjUQRumFAAVgup9RidbYHY1ERX7dkMYmf4hzfFiH2ozOgrYz9SVrjG+2Y19rmbr5sECPNOiOYmAjhfJUWV6wzmdSCXTUIB3IB/cAInNN6uBPq1htAS0WMKSJ+qRbmp5CVfbmUrV/D0WwICxCQiTFD35+Zq4+kRWNVZlAOWbzmM2akRLh5jlddM8pyqdQOMRV0QmWvbru9ne3DCclQmvM17NJoDgom25yTpILtzDUaaKq4+ur4p1diggEJ6xD1PsFhj9tg74PQLwhsemUmmPMVIx1JjcTDPH1uYc7P6b4655X0/J1WNsfmvXiWOBiOJeCzeBFzTb9Nx1D6GSLQLmv1a/SUFd95NVXxP9H4VEQDrJ7sF1KlK296hfSDBj9cEHDuzphuhJbMe7HwK5NeTY8PlmrhUIZIBxIsaxBxaiPFYshiEu12s7RulIzF2O1rQD5n/hzogdnm6yB9dj+igVFDQvxSZ0G5Xyxrvryj8bjI9GcPxeF+Im6mTuiCbyWm+nDRLZ6OIqDa2O37GvudWEYbscV4vg3qlnXaONTWLhOsNXrL6+8zuBpRqVKZ1nutREWvFHlc5diSYzWL76l5wGFcNuzxO1RunbtvXkOyfO/a94SK1E4DQttdKr6il9UkiVuhhgmEIW20UBFBq2UWur4ytKAvGHE/tj9Mh00JiDWEHfGTRVozmPoczNHbBoyTOO4EIeoGitBMzzlX6hrvYhhr1X0ngr0EXDM/lLKbMj9Qo9NJe573c9SXeeSugDL9qkpnkTlQouR0Hnugx0SGoE6TlvXlu33S+K/WTVdb3Wzmjcyulq6C5a3+Nk3yyDq0pxXY2f38yNKM2nrXD8zrHerQadHvtp883I0Y1nW+XaGPvx+8wrYVZ0dRzaWY4xUcLybJ5II2+mX4/OTfWy9J6po5sW/5ml68ZopC6eVgKUulMNlXhFG6SRn5tt1sGOSZIFSjcQrPVdSO6xW+3bRbk7ZwP32RDhQ3vl+mRs5cRMgZIi2sOmp9kRPdktcusOyOGJ169oTsWyzHNPuHggCZ6pG78ipGqeGhy7MbDjirDSbNcbW3a+4+VdjXpghIrrvH7psjIVxwYYXzH+CZDnZYMmj+mHc3uuPcgECZAHW/nY8ko5XDNeomhZ9zGSIRnDK03V3Wmz13PJ1gy/eCKIZDwaX5dgnKme+Cn8xGvOPQmnNFjvkKDTGYWPs3M2emcPEDQF90YbVhluhuM7vWJeJsXEJv7MnJ4as4c7ZMFF3Lwcjyr9KKYqEwD+f/ZzAreRGZFQYfVpWE6f2+xKAPwHkmYysKygcumdptFeuEDdSSxfAMILS9mJhq723qRN5bGuX22ILR98KI/MyMadmxXmFM3epeHh7wdcUIq2NLsJX0+wJ3iqRRmAm7vQMPC9YLHILaPT5wpYGkP8uojt1VjJW2WYgDeCMp3raRw7iQl1q7ztFuOoaJ/Bu2BW2YdomtVil14iUQLLMQdzPQkj2pU+2+iUzEFt1705odc5XMublUsIEICwu/8+1Nov6unnnUKd3f0kusqM0VvT1yDTIB8jmUbH1Cpz7xarZi8QhOYQ+nyc/RngL8c5HJBXeVUwOSe3SnckFXL7yIIocfjureJalcWhIWMUXmcCfjlCQdMyIvGTXbkEY+VzxP/+g3J/eNhaFtu544OY/zfVb0ZBrxZ4pAB1JazbIXr/Jix92jCTY0gDWkOJpLEY3QqrWfyMsGY7JkQxqdxi91uRoHzZNxGJfYtC/fYURzrzHrkP5DLSv2bTPrSUIR4Zu9NGnrQEKqNbNeuVL5L1HPlJtf6nHe/h6oOe7FWQcOcmp2rFaHrakM3ASzhfyfAJdLTbeIkn7qr0kMDxFTQ6W1pvgsFBjGak/q9Is4Bk4FhNN4Ke7JhpSe5gxItprs5b85EowGuwkY8bQz308Nz3Kk3rWKGLru/eRBg4NawBzmXlkVSqOIVv3I9ieR/vZQ7qk0oxSJiwuppcGMC+qFyGEQnCcOznEkBfRqKPocThVpqzDlIN47aA2eb9Rn2xE+mw+Zi5ik+/NAb9jopPI2zaLH0Qr0ZvTdpRJMdOc6RNzMje6P8o1sFjnkC47S3zyARRSYLHWfN1vABnGee79Sfcv3ReA4R6/T2c0Eihk5/nE4HeE2K0srGC4k+3H2SiT0SFV5uSX2J9/RfjNQaEcbrDg/oc1+xxItJMdr5nGxd4vkzA5eoUbtHlA2iO3lk/CKDsoNue8ApJSGSrgSvESQkoKSdnOBByFCB6EX4U8xPhVgVRnlbW6MJA4qSO2NjT+ckoPIy0XMwOGq7NctbAV5smbQtjjBF72Ps8LZLGUWTTusx/54BwTgSPXiR6lC8h5BHSRcV3QAOf+SJ67my7QU9az5IeR6dycfUMWV0xcgMmpOyobCAKCCnQOcnhepneJpoIkTrT40PDlRhcLx5DRIp5CsM6y4cZNffmFQkZwdw0AO3kzh8kLJLBY7c5jQWta3K8++ssGxK8JB2XVpi/O2DbBgxg5R507XtY2Ma/6K+S9Rz5SbX+px3v4eqDnuxVkHDnJqdqxWh62pDNwEs4dMrc32RS+/qOz26oFamgzxYujXRV+v/reHG7F0IoSb3nu3YjDKIsrqgh25AGyxFhmaLC3ZtErRncX9N/YMxIxQ0N9wgeppu6VkZn4jufpar3ATy59Z2Ine4MpxtxhGIALPDsuKeftirZZqVCrKhvzas8eCX/YFQcikjPGNknSiXvarqqh1JOKYApBhIExFOU3Sji8jkSnuQPkUs978iyoAz/2qqBwln9hcYLIuk0341tfJFwd+NKfdWOqTj2RVbl31px2xp7kSZ0NelCsuNBG5kMpUQ4H52cTzxkcTqKiO4egdvvTAh9/9UUje14tmXe2J0yln4c4KyKSWVwArgL+Sfh6AH//J+ySWDK1ukvd1ENEYidX+DbG+0y1aTbYGrthg2VZeMSJ6zHgClkYS18GdPhRPwTJE9ypsLXJOPoK9QbijANPwWNqkmp8oMx+vWYbtvscI+T5cXI3i10+9hrWxoxZFUCpSSDLfOyq0VDs31IAN4EDlxCfNQsw2MYULGhUBUsyVO/velkXRDFyC/JH5gjOxUxQ6kjmW/mnokFViDi1WWY9mcJbtWswXqTS3xzaSuMzH/Zy/CGLDb6VW1HM+rQsw3EU+RUJSEoU7L1BeoqQQ/NsOODfixDEQVkkxMTjh6ewBiDuznHQNdaRaxWo1ka5ybU5aM84AypNGshCR4dysNQI0oKoNEUYNjWHnPlsa1jD9YA/2d/L4G2jcKOEmYhf+UD2ENkS3OZs3gwLodjCxLrUk3XzM8EAbTZP581f7BB7RMBArMHQdDI19v6xHLjByCdJ9wTvFswksdLoYTfMvWe2PIV0pZzC8O11m78Kpyq0z5mc2Wt5fCA5U8EMWRiaoKGeXZGjrBrTuhu2whGzdlvzDMNWcjzd2eUl/XGlonXzlbjqIkAkNFWvT/2Sed7KDfo/OcSY45F0YejvsksXaKFeE6nkeaG/jxlqDdexr9TBUl2gjDbb7GXxUfuPJxiiy2og3NMIa8saYUQeZh+U/6bM4Qnih1R0uO4ncSOIRphtB30QRCX6qLqDQKAszOgxOaH0fQF0TVBLYxPohhEXVBZWnUoltSJlCSF25FlKm9DTJMMTBxmsrdmN6zZg0LeDWxa6ko5xSHY99vXlWtbMK1lnewrSWTLa6W7tC4jWt1NIz2saAJBHIg4AbiHZJ9dCk2UhqlKYHBhocrBluNN7TDYRjDmv8K5sKSNUBHYCeJHICthnqXwZPwTtiZrfiEM/YvUjlLF+5CiBtT5jE6GI98uycpvsKx95ZhwCbJyuZaoCdHek+t2RDMN1Jx+9o4Hrl68HvUhO3bIIl+LUGbT8vfwXYMtXT6DIC6FeW88jgErpn392ezPVRpU1LVBWUP32RDhQ3vl+mRs5cRMgZIi2sOmp9kRPdktcusOyOGJxehZWzecTwmDY2aBv8mRbVYXuDERzvClPbmhwcMZTrjmnoJxAdt5h8yPtK4Ssu763jdw9gBdMYvareEVHMIJTIxzmCyBG7eSo3eX82GWmj9yGWXs1Ot6mxhdmk1vVkxuqEwrlv/slIWMJQjOxjHESj72oM7QhMkn+r7uvHDT71UXhgluN4aHoWpcbvmNGA9DX4ia5BS6x7leNjJfsMHOYPc5bHPx3YHLYqDeySljm5/v8VBSv0Rsh4b3Pp6ITgsvWdhD2FUPYWohgYfixS5gO/r1ssrXLeaQrjjLNssaOUOcCqe1g3oFrD2Ry5PkOczYFJObPoudEuw7DBkg1ns414m8PQwE/WMFP1wzibNAUP6+oeLTMJwcz0reeGSfGLXbcD4Ad4WgQsHus68/f2YXdvtAV24h/jnUHne88GL7rANipKjyJzO1RhU8cBGpeaZegl8Zdsk7UQseL29pI7MHkqlbO7YNw9f+qsrqnVcE6QX8xYHD/K17/mwo1NScyccbG2PEcT/+x/sFT59DTGFnhY2WBTgy6wlHmdvPQuyPG7ATxXGFuAcIIVkucYIkvOU/I3NT7YtMRHZEdfVWE2aQoiFoH/ei5JcTycv/+2zlWoYAYimFMX8KP1cjBvzBotQhvm70FUTEkASEt+aTby1axuHOv/Mg3h8d3HlqV948EjKo2zUBmihVuWgov+V8CEUcN8EdGfCXICw92vWJRan9PAP32RDhQ3vl+mRs5cRMgZIi2sOmp9kRPdktcusOyOGJx5cVTpSjtXTu+axQjXfvPKn+jqQnDqpRFqgFnlLZFwVOcGWdaNuirz/fkc2Yako+5ij5ICMrKWJPxquw8M8oje5ALjOli8liX/iGgdfSkREHr5uteSRVDt50ez2eAaZKGRZnwDFArM9rYNR9JEE82681cB7f3B+TE1JO8/bltZVLEzf/c0v8Nd0m/BQLxL+BknWL7BEfiPdwY4k9ONu/uqTMM9hWzloPfE6ZEMD+yTwNssyIvsC8vCqGS2uZI0M6+erJH91GKzdRFgeGUAN2hDVS/6yQ9LD8tXw8xrdFfZLGpQIHunetdgKBlyQpeQHoovVdwRvGK2lpu3n1C3kx2OH40nz4+czsxmjjoBUYHzqF4TBykvzH9qOkEL1h1X14JBK1I3+CiW1CrV738FCC+0Z91xpMaaXqeLBGlOFJZ76pES/N2SGxO2jjN0q/clMbO5Ud+NXD6GjhnEUzSjepXXc+x1daxd2/bZayQ+jsyTere4i57Ygj/fWeKVG1XOQTAMPdkSADm9LyTJnHhuH43YpKbr6DAofpVvIGm7uKgeiZwAXx3+1NdpB2xEYFVf/LqtbWXxL0X+0PGiwfrjXFXen1dEf2Vk6oLanBgOPG028FSWx+doDRU0DxV2Z8Jo1BjcvJNuszBTkGpS2i5DybBx14o0XEjZtOnhrrrr2X/y13a1DiRAOF0Igw3uCAoX1d9gjexR7+nlhRCSSoI5sY7sAF4JKD2Kh0Ppc+bdDOi/XP133xnOSG/rO+OPrMZa4MyVfbmUrV/D0WwICxCQiTFD35+Zq4+kRWNVZlAOWbzmMPzlpxxtu95cHthzbrqLh7IPHKiHgHwaRD2RMwxWDxgGfsGnkvgwLpPL3VM78gMsVYyKqyZMMAl/NkyUil49Jfo/cicQKzam39nm/PW+QoRyKcx0wIUIpLNTVftT08658FEpBsIEq6o4KEOpw8NEkCNmnpOS4VIxHPewQFX7MVWv14+foSMG9rZxCwCeJwhQWW3A2WuG5rEnRiFe7OAj2kcjTzyyqJMwJzwXPhNMWTsC0BfkWqGOUrLzK/vDtDGtsOOJ3boiUPhrRAuvhYJNhJtcr2WhHrHU6dEIDwWkSHU4sDTMF38m97QXdbyOuQkuX9AQiVA0+pG8X1gfMFMgE73Lp8oizz3c1kvy0BcjnP16CJ+RBevHhP8wysSQU+HWi4m+JiS4FRgAubdn8cPua6mcsHZM/IkBeaUZ9rLfTLt/0CXMkNb/U5IwUHTr51KdooK0jJ7lRLlnzacsj3J2H9IMajoDSoegAgHXQfwoB5sIvdtCeoWQF1627LDx6W9HM1ZozLZ3iOT+GeQXDt6DVYEn0ASjN0P78UtR9Mj/IpoqhJLY4mQdHEKiy2uBQj4kXMKNP8thHXr0bc0Fvbxu9tfu1FGj60fxDsnl9zf/ltKpnZuJSAXg7HZ2hTyHkuWZjTGdRF88xEtXxHBof1akpQwzEpRy9CU84p5jT/F/55DVEL0JNPMXOawFfLz49h4oHAgFmZbSlVsHi4i5cgZUyPpwHc33j7MO93BRjGd+TOodYNIg57Y1WsgQPkQUUj/07vp7uC/Sh6oGCGAesscpkE8TUoQ7qnsBeZ+Fe144KBRRtkFSHanhVLojf1vmoDROdSC5NUMvh6n1M5sWU8TR9RvYea/qX5kthtEMEOq6DuYsk8XlviUHiomSdFe4J4/P2onVwpxdfOtgnfPxROIICiTl2zicOnzwyaOra1nhwoC3y3QoPo4oVED7O9vbFh8+3OwKoKPU0RqUmfzG2h+TWUPvn+E9u59VRcscsv8WJB1cXz/n6Q1xytYl5P5KbuNrqKXv7uerLkMIAz0kgnan6UAl2VNkq+MYsV+EDp4QlC2nhQIyArIQW5WX6og8/Z7qvFbc8DAfGhonaL6j68jOCsp/cefhAWwk9KgNFJ3d6M33SxnmcZd4JSkc9aFXHCRKjf/OWty0nu+bXJssh3PosQM9nKWDhFqqj41YSHaqG/gUImxPAxQV783rzHmzYRFgseiD7oBYvFld2412f0MbeqNa6cL//GHJUvbi2PRzLl601i5YuEl4d6Q4UKfuE6/p5Itu0nDAWLs7BdUMk0ACR8GR+H02PWr0X1TbpvfIr4bi0OZTrO/bvWogp2OfoVM0xZ4L4eeWEZqXdhrQKBopRXsK0IVTdA10b2JnwxWWKvC8auyfZNqmGGL+UnokersHOubHpJ+dmJRFBkFyyxAPHaSb+qpX+9+bsIRXE82XoqSAPA7PCEGIgrsrMzQsTGuMbj1HXrIfwSH0M/FRFsq2MR0xxt4ZxG6JZUFgalJ4THensToFe6FafEKoojybgobI7PJq3NPXXzO6+uqt68DI4xdJuoXzAD/YUoidi+XS1vSPut04iChA5JwZp6YK4f2RyW0Ny2sF/3rz/PfLeCx8WqIaeRQbGkujxMlvpGMqKDJ3jPoS5VOCZjrLvJqDbOgjKHjy5PG9aUOK3mABgPOuB1r6Wwi2Yxj6WzwFrkrfOQMijGzJpJ7eqwgm6coOuGnUkFW4DPdPqRFEc0Vl7koHzK7S+6t1JG9ygd22Nt11PLJL5J7JRPLl0QComK5Y+CWK4FzU3AMDb/X17G9NXNkxgHC5GwBghXPT9KEZ8af14cXqC5N9BmYhEIIUyiIp8pm0xb9u+v/twVWkSVzMTwnFWP8T4SbsJ2mDB7zhxX5qWS6DVg9fC68n9VeaLOjLeY6iB6DqX/Jgffj/KsFpw+TRhUENe0hC4mNWyACdiv882OoGsg5RVWlm081PK8fK4gYybdIwEd4MOW1+hESimE8EMrr5L1HPlJtf6nHe/h6oOe7FWQcOcmp2rFaHrakM3ASzhaVMAvslAAUkkUaNwsvBl5Sdl1riq7+6ATvs42bTVsg+HO9EI7xkiqagl/B8Ih2+RJcTXxQPcKtnNbI+oBlnGSFVuAtt3gHFJYzbuRyQ6NOF6oCw2H4qOEdgX+CTj9lwOQf/iTPI4P8ZFFVdej92Yf/Pr3V9MJNdFotZBrs7AdYlXs8oq+xgmsLLPKSIPchIkyYrJgawUbKL1ExC3oob1fUlFau9OKTSN6Gag9m3toEh9O5X0cI8Tstde340cGA64+TZG94U4SDJnfunSbwySuHPUDfX9OHukY5MBJih3CKZBf8XihC2nMqFwEkpMHsspHUhxiYAN1H2hLj+jcY0rYcOgvc2koDFoie5FP9deo1aUCrwSypFKiJriY520Un13r0KH8K6zJY0eAhYDTrVwdLYFrDnYxbcTBdf19qY3f4U8LFFTtPv2v5Sj/n0Q362gn/A4WzN3j3GynZWIcZNZLfHofQ2PBlN0dOwWe2rANNa1PAVvR9LhhLVJcCxTzyK1ZZ4/SyNjyanEO4jgODGdEyk9XzCGCH49NQwMP1Zm0UhI1BZUUE3mRbHTs8QjOgZlohnKyqWd24G9zIoZNURKbAZLAzHir0ySsl2arrBV0xuplSmBRV5RkW4Lfdm2lFbRlL6vCkL6sKlp9x74X4mYuk+bMS1zv3n5B9Wg+o74iOoudycJ/j8USeo3l9cBiMW46Cp1TL58VrWpvY3+FenseKZHqt+RMdwS2jruC42wkMExd+LtVHjzjIj8UQ/GvRKoq7W1+qS0NWaABpn85j/Jywm0kaX3SmvgR1IZ/OfCU08i27ScMBYuzsF1QyTQAJHwZH4fTY9avRfVNum98ivhuDy3oDxEf24RX7WB0drXwtqeuSilSDrhR4NT2MOSi7zubCWMy6H+NfhrcqXze4vyg+BbcnQUeI1c2KaNGKJO+z7yan9Yh+xbysIWFhA0FnN9JAACye8vdrNQX8GeEAfGwBsk6BJ7beC0Jmw+XRpjykRQF/N3luj5E4KarLLc/KNQjRXOuhhs1wJ3cI99o41uOz9iNlSsFsRN6Nnx19J7jWZnTmZLNFnMeY7h0hpVOyh40ZrjCXVjxWPeIJrFxZQ0VVzdC2TEylkAs3fJvDqq5lNLyq6f6Dukapfy/fYTW6kK+sV5ErTnM/L7999nt16taNRwq15gkHL+XeAYvQ5q15S+S9Rz5SbX+px3v4eqDnuxVkHDnJqdqxWh62pDNwEs4fFN/O/250noIA2yY3fSQZ8Zs5RcRO7/eQN1gAOCiFOmdX2hHl8/sObK3QDuPfMMU5isDYwbwvJFfdpRLV2zvaA1AtC/n5Y3wQh8K8k85TN3EMhkUSTV22OkUJBBPiS3CPdVW/WWzKCNaHUNX4IyNpImz3vsS8libzPk8Lpe9tpZvnqbpo0en04b4ZhqE8QzZDTHtAx9+Cd0sSPghxdA/41KE8xqgK+B5XiU4e20t5bNYlc73SBr3S8HoPrwrIk4qsaPv3PeVjVlSwOILPGwjfgkcIWAIjYYCmjolzhkIknVxVGDaunnNIYJIAbAMf87GNY1YMAdgJqw4g4MQcHisVX7D/X+l3Y5rgo1Nz5efMfHBcsldKGkdGLju1OOF9eFQaENEUqxsgFY55TlOaWVzhKiwHdNJarvnEWSJ7wGyykssnsoMgPTBZaX5DEQezETQUAsT8DcMB3XXelpAyms2PYHe5gzO1ydthsm3fUECaSeOMfEnWSmrzDY7diCpiOTrFbjWqlof4EMWmuNPPKK+MY6upWhsQCpWiwXdyHqTwc5vuf5VGq3pWQN7soB8/3uw+5NMI/K+KOPYy47GQoIXkeH2GVe+UGeDzBDhFmjmtzPltaVfMambKSzqVXlI4u7r2qJ8eL1f0mUG57+XRFzEwKYOHsWQLS2xd0xOUxXCdrU2ln39rVc2RTci4P8mKG4IvxtLo3Q2ytNj38RRF//SmV8fklR+gxsk+VoLq80vP8XI+rlJFTsPAQphVmPoh1aRYf3x28giFNfQl8zYfVuKfOk7RI1cdFWcHEP/iyZxPCuIuED7pf5/0RxS46WHZoa6pxg9AXhdXB5/HrIkyAJd3Hu9BIN8jFTPOVLKCaXr/pSnjwi9nHW23e20M39yHpDq5pO+CAUISgm8nARhagsfRVtCTkm8pBRgW2DoCSP8UT1X+BFdzd71Mvxx7HcBokYEYkXmkNueugyJYdistKayLo29OaePcRJmY3vDgR5/Ak2IprMekSkYJZh1fPhuhzz8CVfbmUrV/D0WwICxCQiTFD35+Zq4+kRWNVZlAOWbzmM+r79GjbJtTgtd9TIgJSIVfyKOZHDZJvbeDnetDfHJ5289FpWyrgssUfTBSsvnjePqEfoIk+vwGgiESn2vW6p7h74qwufeC92YnoL5bB3b1gkvlP5o0cRXA3FSoXom8dgg/QA6WbqIsqSASIWO2aaUpamfMYPyRI5hwNPjiuFoGwyEBNXaZb07q2HbyKcA+qfbGhPa8khsBrfVMhH4oNgNcR5Yleb74arCcJb/UsbYP2Sbu8KJ3t2EgXZLhddoR4Ff5xOB3hNitLKxguJPtx9kok9EhVebkl9iff0X4zUGhEQSIWwq0Vqqe3c86170zxb9K+xPWZ8SY55RXq0jyEGrRLFwaG9yAdAabGc2GPh3suCafg8iSYREadKKMgNcdnia9PRdkenHn2ladXfdItAbaeWcosz97TEf+TAOqj2F28kw7VBcHZ9omjmVORNCniuEW/bu5xm6tjUsEIgnyaaO5UgJuAGhaQS1FFAlF5Xr6a0RhkPoPtzWRRQ3VUyzeO1s02fEC9QPdARuTakpGa9/KJhhb0v48VOO975yZS/TubetTiltm3Gn98krkDD/IMbu+UDtq9iDWHJaRo4xfi4GYYMUV8w5ujBM4tITowwDesz7Rrl9Os4ZTDl85U7Mxz+ebz4Xjj6kCm51Igs/5fdQOrFMgRQL4j27YtUGbCqJXaj4xGJHxUsudvaZQlhS1CHn6DZJletXVWwDA0iM/2Gt+ZHDGmyPQg1QQWWIo+BEMv2uwUwEzmSi731y/WrlFu/Hh1t7AUVLSvy6OkFaAS5Du+qbnD08776U4oDvJHNjbcArvS5swDHFjH6jw5iYSGFN/fOJsvTC17TtZqdUjxSuXCu+SyFmC2y00eoDGCqG/N5xEc7b+VaNXWtxpoL6+Q9mcG0kkaEqfJ9wWqymucdB52wLk5q/riwZHHlOncNAJAypRWJR92lAl6ekZimEXjGOczKPtJr5J9OgCoCwd2beGecnVI20/8dHlqOEKMUXuXo3EGYxYY84/7BFPgDcqMLxvIV4xyW41gwCO2zDNyxdgwZ1BN/gFMDRPEQwnjDVXlTNI7igUCrB2zpiv2V7Tx+JdJTTWh7TGr9sQAs3EJM9pzUqt10m9cYUwJBlQMvmNELAzv2lIZQ0NXqd9LGxgYsJYkhIfg5jOFnQ3W2Tuz0mRUMWqA1sanzr0PkZVcswq1s33pC/aIpx3zEzdpR3dmuPALjoZGb4yiGnbD6q/ORvf1z23iptEauCiry0isWRcLH8aj4Ce/HXrP6Oav9WwlO4+Fz0n+/2lnTN8rULdVpd5yhLF71YZ4vPk3uIEKUukn6Mlz/DmcApUP3+ECnsx9TKfhn3lvYWjwPNoBN3xmPPkwJJGyE0hD2Je4B5UZ4bNco4HIQSkist4bpaiXjyUGqZZsWIQ1s/fwLToqKi29As3bQyW2UdiWYdT/dm3JFxpBUmuvI9FSLgW0EdrWfUSSSZ+ZIBNLnVAK4vfs2O6tjt5J7c+oMOVSViD13Z551D8zIlB8ZKzjrTvNCj+T71681f5xOB3hNitLKxguJPtx9kok9EhVebkl9iff0X4zUGhFnBFlhEW+qABnBAh7VxQXGGqn3pzrbV51v3XyFxjELsj3f5uBklXdJ+8eIpgo606E50GOqeiltFks0b+QMrEVBSY0FC6Cym8SkAEUVtEXc/pQtkabNopx65w1W+J1ZyhVG7ecBAdJBS0B4K1sAJY0WBMpvO+PlzQ2FBZ+PdGLpv+R7dP4Y9BKG51WcHc9deRSRj2sWfoApMLqnOXhkyVDhHvZXw3yghTCtsFeYWcpMMZ3Oj70DCmtoKUbmYgtx+BAOyCj2xviDpYagti3VHn0if2TfDCs+oj4VTkgrrZi3j7LWA4TcHhmNYHlWE3wiQ6hh096Q02SfqSSpAT46S1Yp1EXVe12VNQ3BuOULKhu5cS7WtrptML64pZeFtTfXBQtChKxp09i75qJn/avx24MZLbw/M9vEgdlLV9iK3nppsJ9gSHMLrxuK/1q9kYf3CJjGNadL56c5StccyY1+Wh8emCrXGfYr6d8KcXYKiGzflVeobGAgdB/H4NRo2rnL/UUWsYw+N0jCmIukzNduydIBf8TNiWHN71WFsTYoKhnYfz7Hz8DsolIqe2NN82zPe6kDJoTFd8Y9OkCX7WUsuZtl785R2A9hbaM7JEmGGpKrrwOyIiQKsYw63nLPMF5xKmG4fAe+qj/Whdf7byf5QNmGsje2151Zt9jLdgDhZBd5Vb5PQkOS1B317Yg5n7mEGFjYgJcM6e6xjlocJy2o1A0L8lr5PyepVP+s+4L86BmXy1BMtgvClVCmKjAdIq45BTXPRKZ5JgKvy0hIr99AVrIi8W8S7V1oix7LBTXYXk2ZC9FmEvavoaqMZev6TWfJKPJljv84dwAxu0lufHLQZJIeBzIzfC9UXhlnvlbZf7vMgg/rH4/PPQVKgY/Q+YxWqnUx85Fm227zvZ7q7A1JZr0yFFJcqacUG21JiqYecIaITyVfbmUrV/D0WwICxCQiTFD35+Zq4+kRWNVZlAOWbzmM45rDVChQIJSI18dAFfghnYQICLwaX+i5uGM6bTMRlAAG1FKvkDw/iQexcr60NgMFtw0MNvj2x/hkYyarg3PPrj96XB+xBcK5gpLnTJgImsMI/yM/2zekF9Hymy2R+hhS0yhz9m9OGq7bZmof590E5Ra/lu3Q+HSx1bgf00cgfUUJNhw410LKt3FX+mHpInIGlhVh9EpzcDxdOovUcCbq04/TkMjQMgC4jfEFx59Zp/Vq0EkUPwVFBcdu0voEQ3cNmG4JUVga95lOi7uwCnJQ9QgTJ4MJehHgirQMO9sKeL07NwYM+zX+Yei7kBHm6DegwBGn7Ld1FuTVXzQ8Isq4y247s88GS2tZYzJ2DjY9BAdG8KMqTrjTfX8xsVYB+/ZjKcBLOYp/dGB3dmbcMfDUZPUSm/3b2jdYhgwGP4FSpZoPa24K9Y7mRC+rYomts1abb8sQs6jCWhaALQe5hYsQQDLddFdODuhI9fUnbP0ZSqyctWREIfNeODf48UH8tHNH5kcMabI9CDVBBZYij4EQy/a7BTATOZKLvfXL9auUW790k1RJWt8Gnv0B2FdO+9MZvAYx1WCDVFiVNZLiwsJBlV1H6e4hEN+qoPvyjvmuIGO4QSIMEFMpOfimDENXIjTCXZvNMg/0F+JlF3K1aXC9V9ztyAJ249g+08nvklsRFtwu44ZU1wo4IOWZjxT5FYkzoTtDI9GRcXX2nZlimtbQcHIQb46Q/BazR9eLzj4hbCoqpYOpwA6B/fhgpiqA5uTvhwO+2JNd1LtC8jsjwwJmOQh8t8fwTKCvkTGA8qNaUNY3+0CSfE0euwSNU5hqhbtDfnGHdC6EfpHfx/Krqf6N9k4+hF+W4Rn4YUjrcteiWXnjBT9qxLmbhG9LDoXcKk9MdEr0LLtJI+qluEffdEWK6eF/8cMzWzimmrgkSopTZlOqSwmLxCrSlgVYYc19JmKqxA+cfm/qIaypK1Eh6k3VulSKuy21Nai8u5+GYGhwUMx+dc93veESVZQnddUQdGVWUtoLOoAUaHcvEZH8VPosx7I82cJYcEwe9W4ZgNeXyhX2Eat9SRgMn9Z4yvhb6D2t3H8xGq7VALt+oAj/8Pts5mVifaCytRNxKy8HbbChUW3TDHlclYeNCzIqkKgsVKAL8/bAPl+kUHNQOIxb3wBYlKzqRtxxB/sV5b7MgIjTVP5gG8Pv8aHr+nr1p7uxFF3coGfopolcDrMsKhy+Cdkm+le5i6lk2gYGnbwNDBnT05nrqnHNrVljkHmYaHP5MPyS09iS/TGDPfuypHp5VsK/128QWqns8PfoopFjNxezItO+S9Rz5SbX+px3v4eqDnuxVkHDnJqdqxWh62pDNwEs4fMBR85hdmMeQD2/W/aoPo3V/+DPPdY9e2O/6s9mmSRqCK6QTc2/zc944kHn40p6jUM7asW3Pf/aut3/wMiKu6qf5nZtC5qeX8W0/rJoYRLTDG57AwsNknYkb7Ei2tIFOOG2J096lfe70EmT3O0arl838q0G0CtMXtDScEYAgU3gV2VSB4Pq00h0G2Dsnlq0crL+KVLY/sk09/oR+4zaM0XSdY1s9UFapueKcFdkIa0J/sIv6T4qvp/nxgY84satrdxmpVJcIQLmZ/BtqMIxKg0DZCpIA4tb6ejm2Kg7gpzhEn6spQm7kgoWCVrAIXGra1qihYV1uwuqiqPN/kX7IQp036SzPworPON842RSPsTSmJ/cE//z3k8XbeCdElOiTjKBszACzFLmuEr566+GwzHBu3NI8VHpvczTJ55q+/cnePZQ2C0QzGkzO1tXDy6dCN+fTOVueIojXMecq2zHBOSlk/Czp5rczXoVt3aK42RXdCSgT5xHT/w+hWIg+9iu/g9QBqn5YsbyVldRhoWz30lzyTz05SfmB4BvN0daNKuw1xLcop3yQ4l3YFygZ+W8lNa5dnmQzv/cAUCtYFONQW4p/SjOuwaYLUXjbfDuyOZ5Q1k1JRCiN5Z0L2RzQvotfQasUKj7QXJYi794yRX1SFoLJoBR/huQiIj77g+csVPh+oXVG6qINMOsQR1R3h2dE04a+hSzxCNCPWMs3rxxDjPymqka/fCAh0/IQhIaRlnSdURbC2plZXc3cnr6ZhS7nixM3/3NL/DXdJvwUC8S/gZJ1i+wRH4j3cGOJPTjbv7q+8unXWAexAqFzOdOdl1ie5V61x95IUIjiWMr85Zoo3/FEfdErwpN84/IwgE+/au3hpznxnmnW4Q4wZlVIt75vUFoT0v/8T/aDaz2n9nch70IXy36+u8ri9s35VhTBBSFItu0nDAWLs7BdUMk0ACR8GR+H02PWr0X1TbpvfIr4bit0ZbW41LdUwZqBms/DHHXRaGYxrHFpZRc9K3xr9ClbnFTVSzVDDick6GASgNOLsCFWgctMZcRLRiz3ijWCNRPbfQK0RmmP29lcY9nvZuLVWI/sCGxqdIpicQbpWzya/7buqkmIRSgyijkcSIdh2OkFg0l/6HRc1eJDxAz+UN2lyxM3/3NL/DXdJvwUC8S/gZJ1i+wRH4j3cGOJPTjbv7q4aNcto1CkCIYVEZ/PeJwoy9nOr3xz9Uhqr0ZCXOVjJKKPUkd9QTjZecSEQV9VXpwPln5PKdDTNJRkx4ONgy0eljfnRUV8VWEPGw1uJJYwHK2C3wvzYes3f7aPvBRQ1KUDDKdQlYLS/7WnKFlreur63Zyrv8nGRy38IqxEaDm3ue5uDOan87K9b4NVH+ymYubEyC9fttkDfKEuHX0KDPXHLsidC+WtniLypWhJYdYS+WOwJdXdu3MFLiBJ/FL3gdp4bYnT3qV97vQSZPc7RquXzfyrQbQK0xe0NJwRgCBTeAlbnecuu4EjkOd4FR+H95vh+uKBLhz4mawloo+PJTbKl1NV9apVN3y2EfkJYWSAi95thZgClq2R1mXG1aPYswDPcx3IlvBboOoRFPd4TTmo7OmTCwXDZbgLnheRqj05d1ndjghpuJFWGM6jlXi7WVu28rZyExFV0NUi1EocbifBviUukVal+M0FdwXM/ki+kxUHCpsSz/9x7oQ8X/87mdj9FQ1UK+NyfiIMxfl3tHPBVi5CLVNCZPDOY8Yw1hnnqJ5GvK3JZQMPuGIQlZNHAZ0yJBGZzG+I0rnHSTTbhxcdagPnyjzwFRu3CYb2nAzLJY6ZXgfLELibsTnYqEHmZhfJX2kq/o2pwNYWPV5+RN9mIKigjVBOryYv/9hgKXqdOFsCHtjbgvblN0O5T/nhiVkK5vX+w/NDR/OHAP1OJBC1tlGtLmLhthF8X5WfetFlEo4IyGjwbMh2U/vL6wL7valRN5+kAzveP8AxTjKSH8GY3zkXkl3KBwmXAXqwiElvh6/BweNbzvaAwcwkvR+ImUlW/Yq2jXlWzb22CpDv97QU4LfIL4lXaNRUDsXQDUAOsZX/rzBrdLieIhS1cMRYybVkRZRy5oos3S1W4uaXRyFPqI4Ix8Y1ZqKuuoFuxfk+nlTlqLYI2+Y50wfcJpRLvJ61YItU2tkwUr4giBcg4+HiOG2J096lfe70EmT3O0arl838q0G0CtMXtDScEYAgU3g6Qx8O3h8N84A41P3Qyb5vIzLjUN8Rx50H/2YaP09d5MtiOsmYU866m90UOoIZEuQWWKEWdiNsreEdnJPkm0uWdVfNtkteKOGzvUMkOr5v6I8965UxTKgK+DsmcY5qPmEf5xOB3hNitLKxguJPtx9kok9EhVebkl9iff0X4zUGhEpp+SK/vvPRKQhoPWOqKM+VvUWin3dcJ/jcUh2Wv7D0Ui6z3BpaKFYUJsh1HgXdsr02h0Cp9ivP8YjdahpXL58q1+DxZ7Xfea+GQtZim2MDNxc5fz9G/fToD16tROpN1rhtidPepX3u9BJk9ztGq5fN/KtBtArTF7Q0nBGAIFN4HkwiNyKNxZDJ739Yr+AiN7wPadDDNU6FOxgm8s+pUpeHVmAifed7h6UmrPjvStUx6E1qfkMNPchqFm4wU7TIf1nKtuc3FZucbbUtJq2bEk+XaFtsT2+x47AS427th9SzyVfbmUrV/D0WwICxCQiTFD35+Zq4+kRWNVZlAOWbzmMVIk4b1q2UrA1TLN5K0R1lrJJ1hr5BYDzLmicOI8sdxkEn4tEtVBi7ltg6nocb0CZ9ufDa/lmkpAz1+J9wKbHK7GV8xKgV6enAUnlhRbzWkTrfRmcVSn4wslQYpybEDe/5kcMabI9CDVBBZYij4EQy/a7BTATOZKLvfXL9auUW7/+BXt+tDnLxCxwz6kKX5mEkZL21tIQEw6dVa2ZugoJCi7QSpXiICSobv52F1Dxje0Z6nLfM32yQZN2arup1w4Z8RCqsvkF5z3NO27V/eE3Wo8rmq763gePSQEvoOKpN/rSdOA1x5tSSQRFIBlCB9ayXOauXfSQWTvUBHUDQZjcENLECpmFCC7K0jgUGR2fkL5nKJIYENocUaCkouG7mDlW3jWd0qKQmp6XUcBNxyOboy1+c/BYV2zcdge4he934K8FOK7H6lymzW9HNFcowx4lkI1Pg38C8rVJh1vR+KAh96I4nivfWjR3+M5Da7kdGiOVI8vPASRyV/wVHysKkVB7IDWVjxf6A+pzjlA2Qgtk8wdCo/tk87RYlnPKpAI5KMq0OSsSLBk000igBEpJZYCH0xaJfjRyG+b/yHlwrfFU8YxCmq3DpeVdxxdUAA5AdElUV8EkLqfBqLEDHEhIpdlpcQ2YfNmsZQ3hJDG4OKghVZdGxyG6i0WASuSMXQSK64ti3qTMTJ9tCJcJ3c1fBmj1JRiwJj4+to0Y75IQE9GdrrC8aWtNwx6nyWT717XhCXbJGwztHPer8Xc1cAIXW6AzVf+icy73IHyvPxX0lZqDM6m39j/wXtvMOZj/jt009MIVrF8VrHhHqek8q1CGTPaYNVcdeLz2VSzE7DabCq29iGBz4QPu6l+snWvRlo79I6iEnKnHjE3pfCH+kFH+yPV/SAwBUf0f0teLKnnStvf6NSKcuKVmQpgtz33kgxm7kFfyPZGDq/ibvPaPz/ANhjRn8fB1NY3Xl5F2m/auSQ3WCCLbtJwwFi7OwXVDJNAAkfBkfh9Nj1q9F9U26b3yK+G4vRg9N8n01UfZbfbgZGPPA84pDZwkXmfDOdMJ6sbv6IeeqZOrYBfjCSlg4+85ZcXtoJyJRCO+7TnCSfgocyviYI4krmz3Y6l28Sa8BZPBe9jH1+tv08NUoBBRPzv9DrY9/pShXyxGv8aXApjaBy3nhx9fNHmQ8A7OUObigNBAGt2EEjHSs2MP+kkJwFXihM/eaBHcpL7piSL2KUIk7lO3pT1TVguq8ixRkG09Dd5mVwhwHk6Qabg/YGQ1wk2DbvmR/M1DG3hrlaxEesihSJwaHJ7XKMST3Qjz0XBHHYdxkoDazVqywJsi0ytCv2Ll8eBCG8luk+qAvY6k2zeGp8MZw72z8keq/E9l5JooHFDvI1IYEimNQ+FNqo4mgtoz1FnamJR0lz5O/QY4n8FA/El3F5eN9qwp/L3pd+YBuXZanxlUnxa+Ynz2KivRgJWpLKxmTbLg5RXgZ5lXG0I50Hq4jJHJE92folhMGTmA9TOXjGUU+aeyI+uTEeipzRwN5Xh3oHIm1E3Yqq9eKR1gc0oxthO/QihCpUJA/VOMuQKdfiqesKiaI3cXyOiLMIssD9TTbRUni0fIQun5BwPtWz7O/fLzvOloNV3/mNE5oaq0HdjTu8O7dO5N8igeUm8CNeG+3FUUf4ra5GHl3OMGFW76s/vfMO4+DaP61S1PP5KSOgU8GmoNW52fqwQMRdsxv58iDFkVW8eslz28NZzeZ2YKHsBcvrIhhUm0pKtUZzntoEmoqsRad56CPdCixBZVZHXnxKIJpRRTZlfTJq/hWTGSLxZGj/YMfDNkEZhEd5Q9iJEP32RDhQ3vl+mRs5cRMgZIi2sOmp9kRPdktcusOyOGJ5e1NtapKTgHCD14voKwDrwNrEKVxLJpzv42NWGlB7X6nzKU8qLC1XjOIgXuttDvlkvnt65blesxdBOQOrA53Bn6XJxjaYTbNuBa4OFllQYk213EEwRr9aNH/VaAvQ/BsSxM3/3NL/DXdJvwUC8S/gZJ1i+wRH4j3cGOJPTjbv7qwO5eJy8orgJu7+UR89vfQU/Iyd7Ye1LJs5UNniSUpeXbcAQTyQ5y2Cbr1keSEydzcjI9N9eAl1nPEwescLMl6mZ182+7kBUv2x5d0+El/FZSoVHQza65RE4nQiTTqIe2En6spQm7kgoWCVrAIXGra1qihYV1uwuqiqPN/kX7IQorKa39x499WJ9MlUC5C+f5zPIZR/dQrPVtoI3XllZr/25ibQS+g1wrAfixrfpHD8T3W0uU8QE5Fh6qA7tnhL9N41WTgq8vtwODEfYKFfgH7P9tIlIijQedf1hLU9eNtanFcw8HHSrFLhN2oCA5lpEMHYXVqY9cc1jh0NCT0Btep39vWMgl/mSERpHNmjdPWx1p53wxJRdVMQtsdmcsNojhq1JBKP9ZRjtHcr1D3pRE1IO4OXYIKauPCNod71QCauQ3sHPQ47twpt1H0hLw1UZX5+VGRYvs6Q5Rou06ggnq0DU1OZoqn8XWScbB61+34w2vPXVUsCBofW9weRYNJBs9aYCcVy+vbn0PQQFd1CEIMxz169pfLscKpCmK6iMlvd5nujS5BDfwRsCOmOP2ISs5KBsB86y2ftRqvX5XZovERoD0DV2Acg7THQYZbKEDWYmIuIrtwzVkMDfpbHTkvm9Pf5xOB3hNitLKxguJPtx9kok9EhVebkl9iff0X4zUGhGrz6/UozVdm5YPYIb3jv3xB7LNHiz56UkpIAHypDzLcShd2gz05nYwTcQTWt/rEBqfy5HMXIa4jptQ4jiv8Sw67U9Fs/pyQM3AQWkZ6OPyhXOPzUpfrUHB/0gt2SP61QS+S9Rz5SbX+px3v4eqDnuxVkHDnJqdqxWh62pDNwEs4ez+jE2gIWq50WAMde+ncsffw7ZIUQFTbkMnbMUPk24oRMTC/E8X+NysrapiMkgg2lCj62FT4eEHqE/MaUWJvyZt1tXekjTwgHzQGBtVly+HLjMx99OeqwHoFWER2fqctvR7oiWlwdgYRkalprmGIWDRtZV93QoPoU1wyWdozbjdggZq5JDAP76K1q+jrhXwqIz/dE0OtI09sB6oAomJ/l8YB1dsSM3pzP290ydipGqhWd2RaEaywBJuuzs4/W0mHhTWqg553+UIcJnC60gA8mvOrvCyx4EC9GOGAYFVOMOUmcG0kkaEqfJ9wWqymucdB52wLk5q/riwZHHlOncNAJB/sF4zi7a2g7RYZh8+w31qYF0ZxeJcs0GyvhAjJWPbasVIf41Ki75g4oQADl0YUKnArvs3BeB8qKC9ZuopfXjQyyyRstQZRKQQmyPG/Qeby9xLYCBIrn5jmTvP/O5qQcdr1CSYRglbqXAUc0RhB2A1Pd1MWEBpCrk5C/iWnpXeXneJywUKliz9XwGZIMvrl7V1RuT7U7fvAiyx3ybBxipqFLefgO1XDx+spqNIaH99iQ7c9EftwXDJ4hx0sC10U6N/K/L03MI5//BdviJRjvLKjKJARyBlq6rGD6QTv/vNlLW+hIOX8Dd5ZXyolBfhqW6PWfY9Am/FeaiYl4RoF4RDekICb89VSfB+lhRIRqjdlOXMBve2ohsCau277LF6IVQGfoRWFk6argo37A/v6PIOW/40dbZ8JcVnN62361HZ2X3ZFO4eKy/k2PLDbggUsDzx9RpGDUjDnlHwN7w6aGhYr/DTIvTyyaytUn1lAqUJ5uTgrvdytBcr2zoyRCZItlnglV/Dz0dR2pP9GjGpiFktj585xSybN0ZxR26wCIogOmOR3RGTmFzkO9lXr8ra6zxZ91Qdd4262hcO5L2pTVntiKT7c1CHFlqswpJ7lQsaNOPFQbE4VUtdI5qe/FhDW7YlX25lK1fw9FsCAsQkIkxQ9+fmauPpEVjVWZQDlm85jJLvMMQu1aQlnXC6SvHoi1Ie291MTqCIM+FC7rjRFWvMCnpPgWyj6DVhk2hVf8YFiad36yUqyiMobD/6nyRpxBkzqg5P/l5Wk/5DoqZxPw80gzVNnvbncOHkAHgws+5K7ea+5G8KS1Zg3ODWpVFQv3cAqNQtatNhNiiOKAHtJLx4CzJ+PXueebAbDJe9Ylzn7vRqEQtlApbs/EgqEC1jiM6vnNWggOBqLyXeLBBmawA+WSKxITf5aCithAXWubfZe/cxmmSfvuL8DtCWaAUG20FnFkPdkfxS9T/qOYn+m3f10+GyWNtPTS5dIW/dQud0orL7F5u9qI9JC7bpZ2n4VdoqFCUUx7pomIkTglGTC13d4TKBNWEDH+lk/aa7Yxf/0KAnK/BevkzE9C3onBJYkDzRXZnaP/8LmmnG2OtbxJZZ5Geot87jMeSJLtcapRugy6O78RnOS3UgZF1gCul3i/H54r8pmsUmMo/md+TzjHbQrb0VA0F8lY5JAY4MVACEsCxM3/3NL/DXdJvwUC8S/gZJ1i+wRH4j3cGOJPTjbv7qY8V9nrQUuUwQrD7Sy5kr9CWqWHSQsDGVmK/GvhHSAEeq9Yf6cUcWqxIVlnEavWAH2Bli2m9UTPZ5NM8kYG7Lh0EtFCd7X2NU+OTske7nk5067HOHSiDLkdGpvEsGgy0RItu0nDAWLs7BdUMk0ACR8GR+H02PWr0X1TbpvfIr4biESsrbZaXb8sFX8RNyDi2KODB8LXgsnMLY+O3QtnzM0fFopnGlUZPOVuIQMjM3DjnyRz96pYKhtvEtBRGq346QtSH6sIZk3bBRwrk/gYh+9pXGOXAxs4i0AEFEyMBsp1dXeIewFzP8RQAmHfMdGy73f9mp8qA+rWfamoDSi5OPRrkg+78COzrU7aaepNcAMBRkbDEotUTve7ItnePiq2sZRKPFB+WfVN/ZeCVx/zTJ3TJWy2kDrLUToPvBy7/LFwXAs75sFS3Nzl/0DCRqLsjj7lSvH4vAkpxZ9jC+cYIIdryjvVBkic6+8UZ2obwfzLRsledTfZvxT/OfuBViQJ74jLSs2cv+WOwJLBHv77EElxaXryNijMd7BHG7wQltoUb+Dwp4QDTL7By1SxJVdLyiJgvwpgFUt4xx+fjAJZqISeguUfwts9K7Vc0ZdqmIZkS1B3j3N4G7y8eYxSEm4F/NqkO+ZJexvtZQ3Tu3uY8fW5JhNnxaJ4ESnm3LyfSdvixPGB76VH/lrOABNL2EiKi1PEZfkvDFKXvrVFkJRsSbSV4tt42WH2AbL0p8jVg7oinTR+C7HuHhT5ta/bAxVU81ER4MJK7ma6iJr6q7BIyeHINk8dLjDGG37bHQKZywotdgXvUo6xllzb6ZMv3LmMmDltw/Whqgh0/lmWrMXe23HYBkfvfjET/TABMVwzpwVXc/NOdn36kWKtq0bcIgn5pIJZVC15xYNx8V04ErdZ7VJo204Mi4ECc8w2yW2bBUU2GibPGBVYpFhmdx87QQoODK00T1Z8JJqz/MhnHwm2kzmpGVAcIdpiz87Rw4fs0TCNTlYBps7Xvais8FtvDopg4AyuR7Lz7nGiebFYCTOnt2mNDGdl/TDPHVlhJs0tZjyEDch2AG6zptUOBt1fRk2UhaYj61b356jIdUgnUjcMXWsps4I8QGnD8IkCAwRWcV7b43677UVB2x+vnf64/Gnn7WdazFbHzaztMrTeYRUl2QBab8mMELX5k6za3LdFQp0ABBp1J28uCBbgCvrBXGJnw0rdFhNQx08/SEBwZh/zSMfueDzBRztvo/yJukn5CP+u4otEPlPLC1cyyAXzhv/pNN4bYnT3qV97vQSZPc7RquXzfyrQbQK0xe0NJwRgCBTeD6nVINxeH+CD/qXjMEUhC/yZ0zgZT+WmCe+r0pieWC4W9qtSxzio3ZZ6nfqJntJvR7mTPtK3ZaFVxjarP23SbU00Fe78tIsO6YbCORoxQ9MC10c3sv+R5vY4PT0r3Se7NzQ2oeBkJ2z251sDDnfEiPA+HDyqgy8i/GS93NhDjc/eHZwNg63odqCoxt65IFUIXgSChV5O0Wyh5t/CBLOjNwzEb7y4yYYjxFDYPq4ppzqaIPaBCH7qSoojR7DD+fW9fSLnyVLINRlsBOVatKGoPS+Js8/fUrSq1mSFOpbpxTjzDrryh4IN/X9D27xuvVv1SSuM4exDAwdfviCgtVJv6pf01PFEDyrK0f7Fn4+tLfF2/nq5X0yQB5X3uMMJAPG7u7VsQCUeXlKSoEcKgn4doIjhkVuzzgoR3nrA8BKHYCxZZYPLeEkir6yua2Y6E8y9DZfYpoVsIbDN3MRRn2jW8qs/aWeSLTTYBIXMasIKPVoVeowiPFmuUbGaKwcRWGkWslX25lK1fw9FsCAsQkIkxQ9+fmauPpEVjVWZQDlm85jOF+XIA3WMaCuwgi1QLCpZNUlqTV4MLgkPAt8FiO6yeWHP1m/ok5Zqsz5uv8NfdVYo6A0nBHX5+RvY/A7No1zz4ABrZMuwjR49/sGU3+j6jY4TpAdld3JloeGy+MLMUtIQ/fZEOFDe+X6ZGzlxEyBkiLaw6an2RE92S1y6w7I4Yn/Axb6km9KpPU2qYZUbC3tAsVlUyXUVFYFqbmD/rgy3yOnZkejCVHWGLof8E7dmmqxNkMl9N1DWPaOeCzGZ1mBrl39Rnr+1Ij+eMO+ECs9Lu0we4byVFl/AUo3oO8vjrbXefq/bBWWeqiPO7NQkiY2kBqcZLujDlY8OgdC8srnnvLge1rufEZiVF5XOb7c9nx/uVL4PvRYnzNFxqyzl70MwsxR3UHR38i074iHKkXvX3pYob4YGxKSjLNueNYE2hBEAZDhAiwRE5i/UKabz8WIoZXudMUmmI+5qLtJyN5LBJ+MbHRjavYGjVIS3DWqmNmamMk0OaLP9kWte2SizCGKII0ahBUllkG7NWQCG8kxmhzNSgzLOrOmS02KP3WKBVNJTiXK4GWKN7GeTn7G6j2wnfkU7fhk6nSRYN0KYHeGyBFPkF458aAUFF8s1er4m1yHBRSp+NOYqtyS0yow5A91jciRBzvQVTnMv6IL2hD9/klU87SEHbUvcD+gxCs1L6h9Gd8C/9XXiNehKtmHntAigQhY7lR4kYc2C9Hv56aHJL8TrzZGEqvineUQt2oDvfG7Kkpt8+fbfphYR1Mtq+/vixM3/3NL/DXdJvwUC8S/gZJ1i+wRH4j3cGOJPTjbv7q3tR5qVXH8i0ZeEz5CDR1/XIa0NdIcqqi6X8KeWBfvGC2LWfu/iUvFnD4d31eDd0VKdqrCVsKoAbCVB0U2uz2t3N0ezyLx14WH/ON4UEGS87T1/jPva4cS/yesnphtPsKJMsmvr/TS1RmDjqRdMMXbu1D6PUvhKnhUVkqlxPHeSu0Wi/M0W4yYYD1X3ApfMgUfJujuFrKfcMtoCpmvcKsWK++6+mCbHBbyVsGpIvNmendxb1lfQS8ZpBh0u4bgDi17iGb133S1Dp4cjoQccs4hTFB3nJ2JcyI531ByN9RHjxGSv9prX/Ll3iGe3DeXkqTVX/fV20Iy+sCGLiMkrYDqjyRYGocIg41Ofy4Ym7Pb/RqYvUfSBwqYaFqBPGdXxivw+kyVAiDh5IGI3srlnEIyo2VnB8lW+rMu+7xsPxsYAjgkL2eusXQayUc6JDxWv9i6GP3ykKXTYBqnDziEArmMiDssCF9fretx7Kkb79uSsz+1O3smeNOR77NZQ87xZWbl7nf0FW3g9LFCp2/nAaIB0ojCjZhhSblZgFzSegP53vGqv0xQ+mIG7P2z770ExBY43x3MKKN/suNVVQO4bLA825TdrwD2boXrk2V7cdk70/u8239p6DHJRqUyvElYrTCD99kQ4UN75fpkbOXETIGSItrDpqfZET3ZLXLrDsjhifMgvxFgSAgmMGiiHkP/lOB6cIa6Dq+FY1eCVxL902h9OkEZMe3/JLcp3oAvljYuiZBmM8PfPb54SMtw7A2G24CJPEoMIo9RFoxh+71yKAx05Gl5Hn3bX2iR3o5gY6224kIg4BDEjQE6/CdE/+p7drpaY5QXi3/ZbMF5xrLa5mfeD1Ywh7kjnfXGz7bGR9z8Qjk3kxin2ONPvvB7driIYMXNtz8Z12cHZYouMnRDzpLy9iu2OyFBKbmriwzRJvwhVG4VJRAUdqZERHPOE7aZRq+BikY5fvZA5JdI8KHMxKcntJYOZNOtFsNREN7lFUhnkOzi/pW0z5zh9J3ImWZEaBHYtU2qfqi/H7DhSomw7jGCkOxM+NKBYwp7RHz4Ytsqrwe1uGhVkQfBPSr6IYj44J4R0SEkrvFrtlCWHV5VLsLou+FLazN8wVwfO90Md8NVqC9b97cRIgfH8k+QpQ5DD4y9kIBSQZR2AYx3PbZLEor9Iv5Tz41ytyrm8L1hFqpx6K+S9Rz5SbX+px3v4eqDnuxVkHDnJqdqxWh62pDNwEs4WsYC7lne/dltsyPHerfgFFEYxCYp4njDUs7Lcdq5U7bW7pj1FzVYPr0b+Sh7wJjRp+Di1ENp5+EX5vIVk+oumR3jRxPWUfKNyzy2KwRkcnCM+MN+0xqWCqJeLqcoYZNO4XSozUiaLYlttunYY7zqhCcBdSCER+5ncxKcjw/zVrCeUazBFT6NGJchfYdRho4cHIL5ZFgt/Ol6ry5cI5C+jhjxq/wYdafmYoMpO3ffjphLVE1b8lvKhIjCoMx6jEMolhdSadGrbP2rLfGLlGX22c73O9f6UD6XQdpbXoxYc5stz1fLKdVdorucWmHfDp2bPFKil9mbeo3HrFV8w6E7EvNE4nbDPhNzA24FqlShVH4xk9lMqtippgRFmmXWG3VhuRRrnj1rwGOY0DlGqE+Ev2lNA88ejQDsrCagoBPJWW+TnYrNs85SAnS6smzCIa4jixRIpw8G6gBeY5OnDfS0GyhTVlFiD/fuWw1ivGboG7G7zsGFsoNjOjTFc3StuKVDmtlwWGvzuVMx5o15Db+ceq1IzvR8iyPBjaDQDI7R3fkD8POy2l8vlRO6C7IUVXEXKJe7j+PjcEmzkT+OJpTm0vAxwMig9NW+HvVtayLCIML0W0AA0BKfvMIUDTrcNOS+iVfbmUrV/D0WwICxCQiTFD35+Zq4+kRWNVZlAOWbzmMUwYnl2rKQb2Gecd9xTRUo4LDZyw6tQZeJAyXcfFGEizsjLgUpkIzR+SaDg10YevCypK4dML7RmV/AvznWrG/UvrdwrSfsW+gMyW1IB3rxkiwIwlkz3VuMm6ki71IHgXG5kcMabI9CDVBBZYij4EQy/a7BTATOZKLvfXL9auUW7+VfVVFLo0S17sZlIFyjIyGKhbBszS+CCy1uTvPh94gUuZfpzczzoDAzNPFZL0uBb4+mjV6hGsEdwDlLJBHT1rJsDIav50Mwb0e8h6NnPBiXMbI5r+zcYU+UrVxRDuXQV7Jm4P+4hd2ZhRMR9FRF5hD5GVzpJGaXWVd5yOZruZrWeRW6TmfQ62UT8ReojQHivFcYux+uOndmPKQq3FcTmw8VO1aujeMD7dJvQ81kBTQRpUKajaI13QS9Z6qb5CnZzPhKOD2yZJK+6TmxpAgHfPhw/TM0rp2fnNv5qobbJyB4I/ZXTVi+PgtsvjUzqfhSWnUrWv01CLjmEIABPTDA/pJqxOqWRKWSZljezxNP/R0bgwju1Go3uqPcXNxT04eGjO26+1oTATE5oDyzpS8itFyiF0U5CR3b7r5dNqk7SpdTbcRXXrtetuGBUaY2e94BvuXIdxuh8uVHggh6I9HmD7GWdb+rIMBRELuEVrUJMMgKQ9PKeHmSu9Zlvo+Do02LQZ9g6omxCJyxZRop6/7BpF3QrkIlNsEflTCXjfTrS4bbwoE532GxuPPY/uEBvIT1uLD7iDAuuf/IeqAx96i5gZ8VjW7MMGncnZOT+MhrtDbdb5fMwX4xOWnE7NxL3nJMUhO0ebm020LlLvgt+a0SpoOyRFqsJFJI9MP2AZUSuOTD30lRgjba3vFV7DkIqL08n4v8bnbM9pf7oJ68ihIkAl8WFCDsDKbzOrYoIBiBruQDOOw67alX0o3Z+TGJDvjWeLr154XjjDU7JIh3SuHaJTaC6kIcLEq6KslC3FYvKsNo1KIg/kS88syt+eO81glX3OnLC1phllV5vfOmuwp2tp0D7PBAlXBACbSu3HVaJvOpVmcmOQDyMH1mEKwXilRngknUU/9UFYBfmEUbdHzcf6Tzt9EJip2N6z7Fy16HGrXl4QYlp3qHwHo3uHDZQRMuGt3IqlCmjN1DPOcddMdp0G8xpU5KnjrMMukl2CQf7gb10N0bs825G1P9c8hwAmkp8UJjHm1zoSs3MJVXumdg8stsZNvURrqngpBt1yxd4jb0+7vejgk3+3xSGGx0K50JT/Sbc3nd6iD2mMgck+2U3p+ggerC5LyuDCkkUCHZBUsq0fZqNHM6Y7lR3f4ZAqJM/mtsJ9Xff8sDF22lMDNuADVnCSoiYtLStnsZc4E/NW/yc/0MBR/dt/3ZhlFWz7GsWCa1986xNR98dV2ub/nFsp3vkvUc+Um1/qcd7+Hqg57sVZBw5yanasVoetqQzcBLOE53E/A6Dvg1H8zN1Es37axfb/bgdm9j4TdLliTO8c2jNdjFuvi6yiPR+3mQ6aznhVtMOSVnJCWvgV5JXxiq0+JrILAB3N6TvuPSLUrzAMZxJcJ6ulQ7QNy0FHHoRYPuX1v5lJezADGcRNSSgCz6LkuRK64J26Ozu8s3rABN7EcW18HsgfPKqv0fVPMsgbPEgCtG5L9l4HrIA+xQ69lJ4gpKWo64s73XooID6xeGmSVj9pnuCIkTURIZ0YF8ObFCp5Awobw6wzIqTooEWjTFii79H5XvL8A+2XPYkHcrAZb63+cTgd4TYrSysYLiT7cfZKJPRIVXm5JfYn39F+M1BoRnO3JKnNKRRxCGnGkIkSv4ESA7urYZo0QqE3ZLMCfhNLEk/O9A4BYHVUEW7JAXJk1S99F8elb6O7Gpmc7nHiSSOXx+mZ9zG0MfQGtdaI5wWFz+Y6UMv1JhOr20TY57Q+2j/c0QYvDpNLEtD1TPk5TUNmpiiQQgMiHttjyRNI0HONwJAOu5fjFhA8g957BLKCUG5jODBkwprFzG/RTSdV+lvLqJKI1vMYjjr6J0ADyfImOjhvQsqcrCutUeZ5dWtLxj/GNez//Da7GBsqkXf/xuw+BM9l0/w3u5OphFKYm0+2TarRVCKVaovUt1asTrbbymeq7vNDGXgkNCNlorWZVCIn4sXdh8U1iFLPPz+Cy2C6T9z8trTKjyMZjHXNs95KfGPAZY192ELmWj61WDhoOPXP9/OAWNLYZjkOiEHnJRk/mRwxpsj0INUEFliKPgRDL9rsFMBM5kou99cv1q5Rbv0IzFrFSRpx4p+5Vbdr84ORIaK8LZ77+snaNKNi7VCdXXPQVeBbKKAxYvoUVFPTlzPWmVyXna+07C85Vi/ruq8awMQZijstA/2geB0CPSOTiJhi112L3F6bvBAF3ivpyoR0bDrntf0IW8DoUePqXhvATW3q9Fp06ek7J6E1A9xPVdQcCbXti+4lxlDV38qbaKG2cg/RHFtHEMe5ANDcJ6K6dfshbhxMCPk1P+UYTeytdGpNzbpJ6Q3y+p3z08WcUiauFqlGYlbdqPpBFG0SCkjHLQYrVQpIkydo8Qi7DOCcWAMWksT8JtTmA2A1K0BJzBzvxuA5RuX0Bpi1rFy/3L+K5JlKsig0h0ophqhKF9v/1cfyHyc0hbbUUhFF/DZcCdZ/OP4EUyDHN8l2tfNIbnpRw+2zRyD49VUFPEz6o2eejuUwzFAVYtv1fWDYRqgtEMT2PuboiyiUIb1VLJwwSPxo/ewuTsfMixW/Iho7nQBCCytcRJs7BR7Ncd6wdejnwiVupKJg80/CUher/0tPTxpSQSkoKJVd1u/28WVRGokh5SVex5s/lI0H1iWjvPkdu10NyZCMh95JV6wWYi3qPTrQrgs633bX1ILcgEGa1UQRNZXkoL8l9Sb1yJAjWmisEyK8be7tVU6Dotj7WwCeMw68AOr2fNUm3JdkCvOgM0XC9G/P0cfbnIno+Pp9lGTIzayYQbciYmfBHSdqd0adv5SgsBQXyrSRCOKRz4wkdygb+K3Mi8GhW8FdPkxmfjVl8K8qo9E33bkWJq8dUrmI2bFzEoPQwIQRj2/Yt4O7UDystYgl0n4pzrMFkgTTqnE9popJKjVi6L7365oRT+B8+QxVps7PgjVAWoU/r3Bj6BasKyKG35M45tMYMZphTzqNNvosoF+Axb+dD/wuKlNJT5MPg+5R0ZjxStWsLcIntswDX12Ktt9JebBzlnyueHIYkpoiEzsoG/10rbKRHD/nWSfKh4cNYkHHmD6S5Zl5iSk6XLJwvsUXEWwduEqi50SBgZbkHaPojA0wJvhhNHlwy0veVhntgh2onSnPQp0plpHPpFxboyp0zGqr2EjGWh2+OK+TRS9vJTyW6YmMQDNZdS00cUiJKhAZefDokO5/oiiuueO/WaW6jiVzE7cjTMOHzw+VyWYXt/PPIVClKlbbOxKxc6tEscZBTGTb7v4FCAy9+/LTFISfmomYKrcDu0NnPLg+i8sgXFyuQCP05fEP0UNwR6CtIj/4NGqJnkYDJPGcoGiK1BX8SMSPxyusCqCg4/WnVR2IOSZuVDoLePlyHdZ/UkPVNZauFZfI3PvSK1kWIzgDvTCpJjU0IvVXjM9r6PlELN+HErYOijcf6co/XvdUsTN/9zS/w13Sb8FAvEv4GSdYvsER+I93BjiT0427+6ruQ2g99tisGCuXwe/t38NLyspALCpI9ohtUqAdBT3+v1jN3BupqXdzjHC9muKLgc0QXFJSOp1qq84VG0IikambRwI4MvHEA06mpLkrfz3G2wGzrNEVtCjrdgDMJzVl43dUoRCA1kx79a83nGyZoe/ovtVbA9NvSNJqfkGRbMTc74bYnT3qV97vQSZPc7RquXzfyrQbQK0xe0NJwRgCBTeAbqkAuWjUx/UBuGfiwgsDKr+3agVuUW/Pqt3c9xSpbESdwg8wDlUYX8AVMU4/bsZ3pCbLr5b5MtiWwF34fURhjkgra0ENkXfC4qEK00/iqAo4y9K/rPKgZq7jMbXqF8fkjt9alrDBO3BdWzUCHnrZ+DUst9H65fTV8SRDwn6gbduCzLi/1KgregGfbe64mj9R2yeVQTv4LtL/7EtxAVbPQpCxmZ3Hh1u/VKkL0N3BwpUxtwEWtzVRkHrgo5XhjV1v8oyXY5AZSgZUNPbfoyuV+aJoQUORTPEZPmz1bddN+i0hj3reumJHlvCHiMbs6wJHmvacscpLnFlGIgx6091FJTsEdIyM6fkxZ+VgjYLwoytKS1ZpQM0JnNKcud4EwcjNb1pzmQWpY6QxG/rRUHmN7CGb73oY0QgZSFyNGVXTJxL5L1HPlJtf6nHe/h6oOe7FWQcOcmp2rFaHrakM3ASzhsUUv45Q1+oz0+nLYV3LSSRIg6Y+/WC+og5hdhOI91MAtazTzao1XH58zMiIq1PvjbDTodMD68A3y5Mtz4CbSOW1AFg8gN73o2Kgl3PM+TqY5d+l6dLOWcLTBM+8AvYWu224i5u9+HgWUTmQDPcUUNCldUOx5IJHs/80NocFVPtYDLnQTdhCezBKjPQf91H+6YSezzB0s1TwFAEjtA3+rQarVvAkaHLez1ZTj72zCQ9re7hI2r8Muc6AsxWBZwz19SpUJ+CvlWQgkmVklCgFvxzBN1GLVcPgk2Jug2XygFtJh3uTZr01QSKK/eNshwqUx5R8zDo9Y5ZA4XqyS36e7AZMBS/qb/qsN3aIIw3dhKLreqF069epJqvHWmWtnmrX2E9HeQXTM82Z9EoimgXBf/1RgpWF88HMorCY3g24jRb/mRwxpsj0INUEFliKPgRDL9rsFMBM5kou99cv1q5Rbv+qb0BsNVANAf9N6lu2npTU1w2bDdB7COWU8BbajWyy4sw5IC7CaH7rarbimFHUgUFBSSDUzFA2C8/qmEpxO5tKOXKFcvhDbAsxp5qQoL2gz5XyI98rpbaRRBbD9BdEhXr5L1HPlJtf6nHe/h6oOe7FWQcOcmp2rFaHrakM3ASzhh1t3RbGrB1L0b6zsImXEH6THwGQ0Wtax6XUhuLd5+ctsQQHoOscovOh8SJpzWSXSK6/+8JSOghlhIdDfA+J/IF3mAKDpuaE81tQ3OO40bJy4Z4VlA7MG1W1hhHynf/0I6UpbcEBFIp5nhFldbfSUmYHI0NzMwDOI0OaY0EQy2v4PDehHoSZ6VkEoWzjiZdD8dGkdgJwl9VZxnToFPzdSVyAEIg5nR17r3Qy2HgqfvrbxYMGH5gkZFk4rb15IBlex7K0MhyuszczRZknCaie+ArtKWbzq5BBuW3IjsuWoMmFTWLoRpS3QfwlRZYwroOE28Mcuy7vMupSh7ZEb74HJTCbqF4C/L2KhstHyX6PiKkLkzDXz0aiqygMhlfXvVd1R4ZaHp8bOMtANnze8BJbHJjHoJTiiJc7jjfGZdmac9Fy03+CScxke/66jP4Jw0zWVx46si13ra7dXZA7W2vE1OsKeOkHGRDC2VEraA6tVKYdnrr42deFObWpQD0Rh/qf4OOqQHzhCztmSk1D8xTcHehQZ9w6+edDl7qR7LLXJD2DK09vU3qVxb1W+Q27vd2AhQwOhSiZ+aOw4iZRlIsKH9tYz3eP42jiu4VHyBsEhKnJU3lRKXDVw7SkCiMLk5/b9VYLkjKZGm/UisOuVs0YlXI4/bstT3Zz3UwkDs8MDukUi27ScMBYuzsF1QyTQAJHwZH4fTY9avRfVNum98ivhuMMPC0x0CR/x5JwglCokqiW23Js5V4yqsY7ZQzCZr2tThkvnE3n+mp9Fy6kD47fhPHa0Fn09GdSje2sqzFEZSjSsFBX488WD40r9ALxSRQmo1tieJd1hG9VjVVnBNgep9d0dC37W6i1RIw428aiD4H8yWzlLzUIoWTrZf2hQ4+GovAL7CV2BKys70XEtYci83/Yyn8T9LRwmLuseTVS2QJ2uqG+LQohJ9JMvphRb8AA3QKJpc+5L2SCn68LA7nYBWGB2+HPnZsvf+VlVJr4khqMWzOM7LYej4X48Deqjp2gDdcan7C3ZCM3EtiyExEaSr7yKSo2C3N0T7Fiq4R8Y8NUChVGxOjdtfbMiqfS8sUJAzijCxC/4aHPbVQOi+nxgB1OhLaNCekqkqdTfOk2NPOzR+VrTzvOotR7aqfjvc/C04KKBKGmNux6kbTMYpd7UXreq/3omRBiVN1w8uLvFTKcIoWQ7rH0rOjG6KX9okCf84ypsCJ1KURs9Q2n6OThDeU7hQtm4XkM1nbVxn0A0+OCMaT+b0i9tGt3PBpfqS0p2UVzgx9UxaePRRJWYVmJVgPM2MB//W3G/HKVUycR0fj+DfWoJrv7pAkzL8Htqx2Lp5ijcpRMeeg0DwE3I7JAJymmZLXLSFjDHVpOQce+XF5IMUPnWBtr+EyrhT8XlgTOscexWCrjwpgupS3xM8sl7ac0JM8hVrAvCohdrESeYkr8jHpo8g9/ZiWmWL6RiErS6wz02udfijlqAXur7/+Bo/vP2wD5fpFBzUDiMW98AWJSs6kbccQf7FeW+zICI01T+mMclWPEAWBtAqhVyvC1qtoSA2bW1i77VPhefpeIl6mrCh0EIdLSVDmpKvezdFunwu8HIZ/2fjA5MWN3yzXkl6NJikJ3YAzbfmb3A8HB3kzMMdZAB82fY055xu52Q9I1iItu0nDAWLs7BdUMk0ACR8GR+H02PWr0X1TbpvfIr4bh+KiGhsnJJ2adrQvYkP11c4YRhAo9jL87OKgx7X07INhUNUgRj5JCZTBRW0PubirWMJoRjhgD0UpKeFbQup6wxwT1lGqBLJP6351mKJjJUPN9JYWzYhLIFNqxEE/iJ0Hg5sByYd23/doChGO1QRatX5U4AWc9r4Ov97cS3m5jLMSodVO2yJIreu3+qoBSYZWzDsAVBrEFhp3HO2iPiKr/227TsS2Cl7AgkHmG2kvQ5G+oYNWgTpyKtZ/LZUhSPmkNFxqKS7ziV/rOeROb2M0GXxJavHtqkhCjv8ldd8D0N+pMWXihE5fOjQk/Zvl/TH3NvE9f6mc/Q5DzdIigcJipUdXiBRKCKofhchtkOZXgXQX/K/F0KG5gTQyY8c8vj1um2EQkL/HWN3uYJNLS3s4JIdlNPgguood/SXGHr5AaVlAFZlADIA0fhY48Qg6bt3LvVN7s6TwSp2fwiWzmOO6Xe48rP3JV5jc+8DvcADsLmxNQPI9EqGFmZ6f4TM5wHsBBfkZAUWWyl1q/BYMUNXB/+iS8wT+qsxXGweMQTEF0+4YCvJLqzzyNB8YCOeWmW1Vn2a5zrbezeMm8pV9bFBqKFXDCfyN+5lnoax6sjz6iS0aVBlsgtHj51Azz4dyYQzNggIGqzuISXhOw6RMzYZpwj3f8tHl+5UhpErcbnqaP9LkxEq4s9d3g7d6IDvJITDWDTZOOyQdqRfsai1bWzBKAXQx6bMi9BvF85WsJLmqE2y6kVTp39LoGlMa1cBSfqnyRwvAMj0KqVZuW+VoLNijhZR0c5UgSfGD1DTVehAWlV4wc5oLJ2wBi5k1uRN/6lAn06ok82A8LVAKxz58gmoam1ArknN5+rMX/9dP8zc+9WugW1MC+oA6KO9AC32pABA4Ke5aGzRpCKYLwpvmcLNDk9/iwcdfEk/xkybYUijAdrLMAlhJwcce+AlBjHWdSkzoYd0geMZAxd8apdEC9b6jYsFFSQZoeOSRA4ANRbZqhMnyd2np7nJm7PsZ/s+qA9WMONAV2UA6ZbjCHHxqGv5L+A6yjpAcHx64sX853bQkoSS8cabYxzGvLmxNx21t3mIA+SQ3KXaDgZ9YZemYetEiiJbSONMx9FXvquUY15Gx56CKb1R9Zx/gtbffTtofKwC1qq6gnURR3vgBNRhnsXVeRb1fQ/cfd/qPh2a6Dh+kWeCGiKgy4RAn2e0KS4bCQ9vknK7oEFgLQCp9KbU7i5DIf9GeyI/nHQ6AC16Yg5SXTqoUDA+LLioA7ZzlQfrAsbwum482WJnEELNy7Q3+K0cHcaM3HmT5d55N1JK0nmzZcHR3xk0VaM5j6HMzR2waMkzjuBCHqBorQTM85V+oa72IYaCMiJmmM3iv7IOvj+t2IrGaAXEfbITNU379xPYh6dBd+Eh7khTX524XywcihXU2tE3YUMNSK4yucx9vl37YymctOEftPqRKOQCraT5hld7lzbNQFWvgI7aMcqZgl1rgOpvu1/Rk8QRfpkqPZf3/RsaeYyPlwdMOxXFpON5EkzjKtefc8wIK9L2KBDDzmLS6sEWZzpHpx6YIYgqnTEkXc4RjHLahuIx3MMH+yUWsBoAepk6PSuVO9NdajRnuWZRaexKW/Byv78pXrA3Qn6NaNYwh+7MhKvelgT1fNExI2n1wUi27ScMBYuzsF1QyTQAJHwZH4fTY9avRfVNum98ivhuF0yGkfqaJ3TxYuR337yAzNKxbsOumM2UHTSw0Kze3rFVFALmNSYx+KfwsjyOL2JfKTr6Pln9VLi9fkzOOX69NR2RHDx75t2MnyFZ2UAzmwQ9bK4VfsWL3TPMi6Aw46JR01fOXYBhmCgyuZQjtxkfVvjSzHzcFVYujl8Ps17XcA710s4ydjZLw5sdmP1j/jk36rqO2/7JwMYn88pz0wOlETk6GOvBiTRSohnU+3Yzwq7en9ALRqhvPQNr0EvzrMTl+tUNnz0JMtFWOh+ivp7m3IkymmL/QFSqUMtm8WiEiNZHJClkkq1hlk/fVU70ou+4CdPIc/mQjmQ6tWXgkiev86i1FlJnAXu1c/V1YKsR8cf0r5fZUmtWLYGf3M5O2k4mr5L1HPlJtf6nHe/h6oOe7FWQcOcmp2rFaHrakM3ASzhEqGFMttHwsZFVuMY2IZPB/9KkYUQRuuvTgKCe7mYaaEwpqkcZNgtrkvdFLCtbD1DgnqQTMBvnHVMhuJDq2sDLEuz6k4yixPbg9WOXAZPKaUnGIy1bdCDWhbWMW4D8IIrNkrmg+W1VX251oQmX71xOFAplykX4dLpzBc2RLk2NnHCUBxZW3dxDONG1uznwV225J/TDvSUF70YwpzvF+PmV9F79tv1tzyK+5WYV9ZT0NIJhOxH8TxU6J49Vv9nUYRXJBt7MsVoGQYSMUx5kvZYIuR5AGppFABw5L9bLzh1QaE0QvuI9CkTd/KiRbD/4nrWRmIBLBBOR7qxI3l45dGG444dVnZwU26LU4v5QZZKuvaYMn1WXa/N2qmFCbWJEYanpRp6MBrz/gl5TYTyLQMIwP4QodHeVLu0EHF/+MOHYEzQhs/GoWWC56LYHmu3D6Wzq36NEysn+d73b+Tj65QkFw/1gst1xd/Qrk0202DOT3q3wKMMqBgj2AAEZmNhQfTYItu0nDAWLs7BdUMk0ACR8GR+H02PWr0X1TbpvfIr4bgl97dCsP48Uleq/nQsww4m2vvHVjABOQKIzzaxN539RGwGmvCQrueqekj3tsJMvQ5guhmMZWCm8M5JwtGWEK70srLaeXWGCbBi6W3bK4StcvrzmUQH+sMpPoVXOVyz3b9w/ugfJ79Oj+UDcnYrxlyv+UBM1ikLigp9u3z9gq0+O75L1HPlJtf6nHe/h6oOe7FWQcOcmp2rFaHrakM3ASzhloudcvysQbpPszJQrdmtENXxScOz6NhcjYW1VxyXVsaxLoP1mS5mLQdOiW4ym/KYS6rtxfSkVwq9fQbaDoP2v0t1Cpbx3XgQSEMCIEgz+0OoJKwIV4r2OJLlbNAWA3pgxoyFyPlwd2G+uFcbJio7l+5CjNB0ZXLL/FXt+E8yLbYAZhsi05ys/ubz/q+IlObpj7zQBRfAU21rgVMiU41OFwl5ASy9JbJydbjqkWKsmP8vLNYCMnERGuw4V8dgLZvzEEpAemIKjNHNCb6Cujd1sIMIpifgyXGJUcQVQ3XRzoX4pLrKyFFq+TO2pDmzkgW8FCsDlkyqY437UFG3L9NXyPp04T9J9caEnwQax6313wWL5qgt2MmMp81q6Z9IqRuC+FYSceyaVefhdQ+6tHbnfUTg5b5NPYXYiww8YY+TPEF2DbbQx3boiNDsrqFwiasStdxpgU1jvGL0wIIKMtT/uwC6fv8huPWuGJ+RcFC0PGB/rgbdl+/Xg/djUMba6YlazZjmkJiZYQk2f/g5G0ZWrRpx0anVGElFrMxhAhWe42E6aRM3EzmCJk/TYjAs5FSwP8wKs1A1A+p/GsBiOXSdDeRs23u362ynGT3e/BMdd+CK+qPcuGLtRtpVHnpMiYc718xC1vZzfZf7fE3EK+kY1hcfmzt1Z3hxSt4R1aTklpCRFFYQGdp0poZnGl1niybsi1b9CAOryQOa+rOcDMiA3SJTvfLXw+1AHMsUOD0j/KKh/W04mIgtCX5yIJw39VoH1rs5DmKlacQiV9htIsjX56ONuF07dg7Wji6dql2JE59+hhhdhWilUdzq8w1XRLYwQ/fAJ2TvBmztyy+nopelpr5L1HPlJtf6nHe/h6oOe7FWQcOcmp2rFaHrakM3ASzhMjPonu06wCTkdHNq7fMH55hpGwejAkNpaX9WB3DKncTw2RCapI1NHcYEOJcCFy7l/Qx7hFY/Yf/tN3WhqMAJIhBooQKLwbdU1vDIbYGlJuqKBrm40qkvvkfzylXm1+SHZufIuf7AlFFQFS3rIXWQ4RPy+xg36e4hxiwVLUubQQEbMi9Vm3FTHHRC2DOj+IATGU0zsk0vpzrNib/ECm71lF6JFQcz0WF7Llhm5hjeoz40TspSjt2qo3PdZqebHcKypamF5pGtr+RgVaQNnXKvR1+tS3v+Y4nicVWqRY5Y8VUXfelz3t/9R1IFMaKLE9uzy6MPetzmXrFMEZHeyuBBeIVaahR2hUZ1HzKe8dGGgRd3oOQY+KRDPGy3l0ptntnQTYPifURvpfU0QjigUaWo0P7ePcCpwnCVTP4t3KvxFihRH0EgHACwLaPk5ROh+EWX1z+T4f6ghddFjlc8mjljdm9v966d9F3W+KwtH3cW+azgRmdIQEQ2piBR4r0//GZGd9E0LTJHwU8a+mw91hJyKY1UQcRaDiFzZAakA4x0o5mQcrphWIqLhsFExbr8c4OMUwAhymYe8wamiyK4cjcoATLESsTXZygO3Y/XHx9YXfwvYRcLNou4QLG1UHyhGHLFxn/taRmkv6SK8jO2fwXT/A3xzvwHTeloQVBDVzNzNmn8AS1ZIMaWpO/WO7AcPxJlYTigZN/sOszQRrwh2aVM+CbKnT75KWTmdKdUdWF/o3LxPQkFM85bKNRHion6Moua0Gu00Mz3cgoo4YNhRw0Xwp2bb3YtKHraDr0fZgTIovwPVGhaYhHOj7ZKg+khkJhUwpAoeNXLTePnPJHhwuZkJX+cTgd4TYrSysYLiT7cfZKJPRIVXm5JfYn39F+M1BoRC15j8YvbwPHOPHVL7L7ddGDQz0pIq7oONbC3IX4tO43ivNU0DsM1ahIN9ZSrBDYz5dVjldsvo0zlhofyV/9AAy8irTIchG1/26OqmZaDa5qH2aRun+zcvO8rPnZbDQBwbFtq/oqOC7Oj7NmTnxBgVqqN8sggGFfsKTgm6ulvkf3c6LvbprKjBXD2G3Dl8e4eYFmsyddi4uDV4mMN8bt5F+Fm/w3wHRmuNIsyXu7nx275ZzaWPKFEPwCDr2PlCAR7H6IfhXQuiin6xGZ8VQrlYL7tahZkm17yJwux82PhozzIK94Rng3g4sv/DFZ0alPM2vJ2T1SkGbeRUjlTQe/0felIpUgzrK6m82/xkQYhVZiH1Q+fnAyfc6u/L38SgOACkzH3jHNZml7h0VT8SKp11PcSFYxYFLiluAoPYs27sD5zopcl+hU935JSstRikz5uXc0TJ7M0cCjch05TSpoal2vp4uUFiNXANPMuFjB25+ZxtgADDTa9ym+RHckymmShrif40zqc7ovxhcd+JAdbGoxySn8sLbEwGtI1hNjQVauMQR4zqRSaU5p/K/pfqtqwsAaOjxbg3J/vCE5u6ZhoJr5L1HPlJtf6nHe/h6oOe7FWQcOcmp2rFaHrakM3ASzhFSzoleQsO+QcbF01OCXoXPBIAPocW+NDQH40wtr+U9C8opxbbJSZsmOvlv5Tu2EZV4kMnX3ffkCpUt8ENBuYgghDzpm1Iz7G2vxtB/NY9eiX1barCvBHkT+RioTas482lgAJWUsukrhOLz/vKrzhVfl/XGLI1TE+pltJbR94FpUmsGVVY5RQmc4abR+3wJE0h7QlmEpvW2rQZdeszWsiH6ZT3IekDal6B2rPfj2ngTlviR3YDyZR2kp8hqHGC7wCmroXnn1JciEq+ibN/XFOaJICOjFUItySMvI7puG/RPFHcU6Yep8CZzej8ODU+rw/9DHKIWo+4lOAWzGErtzlyIAf9FvschjrJa5ajfYs43Pd1L7PY7p0OG+KwQpCauvxaoeCIms6esINbwghyO3dbOvL6V88IfK0pewLoK5Bau7x22uIZ1IegjsAtc0cHZNMToYRBxNgHutm81cT/K69K6zg200UElLIYq13+bufAUnJ+8OxHGGLJjY25Mi+sMT7GqsEY18b/Qla74fTmjsxLeWofuIw8zQIchXIEVyZfffvXesUalBtqKrsHzh70HSJiX2te6XQj1XpxsqCR/OUyb5L1HPlJtf6nHe/h6oOe7FWQcOcmp2rFaHrakM3ASzh57jYIk7y5FU6iHChqbjf30BeNal+S9AdwVgj99JX0cHd98UKr+uvNDjYEv7EcqSXc9ryUQ/CXQWEpby0NZzTM23Gdv1iWB9JNJEaLud62Y6pz/sZvay7WpiUaN4bCXECBXnaVVL1jMMoi5cvYVO4y391riCvo4nULbbqySdRWMZJZXkJS7mSTtXHCHz/A6dlL/8RP0v/Xju5YixdOTzsPnOmkhg4yTC87EbUuzAZwXiRSECZghYneRN5DMRf75dUkUMMyf4vkUsQ5UI2Tij7uOKfC7drmeqRsCW1pTF6roElX25lK1fw9FsCAsQkIkxQ9+fmauPpEVjVWZQDlm85jNzx6ybFIXHyrzT6VScgR+wf/AiFFAbji1VdvpCjqPdPO/AOjSr9RmqOjdafh5qDd0VQHRG+JcZ6/TBV8yM5f3P2oI+TSa3tpR8zizqnfxvGARRG+83HNu2gMo0oKtQt5Wxbav6Kjguzo+zZk58QYFaqjfLIIBhX7Ck4Jurpb5H9R0IgW2mxtLBA3B7HA/XLgk7lxsdnII477LSR6fBJ2+WyMoAOAzeI7S89YJC7UqQdIb04ipjAc/FRrDCqjFnC7IwY8UsTGTCWVCHRha6Mo14Etf1sgrEotBAcBU/mnfWoA/IIYFPXL3EIo2NmVhyy7t9clzfMBUsFNoQ/CPWKGpYaB6usbeSZmkJa2sJEkwTJkcxEN1hcTadVI026vGOX1xioc60BST+nczhmXX6xiyvtHkxpCD/h6c0GTEuYRg6bhUdo7A2iTXzXzt1g/v15CYlLHyOAQbeffAgbsvdzwZI21wSNlOsdlvUx8PiuO+WY5nnN5Cj9C2VsYyI4qyoURjnqGYZinWWxOxN1eTgXkFJ9Hne4IJ7hW3sisd9YzIBCwmdPqfkD7BbaHSYKoW4mrt3MFF4VapC2DJN+RCZTPSEbeQCsvUMMU58tb7VrFmY1sTaZUGjSb9dtBKGsuNei1WONKy8FjTY8BkpyLbUbyu3As99wf7fvhVv4cE5e8wis/oxw9OAE+WDFIErI9XObUUd9iAzn2IUvE7lSqvVrS57y8jpVeTzrn4tyD0HKkvmHJlJ3dcYtffv7ZLJpGKfmR2glmx8kX3uhDhZV3MhweR5oLPy7TyQU9rua9vIeGojIog9a2qF1ZejmDWSBdhcCfZH4LRTYl2e0C6sc3aOEQdfOS1If1B5muf8Edjd6kO8EPfue4F5DwwOQjXyJ56mNtLgC0uJ9DXyKA0Q4v6Zljf6E8jnYFiZ0TiUD1/FBb1EmN7iCqLLwZiaA8GUHJnvJe0Lhi0TE7lbS4aaGzeKnX7cezZMH7DgLp1E27c9LimLxs+E6Sf5RjrVpzX1Z9crQLqw8j6wNvZ6SPXprSB5+H92vvNl+QS6xJ/MP3t8irMqRC+Pa2wJRdh6i9XjYISLogtWle2rqDxKCv2IJPhXxmnR6slo0UCxjBMCc8jWmtCCg7+Hm7rkgmGRzwhmna8u7aIvvLZiQpOyMTfNX5ibWDPVvnub6MXDGddNscRR5TPCaCxQ1FoOKhMTQDVqHVrkt+Rj5lkqKvkSg8h8jmR4O54MuvSGuqD8WIDPJzpiCBHcZC2Vuh+naJ8lbkStaNiklit31woXeNNLu0jfZ7OTx5nY444DpNxjfKBH+1jMd2vhCbYykSvsJPrmqf4287nI+TTY4bjl3XB397W8I1O50ZX3mRwxpsj0INUEFliKPgRDL9rsFMBM5kou99cv1q5RbvzK+NnfrxHXkaJhmanuxBNxXrP6b3WIoEdJ/dpttMIv7S8hacGTAt8v4B+LvMzN69HRWTjikI4Bha0N5VZ4+ijc6VAAnx5InAgxEXwG9pu/+PCE+hXWizpH55N7lUwwcop+HoAf/8n7JJYMrW6S93UQ0RiJ1f4Nsb7TLVpNtgau2utibE34IkFlOzY6I49bvkeXorI5tYAC0mBRS/2Vd/xWcOTgaHr2HjX1HfmE8IurUSd8IxlqSr2ExeaucqlqeeDynzzTFWDQpICMIXin5xt+j/xy8lHIdm7n7CVacDWLhkFO6+HR94aGo/WzY78l9QmZ/RyrCU0IM32L/FuBbR+32RlKVa8WAzCJcnmlW9P/L09sBuU2fpn9dUc6Yfszf+v5d4k0hSV7NpvOQnhVV6rFD+Y+kPAgjogPlZFe9vzIa9WHh3nLTBq+N0hgzQ3AQCSaLZEueQVFNuRYMmIVzCndxGWlhCdVU4BgBAu0Sey7Hmrg6+5GgeIFtzaCyFYq9fGcO7cq3bzFLa4DM+reYLUArfbWrvPctLxDZWZb60BgdxksQBU1hjKhkcr/ipB0MhncMbcs2pzR05meQYy6TpRaqgZFlQJxl/VHBYvUPTVLGoW3yFxjmc0R2chK8BAN1D0ts85QjOWLeLW8A05Sr4pUqnqQShajJ/v40+XFA+KQyewdCyhFuGm2OkqHDdjV8XIQLwIfwdCqwcXwNmKBKGqGuunavH7EbD3JQCM1wV7d/lB7z2YICRNBic27b/PNOjUxAA3m29/8NC/7KSRfjGin3Yy/2U0OkimufY1SkNhymzCqVXDi/BzI4xmzG9Dd691pVkEMqzximooDm3X9BHwJUErvdJaVMnZ6YHGIqhwobjbc1lkuiGS82oOkI0527p0tpFPasbiL7kULxymx4L/h29x1Yl1Wihtu3ZPbcozj/e8JCN/oDI59wwjuEZ0zAWLbb8+IHjCrSQnZtZ0sT7sIP32RDhQ3vl+mRs5cRMgZIi2sOmp9kRPdktcusOyOGJ5CWZS0MVo9FccimWBiLG4/ND3ieevMUOZHcz5n3gqDR6gpNQVpZnFM+GYtuyCnqMsNHCs64vQZzw5u2LSxqFf5elZlxCdUDYKkEeGwX0HwtisGYDxUTV8zRNy73ZMagok3wdJlBl8h+ACYQ0sxjWu1cWhBaMAUye9Hd4PCPcA3XGtmH79c3gTHD4jHRfqW+RzvCQd6fvyrVy5SO2ZArwEvmRwxpsj0INUEFliKPgRDL9rsFMBM5kou99cv1q5Rbv/WTqMA3PAQJmSqSvug8dOgoaAbYV0+hHyH1BOA1VO8Dfqi1Xq9mU7f9sy2ZIf55fNq1YYmH+PB1pm76yF7w9W7Q9qwmUJC6eHBStsKxhTzOeah9UiZ8orshZJGVhHtPpaBieT4YoUo+WT8AeIvCIlL4tr0K6IYDTbgpiOqo2jt5ZpG2pR/MO8HbfaJRLH81JfKgg/jERtW0KEcUtySmtzvUW7k4dELLyvnrGTLNo3jQT+SxvHJXD21fansVNMtCuKnVkIonsILBqoFFZsKR0nmbuTyONOrMNWMqZnfp29G2V3jvhJuwIgMS7vcFkpSoRNDxgrKPVyXjucC/9N+6M+71INGVwP8Rh0KHFtNkqo6pEWV62A0AJxCZSpvjQWanhzfrhbdVux9o7lzNBvSA1kaGMsctpM6eloMRy21r9tO//CC7oxqFQLg9T7SULec1cS5StOD5c1QbYEj3Rw3udO/SxCRChlfBQ5iLz8AhedAh7o50AwuXGt57exfzVKaW1s5WWs8zOwnQxsnwLhub5wS/MlgEyXR0uHFvxFX1sh+u55EiNCAbrWPdyAjqGI6/lchbfxN1WW83zXL2egJZf5TXPSqq9Iwtj2OKhKsrfefkoMP5GHl+28i7hAy2BJKWDjyAXDdQvE0RrDtXRd1yprhXIBq5N477mdnHzdcB850e8Wfsw3CDprpDtoY5JrCus8t9WHdGYEXUYRCRv3LFRS7+mkxLTsbCAY/ogk6lD9G6zHQsxk+P90ic7kzvhdn7UFce2pmfkOu2piQOkpZhIxoPwjFD10fvLnkajZjZjMnBMlmwfQb4TfRvymUPTsJzx6SZl+BFfnIhd0YoXnTBfHEg14EQI3KUiTe2RoW3wvezF8pA8lJ58O7H/I9pBeo/IsWJVzBiiedncjeRfnxR7clSHPJWzfIo6KkImHwvGCnK0b/sStpfKIj5nsoLj6+pk9akdy88UKrrA+LJUqjGQq6psaTVTpfK/OQ9DxoyVU2pYiarG2lY3ZxgYIvvSiovcF3J0fqx/0WRo190EIhb0JaLAI7lQVOesR7V40WETENb9TGjCiHFraDBWxltq4FgUvHKldZiR1SBEPqppfPWXRWOepWebBtWRg9gpYZoce52PzTvCo5yKB5HZIwZr+E/h5+HoAf/8n7JJYMrW6S93UQ0RiJ1f4Nsb7TLVpNtgau2ntjTLMSgFx92PkgV6fYnuQdASlHPFYTHzQourqFTeUxfWCMZwAVJ/xYTScfaiZh72hc4UsfYySWf+6+mz9lnGoBFWUOMuQLnqhwKMaA9HzgVvjS0wVgmqe9tAf0KU9ADNZzZLVrbh7adQd6xjqPlKdpt5C8hWA8M10v4pGDMYmYbgK0NSuS1ahhH/JB+3EapcMnwuQWGsTevL6hi/URfhwkkmKtR6DlRd9WiZVNIfN0uoiiXfD0lXGkyljBpQpM3JfIC5cQTd317v1Q+YwvWAqp7pa7mT+oq0u8bILzQ4tcKturnRb7x/2eXRvNAuFLSBLzD3HkhlNdScndpdBKXg8UyvJen7OpNJU+tHcgUuNNVeGuG2+TJ9BZ/5oDbNvM5zI7w9fK14/NIqpTRrZsCIMigcQ2M/tKTRcyfIj1OaUbrPr1yisU3Ce9or39aZBiyjMySxvmsE1yVzzs9gdxueuZHDGmyPQg1QQWWIo+BEMv2uwUwEzmSi731y/WrlFu/RhXvyZ4ggwCYUuOjguSq0x9IFvEG/q3ITOJrzt2Md3xpRY8kefuBakDLBCpS1050xUBIt6Cj3T6TReRo39MfAFS87Ud7VGWMFCRmmwPjAx0mfrm8LMWVwIyGe7nzoAUN4bYnT3qV97vQSZPc7RquXzfyrQbQK0xe0NJwRgCBTeCxEK4Z8jqVNXEBd5/eoST3NsqGFlRM59qE8He+dvSidHXBm2VfS1o8ARZ+AYrgGqGFDvhsXZDTIH6IQVy2kMnstGxN+R538YKbqddiqgHCC+CbGxTVkByeeXSjOqw38864nkWzSETedd3IbHu0PKLgCqcwwH7FNWvriMp/QhLQCo/IEDsRIMZwc6VEvXFi7IPDM5vzpp4dUUCQv9EPWOAbQ1jHpZxW/DPDx3T4p8ai11eza9lWmJ9WSSlfsOT6JGoP32RDhQ3vl+mRs5cRMgZIi2sOmp9kRPdktcusOyOGJ96HI95OTmb/QvnOW0h+70kJihV+Kvfqx8Ni1XKVbPd0XXyDK6icV9Lmdx3953goTXGc0YKROKIUeXEHA1RH7+0lf8RlPRJii9wMcehEGen5nFzXNwq0KG33ZWpmuonNZh8V0dEbG3jGA79+BlSZj8pkbEkQhTT7F1SstVYZ2IFyixDEelJp9mP4LvSKnXEbsUHIz7qT/arQnnzUvQctps4nqNXBXz3hXLBdBCrHYt6tvCoe49RErEztMxf0rz1uah3ZcVcBfWAZh2WB0GNSu/ecsY2ZumhJZ11M2lT7vFiuJGMNFT1YCPk2RUZW9GLNVDKhbJXH2FDFB/0dfb+IsVNPYlelM1seGcjm+B3QGVlUEtlisVB6vIzODDcXbtfTBWKVe96FJRqonDJsFJuQG2qG9RQuChu/iVS3b2S01e5Ao7m+9F/XlQ/ktw+UQ0bBPudL1bFuu8dGHWQKnyJOL1b+YGFx64g4C/Hivb1hUzxB5dTYO/0lQH8PLTvFVdrYPuSotM8XC9zuk0NKC3UhlsVqpNGEJn3t0jdSIhsWVUMZm0Z2BnvbSwxORh+MFQGr01QPK4zKRHUtl6Sm9/y1qSyITclH13Oq6nJpdkk/UpUrsqjRJBRPiuEJPc+OK726svm2qTcaiYSiPBeyVlAo95AIlIYGD+9qUCRLYPovQcidEr1/wtsB4UwvwtqtcYMA/u4XCyrbb9UGgrnQW1NEsKtGlAzbx1kHL1v/KEg7PaSD3V1kuq1PEGN017kjkOGospZXVtcWh+YkH7t9cynqiD7P+8p3lMSQmDC6FPFu0M/pG7NEZmiZADPBMwKmXWkfutt1KW0M9VvG7lbgg7Dg9aSDQcsY5KeOcA1D8QoJJ/VNnyVflShuiNmWqdzMxrW0XwgrRapi8sJeNhbXjtVQDeK/8+UDi12xk/E+8spT0Dp3q2n9/CtA/qsyk5QeTQyGmiFiJi2fB93KuTXQM/wylK2HICmqTwQyByXklHsu5YZvU99Ev4cybtWkYqpqf8tbfCcDrhsAErRvuXR6FsJ9O7SAdlSUaSrQsa+o0XFNAn637qT2BwiJuLjVplIok0bfs+GCjR/rnVYanALrTkEHAQaVKyNhOV5VTUkBzWk0rTEPasESKSdLwsCe1l0JUO08bR23//cV8es0h7DKyVzsZ8I9KS8U1UM+T854/xPAMDc2vry5OMyuNBOR+WKnrnIDle8Fci0JqGfLknMUYvQomhv6Ymug3VHV7IFNVQFMnOnsR+RdJCFhxEWT9lfn0AoRF8GLCP/1c/IQSQZihFQyd9LA7RMstXFxV6g+mKykEM5/weTxYeqZIaIHxxXxGX+GXn3mn9ZSXyf4JZpQ8eNKk7s19HDFJ+LGadFEkFYoXAUqStYwSlFEjFTWoELg1DelBoavL+P9tDZEaJt1s7Xz0X3SfiIRel4rxV0pIxqRM262Z4LxPvvaXxV1o16HhvuROAWxc35UbL7x+7UHfY5VI0YkC87WM271OV5umWFrsk9Ej28O8WoivjNmNX8EgJdg1kmyRuEakTMaarZzt1yDbQ/3nHThcrLu4Tr3TYkwYmJtUI7nPYpetBSX0FI6yL2AOPP8LVFG5ogs9iyLSeZPm/q5KPZSajH8Xj5GoxclXR7sfb9QGjyjmwoeYPmlVjkFWsD1aYInG7hVTE2nbjKFHiQQpmj0iI+jrYgkibmvVBxpygUsCoGl0WoyLUHX1DguzWZdWN6OVl0k7YkrWhv+X3N7TyQZnLxdyVHsmhwcSltqH6g+i9pg96k8jHK+Mg+vdGVrGtCYtEoFqQebPAXzr1MiujbkhrCoYLg0ZmtWUsIqiyyzmTCZnuB7HZFb+jzSlX9oWSCO6sukTfdYZrr7K/Hdw9PRRcF9MSsGvxIR3W74BawJ4JbDrCiJ+bRcTYYZe6LOrcdEg/1UVSIN5pHjoYLVAt5Zs2MG0oW5b2AO+dtJlGixqy8qp0Edze+jObcyPhI4wdRySZgIV9dz8Ymx2x4bTqgl12nbD8CDfvBvz+5MHizAoQcCu6pNk3v3frv/8SHCp8OAZV6R/nUHM5C7ZbxBgNGa0t6EWfOJiyXE2eyewomkPx2o8B1WerrrCSYz6u63NYQDa0noT+qQvk4BUh+3zi6TbGaoPmYK2/cFTffrG/7MIpUBOtXrQ3XfNW67lo4fMfSVf08VTf3HZRw1FuAvA1yXHGkFepwZtfnSgWQydmswjFodwse0kDAIB7h6da+SuR6XMfjqJ7Vz4HFQpdmcU9q+DSrPeNFgGThOvUKqQ4IvMTUjlLR0f/EdTok0N+jgHPRtKupM+yyKLIodnIbmbGGCH4ojOTv9KvNlV/Cdv2/NmUkTSI7NnuJZb883c8mSWYac7lAlhguLNRJeLDQP32RDhQ3vl+mRs5cRMgZIi2sOmp9kRPdktcusOyOGJ0iEwUmi9ZnpdUeLP0ntfZ61E1QNn7FxIrF83HUpU4OSTjsuNkS21kydk7fnTaiRt8gXYdYzfZsRpmqzY7xCaYHBtSSQnM7/o3vCUmy5K+yuoPPVHhltwsdyl6KrqMW5Nr5L1HPlJtf6nHe/h6oOe7FWQcOcmp2rFaHrakM3ASzhBzjK4D5zgaydih2XimfpPMvyNrUAuHnriuWIVf7poRDGjsKXHvOX+vrGBL4UJIuyPtyCu1ve/thzeXZjHoKgc7+e6keR4xP61DiFlBjyC5WGbgrIw1Sssp60bX3O4scCjGiqKShXvN8n6fJRcFQZaNM0K4HSlOLTxh4/YmX28n7mRwxpsj0INUEFliKPgRDL9rsFMBM5kou99cv1q5RbvxpVwzOZFgNZ74/w+/DCAn4OFk/ffx7w0WPb4B9ekWnEPPs+sWzqtNuH63FjeqNZRpKKlpDZcU/XD2MID9PX47PtoJ3AZtpRXbOau3f8SLTmy/Hn4dMjuFO/ydawwOZxOeG2J096lfe70EmT3O0arl838q0G0CtMXtDScEYAgU3g/+Q10BI+tfYSSbpLcbeZC0buCtfFSy5GahffxH7c4ZBhcOpamjjYzSd2Oh10+w+DKXstOljZSLPGJA+NxcE2BDhd7TlipcoH3YbwHZTqpJLar4Do87eCntv35LxVbsunmcG0kkaEqfJ9wWqymucdB52wLk5q/riwZHHlOncNAJDBq20LVoSE91puFDuSWINRJay1nMYu2haw9KwzLSkRafDrLD4R8Kjx8FNZsGpn5YiYNKJfeS37WDe8BlfmhjibJ+64Yee4yDWIYlGcuCHRs+uHun0zhfrZ4ZmXKgmu3XbS8Qbfb13zrp+LbnvluRZcNOSQxrRrAwyihOIFj/WUMeKMPqLH0mub1Iwe2Yim5dkg57aJR/xoP48How3iMgi0BpgWtGHlwe/4NdwBBCA0ns7wB+JcP4tjdYLd9+W2XoJU5/Y/anahLsmnGFipJxryFjcaNKFX1otp7afOxqeGaWppvreZniuKmnutPzJXAcAzBJI090Adb2t28FsI+mGXEc2CblULi1m/bTqeWFrRY+hbIcuaZ9K32qtTFDK+ZChBVCu/OPj4q7D2Ncy80mbo7YTE9zMCw3RraFel6HI/mDEWBvsULLvRLq02yDqDHZJmW5L0lXCnDC/ne/Es+0OW04NFiREp3iofVfOziYvhgSyKwEe0U/4owsN2QG4HyoWSvPbJcbTNC47UuykCMuX5dcDkDgSLGe8GPM2ccNqvGfN0+2SLpI2D/z/uB1tlwEATHth3t2WD9GjheGMlfPm8+3FWTCgQ6kMK33UEVsnT04DcuDc+FmA/KyfiRaD/nJXQ7wSlW0eqEjVw+k6zg94YWgNg3RygTj37i+h15v5ZL5sGumIssOKJhcE4uP5yjQPZy/IiU6gBlzNz0xc7nEko7g9oqMDV41hDJAycijUTzjHMULiflXyZmrRZDMwx/DOXC6Dx0ADtjxDQpC7xSaFIFo3sHD8Xc9xDJa1WLpfZEGWBERmYpj84ju8hDqP5GyHJYdQR1hdzPXMDm+A4AICB01vFWoXOyR6Ls/TyRwWtmBT+EkUkItut1H9BDCH78vkP32RDhQ3vl+mRs5cRMgZIi2sOmp9kRPdktcusOyOGJ58S5oaPPwtoQ8TM6B868ndpUCbQEbEmJUvQZlzQMVv66Okf/TcDeWTzIFbXhekqPIKPvlQfgt0XqvwIKzvv9Z7zCQGQePNR1Cs7TJ3MnCvrRUe+VSKl0jCn+9f4uGQeyONy9fSTe7XFiHaZhychAE2HoFNK1YBny21DdumyS+4Gg31qCa7+6QJMy/B7asdi6eYo3KUTHnoNA8BNyOyQCcpzxd1vTJYc4IaHeFa/y7tDDIF5hAMVBfoYMPPFUUrIS+sJ+sUvbH10i7+F3Fy6dx3jq1V41rzsFHboZX6/msmAH4hQ3oYSmjbFFw3KRISTTPMjIb8DefIBUTNnypRlK0q+XuJoavvp3e+FhVbuSrXsM598NXK0W3Rk8BkJoj2zrC51HkFpKw7omCkjv/B66gEPwdgko7TkYWMJfJwg257hr3/UpzzKxgWdHKaaOKzNmXEuZhLWUMzlH8spYj6bkzWSWs5086+7nnCWQqWZ3eRiwiX/H6EIhIy8fNW+OY++JNo2u3zW6PLMEs2Cg6+CYQP1VBp4Bbh63st7uJ4z2v+5dd49mtF/6CUv9DQtsfnuObOFZ7Pj8NuYwQqPEEwlgNmAMoE2YxNipvlsJiOiXtY/Y7rv+2UwEphj8GaN1DAGwU21vnRRuGkfBNyDt8TfXPefh5lM1p+vUv2XrHYk5GibUwZCGZKbAW9woBnURgUrh9dbY0HvWOxKHSe+wyhnC1DOkkzcvVSLLqUdmgKs9zSHRMwZZpv0Waf6vuER5JSVtF5+evUSbIG4sPgJb4bbwH2INO/WlLMaA1PHt/sNrLp66r3rbyC2HMUsmfiBnY50Fpj26JPpxJi4N0YTPAsLy2Kzri0P0P0LFHZ5eZjmhne++r2gUHogJF1yLj2VZTQv83D8vOfwj22VAMfjAHGLoTauiAB2XgQUWAaNsaVlfnsNbFtq/oqOC7Oj7NmTnxBgVqqN8sggGFfsKTgm6ulvkf0ikxDx8l9m6v/+e25LWp1EcHTS9KL5b4iNRs0ICPdKE+wO8ecqJ87mN/MWbWK5V0k/iLkE4MJ5qsFxkpPFFF0jAPRuIgDT9Gwpab9eMLamzEojXfVWEKh58rtnhIkb/Pi+oWsjwbF0CLKdga/lW+e+CIw4wr/eN1VcNKrUMMln5zpGFhKwRSs9B6NbG+U6KhOgMyDBtmMKdHe7Zf/D9qX0iEdRloG2n9i6rYTmtDg/nzMbyvigv2FAoI6LoEIL2wVB1awy9CGWcVeAjSVa49bC+3XXjcl/vpPW6EnobW3CmQVHSKIjjm+hgG2HligtUaT1S87yNpL/lEa5KECyOR80Aeib9s6TW3+Zk6G7mVdHNxJbowPm6s2n2zUtN7bivSGK/LHcjY2V4Wl2OXCFO+YjNZ37Y6IWpRmDb6mT+SYjbz2vVH8l/Qis/Djoj8NXrWOVCrugbMqgRJqrAWsDX9/LLaT6ugcd83UY5d12T0Cv9pFW6CbnmbtudQMia0AjJjmtbKQWs1fUf4UqdSu9r4hhnYiEMYjV1X83yztxD6Flu9aR4DdhwP13VsM6ceoD+CTq42K/4GVxIEoBFUZuH/bOVSITKEGgslkHSWGOJQNY+Z9WkwM0ZgW0l5eud9EefJskilvo0AoJhR1WK9+WDvW6kIGMOMzQWCbUoNZr6KqjEq5dQqAkAL9ZCFuua2GYv4sdKPQNQqBKVBWQLgpWxcGy3FUUf4ra5GHl3OMGFW76s/vfMO4+DaP61S1PP5KSOgXRZhL2r6GqjGXr+k1nySjyZY7/OHcAMbtJbnxy0GSSHo0Us5H/IvnHYp+qwsmSWoOGAkSQXVF4T5fhPIHjgBrh/tF3thPCXUYYXGxsec9qH2LqbW9dDEDo78k0R8ib68+WE0XaNFd2k4XSJLRTaUZHcKY+BcyNekj3pw/4CBIL8Gr7bOAvUDadEdGKVsH4CCvhfzpJ/GRP9ZfsFPwKN84VmVyteKAIUra2iNZ0rnQ7o1UY2AEgAiPOXl3eeruKYtPd3pDMKljOulQDUVHb5AK1SxC1PxyXls48ilBaLFwvJpioHfZJrfUqJb3ddq/8FagEDc0w0fcm8rWh7PIgx5wnBAkTSGexZXLj8jRlTgWSnPaeZqV5smIhXKitaNXrEDAf/Y/BTUQZUvOyJCa+jKwictWxCX7O2CHpjY2laLYlVXA0irRgSqIh+vdP8L7FpjcPb3HnA0/ji2KjtdQTX9rccWRK9OhNizbYTRKtDA+MpbAQei8Gso2HG0OLwYOyjxOb0Q6NrW1Me5erCQIVP5yRTQKfC4Fkiw/6bK0Z3YGRSdWL+ggclIesyLhPMBIx/OTkt3YNnC19wQ3THYkNlgsW0jPSjP9OgPIZ7F2t9tZ5F7m8oX9Hv3H6xVOB2GSGBUtdVK5xsotjseO6CszauJN5ZIDFETZBOnpomY7ZPeVizIooBY5IlxcwaVZNABxloKHi9n9kk1aQTdy8O6efRXh9IF7L1xslwRj4JNdtzIZBenluvGZZyU5G5JtjYAC7LQzhtidPepX3u9BJk9ztGq5fN/KtBtArTF7Q0nBGAIFN4FoXF/Rb5DY6wFBay6mA+ljoevBk9Q/NhyWyQPmylInhztovPsEnY5qsH0HS90B3Cug2xkoMleYvVyG014IR0ET50oxVKb1XMw4XO3BGV3pr0Ap38lyiTaBVMVaOJM6o6HAfVzOX4mTn5y/hv3DWbw/WNyVxd8LTEO946lNoWu09MlD2urdE28FbXxF0G1ZKtjKrZy5Doz3qO4wd0anz9o21H73E0oQwAM/Fh0+zHcIbF71PW0+Q/L59lA+KwtS5h1mMcHBY5h0BejcWy1lfRMJFDjT4gjoFlcRxBOZUNHFD3QEcQdSjOmYC39H01cFP5yz7ojznd1JSLZBWYCMuqwd3yIZMG5ZfdwEhDo8DCO7tN4OhO47oMXM8sFNmZPROGJeyUe/QUZkUYbQrGv+G75byrR9HGShjvrPfoNn4BDAf63GzPsb+nmkjhptpbQUZs3ce73VVE/bSREaQXq6mMwL0iU1xElXsiFjFBVMgujravOnxc8RvIsl2iu95DegNr/v0hPOeApKROwyViwG5QXqtpciz5eeSxf8Bv09XqHYGkJFaSLpIs5XVbTQMz3UQXe9Z+rvaELpTkHE+2H226kMkZRtRLHzBW49GQLuFDIWQqszi4mvYy0YYCEGcoBBndBR1KBZfIV9TLY4r8VLDZhUwszznwPdVcqmMpMfUc45MP7MNlimdmarIhjGq95neMxH8fmXZbrbDPtF6IjLxeOyKfhGMwwdCMajb8egId5OexSenqJ2yGB9WKtn+ZNbaizY1NfykXaUCLNNyP8HTkIQMgspme3xRLfUHuInTaj9eu/xQH6anBBEKNNFdyPyAgjces3ENlMr7GnALZzMuBr3YpqutslsVdJqv1pahTyvejufpZjKXNbO16y5vxvYcFH8CxHTgRZW/rvVRLCDrNFBAH6eN60UvaABfGfi1ghj7IJitpD7beRNfiAZtmxKVv7MxIGaY/9ZNtXMAKNa1P8owRjpzpKEY6dNJ+1pW/XOZcBSaZTcpMDE8KPo6dr9S4eBouOFuSafDLM/Z+HaCJcyt30CxK7W+brPs0lcNmNgpW+99xXQymrMd2gVi0m5dQ7hOuDnBoANja1LYhqhHJsASdj4n2ElCPB0iMZoS2PEMe3L2KyMWhWivn5m0QBHicJog8KGwOflvVMyMWMiQR/5q9aPNVEfXwA1ZfV6Q9KlakKI3aIwa/gInVDYfH2+jErhomLqsZxm5qPDB9in0fQqRSwwg2aqto8BiS2hk475ePv955UWU3yLB+Mf+163qgdUdZKZ0ogRvk8BejFAlk0NxJUXG1U+G4kzw8UeX2d3YwvT/huWZxtKkP5pWk1EVrfE0RxCIkg8c/jjhV/CPzTXhtidPepX3u9BJk9ztGq5fN/KtBtArTF7Q0nBGAIFN4AS8HRuenPEMSx2UJW0tEXonImtal6c585m2j98fBRv5VI24zVaXV/Es3wBy4XWj2gLvO0ginePkRbqN/FXGSKG75BZDr3nTXq58doSUxHCrME32xzUIn4buVwlCJxQdJCVfbmUrV/D0WwICxCQiTFD35+Zq4+kRWNVZlAOWbzmMaFUzJ67gIKgFNEMUiBjdl6pLdQFTTpabKmVee1tLFzozvGD5IVCUg5LaUbsu39xhq5PE7rqd2Twr24ERnfeTDzYdYQY/gFLbtj/malqxFqwn55hQmZaL5tlufWn5T3LpoZsfYxMd3WCBUnMAl/DkMAAVE1xCwZB2v5IoGK+QhnYCuSc3n6sxf/10/zNz71a6BbUwL6gDoo70ALfakAEDgqLXWi0JjSjsOprHSRRMSbu71dZH4y66ubcBVdaO/DfubILMlzNtRKpiei2iAzQdVb/3DEKjlta7KfIgWBQmHH7DGWFxLwjrQ9XnAkgpyR3VuR2HRV2dIu19ffUUwFiQRr6icladbmLpMcCXwRI2N3bsiZ9SvXoy7VvcG9s2h/ExD99kQ4UN75fpkbOXETIGSItrDpqfZET3ZLXLrDsjhicKb8CwV9moQtCl/CmBp4rORDIrH5OF+pBKuXuoP+5RCs0Crfx3NuPsgHq4p0iu7mHMjsd+ivEn/ih4b/tR+KTIWh8nHXvye11vO1TzmrE/a2MwONAP+Go+leHKznV9cKpfcR7aj9iFKbCB6Xio76NbrPBPu3CNGaIZoo0IB4yPcKdTciY5el/zFfjIIRTK0+edinZPpUXk+onORcIbatUClzu5RXBGC9Rxay8CbKu9JEbSkts30GmrTi2SMXYHG5wkm/UoL/KLW/y7OURxLMWZVYfw3QpdODP8CX4vQwIijJFbbRnYabIIyndLga3K8smmNlJqzJZjcmJeWn2ZMWepJmLGzWDbkAbDC/29fWIlUax20A6W1ky8F2sOF93X28503wvul+ribkuIAHmxLTMX1rDps44wE13GHTvblz0rykD9coQokrvKWmnHAMfzQQI0JbS6yD+Va9IfKEh+hQqmMLC6X1GB1pxo29NWjYiTiz5L8Y6kQ7gxgqmO/NVGCyEQE6D6quBnBUGsO7gIr43kWhzPw4Fa0KtLc0A2Lh4D/wI2Gp+rkSQcTQfAeZtWQCd3l2k+AgttCPgSeUg6OgzzzJ9tTYjJZuV+BuLm9d21Ofh3oRFkzA3HwI+hdWyaWAc7HZwWxjAbcZEacVaIfMqSr1d3Kdzxrm1XY7XRu3/Km1DuM5Rt/Xohio8O2C1CRwodzXjc7Fsu9j68HXbghnuBzJghusYVUHZqaVsFgQK/r4AOjJKMa5a5FU8J56MGyd2oIGoejn3nXfIxELlaL32F7NPND98eLzI2m7IlocsBH0aKXCZ0XL0gmurwSbgv+m86U3pBXaD25RhIdUydUzbMN1kAGglF+cXCxadb+9+YdYCGCThqqvDBAaF2CQIa0TYsTN/9zS/w13Sb8FAvEv4GSdYvsER+I93BjiT0427+6vB3RGResyD8EyKCGJqibnxgLZ5gOviHG2ypKeXBKoW/Bfeoey1E9Ku3BZs9a1AjPWhe9sBJZ0eEyb1iCjR4QGBCEQm/7TLMq0eoX1esL8x8FkjI0y5ZFGM+nGV1vb4+AEMDLO7w28tSHL7yQ0/w6A1mzHK6dOljNOyP9QfTIt2AoJDuhZDtGU+276hA/+t95UxIzyAYZYUb2GW2+ENL5QjBw0qmCDyGsWPnx7qDiGkbtFTVS7xeZumxW4EaHM9WCfSWZoMFKljbjaa0Y7vY35DPm2D6hcuEBaSHcj7WUiNEV60Ll1BiYH9TZyS+Je01ja9wLqQ3KH2ZAP68s+Jwbvvgbqf8eB7TGpZRSXRTVNvoAJfkE45sIofnkhVdV0arrf+IXzr1u+xDYpka3c71aHYL+JFtd6NoGYCmcvyWw4TVvASi2P0UxSafv5xj5CZZJa3U1nh6hbxD6U2Wd2kBQkrehqc05BsXmaF12/S6xbXWZlWMjondqTTlrmygv23ya8FPffb/HmrGDvJmLcw7IODMMaJy3LhP2df4KlB9phSl/sEHtEwECswdB0MjX2/rEcuMHIJ0n3BO8WzCSx0uhhM2CBh9vnochxeN12T7gybdLjgQ6Azxulx25R/etx4RQ1un5vmryio66gF28JXE/NTa0tRNreSzvw7SRTcCwSoyICl+ZmzJ0EdJd27HkI3vZqUIzEEwq5M4Drwfyfz/48+j7BHWItnc2/uO8BC6f2MTm0ravvC2xSJn987YQo7tLd6ABf83CRNqGewvcjKl/YjaoMGN9Rgt/UnyDbRNCyO0yCODNHyvaWT3CJKsrGok0QeiRAJ1CI2Vm7wr8JfSD3cxJeck3ZyMZuCZGE2D5kHqbMhHOGAE60rXvyplRuz5/1Stwukoi3aqhgEZxAPC8k6RRDyvTPO19pY4uQe28ibmydmn3WR0SU/KDs5Msl7KvQ11db6cfybtHPivV4PL1MaXQcaatJlvkGCN2an9rsv3maltVBd50de1dTKOGA5H+NBLAyQbzsF3VfXs39HsBGVh7HBbNn/mhVnmYSB5wHXcish3WEOyZGZLtmN7ukA+pxJZWEjKxYd7rChUTiuPvun497dRkrcj2MJ8hlA7TZl3lWvhAtqNB18C+QOEjSomHnQGZvCplDhMVrpy2Ch7BC4XI/gnjzfoADpw3bcs7W1sMQtF8Z7fpNyO8YMeVtddes/msz3437iwe0NAWurk0G1CGVyApkTNZoWSEP4DL9vODe2VyQFou1VZ3in7C3H4oK/4ZF+xR+NgTlXfKDC4h+pztMeroFA9w6WJUiV5hQaNVaJ9knuB21iXM1brExwHXN1WNLWWzNDKxjsQyCfb991M0YewnzI9fOo7XnhkWCg0r5prFc/fKDlyYgTqUmQQS3hNwRPXJwjMSVGE6ZkWTJmYWHbOA2aq6KiH8dbAGSPm2tuEFZMLdJtvl3AQiOGT+CUVTDHHqAgo4x0GKtpJ6asFDH5Dk4YuG53tekeerH09AT00jubyshDvfTChLYduof4S/4AlLit9dxOx5QNYK5cqp/Qmph6YF6+JWLLhLrNs4bYnT3qV97vQSZPc7RquXzfyrQbQK0xe0NJwRgCBTeDXwSmAE59XSDj1osmWZE6iMCE7W21T0WWdgTcMTuapbjoUR2mGr9tz6PJKcvGq16lTQ+rT9AcebMD7BjtfKuZ26pDnijahlsc5NIFKUwWqHp4wca06IGQVayJNQB+zeONWkRS2yzCGjW4f4/AmIKlHOrGVilhB/C8AJGztDAhY03wieU2ER6AHmemab8G6p6mNkBFtJEW08xnBHIFHekSzIK5a4nCuONyxXGRL5rXJquK6zKkpk6uv3FawtPo1RlrbtkXdgyfS0VUgMlrmOSOEXVIF1SiRR0rywd2TG+P6C3meI9DbLmQQ46tbK+uz5FQdkcB4+Ef+bKygwUKkZJjnItu0nDAWLs7BdUMk0ACR8GR+H02PWr0X1TbpvfIr4bhq8ojF+lhGghT357XOqLsq5pEPdV0wiN02Xos/uz25eNyTO2PcHfuN42p05vpIc3U1fDKe6/ATp1v0JR3J27qL5a9HMoJ3dj6kQBsgYFb1FnL/MJr+vuFruJWP0hvBTCcNM7FHyPr757B/Jsu0fipt0XSl6fVrQZsOQbxURzvslawuRho6fJXy9Lnc1JX6i/CsgRcxbyvgwxrUhjYEYynAqgrCJQYgVGWPu/k5ojX8vvMTN1bIYjT3m8VxzeOwS30egb3zd/eIHNxyGMu8hqOgJDWHymaqjzhRUzmajBnmptFFCIeBkWM4Phl0HIWtx2rYnPgP/je5s+14aRq1+/dFZLemXo2AyRNvJXpGJaxaZcDMhW8lq2oyrtwcC4DD3K7XuYs/ljkltzhvq9AQC7hT4uFElGD54b6zsdq6V1af/kcDjB+/9q3wFWoDFvH5HBBPX8RzfYkAj62d6Tt7YIROV3Nn4st3qvb+yfyIp+LY9oX/1SHBraQiZy7iVkA2/6FkWHrifyk5NTP+S58S04Wq/00ZeG5HmVdveOrTlV4zVAlHGUCPKjKRJnlNNU4imdnDrafO3pqJWybVi1qs09+rmdjzlmjNsNWd5LI2gs7DYhm0oli2wo+zGMK2UbIJbvp6OeMY6IxBmyOZubjogvWofrwz5tdMRPWMFoWCAFVf7vgUD7ReBbkK5HNIz85gGQWLr8PqLykNirw/d0H8fom8b5KkJ47P/Wl7LyxmX+jJkcmhmtBme1iqmUJiW+xlXGOBHBp+4P18YdnsDa2FaNMnYnSmaZTFrBapPoqaqwLqOB15PZi7E2KPpP3jISvE/MtGIaXtC26Nvrlu0eLNRxKYAnnnxUAac1dyx6s7JIbeUhKAZLQj7RkmTyU/q6h1riO45LMYSWZ4R2FuwdX3bch6XMrNh8SVecub+GuUoFnjXn+93CpOSrB1V6YcSaCx4o41eM9t5oSFdeVaUK9uC8GuLflOVuY9BQP7AviJltsAjyExzu2COrWVvFDdbCyIuib1RWkz2VL3cEvSx0UOyB/Mai29SNmQ9wsnjqPOFyzNcR6BfCmDlJYWLwOco1ZdfG0rOlTi4M/vOZ9RWX76DT/HX/lTHVd9nRd1GHkUUhXiIDzc28a8+jjepcuEySc5Qa8uHejKK/G2F3r1nynHUnhLICjnN4i+1t8VFtU69dXu5/MTX/w2fdZhVWs1hAkKbNO1hWGPWswS6ijlXmIH0WTqibZx1YcRFbrKt7HXcAwDKE8PgGzpyjJf/VHOfXEJQI179XZsoBXxATlelefv4yCeAx259g+rYOYm3jebWv0baIywBpR1SAIM+PNsaGOMgYVM+51hdeoiP2puR31QPQztCq5CdycpBvN6DDoRJrPYXTGxu9Za0Hyil4Q5EUZ0XwT7jxE8eDjXrgCe8aJMc8YAh3zMenR7zFbhadAzCpB0d37VLLfAi69fyaufCyN5gk9GDCUbpT9av4NCrHxQHFaUOci3HnGTAMqPuWLU6O5+QgYjClf+YaS0h/OkGDSTmdcl0pRqJs6rdFi/m8sxTkCnges2QKMNS/8/SeqCRwqucvEpBv3s7QKSqhaHyWRTiU0f+SfZAInSIelbWSp24ybmVAL5IryyoQU5EaWpp9YIES+2Qcd2+KDGXrOynIgvFYCwV4UIoWG0nGyjL3skdbh7l3Utw+ALn955SBWdL+omDvdd1+eU4DJplx0LR8Vf3TNZuj29qaoit/PmfgJ6Jrmumwz+3ePJvUy/eqGri+oKKrMIL5fC+/KtJcsmJLYdxuUXus/9oj3Cqlju7Q6BXPGmRXRtaPXjf8a80ygFfqVM/R9aWwU46gDlcg2DSlR9rlPiGXF6b1Suij+NQvceeeVbuNJM734hx3mqWK7DKVpu6WYCq0WK7yJ9SCnosOy8LEW7JXf/0EW3PLPwyLHbKq3dcjLA/s8FUaRAY6LZ4AjAOBylZEznAIgUIM5bMpqh2roPKRYQR8JgQ2UjbpalaGyKFo3/tA4AElXT5S3TVsFqIWgcefoprC0/06AySVjGe4NuUSp1bekEbqGTFYOw6n6z1I7JSLZ123BxBjCWEaiQqQK5JzefqzF//XT/M3PvVroFtTAvqAOijvQAt9qQAQOC0g27+x1SbSyHznst6GECZEK4/DPMHt5VEBsrQkOwcZywqqMU7Sxh26qBj+N4APqEUi5whEs5+7qmH7M0haF9JQsWDhhfchjdX1f6U/UuoOUveCoDC7Opes9aH09kSTZd6FDy7zp5YI/KuNf+ktKhZSg/2JYs0vh/kZkqbZbQjuXAlFlZH6RSjsWhpMhZXQ/c0V8Zev/MVZxmuBv8faReqGfjRlRZz1nmNfACKgMXSRTr64FnZMXDA0zaiOdA7YL8LiAThq3GqKOrOgnrb9BTjC6WafBIKr0EBt3xagXCgGTW46KBKSIlBtazS4eOwKIUjwMNJY/q2TwlCBxp3SqKNBmvGgs/jzmAIYoY7Eam4RCtbk5rr78+1125THZxNVvD0T0/a8ux9yyfFqEaeyd8gjBnyxfDywORAGkpROHwfls8j6tm1XRPBTLK2PMk8V/BB5va6pCzOGV/Fq/TDn7ohlVBNLJACOATNyP3euy1qpqTEIkWXyt7AZR1IkzC/iyJS+JA7TaxadvQ0NnZ1AbUs2wM1qzBUc7hXr6NEvusMek6mvHhzouf+JhTOp1Wsoi9fMI4fjIuYh3xFPKE3v8TrEcaIZ5vAH5vnfIUshvq5k5JJc44/ohU84cIhNttdmA0lUEFE2tNo1SO8Wz/Ve9yz5BF0UqvZg9AzLfteZvOtswo5OW9/ci22Nx5vZVL2m+6IWFELPgYp3tzW756Y/Wa/kYkFU99bSOjeDdkXwel7BIEZw5yG+72yvPlSd9whrgTGIwNgufFgt5PRyoc354Vzlw7HdM2fUt3WlZ/dImsDzPZcROFM2b00zxyzCEpH0ACcoSvyPGTOWv3DHWfw7lEcAAlfXS72EAnS3jTIrWHxpmA/Bat5LK+rlSrwU0yOo+0AvHnbuLoxUkkKqKJfY+QyZ3f3thfQJo8DZC4H06Gw4fmRwxpsj0INUEFliKPgRDL9rsFMBM5kou99cv1q5Rbvwtt+MV6a2J//aAwmzTki2dQ0R8JyN0HxmVOaJwMYv2A769f8HmBJWlTZ4N30hvQPbudP9CcKAoKunwuZLpt1hsDXYTP1hyzcZUWNUx7EgNgNDPDJOhE1yXW+xJK6SUAV75L1HPlJtf6nHe/h6oOe7FWQcOcmp2rFaHrakM3ASzhuE0Q2Nsa/ScC58aCRQd+2ZrObkq/2TqPFREPi96kHttagEk+vcv+CG2uQMjre38/pzaDJRQdNrcReoASsQkLii5ZfDgURAYKhJNdpRUcXYZIhJTcCq7tOKqEXeKWgEGmJV9uZStX8PRbAgLEJCJMUPfn5mrj6RFY1VmUA5ZvOYz12j1/TdE4e24/SQGmfGm3ImdPLtGfbNAbzMYTuL+hgrYZZrE1Oz05r6QP6wdRkDmYGrC3+DxR2vL7f371OnVFuxI7R0YSKp297D7rslqypMy99ZrbI5rBSa9yI8k15Fe+S9Rz5SbX+px3v4eqDnuxVkHDnJqdqxWh62pDNwEs4WZIkf/Hcqk7aEr3ABSwTmdd1vd4a2/p+ayCcG+VQN1qrs0kYnX9PqMAOonO2ULqtryNsPAn9J5E++LrT+yWPODDw0TP4HL+65u6Fkh4XQDATHbq4zE2l2BvfQBhL34vaAb128Tx9TuW6Ds1/6inPZpniwmuYr0ZQPZS275w6sN8g+wTVgTTK/CdkP/H9irjcs5eympZpZAqmYOwjQ2R+4HJp/gy30Tz19eP64CPaTrkk0np0U+l1H7D6kBSdj2vr1d7sGa5gCR6bpb/UJcEd8jQL6qVlZw5wKEtKk2q+YYJ4bwRMVmMbzzEpxXUUqbY1IpHyxSPozlF8Vb0K81tEjtTSl1mPiGOtsVj+k/tc8ZFOGkUVEPlSltO/g7ySAYrfsrkDZv8s0owt7hIhY+RiSOriPV451lVI5gMhoqYCtwWkteDvyl7ynbgb9uRndLAIzWRfPBnBSN5wjUe8/6lBtAmJxMRuQ+l0Ex03EkrnKJNtbilKxU6sObeUnfLdJZdFFc7RXEyEk2O2agn/Ak8vtbmxLE4QnAlpziVXdmj3hbf/hOU4T0O1OJme/r4Mxswt2y1Ud8TEuj9VMwsET5Ag9l5JkXRFH6ZItY+rHgxblVk0374cLQKq9kfFcCvdgdkVf2hzx9FiAOH1YheZKbiTIiOlVBWBasgC5agdKSb94aC8ofkM2SIwHkoWSz1hF16Fh2dSRdLH1zQRYRpl18wkCavRgrkReme7LjP7xRwG6dUcDMzXzEYWK7tltuiWdFVs12Dolf+u4frel14mHqcOJaYZrcMPAR3XBWdC0jXImno1/z+v83DwwWm6Uqu8MkNrl+7ZUzfrN26SQwZJuVhbT23vyUGhU3noN/Q0miOURON8+DwGZYF5KbNXdKp8IDh7WikJwJ+PgybEdpO4gE4TCqVBn2TKYf1TesBffnXoHhrtCgB5XGo2c0lNyHJfE0oj+B/N74J6/+Kjde9z3TPsCDX/P6/zcPDBabpSq7wyQ2uX7tlTN+s3bpJDBkm5WFtPZkJ02HdQmx3eXbbbyAIv5m2e7gronXztI89cCaxlnx9D4qV9Lv1F9MTOWjYT0GSC/UuvVgcQyAkwuUAfzOYbzJeTd+Jv5yLMN1Li/ZrDw+p2v76jJ2rPk5c1zfeRzXVu9d9VkQdVo2g2VcQcB3uTbhP42fLgsxQby+mxrux2AJbyYtvvD1knl8BOZ8cX72lgcvGAr8I5+DVUp8pQ/mNbWEDECCeTqNZbn7jrq0hdHbc8ZHnmPCm9w8XuR0p/KdEm0Rzyz/nGEngS2BjKFRhtt+/J/Ty/npti+U67RQORf44LEzf/c0v8Nd0m/BQLxL+BknWL7BEfiPdwY4k9ONu/uqCkSFi/IK+wXR+17BLaGEMgR0l74BMsB4mMwwMw5lPHzpcdIFDzdkAr7iJ9zHRgCaDJ2FbNFHeqoGOtJZm+GCUVnDbOGwq/sGS6DVnZO+7EnulGUB+GswkKVpyRltENgq+S9Rz5SbX+px3v4eqDnuxVkHDnJqdqxWh62pDNwEs4STds1se8nFy2u4M5neL157JveVmkjydcJ2Z1ucpTapSDjK74p53bm9rX4XTUmUJ6Zdv0Naph/YCIgYCG7z0mwIZ1OhtBkA3WN8dpdJMl9Th6YdvZZnGd8Twf+qTJW5LilmJAypohx+bKOE30uN+5Ebiunf4zkw5rPUtDDLNL4IsS8InjaNr2SyC1S/ivBJM8MKX1vVnhjZu7mzmQeSDuPLaYB9wVc3W1HrMMfhLAtE9GUvRzlotnz6QDW/chOql/HPyQTBZc8OeiG5c/aoNf2Qz5uPsuZvA1KihwwehC2Tiqvh8dul1MpTkIH/9EJgbWr+Yqv2sHOUiPB/2lB3O89qLwJK7YlSvjzTuZg+zTI8v+cJwkwYN9McEMe14cvtp5Sf6h5gfUVvMZ/zcwWkoleEOo+5uBMyYsX5opRXI9XjgC1wlVS7/34oBZFXpM5PSeWxWT8Gfv5zriR3VKrH5LA3htidPepX3u9BJk9ztGq5fN/KtBtArTF7Q0nBGAIFN4GFg/1Pgc4IUHbrDrlYmVOk70jgv7oAddDFuMuSMRIw8zgRl765BofwkFiIjOEgtZqGZy40ghGI5iGqwnroAPJcQ1/eGdjtC765lVjHPq9VO4er1Vs2YjrZ5FaeWivCFM9bCHrhl6UtwLlibOv5xyJsbq1R/AbQk9gi7VhKB4bhRc9JCyax797VK/MaLg6BzayKGKi/0ZpSJ3ojU9Pxn5pUe7osTqQAYru2+6CoY7dyBv5lVphQKzoFsgTd8ULX5hYLlTpmCWu8fc59vAOrRUHAeWaEX/NxxJ5KLHrciXC+dcAlm4QdGvbsMEq8fXN5xbZV3HT6bHs2uRvrh3XVkKGVXw3nOWSUFwbJgK0p6n2HxhpJ8bX5WFefU4jBjTHFbOtIDi8tLZ8gJXj81K+6QrmqKWUNH8kL8w8BHKhdYaKxNYoaEcmygqhAZuxYjYLbaWC5mgKBP8YjrKsrIznm+enwNYqcIphF2ryvP6mrlYHr2gV9XVsIKQQk1Uxu7scAzCRjR6XoYXMJxB4SpQJqWbkQTPinTg10YVZdxVKrImCuv/jljtFr0TF10uqv+Z5NxGGDSmVujh6BdTdNw1OiYIqx10r0McaCklOBi8xXP8mrUvsCtfuLe4+gHbhBJqgy6TDhwa2TbdiRp0YhIbOaLtb95fyVZ6CoSaLEKwD3MFIWjng8XsszvkLXeQVxuEkUt+XXiGaAGA0fPvTooyG3MeL0e1wDG2w/KzVEXe0AcK0DLKJcKRxM3PWLN1tgIgY4niTe5TvqTHK6WmjsjGa6uJWfUzXCyszbcQ3MDpmen5AY/qiG1AM5YMUdoExwTLs37cgxnkMPE+ymSLCpkvkkrZykP32RDhQ3vl+mRs5cRMgZIi2sOmp9kRPdktcusOyOGJ0AJ9UqX0+SQitzxO6kWoW9JbD5QIgONMfTGEuCjGN0wEZFmbDlADTFdb0c401MnC3bvYmq95y2VQcnCKwoEB0pmErJvYjqN020O+qzMhD82ZvrRPZLqMB/nIvK2YAzJdNJpgFaxVvHabfPzdP2yusi4SQcKiWRCxjhZCcdJlraXcZaWFVQoh0smKlFYux1lcpOrmLT5RMnwhnwdJxJ1B5Cp/oVobEV3HdSj1Al5BdGXrwNv6c4TB2Rci1A3kH/qcAzIqZML1KNECwi7DZMEuFXIC5FCWlj+JCQZtcacO0rre4HDE1x638/1A1PjfdfMGkNJIQ0QPwkVIhCIgT4eKW9uld0ZYOjpbc6lt7IUQsu1lxXP2gIZRCH36q6WQeHauHdZknFkC1usUJQ/hhedfzJoaQLpOsZ+rvhoPL7PR3+gUzk4CdVvn2qZCZY2dKV6n9hgYvXCZRdMKa7pfra14ZNBYVDuZAn1uvGRKr4LYUINsubCwLDO9wgKIWquDZkUaX0lgxSxEEaL74z3xOAhxyi+oQY22lvv75PQpA/9gWkwX5GQFFlspdavwWDFDVwf/okvME/qrMVxsHjEExBdPuEMCYU3oUBIEuZVOkruD8zWwKv64Sc3Syt431PaOF5yditOhJBjrqFtGi2qIM7iBI4DRurmKc9wm7i65rMiib7Ga5fSbhWPatOOVFXofTrJMhe6f2fnFAnixC2gVgHJkzWEHCwaKcMIsE3E7Qd795j3owPrjZE6fl+cWbkfwiZKsmw6KXENey2MUU5PDKweQGCu8ZSTUoJpBNUiJdz6c0ScCAROy5y8jMCJekDNuuhX1/+/NfRGql6f9B3IOA9R+5xash4krLVIUx6bBL0CU9+ia0pqB+gHX0ZOot6Mry0F4ILr6PJouEfQ6+OFS1y7OaSeYUw/LkGB98TIfbflMHNKR2g01nWr8QZIOUhUvGnrDyc+g/++w58wrqKZvRD4tnq2JgszAGKufCKWkBdI46VwirLhVc/9nz2JRkeTrQ+zrVfzQnmHa7Tq0qLbZrRUVSDi/N8n24IzT4uxgXAnfFuyf9mpDIu46iaLE2WtlNdt1/5wyvylkLWft5xPdjg0+B2oljXu3R9jW0yXVIN5efDdX7YhEqYxEWgRXZM8gTOmB3eicU2O1mQVihUdc/JGxqeb+78K0fI7+rWiEKWZavUOu6qYWPw6O9wXZdYoU8rMNZrZ4kmRS6YsIrEOPTjzIrxSZk8MIuhkiZ7h5q575GtGIFmnZ+szLQTxRfcIn7GRL+3SpYGtrRDFDUYzLN7U2Bf/RmU7Z0e3PkbvHgsCSpCmJm7dkUSq1R+LAiK901/Jy2SBw4isRn1hN77PJU3e1iqXoVSOVWFunUlJl8MU1ghALmGW65No4XJLlobJZOsENiYRDoN3VRQ/EcrPHZG4UD/FE0owGimArtDTOcjaYSBCFxge0INo83w+qIvKZWc7abA8J30Td8kCulkAGVKJVT4lcp/6GsIqqZsuTiEYYV7OFlpzqafCrS3693VYvK8o1OCaz3fbh6ge4qBuOVg3Zeu5MRVFAqNJrGLz+hjqrFs8NhgSbZAAxQ4Ddj5qEVeSL5q2Su8Bl4yFIg1J+zkf5kDTbKZv5AFAkdqBskiX2rGGxUmJGYohehzbIiy5auqp/szOsVkjnt8g5GurIrauruhwBWmuIbBvEcN/EBrF8FP5XFwKY0i0sZOdDuU5nQMddJe8aZ4U1GJfkjuaOmq7dO3L997zL4HqfjVEpjtMY8p5zEbnHEqL5ULwWe1f3MXUn2DCPO3RjWsiTjvb0vqM7tqq0j+L+toph3b1YVBR8qbwHgGL53V9KSpqgMU3uBxAaAj9qUixFxePscT67dxIowEP5FtxaQQixi+LxnVeZxpznxBUVEDnum3xxKdyV0630cKvZZIJ2TobZl5iwXHjrcUuByoG59zJv3HYRGkAaw3iefKr47kC6HDUhNIL8Cgsfui3REvJnVDfP4L/DGJJ+rqY8BQL+xAWkX9viDqbA9GULdcBU7YFH9qAToSqXZrthiVfbmUrV/D0WwICxCQiTFD35+Zq4+kRWNVZlAOWbzmMhlFCsiOPk5yXVDZRgQhENOVwmm3JOZ4QVzCvEObz6emkRT+L6RxB1v2x3eybkSm8B163JKYy9dykYLt3yYStqwFn9XdUIZGnY+AVbuCktMz25bPf4P+OIoGfn7xkq7wKo3xC4V+rcqNNxLNjyKLtCxXbFKSF24cxBd3dD6pnWCxuhsiImB0cBOTQMuxbkB4Nz562/o22GqZSi8/8J6A4zz8jxgF5VjW2WSD/YeCX0VXJmEYP1ZBUXmp4lfcW+Y/wQ/xP/1HdHv7KNwbHddoDmKI/6+WpyfhnxO+ADixQ6WMopX8feL1GLczXODmEkOooyxJok2eVoOJWRsPqk/OStuyEqdHdDIJ/aWlEYAoQNYNcpNPDMDKl7mbv6CYFl+Ggif7g3K8CVNtoEQ19W8j/Sot/i5fTDxNXka5Mj1ueRDRYUakZoje/janmBl/oB2PqVNDxHh6VZzVnKGrk3P6syOG2J096lfe70EmT3O0arl838q0G0CtMXtDScEYAgU3gIIvsAkJb13/F4mRMPNG7lNIvyCgNrpboz8BkBt+OVIZF/jix7Vc4BgoTifjQHU4zaHi+F8dVST07WhH7G6zzG5RQr8bOfuYrRuy4wzfXcF2D0nDJlgAa+r7oYo1cihRFkmlutRsYLgZVaPWnDCw9ksiLhLMS9Kgklsz6RJqutsRGUXVEPw2A8MOgTwcEaNBEZCV0sdT0DlFpIhinmfNECE59r2ZniTkErJXAjwlR21VoT3dK6xEnlZmpw9qd2+kdVFPnLe2Y9B/I6omIgEkaZQiOSCXXc5W1noZpSPHocN/Fvj9WWo6oQIy3ai19V68n5QPkTbMXwwiRyH+8C7fklXPrYl4zT6Nom8y9i/llEmZzIvv1Bii//dFet+i9q1YGg2/rgYr2X5U3XeXiYWf5qco+yNN9CE6U73b4NOoqGlmjFgm+DxixEisotK0W8npWHDHMeRof4Pc74dwFyzpvw0hNlBeg2ctKliiXG1Q+aq1vbMQv/I6+/B92kDGh5zDoRvkXXw8K0ETjzFvRuV8RGKxhrQkWOEKDB3pV3KFx97ioh1nWoyOt3p2N66917sBjJVejzhXU++tqVN0YMk1+EixM3/3NL/DXdJvwUC8S/gZJ1i+wRH4j3cGOJPTjbv7qsezGQQHxKbVxIONk+m7ktbD0rTaQ9TKuN5AsL0GEixv1s4ofZv+YYxXoCUEFNylr84xLEthZI3LTBBmRFdm/2/c6/Q7mxAmeAOHf2oKZYfhrRc26wbg2h5/v9nir98aRf9ljA1dqqGTyC6TA7dIiQXu/Mfg0ME3gxsy0BgbdlQa+S9Rz5SbX+px3v4eqDnuxVkHDnJqdqxWh62pDNwEs4Qh/ovP6EuRQk22k+WRNxVMf0xudv2leF13vXvtOtKaZ2SfFltXqWJDVCk/DXBPImkK71NsjVZKNjm5cIPR10uaRgOMAyyf9IfF9SDP6G7aP/h9YIOpPwOvgDap/8Tw3eTsuEOPsM5VbUWDD6/EfVToERTLtqPA6yi9M3o06L/2n4bYnT3qV97vQSZPc7RquXzfyrQbQK0xe0NJwRgCBTeD3L9Eb0h/IPTZXlc20ZRNXAs7OQgcQKHkPRRIdDiu5wpY8EqUz7S8Yl0Vxivw0prwDlasswrCnxZXpcJworF+UpW9aGUyNt5Y99sj1s5aeDQ4sNKjSA6keh3KAAMKBSgxlN4tdx2Qxa0snFDeS3aYUM6uPGCGhDTM3F3TlJM8kSsiZLJtI5IZngGf3inOk4TAyml51PsaYCXpHuBA3ynAeuGpOoU5qygcF8w95NLcLu7Qxnmvpd+uMv/HoM57BhmBQWZApCqB9ADCvZPq7IDnkuy1xZ9l5yrWDtz72Ba7pp15+evUSbIG4sPgJb4bbwH2INO/WlLMaA1PHt/sNrLp6D3hRtNUJEKYWMc3h7twaAcKWG6bNYbgxpWdkTWYectAdrmp8FAjWnapgllKJ1g6m9BhPk7AyM7usIBbEuhiuD1KHYM8fek1KRaFZkNAAmabVe+/MfCZAylWzDYJyZAK9xTXhU7ywDmEiWEy8A6UhiZkzc3PYLCl/fOFv1osJrXL4gH5RLuMsDWWC+EJp3uENEDnUXn5rzuLlJutJCS2JZsKbpavk7V4zkblBeW4AnfC+ECJv2WLK7ozjLbH0HCNXPtiep2v/MvLkQK41Wpcddia33J7rq6b5nTrlUKxyDAPX/FJKIr15AszDC5U+bRAR4dAxyP3Ei0jlyGoAGjKMIqZY9hFn4hfjBLdYuWNar/Yx24njlcrF9Gi2NRpNRY/KJV9uZStX8PRbAgLEJCJMUPfn5mrj6RFY1VmUA5ZvOYySKDLq66/VfAl2LempcRgnblYgrePLfv6t1HY48JJ1m8h2tYoqeoNVC+0p/6J25aVbuvlKX1D7TFxc4tatDWBf6utG27rl4w2IF0P+cj1rICHjYQW5lD1rAKbdjoBkED+F6ub8NmWFvzSm+GWdJkgURGAIYawcYc70uGt+9H2QAdfUDl+RBJRPLZ3rWbwvOz+fl+BmNSoYqys+4xCbBF+MyPJ3A35Ew76rWLFhZv8PCSbA7hDiQdtK4po63N/56Y0LolNH5QDIxdwrfm/CyC4ER70PTDLxwHHhFB5ccMf5oD9sl4tWNmZz9trN7w6BHRIpBtJU6pRllBk20r/SRKKHKCnjM1XkAvXeIC6jsxzzOuMwYZ+pvRAgiyd7FAX3MYxfV+1YDiTuBSUbMF1kxJasA/TdKG6TxWe7l5m4Vt/UwBkcrpfvtOyBk+JKOT3k9QzW1scl8kKKd4PZlSToZCuC+1+vC//dSJOtgM5vtQ4I4ibiBoLb5uxDcz5fnf9Jfb2i1YkHNbsVWJ5yZLu2UGTmyj7lGawIXuc9eNgohZjJEvi7rvIDjXf5t07BOJwBXByde3D6B/9F7CO+tApLgs8my5XiQWR2rQOJLzdobWVellfr3rjH5LBgHGse82qVdtUi27ScMBYuzsF1QyTQAJHwZH4fTY9avRfVNum98ivhuEsd5OjDbjAZbIDf3iXCCWs8CtPaA3RcA1ZSd8WgMwSZyK/36Jwt/wiQZop9GnDZv7m6ILqDBzS9JoJ78uopbF3+2gFdK7OvEXt1SZCpG17PZI7ZVtUMF5MKZfGMlnA6iq78ca03o3sIjWPMzGSE8Y8HmZhJ6oU9gLtgqSBEtBjK5w/7HUQ/j2W9LCKsZ7ZMjR98Rbfg4uH5rT0e1+b6KN6CZwjfMI3F6vzvXjMMrU6DygWL/vC8wHQlhB4QXXrUGckGP3onh0F4Mv+IngUIQnNSYCMd0CYIbhrGZOcSAwIQYV3zasZ0ApIOdkSFf0ZTdDQW23g7SN+VEEASWXC2oVxrTBLlfwWZPmd/5FYaJwBuzhTeCXyVDvSYO+k1bSyzAWDfqJNDQ7ppqgqo+y1ZcWptSByCxuncHc4o6ZKCbWDxzxb1cmT27BlbcN6tyGKIrAX2DzGHZMPxBYeVQmXVAtooQYSERCcAlx+dP9nifHROBlVIeTpf08RdMz5ZecYL9PxpPOrMIO73Sk53fEUqztNK2w47RJ5sMUD5lXaRkLNlxe8sMafNVMqsGm1RqekGqxWtb+F/2BqspYjle2m1cc4Rj1HFck5JmjjgKiuBtCI7BftlGoXw9f//tdHEkLiMyhJ+rKUJu5IKFglawCFxq2taooWFdbsLqoqjzf5F+yEKM0/jnuXgGKAK++NnRMnyk6OJ7ofqnR0blBBAYv5l0J2C860ndSlpzoFqfAf/OjhX1OHv4yoMxFfBbnhW/oAS7RtThVrwG7qXwJpKifPQZDfs3SgdoC34Ue1hfMOCCpfXySRZhdRv5iyJbZ39mJCy703dmpu4KvEA9LiVgc3LVuQSGbo7gw7C3zgXORjRnOFamqaa6Cgm5nBe4ZyNHbTSCuiM82xWF1N9zArSnG0hhWMAmAtOJ4YI2lI5cGPIn6/wNoS7Kxf+uQ4sPNnHzPP78prkHySP7LZ7fT4Vq3FTgN+de8riLy4A9w9xF01FVG/JRpgeryBY3bxw0Gq53BDtfCD37DP6sR7GZjwB6y1FcTqpCeINMWfNgWN2oBh1A36p/cdvo7pJICwSQ8rOcpNBEb6CwdMB0ZPAeVtbpbJvhkZdpTabfvWJhSA2cgqKdE0+LrMvs/PORQboHn+PnwbZTBWmSsgwrbrUa98hvDOyzSKXqXArPsY7N3E3obP3GySNaGDRJ55FLzpnO8ccyvVLBIw1eg5TfLh91bjNLEdyJXBSuyBKhZSer/iiUMLKSvbSVoR2XGfSseSVYuysVqN5WzTfgjdv1ATYm9OMyqCpMIKqm0j0ISPHFEUvQl/0oRmEf5xOB3hNitLKxguJPtx9kok9EhVebkl9iff0X4zUGhHRaFBJ+RmqicfOOarjJpUxaNo3yIqF4cC/JO+PJxkbuLOTsk/UQezMgb6j2CoQWxKdg6JrIdr80F1Qqc5BJmCro2vEYSGZR3VCrEtLrJlNrMq5HvpYq+EIAxsKKSnmjpnz9sA+X6RQc1A4jFvfAFiUrOpG3HEH+xXlvsyAiNNU/tkrShDdnRfLwLbQFXtc5j3jR2qviNA+CBQ+NMdMuu0B6c2TSvUGLCYBIk4Tmvdp9YR5qVaV722x0gAs03bImEuwONLvGjlFku72eue+/RHSi/hi/pOa5WBSwbbU5azwoiVfbmUrV/D0WwICxCQiTFD35+Zq4+kRWNVZlAOWbzmMhQR+q5txQHYbXqhpWfJdz77NpY8jEDzFifqskMd7y08GFccf85KzpFscIMIiqgVhToqUygTTs6uu/wh9cMa5bCzrmlvExLCQUjQd7M/4ajBmnoq+pKvxjTER73FZBKa6srl9WkmXGMV8w+/Vq+rPwFnI5sNH/KrMUgC5IxdZl35/nE4HeE2K0srGC4k+3H2SiT0SFV5uSX2J9/RfjNQaEROEJ30uGZYqEZ1VzDcGVPWICFjF5dS0Lf1F3Gb0FKWN/SmADnU5Aqb9kCRRqomw8iYQod6y+ZhOTBj95Z5hS8lJDJFyi/dTdczlM5wsiSsx/xF44XZgmZCA7OFN5pG0fSy8OSjan0syXSRYBcKZommNUuy/jXXAaRYLzX6D2J0cA/MGKMzJ0xwTyMvPjOZj+k76l5t/bYlp2s3GwoQ4FTMJ7Af1c2OWaNPlpVpFRFWWPtT3mtU2L2otHDkPtXzSD/hMpLOwy45yBvMckb0r/Vl7jfqQ+nYGFFeHvrdbPG1f7myDmV3afaxrz2juHRyM709RcgF6yVm0FPYkzX6KITuk/qmebRBVOfbelkWkeJEFAomyQFj9udx1X/7rGkjSzeRj295H0oBv0YEkSqN0TcK5OFQNf7yiom+f+faHiLLV556Imhx5PkJqA4Waq+pPEroJOKwGMgWrciSLBWzK7TYmxVrhUnGbywzfgjoOUUP4qNmeft/6uIXRgvHoidXYi8VzDwcdKsUuE3agIDmWkQwdhdWpj1xzWOHQ0JPQG16ni/kdrzo1g504Fz4QSR2XMe4tsYqmAj72knrC3Qmt3Lh/SqQw5B/ukiN74d8sYo/oc5sHmxfFhfCG9WcAcGBRCu83uDI9dzVFhlCGYqTVTc4v2jqzp1+uFBIppDhoKClj5Qy/L8wjQAEAL+ggedrz1+1EYIAHZBsZDPDL2F2Y0K0Si8yZ44kMe+3XesBSdKg+xRSuzpttaQdhZDqVavmOpAlz6oVmE0uLWdj6+iAjRueZklJnw01WWWDTI32gk++hmgsjBwyBQ/nYxATpRINY+57jRf5bU+ry/9elZV+e1Uudsu33GNUPZOXwH92sXScR5PhpiR0pNBVllxGV5dux/G/dM1Wn28XWVvTVUPGOOiCxfpmj4r1juFjWNthvvQm9KKxPgCN/BPaCvWKPs0rAiF8YkpmYrCPZ+7HgxppPISCgFaAmCtnjt3+dEpCpA+7uLWLXvvIS/HuVW/MtWnECk7qgWko4KNc9nl2m1H2UIErPMVj7ICgz0qFq/wQ1bpuST1bo/+rWmC0PFHbkoCmZX9H6V3s++KPjNe9vYpomDbzfJtae0ywd03RxqQXRI67sErksvOXRoUy8LjlvBZmVgSLbtJwwFi7OwXVDJNAAkfBkfh9Nj1q9F9U26b3yK+G4veaQxz63Bj9rxQogcgMKLFnJMA2VnwM7NtijARYN0+wI6ailjjXoftqcJN4zXZZNRqCJEt15OzCUTpH3ji43+kVzI1p9gEXmwU37QHwDqhKnuh49l4VylJc90gm8TC7yVCGystK0fc/DHCB5QwkEdlmewoA0EQLayqtRjxfyK6VY2sure7GvkobamG2I//vXNXH9X8Jh323we/PTXEs86xZBEI+I9nbpjwreltTVjn1KdeEXIWF1reYpzf9AY2cR1Ia/YqkqEd7WHRqz2IDQ4aSXbz9/7uc1lES3vDtDvUIsTN/9zS/w13Sb8FAvEv4GSdYvsER+I93BjiT0427+6p9YKAhm8bK+kwZ2fa6m0qeORKv0iPerW/3AMRun46AJui77kG37dtUGEkj4u2Mh9cRM+1BKr5sEcw9KEjwKUiBBFaePyYgw30ptWvktvd2RN8Jb1LU/blzOCbPyPQ+xOnX5CLyLvgC8a6Rj+ZIdX/zozOMFEQtjBTmKqZIFcqImhXacg9nK1x0TOfB1rOarYt8Lf5H0Dbq7nk9+jSg17S/lTbteQR/MkTAeC9/7sGhd4dQu3xhuZxNTeduQu3uk9mnSOfpMRFveyn6rh/ni1SIlcuQMShzmHPmPBVwMFujVAdQE1LUe5bfBQikUTXr5GLMqFpi43krvTRvGDcdmCr6IP/pxFd2o4I0H79sNMXKND9cENc8BmczpGFSu6xeXLZ5EjLkYVn5Pu3yxxGTEzqIiLrMjHlvpJ/vOxn2YEDyk03PoO5c8+WkaX/VMsni8Rk9uZbZN1OOY1Vbkwe9m2taoEHGYyTjJP/KGlGgM8xeWfB9UbrNX1uxv0YOwGPFr9kpxdBOJlelGA8akRf7iPcN86uS3nhAyAlVHXlHTbiTIWdb+rIMBRELuEVrUJMMgKQ9PKeHmSu9Zlvo+Do02LQYsg/PvPnpxwJRLJvMEYId3zabIU+n3g/ZslMFOye5G3Eddc8UYcqDIu95Qehynd8jt6p2bgHp6sPzK56FzyhVdxoK0CWHG3U7dcddRY2EjEPq8s89QFHqFCfNNlWEYcoamE4YylR6yHPyIgtIx+k3Q18wxzQV3D/036/IB+mnRSf8mPQvCvJrOA5bXJZzAYGlfHguuhNMUbUaN+Vyn9bWFjgISaanIAsiiVIwd+1AGPA210oIMG8xqovB020d59CPBKyNG0+Bw1lAO6UFFv3375nlU/n1e7BkJrRznZEcNYczycYrVe11UBE8hBlcyOfsOiXVkPGCj9D10dJpYLvSM+420TQhm7k14I02Vthm13IqtGei31MPbReaGibLVTZGpAer7LOqHVbWFsixTOtMk32JJhuuMzVqZ4JchChk7enMux61ic6VTojX73q5Pr3W+pn/LnzFP2kwfPIEtWTx4ny6UahAOOteLwB9tTKqjsxdi5bcNsm+zPDOrEFJfP4yqLzsiAacS85U2vulM3ATmnkrmmrOu1VpSN4Bl6AsM2eR9+3sFcvfcEAbLmvLOcyWZvOIh7Y2pC573NHWdF0/mPI88xZ1M6lga8FKxPKbJ+5/998IPIpsLRnU+cntQflN1z9RA4PK4+8elnDV1ILG/TX7UxfjCOBOTTgUUBTWgEEjIcHp87tToEEHnuVSb5BX4QdgROd5Or7hRNOnQqCVAmipvnrTmNRm0vxU5GHLz0BD8wUouGBED1qrjQ3s2+PZraSAg1icDZe5L6wUZi4Qwgy57rRCdm1sIA6UNImgYvlzqBLr9li9WRbtgbqTELPBHnSxukaI70RAbFz7xr/uKl2fJhZcheXYQqnSpR04KqFFWnCDZoMj2uNLf5PstNOczzE3UZN2+/OEFvmg7F900o+mDr6SRzIHuSaZIGgWYpyWDCUp783YSnDuftDWrGiDtJfM04nSsxEpUaD4tXgtwNq+u9u07kvHgUv5ULhnmjrInEU5hNLUtzuSokSbEPGIaoQ59tb5pqEyQgwUXfnPKzJHFF1+/5gCbHQZO6heXWFX+YqsriD7Ov01lnxNQu5PlZocOVBzoP5Z2AmiXMfvg+0BDbhT7vnKvSs8XQ3xe/HJcD8KrOU81RalQo6ftBn1+9YfKul+5FAayE+dU8KpYOr3h0+HQSV4WZMJBwed0s4LYX1aUE0WV5uOqg3CkhiYwuG6CQM7Ivu8spyDc9OsEr/GkKRXh58IbQjBx80VEWxG26T/W5q2b7Hx3nrgyij57oMkXdBoPVBvV6KXGWnCOW2hvVTDTV6Nk8t+7Q+2EJdO55T6mc5dKAbvOJngOYddC7Yn375xRuA/YHHRG6P+eudGIplwnLGiMp+XtOh/yTqSHqzXUm7JnlxPT1te6c70NwuJJjBBpGVN9BSOaUoxO9KqIq0egb3YsGDVay5u+AvF9VIGQTaZY2XVFpYF6bnifFswtWG2c+VpvbPGztn4YgZTFrFD/UHbRdFCyK/4H8UqSmkmuK2OYb1Pbw3uvd7f58x5z8LrFJl4S63+epNrkankFb0qXe8OehSFXruB1jTz0tQHnbx4jZMKW8g96wmlsrAbXIB5NoreZae6iUr6H2B3GOzLYLkYVT0+cbbKbua2ASpSLgZp9gFt9Ne+gfPTrFjCiwisshlUx8gWC+SUl47dWKDaOXVBbjal7oDqRnj6hCNjq81c5Op5vcjLaizQ4ewjSW7paqV0cWKvpX2Oa+bMYIrPesqm7835zje34WFU3z8EkjsM4nGZxg9J6wEkMkbMqqlZ7D0Q0zZLL48D5b2npbovQ7wbb+7CFPkiXwcjVrXM8r/f7+GdmLHBqzimaJRt/v+uiwGk5cJJ/BIF5HxS+xiPn/NkKybTNVxGpmg+69fZrKoNSHHrZ+OJGcpGkmD8NxwE5a+W4Y3Fvnk+TVLtl5AH7dZ0ZimIE44e0ld2gUclm+T/gBugd8z5UoGEaWqcw/bHYQPRMjPHUE7581YLLOSMQjdNPYo/sNF5XOQtCffeeimvqBrsxrAxFXJgXI0R7ikcg+eYLruBsLPr2NdB2/1l6h3OOeRPTFG3ilKRHCYoMmfwV6PCdjXivMVr0pZw+7E5pw2TO5j/HXptWFtwldsG8VLEa6JZeYe2xXRi37sg9iWq+ItUy1xn4ZhDH7u/U92iq650TlBHetH7emzcD+ue5Pvhur7+rSNsaP3cjiIl9Nyrysm6D/0qUu1NfkDEU7grUdhXcjJ3lvYkliysjo3aaYbTU8ysk5fww3H5HRBX0cAzpXm0YqKvQPchFIFFhplz4WQWa/KlCsdJdhqmbVovxbpZQ9m5xSsjGm0sQ5+9IXQDq7UZR1rqKdk9LkS/mbMpjv9Gj8SmAEHiPbvGFmgLOwSWqFF5N/FLL8/J01DBtKADRDkv+SXEZ2DCaSnkw4MdIsLekB4gbzPDe2Pcg6wse0zJjXu+/12KGjJgXC7n7npHbIfvCKiVFE4A2kH6UKABruf75KtjOGVDYJwvtIpIlJYjfxrHzL9Ay9fUrjJ05gxzBM4VhYbEhLZnhIiilVTK3OS8Wmcs+wzph8dOHvroq42jI4DW+aIEccwcB2GfJgaMfZoNmjSdptlXkz7DpOJTcU4qHXBtbyfSlvgmrntnYhj9W61fNvFGhAmiw3hw46rr0lc+43aI6efOPNFKYSxjHp3BlZ4fKPvKRkx/gRqPy+lBET798CIj7GRMKy2ue4F7+PhDkRfnQ2wggLBckGqMphRmAyE8EsGlWWaUw6vEZ/BQbqLwEMP7fG/nDYrpAzcLSK0dY6oE57gUeeAGsp63pwBdl9cHUDKmyqAwcFquZiQWdizdg6FNuur4hbiQB7XN20woRrvp051SFGMq9RRZCNYc85jU8C/hH8kl1f9tJq/rA2TEARutNeCOffYbz7i0vE314TpY8KH0sEt3i5kpQEcXkFvNAW/eIkyXDivCvOsgj6U31/pTDQnIDL/cYXhURjJtgnr5aykrMwg4vy97e5VQBQ0D1rAFXSY9BF4sdGLechMB0/89n5oeUsN281CWP4xFRKWb8gwTIZLW9/exV+tg5Z0r2dB1nD4xWfLWEPojOTuiXX74nkLYJ0MgcXJZJ2YVuXgeU3AdcHjGiVNsNadCI6XHmr5GWe0t3GOaodaJJxij9dbFoGcMVok6R1RnuxOHJGuHtl4P5Wd2ZT1bli6KlSZMy5iUA09J1JA3r8b0n6gvVoiUCKyTTIcDh9QXK46pbow5C+T3kpu/l4aopmb+BYOmmPzTYpc8KuQx9AqQFnU1AEZTbnq9g6ItGXvuQo/c6dW2Qi7QGHyvo2Kwq6y4bs8/QzZhQ8GtoDnCJnm712DVkRXngRuEdAq9kvuRZIilZt3m/nxHBOvm7NET4UD8LOfRJtTNpZRf2IZbhDsJaPPfkVMJ0VY2kXPxCngxAtOZ+ktRDP1zULs7MjZOH/GxS+HDn6ZX3tPQEVZTR52sTII4ibh8YyeuJG26Vgr8GxHrfCN5krApd8TrYiAk+dMhUdPB0RXbOL4kUW+yEhGcjrSYjrtcA8eWz2jOiRj57c1GprII2pbwNhfu4l4Bmn5JVNC0tWz8nUcze9at7VrTsK9E9PksLxJB94Z1AMsjIO1CThM0Uei25STDmLUF9z0S+/haOzCCNfKOUBZgkBkZPoAZTnrp4IYSAd0SaaduT4t2VhlJg6qggzNwIDt+joeDKsoMLvVFK06Kf4olBGVqS5MUI0qtGyfhnTcAt3ky9JpWrg31xxrbXHbm0IUStIxt3cHLXGVIesF84t4Q2Pd5/DnoARQZBUSkiCVKId6nZB4WUQjLKDuNL7I/c1CykQbmeBmSlTRECziW2CRuk5g4s/E49KNF094uVNfHFzOHubNPZVkkU6aXijJjNYSKGiO7hVlixuI8XXE/VJbDnxCeD0p6/Lp0EM8cqJFznkC3XCjVtZ8lGRAmtTybX9UtIrdjvjqUD2sjUNOmEW3ghnuSyXbosNLwT/nUBY4ipSFo9N+axbPDI9qXeGEsKuWAR/+ydIo1H3xZG5QB/7CHr4JUy3SK43DiZbjM2b9sfZS8NrS3YChlSVHOWJVrHIGsRXdA8WnJ7fP46I1WcLXCqqcH1/wwEJ8KPJ7HkIjMDplOuKGpCHarPAm9HEr4bNgQ0fmfMnk28xgcFaD2q0LACUHW4NH8Dymq+mwmu7rtNfIDIdxuks/sXKbhbsS1nfixReMK3uHVSnFiDpt+TTYv58N7xHQOC3svErXlWUqAqP46N6uc+OmE/yhrXQswqzrxOCV1bhqD4haLIWH1UG4287q+rvEWkG5WyWN1/QqH3NV7HVObqrJ4Dfc0VeW6U/z/X0cDs6e6anOyGCWiDuTo4X+oY2+QZpy/ww+l6SBm6vBk2Mz6LZk1/js6iPgTuwQvv9jajP98qgIdGfhAXZ520Vk6ky1A/KbEaWQKBfnnX4tCbjZZ0RG26oGaql8bjgvpyqTmyfcsCklOFmtVL4+Ke0mXSZcNFgtOXHMfF3dMA8BPm9B+T+HiX2qaMJ3hSM45VeIqc9555lSxWPtCGJoMNUFm5RHkeMpAJRSndzSQaVFMZcRWqNwVqyZ24HsEYpggDzNzVENFlcQPym/qo3Dtrmabr64yGsrF5deAVf/6GBNvYy3dZ6CS/YGjc7jszx9b7R1z9UFFkUuZPicC49sPQAPelAHog1oqmLDY4z1NocC4X5gEO8CDCDOjx/wY9QEbHY4YJRFGesSvnIiAoBMk8CZ4y3uRMlQW6QudBGjxOrKRGROvPKr8zzNHQk0S4vkd4VzkbwgbwgqoDxMtuV+3ua++73mA1j5WWkdUtRj48Ld9PMrByMl7GiTbCoLwphhcRLHc46tyKfAVIClWpFhGl8Bld0iBmlJCpDk0nT3rB+DIVzTCab//iSxCXykXuc55AtY2EVINOGqQf020W6P02AwUfAmEeKYjJ9Msr8i2jdkugwEeNP/alU6+EnqEO+dWCD9euGtn3h/mNgDA98GGMyA1mCHcoOVfW2HXSwasB6qpwJVnyuDaP55tzBaLBb8DsyLEdCyGLt96iZfBX2MUK+w0rBmTWn6zqKPN9UE0Rnmwf9d28OnFQnrlo+lwy8yQFjShVkIXGkOO38U4O3aBx78zBubLoNfmGlHGpqiBc5gCoZTmRhYzi9tp0YhkEC8oXUQdQ5e8kWood882LSEZHiYCDGX/2xMA4vVj8FbngxG6inFtDP6g3XM+NWpQLZGOJw0SFZ+efYYb2Qm+lYzs4ynKha/IW+YS7hh+dbmiWzXlSulpN2S8lsqmZwvLgzBJy4KagGMPpB1vQGydCEQ/D8B1pBqtHMSHaLohTPHWlgS8hjRbX8dmMpiru+xvYlzAf7vew/a2sGCNmNto0o9BG4030YCkl0YwQjVa8Ia+nPttUP8hwV5pleUeQINXfSJO+2QLv0P2cp4B3k924H8GPs/Tmlv3qEoJyslgZB1ZvUYTUjhIc5N2DJi0CZjW89ClYHyrAOTZGtrey0IMF9XTmhQ5DPYYpsGna+1wFzqsQdPuAfNO+77YwB/o7E6XcpJZUDVNWeLbqEpyIMHKflW8vBdXOTyJghu+VS6teXWwtggB6OpFteGVePmmN2BRidGqDGhwKohkutPBz7/bgU+hqA08zCKO0b0YQKwYkqzMkh+vMtrXwAvgt8EcduLMMjOYplXdLz8qwIYCs1m2FUsi+DqP6rXcu0m3+P7DyVgWyjKd9yM8xFHmgWcKyhvv1yluMrwzpwLT5Nnm0mWmprzsFYzjnRsF/qR9fJEoHzjMQUJwtaFrM2mgGpHs3Xj5MSZBnK29hZVbWCdLGvmIExz+ia0dEFgPFRbMXiXDTigqjhya+q2NrJBXW3dg/IztJR1U2pA+AbohBXb8sK9ypBZ5Pu6zaCXxW0AbArxn9hPdoskgFb+gjMiGhI6DY+IyN+oHCYwT+3QKf/LJ+Xr5FFYWXUxbSuY1JbaK1wS0sWVkRh72h5Hkm0QTo/AQy3FeDIL4AyLc3X6sQ5q2fB1khTB5wYMc7ngfaJZvkzt78TWHXr8gYIiNspYdFePNzJcusuqEhwpA6bXM6tC+kgcztvxDFzdWXmcE+gSbu26DZX9Rtjw67HGlRFhNW4KfMYnNV+5Ls0A/Tx4wpDrW6X2CTaBqHZ8cmxFUvf3RjhryY1DTDeoVb0UlXFh2YAnX6Q/pAMKuahbvG+gCCc/MjsS1XCIQ1vUweC8pxjivWXALpfOa4ynBlG8vCM5quw4bci+Mq3ExKrREPEkYbEak+ss+L3s9AOA223KCLPeQLTFlXN1tKzxOFTwnyE7AU35oeH7S4QMGX5d+4MfyTR0VfyVEHx3oOIyTICYkytiRPnq/zIlUSbbecSqbSF6/c/S7zLIGEo5Tf/qbyi+4Hp+ZXVv9w5kY/5xCqsprPmxDsU7CBBjIHISk/XcfJ8M+BPG6ZPRp9rqpuqxyzHp7LaxJ5NIDj75pHB00muJZgSeas/KDrYyFfp88ggromH0Eb/lclTl1EQ37X3iPbRimADGvprQYPEIUGoA+J5gH/7prXHAmFLjAY8PrCs9kkWMEVDys2FDQ7bJVUXc+EVZD6Z039lgM78PVdXxLhHyzhYJ2PHQKpPc/iVscv5LNNvp/uJbX1/RaC4rcPHYqx/Z5iAU/2Htu8q4wvYej2sAUYHdCNQsbxgg/f8cPW9eDrVF76V5QhOnMTZIVEUxdP733yR7b0q1K3txpAVf9M+/v1TBSAK7f93J75pGr33FB/3fnQ5LfTc2/xT7uSov4jpgz+mMz2nfyCfuj+tbVduhDE/LEy1RaeFUOV6k0KTfb0Y5VYXvjW8RMUIu106B8eArzAXk/n5CbpCmmK/bLFatqhHTwuOFNsceuxRyqbSHgt+T1r/+m4EtYN/minQ9hf1jZTwSXe376qs5BvanYFUD0j7mXd+tOaUi5qMEoIrXo0PBT3qwbqKXyZVKqtaE4DkQoJHKNaEOLvBntK5fXOBsgv6uYZArJ4bHrYfrks7HS2oQScTXEOUW0LljywdZ2uNtkuey6i4Pr/+09jK2nlcH/G4SX0unCGqW9mxuqAeZUyo4izOlU1IZsqF8jSgmUNLt3yC/AtmXP4EC/nVysJFGvTrzjmvaidbwwwQkTaTiT7dbpgxc5FQGq7Lk+dfLEFzWWuAYShLnqBYPQ8Yms6TaySOWo1bSJf0iLj/X5Bgs6QEtalfp4TRWeHHzgMQITiiDOL6jKchI+KRLv9Dq+aiePNQEOQdEDORRFIxndYgirKQHnWrx1N4nITeIpxghZD5SttlYkyvW/86ylO+oRGuNvMAMIg1xQYbJ1EthSJZn1Bc8zwYq4KyyulwGrb8I3bBR5L5rfW0vsmx+/naLnn+8CABRqP+oicCuW3EbrekhLCcLc+X85Q3rhaVd2ZEJ+dNshxJL5Osl4LfP0ugtdH+V4lKKog+DxNO96OEsoDaIsOzsEu2y+UpRVLrWE6sr+m0xk4uGVe/E+Iw1jb8yT7lIcrFejolUD2qa9Yq2mbzH4WGVQuG4kBVzS4FsCepMs78Y15QVAmDu5Y2BYzCILpjs6r1kOehmp6BtSe+1x88Ag6iTnZv1YB40tm31eTRne4bihk6CMLPXZWBQSVZ6ixHB9Phnk91SKdp8QyiUYwYout2P8gpQ2hKoFt06/dewd9wZvGDaltN4a8VdSag7faHTO3m8pYq7A1DFwCrdexf1LCXsx/AVJ+wNL4Y2xCPLRl3rrcI0Nwvqgx9fuXDEPxpp19xTPU7u8pcb7lJkX6reHTGrjKmPnfZi4UOFgf76IgWGZxXk1URKlyxgoGQN+3Vk5XyKicpLt+VIGhFWY5diukosSazYyppz2NAws+Vj0sL4KHQmUPZVyfzrgrqkpTjdT2Kk8Xn+vSpNpyHuwI+KHjmSD7ncb9GCZfTZ1++bOAb8LalClDKSo8UT++SnDnQgMFCb+iDwRqyjvDftZKQVjRIz2O8OkWuabMiPPccGJawezllTqjvBDWy4CiXHh5x++WypSXEblGzuEzfsmfOmIEJizTGIQUQ+MJsuiO1p+YxnsMBQOAafngF1lYvhlKX4+ZZKjIirc0sv9GUR/aaa9y/edWfNml6iyE2NtbxfKHDgwtRPzlRsju+3JufVR1YtLXR5K/Kle6UDTMiH+BE8VPNTxpnD7JSkBHSJfe4OLsFJdR7lBW2uSNzu+Fe09q/EeAm3XZxIRqJXu4URvMub2aUdUsfLuqWo2S3GC4OmxA6Cr9h20Kl+BfgudYRy0Mx9YXnI/RR2EizuuRKOCFXIvVYzik3eks6YnrR1RVHnzK4C8UQ3+Y3AM8rcuW6tTka2Fii/GYPqAFgNTMqUvZClzGxhFCiaOFx9yFrBMZFVMNHQr77PBKVFtKmSagEBMW3x0NV4jtEcXMxmkB/EFxc/PYUZbE7c5/bQQtBf1JpVUKUTS/dVfA7Y6Xq5vmMeq6OsE8FDL0Yoi37SCZa8AyKZpVzROhAZUx20BxEx60ysCCtlV2wW5AM9a6hPqGFpLgaiA136w5axLjzmFfZ4QMZcKPGgXGH80d0xVi29EI0FZOrGSxEvn89VtEosuiu6h3EOmHGf33K3R1sxegzyOHIVCaeua7qFhPHLSXJM4c+qztUVmFvKVIImY5n6ebcgw9PwWfAX2qfrH9pBU8unyXMuebsFBPS3Ejs4WAPI7/eetUjvLKMvDPOgLwGIWbkj7GDYiQ+HobqikExKliHv4lWc6ZFcxNUV6V+CkTobabAI5bxMsndrnQvYHYVNm981mdM0Fkq9mI6HZDDEO+ocF583r+u34moL695jKn7JH8DUsJKfC4yAdE938sUsUThh+LGrvg0YC9bT/GNBO4ybOIZG8UshdgeUwOeR6OBL5TomUxg7mSUpgjBP6aLKn5m5vGASNmUN1te/Up8OxO9msuUA7rYCx566BFAGXKA7lAOCuDOxyptqIPb2cLpiMVl/sIxJ1h9MByl0XjqTljlCq3rx4oE8ygtaBvHe7nx59BQrNma8K9H2su80lK9vPskmRkJ1DUgI/YMThKXs4geqPglpZxxRhwSOeUahqaCmIwAwiWsafbZyj28Nf32wRG6LDSVrQDwdxQsEr3a+F+1XBVUFupUr7HhsbM8N0djIIwbE5tmw7eYGBWF9k+teDEi4xU0tAkvXmW26a1fQxRLcXJJylbQw17uxev1blwcdPjt1/vMISp+9+qiM2WQAq3i9LRx+JAqy76hbJrwgbosmpbRUaexcsE/y5e2OI19sdLmog+CvCgfBEBCulxucx9z9ygBN/sQPM5GxuzELMV3h0eVIwrN3iTZzpqWBb86TrsVYOPvwn2TebpjxD6yGaRLRfQ2F1zIw0f5a+NQCNFtMEZm85RIcnc4Na8+0FNLOVwOZ6d0cCxJ8TPO6Cb2XLeCwxj7EFFw0vdwNztTWVyzTb/uU+odX+OmqkNcP2sEzobNleWEOI65Tf18PhH02pA/yMn/3nCG8iDIE2yoPMjT+qRf+MdkzQhABKZHOwQNBJVZrOp0cjkUnk8vsW6vexb/vON/qL6nhCNTsgJutVzfaePgjrjpd/+sF67SG095NjHP+E8COKolRnHtEjCc32x8mLnyd8pVs0f3B57G//EQ4em7iiRXVmqR6VmzU8GaXKLihdZM8o0R8t2wdm983HidH0VnLkpcDrhis2M95i3vbNAj3S8IgW6U+J5qmNUhFG0Y6UYuaRuwFytIynWI0UtZqNFtTPpIjvBQhTHVk3ufZNQlL/Ti23prW51K011XDxkpBwOj/kXGUHCeYr9yUQzMfahp0WRv2+NZh7CrnFouEpDS978jgGIl8ZGCFxxlyTmqUkWfcK4jV1U+eTYa0NV2OV/WWt2mUkiIgzl5JK/7y6E9mNHwj3lA5l4KVXnKW71vcsAetAoMI5S4sIzLq+HOuIoovlmpxHexitFg1uPkHMDvHKGEaUvVBeHC/jhC6qqK9w4bI7UjBGowcwKES48pdWPv+e2atQonIF+gFpZVIGCPjH0gGwSrBAkiGx0bScZ/tN44nZNMFKp6xUXpGzWRxWgnzwpN5RYkgGXVD8UEP/BkkcjbYnsFWWMMplKW7+ooKIcyEHc7+uCtMyxQNnQoIzBZxnCqAXvsdioB0ORhbV4o+b+9zYIyHPHW5XKAXhHqv69hUnrySqiyZ0EYVx+2TZLnp8jDsrSq1xC9t4NVzMrOkRDjPJY2pZGFonR8UozL/Mf8c6UXPWpF0RHaVvsoejrgQiFuDss0sVp6D3u2Zq0i1fnTjTcDOnw5/jXzrmCPU4801kkyHPAhU0kHeTuwfIOiZ+hTV8hyRPqzMmCrbR5QA7EJtEb42JFU6KMSidT93blgqQ7bWJX7Vzq39a78slVFDNqF681J+Mgt48ky2aN63HloNMd1ky+qve9lMF1dCIPGl8IGjbkpfNTf0JjvYf1hI4yqCb1ibFh1qTD6JmpSX5g7fcoWuAZuZsj7lP8YtTG0zTHOacj6vw7+zbP/O+RTMsq/P0xKkxw75l3slUenqxdWpAvW7dGKuTbjXu1jRps4mwQLbWNoj0ZHId4Wi/e/RAvbn0pH+MfoJsmwfxwMd1UCVN+v/G+9/ZtUwWQfp3VCN+KS3JepEl+REMxvSMvkeUJhJ/1oKsLm5LG/IS2CBpIDKE5rG2PbQWqhSLpnkQMQ0ZBZL7EXh9/UXzT1qlsod4T34tN0i2iamy1eE0eZq1ZoHU314kLJXMr4YoFrF6KCMr3VpnUi1bPzeYM/vkdmlWwetryQFopAL1xP2nZVWppLZcpKJEp33kXjjYFZ+B+tiKU8LHFrfNivToKGmL5msQiKD4fMQB12gY8qCmWH1Quf4MfLA0WEPqfLQIadg6gv9SibOJ8ne0uUbuPo/CHKKpiN/VNUmAD/J2wwVz1nBfNFRSdB01PDOzuibu0fZHbZitWJduTAMQCxKWRUUy4GS1RMn7cecy/sll82Crr2zbm18S12rO3dT6IhQZky3s8KynvNZgz5WBXMpL68A+ecH0TcTkz6N5YSHtcdXVKPrgs7mka93/yiV+wAaxwRPm7McroNSYMWpeuzG4NZbR6m0zKosa1FRszKwUz6q+8Udc3sjpN84+Q3inYAibJ3Dk7Iflk7YRYpwkH3njAOqkyXhFBMY19dLr/8g2wZFF4bzf+XPxPgRqeg1wUrfWqL7rKQzbcEp7Qde7ifnj4LCL5BRE9+UIU/hy8h9zpUxOekTUce/7jJagAadyMRlHBHLiOou+dpEOBLP35X+MfaMaIMf5pLmpw6JqHJ6Y/OO5gBFLS+pRtxRa7BuPBNEf63fIOlhnEwGhebnUVhZWirwsUAgXPrE1jtiF7nEprRPmR+ND8iSdalcYAEI/R4GRv/HDoiD+Ktm5Suin1Xvr+epUrmhNP6iR1ZFdQWjXUT9lpeVuFOZy6CfDLE2LrDSqj3prAmMcdGoeZx5ykDK2ARdVeAfdAM3qsrpxCYHphw+pVRqwD5+FNvqT3zej16VSTYop70DNWkDIN8Vl7WIB8W7KX5ehAS+Hq/Hq9a5vkGCshfXA7kInMsA9WNd5jOzchrfhFH7aq52EIbUDJBZVEED97HO9CGj2cO2hyHYFVquYjDA335SNZdpG/ETC3Lxb2PQd5/hIyRzUCwKRCCNICdBLJgzdiDJyDuUmP1CpDrUHrRghuVvpMpXgDyFju2ZVfEc3tsJOm8Soh8UHUDFjT4izvyaB2DYyFR9ViVCJgSTqBkcaxoHoRXCHMEPGJ+o5p13Z7pu1gcAi6c5iEuS9a9pOU+zF19QOHGTMbcDmOgH+7alwaP900DeVOSRa1+xKFTiEWwzTpuNrjW1zm3Rl9/v/SUPZhOL2K8X2qRV29LvguYrO3Wet4J4unllo4SMJVL/LhFe8PNDFlU+Ivwh5xQaJqkStUtwxsy0nNj3OP2zxPztit/y8xvgn734H0kszAx+t8tfWrvMxinBmKjFp19HxYYUAugVWl6Cp+zCaOloDiOs0VZIjPSJyot6F8o3cU+K4eX6NmHORg/M1F7V1LBXCKP1xoyJgMG4kxYoPQN21JNnJp33p8eC/QC0bXKQ/+xMQUhuzrcGY6tDyTpXG69ip5NaH8HXE/IaJnd40EITMcOHTGQCTawMGbuPZOoRW9hz/9IdlYmYob2EaV0JvoWFSfFpEDXgT7I3hdNYyrHd48uFPuqyEzTNNGGFM+H70w90mbqPTdHsrlsVkYu0s49zCmaglRNTfNwp2jV9DOP5XtLpioOGYSe3IfBN+ePl9cf7xKA3YMp3/WjvB3HlG6gvsFN2z4D2kBZe3y/F42XVgBAa1bO5rFWDVwVXH1UzjcUut3FhnLhpkTVxf7vK6h1WQUs7WMio4EqiFeoAHwTmZ/61OhON9q8oo/8zkMgg7Q7kiIbOVw+X2jJu0rlSyvgguN8OSmrLR/VMvtGLvt5+ewwo7icp/YyIPjZ2GhQYnhnOIiBA08Bqma0dvN7KnroHuNv8O4ZdhcbQqrUYWwu+FqTt+PJcB3Jc5mUj8JMN4LB1nuixG1kVoENE4lEF8WRdKezabAuC7OI5cC7OJdRkQqaIw0jW71q5WY+jqdZ8aK8DCY+fr4MSVddM9O5bUKms/Gq9UQ8BY6efEFQ2hlqp4aajHIAN15xZyKp/I8E+W3J64WqVdONW38ixliHk0dN02jJrERjpEwb5GOFN8bqAEPFOVlKl2daDvKSDxZD//7KbZZpR+wmCJMLk9NZfaBHT0JSrJpPZDfG5IOZaJ3eKZez/hG0a6AnM8R9Xi5Tk2e0EVLHLhLL3NY5mzibJGmpw9ulYoVSWztrUIXZ31wlO4GmHKZtqeyAvrkXU0JDIyJxgiCWVtE8vrArcRFIiW9yE+HUB8Cr3J3hhQI/zp8Sf5s1xL0tJvhs3nUJITQZsjTSjhPFpdRzfxBbkrx5+t4oY7ilSb3davmrGWKTuOMveh+WMEuIUZ50Mu9jew0IS/n0SqqgAs3ld0oHEQfMO5TItSc5b1mKJpdGGC+/OUoVS1XvWbLpMzRFiHG7wZaTXLTojuQO0UBiUETzxsUjajtvxTY0qj42Fk4GiJKL+JRHnzRxW+wjlYz41jO9TP3FmTwEZP3xftLW4npemB/fLdXmZDQjY2f26rbQ9fcXpdvZC+FcVfkkGpLjFI072I9mIa0czuYbsVS0qxArdrQR0CZBKFuLfASinE9eKRAcRZ3edvxLJsxCr8E3PKnTW27Vz+23prermaM2Wu9D+zTQ6Exxw6MLKFKm3vZSsW+7Ptxb7Y16yu4dpvvXXIrqb+XsSibIadckjbGUupi5HLrhIo1EpGt+o9RNgUaNAama3l42biUX/6d1aJHS/pTuUE4rTmRucCWmJ7ebqNxyGUHJvKxHP2zYwbw03bLXEn695kNPH4lCuonMb/3kYT1ATx+PRfwzqNnRImrxoe+hwoY+C53xlKCWAgmVkIshoZbRw/A+Xr0+wppYc7Bdl1mxQm5A7KE9K9n7voSrf9m0IooK6fU2ajVUoM0rA8n06VH0NAA/J0oJVUlEY1tCxVzKFVR/VrKRbor6R13R6OTYEfNaokqSMDenFeYetq+GuT/7tKql/FSaOEHJ5StMoFpVu1VlS+qqKYBBojNLbgYm2Og0mt6q1eiswooSL74Jsyq2h8rSbb5H+8+jlpmhOz0/waLievAbFNvLT9SO7Fpbxbm5CQgLTIFxkuWnGTXlJv7EwwGOE1KhDXixXL56n28vC+riR6BkRamG4NA7wHrZDoWlSCMdIgNU2kK6jwf7dThKEteWoc5T0/dqF+WwaQKagTIC1TgskkqrsfWv+1BsykeJI/mfViUtqtbOLjMIuGUik9Cmoj+YssKLGTVUMPteC5PSLaFzdcYjlsTo5GXqVSyfjcQcaLVyFG6fLhWOs/Sw126G2tSuxeTTU6dUnbzTE+eNMz4+k9lPV42CsUlbJpnILHzVJYNV7oWFFW6f13VtIUlKmrrkZzJdtk5Qm4ZTOtcQ7oEzmlaazkS8GLp2SPIwZgUy0HKxly1cyk6RDnmlRBWeVzJJQ9yZA5leOWjTyfFXKFm6l5GE4nTipW5037mLFuBs6UuDPYacwPGQDwWMkJLeqkYGTLlqyc+DmMNT6dfgyNCqAp6LzsJptQAq9UR9DGng15Y01KlO2+YwccQoZxdmApHL07hUQ6l76xOitJyGaIy7kD6I6VFc5mRDnikm9JeHnrEJpM2BatoKgPKHCrays7p5kfvh+tRl/r8+9GLYlP7XmqKHvnaGY2hLMbZFxr80xGljJ653fKPQTmFHCac8fpoDzWF4I8bhL07FGQaHFvrs+dIQvwXdsrejEb6M+kH9SnBSRuKRjvWMvgdDM3QlhIoRrx0/xGTf0pZ/nE1F5EK/oVz7QtHxa0WKgbZrAzJ+y/WaF5WcBYM71VUaZ0sRqNG1Vw5Eo5jESnhtI4sJxEdmuXSfxr5mAtrWl7qVg9nNyLG8qozS74UCTiuB0aFwRbjLgyjON4UvobkLwClDAIjOEaIryrfuwfWbvnIJNYEd5PncfiiMxEiIYDmw9LNigZdAg/bCJeDlQZDw5dSpUhAl/YvnKhYKAjFA0/8o4IpUOGSRepIaOo+GYlEfemKfGNgRxVdr7wRhDc9RqcmuGxsm2+0Yhy8fz6yW0Po2FD0GdX5QFhNXIbI8YDaWfdMw+VnC3Bakl2vd3gHvDsv0wt2IhmKRaKmqiErYh0LRE3Ij5AuRvkGngzH3h6nXF6X9rSP8Z6s+zRFPBzU3yo+AKp9IXoXrMFYSr0Ube1kCmYmcrEcr3Vb8EI1XsjvDfI0PeLqZA2vCpdjLZkX6xQ+4tR/dBU2p7cVEhpurK8Py4QT8xiklO/q/1tu1GX27VB41WpMxknf7B81EN22iDdBBfPiRhzJ497bzAra9tf14eGBelzZB2aLaH0nG8opCy0Vn70FqeD4CbzpWqayuqFaChZ4YGIkxEPIF0AKwKuMDOHMSGtu/SsuBkrttkDBwyfQkrS9MoJsQWv7PgJjegFp7RrHNcwYn5XMSq5XRIp52msuEewM6gagvaH4aBpnznqttG3mueG3qfQXQuGMfg71NftTHwWMC79dAlNcQmHqVR7CAWlHuN5qOjGIL0nNj3OP2zxPztit/y8xvgn734H0kszAx+t8tfWrvMxiSheaqNruB86jx+kMpU+w6lckZYIU9X2AlSLiWjw11bbU0+i+AgEK1RhtsOT2vnzUGZAT3k1HrInsUnIMuK5Mm+nIkTe9IIfdWjCbMqSPYSKtvjSX2tmh4Ubm4qp4YVTd7XWuSafDEcmFpDrm2SGMutx/uHuBfqQybMhXaZEy4e7+6/5R9ncuVQ9UZJ5050WYPnN82YlfiFEvNDdAkNxd+RfX0vRnb0A9kR/ApIoFPg+Q5/mirv1+fjM+h1+UapmqLhyAtXcHDQVKC4d3BhcDBD8eOfv5GsMz0xjlZSFo/EI8QPKkGLs7vCQbpHX/1G6FCS8zbfHf11dHtiKPOQw6Lwqs7XPpdSW5r2HLpF7RY3IWhV/q8DErXGdtwwqcoJhPsddFLc8sQ3vbapY4mlw0uD+o7x65WHoqPWYyDNqq5jmNA7JshIBmrKTli4Eo+BzZcVGJIqcoeMcbL+0OmFEn6qVohawdGYaPunGvhTgYatOFqMO7dwK2HxmSkPw245oA85W3htDZxw+y3BLJrpLVqTwjv4S6RzQ+cRst2GsTdxNm5P0yVBcLFM1gwsxuiN2XDYKysFftQ1ztuuy/WGpWTrGyqs+0U0oo0iAPZn4j1V0hh3Dp+7hFcxzG5oykKv7TG1qNUbCRLyeOFo7GeuqAD9TrGwWzV7uhSQgyXUdnExtfFNI8bPN3U71i7nL/2iGw9V+FinULlzlDzf7qfOhU9S1QT4J05IFaRKf6CPITNZL8Ex0Ay8tG5LvsL9NETgbSrw811EkzFpwhK8Fk0epatqud6tfDuNLt6DLwOWhjbnYY4c7LxawN61r4ToHnAcD5b9ngwJ7VJeF3FHv652ZzqHW3nzuDPoeJZFX6a9Hcrr9kTfUqBVGLPnvZgjxI35kUswr8Ea8brFOQDwhlSBmfCb9u6wgPRKvIqvQLSnK9KRM9b7naGMRuRN7enOZJQd+U1D0l5WsfugQY5qgnV8BNUGhApUlj89POkUekbnh0rn5xG/24/THkSDqqXb6tlS51CmXL/v0daRC8LlIQ9yeAptGWcMu0jXFfMXt46E1k43g8bVD9Tg00OLeWW2fBJw70tWAvQ5CasyJHct8yUeBTPydWST0Cp8Gy6Z06B9L0WuFPkoK0XwsVKZhL6sh0J/HZgabgDyIXByudwOarSnTEnQV12yDViv2j6Z/5ueeYflRVGEy1zctclXQcF3kf4M3SfL9kbwmoGPB/1kWp+GscEU/0qYxGSpJyB0FKOq4BF1NWuK/zoRdSLiNIbV25xPlNi7bsx/zIaCR6DeDJzKixy52aRURq44W1z0jehV759p8zjTI+mSuJa7lLn842qVT2bDIJYQeOcTYXLRCpBvbaVxfpowXt8dR3PjM2AXCsGM0FOFBcW9W60ilzPZDn7MF5dlVM3orla5m1I8ur2/Bfnup3MkL3d4zpbSo/bsLviPxu1xpbiElZLV15fJ2ymBxrKzPUD07Nb+e6RPqH7s7vc5bJ6NxWBYiHZDzfqb5zN1lCCa0QTHITGzgjJxTwWGdETSakos/GTUwxJrME+VdmaOjOmIQZeAkYNS4YePPSDgR1bF8nEzG9X73YIg+r3PkWb9Q3Q7UukwPcXT1cBCk13wa2dq84WdXPmB/yIIwkFxS3+uRYD8ynVJWUZ0gWYAxhiNq4VopAhXahDhBFifZLMpuhjiKLAiyHHCsMA5A/kHqcu1H7VSd/ADCHDFr6eP4rhKGkDk+W+xoYdrfbg5vIbtHHGCMg0XW0pEQtXOrnrNj5O5hPti+vYDpTOCcvhUt+YFvyfr2/NkW2Joby2CXQjUXeLSAegOlAi5VRQJ2ECnY2utClxgVpctyqKUxguQNKvuCzqOASsok2bRBcHlUVO0yt4JFvdCsVsoPlaz37twhN3g79GGVj4XSxfMQ1A02eZXMPtaNXaA7cyEaZWnRVB6papCeJWs+BDhmoGZZwXR3IpY0YinSGh+dC/e+zoo0zF3fb1usYk6RD8fK3J0f0DqaghJunqJ7Y1BtL4+W6DElxpko2Df2xxvhkj9L5P5YyizMIj1et8faW8iAZ8WKzxD+EcfbQqVbkD8YBiiqUEQs8BhwczlPcQ2UY4dsclX0CFIakfBbxc03+hmv081N8+inpr23Dce/3SheBffCdIokqUWpb4hZYPqRfDaglT7VfNgRJeAb9fZAwJ4RfOH3n+nvePM9SvnRrV//OToK0UVrhKmvedYv3qlDvXrPl4BiBM2yGSY3fPLxmoQTXdsxiDbhQqXphNjsfCpnzg+OAcwbOZNv5PSdiAWcTb7gzDsniepq+YbnXLzpmhr7128PeK/W85rjKmJ8ot+F6IR3XCNFPN6kGGPVoju56dAxdWXrSqtvHmfuMkEguEZgHpd6zctxpLVOTeNzE0KvjPlrvlfMe0DS5m1o2++SAneoIMnwFLfOXOg1NNORxL7CsYQPsUdbEPGA5Bitq6rHnEWbpd/fE5tkRsU3NfY1MKWMALbkoFqaHWt05iW4GJgozBfSNwYGDncqsCBa6t12f1KJCwmw3t7EoLEP8+MHG4XLC+rNbQ5FABafdQO0bHWCgK29faQ4NusYK5wee0lUx17SUuSFXkeiLEYtnO7dIRCVPTFXcAMqTSJR+r7YQ9iUM/HVZ8Ge1L68GMo+J+oZ25yemv/dqoPbbg583X+k03hr7//HUcdWorPxurM2s+bV89L+V0HlS7ox6UIZuZMbYB8he0+1VZVs24XmU5fg5Ja/2QHORUe931L/lN4NLzIimih6tlBo+K3IjcQZtJWL6xW5F2CkrLFN3/g2TsWnq0khTtzyRi4mBpWmq/kHwD/oQIbs88abvc0U8nlJRewd7JNfeq/rYd3WxwPMr2Cou7etY/2KFwS9zlEtzfp6uK4Qm+QP38kfpt8seY4ufaFa7HIwUH0kEChi+fROWzvctJGl+RAJdZZIw+WiuBU+NOk8utF2H1EeMH6V6Cx46qRU0ejWD+O14fkTvROd+orpNGBY1CdJnhly+tOQDjUlOcbQU67Tei1AEazVAE6bdIoQNnS5Q5sWABPM4PD0S0/QIVi2bhpVWJACFh+848zJqYVQhdW2ARWvBHif1oFyUdHaSPpZxUbqfcvIMRM6BY0df8TgBUrIcNEXp6YqZgA80kWCC1JC5SzSsM1NMSFykXupwplLS09feUC6JDAY12P8jPDhWxmCiarfGq4n6lQJLDlgAXhYPicUdEh0rDE0dDmX6jOB1HC2D1Dfr/RkXEKvpK6dFE+2Q0032PtXlIQUCzEbrJFXaIet+fHBqDByHbZX5acpvJVXdvNg0PU1EYr5wSMlHaMQjO28Q8jMb1B67pYHrkbiXek67QUGIYLKYCvmx4uN9T52+lQNFwuNy4iw/GWkxpH8z1PMMpYyNakn0Z3vbFcuainIZVlCufpe036Z/TyHS7SZe5g/UtRo3aAIw4uT4aDY00/5m9yZdHFEX9xK0zAFUNm2dCrfk8D/NJO22df+a5Vju4FB5dtk5ZTGZINc/HmP6tdPKcfLn16WLzSDXh/MB0SWFiPaZRC0+cdDiTQVFE5D7mbgAwotPiJ9NorMowvyXvOQv/ujz/dHPYIZKuqnoc4tw0Ry5iSePSA9TnYXHcfjbBzQirDCK29/4LwWGaQDSoWA9y7G8P2C3qtqVoiwjGgS2Qha+unTWs2aq+uXHozp8F8DRVUdi9AIx5agcuY/uw4Vzdl35B3Qv71L2RxVAbyAykDQdIfLDQEVQeTFNfGA7bxDyMxvUHrulgeuRuJd6TrtBQYhgspgK+bHi431PnUlChEp17rCKP0dU32r0ueoRZ9wSz8MHCxydwILma+CDjbSkQ5uet9Uv+zQ55rfGhA8yXq5mFJQ2Wu/yT9XrMHB+QC1rqcGKnRIOtUPGtW++/HoQvAtxl+mIMu5N7y2SWNT5lGFmvZUtuXK7hJduz4v/Ye5scP5Np6fjI3Ob0aAXDsffjruj8Vg5iTmVV9Xg2BX27oIatndIzKGTOXmAfRc1kBTyOB1SzTWLJqe9wV/XMJ1hXS0FK4PvIy+MIwvdB7FtfjG8ZgKYc0XeuA5rj/xSg/WOAq8+sUVVaaHWiR8ewr8qoMeS0b1HRGz84yqjmG3KpZur9d6CDinuuu80xaEv736c2OFGM4VdPl56BRWNu5OTqKDqmTpKrYe+uuZDG+1Q751AELsjE/0fv8r8yVOzF+zsDOnjWwfZQS39yLdT36xT7wa+AeBbKBiIzI0hrMgdcGieTah3MyGIWZ0rjp5nnoaf7ZhmyXDI80BZULEn+vWuLFY5aVm1OLr3NCf/gLuZuAuw728U7OwlKNbYgKuiqTlm4DrYWiLH8w+G9A/Ju/mI/rWVL5liN/gfUJoW5lQcf9p9FnpA+NfoyfSDjf37VeM8kLaTMCd4kAA9YFaeRDYrvrl+YRaQcU3s6q6ORdUc8W7zqOhDy8pcyhfoQPzmCzdQyFX6LZ5l/oIyNyvN7uRhcl/8Sf2d3rBDi5h6fV1vOr8CbHa/95gCuItJOr0IUoYRlHCaukzlmpikKR199ccui+gnSZUeI4JP1XRD/yIHvEGFRaljtxVqll9isx9t3Eu2Hv6t5/UWeDjXq5DY/UjE5I3wUJV4FOzkRW5pZQRAZweBzTnS+YeK74Lr6o93LUqtbmrNcsV+ETh6dNXmfP3+vqxQgcdC1X8Wpu4kWJ8wVliQpMRzk3+jdySwk25dIjpQKkOQp5h62Ae83QcqGFdsQ8tbNfgH+ZO8jW8OircG1M4sCZ8bEaqGd2qTySSxvFtoweTAB6T7KJM5s+99w8mr52Me9fjPneUa8lrLC00OXtUya5a2mQpoScPvdLHRfbuJHIwG2a84dabCYEBWU+M7DdD03a2/lkTiSiHzz7f7J7VBGqRv2XXBA/w52I0wt2xT4SNYpuk4msTZUwCuI4yMue4hd8CmXQxtyxisTogb7O+9UWoyLYc1m91sAp3OWq9VtlKEKvlQ/8FkbnwaUrZuqIlOuLhEBQkPpMz967f6CdpUVwseOiRi32ysRKoCvrbGV8HTNloVryuCI7TQdtQWTNKimh2in6+X+7YNiaO1ANFXM6GnXdvdV2I/73WC9/pfNKDvVVLcu5DQ+yJ0TjU+p/C5vgl6BoTsan+3YDaFvmj/+q4zpd2uA9bioYec4ZN6/YTZnz/05zLXDOdMUKVr7d9HoHL6BovCY4z0oIuzMX9NmBBGmPXMHd72k3bB1lwavfCYxuQ2AxNrhWAdM4lRvjbLPOrTNXy5wXrnW8URPZ714lTgyEq93IESZe8JJ/RNLltl71TSofsBeFk3Ha81NQ/y/fHd92pD3CV8v/NO4XiLcahlS6Q5op+d4Br+V/DnU8Eu+G0OxlKEhb11yn60Wh3yk/5RZ0KmftDpTjHOmLWStL85lGWaPd8JuEmhwNIgSQwfilpQmxYS9Kab7pbjtUtReKhsgLnC5vBQSvVOLM+eYvDD6bHjzweoARX46jxfq5D10pRCUuFr51uncGRvf/RBfcflTzCwFWOwVVKBRwZADCYRhtR/vNQx8376RFThpgOt/9kg/sdDVZXnpizh1EvTOECQqV/euK8wIg7H3467o/FYOYk5lVfV4NgV9u6CGrZ3SMyhkzl5gH0XNZAU8jgdUs01iyanvcFf1zCdYV0tBSuD7yMvjCML3QeywjG26btdcXKzZG6anv4NCRpbYs7X76BGL5/0djWZ1rEPgVtDj6OiUE3n+nuSx6MSFaMKdC+OP0+HbUcH3ARoQSbxDBFvdHXUR6H5RCu5UgUZFcsasz+C/zpsM8LHpKLSGXzctUcKFaZyqq0/sZm9xUuMU6kpHbkBkEnDFoJ68DoYP9LluLQ9UK9+ceMRDpOsHMDo6lBSR7g4we1egU1S+KaqOROs0uBjpw4ADQzkjqERX3Ki8Ftl/GZf76XXlmVMHFvKlnV8+GFk7sCvdSPs25bEwYc6FUrLsla7hiv/fD9RCC/RTZSv1xjikrLTEsV5Xu5DLbxgvKU4k+pXaJAsXdVaxT+CdDJKFGeBa8YZ2YuhbbWQd46LLa//Mk6GGL7+hJcig9OMsda5OgDph2sC5lXbW80FybeWuaSWvYKZjkNWJPWgy49EcGaWWp16IgpoIobj0r1YuizB/PZnLF5AazM5RkLt04juy4TAGVsBZq/pn1hJY9WC901vcQsoB9a4PBANKP7hnXxu+n8CEgiyOJnZ0aApDwwuHFcZ/UfQK4391bqKssU3flr5mG51C1xvnlsUpT7mMLdAhtTAaB3tOI4vXCqk6pZ0kSu0j/l5hce6CqpSYMzMEHZJDWu8JhZydN31X9sEgJq9cqx5rCzHEyHKRsymigv/POhsZ4RzOlaDPqJit1mwBJI1bqOyfhz9qNfIvaDufBX5Oom2tC8o3vR9d/BRWFbOihrLkKwD3RwSQeqMV1kMC1gn65veIBMXLhqVA8RKLTK7mUFZzPlfB7Dl+LLb1Zo1e5CEEd2P86zxD93XTBD4q4Uh6ir4kGzJRMkUXVKOvHV0jGoeZdLAqa3WgjEA6oYFm8e20zD8wWkdg7WrT2xdr3WakJpvx8l+Wg/MkzA+LHiCHnq75JNbFgC8UYod2MBY4YpaGPSvoqO8yuFHRA6MLaKEe2xQ2bH4pxcPDI8DHtiarYZIzaimK5LCNwj1VZPz0IIFRSsOPZRyIo6Ffl0jBaQyJMwm6WKbvCwufKxJpRViXzCEhrcPi33b7HWIfgsqa0oLCmJV/2qcy7xEMVDVNAUQpPS9ByUjfhxsKmMM+CdsRRIv8NWCbeDNVYmes8dwfnIC5gYrhS7PQF+qvhQX5aH1eIwcpGSawsYkVtkEMy2CX1ZGKiSsLyhQ++r43UfD2LluNE2+1ASp90txJVRaW8uCEdqxxy7rVOHhLEIwU416aTmvJvF7P6sEyLDC4A2o8kA9+VEcc6Pv4HuuN9gppeQmduVgPBMOKYvndH5jqhy6r5QYt2cqQyUbTM5Km0SwQHTLyXoMAM9baGdwxntZCcxnCc+kJo249L6ciXVzZMxPAxPqBdRzT6/dLtgWbrXWR+TRKDLheXzDJHgirXFRRbU7gpi/YWdQwC5qYOUOj3g5E2krleqQNvw5ZecUI/HiGFH+s74fIwZL55mmzthWHAY47fCcWbOdZVTXMWPjn4MIAgdAdeCHv5afjsQDJ3j2i8dAV0a8nq/jsHIDbuq2dcH2S8ky2ZkxYFBVtjU8A7z6uDKJ7X4cxgJg+SC22/UZ86q0Ahb5xTpdIX6eKoGKzI6JqCrafOrc0PKUQ/ebynRj4DBJmBp00/uC8vUFsR2eDxOMj5P9Oj8AFsF9QNy+dQhRJ4IeddU8F/32jTfK8wqTHtsy560gPRQgiVinW9mGdBM5I+gFV/tixnKOkE98jAZo/FebJ6BekQ/aTFNB7VIs10W5lrBS15r4dsiyLH7S2AgclJfDB5OgpeyTtZlTjaxebmwX1BKzyrXTsi6ozct+kar9j5RzoSxnovrpdQhyFaeDrH3WQEaIwljWri/l9WqDJ+Mf2DRJ5Ycv8Jg/kHV39UzKtDOxkf469ryczpj9jCUOW0PgNMtR+eXnbfo5rujVU6o3Lj+BBtXJeM3fxbpeWbqGgatxY+hasRB/03LYtdPJu1Ey0cF25/SxaRYVZ9bT7fBnsIgpNfmt8DzxDsDZpNZIFLUXRo9TNj13Sr3n+F4MeivdPS33mjtzmqmtaadcf9Yi7UUkN8UKuViWBiPrNjpPZQK0x7F0CBFUC4kAIHiilL+LMDnJJaRIeLKPhw53pGGZCbEic8fD7OmjKOVh7O3f4Qh19/erz1u8vq6ThbouS5LRkxYL8fgS5ueH7EbqxPiOMVOJbp5h/00f4f1Im97pd71LXAXzT9vq2IR0SJY+IogPLlIWgmqQyCAWxVwMFfGL/WHfwKaCmaUP5F0X5OMWgWylZIe3OAq24Qq/iAfHvYJAxJ5xjBHvMuUBSNi2M4bZTGXUcUsq/7ZpQP4PiJAXr8LJeZpb7oA4jkA5FGYSSNZy6QJ9BpaWXtyX33Ixu+S1a0Si9fwrNIcv3UPBXO0qq7PrvWwGQngk9bHAMibu7yaGFz3W9JS3CV4d0l/kGwsFg1RqsD4u8nMLme6XO+Aw+Es2kq4HxZIFLZCHNtlIBDjTaprK51JyObk/9Z7RhPZ6dm/BTUK7xyventphm+tPlihBrQJyDpFXwQNoWVyuh/dl09P4AQJseEK3oRTOMNZVP70u7loUZ05XF2cPD9tew8LFMj53i4HQSRBt7nYanKY2+hoNpjpl/Yr/hZCTSsGDeDbT8RIxVY7wxDkQ6DqRAAwC3Hd6IlCGl8nMeh+BaVty2/Tg6NH9/3SzQ23Fh+/gEtlBofAI3nU6QpuGQfc3tw2lJaLOh65ti18xguxSVgY+1dcaWX4/KtcCSVpQ6xfgNcUNn2PRjm6yFn/w1IFOT1BsLHKW6gitSc4ogYBA7C/ZmXnQMQdpJoRvUBN6kAsDS3xVeG1Q7XZr2LFgMOVw67AoOXfoyM7T4Jb1m02nlbpVi2wvU4jhHbWXujfenwFC5/ExeSeeGtZDjCtS2qxMnQwz58UcgILmk+DwIYrI7rTJMLn6fWATg68rHDGgYRHvs4z+oJjfKfvKXgdN6truXPHMY7nN7gatSiKQeh0hS8HY+3SvMep6RbNU1+OxTeJl6CD+gU4iKUZBrGqHqSkgEF+Ckx6wTX6kaUqcCNPBVRbXr4DgzsGFxLLX+w0a/6FzteRWkv2cPiZEXBobTE+hW6dEqH5L8jW5yFfhgmslGGPdeR9TiL31ZYdMAu2Rd+mfJnwAjgpDLSnx99rZTc7A9/YfaGWYZxhs6Heq59U5k2IoYxzLXCZjqbOERc+fHEYbiQdReWIuTFrbYG89Z0CuA4YlCGJkMv9MUMGl1qUo8nkjQijFBRir2MZqA4fX6Tb2RVwcpmAY6gkWAIoGXE1M8pRa3K9Z1ezJzu7NxpWeRtM+54C4ycODI/y+VDWBCWCa8+VxqfdZ6rtm7jxzSgWNnX+rT9TZq6WoAwDHKIW1KzBn1uLo0w51r7A5+TViCCr1U2trIIdu9PcWyBCdxt/FudJcEpXJhghYi0UaMe7F6JfXF6baKAMkMewPo1tOKoLpy12KRcM43hZHJ5R9kYkEXxqeqMRVtZ61P3jMNg1Hk4JO44Ue5ERzqIBowIs56Zj936itUaKIIB74pFAeQDRGQcv/Mnbc4xZDe2ZqS7ulMMVPEkfNOgGK+TPT7xCecwWzru3LFpvKQ8/dcezG2pcWSJUGNwmJKvwWLZZ/i3+aWeIAg4tkQqK16j3oqUH0FoCZu3p0EOyVwFm/qnpw7A7g407T0QZo58nMcxYPDE6Vgq21judNagDXHGEpKNE9XUBM0kA0jqs6x2rqX5M66hPtecplokGZxL2Ufg4mgO8dj8t2EuQ7Smdngvrh9CZLRSkmqpKDmcL/rXrPKuF4ucwUr1pzlZjCc07H/m+zWSW7NpFNtLSd9Ya5ezziLYBM7Q65G34ylHs/vbwOox9zOwrkLkaAgBUKPsM4mFttmxstkMDd42keaNwE3yxLhZ+wCVUnjODGQM46eFCnQG6br+3fpK6ShMAFHpIRTrNluxewtzbyTTfQD8VNp50wCVFYyuXykki5y8eKaNqKJ1P9s1DPVS2WwWB6FLfiinoVDt/xv4uVbId76jV20t8EyZuxRhriEW9/nGEoyd07ImhFpq0KgzNA8WL3uBHi3DcRomNxSe+vZxiB4eZB6Ut0i1aNQfS4/fBPbO1Gd+/SglU++2IRU3YzuuH4kLVJ+90dKMLiRS6ER2MhEusc9IRHzXy1MN2MRM3ObMdoAoUxg2m7QcgeOE4qjBVC92xTelB//GjatLbaNOBOcXbP8NssD4vCnUDVTyIIqCFpu7aM0WzaSjLuDBlugyMxEdkdfeuK5D5JaD2gtwja+N1bXtCL/mseeFFg4kFpZ7nUPsgLgVvJO8o7El9BGz9hv/1ecckbyb8nT1Ij5zfHjgvbXFbIku5VGqhz/F5LzB/Dd7kIr7V/1pt8cqvufpgWHcuAjeKxzxZetKxRXYQR4/2Z8ONqzluYVNr7i49DknpvOBNLY1/BfKWyKy1oooT/Vqj8krXcivMJO1L+UoCQ/H1sACOuwGnn9z42Uq9QnonxdenV/qY5fAO6jPImEvA6hOD/x/+OFNk26UmTswnGrs/03qxhVvBHEPAnAFK+XhTmyK23dIppsAlwvPENHCu6jNXckSW6IdxERkj6QnG9XOR1LmGWMIla6RJR4Pkgyp2drnaQBVlVR93Md5yOIm3i9Sp097mEWmY9DGweLE2xzxDKHgUdcSZ+TnXyV13txVi0NSWMWcBmCrm7UlKD52NXhEMlEVF99zSTbNnronKxynNHb8zHlGwTZj2W5LLrnCgUL0yVzWUHC8MlQOO+Tbh64xvzvzQKJGlpL4IL/R418m17cXfnAGFki2Hzms/oXvRzUZTXpoCZSs61gUBzWL5Pld0zx7kM3HU/ugBKcTMPzzv27rZZ0jY0r5QCg0IqCiXGhIRvr0RGqk06E4nYR3BmNMLDluY70qhH8VMO3R/ejUk7CkPridnB7VBVYNKdoF9x5f6Po2E5/sPGZrHJQRcrPE7i1HvkT6uaX165ofQFfkBuVrwC6w/i4Z5OKqO6q+zsWSqDsY9utxmBGO/pkAZSQbufBfT/LdArLkxECf6W3ITVewPI6LgHYzmEVtfOj69EuYKZHdKh6e7HE+ghhohC798ck2yVNrGeIgMgfWKOmKNhdWsjOPh8O3pcaKN6R3B0qPaMtwRcDJM2nZ2zjTGs4gEM52USrJmFz0ulBbhvZmO3FM25L9+q2o5m8/Z5tobxo+p/Lx56JnoAKje9WyL0SuTIA8CNolywGeNvfskniXKs/jZkl+sYvxcED9I+ry9nr90FPEm0+5oq8W8DQvzjn8DlN5B62TQ7XAOnzKQJljyw15lFQmFuaAKDb1ZAge62mXWSsJBO+JjFLaCvToL/9DkecoWryk73C/w1vvHb+2o8Ys0lfPzcrQFARUzY4jFaYDCx4clj02Oxfe5Lg7AZb0hQPHRQM6Y4yFZLCtkSjfqspyiMj9+PJkiKW+A/nCthOiUZmF310KXO4j/LCov/v0V7rWrLf/stVkIzM6wIavIdtfcDTJVRnV6xRE5LK0MxELEr899I01rUASAT/aXd+XIUByPxeKY6zSrbZBFA7F21w/A5HOqLn6k75z66P1Rjs6HHatKT3X1BqQxkMkp+Njpz08SQer+x6OLnKZIaFTZ3IiVo2sco+wTq5H8rZ6rFA5aeO0yUScKHsMqH0Qn2CtBGYBvEN9zsrrQxui+mBESsax37tzFdmDJFvRFy6EPn0+FbkIJ2O/LRBOilwU1Hd1TAOYVHoKV2Tyo3OL90Kn9HGC7telheiUDMcgeHHdX+qfHGS9f12Yub3Z7cMDeA9gblqCfkYNaRtLpCj+8iFTPW+dDkHtVRyZtBuQPjB0y09+iLEQJq0IjafFEnMYI3sNP52tGcV/NaDXS2/G4p4owL0lf3Gf1TpZTsEz6AnbxMNkZ+zq6kGCfydTfjPkZF1xsti/1gSjlG/nWM8xHW4wjALRrUc5MfpZNxb0JKjyzqAib+O8+zscpppZS1Ai/91ZImQAa+I6lSjN9vbmGdMISk0u0fK5pAdoaFUVmuLCM6xk/PkJsgCsF4BWtKw+A1RszS8XxDCulxEVZlFTucQWneBDRcNgqtvTzzA7i3Z9VB2ulqrM2xIeSTXyYEEuyeHLkC6SYFnnEp2E93HoZhua4FkGftf+EfveYTMQZCPjkqw4kBnYiUXLihMjbiE2FAlc8GnlbOGwmsUjbQwcaF+mbb741+Vm4tRColQMDRzQ+70WdGMWTk7Swj5iYJjBCZzEAa28VdOZrZeieQcU+VKk+JEwU3BOSsxhlKfnxSvlD9ZoJ6fzMes2Ls0UsfWKuqMPB9bmZ8F1C1FpHCYBsIb/5vXJmNlAGAe8Ow+2jzmSCise3WRu6uVen8SzZEqGOGSbMmUKD8tHGRJc8uBZWKHsGeCKcULCBFswfHEGFkjc/S9mLY68NdZU2R7FqNAieZjPImKLk40nI6i4UkheRlNqW8eMvyYoFojFPeMjYuHAW7CTioOmYWcW3GIG3rT55Ck245C7LlzlTTxEFJYgfac2yI8VekDuU3Sfcm81QReUZU3JlX/XwxMF8n4+VVnTdA+6bgYdUS2hOyXVrBKHZXOvbNn1tmwVNFSFTR/8h97Lt5WsXpDPsTksrlR+yRlHRTlLfzfi5pZmnS33GT7wzlX7PteJNQNEumKIq1PyNuZv6pvrHBoYt4lhWE/rcfoHgK03PlUSg1NoR0FzOWpW0jy+meFpoFiS5dnBfDDPtNo+nL5f/PCbAd+moAcSC+pHFKuM8Q15swNL0ebctLCWF0cokCE7YXIotTBgYqeh0Hy7UtQxgDUB7BGBox97xSKaE2O3ShpJA0J0IpwWYIysesZXrj1oVNaz/SmQPUMDraukWgunc6u0FWa6q4eGln00F71aUT7I3exukb5RLBHkMOeCaVSc6y3uYQud9NqWbfVtpmoBSckqRQ8b+60EQmYLEA2smu60mgQndwmjkDXxi6SGOgdVrIK3ytZlbMMz5/nQcTrYW52Ae+pmQlbg2w/p3U8Y79o6F2Rt9+XpY9k4Qz6Tbs3mdUh+7xG5sQaEwlTbwI9NKJuORbW0jqv9RBipiZESPqyP7852Ik3Om+tI0eQkNQ9w+82Puh95AeGscYl1uxQP6q+eZAiPEDxzzWhceveS299hdBaKKL1w4T1K7pYIBTB5gkaapqib3a8UiY+XkuwU5+mUU3UMJGPnxStv1VzpOVS8yKa6Lmj0ZRE9R1SbzUjhEA5DxrOHacf2tGZS83oanTnkQj7/05imdUsernxEwzxT/xQ3CQrZif+Ijq+Cd5NgOxBO36eRZXjnJdv0knBTmvmC+d5fBHp1JJLuBkBHWLpYTysmaA1SYhskbih/inuRBEDeYW88pHnmFmokXWUgyzEX9wEzVTYkeZ5OYRRxUnSIFx6E7DDGJ30g7AXbtYCXKNMQiUixA0/szUe91QrYmDZzwrKq1WLSlCyjd9o6sqJMiqSKta+cVeo6QiVzARwBaXXygy8vWFBIkkZDyUxcekmJWfPKAQykaD7EtlPr1DWx39Ddb/LLhzv6vc4m1dcCQMLnSsWcsgk9UOO0tlQRq3y7Imo5wF5Gr1e5EW29TPcfU6AmSrIl6A2FNL2/Q4pFOgY+yhhCPxKJNCv32QPqPJSHddI8jRappyfIvUXIn1Hj87R/ETJqtMjPDzNYhlXs20p43QIJjV4uBjn+aSCW/Mj1wPyXMI1/fwbIOg3fXEG7V1GkHk4VIuvOvpwhDOlrb66TtCXODQY1n3994TW+RNsXMAdgObVsHaJwEOq302TV2WgmTjNlLICVY5AbW0pBstDbbjzbYyk2Xw0PGev3u/5B3vL/JStd/PnIfXPskRxz4Os+kDF/9b/w==', '53fb4dd1');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '', 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, '', 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0),
(4, '4ac81ee1', 'cdc15f62fbc2a575515cc489a7050480', 1429279357, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'INticzZTHECI2CllQIruL3UOa6ZCtkgJc1JV1GKt1zI=', 0, 0, 0, 0, 0, 0),
(7, 'f1221a7f', '8ae5d043205e82a0ccb1a1e53abb9da5', 1429365870, NULL, 0, 1, 'user', 1, 3, 3, 3, 'videos', '/5eVsdIw7HFUfLyvxHAy/jWSjJpjCqd/PFliW1xSNok=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1),
(4, 1429279357, 4, 'user', 1),
(7, 1429365870, 7, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

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
(15, 'drive', 10, 1429365871, '45bd766d', '', '2e52f78b7d88ddc4e9782e8c10eb65c1', 'LbxHThsMmxE/ufGr6oo5qhtcScPQledSmj+PU8gAr9LaoT9sIzUQGDmO8zzJjRDwi6T5zJNWGxcXdk2vdThZbw==', 'image/png', '588af2b4', '2f4861b1be3231110a218f8350fd3242.png', 1429365875, 36164);

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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

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
(80, 1429361980, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_replay`
--

INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(2, 1429253663, 2, 'user', '1', 1429948840, 165),
(3, 1429365808, 4, 'user', '1', 1429970613, 1),
(4, 1429365845, 3, 'user', '1', 1429970645, 0),
(7, 1429367947, 5, 'user', '1', 1429973094, 15);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
(7, 1429365883, 5, 'user', '1', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=505;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
