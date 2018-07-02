-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2015 at 05:49 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=860 DEFAULT CHARSET=latin1;

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
(21, 'en', 'write_a_comment', 'write a comment', 'false'),
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
(849, 'en', 'updated', 'updated', 'false'),
(850, 'en', 'tomorrow', 'tomorrow', 'false'),
(851, 'eb', 'days_left', 'days left', 'false'),
(852, 'eb', 'weeks_left', 'weeks left', 'false'),
(853, 'en', 'months_left', 'months left', 'false'),
(854, 'en', 'years_left', 'years left', 'false'),
(855, 'en', 'minutes_left', 'minutes left', 'false'),
(856, 'en', 'hours_left', 'hours left', 'false'),
(857, 'en', 'latitude', 'latitude', 'false'),
(858, 'en', 'longitude', 'longitude', 'false'),
(859, 'en', 'upload_at', 'upload at', 'false');

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
(9, 1438956858, 1438956858, 'babe5dd2', 'en', 'kiss', '/+NAxAAAAAAAAAAAAEluZm8AAAAPAAAADgAADD0AEhISEhISEiQkJCQkJCQ2NjY2NjY2SUlJSUlJSVtbW1tbW1ttbW1tbW1tgICAgICAgJKSkpKSkpKSpKSkpKSkpLa2tra2trbJycnJycnJ29vb29vb2+3t7e3t7e3/////////AAAAOkxBTUUzLjk3IAE3AAAAAAAAAAAUICQGpCIAACAAAAw9LrjgFwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/jQMQAGjq2kF9GGAAVpW2TLyGEwGAwGT2CZMnd7/BNO98REO/oiIjv/xEdzP/R3c/iI7+iIX/8REd3/0R3c/+O//+7/EREf+Iif+iIX/EQvRE/90RE93dET93cAEBiD//Lg+D4fwfB8P4Pg+8H30iMPlAQcCBAQCAUCgUmo0nAYDAYgzCcgBIS4PByqFHtIGJGazs3i1xiQn/n0xBY3bYw6HmPfsZmJXCSJEMLit//97rwMOUmIQiTReTu9/+H6/05Exl3rmSKT/7+eua/9f//40LEWkJLesJfmtEC1ykBUpT8LjRJJLn///3997+vDhQ8SNCAZWHHwuGMSGMmlMGg////5hz////m/B0YCpSpAAUIQszEqjOnxleYFSDjxxjJqgv595hjvLPXOZ773lf/vdu+bCaZYIZpGZZiXEAoc0RcMPoJk6VYB4JAYUKIO5577///7///8//v/r/w3//4KFiQYKtUNkDiQWFgoCPGIMBB0eVig4vIgaHCXnUHTdS7d3QdMoWJHdXStFUAIBG05igMBIxSjQIdDMr4V6mlWv/jQsQUMOPuxH+YkAGivI2LvU6zvNLaeURe41dQyBDyuAMYbyDeM8XqZOGiJcDwkUIiMeky10kNgxkLJJYVsYvrUtNPxRBaCKB1xO4zvutSDaDHw9wSoFEEfgf2OIDFKftdSDu6aa2HYcGEdG0QweSsGq7Mg9335ois01bkVEpicSADwPkd5dIIUhwH13oq3+lp76/wuHHcKcOwrD2mO9EgDkPPpoKqq0Uuv/32ZS7f5cKiZuiTBrPrLq91xQFcKM00epAZ4YgKo6hxkBJADSUy/+NCxBQqy7bAB89YAHUUVaEF+FteCEjuNMCdEYHkewBpqPQfx2EsdpYHqkWlhObJ1t06LSX/ia/dLnTCLaumpGz1j6xsO5SVHkkmDuc5qh7a1vN+7a3a2tzjaTqR0pJqR5HRUNVr3WjXta7+W9fDnfEmtOc6aa2WxfLT3/u23zU/265/h10k5pRnGGBseQp61MuYP7WVbs93X31qBAMVGGvacVUqAar+yySNMaBIVIpoYIrktuESKaHFWZejc7HHoFqJF99xGiS5/xtEYpAbhqP/40LELCO73s2eSYber6zeLy8fLLSKY40hCmy3KJFkcr5Gnb0dyXPYnM4pTcyOYwPRSh8AmFGEi09mYGHY9uHFodzd6laYc1z8nuv5dmhO6GZoDJERz8Pa/9My9BHmrlS6PtdsAQMAIkRnHWI0vMuXABirv/pAGHl0kJTEf4NusP9ZLzLsRyyvKsVT2rN4C0eHCKKNb7d2cXLFTBUsXhFEgYkSDoWQI4FIjySLgoEJBjLUEEwNMICyCdkAIgKBxocBMKkJpDGFyc1MWpE6nJWI1f/jQsRhNZxajjRhmViHkgirik9iJSSN9roDClreAV3U3g1G+tBlgTlHKw9JGM0zXv3IpyYK3sy2vrFC9rtWS4hoVVEUbIkkxDPlzpcJj6hWkK4GARoNSuwJg9c+LLpDkksL4h+EOEzN2D1KjrylShu78H7Xq15qkc1+YZ/O+dnp+kuqL/0uuu1taj+6wBH6d6xGSiiR6xUc7IQ5GyoVLK6ghYwUIWUj3M7iTGHjVGJMlvqytVxLqLQEvkFFFmRsm+sWWp+UuWO2q1tnadPYzNUO/+NCxE4es7a5vhhHwfyuf5lmU9zkz5+1LmudxOhIR0zlsyKFhQSCAQ5oFwQVSqxgwMWMoJGTV8fgKgVEaLtt///ZMd3A47kZzJhh11V8wf7Bd6rGcyDkCh8YcjuGK1Y/mhIRLCJnhV2MLK+5rI+dK3urOW9thJnJqeEQiIlIisLJjpf+RFS695rn2ZZX/XhF56PsdOuhh2CBVzyIchZNlvMgR0jaIVh6+jiTTP1RDVekxhSFag7ZfLbdttXdOIxYIBrpDNDCgxPXUnolsUQy0j7/40LElx6Ttr7+GEfBaKZJ2NnUUjcjY1dbnqVPY9ZFw1hHpNct26VZrVOp0j8jhRtUhiqV5lW43SP/K9pT2UlJaeZF/8pNOrnYlChU54Um8ML4gq1d017jiiFEdWockqrRqG5CopGMG9zS7SpiCmopmXHJvVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUKT3X/W7/7bgNPSDEybIXkerwyHnLxDvqizVXdRmfMWeSgAjNoRN9+yQ0Ku5/pLEGEWQJFDgaBDImcjv/jQsTgHquqsl4IhgGikkdEtGsCJf2TMsuD9Ozup2tCLXSHTyuZ5eWhKPoa25IebxcyDGAhNqgEQiUi7m97c/08iz+LFQ33srMWaowJDpOwxYEkxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVSCSlGnI63lK5XM7nc7gwoEO51LzPuP0HI9hTQTyXD6BP3lC7LUdOzuFcRKTrot4kgysNTKzSQKb9AF8/+NCxP8gI9auX0YYACdFtUYdMGL4V6+8fcr98QlHi5DBHxthXla+X95vPS+Zkgn4T9gcrzQa2ltuaLne6a+sRzFC6JMnE2+NEuR1Rq/G/CjWx64iX+Lx861PEP43YsNcs6cO83jfPBtxuV1bVq4tBrq+83iTbga+6QKZy/YGdTHufjEcpsLKOesY8S9KKa0LeJaWrRvnexa6tmSH/H3mHff8s2d4pqJE7CxEGP2E2opXmlQ31OciPLc9V796nEmdlaJFtE1Ja6TyHM2//V69i4j/40LE/zsEFqpfj3gCWsWta2/lm6q7ARMGZv/b1Uoy7MzUKAtqvwMKIMBAQo1AQFqq//+zHQEBagKlt/8boUBaqpRmYtm9Qok1VeMzbMdVVXpcZmbZjqqq/8ZmbZm1VV1WMKMKAiqpeoCAtSgYUagLa/VCidV2ahQE1Vf1XpbNqAsJQVUDXWdWmIKaimZccm6qqqqqqqpMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqv/jQsTXI3v2RBfPGACqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqkxBTUUzLjk3qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq/+NCxP8AAANIAAAAAKqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqTEFNRTMuOTeqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqr/40LE/wAAA0gAAAAAqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqg=='),
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

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
(11, 1441880448, 'user', 1, 'follow', 'status', '5', '', ''),
(12, 1441477168, 'user', 1, 'add', '', '', 'status', '5'),
(13, 1441540055, 'user', 2, 'favorite', 'status', '4', '', ''),
(18, 1441540054, 'user', 2, 'unfavorite', 'status', '4', '', ''),
(19, 1441711567, 'user', 2, 'follow', 'status', '6', '', ''),
(20, 1441711567, 'user', 2, 'add', '', '', 'status', '6'),
(21, 1441712383, 'user', 1, 'favorite', 'status', '6', '', ''),
(22, 1441712385, 'user', 1, 'unfavorite', 'status', '6', '', ''),
(23, 1441874857, 'user', 1, 'favorite', 'status', '5', '', ''),
(24, 1441712672, 'user', 1, 'favorite', 'status', '3', '', ''),
(26, 1441712926, 'user', 1, 'favorite', 'status', '2', '', ''),
(27, 1441796193, 'user', 2, 'add', '', '', 'status', '7'),
(28, 1441796193, 'user', 2, 'follow', 'status', '7', '', ''),
(29, 1441894929, 'user', 1, 'favorite', 'status', '7', '', ''),
(30, 1441894989, 'user', 1, 'unfavorite', 'status', '7', '', ''),
(31, 1441874863, 'user', 1, 'unfavorite', 'status', '5', '', ''),
(32, 1441880450, 'user', 1, 'unfollow', 'status', '5', '', ''),
(33, 1441896405, 'user', 1, 'add', '', '', 'status', '8'),
(34, 1441896405, 'user', 1, 'follow', 'status', '8', '', ''),
(35, 1441896604, 'user', 1, 'add', '', '', 'status', '9'),
(36, 1441896604, 'user', 1, 'follow', 'status', '9', '', ''),
(37, 1441978261, 'user', 1, 'add', '', '', 'status', '10'),
(38, 1441978261, 'user', 1, 'follow', 'status', '10', '', ''),
(39, 1442061262, 'user', 2, 'add', '', '', 'status', '11'),
(40, 1442061262, 'user', 2, 'follow', 'status', '11', '', ''),
(41, 1442062521, 'user', 1, 'add', '', '', 'status', '12'),
(42, 1442062521, 'user', 1, 'follow', 'status', '12', '', ''),
(43, 1442062607, 'user', 1, 'add', '', '', 'status', '13'),
(44, 1442062607, 'user', 1, 'follow', 'status', '13', '', ''),
(45, 1442064182, 'user', 1, 'add', '', '', 'status', '14'),
(46, 1442064182, 'user', 1, 'follow', 'status', '14', '', ''),
(47, 1442065236, 'user', 1, 'add', '', '', 'status', '15'),
(48, 1442065236, 'user', 1, 'follow', 'status', '15', '', ''),
(49, 1442065353, 'user', 1, 'add', '', '', 'status', '16'),
(50, 1442065353, 'user', 1, 'follow', 'status', '16', '', ''),
(51, 1442130463, 'user', 1, 'add', '', '', 'status', '17'),
(52, 1442130463, 'user', 1, 'follow', 'status', '17', '', ''),
(53, 1442130536, 'user', 1, 'add', '', '', 'status', '18'),
(54, 1442130536, 'user', 1, 'follow', 'status', '18', '', '');

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
(6, 1441460850, 1442152949, '1a4cb25f', '113.170.46.167', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailer_logs`
--

INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(7, 1441125666, 2, 'ffcbc75f', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(8, 1441126202, 2, '0d92d0df', 'ZWtnpX6arQnTeyD6qJlRZa8LlU4dRpTIqyP3U3KDUC/sl+h1Gv7coyUxD60/9sih87z28c6xvXlpuQJcfvkqWQz5oMe5U7UGOHSVO1rJK4CEzE8e83Gen6ZcczFXbzv30+ArFrBOzCRmtkxuljIoaamd4rq9QY2oUmLk0EGLRFfEyeqAw5YHwXcujL0scbWue/IXuFDmY4ISDlaUKgH34fCNZemMfkR8nCRtQL6jHMhvgeYZ8fZ36+LKLsXuoPDXxzG3q93x38xeIVfx6wefOiO/rlIa3VSopJC30a22mmH7GACcbCO3O1FFklwpGEqtOo9UR/2U7O0kcjDOFIZLjBurp0gyy6yAIgdVpD8mswVwDR9zoXLZwJcI60fQed/9TsBLDYzVTCI78/Kl4iFfQ4ep/9Yd60LTE8YUOZ9a/SuTbDo4GZ+ARd8GVverlisM0g/8BROS4TU4KEyM9D1V3SSysPJVTzDomVbm2PQVjnK6gH6EWgZmHwUwnR+tO7ITN6ZcOf4n262FekcsZSuWpNMZEA50a5LwU7OpNmS0tRJVtKKpxzd1EBCkLN59Ht6zZ26ysHlmos/KnVDU9AzjL9LdGkjPHzWzk2BclNCgE58CsFG4rYWjvKqp9n1JV2SiH+PZSqEi11r5BFCFasn/P7a/i0O0s3hxDFaIRxeDW20rw8sPN/2ST0y5lPWRYbsDTislwkIVxkrZqiEcjvCZ9FBPhRlyd4TdYmUppIIyuXACWKmcBnY3ES0IPReYAK8Rt7a+dw/nVyvRyCIefWTEv60kBWeQqmwc2+N+tcYAvQbZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8xaMATI9fBH1bkRCJmhmVMn2DbveTszqnWSz/lV8533X/YrGN8cpIFWSECjWNKQV3L3/SvEeSEV/xgL0jAOja66SnCaLKTJiI+y62VRZE6Pn3FfWUI4LK7sWGhWwYU5eZEIamDaS6wEuEijs+6l8cvEuzSES9LZh4h2/vdrGyZW9TzeCEp4zIB9Cg8ljc89qCIxTDumUSDqPlb0iM9p1/Q/cZAMXC099bUl7KChavPrdrDZadPUSTNyLdYaq1rsaFjWe3udnYWgUX/903amdY4buukFG7MSzcbILxqJKDayb4AM0y88dOnCXycB+oTS40r/rrjv8sSERLjkjHlNIYEOLZA4RWpUhDdvgoMRpAgfmXeBJGC+s/oSq4ZmvMa9GQrxNK+OFoZ30iXKqeYXkvT66XB/u9FATPjdcNK+oQ1f3eJh50Mw7Z0EBjKz/KrYn/gyyoIj2m/lwoMAhwaJo3gOvCpA2HwVe/Uj6Eywnj46uW61aqARkrAf1PJfV7bGqeniE/8chADwVFIaucuMXsUa10/oGXJKMXdQ7TwKx7CUmLiik9Hb/PjpmDPxAG729MXFiAiT2LeS5MtmLadw7323a5FD4j4igOlRF8JxHficJPw5eK9vvKCeHY2+snKNAN4LVes5gAnbykUijA6Vp+KY025GLul+p1R1eY5vpvXTd2fMl16UYDT8A/05ZOYZtN/WqYbbF8mngoJ3ZoLlEwRfZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio80Y6RNMCAMg7TGVwP5XLSyXk+umRRmJX15QR/pp65/r19flS3eIzVw8fQjT0yw4fo60+wEkZZrjVXPLuNUZeI2TVgkb2u8EkuoLOTmSav+62Jni7BzmRRf4nRfT4jEhrJDUS1lGG7buSG+0bstC9dXj1sFpakF/JraxmFjPBN+rm2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPNg8NO3o+NkikYuS05r5/KYrxMQHVFdtv6lv8FnBaj15chrga3GbaZe0jr+6Z/+IE56G/Q8U3qMo9S8bSnRygHu257BliP9KiBF8909ZogJly9D9nHNfDk3zCDTy1l7kuDDV+4cAUr9rM7tsLnb/eNVFf8iL18lRdwWkObl+JHPwiNmhp1THg53e8wCN6Qts6tsRpIE6toj3VBXNF5jon0GIwSlafuOF9v0fPXrEKku8Wv2Il/iW/38OpVrWjioho3ZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio80PSJB61S9G1TqrTTArkkB19uDVTAmPwQ4ujBWD67+xBFhq+JAVnWAysFkz0Z+C3r9QiDnbunyWf8KZ+oWHFFW+MenA4ld3IgbiubjE7TK9vOHQXILw6WToRD4ax+W4incC5L4HtqpRb2IN3gcg+hwIjzn7TaDsha8jN3oYO+8ywa0l9+PD90iihCe3bZpaK6lswQUE5VvbJUaRiuC9LodxaQ7IbAco3iOjSL80QoAFZ59Jx6NelMNXT3SekBCca9NSK/gFWqREQCxrswrNlLoC5lxx32EJJ0gBe/+uZBuBL2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPPVaadjIvmJF9Ud0l9vv+GJ4NwJ6eiDhUsRZx7x9hBkfLnVWG+2G/YWGhVvJOO29UHpNZxctBDp+Q8x8INnK09uQ4uZYuzm0TLbhKCfW05D7pIMcjpG2oIUv4C60RR0J8+WwlyH87hObAba0ehMQd9fFFzCQNT/OOLI1Y43i0pj2NkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzPMqij7Qf64dbZFMW8p3tLUZBCeuSenXRUVzu5qMn6z4E3+5u292dPtv+p8w0vRvp1BdGoGlz1YGZYU2UF1Opu9kOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz2Zr5IobUHyhLiI+Mecm70tJNeRWmJg8tVwhZLRBN5iXZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8+oRpXuIaIvoOoVLCYIvRPjj7pMwxple/E74gNPysKNW2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPPHt0USP7F9jh/N5QwBbYw9tTuUHd0uNaIh6aZi0MJiZuCQnqO7lg2js7fMIW+/ze0NuEyD89iMwjwnnkc0g/gp1zd2thZx5JasKi2tHs3/4H5PyFbTmxUrnUdaOgcKTlXiJ5oEVrR6g2DyvxX38MlSL2olkW7IbcWQXU/eKUTjgp5GZM+dzi4yqnAJelUaRf5zyDvp+WA7iT5SrfNQUy2j2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPM5Jh6aYHGHpQZRozzteIvadYmvEjGWxkUWkQbqsCBp7eqYDdDsoaxeY5QxVSwWe9GoxdBAA71vFnsJlYxKgxaz1ndWuECWMHdLjj2j3cJeVrWOUsoTOgqQgTNcNS+a5irZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8yOunY/iAKyQFxp3DsPMi6iZOELqp7c1IGTfX+o9mgJmgZm73FxM4fFUthlbXddHtLF3lBvD0DthL0TMDBDEoXHZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio88mWmjgQSXTkheVCs+Y2WMHl1YUO1hVyFcLOZfGRe5WN5nEe/6D5mO70DFBjz9ck3A/DDX4E3a0mH2Ump6R1GOSTbDo4GZ+ARd8GVverlisM0g/8BROS4TU4KEyM9D1V3eCmiF/SWrWs21lfK3mG+RPUUO5RwedLW8IbcR2IE9KHD28+pY0IWqskCMLSiQXqbqFXjIFSe/EsPg7HiDAOunkMcFbUSZl1MxA091If6fx54gmo0uzsMKwAaTgDHV8Ik/2KxjfHKSBVkhAo1jSkFdy9/0rxHkhFf8YC9IwDo2uuQ4uZYuzm0TLbhKCfW05D7pIMcjpG2oIUv4C60RR0J89F3ShCSbQiTVqFbw3QEBn6c++++JAO58O4OizHt3qjOKwH1UUtVNmIIi1Vb9Ivq3qkyj4RuiyW82aXCMAKdmsdkAYQax3ArtVh9xWSqIVbd/9eHmHtk7U1qhK/H3WITbo2FxftDoY8ErUCHYuSuwvQnuMMJdYikA/3R+WmNO+cT4+WDGEu34Wb416xJbwnxnYesCwGHsxCIymcAmoiaYI+OdUIJXP/8mv1CzkQnZbrMy4OLcGTjv0aVbRWzAf98bwRPSPa+pcRHjNAiq/UCAyX1gzbsOtGIT1oZcknCHkyqmSJinLlaR4rYiPlferC9ZQMm68BuVDBZl9LfpSZ9CCtuOA4aVdzsCdPYTq0rehq1AdjTxZUcmMIE9+G5h+q4lWNhaoUDfhlQtEPyUFMUOrPuKioGacXbJXVxt5AMNyIJVCcvJ+81r4y/g+8Ojw4vyFjh1+qgewRPc4BhYqiU1NyU4ykuenPHAinxHa3Rf44+scQeNOhZWuva8FVwV4LGgjUnsgFQbZfZSTqzxhqsyJzggY1hds0VO/5/TYTJzxbir0EwqJEaGMpCWNgE50jOze8eA6Yi6OCAUQf/cJDb5NxUE+FGXJ3hN1iZSmkgjK5cAJYqZwGdjcRLQg9F5gArxE9WOT1RV8xEIr3Uu84/0W2/Ch72y7hEYXCzxDRcCByLNkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz8k3Gm9gDagogHBrL9ROvXpSD20TpR6bglSLdvmVWGeJRK2QW2mr6m9oMr2y3pOYqtFcBA03ixgrw1Q2+taWahNkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz7jOGeIqKyZFFnawRXPK/F6nzw4lbQNzY3iuR/lBH8CnZMmQwebSrp5GqbaGzvKE3esGfjgd9QiUOyV9RFgKmmo2FqhQN+GVC0Q/JQUxQ6s+4qKgZpxdsldXG3kAw3Igl1HuNfrO3sALV3Zh2q1VTgM6J488N6p7JfdzfUTXbyuzZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio839AleeHDTr9W2cV8M9QtLBMMoirkIbiNsD3XXw5kFdl418FcI4nVe19JpSEh0qkFWkqYUcoC45Vnw08XOBVSPGdZDZs4pfXJh2/HImvxVLLYJrX60gwuUf74Nn3kFMp6o+WDGEu34Wb416xJbwnxnYesCwGHsxCIymcAmoiaYI+z9oeBCFjXX5gh4kvo/ZqfnUE9MfREhXiOF0xE45DIEBfM4sCDYGqRMa8+4d3jwOcJSmwoOfubZJZnazGjhEztdkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz9wQOk0xwGVROJ4uwbt9Qv52kZuq9Sry5Qni+tn7JapveInf9X2hv0MDx1Ttx45qdagmgfkaV9I8Nv34RWA86BKZ4g2/EzDA4U90k6GhHEzkN549oqoLAoaYQY+ZsCkgc2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPP3BA6TTHAZVE4ni7Bu31C/naRm6r1KvLlCeL62fslqm4tkDhFalSEN2+CgxGkCB+Zd4EkYL6z+hKrhma8xr0ZC2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPMr+sIrDfqBcIqhh/a75snfYaIRI15T51ekeYBRrHjrSq1DHuX52opFXUcQnUdVwkjp4vSqaacWGmOw0mE7uw6egWK8eFH4vFMKLtWWBQloVo+TKnt4d87bMwOyHvC8uiPZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio85vT4T5BFgCatPUz0ukqikyn7+qDeY3zAb5VYuNVhch8ApfbE9YA+GsDwNvAQK8T/A4HyOHhEqjkjXhIrGBxhSumt0Z0DmqkU38EppHQgArU7MxHJoCOcRNBG2rrDALZG9kOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz9oRI4h1acEJukYRE1epk8DL4HEF1HfYIUoCwP4kVwHFQT4UZcneE3WJlKaSCMrlwAlipnAZ2NxEtCD0XmACvEdEc0w5QBzNjCZz7w4N03ZDGkSUioRpTpFe0g8wVWiGyx3L1szxb1E4OHxpwKiFQLw/CteFfPWr78HBQbLMIbF1QT4UZcneE3WJlKaSCMrlwAlipnAZ2NxEtCD0XmACvEdkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzTU+Ta0PfCqvQQIl8oPkgGxMT3/SzP9RoCAwbdIF1RsQEqKCSVSo4rNzf5oHWBGu97r+PvhYRU7VhnWlyWgrSemBMOrhvSRCcqEfieQo6dCFKYeH+7sexUvzTIhpwlGYY6eSs+hvPfo8VGShsecAnK/dxbx/fX+uTfrknHWTHYfWzDKkz1O0uEYdGZSXZuyUv6sfTdc49oblr2Lu4CDSkcnJIq5mq5hxnCpMK4RAkcHO2BQmB+pbLddRLrXVotF9wnqsKsYNb8MGTG8bVeQnAj9EY5n+SGaGIhpqSyltUnUaeHdYEYuhk3i3MaOVGh6vSUG7+vnorinOG6zm5TvFokNkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz9So9SmNgnT0MomIKtqW2FDpxi/FviofHq3pJayUYPRLZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8yr1/1JygqwnkAy6BoMbOViP4sDZZWsMUCLd7P8BvW6fPBmIdkyclr0Y0oIjiOuPd3QaWeoBvfM/tuFc4SgHoJNQT4UZcneE3WJlKaSCMrlwAlipnAZ2NxEtCD0XmACvEdkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzL8A0aVcfOV+VAD70FuhtJS+/wst6gF5ef1rvzT8mgvqNhaoUDfhlQtEPyUFMUOrPuKioGacXbJXVxt5AMNyIJdkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzhF/xuAVANkkSiXGZGvCbrrRixSS01HJp2xpakOFMRszMPizxPJ48I4WYYtowgozPR9x0+q/62e56Tmhpgq2xmzezQ1oDgB53XM1gvde1qqOgJYe6ZSwP6MrMSnOFWL9lpwTVP6va8doWDDlEAFyJf4p0ZbG2NywjCuC4cNIvzsdi83MHUcRR/Xm/Vcqwd6MdaJU3x3/unpoxeo/Gt2LVxNkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz7uDwFV+8+M02W1nmzEdcS1f0llrqi/Uu2XvRbvsTAeo5Wa/wifHfJDiEee5hz8w39E/+EkAL4aJDOcusdEr+JGoparxUrLbtglHh2gm8URS5bsj5TxEllE0/txrQuxA6CHULxPR30jy1uqKCgx93gujyresFKq/4KhOt5LVf0HcF5b2bTxwvV20cAhObbtiQLePNzpbnaZN8bk2NHRv3DlDfSpBBGHRgWLbOQFi2XJFmNp+gRJLas6eJUi61whJz2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPMDu2IDPUjwCKeWPyyoExXS37VN7ZIujTVYnDVoq48al9kOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz3GQDFwtPfW1JeygoWrz63aw2WnT1Ekzci3WGqta7GhY1nt7nZ2FoFF//dN2pnWOG7rpBRuzEs3GyC8aiSg2smzat5033cjpupo+6V7/Tu3oDJb3FPhpFXKOw6BcKPQvAy75DiQfOnmBW0qkn6jPePmEmU0B64kXM8Ww/fFjyahzZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8y6frRZqcEvJv8hcNUgHnSRhSdXJbLTZbEPM24xv68jZu1Mj4kNLtQcCinJyIzFIaTGElFfTK3g7/ETQcA2K/jTGfVc9wpbs0D8616/skk45ONEM6OYxsgTlD/CvYaAygqXYPw2ogwL0rPNNZIGSUjiS3yThwU/TGJlSZSZLi6Qf2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPM58I0tF8/kdrtHUMDnWtBla6ak4uZXVyF77KDHCD9WPRuHudxd27uvA/LPgHJUcD9UBaxqLCSVVTPSGAdEmJZ4WhVY/TMMyJtaRRe2d7nZBaTGrGAikzatCUV6MzfB0fchtdDA/yxlO9Hk9dgz1nPr67nHFq1O2w3DnKG82ZOMzNkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz9oRI4h1acEJukYRE1epk8DL4HEF1HfYIUoCwP4kVwHFQT4UZcneE3WJlKaSCMrlwAlipnAZ2NxEtCD0XmACvEdkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz1WmnYyL5iRfVHdJfb7/hieDcCenog4VLEWce8fYQZHzZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio83MPTESVzx4qBjpUlEOKerOuoIpwJ+IR2SXwDBOg74kWBJKDKZCws14GMfmwQw1QAoKmpWAtI/Rs2gkBkwSv6D3ZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8yfsApkI8JH64DXpFHzdMvR6J7alA8d0texidIFO4g4XQEYST17t3B0njtnXoRf14diH71vHkWwLbqgOWpdWNPQM9xSsnhzQDMlf7GoJw7aktMKk8YExg+Fq2QEf0dq8bBX30Kr3+Bp7K5g2fC3QiAyp8pWy1qat8pf6ymCF21Dhxr+eKKiWQA9E6bOGd859+g2LTZdgHS9PH60qYoJilJPZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio89kOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzY2W00gFBH8Q3rcG7pEOIDQkUcSfZAf6z3bbp8F8k0OIz2tS8tlc+jcyj1/+0YAtEJMSh20IXk3I2P09ip+5PZ0hYiki+NNorgr8bRyAX6SDmRV8PZxqEnBV1Dl2QB4R7WkA83e0wuXwqQdxPw3yusfdw13mqkw4u0P1xLrZBB81ovDyy1N2zCuKTMornFa96AC6GWJjEr8nXZKr8+eef89kOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzDYxXdyOdYFnSElQlVvd1n2y4M3q1QSSYFS/Ox+qixZmC1XrOYAJ28pFIowOlafimNNuRi7pfqdUdXmOb6b103dkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz1jaP5HadNjG9b4ZcxuXSb5EgOa5EOYnTMp/XY8iUepNxhg/7D6NL9bGO4c34Vv5/S5yhbIOGTO5uWZFeGqT6/Rmo6EWxx/FywURJcNVgmKo8fiXUUwSrMFSQbW2P9TvQ2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPNZ7S6XT1vbCf5wvfRRhVhlqP+acJH0Zmd53+8ufmTrnhI1hd3ErXquhmnf26PwH9ZX2d8soLs1PdIqOHqzt3EwC7MfnoKoGrCoW4iQ5Qfw7H+PcNpFWImdYyjWYQESwSeUr2RG6KGTXrdg4QMVf4ZcbU2QSpyqne7iat2G+kKurVBPhRlyd4TdYmUppIIyuXACWKmcBnY3ES0IPReYAK8R2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPMvkhNn1NusPl+CRm43IVZFBbidHnjqKtLzr9CTgBeyYXsGycvfXIo2jW69XU0wB9jeF4gYMEQjp0Ujc27rR+nzHVkCHP/5qiNF9mnMsY/klNxt3vAHKeH/N3qwkfm45Kx1P+JNV89P5EV3weBvdE5SV3C/9k9BMd//osUqn10219kOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz5a+KP9gxHKTD6gc0eeF0rIrGbmgu3cg7+R+jDeMOVKnZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8/TYgl8ngo5fM5t6LgUCt6hnee2C2P5l9Sn4KCl9Dghxj5YMYS7fhZvjXrElvCfGdh6wLAYezEIjKZwCaiJpgj7ZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8z7JR6+w/kWB1DjKC9WhnzgaQfTr4Bb0JunKutSFJz8FvbqjQa3bnNY7geZIyjcpKD7kDrBWwNFJTxtWWWq8ytHZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio893Xy0pZBIvXktNHk7wqoO1JcFDXXwtopwW0Rop921J600sjjtVGrVmmGLw3u0NOYtdGJhpwRyBqMfkJEiGPV8MbFOCcBa1bnpNSA45MTt/DYYeZbYtmAxQXaPg1tCUPKSfEmSziJSqawFMaPzPwjsrdDHW5XlVMg7PDwSTca3bO35VY8poE+cO1cT30LO/M5/TkROSxlP0nJI3IfrzJ6lvZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio80/z+kciBv3EjyVINvWiVUqZAmB7ZqeqOAp5Dzbzg/4wu3/g+nLIPfGuczyff8d7Tue+GqUNWuAbT5UzXQVWyc5PF0rLCGWMYeqhunor440GPyDiZenp8WlcA2bCnqFZF7gL+YLAr7WnevhmotfONJOl4B+0TtvL1ygpkm0CdYRcV7qpTlzlSuoJ/jvEpsfGxMF4e9LjFAnlxuhvT2taHWZjinBdxhHzyw8E9srwmnD9S3KC2FUq2Hk5MikAhr4a/tkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz5iF3RUyg7xF9Ckapb3XqAPdwxW8bc+QDP1oPoayK8oPZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio84oPmw085NR4HRkB+QIu5Rkh+u8910AkT3GrDBNIvUOs1XfzjWA6a5PwXrwavJUF65TtTAhLAu49R3cavfYZZH2yZN8TbSK3TjFb3n1qFxVCB3ltTSXURIMLDTzD2oLBuSvPlsGbWB0J0Hj9+Vyqv1dwVBfKyEWTquvlves+2/FO2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPNX87ZkADqw8lea9InD7NJgaMlJaKGEwar4cnZYoBnEb68qMFInZb4L7/cxx2wspNJ9TRSdLPqDB2TeEIVwnIB8y5t6CC3wdiwiha1jJdJ36vhAwlls61nEcytN7LJxohid4JFEcWefwjURNR236uP598ks87C+hJb7daJ44qoWL4+WDGEu34Wb416xJbwnxnYesCwGHsxCIymcAmoiaYI+2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPPCnUYPf8iUsXkVcgiD270zGkbivLYLSxM6xu5XfWs8Pxf1GDYyJLvVAb8xrvqGrrHrqZC5nIqpR4Ib/d6Ww/Vc39w/1nyx3KU968ZdhLeYvcffjtTKEK0uIUZnOprj5NQHmR5CGktfx2bfCdkoP0aBCI1mnIPUI9XzTbThP8a05tkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzDYxXdyOdYFnSElQlVvd1n2y4M3q1QSSYFS/Ox+qixZmC1XrOYAJ28pFIowOlafimNNuRi7pfqdUdXmOb6b103dkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzOfCVQGglJ00KbW6prNyI+05fg2QW8RjXU66wD6zWmafZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio827HggZu9w7NxbnuHk2qJZGidx0SU16gfyYkLVfcdfQs2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPPSG9NVnVx0iHASFXjK9JG//qF8E74pOSEnNqVzRf89ssMI3rhrufKoTzJbrAEFWsZ2kEBUSPCqG+U4Noy8rOuqq4PjyVguj+g/K0JxzFip7c2xhRJ+rE2WhK+5UoLyP9igfdG01RumYEBVoStUyGV5G9uILPoaTVBhLnfBFaL7BUftMjP28yhCNtYB58j5kgN/Ypc9p1dCvzt2PfS6VlS3L7ITd4wsKNtFWzlZlvkoB8JDYumb32C72/vdSMmEmU/ZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8yIXu5bsqsqziJ68Paic712pt1cgjkaMaSPNjkHisoyD2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPO+AwmXlmMBJSX4PHC07H0AX4pZTYgMU2u0vqkOdZUbZNkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzpXbJAfX++PdeJ1uvUHZIiveNYaCf8ONvMNhrYVBfv9LRHNMOUAczYwmc+8ODdN2QxpElIqEaU6RXtIPMFVohsiVRp1kzim50aS9ikCa9MS3uskWLA9RB/2krulPxntKh58gEaK0J8UfmPSAqqNMbQnRqBGsRYczzU6q5isC2vjlxFUphnTTAZ3fiVf1WaOsO2+V48yN2CJlGeL36X5rhOKVLBxcL8IwdDuUVL1KNw6cBlocDpNsD4udcBVB452fro8b03iq+leC8eKpid+lEPdjGU+h5lz/I4oDz9T42rlWM69aAbGJgW6+2GiaP7RPVlmbuad1VtIAXgQaOinkagO4fBzrKEd7grGZbh3IQD7tTbtUDeIvKnNctaeroA6Ylk2w6OBmfgEXfBlb3q5YrDNIP/AUTkuE1OChMjPQ9Vd26XV8EQ0SwMyRM+bCu7SQn83eG2yctpBzWq2YigBTM4Q++AI1x3iAF8YIFSLH2NYcglxYEOv9x5Tkp/OqIlNSshMoZkhiYhVmDALILsR3BUeZ4jqF+RfyV0yr2QClfioUZuW+njwhsL1rErJrTZCIobd2eOQX9+2IOz7bt2zpGdoxcm+rbd1Hw4/wKi1gjGuVxK3TtQs1p89jQsdB/eHczP4BsZpcOXvEd4IO06kYwh46frSUB5rqjq+42GN80tJqfbmesvjIsypiffqSSB1FSaQf9FERQC6x0Qlqm5ZXKhvtiJmm6bw8cy3A3zKjbjCJzh/OLl9jLD9y7kx6S6PVF'),
(9, 1441175133, 2, 'deaec939', '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'),
(10, 1441179134, 2, '8fe21218', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(11, 1441181995, 2, 'f9c89e40', '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'),
(12, 1441441369, 2, 'ec37d8e1', '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'),
(13, 1441890518, 2, '3006c7bc', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(14, 1441892033, 2, '94152cb1', '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');

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
  `country` varchar(128) DEFAULT NULL,
  `language` char(4) DEFAULT NULL,
  `location` varchar(30) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(1, '395602f4', '49db5fa1d07d8a9bbce41cc32597920b', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', NULL, NULL, '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif'),
(2, 'bf0558e2', 'f4ae988d3b006556d391ac8914f69722', 'CÃ´ng Ty Sá»± Kiá»‡n TINH Táº¾ VIá»†T Táº¡i ÄÃ€ Náº´NG', '9 Tráº§n PhÃº, Háº£i ChÃ¢u, ÄÃ  Náºµng, Vietnam', NULL, NULL, '16.079825,108.223008', 16.079824, 108.223007, 'establishment', ''),
(3, '07bab7c3', 'e2feb1acfc60992a794081ccb37c14c4', 'CÃ”NG TY LUáº¬T TNHH MTV TINH Táº¾', '467 Äiá»‡n BiÃªn Phá»§, 25, BÃ¬nh Tháº¡nh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.801433,106.713944', 10.801433, 106.713943, 'lawyer', ''),
(4, 'd953e5c3', '6c36375316f79fa2525ab7197bacdda9', 'Cá»­a hÃ ng Tinh Táº¿ (Nice Store)', '174 ThÃ¡i PhiÃªn, 8, 11, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.75969,106.646222', 10.759690, 106.646225, 'store', ''),
(5, '3423e121', '43fb17754d41abc0f19dc0e1de9a0699', 'Tinh Táº¿ Cafe', '436 3 ThÃ¡ng 2, 12, 10, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.769319,106.669258', 10.769319, 106.669258, 'cafe', ''),
(6, 'bb9d5d51', 'd8527d4b6ce60550e012c7abd020b43f', 'CÃ´ng Ty Sáº£n Xuáº¥t, Cung Cáº¥p QuÃ  Táº·ng Tinh Táº¿ Viá»‡t', '9 Tráº§n PhÃº, Tháº¡ch Thang, ÄÃ  Náºµng, Vietnam', NULL, NULL, '16.07982,108.222976', 16.079821, 108.222977, 'home_goods_store', ''),
(7, 'a57c2fff', '70814f3817b64941fb3ab59d0c3564b9', 'Máº¯t kÃ­nh Tinh Táº¿ - Eyewear.vn', '31/4P Ä‘Æ°á»ng ÄÃ´ng LÃ¢n BÃ  Äiá»ƒm, áº¥p ÄÃ´ng LÃ¢n, BÃ  Äiá»ƒm, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.845834,106.6099', 10.845834, 106.609901, 'jewelry_store', ''),
(8, '40c44d59', 'd1c8df2f1db1c1593822d290e9685600', 'TNHH Giáº£i PhÃ¡p Tinh Táº¿', '80 LÃ½ ThÃ¡i Tá»•, phÆ°á»ng 2, 3, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.766025,106.680094', 10.766025, 106.680092, 'home_goods_store', ''),
(9, '3eed4d76', '04df982b8a4025e76a9dae2fb26a3436', 'Thá»i trang tinh táº¿', '257 Nguyá»…n Thá»‹ Tháº­p, TÃ¢n PhÃº, Quáº­n 7, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.738214,106.716969', 10.738214, 106.716972, 'jewelry_store', ''),
(10, 'ba7e4918', '4d79a9325925fcc0356441074fc0c77c', 'Tline Furniture _ Tinh táº¿ vÃ  hiá»‡n Ä‘áº¡i', '302 Nguyá»…n TrÃ£i, Tá»« LiÃªm, HÃ  Ná»™i, Vietnam', NULL, NULL, '20.986873,105.7963', 20.986874, 105.796303, 'home_goods_store', ''),
(11, 'c57e7690', '8f5050fcaa511adc907e3d1b1cecd6c7', 'Tinh Te Technology Co., Ltd', '150A, ÄÆ°á»ng Há»“ BÃ¡ Kiá»‡n, PhÆ°á»ng 15, Quáº­n 10, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.783,106.666881', 10.783000, 106.666878, 'establishment', ''),
(12, 'bcf121cd', '786ec0d31258b968b3045f3e42f58de0', 'áº¨m Thá»±c Tinh Táº¿', '37 ÄÃ´ng Du, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.775998,106.70448', 10.775998, 106.704483, 'establishment', ''),
(13, '16156852', '5a69737fc8d29f83fbdf521daad9ca04', 'CÃ´ng Ty Tnhh Ã‚m Nháº¡c Tinh Táº¿', '11 Pháº¡m ÄÃ¬nh ToÃ¡i, 6, 3, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.775788,106.685975', 10.775788, 106.685974, 'establishment', ''),
(14, '2203dec7', '1c2f62425a18b005ce54adaa8a9b2da1', 'Cá»­a HÃ ng Äiá»‡n Thoáº¡i Tinh Táº¿', '590 NgÃ´ Gia Tá»±, Tiá»n An, Báº¯c Ninh, Báº¯c Ninh, Vietnam', NULL, NULL, '21.180833,106.062465', 21.180834, 106.062462, 'establishment', ''),
(15, '4cb38257', 'bdae0ed648d66467b2a4b9657877bdea', 'CÃ´ng Ty Tnhh Mtv Tinh Táº¿', '111 Nguyá»…n VÄƒn LuÃ´ng, 10, 6, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.738239,106.63349', 10.738239, 106.633492, 'establishment', ''),
(16, '6ceb45a1', 'a7970201601de9d0bb98575b86ce0d27', 'CÃ´ng Ty Cp CÃ´ng Nghá»‡ Tinh Táº¿', '141 DÆ°Æ¡ng VÄƒn DÆ°Æ¡ng, TÃ¢n QuÃ½, TÃ¢n PhÃº, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.794014,106.616666', 10.794014, 106.616669, 'establishment', ''),
(17, '957e45be', '4e264c9c0b3a23cdb230a8d09c201c10', 'Cafe Tinh Táº¿', '253 LÃª Duáº©n, Trung ÄÃ´, tp. Vinh, Nghá»‡ An, Vietnam', NULL, NULL, '18.661949,105.69229', 18.661949, 105.692291, 'establishment', ''),
(18, '3ff1b1a5', 'b1fc79ac49d6242f0928eea0be732784', 'CÃ´ng Ty Tnhh áº¨m Thá»±c Tinh Táº¿ - Fine Cuisine - Kohthai', '39 LÃª Duáº©n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.781616,106.699834', 10.781616, 106.699837, 'establishment', ''),
(19, 'd500fd34', '2b8cb4f92069e6100690ba6e59786df7', 'CÃ´ng Ty Tnhh Thiáº¿t Káº¿ XÃ¢y Dá»±ng Tinh Táº¿', '34 Nguyá»…n Thá»‹ Minh Khai, Äa Kao, 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.784197,106.69938', 10.784197, 106.699379, 'establishment', ''),
(20, '10ea5db9', 'b32227151623b03e95185edc8dd972b2', 'Cá»­a HÃ ng Phá»¥ Kiá»‡n Tinh Táº¿', '239 ÄÃ  Náºµng, Cáº§u Tre, NgÃ´ Quyá»n, Háº£i PhÃ²ng, Vietnam', NULL, NULL, '20.861328,106.702292', 20.861328, 106.702293, 'establishment', ''),
(21, '4dafe018', 'b039783a948b503a0b941683155d3ee8', 'CÃ´ng Ty TNHH Viá»‡t Tinh Táº¿', '22, Thá» XÆ°Æ¡ng, PhÆ°á»ng HÃ ng Trá»‘ng, Quáº­n HoÃ n Kiáº¿m, HÃ  Ná»™i 10000, Vietnam', NULL, NULL, '21.028967,105.848384', 21.028967, 105.848381, 'establishment', ''),
(22, '5c296c00', '49ea6e57345cc96e352f0ec6e23782ed', 'Essen', 'Essen, Germany', NULL, NULL, '51.4556432,7.0115552', 51.455643, 7.011555, 'locality', 'maps/raw/places/staticmap/location=51.4556432,7.0115552&zoom=15&size=480x480&maptype=roadmap&markers=%7C&format=gif'),
(23, 'b46cc8c4', 'f7338370160da407e20d257714206383', 'Asturias', 'Asturias, Spain', NULL, NULL, '43.3619457,-5.8492926', 43.361946, -5.849293, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.3619457,-5.8492926&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.3619457,-5.8492926&format=gif'),
(24, 'c1d763b8', '7a44748cfa2c6e3c4591b3ea9295f6ce', 'O', 'O, Omi, Higashichikuma District, Nagano Prefecture 399-7701, Japan', NULL, NULL, '36.4576497,138.0479558', 36.457649, 138.047958, 'sublocality_level_1', 'maps/raw/places/staticmap/location=36.4576497,138.0479558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.4576497,138.0479558&format=gif'),
(25, '94e25bbf', '03b5ddea5799fb69165257f8ffeedd73', 'O', 'O, 7100 Vejle, Denmark', NULL, NULL, '55.7068696,9.542056', 55.706871, 9.542056, 'route', 'maps/raw/places/staticmap/location=55.7068696,9.542056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.7068696,9.542056&format=gif'),
(26, 'd9734d10', '142d9bbc03a0d7617678822c00850e4b', 'O', 'O, 6000 Kolding, Denmark', NULL, NULL, '55.4902593,9.4777789', 55.490257, 9.477779, 'route', 'maps/raw/places/staticmap/location=55.4902593,9.4777789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.4902593,9.4777789&format=gif'),
(27, 'f25511b2', '76cd8e8f14a9d23a07af542486342bc7', 'O', 'O, Randers, Denmark', NULL, NULL, '56.4615817,10.0318034', 56.461582, 10.031803, 'route', 'maps/raw/places/staticmap/location=56.4615817,10.0318034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4615817,10.0318034&format=gif'),
(28, '177bd21b', 'b82aaf6502b3d48ab27c7b1c630bbbf9', 'ObchodnÃ­', 'ObchodnÃ­, 397 01 PÃ­sek, Czech Republic', NULL, NULL, '49.2970667,14.1601865', 49.297066, 14.160186, 'route', 'maps/raw/places/staticmap/location=49.2970667,14.1601865&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2970667,14.1601865&format=gif'),
(29, '15e334c2', '05875d8237af5f044496c61a9c346549', 'ObchodnÃ­', 'ObchodnÃ­, 392 01 SobÄ›slav, Czech Republic', NULL, NULL, '49.2637957,14.7127854', 49.263798, 14.712785, 'route', 'maps/raw/places/staticmap/location=49.2637957,14.7127854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2637957,14.7127854&format=gif'),
(30, '59a30437', '4309f63afa3cf99436ef7bcb4cf09487', 'O', 'O, 8800 Viborg, Denmark', NULL, NULL, '56.4528328,9.4064431', 56.452831, 9.406443, 'route', 'maps/raw/places/staticmap/location=56.4528328,9.4064431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4528328,9.4064431&format=gif'),
(31, '042355f6', 'e5319c6ce736277fed2a6fceae466882', 'ObchodnÃ­', 'ObchodnÃ­, ÄŒestlice, Czech Republic', NULL, NULL, '50.001966,14.5767052', 50.001965, 14.576705, 'route', 'maps/raw/places/staticmap/location=50.001966,14.5767052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.001966,14.5767052&format=gif'),
(32, '948d8a8d', 'cdb43b33c76294503afb144d80456765', 'Calle O', 'Calle O, Caborca, Son., Mexico', NULL, NULL, '30.7106788,-112.1624862', 30.710678, -112.162483, 'route', 'maps/raw/places/staticmap/location=30.7106788,-112.1624862&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7106788,-112.1624862&format=gif'),
(33, '33beb514', '2511b49b74b33419701828f7937e859b', 'Cantabria', 'Cantabria, Spain', NULL, NULL, '43.1828396,-3.9878427', 43.182838, -3.987843, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.1828396,-3.9878427&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.1828396,-3.9878427&format=gif'),
(34, 'dd76115f', '8bbad9db8b9dd73589399bce088e35db', 'South', 'South, West Virginia, USA', NULL, NULL, '38.0328192,-82.5347693', 38.032818, -82.534767, 'route', 'maps/raw/places/staticmap/location=38.0328192,-82.5347693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.0328192,-82.5347693&format=gif'),
(35, '660163c4', '610e3b6801e5cae7a9a9e4ddb3e140ca', 's', 's, 87030 Marzi CS, Italy', NULL, NULL, '39.1768368,16.2952483', 39.176838, 16.295248, 'route', 'maps/raw/places/staticmap/location=39.1768368,16.2952483&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.1768368,16.2952483&format=gif'),
(36, '24a8c07f', 'b0268cf0b1eb0bec1b73a07589b50aae', 'Shrirangapatna Railway Station', 'Shrirangapatna Railway Station, Srirangapatna, Karnataka 571438, India', NULL, NULL, '12.4248105,76.6782188', 12.424810, 76.678223, 'train_station', 'maps/raw/places/staticmap/location=12.4248105,76.6782188&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.4248105,76.6782188&format=gif'),
(37, '34ecd174', '6808054c9a2691fa86e1fd1f61d55dd3', 'South', 'South, Odessa, TX 79763, USA', NULL, NULL, '31.7592035,-102.5379907', 31.759205, -102.537994, 'route', 'maps/raw/places/staticmap/location=31.7592035,-102.5379907&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.7592035,-102.5379907&format=gif'),
(38, '5e803712', '56510b721e03619dfc91d4d024fc95c9', 'Calle S', 'Calle S, Caborca, Son., Mexico', NULL, NULL, '30.7169152,-112.1684613', 30.716915, -112.168465, 'route', 'maps/raw/places/staticmap/location=30.7169152,-112.1684613&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7169152,-112.1684613&format=gif'),
(39, 'd9ac3fcd', 'a473772d6c1d9b49975fde922e4755cf', 'South', 'Cimarron National Grassland, South, Richfield, KS 67953, USA', NULL, NULL, '37.2288742,-101.8457745', 37.228874, -101.845772, 'route', 'maps/raw/places/staticmap/location=37.2288742,-101.8457745&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.2288742,-101.8457745&format=gif'),
(40, '07f3058a', 'ad5bbb09ce50dc8e4c9b5addb0cc16b5', 'South', 'South, Big Lake, TX 76932, USA', NULL, NULL, '31.1402623,-101.6078662', 31.140263, -101.607864, 'route', 'maps/raw/places/staticmap/location=31.1402623,-101.6078662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.1402623,-101.6078662&format=gif'),
(41, '7d55f190', '226cad256751a3de488aeec709793042', 'S', 'Rua Tenente Gomes Ribeiro, 212 - Vila Clementino - Vila Clementino, SÃ£o Paulo - SP, 04038-040, Brazil', NULL, NULL, '-23.599136,-46.637672', -23.599136, -46.637672, 'point_of_interest', 'maps/raw/places/staticmap/location=-23.599136,-46.637672&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-23.599136,-46.637672&format=gif'),
(42, '79015431', '35701d3ecee9d7c8cc638e83dba4a50f', 'Les Rencontres de la Photographie', '34 Rue du Docteur Fanton, 13200 Arles, France', NULL, NULL, '43.678377,4.625765', 43.678375, 4.625765, 'establishment', 'maps/raw/places/staticmap/location=43.678377,4.625765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.678377,4.625765&format=gif'),
(43, 'dc1b7fad', 'aa8126d24579abfd26d21ea4afaeeb84', 'Council of State', '1 Place du Palais Royal, 75001 Paris, France', NULL, NULL, '48.863189,2.337116', 48.863190, 2.337116, 'establishment', 'maps/raw/places/staticmap/location=48.863189,2.337116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.863189,2.337116&format=gif'),
(44, '3876da7c', 'd9ba2866fcfb8ed2b1ec40d486664c5a', 'The National D-Day Memorial', '3 Overlord Circle, Bedford, VA 24523, United States', NULL, NULL, '37.330489,-79.535929', 37.330490, -79.535927, 'park', 'maps/raw/places/staticmap/location=37.330489,-79.535929&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.330489,-79.535929&format=gif'),
(45, 'a93e0e83', '8a64b6c22b6581efade66010fd9e2ba7', 'Teatro Nacional D. Maria II', 'PraÃ§a Dom Pedro IV, 1100-201 Lisboa, Portugal', NULL, NULL, '38.7148,-9.139787', 38.714802, -9.139787, 'establishment', 'maps/raw/places/staticmap/location=38.7148,-9.139787&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7148,-9.139787&format=gif'),
(46, 'ff8fc0c6', '023a67e9fc4efd964631ce298701cbf7', 'The D Las Vegas', '301 Fremont Street, Las Vegas, NV 89101, United States', NULL, NULL, '36.169278,-115.14291', 36.169277, -115.142906, 'bar', 'maps/raw/places/staticmap/location=36.169278,-115.14291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.169278,-115.14291&format=gif'),
(47, 'c7a84f5a', '3a41a0f07d1e0ef7c6b47ca839f170d5', 'Franklin D. Roosevelt Presidential Library and Museum', '4079 Albany Post Road, Hyde Park, NY 12538, United States', NULL, NULL, '41.768696,-73.934059', 41.768696, -73.934059, 'museum', 'maps/raw/places/staticmap/location=41.768696,-73.934059&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.768696,-73.934059&format=gif'),
(48, '9f6efe54', 'a5846bd18ada5e9bfb282094e716a11d', 'Dwight D. Eisenhower Presidential Library &amp; Museum', '200 South East 4th Street, Abilene, KS 67410, United States', NULL, NULL, '38.911627,-97.21217', 38.911629, -97.212173, 'library', 'maps/raw/places/staticmap/location=38.911627,-97.21217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.911627,-97.21217&format=gif'),
(49, '26eb76b7', 'bf0e807c2d40f3e70d1389f4f5fda45a', 'Utrecht', 'Utrecht, Netherlands', NULL, NULL, '52.119508,5.1943653', 52.119507, 5.194365, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.119508,5.1943653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.119508,5.1943653&format=gif'),
(50, '9070c93c', '0691ba740f1f21afd300ec3a977c4336', 'Bac Lieu', 'Bac Lieu, Vietnam', NULL, NULL, '9.2515555,105.5136472', 9.251556, 105.513649, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.2515555,105.5136472&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2515555,105.5136472&format=gif'),
(51, 'c24ec0d3', '96084bf2f12f54b1c4b0fc4f72497a5b', 'Ca Mau', 'Ca Mau, Vietnam', NULL, NULL, '8.9624099,105.1258955', 8.962410, 105.125893, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=8.9624099,105.1258955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.9624099,105.1258955&format=gif'),
(52, '4daeb052', 'ba8c592b3f3c35fdcc36ce2db1485d8a', 'Cali', 'Cali, Cali, Valle del Cauca, Colombia', NULL, NULL, '3.4516467,-76.5319854', 3.451647, -76.531982, 'locality', 'maps/raw/places/staticmap/location=3.4516467,-76.5319854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.4516467,-76.5319854&format=gif'),
(53, '1e0a30db', '68aa6ed5392de78753242a062294bb8e', 'Ganh Hao', '3 Tráº§n PhÃº, Ward 5, tp. VÅ©ng TÃ u, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '10.359632,107.060172', 10.359632, 107.060173, 'restaurant', 'maps/raw/places/staticmap/location=10.359632,107.060172&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.359632,107.060172&format=gif'),
(54, '4310ae66', '20ae5cbfe34fbcd653209a9ceb22e96e', 'Ubtt GÃ nh HÃ o', 'Khu Vá»±c 3 GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(55, 'd49b1ffe', 'f49cdd6dde1c216df72487e36f6b94e4', 'Chá»£ GÃ nh HÃ o', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.02584,105.419617', 9.025840, 105.419617, 'establishment', 'maps/raw/places/staticmap/location=9.02584,105.419617&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.02584,105.419617&format=gif'),
(56, 'd51be2bd', '7bdc8ce93be8b66b0e784b46daa5f6ff', 'NHÃ€ HÃ€NG GÃ€NH HÃ€O SÃ€I GÃ’N', '4 Há»“ Huáº¥n Nghiá»‡p, Báº¿n NghÃ©, Q1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.774563,106.705675', 10.774563, 106.705673, 'restaurant', 'maps/raw/places/staticmap/location=10.774563,106.705675&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.774563,106.705675&format=gif'),
(57, '9ee3633c', '2b16d41e3d7d18346adf8adc93aaf15e', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o B', 'Phan Ngá»c Hiá»ƒn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.031467,105.420068', 9.031467, 105.420067, 'establishment', 'maps/raw/places/staticmap/location=9.031467,105.420068&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.031467,105.420068&format=gif'),
(58, 'e40f1d3c', '00c3dedeceb63dd59fa575f4137c56c1', 'Tráº¡m XÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iii T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(59, 'a3bb8026', 'dfed1d01b21be1e22d97ff649282e522', 'TrÆ°á»ng Thpt GÃ nh HÃ o', 'Ngá»c Äiá»n, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.026709,105.422004', 9.026709, 105.422005, 'establishment', 'maps/raw/places/staticmap/location=9.026709,105.422004&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.026709,105.422004&format=gif'),
(60, '47592f33', '26b9087c36710f10fdc6da7121c3d057', 'CÃ´ng An Thá»‹ Tráº¥n GÃ nh HÃ o', 'GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.027398,105.418743', 9.027398, 105.418739, 'establishment', 'maps/raw/places/staticmap/location=9.027398,105.418743&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.027398,105.418743&format=gif'),
(61, '38dc511b', 'b9821052e4a5f98ed891b6f87ccd64a7', 'BÆ°u Äiá»‡n GÃ nh HÃ o', 'Khu Vá»±c 1 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(62, '88218a99', 'f300900c2c6c1ffa63d0cc922e046101', 'B Q L X D Cáº£ng CÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iv T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(63, 'b52d423b', '6906213962b8814624151ab906f19650', 'cÃ´ng ty TNHH TÃ¢n GÃ nh HÃ o', 'áº¤p 4, GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', NULL, NULL, '9.038364,105.419912', 9.038364, 105.419914, 'store', 'maps/raw/places/staticmap/location=9.038364,105.419912&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.038364,105.419912&format=gif'),
(64, 'ecec0dc4', 'da4a4653692e560fd495d7ee142eeaed', 'TrÆ°á»ng Máº§m Non GÃ nh HÃ o', '1 ThÃ¡ng 3, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.034476,105.423308', 9.034476, 105.423309, 'establishment', 'maps/raw/places/staticmap/location=9.034476,105.423308&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034476,105.423308&format=gif'),
(65, '10fdda36', '1d0a4289f2ef8fab94932afcf43d5b4f', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o A', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.028918,105.430523', 9.028918, 105.430527, 'establishment', 'maps/raw/places/staticmap/location=9.028918,105.430523&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.028918,105.430523&format=gif'),
(66, '97142f86', 'c591e62d8f8b6ca733321f8299177546', 'TrÆ°á»ng Thcs GÃ nh HÃ o', 'GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.035806,105.435297', 9.035806, 105.435295, 'establishment', 'maps/raw/places/staticmap/location=9.035806,105.435297&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.035806,105.435297&format=gif'),
(67, '8f57c6a9', 'cb55bff0e4459dffaff78ae0ba35f708', 'Tráº¡m Äiá»‡n Lá»±c GÃ nh HÃ o', 'Khu Vá»±c 3 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(68, '1ffa437d', 'ab1b84a28d58d8f47cfc20fec28b8991', 'FV Hospital', '6 Nguyá»…n LÆ°Æ¡ng Báº±ng, TÃ¢n PhÃº, 7, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.732592,106.718488', 10.732592, 106.718491, 'hospital', 'maps/raw/places/staticmap/location=10.732592,106.718488&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.732592,106.718488&format=gif'),
(69, '64da46af', 'dcdc76e39c2473e0e59c82271e8af65c', 'FV SA - Griferia de Alta Tecnologia', 'Bernardo de Irigoyen 1053, B1604AFC Florida, Buenos Aires, Argentina', NULL, NULL, '-34.538938,-58.503842', -34.538937, -58.503841, 'establishment', 'maps/raw/places/staticmap/location=-34.538938,-58.503842&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.538938,-58.503842&format=gif'),
(70, 'd943725e', '48d01d1da21ee946f05ddfece9379600', 'FV Foods', '1125 Dundas Street East, Mississauga, ON L4Y 2C3, Canada', NULL, NULL, '43.60393,-79.590797', 43.603931, -79.590797, 'bakery', 'maps/raw/places/staticmap/location=43.60393,-79.590797&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.60393,-79.590797&format=gif'),
(71, 'd827ef97', '844d9f90478733e9bef47eb5555f943a', 'FV Ravensburg', 'BrÃ¼hlstraÃŸe 17, 88212 Ravensburg, Germany', NULL, NULL, '47.788131,9.603389', 47.788132, 9.603389, 'establishment', 'maps/raw/places/staticmap/location=47.788131,9.603389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.788131,9.603389&format=gif'),
(72, 'a4daf9ce', '731d10cc18c238dd0c4b669703db1c05', 'Franz Viegener FV', 'Pichincha, Ecuador', NULL, NULL, '-0.351287,-78.463647', -0.351287, -78.463646, 'establishment', 'maps/raw/places/staticmap/location=-0.351287,-78.463647&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.351287,-78.463647&format=gif'),
(73, '589cdf6d', 'a8f0077e53b04b7bf5d1a61453fef1e7', 'FV Immo', '10 Avenue Jehan de Beauce, 28000 Chartres, France', NULL, NULL, '48.447703,1.482693', 48.447704, 1.482693, 'real_estate_agency', 'maps/raw/places/staticmap/location=48.447703,1.482693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.447703,1.482693&format=gif'),
(74, 'c54f75c3', '2f94aac0a71488ac92a9008b5266fb5b', 'FV S.A.', 'Urquiza 2265, X5001FTK CÃ³rdoba, CÃ³rdoba Province, Argentina', NULL, NULL, '-31.38914,-64.185359', -31.389139, -64.185356, 'establishment', 'maps/raw/places/staticmap/location=-31.38914,-64.185359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-31.38914,-64.185359&format=gif'),
(75, '20b1e770', '5fae3053d5ab8dde1359c5e9a463268f', 'Fv Foods', '549 St Clair Av W, Toronto, ON M6C 1A3, Canada', NULL, NULL, '43.682486,-79.420649', 43.682487, -79.420647, 'bakery', 'maps/raw/places/staticmap/location=43.682486,-79.420649&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.682486,-79.420649&format=gif'),
(76, 'cfaf3b75', '6d560d594fd1d3fafca3e646e89c75e3', 'PhÃ²ng KhÃ¡m Äa Khoa FV SÃ i GÃ²n', '45 VÃµ Thá»‹ SÃ¡u, P. Äa Kao, Q. 1, Tp. Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.790773,106.694874', 10.790773, 106.694878, 'hospital', 'maps/raw/places/staticmap/location=10.790773,106.694874&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.790773,106.694874&format=gif'),
(77, 'bbf9afaa', '33ebb73f19a4f163b9b304672eb6352d', 'fv', 'MaipÃº 235, 5500 Mendoza, Mendoza, Argentina', NULL, NULL, '-32.876583,-68.833015', -32.876583, -68.833015, 'establishment', 'maps/raw/places/staticmap/location=-32.876583,-68.833015&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-32.876583,-68.833015&format=gif'),
(78, '088843f1', 'e83a93efba9db07203045da7d58c2813', 'Merle &amp; Brown PC', '90 Broad Street # 2201, New York, NY 10004, United States', NULL, NULL, '40.703759,-74.01182', 40.703758, -74.011818, 'lawyer', 'maps/raw/places/staticmap/location=40.703759,-74.01182&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.703759,-74.01182&format=gif'),
(79, '39d4f1ab', '10c4c354e21409c0b18d5b9a9e09edd4', 'FV Plast, a.s.', 'KozovazskÃ¡ 1049/3, 250 88 ÄŒelÃ¡kovice, Czech Republic', NULL, NULL, '50.157455,14.754981', 50.157455, 14.754981, 'store', 'maps/raw/places/staticmap/location=50.157455,14.754981&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.157455,14.754981&format=gif'),
(80, 'a3f61884', 'f56ed76d0b2513dee460181e3055e38b', '1. FC SaarbrÃ¼cken', 'Berliner Promenade 12, 66111 SaarbrÃ¼cken, Germany', NULL, NULL, '49.23555,6.99275', 49.235550, 6.992750, 'establishment', 'maps/raw/places/staticmap/location=49.23555,6.99275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.23555,6.99275&format=gif'),
(81, '032dd6f9', 'ac13b6fa8531845ea4b16722466d86a8', 'F &amp; V', 'Kondapur, Hyderabad, Andhra Pradesh 500084, India', NULL, NULL, '17.458218,78.364684', 17.458218, 78.364685, 'electronics_store', 'maps/raw/places/staticmap/location=17.458218,78.364684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.458218,78.364684&format=gif'),
(82, '00b38711', '1e91ed330b68bb87f05a867481dae7a8', 'Jugend- und Sozialzentrum Aue e.V.', 'Postplatz 3, 08280 Aue, Germany', NULL, NULL, '50.58743,12.70025', 50.587429, 12.700250, 'establishment', 'maps/raw/places/staticmap/location=50.58743,12.70025&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.58743,12.70025&format=gif'),
(83, '66e4188c', '4176fb90653bc4bba8b1fcd9e285c3bf', 'fv', 'Lindenallee 70B, 20259 Hamburg, Germany', NULL, NULL, '53.56902,9.95911', 53.569019, 9.959110, 'establishment', 'maps/raw/places/staticmap/location=53.56902,9.95911&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.56902,9.95911&format=gif'),
(84, '43252b99', 'fc0de9382c280cbfb01c469f5e223a40', 'BMR Lalonde F V Inc', '25 338 Rte, Les Coteaux, QC J7X 1A2, Canada', NULL, NULL, '45.260426,-74.202035', 45.260426, -74.202034, 'hardware_store', 'maps/raw/places/staticmap/location=45.260426,-74.202035&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.260426,-74.202035&format=gif'),
(85, '7d01d2f4', 'd3fd79d532532b99732886fa279c37a4', 'Carpet Hut by F V Woolard', '5719 Arrowhead Drive, Virginia Beach, VA 23462, United States', NULL, NULL, '36.839782,-76.184006', 36.839783, -76.184006, 'home_goods_store', 'maps/raw/places/staticmap/location=36.839782,-76.184006&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.839782,-76.184006&format=gif'),
(86, '03adba18', '3d08adbc16d6fbe21ecefb0603912912', 'Cervantes', 'Calle de Lepanto, 6, 03500 Benidorm, Alicante, Spain', NULL, NULL, '38.538985,-0.120945', 38.538986, -0.120945, 'real_estate_agency', 'maps/raw/places/staticmap/location=38.538985,-0.120945&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.538985,-0.120945&format=gif'),
(87, '2979414f', 'b2131baa60ed252080ae6f5c739d465c', 'GriferÃ­a FV', 'Mariano Acha 1407, C1430DUC CABA, Argentina', NULL, NULL, '-34.579484,-58.472095', -34.579483, -58.472095, 'hardware_store', 'maps/raw/places/staticmap/location=-34.579484,-58.472095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.579484,-58.472095&format=gif'),
(88, '90cd22b9', 'c0e6ab18868fbafc9cf3992f84e22dff', 'HCM Australia', '1/56 Clarence Street, Sydney NSW 2000, Australia', NULL, NULL, '-33.866188,151.205077', -33.866188, 151.205078, 'establishment', 'maps/raw/places/staticmap/location=-33.866188,151.205077&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-33.866188,151.205077&format=gif'),
(89, '93f88678', '072418cf8fdce87e623d3078ba790317', 'HCM Contractors Inc', '235038 Wrangler Road, Rocky View County, AB T1X 0K3, Canada', NULL, NULL, '50.997212,-113.893312', 50.997211, -113.893311, 'general_contractor', 'maps/raw/places/staticmap/location=50.997212,-113.893312&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.997212,-113.893312&format=gif'),
(90, '564fece5', 'aeba089aa10fb4428a1d35a418b9cea4', 'HCM Kinzel GmbH', 'Felix-Wankel-StraÃŸe 9/1, 74374 Zaberfeld, Germany', NULL, NULL, '49.06255,8.93288', 49.062550, 8.932880, 'store', 'maps/raw/places/staticmap/location=49.06255,8.93288&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.06255,8.93288&format=gif'),
(91, '06417aaa', 'cee6e78d65cb0365af379c883e5d53f8', 'HCM Computer GmbH', 'Nadorster StraÃŸe 162, 26123 Oldenburg, Germany', NULL, NULL, '53.15786,8.22147', 53.157860, 8.221470, 'establishment', 'maps/raw/places/staticmap/location=53.15786,8.22147&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.15786,8.22147&format=gif'),
(92, 'db22fd5a', 'a246a0f6fbb0ef759513efd4df9a50d2', 'Äáº¡i Há»c Giao ThÃ´ng Váº­n Táº£i TP HCM - CÆ¡ sá»Ÿ 3', '70 TÃ´ KÃ½, TÃ¢n ChÃ¡nh Hiá»‡p, 12, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.865644,106.618221', 10.865644, 106.618217, 'establishment', 'maps/raw/places/staticmap/location=10.865644,106.618221&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.865644,106.618221&format=gif'),
(93, '6dd39e6e', '71c7a2e0084f9403a60b566c916be924', 'Hospital Central de Maracay', 'Avenidas Sucre, Maracay 2102, Venezuela', NULL, NULL, '10.274207,-67.589852', 10.274207, -67.589851, 'hospital', 'maps/raw/places/staticmap/location=10.274207,-67.589852&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.274207,-67.589852&format=gif'),
(94, '77461faa', '77ecc9ee85bfa369f6e3c4704edfc908', 'Health Care Management', '460 Briarwood Drive #410, Jackson, MS 39206, United States', NULL, NULL, '32.380911,-90.149715', 32.380913, -90.149712, 'establishment', 'maps/raw/places/staticmap/location=32.380911,-90.149715&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.380911,-90.149715&format=gif'),
(95, '69dc2021', 'a5f57c73dcb0ffa0e1dec05775133f3c', 'HCM', '22 West Road, Baltimore, MD 21204, United States', NULL, NULL, '39.411983,-76.613993', 39.411983, -76.613991, 'establishment', 'maps/raw/places/staticmap/location=39.411983,-76.613993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.411983,-76.613993&format=gif'),
(96, 'd35bce0b', '8c90996b64cb2eeda5c095c183275088', 'ï¼ˆæ ªï¼‰ï¼¨ï¼£ï¼­', 'Japan, ã€’106-0044 Tokyo, Minato, Higashiazabu, 1 Chomeâˆ’28âˆ’13, æ—¥é€šå•†äº‹éº»å¸ƒãƒ“ãƒ« 5F', NULL, NULL, '35.655298,139.743446', 35.655296, 139.743439, 'establishment', 'maps/raw/places/staticmap/location=35.655298,139.743446&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.655298,139.743446&format=gif'),
(97, '471a84de', 'cdc7406447d37ab6236d310a17f5e93a', 'Banking University HCM City', '56 HoÃ ng Diá»‡u 2, Linh Chiá»ƒu, Quáº­n Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.857561,106.763582', 10.857561, 106.763580, 'university', 'maps/raw/places/staticmap/location=10.857561,106.763582&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.857561,106.763582&format=gif'),
(98, '2a46d60e', 'c543e27ddafe594cd9a413b4d458e296', 'Ho Chi Minh Museum', '01 Nguyá»…n Táº¥t ThÃ nh, phÆ°á»ng 12, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.768271,106.706804', 10.768271, 106.706802, 'museum', 'maps/raw/places/staticmap/location=10.768271,106.706804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.768271,106.706804&format=gif'),
(99, '8ebacccd', 'ba4ac53aabf30173bcb58d243a0e485a', 'University of Economics Ho Chi Minh City', '59C Nguyá»…n ÄÃ¬nh Chiá»ƒu, 6th Ward, Quáº­n 3, Ho Chi Minh City, Vietnam', NULL, NULL, '10.783215,106.694749', 10.783215, 106.694748, 'university', 'maps/raw/places/staticmap/location=10.783215,106.694749&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.783215,106.694749&format=gif'),
(100, '68e06b5c', '8492b257e3b11ea93141f66528069fd8', 'HCM', '545 Marriott Drive # 600, Nashville, TN 37214, United States', NULL, NULL, '36.149666,-86.689324', 36.149666, -86.689323, 'establishment', 'maps/raw/places/staticmap/location=36.149666,-86.689324&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.149666,-86.689324&format=gif'),
(101, '68f87585', '0ce1620118d9a619e65cb703e8b15af5', 'HCM', '668 North 44th Street # 300, Phoenix, AZ 85008, United States', NULL, NULL, '33.455207,-111.989078', 33.455208, -111.989075, 'establishment', 'maps/raw/places/staticmap/location=33.455207,-111.989078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.455207,-111.989078&format=gif'),
(102, '3a85225b', 'acee4b7b7216a3f0b5c5fd0d494df732', 'Maputo Central Hospital', 'Avenida Eduardo Mondlane, Maputo, Mozambique', NULL, NULL, '-25.97018,32.58817', -25.970181, 32.588169, 'hospital', 'maps/raw/places/staticmap/location=-25.97018,32.58817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-25.97018,32.58817&format=gif'),
(103, '31ef9df1', '9852b7cbcd73f8eb492cf70df463a4c2', 'University of Technical Education Ho Chi Minh City', '01 VÃµ VÄƒn NgÃ¢n, Linh Chiá»ƒu, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.84994,106.771688', 10.849940, 106.771690, 'establishment', 'maps/raw/places/staticmap/location=10.84994,106.771688&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.84994,106.771688&format=gif'),
(104, '88ea07a7', '8d99922616c2c8ec4253bf794de9ee63', 'Ho Chi Minh City University of Culture', '51 Quá»‘c HÆ°Æ¡ng, Tháº£o Äiá»n, Quáº­n 2, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.80559,106.73116', 10.805590, 106.731163, 'university', 'maps/raw/places/staticmap/location=10.80559,106.73116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.80559,106.73116&format=gif'),
(105, 'e29d6430', '7bd4a85bb8cacfac34cd9cd8949c0854', 'HCMC University of Pedagogy', '280 An DÆ°Æ¡ng VÆ°Æ¡ng, phÆ°á»ng 4, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh 700000, Vietnam', NULL, NULL, '10.762176,106.682418', 10.762176, 106.682419, 'university', 'maps/raw/places/staticmap/location=10.762176,106.682418&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.762176,106.682418&format=gif'),
(106, '3f282442', '10f69a1b96272a39ab39f67792a3e833', 'Nong Lam University', 'KP6 QL1A, ÄÃ´ng HÃ²a, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.872103,106.792817', 10.872103, 106.792816, 'university', 'maps/raw/places/staticmap/location=10.872103,106.792817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.872103,106.792817&format=gif'),
(107, 'e29aa18a', '27819131e1b960a37deeafea11e70e46', 'HCM Strategists LLC', '1156 15th Street Northwest #850, Washington, DC 20005, United States', NULL, NULL, '38.905368,-77.034933', 38.905369, -77.034935, 'establishment', 'maps/raw/places/staticmap/location=38.905368,-77.034933&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905368,-77.034933&format=gif'),
(108, '9d269217', 'c26b903cf110700dc5966bf51a620b78', 'Dingcheng', 'Dingcheng, Changde, Hunan, China', NULL, NULL, '29.018593,111.680783', 29.018593, 111.680786, 'sublocality_level_1', 'maps/raw/places/staticmap/location=29.018593,111.680783&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.018593,111.680783&format=gif'),
(109, 'a73090be', '4614700fa7a80c08d3f9d8847ba323c5', 'Trung TÃ¢m Ytáº¿ XÃ£ Äá»‹nh ThÃ nh', 'áº¤p NÃºi Äáº¥t Äá»‹nh ThÃ nh Huyá»‡n Dáº§u Tiáº¿ng, Binh Duong, Vietnam', NULL, NULL, '11.305045,106.464146', 11.305045, 106.464149, 'establishment', 'maps/raw/places/staticmap/location=11.305045,106.464146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.305045,106.464146&format=gif'),
(110, '3a3aff40', 'fab519a4acd5baaf1cef7c67a6f22f16', 'CÃ´ng an xÃ£ Äá»‹nh ThÃ nh', 'TL 943, Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', NULL, NULL, '10.30676,105.303103', 10.306760, 105.303101, 'establishment', 'maps/raw/places/staticmap/location=10.30676,105.303103&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30676,105.303103&format=gif'),
(111, '21820bcc', '2a32d2644936c95633dd112cf16de2ce', 'Tráº¡m y táº¿ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', NULL, NULL, '10.329509,105.295603', 10.329509, 105.295601, 'hospital', 'maps/raw/places/staticmap/location=10.329509,105.295603&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.329509,105.295603&format=gif'),
(112, 'ee1ea59d', 'd85c3055fcbdb6c0225f06937c2125da', 'Tráº¡i Giam Äá»‹nh ThÃ nh', 'Ä‘á»‹nh thÃ nh Huyá»‡n Thoáº¡i SÆ¡n, An Giang, Vietnam', NULL, NULL, '10.305778,105.301411', 10.305778, 105.301414, 'establishment', 'maps/raw/places/staticmap/location=10.305778,105.301411&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.305778,105.301411&format=gif'),
(113, 'fe08c446', '2c428a04a7f180eb18e3a76d447e9679', 'TrÆ°á»ng Thcs Äá»‹nh ThÃ nh', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.118412,105.30021', 9.118412, 105.300209, 'establishment', 'maps/raw/places/staticmap/location=9.118412,105.30021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.118412,105.30021&format=gif'),
(114, '5aa63eca', '37c6b0174eee1442a08506362ef2ea12', 'TrÆ°á»ng Thpt Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.120604,105.28423', 9.120604, 105.284233, 'establishment', 'maps/raw/places/staticmap/location=9.120604,105.28423&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.120604,105.28423&format=gif'),
(115, '6ff3c2c2', 'a78f9ececb2244a0e2779e064949815d', 'Tráº¡i Sáº£n Xuáº¥t LÃºa Giá»‘ng Äá»‹nh ThÃ nh', 'áº¤p HÃ²a TÃ¢n, XÃ£ Äá»‹nh ThÃ nh, Huyá»‡n Thoáº¡i SÆ¡n, Tá»‰nh An Giang, Vietnam', NULL, NULL, '10.309609,105.299329', 10.309609, 105.299332, 'establishment', 'maps/raw/places/staticmap/location=10.309609,105.299329&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.309609,105.299329&format=gif'),
(116, '0eb5a64f', '77f51f6ca367a0bc2540aef2f9b3f716', 'Internet BÄ‘vh XÃ£ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.132306,105.295558', 9.132306, 105.295555, 'establishment', 'maps/raw/places/staticmap/location=9.132306,105.295558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.132306,105.295558&format=gif'),
(117, '4b1f3ad9', 'f237aadfef7354cebce4d71438c227d1', 'TrÆ°á»ng Tiá»ƒu Há»c Äá»‹nh ThÃ nh B', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh A, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.127961,105.264978', 9.127961, 105.264977, 'establishment', 'maps/raw/places/staticmap/location=9.127961,105.264978&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.127961,105.264978&format=gif'),
(118, 'e1484f08', 'f2ddf08a6fc1ceaf5be3202e8fff27b4', 'Tac Ct', 'Tac Ct, Manassas, VA 20109, USA', NULL, NULL, '38.7787292,-77.5515056', 38.778728, -77.551506, 'route', 'maps/raw/places/staticmap/location=38.7787292,-77.5515056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7787292,-77.5515056&format=gif'),
(119, '4a8f5c90', 'be9af47bbb0808e8a6606f3c90ad4590', 'Táº¯c VÃ¢n', 'Táº¯c VÃ¢n, tp. CÃ  Mau, Ca Mau, Vietnam', NULL, NULL, '9.1662734,105.2641108', 9.166273, 105.264114, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.1662734,105.2641108&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.1662734,105.2641108&format=gif'),
(120, '41dd1c29', '93a77be2b0405e1586766f1199602f93', 'New Mec-ComÃ©rcio e IndÃºstria de Equipamentos', 'Avenida Tenente Coronel Muniz de AragÃ£o, 1710 - GardÃªnia Azul, Rio de Janeiro - RJ, 22765-000, Brazil', NULL, NULL, '-22.956939,-43.350614', -22.956940, -43.350613, 'establishment', 'maps/raw/places/staticmap/location=-22.956939,-43.350614&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.956939,-43.350614&format=gif'),
(121, 'becbcdaa', 'a0cc46b0066321f0b6279b1df5b84199', 'New Mec S.r.l.', 'Via Piave, 61, Cimadolmo TV, Italy', NULL, NULL, '45.796243,12.336353', 45.796242, 12.336353, 'establishment', 'maps/raw/places/staticmap/location=45.796243,12.336353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.796243,12.336353&format=gif'),
(122, 'a7a07125', '419e4b997ef89235a155a95f0a2de35e', 'New Mec Enterprise', '7 Townshend Road, Singapore 207605', NULL, NULL, '1.307756,103.858331', 1.307756, 103.858330, 'establishment', 'maps/raw/places/staticmap/location=1.307756,103.858331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.307756,103.858331&format=gif'),
(123, 'ad7d82a0', '3064b1d8f5e5cb70c9b9ae85d008e431', 'Newmec S.r.l.', '38 Via Enzo Ferrari, Isola Vicentina, Vi 36033, Italy', NULL, NULL, '45.6313,11.45546', 45.631302, 11.455460, 'establishment', 'maps/raw/places/staticmap/location=45.6313,11.45546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.6313,11.45546&format=gif'),
(124, '06896fb9', 'ce599b20619e1439f8a4189b39f44fe8', 'NC MEC USA Inc', '3150 Verona Avenue, Buford, GA 30518, United States', NULL, NULL, '34.132222,-83.969516', 34.132221, -83.969513, 'establishment', 'maps/raw/places/staticmap/location=34.132222,-83.969516&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.132222,-83.969516&format=gif'),
(125, '060a1262', '9ac84194d6eb084474b8c09a0c8854c6', 'MEC Head Office', '1077 Great Northern Way, Vancouver, BC V5T 1E1, Canada', NULL, NULL, '49.266089,-123.082763', 49.266090, -123.082764, 'establishment', 'maps/raw/places/staticmap/location=49.266089,-123.082763&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.266089,-123.082763&format=gif'),
(126, 'bdeeaa1f', '96311aaf41de3df90c4ea03c0dedfe31', 'MEC Newcastle - Electrician', 'Swalwell, Newcastle upon Tyne, Newcastle, United Kingdom', NULL, NULL, '54.95511,-1.690093', 54.955109, -1.690093, 'electrician', 'maps/raw/places/staticmap/location=54.95511,-1.690093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C54.95511,-1.690093&format=gif'),
(127, '97c6200f', 'f858a4ce9ebbbd8b008a367ab06f7996', 'Peugeot - Tri.Mec. Di Trincone A. E Trincone S. &amp; C.', '3 Arco Felice Vecchio, Pozzuoli, NA 80078, Italy', NULL, NULL, '40.84521,14.06737', 40.845211, 14.067370, 'car_dealer', 'maps/raw/places/staticmap/location=40.84521,14.06737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.84521,14.06737&format=gif'),
(128, '3b296431', '8219d0a0e79f27edd4efd2a0aa24b012', 'Nord Mec S.r.l.', 'Via Noalese, 75, 31100 Treviso TV, Italy', NULL, NULL, '45.65416,12.199863', 45.654160, 12.199863, 'car_dealer', 'maps/raw/places/staticmap/location=45.65416,12.199863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.65416,12.199863&format=gif'),
(129, 'f4c23dca', 'c70d46df4925484f7205389f6a45d2d1', 'Auto.Mec. Di Scaligina F. E Gasparre F. Snc', 'Via Ferrara, 74016 Massafra TA, Italy', NULL, NULL, '40.581587,17.111316', 40.581589, 17.111317, 'car_dealer', 'maps/raw/places/staticmap/location=40.581587,17.111316&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.581587,17.111316&format=gif'),
(130, 'c00ccf8c', '832aa7b1838cad902a5db5daed6442de', 'G.m.s. General Mec System Llc, Albany, New York', 'Via Ligornetto 15, 6854 S. Pietro, Switzerland', NULL, NULL, '45.856636,8.941396', 45.856636, 8.941396, 'establishment', 'maps/raw/places/staticmap/location=45.856636,8.941396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.856636,8.941396&format=gif'),
(131, '2f3a958d', 'ca18742d43f684daac28dd976383db24', 'MEC', '825 7th Avenue, New York, NY 10019, United States', NULL, NULL, '40.763023,-73.981064', 40.763023, -73.981064, 'establishment', 'maps/raw/places/staticmap/location=40.763023,-73.981064&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.763023,-73.981064&format=gif'),
(132, '1be8a4a6', 'ccd737062fbf998df3b00310f1c9df64', 'Mediaedge:Cia Portugal', 'Rua Dom JoÃ£o V 24, 1250-091 Lisboa, Portugal', NULL, NULL, '38.720575,-9.159455', 38.720573, -9.159455, 'establishment', 'maps/raw/places/staticmap/location=38.720575,-9.159455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.720575,-9.159455&format=gif'),
(133, '60a63d37', 'dfcac7185e811624497303eefeb85e32', 'MEC: Active Engagement', 'Avinguda Diagonal, 605, 08028 Barcelona, Barcelona, Spain', NULL, NULL, '41.388883,2.129107', 41.388882, 2.129107, 'establishment', 'maps/raw/places/staticmap/location=41.388883,2.129107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.388883,2.129107&format=gif'),
(134, '4160224d', 'de94f91f6ff98f5ce88eb151e037fefa', 'MEC Mining', '22/215 Adelaide Street, Brisbane QLD 4000, Australia', NULL, NULL, '-27.467441,153.026993', -27.467442, 153.026993, 'establishment', 'maps/raw/places/staticmap/location=-27.467441,153.026993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-27.467441,153.026993&format=gif'),
(135, '27098944', '3a67bd7f23d00105d90b3544a3561ae7', 'MEC Malaysia', 'Jalan Damanlela, Pusat Bandar Damansara, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', NULL, NULL, '3.146837,101.662164', 3.146837, 101.662163, 'establishment', 'maps/raw/places/staticmap/location=3.146837,101.662164&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.146837,101.662164&format=gif'),
(136, 'fd2104ab', '2997fff148d8dae397e58e4fa87f97e7', 'MEC', 'Rue PrÃ©vinaire 64, 1070 Ville de Bruxelles, Belgium', NULL, NULL, '50.833886,4.321935', 50.833885, 4.321935, 'doctor', 'maps/raw/places/staticmap/location=50.833886,4.321935&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.833886,4.321935&format=gif'),
(137, 'ee9a4753', '330a51316a08ede1398c67509f1e69c8', 'MEC, Inc.', '221 McRand Court #100, Hagerstown, MD 21740, United States', NULL, NULL, '39.646741,-77.748709', 39.646740, -77.748711, 'electrician', 'maps/raw/places/staticmap/location=39.646741,-77.748709&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.646741,-77.748709&format=gif'),
(138, '03a11f07', 'dc3f168a9c634fbd94a17f542abfdfda', 'Mountain Equipment Co-op (MEC)', '6121 200 Street, Langley, BC V2Y, Canada', NULL, NULL, '49.113805,-122.671661', 49.113804, -122.671661, 'bicycle_store', 'maps/raw/places/staticmap/location=49.113805,-122.671661&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.113805,-122.671661&format=gif'),
(139, 'e7069cd2', 'b125c5245828bbd4017294ff9ccb86c8', 'New Mexico', 'New Mexico, USA', NULL, NULL, '34.5199402,-105.8700901', 34.519939, -105.870087, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=34.5199402,-105.8700901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.5199402,-105.8700901&format=gif'),
(140, 'b31481a3', '310f3c9ce4ee1897fa3c23a9a2129da7', 'Vinpearl Land Nha Trang', 'VÄ©nh NguyÃªn, Nha Trang, Khanh Hoa Province, Vietnam', NULL, NULL, '12.21728,109.241895', 12.217280, 109.241898, 'lodging', 'maps/raw/places/staticmap/location=12.21728,109.241895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.21728,109.241895&format=gif'),
(141, '064dddf3', 'eeea1ea64e3ca92d1cc10d1c83abca3e', 'HÃ²n Ngá»c Viá»‡t - Vinpearl Land', '7 Tráº§n PhÃº, tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', NULL, NULL, '12.216119,109.241223', 12.216119, 109.241226, 'restaurant', 'maps/raw/places/staticmap/location=12.216119,109.241223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.216119,109.241223&format=gif'),
(142, 'dc8dfb9a', '24beb9eab78c5f4c10beb14e050292f7', 'Vinpearl Luxury Nha Trang', 'Nha Trang, Khanh Hoa Province, Vietnam', NULL, NULL, '12.211558,109.243605', 12.211558, 109.243607, 'lodging', 'maps/raw/places/staticmap/location=12.211558,109.243605&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.211558,109.243605&format=gif'),
(143, '854fe8d3', '19b1e64871e4a68022a91e10366c61cf', 'Vinpearl Luxury Da Nang', 'TrÆ°á»ng Sa, HÃ²a Háº£i, NgÅ© HÃ nh SÆ¡n, ÄÃ  Náºµng, Vietnam', NULL, NULL, '16.007778,108.266107', 16.007778, 108.266106, 'lodging', 'maps/raw/places/staticmap/location=16.007778,108.266107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C16.007778,108.266107&format=gif'),
(144, 'bdd9f461', 'e170adb7cf3e92d4a22a7dd560dcfe98', 'CÃ´ng Ty Cp Du Lá»‹ch Tm Vinpearl', '72 LÃª ThÃ¡nh TÃ´n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.77771,106.702008', 10.777710, 106.702011, 'establishment', 'maps/raw/places/staticmap/location=10.77771,106.702008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.77771,106.702008&format=gif'),
(145, 'a562856d', '9c45d7ac66e8a87662636225bca309e4', 'Vinpearl Nail &amp; Spa', '20079 Stone Oak Parkway #1102, San Antonio, TX 78258, United States', NULL, NULL, '29.642657,-98.488919', 29.642656, -98.488922, 'beauty_salon', 'maps/raw/places/staticmap/location=29.642657,-98.488919&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.642657,-98.488919&format=gif'),
(146, 'da228937', 'd359cfd135685783714095b6496b3fc2', 'Vinpearl Golf Club', 'tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', NULL, NULL, '12.213053,109.257877', 12.213053, 109.257874, 'establishment', 'maps/raw/places/staticmap/location=12.213053,109.257877&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.213053,109.257877&format=gif'),
(147, '84f8f3fb', 'bd1544b7a8a0541ae948ab8412c77d10', 'Vinpearl', 'RaumerstraÃŸe 14A, 10437 Berlin, Germany', NULL, NULL, '52.542082,13.419868', 52.542084, 13.419868, 'restaurant', 'maps/raw/places/staticmap/location=52.542082,13.419868&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.542082,13.419868&format=gif'),
(148, '70037b1f', '4e5202d6a805e9efd58d7cd5144f79bb', 'Wild Beach Resort and Spa', 'Hon Tre Island, Vinh Nguyen Ward, tp. Nha Trang, ., Vietnam', NULL, NULL, '12.24689,109.196', 12.246890, 109.195999, 'lodging', 'maps/raw/places/staticmap/location=12.24689,109.196&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.24689,109.196&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(149, 'f93a1748', '4fc15cd7a610b715bd6bc18048ad8d83', 'Vinpearl Resort Phu Quoc', 'Bai Dai, Gach Dau, Phu Quoc, Kien Giang, Vietnam', NULL, NULL, '10.30675,103.86157', 10.306750, 103.861572, 'lodging', 'maps/raw/places/staticmap/location=10.30675,103.86157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30675,103.86157&format=gif'),
(150, 'd64c081b', '78ea94f6e0bcca4678eeb5af46cddfbe', 'vinpearl premium Phu Quoc', 'BÃ£i DÃ i, PhÃº Quá»‘c, KiÃªn Giang Kien Giang tá»‰nh KiÃªn Giang, GÃ nh Dáº§u, Kien Giang, tá»‰nh KiÃªn Giang, Vietnam', NULL, NULL, '10.34819,103.902799', 10.348190, 103.902802, 'real_estate_agency', 'maps/raw/places/staticmap/location=10.34819,103.902799&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.34819,103.902799&format=gif'),
(151, 'b38ccf8b', 'b030f8f39bea7010835ff2386700ffa6', 'Vinpearl Ice Rink', 'Khu Ä‘Ã´ thá»‹, 72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh Xuï¿¢n, HÃ  Ná»™i, Vietnam', NULL, NULL, '21.003493,105.815817', 21.003492, 105.815819, 'establishment', 'maps/raw/places/staticmap/location=21.003493,105.815817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.003493,105.815817&format=gif'),
(152, 'ae5dbe27', '1f2a2349b63e8a1643a7549648757802', 'Vinpearl Golf Club Sales Office', 'Táº§ng 4, TÃ²a NhÃ  Vincom Center, 72, ÄÆ°á»ng LÃª ThÃ¡nh TÃ´n, PhÆ°á»ng Báº¿n NghÃ©, Quáº­n 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.778342,106.701902', 10.778342, 106.701904, 'establishment', 'maps/raw/places/staticmap/location=10.778342,106.701902&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.778342,106.701902&format=gif'),
(153, 'a4157a1a', '98115adfd29e8efc177e99777555a7ea', 'Vinpearl Golf Club Sales Office', 'Khu ÄÃ´ Thá»‹ Sinh ThÃ¡i Vincom Village, PhÆ°á»ng Viá»‡t HÆ°ng, Quáº­n Long BiÃªn, HÃ  Ná»™i, Vietnam', NULL, NULL, '21.047808,105.91543', 21.047808, 105.915428, 'establishment', 'maps/raw/places/staticmap/location=21.047808,105.91543&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.047808,105.91543&format=gif'),
(154, 'd90903d0', '7070023b09b213d8d4ec3330238ef1fb', 'Vinpearl Water Park', '72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh XuÃ¢n, HÃ  Ná»™i, Vietnam', NULL, NULL, '21.002691,105.814658', 21.002691, 105.814659, 'amusement_park', 'maps/raw/places/staticmap/location=21.002691,105.814658&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.002691,105.814658&format=gif'),
(155, 'e4c2d839', '6526dc617b1b0ab30491ab5f6fed9e11', 'Vinpearl Resort Phu Quoc', 'BÃ£i DÃ i, Huyá»‡n, Cá»­a Cáº¡n-GÃ nh Dáº§u, GÃ nh Dáº§u, Phu Quoc District, tá»‰nh KiÃªn Giang, Vietnam', NULL, NULL, '10.33588,103.856896', 10.335880, 103.856895, 'lodging', 'maps/raw/places/staticmap/location=10.33588,103.856896&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.33588,103.856896&format=gif'),
(156, 'cc098f01', 'f43532e968e4c72c4f303cc9959e4ea7', 'Vinpearl Resort &amp; Spa Travel &amp; Trading J.S.C.', '182 Nguyen Van Thu Street, Dakao Ward, District 1, Ho Chi Minh City, Vietnam', NULL, NULL, '10.777799,106.702146', 10.777799, 106.702148, 'lodging', 'maps/raw/places/staticmap/location=10.777799,106.702146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.777799,106.702146&format=gif'),
(157, 'b321ca06', '09e4d2c66ca4e0ed6d694e0d2a18a02f', 'Lotteria Vinpearl', 'Vinpearl Land, ChÃ¢n cÃ¡p treo, BÃ£i Trá»¥, HÃ²n Tre, Nha Trang, tp. Nha Trang, 570000, Vietnam', NULL, NULL, '12.217217,109.243519', 12.217217, 109.243523, 'restaurant', 'maps/raw/places/staticmap/location=12.217217,109.243519&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.217217,109.243519&format=gif'),
(158, '2e97d1a2', '9c9c3cb90cb11ddcca9f51ba29e6d247', 'HÃ²n Mun', 'HÃ²n Mun, VÄ©nh NguyÃªn, tp. Nha Trang, Vietnam', NULL, NULL, '12.1661449,109.3024824', 12.166145, 109.302483, 'natural_feature', 'maps/raw/places/staticmap/location=12.1661449,109.3024824&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1661449,109.3024824&format=gif'),
(159, '7a483e0f', 'eb0cf3c98d5fc7e6102f317195a92413', 'CÃ´n Äáº£o SeaTravel', '6, Nguyá»…n Äá»©c Thuáº­n, Con Dao, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.678821,106.602123', 8.678821, 106.602119, 'lodging', 'maps/raw/places/staticmap/location=8.678821,106.602123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678821,106.602123&format=gif'),
(160, 'd880c539', '8f9eab57241fce91dcea4de85fa2c7b3', 'CÃ´n Äáº£o Sea Travel Resort', 'BÃ£i An Háº£i, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, Vietnam', NULL, NULL, '8.678789,106.602637', 8.678789, 106.602638, 'lodging', 'maps/raw/places/staticmap/location=8.678789,106.602637&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678789,106.602637&format=gif'),
(161, 'a51937f9', '814b541cdde178adf150e7fbec0e10ff', 'Kos Island International Airport', 'Kos 853 02, Greece', NULL, NULL, '36.794215,27.088395', 36.794216, 27.088394, 'airport', 'maps/raw/places/staticmap/location=36.794215,27.088395&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.794215,27.088395&format=gif'),
(162, 'a0397e35', '4eec37d6859de37b9df0d03c545592ed', 'LGKF', 'Kefalonia 281 00, Greece', NULL, NULL, '38.119503,20.504924', 38.119503, 20.504925, 'airport', 'maps/raw/places/staticmap/location=38.119503,20.504924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.119503,20.504924&format=gif'),
(163, 'baa37396', 'c783aeadf0086cf8c250814ae1d04aa2', 'Marshall Islands International Airport', 'Marshall Islands', NULL, NULL, '7.065189,171.272737', 7.065189, 171.272736, 'airport', 'maps/raw/places/staticmap/location=7.065189,171.272737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.065189,171.272737&format=gif'),
(164, '437972be', '5ad066d45b573abe923277575ec612aa', 'Qingdao International Airport', '99 Min Hang Lu, Chengyang Qu, Qingdao Shi, Shandong Sheng, China', NULL, NULL, '36.266674,120.383123', 36.266674, 120.383125, 'airport', 'maps/raw/places/staticmap/location=36.266674,120.383123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.266674,120.383123&format=gif'),
(165, '5ee755c2', '1e106feec2b611bc71b36eb463138ff4', 'Green Island Airport', '951, Taiwan, Taitung County, LÃ¼dao Township, 231', NULL, NULL, '22.672362,121.466863', 22.672361, 121.466866, 'airport', 'maps/raw/places/staticmap/location=22.672362,121.466863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.672362,121.466863&format=gif'),
(166, '81d40911', '52bb181c5d32a602408b5465e12d9d57', 'Qinhuangdao Shanhaiguan Airport', 'Shanhaiguan, Qinhuangdao, Hebei, China', NULL, NULL, '39.968056,119.731111', 39.968056, 119.731110, 'airport', 'maps/raw/places/staticmap/location=39.968056,119.731111&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.968056,119.731111&format=gif'),
(167, '824ed644', '9b7ef8a786e016826483f941b04cc82d', 'SÃ i GÃ²n CÃ´n Äáº£o Resort', 'Huyá»‡n á»§y CÃ´n Äáº£o, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.682649,106.609396', 8.682649, 106.609398, 'travel_agency', 'maps/raw/places/staticmap/location=8.682649,106.609396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.682649,106.609396&format=gif'),
(168, '88a218d9', 'ca5cc3071df902a950449ca9ec245cb8', 'Khu Biá»‡t thá»± KhÃ¡ch sáº¡n SÃ i GÃ²n - CÃ´n Äáº£o', '18-24 TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.683005,106.609698', 8.683005, 106.609695, 'lodging', 'maps/raw/places/staticmap/location=8.683005,106.609698&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683005,106.609698&format=gif'),
(169, '03a82f6d', 'd0156f651e0e423b41119b1ea1d8a14b', 'Tam Dao National Park', 'Tam Äáº£o, VÄ©nh PhÃºc, Vietnam', NULL, NULL, '21.484176,105.61102', 21.484177, 105.611023, 'park', 'maps/raw/places/staticmap/location=21.484176,105.61102&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.484176,105.61102&format=gif'),
(170, '1f662085', 'b3a4065c79fa42df57bc8ce305dd5701', 'CÃ´n Äáº£o Resort', '8, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.677575,106.601062', 8.677575, 106.601059, 'establishment', 'maps/raw/places/staticmap/location=8.677575,106.601062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.677575,106.601062&format=gif'),
(171, '83b9a61f', '7f88f5fc648d77f491f6efd4524419c6', 'Äáº£o cÃ² Chi LÄƒng Nam', 'tt. Thanh Miá»‡n, Thanh Miá»‡n, Háº£i DÆ°Æ¡ng, Vietnam', NULL, NULL, '20.71361,106.227922', 20.713610, 106.227921, 'establishment', 'maps/raw/places/staticmap/location=20.71361,106.227922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.71361,106.227922&format=gif'),
(172, '21e5c734', '7ed8e1e3af74bed9dd09e713b7ab5edb', 'Con Dao Airport Terminal', 'Cá» á»ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.731235,106.628713', 8.731235, 106.628716, 'establishment', 'maps/raw/places/staticmap/location=8.731235,106.628713&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.731235,106.628713&format=gif'),
(173, '51e182e6', 'fb7f701c4d138befd3e3c29efe84643d', 'Ks SÃ i GÃ²n - CÃ´n Äáº£o', '18-24, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.683978,106.611468', 8.683978, 106.611465, 'lodging', 'maps/raw/places/staticmap/location=8.683978,106.611468&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683978,106.611468&format=gif'),
(174, '1347ef68', '9257b7d00bbe84c1c91f5f3ccbec6bf8', 'Northeast Greenland National Park', 'Greenland', NULL, NULL, '76,-30', 76.000000, -30.000000, 'park', 'maps/raw/places/staticmap/location=76,-30&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C76,-30&format=gif'),
(175, 'e64c20bb', '1da0b772fe5bb309a800513ca9fd1a97', 'Äáº·t phÃ²ng khÃ¡ch sáº¡n CÃ´n Äáº£o giÃ¡ ráº»', '33 Pháº¡m HÃ¹ng, BÃ¬nh HÆ°ng, BÃ¬nh ChÃ¡nh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.725845,106.678662', 10.725845, 106.678665, 'lodging', 'maps/raw/places/staticmap/location=10.725845,106.678662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.725845,106.678662&format=gif'),
(176, 'c56bb139', '3f82a70300915cf48ec1de562ba1d941', 'CÃ´n Äáº£o Resort', 'Nguyá»…n Äá»©c Thuáº­n, huyá»‡n CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.678022,106.601345', 8.678022, 106.601341, 'restaurant', 'maps/raw/places/staticmap/location=8.678022,106.601345&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678022,106.601345&format=gif'),
(177, '5099af51', '839812f2c30591e5247ba4e70ddc6b5e', 'BÆ°u Äiá»‡n Tam Äáº£o', '21 Tam Äáº£o, 15, 10, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.779523,106.663294', 10.779523, 106.663292, 'establishment', 'maps/raw/places/staticmap/location=10.779523,106.663294&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.779523,106.663294&format=gif'),
(178, '2f9404b3', 'a916089fe959acd6e347c2ecae5968ee', 'Bá»ƒ bÆ¡i bÃ¡n Ä‘áº£o Linh ÄÃ m', 'Khu Ä‘Ã´ thá»‹ Linh ÄÃ m, HoÃ ng Liá»‡t, HoÃ ng Mai, HÃ  Ná»™i, Vietnam', NULL, NULL, '20.964152,105.829259', 20.964151, 105.829262, 'establishment', 'maps/raw/places/staticmap/location=20.964152,105.829259&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.964152,105.829259&format=gif'),
(179, 'df0ffbd9', '62b847ee086d4697349cab15d7e8e5cb', 'Soc Trang', 'Soc Trang, Vietnam', NULL, NULL, '9.6003688,105.9599539', 9.600369, 105.959953, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.6003688,105.9599539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.6003688,105.9599539&format=gif'),
(180, 'ce70ceef', '207f9b40a04d45e4aa54cbe84fb741f8', 'Afghanistan', 'Afghanistan', NULL, NULL, '33.93911,67.709953', 33.939110, 67.709953, 'country', 'maps/raw/places/staticmap/location=33.93911,67.709953&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.93911,67.709953&format=gif'),
(181, '3cdfd90e', '6495ce0173e2e57e0b3c8840b37f4c16', 'Albania', 'Albania', NULL, NULL, '41.153332,20.168331', 41.153332, 20.168331, 'country', 'maps/raw/places/staticmap/location=41.153332,20.168331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.153332,20.168331&format=gif'),
(182, '6369f80f', '3a26dbe4288a5c82ea133dd1e9153bcd', 'Algeria', 'Algeria', NULL, NULL, '28.033886,1.659626', 28.033886, 1.659626, 'country', 'maps/raw/places/staticmap/location=28.033886,1.659626&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.033886,1.659626&format=gif'),
(183, '45ecbd4f', 'dc7572887606b91d005b9f701a6e5598', 'Andorra', 'Andorra', NULL, NULL, '42.506285,1.521801', 42.506287, 1.521801, 'country', 'maps/raw/places/staticmap/location=42.506285,1.521801&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.506285,1.521801&format=gif'),
(184, 'c80af15e', '2f48608a55528259962f85322b963a12', 'Andorra la Vella', 'Andorra la Vella, Andorra', NULL, NULL, '42.5063174,1.5218355', 42.506317, 1.521835, 'locality', 'maps/raw/places/staticmap/location=42.5063174,1.5218355&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.5063174,1.5218355&format=gif'),
(185, 'da4de59f', 'd3568a741b6d6464f26b3991f41719e6', 'Angola', 'Angola', NULL, NULL, '-11.202692,17.873887', -11.202692, 17.873886, 'country', 'maps/raw/places/staticmap/location=-11.202692,17.873887&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.202692,17.873887&format=gif'),
(186, '59cdaec9', 'f9d4a021ceee8784368ed4e37fc43cca', 'Antigua and Barbuda', 'Antigua and Barbuda', NULL, NULL, '17.060816,-61.796428', 17.060816, -61.796429, 'country', 'maps/raw/places/staticmap/location=17.060816,-61.796428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.060816,-61.796428&format=gif'),
(187, 'cc31d7fd', 'b380a7a71735a2049b0d5c274277bf9d', 'Armenia', 'Armenia', NULL, NULL, '40.069099,45.038189', 40.069099, 45.038189, 'country', 'maps/raw/places/staticmap/location=40.069099,45.038189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.069099,45.038189&format=gif'),
(188, '77ff8ef3', '87ad6668219e5446f9f60963ca99eab9', 'Austria', 'Austria', NULL, NULL, '47.516231,14.550072', 47.516232, 14.550072, 'country', 'maps/raw/places/staticmap/location=47.516231,14.550072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.516231,14.550072&format=gif'),
(189, '007f063e', '06fa6988f7d4584154b7f50c744a937d', 'Azerbaijan', 'Azerbaijan', NULL, NULL, '40.143105,47.576927', 40.143105, 47.576927, 'country', 'maps/raw/places/staticmap/location=40.143105,47.576927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.143105,47.576927&format=gif'),
(190, '5b931420', 'b9691c2482315e17cb87d889d3715461', 'The Bahamas', 'The Bahamas', NULL, NULL, '25.03428,-77.39628', 25.034281, -77.396278, 'country', 'maps/raw/places/staticmap/location=25.03428,-77.39628&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.03428,-77.39628&format=gif'),
(191, '96fdf906', '8a9ae1acd6384b37d0e9cc18ba1794e4', 'Bahrain', 'Bahrain', NULL, NULL, '26.0667,50.5577', 26.066700, 50.557701, 'country', 'maps/raw/places/staticmap/location=26.0667,50.5577&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.0667,50.5577&format=gif'),
(192, 'ce824fec', '381d003f2752270b0c73aa1e71567f98', 'Bangladesh', 'Bangladesh', NULL, NULL, '23.684994,90.356331', 23.684994, 90.356331, 'country', 'maps/raw/places/staticmap/location=23.684994,90.356331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.684994,90.356331&format=gif'),
(193, 'b3ae9ebf', 'dc82deff2164769c92e1b68695386907', 'Barbados', 'Barbados', NULL, NULL, '13.193887,-59.543198', 13.193887, -59.543198, 'country', 'maps/raw/places/staticmap/location=13.193887,-59.543198&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.193887,-59.543198&format=gif'),
(194, '8a4dcc60', '0c356ed8c7e52fd89d39299915d2bcbf', 'Belarus', 'Belarus', NULL, NULL, '53.709807,27.953389', 53.709808, 27.953388, 'country', 'maps/raw/places/staticmap/location=53.709807,27.953389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.709807,27.953389&format=gif'),
(195, 'dc66ae53', '90cfd4711077080df97a8f2539bb1edd', 'Belize', 'Belize', NULL, NULL, '17.189877,-88.49765', 17.189877, -88.497650, 'country', 'maps/raw/places/staticmap/location=17.189877,-88.49765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.189877,-88.49765&format=gif'),
(196, '4208ea59', '1e0a71f7ec9514eee9e9e81b96454073', 'Benin', 'Benin', NULL, NULL, '9.30769,2.315834', 9.307690, 2.315834, 'country', 'maps/raw/places/staticmap/location=9.30769,2.315834&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.30769,2.315834&format=gif'),
(197, 'ea54617f', 'd632cba6e6ae9582728181c53e29ed7e', 'Bhutan', 'Bhutan', NULL, NULL, '27.514162,90.433601', 27.514162, 90.433601, 'country', 'maps/raw/places/staticmap/location=27.514162,90.433601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.514162,90.433601&format=gif'),
(198, '5a0ffaeb', '39a2585970551fe1d9fd242e74dfef45', 'Bolivia', 'Bolivia', NULL, NULL, '-16.290154,-63.588653', -16.290154, -63.588654, 'country', 'maps/raw/places/staticmap/location=-16.290154,-63.588653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-16.290154,-63.588653&format=gif'),
(199, 'ca3023ac', '777eb518681ba3dc52c653890bb59cc4', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', NULL, NULL, '43.915886,17.679076', 43.915886, 17.679075, 'country', 'maps/raw/places/staticmap/location=43.915886,17.679076&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.915886,17.679076&format=gif'),
(200, '3388715d', '0e051763f057916ab4617a40a3424236', 'Botswana', 'Botswana', NULL, NULL, '-22.328474,24.684866', -22.328474, 24.684866, 'country', 'maps/raw/places/staticmap/location=-22.328474,24.684866&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.328474,24.684866&format=gif'),
(201, '1016dd64', '7642bfce0f160c283b6a15696940c3ad', 'Brunei', 'Brunei', NULL, NULL, '4.535277,114.727669', 4.535277, 114.727669, 'country', 'maps/raw/places/staticmap/location=4.535277,114.727669&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.535277,114.727669&format=gif'),
(202, 'bff26485', 'fb3d899bc07a76011ed34f7f2521ef04', 'Bulgaria', 'Bulgaria', NULL, NULL, '42.733883,25.48583', 42.733883, 25.485830, 'country', 'maps/raw/places/staticmap/location=42.733883,25.48583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.733883,25.48583&format=gif'),
(203, 'b367b1fb', 'b3f1045abf4d1bcfd5ad42493eae2930', 'Burkina Faso', 'Burkina Faso', NULL, NULL, '12.238333,-1.561593', 12.238333, -1.561593, 'country', 'maps/raw/places/staticmap/location=12.238333,-1.561593&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.238333,-1.561593&format=gif'),
(204, 'ac756781', '6fda714e1d7a081eea5e2f961406c3d6', 'Republic of the Union of Myanmar', 'Republic of the Union of Myanmar', NULL, NULL, '21.913965,95.956223', 21.913965, 95.956223, 'country', 'maps/raw/places/staticmap/location=21.913965,95.956223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.913965,95.956223&format=gif'),
(205, 'b5ea4798', '3fa89dcb76ff437adfa56d3cc37e7a6d', 'Burundi', 'Burundi', NULL, NULL, '-3.373056,29.918886', -3.373056, 29.918886, 'country', 'maps/raw/places/staticmap/location=-3.373056,29.918886&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-3.373056,29.918886&format=gif'),
(206, '8852a653', '4266125e0c4f0981056e95e95b66e783', 'Cambodia', 'Cambodia', NULL, NULL, '12.565679,104.990963', 12.565679, 104.990967, 'country', 'maps/raw/places/staticmap/location=12.565679,104.990963&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.565679,104.990963&format=gif'),
(207, '2d8916d7', 'fc5fb23d075506030774313b3b22a378', 'Cameroon', 'Cameroon', NULL, NULL, '7.369722,12.354722', 7.369722, 12.354722, 'country', 'maps/raw/places/staticmap/location=7.369722,12.354722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.369722,12.354722&format=gif'),
(208, 'b840ae9a', '03d45d30ecdaca70cae7f1a8d55b344d', 'Cape Verde', 'Cape Verde', NULL, NULL, '15.120142,-23.6051721', 15.120142, -23.605171, 'country', 'maps/raw/places/staticmap/location=15.120142,-23.6051721&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.120142,-23.6051721&format=gif'),
(209, '35cae5dd', '8bdab0de5a2cda226cf75c7dd32b8e2a', 'Central African Republic', 'Central African Republic', NULL, NULL, '6.611111,20.939444', 6.611111, 20.939444, 'country', 'maps/raw/places/staticmap/location=6.611111,20.939444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.611111,20.939444&format=gif'),
(210, '5afe39c6', '2eded59d571c09561baf918d63b00e4d', 'Chad', 'Chad', NULL, NULL, '15.454166,18.732207', 15.454166, 18.732206, 'country', 'maps/raw/places/staticmap/location=15.454166,18.732207&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.454166,18.732207&format=gif'),
(211, 'f64de8f0', 'eff3a8e24105a0e5dd66eecb37e9d7c7', 'Chile', 'Chile', NULL, NULL, '-35.675147,-71.542969', -35.675148, -71.542969, 'country', 'maps/raw/places/staticmap/location=-35.675147,-71.542969&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-35.675147,-71.542969&format=gif'),
(212, 'be89688a', '355672960553a7e2c3eac0fb834acda9', 'Comoros', 'Comoros', NULL, NULL, '-11.6455,43.3333', -11.645500, 43.333302, 'country', 'maps/raw/places/staticmap/location=-11.6455,43.3333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.6455,43.3333&format=gif'),
(213, '5f3e483e', 'a5dbc77555dc19f99ce318eb5be7a9f7', 'Congo', 'Congo', NULL, NULL, '-0.228021,15.827659', -0.228021, 15.827659, 'country', 'maps/raw/places/staticmap/location=-0.228021,15.827659&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.228021,15.827659&format=gif'),
(214, 'c33c4a03', '64d1495c81efd61b6ccbd5744c04bc36', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', NULL, NULL, '-4.038333,21.758664', -4.038333, 21.758663, 'country', 'maps/raw/places/staticmap/location=-4.038333,21.758664&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-4.038333,21.758664&format=gif'),
(215, 'c4e506bf', '672acf57eccae55c4583f27ac42087cd', 'Costa Rica', 'Costa Rica', NULL, NULL, '9.748917,-83.753428', 9.748917, -83.753426, 'country', 'maps/raw/places/staticmap/location=9.748917,-83.753428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.748917,-83.753428&format=gif'),
(216, 'b797689d', '5e53b983d8ab018abae45ea6db56a32a', 'Croatia', 'Croatia', NULL, NULL, '45.1,15.2', 45.099998, 15.200000, 'country', 'maps/raw/places/staticmap/location=45.1,15.2&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.1,15.2&format=gif'),
(217, '3178e2b6', 'ced0931b2d0f1d62e204035e0e4bf1c1', 'Cuba', 'Cuba', NULL, NULL, '21.521757,-77.781167', 21.521757, -77.781166, 'country', 'maps/raw/places/staticmap/location=21.521757,-77.781167&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.521757,-77.781167&format=gif'),
(218, 'aaea7422', '9a3f1793ce3b704f32419eca2c1bbf3b', 'Cyprus', 'Cyprus', NULL, NULL, '35.126413,33.429859', 35.126411, 33.429859, 'country', 'maps/raw/places/staticmap/location=35.126413,33.429859&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.126413,33.429859&format=gif'),
(219, '071e1c2c', '933a1672593c4e64b93152d7ca987501', 'Djibouti', 'Djibouti', NULL, NULL, '11.825138,42.590275', 11.825138, 42.590275, 'country', 'maps/raw/places/staticmap/location=11.825138,42.590275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.825138,42.590275&format=gif'),
(220, '4b0309fb', '45ce69b9f020bbfd4b67361251a0c4b2', 'Djibouti', 'Djibouti, Djibouti', NULL, NULL, '11.588333,43.145', 11.588333, 43.145000, 'locality', 'maps/raw/places/staticmap/location=11.588333,43.145&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.588333,43.145&format=gif'),
(221, 'a6dd5f65', 'bf64605730d4c9a8e137ee0ce8b325ce', 'Dominica', 'Dominica', NULL, NULL, '15.414999,-61.370976', 15.414999, -61.370975, 'country', 'maps/raw/places/staticmap/location=15.414999,-61.370976&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.414999,-61.370976&format=gif'),
(222, '48c05f15', 'dbc8a1efb6d17966ce6828bf5e3bd548', 'Dominican Republic', 'Dominican Republic', NULL, NULL, '18.735693,-70.162651', 18.735693, -70.162651, 'country', 'maps/raw/places/staticmap/location=18.735693,-70.162651&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.735693,-70.162651&format=gif'),
(223, '8c3afd7a', 'f3a7a93fbf07f1c1daaa4a733c7c2c49', 'East Timor', 'East Timor', NULL, NULL, '-8.874217,125.727539', -8.874217, 125.727539, 'country', 'maps/raw/places/staticmap/location=-8.874217,125.727539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-8.874217,125.727539&format=gif'),
(224, '5190092d', '322f31ec0c335bfb785ba7e0e6969f8e', 'Egypt', 'Egypt', NULL, NULL, '26.820553,30.802498', 26.820553, 30.802498, 'country', 'maps/raw/places/staticmap/location=26.820553,30.802498&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.820553,30.802498&format=gif'),
(225, '94668225', '68b62b4f27731da3e25eb0ec81572865', 'El Salvador', 'El Salvador', NULL, NULL, '13.794185,-88.89653', 13.794185, -88.896530, 'country', 'maps/raw/places/staticmap/location=13.794185,-88.89653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.794185,-88.89653&format=gif'),
(226, 'f0607404', '49c61be4009021bd4e4285a7e81f1dc7', 'England', 'England, UK', NULL, NULL, '52.3555177,-1.1743197', 52.355518, -1.174320, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.3555177,-1.1743197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.3555177,-1.1743197&format=gif'),
(227, 'b0123cee', 'ba1677acc012d8f6b7182b3ab766f9e7', 'Equatorial Guinea', 'Equatorial Guinea', NULL, NULL, '1.650801,10.267895', 1.650801, 10.267895, 'country', 'maps/raw/places/staticmap/location=1.650801,10.267895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.650801,10.267895&format=gif'),
(228, '07c48714', '8324b71942911433a37bfb3e372dc271', 'Eritrea', 'Eritrea', NULL, NULL, '15.179384,39.782334', 15.179384, 39.782333, 'country', 'maps/raw/places/staticmap/location=15.179384,39.782334&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.179384,39.782334&format=gif'),
(229, '135fa511', '76d3f0d1811ac033d1cf5c939a329503', 'Estonia', 'Estonia', NULL, NULL, '58.595272,25.013607', 58.595272, 25.013607, 'country', 'maps/raw/places/staticmap/location=58.595272,25.013607&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C58.595272,25.013607&format=gif'),
(230, 'c84a84e9', '8140ae14adb3de9ef5a861dab2764e8b', 'Ethiopia', 'Ethiopia', NULL, NULL, '9.145,40.489673', 9.145000, 40.489674, 'country', 'maps/raw/places/staticmap/location=9.145,40.489673&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.145,40.489673&format=gif'),
(231, '3d1e17ae', '04f24037a97661dc777bd572dafa0023', 'Fiji', 'Fiji', NULL, NULL, '-17.713371,178.065032', -17.713371, 178.065033, 'country', 'maps/raw/places/staticmap/location=-17.713371,178.065032&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-17.713371,178.065032&format=gif'),
(232, 'e51e9f82', '87de03467ea6b58a3b022559e8b40ddd', 'Finland', 'Finland', NULL, NULL, '61.92411,25.748151', 61.924110, 25.748152, 'country', 'maps/raw/places/staticmap/location=61.92411,25.748151&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C61.92411,25.748151&format=gif'),
(233, 'cbc997a0', '044b173ce8d9539bc8dbbc394307897f', 'Gabon', 'Gabon', NULL, NULL, '-0.803689,11.609444', -0.803689, 11.609444, 'country', 'maps/raw/places/staticmap/location=-0.803689,11.609444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.803689,11.609444&format=gif'),
(234, '6f657851', 'c950494edc402f0c10fea62af80aa3b5', 'The Gambia', 'The Gambia', NULL, NULL, '13.443182,-15.310139', 13.443182, -15.310139, 'country', 'maps/raw/places/staticmap/location=13.443182,-15.310139&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.443182,-15.310139&format=gif'),
(235, '2f60eddb', '59dcf465e0e5900551061cf59d796544', 'Georgia', 'Georgia', NULL, NULL, '42.315407,43.356892', 42.315407, 43.356892, 'country', 'maps/raw/places/staticmap/location=42.315407,43.356892&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.315407,43.356892&format=gif'),
(236, '9e422f6d', '20dc11057c3341b1036a74c15d47627c', 'Ghana', 'Ghana', NULL, NULL, '7.946527,-1.023194', 7.946527, -1.023194, 'country', 'maps/raw/places/staticmap/location=7.946527,-1.023194&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.946527,-1.023194&format=gif'),
(237, 'ff25b87c', '820086a60a1146ddfbcf953dec6bc27b', 'United Kingdom', 'United Kingdom', NULL, NULL, '55.378051,-3.435973', 55.378052, -3.435973, 'country', 'maps/raw/places/staticmap/location=55.378051,-3.435973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.378051,-3.435973&format=gif'),
(238, 'f5f12a94', 'a9dc361d24bb2f690858a6d3d1f734fe', 'Grenada', 'Grenada', NULL, NULL, '12.1165,-61.679', 12.116500, -61.679001, 'country', 'maps/raw/places/staticmap/location=12.1165,-61.679&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1165,-61.679&format=gif'),
(239, '2cf61a8b', 'dbabbfc561271d0b23484d19bff8198e', 'Guatemala', 'Guatemala', NULL, NULL, '15.783471,-90.230759', 15.783471, -90.230759, 'country', 'maps/raw/places/staticmap/location=15.783471,-90.230759&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.783471,-90.230759&format=gif'),
(240, '0776e2cd', '13a73077ed2fb2cfbe517d918b0c57c4', 'Guatemala City', 'Guatemala City, Guatemala', NULL, NULL, '14.613333,-90.535278', 14.613333, -90.535278, 'locality', 'maps/raw/places/staticmap/location=14.613333,-90.535278&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.613333,-90.535278&format=gif'),
(241, '736fe142', 'd93b1f0bc8b39393f0bf44d894575984', 'Guatemala', 'Guatemala, Guatemala', NULL, NULL, '14.7514999,-90.5257823', 14.751500, -90.525780, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=14.7514999,-90.5257823&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.7514999,-90.5257823&format=gif'),
(242, '8089ca32', '78267cb10c974cabcda3ef1328e40734', 'Guinea-Bissau', 'Guinea-Bissau', NULL, NULL, '11.803749,-15.180413', 11.803749, -15.180413, 'country', 'maps/raw/places/staticmap/location=11.803749,-15.180413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.803749,-15.180413&format=gif'),
(243, '0703ccb8', '907ca847f4b769b70f9ad1c46fcddab1', 'Guyana', 'Guyana', NULL, NULL, '4.860416,-58.93018', 4.860416, -58.930180, 'country', 'maps/raw/places/staticmap/location=4.860416,-58.93018&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.860416,-58.93018&format=gif'),
(244, 'ffa384e0', 'eb9eeee1875df91c55259bf1296886bf', 'Haiti', 'Haiti', NULL, NULL, '18.971187,-72.285215', 18.971188, -72.285217, 'country', 'maps/raw/places/staticmap/location=18.971187,-72.285215&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.971187,-72.285215&format=gif'),
(245, '90ba3344', '953e207b6386385fd5539e52ba0ac8ff', 'Honduras', 'Honduras', NULL, NULL, '15.199999,-86.241905', 15.199999, -86.241905, 'country', 'maps/raw/places/staticmap/location=15.199999,-86.241905&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.199999,-86.241905&format=gif'),
(246, 'ea12496e', 'ed3f7e6c11706c707c579866fcbc7830', 'Hungary', 'Hungary', NULL, NULL, '47.162494,19.503304', 47.162495, 19.503304, 'country', 'maps/raw/places/staticmap/location=47.162494,19.503304&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.162494,19.503304&format=gif'),
(247, '62be2d6c', '5e5a9b945db9e1877b5ff06952261fe5', 'Iceland', 'Iceland', NULL, NULL, '64.963051,-19.020835', 64.963051, -19.020836, 'country', 'maps/raw/places/staticmap/location=64.963051,-19.020835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C64.963051,-19.020835&format=gif'),
(248, '8509cf6b', '2e87dc75195f57b0a0b4bc1c27a47a6e', 'Indonesia', 'Indonesia', NULL, NULL, '-0.789275,113.921327', -0.789275, 113.921326, 'country', 'maps/raw/places/staticmap/location=-0.789275,113.921327&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.789275,113.921327&format=gif'),
(249, 'd40be3c8', '9436bd2bf63d552ddec14015a9711503', 'Iraq', 'Iraq', NULL, NULL, '33.223191,43.679291', 33.223190, 43.679291, 'country', 'maps/raw/places/staticmap/location=33.223191,43.679291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.223191,43.679291&format=gif'),
(250, '2d7944c1', '97e7534b3d35c7e69d6947014d3b6651', 'Ireland', 'Ireland', NULL, NULL, '53.41291,-8.24389', 53.412910, -8.243890, 'country', 'maps/raw/places/staticmap/location=53.41291,-8.24389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.41291,-8.24389&format=gif'),
(251, '78bb61d9', 'b4a201c0426b5593dbf404834a9ec665', 'Israel', 'Israel', NULL, NULL, '31.046051,34.851612', 31.046051, 34.851612, 'country', 'maps/raw/places/staticmap/location=31.046051,34.851612&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.046051,34.851612&format=gif'),
(252, '6bf96a97', 'dfdedb3da96bf7449960c3b0e6656929', 'Jamaica', 'Jamaica', NULL, NULL, '18.109581,-77.297508', 18.109581, -77.297508, 'country', 'maps/raw/places/staticmap/location=18.109581,-77.297508&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.109581,-77.297508&format=gif'),
(253, '2522ca5c', '7b83e1e1ad4c197fcf9a440237f6f146', 'Jordan', 'Jordan', NULL, NULL, '30.585164,36.238414', 30.585163, 36.238415, 'country', 'maps/raw/places/staticmap/location=30.585164,36.238414&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.585164,36.238414&format=gif'),
(254, 'ba4e2f0f', '99a4d62e9c9b5a4b9eb4936d23f7b143', 'Kazakhstan', 'Kazakhstan', NULL, NULL, '48.019573,66.923684', 48.019573, 66.923683, 'country', 'maps/raw/places/staticmap/location=48.019573,66.923684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.019573,66.923684&format=gif'),
(255, '674e1079', 'a96aacb5f5a53d8ba10ef1c8ab445f3c', 'Kenya', 'Kenya', NULL, NULL, '-0.023559,37.906193', -0.023559, 37.906193, 'country', 'maps/raw/places/staticmap/location=-0.023559,37.906193&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.023559,37.906193&format=gif'),
(256, 'f15dd034', '2a41674ced1331be6e7fe32a7470d676', 'Kiribati', 'Kiribati', NULL, NULL, '1.8709185,-157.3626011', 1.870918, -157.362595, 'country', 'maps/raw/places/staticmap/location=1.8709185,-157.3626011&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.8709185,-157.3626011&format=gif'),
(257, 'c648b887', '4f1db3f53742a5545a075b4bf7412dab', 'North Korea', 'North Korea', NULL, NULL, '40.339852,127.510093', 40.339851, 127.510094, 'country', 'maps/raw/places/staticmap/location=40.339852,127.510093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.339852,127.510093&format=gif'),
(258, '3d36c033', '21a00676690d8fe930bcea25899847d2', 'South Korea', 'South Korea', NULL, NULL, '35.907757,127.766922', 35.907757, 127.766922, 'country', 'maps/raw/places/staticmap/location=35.907757,127.766922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.907757,127.766922&format=gif'),
(259, '906f3258', '684a8fdbca7b5c06686aff71a3abd575', 'Kuwait', 'Kuwait', NULL, NULL, '29.31166,47.481766', 29.311661, 47.481766, 'country', 'maps/raw/places/staticmap/location=29.31166,47.481766&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.31166,47.481766&format=gif'),
(260, '5eb9cb60', 'f5386375d083f17bf89ec4ea9290a565', 'Kuwait City', 'Kuwait City, Kuwait', NULL, NULL, '29.375859,47.9774052', 29.375858, 47.977406, 'locality', 'maps/raw/places/staticmap/location=29.375859,47.9774052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.375859,47.9774052&format=gif'),
(261, 'e2eaac98', 'fa5f6dd3e9d46b883bf7e7967d11b2a4', 'Al Asimah', 'Al Asimah, Kuwait', NULL, NULL, '29.3342457,47.9812152', 29.334246, 47.981216, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=29.3342457,47.9812152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.3342457,47.9812152&format=gif'),
(262, '6cf74f7b', 'de4ceec312c6496049d1af26cb775426', 'Kyrgyzstan', 'Kyrgyzstan', NULL, NULL, '41.20438,74.766098', 41.204380, 74.766098, 'country', 'maps/raw/places/staticmap/location=41.20438,74.766098&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.20438,74.766098&format=gif'),
(263, '05278411', 'c6d0ee58bbf76e7ff6e13f9f57ae1240', 'Laos', 'Laos', NULL, NULL, '19.85627,102.495496', 19.856270, 102.495499, 'country', 'maps/raw/places/staticmap/location=19.85627,102.495496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.85627,102.495496&format=gif'),
(264, 'e74dee99', '169f3a30a83bb00f40836954419112da', 'Latvia', 'Latvia', NULL, NULL, '56.879635,24.603189', 56.879635, 24.603189, 'country', 'maps/raw/places/staticmap/location=56.879635,24.603189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.879635,24.603189&format=gif'),
(265, '9b15da14', '371f4410b68b8163060d91c2c6634631', 'Lebanon', 'Lebanon', NULL, NULL, '33.854721,35.862285', 33.854721, 35.862286, 'country', 'maps/raw/places/staticmap/location=33.854721,35.862285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.854721,35.862285&format=gif'),
(266, '4716f0c4', '982c200a0d21927d43585a330343b201', 'Lesotho', 'Lesotho', NULL, NULL, '-29.609988,28.233608', -29.609987, 28.233608, 'country', 'maps/raw/places/staticmap/location=-29.609988,28.233608&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-29.609988,28.233608&format=gif'),
(267, 'f11b7b14', '275d9b11b81705e6229cfc74df1b3758', 'Liberia', 'Liberia', NULL, NULL, '6.428055,-9.429499', 6.428055, -9.429499, 'country', 'maps/raw/places/staticmap/location=6.428055,-9.429499&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.428055,-9.429499&format=gif'),
(268, '58674b0e', 'ea64e190a9531c5bc33e8fc5490c7027', 'Libya', 'Libya', NULL, NULL, '26.3351,17.228331', 26.335100, 17.228331, 'country', 'maps/raw/places/staticmap/location=26.3351,17.228331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.3351,17.228331&format=gif'),
(269, '183d4408', 'f6abf617bad6f5fda2b2810bd84e37d0', 'Liechtenstein', 'Liechtenstein', NULL, NULL, '47.166,9.555373', 47.166000, 9.555373, 'country', 'maps/raw/places/staticmap/location=47.166,9.555373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.166,9.555373&format=gif'),
(270, '8cadac0d', 'a20de85cea357d4fa9063c3fd5f08032', 'Lithuania', 'Lithuania', NULL, NULL, '55.169438,23.881275', 55.169437, 23.881275, 'country', 'maps/raw/places/staticmap/location=55.169438,23.881275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.169438,23.881275&format=gif'),
(271, '451fe768', '49fb2ecf37f4b88bd16adf03802cbde7', 'Luxembourg', 'Luxembourg', NULL, NULL, '49.815273,6.129583', 49.815273, 6.129583, 'country', 'maps/raw/places/staticmap/location=49.815273,6.129583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.815273,6.129583&format=gif'),
(272, '3abfc6bf', '0177849912865ee7cdb53be7f42a434a', 'Macedonia (FYROM)', 'Macedonia (FYROM)', NULL, NULL, '41.608635,21.745275', 41.608635, 21.745275, 'country', 'maps/raw/places/staticmap/location=41.608635,21.745275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.608635,21.745275&format=gif'),
(273, '95f5c679', 'f1484e4f3f1eb2032a1d07562c82c53c', 'Madagascar', 'Madagascar', NULL, NULL, '-18.766947,46.869107', -18.766947, 46.869106, 'country', 'maps/raw/places/staticmap/location=-18.766947,46.869107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-18.766947,46.869107&format=gif'),
(274, '8cf07ecd', '97d4c1cf55d6119630926886af5357c8', 'Malawi', 'Malawi', NULL, NULL, '-13.254308,34.301525', -13.254308, 34.301525, 'country', 'maps/raw/places/staticmap/location=-13.254308,34.301525&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-13.254308,34.301525&format=gif'),
(275, '1b6ec2a7', '71e0c68a01651fe37f22ce9a9dd00bfd', 'Maldives', 'Maldives', NULL, NULL, '1.977247,73.5361034', 1.977247, 73.536102, 'country', 'maps/raw/places/staticmap/location=1.977247,73.5361034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.977247,73.5361034&format=gif'),
(276, 'c7ef99dc', '35d31c506384eb77a2e3cb2e0b7d5194', 'Mali', 'Mali', NULL, NULL, '17.570692,-3.996166', 17.570692, -3.996166, 'country', 'maps/raw/places/staticmap/location=17.570692,-3.996166&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.570692,-3.996166&format=gif'),
(277, 'd2b4cfa9', '240fb2659a32c903bebcb2229c8f1af1', 'Malta', 'Malta', NULL, NULL, '35.937496,14.375416', 35.937496, 14.375416, 'country', 'maps/raw/places/staticmap/location=35.937496,14.375416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.937496,14.375416&format=gif'),
(278, '9baec459', '5dc965bac0ed5f6e3303aa07082f3f91', 'Mauritania', 'Mauritania', NULL, NULL, '21.00789,-10.940835', 21.007891, -10.940835, 'country', 'maps/raw/places/staticmap/location=21.00789,-10.940835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.00789,-10.940835&format=gif'),
(279, '3926c017', 'a6736ecdfea49ba77d89d87a92567a42', 'Mauritius', 'Mauritius', NULL, NULL, '-20.348404,57.552152', -20.348404, 57.552151, 'country', 'maps/raw/places/staticmap/location=-20.348404,57.552152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-20.348404,57.552152&format=gif'),
(280, 'b8ca8ac4', 'fc0030c802ece0cac7bff4d31b0a71d1', 'Micronesia', 'Micronesia', NULL, NULL, '6.8874813,158.2150717', 6.887481, 158.215073, 'country', 'maps/raw/places/staticmap/location=6.8874813,158.2150717&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.8874813,158.2150717&format=gif'),
(281, '30999596', '5325d75157b9e217f1f9cbc9866ec067', 'Moldova', 'Moldova', NULL, NULL, '47.411631,28.369885', 47.411633, 28.369884, 'country', 'maps/raw/places/staticmap/location=47.411631,28.369885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.411631,28.369885&format=gif'),
(282, 'c26490cd', '74a70bff99564bdf2d64825208af19be', 'Monaco', 'Monaco', NULL, NULL, '43.7384176,7.4246158', 43.738419, 7.424616, 'country', 'maps/raw/places/staticmap/location=43.7384176,7.4246158&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.7384176,7.4246158&format=gif'),
(283, '34d960c4', 'cd6bbb5f55ed531ca34df1aa92032bb7', 'Mongolia', 'Mongolia', NULL, NULL, '46.862496,103.846656', 46.862495, 103.846657, 'country', 'maps/raw/places/staticmap/location=46.862496,103.846656&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C46.862496,103.846656&format=gif'),
(284, '8ffb98cd', 'caf1f3b4146040e3beee06acb61adeb8', 'Morocco', 'Morocco', NULL, NULL, '31.791702,-7.09262', 31.791702, -7.092620, 'country', 'maps/raw/places/staticmap/location=31.791702,-7.09262&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.791702,-7.09262&format=gif'),
(285, '7e900a71', '1d3f1297a35bb0d0db037e3e8abb35fd', 'Namibia', 'Namibia', NULL, NULL, '-22.95764,18.49041', -22.957640, 18.490410, 'country', 'maps/raw/places/staticmap/location=-22.95764,18.49041&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.95764,18.49041&format=gif'),
(286, '800e8cda', 'eb7676d8fcca98a1f350cb1f99655fa8', 'Nauru', 'Nauru', NULL, NULL, '-0.522778,166.931503', -0.522778, 166.931503, 'country', 'maps/raw/places/staticmap/location=-0.522778,166.931503&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.522778,166.931503&format=gif'),
(287, 'a1b3a1ac', '92ba5bcd36f905c753b09f49120816b8', 'Nepal', 'Nepal', NULL, NULL, '28.394857,84.124008', 28.394857, 84.124008, 'country', 'maps/raw/places/staticmap/location=28.394857,84.124008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.394857,84.124008&format=gif'),
(288, '775538b8', '45dd0a932c4cef5b75bbb14d3a8193df', 'Silicon Institute of Technology', 'Silicon Hills, Patia,, Near Infocity, Bhubaneswar, Odisha 751024, India', NULL, NULL, '20.351478,85.805739', 20.351479, 85.805740, 'point_of_interest', 'maps/raw/places/staticmap/location=20.351478,85.805739&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.351478,85.805739&format=gif'),
(289, '7d91101b', 'c3305c757123440fbd605ed11bc25e4a', 'Silicon Systems', '73 Sydney St, Petone, Petone 5012, New Zealand', NULL, NULL, '-41.221806,174.877263', -41.221806, 174.877258, 'store', 'maps/raw/places/staticmap/location=-41.221806,174.877263&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-41.221806,174.877263&format=gif'),
(290, '23bffd9f', 'b7232fe5d760cb7579484fa0f973107a', 'The Silicon Group', '95 Whins Road, Alloa, Clackmannanshire FK10 3RF, United Kingdom', NULL, NULL, '56.119976,-3.781696', 56.119976, -3.781696, 'electronics_store', 'maps/raw/places/staticmap/location=56.119976,-3.781696&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.119976,-3.781696&format=gif'),
(291, '9dc43f7c', 'a9fbf3a39784ec649dc43485a6a912eb', 'SILICON Refractory Anchors Systems BV', 'Monsterseweg 2, 2291 PB Wateringen, Netherlands', NULL, NULL, '52.012729,4.285951', 52.012730, 4.285951, 'point_of_interest', 'maps/raw/places/staticmap/location=52.012729,4.285951&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.012729,4.285951&format=gif'),
(292, '7b47c188', '6559ba968045f8785a1e9c8ddfe6f281', 'Silicon Image Inc', '1140 East Arques Avenue, Sunnyvale, CA 94085, United States', NULL, NULL, '37.378644,-121.998338', 37.378643, -121.998337, 'establishment', 'maps/raw/places/staticmap/location=37.378644,-121.998338&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.378644,-121.998338&format=gif'),
(293, 'b9de58f3', '6534f022ba75da12fba1820a88da9489', 'Silicon Laboratories', '400 West Cesar Chavez, Austin, TX 78701, United States', NULL, NULL, '30.264902,-97.74848', 30.264902, -97.748482, 'establishment', 'maps/raw/places/staticmap/location=30.264902,-97.74848&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.264902,-97.74848&format=gif'),
(294, 'cd06447a', '719684ba4eebb156a1a5538d26d349f9', 'Silicon Valley Community Foundation', '2440 West El Camino Real #300, Mountain View, CA 94040, United States', NULL, NULL, '37.399306,-122.107726', 37.399307, -122.107727, 'establishment', 'maps/raw/places/staticmap/location=37.399306,-122.107726&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.399306,-122.107726&format=gif'),
(295, '954c4bd4', 'fe32014adf75aec2c8906f9387d05b7f', 'Silicon Valley Bank', '3000 Sand Hill Road #150, Menlo Park, CA 94025, United States', NULL, NULL, '37.423233,-122.22078', 37.423233, -122.220779, 'bank', 'maps/raw/places/staticmap/location=37.423233,-122.22078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.423233,-122.22078&format=gif'),
(296, 'ef3d5fce', 'a36662a5d07a180b809b7bac68ed6af7', 'Humane Society Silicon Valley', '901 Ames Avenue, Milpitas, CA 95035, United States', NULL, NULL, '37.421038,-121.88692', 37.421040, -121.886917, 'park', 'maps/raw/places/staticmap/location=37.421038,-121.88692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.421038,-121.88692&format=gif'),
(297, '3a09e0af', 'f1299ad069e1fcd2aff77150c4456862', 'Open-Silicon Inc', '203 Turnpike Street #407, North Andover, MA 01845, United States', NULL, NULL, '42.673663,-71.127348', 42.673664, -71.127350, 'establishment', 'maps/raw/places/staticmap/location=42.673663,-71.127348&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.673663,-71.127348&format=gif'),
(298, '58fef619', '1874ed9008248e05d65e4d2f350de620', 'Silicon Valley Bank', '504 Lavaca Street #1100, Austin, TX 78731, United States', NULL, NULL, '30.26823,-97.746024', 30.268230, -97.746025, 'bank', 'maps/raw/places/staticmap/location=30.26823,-97.746024&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.26823,-97.746024&format=gif'),
(299, '5f75e9bb', '64ffcb4aa06bae53dcf3ddbf9e3b4c9f', 'Dubai Silicon Oasis', 'Emirates-Al Ain road intersection, Exit 44 - P.O. Box 6009 - Dubai - United Arab Emirates', NULL, NULL, '25.124596,55.380921', 25.124596, 55.380920, 'point_of_interest', 'maps/raw/places/staticmap/location=25.124596,55.380921&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.124596,55.380921&format=gif'),
(300, 'b6b33710', '7033cda123e7729dd6c34875f2121671', 'Carnegie Mellon University - Silicon Valley Campus', 'NASA Research Park, Bldg 23, Moffett Field, CA 94035, United States', NULL, NULL, '37.41043,-122.059753', 37.410431, -122.059753, 'university', 'maps/raw/places/staticmap/location=37.41043,-122.059753&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.41043,-122.059753&format=gif'),
(301, 'bac87e4d', 'b9fd2abe6e0dab436cd111036d93816f', 'Silicon Valley Bank', '3005 Tasman Drive, Santa Clara, CA 95054, United States', NULL, NULL, '37.404229,-121.983223', 37.404228, -121.983223, 'bank', 'maps/raw/places/staticmap/location=37.404229,-121.983223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.404229,-121.983223&format=gif'),
(302, 'dbad6384', '3e4dd7b0e9783bcf97263601d2e20b09', 'Silicon Valley Community Foundation', '1300 South El Camino Real #100, San Mateo, CA 94402, United States', NULL, NULL, '37.554596,-122.317123', 37.554596, -122.317123, 'point_of_interest', 'maps/raw/places/staticmap/location=37.554596,-122.317123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.554596,-122.317123&format=gif'),
(303, 'f4f58ae1', '515edbc3413a3a231a4947380d55bdd4', 'Four Seasons Hotel Silicon Valley at East Palo Alto', '2050 University Avenue, East Palo Alto, CA 94303, United States', NULL, NULL, '37.460371,-122.142267', 37.460369, -122.142265, 'lodging', 'maps/raw/places/staticmap/location=37.460371,-122.142267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.460371,-122.142267&format=gif'),
(304, '2448d261', 'da74b638ff1f3613de12f0fcc887ba5b', 'Silicon Mechanics', '22029 23rd Drive Southeast, Bothell, WA 98021, United States', NULL, NULL, '47.799012,-122.200677', 47.799011, -122.200676, 'electronics_store', 'maps/raw/places/staticmap/location=47.799012,-122.200677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.799012,-122.200677&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(305, 'e2ddb6d9', 'c56f61d350d9488ce3797b9f4193f416', 'Silicon Valley Bank', '380 Interlocken Boulevard # 600, Broomfield, CO 80021, United States', NULL, NULL, '39.923649,-105.114121', 39.923649, -105.114120, 'bank', 'maps/raw/places/staticmap/location=39.923649,-105.114121&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.923649,-105.114121&format=gif'),
(306, '31385006', '0bafd06f04e79e255206a5af6c56ad24', 'Silicon Valley Capital Club', '50 West San Fernando Street, San Jose, CA 95113, United States', NULL, NULL, '37.3338,-121.889177', 37.333801, -121.889175, 'night_club', 'maps/raw/places/staticmap/location=37.3338,-121.889177&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.3338,-121.889177&format=gif'),
(307, 'a5aaf23e', 'e26dce5abc8cdb9e0f9a0442201a194b', 'Silicon Valley Bank', '11th floor, 505 5th Avenue, New York, NY 10017, United States', NULL, NULL, '40.7536,-73.980455', 40.753601, -73.980453, 'bank', 'maps/raw/places/staticmap/location=40.7536,-73.980455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.7536,-73.980455&format=gif'),
(308, '0a689e4a', 'bb877b68f02f0e2f1dad7ca6ed35b7b9', 'Silicon', 'Silicon, Las PiÃ±as, Metro Manila, Philippines', NULL, NULL, '14.4206731,121.0089541', 14.420673, 121.008957, 'route', 'maps/raw/places/staticmap/location=14.4206731,121.0089541&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.4206731,121.0089541&format=gif'),
(309, 'da2e0476', '97b97e9d2c6a2b0fa77cccf062ac7a67', 'Silicon', 'Silicon, Estate Ave, Karachi, Pakistan', NULL, NULL, '24.9046874,67.0034956', 24.904688, 67.003494, 'premise', 'maps/raw/places/staticmap/location=24.9046874,67.0034956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.9046874,67.0034956&format=gif'),
(310, 'a88903ca', 'a82a3a346804900d75e92ff70d5f3d4b', 'Manchester computer repair', 'Manchester computer repair, Bowfell Rd, Urmston, Manchester M41 5RW, UK', NULL, NULL, '53.4512377,-2.3633818', 53.451237, -2.363382, 'point_of_interest', 'maps/raw/places/staticmap/location=53.4512377,-2.3633818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.4512377,-2.3633818&format=gif'),
(311, '9cde7202', '01d7c613c0e4b82544f21d059f46249d', 'Silicon', 'Silicon, El Agustino 15006, Peru', NULL, NULL, '-12.0344607,-76.9985374', -12.034461, -76.998535, 'route', 'maps/raw/places/staticmap/location=-12.0344607,-76.9985374&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-12.0344607,-76.9985374&format=gif'),
(312, '09f546a2', '970a3013042deaf782d563e88b630181', 'Silicon', 'Silicon, Jalan Tenggiri, Batu Ampar, Kota Batam, Indonesia', NULL, NULL, '1.167073,104.009652', 1.167073, 104.009651, 'point_of_interest', 'maps/raw/places/staticmap/location=1.167073,104.009652&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.167073,104.009652&format=gif'),
(313, 'ed1b3faf', 'b6db13cdbf5b6b15de1e8ec82818a28c', 'Silicon', 'Silicon, Annai Indira Nagar, Annani Indira Nagar, Indira Nagar, Okkiyam Thuraipakkam, Palavakkam, Tamil Nadu 600097, India', NULL, NULL, '12.9271389,80.2343157', 12.927139, 80.234314, 'premise', 'maps/raw/places/staticmap/location=12.9271389,80.2343157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.9271389,80.2343157&format=gif'),
(314, '805cdeb4', 'f0c2829729dce0c1d7fdd5842916d597', 'Silicon', 'Silicon, MS Ali Rd, Grant Road East, Grant Road Area, Bharat Nagar, Grant Rd, Mumbai, Maharashtra 400008, India', NULL, NULL, '18.9620695,72.8206681', 18.962069, 72.820671, 'point_of_interest', 'maps/raw/places/staticmap/location=18.9620695,72.8206681&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.9620695,72.8206681&format=gif'),
(315, 'acb1b726', '63f259be8b7ce65fd91e1a63bc42aa33', 'SILICON', 'SILICON, Old Delhi Gurgaon Rd, Palam Vihar Extension, Gurgaon, Haryana 122015, India', NULL, NULL, '28.494636,77.060247', 28.494637, 77.060249, 'point_of_interest', 'maps/raw/places/staticmap/location=28.494636,77.060247&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.494636,77.060247&format=gif'),
(316, '25434af8', 'c1d2a795875dcf0950b2d51b1a19dc11', 'SILICON', 'SILICON, Sandhu Apartment, Kalasiguda, Secunderabad, Telangana 500003, India', NULL, NULL, '17.440788,78.4893322', 17.440788, 78.489334, 'point_of_interest', 'maps/raw/places/staticmap/location=17.440788,78.4893322&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.440788,78.4893322&format=gif'),
(317, 'af3a06e0', '655ff479e1efec9f7b42cd2c5aa1acc1', 'Silicon', '33 & 34, Silicon, Rajarhat Rd, Teghoria, Chinar Park, Kolkata, West Bengal 700059, India', NULL, NULL, '22.623233,88.4402703', 22.623234, 88.440269, 'point_of_interest', 'maps/raw/places/staticmap/location=22.623233,88.4402703&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.623233,88.4402703&format=gif'),
(318, 'b5a0ee3a', '3cb4066a8aef1b6979a1fbdb5a9840c6', 'Silicon', 'Silicon, 42, Chirag Ali Lane, Abids, Hyderabad, Telangana 500001, India', NULL, NULL, '17.3920699,78.4750132', 17.392071, 78.475014, 'point_of_interest', 'maps/raw/places/staticmap/location=17.3920699,78.4750132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.3920699,78.4750132&format=gif'),
(319, '9a7ab9bb', '623a00e4e72ebd080480049b059a4733', 'Silicon', '150, Silicon, Santoshpur Ave, Adipally Santoshpur, Adipally, Santoshpur, Kolkata, West Bengal 700075, India', NULL, NULL, '22.492764,88.3881241', 22.492764, 88.388123, 'point_of_interest', 'maps/raw/places/staticmap/location=22.492764,88.3881241&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.492764,88.3881241&format=gif'),
(320, 'ff493730', '3c0edf8e0d748326a21e9a124329ec5e', 'Silicon', 'Silicon, Gandhi Nagar Airport Area, Deolali Gaon, Nashik, Maharashtra 422101, India', NULL, NULL, '19.966942,73.811264', 19.966942, 73.811264, 'point_of_interest', 'maps/raw/places/staticmap/location=19.966942,73.811264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.966942,73.811264&format=gif'),
(321, '6f964250', 'c623aa7c5f3e5931a8640b9d41bdb610', 'Silicon', 'Silicon, Mangalwar Peth, Kasba Peth, Pune, Maharashtra 411011, India', NULL, NULL, '18.522504,73.866417', 18.522505, 73.866417, 'home_goods_store', 'maps/raw/places/staticmap/location=18.522504,73.866417&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.522504,73.866417&format=gif'),
(322, '533f60a2', '48d2d79219e5e9fd72d5088e14b09a1d', 'Silicon', 'Silicon, Devi Colony, Bank colony, Bidar, Karnataka 585401, India', NULL, NULL, '17.9211958,77.5088561', 17.921196, 77.508858, 'point_of_interest', 'maps/raw/places/staticmap/location=17.9211958,77.5088561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.9211958,77.5088561&format=gif'),
(323, '3e108168', '47bfa6c0e474f7a581871dc34e553d81', 'WaleÃ½', 'DeodÃ¡polis, State of Mato Grosso do Sul, 79790-000, Brazil', NULL, NULL, '-22.216807,-54.128386', -22.216806, -54.128387, 'point_of_interest', 'maps/raw/places/staticmap/location=-22.216807,-54.128386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.216807,-54.128386&format=gif'),
(324, '25d307f2', '87b1fde624e640324fbcbaae284ecc02', 'Waley', 'Al Hadrah Qebli, Qesm Bab Sharqi, Alexandria Governorate, Egypt', NULL, NULL, '31.201784,29.932156', 31.201784, 29.932156, 'clothing_store', 'maps/raw/places/staticmap/location=31.201784,29.932156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.201784,29.932156&format=gif'),
(325, '039fa487', '419dec8f0860a51f51ffd0b091515d4b', 'Waley Insurance', '202 North Brushy Street, Leander, TX 78641, United States', NULL, NULL, '30.579629,-97.854328', 30.579630, -97.854324, 'insurance_agency', 'maps/raw/places/staticmap/location=30.579629,-97.854328&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.579629,-97.854328&format=gif'),
(326, 'fe80efb5', '466bfbc25f4483fe5f3699fbb8435585', 'Waley Elahed', 'Hadaeq Al Qubbah, Hadaeq Al Qubbah, Cairo Governorate, Egypt', NULL, NULL, '30.088228,31.284521', 30.088228, 31.284521, 'pharmacy', 'maps/raw/places/staticmap/location=30.088228,31.284521&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.088228,31.284521&format=gif'),
(327, '8fdeb1c7', '0d47893fab181d0670ea863faf4478eb', 'Jagram Ganga Sahay Oshadhiyo Waley', 'Shop No:362, Tripolia Bazar, Modikhana, Jaipur, Rajasthan 302002, India', NULL, NULL, '26.924261,75.819931', 26.924261, 75.819931, 'store', 'maps/raw/places/staticmap/location=26.924261,75.819931&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.924261,75.819931&format=gif'),
(328, '346256e5', '1cea7d5ca5725d33a31b8b77a2de3235', 'Waley J Moreira', 'Rua EspÃ­rito Santo, 466 - Centro, Belo Horizonte - MG, 30160-030, Brazil', NULL, NULL, '-19.918744,-43.937238', -19.918743, -43.937237, 'lawyer', 'maps/raw/places/staticmap/location=-19.918744,-43.937238&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-19.918744,-43.937238&format=gif'),
(329, '78ab011c', '206be94f575659473214b65a1603c3a6', 'Dharam Chand Banarsi Dass Jain Sialkote Button Waley', '469, Bartan Market, Sadar Bazaar, Sadar Bazaar, New Delhi, Delhi 110006, India', NULL, NULL, '28.654092,77.208899', 28.654093, 77.208900, 'point_of_interest', 'maps/raw/places/staticmap/location=28.654092,77.208899&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.654092,77.208899&format=gif'),
(330, 'e4a1f61d', '819638df2ab98f7d6bc059a759790977', 'Safa Waley Raja Khan', 'Kotwali Road, Moti Nagar, Sagar, Madhya Pradesh 470002, India', NULL, NULL, '23.837239,78.739952', 23.837238, 78.739952, 'shopping_mall', 'maps/raw/places/staticmap/location=23.837239,78.739952&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.837239,78.739952&format=gif'),
(331, 'ca58cb5b', '341b367f1255c427c3d58fdf110266e7', 'Jhandey Waley Shukla, Om Nagar', 'Pawanpuri, Alambagh, Lucknow, Uttar Pradesh 226005, India', NULL, NULL, '26.813998,80.909307', 26.813997, 80.909309, 'point_of_interest', 'maps/raw/places/staticmap/location=26.813998,80.909307&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.813998,80.909307&format=gif'),
(332, 'a18e5283', '7687aac4cc820971371c164463491810', 'shanno bhai parathey waley seelampur', 'New Seelampur Phase II, Shahdara, New Delhi, Delhi 110031, India', NULL, NULL, '28.674864,77.266341', 28.674864, 77.266342, 'restaurant', 'maps/raw/places/staticmap/location=28.674864,77.266341&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.674864,77.266341&format=gif'),
(333, '2be4c520', '7d10b47bb4c36e2d5c61a8d415bad7e9', 'Waley Elneem', 'Al Gamaleyah, Qesm Gamaleyah, Cairo Governorate, Egypt', NULL, NULL, '30.047109,31.262291', 30.047110, 31.262291, 'establishment', 'maps/raw/places/staticmap/location=30.047109,31.262291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.047109,31.262291&format=gif'),
(334, 'c56f56cd', '78c47207ba4828f6f2e10b19025edd59', 'Bhagatji Silicate waley', 'Freeganj Road, Belanganj, Civil Lines, Agra, Uttar Pradesh 282004, India', NULL, NULL, '27.195385,78.018057', 27.195385, 78.018059, 'point_of_interest', 'maps/raw/places/staticmap/location=27.195385,78.018057&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.195385,78.018057&format=gif'),
(335, '2d9045f6', 'cae7d795ae1b30996db7ef6b0b676ed4', 'Waley Elneem', 'An Nahdah, Qesm as Salam, Cairo Governorate, Egypt', NULL, NULL, '30.173999,31.445373', 30.174000, 31.445374, 'establishment', 'maps/raw/places/staticmap/location=30.173999,31.445373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.173999,31.445373&format=gif'),
(336, '8b0c012c', '062dec8a863c6e5d47c6691967cb77ce', 'Waley Elneem', 'Shagret Mariem, Qesm Al Matareyah, Cairo Governorate, Egypt', NULL, NULL, '30.124706,31.303858', 30.124706, 31.303858, 'restaurant', 'maps/raw/places/staticmap/location=30.124706,31.303858&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.124706,31.303858&format=gif'),
(337, '286556ad', '7de09734ffed0610c146678c02ce8826', 'Chadha Ram Waley', 'Street No-6, Cheema Chowk, Janak Puri, Ludhiana, Punjab 141003, India', NULL, NULL, '30.9015,75.86893', 30.901501, 75.868927, 'store', 'maps/raw/places/staticmap/location=30.9015,75.86893&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.9015,75.86893&format=gif'),
(338, '22ae42f5', 'b78d00ac3afd5bb749f141e51d17b877', 'Mr. Waley Tailoring Shop', 'Oluwole, Ikeja, Nigeria', NULL, NULL, '6.629462,3.342317', 6.629462, 3.342317, 'store', 'maps/raw/places/staticmap/location=6.629462,3.342317&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.629462,3.342317&format=gif'),
(339, '16132fb2', 'be775fbe40aab2bffdd29b2a0dab7369', 'Ram Gopal Jagdish Prasad Bartan Waley', 'Sujanpura Road, Alambagh, Lucknow, Uttar Pradesh 226005, India', NULL, NULL, '26.817091,80.909616', 26.817091, 80.909615, 'establishment', 'maps/raw/places/staticmap/location=26.817091,80.909616&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.817091,80.909616&format=gif'),
(340, '75f6cc55', '6f5a070cc5ebbced3695acf818a79a8b', 'Kishore Kumar Bhas Wali Waley', 'Maruti Estate Road, Maruti Estate, Near Simpkins School, Shahganj, Agra, Uttar Pradesh 282010, India', NULL, NULL, '27.1827,77.967306', 27.182699, 77.967308, 'store', 'maps/raw/places/staticmap/location=27.1827,77.967306&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.1827,77.967306&format=gif'),
(341, '87682d9a', 'f1070af3cb81876c91b9ce07d9462b9e', 'Mohammad Anees Baksey Waley', 'Takrohi Road, Indra Nagar, Amrai Gaon, Naubasta Kala, Uttar Pradesh 226016, India', NULL, NULL, '26.912245,81.027333', 26.912245, 81.027336, 'furniture_store', 'maps/raw/places/staticmap/location=26.912245,81.027333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.912245,81.027333&format=gif'),
(342, 'a87828d7', '936d6c213a9fa512384d8c1c10e302b1', 'Sardar Ji Rewdi Waley', 'Revdi Vala Charbagh, Cash and Pay Colony, Charbagh, Lucknow, Uttar Pradesh 226004, India', NULL, NULL, '26.832592,80.922494', 26.832592, 80.922493, 'food', 'maps/raw/places/staticmap/location=26.832592,80.922494&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.832592,80.922494&format=gif'),
(343, '638adaf8', '93561240a1e8ba2c7740bff2833f016a', 'Raza Telecom', '5219 North Harlem Avenue, Chicago, IL 60656, United States', NULL, NULL, '41.976124,-87.806798', 41.976124, -87.806801, 'establishment', 'maps/raw/places/staticmap/location=41.976124,-87.806798&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.976124,-87.806798&format=gif'),
(344, '801ac887', 'c1c566a7a2204da63b8b3c4aa9865845', 'National Council of La Raza', '1126 16th Street Northwest #600, Washington, DC 20036, United States', NULL, NULL, '38.904482,-77.036901', 38.904484, -77.036903, 'point_of_interest', 'maps/raw/places/staticmap/location=38.904482,-77.036901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.904482,-77.036901&format=gif'),
(345, '97e0a7ab', 'd80a50307a6d760b34fb9dc9554250be', 'Raza Communication', '991 Albion Road, Etobicoke, ON M9V 1A6, Canada', NULL, NULL, '43.736381,-79.563781', 43.736382, -79.563782, 'establishment', 'maps/raw/places/staticmap/location=43.736381,-79.563781&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.736381,-79.563781&format=gif'),
(346, '80268c2b', 'adf2fc1c53c68a7ec75c2d7484624173', 'National Council of La Raza', '318 West 39th Street #5, New York, NY 10018, United States', NULL, NULL, '40.755737,-73.992526', 40.755737, -73.992523, 'establishment', 'maps/raw/places/staticmap/location=40.755737,-73.992526&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.755737,-73.992526&format=gif'),
(347, '4de0bd61', '2456b77f751caef40e226a035af5e6c2', 'National Council of La Raza', '1107 9th Street #230, Sacramento, CA 95814, United States', NULL, NULL, '38.579175,-121.495257', 38.579174, -121.495255, 'establishment', 'maps/raw/places/staticmap/location=38.579175,-121.495257&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.579175,-121.495257&format=gif'),
(348, 'e4524a87', '181eb783e5fbe18269a14209b0386ea6', 'National Council of La Raza', '161 North Clark Street # 4700, Chicago, IL 60601, United States', NULL, NULL, '41.884738,-87.630737', 41.884739, -87.630737, 'point_of_interest', 'maps/raw/places/staticmap/location=41.884738,-87.630737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.884738,-87.630737&format=gif'),
(349, '62e9a31d', '4d8433032ecffa5884441ecb2a092cde', 'La Raza Centro Legal Inc', '474 Valencia Street # 295, San Francisco, CA 94103, United States', NULL, NULL, '37.765415,-122.42227', 37.765415, -122.422272, 'point_of_interest', 'maps/raw/places/staticmap/location=37.765415,-122.42227&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765415,-122.42227&format=gif'),
(350, '453a79b3', '497afea7417020ec9572ff335db7449c', 'El Centro De La Raza', '2524 16th Avenue South, Seattle, WA 98144, United States', NULL, NULL, '47.580339,-122.311325', 47.580338, -122.311325, 'establishment', 'maps/raw/places/staticmap/location=47.580339,-122.311325&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.580339,-122.311325&format=gif'),
(351, 'bd44ed0b', '4d5e62c68b7cdff08bfb4ef3ac074d30', 'Servicios De La Raza', '3131 West 14th Avenue, Denver, CO 80204, United States', NULL, NULL, '39.738883,-105.027156', 39.738884, -105.027153, 'food', 'maps/raw/places/staticmap/location=39.738883,-105.027156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.738883,-105.027156&format=gif'),
(352, 'd5eca139', '896541606dddc9e2ffce117dd6cf796d', 'Raza Development Fund', '1 East Washington Street # 250, Phoenix, AZ 85004, United States', NULL, NULL, '33.447949,-112.072924', 33.447948, -112.072922, 'establishment', 'maps/raw/places/staticmap/location=33.447949,-112.072924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.447949,-112.072924&format=gif'),
(353, '6b0ba7a9', '3684d00c1f505a080da5f175ee6c92f1', 'Casa De La Raza', '601 East Montecito Street, Santa Barbara, CA 93103, United States', NULL, NULL, '34.421634,-119.686095', 34.421635, -119.686096, 'health', 'maps/raw/places/staticmap/location=34.421634,-119.686095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.421634,-119.686095&format=gif'),
(354, '27e6040d', '71c0edc5bc6acf3d087db4796c863550', 'Dr. Azra Raza, MD', '161 Fort Washington Avenue #918, New York, NY 10032, United States', NULL, NULL, '40.840569,-73.943165', 40.840569, -73.943169, 'doctor', 'maps/raw/places/staticmap/location=40.840569,-73.943165&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.840569,-73.943165&format=gif'),
(355, 'a9baeff3', '94598119cbed39e4aebe0d70e4491863', 'Instituto Familiar de la Raza Inc.', '2919 Mission Street, San Francisco, CA 94110, United States', NULL, NULL, '37.750256,-122.418072', 37.750256, -122.418076, 'health', 'maps/raw/places/staticmap/location=37.750256,-122.418072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.750256,-122.418072&format=gif'),
(356, 'f4a6f944', '9aefce06a939e3b66440cfeab86de25b', 'Mehran Raza D.D.S', '3753 Mission Avenue #116, Oceanside, CA 92058, United States', NULL, NULL, '33.224337,-117.331861', 33.224339, -117.331863, 'doctor', 'maps/raw/places/staticmap/location=33.224337,-117.331861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.224337,-117.331861&format=gif'),
(357, '6a01be9f', 'aa17d7f805b7f5b9d7fbe40012aef1cb', 'La Raza Community Resource Center', '474 Valencia Street # 100, San Francisco, CA 94103, United States', NULL, NULL, '37.765453,-122.422379', 37.765453, -122.422379, 'establishment', 'maps/raw/places/staticmap/location=37.765453,-122.422379&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765453,-122.422379&format=gif'),
(358, 'd716b804', 'd559fe1e29c6619ed508042facabc8e0', 'Dr. Catherine A. Chin, MD', '1030 International Boulevard, Oakland, CA 94606, United States', NULL, NULL, '37.791962,-122.248915', 37.791962, -122.248917, 'doctor', 'maps/raw/places/staticmap/location=37.791962,-122.248915&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791962,-122.248915&format=gif'),
(359, '90688716', '5911310040a6d66b544b6b36d0f8a935', 'La Clinica De La Raza: Rustamzadeh David DDS', '1601 Fruitvale Avenue, Oakland, CA 94601, United States', NULL, NULL, '37.77995,-122.224934', 37.779949, -122.224937, 'dentist', 'maps/raw/places/staticmap/location=37.77995,-122.224934&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.77995,-122.224934&format=gif'),
(360, '9a7f4a15', 'bed4d17e5bd8efe67ea560a0086d2d30', 'Plaza De La Raza Child Development', '8337 Telegraph Road # 300, Pico Rivera, CA 90660, United States', NULL, NULL, '33.964641,-118.113298', 33.964642, -118.113297, 'health', 'maps/raw/places/staticmap/location=33.964641,-118.113298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.964641,-118.113298&format=gif'),
(361, '25647a4c', '1fd788745df6923dbb7e10a06b278fee', 'Instituto Laboral De La Raza', '2947 16th Street, San Francisco, CA 94103, United States', NULL, NULL, '37.764955,-122.418554', 37.764954, -122.418556, 'establishment', 'maps/raw/places/staticmap/location=37.764955,-122.418554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.764955,-122.418554&format=gif'),
(362, 'd6709acd', 'a5fc9fc5c004e50d96a8e2d4f4d59f30', 'Hawaii', 'Hawaii, USA', NULL, NULL, '19.8967662,-155.5827818', 19.896767, -155.582779, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=19.8967662,-155.5827818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.8967662,-155.5827818&format=gif'),
(363, '16537242', 'c15c0c807b34202fbcb6f18f9523cc74', 'F.A. Nunnelly Company', '2922 North PanAm Expressway, San Antonio, TX 78208, United States', NULL, NULL, '29.438888,-98.443424', 29.438889, -98.443420, 'general_contractor', 'maps/raw/places/staticmap/location=29.438888,-98.443424&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.438888,-98.443424&format=gif'),
(364, 'a748cf36', 'c9f9adf1057d97353b55d3548918ed94', 'F.A. Motorcars', '12843 Nacogdoches Road, San Antonio, TX 78217, United States', NULL, NULL, '29.558152,-98.397833', 29.558151, -98.397835, 'car_dealer', 'maps/raw/places/staticmap/location=29.558152,-98.397833&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.558152,-98.397833&format=gif'),
(365, '4e228d6f', '325a1192fe5d8c25c6e93bbc066838ae', 'F A Mc Comas Inc', '3636 Highpoint Street, San Antonio, TX 78217, United States', NULL, NULL, '29.54167,-98.426956', 29.541670, -98.426956, 'painter', 'maps/raw/places/staticmap/location=29.54167,-98.426956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.54167,-98.426956&format=gif'),
(366, 'a61dc6f1', '5e0519b60a13d8935719e2a78b40d39c', 'Sanfa Construction Supply', 'Corozal, Belize', NULL, NULL, '18.388825,-88.400676', 18.388824, -88.400673, 'hardware_store', 'maps/raw/places/staticmap/location=18.388825,-88.400676&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.388825,-88.400676&format=gif'),
(367, '8ba463e5', 'be6bf8c2758ad53c78df716040a30b86', 'Restaurante Ni Fu Ni Fa', 'Barrio Los Andes, San Pedro Sula, Honduras', NULL, NULL, '15.511737,-88.035003', 15.511737, -88.035004, 'restaurant', 'maps/raw/places/staticmap/location=15.511737,-88.035003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.511737,-88.035003&format=gif'),
(368, 'c6a95d40', 'f1fad5edf7a497b79336568841cecfb9', 'Freedom Acres Resorts', '1924 Glen Helen Road, San Bernardino, CA 92407, United States', NULL, NULL, '34.220696,-117.420123', 34.220695, -117.420120, 'lodging', 'maps/raw/places/staticmap/location=34.220696,-117.420123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.220696,-117.420123&format=gif'),
(369, '4500b64b', 'b38e23fb99dc6fc2c4e1362703cb4ae0', 'F A Poli Trucking &amp; Materials', '120 South Maple Avenue, South San Francisco, CA 94080, United States', NULL, NULL, '37.649376,-122.415285', 37.649376, -122.415283, 'moving_company', 'maps/raw/places/staticmap/location=37.649376,-122.415285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.649376,-122.415285&format=gif'),
(370, '6e57fe53', '8f96a25312e979240b75bca8a4723d14', 'Fa Instruments Inc', '2381 Zanker Road # 100, San Jose, CA 95131, United States', NULL, NULL, '37.384427,-121.920416', 37.384426, -121.920418, 'establishment', 'maps/raw/places/staticmap/location=37.384427,-121.920416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.384427,-121.920416&format=gif'),
(371, 'bc0e2cfb', 'dcb2fc7d82981e8a814c5948ea825ae2', 'Fiesta Americana Grand los Cabos All Inclusive Golf &amp; Spa', 'Carretera Transpeninsular Km 10.3, Cabo del Sol, 23410 Cabo San Lucas, B.C.S., Mexico', NULL, NULL, '22.921248,-109.828946', 22.921247, -109.828949, 'lodging', 'maps/raw/places/staticmap/location=22.921248,-109.828946&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.921248,-109.828946&format=gif'),
(372, '629f6cdc', '0f8ac00cdca7923c039df2cf7d4f88b0', 'HUNGFAKWOON.COM', '219 Monterey Boulevard, San Francisco, CA 94131, United States', NULL, NULL, '37.731387,-122.440242', 37.731388, -122.440239, 'school', 'maps/raw/places/staticmap/location=37.731387,-122.440242&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.731387,-122.440242&format=gif'),
(373, '581f261f', '78eb2689dc426a15f6bef7d0f3dd2f88', 'Wha Fa Produce Co', '2165 Irving Street, San Francisco, CA 94122, United States', NULL, NULL, '37.763282,-122.48112', 37.763283, -122.481117, 'bakery', 'maps/raw/places/staticmap/location=37.763282,-122.48112&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.763282,-122.48112&format=gif'),
(374, '5138da00', '2274ba8993716d68989b86262136cde6', 'Mt. San Antonio College', '1100 North Grand Avenue, Walnut, CA 91789, United States', NULL, NULL, '34.048567,-117.842095', 34.048569, -117.842094, 'point_of_interest', 'maps/raw/places/staticmap/location=34.048567,-117.842095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.048567,-117.842095&format=gif'),
(375, '8a9dac29', '758b52286555c31ad0a01edabf75b778', 'Sanfa', 'Durango 606, Valle del Sur, 34120 Durango, Dgo., Mexico', NULL, NULL, '24.012247,-104.684373', 24.012247, -104.684372, 'store', 'maps/raw/places/staticmap/location=24.012247,-104.684373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.012247,-104.684373&format=gif'),
(376, '9bcb48d4', '455b42d9e53e218a7621fe9976ac3dd5', 'Advanced Mechatronics Solutions', '9051 Siempre Viva Road # J, San Diego, CA 92154, United States', NULL, NULL, '32.552585,-116.948635', 32.552586, -116.948631, 'car_repair', 'maps/raw/places/staticmap/location=32.552585,-116.948635&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.552585,-116.948635&format=gif'),
(377, 'b0e78828', 'd54b006e72584942b72c04df3b8b40b2', 'San Diego State University', '5500 Campanile Drive, San Diego, CA 92182, United States', NULL, NULL, '32.77477,-117.071665', 32.774769, -117.071663, 'university', 'maps/raw/places/staticmap/location=32.77477,-117.071665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.77477,-117.071665&format=gif'),
(378, '6a184ecd', '064f395334bc05daa24bed869c1a019d', 'Food Addicts In Recovery', 'San Francisco, CA 94111, United States', NULL, NULL, '37.795936,-122.400003', 37.795937, -122.400002, 'health', 'maps/raw/places/staticmap/location=37.795936,-122.400003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795936,-122.400003&format=gif'),
(379, '521da513', '3761e987071a23938db0825e5cff9071', 'Food Addicts In Recovery Anonymous', 'San Jose, CA 95101, United States', NULL, NULL, '37.329012,-121.916021', 37.329014, -121.916023, 'health', 'maps/raw/places/staticmap/location=37.329012,-121.916021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.329012,-121.916021&format=gif'),
(380, '929e538a', '67cb18cd6fc7cc9a14e53531197f753e', 'San JosÃ© State University', '1 Washington Sq, San Jose, CA 95192, United States', NULL, NULL, '37.335187,-121.881072', 37.335186, -121.881073, 'university', 'maps/raw/places/staticmap/location=37.335187,-121.881072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.335187,-121.881072&format=gif'),
(381, '4a306f75', '0ef7f39dce7943b5e4b266f7b0a81f8e', 'Queen', 'San Pedro 202, Del Valle, 66220 San Pedro Garza GarcÃ­a, N.L., Mexico', NULL, NULL, '25.660182,-100.370062', 25.660183, -100.370064, 'bar', 'maps/raw/places/staticmap/location=25.660182,-100.370062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.660182,-100.370062&format=gif'),
(382, '989267b1', '283c94c616097bb666ef5c0bda29ac90', 'Wildlife Center of Silicon Valley', '3027 Penitencia Creek Road, San Jose, CA 95132, United States', NULL, NULL, '37.388971,-121.848359', 37.388969, -121.848358, 'point_of_interest', 'maps/raw/places/staticmap/location=37.388971,-121.848359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.388971,-121.848359&format=gif'),
(383, '7638d310', '08834925c28433f75306b801c8ac96ec', 'San Francisco Travel Association', '6929 Valleyview Drive, Downers Grove, IL 60516, United States', NULL, NULL, '41.760118,-88.001727', 41.760117, -88.001724, 'travel_agency', 'maps/raw/places/staticmap/location=41.760118,-88.001727&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.760118,-88.001727&format=gif'),
(384, '04fa5f49', '68c5734da43384f2680cd210f0b454c7', 'San Francisco CVB', '1730 M Street Northwest #607, Washington, DC 20036, United States', NULL, NULL, '38.905345,-77.039918', 38.905346, -77.039917, 'point_of_interest', 'maps/raw/places/staticmap/location=38.905345,-77.039918&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905345,-77.039918&format=gif'),
(385, '92631629', 'a3302b7ebb653c44eb92b624605d7e7d', 'Only In San Francisco', 'Beach Street, San Francisco, CA 94133, United States', NULL, NULL, '37.808747,-122.410346', 37.808746, -122.410347, 'store', 'maps/raw/places/staticmap/location=37.808747,-122.410346&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.808747,-122.410346&format=gif'),
(386, 'bd55970d', '5b36e477b9bbd142d79e3ef3a124b52b', 'San Francisco Underground', '182 Howard Street #240, San Francisco, CA 94105, United States', NULL, NULL, '37.791162,-122.393309', 37.791161, -122.393311, 'travel_agency', 'maps/raw/places/staticmap/location=37.791162,-122.393309&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791162,-122.393309&format=gif'),
(387, '33332fdb', 'beca830be3b32b91cad6c6ed546befad', 'San Francisco Visitor Information Center', '900 Market Street, San Francisco, CA 94102, United States', NULL, NULL, '37.784111,-122.408311', 37.784111, -122.408310, 'establishment', 'maps/raw/places/staticmap/location=37.784111,-122.408311&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.784111,-122.408311&format=gif'),
(388, '6e8f9f29', '0982245a49552fcdd63145ebd1347d8f', 'San Francisco Travel Association', '1 Front Street Suite 2900, San Francisco, CA 94111, United States', NULL, NULL, '37.791883,-122.398841', 37.791882, -122.398842, 'establishment', 'maps/raw/places/staticmap/location=37.791883,-122.398841&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791883,-122.398841&format=gif'),
(389, 'd2cfad16', '823a5f523973e4a703a8fe3dd6869a3f', 'W San Francisco', '181 3rd Street, San Francisco, CA 94103, United States', NULL, NULL, '37.785318,-122.400442', 37.785316, -122.400444, 'lodging', 'maps/raw/places/staticmap/location=37.785318,-122.400442&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.785318,-122.400442&format=gif'),
(390, 'ae28943f', '0a859f9266da99a76bf47a4017e86afa', 'San Francisco Giants', '24 Willie Mays Plaza, San Francisco, CA 94107, United States', NULL, NULL, '37.778175,-122.390725', 37.778175, -122.390724, 'establishment', 'maps/raw/places/staticmap/location=37.778175,-122.390725&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.778175,-122.390725&format=gif'),
(391, '3256a901', '201d0ecd68e7fcd231e1fec78b0cb183', 'SF Giants Baseball Club : Dugout Store', '4 Embarcadero Center, San Francisco, CA 94111, United States', NULL, NULL, '37.795284,-122.396229', 37.795284, -122.396233, 'clothing_store', 'maps/raw/places/staticmap/location=37.795284,-122.396229&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795284,-122.396229&format=gif'),
(392, '4b75e51e', '26048b14e9b4171b70c4fe08a112500b', 'Giants Dugout Stores', '3251 20th Avenue #173, San Francisco, CA 94132, United States', NULL, NULL, '37.728041,-122.477539', 37.728043, -122.477539, 'store', 'maps/raw/places/staticmap/location=37.728041,-122.477539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.728041,-122.477539&format=gif'),
(393, '425dab30', 'd0ef8c1d36ccc5634fe4d445bfa78ff6', 'San Francisco Giants Offices', '7402 East Osborn Road, Scottsdale, AZ 85251, United States', NULL, NULL, '33.487761,-111.922923', 33.487762, -111.922920, 'establishment', 'maps/raw/places/staticmap/location=33.487761,-111.922923&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.487761,-111.922923&format=gif'),
(394, 'dfd06215', 'dc772823a701ba0c7142c168f6ebe097', 'Giants Dugout Stores', '127 Serramonte Center, Daly City, CA 94015, United States', NULL, NULL, '37.671131,-122.470638', 37.671131, -122.470634, 'clothing_store', 'maps/raw/places/staticmap/location=37.671131,-122.470638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.671131,-122.470638&format=gif'),
(395, 'd010f0a3', '5aaa273f91d02a91ba5a656e09f2ba03', 'San Francisco International Airport', 'San Francisco, CA 94128, United States', NULL, NULL, '37.621313,-122.378955', 37.621311, -122.378952, 'airport', 'maps/raw/places/staticmap/location=37.621313,-122.378955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.621313,-122.378955&format=gif'),
(396, '911f2e79', 'd1d02d06d248740875e86cf5f8b7290b', 'San Francisco State University', '1600 Holloway Avenue, San Francisco, CA 94132, United States', NULL, NULL, '37.721897,-122.478209', 37.721897, -122.478210, 'university', 'maps/raw/places/staticmap/location=37.721897,-122.478209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.721897,-122.478209&format=gif'),
(397, '00e577a9', 'a81bdd96f886b3b6cbc8ea365d078bda', 'SanFrancisco Magazine', '243 Vallejo Street, San Francisco, CA 94111, United States', NULL, NULL, '37.799275,-122.401928', 37.799274, -122.401932, 'establishment', 'maps/raw/places/staticmap/location=37.799275,-122.401928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.799275,-122.401928&format=gif'),
(398, 'edb0542d', '0aa5a161230562827e88dc204ca1ac15', 'San Francisco Chronicle', '901 Mission Street, San Francisco, CA 94103, United States', NULL, NULL, '37.782362,-122.406464', 37.782364, -122.406464, 'point_of_interest', 'maps/raw/places/staticmap/location=37.782362,-122.406464&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.782362,-122.406464&format=gif'),
(399, '796bb11e', '2c5cbf90402f045c0d128e647dfa2bcd', 'San Francisco Chronicle', '1350 16th Street, Oakland, CA 94607, United States', NULL, NULL, '37.812262,-122.290135', 37.812263, -122.290138, 'point_of_interest', 'maps/raw/places/staticmap/location=37.812262,-122.290135&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.812262,-122.290135&format=gif'),
(400, '714aa78d', 'd9460c43b6deebb96536be22e3f57518', 'University of San Francisco', '2130 Fulton Street, San Francisco, CA 94117, United States', NULL, NULL, '37.775749,-122.450386', 37.775749, -122.450386, 'university', 'maps/raw/places/staticmap/location=37.775749,-122.450386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.775749,-122.450386&format=gif'),
(401, '85d8405a', '85658f876e0a97d87b45f436ae3785e4', 'University of San Francisco', '480 South Batavia Street, Orange, CA 92868, United States', NULL, NULL, '33.781224,-117.862712', 33.781223, -117.862709, 'university', 'maps/raw/places/staticmap/location=33.781224,-117.862712&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.781224,-117.862712&format=gif'),
(402, '01dce0c6', '67d5bb018c8ad308482ddb876e727ecc', 'Rio de Janeiro', 'Rio de Janeiro - State of Rio de Janeiro, Brazil', NULL, NULL, '-22.9068467,-43.1728965', -22.906847, -43.172897, 'locality', 'maps/raw/places/staticmap/location=-22.9068467,-43.1728965&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.9068467,-43.1728965&format=gif'),
(403, '4bef5a53', '2601a81f60c575d3a89932167e22b3e9', 'Saale', 'Saale, Germany', NULL, NULL, '51.2824759,11.6919722', 51.282475, 11.691972, 'natural_feature', 'maps/raw/places/staticmap/location=51.2824759,11.6919722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C51.2824759,11.6919722&format=gif'),
(404, 'fe3e3daa', '6518c9b3aa2381159698181e55d839e8', 'Rio All-Suites Hotel and Casino', '3700 West Flamingo Road, Las Vegas, NV 89103, United States', NULL, NULL, '36.117515,-115.188159', 36.117516, -115.188156, 'lodging', 'maps/raw/places/staticmap/location=36.117515,-115.188159&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.117515,-115.188159&format=gif'),
(405, '8d12d832', '814f7ea860eaabd599fbd543d79be726', 'RIO Products', '5050 South Yellowstone Highway, Idaho Falls, ID 83402, United States', NULL, NULL, '43.452238,-112.069554', 43.452236, -112.069557, 'store', 'maps/raw/places/staticmap/location=43.452238,-112.069554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.452238,-112.069554&format=gif'),
(406, 'f8fcb8a5', '9488c126159fb613962a322309c5fe23', 'University of Rio Grande', '218 North College Avenue, Rio Grande, OH 45674, United States', NULL, NULL, '38.881704,-82.380209', 38.881702, -82.380211, 'university', 'maps/raw/places/staticmap/location=38.881704,-82.380209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.881704,-82.380209&format=gif'),
(407, '631b3e42', '2fe396990f17a056cc534359af849ecc', 'Rio Tinto Distribution Center', '6076 Broken Rock Cir, South Jordan, UT 84095, United States', NULL, NULL, '40.523397,-112.09474', 40.523396, -112.094742, 'point_of_interest', 'maps/raw/places/staticmap/location=40.523397,-112.09474&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.523397,-112.09474&format=gif'),
(408, '6f5a4655', '585def4e2b884589e6c42f5adcc7a477', 'Rio Salado College', '2323 West 14th Street, Tempe, AZ 85281, United States', NULL, NULL, '33.412645,-111.974169', 33.412643, -111.974167, 'point_of_interest', 'maps/raw/places/staticmap/location=33.412645,-111.974169&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.412645,-111.974169&format=gif'),
(409, '0b5a5ce6', '4de7a84603d6a23a516113d92a1a9bb3', 'Rio Grande Mexican Restaurant', '9535 Park Meadows Drive, Lone Tree, CO 80124, United States', NULL, NULL, '39.554765,-104.879265', 39.554764, -104.879265, 'restaurant', 'maps/raw/places/staticmap/location=39.554765,-104.879265&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.554765,-104.879265&format=gif'),
(410, '0a9091b3', '95ab6c3c08f55286fccb766736e60450', 'Rio Hondo College', '3600 Workman Mill Road, Whittier, CA 90601, United States', NULL, NULL, '34.019466,-118.033803', 34.019466, -118.033806, 'point_of_interest', 'maps/raw/places/staticmap/location=34.019466,-118.033803&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.019466,-118.033803&format=gif'),
(411, 'c47f7fd0', '198b45dc60b797469fe37e0642f18bf8', 'Rio Elementary', '355 Lowville Road, Rio, WI 53960, United States', NULL, NULL, '43.44594,-89.245885', 43.445938, -89.245888, 'school', 'maps/raw/places/staticmap/location=43.44594,-89.245885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.44594,-89.245885&format=gif'),
(412, 'fa97edfc', '02502253280d224d13364b2e5fded88d', 'Rio Grande Mexican Restaurant', '143 West Mountain Avenue, Fort Collins, CO 80524, United States', NULL, NULL, '40.586733,-105.078217', 40.586735, -105.078217, 'bar', 'maps/raw/places/staticmap/location=40.586733,-105.078217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.586733,-105.078217&format=gif'),
(413, 'cddf40aa', '6b2ff88c448dd886ee84ce3dca25ccd7', 'RIO Rooftop &amp; Restaurant', '601 Rio Grande Street, Austin, TX 78701, United States', NULL, NULL, '30.270101,-97.749298', 30.270102, -97.749298, 'night_club', 'maps/raw/places/staticmap/location=30.270101,-97.749298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.270101,-97.749298&format=gif'),
(414, '19966158', '4621a36fa72e2af931d5dd27cd6e90b9', 'El Rio', '3158 Mission Street, San Francisco, CA 94110, United States', NULL, NULL, '37.746793,-122.41942', 37.746792, -122.419418, 'night_club', 'maps/raw/places/staticmap/location=37.746793,-122.41942&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.746793,-122.41942&format=gif'),
(415, 'ca12f796', 'a2180dd8f2229456b679011a12440c04', 'Rio Bank', '720 East Jackson Avenue, McAllen, TX 78501, United States', NULL, NULL, '26.191405,-98.213394', 26.191404, -98.213394, 'bank', 'maps/raw/places/staticmap/location=26.191405,-98.213394&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.191405,-98.213394&format=gif'),
(416, '723db959', 'fdad6e3a767d9799a8b81329d2f3bd41', 'Rio Ammunition, Inc.', 'Marshall, TX, United States', NULL, NULL, '32.557982,-94.283372', 32.557983, -94.283371, 'establishment', 'maps/raw/places/staticmap/location=32.557982,-94.283372&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.557982,-94.283372&format=gif'),
(417, 'ebbc4479', '0eb5c6431d37e4b18212e6106f96cb1f', 'Rio Grande', '7500 Bluewater Road Northwest, Albuquerque, NM 87121, United States', NULL, NULL, '35.083213,-106.720708', 35.083214, -106.720711, 'jewelry_store', 'maps/raw/places/staticmap/location=35.083213,-106.720708&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.083213,-106.720708&format=gif'),
(418, '843f7d8f', '84f0e71b8e4c23f45e750fd2347f7ca0', 'Rio Entertainment Center', '9811 Washingtonian Boulevard, Gaithersburg, MD 20878, United States', NULL, NULL, '39.115842,-77.197477', 39.115841, -77.197479, 'point_of_interest', 'maps/raw/places/staticmap/location=39.115842,-77.197477&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.115842,-77.197477&format=gif'),
(419, '65012cbd', '5418ec0dd5bbb2861e49a049e58200ff', 'Rio Grande Mexican Restaurant', '1101 Walnut Street, Boulder, CO 80302, United States', NULL, NULL, '40.016943,-105.280819', 40.016945, -105.280823, 'bar', 'maps/raw/places/staticmap/location=40.016943,-105.280819&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.016943,-105.280819&format=gif'),
(420, 'd437ed2d', '8d1a578b3949491aafd1ae875baf0512', 'Rio Grande Mexican Restaurant', '1525 Blake Street, Denver, CO 80202, United States', NULL, NULL, '39.750163,-104.999966', 39.750164, -104.999969, 'bar', 'maps/raw/places/staticmap/location=39.750163,-104.999966&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.750163,-104.999966&format=gif'),
(421, 'd80b4eeb', 'f7ae391738f55f79a3e7109db1fe6d30', 'Rio Theatre', '1205 Soquel Avenue, Santa Cruz, CA 95062, United States', NULL, NULL, '36.980167,-122.010413', 36.980167, -122.010414, 'point_of_interest', 'maps/raw/places/staticmap/location=36.980167,-122.010413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.980167,-122.010413&format=gif'),
(422, '41a3aef7', '3208345dc3c468602b18daaffaf62dae', 'El Rio Community Health Center', '839 West Congress Street, Tucson, AZ 85745, United States', NULL, NULL, '32.221213,-110.985927', 32.221214, -110.985924, 'hospital', 'maps/raw/places/staticmap/location=32.221213,-110.985927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.221213,-110.985927&format=gif'),
(423, 'fb5e3b5d', '42cd3b87a307226f72782d044208f631', 'Rio Del Valle Junior High School', '3100 Rose Avenue, Oxnard, CA 93036, United States', NULL, NULL, '34.232467,-119.154253', 34.232468, -119.154251, 'school', 'maps/raw/places/staticmap/location=34.232467,-119.154253&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.232467,-119.154253&format=gif'),
(424, 'cd0c1932', '8b02d77ec9972534efb5012d87f58c73', 'The Harry S. Truman Scholarship Foundation', '712 Jackson Place Northwest, Washington, DC 20006, United States', NULL, NULL, '38.899499,-77.03872', 38.899498, -77.038719, 'point_of_interest', 'maps/raw/places/staticmap/location=38.899499,-77.03872&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.899499,-77.03872&format=gif'),
(425, '61dbd89e', '490ce401c9666fe97a9d2d99cf509229', 'Harry S. Truman Library', '500 West US Highway 24, Independence, MO 64050, United States', NULL, NULL, '39.103448,-94.421264', 39.103447, -94.421265, 'library', 'maps/raw/places/staticmap/location=39.103448,-94.421264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.103448,-94.421264&format=gif'),
(426, '95131222', 'a45a3acc8c7e5649ee5a72c0cbe26915', 'Dabney S. Lancaster Community College Rockbridge Regional Center', '35 Vista Links Drive, Buena Vista, VA 24416, United States', NULL, NULL, '37.739563,-79.37555', 37.739563, -79.375549, 'point_of_interest', 'maps/raw/places/staticmap/location=37.739563,-79.37555&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.739563,-79.37555&format=gif'),
(427, '443b99f2', '063d292d5c9e5cc84ca35383f0240a67', 'William S Hart Museum', '24151 Newhall Avenue, Newhall, CA 91321, United States', NULL, NULL, '34.375689,-118.525691', 34.375690, -118.525688, 'museum', 'maps/raw/places/staticmap/location=34.375689,-118.525691&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.375689,-118.525691&format=gif'),
(428, '071f6ebb', '6e32b9913318cabbf6b91e495f9aaff9', 'S &amp; S Truck Parts Inc', '600 West Irving Park Road, Schaumburg, IL 60193, United States', NULL, NULL, '41.99065,-88.094771', 41.990650, -88.094772, 'store', 'maps/raw/places/staticmap/location=41.99065,-88.094771&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.99065,-88.094771&format=gif'),
(429, 'a8cbed09', '726a550a9f4242c3f8173d3f790f931f', 'S &amp; S Truck &amp; Tractor Canada Inc', '6460 Kestrel Road, Mississauga, ON L5T 1Z7, Canada', NULL, NULL, '43.652257,-79.672534', 43.652256, -79.672531, 'store', 'maps/raw/places/staticmap/location=43.652257,-79.672534&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.652257,-79.672534&format=gif'),
(430, '3e1b6e2c', '40f03db0f08a3dab60c61a535b4a5e4b', 'Dabney S. Lancaster Community College', '1000 Dabney Drive, Clifton Forge, VA 24422, United States', NULL, NULL, '37.810266,-79.852354', 37.810265, -79.852356, 'point_of_interest', 'maps/raw/places/staticmap/location=37.810266,-79.852354&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.810266,-79.852354&format=gif'),
(431, '811480d0', 'e853210bcd49e0589e535c32b4a64d03', 'Skype', '3210 Porter Drive, Palo Alto, CA 94304, United States', NULL, NULL, '37.407373,-122.147342', 37.407372, -122.147339, 'establishment', 'maps/raw/places/staticmap/location=37.407373,-122.147342&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.407373,-122.147342&format=gif'),
(432, '35d0e8be', 'bc1b7b7f16472192aa2bb8ea399bfe5e', 'William S. Hein &amp; Co., Inc.', '2350 North Forest Road, Getzville, NY 14068, United States', NULL, NULL, '43.007321,-78.775571', 43.007320, -78.775574, 'establishment', 'maps/raw/places/staticmap/location=43.007321,-78.775571&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.007321,-78.775571&format=gif'),
(433, '80cadc11', '26c20018ba6bed9c490f36d3b4c2a2d4', 'S &amp; T Bank', 'South 8th Avenue, Clarion, PA 16214, United States', NULL, NULL, '41.212014,-79.380677', 41.212013, -79.380676, 'atm', 'maps/raw/places/staticmap/location=41.212014,-79.380677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.212014,-79.380677&format=gif'),
(434, '2ffa5a59', '75927d6d726b6abd69dd072e0929147d', 'S &amp; T Bank', 'Coral Reef Road, DuBois, PA 15801, United States', NULL, NULL, '41.149694,-78.703995', 41.149693, -78.703995, 'atm', 'maps/raw/places/staticmap/location=41.149694,-78.703995&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.149694,-78.703995&format=gif'),
(435, '1b39f0d6', '187350535a96d91d5822474250a0caf6', 'Smithsonian S. Dillon Ripley Center', '1100 Jefferson Drive Southwest, Washington, DC 20560, United States', NULL, NULL, '38.888562,-77.026883', 38.888561, -77.026886, 'art_gallery', 'maps/raw/places/staticmap/location=38.888562,-77.026883&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.888562,-77.026883&format=gif'),
(436, 'c8abe36f', 'eb5aa678fffa900e4a313b1c5e3c22a3', 'Yale Music Library', '120 High Street, New Haven, CT 06511, United States', NULL, NULL, '41.311249,-72.929042', 41.311249, -72.929039, 'library', 'maps/raw/places/staticmap/location=41.311249,-72.929042&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.311249,-72.929042&format=gif'),
(437, 'd472fb01', 'f44c1f1ca8a3ea4d131b16379444d62b', 'S Karger Publishers Inc', '26 West Avon Road, Unionville, CT 06085, United States', NULL, NULL, '41.756962,-72.881836', 41.756962, -72.881836, 'establishment', 'maps/raw/places/staticmap/location=41.756962,-72.881836&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.756962,-72.881836&format=gif'),
(438, '5e3f39a6', '4910298b9b24dc55af45f1b440bfede8', 'Harry S Truman School of Public Affairs', 'Middlebush Hall, Columbia, MO 65201, United States', NULL, NULL, '38.946201,-92.326928', 38.946201, -92.326927, 'university', 'maps/raw/places/staticmap/location=38.946201,-92.326928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.946201,-92.326928&format=gif'),
(439, '6c2713a9', '4f9bf2269d95f58f5ad030b32fff07ea', 'S &amp; T Bank', 'Route 30 East, Greensburg, 15601, United States', NULL, NULL, '40.300575,-79.508197', 40.300575, -79.508194, 'atm', 'maps/raw/places/staticmap/location=40.300575,-79.508197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.300575,-79.508197&format=gif'),
(440, '5ebc5973', 'db6131218632dc12c7f7e2a6806eb05c', 'S &amp; T Bank', '2388 Pennsylvania 286, Pittsburgh, PA 15239, United States', NULL, NULL, '40.463082,-79.704561', 40.463081, -79.704559, 'atm', 'maps/raw/places/staticmap/location=40.463082,-79.704561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.463082,-79.704561&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(441, 'a11b5857', '0490901ed7c36fadb036a93466820fd9', 'The S/L/A/M Collaborative Inc', '80 Glastonbury Boulevard, Glastonbury, CT 06033, United States', NULL, NULL, '41.721391,-72.618282', 41.721390, -72.618279, 'home_goods_store', 'maps/raw/places/staticmap/location=41.721391,-72.618282&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.721391,-72.618282&format=gif'),
(442, 'dc70f1e9', 'de779fa4ba3641c7316e0f4706f6f16d', 'C &amp; S Technical Resources', '499 Col Eileen Collins Boulevard, Syracuse, NY 13212, United States', NULL, NULL, '43.114453,-76.131861', 43.114452, -76.131859, 'general_contractor', 'maps/raw/places/staticmap/location=43.114453,-76.131861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.114453,-76.131861&format=gif'),
(443, 'cb81f531', 'ac734a590fbf8e622bc22403411be6e9', 'S &amp; S Truck Parts Inc', '1401 Valley View Lane, Irving, TX 75061, United States', NULL, NULL, '32.830783,-97.028267', 32.830784, -97.028267, 'store', 'maps/raw/places/staticmap/location=32.830783,-97.028267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.830783,-97.028267&format=gif'),
(444, '8e9436ec', '57c6f58f56a7d2ce5c11bcc80ec08bef', 'T-Mobile', '304 merced mall, Merced, CA 95348, United States', NULL, NULL, '37.320641,-120.482665', 37.320641, -120.482666, 'electronics_store', 'maps/raw/places/staticmap/location=37.320641,-120.482665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.320641,-120.482665&format=gif'),
(445, '94e44c8b', '2f1ef85ef7b883e18fa4ffff3e971623', 'T-Mobile', '2800 Independence Dr, Livermore, CA 94551, United States', NULL, NULL, '37.702952,-121.812573', 37.702953, -121.812576, 'store', 'maps/raw/places/staticmap/location=37.702952,-121.812573&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.702952,-121.812573&format=gif'),
(446, '4174cb86', '2ccaa743dd9b1cfc08f39ab2995a0f0a', 'T-Mobile', '1709 Automation Pkwy, San Jose, CA 95131, United States', NULL, NULL, '37.390678,-121.884723', 37.390678, -121.884720, 'store', 'maps/raw/places/staticmap/location=37.390678,-121.884723&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.390678,-121.884723&format=gif'),
(447, '676a8b7c', '279c7c744f7723bc3db215eb22016746', 'T-Mobile', '232 S Garfield Ave, Monterey Park, CA 91754, United States', NULL, NULL, '34.060276,-118.122601', 34.060276, -118.122604, 'store', 'maps/raw/places/staticmap/location=34.060276,-118.122601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.060276,-118.122601&format=gif'),
(448, 'e7cc414e', 'd7783054b54662ae46cbecda015b0ccb', 'T-Mobile', '3100 East Imperial Highway #1202, Lynwood, CA 90262, United States', NULL, NULL, '33.929169,-118.215504', 33.929169, -118.215508, 'store', 'maps/raw/places/staticmap/location=33.929169,-118.215504&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.929169,-118.215504&format=gif'),
(449, '82eae489', 'eb76f7325c7c9459e754fb07c69495bd', 'T-Mobile Los Angeles', '105 W Century Blvd #101, Los Angeles, CA 90003, United States', NULL, NULL, '33.945752,-118.274353', 33.945751, -118.274353, 'store', 'maps/raw/places/staticmap/location=33.945752,-118.274353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.945752,-118.274353&format=gif'),
(450, '368d120c', '32758e573fd615118d8f898704804d8a', 'T-Mobile Simply Prepaid', '15126 Paramount Blvd, Paramount, CA 90723, United States', NULL, NULL, '33.895331,-118.159604', 33.895332, -118.159607, 'store', 'maps/raw/places/staticmap/location=33.895331,-118.159604&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.895331,-118.159604&format=gif'),
(451, '4a9fce37', '63a283e6d731aa86c206f636ed68810d', 'Casino Cellular', '2026 W Olympic Blvd, Los Angeles, CA 90006, United States', NULL, NULL, '34.051463,-118.27974', 34.051464, -118.279739, 'store', 'maps/raw/places/staticmap/location=34.051463,-118.27974&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.051463,-118.27974&format=gif'),
(452, '5c9ddbba', '8b7c70b8e8f9c6c28cf623a0783c1cf6', 'Law Offices of Patent Attorney William Mansfield', 'Winchester, MA, United States', NULL, NULL, '42.101483,-72.589811', 42.101482, -72.589813, 'lawyer', 'maps/raw/places/staticmap/location=42.101483,-72.589811&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.101483,-72.589811&format=gif'),
(453, '698464dd', 'e7082e759a5a09a97064466764387993', 'Twitter', '249 W 17th St, New York, NY 10011, United States', NULL, NULL, '40.741474,-73.99985', 40.741474, -73.999847, 'establishment', 'maps/raw/places/staticmap/location=40.741474,-73.99985&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.741474,-73.99985&format=gif'),
(454, '46ae68af', '9dc62e02b7462c78431abcab59afb5d2', 'Westborough MBTA Parking', 'Smith Pkwy, Westborough, MA 01581, United States', NULL, NULL, '42.269972,-71.647496', 42.269974, -71.647499, 'parking', 'maps/raw/places/staticmap/location=42.269972,-71.647496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.269972,-71.647496&format=gif'),
(455, '33964f31', '8ec23e1de6d452abeb466bb33da0820b', 'MBTA Commuter Rail Littleton Station', '261 Foster St, Littleton, MA 01460, United States', NULL, NULL, '42.519236,-71.502546', 42.519238, -71.502548, 'establishment', 'maps/raw/places/staticmap/location=42.519236,-71.502546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.519236,-71.502546&format=gif'),
(456, 'ef2146b3', '04052bd617aebe425d629cd296f18416', 'West Natick Train Station', '249 W Central St, Natick, MA 01760, United States', NULL, NULL, '42.283098,-71.391789', 42.283096, -71.391792, 'train_station', 'maps/raw/places/staticmap/location=42.283098,-71.391789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.283098,-71.391789&format=gif'),
(457, '9ab6ffea', '934230f0ba11c7863e9d591084a15f3f', 'MBTA Attleboro Station', '75 S Main St, Attleboro, MA 02703, United States', NULL, NULL, '41.941956,-71.284967', 41.941956, -71.284966, 'establishment', 'maps/raw/places/staticmap/location=41.941956,-71.284967&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.941956,-71.284967&format=gif'),
(458, '09e5e151', '7321bbb348ec702562825eb03dfc181d', 'MBTA Commuter Rail Parking Lot', '231 Centre Ave, Abington, MA 02351, United States', NULL, NULL, '42.106644,-70.934804', 42.106644, -70.934807, 'parking', 'maps/raw/places/staticmap/location=42.106644,-70.934804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.106644,-70.934804&format=gif'),
(459, '18ab4663', '43b0845fd16485f018f9446ee27d5ff6', 'T-Mobile', '1624 Donald Lee Hollowell Parkway Northwest, Atlanta, GA 30318, United States', NULL, NULL, '33.771923,-84.441318', 33.771923, -84.441315, 'store', 'maps/raw/places/staticmap/location=33.771923,-84.441318&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.771923,-84.441318&format=gif'),
(460, '3384f5c0', '401f2e99260af365c3e2cddb75e002c4', 'T-Mobile', '137 Hester St, New York, NY 10013, United States', NULL, NULL, '40.717146,-73.994692', 40.717148, -73.994690, 'store', 'maps/raw/places/staticmap/location=40.717146,-73.994692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.717146,-73.994692&format=gif'),
(461, '84eefd4b', '624c13f196c433a508038a9d06639ee2', 'T-Mobile Authorized Dealer', '6149 Old National Highway, Atlanta, GA 30349, United States', NULL, NULL, '33.586766,-84.472181', 33.586765, -84.472183, 'store', 'maps/raw/places/staticmap/location=33.586766,-84.472181&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.586766,-84.472181&format=gif'),
(462, '66e1b471', '555ac7b65bdb0e53785e4e3a3282da79', 'T-Mobile', '3951 W Ashley Cir, Charleston, SC 29414, United States', NULL, NULL, '32.821599,-80.08132', 32.821598, -80.081322, 'store', 'maps/raw/places/staticmap/location=32.821599,-80.08132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.821599,-80.08132&format=gif'),
(463, '175aa42a', '15d55a610d9c54ac644722cc9ab7e9dd', 'T-Mobile', '1900 Cunningham Dr, Hampton, VA 23666, United States', NULL, NULL, '37.040756,-76.378973', 37.040756, -76.378975, 'store', 'maps/raw/places/staticmap/location=37.040756,-76.378973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.040756,-76.378973&format=gif'),
(464, 'd9928f08', 'a084f880f2f90e0c39b17957449bc8c1', 'Calle Hernan Cortes', 'Calle Hernan Cortes, 30833 Sangonera la Verde, Murcia, Spain', NULL, NULL, '37.93208,-1.2036638', 37.932079, -1.203664, 'route', 'maps/raw/places/staticmap/location=37.93208,-1.2036638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.93208,-1.2036638&format=gif'),
(465, 'f6c3dcd1', '9fdb03e95b1a6bb3b987f4bed9e5e629', 'C', 'C, Quito EC170146, Ecuador', NULL, NULL, '-0.3042075,-78.5531236', -0.304208, -78.553123, 'route', 'maps/raw/places/staticmap/location=-0.3042075,-78.5531236&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.3042075,-78.5531236&format=gif'),
(466, '85aa7b49', '88fe53bbfe3ded7320a0f4f1c1035820', 'Calle C', 'Calle C, Ensenada, B.C., Mexico', NULL, NULL, '31.8571031,-116.5711914', 31.857103, -116.571190, 'route', 'maps/raw/places/staticmap/location=31.8571031,-116.5711914&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.8571031,-116.5711914&format=gif'),
(467, '9860e7b1', '0a78509b01eee29fc9d5106a9d06b6c4', 'Calle C', 'Calle C, San Andres, Ciudad de MÃ©xico, D.F., Mexico', NULL, NULL, '19.4902,-99.1847677', 19.490200, -99.184769, 'route', 'maps/raw/places/staticmap/location=19.4902,-99.1847677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.4902,-99.1847677&format=gif'),
(468, '1fdddc06', '0f405b3d3e8580a737fa069d15b7f1e4', 'Calle C', 'Calle C, HerÃ³ica Puebla de Zaragoza, Pue., Mexico', NULL, NULL, '19.0053004,-98.2008319', 19.005301, -98.200829, 'route', 'maps/raw/places/staticmap/location=19.0053004,-98.2008319&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.0053004,-98.2008319&format=gif'),
(469, '432f223f', '167dca7a3dd00cdbd6194c4ffed25bb6', 'Calle C', 'Calle C, Las Caballerizas, Veracruz, Ver., Mexico', NULL, NULL, '19.1740927,-96.1678445', 19.174093, -96.167847, 'route', 'maps/raw/places/staticmap/location=19.1740927,-96.1678445&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.1740927,-96.1678445&format=gif'),
(470, 'aab2b62a', '4e3d9550cd8c33fce6f04325352720cc', 'Calle C', 'Calle C, 55040 Ecatepec de Morelos, MÃ©x., Mexico', NULL, NULL, '19.5906898,-99.0376842', 19.590691, -99.037682, 'route', 'maps/raw/places/staticmap/location=19.5906898,-99.0376842&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.5906898,-99.0376842&format=gif'),
(471, '9ee8c785', '6ba3af6ec41d24f2172318d0be7c4e97', 'Calle C', 'Calle C, Potrero del Llano, Ciudad de MÃ©xico, D.F., Mexico', NULL, NULL, '19.4743497,-99.1601774', 19.474350, -99.160179, 'route', 'maps/raw/places/staticmap/location=19.4743497,-99.1601774&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.4743497,-99.1601774&format=gif'),
(472, 'c27d6318', '63f4d10ae9ff844dbb4e5901d042c7e5', 'Calle C', 'Calle C, Ciudad de MÃ©xico, D.F., Mexico', NULL, NULL, '19.419685,-99.0987226', 19.419685, -99.098724, 'route', 'maps/raw/places/staticmap/location=19.419685,-99.0987226&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.419685,-99.0987226&format=gif'),
(473, '984d5ac2', '9df87fbd4f7eb7be4f0c85d59735996f', 'Calle C', 'Calle C, Culhuacan, Ciudad de MÃ©xico, D.F., Mexico', NULL, NULL, '19.3423118,-99.1080633', 19.342312, -99.108063, 'route', 'maps/raw/places/staticmap/location=19.3423118,-99.1080633&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.3423118,-99.1080633&format=gif'),
(474, 'd18d6d31', 'ab2d75002fdcdabba6e15bdec4f9ebf4', 'Massachusetts', 'Massachusetts, USA', NULL, NULL, '42.4072107,-71.3824374', 42.407211, -71.382439, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=42.4072107,-71.3824374&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.4072107,-71.3824374&format=gif'),
(475, '9cf3a761', '39731f8a78f158e25ee17526801a8c47', 'Saigon University', '273 An DÆ°Æ¡ng VÆ°Æ¡ng, phÆ°á»ng 3, Quáº­n 5, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.759669,106.682372', 10.759669, 106.682373, 'university', 'maps/raw/places/staticmap/location=10.759669,106.682372&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.759669,106.682372&format=gif'),
(476, '1b43f810', '7d82d889385a5f36ca2a59ac64d60774', 'Ho Chi Minh City', 'Ho Chi Minh City, Ho Chi Minh, Vietnam', NULL, NULL, '10.8230989,106.6296638', 10.823099, 106.629662, 'locality', 'maps/raw/places/staticmap/location=10.8230989,106.6296638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.8230989,106.6296638&format=gif'),
(477, 'ee7bf4ff', 'd4868be4d83e6b6556dac360a16f2779', 'Quan Natural Heritage Area', 'Quan NHA, Duy TiÃªn, HÃ  Nam Province, Vietnam', NULL, NULL, '20.6343043,105.983208', 20.634304, 105.983208, 'neighborhood', 'maps/raw/places/staticmap/location=20.6343043,105.983208&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.6343043,105.983208&format=gif'),
(478, '40d6265d', '19c7d0da027b118eb63ffe60b7b816ad', 'QuÃ¡n Natural Heritage Area', 'QuÃ¡n NHA, TiÃªn Háº£i, tp. Phá»§ LÃ½, HÃ  Nam Province, Vietnam', NULL, NULL, '20.547845,105.9560341', 20.547846, 105.956032, 'neighborhood', 'maps/raw/places/staticmap/location=20.547845,105.9560341&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.547845,105.9560341&format=gif'),
(479, 'b3f0ac1d', 'de0b5b04ef169df8961b3320b4dd1cf3', 'ÄÆ°á»ng Quan Nha bÃ£i', 'ÄÆ°á»ng Quan Nha bÃ£i, Quan Nha BÃ£i, tt. HÃ²a Máº¡c, Duy TiÃªn, HÃ  Nam, Vietnam', NULL, NULL, '20.6373657,105.9869852', 20.637365, 105.986984, 'route', 'maps/raw/places/staticmap/location=20.6373657,105.9869852&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.6373657,105.9869852&format=gif'),
(480, 'bdceefb6', '758f9952cc74597fc315c4e1c18a2dea', 'Parkson Cantavil', 'Song HÃ nh, An PhÃº, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.801533,106.747268', 10.801533, 106.747269, 'shopping_mall', 'maps/raw/places/staticmap/location=10.801533,106.747268&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.801533,106.747268&format=gif'),
(481, '3dcc659e', '4eb7c36919cecbf8142ab3d94a2fb20e', 'GiÃ¡ Rai District', 'GiÃ¡ Rai District, Bac Lieu, Vietnam', NULL, NULL, '9.260136,105.3753129', 9.260136, 105.375313, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=9.260136,105.3753129&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.260136,105.3753129&format=gif'),
(482, 'fba8acf3', 'de2ab6f854b017927a47441eddb83258', 'Há»™ PhÃ²ng', 'Há»™ PhÃ²ng, GiÃ¡ Rai District, Bac Lieu, Vietnam', NULL, NULL, '9.2234179,105.4243804', 9.223418, 105.424377, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.2234179,105.4243804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2234179,105.4243804&format=gif'),
(483, '37976eb8', '19b702d43a04fd913f262e797aa48d20', 'tt. GiÃ¡ Rai', 'tt. GiÃ¡ Rai, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.2388149,105.4586323', 9.238815, 105.458633, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.2388149,105.4586323&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2388149,105.4586323&format=gif'),
(484, '59d8f30b', '1a9fbcab52540f436c72aabdf4830fe0', 'New York Times', '111 E Lower Wacker Dr, Chicago, IL 60601, United States', '111 E Lower Wacker Dr', '', '41.887565,-87.623569', 41.887566, -87.623566, 'point_of_interest', 'maps/raw/places/staticmap/location=41.887565,-87.623569&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.887565,-87.623569&format=gif'),
(485, '37992d3e', 'a5579620fa302382735a172ee534d9e6', 'New York Times Corporation Library', '620 8th Ave, New York, NY 10018, United States', '620 8th Ave', '', '40.756032,-73.990028', 40.756031, -73.990028, 'library', 'maps/raw/places/staticmap/location=40.756032,-73.990028&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.756032,-73.990028&format=gif'),
(486, 'ff04c206', 'a9041fa85abc50d3b99cc3062baad2cb', 'New York Times', '1627 I St NW, Washington, DC 20006, United States', '1627 I St NW', '', '38.901662,-77.038035', 38.901661, -77.038033, 'point_of_interest', 'maps/raw/places/staticmap/location=38.901662,-77.038035&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.901662,-77.038035&format=gif'),
(487, 'e713c02d', 'a37dacfe746655833b827b1af70c51ea', 'New York Post', '1 City Hall, New York, NY 10007, United States', '1 City Hall', '', '40.703589,-74.012773', 40.703590, -74.012772, 'point_of_interest', 'maps/raw/places/staticmap/location=40.703589,-74.012773&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.703589,-74.012773&format=gif'),
(488, '583ab475', '1002ac7e4085a6e99dc5929ae7fcac81', 'New York Post', '1211 6th Ave, New York, NY 10036, United States', '1211 6th Ave', '', '40.758558,-73.982337', 40.758556, -73.982338, 'library', 'maps/raw/places/staticmap/location=40.758558,-73.982337&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.758558,-73.982337&format=gif'),
(489, 'e2a4c715', '5600a7ac55ba0206357533bec28c7f58', 'New York Post', '900 E 132nd St, Bronx, NY 10454, United States', '900 E 132nd St', '', '40.798094,-73.912825', 40.798096, -73.912827, 'post_office', 'maps/raw/places/staticmap/location=40.798094,-73.912825&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.798094,-73.912825&format=gif'),
(490, '356026ca', '9ec62f4a5b5ae7621e5e6834b598ecdc', 'CNN', '10 Columbus Cir, New York, NY 10019, United States', '10 Columbus Cir', '', '40.768456,-73.982809', 40.768456, -73.982811, 'point_of_interest', 'maps/raw/places/staticmap/location=40.768456,-73.982809&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.768456,-73.982809&format=gif'),
(491, 'd384c2f4', '9409ebf6d2313774ec577817132ab505', 'Loomis Express', '95 Micro Ct, Markham, ON L3R 5N1, Canada', '95 Micro Ct', '', '43.83571,-79.315094', 43.835709, -79.315094, 'establishment', 'maps/raw/places/staticmap/location=43.83571,-79.315094&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.83571,-79.315094&format=gif'),
(492, '94dccdf8', 'd68a1b86384182ffe2d9232e6c4bea46', 'Inland Iron &amp; Metal', 'Ravenshoe Rd, Sutton West, ON L0E 1R0, Canada', 'Ravenshoe Rd', '', '44.223131,-79.329935', 44.223129, -79.329933, 'establishment', 'maps/raw/places/staticmap/location=44.223131,-79.329935&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C44.223131,-79.329935&format=gif'),
(493, '07f0fd46', '9d2d34bafa39c95965190741206b9fc8', 'The New America Foundation', '199 Lafayette St Suite 3b, New York, NY 10012, United States', '199 Lafayette St Suite 3b', '', '40.721148,-73.99777', 40.721149, -73.997772, 'establishment', 'maps/raw/places/staticmap/location=40.721148,-73.99777&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.721148,-73.99777&format=gif'),
(494, '477e7f96', 'a02ed9907a072197c28421f942df6cfe', 'New Relic', '188 Spear St, San Francisco, CA 94105, United States', '188 Spear St', '', '37.791354,-122.393048', 37.791355, -122.393051, 'establishment', 'maps/raw/places/staticmap/location=37.791354,-122.393048&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791354,-122.393048&format=gif'),
(495, 'e3b27729', 'aa6f5d7176ae71f257b515ed1da98165', 'New Relic', '111 SW 5th Ave #2800, Portland, OR 97204, United States', '111 SW 5th Ave #2800', '', '45.52263,-122.67575', 45.522629, -122.675751, 'establishment', 'maps/raw/places/staticmap/location=45.52263,-122.67575&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.52263,-122.67575&format=gif'),
(496, '94585772', 'd6289bf1cb17ffeeac7d90dc632649be', 'New Relic', '19, 2101 4th Ave, Seattle, WA 98121, United States', '19', '', '47.614084,-122.342398', 47.614082, -122.342400, 'establishment', 'maps/raw/places/staticmap/location=47.614084,-122.342398&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.614084,-122.342398&format=gif'),
(497, 'dfc77bb1', 'b088c17fa5a9ce05be7030b765d429e6', 'New Center', '1100 N Main St #100, Ann Arbor, MI 48104, United States', '1100 N Main St #100', '', '42.293139,-83.746819', 42.293140, -83.746819, 'establishment', 'maps/raw/places/staticmap/location=42.293139,-83.746819&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.293139,-83.746819&format=gif'),
(498, '806255b7', 'c8e380136a55387549a43a76aac6d69b', 'New Balance New York', '150 5th Ave, New York, NY 10010, United States', '150 5th Ave', '', '40.739623,-73.991359', 40.739624, -73.991356, 'shoe_store', 'maps/raw/places/staticmap/location=40.739623,-73.991359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.739623,-73.991359&format=gif'),
(499, 'ee08cc9f', '1b350a5c5fb13c0342e2b5dd982a4a82', 'New England Journal-Medicine: Campion Edward W MD', '10 Shattuck St, Boston, MA 02115, United States', '10 Shattuck St', '', '42.335134,-71.103841', 42.335133, -71.103844, 'doctor', 'maps/raw/places/staticmap/location=42.335134,-71.103841&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.335134,-71.103841&format=gif'),
(500, '5648e777', 'db2269f03e3a6b6778d100e0389fb30b', 'New Balance', '7000 Arundel Mills Cir, Hanover, MD 21076, United States', '7000 Arundel Mills Cir', '', '39.159148,-76.7242', 39.159149, -76.724197, 'shoe_store', 'maps/raw/places/staticmap/location=39.159148,-76.7242&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.159148,-76.7242&format=gif'),
(501, 'd21789b1', 'd1ea9177b3993dcd9432ee2bec80fb95', 'New Balance', '350 Tarrytown Rd #2, White Plains, NY 10607, United States', '350 Tarrytown Rd #2', '', '41.04272,-73.795241', 41.042721, -73.795242, 'shoe_store', 'maps/raw/places/staticmap/location=41.04272,-73.795241&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.04272,-73.795241&format=gif'),
(502, '4a76527e', '97d9b3d02b4dc76842a1ffa1a07c5526', 'New Balance', '1990 Marlton Pike E, Cherry Hill, NJ 08003, United States', '1990 Marlton Pike E', '', '39.899217,-74.953446', 39.899216, -74.953445, 'shoe_store', 'maps/raw/places/staticmap/location=39.899217,-74.953446&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.899217,-74.953446&format=gif'),
(503, 'eec661f9', '80dd671f138e27b51e02ad91405a774b', 'New Balance', '4313 Dearborn Cir, Mt Laurel, NJ 08054, United States', '4313 Dearborn Cir', '', '39.968813,-74.902462', 39.968815, -74.902458, 'shoe_store', 'maps/raw/places/staticmap/location=39.968813,-74.902462&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.968813,-74.902462&format=gif'),
(504, 'c0bcdaf3', '39244f2aaa26033b2958a5e2984c5ab3', 'California', 'California, USA', 'California', '', '36.778261,-119.4179324', 36.778259, -119.417931, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=36.778261,-119.4179324&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.778261,-119.4179324&format=gif'),
(505, 'd6218595', 'bc1c5d6dee17adc7ad7dc40b380a859e', 'London', 'London, UK', 'London', '', '51.5073509,-0.1277583', 51.507351, -0.127758, 'locality', 'maps/raw/places/staticmap/location=51.5073509,-0.1277583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C51.5073509,-0.1277583&format=gif');

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
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=latin1;

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
(98, 'regex_hashtag', 'en', '/(#([a-zA-Z0-9\\_]+))/'),
(99, 'regex_usertag', 'en', '/(@([a-zA-Z0-9\\_\\.]+))/'),
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
(254, 'weather_cache_timeout', 'en', '10800'),
(255, 'client_location_timeout', 'en', '1800'),
(256, 'user_suggest_live_distance', 'en', '50'),
(257, 'user_suggest_country_distance', 'en', '25'),
(258, 'user_suggest_checkin_distance', 'en', '10'),
(259, 'user_suggest_nearby_timeout', 'en', '604800');

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
('l3H7QwrXVESg6ckT-VF-IVl1r89ReG,IfcmiobOtVl5', 1442159334, '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', '13892c915d5d3064985c5dc99719a92c');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

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
(7, 1, 'ebf521c3', '866a57f8adaeb69ea344d55b690f280a', 1441796192, 1441796192, 1441796192, 2, 'user', 2, 4, 3, 3, 'status', 'C3KZrvEL4UuEV998cpdU/HeRHIWcdMCEEuq0h93xcKM=', 0, 0, 0, 1, 0, 0),
(8, 1, 'd0521010', '6c8fde30aef91afe28978af3e40b3e98', 1441896405, 1441896405, 0, 1, 'user', 1, 3, 3, 3, 'status', 'igGV3LXmgVBSmiGR7VS/rfEdMDcmHgmdIYuVXHPse1gfE5hMVnvrZPbyaprHp6lUxsY1gIhAQzi345ZYCVkO0A==', 0, 0, 1, 0, 0, 0),
(9, 1, 'b724dfe4', '4d99614fa6762331557a7a0ec77fab09', 1441896604, 1441896604, 0, 1, 'user', 1, 3, 3, 3, 'status', 'EIH/UZyF7O2lCpJ3EMKUMnHDRyBNqJ6Tj9gNobkKBDw=', 0, 0, 1, 0, 0, 0),
(10, 1, 'dda8bf5f', 'a01d1894e6f10fe3b5d3d6c26ca0c630', 1441978261, 1441978261, 0, 1, 'user', 1, 3, 3, 3, 'status', 'jRSnyGa3bRXF1MGDc+iKANUmD6WMb8MsaxmFEovxYURfAdVzD4tbVREV1z3WLS55I/MmL6SlBbc7/VqBTRh5dw==', 0, 1, 1, 0, 0, 0),
(11, 1, 'c07fa22f', 'a450437f7e9162b8dc1cbb8324d93ef7', 1442061262, 1442061262, 0, 2, 'user', 2, 3, 3, 3, 'status', 'G5Q/6XO63Kpjdk8t5VUirXFYZd0IWjoca2oEiCsQNkHSYsErZ1Qg8C4qsKdbJ0lCvv0uh1EGSecsKjoLqqesJg==', 0, 0, 1, 0, 0, 0),
(12, 1, 'e935b403', '89b01f2155d6a43dc6f1bdc7f5113ee3', 1442062521, 1442062521, 0, 1, 'user', 1, 3, 3, 3, 'status', 'UXf5pXoBEa2oUUM/RNsmXQJk5S0cmtsbZ2sFfPizg/9vL3QE/Y6QXceAJM5ZtA2l6JBv3Z5+gnpHw7e9ApD7QA==', 0, 0, 1, 0, 0, 0),
(13, 1, 'fdd58849', '3d3b73924a9d5a292a30f93296219c16', 1442062606, 1442062606, 0, 1, 'user', 1, 3, 3, 3, 'status', '2i4uboa55/eYsCR+my0fBlm0mqhy/qWuVrsImjWQuJ4=', 0, 0, 1, 0, 0, 0),
(14, 1, '7231d079', 'a81287bb2ed995f50f63a9da38b2cd15', 1442064182, 1442064182, 0, 1, 'user', 1, 3, 3, 3, 'status', 'msQz7o1km7NjhIeCZnp66AkRWnOmbqxu7c/zO8lhnyMpPS9i/GWc7a9qNW7MXyiWjH+XhikocIxKbMx5K73yLw==', 0, 0, 1, 0, 0, 0),
(15, 1, '14fa0165', '82644e1bb0a125ad1273f29d279358f5', 1442065236, 1442065236, 0, 1, 'user', 1, 3, 3, 3, 'status', 'Fr0+NHYCAO+FSvzZLDf1O94bfK76FhgiLT/XZQ3QgI2VuSdcEV8/S5UC6RI/GCWc3vDmFPTl8vjFNFoTKmpEnw==', 0, 0, 1, 0, 0, 0),
(16, 1, 'b6395dd3', '6993af2aaeeda1497dcff7d97f719d46', 1442065353, 1442065353, 0, 1, 'user', 1, 3, 3, 3, 'status', '1QC1iwJ+TWQ8T5ehjfQJnxqjbr7C4WPUxh5p0qN1DuE=', 0, 0, 1, 0, 0, 0),
(17, 1, '28836d5e', 'e03949c6d779f78eb6fd0a7865101639', 1442130463, 1442130463, 0, 1, 'user', 1, 3, 3, 3, 'status', 'RqMsJJdOPuMMqhFTVv+mHrZrihiTB1U4O6ceGG/4cmY=', 0, 0, 0, 0, 0, 0),
(18, 1, '0bebc957', '38f4e6532d3252e39173fb915d53a7f7', 1442130535, 1442130535, 0, 1, 'user', 1, 3, 3, 3, 'status', 'Ll9lG7Cmsj9mll49hRHD71ns7p0VBXQF+CdaKXUN8pA=', 0, 0, 0, 0, 0, 0);

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
  `logscontent` text,
  `places` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`, `places`) VALUES
