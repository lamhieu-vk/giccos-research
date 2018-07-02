-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2015 at 03:51 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `faces_id`
--

CREATE TABLE IF NOT EXISTS `faces_id` (
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
  `age` char(6) NOT NULL,
  `smile` char(6) NOT NULL,
  `glasses` char(6) NOT NULL,
  `sunglasses` char(6) NOT NULL,
  `eye_closed` char(6) NOT NULL,
  `mouth_open_wide` char(6) NOT NULL,
  `beauty` char(6) NOT NULL,
  `sex` char(6) NOT NULL,
  `mood` text
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `languages_list`
--

CREATE TABLE IF NOT EXISTS `languages_list` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `code` char(4) NOT NULL,
  `country.name` varchar(40) NOT NULL,
  `country.code` char(2) NOT NULL,
  `supported` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages_list`
--

INSERT INTO `languages_list` (`id`, `name`, `code`, `country.name`, `country.code`, `supported`) VALUES
(1, 'Tiáº¿ng Viá»‡t', 'vi', 'Vietnam', 'vn', 1),
(2, 'English', 'en', 'United States', 'us', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=850 DEFAULT CHARSET=latin1;

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
(50, 'en', 'username_or_email', 'username or email', 'false'),
(51, 'en', 'type_password', 'type password', 'false'),
(52, 'en', 'pages_accounts_register.title', 'register :: accounts :: giccos', 'false'),
(53, 'en', 'pages_accounts_register.desc', 'create a new account for all services', 'false'),
(54, 'en', 'type_your_info', 'type your info', 'false'),
(55, 'en', 'checkbox_agree_terms', 'agree to the terms', 'false'),
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
(333, 'en', 'typing', 'typing...', 'false'),
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
(429, 'en', 'male', 'male', 'false'),
(430, 'en', 'female', 'female', 'false'),
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
(485, 'en', 'do_you_want_redirect_page', 'do you want to redirect the page ?', 'false'),
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
(520, 'en', 'PhotosEditorPopup_footer_text', 'Photos Editor &copy; Giccos', 'false'),
(521, 'en', 'Explorer_footer_text', 'Explorer &copy; Giccos', 'false'),
(522, 'en', 'PhotosTagPopup_footer_text', 'PhotosTag &copy; Giccos', 'false'),
(523, 'en', 'question_photosTag_close', 'do you want close it ?', 'false'),
(524, 'en', 'data_processing', 'data processing', 'false'),
(525, 'en', 'remove_from_list', 'remove from list', 'false'),
(526, 'en', 'remove_photos', 'remove photos', 'false'),
(527, 'en', 'comment_disabled', 'comments has disabled', 'false'),
(528, 'en', 'reply(s)', 'reply(s)', 'false'),
(529, 'en', 'show_more_reply', 'show more reply', 'false'),
(530, 'en', 'write_a_reply', 'type a reply...', 'false'),
(531, 'en', 'please_recheck', 'please recheck', 'false'),
(532, 'en', 'go_to_home', 'go to home', 'false'),
(533, 'en', 'redirect', 'redirect', 'false'),
(534, 'en', 'giccos', 'giccos', 'false'),
(535, 'en', 'secure_by_giccos', 'secure by giccos', 'false'),
(536, 'en', 'remember', 'remember', 'false'),
(537, 'en', 'active', 'active', 'false'),
(538, 'en', 'forgot_password', 'forgot password', 'false'),
(539, 'en', 'active_accounts', 'active accounts', 'false'),
(540, 'en', 'get_password_missed', 'get password missed', 'false'),
(541, 'en', 'create_new_accounts', 'create new accounts', 'false'),
(542, 'en', 'login_to_accounts', 'login to accounts', 'false'),
(543, 'en', 'type_username_or_email', 'type username or email', 'false'),
(544, 'en', 'type_email_address', 'type email address', 'false'),
(545, 'en', 'confirm_password', 'confirm password', 'false'),
(546, 'en', 'retype_password', 're-type password', 'false'),
(547, 'en', 'check_terms', 'check terms', 'false'),
(548, 'en', 'that_is_my_account', 'that is my account', 'false'),
(549, 'en', 'confirm_your_account', 'confirm your account', 'false'),
(550, 'en', 'get_password', 'get password', 'false'),
(551, 'en', 'pages_accounts_getpassword.title', 'get password :: accounts :: giccos', 'false'),
(552, 'en', 'pages_accounts_getpassword.desc', 'get new password, find accounts', 'false'),
(553, 'en', 'pages_accounts_active.title', 'active :: accounts :: giccos', 'false'),
(554, 'en', 'pages_accounts_active.desc', 'active accounts, use all services', 'false'),
(555, 'en', 'type_code', 'type code', 'false'),
(556, 'en', 'code', 'code', 'false'),
(557, 'en', 'confirmation_code_not_exist', 'confirmation code does not exist', 'false'),
(558, 'en', 'type', 'type', 'false'),
(559, 'en', 'get_code', 'get code', 'false'),
(560, 'en', 'recheck_password', 'recheck password', 'false'),
(561, 'en', 'recheck', 'recheck', 'false'),
(562, 'en', 'terms_rules', 'terms and rules', 'false'),
(564, 'en', 'repassword_wrong', 'retype password wrong', 'false'),
(565, 'en', 'less_secure_password', 'less secure password', 'false'),
(566, 'en', 'file_upload_failed', 'file upload failed', 'false'),
(567, 'en', 'ask_country_description', 'you need to enter because it will help you to easily find more old friends', 'false'),
(568, 'en', 'dont_have_messages', 'don''t have messages', 'false'),
(569, 'en', 'create_new_messages', 'create new messages', 'false'),
(570, 'en', 'messagesPopup_footer_text', 'Messages &copy; Giccos', 'false'),
(571, 'en', 'send_to', 'send to...', 'false'),
(572, 'en', 'it_is_tagged', 'it''s tagged', 'false'),
(573, 'en', 'type_name_messages', 'type messages name (default: auto)', 'false'),
(574, 'en', 'messages_not_exist_maybe_has_deleted', 'messages not exist, maybe has deleted', 'false'),
(575, 'en', 'may_say_hello', 'may say hello with they', 'false'),
(576, 'en', 'not_found_old_messages', 'not found old messages', 'false'),
(577, 'en', 'loading_old_messages', 'loading old messages, please wait...', 'false'),
(578, 'en', 'seen_at', 'seen at', 'false'),
(582, 'en', 'private_change', 'private change', 'false'),
(583, 'en', 'view', 'view', 'false'),
(584, 'en', 'rename', 'rename', 'false'),
(585, 'en', 'language_settings', 'language settings', 'false'),
(587, 'en', 'choose_language', 'choose language', 'false'),
(588, 'en', 'language_name', 'language name', 'false'),
(589, 'en', 'error_when_update', 'error when update', 'false'),
(590, 'en', 'updates_successful', 'updates successful', 'false'),
(591, 'en', 'please_wait_reload_message', 'please wait reload data message', 'false'),
(592, 'en', 'you_may_find', 'you may find', 'false'),
(593, 'en', 'conversation_not_have_messages', 'conversation not have a messages', 'false'),
(594, 'en', 'type_new_name', 'type new name', 'false'),
(595, 'en', 'new_name', 'new name', 'false'),
(596, 'en', 'translated_from', 'translated from', 'false'),
(597, 'en', 'translated_to', 'translated to', 'false'),
(598, 'en', 'comment_limited', 'comment is limited', 'false'),
(599, 'en', 'not_found_family_members', 'not found family members', 'false'),
(600, 'en', 'status_from_family', 'status from family members', 'false'),
(601, 'en', 'feed_family.title', 'family :: feed :: giccos', 'false'),
(602, 'en', 'repeats_today', 'repeats today', 'false'),
(603, 'en', 'status_from_friends', 'status from friends', 'false'),
(604, 'en', 'not_found_friends', 'not found friends', 'false'),
(605, 'en', 'status_from_same_country', 'status from same country', 'false'),
(606, 'en', 'not_found_info_country', 'not found info country', 'false'),
(607, 'en', 'feed_country.quickdescription', 'general status from users same country', 'false'),
(608, 'en', 'not_found_info_live', 'not found info live', 'false'),
(609, 'en', 'feed_live.quickdescription', 'general status from users same live', 'false'),
(610, 'en', 'status_from_same_country', 'status from same live', 'false'),
(611, 'en', 'feed_live.title', 'live :: feed :: giccos', 'false'),
(612, 'en', 'feed_country.title', 'country :: feed :: giccos', 'false'),
(613, 'en', 'feed_friends.quickdescription', 'general status from all friends', 'false'),
(614, 'en', 'feed_tags.quickdescription', 'general status has tags selected', 'false'),
(615, 'en', 'feed_friends.title', 'friends :: feed :: giccos', 'false'),
(616, 'en', 'not_found_info_nearby', 'not found info your position', 'false'),
(617, 'en', 'feed_nearby.quickdescription', 'general status from users check-in this position', 'false'),
(618, 'en', 'country_at', 'country at', 'false'),
(619, 'en', 'content_empty_please_type', 'content is empty, please type the information', 'false'),
(620, 'en', 'avatar_of', 'avatar of', 'false'),
(621, 'en', 'cover_of', 'cover of', 'false'),
(622, 'en', 'location', 'location', 'false'),
(623, 'en', 'change_private', 'change private', 'false'),
(624, 'en', 'custom_time_invalid', 'custom time invalid', 'false'),
(625, 'en', 'private', 'private', 'false'),
(626, 'en', 'change_view_private', 'change view private', 'false'),
(627, 'en', 'change_comment_private', 'change comment private', 'false'),
(628, 'en', 'change_share_private', 'change share private', 'false'),
(629, 'en', 'feed_family.quickdescription', 'general status from family members', 'false'),
(630, 'en', 'feed_time.quickdescription', 'general status by time custom', 'false'),
(631, 'en', 'feed_general.quickdescription', 'general all status', 'false'),
(632, 'en', 'explorer.rows_sync', 'sync', 'false'),
(633, 'en', 'explorer.rows_cache', 'cache', 'false'),
(634, 'en', 'edit_information', 'edit information', 'false'),
(635, 'en', 'sorry_you_no_right_do_this', 'sorry, you have no right to do this', 'false'),
(636, 'en', 'not_allowed', 'not allowed', 'false'),
(637, 'en', 'loading', 'loading', 'false'),
(638, 'en', 'write_something_about_intro', 'write something about your introduction', 'false'),
(639, 'en', 'write_favorite_quote', 'write favorite quote', 'false'),
(640, 'en', 'middlename', 'middlename', 'false'),
(641, 'en', 'fullname', 'fullname', 'false'),
(642, 'en', 'day', 'day', 'false'),
(643, 'en', 'month', 'month', 'false'),
(644, 'en', 'year', 'year', 'false'),
(645, 'en', 'important', 'important', 'false'),
(646, 'en', 'add_a_phone_contact', 'add a phone contact', 'false'),
(647, 'en', 'add_a_email_contact', 'add a email contact', 'false'),
(648, 'en', 'type_phonenumber', 'type phonenumber', 'false'),
(649, 'en', 'press _delete_button_agian_remove', 'press the delete button again to remove', 'false'),
(650, 'en', 'type_middlename', 'type middle name', 'false'),
(651, 'en', 'type_day', 'type day', 'false'),
(652, 'en', 'type_month', 'type month', 'false'),
(653, 'en', 'type_year', 'type year', 'false'),
(654, 'en', 'type_language', 'type language', 'false'),
(655, 'en', 'type_nickname', 'type nickname', 'false'),
(656, 'en', 'add_a_tab', 'add a tab', 'false'),
(657, 'en', 'type_schoolname', 'type school name', 'false'),
(658, 'en', 'type_description', 'type description', 'false'),
(659, 'en', 'start_time', 'start time', 'false'),
(660, 'en', 'end_time', 'end time', 'false'),
(661, 'en', 'not_type_if_now', 'not type if to now', 'false'),
(662, 'en', 'type_starttime', 'type start time', 'false'),
(663, 'en', 'type_endtime', 'type end time', 'false'),
(665, 'en', 'type_school_specialized', 'specialized of school', 'false'),
(666, 'en', 'type_company_work', 'work within company', 'false'),
(667, 'en', 'type_company_name', 'type company name', 'false'),
(668, 'en', 'type_company_awards', 'work awards', 'false'),
(669, 'en', 'type_company_address', 'type company address', 'false'),
(670, 'en', 'write_something_about_live', 'write something about where to live', 'false'),
(671, 'en', 'write_something_about_country', 'write something about where to country', 'false'),
(672, 'en', 'action', 'action', 'false'),
(673, 'en', 'save', 'save', 'false'),
(674, 'en', 'type_password_confirm', 'type password to confirm', 'false'),
(675, 'en', 'verification', 'verification', 'false'),
(676, 'en', 'code_is_invalid', 'code is invalid', 'false'),
(677, 'en', 'activated_time', 'activated time', 'false'),
(678, 'en', 'activated_code', 'activated code', 'false'),
(679, 'en', 'type_password_verify', 'type password to verify', 'false'),
(680, 'en', 'verify_password', 'verify password', 'false'),
(681, 'en', 'account_has_successfully_activated', 'account has been successfully activated', 'false'),
(682, 'en', 'confirmed_please_type_new_password', 'confirmed, please type new password', 'false'),
(683, 'en', 'time_created', 'time created', 'false'),
(684, 'en', 'type_new_password', 'type new password', 'false'),
(685, 'en', 'time_confirmation_code_created', 'time confirmation code is created', 'false'),
(686, 'en', 'confirmation_code_get_password', 'confirmation code to get password', 'false'),
(687, 'en', 'password_successfully_changed', 'password has successfully changed', 'false'),
(688, 'en', 'notify', 'notify', 'false'),
(689, 'en', 'news', 'news', 'false'),
(690, 'en', 'not_found_info_places', 'not found information about place', 'false'),
(691, 'en', 'question_display_content_embed', 'Giccos supported display content from this url, you want display content quickly by Giccos or read more content in this site ?', 'false'),
(692, 'en', 'open_this_site', 'open this site', 'false'),
(693, 'en', 'display_content', 'display content', 'false'),
(694, 'en', 'content_from_site_loading', 'data content from site is loading, please wait...', 'false'),
(695, 'en', 'pushed_content_from_site', 'content from site successfully added', 'false'),
(696, 'en', 'content_notfound_may_error', 'content is not found, maybe has error', 'false'),
(697, 'en', 'click_open_site', 'click here to open site', 'false'),
(698, 'en', 'show_more_content', 'show more content', 'false'),
(699, 'en', 'click_disable_collapse_contents', 'click text to disable collapse contents', 'false'),
(700, 'en', 'tips', 'tips', 'false'),
(701, 'en', 'define', 'define', 'false'),
(702, 'en', 'last_updated', 'last updated', 'false'),
(703, 'en', 'source', 'source', 'false'),
(704, 'en', 'please_wait_load_data', 'please wait system loading data', 'false'),
(705, 'en', 'description_about_country', 'description about country', 'false'),
(706, 'en', 'description_about_live', 'description about live', 'false'),
(707, 'en', 'last_edit_at', 'last edit at', 'false'),
(708, 'en', 'guide_down_line_press', 'hold the shift key and press enter to new line', 'false'),
(709, 'en', 'comment_content_is_empty', 'comment content is empty', 'false'),
(710, 'en', 'pages_feed_general.title', 'general :: feed :: giccos', 'false'),
(711, 'en', 'scan_this_code', 'scan this code', 'false'),
(712, 'en', 'create_by_giccos', 'created by giccos', 'false'),
(713, 'en', 'view_qrcode', 'view QR code', 'false'),
(714, 'en', 'checkin_at', 'check-in at', 'false'),
(715, 'en', 'private_null_text', 'null', 'false'),
(716, 'en', 'private_null_tip', 'unknown', 'false'),
(717, 'en', 'people', 'people', 'false'),
(718, 'en', 'quality', 'quality', 'false'),
(719, 'en', 'quality_custom', 'quality custom', 'false'),
(720, 'en', 'auto_repeat', 'auto repeat', 'false'),
(721, 'en', 'non_repeat', 'non repeat', 'false'),
(722, 'en', 'off', 'off', 'false'),
(723, 'en', 'on', 'on', 'false'),
(724, 'en', 'resize', 'resize', 'false'),
(725, 'en', 'see_more_about_photos', 'see more about photos', 'false'),
(726, 'en', 'null:music_singer', 'undefined presenter', 'false'),
(727, 'en', 'total_views', 'total views', 'false'),
(728, 'en', 'pointtag_not_allowed', 'point tag is not allowed, can''t implement action', 'false'),
(729, 'en', 'pointtag_add_successful', 'added new point tag successful', 'false'),
(730, 'en', 'you_may_want_read', 'you may want read', 'false'),
(731, 'en', 'thumbnail_from', 'thumbnail from', 'false'),
(732, 'en', 'copy_link', 'copy link', 'false'),
(733, 'en', 'redirect_link', 'redirect link', 'false'),
(734, 'en', 'this_week', 'this week', 'false'),
(735, 'en', 'ratio', 'ratio', 'false'),
(736, 'en', 'your_rate', 'your rate', 'false'),
(737, 'en', 'rate', 'rate', 'false'),
(738, 'en', 'rating', 'rating', 'false'),
(739, 'en', 'stats', 'stats', 'false'),
(740, 'en', 'host', 'host', 'false'),
(741, 'en', 'hash', 'hash', 'false'),
(742, 'en', 'title', 'title', 'false'),
(743, 'en', 'page_null_certificate', 'page is not have certificate', 'false'),
(744, 'en', 'encryption', 'encryption', 'false'),
(745, 'en', 'usage', 'usage', 'false'),
(746, 'en', 'issuer', 'issuer', 'false'),
(747, 'en', 'extended', 'extended', 'false'),
(748, 'en', 'key', 'key', 'false'),
(749, 'en', 'common_name', 'common name', 'false'),
(750, 'en', 'organization', 'organization', 'false'),
(751, 'en', 'certificate', 'certificate', 'false'),
(752, 'en', 'malware_scan', 'malware scan', 'false'),
(753, 'en', 'page_null_scanlogs', 'page is not have scan logs', 'false'),
(754, 'en', 'total_scanner', 'total scanner', 'false'),
(755, 'en', 'detection_rate', 'detection rate', 'false'),
(756, 'en', 'results', 'results', 'false'),
(757, 'en', 'danger', 'danger', 'false'),
(758, 'en', 'suspicious', 'suspicious', 'false'),
(759, 'en', 'safe', 'safe', 'false'),
(760, 'en', 'unrated', 'unrated', 'false'),
(761, 'en', 'not_safe', 'not safe', 'false'),
(762, 'en', 'system_scanner', 'system scanner', 'false'),
(763, 'en', 'stats_lastweek_data', 'last week data stats', 'false'),
(764, 'en', 'stats_thisweek_data', 'this week data stats', 'false'),
(765, 'en', 'mailer_verify_account_subject', 'verify account at Giccos by email', 'false'),
(766, 'en', 'mailer_verify_account_altbody	', 'we sent email verify account created at Giccos by this email', 'false'),
(767, 'en', 'request_begin_please_wait', 'request being made, please wait for a moment', 'false'),
(768, 'en', 'ongoing_requirements_please_wait', 'ongoing requirements, please wait', 'false'),
(769, 'en', 'site_visits_statistics', 'site visits statistics', 'false'),
(770, 'en', 'site_mention_statistics', 'site mention statistics', 'false'),
(771, 'en', 'mention', 'mention', 'false'),
(772, 'en', 'favorited', 'favorited', 'false'),
(773, 'en', 'commented', 'commented', 'false'),
(774, 'en', 'this_status', 'this status', 'false'),
(775, 'en', 'in_status', 'in status', 'false'),
(776, 'en', 'shared', 'shared', 'false'),
(778, 'en', 'mon', 'mon', 'true'),
(779, 'en', 'tue', 'tue', 'true'),
(780, 'en', 'wed', 'wed', 'true'),
(781, 'en', 'thu', 'thu', 'true'),
(782, 'en', 'fri', 'fri', 'true'),
(783, 'en', 'sat', 'sat', 'true'),
(784, 'en', 'sun', 'sun', 'true'),
(785, 'en', 'mon', 'monday', 'false'),
(786, 'en', 'tue', 'tuesday', 'false'),
(787, 'en', 'wed', 'wednesday', 'false'),
(788, 'en', 'thu', 'thursday', 'false'),
(789, 'en', 'fri', 'friday', 'false'),
(790, 'en', 'sat', 'saturday', 'false'),
(791, 'en', 'sun', 'sunday', 'false'),
(792, 'en', 'account_validation_requirements', 'account validation requirements', 'false'),
(794, 'en', 'tornado', 'tornado', 'false'),
(795, 'en', 'tropical_storm', 'tropical storm', 'false'),
(796, 'en', 'hurricane', 'hurricane', 'false'),
(797, 'en', 'severe_thunderstorms', 'severe thunderstorms', 'false'),
(798, 'en', 'thunderstorms', 'thunderstorms', 'false'),
(799, 'en', 'mixed_rain_and_snow', 'mixed rain and snow', 'false'),
(800, 'en', 'mixed_rain_and_sleet', 'mixed rain and sleet', 'false'),
(801, 'en', 'mixed_snow_and_sleet', 'mixed snow and sleet', 'false'),
(802, 'en', 'freezing_drizzle', 'freezing drizzle', 'false'),
(803, 'en', 'drizzle', 'drizzle', 'false'),
(804, 'en', 'freezing_rain', 'freezing rain', 'false'),
(805, 'en', 'showers', 'showers', 'false'),
(806, 'en', 'showers', 'showers', 'false'),
(807, 'en', 'snow_flurries', 'snow flurries', 'false'),
(808, 'en', 'light_snow_showers', 'light snow showers', 'false'),
(809, 'en', 'blowing_snow', 'blowing snow', 'false'),
(810, 'en', 'snow', 'snow', 'false'),
(811, 'en', 'hail', 'hail', 'false'),
(812, 'en', 'sleet', 'sleet', 'false'),
(813, 'en', 'dust', 'dust', 'false'),
(814, 'en', 'foggy', 'foggy', 'false'),
(815, 'en', 'haze', 'haze', 'false'),
(816, 'en', 'smoky', 'smoky', 'false'),
(817, 'en', 'blustery', 'blustery', 'false'),
(818, 'en', 'windy', 'windy', 'false'),
(819, 'en', 'cold', 'cold', 'false'),
(820, 'en', 'cloudy', 'cloudy', 'false'),
(821, 'en', 'mostly_cloudy_night', 'mostly cloudy (night)', 'false'),
(822, 'en', 'mostly_cloudy_day', 'mostly cloudy (day)', 'false'),
(823, 'en', 'partly_cloudy_night', 'partly cloudy (night)', 'false'),
(824, 'en', 'partly_cloudy_day', 'partly cloudy (day)', 'false'),
(825, 'en', 'clear_night', 'clear (night)', 'false'),
(826, 'en', 'sunny', 'sunny', 'false'),
(827, 'en', 'fair_night', 'fair (night)', 'false'),
(828, 'en', 'fair_day', 'fair (day)', 'false'),
(829, 'en', 'mixed_rain_and_hail', 'mixed rain and hail', 'false'),
(830, 'en', 'hot', 'hot', 'false'),
(831, 'en', 'isolated_thunderstorms', 'isolated thunderstorms', 'false'),
(832, 'en', 'scattered_thunderstorms', 'scattered thunderstorms', 'false'),
(833, 'en', 'scattered_thunderstorms', 'scattered thunderstorms', 'false'),
(834, 'en', 'scattered_showers', 'scattered showers', 'false'),
(835, 'en', 'heavy_snow', 'heavy snow', 'false'),
(836, 'en', 'scattered_snow_showers', 'scattered snow showers', 'false'),
(837, 'en', 'heavy_snow', 'heavy snow', 'false'),
(838, 'en', 'partly_cloudy', 'partly cloudy', 'false'),
(839, 'en', 'thundershowers', 'thundershowers', 'false'),
(840, 'en', 'snow_showers', 'snow showers', 'false'),
(841, 'en', 'isolated_thundershowers', 'isolated thundershowers', 'false'),
(842, 'en', 'astronomy', 'astronomy', 'false'),
(843, 'en', 'sunrise', 'sunrise', 'false'),
(844, 'en', 'sunset', 'sunset', 'false'),
(845, 'en', 'updated_at', 'updated at', 'false'),
(846, 'en', 'sunrise_at', 'sunrise at', 'false'),
(847, 'en', 'sunset_at', 'sunset at', 'false'),
(848, 'en', 'following', 'following', 'false'),
(849, 'en', 'updated', 'updated', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `library_cited`
--

CREATE TABLE IF NOT EXISTS `library_cited` (
  `id` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `cite` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_voice`
--

CREATE TABLE IF NOT EXISTS `library_voice` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `language` char(4) NOT NULL,
  `word` varchar(40) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_voice`
--

INSERT INTO `library_voice` (`id`, `time`, `updated`, `token`, `language`, `word`, `content`) VALUES
(5, 1438706177, 1438706177, '7523c0a4', 'en', 'love', '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t+B/MP///6CQeYxjcxqG/+NCxOk1FBbCX4lgAjOWY2hv/////+pal8pXUrf6loYxUN0MHmMZ+JAEOEg8/Eg8xjGfQ0zm6f6G38weYxvEhZMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgFtu2//5ka//pCCKaNOAxIEXDlFlHlxebmzRxbP+xZRVxeVJxZZVxv/2nb+aLKKeNzf+7f/uz/7mycb/40LE2BHTGmW/wSgCnCgMo9iyiwIosp2cospnbs7PGb/2djTSi2diyiy2vNypZnb///P/lGlFllXG5////NOzXmzRpxokotnKNAhZZlxubNHFlWzsWUUWwYsmIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/Igv9oH4ATK9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8AAANIAAAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVU='),
(6, 1438706180, 1438706180, '5d0e7e64', 'en', 'like', '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hQLYWqFoz3VQrNRg6SBe/+NCxP8u9BaJv0xIAK1sWubTLSSqPGWkE11iMJXs+yhFIhK9GvObL11Y5jZVhBsIu8UTKbCyUSFEu6c4zr1jfjBiVQioiTSRI2qTaZTxdRikCiTsq3ZNhzaCa1IFElIH3pUjZ1KBmcmltW1prNSxRFNiUVEEr9TuV7LNhdQe+CtPQeKtL1L+o5GMs/uW4sJg8Cb8JnW5hdVChxoNhQVhwSgFOI4+g/nBLFhftyos+/TcOhI2X/MGGg8G003/WYUFmSSbmpN/8oHxNhMK9yqSrP//40LE/zFMDoA1mEgA8hSsf0S9MmAkgmgWG0wMzb//qB0dmlUgIoOR5BFLVDwYjd//+WHkmGKZMVRKJ3klI2MSUuSUjxSSv///2LHXpPJ7XypG1x8bVR2kQkqHnSda0pS/////JjIOZPUodahw3SWmDiDDhuB1xqygSiONwej6TnJHkUlTv/1K8VLJiCmopmXHJuqqqqoXbD/7/////9DGlK0SDodDrCQeFlDoeMaUrIZBIzlFS0EQ6HWEg8LKIiQeNKKlmK3///8odFYkHjVEgP/jQsT9LZvKfF+PWABg84dAoqgkHQ6HWEg8LKHTP+8xpSloUOirCQeNKJB4WcRDpZhEVNCioN//8I4FN6K4N6mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8bW0WQH8AoA1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVQ=='),
(7, 1438706184, 1438706184, 'f3604ea8', 'en', 'fuck', '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BWfYDBAqh/8lzzWWyyyg/+NCxO0mLAKBlkmGFIGDBBn/XK5ESpp7TRf/4mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/xJrRlB+AIc7VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(8, 1438953652, 1438953652, '6f002cd6', 'en', 'life', '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Wm3H1ByeQriKtWupXlry/+NCxP8szBKAN1kwAPuwYllo5OrW+2QnFEkMXF2CGuqCUSU5Ygk9QnC23C4uLSZ59mq09XnpkXka2qup+ePrLv+zVDd119t4vatWoUa6WmuoTEJZCiis19Xc5lsqWw/LRWrV7lqVZsUZ0dRtKmE0KONf3OL0StxGofS+knvfcW9dE1z/vWz111hkt61vw6mO9XEE8VKF7sblnLzNMysUVlkqY1lD16UJtxtY66qsuhBAnH+dBz/3xdUoSSWW2623a7bbf//77oAxvkC4NiBrPYv/40LE/zmUFnhVmGABpKuLMMlMdcte71Gk8Bbm3zmX+YvjjvlpyVlPvHh+TfRIx/mcZdTZk0vr6pDZL8nyscVgTVOlUzzE7f95o52F5Da1iZrWZtC05F7e0o63XHGISIeOFg42VyJ1eSdJLhytrpye72X/ecam9vyas+tNpYdiLEEDDMTa12badKmbLWDlSdVnPmZmbzNJn/nOlHAjhqiXnyTWVilCgSVXIdO0mm3O+L0FSghACAEMulYVBFohFJKzSyJFGpSl/KXDN//////8qv/jQsTcL0PGzl+IYAPfKqsCwtTNK0IQAwAIRQ6BsHzcCwtRQsLNKiorcqq+zf/wzcMzaioq0ipq1qvKquwsLKzNf//////DN7M2oqKtKrWpIrckiptFA2BsaULHXwULUwsc2SKirSSq+zf/sLC1MLB3//+JcOlQWTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxOMic5IIBclAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(9, 1438956858, 1438956858, 'babe5dd2', 'en', 'kiss', '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'),
(10, 1440152726, 1440152726, '3278a210', 'en', 'you', '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');

-- --------------------------------------------------------

--
-- Table structure for table `library_words`
--

CREATE TABLE IF NOT EXISTS `library_words` (
  `id` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `word` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `example` text,
  `related` text,
  `attribution` varchar(100) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `host` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_words`
--

INSERT INTO `library_words` (`id`, `language`, `time`, `updated`, `word`, `type`, `content`, `example`, `related`, `attribution`, `source`, `host`) VALUES
(48, 'en', 1438956485, 1438956485, 'fuck', 'verb-transitive', 'To have sexual intercourse with', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(49, 'en', 1438956485, 1438956485, 'fuck', 'verb-intransitive', 'To engage in sexual intercourse', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(50, 'en', 1438956485, 1438956485, 'fuck', 'noun', 'An act of sexual intercourse', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(51, 'en', 1438956485, 1438956485, 'fuck', 'interjection', 'Used to express extreme displeasure', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(52, 'en', 1438956485, 1438956485, 'fuck', 'phrasal-verb', 'fuck off  Used in the imperative as a signal of angry dismissal', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(53, 'en', 1438956485, 1438956485, 'fuck', 'verb', 'To have sexual intercourse, to copulate', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik'),
(54, 'en', 1438956854, 1438956854, 'life', 'noun', 'The property or quality that distinguishes living organisms from dead organisms and inanimate matter, manifested in functions such as metabolism, growth, reproduction, and response to stimuli or adaptation to the environment originating from within the organism', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(55, 'en', 1438956856, 1438956856, 'love', 'noun', 'A deep, tender, ineffable feeling of affection and solicitude toward a person, such as that arising from kinship, recognition of attractive qualities, or a sense of underlying oneness', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(56, 'en', 1438956856, 1438956856, 'love', 'verb-transitive', 'To have a deep, tender, ineffable feeling of affection and solicitude toward (a person):  We love our parents. I love my friends. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(57, 'en', 1438956858, 1438956858, 'kiss', 'verb-transitive', 'To touch or caress with the lips as an expression of affection, greeting, respect, or amorousness', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(58, 'en', 1438956858, 1438956858, 'kiss', 'verb-intransitive', 'To engage in mutual touching or caressing with the lips', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(59, 'en', 1438956858, 1438956858, 'kiss', 'noun', 'A caress or touch with the lips', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(60, 'en', 1438956858, 1438956858, 'kiss', 'phrasal-verb', 'kiss off  Slang   To dismiss or reject', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(61, 'en', 1438956858, 1438956858, 'kiss', 'idiom', 'kiss ass  Vulgar Slang   To act submissively or obsequiously in order to gain favor', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(62, 'en', 1438956858, 1438956858, 'kiss', 'verb', 'To touch with the lips or press the lips against, usually to express love or affection or passion, or as part of a greeting, or as part of sexual activity', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik'),
(71, 'en', 1440151617, 1440151617, 'what', 'pronoun', 'Which thing or which particular one of many:  What are you having for dinner? What did she say? ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(72, 'en', 1440151617, 1440151617, 'what', 'adjective', 'Which one or ones of several or many:  What college are you attending? You should know what musical that song is from. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(73, 'en', 1440151617, 1440151617, 'what', 'adverb', 'How much; in what respect; how:  What does it matter? ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(74, 'en', 1440151617, 1440151617, 'what', 'interjection', 'Used to express surprise, incredulity, or other strong and sudden excitement', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(75, 'en', 1440151617, 1440151617, 'what', 'idiom', 'what for  Informal   A scolding or strong reprimand:  The teacher gave the tardy student what for. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(98, 'en', 1440152727, 1440152727, 'you', 'pronoun', 'Nonstandard   Used reflexively as the indirect object of a verb:  You might want to get you another pair of shoes.  See Note at me', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(99, 'en', 1440152727, 1440152727, 'you', 'determiner', 'The individual or group spoken or written to', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik');

-- --------------------------------------------------------

--
-- Table structure for table `logs_actions`
--

CREATE TABLE IF NOT EXISTS `logs_actions` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  `things.type` varchar(20) DEFAULT NULL,
  `things.id` char(11) DEFAULT NULL,
  `obj.type` varchar(20) DEFAULT NULL,
  `obj.id` char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `guy.type`, `guy.id`, `type`, `things.type`, `things.id`, `obj.type`, `obj.id`) VALUES
(1, 1441182140, 'user', 1, 'follow', 'status', '1', '', ''),
(2, 1441182140, 'user', 1, 'add', '', '', 'status', '1'),
(3, 1441182581, 'user', 1, 'follow', 'status', '2', '', ''),
(4, 1441182602, 'user', 1, 'add', '', '', 'status', '2'),
(5, 1441183070, 'user', 1, 'follow', 'status', '3', '', ''),
(6, 1441183078, 'user', 1, 'add', '', '', 'status', '3'),
(7, 1441183315, 'user', 1, 'follow', 'status', '4', '', ''),
(8, 1441184003, 'user', 1, 'add', '', '', 'status', '4'),
(9, 1441712484, 'user', 1, 'favorite', 'status', '4', '', ''),
(10, 1441349862, 'user', 1, 'unfavorite', 'status', '4', '', ''),
(11, 1441477168, 'user', 1, 'follow', 'status', '5', '', ''),
(12, 1441477168, 'user', 1, 'add', '', '', 'status', '5'),
(13, 1441540055, 'user', 2, 'favorite', 'status', '4', '', ''),
(18, 1441540054, 'user', 2, 'unfavorite', 'status', '4', '', ''),
(19, 1441711567, 'user', 2, 'follow', 'status', '6', '', ''),
(20, 1441711567, 'user', 2, 'add', '', '', 'status', '6'),
(21, 1441712383, 'user', 1, 'favorite', 'status', '6', '', ''),
(22, 1441712385, 'user', 1, 'unfavorite', 'status', '6', '', ''),
(23, 1441712425, 'user', 1, 'favorite', 'status', '5', '', ''),
(24, 1441712672, 'user', 1, 'favorite', 'status', '3', '', ''),
(26, 1441712926, 'user', 1, 'favorite', 'status', '2', '', ''),
(27, 1441796193, 'user', 2, 'add', '', '', 'status', '7'),
(28, 1441796193, 'user', 2, 'follow', 'status', '7', '', ''),
(29, 1441806658, 'user', 1, 'favorite', 'status', '7', '', ''),
(30, 1441806656, 'user', 1, 'unfavorite', 'status', '7', '', '');

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
  `updated` int(11) NOT NULL,
  `token` varchar(10) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `device` char(10) DEFAULT NULL,
  `platform` varchar(40) NOT NULL,
  `browser.name` varchar(40) NOT NULL,
  `browser.kernel` varchar(40) NOT NULL,
  `browser.version` varchar(20) NOT NULL,
  `agent` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `updated`, `token`, `ip`, `device`, `platform`, `browser.name`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1439521903, 1439521939, '6808e60a', '113.170.45.132', 'desktop', 'Windows ME (x64)', 'Google Chrome', 'blink', '44.0.2403.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36'),
(2, 1439522032, 1441026126, '1064bb3d', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '44.0.2403.157', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36'),
(3, 1440291474, 1440500605, 'b46b61b4', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Opera', 'blink', '31.0.1889.174', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 Opera/31.0.1889.174'),
(4, 1441097394, 1441439480, 'ee5504b2', '113.170.42.243', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'),
(5, 1441460383, 1441460383, '7c514c94', '192.168.0.102', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'),
(6, 1441460850, 1441804575, '1a4cb25f', '113.170.46.167', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `mailer_id`
--

CREATE TABLE IF NOT EXISTS `mailer_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `secure` char(10) NOT NULL,
  `port` int(11) NOT NULL,
  `from.email` varchar(255) NOT NULL,
  `from.name` varchar(100) NOT NULL,
  `reply.email` varchar(255) NOT NULL,
  `reply.name` varchar(100) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailer_id`
--

INSERT INTO `mailer_id` (`id`, `time`, `token`, `type`, `host`, `username`, `password`, `secure`, `port`, `from.email`, `from.name`, `reply.email`, `reply.name`, `updated`) VALUES
(2, 1441114225, '3b1af93c', 'mailer', 'smtp.gmail.com', 'cBujSTWchgmVNpHKLWc+HKKu4QeeKiCXZ6IvbcEHYjQ=', 'VL34VvVJiLnANU7oTzV0lrcCZMhe1W9NZqznriEt/mw=', 'tls', 587, 'mailer@giccos.com', 'Giccos Mailer', 'support@giccos.com', 'support@giccos.com', 1441114225);

-- --------------------------------------------------------

--
-- Table structure for table `mailer_logs`
--

CREATE TABLE IF NOT EXISTS `mailer_logs` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `mailer.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailer_logs`
--

INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(7, 1441125666, 2, 'ffcbc75f', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(8, 1441126202, 2, '0d92d0df', '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'),
(9, 1441175133, 2, 'deaec939', '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'),
(10, 1441179134, 2, '8fe21218', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(11, 1441181995, 2, 'f9c89e40', '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'),
(12, 1441441369, 2, 'ec37d8e1', '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');

-- --------------------------------------------------------

--
-- Table structure for table `maps_places`
--

CREATE TABLE IF NOT EXISTS `maps_places` (
  `id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `location` varchar(30) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(1, '395602f4', '49db5fa1d07d8a9bbce41cc32597920b', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif'),
(2, 'bf0558e2', 'f4ae988d3b006556d391ac8914f69722', 'CÃ´ng Ty Sá»± Kiá»‡n TINH Táº¾ VIá»†T Táº¡i ÄÃ€ Náº´NG', '9 Tráº§n PhÃº, Háº£i ChÃ¢u, ÄÃ  Náºµng, Vietnam', '16.079825,108.223008', 16.079824, 108.223007, 'establishment', ''),
(3, '07bab7c3', 'e2feb1acfc60992a794081ccb37c14c4', 'CÃ”NG TY LUáº¬T TNHH MTV TINH Táº¾', '467 Äiá»‡n BiÃªn Phá»§, 25, BÃ¬nh Tháº¡nh, Há»“ ChÃ­ Minh, Vietnam', '10.801433,106.713944', 10.801433, 106.713943, 'lawyer', ''),
(4, 'd953e5c3', '6c36375316f79fa2525ab7197bacdda9', 'Cá»­a hÃ ng Tinh Táº¿ (Nice Store)', '174 ThÃ¡i PhiÃªn, 8, 11, Há»“ ChÃ­ Minh, Vietnam', '10.75969,106.646222', 10.759690, 106.646225, 'store', ''),
(5, '3423e121', '43fb17754d41abc0f19dc0e1de9a0699', 'Tinh Táº¿ Cafe', '436 3 ThÃ¡ng 2, 12, 10, Há»“ ChÃ­ Minh, Vietnam', '10.769319,106.669258', 10.769319, 106.669258, 'cafe', ''),
(6, 'bb9d5d51', 'd8527d4b6ce60550e012c7abd020b43f', 'CÃ´ng Ty Sáº£n Xuáº¥t, Cung Cáº¥p QuÃ  Táº·ng Tinh Táº¿ Viá»‡t', '9 Tráº§n PhÃº, Tháº¡ch Thang, ÄÃ  Náºµng, Vietnam', '16.07982,108.222976', 16.079821, 108.222977, 'home_goods_store', ''),
(7, 'a57c2fff', '70814f3817b64941fb3ab59d0c3564b9', 'Máº¯t kÃ­nh Tinh Táº¿ - Eyewear.vn', '31/4P Ä‘Æ°á»ng ÄÃ´ng LÃ¢n BÃ  Äiá»ƒm, áº¥p ÄÃ´ng LÃ¢n, BÃ  Äiá»ƒm, Há»“ ChÃ­ Minh, Vietnam', '10.845834,106.6099', 10.845834, 106.609901, 'jewelry_store', ''),
(8, '40c44d59', 'd1c8df2f1db1c1593822d290e9685600', 'TNHH Giáº£i PhÃ¡p Tinh Táº¿', '80 LÃ½ ThÃ¡i Tá»•, phÆ°á»ng 2, 3, Há»“ ChÃ­ Minh, Vietnam', '10.766025,106.680094', 10.766025, 106.680092, 'home_goods_store', ''),
(9, '3eed4d76', '04df982b8a4025e76a9dae2fb26a3436', 'Thá»i trang tinh táº¿', '257 Nguyá»…n Thá»‹ Tháº­p, TÃ¢n PhÃº, Quáº­n 7, Há»“ ChÃ­ Minh, Vietnam', '10.738214,106.716969', 10.738214, 106.716972, 'jewelry_store', ''),
(10, 'ba7e4918', '4d79a9325925fcc0356441074fc0c77c', 'Tline Furniture _ Tinh táº¿ vÃ  hiá»‡n Ä‘áº¡i', '302 Nguyá»…n TrÃ£i, Tá»« LiÃªm, HÃ  Ná»™i, Vietnam', '20.986873,105.7963', 20.986874, 105.796303, 'home_goods_store', ''),
(11, 'c57e7690', '8f5050fcaa511adc907e3d1b1cecd6c7', 'Tinh Te Technology Co., Ltd', '150A, ÄÆ°á»ng Há»“ BÃ¡ Kiá»‡n, PhÆ°á»ng 15, Quáº­n 10, Há»“ ChÃ­ Minh, Vietnam', '10.783,106.666881', 10.783000, 106.666878, 'establishment', ''),
(12, 'bcf121cd', '786ec0d31258b968b3045f3e42f58de0', 'áº¨m Thá»±c Tinh Táº¿', '37 ÄÃ´ng Du, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.775998,106.70448', 10.775998, 106.704483, 'establishment', ''),
(13, '16156852', '5a69737fc8d29f83fbdf521daad9ca04', 'CÃ´ng Ty Tnhh Ã‚m Nháº¡c Tinh Táº¿', '11 Pháº¡m ÄÃ¬nh ToÃ¡i, 6, 3, Há»“ ChÃ­ Minh, Vietnam', '10.775788,106.685975', 10.775788, 106.685974, 'establishment', ''),
(14, '2203dec7', '1c2f62425a18b005ce54adaa8a9b2da1', 'Cá»­a HÃ ng Äiá»‡n Thoáº¡i Tinh Táº¿', '590 NgÃ´ Gia Tá»±, Tiá»n An, Báº¯c Ninh, Báº¯c Ninh, Vietnam', '21.180833,106.062465', 21.180834, 106.062462, 'establishment', ''),
(15, '4cb38257', 'bdae0ed648d66467b2a4b9657877bdea', 'CÃ´ng Ty Tnhh Mtv Tinh Táº¿', '111 Nguyá»…n VÄƒn LuÃ´ng, 10, 6, Há»“ ChÃ­ Minh, Vietnam', '10.738239,106.63349', 10.738239, 106.633492, 'establishment', ''),
(16, '6ceb45a1', 'a7970201601de9d0bb98575b86ce0d27', 'CÃ´ng Ty Cp CÃ´ng Nghá»‡ Tinh Táº¿', '141 DÆ°Æ¡ng VÄƒn DÆ°Æ¡ng, TÃ¢n QuÃ½, TÃ¢n PhÃº, Há»“ ChÃ­ Minh, Vietnam', '10.794014,106.616666', 10.794014, 106.616669, 'establishment', ''),
(17, '957e45be', '4e264c9c0b3a23cdb230a8d09c201c10', 'Cafe Tinh Táº¿', '253 LÃª Duáº©n, Trung ÄÃ´, tp. Vinh, Nghá»‡ An, Vietnam', '18.661949,105.69229', 18.661949, 105.692291, 'establishment', ''),
(18, '3ff1b1a5', 'b1fc79ac49d6242f0928eea0be732784', 'CÃ´ng Ty Tnhh áº¨m Thá»±c Tinh Táº¿ - Fine Cuisine - Kohthai', '39 LÃª Duáº©n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.781616,106.699834', 10.781616, 106.699837, 'establishment', ''),
(19, 'd500fd34', '2b8cb4f92069e6100690ba6e59786df7', 'CÃ´ng Ty Tnhh Thiáº¿t Káº¿ XÃ¢y Dá»±ng Tinh Táº¿', '34 Nguyá»…n Thá»‹ Minh Khai, Äa Kao, 1, Há»“ ChÃ­ Minh, Vietnam', '10.784197,106.69938', 10.784197, 106.699379, 'establishment', ''),
(20, '10ea5db9', 'b32227151623b03e95185edc8dd972b2', 'Cá»­a HÃ ng Phá»¥ Kiá»‡n Tinh Táº¿', '239 ÄÃ  Náºµng, Cáº§u Tre, NgÃ´ Quyá»n, Háº£i PhÃ²ng, Vietnam', '20.861328,106.702292', 20.861328, 106.702293, 'establishment', ''),
(21, '4dafe018', 'b039783a948b503a0b941683155d3ee8', 'CÃ´ng Ty TNHH Viá»‡t Tinh Táº¿', '22, Thá» XÆ°Æ¡ng, PhÆ°á»ng HÃ ng Trá»‘ng, Quáº­n HoÃ n Kiáº¿m, HÃ  Ná»™i 10000, Vietnam', '21.028967,105.848384', 21.028967, 105.848381, 'establishment', ''),
(22, '5c296c00', '49ea6e57345cc96e352f0ec6e23782ed', 'Essen', 'Essen, Germany', '51.4556432,7.0115552', 51.455643, 7.011555, 'locality', 'maps/raw/places/staticmap/location=51.4556432,7.0115552&zoom=15&size=480x480&maptype=roadmap&markers=%7C&format=gif'),
(23, 'b46cc8c4', 'f7338370160da407e20d257714206383', 'Asturias', 'Asturias, Spain', '43.3619457,-5.8492926', 43.361946, -5.849293, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.3619457,-5.8492926&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.3619457,-5.8492926&format=gif'),
(24, 'c1d763b8', '7a44748cfa2c6e3c4591b3ea9295f6ce', 'O', 'O, Omi, Higashichikuma District, Nagano Prefecture 399-7701, Japan', '36.4576497,138.0479558', 36.457649, 138.047958, 'sublocality_level_1', 'maps/raw/places/staticmap/location=36.4576497,138.0479558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.4576497,138.0479558&format=gif'),
(25, '94e25bbf', '03b5ddea5799fb69165257f8ffeedd73', 'O', 'O, 7100 Vejle, Denmark', '55.7068696,9.542056', 55.706871, 9.542056, 'route', 'maps/raw/places/staticmap/location=55.7068696,9.542056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.7068696,9.542056&format=gif'),
(26, 'd9734d10', '142d9bbc03a0d7617678822c00850e4b', 'O', 'O, 6000 Kolding, Denmark', '55.4902593,9.4777789', 55.490257, 9.477779, 'route', 'maps/raw/places/staticmap/location=55.4902593,9.4777789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.4902593,9.4777789&format=gif'),
(27, 'f25511b2', '76cd8e8f14a9d23a07af542486342bc7', 'O', 'O, Randers, Denmark', '56.4615817,10.0318034', 56.461582, 10.031803, 'route', 'maps/raw/places/staticmap/location=56.4615817,10.0318034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4615817,10.0318034&format=gif'),
(28, '177bd21b', 'b82aaf6502b3d48ab27c7b1c630bbbf9', 'ObchodnÃ­', 'ObchodnÃ­, 397 01 PÃ­sek, Czech Republic', '49.2970667,14.1601865', 49.297066, 14.160186, 'route', 'maps/raw/places/staticmap/location=49.2970667,14.1601865&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2970667,14.1601865&format=gif'),
(29, '15e334c2', '05875d8237af5f044496c61a9c346549', 'ObchodnÃ­', 'ObchodnÃ­, 392 01 SobÄ›slav, Czech Republic', '49.2637957,14.7127854', 49.263798, 14.712785, 'route', 'maps/raw/places/staticmap/location=49.2637957,14.7127854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2637957,14.7127854&format=gif'),
(30, '59a30437', '4309f63afa3cf99436ef7bcb4cf09487', 'O', 'O, 8800 Viborg, Denmark', '56.4528328,9.4064431', 56.452831, 9.406443, 'route', 'maps/raw/places/staticmap/location=56.4528328,9.4064431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4528328,9.4064431&format=gif'),
(31, '042355f6', 'e5319c6ce736277fed2a6fceae466882', 'ObchodnÃ­', 'ObchodnÃ­, ÄŒestlice, Czech Republic', '50.001966,14.5767052', 50.001965, 14.576705, 'route', 'maps/raw/places/staticmap/location=50.001966,14.5767052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.001966,14.5767052&format=gif'),
(32, '948d8a8d', 'cdb43b33c76294503afb144d80456765', 'Calle O', 'Calle O, Caborca, Son., Mexico', '30.7106788,-112.1624862', 30.710678, -112.162483, 'route', 'maps/raw/places/staticmap/location=30.7106788,-112.1624862&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7106788,-112.1624862&format=gif'),
(33, '33beb514', '2511b49b74b33419701828f7937e859b', 'Cantabria', 'Cantabria, Spain', '43.1828396,-3.9878427', 43.182838, -3.987843, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.1828396,-3.9878427&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.1828396,-3.9878427&format=gif'),
(34, 'dd76115f', '8bbad9db8b9dd73589399bce088e35db', 'South', 'South, West Virginia, USA', '38.0328192,-82.5347693', 38.032818, -82.534767, 'route', 'maps/raw/places/staticmap/location=38.0328192,-82.5347693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.0328192,-82.5347693&format=gif'),
(35, '660163c4', '610e3b6801e5cae7a9a9e4ddb3e140ca', 's', 's, 87030 Marzi CS, Italy', '39.1768368,16.2952483', 39.176838, 16.295248, 'route', 'maps/raw/places/staticmap/location=39.1768368,16.2952483&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.1768368,16.2952483&format=gif'),
(36, '24a8c07f', 'b0268cf0b1eb0bec1b73a07589b50aae', 'Shrirangapatna Railway Station', 'Shrirangapatna Railway Station, Srirangapatna, Karnataka 571438, India', '12.4248105,76.6782188', 12.424810, 76.678223, 'train_station', 'maps/raw/places/staticmap/location=12.4248105,76.6782188&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.4248105,76.6782188&format=gif'),
(37, '34ecd174', '6808054c9a2691fa86e1fd1f61d55dd3', 'South', 'South, Odessa, TX 79763, USA', '31.7592035,-102.5379907', 31.759205, -102.537994, 'route', 'maps/raw/places/staticmap/location=31.7592035,-102.5379907&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.7592035,-102.5379907&format=gif'),
(38, '5e803712', '56510b721e03619dfc91d4d024fc95c9', 'Calle S', 'Calle S, Caborca, Son., Mexico', '30.7169152,-112.1684613', 30.716915, -112.168465, 'route', 'maps/raw/places/staticmap/location=30.7169152,-112.1684613&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7169152,-112.1684613&format=gif'),
(39, 'd9ac3fcd', 'a473772d6c1d9b49975fde922e4755cf', 'South', 'Cimarron National Grassland, South, Richfield, KS 67953, USA', '37.2288742,-101.8457745', 37.228874, -101.845772, 'route', 'maps/raw/places/staticmap/location=37.2288742,-101.8457745&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.2288742,-101.8457745&format=gif'),
(40, '07f3058a', 'ad5bbb09ce50dc8e4c9b5addb0cc16b5', 'South', 'South, Big Lake, TX 76932, USA', '31.1402623,-101.6078662', 31.140263, -101.607864, 'route', 'maps/raw/places/staticmap/location=31.1402623,-101.6078662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.1402623,-101.6078662&format=gif'),
(41, '7d55f190', '226cad256751a3de488aeec709793042', 'S', 'Rua Tenente Gomes Ribeiro, 212 - Vila Clementino - Vila Clementino, SÃ£o Paulo - SP, 04038-040, Brazil', '-23.599136,-46.637672', -23.599136, -46.637672, 'point_of_interest', 'maps/raw/places/staticmap/location=-23.599136,-46.637672&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-23.599136,-46.637672&format=gif'),
(42, '79015431', '35701d3ecee9d7c8cc638e83dba4a50f', 'Les Rencontres de la Photographie', '34 Rue du Docteur Fanton, 13200 Arles, France', '43.678377,4.625765', 43.678375, 4.625765, 'establishment', 'maps/raw/places/staticmap/location=43.678377,4.625765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.678377,4.625765&format=gif'),
(43, 'dc1b7fad', 'aa8126d24579abfd26d21ea4afaeeb84', 'Council of State', '1 Place du Palais Royal, 75001 Paris, France', '48.863189,2.337116', 48.863190, 2.337116, 'establishment', 'maps/raw/places/staticmap/location=48.863189,2.337116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.863189,2.337116&format=gif'),
(44, '3876da7c', 'd9ba2866fcfb8ed2b1ec40d486664c5a', 'The National D-Day Memorial', '3 Overlord Circle, Bedford, VA 24523, United States', '37.330489,-79.535929', 37.330490, -79.535927, 'park', 'maps/raw/places/staticmap/location=37.330489,-79.535929&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.330489,-79.535929&format=gif'),
(45, 'a93e0e83', '8a64b6c22b6581efade66010fd9e2ba7', 'Teatro Nacional D. Maria II', 'PraÃ§a Dom Pedro IV, 1100-201 Lisboa, Portugal', '38.7148,-9.139787', 38.714802, -9.139787, 'establishment', 'maps/raw/places/staticmap/location=38.7148,-9.139787&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7148,-9.139787&format=gif'),
(46, 'ff8fc0c6', '023a67e9fc4efd964631ce298701cbf7', 'The D Las Vegas', '301 Fremont Street, Las Vegas, NV 89101, United States', '36.169278,-115.14291', 36.169277, -115.142906, 'bar', 'maps/raw/places/staticmap/location=36.169278,-115.14291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.169278,-115.14291&format=gif'),
(47, 'c7a84f5a', '3a41a0f07d1e0ef7c6b47ca839f170d5', 'Franklin D. Roosevelt Presidential Library and Museum', '4079 Albany Post Road, Hyde Park, NY 12538, United States', '41.768696,-73.934059', 41.768696, -73.934059, 'museum', 'maps/raw/places/staticmap/location=41.768696,-73.934059&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.768696,-73.934059&format=gif'),
(48, '9f6efe54', 'a5846bd18ada5e9bfb282094e716a11d', 'Dwight D. Eisenhower Presidential Library &amp; Museum', '200 South East 4th Street, Abilene, KS 67410, United States', '38.911627,-97.21217', 38.911629, -97.212173, 'library', 'maps/raw/places/staticmap/location=38.911627,-97.21217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.911627,-97.21217&format=gif'),
(49, '26eb76b7', 'bf0e807c2d40f3e70d1389f4f5fda45a', 'Utrecht', 'Utrecht, Netherlands', '52.119508,5.1943653', 52.119507, 5.194365, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.119508,5.1943653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.119508,5.1943653&format=gif'),
(50, '9070c93c', '0691ba740f1f21afd300ec3a977c4336', 'Bac Lieu', 'Bac Lieu, Vietnam', '9.2515555,105.5136472', 9.251556, 105.513649, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.2515555,105.5136472&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2515555,105.5136472&format=gif'),
(51, 'c24ec0d3', '96084bf2f12f54b1c4b0fc4f72497a5b', 'Ca Mau', 'Ca Mau, Vietnam', '8.9624099,105.1258955', 8.962410, 105.125893, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=8.9624099,105.1258955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.9624099,105.1258955&format=gif'),
(52, '4daeb052', 'ba8c592b3f3c35fdcc36ce2db1485d8a', 'Cali', 'Cali, Cali, Valle del Cauca, Colombia', '3.4516467,-76.5319854', 3.451647, -76.531982, 'locality', 'maps/raw/places/staticmap/location=3.4516467,-76.5319854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.4516467,-76.5319854&format=gif'),
(53, '1e0a30db', '68aa6ed5392de78753242a062294bb8e', 'Ganh Hao', '3 Tráº§n PhÃº, Ward 5, tp. VÅ©ng TÃ u, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '10.359632,107.060172', 10.359632, 107.060173, 'restaurant', 'maps/raw/places/staticmap/location=10.359632,107.060172&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.359632,107.060172&format=gif'),
(54, '4310ae66', '20ae5cbfe34fbcd653209a9ceb22e96e', 'Ubtt GÃ nh HÃ o', 'Khu Vá»±c 3 GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(55, 'd49b1ffe', 'f49cdd6dde1c216df72487e36f6b94e4', 'Chá»£ GÃ nh HÃ o', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.02584,105.419617', 9.025840, 105.419617, 'establishment', 'maps/raw/places/staticmap/location=9.02584,105.419617&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.02584,105.419617&format=gif'),
(56, 'd51be2bd', '7bdc8ce93be8b66b0e784b46daa5f6ff', 'NHÃ€ HÃ€NG GÃ€NH HÃ€O SÃ€I GÃ’N', '4 Há»“ Huáº¥n Nghiá»‡p, Báº¿n NghÃ©, Q1, Há»“ ChÃ­ Minh, Vietnam', '10.774563,106.705675', 10.774563, 106.705673, 'restaurant', 'maps/raw/places/staticmap/location=10.774563,106.705675&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.774563,106.705675&format=gif'),
(57, '9ee3633c', '2b16d41e3d7d18346adf8adc93aaf15e', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o B', 'Phan Ngá»c Hiá»ƒn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.031467,105.420068', 9.031467, 105.420067, 'establishment', 'maps/raw/places/staticmap/location=9.031467,105.420068&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.031467,105.420068&format=gif'),
(58, 'e40f1d3c', '00c3dedeceb63dd59fa575f4137c56c1', 'Tráº¡m XÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iii T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(59, 'a3bb8026', 'dfed1d01b21be1e22d97ff649282e522', 'TrÆ°á»ng Thpt GÃ nh HÃ o', 'Ngá»c Äiá»n, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.026709,105.422004', 9.026709, 105.422005, 'establishment', 'maps/raw/places/staticmap/location=9.026709,105.422004&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.026709,105.422004&format=gif'),
(60, '47592f33', '26b9087c36710f10fdc6da7121c3d057', 'CÃ´ng An Thá»‹ Tráº¥n GÃ nh HÃ o', 'GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.027398,105.418743', 9.027398, 105.418739, 'establishment', 'maps/raw/places/staticmap/location=9.027398,105.418743&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.027398,105.418743&format=gif'),
(61, '38dc511b', 'b9821052e4a5f98ed891b6f87ccd64a7', 'BÆ°u Äiá»‡n GÃ nh HÃ o', 'Khu Vá»±c 1 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(62, '88218a99', 'f300900c2c6c1ffa63d0cc922e046101', 'B Q L X D Cáº£ng CÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iv T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(63, 'b52d423b', '6906213962b8814624151ab906f19650', 'cÃ´ng ty TNHH TÃ¢n GÃ nh HÃ o', 'áº¤p 4, GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.038364,105.419912', 9.038364, 105.419914, 'store', 'maps/raw/places/staticmap/location=9.038364,105.419912&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.038364,105.419912&format=gif'),
(64, 'ecec0dc4', 'da4a4653692e560fd495d7ee142eeaed', 'TrÆ°á»ng Máº§m Non GÃ nh HÃ o', '1 ThÃ¡ng 3, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.034476,105.423308', 9.034476, 105.423309, 'establishment', 'maps/raw/places/staticmap/location=9.034476,105.423308&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034476,105.423308&format=gif'),
(65, '10fdda36', '1d0a4289f2ef8fab94932afcf43d5b4f', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o A', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.028918,105.430523', 9.028918, 105.430527, 'establishment', 'maps/raw/places/staticmap/location=9.028918,105.430523&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.028918,105.430523&format=gif'),
(66, '97142f86', 'c591e62d8f8b6ca733321f8299177546', 'TrÆ°á»ng Thcs GÃ nh HÃ o', 'GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.035806,105.435297', 9.035806, 105.435295, 'establishment', 'maps/raw/places/staticmap/location=9.035806,105.435297&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.035806,105.435297&format=gif'),
(67, '8f57c6a9', 'cb55bff0e4459dffaff78ae0ba35f708', 'Tráº¡m Äiá»‡n Lá»±c GÃ nh HÃ o', 'Khu Vá»±c 3 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(68, '1ffa437d', 'ab1b84a28d58d8f47cfc20fec28b8991', 'FV Hospital', '6 Nguyá»…n LÆ°Æ¡ng Báº±ng, TÃ¢n PhÃº, 7, Há»“ ChÃ­ Minh, Vietnam', '10.732592,106.718488', 10.732592, 106.718491, 'hospital', 'maps/raw/places/staticmap/location=10.732592,106.718488&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.732592,106.718488&format=gif'),
(69, '64da46af', 'dcdc76e39c2473e0e59c82271e8af65c', 'FV SA - Griferia de Alta Tecnologia', 'Bernardo de Irigoyen 1053, B1604AFC Florida, Buenos Aires, Argentina', '-34.538938,-58.503842', -34.538937, -58.503841, 'establishment', 'maps/raw/places/staticmap/location=-34.538938,-58.503842&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.538938,-58.503842&format=gif'),
(70, 'd943725e', '48d01d1da21ee946f05ddfece9379600', 'FV Foods', '1125 Dundas Street East, Mississauga, ON L4Y 2C3, Canada', '43.60393,-79.590797', 43.603931, -79.590797, 'bakery', 'maps/raw/places/staticmap/location=43.60393,-79.590797&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.60393,-79.590797&format=gif'),
(71, 'd827ef97', '844d9f90478733e9bef47eb5555f943a', 'FV Ravensburg', 'BrÃ¼hlstraÃŸe 17, 88212 Ravensburg, Germany', '47.788131,9.603389', 47.788132, 9.603389, 'establishment', 'maps/raw/places/staticmap/location=47.788131,9.603389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.788131,9.603389&format=gif'),
(72, 'a4daf9ce', '731d10cc18c238dd0c4b669703db1c05', 'Franz Viegener FV', 'Pichincha, Ecuador', '-0.351287,-78.463647', -0.351287, -78.463646, 'establishment', 'maps/raw/places/staticmap/location=-0.351287,-78.463647&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.351287,-78.463647&format=gif'),
(73, '589cdf6d', 'a8f0077e53b04b7bf5d1a61453fef1e7', 'FV Immo', '10 Avenue Jehan de Beauce, 28000 Chartres, France', '48.447703,1.482693', 48.447704, 1.482693, 'real_estate_agency', 'maps/raw/places/staticmap/location=48.447703,1.482693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.447703,1.482693&format=gif'),
(74, 'c54f75c3', '2f94aac0a71488ac92a9008b5266fb5b', 'FV S.A.', 'Urquiza 2265, X5001FTK CÃ³rdoba, CÃ³rdoba Province, Argentina', '-31.38914,-64.185359', -31.389139, -64.185356, 'establishment', 'maps/raw/places/staticmap/location=-31.38914,-64.185359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-31.38914,-64.185359&format=gif'),
(75, '20b1e770', '5fae3053d5ab8dde1359c5e9a463268f', 'Fv Foods', '549 St Clair Av W, Toronto, ON M6C 1A3, Canada', '43.682486,-79.420649', 43.682487, -79.420647, 'bakery', 'maps/raw/places/staticmap/location=43.682486,-79.420649&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.682486,-79.420649&format=gif'),
(76, 'cfaf3b75', '6d560d594fd1d3fafca3e646e89c75e3', 'PhÃ²ng KhÃ¡m Äa Khoa FV SÃ i GÃ²n', '45 VÃµ Thá»‹ SÃ¡u, P. Äa Kao, Q. 1, Tp. Há»“ ChÃ­ Minh, Vietnam', '10.790773,106.694874', 10.790773, 106.694878, 'hospital', 'maps/raw/places/staticmap/location=10.790773,106.694874&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.790773,106.694874&format=gif'),
(77, 'bbf9afaa', '33ebb73f19a4f163b9b304672eb6352d', 'fv', 'MaipÃº 235, 5500 Mendoza, Mendoza, Argentina', '-32.876583,-68.833015', -32.876583, -68.833015, 'establishment', 'maps/raw/places/staticmap/location=-32.876583,-68.833015&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-32.876583,-68.833015&format=gif'),
(78, '088843f1', 'e83a93efba9db07203045da7d58c2813', 'Merle &amp; Brown PC', '90 Broad Street # 2201, New York, NY 10004, United States', '40.703759,-74.01182', 40.703758, -74.011818, 'lawyer', 'maps/raw/places/staticmap/location=40.703759,-74.01182&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.703759,-74.01182&format=gif'),
(79, '39d4f1ab', '10c4c354e21409c0b18d5b9a9e09edd4', 'FV Plast, a.s.', 'KozovazskÃ¡ 1049/3, 250 88 ÄŒelÃ¡kovice, Czech Republic', '50.157455,14.754981', 50.157455, 14.754981, 'store', 'maps/raw/places/staticmap/location=50.157455,14.754981&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.157455,14.754981&format=gif'),
(80, 'a3f61884', 'f56ed76d0b2513dee460181e3055e38b', '1. FC SaarbrÃ¼cken', 'Berliner Promenade 12, 66111 SaarbrÃ¼cken, Germany', '49.23555,6.99275', 49.235550, 6.992750, 'establishment', 'maps/raw/places/staticmap/location=49.23555,6.99275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.23555,6.99275&format=gif'),
(81, '032dd6f9', 'ac13b6fa8531845ea4b16722466d86a8', 'F &amp; V', 'Kondapur, Hyderabad, Andhra Pradesh 500084, India', '17.458218,78.364684', 17.458218, 78.364685, 'electronics_store', 'maps/raw/places/staticmap/location=17.458218,78.364684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.458218,78.364684&format=gif'),
(82, '00b38711', '1e91ed330b68bb87f05a867481dae7a8', 'Jugend- und Sozialzentrum Aue e.V.', 'Postplatz 3, 08280 Aue, Germany', '50.58743,12.70025', 50.587429, 12.700250, 'establishment', 'maps/raw/places/staticmap/location=50.58743,12.70025&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.58743,12.70025&format=gif'),
(83, '66e4188c', '4176fb90653bc4bba8b1fcd9e285c3bf', 'fv', 'Lindenallee 70B, 20259 Hamburg, Germany', '53.56902,9.95911', 53.569019, 9.959110, 'establishment', 'maps/raw/places/staticmap/location=53.56902,9.95911&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.56902,9.95911&format=gif'),
(84, '43252b99', 'fc0de9382c280cbfb01c469f5e223a40', 'BMR Lalonde F V Inc', '25 338 Rte, Les Coteaux, QC J7X 1A2, Canada', '45.260426,-74.202035', 45.260426, -74.202034, 'hardware_store', 'maps/raw/places/staticmap/location=45.260426,-74.202035&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.260426,-74.202035&format=gif'),
(85, '7d01d2f4', 'd3fd79d532532b99732886fa279c37a4', 'Carpet Hut by F V Woolard', '5719 Arrowhead Drive, Virginia Beach, VA 23462, United States', '36.839782,-76.184006', 36.839783, -76.184006, 'home_goods_store', 'maps/raw/places/staticmap/location=36.839782,-76.184006&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.839782,-76.184006&format=gif'),
(86, '03adba18', '3d08adbc16d6fbe21ecefb0603912912', 'Cervantes', 'Calle de Lepanto, 6, 03500 Benidorm, Alicante, Spain', '38.538985,-0.120945', 38.538986, -0.120945, 'real_estate_agency', 'maps/raw/places/staticmap/location=38.538985,-0.120945&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.538985,-0.120945&format=gif'),
(87, '2979414f', 'b2131baa60ed252080ae6f5c739d465c', 'GriferÃ­a FV', 'Mariano Acha 1407, C1430DUC CABA, Argentina', '-34.579484,-58.472095', -34.579483, -58.472095, 'hardware_store', 'maps/raw/places/staticmap/location=-34.579484,-58.472095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.579484,-58.472095&format=gif'),
(88, '90cd22b9', 'c0e6ab18868fbafc9cf3992f84e22dff', 'HCM Australia', '1/56 Clarence Street, Sydney NSW 2000, Australia', '-33.866188,151.205077', -33.866188, 151.205078, 'establishment', 'maps/raw/places/staticmap/location=-33.866188,151.205077&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-33.866188,151.205077&format=gif'),
(89, '93f88678', '072418cf8fdce87e623d3078ba790317', 'HCM Contractors Inc', '235038 Wrangler Road, Rocky View County, AB T1X 0K3, Canada', '50.997212,-113.893312', 50.997211, -113.893311, 'general_contractor', 'maps/raw/places/staticmap/location=50.997212,-113.893312&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.997212,-113.893312&format=gif'),
(90, '564fece5', 'aeba089aa10fb4428a1d35a418b9cea4', 'HCM Kinzel GmbH', 'Felix-Wankel-StraÃŸe 9/1, 74374 Zaberfeld, Germany', '49.06255,8.93288', 49.062550, 8.932880, 'store', 'maps/raw/places/staticmap/location=49.06255,8.93288&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.06255,8.93288&format=gif'),
(91, '06417aaa', 'cee6e78d65cb0365af379c883e5d53f8', 'HCM Computer GmbH', 'Nadorster StraÃŸe 162, 26123 Oldenburg, Germany', '53.15786,8.22147', 53.157860, 8.221470, 'establishment', 'maps/raw/places/staticmap/location=53.15786,8.22147&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.15786,8.22147&format=gif'),
(92, 'db22fd5a', 'a246a0f6fbb0ef759513efd4df9a50d2', 'Äáº¡i Há»c Giao ThÃ´ng Váº­n Táº£i TP HCM - CÆ¡ sá»Ÿ 3', '70 TÃ´ KÃ½, TÃ¢n ChÃ¡nh Hiá»‡p, 12, Há»“ ChÃ­ Minh, Vietnam', '10.865644,106.618221', 10.865644, 106.618217, 'establishment', 'maps/raw/places/staticmap/location=10.865644,106.618221&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.865644,106.618221&format=gif'),
(93, '6dd39e6e', '71c7a2e0084f9403a60b566c916be924', 'Hospital Central de Maracay', 'Avenidas Sucre, Maracay 2102, Venezuela', '10.274207,-67.589852', 10.274207, -67.589851, 'hospital', 'maps/raw/places/staticmap/location=10.274207,-67.589852&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.274207,-67.589852&format=gif'),
(94, '77461faa', '77ecc9ee85bfa369f6e3c4704edfc908', 'Health Care Management', '460 Briarwood Drive #410, Jackson, MS 39206, United States', '32.380911,-90.149715', 32.380913, -90.149712, 'establishment', 'maps/raw/places/staticmap/location=32.380911,-90.149715&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.380911,-90.149715&format=gif'),
(95, '69dc2021', 'a5f57c73dcb0ffa0e1dec05775133f3c', 'HCM', '22 West Road, Baltimore, MD 21204, United States', '39.411983,-76.613993', 39.411983, -76.613991, 'establishment', 'maps/raw/places/staticmap/location=39.411983,-76.613993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.411983,-76.613993&format=gif'),
(96, 'd35bce0b', '8c90996b64cb2eeda5c095c183275088', 'ï¼ˆæ ªï¼‰ï¼¨ï¼£ï¼­', 'Japan, ã€’106-0044 Tokyo, Minato, Higashiazabu, 1 Chomeâˆ’28âˆ’13, æ—¥é€šå•†äº‹éº»å¸ƒãƒ“ãƒ« 5F', '35.655298,139.743446', 35.655296, 139.743439, 'establishment', 'maps/raw/places/staticmap/location=35.655298,139.743446&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.655298,139.743446&format=gif'),
(97, '471a84de', 'cdc7406447d37ab6236d310a17f5e93a', 'Banking University HCM City', '56 HoÃ ng Diá»‡u 2, Linh Chiá»ƒu, Quáº­n Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', '10.857561,106.763582', 10.857561, 106.763580, 'university', 'maps/raw/places/staticmap/location=10.857561,106.763582&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.857561,106.763582&format=gif'),
(98, '2a46d60e', 'c543e27ddafe594cd9a413b4d458e296', 'Ho Chi Minh Museum', '01 Nguyá»…n Táº¥t ThÃ nh, phÆ°á»ng 12, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', '10.768271,106.706804', 10.768271, 106.706802, 'museum', 'maps/raw/places/staticmap/location=10.768271,106.706804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.768271,106.706804&format=gif'),
(99, '8ebacccd', 'ba4ac53aabf30173bcb58d243a0e485a', 'University of Economics Ho Chi Minh City', '59C Nguyá»…n ÄÃ¬nh Chiá»ƒu, 6th Ward, Quáº­n 3, Ho Chi Minh City, Vietnam', '10.783215,106.694749', 10.783215, 106.694748, 'university', 'maps/raw/places/staticmap/location=10.783215,106.694749&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.783215,106.694749&format=gif'),
(100, '68e06b5c', '8492b257e3b11ea93141f66528069fd8', 'HCM', '545 Marriott Drive # 600, Nashville, TN 37214, United States', '36.149666,-86.689324', 36.149666, -86.689323, 'establishment', 'maps/raw/places/staticmap/location=36.149666,-86.689324&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.149666,-86.689324&format=gif'),
(101, '68f87585', '0ce1620118d9a619e65cb703e8b15af5', 'HCM', '668 North 44th Street # 300, Phoenix, AZ 85008, United States', '33.455207,-111.989078', 33.455208, -111.989075, 'establishment', 'maps/raw/places/staticmap/location=33.455207,-111.989078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.455207,-111.989078&format=gif'),
(102, '3a85225b', 'acee4b7b7216a3f0b5c5fd0d494df732', 'Maputo Central Hospital', 'Avenida Eduardo Mondlane, Maputo, Mozambique', '-25.97018,32.58817', -25.970181, 32.588169, 'hospital', 'maps/raw/places/staticmap/location=-25.97018,32.58817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-25.97018,32.58817&format=gif'),
(103, '31ef9df1', '9852b7cbcd73f8eb492cf70df463a4c2', 'University of Technical Education Ho Chi Minh City', '01 VÃµ VÄƒn NgÃ¢n, Linh Chiá»ƒu, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', '10.84994,106.771688', 10.849940, 106.771690, 'establishment', 'maps/raw/places/staticmap/location=10.84994,106.771688&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.84994,106.771688&format=gif'),
(104, '88ea07a7', '8d99922616c2c8ec4253bf794de9ee63', 'Ho Chi Minh City University of Culture', '51 Quá»‘c HÆ°Æ¡ng, Tháº£o Äiá»n, Quáº­n 2, Há»“ ChÃ­ Minh, Vietnam', '10.80559,106.73116', 10.805590, 106.731163, 'university', 'maps/raw/places/staticmap/location=10.80559,106.73116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.80559,106.73116&format=gif'),
(105, 'e29d6430', '7bd4a85bb8cacfac34cd9cd8949c0854', 'HCMC University of Pedagogy', '280 An DÆ°Æ¡ng VÆ°Æ¡ng, phÆ°á»ng 4, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh 700000, Vietnam', '10.762176,106.682418', 10.762176, 106.682419, 'university', 'maps/raw/places/staticmap/location=10.762176,106.682418&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.762176,106.682418&format=gif'),
(106, '3f282442', '10f69a1b96272a39ab39f67792a3e833', 'Nong Lam University', 'KP6 QL1A, ÄÃ´ng HÃ²a, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', '10.872103,106.792817', 10.872103, 106.792816, 'university', 'maps/raw/places/staticmap/location=10.872103,106.792817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.872103,106.792817&format=gif'),
(107, 'e29aa18a', '27819131e1b960a37deeafea11e70e46', 'HCM Strategists LLC', '1156 15th Street Northwest #850, Washington, DC 20005, United States', '38.905368,-77.034933', 38.905369, -77.034935, 'establishment', 'maps/raw/places/staticmap/location=38.905368,-77.034933&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905368,-77.034933&format=gif'),
(108, '9d269217', 'c26b903cf110700dc5966bf51a620b78', 'Dingcheng', 'Dingcheng, Changde, Hunan, China', '29.018593,111.680783', 29.018593, 111.680786, 'sublocality_level_1', 'maps/raw/places/staticmap/location=29.018593,111.680783&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.018593,111.680783&format=gif'),
(109, 'a73090be', '4614700fa7a80c08d3f9d8847ba323c5', 'Trung TÃ¢m Ytáº¿ XÃ£ Äá»‹nh ThÃ nh', 'áº¤p NÃºi Äáº¥t Äá»‹nh ThÃ nh Huyá»‡n Dáº§u Tiáº¿ng, Binh Duong, Vietnam', '11.305045,106.464146', 11.305045, 106.464149, 'establishment', 'maps/raw/places/staticmap/location=11.305045,106.464146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.305045,106.464146&format=gif'),
(110, '3a3aff40', 'fab519a4acd5baaf1cef7c67a6f22f16', 'CÃ´ng an xÃ£ Äá»‹nh ThÃ nh', 'TL 943, Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.30676,105.303103', 10.306760, 105.303101, 'establishment', 'maps/raw/places/staticmap/location=10.30676,105.303103&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30676,105.303103&format=gif'),
(111, '21820bcc', '2a32d2644936c95633dd112cf16de2ce', 'Tráº¡m y táº¿ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.329509,105.295603', 10.329509, 105.295601, 'hospital', 'maps/raw/places/staticmap/location=10.329509,105.295603&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.329509,105.295603&format=gif'),
(112, 'ee1ea59d', 'd85c3055fcbdb6c0225f06937c2125da', 'Tráº¡i Giam Äá»‹nh ThÃ nh', 'Ä‘á»‹nh thÃ nh Huyá»‡n Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.305778,105.301411', 10.305778, 105.301414, 'establishment', 'maps/raw/places/staticmap/location=10.305778,105.301411&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.305778,105.301411&format=gif'),
(113, 'fe08c446', '2c428a04a7f180eb18e3a76d447e9679', 'TrÆ°á»ng Thcs Äá»‹nh ThÃ nh', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.118412,105.30021', 9.118412, 105.300209, 'establishment', 'maps/raw/places/staticmap/location=9.118412,105.30021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.118412,105.30021&format=gif'),
(114, '5aa63eca', '37c6b0174eee1442a08506362ef2ea12', 'TrÆ°á»ng Thpt Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.120604,105.28423', 9.120604, 105.284233, 'establishment', 'maps/raw/places/staticmap/location=9.120604,105.28423&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.120604,105.28423&format=gif'),
(115, '6ff3c2c2', 'a78f9ececb2244a0e2779e064949815d', 'Tráº¡i Sáº£n Xuáº¥t LÃºa Giá»‘ng Äá»‹nh ThÃ nh', 'áº¤p HÃ²a TÃ¢n, XÃ£ Äá»‹nh ThÃ nh, Huyá»‡n Thoáº¡i SÆ¡n, Tá»‰nh An Giang, Vietnam', '10.309609,105.299329', 10.309609, 105.299332, 'establishment', 'maps/raw/places/staticmap/location=10.309609,105.299329&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.309609,105.299329&format=gif'),
(116, '0eb5a64f', '77f51f6ca367a0bc2540aef2f9b3f716', 'Internet BÄ‘vh XÃ£ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.132306,105.295558', 9.132306, 105.295555, 'establishment', 'maps/raw/places/staticmap/location=9.132306,105.295558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.132306,105.295558&format=gif'),
(117, '4b1f3ad9', 'f237aadfef7354cebce4d71438c227d1', 'TrÆ°á»ng Tiá»ƒu Há»c Äá»‹nh ThÃ nh B', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh A, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.127961,105.264978', 9.127961, 105.264977, 'establishment', 'maps/raw/places/staticmap/location=9.127961,105.264978&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.127961,105.264978&format=gif'),
(118, 'e1484f08', 'f2ddf08a6fc1ceaf5be3202e8fff27b4', 'Tac Ct', 'Tac Ct, Manassas, VA 20109, USA', '38.7787292,-77.5515056', 38.778728, -77.551506, 'route', 'maps/raw/places/staticmap/location=38.7787292,-77.5515056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7787292,-77.5515056&format=gif'),
(119, '4a8f5c90', 'be9af47bbb0808e8a6606f3c90ad4590', 'Táº¯c VÃ¢n', 'Táº¯c VÃ¢n, tp. CÃ  Mau, Ca Mau, Vietnam', '9.1662734,105.2641108', 9.166273, 105.264114, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.1662734,105.2641108&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.1662734,105.2641108&format=gif'),
(120, '41dd1c29', '93a77be2b0405e1586766f1199602f93', 'New Mec-ComÃ©rcio e IndÃºstria de Equipamentos', 'Avenida Tenente Coronel Muniz de AragÃ£o, 1710 - GardÃªnia Azul, Rio de Janeiro - RJ, 22765-000, Brazil', '-22.956939,-43.350614', -22.956940, -43.350613, 'establishment', 'maps/raw/places/staticmap/location=-22.956939,-43.350614&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.956939,-43.350614&format=gif'),
(121, 'becbcdaa', 'a0cc46b0066321f0b6279b1df5b84199', 'New Mec S.r.l.', 'Via Piave, 61, Cimadolmo TV, Italy', '45.796243,12.336353', 45.796242, 12.336353, 'establishment', 'maps/raw/places/staticmap/location=45.796243,12.336353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.796243,12.336353&format=gif'),
(122, 'a7a07125', '419e4b997ef89235a155a95f0a2de35e', 'New Mec Enterprise', '7 Townshend Road, Singapore 207605', '1.307756,103.858331', 1.307756, 103.858330, 'establishment', 'maps/raw/places/staticmap/location=1.307756,103.858331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.307756,103.858331&format=gif'),
(123, 'ad7d82a0', '3064b1d8f5e5cb70c9b9ae85d008e431', 'Newmec S.r.l.', '38 Via Enzo Ferrari, Isola Vicentina, Vi 36033, Italy', '45.6313,11.45546', 45.631302, 11.455460, 'establishment', 'maps/raw/places/staticmap/location=45.6313,11.45546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.6313,11.45546&format=gif'),
(124, '06896fb9', 'ce599b20619e1439f8a4189b39f44fe8', 'NC MEC USA Inc', '3150 Verona Avenue, Buford, GA 30518, United States', '34.132222,-83.969516', 34.132221, -83.969513, 'establishment', 'maps/raw/places/staticmap/location=34.132222,-83.969516&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.132222,-83.969516&format=gif'),
(125, '060a1262', '9ac84194d6eb084474b8c09a0c8854c6', 'MEC Head Office', '1077 Great Northern Way, Vancouver, BC V5T 1E1, Canada', '49.266089,-123.082763', 49.266090, -123.082764, 'establishment', 'maps/raw/places/staticmap/location=49.266089,-123.082763&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.266089,-123.082763&format=gif'),
(126, 'bdeeaa1f', '96311aaf41de3df90c4ea03c0dedfe31', 'MEC Newcastle - Electrician', 'Swalwell, Newcastle upon Tyne, Newcastle, United Kingdom', '54.95511,-1.690093', 54.955109, -1.690093, 'electrician', 'maps/raw/places/staticmap/location=54.95511,-1.690093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C54.95511,-1.690093&format=gif'),
(127, '97c6200f', 'f858a4ce9ebbbd8b008a367ab06f7996', 'Peugeot - Tri.Mec. Di Trincone A. E Trincone S. &amp; C.', '3 Arco Felice Vecchio, Pozzuoli, NA 80078, Italy', '40.84521,14.06737', 40.845211, 14.067370, 'car_dealer', 'maps/raw/places/staticmap/location=40.84521,14.06737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.84521,14.06737&format=gif'),
(128, '3b296431', '8219d0a0e79f27edd4efd2a0aa24b012', 'Nord Mec S.r.l.', 'Via Noalese, 75, 31100 Treviso TV, Italy', '45.65416,12.199863', 45.654160, 12.199863, 'car_dealer', 'maps/raw/places/staticmap/location=45.65416,12.199863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.65416,12.199863&format=gif'),
(129, 'f4c23dca', 'c70d46df4925484f7205389f6a45d2d1', 'Auto.Mec. Di Scaligina F. E Gasparre F. Snc', 'Via Ferrara, 74016 Massafra TA, Italy', '40.581587,17.111316', 40.581589, 17.111317, 'car_dealer', 'maps/raw/places/staticmap/location=40.581587,17.111316&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.581587,17.111316&format=gif'),
(130, 'c00ccf8c', '832aa7b1838cad902a5db5daed6442de', 'G.m.s. General Mec System Llc, Albany, New York', 'Via Ligornetto 15, 6854 S. Pietro, Switzerland', '45.856636,8.941396', 45.856636, 8.941396, 'establishment', 'maps/raw/places/staticmap/location=45.856636,8.941396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.856636,8.941396&format=gif'),
(131, '2f3a958d', 'ca18742d43f684daac28dd976383db24', 'MEC', '825 7th Avenue, New York, NY 10019, United States', '40.763023,-73.981064', 40.763023, -73.981064, 'establishment', 'maps/raw/places/staticmap/location=40.763023,-73.981064&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.763023,-73.981064&format=gif'),
(132, '1be8a4a6', 'ccd737062fbf998df3b00310f1c9df64', 'Mediaedge:Cia Portugal', 'Rua Dom JoÃ£o V 24, 1250-091 Lisboa, Portugal', '38.720575,-9.159455', 38.720573, -9.159455, 'establishment', 'maps/raw/places/staticmap/location=38.720575,-9.159455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.720575,-9.159455&format=gif'),
(133, '60a63d37', 'dfcac7185e811624497303eefeb85e32', 'MEC: Active Engagement', 'Avinguda Diagonal, 605, 08028 Barcelona, Barcelona, Spain', '41.388883,2.129107', 41.388882, 2.129107, 'establishment', 'maps/raw/places/staticmap/location=41.388883,2.129107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.388883,2.129107&format=gif'),
(134, '4160224d', 'de94f91f6ff98f5ce88eb151e037fefa', 'MEC Mining', '22/215 Adelaide Street, Brisbane QLD 4000, Australia', '-27.467441,153.026993', -27.467442, 153.026993, 'establishment', 'maps/raw/places/staticmap/location=-27.467441,153.026993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-27.467441,153.026993&format=gif'),
(135, '27098944', '3a67bd7f23d00105d90b3544a3561ae7', 'MEC Malaysia', 'Jalan Damanlela, Pusat Bandar Damansara, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.146837,101.662164', 3.146837, 101.662163, 'establishment', 'maps/raw/places/staticmap/location=3.146837,101.662164&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.146837,101.662164&format=gif'),
(136, 'fd2104ab', '2997fff148d8dae397e58e4fa87f97e7', 'MEC', 'Rue PrÃ©vinaire 64, 1070 Ville de Bruxelles, Belgium', '50.833886,4.321935', 50.833885, 4.321935, 'doctor', 'maps/raw/places/staticmap/location=50.833886,4.321935&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.833886,4.321935&format=gif'),
(137, 'ee9a4753', '330a51316a08ede1398c67509f1e69c8', 'MEC, Inc.', '221 McRand Court #100, Hagerstown, MD 21740, United States', '39.646741,-77.748709', 39.646740, -77.748711, 'electrician', 'maps/raw/places/staticmap/location=39.646741,-77.748709&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.646741,-77.748709&format=gif'),
(138, '03a11f07', 'dc3f168a9c634fbd94a17f542abfdfda', 'Mountain Equipment Co-op (MEC)', '6121 200 Street, Langley, BC V2Y, Canada', '49.113805,-122.671661', 49.113804, -122.671661, 'bicycle_store', 'maps/raw/places/staticmap/location=49.113805,-122.671661&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.113805,-122.671661&format=gif'),
(139, 'e7069cd2', 'b125c5245828bbd4017294ff9ccb86c8', 'New Mexico', 'New Mexico, USA', '34.5199402,-105.8700901', 34.519939, -105.870087, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=34.5199402,-105.8700901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.5199402,-105.8700901&format=gif'),
(140, 'b31481a3', '310f3c9ce4ee1897fa3c23a9a2129da7', 'Vinpearl Land Nha Trang', 'VÄ©nh NguyÃªn, Nha Trang, Khanh Hoa Province, Vietnam', '12.21728,109.241895', 12.217280, 109.241898, 'lodging', 'maps/raw/places/staticmap/location=12.21728,109.241895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.21728,109.241895&format=gif'),
(141, '064dddf3', 'eeea1ea64e3ca92d1cc10d1c83abca3e', 'HÃ²n Ngá»c Viá»‡t - Vinpearl Land', '7 Tráº§n PhÃº, tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', '12.216119,109.241223', 12.216119, 109.241226, 'restaurant', 'maps/raw/places/staticmap/location=12.216119,109.241223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.216119,109.241223&format=gif'),
(142, 'dc8dfb9a', '24beb9eab78c5f4c10beb14e050292f7', 'Vinpearl Luxury Nha Trang', 'Nha Trang, Khanh Hoa Province, Vietnam', '12.211558,109.243605', 12.211558, 109.243607, 'lodging', 'maps/raw/places/staticmap/location=12.211558,109.243605&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.211558,109.243605&format=gif'),
(143, '854fe8d3', '19b1e64871e4a68022a91e10366c61cf', 'Vinpearl Luxury Da Nang', 'TrÆ°á»ng Sa, HÃ²a Háº£i, NgÅ© HÃ nh SÆ¡n, ÄÃ  Náºµng, Vietnam', '16.007778,108.266107', 16.007778, 108.266106, 'lodging', 'maps/raw/places/staticmap/location=16.007778,108.266107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C16.007778,108.266107&format=gif'),
(144, 'bdd9f461', 'e170adb7cf3e92d4a22a7dd560dcfe98', 'CÃ´ng Ty Cp Du Lá»‹ch Tm Vinpearl', '72 LÃª ThÃ¡nh TÃ´n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.77771,106.702008', 10.777710, 106.702011, 'establishment', 'maps/raw/places/staticmap/location=10.77771,106.702008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.77771,106.702008&format=gif'),
(145, 'a562856d', '9c45d7ac66e8a87662636225bca309e4', 'Vinpearl Nail &amp; Spa', '20079 Stone Oak Parkway #1102, San Antonio, TX 78258, United States', '29.642657,-98.488919', 29.642656, -98.488922, 'beauty_salon', 'maps/raw/places/staticmap/location=29.642657,-98.488919&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.642657,-98.488919&format=gif'),
(146, 'da228937', 'd359cfd135685783714095b6496b3fc2', 'Vinpearl Golf Club', 'tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', '12.213053,109.257877', 12.213053, 109.257874, 'establishment', 'maps/raw/places/staticmap/location=12.213053,109.257877&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.213053,109.257877&format=gif'),
(147, '84f8f3fb', 'bd1544b7a8a0541ae948ab8412c77d10', 'Vinpearl', 'RaumerstraÃŸe 14A, 10437 Berlin, Germany', '52.542082,13.419868', 52.542084, 13.419868, 'restaurant', 'maps/raw/places/staticmap/location=52.542082,13.419868&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.542082,13.419868&format=gif'),
(148, '70037b1f', '4e5202d6a805e9efd58d7cd5144f79bb', 'Wild Beach Resort and Spa', 'Hon Tre Island, Vinh Nguyen Ward, tp. Nha Trang, ., Vietnam', '12.24689,109.196', 12.246890, 109.195999, 'lodging', 'maps/raw/places/staticmap/location=12.24689,109.196&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.24689,109.196&format=gif'),
(149, 'f93a1748', '4fc15cd7a610b715bd6bc18048ad8d83', 'Vinpearl Resort Phu Quoc', 'Bai Dai, Gach Dau, Phu Quoc, Kien Giang, Vietnam', '10.30675,103.86157', 10.306750, 103.861572, 'lodging', 'maps/raw/places/staticmap/location=10.30675,103.86157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30675,103.86157&format=gif'),
(150, 'd64c081b', '78ea94f6e0bcca4678eeb5af46cddfbe', 'vinpearl premium Phu Quoc', 'BÃ£i DÃ i, PhÃº Quá»‘c, KiÃªn Giang Kien Giang tá»‰nh KiÃªn Giang, GÃ nh Dáº§u, Kien Giang, tá»‰nh KiÃªn Giang, Vietnam', '10.34819,103.902799', 10.348190, 103.902802, 'real_estate_agency', 'maps/raw/places/staticmap/location=10.34819,103.902799&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.34819,103.902799&format=gif'),
(151, 'b38ccf8b', 'b030f8f39bea7010835ff2386700ffa6', 'Vinpearl Ice Rink', 'Khu Ä‘Ã´ thá»‹, 72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh Xuï¿¢n, HÃ  Ná»™i, Vietnam', '21.003493,105.815817', 21.003492, 105.815819, 'establishment', 'maps/raw/places/staticmap/location=21.003493,105.815817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.003493,105.815817&format=gif'),
(152, 'ae5dbe27', '1f2a2349b63e8a1643a7549648757802', 'Vinpearl Golf Club Sales Office', 'Táº§ng 4, TÃ²a NhÃ  Vincom Center, 72, ÄÆ°á»ng LÃª ThÃ¡nh TÃ´n, PhÆ°á»ng Báº¿n NghÃ©, Quáº­n 1, Há»“ ChÃ­ Minh, Vietnam', '10.778342,106.701902', 10.778342, 106.701904, 'establishment', 'maps/raw/places/staticmap/location=10.778342,106.701902&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.778342,106.701902&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(153, 'a4157a1a', '98115adfd29e8efc177e99777555a7ea', 'Vinpearl Golf Club Sales Office', 'Khu ÄÃ´ Thá»‹ Sinh ThÃ¡i Vincom Village, PhÆ°á»ng Viá»‡t HÆ°ng, Quáº­n Long BiÃªn, HÃ  Ná»™i, Vietnam', '21.047808,105.91543', 21.047808, 105.915428, 'establishment', 'maps/raw/places/staticmap/location=21.047808,105.91543&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.047808,105.91543&format=gif'),
(154, 'd90903d0', '7070023b09b213d8d4ec3330238ef1fb', 'Vinpearl Water Park', '72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh XuÃ¢n, HÃ  Ná»™i, Vietnam', '21.002691,105.814658', 21.002691, 105.814659, 'amusement_park', 'maps/raw/places/staticmap/location=21.002691,105.814658&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.002691,105.814658&format=gif'),
(155, 'e4c2d839', '6526dc617b1b0ab30491ab5f6fed9e11', 'Vinpearl Resort Phu Quoc', 'BÃ£i DÃ i, Huyá»‡n, Cá»­a Cáº¡n-GÃ nh Dáº§u, GÃ nh Dáº§u, Phu Quoc District, tá»‰nh KiÃªn Giang, Vietnam', '10.33588,103.856896', 10.335880, 103.856895, 'lodging', 'maps/raw/places/staticmap/location=10.33588,103.856896&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.33588,103.856896&format=gif'),
(156, 'cc098f01', 'f43532e968e4c72c4f303cc9959e4ea7', 'Vinpearl Resort &amp; Spa Travel &amp; Trading J.S.C.', '182 Nguyen Van Thu Street, Dakao Ward, District 1, Ho Chi Minh City, Vietnam', '10.777799,106.702146', 10.777799, 106.702148, 'lodging', 'maps/raw/places/staticmap/location=10.777799,106.702146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.777799,106.702146&format=gif'),
(157, 'b321ca06', '09e4d2c66ca4e0ed6d694e0d2a18a02f', 'Lotteria Vinpearl', 'Vinpearl Land, ChÃ¢n cÃ¡p treo, BÃ£i Trá»¥, HÃ²n Tre, Nha Trang, tp. Nha Trang, 570000, Vietnam', '12.217217,109.243519', 12.217217, 109.243523, 'restaurant', 'maps/raw/places/staticmap/location=12.217217,109.243519&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.217217,109.243519&format=gif'),
(158, '2e97d1a2', '9c9c3cb90cb11ddcca9f51ba29e6d247', 'HÃ²n Mun', 'HÃ²n Mun, VÄ©nh NguyÃªn, tp. Nha Trang, Vietnam', '12.1661449,109.3024824', 12.166145, 109.302483, 'natural_feature', 'maps/raw/places/staticmap/location=12.1661449,109.3024824&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1661449,109.3024824&format=gif'),
(159, '7a483e0f', 'eb0cf3c98d5fc7e6102f317195a92413', 'CÃ´n Äáº£o SeaTravel', '6, Nguyá»…n Äá»©c Thuáº­n, Con Dao, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.678821,106.602123', 8.678821, 106.602119, 'lodging', 'maps/raw/places/staticmap/location=8.678821,106.602123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678821,106.602123&format=gif'),
(160, 'd880c539', '8f9eab57241fce91dcea4de85fa2c7b3', 'CÃ´n Äáº£o Sea Travel Resort', 'BÃ£i An Háº£i, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, Vietnam', '8.678789,106.602637', 8.678789, 106.602638, 'lodging', 'maps/raw/places/staticmap/location=8.678789,106.602637&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678789,106.602637&format=gif'),
(161, 'a51937f9', '814b541cdde178adf150e7fbec0e10ff', 'Kos Island International Airport', 'Kos 853 02, Greece', '36.794215,27.088395', 36.794216, 27.088394, 'airport', 'maps/raw/places/staticmap/location=36.794215,27.088395&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.794215,27.088395&format=gif'),
(162, 'a0397e35', '4eec37d6859de37b9df0d03c545592ed', 'LGKF', 'Kefalonia 281 00, Greece', '38.119503,20.504924', 38.119503, 20.504925, 'airport', 'maps/raw/places/staticmap/location=38.119503,20.504924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.119503,20.504924&format=gif'),
(163, 'baa37396', 'c783aeadf0086cf8c250814ae1d04aa2', 'Marshall Islands International Airport', 'Marshall Islands', '7.065189,171.272737', 7.065189, 171.272736, 'airport', 'maps/raw/places/staticmap/location=7.065189,171.272737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.065189,171.272737&format=gif'),
(164, '437972be', '5ad066d45b573abe923277575ec612aa', 'Qingdao International Airport', '99 Min Hang Lu, Chengyang Qu, Qingdao Shi, Shandong Sheng, China', '36.266674,120.383123', 36.266674, 120.383125, 'airport', 'maps/raw/places/staticmap/location=36.266674,120.383123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.266674,120.383123&format=gif'),
(165, '5ee755c2', '1e106feec2b611bc71b36eb463138ff4', 'Green Island Airport', '951, Taiwan, Taitung County, LÃ¼dao Township, 231', '22.672362,121.466863', 22.672361, 121.466866, 'airport', 'maps/raw/places/staticmap/location=22.672362,121.466863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.672362,121.466863&format=gif'),
(166, '81d40911', '52bb181c5d32a602408b5465e12d9d57', 'Qinhuangdao Shanhaiguan Airport', 'Shanhaiguan, Qinhuangdao, Hebei, China', '39.968056,119.731111', 39.968056, 119.731110, 'airport', 'maps/raw/places/staticmap/location=39.968056,119.731111&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.968056,119.731111&format=gif'),
(167, '824ed644', '9b7ef8a786e016826483f941b04cc82d', 'SÃ i GÃ²n CÃ´n Äáº£o Resort', 'Huyá»‡n á»§y CÃ´n Äáº£o, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.682649,106.609396', 8.682649, 106.609398, 'travel_agency', 'maps/raw/places/staticmap/location=8.682649,106.609396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.682649,106.609396&format=gif'),
(168, '88a218d9', 'ca5cc3071df902a950449ca9ec245cb8', 'Khu Biá»‡t thá»± KhÃ¡ch sáº¡n SÃ i GÃ²n - CÃ´n Äáº£o', '18-24 TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.683005,106.609698', 8.683005, 106.609695, 'lodging', 'maps/raw/places/staticmap/location=8.683005,106.609698&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683005,106.609698&format=gif'),
(169, '03a82f6d', 'd0156f651e0e423b41119b1ea1d8a14b', 'Tam Dao National Park', 'Tam Äáº£o, VÄ©nh PhÃºc, Vietnam', '21.484176,105.61102', 21.484177, 105.611023, 'park', 'maps/raw/places/staticmap/location=21.484176,105.61102&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.484176,105.61102&format=gif'),
(170, '1f662085', 'b3a4065c79fa42df57bc8ce305dd5701', 'CÃ´n Äáº£o Resort', '8, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.677575,106.601062', 8.677575, 106.601059, 'establishment', 'maps/raw/places/staticmap/location=8.677575,106.601062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.677575,106.601062&format=gif'),
(171, '83b9a61f', '7f88f5fc648d77f491f6efd4524419c6', 'Äáº£o cÃ² Chi LÄƒng Nam', 'tt. Thanh Miá»‡n, Thanh Miá»‡n, Háº£i DÆ°Æ¡ng, Vietnam', '20.71361,106.227922', 20.713610, 106.227921, 'establishment', 'maps/raw/places/staticmap/location=20.71361,106.227922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.71361,106.227922&format=gif'),
(172, '21e5c734', '7ed8e1e3af74bed9dd09e713b7ab5edb', 'Con Dao Airport Terminal', 'Cá» á»ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.731235,106.628713', 8.731235, 106.628716, 'establishment', 'maps/raw/places/staticmap/location=8.731235,106.628713&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.731235,106.628713&format=gif'),
(173, '51e182e6', 'fb7f701c4d138befd3e3c29efe84643d', 'Ks SÃ i GÃ²n - CÃ´n Äáº£o', '18-24, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.683978,106.611468', 8.683978, 106.611465, 'lodging', 'maps/raw/places/staticmap/location=8.683978,106.611468&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683978,106.611468&format=gif'),
(174, '1347ef68', '9257b7d00bbe84c1c91f5f3ccbec6bf8', 'Northeast Greenland National Park', 'Greenland', '76,-30', 76.000000, -30.000000, 'park', 'maps/raw/places/staticmap/location=76,-30&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C76,-30&format=gif'),
(175, 'e64c20bb', '1da0b772fe5bb309a800513ca9fd1a97', 'Äáº·t phÃ²ng khÃ¡ch sáº¡n CÃ´n Äáº£o giÃ¡ ráº»', '33 Pháº¡m HÃ¹ng, BÃ¬nh HÆ°ng, BÃ¬nh ChÃ¡nh, Há»“ ChÃ­ Minh, Vietnam', '10.725845,106.678662', 10.725845, 106.678665, 'lodging', 'maps/raw/places/staticmap/location=10.725845,106.678662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.725845,106.678662&format=gif'),
(176, 'c56bb139', '3f82a70300915cf48ec1de562ba1d941', 'CÃ´n Äáº£o Resort', 'Nguyá»…n Äá»©c Thuáº­n, huyá»‡n CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.678022,106.601345', 8.678022, 106.601341, 'restaurant', 'maps/raw/places/staticmap/location=8.678022,106.601345&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678022,106.601345&format=gif'),
(177, '5099af51', '839812f2c30591e5247ba4e70ddc6b5e', 'BÆ°u Äiá»‡n Tam Äáº£o', '21 Tam Äáº£o, 15, 10, Há»“ ChÃ­ Minh, Vietnam', '10.779523,106.663294', 10.779523, 106.663292, 'establishment', 'maps/raw/places/staticmap/location=10.779523,106.663294&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.779523,106.663294&format=gif'),
(178, '2f9404b3', 'a916089fe959acd6e347c2ecae5968ee', 'Bá»ƒ bÆ¡i bÃ¡n Ä‘áº£o Linh ÄÃ m', 'Khu Ä‘Ã´ thá»‹ Linh ÄÃ m, HoÃ ng Liá»‡t, HoÃ ng Mai, HÃ  Ná»™i, Vietnam', '20.964152,105.829259', 20.964151, 105.829262, 'establishment', 'maps/raw/places/staticmap/location=20.964152,105.829259&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.964152,105.829259&format=gif'),
(179, 'df0ffbd9', '62b847ee086d4697349cab15d7e8e5cb', 'Soc Trang', 'Soc Trang, Vietnam', '9.6003688,105.9599539', 9.600369, 105.959953, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.6003688,105.9599539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.6003688,105.9599539&format=gif'),
(180, 'ce70ceef', '207f9b40a04d45e4aa54cbe84fb741f8', 'Afghanistan', 'Afghanistan', '33.93911,67.709953', 33.939110, 67.709953, 'country', 'maps/raw/places/staticmap/location=33.93911,67.709953&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.93911,67.709953&format=gif'),
(181, '3cdfd90e', '6495ce0173e2e57e0b3c8840b37f4c16', 'Albania', 'Albania', '41.153332,20.168331', 41.153332, 20.168331, 'country', 'maps/raw/places/staticmap/location=41.153332,20.168331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.153332,20.168331&format=gif'),
(182, '6369f80f', '3a26dbe4288a5c82ea133dd1e9153bcd', 'Algeria', 'Algeria', '28.033886,1.659626', 28.033886, 1.659626, 'country', 'maps/raw/places/staticmap/location=28.033886,1.659626&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.033886,1.659626&format=gif'),
(183, '45ecbd4f', 'dc7572887606b91d005b9f701a6e5598', 'Andorra', 'Andorra', '42.506285,1.521801', 42.506287, 1.521801, 'country', 'maps/raw/places/staticmap/location=42.506285,1.521801&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.506285,1.521801&format=gif'),
(184, 'c80af15e', '2f48608a55528259962f85322b963a12', 'Andorra la Vella', 'Andorra la Vella, Andorra', '42.5063174,1.5218355', 42.506317, 1.521835, 'locality', 'maps/raw/places/staticmap/location=42.5063174,1.5218355&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.5063174,1.5218355&format=gif'),
(185, 'da4de59f', 'd3568a741b6d6464f26b3991f41719e6', 'Angola', 'Angola', '-11.202692,17.873887', -11.202692, 17.873886, 'country', 'maps/raw/places/staticmap/location=-11.202692,17.873887&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.202692,17.873887&format=gif'),
(186, '59cdaec9', 'f9d4a021ceee8784368ed4e37fc43cca', 'Antigua and Barbuda', 'Antigua and Barbuda', '17.060816,-61.796428', 17.060816, -61.796429, 'country', 'maps/raw/places/staticmap/location=17.060816,-61.796428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.060816,-61.796428&format=gif'),
(187, 'cc31d7fd', 'b380a7a71735a2049b0d5c274277bf9d', 'Armenia', 'Armenia', '40.069099,45.038189', 40.069099, 45.038189, 'country', 'maps/raw/places/staticmap/location=40.069099,45.038189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.069099,45.038189&format=gif'),
(188, '77ff8ef3', '87ad6668219e5446f9f60963ca99eab9', 'Austria', 'Austria', '47.516231,14.550072', 47.516232, 14.550072, 'country', 'maps/raw/places/staticmap/location=47.516231,14.550072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.516231,14.550072&format=gif'),
(189, '007f063e', '06fa6988f7d4584154b7f50c744a937d', 'Azerbaijan', 'Azerbaijan', '40.143105,47.576927', 40.143105, 47.576927, 'country', 'maps/raw/places/staticmap/location=40.143105,47.576927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.143105,47.576927&format=gif'),
(190, '5b931420', 'b9691c2482315e17cb87d889d3715461', 'The Bahamas', 'The Bahamas', '25.03428,-77.39628', 25.034281, -77.396278, 'country', 'maps/raw/places/staticmap/location=25.03428,-77.39628&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.03428,-77.39628&format=gif'),
(191, '96fdf906', '8a9ae1acd6384b37d0e9cc18ba1794e4', 'Bahrain', 'Bahrain', '26.0667,50.5577', 26.066700, 50.557701, 'country', 'maps/raw/places/staticmap/location=26.0667,50.5577&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.0667,50.5577&format=gif'),
(192, 'ce824fec', '381d003f2752270b0c73aa1e71567f98', 'Bangladesh', 'Bangladesh', '23.684994,90.356331', 23.684994, 90.356331, 'country', 'maps/raw/places/staticmap/location=23.684994,90.356331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.684994,90.356331&format=gif'),
(193, 'b3ae9ebf', 'dc82deff2164769c92e1b68695386907', 'Barbados', 'Barbados', '13.193887,-59.543198', 13.193887, -59.543198, 'country', 'maps/raw/places/staticmap/location=13.193887,-59.543198&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.193887,-59.543198&format=gif'),
(194, '8a4dcc60', '0c356ed8c7e52fd89d39299915d2bcbf', 'Belarus', 'Belarus', '53.709807,27.953389', 53.709808, 27.953388, 'country', 'maps/raw/places/staticmap/location=53.709807,27.953389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.709807,27.953389&format=gif'),
(195, 'dc66ae53', '90cfd4711077080df97a8f2539bb1edd', 'Belize', 'Belize', '17.189877,-88.49765', 17.189877, -88.497650, 'country', 'maps/raw/places/staticmap/location=17.189877,-88.49765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.189877,-88.49765&format=gif'),
(196, '4208ea59', '1e0a71f7ec9514eee9e9e81b96454073', 'Benin', 'Benin', '9.30769,2.315834', 9.307690, 2.315834, 'country', 'maps/raw/places/staticmap/location=9.30769,2.315834&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.30769,2.315834&format=gif'),
(197, 'ea54617f', 'd632cba6e6ae9582728181c53e29ed7e', 'Bhutan', 'Bhutan', '27.514162,90.433601', 27.514162, 90.433601, 'country', 'maps/raw/places/staticmap/location=27.514162,90.433601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.514162,90.433601&format=gif'),
(198, '5a0ffaeb', '39a2585970551fe1d9fd242e74dfef45', 'Bolivia', 'Bolivia', '-16.290154,-63.588653', -16.290154, -63.588654, 'country', 'maps/raw/places/staticmap/location=-16.290154,-63.588653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-16.290154,-63.588653&format=gif'),
(199, 'ca3023ac', '777eb518681ba3dc52c653890bb59cc4', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', '43.915886,17.679076', 43.915886, 17.679075, 'country', 'maps/raw/places/staticmap/location=43.915886,17.679076&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.915886,17.679076&format=gif'),
(200, '3388715d', '0e051763f057916ab4617a40a3424236', 'Botswana', 'Botswana', '-22.328474,24.684866', -22.328474, 24.684866, 'country', 'maps/raw/places/staticmap/location=-22.328474,24.684866&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.328474,24.684866&format=gif'),
(201, '1016dd64', '7642bfce0f160c283b6a15696940c3ad', 'Brunei', 'Brunei', '4.535277,114.727669', 4.535277, 114.727669, 'country', 'maps/raw/places/staticmap/location=4.535277,114.727669&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.535277,114.727669&format=gif'),
(202, 'bff26485', 'fb3d899bc07a76011ed34f7f2521ef04', 'Bulgaria', 'Bulgaria', '42.733883,25.48583', 42.733883, 25.485830, 'country', 'maps/raw/places/staticmap/location=42.733883,25.48583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.733883,25.48583&format=gif'),
(203, 'b367b1fb', 'b3f1045abf4d1bcfd5ad42493eae2930', 'Burkina Faso', 'Burkina Faso', '12.238333,-1.561593', 12.238333, -1.561593, 'country', 'maps/raw/places/staticmap/location=12.238333,-1.561593&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.238333,-1.561593&format=gif'),
(204, 'ac756781', '6fda714e1d7a081eea5e2f961406c3d6', 'Republic of the Union of Myanmar', 'Republic of the Union of Myanmar', '21.913965,95.956223', 21.913965, 95.956223, 'country', 'maps/raw/places/staticmap/location=21.913965,95.956223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.913965,95.956223&format=gif'),
(205, 'b5ea4798', '3fa89dcb76ff437adfa56d3cc37e7a6d', 'Burundi', 'Burundi', '-3.373056,29.918886', -3.373056, 29.918886, 'country', 'maps/raw/places/staticmap/location=-3.373056,29.918886&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-3.373056,29.918886&format=gif'),
(206, '8852a653', '4266125e0c4f0981056e95e95b66e783', 'Cambodia', 'Cambodia', '12.565679,104.990963', 12.565679, 104.990967, 'country', 'maps/raw/places/staticmap/location=12.565679,104.990963&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.565679,104.990963&format=gif'),
(207, '2d8916d7', 'fc5fb23d075506030774313b3b22a378', 'Cameroon', 'Cameroon', '7.369722,12.354722', 7.369722, 12.354722, 'country', 'maps/raw/places/staticmap/location=7.369722,12.354722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.369722,12.354722&format=gif'),
(208, 'b840ae9a', '03d45d30ecdaca70cae7f1a8d55b344d', 'Cape Verde', 'Cape Verde', '15.120142,-23.6051721', 15.120142, -23.605171, 'country', 'maps/raw/places/staticmap/location=15.120142,-23.6051721&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.120142,-23.6051721&format=gif'),
(209, '35cae5dd', '8bdab0de5a2cda226cf75c7dd32b8e2a', 'Central African Republic', 'Central African Republic', '6.611111,20.939444', 6.611111, 20.939444, 'country', 'maps/raw/places/staticmap/location=6.611111,20.939444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.611111,20.939444&format=gif'),
(210, '5afe39c6', '2eded59d571c09561baf918d63b00e4d', 'Chad', 'Chad', '15.454166,18.732207', 15.454166, 18.732206, 'country', 'maps/raw/places/staticmap/location=15.454166,18.732207&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.454166,18.732207&format=gif'),
(211, 'f64de8f0', 'eff3a8e24105a0e5dd66eecb37e9d7c7', 'Chile', 'Chile', '-35.675147,-71.542969', -35.675148, -71.542969, 'country', 'maps/raw/places/staticmap/location=-35.675147,-71.542969&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-35.675147,-71.542969&format=gif'),
(212, 'be89688a', '355672960553a7e2c3eac0fb834acda9', 'Comoros', 'Comoros', '-11.6455,43.3333', -11.645500, 43.333302, 'country', 'maps/raw/places/staticmap/location=-11.6455,43.3333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.6455,43.3333&format=gif'),
(213, '5f3e483e', 'a5dbc77555dc19f99ce318eb5be7a9f7', 'Congo', 'Congo', '-0.228021,15.827659', -0.228021, 15.827659, 'country', 'maps/raw/places/staticmap/location=-0.228021,15.827659&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.228021,15.827659&format=gif'),
(214, 'c33c4a03', '64d1495c81efd61b6ccbd5744c04bc36', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', '-4.038333,21.758664', -4.038333, 21.758663, 'country', 'maps/raw/places/staticmap/location=-4.038333,21.758664&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-4.038333,21.758664&format=gif'),
(215, 'c4e506bf', '672acf57eccae55c4583f27ac42087cd', 'Costa Rica', 'Costa Rica', '9.748917,-83.753428', 9.748917, -83.753426, 'country', 'maps/raw/places/staticmap/location=9.748917,-83.753428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.748917,-83.753428&format=gif'),
(216, 'b797689d', '5e53b983d8ab018abae45ea6db56a32a', 'Croatia', 'Croatia', '45.1,15.2', 45.099998, 15.200000, 'country', 'maps/raw/places/staticmap/location=45.1,15.2&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.1,15.2&format=gif'),
(217, '3178e2b6', 'ced0931b2d0f1d62e204035e0e4bf1c1', 'Cuba', 'Cuba', '21.521757,-77.781167', 21.521757, -77.781166, 'country', 'maps/raw/places/staticmap/location=21.521757,-77.781167&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.521757,-77.781167&format=gif'),
(218, 'aaea7422', '9a3f1793ce3b704f32419eca2c1bbf3b', 'Cyprus', 'Cyprus', '35.126413,33.429859', 35.126411, 33.429859, 'country', 'maps/raw/places/staticmap/location=35.126413,33.429859&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.126413,33.429859&format=gif'),
(219, '071e1c2c', '933a1672593c4e64b93152d7ca987501', 'Djibouti', 'Djibouti', '11.825138,42.590275', 11.825138, 42.590275, 'country', 'maps/raw/places/staticmap/location=11.825138,42.590275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.825138,42.590275&format=gif'),
(220, '4b0309fb', '45ce69b9f020bbfd4b67361251a0c4b2', 'Djibouti', 'Djibouti, Djibouti', '11.588333,43.145', 11.588333, 43.145000, 'locality', 'maps/raw/places/staticmap/location=11.588333,43.145&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.588333,43.145&format=gif'),
(221, 'a6dd5f65', 'bf64605730d4c9a8e137ee0ce8b325ce', 'Dominica', 'Dominica', '15.414999,-61.370976', 15.414999, -61.370975, 'country', 'maps/raw/places/staticmap/location=15.414999,-61.370976&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.414999,-61.370976&format=gif'),
(222, '48c05f15', 'dbc8a1efb6d17966ce6828bf5e3bd548', 'Dominican Republic', 'Dominican Republic', '18.735693,-70.162651', 18.735693, -70.162651, 'country', 'maps/raw/places/staticmap/location=18.735693,-70.162651&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.735693,-70.162651&format=gif'),
(223, '8c3afd7a', 'f3a7a93fbf07f1c1daaa4a733c7c2c49', 'East Timor', 'East Timor', '-8.874217,125.727539', -8.874217, 125.727539, 'country', 'maps/raw/places/staticmap/location=-8.874217,125.727539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-8.874217,125.727539&format=gif'),
(224, '5190092d', '322f31ec0c335bfb785ba7e0e6969f8e', 'Egypt', 'Egypt', '26.820553,30.802498', 26.820553, 30.802498, 'country', 'maps/raw/places/staticmap/location=26.820553,30.802498&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.820553,30.802498&format=gif'),
(225, '94668225', '68b62b4f27731da3e25eb0ec81572865', 'El Salvador', 'El Salvador', '13.794185,-88.89653', 13.794185, -88.896530, 'country', 'maps/raw/places/staticmap/location=13.794185,-88.89653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.794185,-88.89653&format=gif'),
(226, 'f0607404', '49c61be4009021bd4e4285a7e81f1dc7', 'England', 'England, UK', '52.3555177,-1.1743197', 52.355518, -1.174320, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.3555177,-1.1743197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.3555177,-1.1743197&format=gif'),
(227, 'b0123cee', 'ba1677acc012d8f6b7182b3ab766f9e7', 'Equatorial Guinea', 'Equatorial Guinea', '1.650801,10.267895', 1.650801, 10.267895, 'country', 'maps/raw/places/staticmap/location=1.650801,10.267895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.650801,10.267895&format=gif'),
(228, '07c48714', '8324b71942911433a37bfb3e372dc271', 'Eritrea', 'Eritrea', '15.179384,39.782334', 15.179384, 39.782333, 'country', 'maps/raw/places/staticmap/location=15.179384,39.782334&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.179384,39.782334&format=gif'),
(229, '135fa511', '76d3f0d1811ac033d1cf5c939a329503', 'Estonia', 'Estonia', '58.595272,25.013607', 58.595272, 25.013607, 'country', 'maps/raw/places/staticmap/location=58.595272,25.013607&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C58.595272,25.013607&format=gif'),
(230, 'c84a84e9', '8140ae14adb3de9ef5a861dab2764e8b', 'Ethiopia', 'Ethiopia', '9.145,40.489673', 9.145000, 40.489674, 'country', 'maps/raw/places/staticmap/location=9.145,40.489673&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.145,40.489673&format=gif'),
(231, '3d1e17ae', '04f24037a97661dc777bd572dafa0023', 'Fiji', 'Fiji', '-17.713371,178.065032', -17.713371, 178.065033, 'country', 'maps/raw/places/staticmap/location=-17.713371,178.065032&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-17.713371,178.065032&format=gif'),
(232, 'e51e9f82', '87de03467ea6b58a3b022559e8b40ddd', 'Finland', 'Finland', '61.92411,25.748151', 61.924110, 25.748152, 'country', 'maps/raw/places/staticmap/location=61.92411,25.748151&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C61.92411,25.748151&format=gif'),
(233, 'cbc997a0', '044b173ce8d9539bc8dbbc394307897f', 'Gabon', 'Gabon', '-0.803689,11.609444', -0.803689, 11.609444, 'country', 'maps/raw/places/staticmap/location=-0.803689,11.609444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.803689,11.609444&format=gif'),
(234, '6f657851', 'c950494edc402f0c10fea62af80aa3b5', 'The Gambia', 'The Gambia', '13.443182,-15.310139', 13.443182, -15.310139, 'country', 'maps/raw/places/staticmap/location=13.443182,-15.310139&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.443182,-15.310139&format=gif'),
(235, '2f60eddb', '59dcf465e0e5900551061cf59d796544', 'Georgia', 'Georgia', '42.315407,43.356892', 42.315407, 43.356892, 'country', 'maps/raw/places/staticmap/location=42.315407,43.356892&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.315407,43.356892&format=gif'),
(236, '9e422f6d', '20dc11057c3341b1036a74c15d47627c', 'Ghana', 'Ghana', '7.946527,-1.023194', 7.946527, -1.023194, 'country', 'maps/raw/places/staticmap/location=7.946527,-1.023194&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.946527,-1.023194&format=gif'),
(237, 'ff25b87c', '820086a60a1146ddfbcf953dec6bc27b', 'United Kingdom', 'United Kingdom', '55.378051,-3.435973', 55.378052, -3.435973, 'country', 'maps/raw/places/staticmap/location=55.378051,-3.435973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.378051,-3.435973&format=gif'),
(238, 'f5f12a94', 'a9dc361d24bb2f690858a6d3d1f734fe', 'Grenada', 'Grenada', '12.1165,-61.679', 12.116500, -61.679001, 'country', 'maps/raw/places/staticmap/location=12.1165,-61.679&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1165,-61.679&format=gif'),
(239, '2cf61a8b', 'dbabbfc561271d0b23484d19bff8198e', 'Guatemala', 'Guatemala', '15.783471,-90.230759', 15.783471, -90.230759, 'country', 'maps/raw/places/staticmap/location=15.783471,-90.230759&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.783471,-90.230759&format=gif'),
(240, '0776e2cd', '13a73077ed2fb2cfbe517d918b0c57c4', 'Guatemala City', 'Guatemala City, Guatemala', '14.613333,-90.535278', 14.613333, -90.535278, 'locality', 'maps/raw/places/staticmap/location=14.613333,-90.535278&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.613333,-90.535278&format=gif'),
(241, '736fe142', 'd93b1f0bc8b39393f0bf44d894575984', 'Guatemala', 'Guatemala, Guatemala', '14.7514999,-90.5257823', 14.751500, -90.525780, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=14.7514999,-90.5257823&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.7514999,-90.5257823&format=gif'),
(242, '8089ca32', '78267cb10c974cabcda3ef1328e40734', 'Guinea-Bissau', 'Guinea-Bissau', '11.803749,-15.180413', 11.803749, -15.180413, 'country', 'maps/raw/places/staticmap/location=11.803749,-15.180413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.803749,-15.180413&format=gif'),
(243, '0703ccb8', '907ca847f4b769b70f9ad1c46fcddab1', 'Guyana', 'Guyana', '4.860416,-58.93018', 4.860416, -58.930180, 'country', 'maps/raw/places/staticmap/location=4.860416,-58.93018&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.860416,-58.93018&format=gif'),
(244, 'ffa384e0', 'eb9eeee1875df91c55259bf1296886bf', 'Haiti', 'Haiti', '18.971187,-72.285215', 18.971188, -72.285217, 'country', 'maps/raw/places/staticmap/location=18.971187,-72.285215&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.971187,-72.285215&format=gif'),
(245, '90ba3344', '953e207b6386385fd5539e52ba0ac8ff', 'Honduras', 'Honduras', '15.199999,-86.241905', 15.199999, -86.241905, 'country', 'maps/raw/places/staticmap/location=15.199999,-86.241905&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.199999,-86.241905&format=gif'),
(246, 'ea12496e', 'ed3f7e6c11706c707c579866fcbc7830', 'Hungary', 'Hungary', '47.162494,19.503304', 47.162495, 19.503304, 'country', 'maps/raw/places/staticmap/location=47.162494,19.503304&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.162494,19.503304&format=gif'),
(247, '62be2d6c', '5e5a9b945db9e1877b5ff06952261fe5', 'Iceland', 'Iceland', '64.963051,-19.020835', 64.963051, -19.020836, 'country', 'maps/raw/places/staticmap/location=64.963051,-19.020835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C64.963051,-19.020835&format=gif'),
(248, '8509cf6b', '2e87dc75195f57b0a0b4bc1c27a47a6e', 'Indonesia', 'Indonesia', '-0.789275,113.921327', -0.789275, 113.921326, 'country', 'maps/raw/places/staticmap/location=-0.789275,113.921327&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.789275,113.921327&format=gif'),
(249, 'd40be3c8', '9436bd2bf63d552ddec14015a9711503', 'Iraq', 'Iraq', '33.223191,43.679291', 33.223190, 43.679291, 'country', 'maps/raw/places/staticmap/location=33.223191,43.679291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.223191,43.679291&format=gif'),
(250, '2d7944c1', '97e7534b3d35c7e69d6947014d3b6651', 'Ireland', 'Ireland', '53.41291,-8.24389', 53.412910, -8.243890, 'country', 'maps/raw/places/staticmap/location=53.41291,-8.24389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.41291,-8.24389&format=gif'),
(251, '78bb61d9', 'b4a201c0426b5593dbf404834a9ec665', 'Israel', 'Israel', '31.046051,34.851612', 31.046051, 34.851612, 'country', 'maps/raw/places/staticmap/location=31.046051,34.851612&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.046051,34.851612&format=gif'),
(252, '6bf96a97', 'dfdedb3da96bf7449960c3b0e6656929', 'Jamaica', 'Jamaica', '18.109581,-77.297508', 18.109581, -77.297508, 'country', 'maps/raw/places/staticmap/location=18.109581,-77.297508&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.109581,-77.297508&format=gif'),
(253, '2522ca5c', '7b83e1e1ad4c197fcf9a440237f6f146', 'Jordan', 'Jordan', '30.585164,36.238414', 30.585163, 36.238415, 'country', 'maps/raw/places/staticmap/location=30.585164,36.238414&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.585164,36.238414&format=gif'),
(254, 'ba4e2f0f', '99a4d62e9c9b5a4b9eb4936d23f7b143', 'Kazakhstan', 'Kazakhstan', '48.019573,66.923684', 48.019573, 66.923683, 'country', 'maps/raw/places/staticmap/location=48.019573,66.923684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.019573,66.923684&format=gif'),
(255, '674e1079', 'a96aacb5f5a53d8ba10ef1c8ab445f3c', 'Kenya', 'Kenya', '-0.023559,37.906193', -0.023559, 37.906193, 'country', 'maps/raw/places/staticmap/location=-0.023559,37.906193&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.023559,37.906193&format=gif'),
(256, 'f15dd034', '2a41674ced1331be6e7fe32a7470d676', 'Kiribati', 'Kiribati', '1.8709185,-157.3626011', 1.870918, -157.362595, 'country', 'maps/raw/places/staticmap/location=1.8709185,-157.3626011&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.8709185,-157.3626011&format=gif'),
(257, 'c648b887', '4f1db3f53742a5545a075b4bf7412dab', 'North Korea', 'North Korea', '40.339852,127.510093', 40.339851, 127.510094, 'country', 'maps/raw/places/staticmap/location=40.339852,127.510093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.339852,127.510093&format=gif'),
(258, '3d36c033', '21a00676690d8fe930bcea25899847d2', 'South Korea', 'South Korea', '35.907757,127.766922', 35.907757, 127.766922, 'country', 'maps/raw/places/staticmap/location=35.907757,127.766922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.907757,127.766922&format=gif'),
(259, '906f3258', '684a8fdbca7b5c06686aff71a3abd575', 'Kuwait', 'Kuwait', '29.31166,47.481766', 29.311661, 47.481766, 'country', 'maps/raw/places/staticmap/location=29.31166,47.481766&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.31166,47.481766&format=gif'),
(260, '5eb9cb60', 'f5386375d083f17bf89ec4ea9290a565', 'Kuwait City', 'Kuwait City, Kuwait', '29.375859,47.9774052', 29.375858, 47.977406, 'locality', 'maps/raw/places/staticmap/location=29.375859,47.9774052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.375859,47.9774052&format=gif'),
(261, 'e2eaac98', 'fa5f6dd3e9d46b883bf7e7967d11b2a4', 'Al Asimah', 'Al Asimah, Kuwait', '29.3342457,47.9812152', 29.334246, 47.981216, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=29.3342457,47.9812152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.3342457,47.9812152&format=gif'),
(262, '6cf74f7b', 'de4ceec312c6496049d1af26cb775426', 'Kyrgyzstan', 'Kyrgyzstan', '41.20438,74.766098', 41.204380, 74.766098, 'country', 'maps/raw/places/staticmap/location=41.20438,74.766098&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.20438,74.766098&format=gif'),
(263, '05278411', 'c6d0ee58bbf76e7ff6e13f9f57ae1240', 'Laos', 'Laos', '19.85627,102.495496', 19.856270, 102.495499, 'country', 'maps/raw/places/staticmap/location=19.85627,102.495496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.85627,102.495496&format=gif'),
(264, 'e74dee99', '169f3a30a83bb00f40836954419112da', 'Latvia', 'Latvia', '56.879635,24.603189', 56.879635, 24.603189, 'country', 'maps/raw/places/staticmap/location=56.879635,24.603189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.879635,24.603189&format=gif'),
(265, '9b15da14', '371f4410b68b8163060d91c2c6634631', 'Lebanon', 'Lebanon', '33.854721,35.862285', 33.854721, 35.862286, 'country', 'maps/raw/places/staticmap/location=33.854721,35.862285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.854721,35.862285&format=gif'),
(266, '4716f0c4', '982c200a0d21927d43585a330343b201', 'Lesotho', 'Lesotho', '-29.609988,28.233608', -29.609987, 28.233608, 'country', 'maps/raw/places/staticmap/location=-29.609988,28.233608&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-29.609988,28.233608&format=gif'),
(267, 'f11b7b14', '275d9b11b81705e6229cfc74df1b3758', 'Liberia', 'Liberia', '6.428055,-9.429499', 6.428055, -9.429499, 'country', 'maps/raw/places/staticmap/location=6.428055,-9.429499&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.428055,-9.429499&format=gif'),
(268, '58674b0e', 'ea64e190a9531c5bc33e8fc5490c7027', 'Libya', 'Libya', '26.3351,17.228331', 26.335100, 17.228331, 'country', 'maps/raw/places/staticmap/location=26.3351,17.228331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.3351,17.228331&format=gif'),
(269, '183d4408', 'f6abf617bad6f5fda2b2810bd84e37d0', 'Liechtenstein', 'Liechtenstein', '47.166,9.555373', 47.166000, 9.555373, 'country', 'maps/raw/places/staticmap/location=47.166,9.555373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.166,9.555373&format=gif'),
(270, '8cadac0d', 'a20de85cea357d4fa9063c3fd5f08032', 'Lithuania', 'Lithuania', '55.169438,23.881275', 55.169437, 23.881275, 'country', 'maps/raw/places/staticmap/location=55.169438,23.881275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.169438,23.881275&format=gif'),
(271, '451fe768', '49fb2ecf37f4b88bd16adf03802cbde7', 'Luxembourg', 'Luxembourg', '49.815273,6.129583', 49.815273, 6.129583, 'country', 'maps/raw/places/staticmap/location=49.815273,6.129583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.815273,6.129583&format=gif'),
(272, '3abfc6bf', '0177849912865ee7cdb53be7f42a434a', 'Macedonia (FYROM)', 'Macedonia (FYROM)', '41.608635,21.745275', 41.608635, 21.745275, 'country', 'maps/raw/places/staticmap/location=41.608635,21.745275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.608635,21.745275&format=gif'),
(273, '95f5c679', 'f1484e4f3f1eb2032a1d07562c82c53c', 'Madagascar', 'Madagascar', '-18.766947,46.869107', -18.766947, 46.869106, 'country', 'maps/raw/places/staticmap/location=-18.766947,46.869107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-18.766947,46.869107&format=gif'),
(274, '8cf07ecd', '97d4c1cf55d6119630926886af5357c8', 'Malawi', 'Malawi', '-13.254308,34.301525', -13.254308, 34.301525, 'country', 'maps/raw/places/staticmap/location=-13.254308,34.301525&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-13.254308,34.301525&format=gif'),
(275, '1b6ec2a7', '71e0c68a01651fe37f22ce9a9dd00bfd', 'Maldives', 'Maldives', '1.977247,73.5361034', 1.977247, 73.536102, 'country', 'maps/raw/places/staticmap/location=1.977247,73.5361034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.977247,73.5361034&format=gif'),
(276, 'c7ef99dc', '35d31c506384eb77a2e3cb2e0b7d5194', 'Mali', 'Mali', '17.570692,-3.996166', 17.570692, -3.996166, 'country', 'maps/raw/places/staticmap/location=17.570692,-3.996166&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.570692,-3.996166&format=gif'),
(277, 'd2b4cfa9', '240fb2659a32c903bebcb2229c8f1af1', 'Malta', 'Malta', '35.937496,14.375416', 35.937496, 14.375416, 'country', 'maps/raw/places/staticmap/location=35.937496,14.375416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.937496,14.375416&format=gif'),
(278, '9baec459', '5dc965bac0ed5f6e3303aa07082f3f91', 'Mauritania', 'Mauritania', '21.00789,-10.940835', 21.007891, -10.940835, 'country', 'maps/raw/places/staticmap/location=21.00789,-10.940835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.00789,-10.940835&format=gif'),
(279, '3926c017', 'a6736ecdfea49ba77d89d87a92567a42', 'Mauritius', 'Mauritius', '-20.348404,57.552152', -20.348404, 57.552151, 'country', 'maps/raw/places/staticmap/location=-20.348404,57.552152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-20.348404,57.552152&format=gif'),
(280, 'b8ca8ac4', 'fc0030c802ece0cac7bff4d31b0a71d1', 'Micronesia', 'Micronesia', '6.8874813,158.2150717', 6.887481, 158.215073, 'country', 'maps/raw/places/staticmap/location=6.8874813,158.2150717&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.8874813,158.2150717&format=gif'),
(281, '30999596', '5325d75157b9e217f1f9cbc9866ec067', 'Moldova', 'Moldova', '47.411631,28.369885', 47.411633, 28.369884, 'country', 'maps/raw/places/staticmap/location=47.411631,28.369885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.411631,28.369885&format=gif'),
(282, 'c26490cd', '74a70bff99564bdf2d64825208af19be', 'Monaco', 'Monaco', '43.7384176,7.4246158', 43.738419, 7.424616, 'country', 'maps/raw/places/staticmap/location=43.7384176,7.4246158&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.7384176,7.4246158&format=gif'),
(283, '34d960c4', 'cd6bbb5f55ed531ca34df1aa92032bb7', 'Mongolia', 'Mongolia', '46.862496,103.846656', 46.862495, 103.846657, 'country', 'maps/raw/places/staticmap/location=46.862496,103.846656&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C46.862496,103.846656&format=gif'),
(284, '8ffb98cd', 'caf1f3b4146040e3beee06acb61adeb8', 'Morocco', 'Morocco', '31.791702,-7.09262', 31.791702, -7.092620, 'country', 'maps/raw/places/staticmap/location=31.791702,-7.09262&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.791702,-7.09262&format=gif'),
(285, '7e900a71', '1d3f1297a35bb0d0db037e3e8abb35fd', 'Namibia', 'Namibia', '-22.95764,18.49041', -22.957640, 18.490410, 'country', 'maps/raw/places/staticmap/location=-22.95764,18.49041&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.95764,18.49041&format=gif'),
(286, '800e8cda', 'eb7676d8fcca98a1f350cb1f99655fa8', 'Nauru', 'Nauru', '-0.522778,166.931503', -0.522778, 166.931503, 'country', 'maps/raw/places/staticmap/location=-0.522778,166.931503&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.522778,166.931503&format=gif'),
(287, 'a1b3a1ac', '92ba5bcd36f905c753b09f49120816b8', 'Nepal', 'Nepal', '28.394857,84.124008', 28.394857, 84.124008, 'country', 'maps/raw/places/staticmap/location=28.394857,84.124008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.394857,84.124008&format=gif'),
(288, '775538b8', '45dd0a932c4cef5b75bbb14d3a8193df', 'Silicon Institute of Technology', 'Silicon Hills, Patia,, Near Infocity, Bhubaneswar, Odisha 751024, India', '20.351478,85.805739', 20.351479, 85.805740, 'point_of_interest', 'maps/raw/places/staticmap/location=20.351478,85.805739&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.351478,85.805739&format=gif'),
(289, '7d91101b', 'c3305c757123440fbd605ed11bc25e4a', 'Silicon Systems', '73 Sydney St, Petone, Petone 5012, New Zealand', '-41.221806,174.877263', -41.221806, 174.877258, 'store', 'maps/raw/places/staticmap/location=-41.221806,174.877263&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-41.221806,174.877263&format=gif'),
(290, '23bffd9f', 'b7232fe5d760cb7579484fa0f973107a', 'The Silicon Group', '95 Whins Road, Alloa, Clackmannanshire FK10 3RF, United Kingdom', '56.119976,-3.781696', 56.119976, -3.781696, 'electronics_store', 'maps/raw/places/staticmap/location=56.119976,-3.781696&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.119976,-3.781696&format=gif'),
(291, '9dc43f7c', 'a9fbf3a39784ec649dc43485a6a912eb', 'SILICON Refractory Anchors Systems BV', 'Monsterseweg 2, 2291 PB Wateringen, Netherlands', '52.012729,4.285951', 52.012730, 4.285951, 'point_of_interest', 'maps/raw/places/staticmap/location=52.012729,4.285951&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.012729,4.285951&format=gif'),
(292, '7b47c188', '6559ba968045f8785a1e9c8ddfe6f281', 'Silicon Image Inc', '1140 East Arques Avenue, Sunnyvale, CA 94085, United States', '37.378644,-121.998338', 37.378643, -121.998337, 'establishment', 'maps/raw/places/staticmap/location=37.378644,-121.998338&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.378644,-121.998338&format=gif'),
(293, 'b9de58f3', '6534f022ba75da12fba1820a88da9489', 'Silicon Laboratories', '400 West Cesar Chavez, Austin, TX 78701, United States', '30.264902,-97.74848', 30.264902, -97.748482, 'establishment', 'maps/raw/places/staticmap/location=30.264902,-97.74848&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.264902,-97.74848&format=gif'),
(294, 'cd06447a', '719684ba4eebb156a1a5538d26d349f9', 'Silicon Valley Community Foundation', '2440 West El Camino Real #300, Mountain View, CA 94040, United States', '37.399306,-122.107726', 37.399307, -122.107727, 'establishment', 'maps/raw/places/staticmap/location=37.399306,-122.107726&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.399306,-122.107726&format=gif'),
(295, '954c4bd4', 'fe32014adf75aec2c8906f9387d05b7f', 'Silicon Valley Bank', '3000 Sand Hill Road #150, Menlo Park, CA 94025, United States', '37.423233,-122.22078', 37.423233, -122.220779, 'bank', 'maps/raw/places/staticmap/location=37.423233,-122.22078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.423233,-122.22078&format=gif'),
(296, 'ef3d5fce', 'a36662a5d07a180b809b7bac68ed6af7', 'Humane Society Silicon Valley', '901 Ames Avenue, Milpitas, CA 95035, United States', '37.421038,-121.88692', 37.421040, -121.886917, 'park', 'maps/raw/places/staticmap/location=37.421038,-121.88692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.421038,-121.88692&format=gif'),
(297, '3a09e0af', 'f1299ad069e1fcd2aff77150c4456862', 'Open-Silicon Inc', '203 Turnpike Street #407, North Andover, MA 01845, United States', '42.673663,-71.127348', 42.673664, -71.127350, 'establishment', 'maps/raw/places/staticmap/location=42.673663,-71.127348&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.673663,-71.127348&format=gif'),
(298, '58fef619', '1874ed9008248e05d65e4d2f350de620', 'Silicon Valley Bank', '504 Lavaca Street #1100, Austin, TX 78731, United States', '30.26823,-97.746024', 30.268230, -97.746025, 'bank', 'maps/raw/places/staticmap/location=30.26823,-97.746024&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.26823,-97.746024&format=gif'),
(299, '5f75e9bb', '64ffcb4aa06bae53dcf3ddbf9e3b4c9f', 'Dubai Silicon Oasis', 'Emirates-Al Ain road intersection, Exit 44 - P.O. Box 6009 - Dubai - United Arab Emirates', '25.124596,55.380921', 25.124596, 55.380920, 'point_of_interest', 'maps/raw/places/staticmap/location=25.124596,55.380921&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.124596,55.380921&format=gif'),
(300, 'b6b33710', '7033cda123e7729dd6c34875f2121671', 'Carnegie Mellon University - Silicon Valley Campus', 'NASA Research Park, Bldg 23, Moffett Field, CA 94035, United States', '37.41043,-122.059753', 37.410431, -122.059753, 'university', 'maps/raw/places/staticmap/location=37.41043,-122.059753&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.41043,-122.059753&format=gif'),
(301, 'bac87e4d', 'b9fd2abe6e0dab436cd111036d93816f', 'Silicon Valley Bank', '3005 Tasman Drive, Santa Clara, CA 95054, United States', '37.404229,-121.983223', 37.404228, -121.983223, 'bank', 'maps/raw/places/staticmap/location=37.404229,-121.983223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.404229,-121.983223&format=gif'),
(302, 'dbad6384', '3e4dd7b0e9783bcf97263601d2e20b09', 'Silicon Valley Community Foundation', '1300 South El Camino Real #100, San Mateo, CA 94402, United States', '37.554596,-122.317123', 37.554596, -122.317123, 'point_of_interest', 'maps/raw/places/staticmap/location=37.554596,-122.317123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.554596,-122.317123&format=gif'),
(303, 'f4f58ae1', '515edbc3413a3a231a4947380d55bdd4', 'Four Seasons Hotel Silicon Valley at East Palo Alto', '2050 University Avenue, East Palo Alto, CA 94303, United States', '37.460371,-122.142267', 37.460369, -122.142265, 'lodging', 'maps/raw/places/staticmap/location=37.460371,-122.142267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.460371,-122.142267&format=gif'),
(304, '2448d261', 'da74b638ff1f3613de12f0fcc887ba5b', 'Silicon Mechanics', '22029 23rd Drive Southeast, Bothell, WA 98021, United States', '47.799012,-122.200677', 47.799011, -122.200676, 'electronics_store', 'maps/raw/places/staticmap/location=47.799012,-122.200677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.799012,-122.200677&format=gif'),
(305, 'e2ddb6d9', 'c56f61d350d9488ce3797b9f4193f416', 'Silicon Valley Bank', '380 Interlocken Boulevard # 600, Broomfield, CO 80021, United States', '39.923649,-105.114121', 39.923649, -105.114120, 'bank', 'maps/raw/places/staticmap/location=39.923649,-105.114121&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.923649,-105.114121&format=gif'),
(306, '31385006', '0bafd06f04e79e255206a5af6c56ad24', 'Silicon Valley Capital Club', '50 West San Fernando Street, San Jose, CA 95113, United States', '37.3338,-121.889177', 37.333801, -121.889175, 'night_club', 'maps/raw/places/staticmap/location=37.3338,-121.889177&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.3338,-121.889177&format=gif'),
(307, 'a5aaf23e', 'e26dce5abc8cdb9e0f9a0442201a194b', 'Silicon Valley Bank', '11th floor, 505 5th Avenue, New York, NY 10017, United States', '40.7536,-73.980455', 40.753601, -73.980453, 'bank', 'maps/raw/places/staticmap/location=40.7536,-73.980455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.7536,-73.980455&format=gif'),
(308, '0a689e4a', 'bb877b68f02f0e2f1dad7ca6ed35b7b9', 'Silicon', 'Silicon, Las PiÃ±as, Metro Manila, Philippines', '14.4206731,121.0089541', 14.420673, 121.008957, 'route', 'maps/raw/places/staticmap/location=14.4206731,121.0089541&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.4206731,121.0089541&format=gif'),
(309, 'da2e0476', '97b97e9d2c6a2b0fa77cccf062ac7a67', 'Silicon', 'Silicon, Estate Ave, Karachi, Pakistan', '24.9046874,67.0034956', 24.904688, 67.003494, 'premise', 'maps/raw/places/staticmap/location=24.9046874,67.0034956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.9046874,67.0034956&format=gif'),
(310, 'a88903ca', 'a82a3a346804900d75e92ff70d5f3d4b', 'Manchester computer repair', 'Manchester computer repair, Bowfell Rd, Urmston, Manchester M41 5RW, UK', '53.4512377,-2.3633818', 53.451237, -2.363382, 'point_of_interest', 'maps/raw/places/staticmap/location=53.4512377,-2.3633818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.4512377,-2.3633818&format=gif'),
(311, '9cde7202', '01d7c613c0e4b82544f21d059f46249d', 'Silicon', 'Silicon, El Agustino 15006, Peru', '-12.0344607,-76.9985374', -12.034461, -76.998535, 'route', 'maps/raw/places/staticmap/location=-12.0344607,-76.9985374&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-12.0344607,-76.9985374&format=gif'),
(312, '09f546a2', '970a3013042deaf782d563e88b630181', 'Silicon', 'Silicon, Jalan Tenggiri, Batu Ampar, Kota Batam, Indonesia', '1.167073,104.009652', 1.167073, 104.009651, 'point_of_interest', 'maps/raw/places/staticmap/location=1.167073,104.009652&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.167073,104.009652&format=gif'),
(313, 'ed1b3faf', 'b6db13cdbf5b6b15de1e8ec82818a28c', 'Silicon', 'Silicon, Annai Indira Nagar, Annani Indira Nagar, Indira Nagar, Okkiyam Thuraipakkam, Palavakkam, Tamil Nadu 600097, India', '12.9271389,80.2343157', 12.927139, 80.234314, 'premise', 'maps/raw/places/staticmap/location=12.9271389,80.2343157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.9271389,80.2343157&format=gif'),
(314, '805cdeb4', 'f0c2829729dce0c1d7fdd5842916d597', 'Silicon', 'Silicon, MS Ali Rd, Grant Road East, Grant Road Area, Bharat Nagar, Grant Rd, Mumbai, Maharashtra 400008, India', '18.9620695,72.8206681', 18.962069, 72.820671, 'point_of_interest', 'maps/raw/places/staticmap/location=18.9620695,72.8206681&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.9620695,72.8206681&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(315, 'acb1b726', '63f259be8b7ce65fd91e1a63bc42aa33', 'SILICON', 'SILICON, Old Delhi Gurgaon Rd, Palam Vihar Extension, Gurgaon, Haryana 122015, India', '28.494636,77.060247', 28.494637, 77.060249, 'point_of_interest', 'maps/raw/places/staticmap/location=28.494636,77.060247&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.494636,77.060247&format=gif'),
(316, '25434af8', 'c1d2a795875dcf0950b2d51b1a19dc11', 'SILICON', 'SILICON, Sandhu Apartment, Kalasiguda, Secunderabad, Telangana 500003, India', '17.440788,78.4893322', 17.440788, 78.489334, 'point_of_interest', 'maps/raw/places/staticmap/location=17.440788,78.4893322&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.440788,78.4893322&format=gif'),
(317, 'af3a06e0', '655ff479e1efec9f7b42cd2c5aa1acc1', 'Silicon', '33 & 34, Silicon, Rajarhat Rd, Teghoria, Chinar Park, Kolkata, West Bengal 700059, India', '22.623233,88.4402703', 22.623234, 88.440269, 'point_of_interest', 'maps/raw/places/staticmap/location=22.623233,88.4402703&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.623233,88.4402703&format=gif'),
(318, 'b5a0ee3a', '3cb4066a8aef1b6979a1fbdb5a9840c6', 'Silicon', 'Silicon, 42, Chirag Ali Lane, Abids, Hyderabad, Telangana 500001, India', '17.3920699,78.4750132', 17.392071, 78.475014, 'point_of_interest', 'maps/raw/places/staticmap/location=17.3920699,78.4750132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.3920699,78.4750132&format=gif'),
(319, '9a7ab9bb', '623a00e4e72ebd080480049b059a4733', 'Silicon', '150, Silicon, Santoshpur Ave, Adipally Santoshpur, Adipally, Santoshpur, Kolkata, West Bengal 700075, India', '22.492764,88.3881241', 22.492764, 88.388123, 'point_of_interest', 'maps/raw/places/staticmap/location=22.492764,88.3881241&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.492764,88.3881241&format=gif'),
(320, 'ff493730', '3c0edf8e0d748326a21e9a124329ec5e', 'Silicon', 'Silicon, Gandhi Nagar Airport Area, Deolali Gaon, Nashik, Maharashtra 422101, India', '19.966942,73.811264', 19.966942, 73.811264, 'point_of_interest', 'maps/raw/places/staticmap/location=19.966942,73.811264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.966942,73.811264&format=gif'),
(321, '6f964250', 'c623aa7c5f3e5931a8640b9d41bdb610', 'Silicon', 'Silicon, Mangalwar Peth, Kasba Peth, Pune, Maharashtra 411011, India', '18.522504,73.866417', 18.522505, 73.866417, 'home_goods_store', 'maps/raw/places/staticmap/location=18.522504,73.866417&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.522504,73.866417&format=gif'),
(322, '533f60a2', '48d2d79219e5e9fd72d5088e14b09a1d', 'Silicon', 'Silicon, Devi Colony, Bank colony, Bidar, Karnataka 585401, India', '17.9211958,77.5088561', 17.921196, 77.508858, 'point_of_interest', 'maps/raw/places/staticmap/location=17.9211958,77.5088561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.9211958,77.5088561&format=gif'),
(323, '3e108168', '47bfa6c0e474f7a581871dc34e553d81', 'WaleÃ½', 'DeodÃ¡polis, State of Mato Grosso do Sul, 79790-000, Brazil', '-22.216807,-54.128386', -22.216806, -54.128387, 'point_of_interest', 'maps/raw/places/staticmap/location=-22.216807,-54.128386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.216807,-54.128386&format=gif'),
(324, '25d307f2', '87b1fde624e640324fbcbaae284ecc02', 'Waley', 'Al Hadrah Qebli, Qesm Bab Sharqi, Alexandria Governorate, Egypt', '31.201784,29.932156', 31.201784, 29.932156, 'clothing_store', 'maps/raw/places/staticmap/location=31.201784,29.932156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.201784,29.932156&format=gif'),
(325, '039fa487', '419dec8f0860a51f51ffd0b091515d4b', 'Waley Insurance', '202 North Brushy Street, Leander, TX 78641, United States', '30.579629,-97.854328', 30.579630, -97.854324, 'insurance_agency', 'maps/raw/places/staticmap/location=30.579629,-97.854328&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.579629,-97.854328&format=gif'),
(326, 'fe80efb5', '466bfbc25f4483fe5f3699fbb8435585', 'Waley Elahed', 'Hadaeq Al Qubbah, Hadaeq Al Qubbah, Cairo Governorate, Egypt', '30.088228,31.284521', 30.088228, 31.284521, 'pharmacy', 'maps/raw/places/staticmap/location=30.088228,31.284521&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.088228,31.284521&format=gif'),
(327, '8fdeb1c7', '0d47893fab181d0670ea863faf4478eb', 'Jagram Ganga Sahay Oshadhiyo Waley', 'Shop No:362, Tripolia Bazar, Modikhana, Jaipur, Rajasthan 302002, India', '26.924261,75.819931', 26.924261, 75.819931, 'store', 'maps/raw/places/staticmap/location=26.924261,75.819931&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.924261,75.819931&format=gif'),
(328, '346256e5', '1cea7d5ca5725d33a31b8b77a2de3235', 'Waley J Moreira', 'Rua EspÃ­rito Santo, 466 - Centro, Belo Horizonte - MG, 30160-030, Brazil', '-19.918744,-43.937238', -19.918743, -43.937237, 'lawyer', 'maps/raw/places/staticmap/location=-19.918744,-43.937238&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-19.918744,-43.937238&format=gif'),
(329, '78ab011c', '206be94f575659473214b65a1603c3a6', 'Dharam Chand Banarsi Dass Jain Sialkote Button Waley', '469, Bartan Market, Sadar Bazaar, Sadar Bazaar, New Delhi, Delhi 110006, India', '28.654092,77.208899', 28.654093, 77.208900, 'point_of_interest', 'maps/raw/places/staticmap/location=28.654092,77.208899&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.654092,77.208899&format=gif'),
(330, 'e4a1f61d', '819638df2ab98f7d6bc059a759790977', 'Safa Waley Raja Khan', 'Kotwali Road, Moti Nagar, Sagar, Madhya Pradesh 470002, India', '23.837239,78.739952', 23.837238, 78.739952, 'shopping_mall', 'maps/raw/places/staticmap/location=23.837239,78.739952&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.837239,78.739952&format=gif'),
(331, 'ca58cb5b', '341b367f1255c427c3d58fdf110266e7', 'Jhandey Waley Shukla, Om Nagar', 'Pawanpuri, Alambagh, Lucknow, Uttar Pradesh 226005, India', '26.813998,80.909307', 26.813997, 80.909309, 'point_of_interest', 'maps/raw/places/staticmap/location=26.813998,80.909307&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.813998,80.909307&format=gif'),
(332, 'a18e5283', '7687aac4cc820971371c164463491810', 'shanno bhai parathey waley seelampur', 'New Seelampur Phase II, Shahdara, New Delhi, Delhi 110031, India', '28.674864,77.266341', 28.674864, 77.266342, 'restaurant', 'maps/raw/places/staticmap/location=28.674864,77.266341&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.674864,77.266341&format=gif'),
(333, '2be4c520', '7d10b47bb4c36e2d5c61a8d415bad7e9', 'Waley Elneem', 'Al Gamaleyah, Qesm Gamaleyah, Cairo Governorate, Egypt', '30.047109,31.262291', 30.047110, 31.262291, 'establishment', 'maps/raw/places/staticmap/location=30.047109,31.262291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.047109,31.262291&format=gif'),
(334, 'c56f56cd', '78c47207ba4828f6f2e10b19025edd59', 'Bhagatji Silicate waley', 'Freeganj Road, Belanganj, Civil Lines, Agra, Uttar Pradesh 282004, India', '27.195385,78.018057', 27.195385, 78.018059, 'point_of_interest', 'maps/raw/places/staticmap/location=27.195385,78.018057&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.195385,78.018057&format=gif'),
(335, '2d9045f6', 'cae7d795ae1b30996db7ef6b0b676ed4', 'Waley Elneem', 'An Nahdah, Qesm as Salam, Cairo Governorate, Egypt', '30.173999,31.445373', 30.174000, 31.445374, 'establishment', 'maps/raw/places/staticmap/location=30.173999,31.445373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.173999,31.445373&format=gif'),
(336, '8b0c012c', '062dec8a863c6e5d47c6691967cb77ce', 'Waley Elneem', 'Shagret Mariem, Qesm Al Matareyah, Cairo Governorate, Egypt', '30.124706,31.303858', 30.124706, 31.303858, 'restaurant', 'maps/raw/places/staticmap/location=30.124706,31.303858&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.124706,31.303858&format=gif'),
(337, '286556ad', '7de09734ffed0610c146678c02ce8826', 'Chadha Ram Waley', 'Street No-6, Cheema Chowk, Janak Puri, Ludhiana, Punjab 141003, India', '30.9015,75.86893', 30.901501, 75.868927, 'store', 'maps/raw/places/staticmap/location=30.9015,75.86893&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.9015,75.86893&format=gif'),
(338, '22ae42f5', 'b78d00ac3afd5bb749f141e51d17b877', 'Mr. Waley Tailoring Shop', 'Oluwole, Ikeja, Nigeria', '6.629462,3.342317', 6.629462, 3.342317, 'store', 'maps/raw/places/staticmap/location=6.629462,3.342317&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.629462,3.342317&format=gif'),
(339, '16132fb2', 'be775fbe40aab2bffdd29b2a0dab7369', 'Ram Gopal Jagdish Prasad Bartan Waley', 'Sujanpura Road, Alambagh, Lucknow, Uttar Pradesh 226005, India', '26.817091,80.909616', 26.817091, 80.909615, 'establishment', 'maps/raw/places/staticmap/location=26.817091,80.909616&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.817091,80.909616&format=gif'),
(340, '75f6cc55', '6f5a070cc5ebbced3695acf818a79a8b', 'Kishore Kumar Bhas Wali Waley', 'Maruti Estate Road, Maruti Estate, Near Simpkins School, Shahganj, Agra, Uttar Pradesh 282010, India', '27.1827,77.967306', 27.182699, 77.967308, 'store', 'maps/raw/places/staticmap/location=27.1827,77.967306&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.1827,77.967306&format=gif'),
(341, '87682d9a', 'f1070af3cb81876c91b9ce07d9462b9e', 'Mohammad Anees Baksey Waley', 'Takrohi Road, Indra Nagar, Amrai Gaon, Naubasta Kala, Uttar Pradesh 226016, India', '26.912245,81.027333', 26.912245, 81.027336, 'furniture_store', 'maps/raw/places/staticmap/location=26.912245,81.027333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.912245,81.027333&format=gif'),
(342, 'a87828d7', '936d6c213a9fa512384d8c1c10e302b1', 'Sardar Ji Rewdi Waley', 'Revdi Vala Charbagh, Cash and Pay Colony, Charbagh, Lucknow, Uttar Pradesh 226004, India', '26.832592,80.922494', 26.832592, 80.922493, 'food', 'maps/raw/places/staticmap/location=26.832592,80.922494&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.832592,80.922494&format=gif'),
(343, '638adaf8', '93561240a1e8ba2c7740bff2833f016a', 'Raza Telecom', '5219 North Harlem Avenue, Chicago, IL 60656, United States', '41.976124,-87.806798', 41.976124, -87.806801, 'establishment', 'maps/raw/places/staticmap/location=41.976124,-87.806798&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.976124,-87.806798&format=gif'),
(344, '801ac887', 'c1c566a7a2204da63b8b3c4aa9865845', 'National Council of La Raza', '1126 16th Street Northwest #600, Washington, DC 20036, United States', '38.904482,-77.036901', 38.904484, -77.036903, 'point_of_interest', 'maps/raw/places/staticmap/location=38.904482,-77.036901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.904482,-77.036901&format=gif'),
(345, '97e0a7ab', 'd80a50307a6d760b34fb9dc9554250be', 'Raza Communication', '991 Albion Road, Etobicoke, ON M9V 1A6, Canada', '43.736381,-79.563781', 43.736382, -79.563782, 'establishment', 'maps/raw/places/staticmap/location=43.736381,-79.563781&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.736381,-79.563781&format=gif'),
(346, '80268c2b', 'adf2fc1c53c68a7ec75c2d7484624173', 'National Council of La Raza', '318 West 39th Street #5, New York, NY 10018, United States', '40.755737,-73.992526', 40.755737, -73.992523, 'establishment', 'maps/raw/places/staticmap/location=40.755737,-73.992526&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.755737,-73.992526&format=gif'),
(347, '4de0bd61', '2456b77f751caef40e226a035af5e6c2', 'National Council of La Raza', '1107 9th Street #230, Sacramento, CA 95814, United States', '38.579175,-121.495257', 38.579174, -121.495255, 'establishment', 'maps/raw/places/staticmap/location=38.579175,-121.495257&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.579175,-121.495257&format=gif'),
(348, 'e4524a87', '181eb783e5fbe18269a14209b0386ea6', 'National Council of La Raza', '161 North Clark Street # 4700, Chicago, IL 60601, United States', '41.884738,-87.630737', 41.884739, -87.630737, 'point_of_interest', 'maps/raw/places/staticmap/location=41.884738,-87.630737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.884738,-87.630737&format=gif'),
(349, '62e9a31d', '4d8433032ecffa5884441ecb2a092cde', 'La Raza Centro Legal Inc', '474 Valencia Street # 295, San Francisco, CA 94103, United States', '37.765415,-122.42227', 37.765415, -122.422272, 'point_of_interest', 'maps/raw/places/staticmap/location=37.765415,-122.42227&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765415,-122.42227&format=gif'),
(350, '453a79b3', '497afea7417020ec9572ff335db7449c', 'El Centro De La Raza', '2524 16th Avenue South, Seattle, WA 98144, United States', '47.580339,-122.311325', 47.580338, -122.311325, 'establishment', 'maps/raw/places/staticmap/location=47.580339,-122.311325&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.580339,-122.311325&format=gif'),
(351, 'bd44ed0b', '4d5e62c68b7cdff08bfb4ef3ac074d30', 'Servicios De La Raza', '3131 West 14th Avenue, Denver, CO 80204, United States', '39.738883,-105.027156', 39.738884, -105.027153, 'food', 'maps/raw/places/staticmap/location=39.738883,-105.027156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.738883,-105.027156&format=gif'),
(352, 'd5eca139', '896541606dddc9e2ffce117dd6cf796d', 'Raza Development Fund', '1 East Washington Street # 250, Phoenix, AZ 85004, United States', '33.447949,-112.072924', 33.447948, -112.072922, 'establishment', 'maps/raw/places/staticmap/location=33.447949,-112.072924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.447949,-112.072924&format=gif'),
(353, '6b0ba7a9', '3684d00c1f505a080da5f175ee6c92f1', 'Casa De La Raza', '601 East Montecito Street, Santa Barbara, CA 93103, United States', '34.421634,-119.686095', 34.421635, -119.686096, 'health', 'maps/raw/places/staticmap/location=34.421634,-119.686095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.421634,-119.686095&format=gif'),
(354, '27e6040d', '71c0edc5bc6acf3d087db4796c863550', 'Dr. Azra Raza, MD', '161 Fort Washington Avenue #918, New York, NY 10032, United States', '40.840569,-73.943165', 40.840569, -73.943169, 'doctor', 'maps/raw/places/staticmap/location=40.840569,-73.943165&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.840569,-73.943165&format=gif'),
(355, 'a9baeff3', '94598119cbed39e4aebe0d70e4491863', 'Instituto Familiar de la Raza Inc.', '2919 Mission Street, San Francisco, CA 94110, United States', '37.750256,-122.418072', 37.750256, -122.418076, 'health', 'maps/raw/places/staticmap/location=37.750256,-122.418072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.750256,-122.418072&format=gif'),
(356, 'f4a6f944', '9aefce06a939e3b66440cfeab86de25b', 'Mehran Raza D.D.S', '3753 Mission Avenue #116, Oceanside, CA 92058, United States', '33.224337,-117.331861', 33.224339, -117.331863, 'doctor', 'maps/raw/places/staticmap/location=33.224337,-117.331861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.224337,-117.331861&format=gif'),
(357, '6a01be9f', 'aa17d7f805b7f5b9d7fbe40012aef1cb', 'La Raza Community Resource Center', '474 Valencia Street # 100, San Francisco, CA 94103, United States', '37.765453,-122.422379', 37.765453, -122.422379, 'establishment', 'maps/raw/places/staticmap/location=37.765453,-122.422379&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765453,-122.422379&format=gif'),
(358, 'd716b804', 'd559fe1e29c6619ed508042facabc8e0', 'Dr. Catherine A. Chin, MD', '1030 International Boulevard, Oakland, CA 94606, United States', '37.791962,-122.248915', 37.791962, -122.248917, 'doctor', 'maps/raw/places/staticmap/location=37.791962,-122.248915&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791962,-122.248915&format=gif'),
(359, '90688716', '5911310040a6d66b544b6b36d0f8a935', 'La Clinica De La Raza: Rustamzadeh David DDS', '1601 Fruitvale Avenue, Oakland, CA 94601, United States', '37.77995,-122.224934', 37.779949, -122.224937, 'dentist', 'maps/raw/places/staticmap/location=37.77995,-122.224934&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.77995,-122.224934&format=gif'),
(360, '9a7f4a15', 'bed4d17e5bd8efe67ea560a0086d2d30', 'Plaza De La Raza Child Development', '8337 Telegraph Road # 300, Pico Rivera, CA 90660, United States', '33.964641,-118.113298', 33.964642, -118.113297, 'health', 'maps/raw/places/staticmap/location=33.964641,-118.113298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.964641,-118.113298&format=gif'),
(361, '25647a4c', '1fd788745df6923dbb7e10a06b278fee', 'Instituto Laboral De La Raza', '2947 16th Street, San Francisco, CA 94103, United States', '37.764955,-122.418554', 37.764954, -122.418556, 'establishment', 'maps/raw/places/staticmap/location=37.764955,-122.418554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.764955,-122.418554&format=gif'),
(362, 'd6709acd', 'a5fc9fc5c004e50d96a8e2d4f4d59f30', 'Hawaii', 'Hawaii, USA', '19.8967662,-155.5827818', 19.896767, -155.582779, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=19.8967662,-155.5827818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.8967662,-155.5827818&format=gif'),
(363, '16537242', 'c15c0c807b34202fbcb6f18f9523cc74', 'F.A. Nunnelly Company', '2922 North PanAm Expressway, San Antonio, TX 78208, United States', '29.438888,-98.443424', 29.438889, -98.443420, 'general_contractor', 'maps/raw/places/staticmap/location=29.438888,-98.443424&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.438888,-98.443424&format=gif'),
(364, 'a748cf36', 'c9f9adf1057d97353b55d3548918ed94', 'F.A. Motorcars', '12843 Nacogdoches Road, San Antonio, TX 78217, United States', '29.558152,-98.397833', 29.558151, -98.397835, 'car_dealer', 'maps/raw/places/staticmap/location=29.558152,-98.397833&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.558152,-98.397833&format=gif'),
(365, '4e228d6f', '325a1192fe5d8c25c6e93bbc066838ae', 'F A Mc Comas Inc', '3636 Highpoint Street, San Antonio, TX 78217, United States', '29.54167,-98.426956', 29.541670, -98.426956, 'painter', 'maps/raw/places/staticmap/location=29.54167,-98.426956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.54167,-98.426956&format=gif'),
(366, 'a61dc6f1', '5e0519b60a13d8935719e2a78b40d39c', 'Sanfa Construction Supply', 'Corozal, Belize', '18.388825,-88.400676', 18.388824, -88.400673, 'hardware_store', 'maps/raw/places/staticmap/location=18.388825,-88.400676&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.388825,-88.400676&format=gif'),
(367, '8ba463e5', 'be6bf8c2758ad53c78df716040a30b86', 'Restaurante Ni Fu Ni Fa', 'Barrio Los Andes, San Pedro Sula, Honduras', '15.511737,-88.035003', 15.511737, -88.035004, 'restaurant', 'maps/raw/places/staticmap/location=15.511737,-88.035003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.511737,-88.035003&format=gif'),
(368, 'c6a95d40', 'f1fad5edf7a497b79336568841cecfb9', 'Freedom Acres Resorts', '1924 Glen Helen Road, San Bernardino, CA 92407, United States', '34.220696,-117.420123', 34.220695, -117.420120, 'lodging', 'maps/raw/places/staticmap/location=34.220696,-117.420123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.220696,-117.420123&format=gif'),
(369, '4500b64b', 'b38e23fb99dc6fc2c4e1362703cb4ae0', 'F A Poli Trucking &amp; Materials', '120 South Maple Avenue, South San Francisco, CA 94080, United States', '37.649376,-122.415285', 37.649376, -122.415283, 'moving_company', 'maps/raw/places/staticmap/location=37.649376,-122.415285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.649376,-122.415285&format=gif'),
(370, '6e57fe53', '8f96a25312e979240b75bca8a4723d14', 'Fa Instruments Inc', '2381 Zanker Road # 100, San Jose, CA 95131, United States', '37.384427,-121.920416', 37.384426, -121.920418, 'establishment', 'maps/raw/places/staticmap/location=37.384427,-121.920416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.384427,-121.920416&format=gif'),
(371, 'bc0e2cfb', 'dcb2fc7d82981e8a814c5948ea825ae2', 'Fiesta Americana Grand los Cabos All Inclusive Golf &amp; Spa', 'Carretera Transpeninsular Km 10.3, Cabo del Sol, 23410 Cabo San Lucas, B.C.S., Mexico', '22.921248,-109.828946', 22.921247, -109.828949, 'lodging', 'maps/raw/places/staticmap/location=22.921248,-109.828946&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.921248,-109.828946&format=gif'),
(372, '629f6cdc', '0f8ac00cdca7923c039df2cf7d4f88b0', 'HUNGFAKWOON.COM', '219 Monterey Boulevard, San Francisco, CA 94131, United States', '37.731387,-122.440242', 37.731388, -122.440239, 'school', 'maps/raw/places/staticmap/location=37.731387,-122.440242&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.731387,-122.440242&format=gif'),
(373, '581f261f', '78eb2689dc426a15f6bef7d0f3dd2f88', 'Wha Fa Produce Co', '2165 Irving Street, San Francisco, CA 94122, United States', '37.763282,-122.48112', 37.763283, -122.481117, 'bakery', 'maps/raw/places/staticmap/location=37.763282,-122.48112&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.763282,-122.48112&format=gif'),
(374, '5138da00', '2274ba8993716d68989b86262136cde6', 'Mt. San Antonio College', '1100 North Grand Avenue, Walnut, CA 91789, United States', '34.048567,-117.842095', 34.048569, -117.842094, 'point_of_interest', 'maps/raw/places/staticmap/location=34.048567,-117.842095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.048567,-117.842095&format=gif'),
(375, '8a9dac29', '758b52286555c31ad0a01edabf75b778', 'Sanfa', 'Durango 606, Valle del Sur, 34120 Durango, Dgo., Mexico', '24.012247,-104.684373', 24.012247, -104.684372, 'store', 'maps/raw/places/staticmap/location=24.012247,-104.684373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.012247,-104.684373&format=gif'),
(376, '9bcb48d4', '455b42d9e53e218a7621fe9976ac3dd5', 'Advanced Mechatronics Solutions', '9051 Siempre Viva Road # J, San Diego, CA 92154, United States', '32.552585,-116.948635', 32.552586, -116.948631, 'car_repair', 'maps/raw/places/staticmap/location=32.552585,-116.948635&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.552585,-116.948635&format=gif'),
(377, 'b0e78828', 'd54b006e72584942b72c04df3b8b40b2', 'San Diego State University', '5500 Campanile Drive, San Diego, CA 92182, United States', '32.77477,-117.071665', 32.774769, -117.071663, 'university', 'maps/raw/places/staticmap/location=32.77477,-117.071665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.77477,-117.071665&format=gif'),
(378, '6a184ecd', '064f395334bc05daa24bed869c1a019d', 'Food Addicts In Recovery', 'San Francisco, CA 94111, United States', '37.795936,-122.400003', 37.795937, -122.400002, 'health', 'maps/raw/places/staticmap/location=37.795936,-122.400003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795936,-122.400003&format=gif'),
(379, '521da513', '3761e987071a23938db0825e5cff9071', 'Food Addicts In Recovery Anonymous', 'San Jose, CA 95101, United States', '37.329012,-121.916021', 37.329014, -121.916023, 'health', 'maps/raw/places/staticmap/location=37.329012,-121.916021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.329012,-121.916021&format=gif'),
(380, '929e538a', '67cb18cd6fc7cc9a14e53531197f753e', 'San JosÃ© State University', '1 Washington Sq, San Jose, CA 95192, United States', '37.335187,-121.881072', 37.335186, -121.881073, 'university', 'maps/raw/places/staticmap/location=37.335187,-121.881072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.335187,-121.881072&format=gif'),
(381, '4a306f75', '0ef7f39dce7943b5e4b266f7b0a81f8e', 'Queen', 'San Pedro 202, Del Valle, 66220 San Pedro Garza GarcÃ­a, N.L., Mexico', '25.660182,-100.370062', 25.660183, -100.370064, 'bar', 'maps/raw/places/staticmap/location=25.660182,-100.370062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.660182,-100.370062&format=gif'),
(382, '989267b1', '283c94c616097bb666ef5c0bda29ac90', 'Wildlife Center of Silicon Valley', '3027 Penitencia Creek Road, San Jose, CA 95132, United States', '37.388971,-121.848359', 37.388969, -121.848358, 'point_of_interest', 'maps/raw/places/staticmap/location=37.388971,-121.848359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.388971,-121.848359&format=gif'),
(383, '7638d310', '08834925c28433f75306b801c8ac96ec', 'San Francisco Travel Association', '6929 Valleyview Drive, Downers Grove, IL 60516, United States', '41.760118,-88.001727', 41.760117, -88.001724, 'travel_agency', 'maps/raw/places/staticmap/location=41.760118,-88.001727&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.760118,-88.001727&format=gif'),
(384, '04fa5f49', '68c5734da43384f2680cd210f0b454c7', 'San Francisco CVB', '1730 M Street Northwest #607, Washington, DC 20036, United States', '38.905345,-77.039918', 38.905346, -77.039917, 'point_of_interest', 'maps/raw/places/staticmap/location=38.905345,-77.039918&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905345,-77.039918&format=gif'),
(385, '92631629', 'a3302b7ebb653c44eb92b624605d7e7d', 'Only In San Francisco', 'Beach Street, San Francisco, CA 94133, United States', '37.808747,-122.410346', 37.808746, -122.410347, 'store', 'maps/raw/places/staticmap/location=37.808747,-122.410346&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.808747,-122.410346&format=gif'),
(386, 'bd55970d', '5b36e477b9bbd142d79e3ef3a124b52b', 'San Francisco Underground', '182 Howard Street #240, San Francisco, CA 94105, United States', '37.791162,-122.393309', 37.791161, -122.393311, 'travel_agency', 'maps/raw/places/staticmap/location=37.791162,-122.393309&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791162,-122.393309&format=gif'),
(387, '33332fdb', 'beca830be3b32b91cad6c6ed546befad', 'San Francisco Visitor Information Center', '900 Market Street, San Francisco, CA 94102, United States', '37.784111,-122.408311', 37.784111, -122.408310, 'establishment', 'maps/raw/places/staticmap/location=37.784111,-122.408311&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.784111,-122.408311&format=gif'),
(388, '6e8f9f29', '0982245a49552fcdd63145ebd1347d8f', 'San Francisco Travel Association', '1 Front Street Suite 2900, San Francisco, CA 94111, United States', '37.791883,-122.398841', 37.791882, -122.398842, 'establishment', 'maps/raw/places/staticmap/location=37.791883,-122.398841&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791883,-122.398841&format=gif'),
(389, 'd2cfad16', '823a5f523973e4a703a8fe3dd6869a3f', 'W San Francisco', '181 3rd Street, San Francisco, CA 94103, United States', '37.785318,-122.400442', 37.785316, -122.400444, 'lodging', 'maps/raw/places/staticmap/location=37.785318,-122.400442&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.785318,-122.400442&format=gif'),
(390, 'ae28943f', '0a859f9266da99a76bf47a4017e86afa', 'San Francisco Giants', '24 Willie Mays Plaza, San Francisco, CA 94107, United States', '37.778175,-122.390725', 37.778175, -122.390724, 'establishment', 'maps/raw/places/staticmap/location=37.778175,-122.390725&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.778175,-122.390725&format=gif'),
(391, '3256a901', '201d0ecd68e7fcd231e1fec78b0cb183', 'SF Giants Baseball Club : Dugout Store', '4 Embarcadero Center, San Francisco, CA 94111, United States', '37.795284,-122.396229', 37.795284, -122.396233, 'clothing_store', 'maps/raw/places/staticmap/location=37.795284,-122.396229&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795284,-122.396229&format=gif'),
(392, '4b75e51e', '26048b14e9b4171b70c4fe08a112500b', 'Giants Dugout Stores', '3251 20th Avenue #173, San Francisco, CA 94132, United States', '37.728041,-122.477539', 37.728043, -122.477539, 'store', 'maps/raw/places/staticmap/location=37.728041,-122.477539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.728041,-122.477539&format=gif'),
(393, '425dab30', 'd0ef8c1d36ccc5634fe4d445bfa78ff6', 'San Francisco Giants Offices', '7402 East Osborn Road, Scottsdale, AZ 85251, United States', '33.487761,-111.922923', 33.487762, -111.922920, 'establishment', 'maps/raw/places/staticmap/location=33.487761,-111.922923&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.487761,-111.922923&format=gif'),
(394, 'dfd06215', 'dc772823a701ba0c7142c168f6ebe097', 'Giants Dugout Stores', '127 Serramonte Center, Daly City, CA 94015, United States', '37.671131,-122.470638', 37.671131, -122.470634, 'clothing_store', 'maps/raw/places/staticmap/location=37.671131,-122.470638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.671131,-122.470638&format=gif'),
(395, 'd010f0a3', '5aaa273f91d02a91ba5a656e09f2ba03', 'San Francisco International Airport', 'San Francisco, CA 94128, United States', '37.621313,-122.378955', 37.621311, -122.378952, 'airport', 'maps/raw/places/staticmap/location=37.621313,-122.378955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.621313,-122.378955&format=gif'),
(396, '911f2e79', 'd1d02d06d248740875e86cf5f8b7290b', 'San Francisco State University', '1600 Holloway Avenue, San Francisco, CA 94132, United States', '37.721897,-122.478209', 37.721897, -122.478210, 'university', 'maps/raw/places/staticmap/location=37.721897,-122.478209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.721897,-122.478209&format=gif'),
(397, '00e577a9', 'a81bdd96f886b3b6cbc8ea365d078bda', 'SanFrancisco Magazine', '243 Vallejo Street, San Francisco, CA 94111, United States', '37.799275,-122.401928', 37.799274, -122.401932, 'establishment', 'maps/raw/places/staticmap/location=37.799275,-122.401928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.799275,-122.401928&format=gif'),
(398, 'edb0542d', '0aa5a161230562827e88dc204ca1ac15', 'San Francisco Chronicle', '901 Mission Street, San Francisco, CA 94103, United States', '37.782362,-122.406464', 37.782364, -122.406464, 'point_of_interest', 'maps/raw/places/staticmap/location=37.782362,-122.406464&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.782362,-122.406464&format=gif'),
(399, '796bb11e', '2c5cbf90402f045c0d128e647dfa2bcd', 'San Francisco Chronicle', '1350 16th Street, Oakland, CA 94607, United States', '37.812262,-122.290135', 37.812263, -122.290138, 'point_of_interest', 'maps/raw/places/staticmap/location=37.812262,-122.290135&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.812262,-122.290135&format=gif'),
(400, '714aa78d', 'd9460c43b6deebb96536be22e3f57518', 'University of San Francisco', '2130 Fulton Street, San Francisco, CA 94117, United States', '37.775749,-122.450386', 37.775749, -122.450386, 'university', 'maps/raw/places/staticmap/location=37.775749,-122.450386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.775749,-122.450386&format=gif'),
(401, '85d8405a', '85658f876e0a97d87b45f436ae3785e4', 'University of San Francisco', '480 South Batavia Street, Orange, CA 92868, United States', '33.781224,-117.862712', 33.781223, -117.862709, 'university', 'maps/raw/places/staticmap/location=33.781224,-117.862712&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.781224,-117.862712&format=gif'),
(402, '01dce0c6', '67d5bb018c8ad308482ddb876e727ecc', 'Rio de Janeiro', 'Rio de Janeiro - State of Rio de Janeiro, Brazil', '-22.9068467,-43.1728965', -22.906847, -43.172897, 'locality', 'maps/raw/places/staticmap/location=-22.9068467,-43.1728965&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.9068467,-43.1728965&format=gif'),
(403, '4bef5a53', '2601a81f60c575d3a89932167e22b3e9', 'Saale', 'Saale, Germany', '51.2824759,11.6919722', 51.282475, 11.691972, 'natural_feature', 'maps/raw/places/staticmap/location=51.2824759,11.6919722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C51.2824759,11.6919722&format=gif'),
(404, 'fe3e3daa', '6518c9b3aa2381159698181e55d839e8', 'Rio All-Suites Hotel and Casino', '3700 West Flamingo Road, Las Vegas, NV 89103, United States', '36.117515,-115.188159', 36.117516, -115.188156, 'lodging', 'maps/raw/places/staticmap/location=36.117515,-115.188159&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.117515,-115.188159&format=gif'),
(405, '8d12d832', '814f7ea860eaabd599fbd543d79be726', 'RIO Products', '5050 South Yellowstone Highway, Idaho Falls, ID 83402, United States', '43.452238,-112.069554', 43.452236, -112.069557, 'store', 'maps/raw/places/staticmap/location=43.452238,-112.069554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.452238,-112.069554&format=gif'),
(406, 'f8fcb8a5', '9488c126159fb613962a322309c5fe23', 'University of Rio Grande', '218 North College Avenue, Rio Grande, OH 45674, United States', '38.881704,-82.380209', 38.881702, -82.380211, 'university', 'maps/raw/places/staticmap/location=38.881704,-82.380209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.881704,-82.380209&format=gif'),
(407, '631b3e42', '2fe396990f17a056cc534359af849ecc', 'Rio Tinto Distribution Center', '6076 Broken Rock Cir, South Jordan, UT 84095, United States', '40.523397,-112.09474', 40.523396, -112.094742, 'point_of_interest', 'maps/raw/places/staticmap/location=40.523397,-112.09474&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.523397,-112.09474&format=gif'),
(408, '6f5a4655', '585def4e2b884589e6c42f5adcc7a477', 'Rio Salado College', '2323 West 14th Street, Tempe, AZ 85281, United States', '33.412645,-111.974169', 33.412643, -111.974167, 'point_of_interest', 'maps/raw/places/staticmap/location=33.412645,-111.974169&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.412645,-111.974169&format=gif'),
(409, '0b5a5ce6', '4de7a84603d6a23a516113d92a1a9bb3', 'Rio Grande Mexican Restaurant', '9535 Park Meadows Drive, Lone Tree, CO 80124, United States', '39.554765,-104.879265', 39.554764, -104.879265, 'restaurant', 'maps/raw/places/staticmap/location=39.554765,-104.879265&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.554765,-104.879265&format=gif'),
(410, '0a9091b3', '95ab6c3c08f55286fccb766736e60450', 'Rio Hondo College', '3600 Workman Mill Road, Whittier, CA 90601, United States', '34.019466,-118.033803', 34.019466, -118.033806, 'point_of_interest', 'maps/raw/places/staticmap/location=34.019466,-118.033803&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.019466,-118.033803&format=gif'),
(411, 'c47f7fd0', '198b45dc60b797469fe37e0642f18bf8', 'Rio Elementary', '355 Lowville Road, Rio, WI 53960, United States', '43.44594,-89.245885', 43.445938, -89.245888, 'school', 'maps/raw/places/staticmap/location=43.44594,-89.245885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.44594,-89.245885&format=gif'),
(412, 'fa97edfc', '02502253280d224d13364b2e5fded88d', 'Rio Grande Mexican Restaurant', '143 West Mountain Avenue, Fort Collins, CO 80524, United States', '40.586733,-105.078217', 40.586735, -105.078217, 'bar', 'maps/raw/places/staticmap/location=40.586733,-105.078217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.586733,-105.078217&format=gif'),
(413, 'cddf40aa', '6b2ff88c448dd886ee84ce3dca25ccd7', 'RIO Rooftop &amp; Restaurant', '601 Rio Grande Street, Austin, TX 78701, United States', '30.270101,-97.749298', 30.270102, -97.749298, 'night_club', 'maps/raw/places/staticmap/location=30.270101,-97.749298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.270101,-97.749298&format=gif'),
(414, '19966158', '4621a36fa72e2af931d5dd27cd6e90b9', 'El Rio', '3158 Mission Street, San Francisco, CA 94110, United States', '37.746793,-122.41942', 37.746792, -122.419418, 'night_club', 'maps/raw/places/staticmap/location=37.746793,-122.41942&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.746793,-122.41942&format=gif'),
(415, 'ca12f796', 'a2180dd8f2229456b679011a12440c04', 'Rio Bank', '720 East Jackson Avenue, McAllen, TX 78501, United States', '26.191405,-98.213394', 26.191404, -98.213394, 'bank', 'maps/raw/places/staticmap/location=26.191405,-98.213394&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.191405,-98.213394&format=gif'),
(416, '723db959', 'fdad6e3a767d9799a8b81329d2f3bd41', 'Rio Ammunition, Inc.', 'Marshall, TX, United States', '32.557982,-94.283372', 32.557983, -94.283371, 'establishment', 'maps/raw/places/staticmap/location=32.557982,-94.283372&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.557982,-94.283372&format=gif'),
(417, 'ebbc4479', '0eb5c6431d37e4b18212e6106f96cb1f', 'Rio Grande', '7500 Bluewater Road Northwest, Albuquerque, NM 87121, United States', '35.083213,-106.720708', 35.083214, -106.720711, 'jewelry_store', 'maps/raw/places/staticmap/location=35.083213,-106.720708&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.083213,-106.720708&format=gif'),
(418, '843f7d8f', '84f0e71b8e4c23f45e750fd2347f7ca0', 'Rio Entertainment Center', '9811 Washingtonian Boulevard, Gaithersburg, MD 20878, United States', '39.115842,-77.197477', 39.115841, -77.197479, 'point_of_interest', 'maps/raw/places/staticmap/location=39.115842,-77.197477&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.115842,-77.197477&format=gif'),
(419, '65012cbd', '5418ec0dd5bbb2861e49a049e58200ff', 'Rio Grande Mexican Restaurant', '1101 Walnut Street, Boulder, CO 80302, United States', '40.016943,-105.280819', 40.016945, -105.280823, 'bar', 'maps/raw/places/staticmap/location=40.016943,-105.280819&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.016943,-105.280819&format=gif'),
(420, 'd437ed2d', '8d1a578b3949491aafd1ae875baf0512', 'Rio Grande Mexican Restaurant', '1525 Blake Street, Denver, CO 80202, United States', '39.750163,-104.999966', 39.750164, -104.999969, 'bar', 'maps/raw/places/staticmap/location=39.750163,-104.999966&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.750163,-104.999966&format=gif'),
(421, 'd80b4eeb', 'f7ae391738f55f79a3e7109db1fe6d30', 'Rio Theatre', '1205 Soquel Avenue, Santa Cruz, CA 95062, United States', '36.980167,-122.010413', 36.980167, -122.010414, 'point_of_interest', 'maps/raw/places/staticmap/location=36.980167,-122.010413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.980167,-122.010413&format=gif'),
(422, '41a3aef7', '3208345dc3c468602b18daaffaf62dae', 'El Rio Community Health Center', '839 West Congress Street, Tucson, AZ 85745, United States', '32.221213,-110.985927', 32.221214, -110.985924, 'hospital', 'maps/raw/places/staticmap/location=32.221213,-110.985927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.221213,-110.985927&format=gif'),
(423, 'fb5e3b5d', '42cd3b87a307226f72782d044208f631', 'Rio Del Valle Junior High School', '3100 Rose Avenue, Oxnard, CA 93036, United States', '34.232467,-119.154253', 34.232468, -119.154251, 'school', 'maps/raw/places/staticmap/location=34.232467,-119.154253&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.232467,-119.154253&format=gif'),
(424, 'cd0c1932', '8b02d77ec9972534efb5012d87f58c73', 'The Harry S. Truman Scholarship Foundation', '712 Jackson Place Northwest, Washington, DC 20006, United States', '38.899499,-77.03872', 38.899498, -77.038719, 'point_of_interest', 'maps/raw/places/staticmap/location=38.899499,-77.03872&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.899499,-77.03872&format=gif'),
(425, '61dbd89e', '490ce401c9666fe97a9d2d99cf509229', 'Harry S. Truman Library', '500 West US Highway 24, Independence, MO 64050, United States', '39.103448,-94.421264', 39.103447, -94.421265, 'library', 'maps/raw/places/staticmap/location=39.103448,-94.421264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.103448,-94.421264&format=gif'),
(426, '95131222', 'a45a3acc8c7e5649ee5a72c0cbe26915', 'Dabney S. Lancaster Community College Rockbridge Regional Center', '35 Vista Links Drive, Buena Vista, VA 24416, United States', '37.739563,-79.37555', 37.739563, -79.375549, 'point_of_interest', 'maps/raw/places/staticmap/location=37.739563,-79.37555&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.739563,-79.37555&format=gif'),
(427, '443b99f2', '063d292d5c9e5cc84ca35383f0240a67', 'William S Hart Museum', '24151 Newhall Avenue, Newhall, CA 91321, United States', '34.375689,-118.525691', 34.375690, -118.525688, 'museum', 'maps/raw/places/staticmap/location=34.375689,-118.525691&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.375689,-118.525691&format=gif'),
(428, '071f6ebb', '6e32b9913318cabbf6b91e495f9aaff9', 'S &amp; S Truck Parts Inc', '600 West Irving Park Road, Schaumburg, IL 60193, United States', '41.99065,-88.094771', 41.990650, -88.094772, 'store', 'maps/raw/places/staticmap/location=41.99065,-88.094771&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.99065,-88.094771&format=gif'),
(429, 'a8cbed09', '726a550a9f4242c3f8173d3f790f931f', 'S &amp; S Truck &amp; Tractor Canada Inc', '6460 Kestrel Road, Mississauga, ON L5T 1Z7, Canada', '43.652257,-79.672534', 43.652256, -79.672531, 'store', 'maps/raw/places/staticmap/location=43.652257,-79.672534&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.652257,-79.672534&format=gif'),
(430, '3e1b6e2c', '40f03db0f08a3dab60c61a535b4a5e4b', 'Dabney S. Lancaster Community College', '1000 Dabney Drive, Clifton Forge, VA 24422, United States', '37.810266,-79.852354', 37.810265, -79.852356, 'point_of_interest', 'maps/raw/places/staticmap/location=37.810266,-79.852354&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.810266,-79.852354&format=gif'),
(431, '811480d0', 'e853210bcd49e0589e535c32b4a64d03', 'Skype', '3210 Porter Drive, Palo Alto, CA 94304, United States', '37.407373,-122.147342', 37.407372, -122.147339, 'establishment', 'maps/raw/places/staticmap/location=37.407373,-122.147342&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.407373,-122.147342&format=gif'),
(432, '35d0e8be', 'bc1b7b7f16472192aa2bb8ea399bfe5e', 'William S. Hein &amp; Co., Inc.', '2350 North Forest Road, Getzville, NY 14068, United States', '43.007321,-78.775571', 43.007320, -78.775574, 'establishment', 'maps/raw/places/staticmap/location=43.007321,-78.775571&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.007321,-78.775571&format=gif'),
(433, '80cadc11', '26c20018ba6bed9c490f36d3b4c2a2d4', 'S &amp; T Bank', 'South 8th Avenue, Clarion, PA 16214, United States', '41.212014,-79.380677', 41.212013, -79.380676, 'atm', 'maps/raw/places/staticmap/location=41.212014,-79.380677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.212014,-79.380677&format=gif'),
(434, '2ffa5a59', '75927d6d726b6abd69dd072e0929147d', 'S &amp; T Bank', 'Coral Reef Road, DuBois, PA 15801, United States', '41.149694,-78.703995', 41.149693, -78.703995, 'atm', 'maps/raw/places/staticmap/location=41.149694,-78.703995&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.149694,-78.703995&format=gif'),
(435, '1b39f0d6', '187350535a96d91d5822474250a0caf6', 'Smithsonian S. Dillon Ripley Center', '1100 Jefferson Drive Southwest, Washington, DC 20560, United States', '38.888562,-77.026883', 38.888561, -77.026886, 'art_gallery', 'maps/raw/places/staticmap/location=38.888562,-77.026883&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.888562,-77.026883&format=gif'),
(436, 'c8abe36f', 'eb5aa678fffa900e4a313b1c5e3c22a3', 'Yale Music Library', '120 High Street, New Haven, CT 06511, United States', '41.311249,-72.929042', 41.311249, -72.929039, 'library', 'maps/raw/places/staticmap/location=41.311249,-72.929042&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.311249,-72.929042&format=gif'),
(437, 'd472fb01', 'f44c1f1ca8a3ea4d131b16379444d62b', 'S Karger Publishers Inc', '26 West Avon Road, Unionville, CT 06085, United States', '41.756962,-72.881836', 41.756962, -72.881836, 'establishment', 'maps/raw/places/staticmap/location=41.756962,-72.881836&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.756962,-72.881836&format=gif'),
(438, '5e3f39a6', '4910298b9b24dc55af45f1b440bfede8', 'Harry S Truman School of Public Affairs', 'Middlebush Hall, Columbia, MO 65201, United States', '38.946201,-92.326928', 38.946201, -92.326927, 'university', 'maps/raw/places/staticmap/location=38.946201,-92.326928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.946201,-92.326928&format=gif'),
(439, '6c2713a9', '4f9bf2269d95f58f5ad030b32fff07ea', 'S &amp; T Bank', 'Route 30 East, Greensburg, 15601, United States', '40.300575,-79.508197', 40.300575, -79.508194, 'atm', 'maps/raw/places/staticmap/location=40.300575,-79.508197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.300575,-79.508197&format=gif'),
(440, '5ebc5973', 'db6131218632dc12c7f7e2a6806eb05c', 'S &amp; T Bank', '2388 Pennsylvania 286, Pittsburgh, PA 15239, United States', '40.463082,-79.704561', 40.463081, -79.704559, 'atm', 'maps/raw/places/staticmap/location=40.463082,-79.704561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.463082,-79.704561&format=gif'),
(441, 'a11b5857', '0490901ed7c36fadb036a93466820fd9', 'The S/L/A/M Collaborative Inc', '80 Glastonbury Boulevard, Glastonbury, CT 06033, United States', '41.721391,-72.618282', 41.721390, -72.618279, 'home_goods_store', 'maps/raw/places/staticmap/location=41.721391,-72.618282&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.721391,-72.618282&format=gif'),
(442, 'dc70f1e9', 'de779fa4ba3641c7316e0f4706f6f16d', 'C &amp; S Technical Resources', '499 Col Eileen Collins Boulevard, Syracuse, NY 13212, United States', '43.114453,-76.131861', 43.114452, -76.131859, 'general_contractor', 'maps/raw/places/staticmap/location=43.114453,-76.131861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.114453,-76.131861&format=gif'),
(443, 'cb81f531', 'ac734a590fbf8e622bc22403411be6e9', 'S &amp; S Truck Parts Inc', '1401 Valley View Lane, Irving, TX 75061, United States', '32.830783,-97.028267', 32.830784, -97.028267, 'store', 'maps/raw/places/staticmap/location=32.830783,-97.028267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.830783,-97.028267&format=gif'),
(444, '8e9436ec', '57c6f58f56a7d2ce5c11bcc80ec08bef', 'T-Mobile', '304 merced mall, Merced, CA 95348, United States', '37.320641,-120.482665', 37.320641, -120.482666, 'electronics_store', 'maps/raw/places/staticmap/location=37.320641,-120.482665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.320641,-120.482665&format=gif'),
(445, '94e44c8b', '2f1ef85ef7b883e18fa4ffff3e971623', 'T-Mobile', '2800 Independence Dr, Livermore, CA 94551, United States', '37.702952,-121.812573', 37.702953, -121.812576, 'store', 'maps/raw/places/staticmap/location=37.702952,-121.812573&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.702952,-121.812573&format=gif'),
(446, '4174cb86', '2ccaa743dd9b1cfc08f39ab2995a0f0a', 'T-Mobile', '1709 Automation Pkwy, San Jose, CA 95131, United States', '37.390678,-121.884723', 37.390678, -121.884720, 'store', 'maps/raw/places/staticmap/location=37.390678,-121.884723&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.390678,-121.884723&format=gif'),
(447, '676a8b7c', '279c7c744f7723bc3db215eb22016746', 'T-Mobile', '232 S Garfield Ave, Monterey Park, CA 91754, United States', '34.060276,-118.122601', 34.060276, -118.122604, 'store', 'maps/raw/places/staticmap/location=34.060276,-118.122601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.060276,-118.122601&format=gif'),
(448, 'e7cc414e', 'd7783054b54662ae46cbecda015b0ccb', 'T-Mobile', '3100 East Imperial Highway #1202, Lynwood, CA 90262, United States', '33.929169,-118.215504', 33.929169, -118.215508, 'store', 'maps/raw/places/staticmap/location=33.929169,-118.215504&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.929169,-118.215504&format=gif'),
(449, '82eae489', 'eb76f7325c7c9459e754fb07c69495bd', 'T-Mobile Los Angeles', '105 W Century Blvd #101, Los Angeles, CA 90003, United States', '33.945752,-118.274353', 33.945751, -118.274353, 'store', 'maps/raw/places/staticmap/location=33.945752,-118.274353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.945752,-118.274353&format=gif'),
(450, '368d120c', '32758e573fd615118d8f898704804d8a', 'T-Mobile Simply Prepaid', '15126 Paramount Blvd, Paramount, CA 90723, United States', '33.895331,-118.159604', 33.895332, -118.159607, 'store', 'maps/raw/places/staticmap/location=33.895331,-118.159604&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.895331,-118.159604&format=gif'),
(451, '4a9fce37', '63a283e6d731aa86c206f636ed68810d', 'Casino Cellular', '2026 W Olympic Blvd, Los Angeles, CA 90006, United States', '34.051463,-118.27974', 34.051464, -118.279739, 'store', 'maps/raw/places/staticmap/location=34.051463,-118.27974&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.051463,-118.27974&format=gif'),
(452, '5c9ddbba', '8b7c70b8e8f9c6c28cf623a0783c1cf6', 'Law Offices of Patent Attorney William Mansfield', 'Winchester, MA, United States', '42.101483,-72.589811', 42.101482, -72.589813, 'lawyer', 'maps/raw/places/staticmap/location=42.101483,-72.589811&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.101483,-72.589811&format=gif'),
(453, '698464dd', 'e7082e759a5a09a97064466764387993', 'Twitter', '249 W 17th St, New York, NY 10011, United States', '40.741474,-73.99985', 40.741474, -73.999847, 'establishment', 'maps/raw/places/staticmap/location=40.741474,-73.99985&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.741474,-73.99985&format=gif'),
(454, '46ae68af', '9dc62e02b7462c78431abcab59afb5d2', 'Westborough MBTA Parking', 'Smith Pkwy, Westborough, MA 01581, United States', '42.269972,-71.647496', 42.269974, -71.647499, 'parking', 'maps/raw/places/staticmap/location=42.269972,-71.647496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.269972,-71.647496&format=gif'),
(455, '33964f31', '8ec23e1de6d452abeb466bb33da0820b', 'MBTA Commuter Rail Littleton Station', '261 Foster St, Littleton, MA 01460, United States', '42.519236,-71.502546', 42.519238, -71.502548, 'establishment', 'maps/raw/places/staticmap/location=42.519236,-71.502546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.519236,-71.502546&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(456, 'ef2146b3', '04052bd617aebe425d629cd296f18416', 'West Natick Train Station', '249 W Central St, Natick, MA 01760, United States', '42.283098,-71.391789', 42.283096, -71.391792, 'train_station', 'maps/raw/places/staticmap/location=42.283098,-71.391789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.283098,-71.391789&format=gif'),
(457, '9ab6ffea', '934230f0ba11c7863e9d591084a15f3f', 'MBTA Attleboro Station', '75 S Main St, Attleboro, MA 02703, United States', '41.941956,-71.284967', 41.941956, -71.284966, 'establishment', 'maps/raw/places/staticmap/location=41.941956,-71.284967&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.941956,-71.284967&format=gif'),
(458, '09e5e151', '7321bbb348ec702562825eb03dfc181d', 'MBTA Commuter Rail Parking Lot', '231 Centre Ave, Abington, MA 02351, United States', '42.106644,-70.934804', 42.106644, -70.934807, 'parking', 'maps/raw/places/staticmap/location=42.106644,-70.934804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.106644,-70.934804&format=gif'),
(459, '18ab4663', '43b0845fd16485f018f9446ee27d5ff6', 'T-Mobile', '1624 Donald Lee Hollowell Parkway Northwest, Atlanta, GA 30318, United States', '33.771923,-84.441318', 33.771923, -84.441315, 'store', 'maps/raw/places/staticmap/location=33.771923,-84.441318&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.771923,-84.441318&format=gif'),
(460, '3384f5c0', '401f2e99260af365c3e2cddb75e002c4', 'T-Mobile', '137 Hester St, New York, NY 10013, United States', '40.717146,-73.994692', 40.717148, -73.994690, 'store', 'maps/raw/places/staticmap/location=40.717146,-73.994692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.717146,-73.994692&format=gif'),
(461, '84eefd4b', '624c13f196c433a508038a9d06639ee2', 'T-Mobile Authorized Dealer', '6149 Old National Highway, Atlanta, GA 30349, United States', '33.586766,-84.472181', 33.586765, -84.472183, 'store', 'maps/raw/places/staticmap/location=33.586766,-84.472181&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.586766,-84.472181&format=gif'),
(462, '66e1b471', '555ac7b65bdb0e53785e4e3a3282da79', 'T-Mobile', '3951 W Ashley Cir, Charleston, SC 29414, United States', '32.821599,-80.08132', 32.821598, -80.081322, 'store', 'maps/raw/places/staticmap/location=32.821599,-80.08132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.821599,-80.08132&format=gif'),
(463, '175aa42a', '15d55a610d9c54ac644722cc9ab7e9dd', 'T-Mobile', '1900 Cunningham Dr, Hampton, VA 23666, United States', '37.040756,-76.378973', 37.040756, -76.378975, 'store', 'maps/raw/places/staticmap/location=37.040756,-76.378973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.040756,-76.378973&format=gif');

-- --------------------------------------------------------

--
-- Table structure for table `messages_data`
--

CREATE TABLE IF NOT EXISTS `messages_data` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `content` text NOT NULL,
  `emoticons` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_hide`
--

CREATE TABLE IF NOT EXISTS `messages_hide` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `messages.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_id`
--

CREATE TABLE IF NOT EXISTS `messages_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` char(40) NOT NULL,
  `private` int(1) NOT NULL,
  `type` char(10) NOT NULL,
  `name` text,
  `language` char(4) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_members`
--

CREATE TABLE IF NOT EXISTS `messages_members` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `regency` char(10) NOT NULL,
  `translate` char(4) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_typing`
--

CREATE TABLE IF NOT EXISTS `messages_typing` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_views`
--

CREATE TABLE IF NOT EXISTS `messages_views` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `duration` float(10,6) NOT NULL,
  `path` text NOT NULL
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
  `file.320kbps` varchar(50) NOT NULL,
  `file.128kbps` varchar(50) NOT NULL,
  `secret.original` varchar(40) NOT NULL,
  `secret.320kbps` varchar(40) NOT NULL,
  `secret.128kbps` varchar(40) NOT NULL,
  `path.original` text NOT NULL,
  `path.320kbps` char(10) NOT NULL,
  `path.128kbps` char(10) NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec_name` char(10) NOT NULL,
  `codec_long_name` varchar(100) DEFAULT NULL,
  `bitrate` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `mime_type` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_info`
--

INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `display`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.320kbps`, `file.128kbps`, `secret.original`, `secret.320kbps`, `secret.128kbps`, `path.original`, `path.320kbps`, `path.128kbps`, `file.datetime`, `file.size`, `codec_name`, `codec_long_name`, `bitrate`, `duration`, `mime_type`) VALUES
(1, 1, 'user', 1, 0, 1441182602, '60f9d8d7', '6246b08f5f02829a6c81c31d96883073', 'Ä‘iá»u anh lo láº¯ng', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 'khÃ¡nh phÆ°Æ¡ng', '', '', 4, 4, 4, 'f9c9c0d67cfa9bacae1b319f45802bcf', '2309e46c1deb259edd0ad9a865dac0fe', '5024c79d1a4f3df36ea6b1c078cc52f3', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e6321c040a4eceb05c0d6241487da67c', '7f3d0ab076b9fbbead304640c8be22af', '314b49e3', '3521a9ad', 'e224e7ed', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages_block`
--

CREATE TABLE IF NOT EXISTS `pages_block` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `page.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages_follow`
--

CREATE TABLE IF NOT EXISTS `pages_follow` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `page.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `language` char(4) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id`, `code`, `language`, `value`) VALUES
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
(14, 'notifyPopup_count_limit', 'en', '5'),
(15, 'sleep_when_error', 'en', '1000'),
(16, 'sites_id_time_limit', 'en', '3600'),
(17, 'sites_info_time_limit', 'en', '3600'),
(18, 'sites_id_rate_v1', 'en', '1'),
(19, 'sites_id_rate_v2', 'en', '2000'),
(20, 'sites_id_rate_v3', 'en', '3000'),
(21, 'sites_id_rate_v4', 'en', '4000'),
(22, 'sites_id_rate_v5', 'en', '5000'),
(23, 'notifyPopup_info_places', 'en', '10000'),
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
(49, 'media_cache_time_close', 'en', '1800'),
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
(98, 'regex_hashtag', 'en', '/((^|\\s)#([a-zA-Z0-9\\_]+)($|\\s))/'),
(99, 'regex_usertag', 'en', '/((^|\\s)@([a-zA-Z0-9\\_]+)($|\\s))/'),
(100, 'cited_inputAuthor_length', 'en', '40'),
(101, 'cited_inputQuote_length', 'en', '255'),
(102, 'cited_photosID_default', 'en', '0'),
(103, 'cited_photosSize_length', 'en', '500'),
(104, 'status_effect_show', 'en', '100'),
(105, 'status_effect_duration', 'en', '500'),
(106, 'status_effect_nextTime', 'en', '250'),
(107, 'feed_update_call', 'en', '10000'),
(108, 'feed_update_timeout', 'en', '10000'),
(109, 'hash_feed_status_content', 'en', 'g::key::feed->status->content'),
(110, 'hash_user_password', 'en', 'g::key::user->password'),
(112, 'user_timezone.default', 'en', '+07:00'),
(113, 'user_language.default', 'en', 'en'),
(114, 'user_private.status_default', 'en', '3'),
(115, 'hash_photos_static', 'en', 'g::key::photos->static'),
(116, 'hash_photos_other', 'en', 'g::key::photos->other'),
(117, 'user_private.info_default', 'en', '4'),
(118, 'notifyPopup_timeout', 'en', '5000'),
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
(138, 'accounts_action_time_delay', 'en', '5'),
(139, 'accounts_action_time_allow', 'en', '3'),
(140, 'http_cache_expire', 'en', '86400'),
(141, 'http_cache_expire_quick', 'en', '3600'),
(142, 'http_cache_expire_static', 'en', '129600'),
(143, 'default_user_avatar_large', 'en', 'storage/photos/static/user-avatar-large.jpg'),
(144, 'default_user_avatar_medium', 'en', 'storage/photos/static/user-avatar-medium.jpg'),
(145, 'default_user_avatar_small', 'en', 'storage/photos/static/user-avatar-small.jpg'),
(146, 'default_user_cover_large', 'en', 'storage/photos/static/user-cover-large.jpg'),
(147, 'default_user_cover_medium', 'en', 'storage/photos/static/user-cover-medium.jpg'),
(148, 'default_user_cover_small', 'en', 'storage/photos/static/user-cover-small.jpg'),
(151, 'suggest_news_reload', 'en', '3600'),
(152, 'suggest_guys_reload', 'en', '3600'),
(153, 'suggest_guys_reopen', 'en', '1800'),
(154, 'suggest_news_reopen', 'en', '1800'),
(155, 'select_time_year_min', 'en', '1900'),
(156, 'select_time_year_max', 'en', '2015'),
(157, 'select_time_month_min', 'en', '1'),
(158, 'select_time_month_max', 'en', '12'),
(159, 'select_time_day_min', 'en', '1'),
(160, 'select_time_day_max', 'en', '30'),
(161, 'select_time_hour_min', 'en', '0'),
(162, 'select_time_hour_max', 'en', '23'),
(163, 'select_time_minute_min', 'en', '0'),
(164, 'select_time_minute_max', 'en', '59'),
(165, 'select_time_second_min', 'en', '0'),
(166, 'select_time_second_max', 'en', '59'),
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
(188, 'storage_folder_max', 'en', '1'),
(189, 'storage_folder_name', 'en', 'drive'),
(190, 'cacheClean_user_limit_min', 'en', '100'),
(191, 'cacheClean_user_limit_max', 'en', '1000'),
(192, 'videos_thumbnail_image_mime', 'en', 'image/png'),
(193, 'rekognition_key', 'en', 'aJyI214g7jnoRP2I'),
(194, 'rekognition_secret', 'en', 'eAcco8pF6fpDgdJg'),
(195, 'rekognition_namespace', 'en', 'giccos'),
(196, 'rekognition_userid', 'en', 'faces'),
(197, 'rekognition_url', 'en', 'http://rekognition.com/func/api/'),
(198, 'rekognition_rate_allow', 'en', '0.25'),
(199, 'rekognition_tagupload', 'en', 'untagged'),
(200, 'rekognition_tagdefault', 'en', '_x_all'),
(201, 'image_faces_thumbnail', 'en', '150'),
(202, 'hash_feed_comment_content', 'en', 'g::key::feed->comment->content'),
(203, 'boxSuggest_length_randKeyEvent', 'en', '32'),
(204, 'ajax_length_randKeyEvent', 'en', '10'),
(205, 'notifyPopup_length_randKeyEvent', 'en', '32'),
(206, 'ajax_request_limit_checktime', 'en', '15'),
(207, 'photos_compression_size_percent', 'en', '75'),
(208, 'photos_compression_quality_percent', 'en', '85'),
(209, 'regex_name', 'en', '/^([\\S]{2,30})$/'),
(210, 'regex_password', 'en', '/^(\\S{8,}$)/'),
(211, 'regex_email', 'en', '/(([\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,6}))$/'),
(212, 'regex_username', 'en', '/^([a-zA-Z]{1})([a-zA-Z0-9\\.\\_]{5,30})$/'),
(213, 'regex_date_day', 'en', '/^([0-9]{1,2})$/'),
(214, 'regex_date_month', 'en', '/^([0-9]{1,2})$/'),
(215, 'regex_date_year', 'en', '/^([0-9]{4})$/'),
(216, 'regex_gender', 'en', '/^(male|female)$/'),
(217, 'regex_phone', 'en', '/^([0-9]{9,15})$/'),
(218, 'storage_cache_folder_path', 'en', 'storage/cache'),
(219, 'hash_cache_image_path', 'en', 'g::key::cache->image->path'),
(220, 'hash_storage_path', 'en', 'g::key::storage->path'),
(221, 'user_messages.translate_default', 'en', '1'),
(222, 'user_language.code_list', 'en', 'a:2:{i:0;s:2:"en";i:1;s:2:"vi";}'),
(223, 'hash_messages_content', 'en', 'g::key::messages->content'),
(224, 'messages_update_timeout', 'en', '3000'),
(225, 'messagesPopup_length_randKeyEvent', 'en', '10'),
(226, 'regex_messages', 'en', '/([\\S]+)/'),
(227, 'messages_typing_timeout', 'en', '3000'),
(228, 'messages_views_timeout', 'en', '3000'),
(229, 'regex_sites_url', 'en', '/^((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?((([a-zA-Z0-9]+)\\.([a-zA-Z\\.]+))\\/?(([\\S\\s][^\\.]+)(\\.([a-zA-Z0-9]+))?)?)/'),
(230, 'sites_info_time_update', 'en', '86400'),
(231, 'feeds_nearby_scanning_distance', 'en', '10'),
(232, 'user_mode.safe_default', 'en', '0'),
(233, 'users_getpassword_timeout', 'en', '3600'),
(234, 'regex_sites_giccos_direct', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/(sites\\/direct)\\/([\\S]+)?)/'),
(235, 'hash_cache_readfile', 'en', 'g::key::cache->readfile'),
(236, 'regex_sites_giccos_host', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/([\\S]+)?)/'),
(237, 'messages_postion_timeout', 'en', '300'),
(238, 'hash_storage_static', 'en', 'g::key::storage->static'),
(239, 'users_online_timeout', 'en', '300'),
(240, 'regex_sites_url_fstring', 'en', '/((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?((([a-zA-Z0-9]+)\\.([a-zA-Z\\.]+))\\/?(([\\S\\s][^\\.]+)(\\.([a-zA-Z0-9]+))?)?)/'),
(241, 'hash_user_info', 'en', 'g::key::user->infomation'),
(242, 'regex_sites_giccos_domain', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/?)/'),
(243, 'regex_language_code', 'en', '/([a-zA-Z]{4})/'),
(244, 'regex_word', 'en', '/([a-zA-Z]+)/'),
(245, 'key_api_wordnik_1', 'en', 'a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5'),
(246, 'hash_library_words_subinfo', 'en', 'g::key::library->words->subinfo'),
(247, 'hash_library_voice_content', 'en', 'g::key::library->voice->content'),
(248, 'feeds_action_timeout', 'en', '43200'),
(249, 'hash_photos_qr', 'en', 'g::key::photos->qr'),
(250, 'hash_videos_pointtag_check', 'en', 'g::key::videos->pointtag->check'),
(251, 'sites_views_timeout', 'en', '86400'),
(252, 'hash_mailer_logs', 'en', 'g::key::mailer->logs'),
(253, 'hash_mailer_id', 'en', 'g::key::mailer->id'),
(254, 'weather_cache_timeout', 'en', '10800');

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
  `photos.path` varchar(40) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 1, 'user', 1, 0, 1441183071, '8e68d095', '8bae5fbe328323689b3cbf4862b7959a', '16a2f66f', 'CL36_2nUkAATviz.jpg', '', '', 0, 1, 4, 4, 4, 'd70331a9af54d79bb2bec2e50a1eda79', '0', '0', '6e68bd54961af9bfc7e836fc22c83dd4', '50d36e33ce1f6d1cfefd3a54203c061d', '0', '0', 'd91e809c1152dbeecc0ff9e60278eee2', '87d7ce29', '0', '0', 'e8266bb1', 450, 600, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(2, 1, 'user', 1, 0, 1441183072, 'cef7d498', '7c018bf97aaa0d167bdc0b4eee61b849', '32f75cab', '1440690613319_3257.jpg', '', '', 0, 1, 4, 4, 4, 'b38cd0f48889f7803ef86dc98cd794f1', '0', '0', 'bf8e8e43e05b54a19994aabcf8eaa552', '1c82fa8c3761ba1bcc88cb10af514bdb', '0', '0', '3e3f258d756bf1b8dfeea76b61490d8b', 'fce21e37', '0', '0', 'ae225fe9', 900, 720, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(3, 1, 'user', 1, 0, 1441183076, '3d96485a', '6cf02720d7fd880e3b05471602994f77', '985ae914', '1909298_1474502006103047_649702505_o.jpg', '', '', 0, 1, 4, 4, 4, '659eaaeef227919f798a05d7bd4680b2', 'b3824d1a629d0880b8e9bc3436e53554', '551a6e94bde1b31a8385f0f8a7337b9a', '203809947b2d2fee728b52000e387620', 'f322d982f6b00c3e546469fb893d312b', 'b19cce68ddc0c0bc34772db494234278', 'f55c976be787b8d4a9afc91e4e1ba63e', '0bc94804ea378316e3dbeccaf0b53716', 'e03adb6b', '7df1e26f', '999f329e', '997478ae', 1536, 2048, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(4, 1, 'user', 1, 0, 1441183078, 'd10bf299', 'a5766c9fb32ab99fd715a648c0e8d373', '3b16fd4d', '1500x500.jpg', '', '', 0, 1, 4, 4, 4, '8f8209219c1da97dd13eca7ec2f14bea', 'd474dd118aa4794157e1ea4f291f8b6b', '5c2318736297703f362d63baaa892d4e', '165d7da5001c0d5a230b5a411daf6e9c', 'b69946e35fff6c33d17636829b6c7fe9', '49d9392e6cc8b444d5799abc5d2b3347', '3ba915353c9ec1141db4ade4639d2d09', '781d56f8dcb33f904a07c2b0b2b68d5a', '25af09f8', 'f47e0c81', '47e3399f', '67f5a822', 500, 1500, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `process_id`
--

CREATE TABLE IF NOT EXISTS `process_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `total` float(16,4) DEFAULT NULL,
  `done` float(16,4) DEFAULT NULL,
  `percent` float(3,2) DEFAULT NULL,
  `logs` text,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(128) NOT NULL,
  `time` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `token` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('WSMhEdDDw4Q93X548itxogj0Tj9hk-APZpovDBqC9qb', 1441806675, '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', 'a6de6a6ccf4ba8db4bfe66b6b0261e9b');

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
-- Table structure for table `sites_certificate`
--

CREATE TABLE IF NOT EXISTS `sites_certificate` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `hash` varchar(20) NOT NULL,
  `issuer.c` varchar(20) DEFAULT NULL,
  `issuer.o` varchar(50) DEFAULT NULL,
  `issuer.ou` varchar(50) DEFAULT NULL,
  `issuer.s` varchar(40) DEFAULT NULL,
  `issuer.l` varchar(40) DEFAULT NULL,
  `issuer.cn` varchar(100) DEFAULT NULL,
  `signature.type.name` varchar(30) DEFAULT NULL,
  `signature.type.id` char(10) DEFAULT NULL,
  `purposes` text,
  `valid.time.from` int(11) NOT NULL,
  `valid.time.to` int(11) NOT NULL,
  `identifier.subject.key` varchar(255) DEFAULT NULL,
  `identifier.authority.key` varchar(255) DEFAULT NULL,
  `policies` text,
  `usefor.key` varchar(100) DEFAULT NULL,
  `usefor.extended` varchar(255) DEFAULT NULL,
  `subject.name` text,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_certificate`
--

INSERT INTO `sites_certificate` (`id`, `time`, `token`, `display`, `hash`, `issuer.c`, `issuer.o`, `issuer.ou`, `issuer.s`, `issuer.l`, `issuer.cn`, `signature.type.name`, `signature.type.id`, `purposes`, `valid.time.from`, `valid.time.to`, `identifier.subject.key`, `identifier.authority.key`, `policies`, `usefor.key`, `usefor.extended`, `subject.name`, `updated`) VALUES
(1, 1441477109, '4999265f', '9e682345f64c2ceb7f2bcb9debe98f83', '60fc2aa4', 'GB', 'COMODO CA Limited', '', '', 'Salford', 'COMODO RSA Domain Validation Secure Server CA', 'RSA-SHA256', '', 'a:9:{i:1;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslclient&quot;;}i:2;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslserver&quot;;}i:3;a:3:{i:0;b:1;i:1;b:0;i:2;s:11:&quot;nssslserver&quot;;}i:4;a:3:{i:0;b:0;i:1;b:0;i:2;s:9:&quot;smimesign&quot;;}i:5;a:3:{i:0;b:0;i:1;b:0;i:2;s:12:&quot;smimeencrypt&quot;;}i:6;a:3:{i:0;b:0;i:1;b:0;i:2;s:7:&quot;crlsign&quot;;}i:7;a:3:{i:0;b:1;i:1;b:1;i:2;s:3:&quot;any&quot;;}i:8;a:3:{i:0;b:1;i:1;b:0;i:2;s:10:&quot;ocsphelper&quot;;}i:9;a:3:{i:0;b:0;i:1;b:0;i:2;s:13:&quot;timestampsign&quot;;}}', 1338678000, 1496444399, 'F8:D6:29:80:5F:40:E6:4B:8A:1E:E3:36:36:04:A1:34:AB:3A:91:F7', 'keyid:90:AF:6A:3A:94:5A:0B:D8:90:EA:12:56:73:DF:43:B4:3A:28:DA:E7\n', 'Policy: 1.3.6.1.4.1.6449.1.2.2.7\n  CPS: https://secure.comodo.com/CPS\nPolicy: 2.23.140.1.2.1\n', 'Digital Signature, Key Encipherment', 'TLS Web Server Authentication, TLS Web Client Authentication', 'a:2:{i:0;s:15:&quot;DNS:*.tinhte.vn&quot;;i:1;s:14:&quot; DNS:tinhte.vn&quot;;}', 1441477109),
(2, 1441477146, '2ce60b2c', 'c9968591e83ec79036ac420f3f00fd04', 'a18bd28a', 'US', 'Google Inc', '', '', '', 'Google Internet Authority G2', 'RSA-SHA256', '', 'a:9:{i:1;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslclient&quot;;}i:2;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslserver&quot;;}i:3;a:3:{i:0;b:0;i:1;b:0;i:2;s:11:&quot;nssslserver&quot;;}i:4;a:3:{i:0;b:0;i:1;b:0;i:2;s:9:&quot;smimesign&quot;;}i:5;a:3:{i:0;b:0;i:1;b:0;i:2;s:12:&quot;smimeencrypt&quot;;}i:6;a:3:{i:0;b:0;i:1;b:0;i:2;s:7:&quot;crlsign&quot;;}i:7;a:3:{i:0;b:1;i:1;b:1;i:2;s:3:&quot;any&quot;;}i:8;a:3:{i:0;b:1;i:1;b:0;i:2;s:10:&quot;ocsphelper&quot;;}i:9;a:3:{i:0;b:0;i:1;b:0;i:2;s:13:&quot;timestampsign&quot;;}}', 1440608123, 1448319600, '26:1D:BE:F0:1B:E7:1E:0A:C4:7F:DC:53:CE:0C:4A:44:6B:DC:A8:74', 'keyid:4A:DD:06:16:1B:BC:F6:68:B5:76:F5:81:B6:BB:62:1A:BA:5A:81:2F\n', 'Policy: 1.3.6.1.4.1.11129.2.5.1\n', 'Digital Signature', 'TLS Web Server Authentication, TLS Web Client Authentication', 'a:50:{i:0;s:16:&quot;DNS:*.google.com&quot;;i:1;s:18:&quot; DNS:*.android.com&quot;;i:2;s:27:&quot; DNS:*.appengine.google.com&quot;;i:3;s:23:&quot; DNS:*.cloud.google.com&quot;;i:4;s:27:&quot; DNS:*.google-analytics.com&quot;;i:5;s:16:&quot; DNS:*.google.ca&quot;;i:6;s:16:&quot; DNS:*.google.cl&quot;;i:7;s:19:&quot; DNS:*.google.co.in&quot;;i:8;s:19:&quot; DNS:*.google.co.jp&quot;;i:9;s:19:&quot; DNS:*.google.co.uk&quot;;i:10;s:20:&quot; DNS:*.google.com.ar&quot;;i:11;s:20:&quot; DNS:*.google.com.au&quot;;i:12;s:20:&quot; DNS:*.google.com.br&quot;;i:13;s:20:&quot; DNS:*.google.com.co&quot;;i:14;s:20:&quot; DNS:*.google.com.mx&quot;;i:15;s:20:&quot; DNS:*.google.com.tr&quot;;i:16;s:20:&quot; DNS:*.google.com.vn&quot;;i:17;s:16:&quot; DNS:*.google.de&quot;;i:18;s:16:&quot; DNS:*.google.es&quot;;i:19;s:16:&quot; DNS:*.google.fr&quot;;i:20;s:16:&quot; DNS:*.google.hu&quot;;i:21;s:16:&quot; DNS:*.google.it&quot;;i:22;s:16:&quot; DNS:*.google.nl&quot;;i:23;s:16:&quot; DNS:*.google.pl&quot;;i:24;s:16:&quot; DNS:*.google.pt&quot;;i:25;s:23:&quot; DNS:*.googleadapis.com&quot;;i:26;s:20:&quot; DNS:*.googleapis.cn&quot;;i:27;s:25:&quot; DNS:*.googlecommerce.com&quot;;i:28;s:22:&quot; DNS:*.googlevideo.com&quot;;i:29;s:17:&quot; DNS:*.gstatic.cn&quot;;i:30;s:18:&quot; DNS:*.gstatic.com&quot;;i:31;s:15:&quot; DNS:*.gvt1.com&quot;;i:32;s:15:&quot; DNS:*.gvt2.com&quot;;i:33;s:25:&quot; DNS:*.metric.gstatic.com&quot;;i:34;s:17:&quot; DNS:*.urchin.com&quot;;i:35;s:21:&quot; DNS:*.url.google.com&quot;;i:36;s:27:&quot; DNS:*.youtube-nocookie.com&quot;;i:37;s:18:&quot; DNS:*.youtube.com&quot;;i:38;s:27:&quot; DNS:*.youtubeeducation.com&quot;;i:39;s:16:&quot; DNS:*.ytimg.com&quot;;i:40;s:16:&quot; DNS:android.com&quot;;i:41;s:9:&quot; DNS:g.co&quot;;i:42;s:11:&quot; DNS:goo.gl&quot;;i:43;s:25:&quot; DNS:google-analytics.com&quot;;i:44;s:15:&quot; DNS:google.com&quot;;i:45;s:23:&quot; DNS:googlecommerce.com&quot;;i:46;s:15:&quot; DNS:urchin.com&quot;;i:47;s:13:&quot; DNS:youtu.be&quot;;i:48;s:16:&quot; DNS:youtube.com&quot;;i:49;s:25:&quot; DNS:youtubeeducation.com&quot;;}', 1441477146);

-- --------------------------------------------------------

--
-- Table structure for table `sites_comment`
--

CREATE TABLE IF NOT EXISTS `sites_comment` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_favorite`
--

CREATE TABLE IF NOT EXISTS `sites_favorite` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `action` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_id`
--

CREATE TABLE IF NOT EXISTS `sites_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `host` varchar(100) NOT NULL,
  `ip` int(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `secure` char(5) NOT NULL,
  `updated` int(11) NOT NULL
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
  `hash` varchar(40) NOT NULL,
  `scheme` char(10) DEFAULT NULL,
  `sub` varchar(20) DEFAULT NULL,
  `host` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dot` varchar(25) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `mime` char(10) DEFAULT NULL,
  `fingerprints` char(10) NOT NULL,
  `language` char(4) DEFAULT NULL,
  `country` char(4) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `scan` varchar(40) NOT NULL,
  `certificate` varchar(40) DEFAULT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_info`
--

INSERT INTO `sites_info` (`id`, `time`, `token`, `display`, `hash`, `scheme`, `sub`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `language`, `country`, `type`, `title`, `thumbnail`, `description`, `url`, `scan`, `certificate`, `updated`) VALUES
(1, 1441184169, 'dd3c4c8b', '4f1aef1fef151627b42a39827ef573b5', '98c50f5a0eb09a4544509300d9e7b5b5', 'http', '', 'vnreview.vn', 'vnreview', 'vn', '', '', 'f3ea46d0', 'vi', 'VN', 'article', 'VnReview - ÄÃ¡nh giÃ¡, tin tá»©c, tÆ° váº¥n sáº£n pháº©m cÃ´ng nghá»‡', 'photos/raw/other/2CNBZDSZx3rjgGR4ZJr7g46cbP9oyR26lajSCX+WGEUI3UfShu7//qzeWw2wR7PFw49bgMEcDL50QITB16s4oA==', 'ÄÃ¡nh giÃ¡ sáº£n pháº©m cÃ´ng nghá»‡, tin tá»©c cÃ´ng nghá»‡, tÆ° váº¥n sáº£n pháº©m, Ä‘iá»‡n thoáº¡i di Ä‘á»™ng, smartphone, TV, laptop, Ä‘á»“ gia dá»¥ng, mÃ¡y tÃ­nh báº£ng, mÃ¡y áº£nh sá»‘', 'http://vnreview.vn/', '3cb38c7c11c5d9ee4c7f140496d39f4f', '', 1441184169),
(2, 1441184691, 'cb8fc719', 'b574cc4e97fb1e05c8636f9b1807f6a1', '570ebc90ae43186029283bb1f9e729a3', 'http', '', 'vnexpress.net', 'vnexpress', 'net', '', '', 'a8d66807', '', '', '', 'Tin nhanh VnExpress - Äá»c bÃ¡o, tin tá»©c online 24h', 'photos/raw/other/PeDTifbL3BXUGeZ4o3FeR7IBwet/1fUUTrm6xhNG29BY/So778zUEb8u2qfB4yD3HCWyVqoLCDUHLC3mP5V5xM6nLz5psYAZTVZJCP+VKJygAPcUawSnxcPYg3F/weHA', 'ThÃ´ng tin nhanh &amp;amp; má»›i nháº¥t Ä‘Æ°á»£c cáº­p nháº­t hÃ ng giá». Tin tá»©c Viá»‡t Nam &amp;amp; tháº¿ giá»›i vá» xÃ£ há»™i, kinh doanh, phÃ¡p luáº­t, khoa há»c, cÃ´ng nghá»‡, sá»©c khoáº», Ä‘á»i sá»‘ng, vÄƒn hÃ³a, rao váº·t, tÃ¢m sá»±...', 'http://vnexpress.net', 'bee1dc32244d643d0c040bf91ffa84f4', '', 1441184691),
(3, 1441184704, 'a49ca74a', '8778467be4836da0ad1a95347c6553c6', '266adb88be6da12efea60d13249b39f4', 'http', '', 'stackoverflow.com', 'stackoverflow', 'com', 'questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '', '10c10843', '', '', 'website', 'How to extract title and meta description using PHP Simple HTML DOM Parser? - Stack Overflow', 'photos/raw/other/5jmr+GGHFVEXl7DtOdFOPe1P2I7KU++hn5RzuLYA/jBRtcu2efm/kx/dmj0PpT4HsaZUij8NG06WbT1rcB5MzQP9DOuZzykEKEpXcuuYe+jYrX6gJ+ACFpcWBfe1VU2nJ3Cyem/fqZhk1rFiBh8rvm8vNeT4LX/1rra08WjFBXE=', 'How can I extract a page&amp;#39;s title and meta description using the PHP Simple HTML DOM Parser?  I just need the title of the page and the keywords in plain text. ', 'http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '736444bc3612697c735ac92d365bd219', '', 1441184704),
(4, 1441477108, '9d24e854', 'e0efa6913cc843827a2a489bcee00cc1', 'e89c605794cb3c7646e2bf1d275b6e00', 'https', '', 'tinhte.vn', 'tinhte', 'vn', '', '', '6399826d', 'vi', '', 'article', 'Cá»™ng Ä‘á»“ng Khoa há»c &amp;amp; CÃ´ng nghá»‡ | Tinhte.vn', '', '', 'https://tinhte.vn/', '27ce15f2e348d0bd76fab1920cb94568', '', 1441477108),
(5, 1441477145, '7ab250f1', '683833be714a2aef912d5a17ceebee84', 'baa034786446164961799e4189df7f65', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=aw9aBIT3HGk', '', '6635cff9', 'vi', '', 'video', 'Lasse Lindh - Run To You FMV (Angel Eyes OST) With Lyrics - YouTube', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuHgBt0WZeaTWap6WM4eyneW7NdfuJU8tBlDkBWIzloGg==', '', 'https://www.youtube.com/watch?v=aw9aBIT3HGk', '', '', 1441477145);

-- --------------------------------------------------------

--
-- Table structure for table `sites_rate`
--

CREATE TABLE IF NOT EXISTS `sites_rate` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `point` int(1) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_scan`
--

CREATE TABLE IF NOT EXISTS `sites_scan` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `hash` char(10) NOT NULL,
  `total` int(4) NOT NULL,
  `data` text NOT NULL,
  `status` char(10) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_scan`
--

INSERT INTO `sites_scan` (`id`, `time`, `token`, `display`, `hash`, `total`, `data`, `status`, `updated`) VALUES
(1, 1441184173, '9d0c92fe', '3cb38c7c11c5d9ee4c7f140496d39f4f', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnreview.vn&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnreview.vn&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:56:&quot;http://malc0de.com/database/index.php?search=vnreview.vn&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnreview.vn&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnreview.vn/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441184173),
(2, 1441184694, 'e45f994f', 'bee1dc32244d643d0c040bf91ffa84f4', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441184694),
(3, 1441184707, 'f0c9d955', '736444bc3612697c735ac92d365bd219', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:65:&quot;http://www.malwaredomainlist.com/mdl.php?search=stackoverflow.com&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:63:&quot;https://zeustracker.abuse.ch/monitor.php?host=stackoverflow.com&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:62:&quot;http://malc0de.com/database/index.php?search=stackoverflow.com&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:65:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=stackoverflow.com&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:157:&quot;http://yandex.com/infected?l10n=en&amp;url=http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441184707),
(4, 1441477113, 'e247c0f9', '27ce15f2e348d0bd76fab1920cb94568', '', 62, 'a:62:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;http://www.malwaredomainlist.com/mdl.php?search=tinhte.vn&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:55:&quot;https://zeustracker.abuse.ch/monitor.php?host=tinhte.vn&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:54:&quot;http://malc0de.com/database/index.php?search=tinhte.vn&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=tinhte.vn&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;http://yandex.com/infected?l10n=en&amp;url=https://tinhte.vn/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441477113);

-- --------------------------------------------------------

--
-- Table structure for table `sites_views`
--

CREATE TABLE IF NOT EXISTS `sites_views` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_views`
--

INSERT INTO `sites_views` (`id`, `time`, `sites.id`, `guy.type`, `guy.id`, `updated`) VALUES
(1, 1441154300, 3, 'user', '1', 1441184500),
(2, 1441154300, 3, 'user', '1', 1441184200),
(3, 1441154300, 3, 'user', '1', 1441184300),
(4, 1441154300, 3, 'user', '1', 1441184400),
(5, 1441154300, 3, 'user', '1', 1441184100);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL,
  `public` int(1) NOT NULL DEFAULT '0',
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

INSERT INTO `status` (`id`, `public`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, 1, '4c32d620', 'd9992d2be4a14f6f783e75ba00acd488', 1441182140, 1441182140, 0, 1, 'user', 1, 4, 3, 3, 'status', '9uqB0rH5kd4IBJ5ptLir8TubCQWhlnh9OUjXuYy16/c=', 0, 0, 0, 0, 0, 0),
(2, 1, '33d8a653', '50958d06f698b081a7e1ff9588f5e672', 1441182581, 1441182581, 0, 1, 'user', 1, 4, 3, 3, 'music', 'BytrpEuLSZLrBO/n6LkS3yrGLTaYfpxKeRvbQdB7oM0=', 0, 0, 0, 0, 0, 0),
(3, 1, '28d3a2da', 'e6feab677c85bc700a82cb9f1fefdc7b', 1441183070, 1441183070, 0, 1, 'user', 1, 4, 3, 3, 'photos', 'TSapcav1HSAKSOSKAK19ONFgP+WLtzdyfkCo+7L2DFNgBOTtxkwdScnLg+0aPA+TD9h5Dfp10c1W7KOUy6VpoxOFmK6fQXy2AFZzFkj4fXlkfgCEWy4FYt8FkGufnrXpbpzSYgiC45DJPo61Bo1wJwyBKA/63QscSdLoDC4n7h6KirpD/bFPq3HoDgpfZMelQBqc76S+C2tpPKqE0vuEYC5dXu5Q0PXmu6aeXaJz/hThPd3jcVuWmfnhTNSlh9R8F5/TE6oXP8KVhjpLZt1yDASlm60BhllXMg1nzAcfigE=', 0, 0, 0, 0, 0, 0),
(4, 1, '66443ac1', '2c36326e2cd9bad1547c07b74c3d16a6', 1441183314, 1441183314, 0, 1, 'user', 1, 4, 3, 3, 'videos', 'O1ywWonLhfGda5JhUz33gADLK3t94mVYAaw1lLpf/Eo=', 0, 0, 0, 0, 0, 0),
(5, 1, 'a2374f95', 'd30c9d53bd0d6ab960b2ec8974c729ce', 1441477168, 1441477168, 0, 1, 'user', 1, 4, 3, 3, 'status', 'cEgJg+tmTbFAp2d6jUWzCdcjuM2aCisNjyEAAOm9GrGOcRAQEi6QY4KWadqhTyLR2ZcT9J/TTreXHdG2ClYmGA==', 0, 0, 0, 0, 1, 0),
(6, 1, '4a21d3af', '42874a9ab645d7a4eeef2edf6056f399', 1441711567, 1441711567, 0, 2, 'user', 2, 4, 3, 3, 'status', 'jJO73oXwUBaXjSG8BsByrm9Quq1Rg0lNQCRu2Y8hUzQ=', 0, 0, 0, 0, 0, 0),
(7, 1, 'ebf521c3', '866a57f8adaeb69ea344d55b690f280a', 1441796192, 1441796192, 0, 2, 'user', 2, 4, 3, 3, 'status', 'C3KZrvEL4UuEV998cpdU/HeRHIWcdMCEEuq0h93xcKM=', 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `status_actions`
--

CREATE TABLE IF NOT EXISTS `status_actions` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_block`
--

CREATE TABLE IF NOT EXISTS `status_block` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `things.type` char(10) NOT NULL,
  `things.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_block`
--

INSERT INTO `status_block` (`id`, `time`, `things.type`, `things.id`, `guy.type`, `guy.id`) VALUES
(1, 1, '1', 1, '1', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(1, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441538699, 'status', 3, 1, 'user', 1, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', ''),
(2, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441538699, 'comment', 1, 1, 'user', 1, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', ''),
(3, '2a52fe3e', 'c4f4bf297e38c9e8217e942da2ad9159', 1441712504, 'status', 3, 1, 'user', 1, 0, 'SCA9qdGPndwci8ljJ+FaC1vu1T3EeAu8pXAXSIhA9uU=', ''),
(4, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441796192, 'status', 7, 2, 'user', 2, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', ''),
(5, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441796192, 'comment', 4, 2, 'user', 2, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', ''),
(6, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441796192, 'status', 7, 2, 'user', 2, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '');

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
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_favorite`
--

INSERT INTO `status_favorite` (`id`, `time`, `inside.type`, `inside.id`, `guy.type`, `guy.id`) VALUES
(2, 1441529806, '', 3, 'user', 1),
(3, 1441540055, '', 4, 'user', 2),
(5, 1441712425, '', 5, 'user', 1),
(6, 1441712484, '', 4, 'user', 1),
(8, 1441712926, '', 2, 'user', 1),
(19, 1441806658, 'status', 7, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_follow`
--

CREATE TABLE IF NOT EXISTS `status_follow` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_link`
--

INSERT INTO `status_link` (`id`, `time`, `status.id`, `sites.id`) VALUES
(1, 1, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `status_mood`
--

CREATE TABLE IF NOT EXISTS `status_mood` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_mood`
--

INSERT INTO `status_mood` (`id`, `status.id`, `type`, `value`) VALUES
(1, 7, 1, '[feel]sad');

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
(1, 2, 1);

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
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `status_places`
--

CREATE TABLE IF NOT EXISTS `status_places` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(1, 4, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(2, 'drive', 1, 1441182582, 'df7f7a54', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '3pRoOIIdWWRoJfFdu3wS6KrehyNdMHfWe6gDTnRTHJSVZRECaPlnh/VTdI8ldlGI0NLClOFzOc/Cfbe53WgVog==', 'audio/mp3', '314b49e3', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182582, 9803861),
(3, 'drive', 1, 1441182582, '89ea6650', '', 'e6321c040a4eceb05c0d6241487da67c', 'qMJC2HgxprakgJ35nS2WR4qz7/bQ91FbZMtclQ4vg1XXwmSwf4sCmKdHsZ69ZsfI+HsfdBCsQXRq7ch4WmRlpA==', 'video/x-mpeg', '3521a9ad', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182593, 9804514),
(4, 'drive', 1, 1441182593, 'de5214db', '', '7f3d0ab076b9fbbead304640c8be22af', 'uQi5Rek/ln+I0fLv5VVNeKr9PomUbg6EbpaPcci5JMlf/ShVod0yXy9FLD6sIehode5ipY0l3lt3enie94vdyQ==', 'video/x-mpeg', 'e224e7ed', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182602, 3921826);

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
  `icc` text,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `icc`, `mime`, `display`, `name`, `status`, `size`) VALUES
(5, 'faces', 1, 1441183035, '7f7b5037', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'XlNUSVVar7t2igeKJJ+vwUooML3Rj5+vTUsDe1976AWw3k+eeuZk/XnJf3fdzQDL/JY7SN9fkoXRk8d9MhMzUA==', NULL, 'image/jpeg', 'f45a9102', 'CL36_2nUkAATviz.jpg', 1441183035, 54420),
(6, 'faces', 1, 1441183044, '9f1d2ed5', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'nF+Rta09RwrTlGEq8cnpxsJmdo2mjb7zGc39szRiQT3W9H/bdzF042lYGgZFZMG2wL6Y0Hi9QftlanNjYGVihw==', NULL, 'image/jpeg', '4388c5fd', 'CL36_2nUkAATviz.jpg', 1441183044, 54420),
(7, 'faces', 1, 1441183051, '8323de3b', '', '50d36e33ce1f6d1cfefd3a54203c061d', '5QCwOmL1tJugZqJYQxS84W3AgOtitxbX1p9aHnJUBTvRUvUPGpoJOLlu+2H6/Bjnep/Rb4G9b6yO6bbSlLOBLA==', NULL, 'image/jpeg', '8d153617', 'CL36_2nUkAATviz.jpg', 1441183051, 54420),
(8, 'faces', 1, 1441183053, 'f3970573', '', '1c82fa8c3761ba1bcc88cb10af514bdb', 'OTXZmajArbOlu3IsLlZPaW4efbJInUOh9EBDo/xjgpeLksNGCO6oSwgK3BcqEKRCCjUap57aZThOG3KJows2ww==', NULL, 'image/jpeg', 'a06c6ad1', '1440690613319_3257.jpg', 1441183053, 246017),
(9, 'faces', 1, 1441183054, '9f413d25', '', 'b69946e35fff6c33d17636829b6c7fe9', 'LZwwOTyUjq2k1q/tPNPnNi8GzICif6nkYy94/y0fkxCcQ6BPIP9hB4Xvi9aS7BDQmewNqlie2xvNMSHSJ5tK5A==', NULL, 'image/jpeg', '4e27d80f', '1500x500.jpg', 1441183054, 101411),
(10, 'faces', 1, 1441183054, '02242222', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'KvqL3i/zn3HbaXl0Je596sVTxSxNTt4Gzq1sRhjCiGW1TKnjsF+shVg9MEdxpjwGGrjHTWfOoyKJaKo4ZdznRg==', NULL, 'image/jpeg', '6296c255', 'CL36_2nUkAATviz.jpg', 1441183054, 54420),
(11, 'faces', 1, 1441183057, 'bdc7b196', '', 'b69946e35fff6c33d17636829b6c7fe9', '1a1KJ/hOfgbBO8If+amueqWYV2vm6H6mQfut6mOpoMU8Q7IN/ki7BqXrCZOtT4KvShi4KQivLd6DkRH7JEaWmA==', NULL, 'image/jpeg', 'c311434d', '1500x500.jpg', 1441183057, 101411),
(12, 'faces', 1, 1441183060, 'd490aa0f', '', 'b69946e35fff6c33d17636829b6c7fe9', 'ejtAXuPKnqy4+Ai53TGDNPhbEeQMeHxNsHyYTh5PJDjVVLh718oaWkTPUN0Q5hSmQgo8x2KYqRE5WSwsAk1QlA==', NULL, 'image/jpeg', '1b399bbb', '1500x500.jpg', 1441183060, 101411),
(13, 'faces', 1, 1441183064, '9d9d07f5', '', 'b69946e35fff6c33d17636829b6c7fe9', 'nfx78XGS0YQ5wimeO+ie8YV5KNR8Bvjy8tfDGXVZeL3xTjl1WWgcaz+6ZtoKnFxVbNlrWjUWsSz9mop0g5CCZw==', NULL, 'image/jpeg', 'c935d3ce', '1500x500.jpg', 1441183064, 101411),
(14, 'faces', 1, 1441183067, 'd137981d', '', 'b69946e35fff6c33d17636829b6c7fe9', 'RXtUvzvs99wKIqxqbPqvPHfAVcO6ADD+osks7pll5vjjXuo9t2UhWPBzCfSmGmVD7dskSSX9WodKQ5aWPQv/Kg==', NULL, 'image/jpeg', '9c4869b9', '1500x500.jpg', 1441183067, 101411),
(15, 'drive', 1, 1441183070, '540470ff', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'Bafk4A14j7L3NBYeF11bNc+mu5bvlqG5psjyZmcMaQbDjoDjk4Ze9BZ/GqsBhUQP2SePU+0bXnVTITRkJlvU6g==', NULL, 'image/jpeg', '87d7ce29', 'CL36_2nUkAATviz.jpg', 1441183070, 54420),
(16, 'drive', 1, 1441183070, '0ac0b586', '', 'd91e809c1152dbeecc0ff9e60278eee2', 'Thr2nQTWPs/LA8p67E6dbU7Xe0831a9SVpRx6LiZBmve+dXYksrZVCOPvopzIv67GfgwkUOFNIQuHPSs79o8jg==', NULL, 'image/jpeg', 'e8266bb1', 'CL36_2nUkAATviz.jpg', 1441183070, 54420),
(17, 'faces', 1, 1441183070, '9a002158', '', 'b69946e35fff6c33d17636829b6c7fe9', '7FE3GCkv3Txh9RF9kapR6FtBms2M8TN6wcu9moCO/9ZRWwG5SQRxMFak0MYb2hkGGcpiutiDYpcI4ZxJQ2c/LQ==', NULL, 'image/jpeg', 'd6e56475', '1500x500.jpg', 1441183070, 101411),
(18, 'drive', 1, 1441183071, 'ece62837', '', '1c82fa8c3761ba1bcc88cb10af514bdb', 'OI3mYgpHSiSDnqK9U2YrmPGEiF6Fv+oyXSRpS0HTFP+rXsBBCQoaYqWpZ5Lb1lykvBVoD2jc7otsOn6CytArGA==', NULL, 'image/jpeg', 'fce21e37', '1440690613319_3257.jpg', 1441183071, 246017),
(19, 'drive', 1, 1441183071, '3678ec28', '', '3e3f258d756bf1b8dfeea76b61490d8b', 'Mx4g2jnkawEUHn9/7caXxORaJZWM5G8gjB7ThuCsOxT+85NT6tdunhA7DBC0DrPZGfeGYYLJ5CmsO0JWSajJRA==', NULL, 'image/jpeg', 'ae225fe9', '1440690613319_3257.jpg', 1441183071, 246017),
(20, 'drive', 1, 1441183072, '947b369a', '', 'f322d982f6b00c3e546469fb893d312b', 'Bmtl+s+sSJwRUnW+zxgKwFAV7oWL4XyE04nv+r3anhO5I9YYMPpd2pXEAgLIUdGUJTuMgl4ub3x/eJG2TIBWVA==', NULL, 'image/jpeg', 'e03adb6b', '1909298_1474502006103047_649702505_o.jpg', 1441183072, 295131),
(21, 'drive', 1, 1441183073, 'd023675f', '', 'b19cce68ddc0c0bc34772db494234278', 'VQ/shrr+LwbeXcwk7EdrIRygZMvYf25xT1nWHNRx6+JXbnlmAM5LwL/Jh0DMjbjHuU2qlfWhfubgmzZTeE14bQ==', NULL, 'image/jpeg', '7df1e26f', '1909298_1474502006103047_649702505_o.jpg', 1441183073, 295131),
(22, 'faces', 1, 1441183073, 'a41e4855', '', 'b69946e35fff6c33d17636829b6c7fe9', '5BDMvQDEgjI5/dDAc2GwC3E2HxYvg1w3YoPWewAS8uDyrLom6eM2TpPjisUMpwQo4JfnpGaum3iSkVHQkB6L2g==', NULL, 'image/jpeg', '322e17bf', '1500x500.jpg', 1441183073, 101411),
(23, 'drive', 1, 1441183075, '733b3f9e', '', 'f55c976be787b8d4a9afc91e4e1ba63e', '8dabl3NlsZrUPo/jIUJO6Xw3AgjoMVaOsu0F08SciYZnHY3Wkmohp0tpVi5hNIU/ESu2XDGEdZsSN2kKHyaJTQ==', NULL, 'image/jpeg', '999f329e', '1909298_1474502006103047_649702505_o.jpg', 1441183075, 75328),
(24, 'drive', 1, 1441183075, 'a5251c58', '', '0bc94804ea378316e3dbeccaf0b53716', '+vsFEBOG7zTSRNZaAfTUPOlFVtCI/qFizJe5RK6wfPtPPVplf5+usSQjd8bO7CtOW6BqPeK6EX6zJyY/IWMj3g==', NULL, 'image/jpeg', '997478ae', '1909298_1474502006103047_649702505_o.jpg', 1441183075, 28178),
(25, 'drive', 1, 1441183076, '87b1642b', '', 'b69946e35fff6c33d17636829b6c7fe9', '9JkRYCPlGtmTiacjRoawpAksWPKj7fk9SRwLdGcXXTDrpkXIrrBd5pPdCUYM/VRHl3T+xauFlpzW1PMLinW/Tg==', NULL, 'image/jpeg', '25af09f8', '1500x500.jpg', 1441183076, 101411),
(26, 'drive', 1, 1441183076, '1c3f7826', '', '49d9392e6cc8b444d5799abc5d2b3347', '+EYRQR+Cl7lrJTPNcE0LOt+Q1JXZzEm/Z57BTmrtQHHMAALan6g4gH05KQ+tDOZPbu0VtltY8QHvGiACHy5emw==', NULL, 'image/jpeg', 'f47e0c81', '1500x500.jpg', 1441183076, 101411),
(27, 'drive', 1, 1441183077, '8c957bb3', '', '3ba915353c9ec1141db4ade4639d2d09', 'NKdZ/BkR037hdyZatZ7yxBywhbFnl0iKGbQIpVhujTt1Pwl7uvxtsHnAe58IwBABBCj677CM8MLBS4q60nlU+A==', NULL, 'image/jpeg', '47e3399f', '1500x500.jpg', 1441183077, 35991),
(28, 'drive', 1, 1441183077, 'd6d97b41', '', '781d56f8dcb33f904a07c2b0b2b68d5a', 'Vj5fKuQNGGSmDl+8gq8dZI6c94PUCUHoFNlVNRrmLg6sg2sdZnffJormfjH0ZRJCbqfSNw8IiBAkfNj8oKX4Xg==', NULL, 'image/jpeg', '67f5a822', '1500x500.jpg', 1441183077, 11651);

-- --------------------------------------------------------

--
-- Table structure for table `storage_readfile`
--

CREATE TABLE IF NOT EXISTS `storage_readfile` (
  `id` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(2, 'drive', 1, 1441183315, '12655393', '', '54bf075239ef091cd33eded54a766da6', '2Wgk1gYcMn0bKZzgQG6ZAqbBdJSz0qlvhm6+JHXf2kZFZJUZHCpKkxgi0nPVaGsKQ9AJEA7zSa9DT6xF0ipv7A==', 'audio/x-mpeg-4', '1f4bf6ca', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441183773, 48873769),
(3, 'drive', 1, 1441183773, '4ed123f0', '', '3e2b285b4479d3525790bc8592fcb2d5', 'lTxnTNPFVt2zql4jC9rhXW6EOX9ee8IS7zhqKhJvl0Iya+VCJiyUrUoncvZp3K4GcCt2tj7YgSlW8tjpRPKZ1g==', 'audio/x-mpeg-4', '9ca0bfec', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441183960, 24005656),
(4, 'drive', 1, 1441183960, '0f82c8ef', '', '91f9ec3a914a6213564c2a0db2564387', 'p9iEYH0oEzQgC2apb8OcmBfx/lpRALKq9jrH+TKrcyBZ5+LhDGhGzVffl6CxSRmKXj6261VSKYsBC3FvDMaCCg==', 'audio/x-mpeg-4', '94560fb9', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441184002, 10340185);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `password.hash` text NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `middlename` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `formatname` char(10) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `interest` int(1) DEFAULT NULL,
  `birthday` int(11) DEFAULT NULL,
  `birthday.format` char(10) DEFAULT NULL,
  `relationship` int(1) DEFAULT NULL,
  `mate` int(11) DEFAULT NULL,
  `family` varchar(100) DEFAULT NULL,
  `language` char(2) DEFAULT NULL,
  `timezone` varchar(20) DEFAULT NULL,
  `introduction` varchar(400) DEFAULT NULL,
  `quote` varchar(100) DEFAULT NULL,
  `avatar.large` text,
  `avatar.medium` text,
  `avatar.small` text,
  `cover.large` text,
  `cover.medium` text,
  `cover.small` text,
  `theme` int(1) DEFAULT NULL,
  `link` text,
  `mode.safe` int(1) DEFAULT '0',
  `messages.translate` int(1) DEFAULT '0',
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
  `feed.order` text NOT NULL,
  `country` varchar(50) NOT NULL,
  `country.description` text,
  `live` varchar(50) NOT NULL,
  `live.description` text,
  `units.temperature` char(1) NOT NULL,
  `units.speed` char(10) NOT NULL,
  `units.pressure` char(5) NOT NULL,
  `units.distance` char(5) NOT NULL,
  `videos.replay` int(1) NOT NULL,
  `music.replay` int(1) NOT NULL,
  `activated` int(1) NOT NULL DEFAULT '0',
  `activated.code` char(10) DEFAULT NULL,
  `activated.time` int(11) DEFAULT NULL,
  `verified` int(1) NOT NULL,
  `dead` int(1) NOT NULL,
  `online` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `mode.safe`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `feed.order`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`, `online`) VALUES
(1, 1441181980, '9b5d543e', '887055cc62c65776f0bc9bd99c82be48', 'lamhieu', 'lamhieu@giccos.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sgoGje5bU+MTh6XsX4yz+xJGXZOXwU5t8vY/pfJRx8k=', '', 'lam hieu', 'lam', '', 'hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'e9b01662', 0, 0, 0, 1441806674),
(2, 1441441349, 'd0e43dd2', '248bb9a2b5c0622a005256b360e119d2', 'truongtuan', 'giccos.inc@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cx8YfmKhbUIMgmUBT+Lt/mXZ61ZW5oSSUOZyaOueLWc=', '', 'TrÆ°Æ¡ng Tuáº¥n', 'TrÆ°Æ¡ng', '', 'Tuáº¥n', 'f-m-l', '', 'male', NULL, 915127261, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'fc2f320b', 0, 0, 0, 1441797754);

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
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `school` varchar(100) DEFAULT NULL,
  `special` varchar(100) DEFAULT NULL,
  `description` text,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `users_family`
--

CREATE TABLE IF NOT EXISTS `users_family` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_follow`
--

INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES
(1, 1441182000, 1, 'user', 1),
(2, 1441441375, 2, 'user', 2),
(3, 1441441380, 1, 'user', 2),
(4, 1441441380, 2, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_getpassword`
--

CREATE TABLE IF NOT EXISTS `users_getpassword` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_guide`
--

CREATE TABLE IF NOT EXISTS `users_guide` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE IF NOT EXISTS `users_login` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.label` char(10) NOT NULL,
  `user.value` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `client` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `time`, `user.label`, `user.value`, `status`, `client`) VALUES
(1, 1441182000, 'id', '1', 1, 'ee5504b2'),
(2, 1441190217, 'id', '1', 1, 'ee5504b2'),
(3, 1441348176, 'id', '1', 1, 'ee5504b2'),
(4, 1441367637, 'id', '1', 1, 'ee5504b2'),
(5, 1441439510, 'id', '1', 1, 'ee5504b2'),
(6, 1441441375, 'id', '2', 1, 'ee5504b2'),
(7, 1441453387, 'id', '1', 1, 'ee5504b2'),
(8, 1441479693, 'id', '1', 1, '1a4cb25f'),
(9, 1441479820, 'id', '1', 1, '1a4cb25f'),
(10, 1441480106, 'id', '1', 1, '1a4cb25f'),
(11, 1441521669, 'id', '1', 1, '1a4cb25f'),
(12, 1441522142, 'id', '2', 1, '1a4cb25f'),
(13, 1441540022, 'id', '2', 1, '1a4cb25f'),
(14, 1441631017, 'id', '1', 1, '1a4cb25f'),
(15, 1441700354, 'id', '1', 1, '1a4cb25f'),
(16, 1441711519, 'id', '2', 1, '1a4cb25f'),
(17, 1441795788, 'id', '1', 1, '1a4cb25f'),
(18, 1441796147, 'id', '2', 1, '1a4cb25f');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE IF NOT EXISTS `users_online` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `client` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `user.id`, `time`, `updated`, `client`) VALUES
(1, 0, 1441181951, 1441181995, 'ee5504b2'),
(2, 1, 1441182000, 1441188582, 'ee5504b2'),
(3, 0, 1441190189, 1441190215, 'ee5504b2'),
(4, 1, 1441190217, 1441190300, 'ee5504b2'),
(5, 1, 1441206087, 1441210601, 'ee5504b2'),
(6, 0, 1441348160, 1441348173, 'ee5504b2'),
(7, 1, 1441348176, 1441351343, 'ee5504b2'),
(8, 1, 1441360505, 1441364441, 'ee5504b2'),
(9, 1, 1441365272, 1441367637, 'ee5504b2'),
(10, 0, 1441367630, 1441367637, 'ee5504b2'),
(11, 1, 1441370160, 1441370536, 'ee5504b2'),
(12, 1, 1441385718, 1441386020, 'ee5504b2'),
(13, 0, 1441434119, 1441434145, 'ee5504b2'),
(14, 0, 1441439482, 1441439507, 'ee5504b2'),
(15, 1, 1441439510, 1441441557, 'ee5504b2'),
(16, 0, 1441440379, 1441446690, 'ee5504b2'),
(17, 2, 1441441375, 1441441512, 'ee5504b2'),
(18, 0, 1441453375, 1441453382, 'ee5504b2'),
(19, 1, 1441453387, 1441453392, 'ee5504b2'),
(20, 1, 1441458509, 1441460379, 'ee5504b2'),
(21, 1, 1441460386, 1441460840, '7c514c94'),
(22, 1, 1441460854, 1441466917, '1a4cb25f'),
(23, 1, 1441467459, 1441471728, '1a4cb25f'),
(24, 1, 1441475501, 1441480797, '1a4cb25f'),
(25, 0, 1441479687, 1441480101, '1a4cb25f'),
(26, 0, 1441521144, 1441521669, '1a4cb25f'),
(27, 1, 1441521669, 1441529812, '1a4cb25f'),
(28, 0, 1441522113, 1441522139, '1a4cb25f'),
(29, 2, 1441522142, 1441522400, '1a4cb25f'),
(30, 1, 1441538468, 1441543677, '1a4cb25f'),
(31, 0, 1441540015, 1441540021, '1a4cb25f'),
(32, 2, 1441540022, 1441540055, '1a4cb25f'),
(33, 0, 1441631013, 1441631013, '1a4cb25f'),
(34, 1, 1441631017, 1441632835, '1a4cb25f'),
(35, 0, 1441700332, 1441700352, '1a4cb25f'),
(36, 1, 1441700355, 1441704088, '1a4cb25f'),
(37, 1, 1441707322, 1441712945, '1a4cb25f'),
(38, 0, 1441711508, 1441711514, '1a4cb25f'),
(39, 2, 1441711519, 1441711808, '1a4cb25f'),
(40, 1, 1441714701, 1441714734, '1a4cb25f'),
(41, 0, 1441714960, 1441717532, '1a4cb25f'),
(42, 0, 1441778894, 1441779325, '1a4cb25f'),
(43, 0, 1441780191, 1441780333, '1a4cb25f'),
(44, 0, 1441795783, 1441796146, '1a4cb25f'),
(45, 1, 1441795788, 1441798338, '1a4cb25f'),
(46, 2, 1441796147, 1441797754, '1a4cb25f'),
(47, 1, 1441804581, 1441806674, '1a4cb25f');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `thumbnail` varchar(40) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos_favorite`
--

CREATE TABLE IF NOT EXISTS `videos_favorite` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
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
  `file.vga` varchar(50) NOT NULL,
  `file.qvga` varchar(50) NOT NULL,
  `secret.thumbnail` varchar(40) NOT NULL,
  `secret.audio` varchar(40) NOT NULL,
  `secret.hd` varchar(40) NOT NULL,
  `secret.vga` varchar(40) NOT NULL,
  `secret.qvga` varchar(40) NOT NULL,
  `path.thumbnail` char(10) NOT NULL,
  `path.audio` char(10) NOT NULL,
  `path.hd` char(10) NOT NULL,
  `path.vga` char(10) NOT NULL,
  `path.qvga` char(10) NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec_name` char(10) NOT NULL,
  `codec_long_name` varchar(100) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_info`
--

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.vga`, `file.qvga`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.vga`, `secret.qvga`, `path.thumbnail`, `path.audio`, `path.hd`, `path.vga`, `path.qvga`, `file.datetime`, `file.size`, `codec_name`, `codec_long_name`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(1, 1, 'user', 1, 0, 1441184002, '4f526865', '5f59d1c5f6b97391b1072f5bced89210', 'Ä‘iá»u anh lo láº¯ng', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', '', '', 4, 4, 4, '9453472a838aa76d4afcae64086aebef', '0', '68ee2fce6c94d53b3f2d9f264d6d8d18', 'ef429e84ba74a7c5771b1f2acb8dddf1', 'feadfb52ee08ab062e7c0dbdec789ca4', '', '0', '54bf075239ef091cd33eded54a766da6', '3e2b285b4479d3525790bc8592fcb2d5', '91f9ec3a914a6213564c2a0db2564387', '0', '0', '1f4bf6ca', '9ca0bfec', '94560fb9', 0, 57882648, 'h264', 'H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10', 720, 1280, '16:9', 1388648, '25/1', 333.461670, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 333, 191999);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_playlist`
--

INSERT INTO `videos_playlist` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 1, '65926ca1', '1338470cf917afeaa1e8d80353b33689', 1441183315, 'khÃ¡nh phÆ°Æ¡ng', 0, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos_pointtag`
--

CREATE TABLE IF NOT EXISTS `videos_pointtag` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `point` float(8,2) NOT NULL,
  `length` float(8,2) NOT NULL,
  `sticker` varchar(40) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_pointtag`
--

INSERT INTO `videos_pointtag` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `point`, `length`, `sticker`, `content`) VALUES
(1, 1441386003, 1, 'user', 1, 17.43, 5.00, '', 'comment in videos');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `faces_id`
--
ALTER TABLE `faces_id`
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
-- Indexes for table `languages_list`
--
ALTER TABLE `languages_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages_values`
--
ALTER TABLE `languages_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_cited`
--
ALTER TABLE `library_cited`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_voice`
--
ALTER TABLE `library_voice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_words`
--
ALTER TABLE `library_words`
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
-- Indexes for table `mailer_id`
--
ALTER TABLE `mailer_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailer_logs`
--
ALTER TABLE `mailer_logs`
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
-- Indexes for table `messages_hide`
--
ALTER TABLE `messages_hide`
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
-- Indexes for table `pages_block`
--
ALTER TABLE `pages_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_follow`
--
ALTER TABLE `pages_follow`
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
-- Indexes for table `process_id`
--
ALTER TABLE `process_id`
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
-- Indexes for table `sites_certificate`
--
ALTER TABLE `sites_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_comment`
--
ALTER TABLE `sites_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_favorite`
--
ALTER TABLE `sites_favorite`
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
-- Indexes for table `sites_rate`
--
ALTER TABLE `sites_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_scan`
--
ALTER TABLE `sites_scan`
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
-- Indexes for table `status_actions`
--
ALTER TABLE `status_actions`
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
-- Indexes for table `storage_readfile`
--
ALTER TABLE `storage_readfile`
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
-- Indexes for table `users_family`
--
ALTER TABLE `users_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_follow`
--
ALTER TABLE `users_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_getpassword`
--
ALTER TABLE `users_getpassword`
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
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
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
-- Indexes for table `videos_favorite`
--
ALTER TABLE `videos_favorite`
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
-- Indexes for table `videos_pointtag`
--
ALTER TABLE `videos_pointtag`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cited`
--
ALTER TABLE `cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faces_id`
--
ALTER TABLE `faces_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `languages_list`
--
ALTER TABLE `languages_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `languages_values`
--
ALTER TABLE `languages_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=850;
--
-- AUTO_INCREMENT for table `library_cited`
--
ALTER TABLE `library_cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_voice`
--
ALTER TABLE `library_voice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `library_words`
--
ALTER TABLE `library_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mailer_id`
--
ALTER TABLE `mailer_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mailer_logs`
--
ALTER TABLE `mailer_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=464;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_hide`
--
ALTER TABLE `messages_hide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_id`
--
ALTER TABLE `messages_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_typing`
--
ALTER TABLE `messages_typing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_views`
--
ALTER TABLE `messages_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_views`
--
ALTER TABLE `music_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages_block`
--
ALTER TABLE `pages_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages_follow`
--
ALTER TABLE `pages_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=255;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_info`
--
ALTER TABLE `photos_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `process_id`
--
ALTER TABLE `process_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_author`
--
ALTER TABLE `sites_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_certificate`
--
ALTER TABLE `sites_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sites_comment`
--
ALTER TABLE `sites_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_favorite`
--
ALTER TABLE `sites_favorite`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sites_rate`
--
ALTER TABLE `sites_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_scan`
--
ALTER TABLE `sites_scan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sites_views`
--
ALTER TABLE `sites_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `status_actions`
--
ALTER TABLE `status_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_block`
--
ALTER TABLE `status_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_cited`
--
ALTER TABLE `status_cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_comment`
--
ALTER TABLE `status_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_mood`
--
ALTER TABLE `status_mood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `storage_readfile`
--
ALTER TABLE `storage_readfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_block`
--
ALTER TABLE `users_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_contact`
--
ALTER TABLE `users_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_education`
--
ALTER TABLE `users_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_faces`
--
ALTER TABLE `users_faces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_family`
--
ALTER TABLE `users_family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_follow`
--
ALTER TABLE `users_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users_getpassword`
--
ALTER TABLE `users_getpassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_guide`
--
ALTER TABLE `users_guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `users_remembers`
--
ALTER TABLE `users_remembers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_workplaces`
--
ALTER TABLE `users_workplaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `videos_favorite`
--
ALTER TABLE `videos_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_info`
--
ALTER TABLE `videos_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_pointtag`
--
ALTER TABLE `videos_pointtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_replay`
--
ALTER TABLE `videos_replay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
