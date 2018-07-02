-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2015 at 03:51 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=767 DEFAULT CHARSET=latin1;

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
(520, 'en', 'PhotosEditorPopup_footer_text', 'PhotosEditor &copy; Giccos', 'false'),
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
(766, 'en', 'mailer_verify_account_altbody	', 'we sent email verify account created at Giccos by this email', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `guy.type`, `guy.id`, `type`, `things.type`, `things.id`, `obj.type`, `obj.id`) VALUES
(4, 1439142986, 'user', 15, 'favorite', 'status', '65', '', ''),
(6, 1439017319, 'user', 15, 'follow', 'status', '64', '', ''),
(7, 1439014312, 'user', 15, 'follow', 'status', '162', '', ''),
(8, 1439014312, 'user', 15, 'add', '', '', 'status', '162'),
(9, 1439014675, 'user', 15, 'follow', 'status', '163', '', ''),
(10, 1439014675, 'user', 15, 'share', 'status', '161', 'status', '163'),
(11, 1439014888, 'user', 15, 'follow', 'status', '164', '', ''),
(12, 1439014888, 'user', 15, 'share', 'status', '161', 'status', '164'),
(13, 1439015595, 'user', 15, 'follow', 'status', '165', '', ''),
(14, 1439015595, 'user', 15, 'share', 'status', '161', 'status', '165'),
(15, 1439018520, 'user', 15, 'follow', 'status', '166', '', ''),
(16, 1439015679, 'user', 15, 'share', 'status', '161', 'status', '166'),
(17, 1439017333, 'user', 15, 'follow', 'status', '167', '', ''),
(18, 1439017333, 'user', 15, 'share', 'status', '156', 'status', '167'),
(19, 1439017702, 'user', 15, 'follow', 'status', '168', '', ''),
(20, 1439017702, 'user', 15, 'share', 'status', '159', 'status', '168'),
(21, 1439018515, 'user', 15, 'unfollow', 'status', '166', '', ''),
(22, 1439029481, 'user', 15, 'follow', 'status', '169', '', ''),
(23, 1439029482, 'user', 15, 'share', 'status', '168', 'status', '169'),
(24, 1439121752, 'user', 15, 'comment', 'status', '169', 'comment', '5'),
(25, 1439135821, 'user', 15, 'comment', 'status', '168', 'comment', '6'),
(26, 1439330059, 'user', 15, 'follow', 'status', '170', '', ''),
(27, 1439207517, 'user', 15, 'add', '', '', 'status', '170'),
(28, 1439213025, 'user', 15, 'favorite', 'status', '170', '', ''),
(29, 1439213027, 'user', 15, 'unfavorite', 'status', '170', '', ''),
(30, 1439213182, 'user', 15, 'follow', 'status', '171', '', ''),
(31, 1439213182, 'user', 15, 'add', '', '', 'status', '171'),
(32, 1439243550, 'user', 15, 'follow', 'status', '172', '', ''),
(33, 1439213219, 'user', 15, 'add', '', '', 'status', '172'),
(34, 1439213599, 'user', 15, 'comment', 'status', '172', 'comment', '7'),
(35, 1439221315, 'user', 15, 'comment', 'status', '171', 'comment', '8'),
(36, 1439221330, 'user', 15, 'comment', 'status', '171', 'comment', '9'),
(37, 1439222278, 'user', 15, 'comment', 'comment', '6', 'comment', '10'),
(38, 1439222873, 'user', 15, 'comment', 'status', '172', 'comment', '11'),
(39, 1439223341, 'user', 15, 'comment', 'comment', '6', 'comment', '12'),
(40, 1439223456, 'user', 15, 'comment', 'comment', '6', 'comment', '13'),
(41, 1439223473, 'user', 15, 'comment', 'comment', '6', 'comment', '14'),
(42, 1439243548, 'user', 15, 'unfollow', 'status', '172', '', ''),
(43, 1439329784, 'user', 15, 'follow', 'status', '173', '', ''),
(44, 1439329786, 'user', 15, 'add', '', '', 'status', '173'),
(45, 1439330057, 'user', 15, 'unfollow', 'status', '170', '', ''),
(46, 1439331251, 'user', 15, 'follow', 'status', '174', '', ''),
(47, 1439331258, 'user', 15, 'add', '', '', 'status', '174'),
(48, 1439333782, 'user', 15, 'follow', 'status', '175', '', ''),
(49, 1439333793, 'user', 15, 'add', '', '', 'status', '175'),
(50, 1439334535, 'user', 15, 'follow', 'status', '176', '', ''),
(51, 1439334535, 'user', 15, 'add', '', '', 'status', '176'),
(52, 1439334554, 'user', 15, 'follow', 'status', '177', '', ''),
(53, 1439334554, 'user', 15, 'add', '', '', 'status', '177'),
(54, 1439334772, 'user', 15, 'follow', 'status', '178', '', ''),
(55, 1439334772, 'user', 15, 'add', '', '', 'status', '178'),
(56, 1439334878, 'user', 15, 'follow', 'status', '179', '', ''),
(57, 1439334878, 'user', 15, 'add', '', '', 'status', '179'),
(58, 1439334919, 'user', 15, 'follow', 'status', '180', '', ''),
(59, 1439334920, 'user', 15, 'add', '', '', 'status', '180'),
(60, 1439335038, 'user', 15, 'follow', 'status', '181', '', ''),
(61, 1439335039, 'user', 15, 'add', '', '', 'status', '181'),
(62, 1439582073, 'user', 15, 'follow', 'status', '182', '', ''),
(63, 1439582073, 'user', 15, 'add', '', '', 'status', '182'),
(64, 1439582118, 'user', 15, 'follow', 'status', '183', '', ''),
(65, 1439582118, 'user', 15, 'add', '', '', 'status', '183'),
(66, 1439582165, 'user', 15, 'follow', 'status', '184', '', ''),
(67, 1439582165, 'user', 15, 'add', '', '', 'status', '184'),
(68, 1439589963, 'user', 15, 'follow', 'status', '185', '', ''),
(69, 1439589963, 'user', 15, 'add', '', '', 'status', '185'),
(70, 1439591053, 'user', 15, 'follow', 'status', '186', '', ''),
(71, 1439591053, 'user', 15, 'add', '', '', 'status', '186'),
(72, 1439591125, 'user', 15, 'follow', 'status', '187', '', ''),
(73, 1439591125, 'user', 15, 'add', '', '', 'status', '187'),
(74, 1439623178, 'user', 15, 'follow', 'status', '188', '', ''),
(75, 1439623178, 'user', 15, 'add', '', '', 'status', '188'),
(76, 1439623402, 'user', 15, 'follow', 'status', '189', '', ''),
(77, 1439623402, 'user', 15, 'add', '', '', 'status', '189'),
(78, 1439624121, 'user', 15, 'follow', 'status', '190', '', ''),
(79, 1439624121, 'user', 15, 'add', '', '', 'status', '190'),
(80, 1439624131, 'user', 15, 'follow', 'status', '191', '', ''),
(81, 1439624131, 'user', 15, 'add', '', '', 'status', '191'),
(82, 1439624192, 'user', 15, 'follow', 'status', '192', '', ''),
(83, 1439624192, 'user', 15, 'add', '', '', 'status', '192'),
(84, 1439624267, 'user', 15, 'follow', 'status', '193', '', ''),
(85, 1439624267, 'user', 15, 'add', '', '', 'status', '193'),
(86, 1439624337, 'user', 15, 'follow', 'status', '194', '', ''),
(87, 1439624337, 'user', 15, 'add', '', '', 'status', '194'),
(88, 1439624402, 'user', 15, 'follow', 'status', '195', '', ''),
(89, 1439624402, 'user', 15, 'add', '', '', 'status', '195'),
(90, 1439624438, 'user', 15, 'follow', 'status', '196', '', ''),
(91, 1439624439, 'user', 15, 'add', '', '', 'status', '196'),
(92, 1439624518, 'user', 15, 'follow', 'status', '197', '', ''),
(93, 1439624518, 'user', 15, 'add', '', '', 'status', '197'),
(94, 1439624633, 'user', 15, 'follow', 'status', '198', '', ''),
(95, 1439624634, 'user', 15, 'add', '', '', 'status', '198'),
(96, 1439624774, 'user', 15, 'follow', 'status', '199', '', ''),
(97, 1439624775, 'user', 15, 'add', '', '', 'status', '199'),
(98, 1439624819, 'user', 15, 'follow', 'status', '200', '', ''),
(99, 1439624820, 'user', 15, 'add', '', '', 'status', '200'),
(100, 1439624981, 'user', 15, 'follow', 'status', '201', '', ''),
(101, 1439624982, 'user', 15, 'add', '', '', 'status', '201'),
(102, 1439625057, 'user', 15, 'follow', 'status', '202', '', ''),
(103, 1439625058, 'user', 15, 'add', '', '', 'status', '202'),
(104, 1439625153, 'user', 15, 'follow', 'status', '203', '', ''),
(105, 1439625154, 'user', 15, 'add', '', '', 'status', '203'),
(106, 1439625188, 'user', 15, 'follow', 'status', '204', '', ''),
(107, 1439625188, 'user', 15, 'add', '', '', 'status', '204'),
(108, 1439625210, 'user', 15, 'follow', 'status', '205', '', ''),
(109, 1439625210, 'user', 15, 'add', '', '', 'status', '205'),
(110, 1439625254, 'user', 15, 'follow', 'status', '206', '', ''),
(111, 1439625255, 'user', 15, 'add', '', '', 'status', '206'),
(112, 1439625407, 'user', 15, 'follow', 'status', '207', '', ''),
(113, 1439625408, 'user', 15, 'add', '', '', 'status', '207'),
(114, 1439625480, 'user', 15, 'follow', 'status', '208', '', ''),
(115, 1439625481, 'user', 15, 'add', '', '', 'status', '208'),
(116, 1439625710, 'user', 15, 'follow', 'status', '209', '', ''),
(117, 1439625711, 'user', 15, 'add', '', '', 'status', '209'),
(118, 1439625816, 'user', 15, 'follow', 'status', '210', '', ''),
(119, 1439625817, 'user', 15, 'add', '', '', 'status', '210'),
(120, 1439625896, 'user', 15, 'follow', 'status', '211', '', ''),
(121, 1439625897, 'user', 15, 'add', '', '', 'status', '211'),
(122, 1439625945, 'user', 15, 'follow', 'status', '212', '', ''),
(123, 1439625946, 'user', 15, 'add', '', '', 'status', '212'),
(124, 1439626013, 'user', 15, 'follow', 'status', '213', '', ''),
(125, 1439626014, 'user', 15, 'add', '', '', 'status', '213'),
(126, 1439626115, 'user', 15, 'follow', 'status', '214', '', ''),
(127, 1439626116, 'user', 15, 'add', '', '', 'status', '214'),
(128, 1439626177, 'user', 15, 'follow', 'status', '215', '', ''),
(129, 1439626177, 'user', 15, 'add', '', '', 'status', '215'),
(130, 1439626267, 'user', 15, 'follow', 'status', '216', '', ''),
(131, 1439626268, 'user', 15, 'add', '', '', 'status', '216'),
(132, 1439626391, 'user', 15, 'follow', 'status', '217', '', ''),
(133, 1439626392, 'user', 15, 'add', '', '', 'status', '217'),
(134, 1439627297, 'user', 15, 'follow', 'status', '218', '', ''),
(135, 1439627297, 'user', 15, 'add', '', '', 'status', '218'),
(136, 1439631890, 'user', 15, 'follow', 'status', '219', '', ''),
(137, 1439631891, 'user', 15, 'add', '', '', 'status', '219'),
(138, 1439632015, 'user', 15, 'follow', 'status', '220', '', ''),
(139, 1439632016, 'user', 15, 'add', '', '', 'status', '220'),
(140, 1439632428, 'user', 15, 'follow', 'status', '221', '', ''),
(141, 1439632429, 'user', 15, 'add', '', '', 'status', '221'),
(142, 1439632653, 'user', 15, 'follow', 'status', '222', '', ''),
(143, 1439632655, 'user', 15, 'add', '', '', 'status', '222'),
(144, 1439633160, 'user', 15, 'follow', 'status', '223', '', ''),
(145, 1439633161, 'user', 15, 'add', '', '', 'status', '223'),
(146, 1439633282, 'user', 15, 'follow', 'status', '224', '', ''),
(147, 1439633283, 'user', 15, 'add', '', '', 'status', '224'),
(148, 1439633374, 'user', 15, 'follow', 'status', '225', '', ''),
(149, 1439633375, 'user', 15, 'add', '', '', 'status', '225'),
(150, 1439634358, 'user', 15, 'follow', 'status', '226', '', ''),
(151, 1439634360, 'user', 15, 'add', '', '', 'status', '226'),
(152, 1439634511, 'user', 15, 'follow', 'status', '227', '', ''),
(153, 1439634514, 'user', 15, 'add', '', '', 'status', '227'),
(154, 1439634655, 'user', 15, 'follow', 'status', '228', '', ''),
(155, 1439634655, 'user', 15, 'add', '', '', 'status', '228'),
(156, 1439634835, 'user', 15, 'follow', 'status', '229', '', ''),
(157, 1439634837, 'user', 15, 'add', '', '', 'status', '229'),
(158, 1439634891, 'user', 15, 'follow', 'status', '230', '', ''),
(159, 1439634892, 'user', 15, 'add', '', '', 'status', '230'),
(160, 1439635027, 'user', 15, 'follow', 'status', '231', '', ''),
(161, 1439635029, 'user', 15, 'add', '', '', 'status', '231'),
(162, 1439635072, 'user', 15, 'follow', 'status', '232', '', ''),
(163, 1439635075, 'user', 15, 'add', '', '', 'status', '232'),
(164, 1439635281, 'user', 15, 'follow', 'status', '233', '', ''),
(165, 1439635288, 'user', 15, 'add', '', '', 'status', '233'),
(166, 1439635355, 'user', 15, 'follow', 'status', '234', '', ''),
(167, 1439635369, 'user', 15, 'add', '', '', 'status', '234'),
(168, 1439635442, 'user', 15, 'follow', 'status', '235', '', ''),
(169, 1439635456, 'user', 15, 'add', '', '', 'status', '235'),
(170, 1439635553, 'user', 15, 'follow', 'status', '236', '', ''),
(171, 1439635581, 'user', 15, 'add', '', '', 'status', '236'),
(172, 1439635611, 'user', 15, 'follow', 'status', '237', '', ''),
(173, 1439635635, 'user', 15, 'add', '', '', 'status', '237'),
(174, 1439635867, 'user', 15, 'follow', 'status', '238', '', ''),
(175, 1439635868, 'user', 15, 'add', '', '', 'status', '238'),
(176, 1439637089, 'user', 15, 'follow', 'status', '239', '', ''),
(177, 1439637120, 'user', 15, 'add', '', '', 'status', '239'),
(178, 1439637318, 'user', 15, 'follow', 'status', '240', '', ''),
(179, 1439637352, 'user', 15, 'add', '', '', 'status', '240'),
(180, 1439637452, 'user', 15, 'follow', 'status', '241', '', ''),
(181, 1439637486, 'user', 15, 'add', '', '', 'status', '241'),
(182, 1439637940, 'user', 15, 'follow', 'status', '242', '', ''),
(183, 1439637940, 'user', 15, 'add', '', '', 'status', '242'),
(184, 1439637979, 'user', 15, 'follow', 'status', '243', '', ''),
(185, 1439637980, 'user', 15, 'add', '', '', 'status', '243'),
(186, 1439638056, 'user', 15, 'follow', 'status', '244', '', ''),
(187, 1439638057, 'user', 15, 'add', '', '', 'status', '244'),
(188, 1439638154, 'user', 15, 'follow', 'status', '245', '', ''),
(189, 1439638182, 'user', 15, 'add', '', '', 'status', '245'),
(190, 1439638866, 'user', 15, 'follow', 'status', '246', '', ''),
(191, 1439639088, 'user', 15, 'add', '', '', 'status', '246'),
(192, 1439639718, 'user', 15, 'follow', 'status', '247', '', ''),
(193, 1439639902, 'user', 15, 'add', '', '', 'status', '247'),
(194, 1439640257, 'user', 15, 'follow', 'status', '248', '', ''),
(195, 1439640394, 'user', 15, 'add', '', '', 'status', '248'),
(196, 1439640440, 'user', 15, 'follow', 'status', '249', '', ''),
(197, 1439640504, 'user', 15, 'follow', 'status', '250', '', ''),
(198, 1439640858, 'user', 15, 'follow', 'status', '251', '', ''),
(199, 1439641496, 'user', 15, 'add', '', '', 'status', '251'),
(200, 1439670839, 'user', 15, 'follow', 'status', '252', '', ''),
(201, 1439671409, 'user', 15, 'add', '', '', 'status', '252'),
(202, 1439671700, 'user', 15, 'follow', 'status', '253', '', ''),
(203, 1439671701, 'user', 15, 'add', '', '', 'status', '253'),
(204, 1439671847, 'user', 15, 'follow', 'status', '254', '', ''),
(205, 1439671847, 'user', 15, 'add', '', '', 'status', '254'),
(206, 1439671906, 'user', 15, 'follow', 'status', '255', '', ''),
(207, 1439671908, 'user', 15, 'add', '', '', 'status', '255'),
(208, 1439672191, 'user', 15, 'follow', 'status', '256', '', ''),
(209, 1439672192, 'user', 15, 'add', '', '', 'status', '256'),
(210, 1439672265, 'user', 15, 'follow', 'status', '257', '', ''),
(211, 1439672268, 'user', 15, 'add', '', '', 'status', '257'),
(212, 1439672355, 'user', 15, 'follow', 'status', '258', '', ''),
(213, 1439672358, 'user', 15, 'add', '', '', 'status', '258'),
(214, 1439672550, 'user', 15, 'follow', 'status', '259', '', ''),
(215, 1439672552, 'user', 15, 'add', '', '', 'status', '259'),
(216, 1439675020, 'user', 15, 'follow', 'status', '260', '', ''),
(217, 1439675046, 'user', 15, 'add', '', '', 'status', '260'),
(218, 1439689195, 'user', 15, 'follow', 'status', '261', '', ''),
(219, 1439689222, 'user', 15, 'add', '', '', 'status', '261'),
(220, 1439689480, 'user', 15, 'follow', 'status', '262', '', ''),
(221, 1439689508, 'user', 15, 'add', '', '', 'status', '262'),
(222, 1439689629, 'user', 15, 'follow', 'status', '263', '', ''),
(223, 1439689659, 'user', 15, 'add', '', '', 'status', '263'),
(224, 1439689913, 'user', 15, 'follow', 'status', '264', '', ''),
(225, 1439689992, 'user', 15, 'follow', 'status', '265', '', ''),
(226, 1439690022, 'user', 15, 'add', '', '', 'status', '265'),
(227, 1439690663, 'user', 15, 'follow', 'status', '266', '', ''),
(228, 1439690691, 'user', 15, 'add', '', '', 'status', '266'),
(229, 1439765344, 'user', 15, 'follow', 'status', '267', '', ''),
(230, 1439765368, 'user', 15, 'add', '', '', 'status', '267'),
(231, 1439766092, 'user', 15, 'follow', 'status', '268', '', ''),
(232, 1439766115, 'user', 15, 'add', '', '', 'status', '268'),
(233, 1439767098, 'user', 15, 'follow', 'status', '269', '', ''),
(234, 1439767123, 'user', 15, 'add', '', '', 'status', '269'),
(235, 1439799392, 'user', 15, 'follow', 'status', '270', '', ''),
(236, 1439800054, 'user', 15, 'add', '', '', 'status', '270'),
(237, 1439879742, 'user', 15, 'follow', 'status', '271', '', ''),
(238, 1439879744, 'user', 15, 'add', '', '', 'status', '271'),
(239, 1440495141, 'user', 15, 'follow', 'status', '272', '', ''),
(240, 1440495142, 'user', 15, 'add', '', '', 'status', '272'),
(241, 1440511844, 'user', 15, 'follow', 'status', '273', '', ''),
(242, 1440511849, 'user', 15, 'add', '', '', 'status', '273'),
(243, 1440657262, 'user', 15, 'follow', 'status', '274', '', ''),
(244, 1440657263, 'user', 15, 'add', '', '', 'status', '274'),
(245, 1440737903, 'user', 15, 'follow', 'status', '275', '', ''),
(246, 1440737903, 'user', 15, 'add', '', '', 'status', '275'),
(247, 1440738717, 'user', 15, 'follow', 'status', '276', '', ''),
(248, 1440738717, 'user', 15, 'add', '', '', 'status', '276'),
(249, 1440749082, 'user', 15, 'follow', 'status', '277', '', ''),
(250, 1440749082, 'user', 15, 'add', '', '', 'status', '277');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `updated`, `token`, `ip`, `device`, `platform`, `browser.name`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1439521903, 1439521939, '6808e60a', '113.170.45.132', 'desktop', 'Windows ME (x64)', 'Google Chrome', 'blink', '44.0.2403.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36'),
(2, 1439522032, 1441026126, '1064bb3d', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '44.0.2403.157', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36'),
(3, 1440291474, 1440500605, 'b46b61b4', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Opera', 'blink', '31.0.1889.174', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 Opera/31.0.1889.174'),
(4, 1441097394, 1441097394, 'ee5504b2', '113.170.42.243', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '44.0.2403.157', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailer_logs`
--

INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(1, 1, 1, '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=444 DEFAULT CHARSET=latin1;

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
(443, 'cb81f531', 'ac734a590fbf8e622bc22403411be6e9', 'S &amp; S Truck Parts Inc', '1401 Valley View Lane, Irving, TX 75061, United States', '32.830783,-97.028267', 32.830784, -97.028267, 'store', 'maps/raw/places/staticmap/location=32.830783,-97.028267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.830783,-97.028267&format=gif');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=latin1;

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
(149, 'suggest_weather_reopen', 'en', '1800'),
(150, 'suggest_weather_reload', 'en', '3600'),
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
(209, 'regex_name', 'en', '/^([a-zA-Z_Ã€ÃÃ‚ÃƒÃˆÃ‰ÃŠÃŒÃÃ’Ã“Ã”Ã•Ã™ÃšÄ‚ÄÄ¨Å¨Æ Ã Ã¡Ã¢Ã£Ã¨Ã©ÃªÃ¬Ã­Ã²Ã³Ã´ÃµÃ¹ÃºÄƒÄ‘Ä©Å©Æ¡Æ¯Ä‚áº áº¢áº¤áº¦áº¨áºªáº¬áº®áº°áº²áº´áº¶áº¸áººáº¼á»€á»€á»‚Æ°Äƒáº¡áº£áº¥áº§áº©áº«áº­áº¯áº±áº³áºµáº·áº¹áº»áº½á»á»á»ƒá»„á»†á»ˆá»Šá»Œá»Žá»á»’á»”á»–á»˜á»šá»œá»žá» á»¢á»¤á»¦á»¨á»ªá»…á»‡á»‰á»‹á»á»á»‘á»“á»•á»—á»™á»›á»á»Ÿá»¡á»£á»¥á»§á»©á»«á»¬á»®á»°á»²á»´Ãá»¶á»¸á»­á»¯á»±á»³á»µá»·á»¹]{2,30})$/'),
(210, 'regex_password', 'en', '/^(\\S{8,}$)/'),
(211, 'regex_email', 'en', '/(([\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,6}))$/'),
(212, 'regex_username', 'en', '/^([a-zA-Z]{1})([a-zA-Z0-9\\.\\_]{5,30})$/'),
(213, 'regex_date_days', 'en', '/^([a-zA-Z0-9]{2})$/'),
(214, 'regex_date_months', 'en', '/^([a-zA-Z0-9]{2})$/'),
(215, 'regex_date_years', 'en', '/^([a-zA-Z0-9]{4})$/'),
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
(248, 'feeds_action_timeout', 'en', '86400'),
(249, 'hash_photos_qr', 'en', 'g::key::photos->qr'),
(250, 'hash_videos_pointtag_check', 'en', 'g::key::videos->pointtag->check'),
(251, 'sites_views_timeout', 'en', '86400'),
(252, 'hash_mailer_logs', 'en', 'g::key::mailer->logs'),
(253, 'hash_mailer_id', 'en', 'g::key::mailer->id');

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
('O9E4gGnGvuAC84,WsTUVoEa3oYQXHrAzzBVNKCAPzB9', 1441114225, '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', '50a102e7be1ed2c7f239b0e4121c0158');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `guy.id` char(11) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `author` char(10) DEFAULT NULL
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_family`
--

INSERT INTO `users_family` (`id`, `time`, `user.id`, `guy.id`, `type`) VALUES
(1, 1, 15, 16, 'best_friends');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `user.id`, `time`, `updated`, `client`) VALUES
(1, 0, 1441096536, 1441097387, '1064bb3d'),
(2, 0, 1441097394, 1441098044, 'ee5504b2'),
(3, 0, 1441098490, 1441098710, 'ee5504b2');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=767;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=251;
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
-- AUTO_INCREMENT for table `mailer_id`
--
ALTER TABLE `mailer_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mailer_logs`
--
ALTER TABLE `mailer_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=444;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=254;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `sites_author`
--
ALTER TABLE `sites_author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_certificate`
--
ALTER TABLE `sites_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_rate`
--
ALTER TABLE `sites_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_scan`
--
ALTER TABLE `sites_scan`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_actions`
--
ALTER TABLE `status_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_readfile`
--
ALTER TABLE `storage_readfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_static`
--
ALTER TABLE `storage_static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_follow`
--
ALTER TABLE `users_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_pointtag`
--
ALTER TABLE `videos_pointtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