(1, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441538699, 'status', 3, 1, 'user', 1, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL),
(2, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441538699, 'comment', 1, 1, 'user', 1, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL),
(3, '2a52fe3e', 'c4f4bf297e38c9e8217e942da2ad9159', 1441712504, 'status', 3, 1, 'user', 1, 0, 'SCA9qdGPndwci8ljJ+FaC1vu1T3EeAu8pXAXSIhA9uU=', '', NULL),
(4, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441796192, 'status', 7, 2, 'user', 2, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL),
(5, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441796192, 'comment', 4, 2, 'user', 2, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL),
(6, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441796192, 'status', 7, 2, 'user', 2, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_favorite`
--

INSERT INTO `status_favorite` (`id`, `time`, `inside.type`, `inside.id`, `guy.type`, `guy.id`) VALUES
(2, 1441529806, '', 3, 'user', 1),
(3, 1441540055, '', 4, 'user', 2),
(5, 1441712425, '', 5, 'user', 1),
(6, 1441712484, '', 4, 'user', 1),
(8, 1441712926, '', 2, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_hashtag`
--

INSERT INTO `status_hashtag` (`id`, `status.id`, `hashtag`) VALUES
(1, 10, 'live'),
(2, 10, 'ganhhao');

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
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_places`
--

INSERT INTO `status_places` (`id`, `time`, `inside.type`, `inside.id`, `value`) VALUES
(1, 0, 'status', 9, '51'),
(2, 1441978261, 'status', 10, '1'),
(3, 1442061262, 'status', 11, '1'),
(4, 1442062521, 'status', 12, '1'),
(5, 1442062606, 'status', 13, '63'),
(6, 1442064182, 'status', 14, '179'),
(7, 1442065236, 'status', 15, '139'),
(8, 1442065353, 'status', 16, '505');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `mode.safe`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `feed.order`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`, `online`) VALUES
(1, 1441181980, '9b5d543e', '887055cc62c65776f0bc9bd99c82be48', 'lamhieu', 'lamhieu@giccos.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sgoGje5bU+MTh6XsX4yz+xJGXZOXwU5t8vY/pfJRx8k=', '', 'Lam Hieu', 'lam', '', 'hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'e9b01662', 0, 1, 0, 1442159334),
(2, 1441441349, 'd0e43dd2', '248bb9a2b5c0622a005256b360e119d2', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cx8YfmKhbUIMgmUBT+Lt/mXZ61ZW5oSSUOZyaOueLWc=', '', 'TrÆ°Æ¡ng Tuáº¥n', 'TrÆ°Æ¡ng', '', 'Tuáº¥n', 'f-m-l', '', 'male', NULL, 915127261, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '64', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'fc2f320b', 0, 0, 0, 1442062664),
(3, 1441890502, '0236434f', '6dcdec6cd495efac92603381bfa2f812', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '1amHNJuPQWpKm1f9pbxT/S8duiP2G6C2P5StZFQG+iQ=', '', 'Tráº§n DÆ°á»¡ng', 'Tráº§n', '', 'DÆ°á»¡ng', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, '1e17e0ee', 0, 0, 0, 1441891790),
(4, 1441892022, '0b78a4bc', 'fbed738d84551196d79ece222cebe8ab', 'trannguyen', 'giccos.inc@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'DfpjMlIj0dArKEB8E8jox7VsBXbb8oQErXUyrFKollU=', '', 'Tran Nguyen', 'Tran', '', 'Nguyen', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/trannguyen', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, '4d198899', 0, 0, 0, 1441892183);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_follow`
--

INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES
(1, 1441182000, 1, 'user', 1),
(2, 1441441375, 2, 'user', 2),
(3, 1441441380, 1, 'user', 2),
(4, 1441441380, 2, 'user', 1),
(5, 1441890524, 3, 'user', 3),
(6, 1441892038, 4, 'user', 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

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
(18, 1441796147, 'id', '2', 1, '1a4cb25f'),
(19, 1441873705, 'id', '1', 1, '1a4cb25f'),
(20, 1441890524, 'id', '3', 1, '1a4cb25f'),
(21, 1441892038, 'id', '4', 1, '1a4cb25f'),
(22, 1441892595, 'id', '1', 1, '1a4cb25f'),
(23, 1441896872, 'id', '1', 1, '1a4cb25f'),
(24, 1441897059, 'id', '1', 1, '1a4cb25f'),
(25, 1441897659, 'id', '1', 1, '1a4cb25f'),
(26, 1441977018, 'id', '1', 1, '1a4cb25f'),
(27, 1442048512, 'id', '1', 1, '1a4cb25f'),
(28, 1442048708, 'id', '2', 1, '1a4cb25f'),
(29, 1442059870, 'id', '2', 1, '1a4cb25f'),
(30, 1442060135, 'id', '2', 1, '1a4cb25f'),
(31, 1442060729, 'id', '2', 1, '1a4cb25f'),
(32, 1442060809, 'id', '2', 1, '1a4cb25f'),
(33, 1442127385, 'id', '1', 1, '1a4cb25f'),
(34, 1442152982, 'id', '1', 1, '1a4cb25f');

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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

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
(47, 1, 1441804581, 1441806674, '1a4cb25f'),
(48, 0, 1441873688, 1441873701, '1a4cb25f'),
(49, 1, 1441873705, 1441887394, '1a4cb25f'),
(50, 0, 1441890470, 1441890645, '1a4cb25f'),
(51, 3, 1441890524, 1441891790, '1a4cb25f'),
(52, 0, 1441891797, 1441892594, '1a4cb25f'),
(53, 4, 1441892039, 1441892183, '1a4cb25f'),
(54, 1, 1441892595, 1441892808, '1a4cb25f'),
(55, 1, 1441893240, 1441893269, '1a4cb25f'),
(56, 1, 1441893738, 1441897800, '1a4cb25f'),
(57, 0, 1441896867, 1441897054, '1a4cb25f'),
(58, 0, 1441897648, 1441897655, '1a4cb25f'),
(59, 0, 1441977008, 1441977014, '1a4cb25f'),
(60, 1, 1441977018, 1441980682, '1a4cb25f'),
(61, 0, 1442048505, 1442048702, '1a4cb25f'),
(62, 1, 1442048512, 1442049786, '1a4cb25f'),
(63, 2, 1442048708, 1442051860, '1a4cb25f'),
(64, 1, 1442051170, 1442051979, '1a4cb25f'),
(65, 1, 1442052643, 1442057041, '1a4cb25f'),
(66, 1, 1442057496, 1442059436, '1a4cb25f'),
(67, 1, 1442059744, 1442064203, '1a4cb25f'),
(68, 0, 1442059855, 1442060130, '1a4cb25f'),
(69, 2, 1442059871, 1442062664, '1a4cb25f'),
(70, 0, 1442060724, 1442060804, '1a4cb25f'),
(71, 1, 1442065207, 1442066180, '1a4cb25f'),
(72, 0, 1442127347, 1442127381, '1a4cb25f'),
(73, 1, 1442127385, 1442128132, '1a4cb25f'),
(74, 1, 1442129215, 1442139484, '1a4cb25f'),
(75, 0, 1442152952, 1442152979, '1a4cb25f'),
(76, 1, 1442152982, 1442156601, '1a4cb25f'),
(77, 1, 1442158832, 1442159334, '1a4cb25f');

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
(1, 1, 'user', 1, 0, 1441184002, '4f526865', '5f59d1c5f6b97391b1072f5bced89210', 'Ä‘iá»u anh lo láº¯ng', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 'love like khanhphuong best music love like khanhphuong best music', '', 4, 4, 4, '9453472a838aa76d4afcae64086aebef', '0', '68ee2fce6c94d53b3f2d9f264d6d8d18', 'ef429e84ba74a7c5771b1f2acb8dddf1', 'feadfb52ee08ab062e7c0dbdec789ca4', '', '0', '54bf075239ef091cd33eded54a766da6', '3e2b285b4479d3525790bc8592fcb2d5', '91f9ec3a914a6213564c2a0db2564387', '0', '0', '1f4bf6ca', '9ca0bfec', '94560fb9', 0, 57882648, 'h264', 'H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10', 720, 1280, '16:9', 1388648, '25/1', 333.461670, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 333, 191999);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_pointtag`
--

INSERT INTO `videos_pointtag` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `point`, `length`, `sticker`, `content`) VALUES
(1, 1441386003, 1, 'user', 1, 17.43, 5.00, '', 'comment in videos'),
(2, 1441980392, 1, 'user', 1, 3.58, 5.00, '', 'ná»¯ chÃ­nh Ä‘áº¹p quÃ¡ cÆ¡ :D'),
(3, 1442135885, 1, 'user', 1, 55.10, 5.00, '', 'buá»“n :(');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=860;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=506;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=260;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
