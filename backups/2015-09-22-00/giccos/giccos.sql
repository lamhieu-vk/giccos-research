-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2015 at 06:04 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=874 DEFAULT CHARSET=latin1;

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
(28, 'en', 'hashtag', 'hashtag', 'false'),
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
(319, 'en', 'type_messages', 'type messages', 'false'),
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
(342, 'en', 'type_a_messages', 'type a messages', 'false'),
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
(410, 'en', 'wall_desc_photos', 'Gallery of _____. The photos updated by _____.', 'false'),
(411, 'en', 'wall_desc_friends', 'friends of _____.', 'false'),
(412, 'en', 'wall_desc_about', 'about of _____.', 'false'),
(413, 'en', 'wall_desc_music', 'Music of _____. The music updated by _____.', 'false'),
(414, 'en', 'wall_desc_videos', 'Videos of _____. The videos updated by _____.', 'false'),
(415, 'en', 'wall_desc_places', 'Places visited by _____. The places checkin by _____.', 'false'),
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
(859, 'en', 'upload_at', 'upload at', 'false'),
(860, 'en', 'times_recorded', 'times recorded', 'false'),
(861, 'en', 'loops', 'loops', 'false'),
(862, 'en', 'player_resized_maximize', 'player was resized, maximize', 'false'),
(863, 'en', 'player_resized_minimize', 'player was resized, minimize', 'false'),
(864, 'en', 'player_resized_error', 'player is don''t resize, maybe by error', 'false'),
(865, 'en', 'player_muted', 'player was turn of audio', 'false'),
(866, 'en', 'player_loop_on', 'player was turn on repeats', 'false'),
(867, 'en', 'player_loop_off', 'player was turn off repeats', 'false'),
(868, 'en', 'player_loop_error', 'player is don''t repeats, maybe by error', 'false'),
(869, 'en', 'you_null_groups', 'you don''t join any groups', 'false'),
(870, 'en', 'you_null_hashtag', 'you don''t use any hashtag', 'false'),
(871, 'en', 'times_mentions', 'times mentions', 'false'),
(872, 'en', 'recent_activity', 'recent activity', 'false'),
(873, 'en', 'weather_busy_timeout', '300', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_voice`
--

INSERT INTO `library_voice` (`id`, `time`, `updated`, `token`, `language`, `word`, `content`) VALUES
(5, 1438706177, 1438706177, '7523c0a4', 'en', 'love', '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t+B/MP///6CQeYxjcxqG/+NCxOk1FBbCX4lgAjOWY2hv/////+pal8pXUrf6loYxUN0MHmMZ+JAEOEg8/Eg8xjGfQ0zm6f6G38weYxvEhZMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgFtu2//5ka//pCCKaNOAxIEXDlFlHlxebmzRxbP+xZRVxeVJxZZVxv/2nb+aLKKeNzf+7f/uz/7mycb/40LE2BHTGmW/wSgCnCgMo9iyiwIosp2cospnbs7PGb/2djTSi2diyiy2vNypZnb///P/lGlFllXG5////NOzXmzRpxokotnKNAhZZlxubNHFlWzsWUUWwYsmIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/Igv9oH4ATK9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8AAANIAAAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVU='),
(6, 1438706180, 1438706180, '5d0e7e64', 'en', 'like', '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hQLYWqFoz3VQrNRg6SBe/+NCxP8u9BaJv0xIAK1sWubTLSSqPGWkE11iMJXs+yhFIhK9GvObL11Y5jZVhBsIu8UTKbCyUSFEu6c4zr1jfjBiVQioiTSRI2qTaZTxdRikCiTsq3ZNhzaCa1IFElIH3pUjZ1KBmcmltW1prNSxRFNiUVEEr9TuV7LNhdQe+CtPQeKtL1L+o5GMs/uW4sJg8Cb8JnW5hdVChxoNhQVhwSgFOI4+g/nBLFhftyos+/TcOhI2X/MGGg8G003/WYUFmSSbmpN/8oHxNhMK9yqSrP//40LE/zFMDoA1mEgA8hSsf0S9MmAkgmgWG0wMzb//qB0dmlUgIoOR5BFLVDwYjd//+WHkmGKZMVRKJ3klI2MSUuSUjxSSv///2LHXpPJ7XypG1x8bVR2kQkqHnSda0pS/////JjIOZPUodahw3SWmDiDDhuB1xqygSiONwej6TnJHkUlTv/1K8VLJiCmopmXHJuqqqqoXbD/7/////9DGlK0SDodDrCQeFlDoeMaUrIZBIzlFS0EQ6HWEg8LKIiQeNKKlmK3///8odFYkHjVEgP/jQsT9LZvKfF+PWABg84dAoqgkHQ6HWEg8LKHTP+8xpSloUOirCQeNKJB4WcRDpZhEVNCioN//8I4FN6K4N6mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8bW0WQH8AoA1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVQ=='),
(7, 1438706184, 1438706184, 'f3604ea8', 'en', 'fuck', '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BWfYDBAqh/8lzzWWyyyg/+NCxO0mLAKBlkmGFIGDBBn/XK5ESpp7TRf/4mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/xJrRlB+AIc7VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(8, 1438953652, 1438953652, '6f002cd6', 'en', 'life', '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Wm3H1ByeQriKtWupXlry/+NCxP8szBKAN1kwAPuwYllo5OrW+2QnFEkMXF2CGuqCUSU5Ygk9QnC23C4uLSZ59mq09XnpkXka2qup+ePrLv+zVDd119t4vatWoUa6WmuoTEJZCiis19Xc5lsqWw/LRWrV7lqVZsUZ0dRtKmE0KONf3OL0StxGofS+knvfcW9dE1z/vWz111hkt61vw6mO9XEE8VKF7sblnLzNMysUVlkqY1lD16UJtxtY66qsuhBAnH+dBz/3xdUoSSWW2623a7bbf//77oAxvkC4NiBrPYv/40LE/zmUFnhVmGABpKuLMMlMdcte71Gk8Bbm3zmX+YvjjvlpyVlPvHh+TfRIx/mcZdTZk0vr6pDZL8nyscVgTVOlUzzE7f95o52F5Da1iZrWZtC05F7e0o63XHGISIeOFg42VyJ1eSdJLhytrpye72X/ecam9vyas+tNpYdiLEEDDMTa12badKmbLWDlSdVnPmZmbzNJn/nOlHAjhqiXnyTWVilCgSVXIdO0mm3O+L0FSghACAEMulYVBFohFJKzSyJFGpSl/KXDN//////8qv/jQsTcL0PGzl+IYAPfKqsCwtTNK0IQAwAIRQ6BsHzcCwtRQsLNKiorcqq+zf/wzcMzaioq0ipq1qvKquwsLKzNf//////DN7M2oqKtKrWpIrckiptFA2BsaULHXwULUwsc2SKirSSq+zf/sLC1MLB3//+JcOlQWTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxOMic5IIBclAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(9, 1438956858, 1438956858, 'babe5dd2', 'en', 'kiss', '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'),
(10, 1440152726, 1440152726, '3278a210', 'en', 'you', '/+NAxAAAAAAAAAAAAEluZm8AAAAPAAAADQAAC2wAExMTExMTEycnJycnJycnOzs7Ozs7OztOTk5OTk5OYmJiYmJiYmJ2dnZ2dnZ2domJiYmJiYmdnZ2dnZ2dnbGxsbGxsbGxxMTExMTExNjY2NjY2NjY7Ozs7Ozs7Oz/////////AAAAOkxBTUUzLjk3IAE3AAAAAAAAAAAUICQFzSIAACAAAAtsMCHjgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/jQMQAJKwSIAVPQAAQy4KhjQ9VrgtiEG+CkDAOCV/ZWMjeaCETP48BOMjeAAACGOfAoYNBoHilvAoZINA8qbhEkUM3uCEkUMr0FEkUFKe4ISRQz+ESRQypvRNP9ESSE/0TSv0ISRQyv0TSv4RJISv0TT/RElE/RElE/hE0T/StK/0r/+ErRP4RNK/RE0T/hKSvhBQzISv0SuX4QUT+oMJARC0Vixay27TafL5fBr7PPqfXCOJr3X83OGZytLdZyp4CoDVhDTr+LSMmRckUK7f/40LEMDWTjvJfmIoCE8EFFtIOOfrQVfk+MYPBmov3fnmuzjRJ46O0ZcXGITr0JxXZSlj0VBzBChLFkjC0Wjzouxs7TeefTsQMNXhsIeuT5Kk8WQ/cWIUoITopqatInC8RQ6IAf/YXGLnEehYWF1YuUSmLLDjC+RcNnDGZuQ0Z8cZqcJwwNS+XC+9Bqv/8NXiPxlRO5BxAAa4arEMLxUGwT5FxjRAMwFniC4uPY3Y2aKtjI6qAHRbUy7IUEgte5T6JugUgZXiakHPypiZlF4tTfP/jQsQdLaNepA3aWAGawkQvJENSeHKaVnXORMi80Zbmv7dKhpd7kIlm97/ljPlzK+98w9QdhxkJDsWPqkEAIDgmHgLgTmxiIwFRODwD+R/HaP5siXkGTASwR7QWTPqnWLPLrqtrr2yyI6fV92cN7orPKn5Nx9PnWnDr37kJXvYnZotnEb9juK4n+f/ZsYc6tDsvYyma0lnXQGACPqDp9q9VnoHN/9XKAKACuo/+UUomDTyF0wAUZjLXKiwZhjl0jqhVgSHQlqXs4adGIxVnwE2X/+NCxCopm768TsmQ+UrIyPkTsrlbS3m+fJuvbNkbBmGSTsoxSZ4o1MITCgVFWnEnlelgqObKo24CcKiaygyAsU8WZ/FN////P8zE/jJYkksWExjHi6H8UOtI2FDxLR4iO50OnHddx7zFskS7jkuDjrmruaurVerh1u8bTmXEnJwaaJFaLRV8XItVwABUbcjju5+aigpcu0KUlkBGFQPXEhM0iuCLal0pVu2wmjkm1KbrjG/lV5Yz3HNwLPbFHbWKpjGGmtKCyxMN9z//ftf6iqr/40LERyQj/um+SgVfyoqKlPKfDC1/r/f611qteyxeUc8jQ+OHybSy1StHMHQLgdFjijs2ZrN1rv5OmGJXnbZ1bXVbrRFTyZd5XYUoEYoQ4TNdkeKpGaUJnJHHJJ+uDpmSAmqEsB5q2ATNIGkYjthPOrEpRfkztNxHNa2dyRQEfhSyI0jFW3fxoKWw0DHNygbcKmG/r0/htrf/P7cm1w2BBxguTc7MYuzh3cCkf1OuJRQIcgQE+owbKCHy4hW2DDVOImw7opA4C2vq1WqsWzt1If/jQsR6IbJ+yF55hreMU1m56ps1l1nZjgOVEiVku/+///5SzBC2YQakdmjyBpz1QDD0q74vj0/aEC4xQ6HZ1ZftfC3j+3iW5EVy1Y092TobaSIDhXoLY/zzK/KVPXmQrMNWzBzLrOd1EmSGdipnDowo4K7X/fm/wyvlCCFOdKp+VZyr6fP10O555d/dfH0df4f+Xm/gief1gGuW2221pNINQmWmjh221kXdKloQle7bl2nCDPcx31cghifgpAbdvNnz08bLU5adazH6zJo4frr7/+NCxLcfc/bxvjIG92Rz0ohO9wxCFxkZ7Xtnm7EYy5k67mbC8g15ahPAhCSdCQnU65mw8BIuxWGv1SmRf1TOn41oHCQQZTnU4VMZgZ/keZkSfkZmcRfzxh6LSUPqebTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVfVShqwIMnDfEAJq4HGQimXFgdRNfCpl9l4UBqixZJMV/qsAvoqZmzwrtLhtAcnVzEmpAeJgqJxUPI2r/40LE/SKjxsz+SYb+ap148h5JBsdXZLEoN1VWF7lNfik6RWQUuJ728rOpjc8+pqmxaNUfSao5pdbzjXOj6gnP1lpfZ3WipmW0edB3juT9NZa0oqJJRbjfdbnUi3zdke93pLstu/PK7nPO1FNik5Tc7bdPVPW5zYZFtpdS3o7IqrqGW+WObEP2prSvEWdZY634YFKfqkUFJySyWOOSXW63W7XW57D3TyTnwpsSymmJRoeOLFi7Gh8WUdzcox4xT6PhWNEdbGCj2bYPGuzWbTDaxP/jQsT/MOQKhA1ZWAHmBxYDBprQcIkF5TJjx5gwHxKZLj6kve0upKouZrM67lqOGzNkUNaH7x0LPztPmRRHFY6GMLEYTJQ4ex44SDZM3ci6feq55rEIkYQN14ZLijau2o+GpebS/utetr2ZW+4ZJWzpMsxABrDgJ1MQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVQDW+WxyRAIBAIBAIBAKTkSJGZma7yRIgEAgFpUUikUoWY5FCKUJKkKhUKiEUksf/GPVQoUOUsiQoWY0/+NCxP8pk+bSX4lAA7EQJAkhySJE1tx9xjGMYxtVCzkkSJFHylL3GMvGKFChjHqkIpQ5SIiQsxjGlkSJDGMcpYVCoUoY5JEiRIkKGNLIkSJEhZySIVCoEhUykRComa24ylvuMYxtVDGlkSJFH1KW2hQytVChjH+KFChyREKhUhypIkSKUo//+Uloxz1JERCpnJSRNSClBWTYkkg22uRkcsllljyWWWPJf///+y2WWWWyyyy2WWWf///ZZZZLLLLP///////llUMFBAwQMEDChgr/40LE/zDkDlBXxkgBCBgg4QPabf+ITTTRVVVVTTTTRVVELf/1Vwaaaaqqqq6aYZGq///1VVU0000JiCmopmXHJuqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqpMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqv/jQsT/GdpFSb4IRgOqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqkxBTUUzLjk3qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq/+NCxP8AAANIAAAAAKqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqo='),
(11, 1442577731, 1442577731, '7daac86e', 'en', 'l', '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F3BdtlnT+0eZ6wU2/OI5/+NCxLg/DBZ4X494AN+aBcEo5s5l1cWhqXcGmt/3vemb0p8U+KajQO2se3kWjuFaBPDnxS8ZLH4sqeh8JSIn424S24uLabzE3olRnnBfNCAK1QHnHUXLdt/+QhYhCEIQghCEPFVVVLZtm6qqrM0ZmZl/6qq3/swEv///qqqqsf/1WZmZmZlVVVVVfZmZmZVVVVVVj///X/+MzM3+qqXGZf/VVPVVX/jMzMzKqqqqqsGAgIUzBgygq6VgqCoKnfUDR7xKCqoNXyXQGPQWpKTjSzL/40LEfxyLZoW/wRgA82almvN////3NmjS4vEpONFARNBaJIiKEgZBNFKTjSirVUs8v/5NahkysFDAnGFKywGDQ1ayyGUsMpOUjVlqORkyyX//8js5ahq1lkcjWWWw///NZSPzVgaOR7hxpR6kpdiyrQSInFHxakkSQksgmpKQqKB4Ciq/F+LJiCmopmXHJvVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsTQIZudwDYwzZRVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8AAANIAAAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVU='),
(12, 1442577741, 1442577741, 'b843f891', 'en', 'g', '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3O5tM7a1p9nPnO+zk5v6/+NCxIQynAauX49gA7CYd5zUvVXK8fift9ly6ZZae21tn1jFZpPbnbbnEig+07WzRxDqZuLKJGJQ0HLYutOrWnmbWXTP285ve6TvWL4bTlcXKOTqAQqzJkYZiWJUKDT6AomNQzNAh0gFQE3PBgUuDGjFgMmxg5AWgLUNWD2KlPrEdXH4qEe3tytUT+bVY8WKhJtH4j18qkxrdYrEZb8/YyjU5CS+klapNRvbeHyGMjxneultwnWEQxs0LffWjX78/WdXscSO5qhQq90v3kP032b/40LEfUPsdlgNmngAtu2843L21rQxQI1bnlapK4OZNsKOZm/btMsykUvltl78vfBrtYZHcBUo9C1PaPHhsbmnG9QM7KhLlZKJ6RuclBrD2DDi6gxYEXO4Oma+k7Co9jOUfw7vJmW1pVw+lTjVAPo9YCQa0IZlcqLI44UyrUMOtCqPswoWrPpLRrWnjWxJGiwFY8c9xf/4cfL+3/peXGYNIDAgEAgEAgFAoFAwGAdvJDbwWirwGCxD9Dt/7mKb/zKhl//osxZv/8sxXMUxv//1RP/jQsQxFpN3Pl+HLALsdyub///8REhI5CoJnFBcPB0SD3////40QYyiIgHx4KPAYRGIPYRGBNVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxJoAAANIAcAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVQ=='),
(13, 1442578048, 1442578048, '21a4fba2', 'en', 'live', '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A9nIEemEL0Vhgt9XZXOm/+NCxP1K3EZ9H5jAAZ0F7OxUvZxjlqpu3IrFbGTxnty5zH5br8KPOvRU+7OV7K3zn438P/8b/Rd/zgzVAQCDgPEyWvDv+hJYjBUZ/2fM/uS7/M4mRlZi//qdXHqeLcqlLL/+BSHoRi4Vh0ntIrpf/+X5+uV0aZ87xO+a3H//8kJaPWdYgR062O1dHiMP///u2qxhd5S5NFM45hRrQldeH////1KzPX6k7BDq9UzarZtWzCfM3bWWD//////EY37AWNVoxcTLpjYlWr2KbbczXgv/40LElTTEMmgNmHgB2ldeE+v////////dYeTrhbxAZLI/LYvt6uZWGJFYYkFWzUVzk+vWvetrpmYn8T/////////942wd2m/kk0QQbm2+0hP////8xv////5nqXqXMbMY2UuUpcxsxjOoCAmUpSzAQEVAIUaUBAXUpWmAgJkMapQol1K0xjG+pSl+hgwyFiCu/gU2L6Cmwv4NxBugrAUwFPxN6b4V//FF4u4FKkxBTUUzLjk3qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqv/jQsSGGEqp5D/BEAGqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqkxBTUUzLjk3qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq/+NCxOgAAANIAAAAAKqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqTEFNRTMuOTeqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqr/40LE/wAAA0gAAAAAqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqg==');

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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

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
(99, 'en', 1440152727, 1440152727, 'you', 'determiner', 'The individual or group spoken or written to', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik'),
(100, 'en', 1442577732, 1442577732, 'l', 'noun', 'The 12th letter of the modern English alphabet', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(101, 'en', 1442577732, 1442577732, 'l', 'abbreviation', 'length', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(102, 'en', 1442577742, 1442577742, 'g', 'noun', 'The seventh letter of the modern English alphabet', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(103, 'en', 1442577742, 1442577742, 'g', 'abbreviation', 'acceleration of gravity', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(104, 'en', 1442578049, 1442578049, 'live', 'verb-intransitive', 'To be alive; exist', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(105, 'en', 1442578049, 1442578049, 'live', 'verb-transitive', 'To go through; experience:  lived a nightmare. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(106, 'en', 1442578049, 1442578049, 'live', 'phrasal-verb', 'live down  To overcome or reduce the shame of (a misdeed, for example) over a period of time', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(107, 'en', 1442578049, 1442578049, 'live', 'idiom', 'live it up  Slang   To engage in festive pleasures or extravagances', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(108, 'en', 1442578049, 1442578049, 'live', 'adjective', 'Having life; alive:  live animals.  See Synonyms at living', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik');

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

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
(54, 1442130536, 'user', 1, 'follow', 'status', '18', '', ''),
(55, 1442315066, 'user', 1, 'add', '', '', 'status', '19'),
(56, 1442315066, 'user', 1, 'follow', 'status', '19', '', ''),
(57, 1442401093, 'user', 1, 'add', '', '', 'status', '20'),
(58, 1442401093, 'user', 1, 'follow', 'status', '20', '', ''),
(59, 1442504625, 'user', 1, 'favorite', 'status', '20', '', ''),
(60, 1442507414, 'user', 1, 'unfavorite', 'status', '20', '', ''),
(61, 1442516062, 'user', 2, 'add', '', '', 'status', '21'),
(62, 1442516062, 'user', 2, 'follow', 'status', '21', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `updated`, `token`, `ip`, `device`, `platform`, `browser.name`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1439521903, 1439521939, '6808e60a', '113.170.45.132', 'desktop', 'Windows ME (x64)', 'Google Chrome', 'blink', '44.0.2403.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36'),
(2, 1439522032, 1441026126, '1064bb3d', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '44.0.2403.157', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36'),
(3, 1440291474, 1440500605, 'b46b61b4', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Opera', 'blink', '31.0.1889.174', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 Opera/31.0.1889.174'),
(4, 1441097394, 1441439480, 'ee5504b2', '113.170.42.243', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'),
(5, 1441460383, 1441460383, '7c514c94', '192.168.0.102', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'),
(6, 1441460850, 1442905168, '1a4cb25f', '113.170.46.167', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.93', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36'),
(7, 1442481944, 1442481944, '3c3ff190', '113.170.46.167', 'desktop', 'Windows 10 (x64)', 'Opera', 'blink', '31.0.1889.174', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 Opera/31.0.1889.174');

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
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=latin1;

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
(505, 'd6218595', 'bc1c5d6dee17adc7ad7dc40b380a859e', 'London', 'London, UK', 'London', '', '51.5073509,-0.1277583', 51.507351, -0.127758, 'locality', 'maps/raw/places/staticmap/location=51.5073509,-0.1277583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C51.5073509,-0.1277583&format=gif'),
(506, 'ac2524c7', '2857862f984be0d126efd1c15626edad', 'tp. VÅ©ng TÃ u', 'tp. VÅ©ng TÃ u, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', 'tp. VÅ©ng TÃ u', '', '10.4113797,107.136224', 10.411380, 107.136223, 'locality', 'maps/raw/places/staticmap/location=10.4113797,107.136224&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.4113797,107.136224&format=gif'),
(507, 'b50003c3', 'e0e841652acac41d227cc95db7a7865e', 'Grafton MBTA Commuter Rail Parking', 'north 01536, 1 Pine St, North Grafton, MA 01536, United States', 'north 01536', '', '42.246938,-71.685978', 42.246937, -71.685982, 'establishment', 'maps/raw/places/staticmap/location=42.246938,-71.685978&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.246938,-71.685978&format=gif'),
(508, '1f9f7c24', '9b9217458c335a0f9d99efd7cd462a44', 'MBTA Commuter Rail Parking', '417 Waverly St, Framingham, MA 01702, United States', '417 Waverly St', '', '42.275826,-71.420567', 42.275826, -71.420570, 'parking', 'maps/raw/places/staticmap/location=42.275826,-71.420567&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.275826,-71.420567&format=gif'),
(509, '5d2acce8', '92598696cf539bf0ecbb5097d13a2427', 'MBTA Commuter Rail Parking Wellesley Square', '1 Grove St, Wellesley, MA 02482, United States', '1 Grove St', '', '42.29777,-71.294659', 42.297771, -71.294662, 'parking', 'maps/raw/places/staticmap/location=42.29777,-71.294659&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.29777,-71.294659&format=gif'),
(510, '8a1af1a4', '663823516aaab0a8c3cc60156539305e', 'Bridgewater MBTA Commuter Station', '2727, 85 Burrill Ave, Bridgewater, MA 02324, United States', '2727', '', '41.986346,-70.966624', 41.986347, -70.966621, 'establishment', 'maps/raw/places/staticmap/location=41.986346,-70.966624&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.986346,-70.966624&format=gif'),
(511, '1b389769', 'f18a670b70c4200c95d7d2aa910edcb5', 'Long BiÃªn', 'Long BiÃªn, Hanoi, Vietnam', 'Long BiÃªn', '', '21.0548635,105.8884966', 21.054863, 105.888496, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=21.0548635,105.8884966&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.0548635,105.8884966&format=gif');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_data`
--

INSERT INTO `messages_data` (`id`, `time`, `tab`, `token`, `display`, `author.type`, `author.id`, `content`, `emoticons`) VALUES
(1, 1442312250, 1, '10e89e0e', '2dbd3a4010aed3be80d6b1a9ddd3f360', 'user', 1, '1stEb47ETrwKMJt7hJtuJl+9g5g6y+VV7k+Td+MaNQE=', ''),
(2, 1442313883, 1, 'b34618da', '8c503e29c334c871afa7834565176d5e', 'user', 1, 'i7kjkVakyAlSNwydanorYpEwNHxEj6gx2ZGR/7od43M=', ''),
(3, 1442313894, 1, '3581c6c5', 'a3875139fcc22862c9c2f9e11ae283b5', 'user', 1, '1PMoHK5S0R8Zzc514HuPhZLyxqFMabMVLolmwZbtzcI=', ''),
(4, 1442314256, 1, 'e9c3d08f', 'c4356f5fd3456304437484d0728d4fa1', 'user', 1, '0AZfel7+su44YIwPDjAF4vDNsGhFiHWevtbdLaBVbhE=', ''),
(5, 1442314275, 1, 'ff9deba1', 'e4c400fc520f95dc2c555c80a0fad3d7', 'user', 1, 'lTX4+vcDC+zER7HH3BWjyEApU0tKfd4SyHvr7ko43N4=', ''),
(6, 1442314316, 1, 'a486b4d0', 'cd04cddbb589b84e1b7a0b96452c9600', 'user', 1, 'OVtBxEBsgiOdcW7UaFRDiNhxqK0ir8fq53ePA5QJe3d1ltuh4zqij85XiXNusvlC+3c1Hivjd1vtbdBlSCfo8w==', ''),
(7, 1442314349, 1, '9ca20b60', '8f545eb8f89b741912bbe395930522b1', 'user', 1, 'zm1f7cAtq/7YoQGHh2bS5ZjJNjXATMjOCZJe07zM1Z4=', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `display`, `private`, `type`, `name`, `language`, `deleted`, `action`, `updated`) VALUES
(1, 1442311808, '06ac9e04', '076783eaa3c48a033b4594ddf17a8150', 1, 'groups', '', 'vi', 0, 1442314349, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(1, 1442311808, 1, 'author', '0', 'user', 1),
(2, 1442311808, 1, 'members', '0', 'user', 2),
(3, 1442311808, 1, 'members', '0', 'user', 4),
(4, 1442311808, 1, 'members', '0', 'user', 3);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_views`
--

INSERT INTO `messages_views` (`id`, `time`, `tab`, `guy.type`, `guy.id`) VALUES
(1, 1442314353, 1, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=latin1;

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
(259, 'user_suggest_nearby_timeout', 'en', '604800'),
(260, 'videos_views_timeout', 'en', '86400'),
(261, 'boxLinks_hashtag_timeout', 'en', '0'),
(262, 'video_cache_timeout', 'en', '3600'),
(263, 'video_preview_interval', 'en', '3'),
(264, 'video_preview_dimension', 'en', '128x72');

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
('83oSkJIzo4fe3jHR6BsyrN2FBMNEZt1EMFzCM291gie', 1442937884, 'gtdOJElVLZeor7cMw5VpMLMWMiqN1ye83OV1Pzp7cAh6zRGqGCgkckGn29+wJ2Ba3oiXl3dEXksHSOAAlmm3P++hYEKILqkOKiwIiukAyJpiwh/MmNtf49vMWtiqBwu3isFBYedEKrN1w1zNKraI64Eig8spGKGXSLKDLDJ868QEBB6JbK/NzaEaJKFolefF1BpyQ5pRiPfGjeap2eYIpCiOO5QFDvWQpxhT2jwyW6grNYIQfVCT9AI4Boj21YJy/aVa3cuo5DqM2LTKQ4DNFfeaUly8xqDiw+IvuClI5BG/OYoZDnEGRc12eNF/gb8yb+teiQBfRQruxNzBPPb4U60o+MwVgH+UeCWwpPjfEflQsBxf/5eZexdjmXAecK7Ek/ySnw9wCFVHFg2Ybs13JY5kbx2iNbZy1xc2wjp3x7tPS6lZwvj8Kd9nTzyo1QTthB4GDMf4WsjVDzICy9Ubi452uQRNBt6movq59inDSWQzlqgcUlCToBbBuVZiomD1MJnRkFo6sVvnzOMgoS+V0mRo7SbVKVJlfG1ScR6rmm8/ur4zCS4kuBk0LKbiZbZUqx2WtgDi4ITjSlLv4QoRC2M38cefvpWquU7YIzBy8BEhtmOoEMLvPjlXQy5L2jEs+MCfx5x8DaASUVzMga4ZKBIE53G27/87igAHCQ+Mr/ik104KcturfBPMS9iD9Jjy8Ssq3uJyV6a1ROS9iuevRHEN6Zzlj+yAg+7Q89ezdnaPiltiY/2dgvNzTdVg+ijQh2/r7E6u/8v7hnOM5UbUqkoVSf96crS4B4HjZI/8/dkZCN2aZuT1ypyZ3z64gVkQ8GTdD6Z9/it79TFj6z9TfswGJtn4AQveyirFuo4Vf5Fl85o8+S3kojnKf2rzxqrg0b1bApYkKbfjgTRWum1Hjj2L4koebpMCMQV++GPeV6M9A0k0y6szmvpdIhvzJCwO4/r+z7kd14YqtbuWHJE7f/zWALkUkV5pBR4NDg0qhrF386+7nSWpPH9QzUNToDtNFd+zLTbempjedJXrDVcZVBfaLkAkzyzVApbVed4PGqchDLmtKBU4FdRb0klq7d8kOvn42msEpnT8dJQAN1GjwNsSv/chY5qsRIzaGjuKLKSy5tam7kEUqpH4kP1WdSR14DUkYnR3eKp0KVtiZ243Ko/IF7FsLmxe76opgAgGyOcEns97oXzzTM5Ptxc8iJCk/tytDhb+16laqZEBFt+qnlsqEIYebXjB/05RxG+fH0wna52SUDWKMId1g1GOCFVkdkIhqL39hu5sV1hnFH63paAu7Ns9SHRGiuBGWNDa0TRnu1zj3WxGSHt0KnxQ2hpBKqmeu6/PEKSbPHtirbgaHnXariEQjJ2N/hOFZKZQNCsaFI5Lz6zOcI6xRLE8AcT77JfOAYeI23JzAkI60h+iafev3qNIcP+mpOvj3boHq1GbpZWoQuQk1gRHQldy6nJdxSvOrSiS0t1T6Vi0ECQTwjxFBo6sujz1j2HUjA4xrb832+lfmtGbrkHGZK3VHcyV28Vbb82qrKloAyobF8L3UtGjmvS8NH25PLvEGwR5bKZWy8+a3gcHJBQ+zPd8ENz4kXH9cvjyXdiPAkK6gZzkk5fTSDOzEQ9x2pGJsOz/YNWbk1/a2cDcoxnDHCokpFQKzPUtTWhALuG/v6pM5hPAG7O1cJPQ18UXWulyR4eCj7f7WOI35mB9KXKoCRFBlWH3Y/ZIvHRppeTQshgHZTyKz2OkdHUyM5yMAjY4b7QWEwMMHx8Vm4lc6Run1hwvYS9KigDw3QSyHX2Tf3qKzDryPWRTymBtCQF3pRsvtDah2Oq/lqXZmLflYa+gD0cWd/PFehRDMlgWAS71DaQ340hO66yk1lLZwBjO4jL5AjF45g1N10fbXiSVoeUfWEY00JN9pcWoWaBpALc+FnuKaQRnF7GPmWHLVF33cXz64tOnzjC0Hk5Lw9SQ9Ur1crO2jalai02SVM17kQ9c6kXTi5xdxFlKdnZeqZ3MYdp9GGGd4gZ+gxF5U1rv5FD4bjatXc8TSIyQdHdPXUzzW10fmF/XDOK5yE9uHh1QqXnARDKVe5/bhcRynh5CyhZ0gL6HqRynN++PQwLkfCeZtANQXjFJmOqfHOlT4NfCdZ57CURjxSqyNRCpxnf5c9uhCse0hZuaj+Wqw5jIBOGHKs6oliB257CwlIiRX9jBErEabKMYEcfFw5TM74ACfQKWmIBV3J5y4zsEFXevNiSmAP1WEsX84Fq6LVURey850v3CLFHdEZrsXAkurqfJWTRnn4/bdGFYHKVnkP3SQ/gdyeNC+m5m6xseBlZLMGF9n76Ax64sDtFLLv/DwZXIqEm5zLGrHli2gKFKCMLwv7DnmdJ7L8odmqOXa3IeRwFm0Zuv+E0Axivw1iPM83+viObbBS7+ek0KmfBxVQKxMzcRtEqfbfKiI+2YSP0PGopZZs+jt32WU/ZIByZEusbQ4spB1SSyUMs8xq7G2LeObgTmNKlFlrM95Sn1smWKsAl1wz/+WDIG62rpuhsYdhf5npnGsEyGR19GPbdpSGe0Wx8DllmgkRCbQNC1K8riGhk4gmr6biRQjPx94+6rgjrdGVrxqaeQ5lQCTMQgE6idR9ImRKQSseniZlH8KMsoeWw9obCWnXL3bTVFu2L5JfQqOwBLFOuz6so2zWhzXSBdmYC2jWPQXzf69Dh0Q1G3msoRRBgzG5O/QGunkA2xqArXoGkq1sVVViARF2LZhcjDtMlSsJPwLKvo2Hz/6UN8Xq5sQGypq/b2XHiTyuy3kznLQ2xXa3ERWYMTH6HK+r1dvPHk55AxOIyIH887BuWesTA2D04QL7xcwypO3zEUoOvEpdJBrSdivr3jef4fZzwxjUp5LxswedwE8Uesz5CSqG1vgiKSGlGlIy5gm9zspUuz3HVo/+wR3pgbPrw1UaOLSYyy7lslukcoBipx4QQCbAmIFKc+JZkFcfmU9W/9lxYny20fdKxHf0cCaRuUMk99F8ILrlyFMVfTPBDT+QTmRsH6WRBcUiIQUx+XLU+9YlV/+29sfmlnL2ta8yaXxtvr6Clx3JEkhqwoKuzxhjXL/7LIqjgtglbpvvOvjJRt3gCCLl3aglX39mILqsNI2SMjlvAEKY4NwKUndiGv9F9Kq1FbFjQStW1zjhXD4vkCFZZlFh/ioc9GqK1cyxnslOGXEQaiQPSGIm2pZNx9zpTUWImoZxPCO0PHjqMuurXMPA5EVcIbwHReCIVb8KbMw7XPpnmYMwk4mxht6PKPAPpp2Z4OrPW8Z26gqfoFpzN4SiXAeJthC+WIs907Zr/37mWt8xsxOBO9YGlwMrVRBtNrQkAV5+e56zvkP4V1xSpy0jQdEhwcl8pyvJ9s4tDxq2gmprdPDbJL9R4iwuRgEIVIPHKOotRhPilbDyHbm/EoBA6Xk+i74zsXHJcmThKtDfv7dyp+fn6N22MATpWs6YQ1R2AButeAjCrC9YxmykACAY/F+JTllG2sP+cdy134ckaM65wCFwVz5V+HF96eROYI+Dyc5pylqAFRXPuKFn0SwUxcCckgKst95BuzMjC60RIzsBklMf/tZ7JejJpyz4+JNAqalqqY3r4zwIeTiNHYeEtCO5QI6FmfWmZxGioBUnUvu+EsCXGJKX556m0u0ppEYZsUh/3e2Gc32gi1pU2JkfEcu0Xuds0F9T+XMx3ywbqEeFo7pDA+Zwq9a1+Lu5+AWoTUSZJ5kgkgV+RuPzy+46cBkN4jnc/nWmFqzY48h1ie6U6lcFuU6KUg6YrTlKBgPhm+9BG1vl5HwmHg+a4+KaAdcSvc4q+n8lfYxLdwejhd/aOu7g2/hVJlLt7AYN25dhcAqLl++Th0DT3puA1QMxAsA9CFOQzMBw9RvWzoJi0Cpmj1nD6rVWKsFkmHxQBxJTjI+Xd6sBiaNue9Dr/XQ6cHCVXa56oS21YV81LbR4Xn+rbc4YFtLS4pnroz3ml9fdFZHMmdlnDsFWBugTMpvUW43n2D+/Pn+78+BvvIin6bsY6WQdWVylTcV3IGpGQq82ihlVuLt+KOy7/f2+fHsEOsaohJyDVqvb8QT1nU3ipoIwW2/acpdqzJVY8NCAs2zAT7zRd9lC3MKOjco3QSR15+RRVk2gsoYRueXEQWYv8e7pdRx5h+5BaS84FmGyhUKpuVeh1Y1s3o9Zyg77picD1ljkYLKgCMey8RXLq57o3vKpHXTcmh2X3HcCxiIvtgTlmkJBAFCeQx+94Qi6Dc97XxB8cMxZitZq7pJllcjnZy1B9fCVl6WiuaBoqw4HgFPesersf1A9EqU6v7yxQw7W1D/3v51Ix2rchvpszfOx0DaPM47+xUzUhZrKX6783JNBZCnXMd72TTzRF8QpNvt+jkKtF74V+Pt1tXrd1pzc04UFUnjtb+lZaJb2GaFauvzHSjI8WRsZ72bqqHbk9Nsk7AzsrVK3yM8K5fQtfeTRbNygvGTLdjvl/F2sYa9pXCTIa8UGFHr+oAvKcE6oj0eZnE0dpWy0AUA/AeaketwHO6YfvObf/5YpZghFQenC6KS7KGklT1EiZuBZvJOLm4m+9dDlrtcqy7UFigrB2+JIkTS25gDzPifITHv7Nq3RTvp5heRMS9YDAABAqPe/wQBvTxn2SF6zMsp8yI417MpNm+XZXSMXnk2P3QB4ZibJA31xvOH78qzGSc35kZqGOkEx0oPuoKt8VPvZokMCQVaUermsL8SJ9zNzmOrH9hiVUAafOOJdc80s56ejV2mOvwaCyCgjrHMmfhbeDChK5Fcb1/MV/oRLg5Tmvu0lTQQB3xzMI6GuHSZPIUPUl9nqyN6jclHgB4RrpXbj0SsGgsp+KCFpbeJZzrdTB1kzup+CqjdqxgLqE2HYsqLJsN72sI9Y4WYJdg4DrZwY16as8q7K7FTjkiOGsAy+Vxla4nXJthzSBa7HWuH4bxCYyihRKvSxFCABQfc9QAmxBYlNCRwIwYrNZTT7YFxos06G/DtGGVcxY/jcDepWJYsXHU33SZjZY99scwLJyKUeGhA5jyfuG+n+/iN5GJLwdfScCp0ZdDMK4/3wVbAL2rpzTGDQ1Kq4UiXlvycXWZsfblbMVUDsKmyO8cQzwXhZNIRrk+pqB+xOhSoc3+Ndmh2i2NFjkfVqHnPXBxGwUNKuW9jQUMwFWy7Qz9Apn7pntz14+/tiq7nzUaNYiMI1kfAQEdWRoWDdzU0VvegRrQnWB2XKTvxNMu7ApV20cxEb4SugkCuevDGu/zkr2L2qSctlWc57wdIGk0i6brF9enUYGZ3yee+Iqpz3X4NLmvuyr+sDiAOiJtw7Ni7XTKaGDtr40Co8UKwJ7SD1bUDlkq04N0cPtX8jGldMRRLM/Hd0tcjC7ST4tJQ4Zzs4O5fgRXTgY3QGTewPFW/O18U60AdsZgCfqENaqzTfn2nTK9rsoB65LeLHzxHSHI0Z3FRgx0k8koCLsnQnN+IT8JHM/LroBG84h4cpHxXCgMS9Gl0Wd3wjI77YcbSRddjpZ2/t68X8CclCQo35QmC41TN2xceXs5q0ohQC1DrVyPktC0DFTQhBlYRZEyq7zZftryRPTO3LNMlhHPIMf4q8JGoC17KSQ0k6h+5f0rnvCmgpSXrpyWuxaXkck8tnxg7a1uDEhres6ELxlIOyKJd1A5vzi6JJplLr8XiYrtcnb/hbeowaa83cPQ1e6SAkPOTXmCrYADbf0/j1LsMnx8Q/gFM98XX8ViFJWB58FT1IA6+4lhaX6gyxsDuplycp+2UvMdrfMm8Hns2NJDUeHbqiUfPl5n9tTxv9R4tixmK534Kbh62XIJ8wSfSiwnesPM1scwRFrvBFnTkeWVCsOF3LIDkA28acXCBe4h8lCEaH9Vawju9rL80mGYmjknskIt1oY9S8xTKxxYcP4L74yoc1tWJYLGOgC7UxNKAcG0EDXknkdTtEFT0Sln0S7aZ5Wgex7HjP151Mmwa2aDLk38kRXo6NlIWVAgwrXV4EBhqmvOl4f8Y7QXIlTliF88Xz4lnS2RZzgujcOfx4iDJ/80MqnBmS64363hE33WlNk24k7Pd3RW2pOvVbu6AIyVJ6+kS2jvBl/gtpGK9UsXedVdEtF54Jw31fyL4R+CzIedXqQuoLbtjefibeHP5lAKwcb53vgjqo3F+xDRuqpEY71Ro7XsyHip9hcd14GvXj6+uiNkiPdZABj1QIBDK2ZC8MCZhH+DPTJ7R1sx0Cu3DqcdUjpwCb22Zpci6smsH4+AEq2Y6AZHWZGsqFuLm3A2a1S868UR4L9gAjl3l99fJi8+m4+3/h8ot4OoI/Ks/P2GsWshrzny42j6KDxFBo6sujz1j2HUjA4xrb832+lfmtGbrkHGZK3VHcyVT5rsX3k9zvfz0cTNYDlXY1oFT6vncI+xZC8rOzG8/8ahc4Le2XlSSgZph3zhpr4UMKHcuAXyn6xzb8S41BYJf3B9yNiIUxpdgF/7vUspdJNErHaT3ombHdrNIDbqSNzlgMljao0LvwkNPiyNXuf8Y0WVdQusEB6tcTVALADhlBU8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3MldyxB0SVK4rTTBCKr9/6hJVd9yfJV9lzRQHtysjhdNbTRsDX5Sv6UE1JzA3U+ElUikumH8Fcfs0hxpWE+nurZD88ZKhHVeBm/dilyrRiLgutbq8RdaR1vaIW8Vs6QuMbOdShKmDi9uz1GYUql7u/9DiZdGOBxStm6wqQMe1YX5fnkAxwgOjAuF0QRGEYDPv/N+BToyAHhxVSBBTC8+U2CKoNiYeasjlhXej2rMSU8SICkEOZCAMIFsp1N0WWCenNtRuYWPKnem44bunQMCS/Ur0NVKMG0P1OZqAXV5a4cVZMwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYVhZMabC0knl5HEmMXW9BEedLuBl75VJgQZm/NGRX+GWaZF51dAq4FapvmF/180JmRIrU7aCVVJiFzuim6HzWb4eVhWa6EALnCd6VSgU5GVi4fsKCiwM6CsJHRo7RioSafhRSHK8zhHzJ9tS+kjmQ4Tulw4ZeLyDXYcG5mN1VK/mke7UecFVDDVOECwIgU3HTnCVU9T26BeN3MhcBU1slr8ir5qyjaRcvNsRsgrXMc/VNotdl6AaYnKm0EXEm00ZOuDVCBKKiozyypPpniglPbC2zr48wuReC+00tP69cQ4QV9YZJ3LacGvgEeQCnjBZius82Ft9SKNysT0VkWlqm0vavwGFzXa+Cm+6Tsm2PNmK3mH1iQlSVpjikndyAwjuF4XHOhSafK8zjtxLc9wyCXdzWUvhLFtSPHWHNNM4ApEKU7fMRSg68Sl0kGtJ2K+veN5/h9nPDGNSnkvGzB53ATxlOIcA24NRaX3fCbOYSvAO+pRrhRXhoDHl30zh245BAigoqALvriRHXmoisXI8Tf94EpLyMvt1NiFrdvy02vDj/H5AHSQlgM9hkHA8Xt+KgEPXyn6fw30O3wcuqsrmDiQwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYUC0HKKy6vI0fH7jtYyhJ9pEadjKCenkP9c13mF3/xE8HV/CBylaZJXp77GZJMhh0HyyJ03g/C7gvK+GEHFdbgxKrQv9mCJ7D1svSjugs2BnDMnvY+kHDxoRdWN+kuClSK6hRsx8acKuKX/tH544DHc3rEAZM+StQqM7sQYbxdFWBu7eDcZD/WVtjiN2ACUYduI37kGv4H2rZcvia9cRevUgb1U8yKDcyZEDln+QJiD75MM/84BycFKR0srLyDaSlnbPtCq3DdPopw2CuKx9e88znF44LqQ0+KKj1RKYHz/Z7+blr+b1wpSmVLvdaf8eE2XEzWjU/2JW15IEjmr17BZyquxz9AkSLuZNN+PV20/XiSUXfW/Px9dmwiyWWNLUeks1LzGeM/eZyGIO1B6yaDV84EExRP/T6T8KGUSJfEfVn9AVeAkKGC5yRRsbMzb6lG5Lad2v17Fx26zBe0Owa8Vbh98IOyja1CRKeAFteZug0oxAoZfgQw2N16dajtd4mhMCIl2LtBbJttj3VJXthZZCRynVDqYwKAP5E+C/BAm4Hwv5ry+r5W/lXDPP9YVkIOxxTAo25FFDUvh4nx5GPvIXDuDnAlNk79A2aiatidq3gjxveGs4kCDp1W3o8N3KDEFubvFOV9DLUayk51sHPiergk4NmgbSkAXTzLS7RsqEF7t/m3wO7ucO+963/CELfN93CEf4GLp+ytrgerjU5zn058VFcPZ81Km4apgHevoEuGiRsofMHzkzj3uKscx2cqs1GzokslpeREIS6hKalVLlLrKIOvfrWjdfZ774itPAOPWB7BOcHmiKBVFXP1YXMM33wjv0zOFrpGmfpnNM0ilR5eumMHSM/h0S6ya3vPX2VV+jVwWWfMDmkpV2M4DyDOwsR5HAMwIOY+mNk5s2gU0RZ8eWdcvc3xBqnKsJJ9kRhTNwnlw+mq6w0xnpbL43JML9MwsPEgP0ueEu9lzJHnTnjBjv4RKNkabTmAYMFwz92q5TW9bc25lvMkJ6oeaM+PdPz7BsqcA6fZGLVV8VsIXRKCJ2yTr60zrvfiBFxPS2XthMpFDctQe2npITBx8x0qSwyv/gFJh925lajgKPoNEnWAkPmO1mCQIYz7x9twUR3v80y/LBgQlaDqu2o/g5F6BmfhjVQE8J4kIvWcYjaQjyhg40voq77ygU7orNFAQfMQsf+cvG6jLrQt+ijmePmmilql9MHl5hOad9we9dQgnf5y8dBngjlsoC6Ogy+O7JgOx/HkavbSx3hh3PtrbxIkO1tRBAKKH2HUdw0kh8AfMVIjOquFeAs7kDAdSz1cCTUAD0/Gw+NE6z9nuvVpWl6qJUUsKdoJdJW6xFxS2ZTQV/GYjZTBf7UkmhDk7MN/TX2zK+/4I6+EGyb8UqImY2SmORDwTKGGUeF5TxoCrcaIBO5Sd2ng1u7DkMxmPXcLl+eTWw6TizgA677fuTK8njMBGDW8ZyG3QDejtH3pPQT85hziswXjGk4G3wOAwtOJIpL8i/ow0/s5i8VacQXo5SSGyJNxgirTHglcGgAWqnV6AirxuBQfgytaleMBByuJ4cJN65/BTQg++6KhBrBxmPwsoAXpPozbHIBFD78dpxC3HE6KBdl8WE2DUqsIwPgBAE1oTPo4PDc/2AFtsaTquthYloQykkkGPBZkndWzbby+ZNJvoY7StgHYzFtnDglfADdoHG8QbOARemP4aqdlFDsWJfkDWGkViLVyU79RQ/dcg0mx06V+7ZTg93hC/RSI0N1dKMl1mDT6wDFNv7j4zXfCI4LG3MiLfXesICY/dHKLRgW8hKpgb8gkuyvZnfK0GCEX6RralGE6UQVeex57fxRO9dDQkKSXpgEpUxp+FFBRGnWDgV9lm5LXfLBwHi0AIs6/iY5SGtweFEUZyKPOG0wZ/QFXgJChguckUbGzM2+pRuS2ndr9excduswXtDsGvFcJmjgX8p/2Q/+8f5r6sGGZ8Sp97DXdjUp1vOWmHjCYngirI4Nj2mI7b8G3dTbYfwIuJvKApuL5l1+wLIDSeE0I3AoyvNOyv9/DOAkEk6ZYpf0fY8qNPsuB8mBLynq6Wk+PWquP5LJle6QMjIWa9TJ+qfR8RF/l7F/QawrixmuLAUClI+5NLAPfea6284xIoHftbbtfWAYal04WFbSl1yms25hIbkQ3wAmzDB/3KwxaX7LYrWl/89B8ta++MeByYwM4e7azIl4b9KjLfmXKQWzdULwqSr7zktpQ5+g5gpFOg1tpblrNalm45va9w5MW0L8AZvlf78OPkdz9bfVtfpxF+l+nlZ/YYPqhYVlhYX0iO0/xzGrKZXGfPZl2J20hCKWlC7pTkLb8JPnRYDXrhDscDM/ncDyosPqALinoI9T9MRyrKO1LZaFJWRBID7fYIBreSQZyufd2tX6ShcvTeg7EQVFEiXl1aW/JmYufVTa5+I1oNGvUIbh9v+vtI6rgIWY2o67io6laqZlIqXMbxsck/Q0zzJjv20D1iR1TsIsKM6l6e5qYBVHIl2yuyLsHa/fWfKWUiOPPgF5XBCoof61bBEzkEcg/OSaqGQGgR3pViVLtfdMqN/EpYz5hIxbex0elh03tneNtxwH/ATd/59hS11Emo9BTjyaTEQcaIz1YoXSnf0p4P8qxwspBx1jus6DBxmEIV3jJVJAQx5cu1y+gvo93hcLlVb1DL99Ueo3D/bXiD81Sd9KeQkPXU3TZDcuH6IBt+dE8AzUlegl5QwPpvjq+oGPM2pPWcpfNH6t6qR5GxiucS9txKdUQpXjpsLrcMsTGyVvdu7tsgkwQqgduLbcISnyBovDzyPAMaQoDroZA+MLkdJNkeNiBDv4UnLH1UOl1ocSL0pBr1aVaXhdedcxRVlDlxXpBvna36GJSWe7MeSHC/AxDRwqPfbcwTw9qbZh2psaB29xlEsAdKZa0IpZh1EVdfpoMpU6y/tobltGgs9ZJ6npTM1Hg6uOOi/cE8zM3qyx0C366bfe4gYXnJR8YS5E2xZxS7yCen3LWzlFwPup2eUBFLB5jOWIT1bgDccyK6esXpB98Edj4/kNliVge8wIm0v/Q53UE01yoSB+sYvB526w1cbJzTkzrOwys1MCPT8sRNEP8nRizYChOD39fX8NbYS3thXiPP8VCyXYN5WnVKqQfVWBqN/rNrObgA4zwWf1JyNz03sOhY2HZuO2Q3hnp+6HHvk0Secb4heUKWM+LHQYkhwxxP/xGyTxTNwnlw+mq6w0xnpbL43JML9MwsPEgP0ueEu9lzJHnTIS7yy8oK2wA+nJBQH9bCpsW5h6vWWCCw6Atw3KSZBFDO6pSkJcZcFso065aWeDKgKfipUT4IcP9RSwzunFARfajd6ncpJmsXE6iptjKcS7/PDkFzEb18EYirXkRf/e9nmoM6ICyxld56CvLGmhEilJVTzTwnMciseiCarBV1cw8M0cRwaOnZ2h6+wKQBRC2nRXQbWTNVaF8UpDLMhcznCM4XTOTMkF10zjylV3fQjPoR9TU8GeSZiJ5jS3NV73kyg1v5qx1r1zuOMKOZrpM0fbfmKMAmoMGscJbFA948ZMUUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR507pAUbH4VSzXtKgBOe6u2ULrgvMIBwNmIb0U414SO7GuSOj6CFBfHAcqf5PzDQu7I7l2AtdBzbiianhoL+N0XDEul9fROwe91oVlAYffXQY1DMIC2aLu33bw/BEN4tC6ws1oc10gXZmAto1j0F83+vQ4dENRt5rKEUQYMxuTv0Br/RXAv6lcJD/6cTWlG35v1M2QpUM4LqHLWNmrA7+4JoApNn569OO7MzfVaSAB64ogXe4ZmMdfrc9+x1o+5ChslbbELmSGWGc5BMWOU8ES0bw9kY3J4s0iSLiWHHh18KgzpFea7sNqpF/ZI3OduDAo62CHIYqQhQCiNrictaWug2ekaYxPR1zdJra04wqOrRqRoaYkeVgjJ44tjFtsq6KKXXCFLCqSTQGv/xqYMUNvXKwsmvFrvHfTnMsPN6IDyobPD1g3Sl/U7eaSYb5Fntm5BGfiCXQafHYYIxPlL6XLzFyXF/oL7fVk3dNAfTdxC12jRAjPKpdEqwFUtQhtjMQAaQb3iYLEgfIoc2lgU9+cO1YSvljcaKM39OsmoKHSVDuPZ771kAyYFAokmH70IuDGYYZq8xTWbTKyL/kKPcOggGpeSA3U/mjTlXT4kjxF5e6FlXJdy1uteJAsD8IN0HoC0jZ+gbIhAk0JSIEot2v7bH4O4O1ANDztv3qEcg9jf/FaKVSqtuzKlKj8ve/PF195Hk9BYFor1RuNEqZ9SfHt0/RNXQ+lHjswfEr2cdUsMwutWZtkTlVWhLQGMPirLYyQkOLnUiJKHPeRdSbeCwKT/PqTQ4CA0bX68V1EJmSRccYqXSSuUKF51/g/PUIDjNhqUiNGuPL4KYrsv6SerTZAgCYOPjfi4zvyGLuDqBoBlPwiezttDeKxRuPj0ogCdgSEhe64bgeht2Fk5Kvd5gk2QoX0o8axGLP+KnUcNH/hDSd8Z682d/OGjGXmAuKg3JXw0OcAWndEQWlCkqLapL77GJphWYGStADqUDLnPcq93iM1Qc4yIiZxaA+6UD1c3hAOgnVU/c8Jgpsxmml5QLzbouxxoPJXkJnco3e10BZJ+zIJTD4by9+mI35DCr3OC98geDNxoOQnkPW49LN6sHo+/BZUGdu7FOnr02ZpolCz0rGq9fyRO675rg+1yDa02hjpOQdzq2HDpDd1qU9w+98WS6uqCwwBKdyNhyfV30qYnSt6NTURxTLY8VaOaF3shhkYxu6NPTdTJVXmJ1P4m7fHVSpRBPB7xPNhFNJIDgUioYInnIiTwB6Z6dwaRwMLy68Es9Q6s3jcCqa38rZ+kxSRCoxfR6S5YnVKS9Vi8QcZjiJ1FacJ9CeXS/gEtThXGawCNZXW1+2G45KmnsBiy8PRoCGynB27ag26kxqMFbMgqQgI99pWkzTRlwRxDUFMRfYbaLBdoaBLRFQ03myLsJSt9v/c4fzMpPSWWHTTuris6E6XbJqVReQ+eL7A9732Yalh2o0jWcp247TGubIEypmv8KTHnQdiI2cXaIy7PdZt3fLHtFTSoFKGf1ze+klylvBawX9AVeAkKGC5yRRsbMzb6lG5Lad2v17Fx26zBe0Owa8VoePUONUk4pXWzAsy2ctirMNkm3ivg7k0Y3T5fiLZQtCOji4f9zgtHQzZvE3i9FCzDSypeeToI9I1lDPFNY7HTPEA8N/2XhiZ0DzbLDwpsMVnccyRw6G3/YjBVKzuUqYUTGOMuE3StrZNhV+1i5o8mdtofkjBNjDniJuNmeig3+75xSAK/noTYGVs9bF3UzeWufBhLp+gZWsQ61AdgZvDhx2kkZCXBtE4sgy9I5+SGzTmCCebJ4L3zQGVR1QpykTF0QpDnSccdcylj9NV9SO5ZenGI3c1EZQNf0SBpz5o7Ag7QBAhR8TQ4hzAZTMUuH1Eqqh5jJ2OCxXfVdY9XQ3q9uQvqepUqVQ4oVF5cKxcUzoCBtSXmRDFH7SqO1fjUtB/Vd/IraKmuaMQ28UHCSTTf6lRfYsTlMMh9CUO2Cji1lvmNzY4Y/5kf7h0Ky91KnAMgsz60ZKkJNImJDfbSY7LMjVweTWDu/caodh5oy/weBysj1+Ib9Tb5egCuYxifRWYTPBfaQi+M0JP2iPyyPsNkVWHqvOVTVKA8kjqDlbn7KqZJBWknHzkzgf2lCDgRIoO4tDoLjtmp7So/tTsnPIYXIoWWYLzgt72N1alQZk85qy4IYqpHSOzI0rTzEdkRZ9XnSKZkRsK6CcoSRUW3XNuV33vCwJuAPYXLi/SFoAXuLqwza7Q3VMCLjsUV/5EvlB/CcrkVuEyCq82RmaMPYri44NLuLM58mUsV8+ORBf4FAumkd6FSsDIrKpt1TFZeh23wUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYW9NHTievO3eex15r65uto6ebxwe7rS1cA+ZQzS/z9dITOs4zNeO8EvPq4A52TZ1wtyBf4ScgwPxoGq6rKbkvuqpGcZ2kxqdMblIcHFMNfKWrAO/9BZi8HrEo/emob+O71+IWWo8mikVgXOKXDlgNG6lcsVtNO5WHLr8cM327wQ49jWrw90OzJRAVSaw/mvBIWgdShmNobjBIbn7IqYfKuDd7l0YGM843gYUw8Glx9M4MsrEC4xFPMKO5kUQ/dyKZVYiz28dtvJ1gSp5fQPkeiebFczkuj0fwQd8SuSza1TaRTNwnlw+mq6w0xnpbL43JML9MwsPEgP0ueEu9lzJHnTXxqV5ZDWpMOkUKVdPgL7xaDjzLShLZTRVHXK3vEqO0z3jMBfxCywhEQuojP/sAZ5Xcp9h6oq4LHlTE9e6yVecRgJeEI1VYZ75qCIoEthzks7HOXLwfyivE2/NaeC35xoFSlvJ50wENvuwIy8fkUMA9a2/iRMt2kA6sRHp9jUkmLEWANpn5BdA878B0C6UvnR/1BGGZ1Ef4hqhLKKF3DICpT07mDii7rTXoBzOKnUh+jgXdXIolDeyZqRUicw1STLTRyIUhc9vtc+5qfxegixERBiO9Bwke5c+/6brb+7AWtMQm/07/RVNOGiyRHfeNPawyKMXhUCcnOnGvgRya3rBMFLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmFsVYMqmTTkRMKtGfGGCyTtFZh16MHu3tVOeiwOYcQIR4Q9olumimcfNoodEzaL8SD8fj53EJ+qJ7yKvOPEMyFAE6vUq1Eq0pjMlnBZFJl3WF8Di0QrbcSKU3Otd5MkRNQ6Sxy2fe5T7I9FMT4aehL/30ooUmdizdfsd6zYo9lpN/uzV/OKAeOMnInW/WQoqbaKYSTuP4Hn4TflfHohdN1YfcLhaNHTr4vStTe00SZdw4DRgPpgo6RyEaIS1XaI6MUAvfhnvU+a0TOUs0e6bnjshZM+0qUVRZgHwvb7VJ1Vkc6gmJijYgp2tmhyQ0wpCsqYj5WGtHYHfL5vjOt77nW6YNUIEoqKjPLKk+meKCU9sLbOvjzC5F4L7TS0/r1xDhBDhC8N2TWHCGE+RdzSACAbKXd5X9Ho0nohP0B70SGQlrqIflj1Y7JIx3nEDOrfkpg8zVtg24aKnEfSHx0xBdIUBK/5lmOl0NuSa6JWZFMh3zv1SFCQx0zlh08MMaj1tWy8kz56vBhvbD0dx40vlEI27vI0a4V3IYHt3HvzhR1W1TwURJ/0hYMg/j/XN5puK+E8FXpg+qp2u0Qe3c1uyz/90hkIXVGTIOTPqNOX5bfcwxeky3NeknKcjwKPpyRYuEq2ENbFNNN/l2GyDekl6PQf91JQMJWMrs6oY6AFSZ4bODOHXlObt7Erx1xeQaYYVEe1+j9KbMmxfxFxZ7/FESmc5xlpr9klGNPXE9o67HUzZDb0AnTC53NIm+hYwYQLm7lCgWyB3MOBC5ETShKL2+ufCZrXe/TzM/dgm0PeciwVAqF87Is4tM9q7Tub+ZWuFKKxyJOTd1F2SlObhtOvFhTZp1VpwCWPbNMDLeTkl+3V+oyXRTepdMfBDUcGJA69RIZY5q7Q/15oiQEkzrIZInz3craip2PUgU3BIoCRZZPKrkeN+z/8lMYqwj8TUpiIEK0mitRX5BH46JtGkdMiQGtgwi/eYTNceVq39lVNUoQNAJ0Nk1yLzQw0Cd22UgjIn4pIIq2NtkJ8dXcuOIsfsgv6Vsi8kd/FHyZJl8JakNeyIV9yCJrTjSR3QjGMlzdkg0my8eNeUNBqInVPY2OcdJ/WkrOPhkNa8djbWWK8G8oYrMD5ESEshKe9htr7TcWnok2BoWIfAPL3W7PV72LZPxj+OmTYYiUMe6rTJ5Rw1CLyqBgLnepIjj/Ni7QXvNAlB/1u5ozEpk0UoA9PaHqilmi8F3jvH/tn6ZUqsaHD2+6FdyZ92gQs2/yP1oi2DY89+nCGYCmVoijXhLNMlfsTc/t1CT4OIvytm06QJ9OvfBDN1lBfZcmE99wxcGrASF9WMe6BbYhxPzuHJSDLQCknlRmfX9AVeAkKGC5yRRsbMzb6lG5Lad2v17Fx26zBe0Owa8VMl4B2OhCndWiSpn8VTyj/Jpf4VllgaO8759jrVJHYhtNfoVg7aL15w4UmDvqgPqaV6WunicEn5NxFW38sCP0sRdxiMR560XH17x84cPpPjKs2L/jywHWJZNim7C7e0levrbAy6vzJYWqiUqpy7mToDOed/6qh5L/gdpBENSlo8RLjECwHcqGGaZRiDVVh5X1bmEf/0UVqC7CCtaenGymVMRSfGAA2sRtVaI54IH45XKGqzUR2z+TznuRJogGOm1QlwjZRfO64hYNPj/0mlzpt+QhG8grjW+b5Bg3IKQ/zVUTTlFmjWS6wzJSKc+ZZrGT414c8+MAzVbY4lARx4GrYYbIJIvriwKKkgsgYVBfe48r9kWyOTPa1dYPEOnAXdpTQs4e/FyVGO4Eks7PnlghTghuDWK166MbAemB32JEvgTB3eKs9JHwM6PB56YXnA2tTlkPPGE+RfSUSHP+/2RqMg4Ot/fiKM1K5g7lInA6cDn9KFXJkS7s3fSuPh4B0fpXiyrnXgbol3xM5sz9t/qEVCuQwM9/Jcl3ZU//A6ukMiaYTdXJA5lcqNLHh1EAa83PQc/Lmav22/2VfdoileGl3FCsxaZrSKxaoBR4jy3wJMWfBXT57/zrtXnaa7ktzGeHhtGtIHkuUz7owpXFNtDW3FFUtq0DCAGXzw/4RFcu8QHpF0DHibMMjxn0M0Ig2l0PcNBvVLwOXIXogMRJvCMi9X9AVeAkKGC5yRRsbMzb6lG5Lad2v17Fx26zBe0Owa8VIn14Vtu+TB3tMVYYTFo+etTHyW4G/mUorFMjqcySFBPyO9PBmQxSHqiSlI0u1zE8loN/8C547CgQmUE945rtHXqPK6Gzp5CMTqUFKHzIL/I1koxLOyYv4WybP5WI/cqMydwsZKF/vAjpaIh9vxsaUiMPC2SYVhZqIl/RoY9nFSaWKW6yRuunxjdtzd0RnV5t3kIi2Ak/00Iud1el+LMeV0w+puD25YO1Y9FVCxeN6kLtQi5/FsK6vuy5I7H3jzKBRbnkXRkfzq1C51yJQfoR4annYW+m76T6puzRLEQJm25R1587Qpc4gP8wswd30vyxZmdzTXapKnTfZjF5WLe5Ii6w2AZPdNbyhwblcoJD10cN5HLMgsSWr+LwPEooPXJ0q23Ku1GfkrmZ9NFm99U5mY4rENaYZyTbVq2DPyVRqkWpJ6j4ENyuU8EQ4t9UNBh8dilbKNMv3ozd2Nspw92pMq1WynXtjo0bcVBq60Q7YRPW3OhgztzX/J28Wb8W6q9OE9eAVmFWUdQe6uY07hsYDHXf+owrck9lixUgmWLmHdUnTGtBzADfwu86q/9frsR0XGg76VpM/6rTkOTauV6/isRzHyVPuNwBOvlpvsFjhR7VE4sczICLCHLyIdWDECUcu4RE/y+VKNfTZDisFoCS7TdyVKRHZn27xbhOhboHkf0tcYxmjRozQ5NJFFOFKXOIscJYMAWnpYUsdtyuDwlMJO6QFsVPU0uZSwku9thoHen4w4HDBahaQeIVxAMzezqeFJWB58FT1IA6+4lhaX6gyxsDuplycp+2UvMdrfMm8Hn0aiAxbNZLeEQG8jMvVtb75X8wnPI8WAr5cIOf8vYlPxW+VlWuZrY+owUAn/R4qV2awjwW7dEHDJXHC+RQfAmwt12+oNpRD0r7eRWDF17jxM4MMmQFMMrTS7shSRawg4bxFNaCFyJHXKgeVfL27U5jqaWUrbD+osJEcYOohl6yIHB00oXLLBsNmLftwnFhGuP0O/YIS4fWgI+byiaNHH7hdf5oSAy/BjlI0y2xGMg/HiAKBtdQZmFcBxw4h2MuOh19so9V0VHqhtCh+2kfaf9MG9QC3fLNW5gXN7Yars/TJ6Nzk6mKjSp4IAUTc9b0NffOqToIqLjMW3dEYZcqPvdO3b1R0t9yBjxYdpdbi92s7fERw3qdcJKRlGBFxqLNI8b5Ksapn1sbT0qmxUiM4zHBfSy9gRdAtfvQqyhLb8hLdra/v1x56Uqi++nUNGF/h7qVGdHCulGATMbxGDw4YVBESVksnCgFPhdTKKJ0O0HYGyEaG4ZeIiKnJQBtXD0CIeq/hvxuA4GeoPxbeXljDyqIb1xpsf/Zw0aDaWAQDxCVrGvYY/JeQRYzBUlP3YWuTekD5ymvJb4gomWHAj31Nl5Kzxdn1B0iYGLt8dNPNfqf+gTIn9hJvtnRxVfc8ZVM+4LVyUQ4gplTecLB2403y/CwHy1vlc/heOWFoSK91efhsLxMmCDpZU5bkPfH0jb5GVPYUB3MrE6yLSbQbGbm3Vy1MOBwBRvn/ODQ14eZym+HfCTANqHfHGYKl+npvpgFOsVy6cUB07QkA/ZjcVRBqFjeQxpNj5EVy4td5RLCXXO9NqrTNtqhAsaBLw2KkHxVBFrUee16mPd7DeL/+ePyQ98MRIfpdcHu37GNrLuXTa0+3HdsHRq+QEvVSEm9FoG1nogbXi89IniQDm9SobMZVboZ+hmbuiHAmfPVUZeKQcmD67nlDgCEfcuzm/rOZGXmgcnBA9GfL//r1Frq0JCsnmY1UFQ6WRo2QOqKtHi1TybC0Jx+IHTlHTPftN5fliDjCb5MSjebuyhU8C5aSw19nReTsLFvCsm26kW5EVaHjvdqcjOjapdd5/Q1FEsssT8VVnWuLxP3Uue56Cz/S9Dwg1mjdcEk2QTXSwr7H8ke6crW+1b4XSNncibDvSdJdISdgVwtGYZvAg6Az9E3q+F+N94729ABs831BixMl7DIcOsn3FxAlu44BK+RShMi6/TLG9Lxw4upPSjs2J5rFgVV+KVKaYg3axbq5TBYPM/z2Mo8iXR+4JlL7KHg/NM55kQdLDI8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3Mle+3KsFlWmAO2Gw1lsaAMd8obVcJkbc27U4kxv5FDE12wD6EruoXwBIbd1VPOSQyAA5FiHhCG/lycw+0kCcWDpe2zgDfNCsyFoS3gz/h9NHI12RLjkwCW7qINQ+SInxZhnjzdJcWFSXmaMbJlkA3hymXPlhedZvfJeNfKMAzlVtrPUS9MddnmelvwpdYa7OOuLnHfjY7qgpntqX+obtPRiMRAPOt7V9AU2L3Bp/Z5IVH8EA1Txc0wZkIfTg8aVHv1ns9iCq6H6Kh1HadAbQHW6b7UnfHibfzqVaLeyECmx3DQZnqfMkgrHLWQsESB8+Hx/cKJHnobWeFAKHIYzhdKcFTL8XkDqpEXetUzE3KGvc3DphLhKbCJ2SqCY2cSXpSWWdy/fSRu/i4Sppd10PFa/q85nUEMHmIPw+4YXaclnw4+GUv+aDe9BC4AXPPeYOeJaQlD2kuSEnzjHvjWgd7GkNjnJp7kcJTYy+91afJOTeboIx786xoUBxnIeNBsFQq98NQSABrveTa4CS64qaDF9B3Ec8wJthJxRijy+jiUvmtv0d4kyTRtxHFPxmgx0I754Xc1UzTCVULxS87tnXxxjVJ+IOqSM3FQSlir1o++0ZB9sWD0yLa7+N2CXXoB9yagzTKf3X3Di1qqh+PjoFnAnjETd6adVrihSGlTK4Z5GdXwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYVpZCKPFGJVtnxTbTXV8SxGH1izSOCL2kYWsIqI8uHd+3XsG/fgERDHum+5GG1tNa4VRCHL0QO2d/9R7J7G++XNY4OrMvNB+uS2a6oXrcZW8rggeKks65d7AQkRUni7QSM/82pnoWb0b/EX2loDUHgQ5EEo56El2eF8H2WjDxUAgScQYztwnruIeBrXc9TwN83R088QMZJBiJ3mga4+5+jZszk5h51AT4oxw5VMvzweNbGR6BJGNRivOcHlFEeGWmp42QU8SxvFvV1D/Vrp26s57MoskGjYHOP3DaB7BSvS57mCkZFtZCTLrmBvx9T3bjP4qG1+2Vnh9RdJywdLM7RY9Duf357Io0NKm4n6MGk8YSAjCuqLPlHDNzMmSSIsoRZ1Ol7zlgrh50yoS1LF48Q3/P7VKkK7iwWEwJDtfSojZmae3AKDGWug9ua7h36miRI9euyxcNFfmN/DmqT5F5410qExmh9/tlh6o27pnV61Av54xKFbKWInlwqMug1dVvGwjCKMqGUPfAd53435yVBEZk34oWpissfQpATys/sQ/HXOM7m+lTd7mBSTIWVYZZ2NJcKlxVgD7QDSQz0j+WbxJ5Kwn1D+Vm0wE1nYOY68PK5BABYAGepKbbxOD0NhBbKOP208OA11Ms98ZZwhwMQbNA6V3duXBynUW7HwamDmQnj7YCABYMA4nGSLUry+D6kcy5RjO1TbRylXk4oEv6D/HA7FD9kqiK5TJ/SuT01jGHKyRzwqIHXBSxyv4CDcceXyIvlzzvDKFz2gUG0VOUIunU8AYZcy0AyikxAeWAF4ADxFBo6sujz1j2HUjA4xrb832+lfmtGbrkHGZK3VHcyVzCsm6g0TtBo8cQwtD8SVRh7Uh3BcKRX9jNuiNuzUlCpyYcwTueT3BcRlzyLwplZAoyzh6T4BhaD/iykgpqs4C5vg5lyReiJrX4bNrLEzzTotPQ0/j2312BkKEpbqwg12Xzu7iJFIPwoaqjwAaXxWUG65CwywB2AlfZxtLuNxGEguVzDCO2usNl7X4wp/NhIHOw6K62bvvRyUq88fky1st9aqtsOQamQk++AjOZYGO+wmq9ZFnPj7KWKMqKnMZG9BSfiDqkjNxUEpYq9aPvtGQfbFg9Mi2u/jdgl16AfcmoPfuZ01GkYQBstg/vfPIw2nxlyK/lS6Kd9mnZ14xxGH0sFLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmFHZtEiy0aFFisQUUIND2azScg98CVleQpZW5t8qGr5tme6yTSkMG7Lj8blgwDQg+o9CArIgGo8B75zjxNQ6EKQLDystlw0IbaC9DF2ApdvXsraXJEm/EVsY/sU72mvzdGG+rwLMpDX0aW7oNaZug2BCkLAzyvhu5K9KD1ATb/L+WKgu9aBpuaPv/W23M99JilSekykRYubRQtQQ+jCflNOmjCOpLAMRaUV8KY2rfLYPIVg3td9fAARYFmILlnELN8JVEzogxLGMiNHPqZ2gnzHeZSTENivghbVvCmPBC3tL0IraFZAX51iXgwlCKsGRkCyabvnGa9C+vIpgCf8M9oJVdivvEtvX3YQ/0LgX9b8nAYG0u/uDlfrC8aCEymS0DprS9GWdArN+misVrC2J2JG5ZBjvOkZ/nPqE2oHMhRgErmkxU/EJByN9wZ4PsZnI7fDP4qP6CthFXaM4t+LRSXgVp8pSnkIWfRdm3dNkviQfO0HIk2Km+OmnZszQNNCP411HfXQjeX+p/1/F5LBIgqslD+hDpMfKgxO1I7oQoHz53kk6ZEt729EjqSFE1RuN/jXRcPOpTluAo7zhaeYvX4/LNWkj5tj1ML8+In0ygxDd0QyoQp/PgS7zcK/4q86W2NNVbQYaT4buCKGDTLKOvUCFmXbYwfsw9HZ5xsYvEU6REr/RuDlPp5eTDZSKccAmX02I9iEMXJ6AI55T781xuE/nYQdgokxzM7onhkHrzu/3Liot62NLnWBMYYe0UxPXIR1DRbxGOAg75XWkYOIjNfzOawW1wbumYHKmf/fU1uJX2yTguo6yi7zNkFjKysRgovQ4jz6rNvsKRp1RAM3+T2sJLii/x5RPjcsI7m56/xNT8tF1wD49rC2ch5PSOBrgkD4gU8OJLS/t2/9Gg8X5ET05iPejLKuBkJyPEA/dc8Ksz6oCv6fCfYZFjznRH8EdAoDvuYDlUpMijNiL0dSC2xwatosZfz6ohMIO7oygU2D79IoeMyFOLwh8dXRGq5IWZd6bgNUDMQLAPQhTkMzAcPUb1s6CYtAqZo9Zw+q1VirBaPcYNmv660BufNc1DOwu0eDzUCCSG0n5727ToArfzj38iQCNJij5PiG+WW2YiLvlfSuQlLYbutDJu2cW45mam7BVtyHxgDU76XGftyHn8TcI3M38nyZStpbaiGGe3VhscsXNqIwmvPlJRBsbu7EGX8FADE0iU+LT+tbqyPo+IXp76EBimEnrG5jo9nGrUxj17B0mMN861i6E+LRVWijy8/Gvwg6BtF3IG1b9AyHPI9/bkja28J8KsH+KySAvttVYwUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR501Kz/Rzfn9Zc1jn1kawpSFFz5PtZ436L/J1lOoW0HUGAZu2kpmzA07DE2lmWdHL/2JteareXN1sK9b2GMwDSyO8tVerGI251aE2vPqdw48THVl8zCPIlc+3E75M1Z5Z0o2FsfatLCADHNsWxb5tNyxHlyyQcGdDypaFWIpKDYmS4/9PLLEXHMfafP78dngcX91fLDCbDVBAAnzh5T1tIPN0+xoe1/oEQNE6jTqWD9V0nL1SaQyeuW8Wrz62RcZdQoRv295o+Npz3pei25KB2fpXLRXX2zZqugRzqaPDd5/EVL1G8rXDa1NoYtyDJvM0onjGC3AmHoXX3uJwhUCdigmTy8rL/x5NErlcBfc6v76/Mg8yGk1BfMJEJnq7COmFx5kIS1TYMUSs4DCqA/nKGTZrE5cTMU1OIE9m9ZLU5v3T1pFea7sNqpF/ZI3OduDAo62CHIYqQhQCiNrictaWug2dM/8GKfLWPCUN/lODHkTEe9KH42wOnwNTYpgCGmflrOjsfyQEoLShOMaNj+QSYXPS7Ncib1D2vO3f+U/+N2XYyo+fIMe1ZkH+tz462r63KiwyGTxNLbB0vS3/LuUh9UPsRdGu1knHowmVvnK99Xzp863dI5bCZ8HMvhXiy9NbpifxHZunI0+CF3pTx/AQxdG4dA8w0C5WYieSCNMzDs05uMGt4BNMh38Q8FW6kBCeLu3zNYnLZoyo6hnkbpM5/7kbUHdbImiTtnhAt6E1CaUEgPjb/pzrBMfPca6B8icFIBSo4GmDMh2FK49gzgHTn9NB6W/iOTlmA/d3/t/DHUqO7SlKOi2Crl0wrN52VAggMDAhvrbzV1lgH8hIsVGC4pf97l1x5YPKMClKFXCmoPLhZcsIkw1QpMJRAS7YXtMTdzUbqqnIafLWG9e9qB7Sgcg9JlFZVD0g90q2qjNx9Qrz9kskrp+yzhlomROTTGbdHeuBQagmScAnpEvzwrZgSYpRlV6Wb2H1RsmnOWCT5vMqc8M5dHEoh9Nn8wjOenf3clx6Q0lvArwVHkaSftHjheuSxuHvIAoa9rXcHVMQQ8NXpfEdYEc3PZ4WbscGT/HX+HNi8Oohdh13GVLVUrhaVrH3SCfCm6DtUynAdofQp9nq+OTIrvGULhWzxkQForpopQdUU1a/jhnLp+SITI6tEvPD4el+clZ6nd3UdxfKqMPWpUx+4FX0Po+wmq1gCogG+6YZYm1AKgPi8PC6tv1v/4gAUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR5052dMu761ZiojBKFJyQ9TyvAhB25s/3VcLVYyH1VomYoGTuyS7yfhgCJ5ti4d46JkZBebl3ecbM4z1oCq6338mzO+IOVZtpYNhcrvSak7cTX8WaPelQJvVSe9Rlgx70Ct6EK4Y3AMfX/rQ7kCNLGaBNTOwQDcZOEdd06QYoAStTpyplnCAYzILfd6Foh3ItR4BVVXyQlpMaNcUVpGXCGwyaf1/8gDPgYm0phHjgIGCY/lFca88HwgiPmSU1/M93SZmejKJdvN1Vf1pPKG8IopmT1GLBXhxNgqseO/QMP+amYqxVfEYCgf8wgI3nGiJfw95Ct9Y2qvK6WK/xOjXgr0X5jINkJIozkLMgoUK5r+RmSZxsQxco6kRKEhXKvGtn6cvs9UGKmcxdX3d+kFyNh/TfgZmQl6YHY10xrTnYo5B1Me2zwy2vQwmBregD/h/zy9w+Dpjt6YiUQbm6a6oF8t6dmtbz1IKTiOElL86fC0ogl4PkDu5lHW8nDTje4aLQMzavKGvphlwrG9N0V/MzvQ8aapxWaIwb6VOkaHsRiS8Eteclg0LXpo9iywGadpUI2YrZVdLqMVnoecxHYebqb5fqNllk8MNj4W5LOGqK4FPmXQ9g29Q6r8ookUhue/+a8F8bIblNW2DnGsGtCES+TJPlIyW9xk+TzRnunIMMgpYeNa7Mo3IM0QuA/cyrEirYCruHgIDv+upXnmtP3uHX4LFWwKy1VzSuPdteD98ymlh42PY3TGTDfNKhninXVH5Lcmx8NPagW+H9y/YA0ZRkXPIw9as6jT6o4cAFkVBMYropAVegQdOgZdCDsULQgGo8V9ymSCcS/OWFXdN0p0L5NNtq5nhVl6A9wFasvKjxnH7KECLicv2pGDynTLWrc+f9Tru4w8l2aQWr/a5CWXg1Jw377DQuhMz/fvsvusvqkqpOSB9W2YGQ/eeWHjBm4ZXIlghj9UK00LtFXm0t0wsimgxDVHoAxGGwYaqKRRXnMabFBffJ7kUzAY/f6t3jGxnA+S1dy7JyEu7j3QBTH0ktd5taizGwSjx0oZejMo4+kezYlSPH0qma3AHpRAuuGWNI3bSprb60Lwify8NrsDE12EuCz8SBWOjarNaJjSbfJoC+DH1/LDne7gdyFx/PfirPJ8+7Os9e3oH3ZCGgRxISt5DWfZsxJM2AZDF0PqCq6efjn59r4/0HLdsli3IIo+Y724O5OIwInkAGGt383yUw0UYxOMlQYH42KasrOKJYm7fCQI/kFvJYBDwOckjr6LXnkt1V14tRSKcTmnBxUIjzWLtC1HrFZ4vcZVFi8q6REHww99ny2THRW3wGXLqA++4ZNUUypVKr0LKypUh2edCJFcjFB4SrgriuJqAUBvy+/4m7/C8k6L2b5YiwY5Rv06Ki9ALNOXg2eyLPG3Rm97+TzV3FRQaOL3ZrkvPVJiAGvA3Bg4PmtRICeW2eQJgL3BUmm5835YBF/AbITkFkzGaIVKTWkV5ruw2qkX9kjc524MCjrYIchipCFAKI2uJy1pa6DZxnVKMy/OzH2PqkdyEuur33vmGNizn6EaLv+PDfeNCM7j0/AXj//B/SX6ZuZGBWpcmeg97c8EkPqlN2qN8sSgBi5Z0RIpc/kx4gGGg5L0+dPVRamMhCwU4Ed5uPGAP9cbGGPAZ+Vi0OGZBTHTfQaZgu0Xg3Bc6rf8JfmvLZfD7qQFBmSYcOLqYHJ+HuXTAmah3TZf5LpTy3LZnBYPF1JsN8dSTfajeRJjnXFN6HJl/B2ioBWfPouJcV04ay0oXbIW1Bl0gGOHoxdgbz0zKJftL+1lKU6rpRRAPkwzb1Uojphl0lFd5NUpUtW1jKWaRN6zvo7Xe1dJQLJp4QnTHHKIP1l1RZmbYiZjPrmusu6ODl03zWyaSsop1UvzlV1VQ2HWb02XEsMOrurTfLF3b4Cqgs3/He8/Oz1oZpdbrGiqwLYFkfImnl0Ttl2rKQaVxJNYfc+LIzUYZZ+a5FOwzp6vKzxp2xiGuhLUv+FDEAMRGoq0r0x7Yz3g+6/FHogvLKPkyfX/oQrVspqxt8u98oe00LcVcl2jFPh4++AEQNzhKeByx1ZPR0mu7S5V0mvorussUfyY9+H9bnji8anBvMwwkuBLryWTKoSpkCNJO8KEXbRs4P2EI2tETPP4nhHebPj33Yrk/hS5f2LuFtBdhmCN06Zswh3t1P8oiyZnXR8g7jYlAIFWqE/KMSHypEtrR6UUVLvoFSD2/LAC5bhr115Q1crkPPel9LUx1gX4Juqd7kZyDCQ5qxhTwwdwsTzL7plO8FLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmFQ4YbDw3F7jvjURF2QbtD++S0MGsA/i4GY4SNkSw55WdLk63szEVFqyUL97xoLK+NeQQj9I1gTtDsrgOujkSqEiVxX2a5YH+FoY0csNLn0so1GH49Oo/HKYIRtBb4U6GFTt8xFKDrxKXSQa0nYr6943n+H2c8MY1KeS8bMHncBPH+3yyj5tVl8GaTuELaX+d63rqQ9JQ7qh81vjhRqjTUN66M4L7D9F5xPTnThjRzQL08iSVIe7Kw/RzNYxCa7uVKCqDOF/dnNrpShLVWA6zsUsiEDhuNZFAlqMjcwcQB88ODVCBKKiozyypPpniglPbC2zr48wuReC+00tP69cQ4QTZlOuJnIUzctb4qufgTnJoNRs7IioDjjqOAZHiQYH5yX7LHI9IWke3YKGw+hmZnUaPgDI/MRi/J5WsKhsNMNXAJxVESkZ9eHFY1g/0kITojuiesU8krcnm18pNSY6CHRIzq4oO9a2Y97oL1ldhYa2kYT/AyG5aq8dH05G3t/PZTYIf43f/rrsscFTxplRm07gWOY7/rPqiPczrAQinQVlRenJzGCMT64Nu+mnLh05E029FNywtL8JYlLvb0VO1yNuJIVa1OdCz1Cld68Lni0cN63CaPZTgwM9P9eA4vpYazQ8hulO9Pj4ipBQ0LsB2cDmNxgWVPAHrpoYAvyoVj1DCl+mrz+Na3hY6q4sjIuApiWVH6FyR2/omPSkF7ikQqfm16uX6M8XUN8yIzoYLCTo4Oq1Tm8OGl1QvFbGLkGQd7liluskbrp8Y3bc3dEZ1ebd5CItgJP9NCLndXpfizHldwq71jSjt10Lelh9NoLrr0rvDyEVsBnsibH9EzFstY7tm/UECc3s8ycqL6Jgce7LDHCtuON3Lcj7hEXoaMVWAT8sd0vSK1mv6+9UlJiri/dyNXXmbD3WHnkEdHQ+InyPg8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3MlbbGowUADre0AUQj8qfAj+UywBAF6zveCAEu361KDqBU5ZPJShJePqTniUzVR94RoaAwTTMKobDf3r+9VXM6tftSpyE6kbaO0xTmtEolrhUM2dzlcnF7c4pCGedBxrRxtN7u/Jqkp/gb/BprHKfBgEld3NtDzOw4mI1IjWBFjUoObivLEhddacLUoSlq2DH3QZvIVsUf97T9j15mLPbQa2R09TdUynFUsPgqjpcn6c88sjoL46i6UZlbIdwFITsPS83vxCIJQyRmOxPTf+AX0tyFG5UCDitsTVX0EIVv0mQuAvm6mzzc2xZWpgAa0ke1dQuJJ8I6+xyr+UuqD8AEHv0EQZP84MJmQA3b/Ihriueynq6YJCVHMcIJFO43l2NJFWmOIhnNuybNXzRPPDS9hyhK5E2M+5IQBlxusVP+73evzycrXPoFgGNovp/nZxqz9nNI/Pa1XKS/vJluKHCYiYZO3zEUoOvEpdJBrSdivr3jef4fZzwxjUp5LxswedwE8RvYhuZ3MEE2vrQDe8RXSDlw66br+rtOnfaSbH0AHYm6yNmLOdl2bRqJyTSD50zER3BftVel3GxYksQPjwVycH+w1BDufe7H7e+0RZk7S9HVsIYwW0f9OUDGy9KlmtTNaqV12hP/Mc1czxr7pFmgIfvLKiaN+8GgWwrQ/Y32A5JGtaqADOHl9R3N6NLyH7sHvqPQSBtSNpeP5+urLWmYWQw3D5+oHzOc39kbhNbezMPxV/DmFNZCItok/N+aR3Sty9XrEsbzARebLLwkoRr8DxSY909QNDsBxtu+ZvRgVrLOTlQQhX5TFIcT8Ca8Wcnsx2jp0J8YFkirzPrGS80IgjtRBmXFBHvMY1EKRNwjXRdUR+O7K1AkZHpIdUEJxmZAXYJVL8F2LL5M1EVoQ9Yk0yOKsFhhSH0sj0a1qwmh99LpLpIedq9aeMwOv7XIZLaO/dMeACkus4dvHSIMcrMFLIJTGhUwDEmv49OPFGEKgK53biwwh0Q+lxCCEX6+v9nevzNaScWLyh16lTJAGuOP9qkvwamEiA932VhJc2dwCEwgmpbvVpVuGi3g31yGWQHgw014Dt3AnWyxkI7ALOb6r0AToG+YYenREDu63Dct43ltfgPdovANEA9LYxBCD3Z300T/COokCwT6HiTJNS8EjpRKH7a6bc6QcrpUlPcfl6/QTt8xFKDrxKXSQa0nYr6943n+H2c8MY1KeS8bMHncBPGABosdVDQoqzd5XZ+xvtYyxgwGg7KuqiOMrovxxnUkqOnhXCy0CcGuwI/+bLsvC1XpgyYR5MTjCq95kMojutE3WrWTLTztLNjniyoToofW8oCOVbsrRLmf9j95NFdpK0AUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR50z6D9nHQVF9CNIsc0B6YLozyZY706hgsOSAdPBBsvVhh0jPco7BrDkd72BT7Th3wfEWCndJqyeBMYlBS8cF4rYWeQMhTONNFq+NZzQkpHZRrtdgX+376h79MPwIlf8iZx07fMRSg68Sl0kGtJ2K+veN5/h9nPDGNSnkvGzB53ATxGJzqkRPJs1x3yCM1pF/CiRLUzZVv/PX1msMYDRvCj3oIwPFtlu6pJBFdoT7qTUzxq/up/CNgxHr+8qOVuEvgE/oMdoKSZuI9qDS9zF2FRHbE7/YypmlJrPMaYZmG4EnWAb6Tv9mrZTTFmygxkYOwz24lb7jERpb/gszwJZ6FbJYE0jnH7OmOwHk+2XsdexH7N5W9giAEfyl9pKHOqOIxW/zsbPMR5M+n+SDbG7c6le/a9tyswztqgAfYQvauTonsmmKLNOGV64L2D2TLtSQusLJwHfRl8tm4O0qBxfH5dWSkV5ruw2qkX9kjc524MCjrYIchipCFAKI2uJy1pa6DZ40T7oI70k+ZygI5wNgIsyR1U+oyD6XyRgm7aD7PjM207aGsOF807KBEZGjN3QhCWSHKHn58bqQ1RzJQznlTPutPRnSwP3j9j2BuwCNcjvgjHuazifauC4kDwi4/OzSihUWUbajPSwpIS3K8GfO/u69DvuN3W3SqAyAsjWfM+uE0S+WMPELEpY0b+SpLs3ZqT6ZCdhCMRHBbmopNEuli5aiYZ7Pz8QjzBA+4wxiOkh8WoS0ovVnBgm+ThPkIaTvsHKghkrsgs6aI0qosuG4Nr9wxA15UQqFZ3v4FUkjvGZEI7Rk+H0EsdoUAh9vaDzzz559XbQ1gdtreuqVuCAkIt2x5qXe1XJCa/zW1/nIC4V0jmJ1wWRyJ4gngEJNDGlD3NgmBhBiK0EB2Anxre8KNFbUw9jENOneWAhO/2kvS2i64IrOURUeeFhBIynHHKtzG8e3HbglvOkTKi+oT4lU3jfQrb17t8Gnvqegxtnj/6lVKKHY6WbxHL3OXXb+XoIuvMECN9o3PjoRRikti5wHHm9Q64DyWy5pzy3MbHD4XrgsDhnIANcgXSdfmqhwyvO7crhvZLJ5RJGVRhlL3+9si28dRU4Akte7iLsTufULI0C9W5iETiHi06bT1HUEObYkzJeJIVa1OdCz1Cld68Lni0cN63CaPZTgwM9P9eA4vpYaz7W5OU2BwRr0z0leZgCdCX9ye/Y9Pl7noIbIL1kNCEy5K5xtskAvXvMJE9sIG2pwuuN3qP0o2Q6gBFa8SRQkCXgPU0JZ8zVdqVq2JM0iQitHSNnAiotxFelK8VN0bB6n7PEUGjqy6PPWPYdSMDjGtvzfb6V+a0ZuuQcZkrdUdzJVdYnoAp8pUvy5C/3HhNATLy37KTwEr+nJ9AkiO5zMWjIbnKARorMvcp8hpR6coKSbCT+mgw0niHPH9BDeiDHgMOx1JFB9RIKkJQ7rOHrrnRYUl1GdhGWn/0cJ0PoAxk0D/L4KJvBWmiN0JX8hWFd1sClor8yPbY10XlzvhY40okQCtxfrP7U767arVaxFHkM1pkLz61Laz0QPTh2YqgMrXiu+q0HFtuq4JDKNBeORScbUqaY9OSBPDa/OQ5OgAt1UGknnGxJwEBGpoM4Cvkh2gcADZR8WGU3TawAUquXUyVjgy3OLr5IS6SLhKnsDMwWGyjOLmkyD7uuTXbu88ztUTMDovS+EtUwkR7U99nAaJhLlNl8DojVTuhXw9OrSfmcARU8CLsfSdCRMZZ5TXn17I93e3c2y79ibOOK/m0y4VswAFJLqjGw88VtFfqj3bcMkzm5xycgDRBYSKsHJwPip28JGXKAO8oppSGOWvfxAP+2AIf3ImrJrrAFLCaiFRq7o+TL5FHKqs0L8dpt6vqkhB6UTp6N4kTAVteLISNyPoIyG22ZV/yLw3BQFoDt6kvEre0GLBqS6hY4qJkUNWMYuCfjct8ojWOQUKT1VE46KN4WFwYKCH1buFmI0EvxPpDMwfDT2oFvh/cv2ANGUZFzyMPWrOo0+qOHABZFQTGK6KQOvZNTbP02NGbKDzicChH83R5oyctJRqFegZvko3yNI3B/oKqD/nqnwTm9Z+VTCNAhkM3UjFQ1Bz4qDcBoHHPmIKbieW/Pq/9uqPQJ8O10CYCAKkoWuKg8qOYvf+iDK/z39AVeAkKGC5yRRsbMzb6lG5Lad2v17Fx26zBe0Owa8VLpRlKFvW5HgHnw9QpsQB/dvdOp0mEaPhspmx//1JBHTfpmfxjjt/53HAzaORyOyXg/99sxGQawZmDWRuotPFCw5S4gu/qBR6Q35FNgpJxFvYSgmpnwZS7oZrTiCa/NLzliluskbrp8Y3bc3dEZ1ebd5CItgJP9NCLndXpfizHlf2WmqIfaKknQtnKK1HQMElVHgL7pWGlhsvecF/3mTXumqF7OVSGVlzAi2411oEc+YHyWdHQzPj+HviO0j6UypZDSMn74Ri3kmWYIB2Bfo/GT0PB2yDeNkJ8NrCYxHNLj6DVCBKKiozyypPpniglPbC2zr48wuReC+00tP69cQ4QXEeGYGR+TTMGbpGhgHAlHQfiAGTszGTtCcNvjQGQ0ROiGwn4PaEf3uE8Bh+FhWFl6pbEGtQJDdTstRNpdlsfSKnLcLSt6S75PRPiySj0J/kYJvoaajrNNkOqqqzVShNk4NUIEoqKjPLKk+meKCU9sLbOvjzC5F4L7TS0/r1xDhBNTG8Tczk//BrQQaJ1Kf/JNqYWR+PXgZ3fA/n4etfCeC1xf5KwakLm/3ygvKJNZ08pYP0XUEAjaZ3/bQN7UEvGgk5q94fZaoJ458tk7nd+mLnv18CXoI5NI1umpdfzf6g4khVrU50LPUKV3rwueLRw3rcJo9lODAz0/14Di+lhrOV8sEdBbJhOZYzho4wxWzp9DZAY4YYKK9YHMLN+27Ey5H8d/rC9kK+z/ICcc1+3TmkGjc8JwJP1Ph1XO4m1XtM5OQ/EseXvV0VM33ig4dgXNmpFCVt0wnJT5nxuxLVWhIUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR50yyVoCSEh2NKnPRLlriosGYpRn1AuEEb9x1ScPRVf11zjYQdDoArsB3OQfi68dFRzXTQspJ2LE8nQveLfoOtrogdS5ECv6Ms+EVdzFt5/dt+zVxDEf7dKGy+Pjxa95osGMFLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmFm37p7BeKu+/eIK0B+X+zaMRFjzIfeTp7AbP7tdxY0WGQbneG6qp/l6qcE6wgZGuxyz+kZUIad3RGr05JjaxgSz3uDqOo4kSGfzjzE5+qqL751Bq+D5raQh+yRMmOzLuKaz+M2oQgXd1jQKmYa/ECWZ2zdqonotn48tnEjRwGf3wljnuaB8VCq3gn3jKLVrg9okXeyFc6isf3vMLYwgM7FAb2gMoJbjScKfxDJhLljLlC89dDEtuWedvyAtG9VZw4XJdcrup8PTLQkFVJuPo3yPGFNvoMiGFx3KRtp02mwCI8qoT0XJny4KbYXqxPfdUabldWwwSGAvLcgGr7t4TIp50pnoXjf5MpwjrEGxi/fX/1ESv3GxTUdDWVbgMetIn4DV11x7CV+M3Gfz7XXVZjbrG5rqW74GxBunvVyMusrbpLXeMk2Xq65kH6O6fvL8NAF4NsvaqHU/Gx5yAKLdOOM/dmnUZkqOutgqFfYngikmFNo/fXlWPp69W9SSGIUn/pDrgBFs8kDPeHacDaJhIjKmU3/2EgjBwnF/C13VlrryMN7ePPVS8uIzUAoz/mxUzcwfMV0DeFUOjmNlvdGdoVvnpT5QobP01WD8YH2w0I1MUlwscOP94eR5u5hA4+OlnmKiiNY1B0PPpK44rkOvnFYlNG6BYB1H/+KJ8ClGKKkwpySHUrmPO/1plic6HxM2dwIacHIcb+SR/MYTxWb7ARl1YZmDIPmqy8Y0G6YHQ1qS0J9lqrCF0qVNh86pKXpLw0ZzUZLLkT+s+roEiXTnHne02evpvKHEXzH2qgUB7xyTytDjr0aUxY3Ozd62uluITjElxwGoLsm8K/quM5UxV5g8tQ5Oat2cQpwbIKKpy3EQyVDrnCPlmydP7uWBxXPgGzkpuKN0rZRk+NODp5yrINeFdUk4h0sLa69Nu7o+nxInP3Bw+/4w2fbRi1C0rkvMBmXI6PvL3fmr4/Ri5hnG/ZLOjvuXEQgNofM/bedAUH11C+ZP31b0ZQavuAjxzMLE8CMNTuD6gdY4VELkZDvWECKeRdZL4HMqYt9hqcTLW4u3hJd3DG6bOWDejhfs+wUhXbXvTZ6bGW9dbve11INBj/ZjqsOxl5JG+0paPmeel2iHkjoLlryJ0Y7+dRjlcfYyD7Hw09qBb4f3L9gDRlGRc8jD1qzqNPqjhwAWRUExiuikATQqanosNZZ2OKtzXAZjQRo9V1n9n3CexRXU4qJwbG8uqFhKswvf8EuZQLfC3iHIQJPV6EdxzTc//eaYgKl+ea8iwzVmpysr0KGyAYce91Iwp3oZgxIpTAeE1wgxAWM6s6Cn2v73H7mbq6kQwOXS+vEeyQ7OKpvZ0oI+0vhRBIe2r4stEWvm5AsMUUH4Uu2HRIGwlf2qi6yPCxmH/srSQ3L3GXbTeWkBNabqBdY4MQ/IwpshykKSp4hw26ziabPNOXkoUIUpbBBMfemEAyCXD8N2ZQUpRF5ER0Fs/yElxbaHAemHG99XRChcsPcTde9I4+Ae+A5k+4LaPmIRqVbliWliluskbrp8Y3bc3dEZ1ebd5CItgJP9NCLndXpfizHldYEGWxJkMmfBVO6BYIh2NGxFjRLpeatv/3sysTgdvH9vfD6040yKpl9LFRDH8XYJEohQuq8o90fuGMAFe5jfnoX2LrZJM3YDUfXES63JldKWoZCIEXHI8+Lyh+DXz/xbs8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3MlSB98+bZUc+2TzhTvsNXx6SHk791r4AosOhZSTOGDsisQDcTWzaVUxG/hg7X3+9yg2zP4/uOZoHps8AVjCu7BVY5SIyL3zjYfC33XCB7vuxEorrBDu1kbUdNB1O9Ov9dVdMRakIFLrgkoh4+6mnoceQrJBCAR4yWiCA2VsvSKv/R/rXnHjYNTkYiwhz5KG/Y0jLlLyOl0SGS5ePUhDPAH67dtlgtYGKttAeO0jp0BJJjjcCVsiAp4GsjRPPiEJBLTF1SNlTBAquREuw/6Wt5Rka/lxexhU3idaIfd3D9RCrWfSMznCBQfoBY+gYQMu2cYRSK5JrUT7NhN7LNF/0ZXnYScu7BC9Dv4iYOVnwAOop2jL0e/467ZrqDPZzRnO0Y1zQyB4ZRtqygDSWEePRG5VYnJrDDYQTBwL4ExqP6EuopxUz6/x1aI+UX8Lh7ggQklM+DLdKW4Roy9yhlDVokbeWag3pt2vET90VqfId6NgtTYmGYOodr0osdbiFI0RxUtEAtMjXqg34TK23jgGVMgGgiTGEpf3P8052ibAXxgFgvVTe28PqUN6el5EN5SDvWjbB1XOSWOk3/2YsXpzuj/CF0dMyeyNNNFROdYsU16UXktvbBX0AT3VEaSgsKJBCfwID89QnaGyZ7BXAq8JXvXSXV1n/5K1dZQV99IT6O31+rHLGJ4qF3tUyUXU6rOkOIaXJV4B3PMn4xrz2IREoynqM6qV14Go45phlMXd1K7E1MhWX0PPCNseZHtovCSncwDTEuzooCm4rJf04H0AllHcEAGeGHI2rcwmx40AUiJv1Ix+3Ke1b2j0AQzR2FffnLontPwSKCl4IGPk1VL1PoLB31kZlQagmP2CigF9ETK0U70eZ8cXUVR3f5ak4tCqQV8k5gxdPo/SIHRvonFw2OuyOQLigOjdi1a/4IbXAzKI7T5w3dWXAJiMT0YgxvIv153FzA41vmcO9cTwQmmeYyNu0nhgC5Sfd2Hp12LB8Rfh/MVSsqWdigKkCLXMgzkTZpCsLovUTWXJSnqU80PBOUN42higEvd+kCu9dume1NV8UBAYEDE5EHqPi0hFFIz0f+rpvch21McKheGI/Byr5oAqVO3zEUoOvEpdJBrSdivr3jef4fZzwxjUp5LxswedwE8QHC0o5jit0yXMzE3W+y8aF3L4ospWs1m6jWHuy9RuyI/osj99syOdkaGulLwsdYwl3gnomOwYXOxZ2GDtPZCyEmL3AyrUBTqjpNIWxYaGNOit4chYEt9rUOjYX9DVhkYr6Q8MgB63xaRDTR9WlGm61oKwBYrjdICig0CQ5ct6tG81y7t3qtcn0Yb36SXmdGhee0aiEdPgvQ9yJFl6W+DUTN4G38xl0aC5inof25i39PYoC6Avk45KOw0GvW+hXMongR1bUe0F+eYOkYhT4EAwWspAAWC6WxePltllueb9FPB/3RDOVafU/x6ryAFdwCV+zQOBsQS4nh/nDIF9LBZr17cAxqUJtFalv1407Cdg12WMa6yKpIIUhj9P8HcqzQnYOqhKaSFIG9PqpogMRX1aijoMkgxnAYh2/YcmFjs7KExwDvXDfpmGbUXzSerONBkS13VxBtqqJcAyxwDJFBHCXWAM5SfzrKlk8Kv2CG7EXcMdRzv152ouR7gY2uifuRoAG+k7/Zq2U0xZsoMZGDsM9uJW+4xEaW/4LM8CWehWyW2rgU3u7wD4UK8Q+IE0HGN0PazvPNhA+YqxUbj8wyzVkxRdzFDropsMFECrA/6gGe6SKMz04sPvTeCy30aAnNRnJc0hAdbwOKl6MAxztuXIZV9zzBiJiORdE5J6VmLzH4f0BV4CQoYLnJFGxszNvqUbktp3a/XsXHbrMF7Q7BrxVmBMJhgbvR4aK0Ovco63DPK55/KvVUuUOS++MCierVdKyYZC+BUKnsr8v+2AUyyBluzHW7LmfQDmgmoJxBUxqMEj8E/3K66hK5gsKwjEmKlAlLUksS+KKI+9Vne7LOG637hjhoCpOZZVpw50eBo1XiUxtse41LbjgQ19vPH4zSV5mNyxfOpdTFp87BePV0u1FadV0TVZAbJcJU6R1bM/mF39Az6BHe7XF3B57MHUx1oI7p2rbGzTzLX/bobhtd6DAoyiR5dvsEqGlu2XxVX8ClIps2ah5oEsw9K0hchyd77ZGvw/Houy4Ig5XwCSLigCY7Nyn6vQ8uGZBcuIZN5KtevRNTMv6V2shJ5YhDxNo6BbE5juIO6lqmJOrwtcuU5B154yGygmhIBIYJUkV+EvT6UfPvVE2PL6jPM5mMyikZzYNUIEoqKjPLKk+meKCU9sLbOvjzC5F4L7TS0/r1xDhBwMaugs3vVwU1H+agb8N16CApBgyNuE2MeoKfARz93W6FCzHie2P5AOmglSis/OgpKGXRhak4I9gSnoAsONRWwb6Ny4Acs0iJU8bxGutPAiok9pxNnQKFHZikdTYrkhALbivLEhddacLUoSlq2DH3QZvIVsUf97T9j15mLPbQa2RNiI3MUFges8JtfMWfMyPxmjJxxOBGG8kbQ2MrUKxnbhYS/vVRU9mjpkGSh29GLmTvGDStyoFg76OW2AgNfFXWjp3c5c4mJMgn6WRxD88fV+0+bP3B+0p3Zc0qnAlZzeF8ceV5aT4DV5N5QoE22fpytoPECxYQ/1Ld8DYoM6kAeif51yr77lqpYKz9hgTyrjgSPZae6Oqi01cR4Y1pVE0HCEwgBu3igk4TUfnOrYSAIiUBS64rb5E2iQoVLKsuteu+/Qvjoy+jx4QtZdgTVQ7ZwrmEbZDdxIHcMEWn95N9qb6HznKQCQMml8MEVJTY0W4G+f1oKoc4Tv3wk4mPPShIEtVfodbJMRtFP4UUV4YbcgLgMcXfboEJBDWfShkFsxi+WzFaa2oK1/g6vHe2cZ0DTohHG0/OkN0NChlW2QPcD0HAESApws95ycAJHkJK+5wP+iv10NqDs7K6sq2y4y6TqPRT2zpDV0gKzdD+k+2PFWWR0ktSVwMaEH9kzUBOLx4k2EHelza2z2X9clJVwD2VomW26UfU3YM6TWgBRKZX4uRcosfQbxE9fUJn/X2Q0OS8AuLpOf+UHFYnnkyEM7Z8edub7fvEhxzTU15v2HIBMYi4qpdmJL2Cr0n/xVa9x7F/QFXgJChguckUbGzM2+pRuS2ndr9excduswXtDsGvFWsr2jdJuqxvxurjx1nCi+HlwTjJJnHSyvXRMcyS/HH2MR5GYsyJ8CRmTyiHqJmo/jI1VlzJrxpPisIjfPhbk83T2200aigoL04JxPd1EvoB/mVJD7WgX8qVcHMFmlqzYNvFAXdLJgOUaPzAdYQK4QbDkSxAbmtCoYr+eHISoqWuX+iXhmker9JsCSAztnBZJDVcyl/Brbvrh3o1bE/+KN5yY7avdb8ASA5wHe5w0xEnQ4H+bIJU41hB8wpxEfnbAicv5zqQ57uJOAIXm6yBqKfGGBzgOFoQm1lZdmnfYePcPz/WWRaqZBsSpThJagwWyBeUOej/945fQJSdFs5SOiSiupfTU/50CDBJUWVHPqKWGkzOv9VkmCd03vQ7yyLXkiRu6vlrOvSO41nEFp66AUBbsg51yit4+MR0uzox2AjauF1KrZu7LG3c2/KnXX8c+9AfJJeB5XQcUwKWRPn9AelwAKSF3HiQh6N9sz4gVf9+xeZZg5kgJbBMz3SqdH5+yMFLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmFrcg7lEN/Niiv7yOkDvFOayPkxHb6LWocIZWmba0hk0FnxXaHCFwD6DIAxpUkmKIrOZPJsuBwv+j62VPGd6EImgI91bZ587YfoREhvJuOiP2QZFZweSC+d2YHgt02KW03T91wXNUKANg4+MQ9/0rQZYx6h9BaVO2/zuVDK8nRnC3orrW+/xCDBsPQcma3djQTv4n+38vrwcB9w9y3JLKlB0rVCy4JcN2Qy+2vqPqHsoNkaGw6JsvdZXM4qSmJOEjM3EubeQV2KBUs2c6Bt4dotEVNT7mgg9YHwqjPfgKLaRCwsGu8s3ma8ukNmfYE8HkNv5AIEBvlmatX3Sopu9tazoirHZXVk4ArGmTBd9kqcoXHB3+AtLqz1XzCWBUNNl8nPMkvrwzOqyeQDrngzXaVWsfXJKl+EK4W3iM0i2TcRiMbU2hgPmQXasVNaxHNsyE6xssZ9lSjpWeNbLJDSDYeyVturp3a02aby6tH/VfV9LtulVS7q/jlJSWF2544WNYhpTej61oW80p4dtJe9PL3TRBH1I6BJbAOvUbUVlUhHLM+FOFO3IR6p6WFSwB+cK15Hka0d7Kq7q32AXmuaaZnZKJPkosn/GNrlYv0l2Xm+uTFp5EoB4v0LDK8vjruQIwl0mx06V+7ZTg93hC/RSI0N1dKMl1mDT6wDFNv7j4zXfA42zl40sseWJzPHMh1sAYc1XtGW9YJPi5GO2T137LeSINEhAWF55H2q9fpb3nLEiV2wIroYttP6duvnD7SZQ9lQSBpF2MgNEx6D6lVCccE1p7qBgOuV+aAlZLaJYCJWtSkV5ruw2qkX9kjc524MCjrYIchipCFAKI2uJy1pa6DZ//HwMyLmkV8XkIQ+gGceWhUGNCEvDh/d5OS7Dc3CGP1y5KVFCREXYnXoc2NhYal5Oz8c0fhTM2L533jF1k43gF+0giDr4qGvhYDeDJV58Bmk7H/l1YmC5DPPwkFF6g5IINUIEoqKjPLKk+meKCU9sLbOvjzC5F4L7TS0/r1xDhBEmQ2pcQDMlJ3Qzs3rK2KHIXXODHgkwqxJ01wPQzlbLyrHOH22qZXxdtG/Ituei3HANi1kvSAySp3idtYIU25UVSiyyhqFUbx83O/tOGxzF5cab84riYrD2UC+74/K9+kSj8RK1bblK5ozBSOYAVG/+Pd80LOIII5tmrQ0OlNFSeIShjP6tja2VvzGNPB4S753qEia6lCr/Jed26wjBvmTNS0CqcZwRjq1RcSEWtE2dIGd22KUmb6n2kW0zvEbPRadu6BLrJx+l1asaQxtdVeiHyOmCDv2fRG7gPUSkVAN5H11x2GtTYs3962TKcQm/q9v5DLvzjt3/XFdOob/Cl03IbmTk9l/KpIo9HkLY6pqhRjyHin610mm5goNkXW9Uxrn56nYlgavhoYmMVK8r26cfinfwO/hXiidw4H9+TvNxbRJ+xZxPFkKjYJq9t9/nVmQLnLOodKptkM96YEE6VbfBy0KSyJ+zc6+DsAV6abTvD5MszN0Xq9cw9TeJ5Gz9mR8HfxpuENy8U73jFF/K9F353aTYZSByBMAMk8pMFMjPsbTKYN08f6TMASLwtRHaSyQj41uHOeH/EzQ68mJeJAs+6cuYxFr/19ugdj3AgGNgNUmJi0KywaTzL78Er2OddF3wpAD2icKcsSSsOU5y8PxwzJizB78XSqIhrFzCBqA60nMGHN5DTD80uuv6TN1EVoabDt5nNqgCySmeNwYfnMuMNMT5qBbP0oM3sACD/UwNCSAxYM/oMtFdOJ6RSWHcpDlrQ6Q5p87eG5nkzCbSQJAc3/c12aHc/9hWs94mStGEQ/+RM9CLJg+vrbL6lhlqnzKntgZyg0PKwehY8ixWSchAKW1W4i9GMUpWkN8cgNsKsvhQjnhxyEF3iw4uVpXsc0swTrKCHN8Mh84n8lsgIQnNG4CZMHNFZcBzlEuEHcK3/pYsPud4yI2J/IziTkWq/ZseqA31qNbkN6rk+tfs716YKQMXJ+Ar/3MjGn6Wh64QNCaAwTEyZf6mjJ3RmEGn1F19UGAk1LHxasM7w8IW8ZRr/dDjZST44JNU3zbW7c6U/BS8hjjsngBR8S/8NYSM+2O40B417izpl/oZP5TpJZheBIcseeiZ6a2R+aTQfMzwCjShxtKTKrWzkahpaqXqYni0DpzdpsJCtjSB9J6N7Yz1QurAZGfocsrXxil/Ag0N/NDpkyzak4bMGAUL9+N4CcpIXop1AwyUogfEDTaH2zZwGExliRCZL/DSa/4nPFF1ug0Rc1qMnyS8My6dXrlZEqde2pYnPraPpdqm5LlbhaMqhozjlBFSlUGBfMV1Xqz1JllnzFxu6nRgjntgsknPDk2+LBgxlHfX8WBLYQxSsObejA2sCEF5kj2tMIrL8CeKeu/VyroipWGGoOcU25/x+PFM3CeXD6arrDTGelsvjckwv0zCw8SA/S54S72XMkedNLnHWsv+UUXMS12iUToyVDRIYx46lfnOsnXSfsu0RU4L47KB6mxIpFBHwj+J3WZEFf6tE5QqvHlFB1tLauxek8Hyc/gKDL3FeNuILpbDtIwBdMGeHs9vNcMmognUsFWMy8mCje2YR9vSFSbaDWdXUDSAWNBver0tMMuvjD6+T1t41GIinDcigF44bkxSvPiNzzF44c88gAf3FbUFFdSEYDY03VA+YQ9Q/HWa/AVEopopjU0bY7zKltqovZUynKcHmslN8W5myIDyznX84aMjlxpj77hE7/K6T+GNV7T0oBZv8kD0vczaXPAXRhdvy9sIw1w7E3rD7aIaMA8QIoMonoS62ZnSs1UyiZFct/mWu9frniLLhQrkvicVWc1NMqZST9e38LEz20Ith5mLUWduVbnIIPl1K0XIToBxI8HipGbKRXmu7DaqRf2SNznbgwKOtghyGKkIUAoja4nLWlroNnhDLqPiuMyruxQijFKr+rtWJWE4LJsW43nqsjqr6wFI+8ToVA+kAxRq4gU6buBpvDwPqLQNrR+3z8u4TOBUJriLQkJhWctiPPkT9A8R3IUvmjvQsYULNdJrXX8EXPEQtiXYzy2TexVffHtDaINv2Z8HJMRjzu7ZtoK0kUiLyOupXwCHfTYFThtvN/9968oN/emocxPIi5xolUtrXSRUUaqCElrYKHWINqLQPta8CNlSoqUUcvuwBI1blx8b+lssNae687ZyAepeRgAyVLy9prBAslla0dcHzXJIRXAXlpT7+mMU7okXNFpVGVMLbQV6LTIedITW97JmZVf7OOcoUjFv3KxaBqfIJDSwtamwADMM9L6zQnnLS6g37sxksmlct+r2ymOzxIXe5vkaEQ99l8zWrdwqsOx3CUERyEGMBhkv/r5eUpc1o80wVro3WqHynoivMGArx1If63AzQbfNssjDLuJTk6gX5y9MZOApCFAoMXX1MGd3tQbyt9lKHT7OrTI8l2Z6cbqdPWXjUJcye8y2neJUHVDbaEqm7M4Yz6ClxnjftOjXbDupZA9tw8rh8IepfSlXlhde5YOZmw378fFUZONNfXFNIZJPZvjwvWeRj5PKwByeyBVMBp4jCNf9IMiOn4iMUhWV2n3z/D+690AsphXAvw/7YQiSst0ASy/5bMaBqo21aiSyh97KXBigRR2udjjNgAx0mr6WGc/APILj6SZEhtn5fXPIGdNlA5yAv5NSznuDxfPhwUSS9etMmJB3CQBnLGQSY56qMhfBU0RBQpgx3QjlbOk9QXGePgK1gedS5f9khbSaqb5hArRJDJ0i17ysYgL7iV0Vh4O4ScAKr9egbxzjMuoRV+S7ALds4mZsBi1l1xeS4D+KIMjcW+dmeVVjSU9YJF5FbEdxwcdETogQl+JVnc55rS47jfZ3kOjcC27soWaxIzrEynBuw3EnKBt3etfi97vqSUyDGEitS4D3ijOgo0r+wFbWSwC+1x66A0bDdnFQ082BsBbNfCOu3C7DmUXrVt3+84Jj1cIB6fqwYQ/dN4PqBOTJfMSwsk68zrq8+fp+tDAHBLaftljHQN+m5+gJUeah5+8qS2cw0mn1OmFtjxK0pF/MzX179xeEKvVUVoDm9EOVw7ep9BNBFrv8uZ7XAtrgtomlL1G/CKmuo+wYCIEGHqccypRHQWa8VQNakwz6CJQlpvKz41GFNnZHcWt7gEYGNysvOU9ainsw7KZ/s+v2sPszLvwRptUjPFLdMp5W4Us1jeUaEF/0GKsnxYXYAFXJUR/30wbLKr/OaQQHNSV/3/Y2ki4SrPXqVIK8LrvUZ+rIeMQY5G3aCccEgCxhkZ6ul+FsGgSGhiz3iFHk8iTWHB+D1ncvrunmWLsd2QqScQfrpzW2SZ7m6tz8w5j+KaZ1WWNzHPhOW8oTp0SsGCpaA6dmR2sr1ZaQUP1Xdb5jH3ALnXlaEz33qlfjK2E3hJ/Qwpg5h6pFhJ/bA0PNMZe4WMU8BwZ0+/6bF1YweLsr9277W3tzuBrAwIIDV/rcLmUN7MfJjTtRWFMcqvgpbmWv649sXRC29O3zEUoOvEpdJBrSdivr3jef4fZzwxjUp5LxswedwE8Wi0E8AiocH0OmQSRfmgrLcG7g7w8UMCIiCci4ZNt6g33RRjXgf8KLdvBftAyVznIM8tQ2nIQmRmXEGTVCBvK0wXPFtSNjEV/yNDFoSkFlXa52LYhpFcSC/Q75T40PD0yqaXPG01wQfp5rRNW/o4ee8lrKDUkBNMlOFb5aC8EnhW0h7kMoXcFmoQvn50Em8lWztxpyPNpVdJmgVB+EkuwOl9769aDQYygXue7z0A8l8sWVl78W2HlwHqrJACcddB1qbcew22J146KAiQKHoiGSy2YXT66/mHFS0dMJE2JFLKFsvdKoGe3WGE1Embx7y7n1P4ISfHrdiekU+sMjSEshnlOBfEr1F9qQa3XrvHxP1G6aSraurDjmLYKDo3q1YSiKGd8meugT5btuJRnBFhufJe3Vb5vLLKuSFerNCZv5oKwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYV0g0Yd17c1JX13j7rL06cu0hy+gXzDcutx1vLiLzuSpmDc1v2cxbMwVOvq5Fmi8abVR+vDotFQmAXn0qnt92Qdl5TSfi/kmWijPiOIh2agBciCiO2qxiMtMM1BbihKXsjPbOrlwBnCaWCspo31tBt2mTwvT4kKMZ/L3d4XhAUVMiM1/LWzhYaZydZnWGJMvNAwCVY4wtXC9N0Crx4PaTS1mQRkWkaZlTk4KmERy+/jcyFHLGzvPXLECP80u6MtM2aY++ePZxKHzZTpLc6d/TUZfxVD33FIkhZ6tNpQOmAIMqgecRAlXTbEeus3buBoFnuh5/coY08xAzaVIICxlA3RqW8qfQhReSbFcDEyCsVwQCsWQWGyW9DxxKgKssNf103mQwYzTAo9AeVehugV6u9QnsG2WsEqbYaWKs/G0u22LaRXmu7DaqRf2SNznbgwKOtghyGKkIUAoja4nLWlroNn2cHbsDsd8ayevdrF5cCStIq9E4gekXVILLhlUYscI07fiYxx47QlAAFx0vrJZj7v636VqxLjEz+btterwg0T/AWr6/u8VSt7zlazcmIiQradfEyw65bjwy5Vo+EdQ6LGwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYUhqJdpBvY7Xb06S2wsvo7YOFaBjzdeKjnaozIbaAolOs2tVAp/elGiZVxEdRU2UdE01MeBzRJuPVIo7mfyHEAjyoEpMd4g8NW+HN0azPpus/lsCFpidTdDdQoYe0+c+YO425nR/Ekx5rUAqLyp1z24qR6thL9F30h3Io/lcG9QdyNuEO/9GWJ+sWt9UZ/349TRCr7MMBgkQ/MWO/Ms3iSu+1jhonpd+MpkqSMCfbcakk7VvfGaHEBdt3DClFW33Q8tSY0o6kSiBLH41F6iC4QwCytgGQNBb9hQ601y0tlNi/BsuhKaqSrpn6e/wNA03DusITnxF7DSD5FGRZFuoUvqJchBp45UhAkSnMvSHnsWNhuFGwEQ8RakXXS6g+3Sva9lBrzPkk2uPRVCSX1KKazmPf5IHu/jowlnEfN3hSQ8UyI/6AbSEqCPDhJSKeex8GcnElZfn1QzGenD8gFET4N1Hw09qBb4f3L9gDRlGRc8jD1qzqNPqjhwAWRUExiuikB2VT5pLWdNfKAtqORyMT95iy3XgewMMt6y10cA63GnRCbbduKnO2hTUz3n3Rov9GuVHwMcIQkl3g/FyuN3/fkpPmAtScdb9AOWdOqs+6w/Z8l8FNb0oUKo+rr8d63OSQQ6tiN2DUI8znxikFkT2OkRIQOcXczjn+HeGh3+E32yyDxFBo6sujz1j2HUjA4xrb832+lfmtGbrkHGZK3VHcyVn1u+6IwdlG9zJw4mnuu2CRqcWPGNjp0fsj3P3gEHHw8kLGF14LMYGQdbphPubV9bK5UTvIKgun4wfD2VcQzGYRpKms6xEq0kKZMtAUVZPDXVthpsurO5ghdUJ+HViYZfHw09qBb4f3L9gDRlGRc8jD1qzqNPqjhwAWRUExiuikAa0ImaEXXdk1KbhlF3cyXAPb5vP7NcVJyi2H2OfCw7chsLcEQ4pWWBL+0j3DYTA6Sm8j5hLshMYXa/8iU0T4GWZlA7iMBLzwG7u5sclKibTAj/2yEPt/hqdjtEJMoV8Z12XIimrKlxiuEQa1QIyHsvhoQmDuAwVMLfMtir0cmNqcGU0T3TCtv907vDbccMRQSt/yFzJMxtP+Bef+SxhHnaCLu3/RHIQzLpFeWBkiYh5Ozwg4qdHleEExxsHwHDPnYnWGPNDVt3GZDaOgQ0s6Tw8mJUFZzB3pPS/bb45kx3eGbauRmFFnLgUdI1aEkhBrr4nKJGriFzq68ywMuLh3R1q1YeCQlg+9zn+2fk8h1F9rEKfkPZpEboTp8wueJi4CP92zbNss0uT1QLGsuzsWOlx+BIiWchoitwVssM+CSOmoNUIEoqKjPLKk+meKCU9sLbOvjzC5F4L7TS0/r1xDhBIsrSnEGpUONets65iKg8yxyN2rXVYsi+lcBr37NXtd5xwk1hnz+k+qhBeWvinxHWSBLluBLAguRuqYhng93ASzkfDzh1UzIaomxtwnUrGpJHOqPwkjR2W8A4lUYx8ILRpXZ3EEetxEXCm5Nef6Z8wz+3PrOYn7LjmmfggW9L9mvd3+Bbxku0KRnlLnskShGHLJNJcud11bblAorHOqe81n/QP99rqIf9GaOpUJclGUhPHHUvvLG4/fs68liO8TcMIesfU7GE9NKHm/+cNOObkEgE+E6hiRXthYVzRpTsm9s8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3MldHRUCHI3lsjHVkmLNWFEgnePFKdim5xwIRkO0KpwSu/WvX+lD3zZU8EiKkRO6xhISU6K5NJ0tOQnAARgn8/BuNMuWTYcwhHNabWg9LnRgW/fKWGs+uLLVERSV/s0nuPMYPYaArRE3zTuQCQi6aroyLGmiHC/wpWxJQpb/WcF/FbZVFKRPDCTPMgOwL9mm9wcyLZyJRXoHH3uNEvHukbup0koNzUVr8XRDwQq/4ltN2oGXWLlnoAFmyde7F8ivYKyFUOGM7FEmCBbqO8z7ep6fAJKrnwKw789Rzf2fQVbu3PCvyzJ5wv3BmEQQJpedtvTHe5yPGcJjFHjAC1RCkp4me3m0pXyh735h5YN7iFCWRMg4LC3hBNNYFplqnR1Kv2jdJoDoBWVe4lnU/PMETTxw2V9FyT4y/hlpL1Ri82G+5V+r07zLDk8A7aVlndcBR2ZZQ40BB1vJy0aJ9Jdq+s35sU20dT/kzLOYPdmJmZbSNBjHZZJD+Hj6SUieiXNl4uslRaLRWmzVbmkifS+ysj2om0JxNSXoUzOW/nfX4ne/OmLQpfW5IBGZSJ9o11d+08f+aJ9sAmrb2ZeGPg7cX4Xbyu4922/QGgsNaAmA6NkvIfPdVQwlQdoU806kwHAoBwt12fJwA0vtcm2lm8SeK0fvGxWg8kbJan9UAsOvpRJSjeMdBGM1pCBUsDXDQf6kvNQYcs/lX9B2AbtpeFtm6yj3mz6VUp8Vc6aqkg6cslp3XVtxlur5khwa269z5V1XY3vkdczVEyQV5uI7k/lyJCRUCuF8O95XsFZILlJDo0Z+GLVO1SlmxrKEEmfJtntr+TUiY3HpvXlPFdFjGh4BK7Br3VrFuU/OGPl9zASX3Xc3FHeP4F1elDm2XHyNCIOACbCO3vlTqytFQ1hNG5Qc4Zh26oSgW8qaADB7ktvm030oHrOXjjGouh/8P4unkqT1Yee0Fz75IoA4cQbU4j5DNX2zn7jSII04qcBL0S+aNr/lxI7uQsMoTtW6ngjAiBaVulvvl+xiUT4ANSMIl30fg6QW29VPJ9e94XS4iB/5y4c8l+vRDC6z0RBFR/PYNNH9+4by3ec44uMRvIBTWoHSqGWr6I6Vp9lKlP/zKmVfjfQlunlbQ3Wf1hY74+RqArc5FQ+pXjICTgn41/J8PCFDAtQupcdy/Uzhwm+XF6Z/TDkZwkFPCJ6cjqNNe+DWH6kpbyCI+LVdghr8Z6qo7C3FlavajuGWUk7Q5ZZQ69I+FdqsO0XH3EG2bEhQgIaQBp0nKb3drq/EEcXNMRM0f9RUANxc+3M2ffgMmPIaSqba6ov0EaOhGONEX0k5ryqaX0QUIK725le8aHo5woVYuosqpOEO3wqX0c96WVlwMBWMdErYOORBCtzYgtoHN5rzP6mUGMDHKX4Et6Wy/ERz6PFw3eN2m4BvjTG6J/gar3CtIzVyzImBq6UPcJHyRzJM/Iww5KNWnkgmYBqbMKThejrh7jK5BUiH8ARlY8l21IdHoxgBUwIW4DwcR9JV3InUFdQJLva+KCKOhpSZarBKRW32/bdc0hRA/KFWeyZ/rJl2ZZoHaekMSuXpN8SjIHBe8oUjgYnIrz+CzPRi6ErE4pJa2SFcEmdlodrUQTZy4iiOc7G6YBUjVCtCRYQ2Ws13/lKB+0gjxFBo6sujz1j2HUjA4xrb832+lfmtGbrkHGZK3VHcyVxgT6w6duUKC3vYyrvtIkvsm7vUXysao7wbQIRG6bbD923r/n3cucp58kxWAl1xEerX3RDHUeVFJSD0adoF+gxSQU1BauGeFLgGbNbl6LAYI/t2+Qu2r+xw1ZJ8HbGVFDvSNQZZUQcuINCafa0uBDVJtLs00M4TqeIrOW+blG5VYfDT2oFvh/cv2ANGUZFzyMPWrOo0+qOHABZFQTGK6KQO0g1Cq2cFb4GCjkV9SDLu8wCH5I92nMuThmClWPiIEqg55f+Clg/UB7K3d9+TeY8LzHRCtSAbtURcePr1YJJvwnrOa+YigPjJg2tP85bDC9bcMciSBez4aAO1LdVrfZilJvyefl1jEqKFSSFC/1S+cI6GIxUj7uWRy32JyTZybmwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYWBQWJBAmkzvCu1CqtgIyPJAfxamp0aFW3/tY2cL+CrrFjLu0xS6oX+v6QYOnzrseXkGGm+HDcr8VFGfOUpwiergMWtjNoz3AffPiOvRP59GaR7zHZ4DJhQ6rhALPL/fAXdcrjC0vCH/HO9Mh36lK6CeVzTmnYqSAM/TTPAM64EQWt758vkAcQSDA69Wm0YR0vjusHK+qSYYNg4/eA5Hr7Ha9RYDY7CBy+T81E2WmuhVEcAgpmky7inqsPfXLB4vIZEoVvZY79rOklKA1Qj5ZQFWDyAlDijPMjEB/MDqKCXwPHgaSCGs2WzbejuY8+mL3/Ygn5VMFhE9Joah2S8ZY3Au4gxaXlqoglPi3GVjMJZig5ued9AqT30yC3yabWuOkPNW7Cl+IG7AreWE/whM1c1G37HrZlkdX/D+Kc3wUDYsJSBIH9diD0OTcw2XjD7bPiTPvc5DvaSdiSe0DTAYHljzkQkSPmTcZOMXAl0UCrYLi86CVAgun59FivXz2W0dVo8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3MlegzI0NwtJRxekGq6OB2VvZ4+S6QtYZIcS5b6US1wXDuS7ORihawPyjIK0CwC3YRo6u88hBdgwiYZkUVsFbRoTPNSaJ85yQUdbD7XZKA2POMME3Vl6QiLm+bAW3CXwW4v4WzfxhAJIsrCg1LGZIoNXWWdmNG7makV4EwfX5uZab5wUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYUPOSCksRHKUG4MsnNWCrKszOoW5pzI+p/bF7OXISFSFH0A5HCMRl30dZ5ejmGukqzq3MucyAzBcAFft9wUNYQEoexclHfNTfDqG6qcAiQx0V5Quf/bY7QPiJMJItQhMuI7XfeMOc/iq0bGkvmDT7JBrOykbDV19bPcCO1rIcsON2C3e5UZ3P5qIj98QiyBMPtXLdsa0HhNM37fuPj6P4+FjaHqANfttWNZCIN7saFOcWK/ElatrRutRKj3OLI44Tw8Q8XTlLmkf0XyNmH1rlM5DOjRYgyNeSX7F9hCjSnW9voVFGorKPSl+tgm9w1hOQRFgYeXSxlidp3cK2DZ+Ofh+b6FgCfL6E61ZRbaeF8LMA/yEBzJjKi4Qht8tF68x/CxKKtNWpmlzBGE8FD5+rfLOJb/xvL+dJK/QSx/mBydz0p1OZ9qAIrGchIdQeUhyh3dNmNRTZ36xbEN2Y+ZosGqF5ZeuUexh5Gfe9HhUQ4cSDCdZQP4sUF+ShoLu9huDMSnlMrHTzSkY/g9EkzNyToyXxEQp5GrOExR00yOZXtrDjrLHKvCyLyKw/EWrabBs+Pe6YQ4kmAhiKPDluV4v0u93yG/BG75u9iMbgUUANfCaj+huMuk3tkQvrGUwGWL6oOSGTBJj7WEBLItFA001Ywe75JHdeoOqxRit2tOi99wiB8NPagW+H9y/YA0ZRkXPIw9as6jT6o4cAFkVBMYropARUrDsKaSyrh+xAb5YaU/2tN8c2sBZIJz4BNLmQGfopYu7NNvqAfC5wVNmiUuvvl2BskFIWSd4plvesepgEmR3mo6b9ubNh3JrYFpRZPbeq1NO3U+/wGfjHQc8fPL6Ra8wUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYUljtMxFseiQT9/0XW+mob37cnz80huoy4SqXly5UY4D558UfP1arABvjKgcp8YJcOKKup7H/UPYd2BeU62pOfZm3+kXsFuApwetrB+LnWjb1EFUdUoFqjI8u1GzomSRKzAzjmNp5EGwkA9pUYhY+mbHb5AwmX/BD+R/d0MBmBQdTG1pLu58ghacw0X4syDOsjSyyyQir/bORxdWGGrgZ8hCAd1LWifOxKdnjbz7xlD91anlRiO7iNLwA3zTJzqInAODoX3f3peq5a/zEWAOtm1LUzeLk9kAmntIrJSvExgC66w7w8SPrggWdQWPY2xnAVYXxRpimwuAkriXlsRBwGQbJhC/q1J04gAgclkSU+NQtvq7GPoV4ccS8AbIcRwx7I0tHg/rD+kwceRFfNtAHoFkZdQYnqoK6GNTcXlLi3AHdLMWvBb5sn7FPXZw2A4CyKWNFJi2Ey/VBQrU3jZlTANsqi2FlkRTXdBuoj1T9uIpUDvRRftaVN27RzElKckfZrlK5ku71EgpG27kC5Ag2ln0QeXYbm2URT6xJqkNfNYqSfP+Xq324YGnShzb+2Wgv8Tbpqb/q1CQqa8B0Jx3mSxjuC7seNbyGGz4U797gSJzA2LAv/Z72QL08DxfeY/SQi1sxUqmk/gC11rKMT3vHgfIdJZcpV7wJVP3vjwkupf/kyO40fLkDORLkfMX5etBnMkN3se7AeCQSrIoI0wv4bJ/+emgG0aNHfipUhAnUD3K/q64rvDZdR643DKXFUGq1+aF7A8IsTaueYv80wBKRF65V+u1gyAZhz9T9qnvNTnTDV50V4RHKqVoB4O6X4IXhhpFGmBGBFSITFDSTi+K8dLFM3CeXD6arrDTGelsvjckwv0zCw8SA/S54S72XMkedNxy84hnpTV/ikV/F5CxFg++4LUT8ds0BBBHkLQE37+Zr/W/MgQnSJ9HO5C8Xouu+R+C9tK2n5GLbhn7pHCfaOaVvpeL9DO8ewriDJqhbdGJslBsM/144l4nJxVmAY2CP60CclVSkp649wcyvfnCtGfszctSc3lVmV3LQugjWsXG5S4t0OhDRO9DAyrcYCvB5o37QSaNND2OqOkVgl0JK3Q1ycqDXeNWrgSxHcyHIZAqdkAEeX41aqwhhq6i/G3Atwv6q3BI5agdlw7b9MalYTH8o1cX2xZ64QIwIhXTXImCer8xaLIj4v8OfRDkUH8QklME5W3ChU1BUUQmT4xsbXfbwehs/Q42YbtO/e8zaknZ0crfIlenoziauZlJUWk//ZCw8BCz2FbSqxVjJ3FTAxWQBIktdty2DH8MV5j7rxGfAZgtHcE6yWfWGctU36QG7kq1V61QThrlh0Usv0PTdP2MXGmn6rb8s+0pR4vTmC5DGmZcwX8pZVxyLE+r3Vg+aEJe+lV4k0malXseyls8LLvsdKFa6XCUtzkLhrFIYWPmDVat7jO2s08lHD3WJD0v0Q5mCPrcJTtFqZEzuFxjLVSwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYXf6A+DljAyhbVuOyjzZh04ES5J69686PeL+tHjykYKRQa9FvUrIoQLqkSkoe81t7hLpvHYpEnmMeK2h0hoHPv4SGvDR5kdMHQgZyywDh1yrjjiDjBf8jdfqYr8zg6O8HUyLSYV/bhskUhVMJzjZpms30FJODsAVFZzzvtxUwgzHKMeqU6Hq/YtSPQ0mfyizTDDpGmJoLKHGh7lfmIphYXVKGRYBqVC4rA6bD5isaXKXYkpUNKpxZfzy4sbLP+wO7csAkxqxGh0hFxZPknSVzYrdaS41eJi3Xi6OaRrlMbpzZ+l+fSlA9BOTiM3qEH7UaLEMQBH9VuVyXbrbG7XznJhwy6mBC1YWU7FJ70LEBXmvTpk7zvDpNxEXWQgOv1fozWgPTkgsJ4oY7xr6sGzAe+PFbxNTVqrqM6E39mggZsce22qgukByl8e13n8DRCLZMJVWWNPOrD9k6cG0cYueGkWmidxlidbS2GW9ZP6QGwHcSFzWV6yUpkMwmW/XqRSx2s3Tn6B+YJ8VHMrHsqo3wWYUvrEg6/q4Y0v2qc3Rk0UNdC4pTVo0sZPsqgg+tFzw/VZeIW2KoLP59PX4cDl8cY7wUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYXxyfo80xxo+hBheyHK5jL2hXCMEci/InkhPr2mAvce1tDL2Y9Ap5teh7ftl/b0sc1hsh17B6io/YgCYdo1I4gfFbzZBl56+/t0tGaee7v7yJAzICyggc4gXAN+SVsk+6AT3pCT0eYluzLvlBRa/fRDZ9jYLR8NmILifvPqypkX7PMos6rprSrN2bSUK/LfKix6lUou6CPK907TyomBM6AE2k8/x8+6RxuoHAlAp8rpOgaELQTEKjXvXK/9h2+2xJ6mT4RYomI1dbxIt8Fpe0iBS3CqxmZtMB1m/KTevmwbFZFoX6ziM+8F3/mdGyQw3+uktQGj1eiCoUwI8vG/zwl1LqcSwvHA8P4JyX696NEY0Wo1O+iDGsUtWpWztYIU7dvxpg02bKA4gMh5Vc8TL/S/uK6jkFpdrt6GC6JPW75J4ESDYjISkcV2HSDvw1A/SfE1paUpsh0MH2YXoSs76Gm39B3Gphjqth1CuBoOSMJF6tUBWb1SR1JgZWBq7MrvJeC/yw8Bjpu7Mle5WLo7JgtUZe+oEHvN+VDBNyzIGBB7hbDwLnF2DjJEkSX4LYTm0ntifJHJpwTqlGXdoq8M1zknkblcC0TUAjRNjgzS0bzWWJ/xbIh8NzI16K2m4yRMVufevThgRupXr+CvAorJfcaoLeMbxsKJh+mcsGUVQWZ33X81pt6Ej8r0yt/aP/JX2mhPPNR95TxHMlB2teLMRxV/s/4MSH0ZRO9xcQRUEiOcFVk77FUrx3k0nHcmdrTc+U5lrN9+c6J/cvdoTTT3Bq8vJXjzQgKVByJYKoSSrZ/Zpia8KT/fpW0io77l//i6k0kjX6/PDivyUIjiA9U1VX0IWQhnNrMK6nXozFlro23fXnNvh4jGUV8+Dyh9xjWynEjFn1YPrmj0yaOdFL/NbXQDtyYDx4zwxApkDsIEcL3x4oeWTjOrqqPrS079VjNg6ZM9gIWFo7dj5iGOrS+CxAnBax4UJtlq2h+nrgUA6k33LogdHgsZW127u21X5cai34UfjEOfjhmwThRrD3znmZtztPPEHFMTbi9ZpkX1etRNZY2oIQxS0OAskZqDegrjNs8ZdQdbEF+okk6c8qNiAocZKn0ojbevKlqW+NqIt5/58vb47gVG8bfHys/j/a1VNk8CfcnUr7pWq0P0xDIYJAMm5OjUUCn24zdb7VjKM2jjOkFEHIhDJexqxIbNa8tDpVXb4Y4s0qNPQ/4P46tertvXJa9+GmYvLgqWlI0E883OjyhEG0ICewVErifwmP2ctzuLEJY2xCpeW/MUbpEWhNzc8FziRKXDrW2d/xLgdeaD6x8NPagW+H9y/YA0ZRkXPIw9as6jT6o4cAFkVBMYropAy78fsBXRFMqckdxU6hNdTwF6+bND1Rf81ZQIXm3JyjoiGagSkRoEp1+tBWdDcf8AJY9fcY0Nj9+RWJ+YF4tncMHHGeDjS1ERKbJ9Oc2MUG+4tQYYBFHpeTDQsVP/1l+Ok56ChUAlpy6Z2l15wedc8k+Yp7vv/bcMWNlhKKKZtMLurgjD7VGn7gmxV7Tlsx8IhME9P6tKq6doIRDwD9X7u6BKUlqBBtuCwnOm9nraMZ4gXmtZAfJ/MJk+AChjrE607ZdJui0bbZs2rwiw0Vr1152JkfsyL+/RjgJJW/bIOosVeUEUOtv/4FHZR/an2M/DEY1cWIzeiMO2jAyPnJ1jXjxFBo6sujz1j2HUjA4xrb832+lfmtGbrkHGZK3VHcyVmqdRJNvubZSx70la4N56EaYbsz7eThmTcwTzdG3IEZyZ9TrQYqHJYO4twrDL8E8wp8TP4y54qPWtNHWGd8BlnKKinck8BbaqLft0IH88g5yhxA3eQpb728hKRD5S9pz6f0BV4CQoYLnJFGxszNvqUbktp3a/XsXHbrMF7Q7BrxVt145mix3Xs0czXZ84YKGpRucQek0z3GeJQaFWEq3e/MEZqRN/CEOY6a+QQpMioKgJPp+PK9hWwfmSfyjlKA/U5ohc+HXdxclSBiUE5FA776g4MGod+V8QLAi1tEI18TBbk8esPhYek7RxfjJP1O43KxkR2MinhI+nX8j0/Ts9ba6rKGnc0q7c6im+mwLGjwAsYyCCd81W7nPNg8rU+RTKUbY/jwWhct6TEFhjVEfltlQlvXuZVjUwt/zmlsMX29Qehts004wU2XuYKmfcbsJxWUWt9i5rQ9Red3qn3EEGBthwvGxoMHzULUyBX5yVt2wOmQrdd49rOF16e8IcDDJ/7M1J2y8k/tMOW0UbmMUzk+dyQuggZ/GbTK2C3Hhvuhk4p93wqxG4dA7TbL0LrHCLcfx03pBA+xBZPgZLPCIKoqq6ujMItgefQt1fwghX99FarNQ+z0KlH/5ExAHt2Cqjk3A7S0LQSdtAUwFHCSd5WyUkZbH1bCvhEpLZw+aV7Bb0dMzvTHRBaq5CBW/5KqwrZfXe+q+g+wENJfEixvHKBJ9mo74wkVV2KsD/k8TJ1G+ZRAw4nTbUk2WoKIS3fl+eifph36HFAl67sn9m2+a4yG4NLuR3u+ugiUZzIQgaHUhtbyzgcsav/EVJA/2e3Cl0MFKTV8tIiC7XGlWE1AQN5m816EBVrmPIs7MgyLgHwq5VUBMeKWNkAjC6mFqjPYOpMkCE1d1NKNkoaj3VRvhk/iQ11IiyhrWd7KYn+gn6W5WPtBjEEXQ/mvIX7cTNcca2zNVscPN2muyFs3ouaN82W8FLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmFbP+GRfmMdqHOtmb5ihfT9OoEY5vRmLl+psUlLZbtSu2yv0lUF8f3L9Yo5bxzFdOREne46/SeKQ9/sJ6LyUhza7eXMBvBCEbIrccs1vqq9ggFsM/oDQvbZcJuFMvQu0aK9nVOfo+5egKphsEkvgWgTfpP+RoNzQXmiRF5i/FAFc93zkvi/eKqTqmYFEYC0quIt2d5xR03pxX7yPWSIjtVazxFBo6sujz1j2HUjA4xrb832+lfmtGbrkHGZK3VHcyVOY39AO4r9FRjRyGb/7e61XFcWTaZu5MA2Tb5a6YiUFhMf0Y8HdjqniXq4ew1N3bYUA7R6n6RCv+ruQbrHxAOBxEqgXGtb7kRVLiP6SGXq85NCtLvV9KAv6/kyEH/gwBRYNWwmVObKHs8dNwn2vBeg9HI7h8WVTmn6AcUNql1Bpyl4kRqI7eZ9Ej/rL9qpOvXoWPFG5rAwsVQHZImnbOcD9xxF4/z7dGt5pXv1Jlc0m5XxElZNrtoNxojH8Ta4uK+0v2mQZsNADHITEy+TxCcpyz3FNQvqe98V4yYwbR7UGUB0046eeky9svkYUiQEoZpiY+g3qlbwJJisK3WXZEcjklf3G2n30A/hCc9wNrkAp6W9BDJGkr0blxiLAfsXk1nD61y0WLOTpIHZZbVPsZcSAbW1CoYJoO3QIhhUwlD2AN5PWgIZ4Q/FpvPdv8NrU6+uM57HjT4XJDwrhNIVX6gJr41ozGx3zddxfMg0rv+Y6rDPj4hsRXkH7Iywk2EWrIAJ1AVtELmgKNaJUgWOVhj+5JxcuwMTd8GznWYAmcZQfB6bXA2lquBmU/W9oH8h191hoAzlQjuQIA2muIXIZFo2gisghSt2Gy2oosaUPPn/96Sei/eZBAPNBhFCIwHJhqpcS0yV16QMKlIQgM+FDRrD7uS54kT/iFm26FhkHUckxZZXC2IfZRwTm8gjezOxA7oOvJ1TSvSzsI0h7DEM+vlNF7IjWiaV5fm3Iia0ip8lDJ9uxL+wyZjSMHwzAGNV1NGpFea7sNqpF/ZI3OduDAo62CHIYqQhQCiNrictaWug2c3DBeVu81hCyTMA/y7lcTYFVZjAm/bTR/u5Vsfz88ar5M8uYuya98PN6f9DssJRZU3RTXaO7lu945PakAn9UPCT3gcHPS/1gLeTCDCyk2eCVW19AJovlBK4t3CseICuWno77lxEIDaHzP23nQFB9dQvmT99W9GUGr7gI8czCxPAkrjrqeRn6v2uOP265X7p256kgOOcVhKm/Q7V81Z+lEoQpae1FWZUy+FVcOE9SpIuBqGUagnjj6VfAHtimcenlfZqdA7vH9Nr6kthj+Na+QAw/WLPQnTU/M4fpBGgUW2xBnetxItLLwNqabCHiUMh1xVFS867DYdoLOi6waS+5sLB+EsHCdc5I0kuhQoQnZRradOkdwk5REn1l8gS3q98Ko2/hHJki6V2TrJMASlxAyr5l9Ex09lteOIqZlOUT+rP1lToRSKLtlK6avfU+G88/n2exHBiFjaAGC6QCjRZopMFM3CeXD6arrDTGelsvjckwv0zCw8SA/S54S72XMkedNgIjNtrRy99YJ4+Aadfv6EYXPhJRg3hJ/asdFBXMCrAbpFzr83u2Mixujyh6orU9F8Iz78iFZU48QQ1ss24cY8D4bDt6tPrtXD843DcicVleGpLyYYUGIHilYhIqboll0SE3+sOpfT9P1PLLaNgGECBQ90NCQ6v0zVPagZGrzbUnOLWJnhKWW7NaB2GW6ufVJjGlfpPd+4dFQNlucB3jd3ihuLC8vLGTff6669Ed6FFd2+jfgN3JqTa0NwM7U6SOA/mtpVjffSx3Fjx9sf2nFgL2Y6BBb5yKpAOX+oGOszpLTwoRnzXgkLngOS1S607FqB5QsgDTFdte8GWhZhdS32dXTA7MKe8AbGCApVXpIYn6WfzRw7sVGyJkUJg02sCqyi9h57BthjcIryItmv9XGm5lN0v8yOjepZvACVReN7YGAxyim1lNCwrwYKv9ag1Vv+vNqfn+sFO5dKUkFPtxPwIr6Htd2mxbQjVYLJE4WepHsciHQPsO/kGK0YFj+yaKK1BNPxBSmLxpk5zxN4Dc50BDI+8WBS4kScdgtaYWNW6Xa1/Ui17sAvU0RG3pAIMKrQgG+GkRcdcVa8uyvOt/KSORQq4fcwE1ngjyAgDnBs/67L3xvEOrpsEBwlHEf97jHsRlmU4502A/jG7Xcu9OMeyBKLOPjO1frUIWzmg9Kt7+DsYlYxOP2+Cdq0XSpUcNZybhp4iRtJ7xY6GrK4iT20deYden6isEnD6Ox/5Sz0fDY01ZbNFgb0DZf+fXyO/jxn/vnrUAb0MZPnFqgRa7s4U0T8B7Beek+VWrIdsUpCcJKs+kHg91MST6It16PCHVwsdaGlPWH77Ajr5Yb4xslj8h93lm7Mqsw6LFbGIU7JHwoTfDYkf4+ei/qf9Vcr3jtRKRyZppGQefExhSNKryOLeqvmoa9Waqa+kujrGfgCsW4ryxIXXWnC1KEpatgx90GbyFbFH/e0/Y9eZiz20Gtk3TnNlUuuiClMQ8LHaEiD0adOaeKv5d96oD7rsAH/Dd8P5CgO1K7Dg0nkbhYXxQw7XYD01GDsl6XYrB+mf4dop6nXjNNJwe5MHHJRXMh7KNi97BPi5h9ZqiGN8aADwoZ2bWUQScviOT3CM6oRhtL31QM7FAn6HV1/LTh9AsbOD1G4QgvYUvsU+jcOK5VNKGmlDW8B/hoTbu3v9wOHubcfrbaDPQqLDjUa/g2l7UHGpDkoWMkgcU7p4N/rd3UP59LxrIdgDA5jUiEqbOMEwS/TYGtZqaAlJ9aPtj3BxFrEbYoSE3+sOpfT9P1PLLaNgGECBQ90NCQ6v0zVPagZGrzbUnz+0hdoodqNawbuRjUr9zVPIEcj9tHwLwBIhEnvAezcJHjYdpXd2DVxqQWZlVTMIXqwoUybzUDyDswrjq+ZOx4jUsSLEMtrOWA4JJoJPq5I4JSRT95dqJ+pgowLdgMnMRTNwnlw+mq6w0xnpbL43JML9MwsPEgP0ueEu9lzJHnTVKuBtqUCBIdef4VcQNHrwHPNTvALxeBAhWmEFVd9UYrbQKlV1NNY9kvSfh99tJQP036OqJzXQe4YI8ECPsTW5xp4y5sZ/7ftf9D/52K8sfSBlXilzrumIIJqqw61EGHXjLlfM3d1sH3VEEvnHP1k+XXGM7Nr8wFW9mzueBCsjH3I+6ak4pPAJL3aM82UyZD2QwbFhYS9B1bSYt7Nyp+ASZHeuRVt4TRisVcAcBhLb4cIBHxF1kGoMkFcJEsVj4CTd1+E3zuXg8EtTCM3pICv98HOLNoVwvrqg0XyywfqniGXbQm5NvyOXNnMD42BTiRels6E2+gEjWSmekx3qNVQ67UM+EbrLYAdY6tdWYca2RPFxXUhhe/Pp8NT7ZsJPzZ1Pew+3xYB5UPrh4fV1glAEI3xu1rRqt6QfAqZeGBIQOrtbU/YW/naRgxMnDLAoDn1m+hCv2IxGYVBInhgCt5p1XECxMtrE+Ws4qtLY3zpfbnTvB0oTcUWeBfn5iI1Y//Ns/u1b70ZXGn6oZbzJDe5nk680uk+kO/XAwq/SESb1m1yi87mnkmo457BztdOiXLAJJvTUHjPZZJG9Xf8vBHSi2hj3u5WG0Llb1FVpflNNGaqs/sHQU05aBhjcrhMr2yEFM3CeXD6arrDTGelsvjckwv0zCw8SA/S54S72XMkedMtMOE0Zvap9ZlWtcnTRR3uyalBi96uWwcbzhL/xSxZCZOwy4YXWWCCxhrzcrVCjrU6OCw4kgDvCxD7ZvKWA9pBGq7iJ3md8XmXeg7Xh3tRHNQctMcs4tFbJve7OofgFLOWKW6yRuunxjdtzd0RnV5t3kIi2Ak/00Iud1el+LMeVwz/8EPL63bzoJ1bs8TI4xnW3FON5eqN3kkyzDhRdUnX8rTdOU7Lqn/p+NtGBShHiEeGD/yjTLARWD1hV8MiVGJ6O8WWTAd8obrVnlll3PwDygRGz86cVKSf/sSxceo6bBTNwnlw+mq6w0xnpbL43JML9MwsPEgP0ueEu9lzJHnTz1tOn33/CdXwhpcigcD2nW90O/sq2CSYKnR75ryCBKzzdiAQiQadCYYrRkHSfCgcdnXoo3RFBapOOWXoO44JuyDFzuT9JCTekigj/LIYO57RAy1Akxp/g3yQVFEF+gjNHw09qBb4f3L9gDRlGRc8jD1qzqNPqjhwAWRUExiuikAqFcb4kcIgMRJx6g4r5gElweg+Xg/+9I0VjWwoonm3mVJUMAbTDgvSu1NAGVgVt+3kN0TmA97EfvbYLiiLkXSEZ19BjqUmX0me4LnT+XuFcn2OOzvonBSaFLyvtgdkQrsUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR506cxLsPahLA7nuOKHrxdvJYruFjc8Bn5UpaerTmxFDr6A6tl4mekgtk1WRtiLgrOI1Y2dFFZYKA5+VubvAEvUktins54oTv87U26QTscObkReEbJ/QTkFuSo07XqCqZUD6YpV/fLu53Ca4BEFx8LERLvs/lVCj7fmqx5fiIPOvke2M0sJJyqoTd0RJy1JpoXn5nTisBU8B1KeFY4spQxY3jxSqL37yvheD/fSA6QTJTWutE3WXBkQHT3X8NyKk02MTVEdhD5Ed3Nfss5atBUX0HKMAQsrWYW1daJC1/mo08typmEwWr24eTT1gPsa0hef1jMAxcUBUCT9LiDP9Mfuvr9SNk5PTngKPdWx+JMlGBgNAPE4ekTsQ6X8Enjur82KsgAGejOQd0W/DfB4GVf6IT0Lp8laE8Yl1DCI8ZVpI0HNXgYAXFhclnJJWxxr+011+IdyeZeol6BPR30J7fmZzAUIQWmrMpNMo1d543dteSa9Z+ZH/enaCNlMl2IeRA4/tCRnegR7jDzvaD9zsB2vCnMHV2OtTJ8rgNN5KiObIOjjh1QCaVuocarn+E1q/XU5o8+z0Q0YTroMPSyU+CTAl38OdWNr5TdEg26aWgIl1HNBpwrKbeBXPxuBtZGZR2wiKnd2UVg8RvWV1Ek8f6AFUoHtFNP2MNsanv6c8rAbdSp15nF8O0Llw+Ko+eTaUkLMmFBvq7Zy5qKJDB2zvi7MY/gh34rLg5Ixc13uh49KnwmQ7ff8FFGyYuEb4OcGcCClQJTW2TcGVEbe6AsSEO+VlrjLbY4I1u5JTonhkJt+osgD1KS33SQJhDLLt3LpPE1pRn4ZD5WvUcJtqoRUSrKVq+lzDOYd3e8xi6UKF6be3YABN7Iz8V4QWMp+1gIZ5MD16CXVUq27KHRWlIcd0ck+7z5AxvetOi+25lZO4V4KcBwt+/4s/ui7KvBTCTL7YFtOexLEzBKTEwT0xbukpoitt5L3CQgG+NGkKWsPLgPU8v3PYzufNzPGGDEIznRBpmrBY92dRFHhXQWudE0ZMmV9UahA96BEOUtvb80D/Fh76m0syu3Fm3egL+SA0NGtlYvRvUDKT10u3nnxX9BwxWXNxeukTUnNtCwAgtUhvfdcZkdhPlWI7cYv2a81yODgnfs8SOkowMecKflmQpE2nq5ddRpm9bKnCboPhQHXz9Pj6am2FcCMQ7NAX17Y+XC66CFWealLxnjz/tpOG4YV7dl5vXfFJ7Bk358IO4guILutJqMyx0LzL8D6E1LZpyf8DvC6au1C/raZWRlx8rUQGcFtquNmLi4IH0hd7iHrFBm/wINMxuf7ChFGxW0TACnNu0AUkkR3peYKfvCd60d+TFWS4P8c1eWZ+k8E3LhdWykH+3bFJrbe0nrrFNMtx/dbNY06JXIJmLNgmGFllhpAyn3w0xf0HT7VdUHz9BtUsmM+5I4sJRROjl9kudF0Ev200VMH1+o31ZokbFAXzPqtmtv10N/9X1T3PonBME0iwGXisqnWySpn3fy8PIQ8aWh7AllDiuquorsgz5d3xoabfvBghfrfXn+IFerl9FWdV21ibB1QxB2NsNkztG78kti8iBCzbZCcB0Tf4h7si2LlBE+UYnHXBWrlo2fMtuLnMmx+qi8tred3ydskkq0Czo3cjgkSjSSmoJxQroIgobAqNmmxeFChmtznlARMcFn+Z2OG9ZUynBGuxDexj5KH4SA3UH8FoLaazZwagjIQLkTJ0x8dZqYTEM9mkVU+fhBl/5fctM75KTUIyzWXWH3sS32o69+3c0aw3n8kDxqIvYGu2DdUxCKVMNLEYR/Sq+oiDhogLTDallnMuWzt6MtDVo6HUQd7MmlUW5ttIlnTMP6v9Le2MDCB+F3y1w3UEXoMrABOMPj2Fzqn0ahISgIW4jUfyLMtqcm1mILA1sCN4Mtqlu2R/XG8N8LlGZLjLUo8ZtlAWSHQklcx6fhwEdpn8eMXy/JAV9Ep8nDmWIA2higmGR6bfJM4t8OM+rd7g+3pndUvY0/bm1t9YnW6CxHXmK63reC2OPfXtUf5BsBbjmH3ceYEJ1fndVHMlZMQ0KATn7GS0VC5xTZJTx/1bl9G5ub0eMc55c1t0iANoKT2S1b9KgHCQFiYuEvtKZ74y8PWa1naEoIibVe3sBiBWtFq2ZDux2Q/Z2N7NEbMxR7ZjKsUIQ8QmGGRm/v/nZQjr9m24fwwsI6zJ0Mkz4g77PQvPvLJaVwJvZcRJfOYyFFdc1DfHhJupzJ6B2h9MohZzo18q+R5HIbaTO0L+tuAFd2Bv5CQDGV/msEY9u/wZwSx5OOaeDJh5bWb1fSinnzCtzo2YPouLM/aTgohBwAkVB3xS5pgkXd3YEskws2Ff1GhP2nd0WW5SRVuWybI0XOju4YvbWGL5Nr/hSN0zlLpJyxxldceSiBItLZk5DkywaT7rPpgZUUfQy2QHBlC9BjaqaLNrbqDTUEFM3CeXD6arrDTGelsvjckwv0zCw8SA/S54S72XMkedPUHiWlN1PpuToRJumIEPwFNb5DnBb8vYbOvOzpUJbLG0/Qcu1Rof9QPIOY0UEgOIdANMLqBemdwGqpCTooTmsfbJNAdVMrA4wi7rETZ/41pivDyyH9kI6upO+bGTKG3HQh16KktfY8/ZgGKaebyO/ZNbxvChNemxZaKr0+IDaU7QYTR6NBWz2/9M0OfA4NFYQoCV2ed7f+VFJfVHOSXqZ2Y91MJ06GDn6r1DvZtDzC6kgVjnZYb+T6jAbXL+UWa16zrPLocM/xEbDwAMchmVqGVzwAVyazaJSsoqZND7Lug+eV642R7xuDyHnr0AvyRiQ5UJRa6IC/wpNiXt2T+1qEauYNYrnc8QS9lYp6p1BqsOif6rno+7EJBqxiSDtukDIcTFrA2lkzmOMPHhuReuR65PAWxa1iIxnkskDUX3R5d4NUIEoqKjPLKk+meKCU9sLbOvjzC5F4L7TS0/r1xDhBbIwBumLEs+v2JUO/dwbtJFtCeL5XHe1ic+bTzbIsiGJq/6PxDb40aEUz9nIWhNC0SA8pPn9vXmVuUvwV8EHamRj12mceeFpnyXZK/HirEQ0HjFPLKzEoU1HJzHT+GkfBNJKagnFCugiChsCo2abF4UKGa3OeUBExwWf5nY4b1lR3BoeJnEva+17s8FPWEEHWWujZfbQqkG7C8fy9RIBIZzNcj09VKHDOwTg95ABaOvBIoanrbsu5yP4hpxv97oCs1h4PBDRaQnBPh7++AL8m3G+I9r3NuDzc4BUPf2Lgj5SIspM9kinxyduzQPvk5JgyNnMdupOoT+Drf8D08MS9RXq9oPBGif2eFd+Fj2I8qoH5FWs5JjgRD9kCCdKC/yaK0BzYfizh9GG4o09rVu68EsoHbbEITxxK0t795r6ATXofDT2oFvh/cv2ANGUZFzyMPWrOo0+qOHABZFQTGK6KQMgk4A9WgyBi6vo0YcmPnUr1VQYUwO0UUUoVWPNofs0dyLlvHc3mMtyA0EldbM6OhcnLlKy5HRHwOkTKpN+A7JzFfilA/0HK33+yeNcAOTtp9if8uQg8/5LH+cIJyOgfuSHXoqS19jz9mAYpp5vI79k1vG8KE16bFloqvT4gNpTtPg8c0bLeW2n5l9ZzQJynGYl3amaUoua7ONxprj2Xaib9S7vo+0RNH42Ysf/l+JhYKN3lBakE9EtcfYIaxya/hi67gvUBV3U38grAjRLjqAwRLwTl4ZR40Fx3bAyfE8xdpqGA3L4gUoY1Gw+XNFUpAdavFztrKxXpS3ifzAgH6R56Ohh6YhgWowhpUtToOOpw8emPZ6BvFs9MmtPTu/8UrD0pLZktT0La9FtzV5Jz8ws8LGAlLGxHtJlYKmSBSn4JFM3CeXD6arrDTGelsvjckwv0zCw8SA/S54S72XMkedNd6gIvEku0ajrWc+GElWD6q9RaOxXfqUTUDEQ3cEd0RGPV2kvoYArlJDDAtUIU8GUHCRJ8gfh/uYf1L+bPwzmg60DyvtDj6yPUUiHbvAfY2CYwNoQ4xpUKLEJZEGHT97GkV5ruw2qkX9kjc524MCjrYIchipCFAKI2uJy1pa6DZ/wk4Y2ZQO3d4QfCvUZMeB3/T1imGChvnwxsS/chLjQLRW2BwY21+PBa6k5xV2Ft+T3E8Ascclyo3Szjdx5oyKFSOgQbLcHqsQcL41mOGZLx46OwzKtCqcKi1sft9RpgYzxFBo6sujz1j2HUjA4xrb832+lfmtGbrkHGZK3VHcyVq1SEFewFNIDYcho7qE4pdNQ+ZXNuOXPipPKUrGVPm1AMCWkw+zxCd7nNzCH+u9gztYwaYmVOGVek92IgkXoU1raC3/ssD1EEbv9mQmAwbgajuwhEV60jSh6+LUQs8gEsFm5lMeRXWDWhzNGauxXiDu4xB0eab/EiupwtbRFaVlEiEqtZr8XBYlFH3GQLU46aEJQAmHacQ6/sM2iqPuIHYouPkOQMzAb3ponBYQFIHyWzqyKUTtf1x/VZAUaigigWcAYkxRjz7pB6CmOW343Uq/gAxY8YV3YvZQkIPPDLFOcswA2eme3dBH2zaTtzRiXXE1XGiMtqNtp4bE2vocyVYQWO5awNYNd/B20U87aFFOz5v6uY2Db4HXTXLdj1c17cG3nkS9d9EEjBnB2a+4y4H5XNgjvhSK0wN84GnLM6XdcDDfTrC1jpQ07a6e/LdR1ID/kssl+zDGaY/wMBvLivsjuUSe4hRAjFILpI3zOEVcWOWzespy5TgYJuQKAgv0le0+/kpGszSJJ+q6sPYAPxvqcOekihgSM7qd0EBws7bOU8MrbEmFl6i0YnPlLGLvWeMsLYaw6z47nIO3ZvEhurhIUqmxfSWClUl3peb32U2yO4ERautADKsM5KmL8WqtBAfhtmEb9GrkpNn1z54iqTEjGcszpFk3HQsu3ob9l1l25rz6wudSP9q4K9kvdBWCGgzyLcfMPckVlBBl5/dk2toqo+RQhhOIt5D2qZWCfTMNPROrk2a3xrOkZyTYb1Navu0q12UZ8sc+oEDMJXfhWLBZAQe811qZxpZlZLhTyeXT3NaHNdIF2ZgLaNY9BfN/r0OHRDUbeayhFEGDMbk79AaxpAS1NLkDNT02cJPhKmdEhXZdFOokk5ZKJGq1E29cytkAz1WFzx47jksTejkR84eNU1EicjhPxLfkc9/natoQsyUcG097nX/dkdsTb3KXHVGT0w5X4anIGjBSri8hSEHINUIEoqKjPLKk+meKCU9sLbOvjzC5F4L7TS0/r1xDhBhpMY+qNSMwnJWmoZxnZFwSyoy3pSkZUsel/82b2sOIMLjE017hDiJf8mobiFwXiTpBKbb3svh4eXyt0eQp3hyzJtg+gwFMVQ+vyyo9Sb6m2hyTb4IzXkEBm4SNg/JwCei5YsfNnEmXA7JeA7U3tPQ8U/YsoBTJr1r+Hgw4OPRU2KIaF7Q3H60L0NsMbU3L45KzUiGXgeDZFhxwBDIjOPjTpyKmyCcdNDZ1MeBpLCuhiOG22zXS97M+bd3qRt+1BurN9Z25JDclTdZI5ZpTLYf5QxzGJaBxB0AdndLKzXhnpXi6aClEVhjIF398WJYuD9WKrN7b1BaeLg7tBqpYAS+RTNwnlw+mq6w0xnpbL43JML9MwsPEgP0ueEu9lzJHnTiLBmBZCZ2zvyHzHvWjUeut+HcG10k6zm3hsxD+Q8CzZW8+WuvsuyOEBVexlXNK9oELlirkxhfsTrECeCWpRkixi925ccw0lUDfeRapDlF4K2c+uJNpzHg4m9t8zszArHX84fl63jbO+9x1HJZApgRbP/OozkeWYwfCfApzcBa7EHMe8r59qQ5SVxBkdQDH6FTPeDWeC9ai7E+BsdrdYG8lkTZbbaIbQf5PGInOusxSh9pp/e9K/1AVgb2PK4CjvRg2iKMWun0NxxDwUpbR27a6bDQbmOVFuleGAQT7XBMg/iBI7XPyl480mr4UP9FjzDSm2iwUik/9i4brn7qS793g/aC/Zwn/O7QtXHOzuQokiM7D/QpI83AnyAxTJnj3bKItZaVFrAP7Bf9BScy1x+oF2Q/QWqfbhN2+fpFqLyWL5RA67rrvfWkzXevv7sar4OUqx2TkFQGJwRjq2TsTOd8RNI4tsKfayfOitjz2+v0ejjAxlt53wcGIbDDsvL8gZhgZyz0UvG3+wyr/RIavt5Kdicsywzyka4DBVDNuzNO5wLl5wV6ufQvgrI1tN4Bg+fRQuqiGIskM2pZYXD9Nes+6CL4NgYahZ0SpQJb9nghAu3LMzgvdWS41oh1Byv+8xO2mBodFY6unWVei2GQEfV8Q94xxqOVlun3UD5onMzduxMly7TZ6akvgsvBpH8bn/FTuTPEgF97bE5X0MhymXbZCOLI1ki/48VQDWn0l8zeim/4vcFU2TluRnS6qX9MrjpfBUMcisZ+uXZwxSLaWikjZLwX1XfiJ8j5Q5ZaXz+q4KH+qcTPQE+3a16LarUsTntHf/mxiQK08uVAHXZacUVKmxO1oDnSdFF82KCHpMNahc6d+3ih40Gp1wyTbWMVgp6bkj7BsM5OnJR7gRT5RrvH4Hi3g3yq/E4yoE9o6V3rnc8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3MlaSSKyGox9afjNigMwMdcVi4Az0KrOz7FPd8RJYtMl/h+htJDt7qnx60l5bSqjedXrIpu2riNawBVtx3WvpQ9a6nyQM9k1L05hHEAbF7d30DEtxF13QqMKeSyJJwsc/BPpYpbrJG66fGN23N3RGdXm3eQiLYCT/TQi53V6X4sx5XqPD7pZKDnGGHtH9IRyTXhUmxxqC1hzM4HczSPKMDoIe2uXoO7DItDEXh/6TtCb4EBzszwBPii/HK0FxkaR9WyIMCir89otqCc+1hIcc76ZvBBtQRq6l9CUmXmz1Z1B3qfNIuIhlOypMzdysAacmVVfUwXKO2B2Z4t2ZJMa/WbtirgwCKdWokooXJheGeKfCLI4xyaYE/F35YFlyZq8zq44dtAviIrd07UEYtdHr71suGIbTMJ+GSF6bBsYVHRJkCCzNhLDZM0TL45O26N1ktNvhWuEh/GVvOImqsQKTEAht7vmSZcywfbAf0hwjTQyPnUT1ZvsqTmcZ3V5sZG3Rm0zxFBo6sujz1j2HUjA4xrb832+lfmtGbrkHGZK3VHcyVDMrgs3/avEVIpVxCCjj52Gdp9pmheHg/0KxwkRnjdpXjn/zvmWXj4mdV1l9QP0IFrn+dzcpQfwuo7aBvlFF7hI/CtG2Ob3BfR17OvU955VAwhg1TyYFp4qmcq8rk2Y4TlcowA5aJbjAwsgmSngfrbIHqQ9KJ/FwS5oY2v+2SZsBcHM5TWsVqX+Fc7vduYMDb9ClOaOw5sL/7Sp8YMYdGWyRfD6iPf7zVlxvQtYzllORQuz5KGW8TC2ZihFKHvxcZNTyLESKmDHZ03swOSaervvqM0Upbxgu3qcUXqmxJPe81tEr8/P9kpyur5oPzC8do8SLD8X1Q/phHev9frntqRHnNEf5OMB7ytJsD0J/N8DZUH7BPCJt8FlkhUpsZDwZ/U6B1KrkS7YmdzKHJU9XRpsR/aEXoSqP0td9W9YYFJqzTUkSlJMokXX/pq0oPJ+5U8nswocweMZ1yhImgG9tx1/ywfsePgrl0qyYkAzHrrwGKQPq4D2B7pceuCZISL7KNTt8xFKDrxKXSQa0nYr6943n+H2c8MY1KeS8bMHncBPHd8PPakMv/jmvX60gOIO1Q7RgdIldhwo3O8bQ0+uhFCylMfEfawFl6J6mytxkMZiwz/iO96gr1vcb8tZx48/ff7dfMl2dwFO7twuTZw0MGvMhyWfBy+jpXpdY0H0pqTT3Oivtq59jhEYkSpHN68HplIXxl8+z5ChVO7hUiMa4yT9BLdtQNfrgyeNzATV5kESoxIqhgpebHvfrx9nZuaI6mvmN0/O0i1HC98xFjfz0ZMqHYrcs2Rx+XkxZl3Iy7/fYoxE9Fnjway/9eUo2zobvx1fzple0z5fUtdn1KrFSJxnNlgfpQAi9fYobA9etFOgiS8OM66dGtT6qxEf+r+v4XwWtujJHOJ3BAP98f5kZlxp69GS/JLU2hUBUqHZnbDcY1Jd9AJVIlKQAjHPlz8JlxzwcROnf4Dtll2OrYVIMpiFpgXm7+rTUL+/bzw6GT2b6dREfTh55xsMGhBK3dESI6zmzYVKwlC51y8OFkhd35QxcNkbiD4lL5aSEapSpbRPR/QFXgJChguckUbGzM2+pRuS2ndr9excduswXtDsGvFRROcAM0NVHeSOKW6X1Blh/MS1N9fIKTftMbpiEdK+6QuF68vDOXm6EmcAew6Q20tqGotq9sbC9ptZifGmHrKocvt5MWZBvLDn3U7QSiqy5L1L+XLCqgRU1QRqPaZKrMy5a30FLOw1nUXA4+Fa5d5z21LVeYdbAWc6XN9ocPZo3puPsFHAFHKZFogOGLEEclj2ELLiVpEGhQd31dfPEjur87RJxOMTfPe3pL7sBFBayxNdfbTClcREgAU+IL6+adsQlG7GTThf9MYAm6NK2WZmEsB5s5SULuEs1ucIW1hczc9kE44vdWsuReqSSm8w8K1vGXUuVA/V8Yfbv92drMCgvZdCyEdkZBYlkw4zV1xDVG7uw8H6iroNDRmI7vn7cK0BKDzFcVrNeHAN29fpqsiINr1N6gEX3OVjR2jsfeK7bLjcB4fLyUEJGZ2Fa9ieF8WT6/6OcbjMR8Cts3eigl2ewUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR506NGmbz7hSr21mUeBDfAmWDfGzVaK31EYv5NU23cKKhH07DbWP4OIxS6QHeCijhPz4Z7gEozS9VP5c+6+Tdw3EAyKUFZYHMqJa/3YcqFM9D1yOzesL3ORixYFSYs5pvPJfgTXeQ7cgIZ5AdClkPdQSf5rQV1FAx9TOjPJ7GD1FaZFM1JOw8wLrZXlb+M7Q4qmWS3lwJ66Shne5lrNVnogQyGWh2tUzbuGo18mEe6DzDabXP2mPO5bFEmi2jRf7hUacl331DsjSf61MFMi6D9IitQRBdrr9ogri85p4YXHucrHbga4ZLu6LJ8CQVYdmoxHSY0UW/xfW9z5L4jEHinggmyJZzw8mmTRkcAq6ynrIbqzxMvOTmTB/EuKFIMWPZ64YMVnsOu90pjseM18vuXqd4vAeEpQz7e6ta0tIpl5/5FouHyM8jYyqul2mJdeo1DxRV9n02/ds7wZNe1ubmj/R8uUrXhJYn1RpCUJ3Phh6U6CqoPuHGfsX/VI7FLaJhy53c7DkhuN7awrmoIh2zA/ffEMYfRxvbKnfjY3hkddkLoyl86YM37FaYSUcxiXyQ3db7zcVgBKrkRGHafrczO1qJTG9E5RXv9ZuELDQRS8rIc+DHYao2vFQKVAGGbh9bGlgi8h6+Y8/S7fH98EaCI7rgY+/rz6fnqfxF+SvpIWSN+sn2U3wLsASKtRNrdi2r3l7refNtSw9ytHUtaWfFvz5x/QFXgJChguckUbGzM2+pRuS2ndr9excduswXtDsGvFa4lFFKX07kKTZnoRKX/telYaglzUI/5OJ2qUNp78LwWFVNV8c31pMhML0gGf/4H5od7vQBjipw2l6rlB8wiULqWr3tFZWu/UXwixdDPv0wCS3y0cBMsAYUoQ+MydIpH10SaO9H7qaDJ5tBeIvkAzskbb99C1m2tmYXpUmzEwkh0kV9ZgslO04D6CHJlYTVZSF5Ax+dQVzn6Kwo4+3CUoM7NCXcDOr580jeZjgAkrNRRPkFi+R+O4Y9xL691Sj1EVeL8d7OZ2Rei/tNObPsgur7qufzq+dXLebyUh7wDQlXMKiNm/6D9KEbIHtbdB35NmLuP03kGjSlYzerSIzutLODLMUcCrnVM5mbJ/Uv2a5AUS24dNdUYBockhDF6bn40TEIm994jiBiDU4mzZm9bTAr966tp9JO2wznU8yOumM4j2RTBbDBowmukLUub4/gxg8OXu6xkpUObB7ROwwC5Ru+dYKjV6kHFxtE13sQ0xfbmJMvOm2wqSMXw3jE8V7rOwN4PyKg7/cFRF+Gt1miapEtDX1FiZvU1k4Tw/Gb8VDUmFM3CeXD6arrDTGelsvjckwv0zCw8SA/S54S72XMkedP1/8d8v9Dr/BBbO0qmFVyPTYQ2eLO5wwUYADzqsm1EgJO1kEqXukVo6tKukL5jk2p8ghBtPIsXCD1ZoPaiHXlEL9X4pFYN0Y0VjKiNGr4qtXR7UflCYzwQSPtQJNbu4CS9rxFYI7gerQg/LrLuAGfgkfFwYD2LH6Ioe/mkt0otb4Y0yqcQpPKaAWBY6HGyiEzhbnWsx68sFNk/1c8v/nB9ThEMlU93W7V+nzUt1D6VfPAB3yrh0dBuMaKuj/ynvzO4KT2Ou8znS9Fs3/QeJZPKLgSgpW1oPmiMudvmS7We8Cccac715I6hOmInJUfpcF9skOEfnqOEXwXgB0pIIBQLFBrNYDGgsLkE1AM3TW/BUtjaWR3AbTmsW5F6kcmIaK3sWsa/67kb1URRnt/i6fTLZWskeJ1U12OYeEs95UhWa8FLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmFwNWaarckNzsQ3yVJlNQ666W3Ms7Pr9J5jl+0WjPgTuUS6X1MgkXOUE0ljlzX+uVdKQ50zfdclCJBS45dukaIBeZr7F+X1IUBF2J3aFUhD+dYWOJMIY2Hluto0JQr5tBITt8xFKDrxKXSQa0nYr6943n+H2c8MY1KeS8bMHncBPHO08A93JVpAvahCy6vUiVk3yiYmsd1Bi1Jfh9mCJjkN3gIq1ZON0WYXzvUukPofw7TLOYAZLbZyNfPTqiqWgRaUs+hBRUmN4xgC5ofPH5kGmMH4zMVDzXlrLsIbP08PmMBvpO/2atlNMWbKDGRg7DPbiVvuMRGlv+CzPAlnoVslv6q77Kd5kZoWagY/F2iADgZPlk/RRyUi+bPZgW6BwBfDwaQmoimAhJ+U+WJ20+3Z7ZTBCBKC4X5BYCWLOtT6DmktcbIfbDecA6nGy3nQpdKjb9LxSf664U7qLcs7OmN7H9AVeAkKGC5yRRsbMzb6lG5Lad2v17Fx26zBe0Owa8VmZgR8wrFoYtjSw5xzqegI0xiOl/t5aa998BnHdtcxERVvhxghFeFwlwjBO0qqyl2OUuIhDcb9eGR6LbqiQhO7/eGFPcxdAV3kCqeFh/kM72kmpwdkv+zbNlCkAKXs+eCYBidw6gWOfjCaSTKoThWeS6P3FX6OXwONERRngCjHEok0Iy+dn4k9wLbKydxkeSSLi5oITbREbIyynNu0+ZYhSoJUBwWJJRzaTbINCIRi1FvDqQPzkCAf7T+vo2Nh5L37Tos0pIljxWskkN5jG1oPHjDIUil5Med8qPpt+ZMuIc0FNGw93D8+aea8AUoKMbZ3SjPelrQCveRqn7R9Xd2W3J4brz4pf/292wmvxIZpbprHxHdWOZRCa34fQ3g3jEy95ZhzZP0ihYhZI3ZkqZBBGrPaNZxixcewq78S1YuJe9Ew3Etp3DPQ+K/Dj1lxcG8ZEJVUYkV2awl4YdHUDVOX86gy58bopgwAESwa56bcX+maVpbw5kX2sJAL6cBWGipPEUGjqy6PPWPYdSMDjGtvzfb6V+a0ZuuQcZkrdUdzJVpzEut18UXYK/H46KXFZJ8LDf8gBcj4mQo/BjyuSerxKyOV42XCCbpPMCdcVxGZj2581+DrVTCvD4kT/huTFR+N+BMOuVctzKGpp3sJk/1o8HLO7zaKsnKa1vrjj4IUilHPJ81OssmZp/HTJP4iY1CzybdQ18CgXTCsMW9UIjOn8FrboyRzidwQD/fH+ZGZcaevRkvyS1NoVAVKh2Z2w3GNbSvORWTTOC+0fqVXvUocgHAw4O6Tdn1xJB86NsyFMVyLor0/WW6nFJxqf2wOiiIBPLDV+QApbL8crTk58E9+MAWxtBtrwUoGijM10NRE50n8tjNlyPRlwx6WmxTKqDsG9PPt9tfmSZ15YDiSjRs+w29Gjg7WYV6WahRS4+kUhiwpB0d/7jJy7aw4KkPDhlKxDMLes8ZgOgw16hADkOMCqdwUrmPsMWrx8W2S8eHXiajxQ95O154ZLOLgwKY0pC44jigwp+8V9sMfnO+IIOmjIjcvfXf/dytGqUhI/sNCxFykQJdZCgvNa7MKlmZ0A7fC6zIdn24ZvB3uZbZtjapitvFAXdLJgOUaPzAdYQK4QbDkSxAbmtCoYr+eHISoqWuXMQwFfvs0YmtwSnbKDVnkQk7huFJ1edHyDhPQANJZ+d/FS5x1YexP0B5avB2u/CiQnghcWWZ75KoMJHkE91LH32qttsnyfL7G3futfN6IwolMgP4B/4qoawqhPrTG1jy0JPM+PLh8qIEaLPEXab2t0OfczWTLVkSz+uabDXkRYJc1iznHOSpKISiXP4OxcUbMgw5R7B8rL7RF457M9thXRzyKEJEmbXVBFMgCsMgDuVGW42SROnA62Vtu1XVmdO0eC76Z86g/BCdgsSzf6k2VPQKnfZMpeJAcwA/x5pWqUMfaqycbCveexhGf6eQAqGOkC0DrKijPPTPsgzIOr7mtv31KPeWkufy/2wi5JZS2A/rxRfiSvLcZZiVh4drte2vDRei49UN0JFVPnBP7ZW/hi1A/VHtbG5zGf4vbo/fbFy2iqJqRUbH+DKdPgmuP5jLlfo8I8zgYVaTS+54xy2rxReayvRW+nLgbxxYD6ZH10Fi7tGnElfcnMSFudLrS+8PhT9P0G0txhbFSCyhg5lMll5m95zXOTYP/UQIAIV9N+BHsE++Ph8/CMq1DeucVkdVyUzr5paxD3dB22AthKBbgzkF0qux9mUom6FP8aFkXDA2Ndah/XQoohCl9febmxIVDdchRo71tsiQ8NjdQsF5BVmTWBNszifObjXX9H+xlzHSPb68aaVYiXqnQ0LTnDJizMXnVYtdHEr3MLNwO5WMVL29O2JP0EnEcrRUW6c95DLOYa8//VqfV3wiVVpqdShRW26undrTZpvLq0f9V9X0u26VVLur+OUlJYXbnjhY1iGFYA81KMWYE71oQ90CjJMQISthuRSMTp3D47HXgO1Ycn0MgD9MlqvfAOqP4MBXnf3tOPzFeGuB/qkuxthTrYUPYb0NGSkLhgIlSOIZPM0qKrSdrzeUxjAx6YL88dp4YIbBS8hjjsngBR8S/8NYSM+2O40B417izpl/oZP5TpJZhXH6RZztVFX8oKXFQnYoGR0CWVnt4x3di6NnUfnvUFNM7niYx7rGR6fPcjZjjk1HKNR+Kuq8tcPI/MB94H8FZfeIrOjZwTyEHkih4rDxIf6/iYFo7cwldP1Jm7q0JRNFoq4z/r3r+eD8qinvsqxrf/Y4DDznlBzmW1mQ0c65/58WocJPLXKJrlkWT82Pwsy/yyS4/W6z51338R5aXY3wDlV88gyqcUkJK7bc53wBt7j/pQw9uziXtJVXSMKp9juVZsfVD6k2T94fqdJQHe3hoL41man28+QLkM5QGjOIJu1rwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYWPqASWlJsgjwn8u04htiaJ9yxnCv6VIdtBX+ZVG/50mfqAqU5ANHBXM8a7oYBC8gIELqlHIA8J+sc2SoxEqsBQUtW4qT2c/2vGTAg+i3qXimSAwbKeZkmBBXeP1xDuiw0WR8iaeXRO2XaspBpXEk1h9z4sjNRhln5rkU7DOnq8rBO2n4/lRGV875E7DA/8HNXNhSK5nrXWk59aUABKJYqIyxL39VWUM7XQK6R8/luV8FFFwxcS9JyTtqYxE7PsTJT/0zv5LV2JB2DXhDShotr4NCXXFxA3EQNwzhzE+DZ7wdvFAXdLJgOUaPzAdYQK4QbDkSxAbmtCoYr+eHISoqWuaitTKpML20+zZKLpHzjIUCc7yIGv0oznabJldbho7XU9FsF7L839wQ7ssM3HY5Wl7g2x7DRciLk3is27aZ6/uHfdd73/TIuYJ6cPIPjNKat3jEGr0xrdP7jsnR4UMnAzevHyoJBZLK6AuXHoIrtQZLC53p9XH4W2d0u1c/beDCNNZ70BmGhjYGxoRbehZUACg9ipcpd5DdvB+wqPSEBej7SUMGtEEQE8ewCDujABvQBW5lSOTwAtahqoy9SqnHnlb6/InO/rWRg2mCjC5ydwZbS5Rpg0vREMoC7KEGfZlfctzXJI3CiuBk/nFNQxqBnPuRdmZIFBNpGzOvbmUc0LTisB+OdEp98mBrgYspRFzMq3TD6IfpyqyuB3Ox5TbL3fif6lcI0BlJfF8TFji8WQeKGWXcqJDyRe9+NlLjDmJmRgcp59TnLCtpjDDM/bipbr3fTdPZpcMAe6gD4DYNoWoJk6QJo2BNcZj76ftQUOEKKAgHr3B63eKC6rTyFE+71Tf20+AsFPoIL3/fdVdqY4P81mGuiPwicqK+Sa61bbeS+Gm1OgDRtsxdifikhiL/ISEzSTt9nptVS7HkC2ZGiI9K5RcW0Hd8jacSMALQs+ybNon550+7TaSmrqpB5E/jDOe2BjTbvsp6lG2ldn4khYmSNAC4EX52RL7Y/PHDL1m2IuZWxOZkT5xg0Hc9sQG87D9sFvG/Nw0rGoJJYVopFyKz0hHWk3gyykPvB9lQWfnwyfpXz1jF4M6A7odDQgw7Wk2dM3DmAAt8yqA7BjLmsv388k/XrmnT06tr05XKji0lpFDQP1msaJrG75P92AzPvqEg3ynjpqKhYNU2IxghltI5Zcx4LhbL9Echl4Z00DY2XsnnbLNJUaJ0WbiyJM7DJlKxsHznQ8Q8LjcyrI3dQQrCHqdRrzMCCDsdXHXNRpH4lt0ME20k00CVdXralqNXnj3XsnYrqZfJmvhizJhgZuHT1lDsWfcg7HW2vV3niMgV8+pB6Gne8WuUDr899D49P1W1Xl0RI1eBBlFz8bcKdqNh5sOZQe4xjhrSehmEIdmnoInyySYQihyqG8qC5MC/Pqq/VW1kf2UiDKrE9C9BuU7AjEmUSrUqnQnvXRVjJJclR9WyRWrXd12Uz8Vxw9gUswLzBZAReJc3bkvZpb9HwgU66fpxz+AZAcnbXjA9GUftDLz4QxIwkYsMnhzFl7dstSsEshVWFSAbOJvQVDCVut0cFLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmFl8NqrJ5rkCbSsEpF2dujuyKy3cTUdx1HfwjrjrrsNzy2qWtM9fOIXZULAjC6DKAY6qf2tIcBPnCgOuz5icbCYPs7mnzvd4QZxUt7B8ut1lx2kGXYfW14+Rtg+Nhly3px7By98n3ZoASahj7XM/cXwq6wiHWl7rZq/TPW3fD8K5VTWNI6F6bl6TOkcKxoR+Nkiu6BwkW8abMQ0pgxWCO4+QxGKcDJQu4xALfamMonX/GnOz1wk+T40ccObkVkHiSV5zCO1O+gjQkZfWB6joI2am/k2jJw613dizZjaM5llJgQ/sWONM9ccMtK/K2RYvcTIgjwGBR7Z6FBOkgy/lbPx9bQd++wv0v5d4XoiUWNaAg/rxOcZqWcaAD3eOgNwbxaz1wMaLxBOdJeuDxqfwGRAQm7zniomiPwBXl9mKSA1WEm68ipT3PHQi/ZXah3Q9o7/RnCC+stD6bhdEzU7DOvLUZTg3l4uOh/0OuR7M/lh+1JFzr0fw3ThUi3sRpd+LQRt0MaOtMtQtnALOiXK3eaxfqGjRnX0LC/yOCHknS3ZqcVvKgTo5gmA6opWR6Y5EgkqVMA80VX/4hS4a6spKuCc962Fs8ZM6M2GcOWq6ljSFO8xkYGUr8MBnlJhm9xqBz24veFKF4TOQjPbIDIltAmPQsadveYLt85gtd+V9igBJXQqTBpdscuHHRy1eDUAQyj85+VjUbjQ3oavSh4IEul6tQr4Qu0aDR+VTup2Mr4aBYd60YgLHFUQA81NfJ5D+FRXJCnc6MuAx2wdoiblxs17h5RZl3D1Lo/M083DI6N14aJYRASBZi4yd0C4jOxop2k7RbdkTiqKk0fnNMFSDv6Hx6ixOqGOgfDoViUs1726LZhbmxDtIejp8/1+rUB8SAHawWReQSb614KzIE+VeVrFf+0fbiO6VnoWuLRdUQ09MO3RehFqBOxyhTYHDUrYSBKrtu99D+vxuIhjOCEFXdM5hTNwnlw+mq6w0xnpbL43JML9MwsPEgP0ueEu9lzJHnThKZDRQ0MnhCtjQ8tQFayaWXoKU3EjtJTdivgUwR8kAJJfMYWTiVC48LKCe+4B03OWOCLCF/NaVi40AtW3bq1lxXrc908wKp7QsRMb8/DL6gtL8KYmEI6wM9cyi3vrM0vaLTOHfBUyEH2mFmx0Sq50X2O5RCEXqUypxWAie6A0jshixwyXP8TI0YZOptDTBHiyOgUfIqcGepuD7sH+MOkHZTtAgVxMmSZFWJa5myW8vWrh2y5xLLNhdVqluqpw900WqFgtwtEhrWMY4wiz5wA+pan1+Q25P9FNYveGm0l/VYWElc9Yy+pNosVbrPJ7njGabNyVT/0ShO04VR54J94f05C+EKzWlwVT2am/k+cyS+OQEASfEj+ptcZUx1gwokXVm7QoGidjBpbsx8dOpj9aHC0Z1iwxmDgIruEVbqy7sNO3zEUoOvEpdJBrSdivr3jef4fZzwxjUp5LxswedwE8QhalOXDFyDUquF5hufTe5XbnkMB2XjJdra/F2E8dLN1D3qRq2zg07PVqukcBEVUW0LK3xhqdK/6clxU6/s2/F2kt/0x1VRrVg6ZTkBfk4OzcLt/EFStd7s18osCX+/4SB1N2nk2miG1aaXw1YwuSFOkNKZfc4YoMD8Rul0XfzsMbPpIVKTa5fd7N9HMqvSStzOQW0U2KAh+GDQp6gue6NeJLg8PhzRhy8U/0hlnC1wqrmssZq/h280wgRv4hhJv7aenIZcSXHnpt2t5rdAM27MK46AjGlmv2D1TYsPqAvBB5oG4I14NmHpv5hKoDG5aa93hqKgd/jS6wBpLIACi8hIVrHe3kFBETIX59O3vL7tZO58RqiqchTJZi6Tr2YfGs6gnSDJOJqKhR/vg+l5/GrBJ+6LnDI/BZoRMj128OgQGkIRQHFGGlUFvnS+Lc/PXZ/4ak0MS6+ted6pjJNnIG+ETiTwim2bCyEm1iKywqrC9I/1QTbxpOkw7jqWggIMUh/CncfRbaLCWTOkkqnXZaQS3LW0+BdLICKuckMWK3oPPlHucUFrNJqTp0Jli5x/AFaD+Hzt//1PaeMNY4zorVKZsm3fldOjYnzGN138PZnAYFbvApD76Li+jrFynZqCzmyHXoqS19jz9mAYpp5vI79k1vG8KE16bFloqvT4gNpTt2JrPIiUX5GFDScP/ZbzoVxySYa7sVy9K9FYcQ+1PGjCJLwc2ogfpgZaBkdTPvDeLy4rsH2+0hsYyimGvocMRDKZCAdYDG8BKg3Y61swUYQt6qGm74+bvIhhgpW6SO1DWHDxTOm8T6bqfYQbT7VsLgRn+h8ojc1K2NSDftEahpa9SHg1DQ2mV1+JAAU7hLgwj8wFMuze40wtc5blNOQ2przH0SU0Gq+KF8zcj+V/BXvp00UkCkS462Do9NXsnFT5YOaGPHPLs6i8uh2+8GtyGxY4ZNOC/Y5e++m23NJbDlkOkV5ruw2qkX9kjc524MCjrYIchipCFAKI2uJy1pa6DZ3KzEdZc2eCaxzMhpclk9UDw22Nl0IsgKROWh6BF/VdGAiogVpXOwOiW5lvXty2CkhqUxQyffC3hzYU8HVZnNizuVh9hqk3rjaklpg+rv10Xyy/lkJZ2WXydUKF0bRqha7UNyPtITFWr6cn1JBmDXfTMhZOsoI+uSn6nP+6RG7gzdHLLrkT6joqTbFiML7uUWzvTpFGmEnusJX7p/B8PXAdXUbUeBeu3D6j4/bV8VqaM+OV9fSRcOUxOakCK0PFEOMPKssk4iyXhGw4vY+2v/WEfOq0v1aYJmKFDnPwdnsrXliluskbrp8Y3bc3dEZ1ebd5CItgJP9NCLndXpfizHleBA2aK/NlP7phCK6LyoYz3lpmlwdv/um2Oi2ooNO6D70nVDR09bhlHkrPbtzo5TQkbT3hV42v61iDvnKOxSMSz3bfBa0w3clwy8ln9X6/gB3O2M37yLn7NBQWXwGaDnevVyUQ4gplTecLB2403y/CwHy1vlc/heOWFoSK91efhsDwj6DtxTM2RZgTy4OcRBKev6xodW5QzOWwV/9OuA+ZvfPvqaOhEtReE8G9S+k289i3UFpeTMEFHd/IF1A+g+bbGIMsbTd12OOT2jvOTlXRldRpVZBjexm74VMFtuqhJUcQju2BwrPlvbQt2b1AeySAet37u2v8i0ccVFB+AHnAyTt8xFKDrxKXSQa0nYr6943n+H2c8MY1KeS8bMHncBPEezwfgcgQ4asKvF2/mBOcJN/5n4gdBtiUxypzpAH7wP3EtIuOv97Tj3CK1EAHwDkov72Ovr4reAJ5iRztg7JRf2vq/7R5mBwQrgCKFMiZf/a4YR8CenlJ+X3KG3yg8CY14r+2AvkDkbowM6fM0cKXWpX5tc+XdsW3q0rOKQo+4IsFLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmFw7+TJ++GDuCywfu2xYKUWMG9n1lx9hpy7mz0n2T1jGdTKkGbIzUPc7+u8xV24NyuZPuKHK020+WCERYnHUDJ0OZRnc5NZExcjO4Y1jLKNDlgCE0je0B/0hkCRu82FML9q1XQ5rEDwitkFU4N+ca30RoCpu5V1lUwBEGQKhsYVbWDVCBKKiozyypPpniglPbC2zr48wuReC+00tP69cQ4QZNGWe1mANcx2zMEmSabJyPa11gftuK6Va+Btin+Ng3zdBWxKJUsOQF9wSFruKca4xT0EWUPQeFBK0x6DRu09VN5FluLzFDPtPpJPd067Zj6S4n4nTSA0NnejM/h3NlZNM+u0YzPGWCUSlPoevKC5VoekzDMWtEUstl2Xgl9++b0Hw09qBb4f3L9gDRlGRc8jD1qzqNPqjhwAWRUExiuikBQJa7Vu2fK6ehKwVP1dONrXrnJRehz6PtVgalfrVQXRHJQ/Md3vrSRc5+gPbFEhhhJX0kY5heTQkbLiY6cuKbGAXtM4Fd37GKwkyZ5hWBmNrcUMguRQXKa6UhQ2O4KlgxE8K5dRuNtI//L+wjruxcStH+dgZyGw1UK+NRi0B4+Ly1JjSjqRKIEsfjUXqILhDALK2AZA0Fv2FDrTXLS2U2LEEmsNVYzI8xcWKGq+zFJeQjK5k1orAqun0dMCBxGfW11i0grB+dPpS0DKQ8YORpnpba2r7PCJROHkotKpRwj/M/VpzB1BSruALa9NMxL8FFoVgWX2oH79PQCqcHsg3RngCClhU2dLudyGbvKZXVg9w81D/NrHyfk5XRSiFfjgmA7rYGsGTTJbJa/Mmrx0zCvoqrWcHszXJdkp7MzKhMf+ZBwyDFs11dmGhN1tIOVE0iT/I7Mdlomj+cnwLn87Gz5pk8CU4jNDdUsS0CFzfTnf01mW5P9v9SJoUBgKbiomHi8fL+JeSIiZhNWaGMiGDfxfokHtm1GFpTDOuen6J74PgsmCoqFG5Xm6nBXuEAQg48P+ivXq1txxc7Vn9V9leWxyyNvyAtoqQHi9Vj0a2CKCnwcrMolwgp6lt78t4gHrrfr0kLAfk282r7K+lQ/WGL6IVcxqZhlzu45LCMTQm0K/2t1h0O6otPFPVT/H/U8TTHZWGSBlmGN4bze5gjWZnvCbfsx0TbIUw9KNiD3XZBcpl0kt3U+vz/zPvpAFiLlWpqzqRyM0+aNVec0nvKiV54o27ftl/SvXDpmxaT8o2sB2P3dBmxZH5IzZj1nSUtQv6mIVRJnX1E635QaYWEg4aGfOydkk0zQqJL+ZQEGHICx8V2Ul3ikv+rTMjeMM2fjAZgeWEmTRM7j/dMWJOlNE4ifyRaKwg/f9Jtl6GEvMmtV96RXmu7DaqRf2SNznbgwKOtghyGKkIUAoja4nLWlroNnVotvpv+EEh9v6JfZUtLSL16tAxdrjZ+vniXdTaUNI1gFHyi3e56qbf4VfmtHCGOeCCKmdiEzY+o5LDcM/XlFgmgmxtZ9fRTXg7veP7J0EOfHaFNh+vXvqjGbKXsIt/5lPEUGjqy6PPWPYdSMDjGtvzfb6V+a0ZuuQcZkrdUdzJVbRgzOqlKWJKyzxJPcqBuaOuwEA9FZI2YoGKMhX8u8Z3M2MnLJrMOtPFQ4Mn1YRZD89dQxAXd0wh7gKObdjX+sHOr9LHy5I4g0lHoj3+RXdgztwfyqf0dzPil1vIqoEXqWKW6yRuunxjdtzd0RnV5t3kIi2Ak/00Iud1el+LMeVwDMOH/g/NdzcDSx/0pjYCX/iLmel+zLW1okeCvIHswu59DyByVtmep3PQVdsiOEQz9inCcKh6LNJ7L39f3TDQK2dPBtejJg660JMAGt6kAC67ocMOawB9b8EMs5xLVJne04dncmLkWI868mdnb8lblGiQnC/7dk3FRKHjeegWsfIWXMTCcfG7lwVir0WIuEZcMCrbaWsYHjTSoiFFzvcvcDWQB98aWB6ca3VjcIB/j5oGnllgUpJlwBzwm+UkjY4fcgKdHNMrvUDe1opzW7nNHlpQV6HFGXjig82dAqxMc0MeATnuGvDV3jjj1xTzJ38kv7UycmT0AKC5T9Y8cAs6QSlLGxGzkkRPedz6tWc4HFh0a061szi87gSqH7qB8rBeJAYC8tjZxEUamWACQW9G2K1k4cDmISQZUl4S1bQpyIKn2WQIUIxbaiw9kwxPFR90Ghc3pZdHoY1IIKhpDnQ8NskLd7/uhogkaijQRrTac9o99HXaXsq6PK9XNjz41g3+IvK6AR1OHcXYvgzGED3a9kvJm+z8acwKm2yeIVatkYuI+ppxf/wJFmmTZsynJiUaDNvPkrb9fDYrLZtIqL6CsjCmOOlzVHxtDIRDAcSmXMHAA2albc+QwwRSB6suOFMNZ8gvqWq2VY3u5O7wlomuciloerkSiig67dX8TYRp/LykywqAbSHFfuXIg12g4pcphlhiYZo9G5fPVxxKgEwXPsmWbKqLZ/9IroW6btw5lyz4JW1ByeD/W0ReV6P8vbSz0wJTUvxvJGmDrLNBdgnxH+cCV2tnViCUaIe9r3hSwJHDVvRZvdjFMUPsOgOtVeU4tVHKbINNaiWE2wBGng5OVOf6fCwpoAsukXBBry1ZXXzJwPMFJivzwUNeT6EQEksSoFREyNkxtfumwd4Q1SSXQsj0do0SRf8AG+2OPhmjuJcfBHic+8IXYNkiMw16pBy/nuxEdBfD0dSZ2qyFdxAMYE/AwZHqaUguyGX/mocUoeDhjztPkHeP3wZfYlPry6pDKJIT08s+OpHl2kWRu6qGW3h0t6z2vxZmuZkUZAwxNW4udWGd1nGJ/+RhTY/1ihK4InueTztAe5vuQiH/tHXMzsyMJcNm44G37FiS0UTad+k9zVUSMrIr59Ge2tm4Ny5+0yIycgHd2qbqT2XBtnQ0vsIejiaZRgC/w4l0E3qOCwwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYXiJyu/isGw95ljnxL28NGuU76Ik7TrPANKEuj+kMMHs6/epTM3V2s14U06KmbdGWDZV0amd9ZoUhSsutzYdxPAh1w1XBbNm0SY9qLas+rLSWOyVQItjJr5rMX78gN06NJ/QFXgJChguckUbGzM2+pRuS2ndr9excduswXtDsGvFcy0WlHYaktWouz+rJvZG7RTBOQI7j/G6IkHYlO5sEyGbzx39ksYJQlJlXwnFkirzTF6sWXtz2kzailXN6hTQYP70tSJ5SBMF7SoSjBaaeG8eNnkxcjBmfzYhM3yFdErE3HttSS7Io6sCLnChj2iWuM3AEbxbRJBnK7/jo1R56SPtp4bL/G9luRhjuK57UWb3zr/fHgxA3PmTQZLlUAQEWVLUCQZZ5Z5VsP2YngdB3p4FFTu3Iy/iDMjhJwZ8ChPjetfZcS56wDjTLjMmvZ/8aGIVKDrqpwEnHuPs/aikmVkw5hs5wuJqX5BgcLoDiHeQXDPKiRbaw8eW9hjoNwPIZp0DJySz42LlXI1WY+F/CpX7MtwYjp6fhtVLj+WQBAOyCzy4jdzINp33zOYq8qB6BO+tQUQuENnikUUCA0TjiiHFM3CeXD6arrDTGelsvjckwv0zCw8SA/S54S72XMkedNfqm+1YuBymSptUk0E6TupGZ7a6+0taREOwhE/OkMdsJdPEFa/HG5Lc0zR4JovW5xx6/p1m2mB0Raok1uY/TsCwK0Ovb8Jo9ndMQhfjCQ7h9aPRKMEP5xwQ9Fm9MO0XHqkV5ruw2qkX9kjc524MCjrYIchipCFAKI2uJy1pa6DZxuncGdJco25Rz77E/aSjVb1s+kaiwXn/8uEPtL6drNSuFEW3XTyhswGrWvWDX1jEDwLkbkiPxFgoMsV0JLoaj7zYxU9PMm8PtYiX8vnYXNKmgE56Gkwd3AFoiEQBWF4e/LM+gClrCN6piUYfi6ALlJWqPCuAhiy0EI4b92cQWFJxpg5v/k6sDfdvayCTaWLegwvwCU1YJ/fJCL/GJgivtDm5EcNCyWkVPY6Xyn6tykob44xn5J6rMRO/T4qdLDHA/Drmp1fSJNy8n8WHvkEg5pIHUOH9cf5a7wzR1FF/ZZsJAghRWnzcnoaVqaU99Y0tcKRjjtDdnXKHkhOOm/sjlI8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3MlRi2AnBg1h4/OvfrPekqjd8RQLhWAlbpp5SqFDDHc+YN2Z+wi0E5nA455+kXLiqKFPoj5MbAIq7mEAtGWMBzi0XxlTRvFGYpheRxZEJTx6mVd69lvG/e9wEbR8f6ZA7FADA0JGqHXHjWcNZz728UQDZwcxmVnfw/pvD3ed/1cyXWFM3CeXD6arrDTGelsvjckwv0zCw8SA/S54S72XMkedMKGpPZaJsWQLtkthMAFO9OLq8MhyWEzfW5mnLIfHVqUlMk8JOe/H1rxbVrdNXXwQr/FWsBscubQ8JJ5DEgYeoR+AThQnYk4SE8vV8oZrqpnTQmmgJIel5A/PqTaYOWatEZmpNkeQsfB6wC0Dtbkqe0XvFCPLk3meUaK8fkybYglg5gwgi+YXm3WSh9AVo7LbTBXgtUQI/tmKHxENt2AoRxJuXKEA3CZXEIItzZWRRZVISGxbTHw9PMcJtt61r4vibiyjkLcd6BcK+4LnuiS5HoLbEKE2RYrjirkuf6IBCedXRUs/DpTCQ0XnOiqDgsdxDyeRVd8C0cgvZHwv75Gr8u+OE5V/aGSb4Fi+cXcx7Xbl2Dk6MpJkrwxKfhTiJyJ1py8cbXJ4newzA9n6C/XsSFMAdkWMXh6SMNppZWKEcT50kwGbjAtmc0J/Czd2DSun/NiXD49vjTgdZ8yH0BG97+5oGBHxlR0XOo+Ul7Mau2CCXWyfoLXXFHm2isMd6PRqLk71F0SHxWDGtQT/npdVoUaOHOklaNqxGRHr7/mcITaTSbu6mLA2s6ZePWXyxHr0Cq6gtxN4n1LuRCVRNJ+EAyQBS7YduTJknaeXEFL4/g64tXLC3NUkP/V4yM21o2hGCsMr4qCZE8UiubHm4CYJ/JGQZjb9uHTxIoBmDaDTx2nDlg1M20IWiNVAt/6r8WlcpWGPvRZ5sZtLYq9Tag1xUfhcOikKU+WM9cizC17QW/lg9tKrN/yFV1VH8fhdHziUbdJ+yfokzUPAwlt5qf6Q63RVPBBesY2jneimKqSuLS344o+YRW+hCoO352kBQb7rKke4q5S85mQSE+i8IAHA/CHMRcxORgLziTN6PGeecxAkenaWjnfMjWeclnW5ZBtEV/xDPkDAqPtKbGgKpvcflqBf1E3LJZbmE2GzDnil4vfjwd18dn75iL6AvlkOmipsYEeTJU5LMZN54MbAtts06dRyvu2vwAVwRnK1ttNLIVW6rAruR2InY/dXFRQimh/j0dNWQUJ7XfQENQddFipytiHfijxpxal35UlCAk8ZIzSe4ewuPJ5IMQKeTeUbBLi83g+HInwZ8WLM/dxcvXhoMwFkfImnl0Ttl2rKQaVxJNYfc+LIzUYZZ+a5FOwzp6vKwbKlK2p26APY69y6tzu81yvpcvNNU2vHD7ywMoYe0gjFN50gwAvWJcf8kvl4c3PuhQQheGi3KLd2fKcjnDx/EusZZ9czTpKDoW2rOKUhSmnMqasydyZNIkEzB8jer+huKTPHgjB+e1uIE3wv9kkX8337DsN4wiDtl3TPb/sMH/pdjYlHC1sdO+TFBHFM7sC1/MAhfw5sbqm+WW7NNXKxDt3FGTAmfFKyW/2b57FVJvvbmOb83FGvWjL0/VvzXerQNJgj1v8LWoXM/UcNOE55bacOk0SjXkSDLKt6QYeP2v2KgCaoGmV9dtu6dSCRO+lPkOm1gpZyaDkkJbjTJ4MSoB04M4RfEJC+yv564qjR/tMdjmqsQhRcCjZAYetuHW7wn3AHLTyY9d10jFCcVZSZFT1cB8zQeF2lF/1nHoagm4rw+27gQS6nh4OneBYxp5B2Zy/k0LzWln2/gap8fh7DHwK3GwdqjJ/PrfersLZ4L2aEiAp8IoXSLJMFJgpSaPHChCjG/2UTxwIg7+l/wN2hSzGjIBlydat3Plt+j9uV2jiaRXmu7DaqRf2SNznbgwKOtghyGKkIUAoja4nLWlroNnxcQYh317qRyx0thzo6pGAdbOugyoVj8pFgaAYQb2m/pnRHMk666xpgLr7IaiVmxIPBdYSum1afvUW9kDKbA/OnTWiLInwOC9J9O6VahXDDTApyKiHMGgs6fUiDFo/pQYqbCL+GS8E6OrBDtkaie9LhBe6WFF6c8dbriwQ57qqrxhWwCZQeOa70AWxf6R4UTyLwK2ZQE3L4sg/O+2uBzRdU7DS+MNkWsnAfijCV92YClf6zIpmWOnhyC0Dj28fDdtjaid+vGW2iCLg00bZdtxmGdPT4lRPes9N3dAMEquJ/ySu3XQcncaFjIlOwLAez7UQu4GDN+Vy/HoTdnp9dlqiYLupZWiahwUchcCA1qbCMD6ZPinV0DjMVUBCWoh3RcoXTQ6vxZFtFki1wa/UEtnQIM2xbfelfkU0fh+O+8NYPRZzLzYOJY3outozcOd2OzqtEAkubFrvKG5LSUhHhtGaYeylRgpo8kB2DHUJVe6aYCWoRshnYIAUr4/CvXgrRlL9N6ayjUbSUWJXfRwFgdooZ6D3j9ZjPDeDOiKms3WErytUufjvfYzaoHnImOPTAx9CGC+OvI2gH/7Id5wSvrtg6gbCeUbADLVm2S3Q2mN7j58bI+QUHkjCtT4avrvHY8TAJ5gBrCdCmmN2X6z3i3ENobYnL5G68bqVH9WRvagmztjqIX4mNXCPAVeWr7MAGj1kIhF4SiIXYqyxiI555jhhIqeJe2mupTqoAORHZYn9mysNEKnJ/D/5u+b8K7Ol02EFWT6mPyUZ1SFrnQwivn4OfZZJFKZu+3RRRqkIz20yovTRHBxipDf9G0H2wLM0UVJ06V4is5Pz8kagt/oyyUX62zBfvCNxAADWjm6hTfF2Or84VryRutqssLU4WDicJHtEXRrtZJx6MJlb5yvfV86fOt3SOWwmfBzL4V4svTW6Yn5+fzXaLdsV30nWhx5eLDSc7YSA+Vy/T24IyG12YFQAv7o9K4mljo5JRMwWyEcSYesWkwdM9J60PYjMZNRGxCrJX/w8ZR0o6jCDGDI2/jFp+GtJNuRvQzQ4UZDRm5ujTLMqH78qqJJl3ZmHncW+jyWGArCElUlRXw9ZOg/7rArQNS+Saxqp4sIbP9wD/jxdyd4vtElNYNVYXfonq1yBM4qljHnosOX1x2JzZf3irlT7fU4iRyN2wH8Sw+r1U59EojsGPTqteKaQd6OlR9ZA97vy6qlM2IJbEq91zOb03UlSLMNWC8GRKvhmUwsxqFeoJgGW7Nowr5h4pDg4M6jMffWstMsnycipjHmhgFwUbp+fRRrIYbw+6Y8y9XOKbtcyfJHeOcWnFZVn/+yKO9XQWUFtSYHmU2fLdq+usaU5ncH9UrUTLJPUt+VvK/YI9Ph9YsaQL1LRkSqHufw/81bhjpSn4hq1xVZhtnmTPGDxptdiE19FAOZ+ZKGZixucCo6HVTHQwKM8F/nFUHGqlR1G6/b91OyYIeQ+XrOeQpJ2JguFlx3CRnTsHDC89ViMIkJJWJKt74O1KjmVI+90Kq69IurWsNVM5a5nQTHZK1+i5/9j/NZYnTptLlLMNH1Nv338e8UzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR50zOBXyqLH5sDgmIu7e5pYxMUD9aPnqgBynbO9z5t44bWOg0RRyRAygr9CfWwj1+ELYGOh9VtA1YAQGkAnvx6YGjI8l2oj0p2V25LYDpn1FPVnuSN/SCwXu3Ha3Y4J1Nx7Svfu7FxmAE/mkwkTPxDcjm0jTKbhfcKnvX/vdsLTQbmoYJI/MU0q+VuKdcUoKTHr4vq4KkbtxGwKgMZ3zaEJcQGrEHkCiWvkn6eF7cx3F8OwuAdDw/N6DulqFiLUcvLXaPD3bHtonEeQ9FpcSz57VyEuPoncauSekzei1bQS3t9T58By7nEGy41fsq5mTWQvxrMDPhedFfJEXyvxQYSOH3g8qgNaszX2pDqo86kpQ3w2rE8gSEnMUOx8dbfNZXMF1I+YIUTKnKwiYcaropywXyx/OgnmKMbsK45NfdswcL29beoxjm4ngizAU31TFOgqxwtZW0lIb00USXOs0V2EkylLT0B8KK8UIFzkogFq4p65cd2iW16rE6+VUSSvQsUDgs/jvSzFDbmtZzrONIbny5rGl8lKr7Cd3FbL4RAQlOggu/1y5UN4R8IwQRwo0bscgLBSzxsiSHRsQqPgveGuJuVk+rTb1SeGOFEKmgA/LWsVVnAx6V+sy9gsRXWD3tQzQjViVcJsH+HOnbrA/AnnVoOMU7DEBD2m/8dhnn32DGc9WQw+Tape9JnuHvfkEV0Q5yTY3xKAu6D3lNjS+NdBpVcTPnT3UHXHhNxXvEJ4xZg/8bOswpLxbg7HV/vp7886TMAWChYQQAd6Sw0MXnnvE+lSSgrgi2Q43NHvWn+Vc3nDLx0QP5guEa8yvTA3DhePSdD7I+K212eoKgRrGlVj//VheyTtHLCPHCCsCHCYde99qdZ5k8U/faBYce7QrduDWtm2fCAIGygTYbeBYP90qeFznGOlqdgu3nfT4I7oImh6nQc8kshgLAjhsWqWj5igAhejmd3p1emMGmql0TT7BsZ4TCg1gLJtGBSVncyTHr9Tab/qAJrqdendcUF+wL3MBLaBU2X9TkRlQSzhLHn7Xb7USzttOwj2IAmx61vQrqNaGLPeIUeTyJNYcH4PWdy+u6eZYux3ZCpJxB+unNbZJn7lRDXuxijlA8kYpItCiJf9RTtzKJDLVZXugyfujUjPPfrAOS1m3L7EE3sOn+Ih226HY5UtxHw5Gs1rBkyljplYhifGmt6dcZ1sovppra2NJonZ0KpFshbh8h6YeGxzqFF3zC+2mDNWg5khFEP9E7lyPAEO/4vfKOf/5d9fioe0dXJRDiCmVN5wsHbjTfL8LAfLW+Vz+F45YWhIr3V5+GwUP7ejQJM276/m+7/OiA6vedoQ9EqHgYLZvKTItgFdsc/lQMgMtna/+R+QTYJBRaPYereFF50TQClrlggl3Gaip6vj6DUQw6STjS9TD/l3qjMwAycipm+9wmB/YKtsTfzhSRqJlKu9FqLYKhW2R1hRF6r6+mYc9q/om88Yhn8UZ/7NFrule3E9QDT6Rqta7q+ZZVPvnODxhOR4N2Hzwi6yIcf/el80xFUIaNacG9vWHbxfwARbmmPJyxUGYVGYdYJNxlCeRdReeQs1HKr8Xry5B2M4wHa9af/2JYID3qDvDpIQlyu1TynRky61i9qO5ilX+Ozgi5XFErhS6dceeveLckdT+AxlIgfnUA8UQCPLFdYyS4kTII0yK0BtMJr6EwKOpReBk6Ds2Bbo20sy6ML7MdDAfD+ZO7UW1IXYA28ruLmVxf4g5JwU/DgR3xMN1J/vqq+Ed3su5ScmGpuFxpZDx6ly0pavaP03Ahbh8NsNpCgFd1D8ft/bDYmGeC839sApFea7sNqpF/ZI3OduDAo62CHIYqQhQCiNrictaWug2fV6bAuDowZZafaKFULzeriocsorBnLDIJgOeYJCqTRzE03ThAzJ8e/2dD+3AFbCfwJ+5TzQB9NnmLxDZX5kD/zNSr/amvACgZ3CIE84JcKJbaHxqpTSpg05Ug942oHbwrJbaX619tHS9wXl0T2DaWvLhqgc2v/UplIPj/rEkF9Adwl933xXTXZt6DP0QuMGYTcwBdpcEuzxQ+OB3T1a2/P4SMhvAaF68pbDAmTNWYixtZv7anP3wAEkCRQCXzbrJzASf+mBT5kGWFnkjgBulhctSzdrSmLIcJEV3XKyZAzrU7fMRSg68Sl0kGtJ2K+veN5/h9nPDGNSnkvGzB53ATxxV2ULcsQMhWApD0YKMpuRBhZnTcLPPK4eCzStlN00Anu7w/efiL/x3ZCkW2Gj8lnzrJjBdcy6gs60qkmyZGubYpcMNCXpBcOQc1Nkh9prADdATMxpN4uj8gf5tvhSiBCPEUGjqy6PPWPYdSMDjGtvzfb6V+a0ZuuQcZkrdUdzJXpD+zSZmCJoXZ5Ftqcbk7FPGI+jDQPDp2ylycNmdx5gX+5G6qKFROMp6e+EwO5H9UOP90uUjCzUyyT8w84CqAo51PJoU2qCyl4Fm8G2o8HVuyUl70Y8B8hLYwBvj9JYUN/QFXgJChguckUbGzM2+pRuS2ndr9excduswXtDsGvFa6zp31OjLKAzptADp0/4yT4M8OfFn6TZLVgC+LovuCDZ1sxEWGkaf0ChhX7OJoA7Ga/2Ua1gUcW/wbCfHSGdUjisbMynQSqT3+vDdN6qdswfBKfQirWqJcce+vXEmJXZ39AVeAkKGC5yRRsbMzb6lG5Lad2v17Fx26zBe0Owa8VAT9e2Nrymi0TEk+808ZHH6C8dA4jBqN0XfnixQgcjBw+YqKiz/MN9RPn8UCf/TeVlBM2nN8IY8e2S5GXafqRG06gZGoXufEvf+hQWoSYoabQum+YT6DIoRATHvGxpOpQ51CEN4zgWtn0G3BhJSfqSvB/IdjPqmUjT+bayQSZF0x/9X1T3PonBME0iwGXisqnWySpn3fy8PIQ8aWh7AllDmHgMwHOfXPl8pUxSZIMQU84Dg/AkXrcVzvUI6sXd177VftPVYCwbA8blg+dA6XPIPGrjwEOwqtG0Gq3KmcbaM6fJTNPjoOeLWgXtxa92QwvLdr4tF6IJiAaIBGoxhbaqcj/+SkeQyNbZfAngahbAA8gNHc9W7TJMR02XqsKQN1SaGLPeIUeTyJNYcH4PWdy+u6eZYux3ZCpJxB+unNbZJkoCL1D19WUUkor1D9R2YXZDUYJqthh+Zg3iNK26+RI8piKqwYtUP43yJrRJ5o49W71QWSWKes3Zn1LoNlBLYaVY12tRBJfBXWhyAbwK5kOdI6e8bAzWWFyWFDKZsT1GyDRIuuzXmkwm/ciqrhbITQZk1GpP6RVwOypQHo31nhb01Sq2WGJ2eZXsMR39SgBEturE1aZIBXxUk0ktN5nQM/9ojdf2CO7vtJpBTj6x4QmjvjEM4QIdPS6s+28vee+4jmgmQQbiRpWaORuN4kd3Vn6JD1Idc2wewJ296JwNVXfZceL4O0dGJwYCpAJcNQwItkiHOLzL5gN8xIR1qUGPGk9Fv8Wl5UDUhzYd9mfcATUNc8JbiwHUB06qeh3oIB1kAJZe0vdicpYEY9cIIataCyJ12ytXYuXe68oIyZ/Uasc7s2STyG8CNaPW9N4PW4ww9lMR5n1qJ17d+I4IKnyRv/Wxnz8746trUhnR8Kwiggf1U1J5xOiNSCnWyfz8lzKwiSmuq33q2TQk/uZ4vKBXe77Pv/dfr1jUFKe6FwKlkjL1X9AVeAkKGC5yRRsbMzb6lG5Lad2v17Fx26zBe0Owa8VLjZikFVra+Pct7z1S8yG3jBdQOAvYATtBixrlIL4QjjFm/IEZr5ut7U47nfgD5Z4+ucwHVgPcFGdNBfJ8/rSLUmd34nBM+64TktFk8RlTGU5tZOtuIzcs8dlqL5nf/N4KEPJBNOeQLDOPMdh4v3vVSL2Vt3NwbJgx8QJjtS1sLy2dIJqrd3fY4lBsk/L4UCWHUeumRZZWN8tnGvB56ytt4pGzlp3U4kItKv7dBHbFEtxBHZVCKcCM+ELMRi1iDK/mnWOIdME0r6vZSOhmMnGqxlHw9ypBSo6WsG90s/lqeTzUhEqM8uIRp6XPMDP20WLOgIZOjOsZ/vabfhJ3Vx904yzDQ9OK7BtGHXmBFVn9SvHi3lurETKE7tCy9b787n20+RLZ7u3LzGaZWqfb2mvxZJJeBEQWcuCnatddiDbqFXEXNKg5/NfEKaRCyIUrdfFLTJE1CogHBE0VKcaXr4ILGKskcF+nDFLR7n1+Bj/AI5UkvYs1t3gs3ZqGm5PMLnYqIceDAoLKeLI6gitmDy0+K47Ix9v5XD/iNvjc3QNb1W/5hxomdF7nqpGMCGflCJ5qs8SdZgPnTqKAeTNhXBzpsycudM3GUHNSDswJNr/A3Zh5hIMmslHddk3LHapPNzVSp4BF1tG06YFxDTZhS9V3+y2qPrpZlYEF0aEnE+8ARkUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR5066q7S3shilD2fk+1cP+tZOHKsQWE9NlC1UeDERXVnoUV7hxHBbIrvPhmXLnKbCs5oA4Qzb7pn5uAdaDFd3PFdboVSLUcLcqysx1E6PEXT9sh20FqLLt8pEBE13Lf+puxu9EnushKlx9n+9hyP18M5Xpe9ELKjOR9Zt+bPIJbXy72+uB9DmslzeR9cbO3VkDVI+vNCkDysu0owNqK1FUiHMFClf8dskKYBDgYB41X1ec37cohEAbnPuI4CSajBMj06vNzRO4xVH0P9vFkc1hQkgpiPBV4gSly6IURAsCLQk/ZVcGvheKZGiIb+hlzxEMYZzLK4xcDlYdxfSywYSDC7aNWY2ERUp3qeZqVhb1TCTyJ/JJf1a5n8FM5i1SEaJMBF7SjRjyx3qCJ5bITC0GLUwGva8o1tn3hBBjjjNOtJs+yIXoGgBT6Zoo7q9KjyddtEzfz4JqQ1xUkufqbxAslUbR4gH7cf6AJAZm6/EEpUzdg9OA2qu0cGytN/zeLwdBgU7fMRSg68Sl0kGtJ2K+veN5/h9nPDGNSnkvGzB53ATx1215Qdala+JA1CxuH3tUT0hWuRY/440wfM6iBq5raRY8k7KcKozrzgNxVI8vZl/MMCqhet2dsdbMw/WDhpQjG8upy2W6tfRdCNvQ15iKM5L4L6+8RUDBxajf+Z+YwNC7PEUGjqy6PPWPYdSMDjGtvzfb6V+a0ZuuQcZkrdUdzJVjtD29yGJ2MZOyAtbTvH2ak+jF+G9UtZDscq4qeCnOnb0k4MVhKstugiN3zJ2XMfnAqgw1SWfCvBZ4TWWNSXWFLEck7IB91TSLBUWQET1JvoXrV7T3wI6SvL56dLUAR3Qh16KktfY8/ZgGKaebyO/ZNbxvChNemxZaKr0+IDaU7XYMPr8+zGMSp43yQ5JFvDww4i/9s8ZWSp6w1YTQch9UJH9P9C+ci53mUKcpFxCXdUCxx2EjH6Y9+9JgUqUcXaBQ2Ve4Mx6qAsiSyFRfoZUxBUYu+lYxFlzaVnEoFw+sTBLZ5ZhcQy0Bq9Sr6VDpyUtCh/HLLh61LUi92ThOUXoF6PPMyGlUm1iwg6yHYhTCvThF6Obt/4g5a8IdRwg3HJs8Ho8Oglto52dDMwpXy1yqC2LY7UI/FvDAhqu1wcme9+1JG+zsm1dtWlLAai5dvnnURUwAPCUrp64X7ATfx3vJTt8xFKDrxKXSQa0nYr6943n+H2c8MY1KeS8bMHncBPHCCDB7aeZio5SzdK/CMJa427jJL1bOQWTl4l6y9Tz+wVmVW6kB4OXUMQOsDkoRyf0PCTeKp6znQrKP4XXCWLd1Crn4dIMrssJjb3inujCd5ct7iBvb/H9WWXGihgezl4E67KWp8epHffznbLY3m98+4uiJfzuk0VR5DWd2hoUsIXr3rB2Ci/R/IZtnU0KAVDVdNjn5UflAXffVV8KGyMaAy1IGNp7rEz9o4LdzgzZPjm2wyKJwhQOqpS8jS5Vqka4hQYMM/6IFHWHOrXrwT2Y3XDfVZCjF5/ldXSKDoXHgz0ZPrRNGt7WGDfDMFkhRO90uNaO7XyxSCM0w1dZ0svflwT5N/SPlgV+PyoX0QPHypLnUlODGWXdSPGi5Mi/3hVtCvtgViNZDaJ56SudmFw+dx5RB8MrDxQCukP5BeT4PSJsEgw/Yhs4VoihhD+XIdoBwX5b9Om0NtxIrZ+ycD/KAldbfa13mPrl1hrGznF11y84hc5u8PoOUWxNvMEgV1/eMy1N/s4RgJtxUHVg4uYvRpbUgYxaUqh85z4Dkz5iP3bchdIXD/qmV26SovdLYmNUU0gSR84LtmX+9IgjCrYuMOSXpHofYHcM3LR0p6RtwzPnqxLRwBsc9mpN8O3vu6EdbzoeQWkB0gX4EVUOtX3ZJIm4OzeIrz+HMGaFYSDEiYeSVNneAoLoSS/e4mWgwrptocOtWSc2nZ6NDSsG392mBf+yJXmBtbevCKm+5+4ANBAEOCKLAw8G/Yd0PoRjVICZD2pgB+zoqCWK1IkYHjUsnZw8TB6h1AXyTnVoEka/SKd9dvoVMY1QoWdyaC4gVvNXHf5/2z91naPz7/b/yLQzWbtORy1xzdzVBfT8oFYUp2UL8zVhEoyrkAtZ7oMkFHROp3JISzPF7peBFeatc1Ym5uvRqAtiiKiUzc10AdPnT3IHDPje6YcVuJIDvX4JVs1CFrG/9J33oIRZ9zWRGeGQQWXitANQx18YqZRvWkw2iiTeTUxC3HdVnSywXF1tQDb4Aa6+cYJaxQBzMjMEDGqRCLOE3uahCjVvkF90LGWfWs3ODw+lg/8z1QuOaCnMlTmhhhSecGKOgz3uBpcjPEEU+0z3Ibo7HvYzR2QXQas/e+JM8QL7reaU4NHRjUi+X2D5MArhBG2jnjWSOIW7M5iv28/4ry/USHib0MQCAZoV1YVESActWIN4M/xXfS+ZPMY+Xz+PmJISnhZdGOzbgbmp/KVSqtuzKlKj8ve/PF195Hk9BYFor1RuNEqZ9SfHt0/TpErFd5ywn26RtF9g4oFe8P2Nqop2aBrF3KmfRaDObjnybhzr3jd2PXuSiNwS7VLnjxvs7ZuMASP1to2aKxka2YO8maiz/Uc6wwsKdrP3bYU9OoQdwRWSQOdq2VEhuJu2FMU+iGGf0xqH/XL9Xehelp0cDnoRoWbAAcASkCTjNLcA2PiBSaO7eqebkY/nmHLDGHGwQLpCKYvq67npWi34fl+rsiTs4InlYSlcUqcGk2HvRzBHNeP8vg32go9ocZNS9UcsLC8ZQ7G6EyP+4kfJHtgEgcrWtf9adHbm3V+FI4CKKzgOR+lY4YoKfx9aw/WX0B4lxV9IFynA9idcBoWtz28UBd0smA5Ro/MB1hArhBsORLEBua0Khiv54chKipa4pD+x5mNk6Zb05egIpKhDcZh9LQPQRP+fcAxUJGJDZQj2KvZkH8+RphP11vLOHDebb/fIli7mvcRSrS3rwK1CopJuO/vpWzwr/hnOmHohTNBx/8XRZWOn2ubw/wYS5TOagWkiuAOuyUIoGI3+Qs0cp7FFx9Hta2rUNFJBTrq++fs8eO08eNU8MWY5PVshkvL0/Nlp4NHiPsDY47hKBaMVjGKf/ieDgiEc9b7keH4aFhH6pvgbyRAYn9TNDjv8TxspC2VWh39eooXV9v2qOFLBC4SgivDBje2DTWAZXtzDXRnjH2BQzL4ibOoIB91CBqAr1yUg8mfDQF1q6RbgpRl9MTt8xFKDrxKXSQa0nYr6943n+H2c8MY1KeS8bMHncBPFn2K8tHZvcrZsE0s3kAdaKHiKJI4tFWMC5VVPe7AkXqU4DHDtMulSsaZOnztVMgoapxgkZ+RZqbItPTp3kJ4dreZbKQKWKY6anVZEmjyAk0B+0oeuC4MjrCeYaSMPGtDQUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR501E1gB2LL6NPE2dk/rv8GJMT65uZ03YfXLMn+ovp3EUf7VWCY9euEcMlDakjviZegay1hON6yUiQWNATMYX/hvPdvXlW2/9Mru1RaIImwkauNexNPdHTW3J1p+1u6I5WzzSGXGqlbb2FfBiAVQFsrpbocwNbNnaGrofoURZHc5J/oDw12qjqTRhl2vN6qKv9e0Ag9sl8TNGLl9TLuZABNbhMQWZmW5NqtFusUibSU3SceAAYx87yr7hu1nlVMYKmOVv0OBAMBeNBhxrix8IrVB4oX0cJIwp+s1QgY/BSojwz/nx//t+MpfTGXunv3u2nmyPWtf2zffGc1bh6yXGHvg4i4+hpHWFUB2aGDMtH24yDcJj38RImDubr73m+JolGDu4od+iWUewIdun7D4yR4V2gGlKco+XI2YVAV3BnzNloU4PeizaKHYXWQoqQJ/SxmlkhVwT9aCzO9FARrAWDHJQincSZr2YK2ZljIZT5C2/YJV3XHs8Rl0pgXTPWGSZEso0T/uxJIeY+j2S9mSmW07rQ+BoES+xKhIp1HpdmM/aq4PI541b2iA1mMHV0sppcgqXKU6u2gLASiTRMN3XdIP88bqFJIDTjoXjzPgqvYuH8x72r/KjGf0YGciiwyswjzjsaIx3AXi6O0522qJZLYGy4pLjb0CQUxA2UUkr9I9Yr0QAqebGZgxPri0c9UukE3spc+qXOuwr3EsW0US9kdLXJP+ly6N9MoRrQSdGYYfT3enRFB32/bkSEOJvLcoRNo7v7SSgj7mrPfwTxSNo0qY7LC2CayQUfmLNiyP+lGGzTbzdtCHzms5wFYar4Foam57Bbt69qj1dM8gZeoeMZ0Auh3SWTaXsZNp6C8mkA0oBBddXUlHsAKuUJqDvSo+uiT+YqaDQPoSDdQDr/kqUJERRfaK6aOit0DfaqOZeIV/pUh/j730tvgZKU/cWAsJ2QeDx09MOKvNrTbvyxJzEwCdNQKUj7k0sA995rrbzjEigd+1tu19YBhqXThYVtKXXKa4N8lwszNrLEbbTNdtfjtaMMqQ+jhAXaAINvGNSSxUm1k5oPs3VLm58MiCwS3BPgpIxsSeISnF0GdmmMhigD9s4b8Z+rhp0NxKWTivV+ussDU8jK8WGACbgU5keOYlW7r5F4Kq5A+/Ubb3Cb23Zc+0Yb8I/4t47E5A1oBe9L4E9LDhUdHjCrcfopD3kW9H5h3mi8guq/SO5nkQXth3ejJrPh6vlwUjYlmmr39ha2m7pF1z5WyyeT486Qe/+jma/TkSnsDlZBBeMzJlm8uGrT+ho0awSUzI0jn4GXpEJJ1zN6w+ZLx54dZEoT1/ezJJsq7rXhOVVe9KhGIfcvYZ63EqPQRGNluoVPFGoExNiszSIurdEdu9dJKu/lGOc0bfx8drE2iznWkcZqwEVKVOHZeOyymdqWOnpVnzm0wBsHZV+SfK0qIZrD8rTvVXXugOzi5usM+XOhD2u7ZRBryiLaTgEpW+0nlQiR7Bq+xvAIjNovKYiLVwkEXk7ib/U2cAaKRHocrKkd48jDj/pEaLLhYw0AdOG6OVSw/+74GJetVUnaQO3Bu7zSrCZiuTTx+fU+Eis96zFIHIoHIieJViMX3aPKf4ahaFDopci3PuF951dzsLHFiJoNA4l7ENfj1t6bd2pDEdWrJfnHLZ1esLrYTds0EBzs2jc3x/t5cq7lq/KBfzcI6u7evEl7d+Hj8CyBAeRawgkQUrroEXAUrb6c8HmkV5ruw2qkX9kjc524MCjrYIchipCFAKI2uJy1pa6DZ6dTFvZTtiImEmucCG2SglGxB6nexxLSMnO5aDOrs1O38wMpM17uFZ/A6pCbBrwYAjdSfLdNquVBLwK9qUhPReGUZes31bjEfsC8POmHwY3j1hML6V0ErOcZvINIBntTCU5mCArkdkjImaPrYMlB8L2Ws8wMyyi/rOnFyfcYzzN38ZM+xaus3oWzYFIcfBtJK5g4Dyq39XFEi4ivRkmm1K28yJsU9E46CToy1YZOAw8sK04zlGkJEEHnQx1HB4idQt/7EqHKK7KM40nx3g85ZOkzFBsQXGxPgbDKLxlQl/GbLsDCKKg5PwOAmY+jy/+rwFQy3EI1CRXR72Yh9jmq0gLBS8hjjsngBR8S/8NYSM+2O40B417izpl/oZP5TpJZhXG/77fc7p8dZCNPvEmtE5uephJdJJVITTNst+7XJ469AGU3PMTeiymEamoV89HgsFFarcFluSfLsZAQh06oqn2VyZVC4Tv7GDOHfbxLk/tMD+KKXB9ZSFt/SVQ4pLz50xdxI/84ErQ5jjSf5ezYXsCEsaswJxC9y/+Gdx+9yfMKpM3MB1cLYAcPJbfOgtyc2CSr0ZeN2tX+0TYJ/7THKfoM7ZySM+7JHA/QHLUrIIWTUg/IJitijrvCxbagrYHp92oDysHQufcdVum32xZ1p6YKIj0Homb7X3Uq7Tc8o54qf/V9U9z6JwTBNIsBl4rKp1skqZ938vDyEPGloewJZQ6VUPjkV8UfhG45o9K5jbkT0If7DAGwA0z1ZYlyYiYjIjo4MvJDlclPZTmSadtDMHMw3h18mSj5Yoq6aXgK8nmSlWjeR37zpY8XBVXmTooIer+lRlH11co1uyKO1dYKJXpO3zEUoOvEpdJBrSdivr3jef4fZzwxjUp5LxswedwE8aiRuj8EXSe+03Lru/G6+gezJmruHAkdVDZEbXDMrOGTW9VX/QRjTQi87dnuvvhYvWGk/sANTLvbXXIBlXBobIw9cen7t7Cc1HJAblJoe4mUSWxa+b9hL3J3WMlKXwcYzhZHyJp5dE7ZdqykGlcSTWH3PiyM1GGWfmuRTsM6erysFa7oO9EzXnoJjGww47pEb+vXJK55ucmDCC2/hkJLI4T4hIR0FTVaOVZRFwPufjHBN9oF/f0ENX7/1mmHArPoKM9i+7tT0n40Vy38uXmnIFe0aBUD/tv9nsadSV2SuVFaQDAviUppzrX2lp2NgMhHjEWa5zjd9d8q+djF1cBa3inj14bu1enfcrhreaHWfjkBBx37qM0fEuG8YwRK3rVVKHkpOJZMpGLww8D74tH4cmGLNvD0ZaVNyN7COvGmvj2XUYZBHLGdYfNwZU/Y74MH1GZw/waPgggMmygDlKtlCzRPnNUg9XHPvqsN3ks4vnNFtI5PsvpfajrtgD4CKnbuUvfUj66hV+fWMquhJ442ORqHNFCMH7wq93EW8pPqQOOg0Bq6J01sUGYWw85hFPZ3ETOm4oalPnHtwyA2KsVsDedrraPhCtMqYu00S2fw1SIw55D4hvhw7tmvwOPGU6PJmXb9r3YRFnXPeGusoEWUOAQbuaUktR2eo1ljMcHOZkXtgyX9BlZxeCfV4yTJAfqlrxUCpVQYCSF029Zr4heSJFDBS8hjjsngBR8S/8NYSM+2O40B417izpl/oZP5TpJZhRBZJEUH325Cstx0oX2h7HX+8KxP0c1gMMloXhPr5uRq48vkvGOhuu4EvROWeYQJraLWoXsv8joQuiMr/SEg0pNJf+C4fgAvRVoUtCyFT5kHRL6qq8XWYB1dblQX5zxtqS5fxz8DeYdgbMBAwGTY/JH5H6127jg3fmngORUBNV8Mz0/+nzQNDHPyJBHOFwlbpL8+yYxWTg2jE0fJUIIjS4/sxCQrqBxntlpDLoa7e/W4nVdjg1QBpY7q4L0/AGYh93joyc/SnoJ+/JvfKFMPHJvXN9KhT815G+/a8tvSwDl7wHeQIX2xrK0HZbHlgTVVZNJpB77YfmXyDtcymlB93R3B39K0BEEyXItc0wOgZ6EQq+r9GSQ+9SlcQxEWTa1HpPXCx4KlDVpbXZorvus032nP6VeyqFSPd0F3x5vDiuWzwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYXn69R/E48aH7wRBCO2dHp4goaK0fXlNJkwXI5r6UXWljE/o9uk2DYsuapfwbn470VUhExwmMIDGAS7SOl4wpOYbnbgp87OH58Xo8kjp+C/Rx7Me+OnJ3wKN2/dyrtzeCdKo2/tirGAvRvjXSs5WI1ReCtsUxyTXrtoakjYbtJQK60X7ZPJd8lPtw3zXxrnhZ/IDLWu1BOLYP+inAZEQ6X1v25PJCsj4Oc1+AJ2sU6VwH5nh9vJfgb2Q830e3C1kL4qS6lGU+R2PzWhiobAANmCveeC5yTDt3vdxD0/GqnaPgzB6fDoAWS/0OlQO2UqIFlHZGpjfYgObY31sp6QszTAnKtVwgRiUIyJJ6MOjGCZ7qk3y4fcg8syU4X1pT9mIPlnSITNDC9I7ieUkrqV9W/XmhAy9TruHEHemhBdF7kjtsoa/L/6HG/DmUTLRfsa/S+DqEa86PT6yC/p0MMUMeQfPZ5zbsLn4Yq8bHLURfgGIT2c540Ox3UTW2F4bnwJwqjySNXJIYb/m3WHdnOfQyWQXNwvATnJnPzWfNTqNXwmu+jUAw8+TuYRnhhRAF5LQEbCIwXgLv3tTOppcPAMfZSk03iLoZ7C5DfSGyEDAq68XXmL8PKrFTVtyrQX4KrXLao38oO1ZqJYbhub1u0V5vD9gP+AjGoTdIthPgwbdBF70IuVa3kl3DzNklC0Pd6b7tGLZxp41yDY2YYcpxqN1LGqnXvIYXBNJLV/JpevOSyXJosxYALKntzQXBJh+OAir6CBylDFb+URYjeLxV8Hs24rWrdzouMjVtSznUiIii48R+HNFSmb8KfD7O2tx96c3HrLOErbKDpnHCP9q45ACBvILFwETdbzLUIuWPci6q8/4gfV1xDpGdjkkxmhgqRq2tKzvNRjSu5qC5RM/4uxj0VBnSP+uM9I7Ok4Fpm9kc2QXY0+3WXC3MLamoRy6w+rw003khisGI4khwK53BVGymSfMluo4Wwqkb29USnywqPcGSgqzQC3Tpa/v2+Gu/Mo5PaPuNNi02Oc85z32NZxP6V5ofZpekbptZi6vKhbzEbIGqO9GIT9a0Thyp5CEeUOX/L09AJs2ov9szCX0R+s+WLuGjfo7BszreiSVP4vNm80pdwScT4c/FaML2hV34ysdacfDT2oFvh/cv2ANGUZFzyMPWrOo0+qOHABZFQTGK6KQArd+VBetO5dfVu7Vptb2Ivk8KdVVilJ/f3BasWRjkzbIpZI6Eww0cZQVw2aqo5GAg9qtlSoafF7Hy7b288BoyFqUoKpRqpPOla9K3FwVBAmqGrH/hVPS8ISGQZiidEW4zvT04ICTRK/Bn8jKbLPxhBIF+xj/KPH2jp05rmOzuWKJk16UTiMQVYFCAdLp2LYfqOFPuUUAIDGPY+QV+81KfB7YNHtFxkN1c35AZYHLB6OsbF6O04S+aaRY+XzguHVN2CxTa3+TNr5nsKHhBjArBar+RE6qAAZvShBEsw16h8ysnx+nG5vHnLu3lIUYPZqiEID0lVWnMIHYPUorDYECmPiBrkx+17DlVaG3tzmbaCDWB/FkABduFwVc65MYw5MuGssTVhWlDJUiHtfbj3I1bYvIMFTDJarkZia/Aamjc0sXX7CCKneFWHkeeo+2DD8PHsrUz26LjegZebK2hFr93u3SCtsovpuzUkUQZvgzhWIhBFJT/Om0z1eKcoiFjWyvc54oWfSjC4nsrXY1V2zn8dfx9DO4nRuX5cQ3PaD22cMOketPdUUld6Q79d/3klxBEt2vyc7Hjornssy0lFVI+JJxCPisxsIf2K5j/C/LK37P+6A6Sm4alUJRqacepJXeRRRHRcBTxzZNnIuY6mtRXSlhWrxIFaBVIoG75tmZHTRxxyXuyblII1TdYYb7aoXSLlymL1zBym7eqGDdBN9t3C5DQXJl8JnsRj3cHCqHGZw4eWcJmAvQblURN+T0koSmw9922miz6w7NVnogarL19ch8FK4J1JpRCpQLrwBa3SKuY2F2PXHU9TUABVxPT5okVsLV7Hw23rXVLDMTBqU+rlaxbyOp99FFOWDGB56Lqwast3t4OtbNauzcwjN4ak3bKb3cq0RORnv9kwkwLthhJ0djX0QuGRBeGTpZC0g31+v/oK8KicK53WN6+U0SNB0mAyIpFgOpdv76FGreIUhJq/hSZWuQh0Lc+BRC5Hea2bA1FBjg2KSemWcD1xzTRJbHlOK99wJQr3pMPX5tkGwgtcKmAjgvbnvbxSYV4vVR9+AkHYdwED9W/nV+i2OFSiMqP8kYynkQt2nBf8NsMBclUKd1KbvZBOVBKAwU1CcYku/2VEBg79CKWlfcRx0T2vfCK0NtDF6VpiLydGcwOkiGO7TyKefe3TBhAEYWLnuqnNMyLbp5IK3W77hGQb4YZWXOLtloyrDjQ/Ki1pjN9JD62A8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3MlQJ35KaqfvsqgngfSQEJ6KD6VuS2qIE9RhXSlbIEH1ohhWcWGD1m2pYpHaf2wkC1BOCIy+gxTO/AAu3YHIQY0uuDEnqVWnI+Er0Q5mkx+ibkPhCsEmvLxyFRC834nQhFsXaUGrs4lKS4tAaHpwXy0QBTBrnOLKNaKzEg14qkEY2Ph85c5pMemiWUbBmxIKems47qw7nmgClMi0hOid35T2j+1bZKsCmuVbBMlOTMzYBRtMnYSnQeJIlu03gHSd38aFj40D+wkHzrDrkV+QDEpDu/xGf7b4MEFpDeJknOoCcmUu2eKalq02d5ArJM4zZ79lrywuQtfAPWaUpTTS/nmR+o9FPbOkNXSArN0P6T7Y8VZZHSS1JXAxoQf2TNQE4vHpHz3DnjTjgxJMvsl5KsSKo+aGbSSYfcabyb/PR2rqKBsnxAL20MpopNeeycRPDBZR/ejRaWnAhM+hNDNuXTvLpic4NLHeLYGctHeaeu3+VubS6rvqv/SmNwRQNkcaGuyH9AVeAkKGC5yRRsbMzb6lG5Lad2v17Fx26zBe0Owa8VWnIzLRmy9LEoGGv2eL1DgLNvuG3VY/Wu0iANOJGlQlkfBg4fUrjbrgN5H3Z+GJLrG+PMyNhXx03hZAeF42JLsNP8P3mNJ5BKzIvdDtHynYz7UiTJLVHjIUy9AE6mqfeDLLSC8UFQUrNpivJ5/wFmJvQcyjY2yMyK+LDQrZBCWq4SfQMtfc1Qzn7vgkKbfMKXfVbbKZXLjTWG0m1XfZm9sF7ZMyUjNIzZ82eSbgHeEqVF80fkcoLb4PtxmO+acTHX6ZeqcRlrWPEB8YciN/B9HO97gEkxos2NSq5+1Ny0ADobj+mtr03P+tG+X9N/0Vpx8rxlyH7NYCsRtrGQRTr+3n9AVeAkKGC5yRRsbMzb6lG5Lad2v17Fx26zBe0Owa8VBMMNYFE9ZSNwvAs0d53pjpWDZO3PV+TreacsJqiJu6gscKN6z3j5MX/VNodpul+tYPeoCqNiYkBOrF8ZRVh093LxAg4YCF76dN4ZWxDGdy4QmG0u08q7SBXVvHP2X9q4Szo5r9dRs3/AOQn/2aWUtMoj4sFYp5d5LqdWNN2kkrV7Ms/VzHj20ui/vFBW7XY1XdOUuL27WEpgfPuEqGGvWxQeUjAjpBm/sbzpkgoCfqmwqCW0+Xrc98tGREzVhNqDp8GL+tATFOZpURkSCxbyjAa8yoStuvIKRBnFY7MlNmzmjYUyfwJfL9QyyjbsVM4QFSIv4Oqj3hKGTxY7UcjOb1dZSqmGu4kcDrxKylvWEHjGNE3/C/VaDFvCBg8CFL9Dp+3NNZjKsTdyz3qnZpeW6y2/JbP/9QrOaFnZTh/OL3GZ81iTk4qnnZg/vCrcm3ATc7HscFQdHEfboiudDLHbPDAJIVTOLr1ua3iiz5ANdDcfPQhqxjY80GKMvHk3zct6e6NASZ14esoWRnA681zqxfhuLvnw16+nqQEo+aI2M4YBbZm0vm85NkmVhzncs3Oofu1ybozvs4MqcN5hTGkd/bFSAw5NY/puSdcpgDLmqeyNCkAHZtp/edNKppFedz0W79MqUW0pXhhkXO14ryxbtgglX+wqn3a1aZxOv3EfOxL9l1yuiuI06nb2gYnouoKB682PoeM/onx0TikZjNQQ0GppEyWruvMqWIQ9ssehRbFGZSz4hiWtamT1wTLpZp+awUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYW9vwmUYxkrAbcBje7kg/dxVPMuDwZ8QdhRD+yrpi80CKCAVFqJ8KgwdJhm13pg4WT8xfDjGrZ6s/mnhs3QBDw7YFUMi2GVDk/3k9hccL47CS2dPbO/B2HuttQ083TVAr5H6vQPjeSj1PL1U4lZAsQotDp+zjx+ZD7msEybR3M46zFqQnm4Wyg1ZVp+D02S418hkf/FqxDUjDVm+S5SG3ba2TyK+Q1O2waJ7ngLa7//U99Lo6McE5UlAjnjwmseKZm5TiamUnAJOUpK1tUHn1lPlxfCoZdUsozzU/SaSeBRv4NUIEoqKjPLKk+meKCU9sLbOvjzC5F4L7TS0/r1xDhBghhZ3XmsiXyKQYsq3T16DnAK7dbwfgOOH/SPrSD5riUMZCEYydUTw9mE+SpKCcRDY/B0AxHnvctkQ2MbOkw2nt6es+n1WVizIGAurRlC8mi93T5exHu98jfaRB1KoaYMR2JB+WDsj0IFweMknyERXB/7+DjrlRXOzdOCAOaOwgqn3cioUUDxRbWfIS1Qf9R7Xr40Av+45M9smzL+zbbRYu0k12uuY8jmwySdvgJ7GlJD12jFGlARmmxskB2F1I3Pm3HM77ANHGpnW/IRN+Ahw2FBbaXZaCXBVXdkSyctlfUqtPIY7S+TpxMIbppXy611NtMzb757JDZfj6ElV5yyVymOAN1i//g1iDM1ofuaEUUO5BdLfJasx0Zevj65Hg25SXjPpHAt4faPAb10un8UVHb4wH4IQ3rSr43KnNERHdiJQ+xBlI4qkxTpZglZ76ft9g8IxLCYRz2MCGRA2wLjPEruigNmxaso69THflG+r3rctEozmq+9g2MJkndWjiI7sKh1UJx1ZvXVLcdnWqcVGL7GJGLmOqNz9WPub/4Si/5uZ8TWfyyhYqCSkTolrGSv8DY4ofTkRJRldNPvNjT5EzCAf4N+o5lLowUj70CfegLXWtnEory2Q+zgO8YRCI/TnrL1ERztT98RfZqURrf9jul0QLxjFlMhhvZQhhcksS+LO/YdcmL9GxnEZWZTTu4siZ7kyy1c/NGcXpzxavyUgVm8w9YdJOdwQfak6WZtGYIvihy82ACrZk0ZSttC/IdYd+dR3Ks4m1lJV/rsR5WLproZy2YwvIneJ8H88UGJKeOBIPdg2UdKAMFEf12cx/oHyA33V28iyjQnt9MhatryoN8hvwRu+bvYjG4FFADXwmo/objLpN7ZEL6xlMBli+qD8teTG5n7mWJPMFSyyka3OVw8jjQRC7jYvmmUd/sXExcfDT2oFvh/cv2ANGUZFzyMPWrOo0+qOHABZFQTGK6KQBRrk1z6XeWTHY+AgqTrxfKcccZuUUrDk6VfQdkAzqe5+mZQIUz4EmIx8M4zZ3jfwJmDoDbHErl9pMzicgtcsw2NqJ8c6+8HSogsMv5yjQzpn4CDiv7B1sJzDRLsKCf0XVmTN6g6KSOezQnPsLOWXcCdAfUPWHG3t7LtampYnB90JWB28gRdxyWGuMlh1SAcezCYVWdBOKZAEfPfOeGfc0VGwHAZSoG98U8lIf70JEoWQXkW7MAlWmacVSNhsaAGxJfCeTUYZxc2OBxaKV60ymh5V3/9MJT8lX2ckAToSKQBdugIJBiJfcLf+5inMOlJo4idkSrZ2NM5tWgh9eTodtlO3zEUoOvEpdJBrSdivr3jef4fZzwxjUp5LxswedwE8fncVryBnihQrv5tRPZpUuW3aKfE1RXKyaP0l6VHtKHTtqJxUZzafBOB5TtwSoDUYaFy3FxOwhMxESnTEMplW4j8ROtUlQ+KcKkhWtnsJQ8e5G/COYbY+p/hQZlw+2/GYMee5degpzgFTG0NCtWDwoQJMvGU2Zey4IfjbyiQrAVMbD2/e8Qh5Gbv+wNHLgzOL/p9X1WPZT7HMaMcFBqsjo63ItbrbzBGcA2wlEMN5Wwo3fkoznHFGfKlhxDLnFWEFoG0+lyxTcxp31l9cQK1m6cjCX9kGr3q0jFxhKSzseGipGlZrWXDUt568tH851+w99I1rPMHSc/zdcgfFOHzA2+0pgSyjPp7rcjP53mzaBd3taMhgFfYQdYDKMv7/uDSiFjD7ps7+1Dgy06C+OoZwz6PjP4lZvAj7VevplQlV7+Bll2Wlp4WAbGywxldM2GWc/hQdR1sFbOfH5uBU9Er21llFLdRLO4sXMnMjOqdmox0o+a1lhKXjnCyNg+qqg24wwNap7+46vinzmzvwh3WwoDRun4owXzBzs3IxQ932j8ag1QgSioqM8sqT6Z4oJT2wts6+PMLkXgvtNLT+vXEOEE6x5aCdHXUrGfUBD1dftJuIhYc/n3jifJjDpIRoOq6CySXDmYKvSC9SsORG1WcHa0LPBXat8A+ah1OlCc3T24byiMcN2M6zWte8ngYaPPlH5YBqwYmFKpwZvD/pUH+3B3Y0q51pYBm2NULofjv0eY9DvspXfHXP3x6COK1LrJcrwr2ZYSTs0NA5FzmZbVnjfN9DnyEh67NO7AoI0Jl/YcBDzGO6yV/WYTPj2Pru418NUqN8qT57WLab503aPoCyKJA6c2yHl2ePDhnwR/By4BwhBAFoCg9o1dhA1bHiQO2yN2XokgLw9jCVJcT3nQSRStPvpPg03Tq7ZCfssBE0+xe3nsCcF46x0BjIreXKqMrK7t9aXMKZKhGxDhm4tY7nBWGETf/NhWk6HOs7Z/Gr0BajgFpTTMuJBAgULpsffTzLGh3nniuQ7Ot+/SO6jaMaxPkPcdGIqMEyfcyq/uFVp6nHVfkSRHFed8b5PJYSFNbo6Bi/e8jYRu/va6HI+EBb62enzj3chl7dUZSJ/7jEX/7ZC7aMsdiBQ1cIIQ8mzIPkZ6KciLBfInh/Dg5BlA5NVIu/vbr6l1uiDHTVjI/ZoZam5gNasPGvUywDZQSA9xEATDuHlfvj6E1LvRCahJc31dP3L2TccBOVL1fkj4vIFW3OVX4mzjKnBY8BLmyL1pOzlkm1Gyuh5q8aLSxl8TFZfA0NNiorhf/TZdd4K9WRuEtXXzPixRGRCwQSdjCqxZkcD7zIo9DIZk+1U4//sKlpGlQlgT6I6BC5DIz3uKLPq54dO8LvHv7VBk0zucgmQRIrD2SeIDcGu7rnV39kYORBZosBDqMkXzcwMG02qhnlpw2jAOaE8IJxJD+W/1ZKnhgiZsKtkaYoBA+sNDy4Ng0U03y4o0sSXzhgjl7kF3Uflsze4TsAyuUSquva0nAIDIy4ZqnKd+BmA/DHJ/zQoJs36o23DAobQyqvRwnbcaFHZV5V1MmGls8EOnGpy6dYynZJkMMFdGkndfq27U9kSPSxYSWKW6yRuunxjdtzd0RnV5t3kIi2Ak/00Iud1el+LMeV4/gRF/jE6ZgGoMWkzyfku3CeTbBMUR2jlWaUYPNViI2lSmlP9YPp/8O7cWlnEs2hmoupcrrWl4WuMbRNf27sTvGX3SHS0WUXxLxSknBzI/iGW9kwrZWCrRPmhE9weZZUaS+/F9tiCCbTL7TgvvgLKWXdnGtdOEflLutMz5IhMNEbOAk0S2ZG+bzbreaC4pBi96+Mb9Im6cZHwGEi/3ePcsCUG14EHWXYebLJZmson+4ANXbQ7KkhSB27nm8P4pUwlZfQdAd6gdlhI/mj/AAZWA3VUlljtuJS5X0iv0qdJwheEO5pItqOMQMl94pp9oEng1fwUWIB7P9oEuQ1pl431utx8LtkWLd2deqGlsaF204I/3gvc2tby2V2zYZtPBx8MFLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmFA/PUZsGXZClYnxyqxLdl4F29Vw4K1QqAaexdspeOp648IRtyA5ramkTcc9aMQpM3+P67orc4W8XXlwd007Ak0TBRdZctWL/uWwxqHLatWrxPVpU7Ub4JMH4F9NXTkGpqMM5BZ9E0hhRlgUnKljlcpYDmTLOY/4rCITflsCxRBzAfDT2oFvh/cv2ANGUZFzyMPWrOo0+qOHABZFQTGK6KQITOgES2TfUmfMwKWtaoHtt7cGeXWTy9bWtq0Vn3BC3NOTdIVc79AuvvXvpaAcEzJ5sWnPiZkJBn8XGO1rsLVUv9sN2w15h/aLBdVX7gfRTpdBfYy+5hBKYPIfm4old+lPYdo/4areK8UV4z9tjafC6SaRVcnj/QNS09Fbs3Q8OOaGLPeIUeTyJNYcH4PWdy+u6eZYux3ZCpJxB+unNbZJl8B+DtfXAYXEZ3S/L4AnU5s8hzPE0YiEw3ugguM7H9Cu3r/QzgfoZPT3xswJfoWwcbv8jKM/7KhlvHggvo3lnZuIwcL4ZYOGlXTCGdWWILF1/otBZ4LV8kmPzZmKmjWBqoHT5u/5gqBLDFB34REi/DMU05PKPdfX8V8l+jj7e4Tj0wJTUvxvJGmDrLNBdgnxH+cCV2tnViCUaIe9r3hSwJwNlC8aMfjNKatgJJ/+Grx+O1Gua0SIJQcZifO2FW0JT448cGao+fH/BmRfpbbZsVBHfCeJEVGfWIYmSSaxCIsuUFa79ujoPYnPjdHhNKbStEsXIAg2BA/xCoDjD9CD8JyUDXytZngMTLdQtjRxmXNrYZFjjAW+OxlaL4CmZYKf5I1mZeIs4g6JaQjqEnqYExJQkRd56/32540yFDIguTnWTyJuuu8PAbNqvJHLEIWezzLioDQRPyGOiS7GFda6E6kxbMWCDrsCv2bDLHfYcwILLaD/OiQSSzJ5/axwyqPgQt9vd/x0WUVxFzEXlYrkTihVTsfywYwZm6AOS08lLN5IHHzaj8EhJav7gpFAP2UaBBjimtseD6rIP1d7DsRyb/J3RG84S8siV/5HlKIygMxznOTZ4lTPXvD8224x30srBorGPgHMJVJ3Ms+gyhUCE23wrFWG/dBtoeNvN+FvaV7o8Ox0VBGJxomLTgiX1dQnBpa690CC/Vw8oB8XHInGF7/bsPqhDMyd6Z65mfRHif4uyjpao6GcMafOFJJyrdBscW4+/H+Ej4+pWN/sUFZpptC+9gtTognIFSMP79U43HJoEm7qhOZHocelFuFcCnzoYs+VoARtlc+qz6t+gDgVltj4QPQ04dPmGM1HG4tVkAYcyK2PI9TUQ+XZVICF6yM0NPpgtgZq8/7Qus83GCYW7KzsJsAtYw6xEeyscX0Wx3w0++D4bfVUOovfixH9zWUHBAg4eSvkNv/vMr3PVMwcteHw09qBb4f3L9gDRlGRc8jD1qzqNPqjhwAWRUExiuikBmd2yJ0kY7xSyhNAZ5vlRMaZ9X2UX7DRWuGns2b1KKTwjt31DHaM7BOrQQLcvTdcJcsGhgSwfeQan3QkKMKxA0g8Hfw3RZRYbyN8ZsHzsxC9VpZbkJrVcGxvb34ZTy8rM8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3MlcEFdS2JCE3XX0JsNoayh2TBrrmOydKIBqbU0L3Wc1qQyTVmwSzxMMvWsdqPIRCAizi3JQH1VnHYsj1liM7EmGGjgCd/JoV/LJoAmvmWo5z0Jg09dxH5TNDgEfnFMySiwM1oc10gXZmAto1j0F83+vQ4dENRt5rKEUQYMxuTv0BrE1JoKxM9gi/qLijvngmZrMBNydgo1+E2e2QGFgCV6N27sDG68GmBy8nzCxJ2tMziwBq00dcID6zxHK7ltaXaP3Rmf06MwBMiWVfhKVAm2bsnIYpdIo7XP0HMhlyWDX6Gg1QgSioqM8sqT6Z4oJT2wts6+PMLkXgvtNLT+vXEOEHmGBEgBqiMyn7sy4+eutxV1cQkIh70La+5mARqDBsKvhcMTvg21VQ+xhbfiYT2Su3x1tD2CjpXU4tbg8GXw8iFlk69qUvyMXJJq/7x2Kp0pRG3hnpVvwLTGyvyKOKLz0c/2luaXGFxyGqh3DrdARMh5a/S/GmPiqm90zlzIKwUkzLFIKkFZnw/tvnC/zMyHEoo4W6U7gDcdZ0QFONITeYjKsNwQ6O1TKSyXtlY/YoxRYjolKfAVfIKWEiwYJYvpF74npWZ0eCp2i9A/3/4BeOTFnBocV8u4anvM0K7n19oc/QebeCEpmWubWteD8+oS0OLoLIf7R9cqEFZvANTV85qnEfBPYivGE1I5YEAxyLas/oZXbFk+Kda/TFTweLRCQLDIMpBbLvKPGUKxzisPbmCILe9Xtg32VTvMXggoOmTyOpc15qBjZteTeMpmu2IPLhJNAHMCMiXSHaR9es7uTfocHjqvzAURZfKe4+O6RkY61SsSRZFB+iNyn9oh4egjkOkV5ruw2qkX9kjc524MCjrYIchipCFAKI2uJy1pa6DZx0o/Rzg6lgg6vjpts17lCujaNBbdUvrBJXWb4UrnJDPHDGbvLQ6rwsoxUO/lrVaMCof6Cpoq8dGXVRrk963WQjx6t9lSCIPmTFOrb1QOEpaF7l/gRWZ2BfJNsZPdGFQ8o/xt9NPFOapr3vhpLLZMiHAVyvjVJQS+Wcw25wz/JUE/1E45og4rgHguUx37WY90ZO0PDq4W9+uSqHMevlfUXUUKUYxVbuoBb8DzqUKnUwBA0v8DTo06ndDKr+g8SYBhV03LPB8kXexIxnHxUilbVS/I1MyHxyJWES9g0dNsKCisB7XsEZ732oVe3Dc72a82mqV2Tpogr6wZT0cjpRqrB5UZ/uWDGLgVqTMdVZb6KIghNB+Hq59bjyxG+B57HyBx0q8FodPabBPohUZlgmfdhvLOc+agRj51ADLeR6/LxMNJie8eEbkg+P31331ImObu9onJH5T0tA81TIJ0CzJ6Gu/b2OUU0V/fH6Il3SBMrLLM+WT42tMe8eXqDLoVP/8aNW319/QkHKNRgvO2jINC/XUZb7k2ig3Ozt96gwHZMZjZ/W2L02DjrX5sTiWPFpXN7LOx+C01ywHwPu9tL6lat5++5Lrn0WIWLs8nhekcEKW9kOC30v5s5/KQw6AhVyZyk3u4uhRCna47XuroOf9Q5lfvplhxEqRq+sKVp+bnU2o/DcO/5//e8wlZO4I95QaEL39gkuS/S18ef5bUeF0hHWwmhIeRJne3ZWvy8/hio5kjdE1dcXGGCeeOz2yAgZ6kVFDMECkXrvsxGmJIM4JZRuJ7cAxDkyYBuKw/FkVaf+PPEUGjqy6PPWPYdSMDjGtvzfb6V+a0ZuuQcZkrdUdzJUO1FgDQ2Qe/KmBCX/NY7pZv0awULGg0dXr92IBgn9pEJbHbbIQClfk2g7SheFTaOK9iQOCA0Za3Q01vXTX+4JtpcMgtpBZMne4o/z1ip+l2ae+Kwszsd1JKfqAQGorAdxgxUdufRy6NmOjGQhhvBtH6FvdFzcbsScnpACgEByrDbMNWC8GRKvhmUwsxqFeoJgGW7Nowr5h4pDg4M6jMffWMrXDUV8qFoLhaFVh/9ciX1Tj7Q2pzzj09rlAZi/SoFm3gfVttJLT0EbbsuvWafbG/Vd3TWczcz0uT4qDNBjHlJo82Tew4/LXFWi437mTzKk7CaQMrxyq5OfgBAA9+RebwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYUmM/fuznCcYlzz7zaTUnEbmfhBp3+FT4O9KNO/UE45JqYjiYU2oIZTzHyhnp7EbOmK5LLrozW74bwxaJ0By9ZmxpyJjAKOTnv9ONBqSPPKewPH3grwkVj5gKUS3k7ozEQUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR502JX/d1BLCv3t/8MScQobrNQUNAFSA03lgvvlRS+kMoreChYQ9LwaYAZQjFqs9Aoj+4gMhyiUG4bMhfKuBYW2g9gPljbEOhjw7AfQmj4e6r8nM5IMz0opz0pL1ImfCF9hpDbQh7cbrikYw04pwzMZKkyoMSvWVhtJT7/lsrw/eMiGcuoxTlFBa0qU49BKlazmlAKuSzZGPtR4aORHklslo5NdJ3XmClOQIjdt/1W5caOO7o3d9sKHFkdy65yJ06vlOC+r5jXTFbJIHRWXnvgcyLd5JzS1GIZzvFt4QUoyh7WGsf0hvW073fc/8Nste6JP2o2nqgnqZfU5KpfsxbpP2aCBQX0OX2Ie+h/ec8NdBaZwN3GhDZLIPhfqk2pA1rjGSfJDZaQ6MQj3yK+dXxa5GIA1QtGYmnMKpn61M3wD2xyh6oR9lcSe0daLCJthrsR3r+tIgYIZfA+yerlm/cHicZeJDg9EdN/dZmcYCM0eFNBd+xdEq0SNp1LgJDIAU67p1C/3ufJkMoyyjM/khUVTCoi+oNaJ56Y7O4Y6S/9LBwzWhf71SP/GbVct8cXO5EEJYLBO62UxzGbEKTsi8uK8F6K+EJU8LF0B9Qwg4LW0fc5MwNPLV8wXw06TMyCNc64d3ToVX0zmaKX02r62QGb/sWbqlghb033waQh4KaTSsDMoxclaZHw/Z1bQ1mES1ezyQgnqa/LcJ9T6jEHYuamvy17WjhaGPtHUx0hKX2nVc9XUg6UrD/zx38bEcXswxqeZItebQPERz1p0gmnSmMEpBtwIxk0AynPoyRAqIfZweLSBjfradIevIcWaWMH9bjv0aTSzD01OSlF/+Vnje1zXoi0xJpSoVaAAUVg4L3QoFCKV2TgfBpxu6Q/QzGIFxidhRlQn7vpUs4IIfYasRrsovZTiHc2GtEU26iqFrB9SmI4g1QgSioqM8sqT6Z4oJT2wts6+PMLkXgvtNLT+vXEOEFSyRyl9DqSLGYSyBAVf4D9GCEnf6Dta+fF3YPZoTukRROQmwsU+vtZx/gIJTYX1E4y8huvvpEbrBQPVmkau4X6Ez7Uy78ALBZVPcY24Cm6zA5/o6umb7v0mfRtt367apKHZVT3myhPycETA6btkrdjP4mDjg2fek/8fNVtPmphFML3dYM9FxPxqlYKxaqxRL20ytahiLwsV2v3ExUu+QP8jGHTFGBOhOlyVoD1tSQ+aGiFfooKv0xxVSA/BsyKOTZEA9R9x7zVT7HTbyPcVbA4IhIgr5QvoOhb0nSL++3Qiq9c5hHLS7QTUGc6Nm2/s5cWI5vV53h14mH2t4Vt8K1T6m2AbNaKFNyr5k3mI2vbMmjSTXguKoOvfOQ0YFsE/16R8Cl9XUYgh/3leHoisZ572vwyFwmHrseEIGrw3zGVxd0zCWbCSkQO1q0e/WnxOnKJeqysLmH4QjIJKnpjMBqeJr4U52Jvkcqf/zbg+NO9STTmgbtwf6aIZFMtayh8XIInE+f5Pn7V7ckyve90UYBTkr9LdorwlR5ouzAX/gqKqSsgNg+yyd2RDaAWA/t49dTMwCdGSYyrVI1zJjn4VjBQd6PAR/tu17V7dvkZRPv7eJxG6iYx7E9s05ocredazMTBa26Mkc4ncEA/3x/mRmXGnr0ZL8ktTaFQFSodmdsNxns6tt76UPz37SaEZAuU+gASjMl+8L91FJcUHrEOmV9fI3jm5bAdT50Us7CxjQecc1Ftj9SmArym5sB3fDghFYZp/dhdDcvRxYmQPKezWAsVI3ZYus4vzofcjZNlC/LcF1RaLRWmzVbmkifS+ysj2om0JxNSXoUzOW/nfX4ne/OmikDEu2rUDBejTXl5JoqJBhIlas8y+ZADCcfLHYn3auH8ezu0XQpNcd64i8+VH1NEoZLZI3RBJCQFrYTORXyLPyuA7R5CMACSe3YSWcE4kapwjv6vSy5FWfyEjlP+KsjE3dM3BSbb9xOfunKz6g9y1azUd0kzPPi/5XhoeXbdgPIqOAWZInRBWw/G9aTMxDqvMunAPxFOdqWGowCy3nJ9VcknqIuFm9VOA8GiX9D4TMHMn/loMQecdrRjSKkpkiotuTaB81raHdxg1KjEqndah7soYB4ag0/TXo5WRI93aSj7uzsPzH6WmeaZ3+7YtdWQT4uKDr9ccyypZ83qpGq1NceVmpF3R05BioCooRNNT44uegRd5RPFYP4eDP4sSNEa2fHaKv+GyvlawkbiKqaWfm2PgxBwYg+Lh8nSdB8Ef4IVuq3Lftginb7057FcKvm2CGw4AP7EWQLeeAALUU31LcFLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmF4aRED+B++CmNHUJ8d3tpv/0yoe1IMMVituczPGh3EY8uH7DgEN+tTMGr48ur/cqxIAJcaHvQbxm1Fb9XBvndXMxbcohBRTk+Sd0NgOSpzvYQ6ZsIhgZkMNEZIrYI/pa5G0wC/2tqdS0BIxTyZvPaHeqHkOUF+x81o0wQmCwhkEO3aiQxSV7PwMvlg6k5EhwDknMqG80IdhtVEvkF6N7uWjFgM7AdWnI2YvHELgBZNzmkwcpejd8JBJMs4E6P651Mo6bzi7GhckyTl9+8YkrrA7tBmUx03smJ+QdmUrSVkde8l4h39BfoM2SxemE9Le4vQ1YSAQdaynhxVrA/XBQUZMFLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmFsZwR3kZI3dL80zh8HeZeFOFpkNsBuKK8d/94A88JKp8wzJCe5BmeDwcf+S9YQWxrrmUz9+CVW2fJXogT7kQrGdGK2TLbOIDA+83TuLbMxIkQyWONjfRK8sQucdZMj+XrwVFtEa30k6P+YI81t9kHI6+6IYVT8JldGrzm+GTVqz/piQw1+OOkpQAuhasXv0AUi9l57Qe95stAR8N/HrrdGcW1B2xj8K3h9WxEWIjm9pazw4RBwCVVeenOmAQQTc2HsmxhMCYP4bAHTvbmZxOVrXNwRo+frM8Z43OKbgHFBl/MonnCzP51DSMHBGONVJJuFoMVB6kn9n+ajjBA11B7SQxy9tl0e6mxhEMi/AgtwaBFA4VzKDampVRO3tpRPu2UTt8xFKDrxKXSQa0nYr6943n+H2c8MY1KeS8bMHncBPHhVeXz2B1F9pO0TZelQrBVnHzuxy0SlBVzYfb4DDVHoFxXO9M2bgc7DQ8RvsZ4el93cIvo2OKZM+uDQfTAhjF1zE5L/qaDigVGMBhHDvwmqUFeUnsi/mlqySEQN5R1/hqf6KTdAhmyR7VZfs3nGuxHFUnLPlVQdUUemmzIp2zPvULx6Osu52QQDfUt4ccZIKfcFP0HPl32X4vBmrbHmgYgjKRA0EDif/nuIrcFLWf6p6ArS+857fHILD5qb81IqfHJXdW4b30593Jk6Z1NCsH/Cvj62YLCl8JtH7Lh69eNWqEK4Y3AMfX/rQ7kCNLGaBNTOwQDcZOEdd06QYoAStTpv0ZT6ycpqjpDLFl2X2+yX4yxr1YfTdEa2g/XzZx71WxcjWOJvI9HuxDFs6HATb8J8KR7HYJjsqrwCceq+vZX4GDrGV9IbJtlwRqL02Q7J8JSexqSl1eH1fmkdmH+5vE4skZ0yW/EqS4fHiI8pqIALkPuKqRPnA+U9+JzK11vw/ZGkx8EvC5XFst8POvxb1EKSiuAd3KHO6Fxou5NbwY8JLiHAnQjA7m70hTvg7VtzpVHH2tNGrhKsdCNXA3Z6n1ldF6aJJtcoBzw0fKOU3MvkJw/7+cbVmnAK65sJnBGDWFO3zEUoOvEpdJBrSdivr3jef4fZzwxjUp5LxswedwE8bX1XdU78+5jrwqTLLrG5ULA7oXD/Hpqt6i/NZzg6gPGMqGoNtV9dLebNUWCD0mr8ukoyWse0iPNCmeBt/XS9ykvi84Ro32yVlvNDy99bw70XZ3JSKWRuLr0dJfl1CeQxJPWqZKoaj3v8LkO5UmgSrXTw4WZSs1jVhxrfuGq0ixxFnUez84LhV02lWy7Fa1vPMM7dmzNnz6oHvOHccvnPu53VyAuZvatjFbnPnXsyAGOuNp2oav+U+YUj6joTOUEWgxoXYA7VveZsEJ8PcBZGEikHRfDTvlZCarpOyYpYFs9pFea7sNqpF/ZI3OduDAo62CHIYqQhQCiNrictaWug2dpz9lat/pKncrUetbYqVQzpLAvMkbmqd2fEt7Udnvhtlr/eFw/XMZOrGyR3NWrnuQXTZ2LqJFKZ/7E9MsmqBsJkRvARb7+SXzjHuFsha3p7D0nBF7bscihC8BGXysSLKLs6SLMp9iaIoGt+Lz1TQFkZuBGyoR4VuTi+xOu0VLhAH9evlMoBvpB6qWYHy4LBEU9RJt3wUzRc64bhvYOeFLaiXo7VQMowOd6k4gjRKkyErB0LZGmupAYJ4o5uGQCBI+f3mylRWmlVHKOQ4q1coBva0Qdx9tZaxoFszBO8VejCPjnE274yDE2a1PXptF/xIh0T/wDyH0XaZ23fiI1Dbl9N3fdzzZ76ZXovqqp1BN6XCIPMLmkShE+yVJ+a9gK3EG6KI767rW7W3uGF4R9XUWV7uOLZ50ixsvSmyUPRbK83vA0HDavA2+ZXjAuNEGkiRYgdr26dXnd31HgsVIUfDb8DfSWaJnBlatRWF6l0r3Z0l1o+wJ6IzXIe833k8WTEY8uZWxOZkT5xg0Hc9sQG87D9sFvG/Nw0rGoJJYVopFyK+KT2WMSO0eJJVHJhRrmk/KQPy9fgcKPmyoEcB6fjTQJ5OmjmrWlIDmFnzX9qbd8z45d6SQF/4iCvYxadTdAPsCwEz7hzoIG2ksMVVxW+1boXGyPMydo/60wACuK9P6G7IIwvVB+xFDAxDhl3wLCuWqPTLEsghrZWXri1IucajuvzRwU9b3Q7sqptglXUEVIEfXn9st7q2M0FVBSI1hMlIr6aVN5Nw7bY3oclEH8j/kIyyWTU30MDC9JdWaHrCf498d0hihXSrQjU64pH99HjvbL6dsEOKUKtfBH0BbeORUA1clEOIKZU3nCwduNN8vwsB8tb5XP4XjlhaEivdXn4bBXFyPZDRWcMWb9WPBwF5GwOmBqcGylbqqj+rj2orMhP9GUY6vb2V6F7FVd9WnxTKLPMsdG3TRiDexSwG1sIb1iZfXS/WEA2XA4qYF3b5KGlV/e4OVrjZV3jf2/cw0PzuWu0fJQzDOP60z+fDikRXfhmpjiPvV1GodDsWJcyQPpmg4IPYy0d6KvooUuXv3u7YFaIRasVysRwf2MYCd5VDiuhlZZX6tkXsH/B1mja4mQk259L5Tbt00V/FSwMsPWYSFjeAIcaIv4oq9m5Igx4W3/TFLgZF5PRc9NCmnDfbRHiEBNh9HyuIHWoaqph/Uzx7SN2zkhBGlmQ+6YA6MjzIdEb93ctn5K+r1oV5pEgPdkzbCmpdRe2nt8cWgSZ9Toeq7Gz5pdlosdI/+mu3UAm/KH4OvCQZ+3DZxJvxnkt+3YOHRUsRU9/69GUHGfbIbNUveqOoTXyzKoXfgdu4xBuhkXDHdzozl+lNVtKk6U9FHE40t1UFAFnrCu3rCG8bRkHE2nQFMbGOk44Q+6cDVG6Pj1897pBXE/zaTIBu4HQpBtMdMLRuEHYIHNfpPFMjBOrBLBqYgZivjFHAMuwPoS7ZDPA0btKVBOEhxvp9FIlejv5S73JIM5JAnOzgfBqn6Qb0SG8X8zxUoJjnuwhkLP2D9/8TBJzO/3onKQmb+q9XrzOhDqNloF1WnjNfDIr1f9sfk0R3wuszMiNdBDaKhlIDAkPEUGjqy6PPWPYdSMDjGtvzfb6V+a0ZuuQcZkrdUdzJVwqeaSbirSHG7rrYDaNCVaM5nx5u2MNpkP3O5aQY3qeaytRzVjSlqJGTiiUUHcxwdj6dDibp29awNrWIyuYgjuO/3B7ScuyKNZTaFzoRfoIOVSTsqcIBP3dFll6nkqsCofqCUKVawrd0nPbRonHfnU16zijR7Tw11IUq4KG6SuwYmX6rK7WdvxnS11lymbVE+JLWsrfyIkhdbOzqigiFLzTD6j7bEkS8f0nQ0v76kELHIP+35bSCCRCm2xIkN+q3cbn3gsql5hEKGAy5Gs8QlfqOQq9Kw1QjeP8deEp7Ny9OQHwMwoTx6WGbYh7fYEwy2dHO/L5M0Z3sXLSBzKaoFiwRM5BHIPzkmqhkBoEd6VYlS7X3TKjfxKWM+YSMW3sdEmT3bUmw/p7uD29ATfnkigNLQ2QQmYcMUDN0a2C6CeF6yvIZzM3Gktj2O26ori0KqMWaR3GkPKOsej1I/2oWlyGLrMbWRcIwAzagZnKYXhZk/imiLgmrxikad0DfrRRhoXsogoeoFBInHINJ3mChetIX5nzXfjpC89zjsNaVCiUeeGx6YaP697XgeqnGrZOVQn0p+Vf/8/9NoEqpJimNt0abQXtV8iSDdO8TPWtwP0J53yaio1+g/j3hHPCP2RHQCDKK7m+IfD+MtVYnP/dxX9Kj99U0aZPj6FVVsNItp2oUV70rEWglDSi+VwZuOzV6QTjhj/04sJjXRX8kMi+5Nyyt0rh7qXJ7vuL2I7uYnYshdLxdz59LKjTO3JNvY5E6U1rIwkOmo5ztEThVpyzQoOaAuI8DYQX+VljD+jza9OHIYFwms/8kl1U4QykbbYXdm/+s5bdUSeZpFvNfBYFFSP5yJEU1oZZAqtQ97UEOJTGlQt15C4ZoypJUqLctPK0e5HF8Na9KOqtLx1n5bLAhw6Xts8avVqltYRnppqnWNAb3FYH55OX9OO3qWiouobxIU4RqFd4FZqIcG/Au392d+c159gypF4UFbGd+n5stJ9TgZmZNCcPo2IlO4lKEoEgIaS6F38xVgaxoDPCfb2gVl4/4zpenZHMifeXD5BNM9UJDCcmvQ31Z/6J87I3tRKXM56CAbUK/5xUp4h4a5PmTkk+is7loSR7s7j4enCVYRful4O/F+4SfrI6T5lK9mXl6k8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3MlYEdz2aRbsM/qMdNmPSh6vBIIKHrFoOiMTTHJKrf2fPlIiyJMZPI8a56sKId7751x/VQDBbH7uKlj4eDjT/PqRIRYChpQHDrgmEkC44MWP098Q7mx7FUPb58NhdgFH9H42tgka+kPY/GlWN1/Q+9V65uhqTo4CYB2tde3F7H4ZldAsmn0JTVaj1YM5/kKFqELRZTCGGRXOkhyZAhbG600C+Z2vpgyM87OnemSBfnq1yFFED6zd7cJzWHG81M3bwpI9p1KuU7+9YPUGBBLwz0GTZlf0/1KPuB+7MiVXDd1AUV4irjv7f1iFJ6EfxfvF1Ip66PUkY4lFWmktaFjhVDahH/ynW6MfAy0/tpN80B8NW+7jUL6UrBP5/Jma2xMXXRVyrK4lzied4KYdWQYNDklZW2MhDtdCccCJI9FDEqZbI8bGvFqHIStePKSnySOhKr1cFO6CewA5wchvuLz2vcVA+0IpOW6NeplU0Bi4fCCSXVqk9pdNRIMzq0bh6z2KjPQExe4i90NCnABG+VJ0Gn+sk6HrzDv60YCAFySLQe7F2cs41ljc4d9w4AUYIPPY6qmy6F/GaotIsPZSE+zPUBO/kLFnMKwn02aHXyT6fl+3mvD2K3dk+DY5N18lFee3JqepNMCu0UyFOa5PbRiXnYe1ZVHFli05vMRrmKVMtZMNxZliluskbrp8Y3bc3dEZ1ebd5CItgJP9NCLndXpfizHlfejyCF25ag7EdAiRsEZwItjMgaAUxfmHvlfu/qwxLilizQgQXxbvIuJjSjeuKkEYvFxrBK11Pw6W+u69LVRA8guGt8+oxvcsikli5FsbRljxfrHmnsfARS9glvVBvBPTOPdnURR4V0FrnRNGTJlfVGoQPegRDlLb2/NA/xYe+ptHLZWl7j6jTlxNKQqT+td5ttQP23IigNiVxyniNFPlgILuLfwLIy7YLuC7SMxWeAkl8EpMhpAPCdlsAqK7mfljgb2MsUVVV7KZwnz6/lq8UQ5ClKWvhD35GF67CpDiYQVG0BaNm+3QCt9JckzGRwuBKFX0Ir2g89dhjGDnPleKFsGBY7X9iCZMnged0tKlWz7VWTx3rmHcRKgprz5UAoqgg43qsbOslwYHeYcX0VtkYsAhqcvYNWQpLgU3P2XBrRUFS/MGlK6k1bCCWrsx+jIKay5wmjeWLt1dSJNABy6jH+nWIROU2TujhS6ucqa/9BZUxLOvvu6yhVmy9yk+W0L606ls6y8PrU8aIM85LDRkd5ukoz0XcOKHSRaqE8k8NeoxNzLxsuuPUDaPiF47qs/o37mCrysk0uofL7/2NIRdP3B9ccQJV/QqtsXP4csR7t5uOSYNyAT4DBYDKwJ1kPgEqauutLolGS72QocNeDDrZpB3NYWDwlg35YpZKHSoWaLGRnqmRMsVtrTTtQ4ee20g2VbVAZhSSNxNOcbECQPkewN34A1kZojVauTy4E45mfz9J8lMsSyruxp3P791Bi1SAbyDoIPhv5KVqmHthPa74XVL55TaIZcLjbADLDZOUUKuO4aAGQCkyqi+Y7BjmWm2A4gTzstIIxFQ1zY1g2bK8VCVKnQQ9Ra/HlI9RcQmfCXWagAH/v7UstKV4jT1ymoFkS/B4WCa+maH98id55soXRWbNhlkLnQ+rr7YX19b52LtqV4NF4Xd6VQ7gL/1gzLI4yCfZlm58rOfbc5+tEc+b7Nf7MJrVjz+wps0U14qj03Q5Ucz362V/zkDBKKuGXgX5JG72xwoelM8odr08tXE+1qayHycJCYEiDIxTAawpyb1JcYFnrX4JGSJbh2JSkeunoaeJjWEdDslhIIKlmo2CCMItINE5exDQqewJYreYnRr0ErE4bewEZvgMoEn10wR6Zr1lb288FMApTJrCccGqDamUHo/Zr7Fh6kDijJzM7wDNaScWLyh16lTJAGuOP9qkvwamEiA932VhJc2dwCEwgjkb/80B+2vT1w+aqihfefvxMBhqoyzKka2YWFiIgAJV3LdbH/itVIkfUItnprZgslUyiVirZw16ZuN5K7ZJ/xpvEqdt4+bmSsKtPv2ZL+zQ0fsfrs5pIRPZL3VhoESqNTt8xFKDrxKXSQa0nYr6943n+H2c8MY1KeS8bMHncBPHIbPKq2kKcaOrxIlFrlwts1X0hb3Ra4zoEw5d7ZZIYCR8UspGLY0dp14c+XBL1gaigg5ETvIFILhXxtMn8NcD852OgEAgaFhxUvg+mzcDdiLe1nVeG9F7I5E4Kx94cVCyHFDMW7H3dVglPBDi/mtaXLQvqyDaollVmKwHfK7TJOAIZFfYLPyRqGVxXDLvq8WwWSmBrvUdVLKxfxLO/yl5yA6H3x3jYhW8KlEff7QW0M6wkEDkf+a3znt24TUnLCrUVZlv3JY2s6VhTYt68KuHBpMAD/9a+5KaV1/gXodVf1+FBMXKqsa+tL56nE6/xehE4YyPV7x/hXmOsegNruwkwfjtWAuwioNINCiiZ4/spANyWwCouIUba1mhiPFpWfZwOCYXtir8aFnhUnPZPnHjgTESRJ1qIb8asNsiQo0plGX7E3a+nkVtAZvHGtEZ8hLKSbGEhl5vLtrmSggaQn0VW+mVNpuWgusaAU7XVBS2c2FgjWP0rrm4Q4Wi1mFt9yYtj8Xo3WbMSXaJxcR/Leb4cHZg1nYosQqWkp5UBAquaZ0XmOP+0IxCAr/e1bm6P/IjIRaaS2KaVU+AoYIUU9h+WLUmNKOpEogSx+NReoguEMAsrYBkDQW/YUOtNctLZTYv2CNbixdAh6HAcb6+87+mL9N7LU6Qc3wKJLg4JEbR52co5OKn4nmQwzwKg9fjylU7bXN3VeZiDRgbBSoXD1Sld9UNAV4eowVEgylY6RpKqGrH6Mgq3buyRFV2vdaNE64nEHIYv+af5vafHf+qVc4e8eIksIu66vMZd32F3mLhCP4BILC41oydb9+7qvptQevLUiosKdb/tYEzHWSBWmChCc2+/N4frzIvYHejy5QFZ8NhOzprjCAsoUp9tLjL+r9NUbx4E+OrifJtvLxgAQD8QdMdaq1YugD6rWqMZG/g7yFX2REndO2fMaXBWAdpZjoQSwJCWhwoM5pNbQBvAhxowkoW4cw50YXUiL12HAgmpMwtS9iliFdNPF/OtP9heLUNLN9UK+k2brlYuWSzm+5PgckxWL8iifJRIZSQzZamdBkStFuRBED2hb7+D2DC1hRjzX98Wkpz3TfhMn44dG2qf0rWykxf12uZPYlp50PbUE9srdqkDI8ga6BI5g1OoK82rl5b3Dtboqk+77eoEDe42a86HIXrZZSy42P+J5jJsdoRp8atvl8SDZnwDV7+14qnxzX5UkBAws1RpPH6moXkoYhcMA3+SEb6V1B3A3EfIPF0EhfCZVBM1NGuGCcp2Wm3p+oxnVv9y5IuKxBT9dXCNQoOKM8pUjRMIWZItsFjkWRRPvOJ0g5vbamn357GcM2mHNUosp/ROzN4dOxRAuerVwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYWIBmYDMRwOXWCyeMGtuyPa/C96/YWddemDX/dub+a2F7eXS6cYAMHpu9Ima6iqGvf6vmp64v1pJdRo49KdoDyiXy6sgaAAleXjBotKiABx66tWBQ83gJFpZDIWuvdrZNUZ7ED128Wt+g1tL+ymXUjz3J3zfMH4GoV05NZslwOWqmcHjfkcgCcEiO6xbgW0nElxwK5N757N4nzCa7TSxvH+Nv4NYcDIpE1t9zumY0Mke2GiWuNxMltHxXzA7IZJA5hLBDZmZ/wiKLVFgOiINktf3lN5gEb25N+F0Jli6ADMjU5xIak1edWeBTe4W5emmdD/e7iERxqJdEsTZi0UwmoZT2F+8lUSSy7ixB8o+/zCGE3yLkahOg0ZN7+I4MOzft13bawgHmfFXNzmY8cPnmDWkRtYKvf/I3UN7VqTdK7xa3ZAAxTFpL32zPXM2illBQX0lfZ63/lSgur3no22Xd+vInQb5Lm2RyT0QoCuKP44Pg8/gBKbF1roVoZrsICEifJZoRVPtZmk1wtRTtwr6GuR2QdHhWjyvpw9qoyRJy6l5671NeC/ej5wWvNbabr0i2k2RTi9FDPYzK60o4sRZvvPdGDuu22NmpwxOb00HRVagIGIVkmAPOWUxAJytScdLOWluywgDqFnNZe73UhD1on9FlpU+xHiJpvjDwlbTC6jE7sGjjgpRUxfUBFEmhM5jbEFJ3A7On8dS6em5LCe1YunKi6a7/TKpJlsaahL6U9cvkRqW5/NExbtq16+Kusy08+XMc9hHpbW5dn+NPOGjq3UHyebHQchEDjdW9hGXL5lolSIfl/RTqQssqgcu51PVxRkAwdlWpU3f4JW/7sG9YgiP4srfcOBLQsj5Dc655a1f1qLM9gHnegVZXy4XokHi9NPdAAxR8I6vO/aN70AaLhEkmEK1XOPsAI3xGDHF2FUcJIvoU4WReQpcUkvEqz9DNX4jl4sjikoKA4a4b6xVBuyXMpFj39AN5SbvRhebDzRxGuuDWFxTtWFiI0fhfRJTgNZ8biB/8E3fa233x7um1FFOofADosSNwI7rqKuDz9C0A3VUIv/rj12wCQ3uj87Da2aUX11p/UpsPJgrJcQ8Qm31nM+O0s+DRudM6f4dloaV/vUO6ZvoZ/KF9UriM0m0j5++5Lrn0WIWLs8nhekcEKW9kOC30v5s5/KQw6AhVyZymVl+07nmLS1HczMSry3/gc4mFVoz8df7ZCniYlFkGYmjevkinAwENJ9O/EkZkBDLwP5zFUGQfmHSRYWt/WSZK61lh5vbUpJMDbPaIWhYKZ0odpARlet5VJzNjfrbMunuPul8cWBBSbygwmEYo/Zs7SuZcQFKQY9nnhpqfAWWBR+Kp+O97eM+CBxX+5CMT96Ccw2euBwvY2EgQqxRv4fKx66O8QZ09uo0ovs+mPZ5Om3R3nGr6S6lEVQBHjw16IVdk146eekbjsWysTVQWudgO27t7vMxnBxVFX57mz/QyIuL/0XElgSAINDf9jelEZwtTyFfr081zT7zc6txMn2q1ue0/ucu7byITiOkvlf1HKPGCQyuDRc44r/lfektDE2A2+i80db1bcz9VufgWKpIsKl2t3QBzSVwX3Wb5sHYbbN7D+u6pGVAbHFRpx3+PE+MkggnooUlhWwjI5AlyVs592zWSL70DCUQZZDtEeWOokNGAGyPowNUckLUvsOTQNX95EyZ1JiYEY8n0J2T3YICPNKQpevNHW7UeU3BlIZ6CS6BL/2oZhm0apEZCQ96ITg96BMXqEH84/1I/HHIdZfgzfSCwxu4vqEUL31fKX4rWgio1o/fCrVNqo3DWhZsmG07zmApwIPSSLNaszf2rmddqjq8MoKWmaFcWBt+8qczHWrGd864Md1nxU42kYJOmtayYXAspf2P2+x5DJHVgXoTGEgwFp/h681tv86dqC6BtE46DSGKEQ9prdlgzIgUQHfJlvY8Yq8bZozeBpoIynbX9L2/ZhgD0ryj+PzeoDZbL71bivLEhddacLUoSlq2DH3QZvIVsUf97T9j15mLPbQa2SIWjnL7dBlwQCtviA/X0VRmijW/knf3ehHiY9Ptxb9d/9El5Y/cGZl6vvQo4kmMaHAox5xQfAU0fqWQllbTBZbmGfRwsx+lg/pPTGOdtItl5vJp+idSb1LOsg6lHa/Y8+T42hQA/Ttz4Xt4wDf7LLCq8JgTA8+f7I82qdBSh3Wcnd6niA63jGGAkTGpVybsUOIKOc1po9IO3KYeRpR7i1iqr8huaFwRwLO7G0wr6VSj/2PBB69ldGWrl9ccqa/RkCmTuSNVNSTWPY0aPYVR7e2woday0FsVL55C/HNORiAMwkMBvKZl3ImTIHcabL5bVN0YiycRmZJVYpQYw3Jyg+Zxwy35wwoCyWkJ/QXslYDLOGsDx01TiqiG7c/YX4wuZvieawzeW7RLZZA6O/a5DtmVVsfEhUyVMI3Y84DfXb5fGoYoMgFRsSGYH2M58IhTgvLwm2OxOSgOigKzWU1V6U93d3SnjAqtk88Ix40CbBRV4toaoeEzLIDSsc940T5TNZ0XAo2rPczGTljoJuUCb8Ae9rqscWAQcQycnWlbY8i4hIi+22XLRXaLLdXgm1kKaSgF3WZaRrOUKKj7AVu6YMlpFea7sNqpF/ZI3OduDAo62CHIYqQhQCiNrictaWug2cZRksdG81/gOQ7RrYsCzVVMqIA2s2WwV+FL8ZdI3yAdsi+yW18h78YjAOePvRRX9AcmdF1BMaHeHMVRP0yG3XxQa0T5ADSyAlgR9bK5VJw54Lklab/Elh+eLxai7NI8LzXCU1ER0c3boR3iXF3/M2xlpCWP8wGU4tPMM77ULmA5INUIEoqKjPLKk+meKCU9sLbOvjzC5F4L7TS0/r1xDhBuO93L0n75VTV/cNonyNrbQYU9o2z+1W/jV2l01q0/w/4ydUkpn2dxtXjaGePE70fmZlHO+QFRxwuS8QQ3YkMC/iw+1z/hV2jp+XiucKgVDdw00ajMEDL1yZMYzgEA7FROVLkB0l1G0sK3Bf2thU2GztBRy8i4mX/CVsdFkjl+qykV5ruw2qkX9kjc524MCjrYIchipCFAKI2uJy1pa6DZ+CQ3aIkWzEXYefWZZQff+XfQ2QI2QiEqxd8Gki8lzKNxad2eedakaW5s78Pug67FE+mTGoSpcRO6+TFaawIWcXg49P3RwtLtO2HIriYZpkmb5j8Sf72CBTdGFLisFjHnVIdXf46wqinVqsXkc28FKQKvGaxtge+RdKrgscYBlAqAb6Tv9mrZTTFmygxkYOwz24lb7jERpb/gszwJZ6FbJb+KyJCRuDNkbLp+8OZsvQm8h6nExtsmnP5K1VUofYxWtzBwCxeAd2XhGilr8RaOJ6cJ+YO569QapsZkR80Jaz428cWroKoWyQUUPRb81V3dU4x3ob0dliQnc1cAW0Nudt/QFXgJChguckUbGzM2+pRuS2ndr9excduswXtDsGvFboXIoAUOxswBDw+RnAOa/O5Es1DPae7B6vc/S1vJQdKpoyO9Ke3y2JWoSctDhLaSFYyhx/YWxwy6GfUhhlxBvn9KpnnGAoSGObi21zIhTEFNEYgMJMDIb2o/NNll5d1rYjsmSY/9jDtPw8zrOME4XPqC1NnDwL8X4T+gxbxsFAO1dDaaWwqqc2KTkyNr6mYxL6oRcoslSjyZKFoaZd+AC9djODIYsgb4mrYmimoulcP4p7VSsL9d6LokZqtq8IO5Fwh1SsOSFZi/J8Y3+7UGzdlGGYFo3sQagJMiQq7+yYU0vYcMPQcFHrswVqAmsQg3PGTemqKHcu24QVICuC4WqgfwaHodR0JTmeHwYgCBizYhDYRvVQJTczaRXuhss8OnjrAFXRWpL+mBOReSMBykITG5yKmnzmeX3du9zZiU63mN4Wpm7f+cR6T4cvcmil+KS0Nm9xanGqyZ7WOh8PA+5SbUdqv7uDNdFn+mop/nXyspPRYoghGVdzSG87Zm6xSTidwW0NTwJNz1P8BZU0+5aYVlm+CdnZPDm4LHB93dN9UhLucbrt3v8w1rDn4BX81fvcjVhJT5fNonQbnYumX9t1VKJc0XmTUQmlkFFZrvqEEaS5CV9yH8HtAIVGDGDlKWyMgaoSRBza96ov/DAmO9YOrIyQZ1iiYdq3UL+Ot4vjAW/O82TQPe1xaQgPo+2PrJzGvWhXl9JiKV2IidYZQf/astC2THmS/TgnYIKvceIr34gNzF5LO3bWr8UXmh87dYUkwM37c3dFZOzDTRhF9IFydcr36dJyMYeCjGlpAiOC4CNpofDXnYEFD0TSeDPE7TwHgoSHnsgFMpXQLEmTze84XiB68MxlVw3MFz/i3zvZGlpMG4RGPZXaMZloOs/sfBokTrSMgUghy0wFIG4Y2PTdnT12oUsxi+OxV3f+BxIBgHscMBCg41lm69IA58cyPCpTYwN5fkSlYyhfl3ruOhbGkV5ruw2qkX9kjc524MCjrYIchipCFAKI2uJy1pa6DZxVgcKIieU/IRRNXI8uOh4Bkf2WrhBNUNBVf6yws8lUdTga1ADJB1bRrw+Gdckq8g8AKax4qI1Nhk3FyhIDocIHiLq/xir/jqUhpGOCt7ov6bvqhqIDln2Ts+S8bkhPgkXDIjWZAvvesm5yKZktJ8x4EvwAnsVfqn/PdBpoVG0Ydu2zFo+i46xRAeIbFGR++/Qrj5QMdddqTnRFpkJ0323iRfcyOXqOh7L27KBFzimyIWRem1lfiOtJwSuxDT4vRG7hTkwKiO+r7QrfOgw8eYNWKqegQ9nsrpqUZP4dNNzIw3EKjAUNbwl8B0tjMhKJW61gM1oAMUKW9HWgXKL5WTwmfd5h0EmG7kw80DttmtcrEHUmmMZQL038KSpAfY2N742WKfIpMQ2qlpgGZZYue41OY6S+MjQyyYQFL43E6XJWmGeCshkBSfz5IrhZkIwsMCDW2qKO1acaU7zHKorOZllXWYA5CwwrLyL7gTj3SKa7wQgA6OZw2dkAbmwlpCVDmwUt3qtai0NtQrIvvg8aN2fz4WqCpJ8N9myCfydCEkfad9UxyDtn6n4xWE670uqYZK+YGXhLbWpOW7eSR+dyBv11JSztsr8OBItKkSpsj/2gb0whPPfvcTeBLQsv7A7ZH1uQM8EqWGARdxkHZv6/dNtIhf+lMGS4+ttsQ5hnBHaAMpGUupPQdLLSLHtwaxoNEIwAut3bMybfo9OKunu7JyuwHD0kV20cSn/hfGq8AYlc5BSGxKnsP2OxkL2SrVTGZpA2t2w2GQXkrEhqYcr9pxo8L7NN9poFgzdxOnSOruy0Eg1QgSioqM8sqT6Z4oJT2wts6+PMLkXgvtNLT+vXEOEH++iyeGgJe0MKx9SGqxcLR9XJCccJ2gLalKKIHN7ooDrZ0lEGd0enAuGYksdQ+VoJsvYtqFbs7s5MRTmr+9VTmWr+TTBNfCg+UCXP6Dng+xNNOyxIjmvX2cvAAZNvPgNaWKW6yRuunxjdtzd0RnV5t3kIi2Ak/00Iud1el+LMeV2Uru/jcrs5VnDweXbKRUbxEcTFKb0xsd3M+3d0PyujxDX4bhu/0tupF8/P/ec4pRiAwePffmL9Nh35adBmtFmfJavL/uEBpvIYmVckY2Qf1t7zxnyg30NDVBa9hTYziqeJIVa1OdCz1Cld68Lni0cN63CaPZTgwM9P9eA4vpYaz1keWlyeVQHiyKqpiE9Qk/mNtrkhVMjV8rrWhr+w7ckxVF4Z4SQgP4otgmSDXvw459wCLdqWtT3S1sJpKYQspZGaGGN+uKbT7uskAlqWzaVzSQz/1jsri723J04ybphb0c2jdrOx2QkqTQQPtlTDQVTfz3ak3lo2OUwVpkIq+RrHyJQCCI1BVjRHWtE0YQgcqNFblUAZoV/WEf/bhXTgbpynMzWtzidAD1Dy4P/sBcjnWUKrYG8NSf7GLWbn0iLwS7D6OpO58mVayCp/7vUDq2en5GUghrYMhgKf4xAm0yvWyRzgy4pXb8NiovxY1y9rQkGl09WMNXW3W52Xz4nR49WxwS1DyUaYVezq44UDjUSzGu84Me7QIWZQLEX31xtVajt0SCaNlVhJ3G6Y6mlo66TSEqq4xV061MvBYdYDuYbNrBoqxP3oBMviABtHTa6Vc+k1vu0NyOzno10td2ZmsSzAwagcpnTVvFwCK0NAaN2QaNHmIkctw1bHF8KqNR7mR7MJI7id/T9zRzNh5TgcLgosMWmbJMfuYPkIGdtGOwuyUnr7iI3LUDdVkfwvrfRLt0lZi7m6d7X486BrtisXe5nBuQTtN6RY7dIfJLG9zKZWZlDRtoiI3DxoVSb2SPG4cBz8sV/HMXzMAy/4L38kU1H6GHqliktGgxH+SoYmdL6r2eNAM9RRExgkqudXPWVcCD4q+7BJh0JlXT+fZVMMufY65jTUOTLqzOQ0qIl3+jIL5pd5SfCp03DYjViJeBiMnf0BV4CQoYLnJFGxszNvqUbktp3a/XsXHbrMF7Q7BrxVJ5jRMzbl0X0Kcuz/rI2PRAwGFfO/q1NA3WznTWnxr+Vj5tPenf4d+Jb/EdWoOcStce7OxrLTW6Q9KCDa6QMimBU1/32tdMyoXEsMSVOpHAP5UkkmLM3Yhp2bHkkM/VzXY7I1CDoyDmau900MetudJ1c5BkhrY9OtRjUgok9vbw5eCVsJ5sWLFVOFsJDEGrx6sWaRXt45b4/X0BHTMyKAfPh/VEWq8kl5m9McvzYYjGkf8ov6jrIRs79Z6zy81AN6xuqmnJSIs3sszDVsTqjDp3ZrON+PpuW38kTbTpq733xH73kxEt0imVS+hKtcNkclO6MM0hEqBCG17dyXI2HrGmj3IyFNGeiik/ao4zYc7EwjV6p+aMC2ze0wAsdfYwwLcC9rrfxPrvIHmiNieyHCTOB/vdX8BR1Z9rqIJZvQrUKJNJXCQoW1m1DnkiX0VZf37dq7Vo4GoeWNT4WirJjOtFY3fW678swXIJNco6KO9Mu08ZtWKz3TSb+DNga92lb5lcDRCw+khtgIk/FqQ8Or3ARS3GDQl+XXkFxAigmVjizq0Zd8oJ8qstiocOrrfD+K8vhFDidtCPz38Q/N+L5sBv185XgvN9WCjxAAAJ7AXNLdnxaSqIjlWVfX4MjtXoYMvSVVI9giLOZYMoRYjjHwCBszhZlxa7RDCs4IY9uF4S25rl5JNV7nijaW3Mowl6IZV5BK0z83M1qFSvTVhSIGXW2lxYQ0WlrIxRiIavO78/vQdJm22Wook9JqgnKMcTxVoYs94hR5PIk1hwfg9Z3L67p5li7HdkKknEH66c1tkmQv+owqnEuTXEbxvsIQJCpk8HWFYobrT5W6wrD9zRGjp4ZtdxT0qd/CsBmqdX7aQSkGH+8LmHeVMDbz5NVrcVTLpt+b60Y4Z+5/Y9OS8ir/mr2KtDmjN43agvvwfEt9na+98Me4uyVn2g/5yMGhP3BfOQ5+jqx8cI7VgH9EmIb5BTt8xFKDrxKXSQa0nYr6943n+H2c8MY1KeS8bMHncBPGEU8v/nqZl0yQY7IqrLjO/Z35g5ElAYbAk1gjrD2Wu2EF97jmaNePDAeHrQ24mIXQYgtpBeFFImfhVbGg+25IAUJQcuYcPT0qHW/v1lzRezSGPxYvkbUNyykexvTTLFAtMOQbkwPIfn348SYDMCnvgc/+xUqf94dzM+ap/TaQRAHA3N1KX7VpGNHZKWk9YiYyikocPy46mChYpa2LZ5u646ffmQlHdvBrnHjYgBcpp0fCiIJkBM6CV9Ji2DglrsVtHrfU2LjC6h/UIMVfeXUc5+6FTxbpLVZVg0UCKqBe/sAwkynKB6pdj44cFguGWJfPq64vKfL+jdCQm9j/hbxGEHq/HSmnli6UfujACPzFRlFnUdi757dyq+I6DnpMJhWDkTJwbaCkTm78B+yHrhpJCHQVwQgnynsgA4W/4OTZUISgZjQvFVOBD5NfY7IKoNNjvOOxRTZhwOrjEeeqXvSU6pmnFhPRaWiKYMGZxJzURFcP7hgkt/XHkHPS6ge1723tFfGGrZo6wGH3iPvpqbDptyzO6MdcdbpMgY5QeoQF5XWC86r+gC6/g2UEUXY16vB9MWXjB3vcdnqpEVOUCq480Fk5IAleIrwEVRX4HdaxOkDbtYUmO1edlhH+R6squKyaYFf/rmwoSEZAPZjnuiYCbxM1i8dOyZHbGv8Rh0SrEz6EK4Y3AMfX/rQ7kCNLGaBNTOwQDcZOEdd06QYoAStTpC2e2+6RA1qa08uFzxlwoDFB0gjD2GCDk+0RCWPhXrxb0XlT/kYX282LEbCo+PO0gMBFqHEm6XlOWqh0O+z2cLjCWZv3wH6P7YB6ouiGvIhxMQ6yysa+Yk8vlkie//PAIs2WN4OqF/xjBNpZMvAbXs02l9jYFEHIlO0kNqEk+ncd7O1dYHA0TsBQAqgsldEBNF+Fd60uGVQCJITJf/n1Jid1axpsh4oQL5jWiEOi2yw/5ML+lZPnKuvTR6u3nPRWR8uKWAM/XDHrLGn1+EYOG0seNE53EYX0fdmrOcEpibAT7DophEbRV4JLAMPOSIhEZ8GldQBJD31wCro2HvyaarGXIRFmgO0Exr8ebheGl00y+T0y5AH9aPnk6bt9xQSAMfNZeHVTLaI/qnsKzQHSx7num/S2dCjzY5AQeGr+FSl5ExzYzq+5IK5lxQr4WJV04BG5U/hPGVs/xFk6vBtTK4ULrWAzYoywoE1l6EnPCBiVfrIjDnCCtbp4vpaf93R4sItU5bWL7koZRex0uU/Sagnpfv41GodPwXqmenw0QKK5vrGqs+eq0CwpJrTuhchOmj3MDv1DDB5iGgKNLqTWH5EXfhKGtaRrbJIRFQWCqiykGlcScP/egJxNrhqW4VAVJvdGQkFoPWAPyvdGE03PAsfa3ELNrFlWxi4mac1/WfBDJfLnZMXdsqFiw/A1h/9qfTdCTOlRyhqebzed3gqAB8qCblPIiwLm3W3Tw6GM/aGYmeyU25IxU8lAV5ZKppRB7hYYaCiKAl7Okg44glsWzZraSEmnlcfpCLTAkvp6GEfCW6lnkrtGMDHmkYASPqKXz64MOYrMBd8WFlvKP740LNK8G05/Po6/A6JT8ap2AVM5eBZxVibmbhOUHkNe3E2cQTEmo8GHmvdzpdqteCZFjTKZGRfVAZZBFT+TRMuZqqM76aM1WkAuDa6l9NMDGquvXaKf59D44BEv+xsGaoOuESSF4PoCZ61NUHlZqAJJ+Bf/3bztHGM3ucQzdHAb+v4lIJ/Pv3It+d+cjdvdMG9XqgCv2nWyOIFP8dV6pYULGs+RjYbH3QQPcmt8zLytBaefhRTvnPfSOz9hRrwcA5XWfBl4qikp9QhK9EToOL4v2j5HxDSCXLoraFpPf4CukaJo/UzDYsKa3XLKsAqgKWCu+lqMw6xoQGCLI8zR+lWld6qgfhLcn58hJsSm5hE0ToWRX7bWioOwMdofPe4EEnljaxlri3PQ0b+gEFHFtBkxx1ZdoeSiXHgYMetiutfbMjDXmPTvXaUNlNdAi1pB34iG0V5U8ActXaKNxMZCK9iK4auwWYRd7mXV55P95A4+sGIV0k8tFcoj01SGFdJF8+yXkf4NUIEoqKjPLKk+meKCU9sLbOvjzC5F4L7TS0/r1xDhBikLu1LiR66QIl41HWLhCDXHp1Hkv4ncRkDRiRoTTeW48AEUivmKFC+aacyWsNLSbzOvScRti9EdVoGTk75G8zw9M9XoX3bA43pAvDNet2HPVGAV6PoeThVaBVYMAZfHY4ALdrs8GGIRRdS1XgEuDeiykIJEknI8+EzgrbA+0LiIUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR50+cguzZ5/RzY2D3/wQYdowmQSpXwL2KgFBkJ76BdDdrH39PtZT34I9nfJeZSztdOvY0uDn30Q2EhtE+hXHVEXK8eXgK4V+RDfaoQ2WH+Uu0uF47PoTMOJjHed8M717rLq6RXmu7DaqRf2SNznbgwKOtghyGKkIUAoja4nLWlroNnTFEAGug229Cvfg0bi5T/3bbbXip3j7ED5bZNARTjbQF8HgZYO475iHItL4mBDADtz/EW2qoiF9Qhma7Ku390UcRzpgSJUIKAxGlho3iPGRsyvIy1srmKhbx1YRS+Zgw9vLL+2kFh0ZpuREHUpD/RwiPkYAXrCuXZDAMQBFbvDu0HfQBCFhM8HHLuCQHeZmitnaGEfKOmB2EWgU1DEPfWBveVp1pf9rxOHwOT3+PBZkxoiGvHL03ym8jDY7dxD1bxN/y1sSqmZmVwvSmJ6tmfYKSInVaXw8wABPsK67d5Gk2++XZuSzoGHYjbRapn3g3RpaxC4pNUKLnxbxZZHkGo7cuVIJojFukaMj258s6Ddo04TzBxVdDStQNIXvaQNhEhVCZebatW66BTIMNjOKfxINKYOhEdU80glg96zjto2bc7CRbvfBMtcHY60zRCgrnXH84LONFT7myOLz4lMNP5yaMmVrRYEfdEXx5kNKrC/GRl/tlEBqwB0bJRefOaLHe2HFfHhKABmZb7Rz3PbShvChx73lEr3KWUGnmH1mu/prSecgFQRa8JEhAIPiYl1rVhnLJCFgZ79C/aS+ER1koh4IEuvJZMqhKmQI0k7woRdtGzg/YQja0RM8/ieEd5s+PfIhQee0uR8Z9KxgCnNxNFJQ/R8KeAuktGe9zAqL6MgnJ8CMRHW6RRCA7WVlM+/cCbtOiIfiDdOmPmFN8HA2OEp6WVyOGQ/tPKxwYSUMhblijFE3fcx7GSZ61Cri1GAkjMwUvIY47J4AUfEv/DWEjPtjuNAeNe4s6Zf6GT+U6SWYUicTcdE558Ck2hT89g8H/F8kHDILQEk1dB3/t2JLm2Txj+v8W0aODlrfuKe9pt6prYKUYHoGvIAsAHC8mburWFqcdYsmGzHmdEW4HxDY0VHP+oqf3j2gzy0fUueeQYhaGkV5ruw2qkX9kjc524MCjrYIchipCFAKI2uJy1pa6DZ99j6GixCfC7cAjoYl1lZglN/PFs2g19o2ISOn0d7H3aR5fB4IRjiuoD2JXRh5czHdAZ6LvMZuTWGKJrj9IlMPYszny0y9H8bcn2zVwIC7eCBHQC3Vq+UK6cukali9da+tXJRDiCmVN5wsHbjTfL8LAfLW+Vz+F45YWhIr3V5+GwTD8HqF1pF4SthmFQzj8YvCa7PJ1lyrRDhak4pyRcxYSS0F8h/ec6SM7N5zPr0+8cQ7RK9Ru3rQE6mgKuDirUmGNNO1eBpyvCIlfbLqAAAY5+TQB3GfT4LSPoGUCrY7RhvYeuoQwPO+6XhGSykZWqwEvsRJW+Lf8t/8MXN278bL6wFX6s8L6hle9eMoWJ9qa0xj5R5VEKcyqPWAVg3DGYmTUWh2gXn82IyJmrCC+Wi2aUqkayZufoXq34Vi/+T3B4+jBqnhDv1ac3tMTD2X4mFGAlDWG7i67qeJ4KyJaUHZGe3OZH2cSxdrSz5rkG/RKiJuo/rw3UDduIGf2ncmLMoINUIEoqKjPLKk+meKCU9sLbOvjzC5F4L7TS0/r1xDhB+LyD1EWzoLec39JhwnhyS5tnaFO2Wr1NaCW4rkxvXZbSLghK7dCBM+Qrm8U3rn4gv6AmD0s4LcZAERBpwtqVYncLUee9kzutIOG10g0oZ2IajXQ17ZNlGw92Z9BUuueNKsQJdxwjauMyqggQILMxFD9FcE6d9zVXYlW9gGZlywfdyQfOW+5QqgEmQxGE5RJ86El/Qip4Z/pelJ2FURcXzDXGbrYtYd5eGU/CFSs17ZyO/Eg8fwLN865x1FPVT6a4LT1xNjMP4jzvOjPGQwcDSHV62iQ/RfKalPM9ia7+ZnoUptuOUtQMpU5bdZx0A/tMK/UNlJ5C9hI+lvzga3SsI4vFI+N1D9IoIjwugNJQAJkOZFOxUC67U/sxFuaCDjcutUyqTO0zaOeEXuF8BX8iF3PPfWcNGgK1LrQmHMgRzxKYgnKwGDYisLe/bRvToHjIpheTm6p/vX0475meptUUr2kowVN261zPVWlJZLvs+9EH7b6Yh5qZ0My1oRHaGDiezrdBv8YNepQR4Avuwq/9//ftMkVUE6HmZr5Qk3bMi4fOYRgT+gw8vYLJl2GTJTndFZzYqqTfPY6R3zghuMhrfh8JNbuGdvv2C5FXRrYalPrtu3ypZzcdbdCiMm06DoQbg1QgSioqM8sqT6Z4oJT2wts6+PMLkXgvtNLT+vXEOEH3hFOqc7ntRxlJkGouAy8JmyJKGiVQpf/04Swjh3Wq0jokNm1tJd4hbIKTSIiS8JRpSZAhpSImbAYqEby1xAXLwWmZmmDGbHEAnkn90tue7DcksR+ezbwmBfs0VMXMm+4fDT2oFvh/cv2ANGUZFzyMPWrOo0+qOHABZFQTGK6KQI+v81vGvERgByarCpmjqgmTUyv53Q6yQgN+6Vetq6V9ZZnzsDl4BJ1i4N65o/rBp69RXYvoB+MCURndZy3lj1TVXAXttfkjjUmewM9A8oTnhPeXYNjU0hQuUzTHFxgU1mlp5s8ptIA/bI9v5n8zHPvKn1xRvWuDHI/xDKZCkB6qdAtiNzas7VcQxd7FaKDEMNDGqNMZAv9jbPzHNyhJP6HtxVQyDsgnj3uqwnZnx2tHVx9x33bbblpXwUAqwEDc1eM1bOADWnriF3KwAautWarvkroznrznM3qcmWujz/gkiPphQ19hT+DbIMGhbrfwY27vpb/G1X/6CyvoU3/7NPUmZmg8pK6DbeDVyQjqv+JnsbMavR5lsl/L/yAz2YeJ+3WZQUry+t674ZKZHNdNdpyM7iRp6X6PUXxH0D/lnI5aEonm35DKdlE6EnS5YEU6cys7W/mkHv8ve6/DpqJlngdHYT8rBFA9LXozn6aeVAGchBxj3KxHnCYLpV5ekNzsOsyLSEfDHnuJHs7vQWQ7PQz/w/WYzbZUlDwX5AVD51zgBrjYUSSu3Rf03blTxtrjEF6T85TYXHRjaakynx9ZLVme0rd6todxmZ20lGnjF1YbYwonOz3PO4/1pB4DJJ4IP95pw9i2v0SNJUuh5OH0zmmBTSv+B3F8mx12vL2ilncodw+ue9Wz7xXM8rdV4FeKyX4IfUCTOK0LHrs2o1olCcH+0aWM9V363C3H81hT4frnnlq7GesaRqqhuEW2RmirHtU+pORIqbtIydXK2N8Rh5ooF4Q0C+dRFOdV3rksw5s7hQPCyIGOc5oKXciRzBYJe51FBT1qVpojHXWQJ7p+5QmPIh1rhWNJBf25sXfkMHzHqY15bUp8RrlpgoCZrByXroe9ol38iXqPS5cjp4t/WkEh8I/1+FVIJEUfZqAMU+yHrbNDDnrMHHIWW6zDSUuLK9HoSNMqBBtgkTOh+qKgyt+SMvPfKACI6RYLNsOawNIfeZAu/Fz03NaUjctBuv1H4Whiz3iFHk8iTWHB+D1ncvrunmWLsd2QqScQfrpzW2SZkcA9+zbCSPZIuu4ZcHiWiTtlqA2u+0F0uDqGmSgR/jLuNSVdckkO574V8AbqDozQx6RA451m1zbCPQY9B8L+hHqLYa3/wqboGkm1fvr/8OABF2zbJMtxt7iT56LxhFmYaEoypQKC3CfNv2O9PrkpCYRWQMX/ca5b2wivhlAgN83Q6uUOM+eE6zSDxIW6cPuaPHgM7qphrE3HB8i2K8ZQ7kxKVpNMNHEd9Ok/Lui19UVFmFA8u9GR6dFSznUNfviuwbAhHNF48iNxK5dPwdZ0ANBMQWD3zZlfQAPx6aJ1t6Rz542PhgprehC/eaSIAwI+oC5h77dB85a3GXF1SHClUMBBbvUiH320eMZMxmmW35CqBPgKaulZDT00m3czxpaEfHKkwo7VG7J9FD+aN9/Qz5gQTtskAwwX/8/sLelOPPlaJo+Odj2oMfvhPm5mHG13t7xGoIed3HokStFsYzZVmBFFPPy8JqWm4udPOro6EafoyM1e6IrZUB5/D3Jw8zWRTOkMhkd7ZHFMIWqIviJUuKQCxZxZO0DH+I2P5b3NU9Y5xnlWt2gXJNMVraZU+Y+mWWX3+W7aPo9YZXfpwSnmcSFRWbD/Kxbp+zTQ7E35LjcqH3xeCh5AwcnIMH67yuTq7GeXRcN0Xqd7oTnQptPEBdZ3ZzZJjhkHePrvhX5LEKN/QFXgJChguckUbGzM2+pRuS2ndr9excduswXtDsGvFcxgz1lzom7YhoYVMqGh221RyfWbH3uXupu8FTB949XcwayTnI4Fk063iW/S8aLRbZblvVbw0CzQacskAGJginlpwOzK11VIxUuguiCdaG7NKqbGhpZaFlcUleTWZ3PMlF/zaeRyHv4JW9aoc31wAWs7XIEYLJVTOiAnKWMGk1cfu6Ip9OOq7wAp1NSJRv3iR6TCLi7ta6po7Fun7+9uv5xRMNokzF7c+RhYs2MEgYxbHPQtuCU59/tkd3cVS8iODA32n0xo7LwlLojOi49d/SC0OjEn0saGnAUGSbQQBTiKQRkBdRJriqxzLPuuhM+ij+a9HQVGQseQcoFQR4AP9qKEXf9MTrj1Xc4c7O3dbQQH835e1eaybtMannAbKcdnIm249RT8zmoAlOyM0akK2qzL8+0mk0aqBFxPveCFX2SXXy+h8b8gDQcQRRhPG1sCOocNMV2AU3/37/cUTaVlmbseL+yrgmrU0UHrM26g3rNCJu7Alemn0psn0vRH+INLKLiC3iFq1X1A37ZSJbxLHtXuItyogy59o8fAK6RNaqbiOCx7XFFo0kNv5cJg0/+nunKTqRJiQ69ZHp8UZANvbqikV5ruw2qkX9kjc524MCjrYIchipCFAKI2uJy1pa6DZ3Oz77Ia6pWjEybybAg3M9y4ZDUxytjQg02dFEWW/R2kYv7SNYdH5/+cnfgJjRL32PJFsYmFbV26DVtlNAPgAnGucclymaatVGxnOPz7kDRwy/HTNiOYtKauKGEBy/qXFZFoX6ziM+8F3/mdGyQw3+uktQGj1eiCoUwI8vG/zwl1amRHtAY69iY3qk+FdfSsW+9azLcDf3D7WE36RnEc9ri1tudKF1Dy3nIM5zeEYj+FrZU9apFxelkf0NKvrAuNCSV/etYbqy0Kky+occaJGPUMI/2l1ApS/P6yJEet+QxM/5m88UU4T7iwbU/lhIP9FdqnO6K43OhlAqM7fzfgQ2DTi88wLO11fP9W+gfTTVnl5yKSokth4dqFjzRjmm++p2YT15YJb10XAiapTrIqA58pdywzaquGjqySXs0E5tAHhZZfpYaB6SC1t+NtXyI9i07m2d7EtbxXgNM8BzSJZnFQzFEVCwoc6Od/g2GpYEyQJN7L/rTBjbvEc53nYgi9cEHCcZNUV0yxi9PLQJnvTL4KBB0nEMw9Zx47gSYwPN+jN4wOyxYctqJlwgQdNwUlN3CKBcIvrnc+iwULVJ39RIIUkdvKRUVXWN5Wor3yk6AMVORQkQcdvna/e4mutxJhUr7OweSHIDQRKe0X8BH5BK/0PC/lJNjVAtbLQxw6VsnfTKTYDGm2WCRdtFpGdZTTFW5sOtsx3H+Y6/ga8jANc9R3l1EXOSU6FUWBYclCPF9OTI/UHizGuRfq/eEtPWNBXpYmR/YV/MlZK3KLLAwOWnxXF8WYev4e4LEN3HIVlb1J5atO/1giTcjAvltaTgApRf7/PA48RNRceqsZCoPKcj6/nfZTgXP5BGDzDdbDfFVWKyOyPStneLlKXufB8m3I+mXTfP2WopFYwlfWsUHZZ9bs98P3kRDkcxruwtBCPm7vENsJ9NohhlGT9DtnaxIhVvelA9y9KbmEGKLHywap44pJlllzKQrjeHi5aVYMyD6JWtaGWDdN373uTfWUnw4LFBZoI0zF339+3N1qsGiFXThlNkjNgbWmzS/mgiTy5fwEYxJ+x7CbwSkcCpDZHhHywErQGqVtfH65mZ9JZ8gtZhDBS8hjjsngBR8S/8NYSM+2O40B417izpl/oZP5TpJZhZKYPit3RQxoEzX3dIVqfao3Dt1I5wrwOc3A74dTyk74LVgYkM32rwE8JoR/tFeG+5+NOARYdvm3qDTMpRey7rH+M3xjaIWymGpQ0cEsMIz6sdgzfWpKdjmcK2+eZoVtjncYmaZ4TPCu1CgeIzMzRluFNxRLYxuT7G8z0vLQeGTpWLCuvo/YiGALFgCrh8xIa5wSW2kGMucLHhy7A2a0JxO2JoWTUSA1/rA4+WxptYwijy1S2XFd2OxHbIWLHq4hJDxFBo6sujz1j2HUjA4xrb832+lfmtGbrkHGZK3VHcyVur9YgFt69SaOUVGvtBtKIKJGvhZQtpC2yxHFWGm3GYEYJcN+kCMY2xt1z7sfOI0aeDpp39PqdMaJwL6Fr+PEzhna69sm/Xv1kg+KaBIv5c/0xtV/UloCt7aknD2ZnJOuqZhM4PRTaWgLkcdgKsJC3Z7OV/Mrz5XhazTQBqyLdAbXZZ8SeKOMny7xzIENDxT87Z5TPQ2zERu1P2ZpdT8meJ2olsUO7vwt8s7G+YP36bf3eB4h9oi9eBfgVw5z6iUpFM3CeXD6arrDTGelsvjckwv0zCw8SA/S54S72XMkedOmqJIDJWh4ijB6XLJfoCDAiqsO6YH/HgvPTllDfBrjRAicvMGKJqMHOHz1eEu/w9G0Vgbfwg4a6TSTBOVuHDR+JBKCrvR+Nt3SDJijW3x1amwE0QbmIrPh8mbGC73okB17ufkVF5VByCo44HkHuwwsuHU8fulLfrKxULwh0SyiE8O3rEyrg87m0qJ//WmMdVVYCWv2arFvEpn8ySjMmJFYWBuW7YidBDsz2PfgD038oW7S8jeOn5o8NZmOa/wfJLiDVCBKKiozyypPpniglPbC2zr48wuReC+00tP69cQ4QQM5ieHpdDsG5CBUkc1kto8L5I6FfL1f5d+EpXpJgV04m5i2o/tqzA4VTSdpcKTFckZCc27z1KqpmIh0EOyPGtexZ5T3CXYHHreLUx9kWfkszBTEfFJNyaKUkW85SlAAzmanF4IZrFCLAWtylhdMiXcA7KniQM3Pgw/FNX26kCedSPVjZmGH6BIT79vwyOzgsm8vmte1SM+/u8t+GCgQGLQEM3poWCGaUtd9mxC8p+yAmwhkx7A4qAzz3VM1ggbO/smGvnGxCEnCBBlGvw4AHufZ+PFURN3R1SmfbqevZvnBAXltsGyYJB3feGcjCkaoPXVSwr/9b4yE63qwjkLLSdcs/bQjsN/72DPw21UMupHj4avUGK4Juo3WtsEGskDFZ9F4OPUGkKgWjo0Jtogr3F1jdeDDAdi3ILZMJjb2xSQtg1QgSioqM8sqT6Z4oJT2wts6+PMLkXgvtNLT+vXEOEGAtL/isGMNwWfyWjYyIqj4Rvw45AzPDC647FNitgAo4QQlbB9OrlNf+kCosvg9HaTDZwQLjQvhpeeQ4tDVFMh0GDtd31oV5H+gKGXAipMWSEtTtjf/5pQh8yXYu0o0819AwoLa0MI3uMFltixUtATvXkggpNvpFO4+cHiHfpKlL4+ICRKQEteyutHLV2d8URVUrlB6n+tZXH2+/Vr1RHz8VMpegHjpkic3xKpwbGDCiof9qf4uPkcP7sAw2/ULWgxsMs2ZqHsjCSVi/parDn892RZ8trUnxMKFgFjohwcy+otrCj6fAls1cGLELEd5PDsRoecn0lE0/8oxLLNDPiwdVSw+mfIMA9/2cKM/QSdsqVayk1yAruExqVF6fmaAa1ZKF2WQZOMcK1e+NTYwhgf623JkBkHmwJysF0lBiFg8MYNUIEoqKjPLKk+meKCU9sLbOvjzC5F4L7TS0/r1xDhB9gjkfXP6oo5bbKawvXdZik2FUj/Xz1EwL3zn2CoByZcG6oLajtSbIvy7s3YfcwfK3wry38bO2/kfMpDf/jeRDSSjw06/CfgIIOFMPlWgZkTyYpRxmnUZKKdU1So/J614WJnqcRt6BWsEwjR/LmEw2fr1UjnYG/GMcn8pj8x0DyXwXBpEfoiFLmC2gwMhcb8APFqatZYF4sBmRqmYSEmeN9pjnhpGEOXi7BDxFhL+DL49SplgaxI1K71DzyozP0OZmX3xJEJYJXnS44IhgjH1ESfzk0K73Fuqb0rKrKF0bdj2UkBbxK3yHvc6fm3c8HeRuJK2e4tQzo3XUBpJfBJBc6RXmu7DaqRf2SNznbgwKOtghyGKkIUAoja4nLWlroNnbv/Fo2h1BBxUyUy1rUEnpk83BN2qbLdOHIjAApQVEIyX/zfm+6OAUUhxEIJvfBVK6z/Px5jzclnXVY5jqHMiYS3MRIBo88r2n8VGkXDfG2h25x3fH7B/gYOtNOKcU0wxip4l7aa6lOqgA5Edlif2bKw0Qqcn8P/m75vwrs6XTYQHPH/2KXvUVjSZELb614olUlVwfPPnOt8tosoGklPSl9iI6JLP/RnltQnGIs9HQbqiYzWyeuatKHqmHyAa7aCBhL6bl4meSppvTILgR0/dCKscGhFnpRCBHnYWrng0rlcfDT2oFvh/cv2ANGUZFzyMPWrOo0+qOHABZFQTGK6KQG0nG+rxqeM49yOm9YsJwDoP0Covgnw/gKk46gSpn/1cJmWKABx9/8Zaom6sNJ9MIfc+g74I7yC0FgWHTSDHJfGNfmvsxubYZEUL2jkvO5Lb84XkUVsT1nuijWSoMLj3tRTNwnlw+mq6w0xnpbL43JML9MwsPEgP0ueEu9lzJHnT0TLzOjXthA63CU8zm0zSMcTuzpyO74+7RM1cpPEIAw+TrA7QPY9cP0GeCQeOY4CbDD7qBbhRywuxcJj+TqUSYCNXtTQd0YiiCotIElZpXuO/z4tFMTUloFcZHsJvz0kmuof3Zeau3ngiofKmtzdcGwgMmbso3aUk6gP/IceIUP7xJNAUUCYXNEwMMmt/zJaJIpqIpN0m7kppPIU1yWNZcrcuwEuxwXMcVlWPVI7L5WgFZBZ07fpGVcG1Dw9ortxOYv1on02qlWMuJxMuOtg9qUPy3MKfMDt1cQ7A9jkfIBh/Bj8XWELUFJYCl8ETq8/8/mCGhP461jJyj+pxHeKDlcFLyGOOyeAFHxL/w1hIz7Y7jQHjXuLOmX+hk/lOklmF8uG+igpwYFpiXlnDZJwThczIEC77BaqMw33AGZaCci2zwyHrPzPVZEBQP3aRVdHvT3Io1+nkWhXxiH2GgIrNLkcCTSbnWSyal9davpp+I8P+WZhgOpKc/ujESvFRVRMTDbhxr3+Zd7YOy+hfUhmvpatyPKsZrIEZjPNC6oRR472L++tbbJY2sj6jqUDTRHx0TYtgCkpd/+uZQjmxlueMreLk98iIGABzDB9ScFY0PC/vTfHfnMhRcn2O2sDdrraipWvTU+Xuyx/J4cIw/NcjvqiOCzwYVMtm/OAwKzUOJUdIwDrjB8gt4cDJgLd1BGTfPgtXyof4xuP/Xd+oSCbW9X/1fVPc+icEwTSLAZeKyqdbJKmfd/Lw8hDxpaHsCWUOw/B4WpLmVfgM/pc64W839AusFCXYMhLMzf38LEHlDx+m3YRjPfQ671eMYKyiuOBwJTWvpKizJeqySGunXLZaMgKOeo2BYgO3A1LcKxI/+SGvhG3mpW5lgubqWYz8wsOelO7S239GRDqotYwm4RzaWtVDClobtHdjlbE5gvP0Dz++NLuXTmh9SJkmJLMOk9szISXHj3wFon0UE5D0CuJoS0UtOhG/tsRaDGgcLmdV1DqcZqVC+umwmcsfwF0UfX9kcvf9Tv1vpimcHwNrOElKyr5Kodk1Ix6kvpDTtwbnZV+g4Hu135rLCFCH+PYbWG7b1IRFVlUFGOLjdVTWXvLv6UedBmyqsvqVd0WZeyV1nL7m5/LSb2SDE3LSMEY0oIQsYsgoPMR4FKrdIfP0POYHCUPIA4/+EiL+IpWJAVqky8KGV2u0bCxePz1wZagFcBX+wmxx5GyoYbXLx0bKCBvA0MfTyYOpMEwI1c00sL8bYh/9S+CYppS/PSs5R1a9Vc4qf0BV4CQoYLnJFGxszNvqUbktp3a/XsXHbrMF7Q7BrxWJDG78+hcmi8o8mLYvxfyyIv40gYZLsoUdz52YdTTWdF7Rksi6EYsXiQ+fUe/5yMdQe7CSQqlknMgqY12E3+Z5i8SknF5i/jnLPZLgLHlfJWoVEMDdsAchdZ9Lhjimnlhgh8zYT7XwyADpCrmhT8hdq521ER+UJ3O+KwaWd112cnrECpvak+gKXJ3ginVuq3/BoIv2BvF7PtrxSeZdQcKjlM+B+FKd8wiDmMKXmkzQxl6AEB6M4DVR5nRJA83wOznKmz2ajyWAass8MamtXroK5p/wDoimLtnuqLvYZvp1OX9AVeAkKGC5yRRsbMzb6lG5Lad2v17Fx26zBe0Owa8V0TiHtT7owNlioZ3kRmR3F1Qi9o1kaB2Twa/ATnupG+YdnKUgMOcXJuVpMP87YL6fPBULIqt2Me9icfAq2x0PIJc2o3+iAOQdzGc+DwAVanTdZj7W0e03L/xsvjoEAMx6qPRT2zpDV0gKzdD+k+2PFWWR0ktSVwMaEH9kzUBOLx5Q1+oN4yeP67GfmRDcsrAnOr8Dhg+gConCYzHkYR1jdAz7h+jmucXxEGUKZeRj5l3oE2o4xObLg7uL5wuPdyErkLRYxlZrpGKvsY/moAHBP7UWBJzrl0JqQXJPIvHy8VB/QFXgJChguckUbGzM2+pRuS2ndr9excduswXtDsGvFQZDyzadYLKjZL/23vW4u/Md59tZ++1bhLWG41aRukkak65iP8cFGeXdkrnOo/UtL2iq7qQl/K8yQRcHwKXfmETYW1oQzSupyi57TCwL2o0TEh1NKMzJSUjLnDVk1ItNlzFmnM+EF0nWBebELg2onl2GNZXXWuEVmZ1K+eHkL4AcByIJ14/8L62pZyOeeABdDLgkmooo73sjme3kz9edcmYMpsNEgUVyNiSmSZGayvJ3yKBG1oirCf1dwuPN5Wbvpll+ok3VHtqHkYiiKjNcrx6Af19wLdcyStgb1hV01OHAMjeJIffPqjDexE6JOjF6sBM22Op+EF4ylb7KbErucZt06cc5/8jJFfeH61xBSJNOdlMyBq+OljCMe/d7w+ijSlmDevuOMdVEf3bFU80IzKReivsZSI5yLJGahvK2AOF5sybQd87lOjIcPei7WbZVh1WVTjO5bGNd3pzYUgaBUxgnguYSWbqjjttOLpEYIqwJUq7mLwhZydez91ywbPoPpVTRhyEeneysWvAdeKDOGPmgDnqSP8IrAPJcDgoqokfa7Uz6SAz5mAnrk/1UfKB51IsYNyO4QzuADMRXGXK65LSdWZcTV9IuRaStc1W9bQU/rx/1FTygtN9NkhyWGzkhGP0YNQ9//ZIdUNOUsbfu1u5eRNj06qMmp/dLrWnPk7CS+SBrizHuPOTXKSes0PQd3X//KBuatY/pVjJ66QEiWtpLKRLbidlAUo68mFsGsoMeUs3brOKF/Zrl6Wz+Cr5YtG7iyqALuovL2ee32MlD2XUgi47J6RGTYEnPH5cnaPBSrTNGqGSojAV/vLHAHXkbMEf+HFDdwvEHGFeb+esrIbFCYYYrRrxLr26ioJpVZTbC7rxYpx6vpjzXhzGenJtUauXEt4rOWEhv19/ZIePTU42TduMriywYlDkgoVhxuPKTHw09qBb4f3L9gDRlGRc8jD1qzqNPqjhwAWRUExiuikD4pKJtLITh04TTL1cXhr8LukehGZWlSQomiv0mnFzng3g9gOy+WLnc0yLHGvJmfoA7HeRu3xmtp7xDeJhvwFM3EV3u17KrP1wMyYPOfRgzpvBqEMoMpU+UfPVBPAzJNFZyKiU6iZAMTqLh9mzBAt8/0WRz14NSe0HwkmaTifrXIgvpVGsXhDZaaFmSLODLkMWh934zvmfU24PY0oRw8/hi65cBsey6qfESKwZ9h3k4iQSvyz9KHGOsDtrzNSs1IvrsSIoHoDghQv/IiAEdAOpDZb182u6UDHiibE9cNReMmA10xzP/gLqapXqTqa0TeE+UI6mtifmytt7seMqRRi/J1SOl13HTIBFauLT0Jz/idKL4R2h4CQu3LiFQpyuuYklrL91HtEfRuPeMcapth05h/VOE/hj1e+AVQ9YCuc7GPxTNwnlw+mq6w0xnpbL43JML9MwsPEgP0ueEu9lzJHnTTz9svD9wzOBk8fkQVh/u24ZKHOUBxo9kcS2KdzjjHxnLTB+RuSbh/S2OQkae5de/DUfwGdG6d9NSNeRmvWtlMPZlHbbL6LkLpTTOj4/GJ09gwEx4I3jcNaKzEcMo8bUj/Rg1D3/9kh1Q05Sxt+7W7l5E2PTqoyan90utac+TsJKG0bsiKl+O1rE1tw7wroPGtg/N+/phcTbbgNgLPpnMddzuZj1zY9zkwyWc/wM1pc1sWD4oA+ck/9LJpM4/JmQBDJYtEfotlhUQM0rtRyaGreP9sYHOolCwvimMp2NLLG0REJNAyCWOH8kJoJ+yzCjovTIIv7qqtWQTXXifIqDqV8M1s3t8D90NaPc7+jyzhXPj3FKnZrWj7p9A4UClhiIGpkR9JlrO9HPfOc8kYwu2dFZ/b/03cGyDtWVEVS3yaXUfDT2oFvh/cv2ANGUZFzyMPWrOo0+qOHABZFQTGK6KQHSZSkf0zf6IdEnvL8FcnEB08INMBjr4y6bQUTFRvM+EBdWa2u5QBgSrfo37Mn0myYSbyIOpYp9raImCVLl/8a0pQS3pC5p/C44dQ+7z8JAkAZM4xEJw73hg2gxJTEfNCeL3hSheEzkIz2yAyJbQJj0LGnb3mC7fOYLXflfYoASVsNAk2dC+v8MsfUU7FvrDXWoZMguqdvg+/dlrnLXQbgRyuT3xk/LDy/34SMTYVydc9tff7J+l4d1K1oqMc09sw/WDSFlR9TOpgzu2736DuQ7NcdfiUQAi4GmHq/TOHcHUFbbYflvaAovgsybGZgMKph76BK/loGTQCzMCHTFSL92LAkdvMgH7euQ9oUX/JEoXvbGBqWwj/2Qkl2+8W5wXABqS56ah58CZS6vllSd6PSgJ9b/gTVp+0XaipE0DYK6syTijoWujMp1ta6p+41zKhZ6tOtAUZfoUpd871aquoOvBXGI70g1h8VNh/2ZJps5w6S4ymppjlhTuh3g7s3+hexTNwnlw+mq6w0xnpbL43JML9MwsPEgP0ueEu9lzJHnToA9+2c7oyMfVh3cJ/9RKeYVmo3Ibl6vebcRA/MCZhznoZI8HAVAT9inwlWhfY6THC/t98pYv7VGaZg4s+FHNeV1z4ISnnIBUeE2cs3imv0unEsdBfxXoWkp0+vVpqVF+HjrNhhVe04lYCGtPqzgJPMbEqYbX81/FfeBoQHg5OJp9SBO/QAAwIKy7F9FZL/rLiU5ekj9h9k/Q/+BE7VAXgFtUudzPiM61bw0N3msiLZgHr7803awLh/JQMTmBPIZYrT9S5YafonV75RL1aRZC7gKJzlcfBDhPxeycqGJ8fYjaTS/w4AOEjZwk8hRqluZx8hioNeBfRRIV97VOv4Md8pWDCxadzXi83UD6QdEAs05ruZAiKlBRUFnrq4xqJFHR0SvQkQVSPTCmGUTItEGK5Twtm98YQmF/dKY1NUQ7e632kfkIYlu7if+ckecRBl7bu4izUrj3sBeypdh7bqqiVZSpfceU8oNlO/KcCFdOgSyoooLNWoA97NS2QZ1A7G6qQ3ckNXevGDTWsrQVy+MvbY5AS+KRFG7Qw5rUSwGD9uqo7mOeV1vy5SxloN4PjqUva3pR/gjN6DXRJtX1KFiftkgwE2SzYjr+HByjmpGuhDLtTGaWV9fD/GyCXSbZ76ldjyd2tpPRVrLDs7y0tcX8VdQFVQHmjkthJVVK4S4N3GkUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR506Osbfn6i6I4DoFYiqjVKr0ayGC9dCGt9lTQTpcHuyDdLfmSGU7LTu800DjlILRz8wXQ7J59AcmLEQj7ErmRE84IQq3AqAnEjGtVGwC2aPvXa8kxtUwXomHd0Po7Mh5pUx8NPagW+H9y/YA0ZRkXPIw9as6jT6o4cAFkVBMYropAi3OKwn3Ivtz/XquInZeogJEXnv58C/u4uCz7/FhmsFd3yzOluGR9bpUM13rg73v9uqnq617v0mqRw4qh/aNxEqJ6uv6RfvYosoSTw7lcGvOiKPFqmNzViOjPd6VkrMuUpFea7sNqpF/ZI3OduDAo62CHIYqQhQCiNrictaWug2f2vG5AMYvOHvsdnS1HyvoS/52hVYHXaYa/RHe4sI9yhQfDxMPJy4g4CiOf3P7YzVQXpj5f58GZhwbnRplXqKGwGjvo8XjEFbjBdQ9sxrRwW3JjZVDGbxsZpHKJMdCs1pWjv7Eh01Hl0SOt7+csl0UmAW4fN0AE031p9luoAXlnjpPVIFYEy0jDQ54nwByugpgZrAGEm520ZNyPNNSpzcZ11bU6H9Q9ITalpg3e1P4jeMVn2I+lghMu1Lu7b3ldeT9wAUtxp2BOXUCDxO2lqGwEypwdeY4Z2d7TsTlyt+pockuWULeUqVlUgGt2yhyLrhw1ySfKeoflyNVySO63NVkPsoK10+a0sKOUvyPHBGk2Oju6sFz+S5Y9heF9IB7twOmfixqLWXxKBfYOm/+ZsafOGWt1SsOMp4H0M7rK/yWH2cjdABB37ZfkpgM8vl9PpSBKZUXVXfIF9XSOL+ERxcUPiDNr35Qm1XbfNxC6I3BDjcuPVPm+8pVZTGyvjlnS5Ak8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3MlcMOWl5hc3Yqpb2VZxaJ68nQX6vRCwZosV4v9CaFOHa/XvcEaf2zd5KcrOgHaZCvbHAvsj6cqMBTQIKbfIXrjC2IUJjIhGLoq4CnQMi1K1wOgYE9TbKrZDqPKZ7zdN8Gkgk8Az066uZUZ2k+6Xj7dT+imB0o2U8ZMzuSys6E0kmld8dOhX3POLP8njLGHHjMWso8k6gEm7l8LnP6KtBQrAbcuMK6lb5vHIau1GGdAHGvwExc6JRb4Y0ck9WzmScY64S/ppdRme1SjlEBXtcTo2fgKI1EAuK2MrmQhGk/bp337AM/DFTjwKTBBq/36499OD6WtyEHpRaWVl4Po1I/SrhMHRr/RKwBJuTXV9299qk+wETM0Ykt+IQJ/zgFEl1pZJFBPehgXYr6S46B6ho1c3Ydj/xiIi8IpPX+HMrd8SS1K5zHhVTLI5FBCyyX3+lfoCXQL6IR/OmfwiRwAUvPoBBlm4X3LKtfLk/InFTa1eaE3O6CX1E19CLuAA9EO+gbSd6rfCb3szFL9V27Z61a1gZc1S5LEObWG/AYpdPBlu++Hw09qBb4f3L9gDRlGRc8jD1qzqNPqjhwAWRUExiuikB8sivnPgwbYbyzmW8A0EDBNa4UZa048kwgAhZNfsCqF6pwYLS0paqhm1RVbEd4/k/MxBkdJ4onEzUdfbOpiZBysN1nggeU1+9UI254yRGAReyaSIw6uR69s3B+FtVIxyeT1qmSqGo97/C5DuVJoEq108OFmUrNY1Yca37hqtIscVfjqy4TsI5GMgxkppQRMmxpi5rAnuK0QJsZzkVqJxR4XSzlQ7K8fVLRIP7XFftycl7iSfDg/T4or+6KR76bDPSEfRWFdLNM5Gk2LWCQKcTZvGbZby3mV+659+HW50nyQ6cLFbKL1uhH0tq81FPpOVuJqsyPBkdkTkqVGzSKSCGiTt8xFKDrxKXSQa0nYr6943n+H2c8MY1KeS8bMHncBPHRH7t01ALfKLzK+Xpamx9efzbSa6Hpjlb7Z66nYiKfbzw1+HdQKroPB2aHW3kcdHki5e231K9QCUmeq7jifBkDn+mrgSkXFYsDjpMZIoDVgxODTE5dslYWj/tj3z3sDFI8RQaOrLo89Y9h1IwOMa2/N9vpX5rRm65BxmSt1R3MlY5TD3qVUJPVBNQ3xA0GmEEDZq6c72AQUjVJN4+YgQsEa0QjoPrHEHGm/LHuRlu3ofFykF3GHKu+Kvr9LClQ2ffcmcvNV91fi9nPrYnKBLf6YnM+q91+QiDz7Cv8iCOBfPmwmqcSAIjXyYqpmt/tPfEHvcGu6f2nGeZNfuZW1UbjDSzT5bA6IKcGjDxFTrl5S5KLvJ3v/jF2HstNolAHJ+KTtA0NDeHEZ8LhjF2XBDEVWEDmk81pdznSF0qLvwSuQtT0Jj5evND6Q+h0WnKJaqgmb+fn+l/xucGXEdPEkS2DOyKsYkil0MRzic3i09ftjVhulNHJ7IWaWecU/7ecJxG+VhbZpbfNpGLkARr5hqnu7M6HxPkXpIinwAnaWgkIpT0QoIs67W/L89/naBhd7f7dg+Dv8QOJOojOlJPhp729enHC/qXu3vPsRVXEuSonaBAhayOydcYNgRJwN8ckUS6PzirPQ2+/rOjKb8PG+tU1RRfcMIVDRk9kr31NH//RCycmm1OpGEq48PNfRqwVdLC25Su8p96HEkp399ibxhS84+XQHTuPHGjx9gE3W8DPGT5lln+iX+lfPMnFOpCq9wtnmfoPDgxKXpVvoBj9gfe1WFcgfMqNKRcKMo1r5NB7ueGL2h/kvz5DIqaNkR/8LbL54Cy0lSKUkajj7FDlauOI385IkamzfSgW7UR4N1QNNsNtpLIB3hSxr1XeBSnQsT2t84g28qLO6uR6+bG6ct9pLKXq+7eRUcah7q1n2edfjeIaYGVwbCU+6gZxDZ/vGj5n2ADaXurALaIUMYEBdNCTZsyeY+Qkz1uVqJtBWLefrREPihk1S6Mwm+yiwj+MfZskbHu/BRlWEpDUlwm4zGsvJAnuYENrNuZpoQYlacRs1dT/DzUHFTcj7UaXhPMV6nbJ53oU4m0+AR3l4fyVJf0iTN1J0ga3J8W1vv4buRi1vMMCApJ9WFbi5+K1kiRY2j50fWIRuOAWwVv3jHEolKUr9lQLd0WCrpN/mWXnZnBiHRZHyJp5dE7ZdqykGlcSTWH3PiyM1GGWfmuRTsM6erysA2o6Y7IQ4Kbx2hIjfmVk7e3MHTcveQF6xjmtTFVPMozngGIN5A1SJW5VAwm4naIpjYFq3AtxxqOaaj0NMHy2hPFfnD07fWAPBD4KFIvRPK8llBpjXDMjlsr1bNw+Ensqliluskbrp8Y3bc3dEZ1ebd5CItgJP9NCLndXpfizHleEhYb6IZ69jPOBkIyzF6aJ/8pN53UcSGWG9PVVGaHfS5kZcnj7q9iyO+iAzZ6jm5G58KfBPJlpxHCkiq2KdGajlUvuyyesf3Z9etcdjoDHJlWLU/YsfGnZ0BXlfNS3LDHBS8hjjsngBR8S/8NYSM+2O40B417izpl/oZP5TpJZhYgJlAFz6Rk1EUd651r7VgVvJ5co7vYJjN0S5sYSzqyAhUZCluNKdGXsODWjT+Q3nq4BEnR1jIi2+3iOQ3dPkQL/XqNTxhMzA6ilSv07Gm5ijOIhDrf+QhPsgOwuhk/afk7fMRSg68Sl0kGtJ2K+veN5/h9nPDGNSnkvGzB53ATx3z2oOGTbaDUgQSgNUT+QkU+IlDrqBaxEX/XagMd++Cadp2xMxJX7u6aCElgs1UlDtxV7NdZQKFWysBIp1otRlivEztIzYn1VEqrUxzIH/33tIKOFfsQ4poGBA8QWy3Q5kWhfrOIz7wXf+Z0bJDDf66S1AaPV6IKhTAjy8b/PCXW5MIm1OB5QkbENVS9nU5edDB5R/tMlYaOHKeShVPEOKkTX+retOH/vi9LVIGyvJy2lnSIsDX9EEllxUyEapWd2jEHBwlcsRbE2LBM0F24brD49DJUeNsNew4WR179XU7uOVzryDV9dCF3BhwYsJxqf1Q1/UtOu+k5NxzwTr39gnI24JrhAwT73+6fSTRgql/e9dnstsBSvhOrQIoi7EVw3uqDHkUXmJGbuHirVYxleNVpMy2FcVJVlmVFTy1NVHq8JIzoUj+klYThjOVktUwKTeaSCdrwxH++2oWil9qUtPvRlLnO617QWnUqXLujRw2RuywiBZrXjKulQ/sgdbIDUp7vDT3pfuMeWy7VQvhI6TNfA94F1nzpSoopL7IVDlTbRTHdfn5eCTtEm0tXhyauHiTtTKXIFjK0E2JqwVQu8WkBnzDSx4oVdo1auxD5bMCkKsqmz3NJZz8ax8efR4sDxoFZUuRN6c8I/2V7jWjcp9MBo/sIJn9D7hwOgU06kg5+yt0U0LgA0AVDLngLYskPmWCtKvbY1XJxkFjgu8UZROGpSHxhsFpV9cQQsmtrNb5W8NwUQ49VHzwpj2FvsFLJLASTRHddclgYZlzn+KGKnSxnjb/BxY1OWnnCb8RqWzUmLdsgXGO8RF+NLu/g97xb6b24GkBMnbRvuE9SVxYMNDsCBPUxKizMwDrGws37cZgnNwticLXWAdYigqfAIW1KRroH/D/w+B+tLBCkOggAqK3yhlhWp17Nn7dbz4BfZcpLrjBDG1XrJsSLbkEI6N0MyFsoUU0weouiaVvilN4OzxY0LYj4Z1zBPRzsdaZuv4U1pZ+pDXNTwAXpZ1pE8QhfLVE99Ad7pmi/cD3mOLjtbdQcBElgpQEGgc3s/lJEyGgXW4QE+xz8z6WsiBSbAx2eJpngK+knX9epQv0yzrV7n+fPngwiWEoChI7evUxqaTchtsk+tr9eCrtxB732KA7FrJHZrIC6mPKTHcszP6Laigdz1Nf/v2/p47VjGUTcE7Q3X2ehs/JOdOb66DWR7xO/ZR9gtSxr6lVXkGInBVGsKVKCG8nnol5ls/oL54LmuClhjiAm8vQz68iqKrHoSLJ8MNLY2IknNx1aK2KRofPo3JMRx9qfPGEOXjhSFAL+DIiIPHg+BWwtebxLHbms4HFf5r6FRpRisFHWIFqb+SO8dY1gosiS3S+PkjHaI2hlxr0LZsLBsArtFcycabksArfBtcOTewcWh/2AKQlo4oTsRJ1P2H2HT0URGjGx0aOG8dxAI0cOEfy67ro8P5HzXhxHzsgGUBzUopelgPhVLqaCF30Q0PrUIvseVAxntt3nRF0Nl1Ser1cSLj/1MlKMBH71B+Zetde1yd5eisXVIZNgovm0KIAraSqp8qJNorLRwFYldaJPIbRz2lohatR0h9sQQrV2HWQdWrgYVmLocWOWPcBqrHy6It8zjYYD5cZLjbYlOKHti2Eor/SYPp77c01p0vNsoX3EyxQp3yD8wTCkR46ksOyHRPbrrqTeLuUk7uvpwgpnijHyDM0JheDNBdIvkLvbC4J4H9yrm8JWFwR0Pdck2mH/ey3v4l/coMN+MevX6MVlVjRPZRyDJNgRa7xP9CDdSlAIv0YFWiHs1aX8lld3mcIIRX3eEtY0iSOiusK4DnVrYJfJg00CSfa09YqzLp8nN9SI075sfy7GqQ9lhFqIlFP7DHeqjXHv/Xd7J1vBX96REHvZG2x1eEmMBglemaF/SlLxWaD7uzHeNv5y6VTj1H/GFEUk4f3vzkKesLs/rO9/uXsmRoZ6viyAbSEWj9Yy0juSOBmUt9pCu2/9vEea+jd8EZkY2cvJXT31JmYy0b77PiYn9jEmKuo9oFZxbXF036AZJoD1dveylTQi8CebPrrPZqgTJuWba90dp+p1HkE923ojOaOR5UVSFggQGzxHj4nAZHsdbHPD1qidNzpsF0wAsbn8OVeJydkF+Xj0wy8POnhjoEOa4bEx7q2Xb5ClRdDwIuVIFqRq7MY/4Kg8SvUdTEa3oKxrMdHjuUwsQAYj6g4KzNsJoB0ozMV674hVNNwhWBSw36e15lAc/378JIGyzf4rSKDW46KUV5sfBuMZmJBUdw6t07N7ykyWHZJQ40sPT8RyFBllf0AAYI+rfkoCsfemXzFT0B1VCEW8M6SRSvQylVdFQTdenPUAnOtFJ3gIFbf7LsxQ1VvznC+QpUXQ8CLlSBakauzGP+CoPEr1HUxGt6CsazHR47lMLsebcgRs+zkBXRwi1VYXg4WD2bzXVzP+cC3srm0PRBwjdXf2ebu1znCxbFb7tdpq/cbzF5kD/5gsoltBiUlrHQG0coO1wRBsKXlRt58xR2IL6wREZv6P9PXakReVXaksMg8jluguYv/IcLzzF9ZuiECWr/NGZ/3nbUd338ZMdQlmtif3ElrtB+SWlcN7cs7auDrTDx0FRan7fAgYF3MMH5goih6RRSKYLzDWNzcNVhiJqj0/ezOpnEdHbTpAqqQuB+Kg9VvraA8sgNRRx/xChYGxB5GLHoM4h58LrtqzSDb5zcGa7khciXL6D5nDrBDf0AhHMwwOUtUVwFShsnKeLmyOVykAXPeKV5u1taBZ9AwZpmT4HcwOtCFBUii6T5t+1x4XyQaWSqBLz2THlGCS3a4uNhWFqxYcNglxrDS6wEB7CP/Q7wzbgVbaB0Dz4OHZMgQYZ3tB8+HulJ5Ipl+DhlOddk9ZzjdB2qoJo3FNPL3qD/uG12PrSEYSKmua3KVXYzzKlqvET3AGPLV2R99z/VgJV8GlxMsKQGk5cU2pRalYUzcJ5cPpqusNMZ6Wy+NyTC/TMLDxID9LnhLvZcyR50yVroCqpUMVcmvC8YLQyJK26eWxsw3shfvTqE7hpREWSVXifGZBkxvHJem69bT52z0CCk+zNRSP4XcB8rWhQeMSos6fMUiw9M+YS/wi1x5bIDfJJzroC/olz/pnfecs+1QJfk8o1GVrFewhtMNYLnuBA+s9UfgM7umBA/O3Nee/Vw2LvSRYJTS+iOz/QKFMqJGeeS2U7Kxj+R1VQgFXH0PZY57cRU2+SkbQZ2CP7T3X1MsNvjbPbc2eSSgmAh1IcE3aS/CqewEax7ct2hL+FW/YKjuYLo4INaX88vcjWC7zWaAVn2DrOKTPwtncRe6AxIn0OQd02LvkGus7V9X2Gwh59/hHVwngGASx24lnqYhUJYRDOwtLMEc00LK+Vc41rQAYxhIqLbviai7gnMaAJgL7xfaEqr+XZzXralXV4daYDju5v3HlFqFQSoG5SaoWnzHstQdvb+pKXVe92rNCPCpqDsqYJVCnth2fk4dXBV670ZQuy3cEZnHxZHKLhywxrwNTi4PauhZa9GjRQw5vw9Vtykyl500QvKCpMX+pBOEMR6qurxibk+wo5EbWxNDCl7JTcwFoeis1bbnHrUAzmYDJ/7b8TENFDl8IcjrwxzY7+0Q8B4lFF6Npco6JLGHh4ZD2CGbtPZZa+IF0ochQeq7mn+OHRvA/QL7P9cg2empcuHfCtrI4Zp8gAUm5UaVOlRJqELAdbOBKsyYStHr8NayFf/PFo0yoXFH5b5XM3txHfsIYhntJd3ieFqwOLYIM43wgfXz+xblpDvH/6avOedpBNQx47wYy7DlM1nQTIH8nzD9qcZ4nDxzmtF67rtnlfyaj2B8PFDf0fPmFJ6+yAFTlw+tfP4rK1MDUmT+i1GOaQd4y4HcMg0LXinL2IiylYPo157Qd+G/TihbYt3ZVleweAgYCfB4ykzCs2Wndlz1OnVOfsf06cNzZKQAbdLeadJ/TqHk5kdk1CwJ7ICsznKmnBS8hjjsngBR8S/8NYSM+2O40B417izpl/oZP5TpJZhdHkGykSD/CS1xCLo84Ci4o7U/siX9OaCJs9/3NkdRy00Dc4jemL4OTQQWCapNlrBlwyWxenq5ErBPrZIEYsdCsXXIhwb4VUWF+aIw2maPpyszvwH9zMYgimd00XJYdZJHSIWOzGGD2jGfbiZz31k0uj/yCl6DFOImpWwr88q6pE4iriw7aO0Vdwa8b56S3rHa43B/6I2tg/ywDJPXTiIzeU8BV5QiBr57iIJ5BzjGpnSLRsZ0+0OFarrwuehHwdgtQjk95SeFWQgX1OafD/e+Tt9YHuRy1IoY8GYKqua1bel8od/QsZvUxdNMKcmnPgPDRDDABBJLMezWE5YZF0Ir2uVzXkPnYdoQFzXab11WYubKIcHM4orwdNtN8UtoRY/EhHTfJGiXlVhb7Y3odvMOGxtXp8ZJO3OiEX0A3Y5rGFzdJ6PSQWqv6pIYC+QiYVT1gG2BttB/P49venNo7pjeK1WtIoWlk1tZV2Z3Ln2reI2rZIZxLfR3QGUPTThIAUaIf6DrGAyDa8qo3YrlF0UnQkcyGdI+mBfSA4lMRzAgaAS0QCW6P76QNFzAIhK4+/ua2HjDafLDYyGLmiCcXUGsthCnGv3GiBl1VPSss4iJSnWE0UDs0M6DdxikCWfu9G3lRaW44/VvEOLjXoR8DR0zTh+j45eiz98JF3CFWDhY0PKAJohryvLun32oNENCwhx/IvNNkfKo99fgFUGw/MrlEolw+6zjlH6r1JFFzK/cIv3+QlggvZ3ZmYHlCBfonSYhUiikG3/XBfORpU+/Sm9+j75cc6Mgdnk9v2coYCQsZ0pALUhSMYIAJ+SMr0thlZEhnj/hZQTltktcmfOXWrLfS9YPAgkHfafqekgnJiaUWx5+RhmXJSgjMF3MPSxLBEs7Fx4QD9JIz0jIH1/turLiyds9CPFbCtLsDmV4oYCBo+HBz+S3Mw89Q08GnV+j7KA0jIEqYpLtQKYljsNZPbUmd4MWhz+SkizFJHbq+ba1dWvjM7q2+l87wzlItHq8V2LDEywIfB9q+vbNxAkIO0G/HMwdVoIhadoiXSmrvGPC0Dc2j0uiW9bhG9jhKhILrvrRQpbJ+H83sAgpOIBq/4krYWiXjw9J6g2Hy64NDxiKRwt3wju5TOYu1g/Oldn367e1cavHaA5+FDq/XYasiikqU4NCDelvXrjZHf62GnYJv6kxb4Ytmvop8KajlwUgPzfhsk3cZHo4wCTYYrjHKZvaaY49VIlCZknKK3xphqIkVxcrmmPNGg7H6EEloenAHy+URFEid3KUbi/1WdlhD5kgcncl0vefjd1y0Gbex4xEzoIOtufMclPHRskVfL+jj6YHzZnJpayYV9OstP8sEHB8LqSOOxG+wMFit3LjN5pQAnKQUcVl8OStzUJf5Nwb7jY+XJkL08r7QFbgm9i4bz9ceMY+barDif86M96yztAjIISwhu4+8KQobwP1aa3Oz7SnkJrLuH5op89U2VnX0Wv2PFosnz8cN4JXOvTXrzRL4X2AchhbXPNqAR2Qi8Bsq4clZRrzwUOBsrB9GmDu3SFTzhBFdRKK2kaR16kbtsbZv1i+lACGyTYzmwbi6WVlMVvg+MI0LJ2+Q3THKlm1ZklhSkRtKk+A4G2p9xPdbWPfprKeJuV3D2R5HmrEazzjkWpDj5aCX0RGmt8hZuwFeRIL/Xzi5gDQQQ0dncTXViTKA2oHZ1/8QSfIfmdyWvW80ltE7356aEkeOZKzit8ald/etb86CFYgI03nKPG/6y/byDQ3AzKpeXoqKMeXRoM2Dmj3HH3C3v0fewdD8zNic5cJyteR9CXyoFmO2wbVn9mh9oi0ILx86vkwr/soQLpUij6Hyg7hYksyUhKnbQTjULEbBjel89YMTgvqEnzMtEMPs2JKwLB624RJ4opxU6zbCpDlgAp7pySmf0y9vU8gi59d/9ISlT0kqXEV7AFupCaIemzo1V2coQTiCNpZ+j4eBsYKk/7ApQsOnHcZoA2yAf0UkgnZiPigbFxhnswq9UEgXgNK+gJBkQ3teMO+GapxjQfzNN+txs7uDAhuUNpcjfo5dQWxYWUs+nTh0pmzAOGqKOc3TsoWOwBZR9b1hqHVOoTca16VQs4r85WNxn0aZP54cITkGzLeyL+FLMXf0uTmqR3pc6/G8s7HSH4/pipRpY1rwJMsgYHD1kItVTxLNMo2MK2hKOObSM0f0gpj6Wtg95U5qrk9c0/tKjeVbjhY0ULh3z8jeYgwbc+dY5TnhPmYhZxEIZWtUZnQLoM2mKBfFTjor5tP1C5WOtpPoHEtJvLTk7GUeN4j2MpOOCVpl8f5LKkNczUS9t47RSFAP3EZ0TUzVVj+xgmOX/E/dA4YJh2k7LJNqBn6hqcvZL48TzVM56EzuAkxQMX1TqpDto5erlVBV4kWwj5fyAcuCSW0onRmqGKHdG7qmhCatpx6myHebEFZEB1PycPNrnNt0gO0LE6+dYrfVUa7+z6z1m48pgR5YZxwFMyPvkYGayQwNM367wx45QEInsM9+Dds3sgsV3waep9dkxQPteTVXVKZRR+cFi8qrgJO0D2gVY4jPmho9peHhJdYrm+GbdPqdpNbc4P7ZX9FJWJd2YKGBL8wKTq7UhZI78g+WaX9v5t4eIxfJAua5n6SSqc6HdZJrzAHeWCpLGHibMYVp1mU8u0ebm2snemgncw/W/2x3m7omCklHv1NNZOP7LtlC1645XX8rq4ST/ohd9wry+9YQfE1WROYRyBEYH9bJQzHY5UmP09e7Ejrws05WhmW+wPFGT9iXuCeWlo3pyMXp7Ehnd130fDlUoVfUlSs+Ty3jyjhRL9/uwsA6MuDZQ/xE0SY1f2g8MwbLWLlw/ZL703yfg37HwV4jPga+Q/ZeK0pdys1MAacj0iRsmEprK4sm2YZ4tSJEGCwS8m3QS4hgL58ovIIhCPeo01CAlZK1KxDSRzI+jHpF/LO1NZ8686PiMiGtV3nmYfFB190O69VQlxQ6WuloKknjQCrhHlE8St6IRWi+nP0OP2zFxso2nE/QVUufCjDp2hxm45qczoeyKS4ZHTbgnlMLcHCQEbQG9oqJyzjVugebRBVP9nGmiRk+SAcK8R8+D8v6Z7CS3beo+fh1iAMpYF+o56Mky0lBJd4soMIU0GfEbe3coLMHpcc71SaAptgbj2qu1FKcBBvLE4EIdO7nNL/+3X/PQYEdzrsmykHTt7ZF3vi213DJwcA1n1fyMOyU2fJh6p2s1h8gstDMNsG4Vnaxhpi4p9JHjZFDexPdX1ho5isNAz52oOcqjrbqVqi9LUP71wRr5ECGmNwYAb1lrVPOHn2mxU22PdVxM7mttlAhFZiiqZV5383pm3oftx30vqcfec26F6BkzqKLmugpkjK2u0IpTe+IsPD8xnROSKom+0D4F0Gk7M9qltvyc3nmhnUcBAD1HlIUHyIjHK4Tjyxt+5gUhNpQvr0G9A1p1wTJD4yP6BzNvF9tvAIeEVXiN8Y8Fx1w+0qCzZh/DmuNjHl3+oVRr7VFIe4YigI9EtFeBUgZ1Fr9cvXW7WhDvdfXE3vQXVKmEmZzI0xlJkHsp/51lkbnmGsL7UT8MAKGVFJhZo1aMWCH6GFPkGM/Y/+CDa7TgSLqQ+P3CkMUgCr3NKj0qFrGD51HD1PrToXiYanrjrRznK1NmwDxC+W1MFuONmZ/zTFa6RjoYtSOCaBr4Hbw15kmvGMwXCKjErRjYwgz4sK90CjS/tb8WfbVHbkdlLEE5grgcEeHm/3hqLYzTpfoXGHl6HlZVfzgCxjkTKPRokSE5r677eEwceqHgd/hz0b1hhQSdWlStw1cNxvgDie1J/lUGQv9Fn3WJ5gTBHJCaB9ES5bIw60VZ225qRtvB0lRg7FJK9nYehrE4THZrHgB2aec5LPtGxqsSVfCY+DeCm0+y7x+JxgVhPCVOcaJMXwFWb/+vZSIovPH9MQJnUuFjoYjhzYZjVZXh5E6fDqiyrM2PNCGTcbDPNG9yzxmxGmg2U2Wfj2eKPzvtUYNI2cNwrgQKJ4y1wlYEDZ+5tpjM5dkWkS+x/R064u6FhAlolKPMoZrqeBFEyh+onxjL4P+YJDdY15AnOqXYQN+BUFV3LIrJlEfLXkEvb70ZOjMe5fumhF0GvGz85DSNXQ8LBRgUQ6Thcjs7uYzOmwGIwRqHk5yZhDcuQE7XGpm3COPJjPR3q4+Trpx6rSTdh2ZsP01q6blOXGfctHkpx62k/unkv1UXVncSPr54KYUPO9dCdgWp+c0JysSD0bZ0k4C7eBNTlh6SAYEdeikbnatazsdxmtWQgbrot2waX1V13PwFozvtl/CH5emSMk6DD70Z5CaYHpcsIBYXTyEE7uFQ2Er2OkV3UvKTT05DCGhf9ls59cyWt5a1KmQPJKJ/Qd+JD68juGg7iVgrpc2V9+y9ppYwd3IJZlCaot8ymjRfKA7sh4J2ctZT1QoqYrwdnp9PSbJnCpobyAznsXTD3zSzMDASjZ6nsBNu6GjswUYkPy+W2MjqbslIFsImbzOcMWND7EO0hpIuFwbEbR3YzHjw9AagOKDSBlYslsAP5YVOWSjsMKFpfsynxOTu30HWPCv0rK2e17s6EwcoEeFY3d0n9fiYJSkCQWfkYF2k9EMjl4dHAcy0M3J+y/1h0gwhqUKDMYgN0rJ5EWRXHOm6zUDorWopdTbCSGxCXwu7ERsRIGKtyb9TLdmP/VAYIqXPWZGv64EaWAXvaJQ0SAI5bC09qzH9UIryGJvrij22ycPaJAGlFfGPOQAEcVvWC5zhKarRENLyGJTcOEwivNlBvpO5on/X42MldY2nPcvqQgJP1oKJ+b118ejWHo/GW+mjMK9PSYLdKs5whzOTM0FjrHU4fcA2eymAeYlweu6EEBenG+f5S2qimNDb4rU4i32xVsOg63ownbYIpOjzjFOp6mL9+vueMqR3tZJgEDbFFn/ltLparc+JUi9PRlbgt/2XT5iAvwW/pmK27QDd9fBEYRhQJq0KTpo87IWS1quxZ9T9nSQDiiP2sG4WnVRiDbcntWyhDAvMuIAPpVRfvPhN+moHmL39AM+h7sXxIS41VbWLVF02i/YvxxXWLzyHmGaxhQFYuvlNfxboaZSoC0x3B1qyvMXfA+ZDWKPDAG9iMERv95C1EvZMzzym72g6f8np5uDas9Iu7FRKIEL302UvkAZddl/aDIviIcs5X0hsNa/cdVskyOJ8pfDZQMhTt2xhckOfmO1Y72q7njToYDDPeCiGUFSJfbL5KuHtMonhTrQyPZlasxZqAH8BxR4+9YNxWQ7yXqrZV42l9d3ZnKJ+ZAxedlKwtNla/j3ZAXhQR7WaC+8S5no6ZFxOmJ8Bh5jxq2d7QJOuIXrZZLRhsS3AXcLpA5G98H3vupmq4KKbXzLrBmc41IUR3f4tfb796oeou7yF/R0biTaxaDK3YQY5vtji3Dz1uUf6CfsH2xj7vr3bijsyE6YbE047fF1a4OsqEat+HR1yFZEixq/eTNIERcnP9Wwq07va5NHD/fmW0qKIfWsBJ7vwafA7KeSEQEIaSrqXbOhkFxpi1FlGY6Cm6+Bg1IcT94ab8sbNTMX0ma+jRjyyW30F6J1SyqW/WgkR3d8080XlG+G/ukzowvamdZK3SUdw3NWvgnlsxrI7pNFCEfD2mEMNMlm7m960NRxvw8SNyAJ2zEO0ISipELemgOryK9gPdiN8Ym2Fp5rhTUdEiQKTfdPG+WTV7C1PFXjQIrVjyN1ExYlLFGndkC+OxqGoVgcKdCuvHRlMpaDTBVSnL6sQ2Yi//vJ/re8N9PLS9cTfH96ss+EUqQ4dBgorrv+rz9kp6vMod/zU0lQf+XN0XRop9rx32e5pJbxRkxSO7hnTc1DT2m0Nuje0Fim6uQ89R19PKF0N+bDehUjwGLOognxFrlthwhP2UcMV4bmTfMioEkqHDqC3EhM0pBLgu8thwge7T1eFNEcbhDpVQB9o4pAxiJaBaiYwvDHkOtS0cOAMxji7PDsmsi4lUH6DfvzOmkmK9C0Umy9YwmbrCOXFL62tEeLOPrzXvDuMsdAXXVgCP7367VQyVQbOhmsOYNCkmGJWPph/+VpLkci0jKBxoBVOgh1Tt4I35sEAceprn890mDLw/8WFKANYgKcRt0Zu+nr/BQ5mjwK0dBMEv0VF0U696fxVMWbZkRLY7tv0XbKWoH7EHa5GOVHMZZ3EqNTBYuUdE+Vtyg1axWOqEVGoVpPxMkwk01bAzC7kg5lqS5kVVOmwsXtXflrdRO6jKPEt6q24ZdCjUT0O6m0sezgYavtObOcBBOEWZvzSHK06A1anatDW1sCnfEMqEo7e0NFM8U+ygb5B30wKUKEPxa7yULay+/fH93MFME1UFOjjbPVmQmOQ7eWT9xha8FmHKApvxzA5XbHcnlhPfIDD6dUZXmYPtESv9dP/8mGWgOHLzLCDlDvQxv4LGxdyhvhPU7i3o9687d8Hn+MbMy0tZbwZTfLFAQKsFjlRvbEuOkhVhwrmWVUAC3UIgVpRRdsBoIlOPISTl0R5Nv5HKfQ+fBGOjZJV2R4PHssQtqN8h5jwt01j/kHw5NJacxgPgYGqyY+AnvDxcyA24ASGD/B9HuBapGm6a51RMsHieIkckJMEdreGsAMvClLqgFkbLwOLpnEPFzHnHjbCbiyT9kaBJSzuu128AVjaNMrLYwSGMu2VQkOAoLRkW80GqC7DG0KxJPDYQVPH5v+IINRxP3WpW7iAf19RUqqSBcYIxZzgoKym3O0Z5U0DirOEq9JnWswOGNydhz6l7ahb8YrFc6mJrBmD4MfVv43U3CYoSM/fy2YPuZCsYy7lFnXbC1WxvANznf0g5d2+Xfd7iASeXI9aTMmbL4JROptdIbRz+54WAkqrX1FA4b16QFdaK/GBaMM8KEzlGplEGB+KZz63UOOLNNwoGPkRkGzsxOQg93KSXZjPE8Hb3VEKnw2lP8cmDlnX79Mtv0opOiL80+QDMQVqSnl4/WCYwzjVKMXxqIcjeT5vZrN1ZR/m1qVAMVZMWr3WqE/XY/8uJcyQdG4u2dBPYbQ8IpsmtLTMyNI/pmqINjwynaodIbpSaF7g44xqC6MrwMDgzmwkfjR4FJw9FTxPm39t1yUti94Hh5epQUnzFyEp7n7yC3EwzpoMEsvOa1+QXRLnOzAbRbedOsGOS+uDKOYh2XiEaW9+3+xDGwF7YW7YbLsLDv4vlWYOXftt68QEgAsNCG3omNOCtoEtzqREt3MQADgy0ZfSgYxiwZKhPIoL7qMhEJ+H3h0/C8BnXx5q5S6M9PfhMlr6qYXycHR3j+4Bv3R27v2aM6MS6nUjhfYNgTEDiy7hZlasIRKPJjcyLrwcXBkNV2dFxsaU8eNu0Vt2BNFPr3NGHgUvYQlfgpp/SEGPg9vBNZYN9XV7yTnPkMxwDxDw4Lz27w/PGE9si0ZStqSxdj3do3WbWAN7In93VXx2ma4BXQiP0TSXBvhYCL1axGk5p+gjh3zPxSwucYYcuMhnfd1xlBJnSWZHRzSXk33nw8Bl5mxOQk/F7F0Ml0hH4Tm+I7nbXNC8CpQOP6fc8UiHf5NF26FXE3bJNuHs524fqGo8uFM2kJtEiGJUcv6TmqZIy4drZA3HnDJRZbmzH2isYVOHaiy0u+E2XXn6K51/v0o60QRB0pbvHBskuaI6ECy1u4w9y5t6wlATHuQCsyjUNYyXKroKQujpJFIX3Pj+af7PBtuX5oN7HwUk78xPMI2s09KRTg65O4ZN3DUyWjkW9cMa0irNnW+ekemC42VvubKJheDmP2dE5GH6ISaHBKHPdRCViTnYMWJTFlG86VmxRzsqGBpX/OXgzPTvp5wKbjzaQJled/fFt/TO3G6OlTfupz//hTCTkVCjsebk0Q7/IvYuKf3ou/+AfIrLKVY6up9526b8qIR1e0NIfn8JL4OhwCD/r1gNSXaN7Zj22G4r075ViscDfab+USwjSYTCKVVhrpa1/WXtEAQRVsjAflwT/c79WYJA7L5z2anmXfkREBmAB8L2jHoR+sCymNfl553tlacsdeYa1cs0bj2OTTBvE+RNvmL5V4p1ADwFqEkaw6qOS/J5iIenTj0D0Se9NEvts0Y2KRNZqPFXGyFsUQEaxIcfiP8wxX3TavHvY8FlssCpbM4uNyWodz+TiBByCdnG3ygUSlshaKLzn1dSfsfbSmG7XqGLk3loAC8489zQyiP14A9+FZ0FUIOfyLscejq5XXYmVA4VbHt/9+91cN9JPrTYc2rS+MtzV1LWEnGYTdNPMt/JE1YRwcSxtMatyAeX6QljR2dOAbUxHegJDFR/pDEvvkKalF5hbqKV9C/EV364AhgY8gQ/4nGqballmzdeztqfvECcXILPWuGAYL/w/suTIdafa01n+Ef23m0Jyu9NEdBEIzmQm/SjopC2y23u16Y65tWr6+/ZWiOjCY7jAT3uQ/FPqvQ2Xv0oQVFXk055pTrh+AhvZPvsZrvMuNTD3O6v/bGi9UH1WkboKtSgfxMYQcuRGLrp/OuZBBlPBI1dvccsrz+UWrbFwwy2MHIF8L7WZra488de1Y7cP0Pi6xBiKzoXXT1ujQ9bUkCuBswk7twlSaDTQssdfF7QU3ev93+6xlp3oc9hSUIZ0FEApPy5pzWV8yhhOMucFXV6/ABTo6W/m42YX5Hqli4CNZNXNT9aUsC7uXRyXyg50lLhONga53cfxMOCR0e7RrKGOvlP+wQYc85yKrLVOnp3eV2XRcEp3JbkN0H0vbp85C0MPseQjyph/4UgVzgNvECuXD9YEYUNz6q6tIod7oEGcYISEA6VwXY0sYLsdj+UXJISwI0E3QyF+iLAthhdgQVhUb0pSCrZbPgBLb+5T/VbyLu+VoxOdPduEHuZmMW/5DHmvsgCwi+vxG4OTVsgacngKc3idwnm/cAlECDy8jbkuCPHG5Np3ga04j4Jxc4R8wmpyCKYhW5LXFBFSLuLR2qlDsK6o86mpuLVmcssheA8mM7jeQqCiHjSG/9CVYUzxToEpINhqLi1z0N1UprzRy6yHc6uGTocUG7OEW1SM0Z+bfw5YYZNU4AZZwTOuR/RxhGpbmopNOkBfT0xDiSBbjGUJ8Qcxsj2AtPn+Gp/s8F0AlouzUUuqcm3grFUqqUaaP+jGdhhO86+f6VnU6igVO1cir6UHJB41AZeNK38FlBhkmEAM1YUi6btJv2IXwDNgk3RzywRVECqy8dRHp/OZEb4O7RQIpqg7egul1MzE5doZHZkZmZGlvoGn2tbWqMLI8jCwAFSOYRxg4FcnwivdX2ldpjeKFEsic/8taDQHFcONdQtgZjmVPJJzFm4X3isFRHusfeIG94QAQJ0aZ2fiFGz0T1X3K7AEGPAyKhNwqvqqcipgebpM17VbPx+OM7Y9k/bLrq/t4HGaO8n5F4Ya7TDVIkMckgwINSBMGSvVVPC77o/gSTiyNpqmmxKM61XvOMrNsQcN9JxXlD/XXN2R+kZE0GpJJVSg/vjMjoJk7l6MSeykDaelnS9Ha2a7V+LdBiJcGrEezws85k+IoJaJEtoNZqSlc7SsZ4egN1cWdJ89MPoxtGPffIqL15Y2TvYC+VqSncjXq64WUjzL6/pyKJhV/qtYpokjMpVlN3+gCBT+wQacY2ZR9+NQwdnqZW+VCc3+X7xv3VuexhEOLNhz3FGtw3OjA1Z6SVmyvQyaRsc5FphpAA1B9684ykbtKm/iMVupAWHeAGBiF86z+tyP6XnobwsSPKTcLqr4JZMClcDFFp5RkIrVnHi0uxFpMhtE9Ceark/5PLdU/F/TPzHCq7X6zy1jXRsdVHI38iEJUFQBF5QmliC8FSK3yHUKNnNoT/pdAY3zLBeoOkVcEEoyVSoDB9Yr/Khp87xenL67/wQid0hbyju7dM4E9pAvyeSG1L6z1h5A2a1mn5UpukOsMwVCMdDu72k0qRFRGs5a0kTwnz0ftyvAtAUO78U+qNgZxCW9XVbBLcLEpB2bgZr0wceMO2mYabauzcKXr1LyEA0itEsftxP0Xgq39cCGTgjVYw95jX7xPxSc98KDCF5mxNPLQ/KnDrUSTnbLv95CgICYqIVDXlBmNdVVvQetHSLlPjd61xNTWKG69+/a5Cq5hJlPqY2/foLr+xDMSTceyIZOe2YmCr0pImaMgRJSL7pWIoxNHi4eGbdkg73JEaYbexEEWA6TKpC8OGkOrLFEXRiIQ7msfHiyy++whezsm43N+f5LBnAz7nfPKlSbLjsNd6RFqNWhTWtXwic4F6VqwUsJddx9mJsVjSOF/GrED17bXSxgVAbAAyosN3Lcbn2xL2WIJY2qP+d0QcIrotQoF+ITLsp1Na9g6k9oIvVRCmrCd/bjQupjXnXXUa6FKhnOFE1NCI1ANGnswtCtmyi16lsiT7YnswzzIEg7lEuxZqM283sao9IKRS9WCCCuQOx1NjQpo/5WHk3dLZ2YXFBNvyqHaPKYre1qFvnROzs4stAAw+O0V7SyLBY1XMeJaxSrUMulMtdgZXMD50BfksgsI6wu202u2wJ/gU/UPmpG15OD0IoLazWkNxeefmaUuRLF/WQ6VCJfm3RSvu1OP4+mhE1kHXwiPOjyf3dAZk0CqEa51FPUBa27A43fkdllTjBpr7Er0I0KcypK/VfmJTRK7MKKojtGqLp72ixWP8tlO+NsSHJFSbghFCh7wYNsOk6w2PnL4gluoPNRmxbUask5krVxLqZjEqRBr+VBdumf2VIbT50d3SUaNr/V4Zj052158RDeVR3HLRiou/uok2PT6tK7YqvVZ3fdTUSiPpC79BzIzEFq4zf7aRnuUZGrE3aDU8G/A5du+yoBrYMr0EEZnQDLzEtdi5en+7LOI6e1fJus5a4UTOIFS5qIXAbpDEVnmVt3HvmdVcciF5Z6D+33t3jfX6abhNvKtczEBftRkKoAYyCtp8ssY7fJCgVfc+L66IH/u34MfL+7AOimsC08ZKkKmx3gdSP3W+0EVcIEhd4zYt1i9x2LbPm/KmDQEGXHlpYqzYr5KlL1U21xg/LCCtoqkioV4Iw9M4TyawVhRMSkXofHQvxblnfuFA++dy3Z7sbO1PiVZ9vGkY+8PnBRI786UbRZP/KJRbCbyHsMOmHdBM7ALWkPX3knAUj5GEtdkhf2BEUYWxmD7cqyN3o7YgI8fiQ39neYVynnTn6EtcJaNIbgcUuZQy/btq0G15cA5f4upkqkJbh00bsmsNocH/M0//dYuoADd8Mcncm/sJti8gx4l4BcjhH9GJQTPg7Hk0ex7Zuyb5XZFbdx33ThURmUVZ0npVrHeuXRVcuqV+ntpYU4zYt1PucGSsUmNk387TRvtLVrwxASUovI3WRygiWwo3jWq6M8qSfQYC7Mw7DfClT9+7Z1pVnzM56WJvru6+T+NzHAThAgRPoOXkRWmI/94TBHJggaWsnMbxvNuRH1br5g2ncUi4IfAQFJmoM08H3GLhZga1Y3b9eHRzNZkA5VcY9vijE7l8bMGWtY7FO2sWcu8szHGD1OAvCA4vk+ok3uWbZVhe5ZlY4JOLyQGO5WTsxFW3IpHGEC9X7+OflvUdbMI5QfYL7lmNZFI4sp8xuR4ISSvy9Q15oh1P1bxG+ViOgxkYdQGqyUAESP4BfX8p5PzU3f35t2i/EU4aPCenqqwaEFS1SUe03B/smE9F7T+gXWuuKRJjV5YOrqAe8chzmpYs1km0M3lESaJLOtbCQWwV9+UcVW+SjHJE3ZGJPmIRIUJR45G9XfYoZedOxD/Aby4WpYUOTgzZ3XZpmsbji7FFSwvTSnqSOsi9+C2zyWaGIHzKGZK/Mb98WVl41STUzJ61JSyFDjvC1nSgTzKh+2y5+de9esG+9+LhkBHPkY6XAiLQO/zcGpz6az3JvNqW2oHRS042Pt3oVb24LZqIJFwTfKrsC35WLi/qHvi10TjdTaTT8qxLIC55cFGhWsLTX0jbuVURUf57Pljka3lLv6+wEZlOVmYibtQgLWo79GXz1fKXeeiXC+297/ihJCPKxXXAz/cxA6AtM5enbDniIiHFCi0ZO3LgUWKh0ywy5rOr+haIlETM2KTnb/rRKGbNqD4bpNrPeReh7BVbGTF4neZ1Y28nzIAwhmJZqSbCsf+VfW3kRmkzO0KEkE/ZYDiM4nEbkYEZTjHTlyLTDkMcS6D05GGB1TvkpRYZ0IhApk/QQk8CDw5XQlEjxoxtuJzLf2+GUHtP2jrv7JlmWcI9jVGjqwYEUBBBqGO+u+wqEVlvCv+vEvrbu+gS+afTZ4uSDIdaEA1EVBS03DEItDy18LyBIUJttIfBLCnGYHejDAjxQYwOMOBecQxvkE52SwPJnNaisyYbJEk59/bn3W+uAXl17WIZCe5ei0jIt3sRWSC+hCb97hUljYSw8q/P4XblDIIsS1Shb7zLq4fwJ7O+ayCrqCv0QwsfXpm1GKuTVkPXNfLChTxmPUIO5PrLrEfn+x3DgTOYU8UGg0F0nkhKZWRvOWHoyEpGQvJQ67sBvIhodlQDnrULR//paqntBmGsNFnIn0bHX83XL9B0pDYb6yLiCMCHL28hhcfIVCK8n+jCrtktQIEu77Zx4q3+kBNua65N7cuBtTitZXHCyOdyFk4ZzEWq54lnud3+XTXUDeZu6dy2/pSG58HvJwqw5WoGc1WhmLZqoqyRyR3DHxaJU81wiUcRmb/OnwqVRyAULvTbnCoo+cmJIMeayDJ18OMs6x6YMEb8rSgQPI9Sf+FZ2kYx+gjbXWKZRtZ9yLbtFEoZnEsh3qT9F95QVhuBAWB6Oi/6l+Y0rL/xjR1D/P43oK/1AlfuaMoLnei+ECOpAw9ITAPWjlEUCnneBptm9N3ivPXHUDSu/J2FU17+wL7CItf7CqusIoZOH9YtDzkYUNDYesKlgGBAaw5QyQbqqqB00gxcgwMqXzqrHtajYcOeDjDeBWavwEI5JWB/PqE0NWpNlXcH+0TdrYyAnmFGP0Brn9Dl4GjlNQ3ua8jQA840AF8ZD61hQQnylAV+vaLpmmmeS9EcQCCRnzNBKqxbNpIVqyJG8su+sFpp43sKwQkkV4G9Hs2RWaT0CMXe14oLnwbayh+L45xhiFnoKjGw6xQzBrP8EJpIMO0nMDv31onxdNPntlXjO5Ffv3bCoVyoUJTRn+6ibaSm1huyZU7xI3rnw7a+qxKAezXoJch/qyROgWyw36qKeop5J7xkn582ul4G+yF44iWg6oNl+vJ/u4X/OcjEmknA+Cf9aoJcmfVQIjkXgUoAu5eIcwLO20HCiYIRYiAllI2/Ge+1/57CMUUlqVc43RJm+QcUaknqmZp94zh/B6jRdxenuPAu1UhJ5YySQMFYR/4kk3dCCcD+RahiGBnulCza1ayJ2sK0e29zkpOrpk8mWWDqFgk374ZnsLce0fRxPy1G0ACjy2kXQcFrAQaw0YHR39676zXxSCKtF7Y211TRTt1jHwX8avGU4/SoDJ9GrePDZheZVg2QGe6EPFpJXUz2Ws/jBa5EH0cfRoZeve1Hlm/hy81w8NSo14pM41Tmutp6RRY0ACnrj0ojYrK/qKfOeMN/jnC82NPC0E7YEywr/esC58dTwV9jvXUJkY9RnoqGb7Q5t4chKRBDs7pjktu5bQlMySUJ0/+f1PMvr6vr0Byeyf7kgj5D5thdhKyaDoKCARKklE8iLNbumuTmfrykDdWXkZn4jrGRQhR1zDxqSJ/YspV01YmlNkbWFFlG6ON0wOniI5LIzmzQmGBN+GqayIs8lKeWjzBP8R5XannlaDT8lCEM3JqP4oFmzLaOpQ3VWjA0YYVN/YTUMURl3/xH8FDliX8owNTcVpjLlIB563iNeew4972XfVeFGWrmlZY/bI29jEFFbWsDhVAbJIGVuru0h5I0vqlf1i1QbUQZecHvive9bG3iedyvMC+cfDhty0eux5365thLSD4FmLOsj8oDCPcTWbMOB0in2u5UHQnJO6jDqe5ThxMKNO5d1B54aF+QNU21Kj1Bg+sXvV+Cls59Vzq6VQ8qK1gsdBezcGE0r6+lJmDwQXYtycqYFEuh3kuC1oAz6LT+Opki6L4Euk+xJ4BtCkbyIXehkAqr74720m9mU42oEfbXekCP5/ISkuwqF3YjXOUxQYppoyTGnbdGmOP1zbaDu1Xk0vdf6ZMo9v0GNdnIiw2mXVS0qcEGJI5Ba+ZWw+OizPNMLDh40iT3Gn58xoBoVZNa+y4qKN9OJNmcHjxTH3EYyOyU4EpjOhCYRaWBk3n4YGU2Kam253yuIzOuGSS7OMlmiWIznaqVfJHP159TgZ7iFs5qfjuQbOVxxWeCdmYhRybF7H9qioJghnTXDUfnFkN/iPEfTENC2AtRk9WFAPuNd7Kl1kTiCJ8r6SRlMgxa6NY2DH70G71HQ5DVviDccXEZQNqn5zwDEAsjjNrVF4c2+BCB85NdBwgjcKimKO4P4jfMJXSHkNhNke5c3sN+ue4CtA2ZzNDI4PUpIJF2U5xh0fpSZDbBlkQktMVHV8+kIAgxKGoZ4qkgWPz1wRA0pkhTYzCJD/3+GljRrcrtgEgr5sWY+yGePLPcsRuwJa63Qc7IJZHo9TAEaBnAu4K02JKwBBrTslxf7yfjfl4YMpHC5j7B5+rJzvK6+zbrYg8C2UMeqYKp5QGnsZRfCqTXUMYZDXDS/qHzZrZXRFNdKtHmn6RDUybvArsjLRLUo1PVgo3+ycFp0pGHw6j5e0nWBOoeF1GQnOQ5fPR+WaTHZsYSzu2G1r8X6AvDejX3jJ0NstYiOJl2iu+Vfqw/1e65pO79UfQZzQxmdLZR/LPWobNcpk/tRXb4JgrHDRxZL3M8QGKF81WKBMS6AmH+QYFXpMYaSRUH+GxqrZCSRiiD5gBV6AU+wfIrQ0dCtqClsgYxpbEbROV4Nu06HcOytYVr/y4kTvQ/RxAdFrA+nw2gGOknOnYkJwTWqJkusEnPUtdUy7dUfLgFTlepY/YjGfhKGdPqBjgy7SIIXU7svWl1nrPhvuyM08USacQ/rei/9bxFe+QHXTFlPwwExXaPR9Ifo136hbvF5yw/1fS3hVafXr0R6RNuyTsmtteVhilkugXpY+gFQnlq6PR8PIssQPfIf3uiYivY5L4lAa3aIW5oH6zdo/paF7sMKb2YFC0YBDxJvOKdJsoOGoDnGlz84WJti0zG3aX23XlE8Vp/eGEvfJIh2evkEJXHGKPpsnAqredHhTVQhrI4zzuo6YIryo7FH8gsCeBDUZWsXcbOjDbdBBK+0fBY+jXHgju8SK/j9ZY5gZ5tghCptK1EOiofDxb1uRceOzr2tgtwntiUsy6xX4URCQgPRslkSeSNZXlS6sEFpUSoeoIHxttDdm3MEcwhe3Qe9Y81n29/K8Dm0F6E+bI0fkupOyYlwUtKS7kHtS2GVVK/nFlQHjL1HOrPLyynK7QRVx85EVY0y8vQ6ECYd1fzuchpD81JfBSmeOns+ILVZ1O04h8toK0zHTWONUouj8QzjGI8zT3Abk0k5+tGq17QYfG6aIATZIsC3gpiBwrAtdlwzbi0ODbsFwRhkTKXoSnyaWrzXgBKfl7McrEJd2hjxZkx51ksj6Qu4MvSBPKhXG9DWv0RoAFfFGrQu72PXiV/THebGFZmG59m4ER4oIeyk59W2Tg6pwtjuTFq0Ev+/oRm0aPefKqT1j08rQnUJJ8Xfq4O5/iV3OgX6bEB27es1BKS+If+u0QzJGEt/uaoIYBVNZwJ6/D/wPuCpzwymp5bISbYLP+qO8b4BP842kvFTRMFgQEgfqMEboa8uwrBxLgmxOllRVgkeJ12AueO6DoabPaSxE3HH3pu9hlHMXeFsrYAdxSzDBmOa75CQzGL5qsWCIWaKk/GgdcArBPL8tdMLHArmFo/Z3haweFiUAKqRS6n84f89hfuMREgNtuAJTaKfg14fx7SBqBztasiKG9/jhLGfJ1lzQwOkmxXUYKpN95xFjKILxmb+u/zm1mBeJvqUkcf99WCP5ynP4rzEa0cG5o6Fqg1MxnFlAVhrejLX+SzywW/WrxKsabsYfgk156YkIqunb20aYHHUOZtq2on5R8sTXEPL78BKMut1yYV3O9la+i6kiMOh7RF+Rtkspl6pibKKiQgCm9bnBinIL/wDfKm9txSOC6Pl+pfMXsi9sFpriovo0zkddkO8RNhJITo4eKGM0Y/x7mGOKkYw5FpBO/BlJZ9UKb6gHjIqhcorouK3DVQj/fLtKIGnVXmbySeKRxq5oks+QYcWGea1+VsyZ0amb4TgfWBiXVZlepFA/VQ0iJjC40OqZmoJoOJWAuDmKoMKmesODr4cnD9mvApdmpqFj4uSpw0tCkjKqOO5VjpElFzD9RDzbWNyh76hIy7jksDg6uRHgYM59zyLUNIu7dduGCtvg+jhQB7RDbwc4yt6U93+7pVYwSksbFdBJv6EHOMil5Yn197gerREMo2BW0D1/XdHr45su7D3SWsBKCJOdM36WE9hIp4vKp7OcoKRoxmJv5VBxCsxFo3cier1IRPLtO5CMP24ODePysQRPewN+v6COMNa1BQPimHdj9eOkAf7O7u6oF4P8jWchxr06Wqg6DDYWsW3lfbZEpTewVkbOGTeI2F+O6Ggb6WPVGim05x34EZhp9D6CAp+1j4tOiG2xSjc+hJWai/GDRXK+KFl2ELkQNAbWyeuQJuIECjzDEu/XRNCeBjROroVYfukCEE9b/x9LoQuSGmqTEca3OboFckb9FbqleIxqVQspQjMMufLxDrTqx8U1tSVGZ0ocSkxoIjy1Bo6RKCZ8h380qrCuh2Z3+RMPYjHx/f6j2IA3GaiBESbYOukH1NV7fjX13QA8O1UMLMN5ZSFGDHOMkijmuN/z6aPH1qfcOs6eCetOSma7GrW9IWXHecIm7QAigIuUBnHRm+j2xgevF1Edyv1FtV/EbX1zRC1hqxCE9a8nx2D2oAM2rZUwLa6wlIJW4pMHVwVFS/kHBZBRTLO12E90hmCUVB3QXKo672a4WsUjCqN3P2nPrHqCSuE3C9ubyjQj+JFxS8aJejeSuJJl9V/Zl9UUHMPc9RFgWG9nmJH2gmWrPAmrLCJ3sYJ+0Y7naPRsfzfF33iyRn8h5qKRx/54L0P0m7wEi3pfSa5oAEdf8XZoW/aI4bYegDPCT1f+x53pdGLmAa1ubFhKRam0nuR68ZeMeDsWFyVEXdehipQGVScyoJtHS/iGEXytQgNLKWJ5NmQCDhd+w/KH019Nerr16l5OYKzRBkWk4jj/nMdeDB2IhAn+9KNbpSui9Shef6RZ3zDC43gWA4WlWYVDVSvCUGd6cCaOEqEoCMfQYXh8vqWKHSHdUcp9vhnEVk+MXiSv68AtNB2XrdBKUqVILIjdS8B3P1lh4AiGbKNiT6DDy0Bl7DbYHg0iyiXOc9cTD1Hw30aNE6b2pIt/6W6jyTKua0Tcl+C8b+xiCov8/yDscaZTHEcpvcO/pbhp5FVMXSunQD/4ZoGUb+dBGA2I3bfEYE5XCDdhjaxfZlZ5E15TNAXDdG7AScv7dUObLZWdIZnC7m1R1Frlohfgs0xRXUiFKY7ndvXykZHoaQgb/uDcyXxrkl+88SKG1hhgJamKDXxFKpROCGMsjqrPxnwu5jJQ78Du3socw0yuCtp01xqSoE5SPGBUyfstn6ca+wgL6Eo1PBQ/kNyS/hrE9R/jjwPSWbDUXkNpBe/7FSnsnXfE6ffZYZqzmb5p/PWg5xPFWMJ2aqQmbiDX+Umcf3H5va4/fBbxlXiXinefXaxY/7gc/HuiW8DJ6LVjGU/4JHvvHfkSFc7dXBslRySaprhs4Zad4W2hfLef6+MfOKX41a22Xm0lw/sLV9kzBpVpGE1XNZM9reGOfQcIUZ4LCJKcFYH2kPTb2SWLoZ4PR4rQrfG+JoieSoDgLZzbQMR51h3hSc0duOTYSPABrisAEEhXJsqAQnMfwgpeqbJQPW4DZx+85LN06l7lCjPnxybWI0kFlQJSwKmsmwMEOvy2hVeGCh3LAgnL9URxRFFVf4IVNEgKqMU+v5yFcPYosoFu5YU1LAvozySpo1eerg6YXkLpdpDQ/UOR9Cmp+nD2IP1pEEkKC0/s7vXP9ProY73apFHlkIF9tH9uDmWa6R8hB3CmLGPHyuzf//G9Zw6Z66tQkC1+/FL/6dYdvtstT73SQAJ1zctRanuLVf35LsvqHQy6Y7UTnm9sXWahfxwvPkgiFjKOLnhjg/h4SQtyTSa/wt4hxwikjSkkIKxp3fywNvlEou9uVvcQCM+RkYLVs6cOLcqdZyl/sx/RHO7nmMr/z9pMvooEL4rjw017EOquzb17SclV5l13c6PlUEBMACAmhUgiyidskvXkF9DL1AcpMRkoj2Qf+aGiLdUUUQiXmNhj41xVxoLRki0oYH9oREOvA7GWS6f3W46Np+o2RfLp5aXgQlTX920CIdmcP12LPrqZ1VFLaEfAe1zNrLAtjVLWw0jzVu2FFHEFx4WJx3lUvWrzyTz/dUf7GUCmKFJTYW2POfJRAK7dhf/4ZD29VffRecB1wObV+aIgC30lSm9CIx4yK4MpfsqRfgR4pT3X5WPFfu+j/g7JEcTXPAZNVoLMkzDLefcS3qwYL3cXLFLlHydEFByIrUZvQblakceP1glJbKwPvbvMwVX3eq6Tc3vQcPGpht83pjJS4+i2HVO+kRf0zapzeV+eWKFR7E4acZZcn0lWKwL9xRaGb6T6eyuZ9qmCUv0VLENrmwGmCWi/3lKNB69O3tiMj/4RFHRMhhHwjtdSEJ/hkI2yWZMrH4lhSl17ZjKx8D+eJZZWAgqD19Q5D/U5q2cP3BE2yVBPL74YZNHI0O+lzq1FCUXsSfg47IJgG+DelWmEEVL7PZqq7Zo3CMduleRERXroK9OGNVfm8EZMp4rbZ/MVE/LzVyJ/FQRQxCnYAGmwohr1thNuJfAaADMTxPSvqhZphlS0YeYOaPs2qqz/ySDjAFDToqApuc2MzzJ9Ekwf4YN0dyodgOFZMHp4np5rfbvZTDqGtAllzGpUgf8jbZHBu4qCSosI8ghSjvNAuuRUSufnwhQJgS0ZHb7OfVaAlpz6ygXjMv1DFeTPKAUYDr4ntqOMN9kY5gq8JwV9tLbdMiwrYFw63ymu5Vhb4VLbMl1aJ4nO7ROqzeKRoJTfcSaANVboy3+sGH4LW1HiI0I/YdZngzijwwI5IuG3fZZsVfsMqui/IK5U/D2Q9Hrdz019YQSD1wMRJ9jdEXooXHRB1k/vu7HdZIqy6f5vsMDKW99FnvUda60LdY/AvkDmPu/bIxftOX0UbY10UZsnfkil28T8yL8+uiG7+ZOqfG6/LljIZ4DX2rAXgID9dQj5RSFUvQJarVSRtme7zms6q2CNUvkyXy6LxaiXbmhsEeCDKK7z4URSDXUjve42EGQ4v5cNbDgjt4HJXglh/FpSKT7k3ifsvOhpxBF8aKMix8muHznGUKpkAaZ2+CgMINPHs8nblG47Rfo1VxvUqmmocmo/CCajWl2cq1/LpY3XQqf6DHfY5maI07hy6ixxk7ieJ27LPsE07kgg+UndcLDV0L5QHnXQceVdNajNyC1FUYusn2FwCzn1tTursoN7rVwq8vD7Gh3IHsRvOl10GdQSilUR1P46ChWcxtfgYsJGC53KoigO5lxn+wjS/bzghyoyeXMoCRIJa7RcGj4iNqqf9EnUB8KDC+UrMEPL5yjgv08fso/ARxC5ppCwNtXir0Q05m1pA+ONxibWApDltsq/ykrmpHKrf2vT7X+hgi3oCf3babcVj26lcbFJfUC0T6VzsTXLAgK50NB695TCLZ6AOvtQDy9j44iBMnQ0IREm7cSZArFw8tv3iUu81AZjc4avrDddUlEd1WlTRmcEpbCmLZ37jg/kgJHeW2bcC+cgITswTBpB6tWUWXRWObWq55wwOJOYrFCpuijKGEjd2cJ+b6AyLPsRiAzAytu6e23YiA/ElWbtpJRyqxUXO9IHbn2gKE263gHnU9jYY+NcVcaC0ZItKGB/aERDrwOxlkun91uOjafqNkXy6eWl4EJU1/dtAiHZnD9diz66mdVRS2hHwHtczaywLY1zn5WPEndQ/DH8FeqZo1PQLaVjReWcoTISmdALzpdkV/tis+qQMhFgFdFdVz9739QcG26Vbs32JKo1Gylqx7AFNk6LUnlSgZLkBWmLEB9YeIZVT7PRfOHJ7wsHY1A3UryzVFyrjzlnFdzbxkmJSrZMR4cG2BL/OfvqGsYiuXyfaxLGs2bi5w5qClOkaxviEAshX5p0vzyJBFKKNmZkn6UCrwvh4Q96nTxsS2VNXCqTODd+x1lCaFTaVt/FlQRYahtzqN+w2hNswF2eDJkQjGqHIZs5AfzfUukSSIy5KxQ/IlZS961gcE4Joake/RDXFPajBjEeD9yiycvaPOgwMzsRyJAFAd3NdVtMZdsKX4PF4yw77JHIsn8/rl9FCl3jAleZ6SPFAkAZe3Kz9+AIxbjdsR2UnvfeX6kh2prCbIjzVs8K3b+WTT7nh3kzBWoWq+moOZEtMWkajVIBJxJmewED67OnWYpomO5mOl+HLW/K3NryadXLACBkGJGUiRJA5Yq7HKDBjnUFI+yyfjlRBzhXYZw97nL1SYcCeurjH/NYzYQgnyje6gGahWejbdxV/zvrCW8KHr39Cmhergzl/N+zQNnD91BwYLxPAhnMNzQTVkjbIZOnrBN6BPBG27dtGq+08KTNRyLNrk/savB2YQDpAqyt0ZiO41OL2CAb5tItqtaU6w1Xj6aFMgP4qhn6KM1lTaY5AWaQBgAVkWSDR7/WmdZGn3HXXYKuXgfKb6SuVyc9lUxiw9oFiqR8MGjOWLQIUjkAdI/crQuCLoo+RbcsWbjEQvcB1F61MEAoVQM8RL9lyTEK5EJT772S558OMv7Nu6xzou4KLLbjG9bPBsnx4d6Hj903XWq1HX0FuZX2bxPChcgq3hkPri/vBC/0ctZdyoJmNg/1D/IVKg7h8bpyFMfJPaQqAvE7tHuXB0VcMYgQ0Cfbw0VR0czRwwpvpkrh04mxNAh/5B74zkjOKFHDHYoeF5O7pm9Xz0LinnkLHzrJr25LSNt88+fhzEY/LL8e3obneJFvugjA2m4DBVd9OyrexmzXzfUTX/+JFgbKpPxwKdONeXeHe0tzHNozGNczTbTy3OmmQb0q7WSnQ0M8LTut/V7o/7klYeJqVGfTfzGgjNhxu1+wMUJH5Do8FtvkDOjzfkUrjXy9I8BtlhDGRD55qOvOC5ZxFPSwAcWIuxGDy0K4l8vgHE9zigMPPLxMKtNas7mF2PdUVfmW3Ef0UYhHwGYup2u/zqmHQS0c+PB+V7Gfbxrp3wkeZPwoqgDDjVnviO3ofOjwy/cFYuyOBiTKCoAJwu8PZzUpIWYkggychimRvpoeL/RIG4vW8/bXAyxrT+79JceU6FnYCPhKR9NyjBKyAM5EKBqPlAROU3Jhgq5Co7RoP8/vlrUPrBwum3zURW5RoQuvb1wlzKmfsmA0gruvzfj8iVP0GqFS9wxHOyq//sP8KhwH5pG2rS7Hh33dEI5BlT1r87b5DZB83Su22tXlcMvYyxX5W5vZRKgHxlLgmnuqpIhFf6T0uhxIn8r32CowbGBAWKHheMwiqHCWIscfhhNqtaZ5DM4MRvuAmbVi8zi56xHYctqcX3GnpM1OUu0kB6xdQ35ZBf58BPgONglekw/mBEPK+2oUQ1CNZjRl4fO4jq4mhBanBYJPtTTyqqQsroIG3nLCxXk5NdNNzcS2Kt0yfu+3Vs18c5Tfb9jibi/OXOTBIlnOVGJ3pB1ro7NBjiKsfZ2FJmCjosmhw1qXz4wEUP5SmssAJ2fJ1rmBu3bQ9mDbtjhExHgw2Q7CDHNVwFCc6z6L2JaxXSlwQXGYopXCGluLOqcQRl1klKZH21SKC4JMYpMtG6Rj3p1PJt1LHMInKpVNajDdATiwpP8iUyalJ18ClrvKTw3x3pfHplkzZRVL7/y7J0R8CqNZBRBEv91DXptCGYkql6CiZ8jV15wnj7GWPRsZPsulifoOJrUe+MSDXod4cLf+GEZ7xuLnBxvjcykAnrP9aegeAaMsmGJRGqR11Fuvggv0KMo3J0SGxPskWe1PNBv6wrXQMwMNyYItivmr005kFurroMIvmEI72JfeoHFpmv/lN953g7873M55qs9GGKwAr8fJhxWEH/SVLVKm1LhAufQf8MyTMO9r/F9WbjYz7Rm0ZHg08rYmKx9lJJzSSC0wB+cKwKv0PAySQ60XVTrwsdHVo7cm/Ufszywqmm3lWA4JjHLNji8Cgee8Sm6mmWaxoGmaJBKveZl0d+R4BbR6S60K6GEUHHPY/y7uWmsy4VoUzKoQA+BXD8F7fCJKprkAuYOyHXwd0bmlQTQ0MbC7+Esd5y9ikxgtTvddkyw1aH5iduug3VGoyT2pFKKoXBREAWhNxT6/rpj+7kFttePqiNspj9b2ueZBjiz2YBbZ9q0fyzfGwrfgTJJAUsRu2TIIeWieFe994WwjxYC8ATQia2Udf/DQFR48d1aaCMYAm/sCMrh4F/dIBHWIPtp8RnQb+oB8Nx+OsPObP3YX7f3X3+7PjwrBSkXm5wmHgR48v1ifLUBNOIUnTXEABWo626kDNsDiyiJeiKx/LhEOhw+CwsPfkQjz1XFo0kTeC7R1m0cs29XG1JCVUnlG/0GusjijtT60VKXfCPfpUsB1kGAJ4Lkqpew6cll5HYFc8F5HRceBp+Vx1Xzs+/CG/GsQXc+Z7cDuZOvVn2vxAQijeKKNDR8hSLrnLalbWu3zw4B4zzqWO/88WIPy5CX+SI25jMGRHN5LprAdKxhGZlEtqDVydHLTfLTlRKqRgpTiM70AF15owmBWfwqvEVYt9Zm6nJE5SW5IMhp09TuFB0Eqx2ceiFK2n/hmRNw/EJHwrRO6+skajWuDy7zxXytUglKQBepclJfx+K9p8tX5wEKjxCr6kotqmoEWVE3ukNuBUx7L7B43AbezL0bNAQdKADdWOaY0xcLm4Iszl9FRCQOPz/3RsUZK6uz64LcGl5Zh5DwC/Owo2PvjRpplNL7E5xunnsdzl72vI5toWm1RLe+uyGJR4+dImK/tC6qq2TKZAHQvIcQFMDAQI3r5MUVBCoY/LhfosHtSgq+NhuS94RrGEZp6vtm3q2+gR45v9xQEZbLMGHqeTE00n7C7WCo63iAfHpnmPYR10To79uItoIUy5SzEkT5DGSsO3XE2WHhmIa1U5Rh+/0daPL7INCGL/lyaKBd+ElymB5X3oX3YBv8KzGTkmUDlunxhIvnDvlNq8Wnx6lR22OtGbTiw4DwA6bOkgayQm5VDfRBWUWVwdSgUrBzvzxADDvjTurk9vHhs2AvE8DGHcZ5PY6KmediXlJCPyfp6Sn5HosKjMFMxSfLqWd6XSvYwX4Fc9XwGYhtuGBZRq8PTHeS4dB80lBsXn94YF7KBmVBp8tXaOVA6g42Lc/98pBNbh6q21haDzyYuYThXxL43Gk3LgNY8DBkQ9JiErtp4JACtOfUwO0Ga67rKnVoxyvNRDPgWu88OjlGnZ0pqCJDwZMfeldGq1F8yfZrqKNYsdEG2ZdmEDmjidwbppOVPrxUae5IN32+I+C85+lw8yIvwJvvTYBYpeNq80xVjPAQ7pcSqqJrhh5Du7NcLugjgqoKZqch807iwXbzYli4o85BT9ypt77QhTV9sK5P44kt03RFQ8eGZXwmrqxzyRzJnxjCFo5XQ8k2XI0HiYbYp2cFa1f79t01j4gI29YTwEs1npSRR60IvFieiZCF8atNV1UW1w0GdWW6ZfR8XfkZl41sXuixa9Hfvxzn4Qanr+4Y8uIhIWq9XRvpxOcAzHI0w5tDPVof4cLoXM3b+xbWo4hbMAY3J8gk++d8fifd5Om8jXRaNGLd/IE75TNTuSFdOvC3QbMWdZWnLXxpB8qPnBDBJTqxRfgPrbct88De/bvcGpet9qWjijkYZQXWYoxZWyEWtO4URc/AMNCYDns2vXxCb09M5HbHw8zcRhpCk+lkjxf1eQPGtH2E8x6LHfuofJ7JvkYubCT2MdW7+jD+zRjNvF8wOnmC6rQGEH1Zp9+PusXi6GQCYrIBU3nW2r45IXxRPI1x1jP35oesAweyCr3QW4yqkip072eLJPCDkPWP8ii1w/v/tc5fDUSho8haxmJ1bC5iou7y9SA5c0l3CoFQtEtaJFJsnZDBLgdx0A3MkbtEavCwVB6/TOKk140Sw530OjblU8f4nsmkeLjEWnK5hilltecnp9ltGo5kkn1eDpxyiYOad6qQk1GVyfZQx1XJrhtDPjXi3mLSuQUjrspzI8/xEzJSojgYdj8GUOMYjlTsVcC6CHs2O9NAs1ox5al5WR9CfpqYjiZnOwOhgWKqxqAjrRTuFdzZlqZuXd318Cr7LYVBIkM2Ab5zieufQhT6+Ez9THRKMvXmXLKc8SH71U4MXBggV7scoQ5H8Vf9/7yEhiQ9PsUGNNc8BZ+SkD7Rxkqpi5lRfsCdnhfnpHo2gaRQR0Zkw+FSfziGNB0yuO5EJ+gUp7AD4oAj1nogS3PEwZXn545pAafmedAzYGxVHfkCYdS3GEGH/9zWAkSg8YFhl1fIaao0r37G3LRq9AKuFA71Ld+kASlLk+eTn8nQM//lYx4g3kokHpFyMbmV0z/71DytrG0k2eysOAem/nENAaOXcz+tGcK5JW0SvVt9TBrzJs7D6oKOAqd7LnpaqDujuZ2Tjbby/BlKYgqHmBySGSh4yAfMhipMiZv1S8LMbRZuNlhX9C322EbcejTHAghGq1yOMimi+C/Yvd+V2/u9IzBd1FYwfp5jDODVw362UnbEFTUHx6iqpCN7eyczEIVOhBhpJdheYhLjb97WTsPM/Kfq9CHeNxN12hQtDvKQunsJ3c4uijg4hP4y+wUO7AisEfqm2d8RsZJRuLWMq/oqgPAuH0knjicOEWjdyS455dBYpd1tdmrcRqNBq4TIMOjYunAI6CA+hRgSeEtH69Zf0gV/SSjaloglYjhHdXNnHkOr9x6087z3+Hfy4h2IwEwGhExoxYkFUfHVGOMFwy5lP78whNuuqkdEFMBeh1UKGxJKuBwLIC6w3pz6jQRUkTJe4N5sPMIh2oDJqYnkk+x12tHQoZou7z79s1Et/6ZNSJUp3wJsmH9M7vELeJLlOiTwdLz5QPHW9zFyf6TIzeSRdujJ4YbwteOqONw7gBEfDkAAegspPXVaW4xMCGMkUA6sXdhXZpnRHe9LCzRb4LRy5wmaV+Vz5CxsbTm3uxLJQecmWSpVi6dxq1qCllYYgOhKHKihYbfYeL9+m0krOWERXPRAzBUqjA2v2iOvoJY043vSS0bcaF5P6+xu99lpfJE/3cgTNgXUWl//FAyvrXwsvU4B9PVOeu4nRzjkJMZM2pVZpkBhC7VoVajDVBQPRqZHO/KJIMbVurjXc9lJbRTaZnjpa/Mm6EtE5VKmh6C/JnP53X+bCyCHUyaH9oJbbHCOK8B/ZIK47tGgycQO54jSDVvXG5oo3xJo6TFq0yvjVTUW7okPYV1rYACkCChViFWctFewk7a0zh/ihO56iO6hoffP1jbucryKA6tGtYFIk0z7q7PlECJBYUVW6s9WXgG45nK9wAJjEeYso8KgrLxm3I/sinVRi1lvRBW9bTI7xTh4k9+p2ietfZdWLjbK/qIacMBGVz2WRUOKb6O4309tOLyEBdEM/v8Ls4qFkF+wiZ0gSMHbcrzIZGl61r4BYuH9InFcd6sA8X+gbvli38iYWhQkqgjfyoxkUWXbpnGnQJXPJvCf/U1wmWmO1hNH1zq0f/T9Gq4xFigN1UR2ZsHjKqVv9omMnArbiO/U8D6AVShKfWCkkGj+2Dk4QTLw8K3Q554305u7yoA8eMcJwQWSfo40j8zPd1wwifZ1gRtA5+cisfz1ZFGSsqG1nbQ0dyhsunES5dEyAbIQCjbBNIgmc/ZfMbMKUtRr4XEVfWflraZmoKFEKomDTinlZdYpNxn0jWkjO/nizA0B6+iUau0fIZ+x4LaPvZdH5rbnZBVJyz+fpqi2WVKkVX/5UIFdP+H8+aIuW65s73UO+RWTMmsW0ptI60YOJ10L+PUtr0+lXUGBs9MB3j1lHwWcEnxncvlKmxUmrUGnMabiTUIlqEC2s2XhyZg6H2n+JbgRZohan9hYmFnMWrIkQwe2h7ICEVYK1a/b1BkxjkAv1MHNYrWlg+OqGq8E0Jgolfl1pPzQpyd84nBj7YKGalPSdSt8NEBhYfu11NRzOm79KQhIdlR+jqmnldvkOLL8hD0Jm9e2X28YfXnx4qiqjh6Z0Vz7z1izUYedOWZZps6NJiFEtB5QQqNWZZqkD8sgnEOcr1LfWHtugYYwcU4CNBsKiWxVgtp/GLR5dYVuZ4v85npJMZgjeN8HtD5LVf/CqUbDENUCIcrYgUCglRupjHBZ2bXhFMuSEj4/A7Tv3XmjoVOkMQ3llX4lvclO3xsL8TPGR0GLMZ11FPCSj3L4aJbQoRRl9UvPloNnsCE45H703dhlI3uD+mQyVBy8hQHzQNbxQIJE3IA08FLOooOlxvARHffhE+GtOHEy5Gn8FVpNBAXj43F30YbQ9qkRotL0ipbpV8oHP67PgFR4f2EIFld38rwqueu6+61Vjzl1v4frLMEo1mmivKYsP84Kgnru45n9Twd4EEor/F3SXAXE14mio0Pzb3stNZQ/h3TLNssK8xGGcaWsC9gIN75v73FtcyNm42oDgw6zqbG/DQc+8a6FXFuEAMxgczC/NnOc1c7EEz4kcgfORQGlvLRChC0AC1EvF2WCitYbbWOe3oDi7GG3ZFZEic5+EB/MLDv3gWMNJv0Q6SdRG7xuadDImxo4/XIUC0RGlswpkQVZrK/rR34D67FKefjQCikwlG3TkdBFKBJWlEAR/7qaFdAKplpywaVS+4EOunavcEIM8sPdULqaEObI93SuYkvvSQJ/UlxgttIWlxLs7nVxSnIJ8IVZuKdRZ6GHxG/Wdq49Y3o5g18gOn5HnHIJhdwHT3ZWbs1OZEvWdduC48H8etOXxxZLMHYF4CuUT0GJV8SID9nX//cs4AphZcNydEMf0c/ZltsmZ3BpYw2npgcYsAOE+EkVfv+gKFlqRIqXbFOOBuwiuEqAEK4BwtuugmruZ+oPMrLD3ps7ULxMvDzuOsSkPLxQTu6qhE9lhOIz178VvPyisWhLRT2bsnFTxNf0CHnPISUhPNuzsos0p4h7jYEVrIbhO/di/ilooTalZkijFrEiT3eC9N4hJB9DyyZRTIFKneX7mp7w27O3tcfd3Er+nP9wvg2awy4PBBoI3kVEzj1eaQl3U0vMRBoRMIIgsZ08KFL/8fRbBlh8uAPH+3xOqxzC5P9o7hIwlUTub9z3oyD7bEtKkDqzcQZ5gh/8YgmXcPaUf7HstJJbVJ/tTffF3cAGOOcjnIq6FKBI9vMBAGDB5Dtr1ivbKr/xbPYwowSGHjY7NcUZV3GUeAw7dxGflOBLzr8aMnAnQdChvFGxw4sZHiRtEOtYRm0S72ifz8T3OpwJFrNzT5Cc3KHwCrtN1MoEm1DPiWH14rkM15AV7W1GFt4E5kR90BUjziU5reKcpkh0VVyXdR3V7Fsfddznez57ZIIYQfkeSzmLIkk5nt2peh3OzYAuPxSTcgsjtXHbC99r1EBqXeC5Ix6i3YEDwH1ep4V5AoJnKCa4YKX4A8c7EvFFJ8TlObZJRBvIYqYoVV8vWtU7EYR1uGZJ0S/ckQeQDf2Wpsozkw1zMrSNMAWXbo6RyMqSnDbdnLLxpknIrhUX/jqnUyQx/0eRPcUFY8bH77bREMMYde6oC8EZsQI9cuKlmJfNjliQHvCPvBIznUVNACw83UTRBm0blLdhcgbHXmSucre6sc2iCn+Dije4wWr9uOWnFDLXAY5EE4/U0jowsig9/pZyh3efAlrix3jcWgdF9uCOgrkNz94LYsHKsozHC65R0iFGot3DB/PZWSRhqFIMnw16dcLDGRCQpx4yHnQaxxOEhT/sksy4HAHCz5NlZVQlEjv8lZ+lBI4nu87Wuic/a9upg3dZJkHzxwbzw/xo90nBbRqUBOLO9RjWpG8d64LQSCbm2DLRkPCvTHs2oJzds/IVZlHaAPFT+oehxvYNdlpGqzzRnuZlJ5d9Yd4s/Nh2vzut8agGjm6Yi3sHFWL5vBOqVTwl4C0nd5CSCuIQa7WTMcY05il3S3tHckzjYYAgqWoGEm8oMivHIlTAurih6I9LOPScO+k/ZbVXGjUT4zvUFi5uKXmvPetgs4ZSxvxp5A/Br/1//dQjl1tUdxBTNd6BNzp0aT2sArYQ9f3i7QNFmZBAvMDRRAMarl1qCmR9bVuTu0eCGw8VmBEK6RPOEVwjm+63ZRHGoebndX+4340QCgXRJHPH9LNRbBhxtyM5KsL29wkPyKwifzIQoBI/ESLe0ScMEZiY89nKPzNzwjeg4SahRiQccl43qv4xjCaI/OuvP5d1U0PZD5eyNgV6N+kjvao1aALZrtSbb4z66wqez0NNlEqA5h6onaJvDiuDr+Y//m/E5a5lMQii98JypDeB1yUl6xwFWHSv8yE0cvwFrPDfYLbIkPEJvboPcFdy7svwScZ10/1TIAAVkRY53od9QGAmkNM95n13nSAz2usYroRGmzHxyDGKki/TQhaZj3ZULBPg9sm2/kQIwTdQGggt/93iCZMBzWTHNGu3ntJpbfqmBFI0yN8tHlpz+oFR9vliCzIQVyRHiybUXjKX01MyLn0dqkJfPsRyT5DKT9MIu9IF6KTY4taxv7M4JboD/nqY8s3gmaw6pwh2sZ0B0ybsvR420JWFtxWUO8j7laX027fl3lA9SZ17vdX4pXusb2VPiVuKkVgv0kFVJq6uJ4IK2Tso5HyBsiggWfaxGoDm8hFafyWJLG/ryanu+rzhVigL/+mInV8RsvL90KyGumRCYhf6sUBnMXPzNGKUoDDkHNEP0NRJE+7iX1O48fg9IvTOfsVTXDmUa/VedAm9ETdtud2bH3uNesHEY6uWnhaFcMvkiqBK2G1HEAWFHiGaMPEE6BOlqE+SDYF2/ZwKV4SZ6jfViiwGcHqbuplyL/Msz91C92fYcFGt3e/mmtn+1YRE3vvg7SEsS8rQnazh30kFXuMSGgaLeNOc1HcQsv8BjGBahKJSE7NR/6iB3myLBcCBZiybZZ9LC//E1xg+RaYhYPSQ4bcxKFjdKjGqCTLcgjvEMAuL2wa46zOGY2CK/D/v/5puBiep+kystet6PNFIA5xi/01atZ8FLXWaedd6TX2X0YTk9TaU3I10smSvA5Qxve05hEF3EpQu/SCNGJzP9TXHB7kjSXsHl7Jk0DDcOG24LfadCmH1FhVN3xqFmUki0VIDBi8TeIL6pR0+kFdhcEzXW+T2LAFJwp9jJ0LQJUPGSiMENabo4B+lBnp5iMrvq0928FAP5vfZ9YlqNBszw/34uVBb2/d1iDryOeaKj43EfgP3ClDCqTR9Dtz860GN1bEkRLPf/iZaZZqKRpJS/r+t863gVKPbUDo51kERUotTmnDmNLUeWQcqop4IXtbTjP6tbJZ8wNUdGS0BJ/LNUFkZYvn9fXCQQ6GKBFSvn67hMQsrBR2iTy/IbqWiLnDkQ3hM7bEfjPvMULpe+bfvyDGvutLRD9LGPRppDA5RoYdNNUj0ZGPpT/lolaSLHMtgdFtgRqwqIZ4tRjyJdEYLrygJKtGJ3aGGg52XZWaWgW5kJPPKYmTUXxCHBw0+ZNCFFmS/klazAuBQsIskAha8aei0iaWYmynjYsoGODMYDH7V94LyHC38KirX5zJKGdqdBxTwOBABmSKOBy5Qink5/Pg3TCQHwAGk5W2EnnGAb8MQ5viA4nzJIBp6qe5ad2PJCCcERMRrzLO117OsbpnzebH6mbaWPyaiOoq6LwXGK3G3GfMFzprxPQEmn6A5+P1Lz2WpS0DBQZ5lrKHPreO7lAvdIsoOy4cqKgi+fwnIUgDYEITkXiTncr/nFYEhInYPHXu7r6G7jwnlQHszBxEtDU/3ILdnE6Sru4FPqF29Ig+2v2XbY9FmiY9SMuNiKINT6xzXkFA+TC59EolgL125lQDKXo3y+vadDPrWda99Ye3JnGwhyauea8Dsn1iYk8kKwATdHPUj7+Eb8x9Kil7bw3WehPnhFL5jWrv1uzTMJ7mtzTVOKQ9bkFJ5yBBTbjkBaI1HzjyLb2ApDjrkYfpmmGbSjyDCKU/C9DnfQcMrE49n2O4wpbFXDZKFRF73gBvYd7+YpSQMXGQfzyT4h8SKX5Z47uFTcIwna34AS4QuSGWc7JQMArspxdyYI6rdLoF3BhRLh1px3Co5e3sFSqDdUduk+KT5pM20F2K3dtnchfi6moClqMaRtYbHm+GCzhrZm96YvHOd8GRMkvEv9BySXQ2Gpd73sfnQZEWKaZwvITj/5xNDRYer4hh9jb60uDYoWw86m/rgBcGwIWP61eJvaKtxfzGShHfLAL8dVWl/czA646qfnVgp30gcVxVClVw5K4XewNqF6fuvIdUyVeT6DbzeCWaUJpvEXgzZzX4vajgV/z6PmbnbNN78CMBOD8esEv98MUrsZmHfOs6+j8JFwN4PKHm6s5Kp5mj98Yym5B6UuJqKTSXwOphoy/vBal84eKyhlpBz1mOX276A64HxyPS5MYhMznHYLq0iWftG7UycHByjEnYJMRAQ2dunH7HgAJR8tepQ9FEOQoaUVuOFNCl+KSC5MGW09EB8SfZqH2oD+jD6/9c9bZeeRnd5RT2BiH6rDzQLUuCLuj2InyPD96eFjoOuJecjuQhH+nDRU9Sra4WVB7+2B7XzacgvVRs4G5fowMu3Mxnya9KcxHbnviHlrDUoNvsm7GHuOByKCKMQlhir3nnCQ2GGySPdWdSHMITC7h1woAwSxcax21HNXsxY7VRuYFVIJfIEH3JxtdtjFIpcKxpuaruLRlAVylc9AxJ++zrrk3rGwNJdxQjnxSCnMwZ60PrPUfqe3eCj3Xs3gjzy5bJyT/vB1bUdeMp4u+zBIZHUuYUN9Y9s3gb3Dp+Xo5avqLCxouarFDHeyosD+MDXqsQu3lb4Jk+obWQBa7nRxk7VwPcPE1LbWQa8V3rzaMaYvwRwJaJBWQ0b34849ZvcDh4amt1sj1C4hfPBnJwpTGC5U08om4naWUHdVzruCtmxQbH4nko4gHwadXXWKFWEV4O5+3Ui09nZVDLavASraN7M/ZDywZxROe/HK4Q6uwC9d5d9zOdI43zDN8wxE/jdNyiFVSIXRCuAX/FFYZgSStIrIwKqAd8yJQzFeejtijEXtiYeb/KYUBVhper3DvdOIVqZw83GUrv/0GkbF9d3ghcC9b+1F3xAKgo4yEw96O9Rt2HJF4kclmvLcw3CP+xMCLnzGCQj8nv9qRRn6fneS64/qnsfG9ayLm04JROb6mIVKYIYI8ASpMC5sXdgqAJXxvZtqa7NEUNkZDs/tH/hAVZxlVL/gaAIaLQgCoVoTgu0JIovugqZXHz7DRLOS3hydX9f0terKbV/1f7TC0tvxS5W+XPbp8+qmr5prODW8FhAyCrpEI/CMrYF1oLFoTXCBMSXv08k6/GO44U99dpSYPtYm0DZuJo5WR1Q1gAZORUYMDTXde9NqcL4UqUOht8lWGzRXDb5gBsZMPf8C6lvbrK1NrHGQ1hOSRSuRf0GD2rZZffpDAQsnNx1MmExuibe0qWrape9HXEK+slfnvYwPtd57Y/gGUBlPklxqgphKfR4BIjVWbyf1XsWY27LljoeDz4BlTo/tRJJYTS7A1t1TrnttxmK4fpUv/BsXU8XqSsveNzq8agAPTX/S8Bhna6kKSYqsj7+KkCs0vc8Kukd6BenjVbm0WX8++ACUMGHm92tURiNijqdjmfS9tf5MMeiTdKLzxWvYFPkx7n49CvL9j6VYXvDmhRzB/7YpaJss13kuDKaAWhI7xHLCgfxLs3rx6RRu35hFuGCC44z3AWDInHyX3Ld5AmMzSVK6l2o+omglJVRQCkoyTxPoSJLRbz7rTG+9kvK2WG9Bh/LetzTTd9MhVPue2rP7UrdogaipqpKwRrczAE1XeMXb/IQbOoHWj7sbABGSm9iIxX1UJJKnPkbYtUvR5y09QN3wGD0MU4oMGIQZixB+XtG3hntTxaxCyQvc4SKlw5z7tHAVvwZS/S7etveZqoRqBDH2jNUr2c7CV8CPT8ZwP1bBkkMAll+lfKq1ZqBeDQkOohgThdOHpSIq68z7yHCuqKi8QmKzZZFa9ttzxDOqOvVRInHUo/v9qP1qSDNEHIgmeTgZpWbUSOCpcu5XHzfsj6/27uok1igLf2vrZlG8jHn4MEYeJasDoCBIdcG3rzk39TmHpbwspFAMmzsdCIVF2WvpbF3EYbX8VQZrR/C17SHvO6ZO21qmGPiw4Pij4vGazOVD7zjlNLUyk3ePgN1yPFV8LsPbFyXtzkMT6XHaPNu8F14uxsXfhFPoFUlnUHCc78ukpbp9laUhkwSMS9t15uNgR6aLPoN8rNPCNCdBHSgdHai2ub/GXO1WNA0y1EifKN2HJumcc0VhqeaUProkATDpbwwClsJ8Ecyf8cOFcEyd4zgowEQ2298vkImVRBlNbS5kG7bCe5RtIxC1scaCTCUfzUC8JtWqWVFSZu35UfD6N197uAkqQHQ8umezQGup729lyMRODDvyluJSbIH4+vh6N5gxPxjMyZo3rmxlGLdVu07Uua8uOC0WYJnoRbvzfQpnGSvAw0ebQM8mZoGEQ0D/2smQZJfNlN5S5VHMo4L0OXA6012p5kNVmHnBjVamuFXDCZ1dBDTHt5Di5aEmYg4BYndL9V7jqIYDgoBkpyujxqjgulYH6B/9Xf6H01oANR+UvXisrIRNRG69JodpAM/IuHPT/rR7sKxCF08XHOvX9De0amDba24GfxxiImFoOLG5lPn+3w3kUexC2xakoo6rrXKnfbPjbfpDEQDn5kvTw6Mkd0EupxrlHVm9iwGm7Yxl+ryt8ZGu2+hzh0Zj/OMS7b+ztk9VNepWk3uDTvpwTKJAEHYb+iQGNhJutmisBD5wv48PEFF5G54G9ywd04HYA6ijvJswAR0jJMbp4G7f37SXQsPZec/dDLZL6PS/a4z98decoleoNWFAHLGDwnJx1E7t2Wrr7yRA/q1sjG+XnUKrRmJRofkA0KGkumI8faLmBNPDg/9ImaSWTWJ50b7aaGNzsDrudqRukybrw+2S6U7ymNPkQfDs1Dx2OBLCNuZGryXC+6E9uOej18cjg1+H64EUQ8HkcfE9hzp6HITe6nqfs+IZe4Bx83cMT+jaIZLhl6RpHbEOmjclbT0qGSmdvcR6GAsLsHdmwxppR1oZofRlxTIoS0YBJntmNU5JeFa8eBQLOffnXXKWPrAH8QT6WN73M4I6oO/bcZyZaOrxg8OviUZsE94O8H1GfrHZx7637HpexWc4SFi6jNSE1iDLTyQ/UsqVBcB9afE22x9vysx8/LSuSY1REm+0k41PIogpRVRrQY043JVQxEqTP7V4GniZHtDlPYoJbvSV4gNQOFWvpwc0MehOC4Sqc1/HKqV6Nk9rywQIykkOddAIu5PKoEqlyaJc7+ufcFbxgg75jGxGOoCwnTjexj+5bXoVhXtJf7cl9tIr6CQJET8yZPwTAvPG17grnWQwv/KolyZ4puAjDNq8HmIHHT8XanFv8B7gXlHByN4WmLaYJqjkvWtsS0YsVgqoPTpOjGf8g3fi552G3w5zswDp6Wfdlgn+8sd+zTJZQS9unXVvPxTtUI5zcAap4rQpNrGDJ533S/P3jj3QwwmG2UHFUnN0Kdoc6ZQNdQgrv8hvjDymt6diIpq0O0aaK8shAXJ74Q8AbolwRehltpkCoB69hPxa5cqgpCfssYUY/JMIj+BFc/PFuJfgZu5XWroC1heWo96uZ9jL94cEJ8cqGHnNk+WrN+caDsy8w/QP6iKnPx4r6A+ZkGAudRcf9ayj1QAN5xU6wEvsPQVvs4dZ7GpMG6aViYn21071Lcw9Vm6pbZfhOziGqqXXtf/aGJW02sU/s/RbJMD8ZHTKGUKa4hgOGjJmczV5N+0am4aCkS+XJaKbL00k8I4P5bO2RZ5CJsXbfXxFeecpKaITWr+BYtNn9o/K3lu78T7DrWNxdKZ0HUgqDpaMFouISb4enegwmiZJPCxLTGCMTpAsLPTnbKUnjl3PaRlpHRynkeSvdE3cwt27s300xpumPTImuNvTiK0A724vBj/gg4sBcyl1dKbPWJejCurE09TFmoF1VSMVJGgOpUTFHXeTGR2kk/9rqyblPgnhz/A5QhRLhYKXgu72v3tY5Y/AI1iYc6DeTygs8g3zV3U7dHH7JX1thUWhqyjQpUggcelLiwDCKiGJsDBeImMgR2g2T2JuV1OPWSFLrwPdMF2pLCw8pBIIJlRTx07gXUh5em8qKr/kE2SvKDTiEvyarkfCGkKrAOv+yGJHRLNaWkK/0nC4YgBFFNGxlAcw5HosfELFLM0i8cnZiwvkEsLoeViJmWtFhxNm4mPcFNGzjz42/PCQ07f1bksPXvKOyQPJAHG5KyxrBry9lTlPvigQ0yZa4Sgqu+6eV6389+1YmScAiTZVyT4Gzp1cvIiw9eeKmUYXJLR8Xqc18Ean1I07lU9vsBX4z8ZJyCjXC79lvIDYohJI2cIAu3yRtDNKweMbNjxHVHv5tqJ50KJwuoWFPFrL4p+Vd1RP2KFiKMNyEOHDyzrXTcflgWiqHf0j+g5tI8tUJpR+X0kfUdJDs7M/woC8p7ReI3LleomfGL1xgWHZF8qPmB3IXj/1zCYHG+PLTMK+dcfBRC2+fQhJtDTXWADOsnNv4tQScm+ThfQq55iDJGJAXOo8+18s0KHw4O6P7vHrOOG90TLj2vhZafoJSbO3FZ9pK/GYXudM+WK4bgg+RDZ1WgU6SzOc6VZEs+RpEbC7eDCUvuD7xdhQyNNkWejfBvd9qHQmV7RL/zITA+sOBcPjK3kGdcadQDLvLAMk1iDg2I+P0qmIEfYYgSEib0Zm0wWN1ICeTSpd1JsJWUzinUm7E475wiHr1pRckRfVFuRMqIpytr7lDOWF76lGPhAZhLDc4bSWH6AYtIL1Xo6+adABDurgAtw/CIrVTM4JKtHDTy4Y5+iEVcHhxALXZ597lujNVMYTt3+OvRQmCUeIskHBJifkd/w+A8LIol8EsT2XJadVTaBHTi/6s1X2vyxTmyn4MzcRynhqgVdwLTgbnL1z3tUJBnvIP0du8+HjseCV46GBZ9y5FdtXmjrulQI+sREyiIx36A3fOzKOk6zrDiAvplUQGxfAiKA1zU4cxrDccr2HLbviYgzK0O/5fsK+9ezReZgqSvnObJlTTo0z4P2WONK9taE7C1HcqJedquYGJKvy9wGkjZ1RCoOLDvhIPOayZlWiyjDmVTuNoZbr5+2VaKF/BMameH2WQ7YkQbX4qVx5r4WO7Nv3K0C1QP6eaBrpPG5JwCUXAIy70PeE8VV4IxM5apeGGhzZr/og+9mUkXzu3wK3kbXK5WcVAgFilVw4pGuoJiJc5FuG0scPjXftOxzTEZeYj06u/if4ty0k86IimUn/lf/72N1jKyCXGB7E/qXQ8eimPtqENhprSIEqGOLr5tFgrDA6elF2qu9hLMaJndAbfYnkvEAA32CVHi2HelLxtDiB6HHbDYiAuzxrYoEwTTE+sHcovmdJpDJtz+AXF3FVNpJVpgrgWUhQPQdXXmx9sPDs5XAONuTRXM5F1i1QPw9r7ZOTf3orZdvHeY/YdMJWTITPBCPCFJEJtxD4le2lWLK+PKH2Q9O9I8VgcI0GAXwVmjbc3fenPmYIeF4ZHS2SJcckihsW4OhAqtsitp24YUJlPnjGhTVoOcRaBA15UqwoeGQ0yeQxvll1O5OOnnHMjgSXoKGJvTUP8kUy0u4w488UMk3SeLJ5Y7Cd0sfoL6GDAA12VV5Bi/KIrJrEwEhwQa5aindw2QAkU09ZtiYE6oVlJEps/e1Q+eFJ5dB+dkwkS4n4NXu7yKQzvxaiwoa0Jr667REndNY6m7F7hJX9Kud3KP5/hR2N9NK5ndpY2k3ZjLlttB69q2CNzDfNbIKIPH0+8uqMOAKCkh/4UW+bGGBceKkaom3s0kTN4fLBXmVBSCb+yNpIE7RxsGTuObtbQJmy30zX/+sPFpXOjON056jmJdG4ESe9p1r+UIoFLp7ISV1a7wO22TFwkPebmQ9xETFCQOx50sw2S6sGp1wePSKY3IDnvT90BweRoQgW3lx4Qd3kSnvrrU/wxHc8gPUiXY2HsJc58X9EPW+t0xb0Czyi3DIkYMafiaqyv0LKbtDL8pDm274qafgrJbnHioKJWCEoPZspFbbXZf9FEFdBcaPhhcQuosDgbQGuWljmw8v6C+9gEDHCS+wYhDhMGyII+HPnFYYd81LOhJ1pj38LmdNOwDt7Fg99H7pj4A6R98UwrLUDoMCc9loHDltUOPV3QBkE1z3hRnHWp9FR230fW2TO6JMQrR/l3SGtOZVd9Zy8XtTY3337NXcO6MUtttk0r6hhfz3/Sm6IoUGg1PhdJM+xWY0qNYXad6V1T8Yz/sF9QOsp23T9yyurr5X7hXSTooY18IyLmDSfIFLw0Fyr4jkrWqoYSqO6RDpS43fOXGt5uh8vc5mq+f1H0ZcvQUPfUyUoGkBRZJdY3H5pDqxVmyJm4ruzxTKdrQfZjsjF/y3bnBWaWy5vli63O1xbXJRkf3SiueCP0jjk6Hpq38Y4c7NA0HjnsBc5zUoMciyXy5lmx2wNQOcgNCesPLPHikdUCZ5Ak5N+7psK9ERYXg6RAgx5akk+GukKNxbCvekJd2cLItgTBS7/gtDpKGq+Sqi/DCwWWcG07wwamQ4ArSI9ZBB9sQFHbnSjnKpqIsPsO+d4Wyj53cEp7jSNv+8TL1wcAHbFAD+h4zaiw4A+sKAKr3lyCm4VSkbset0BVVuBdfiZj9KJb/15FgAojEIXEvP1EDI7QFZkr2xENjV5Owt+WQsFVgGzl3z4+0r8xD5sbe4g0aM34VQku6U64Ca667vMezzBW6/lIlIMu1UrrZYuEISU/TPxYRgdIKcUc3lQ20ZaRJ9Psa+hoQab+h2eXmtG6sf/NgKF8VddyBvguqHFVFwqCKJa3Ww4sXfG3hPxz/Bz94MEn05qoKWeS8JGUp2PCQSf2svgj+ebhKP3Iz3ghsZLTVdGjT8tl40s3/yRZhrdEpXF1OOULYyVbGaXsiec7xLzTXrcdS6PFPIVPfva/QpzcSeUr2j+u6d8QPHVMeJ1JKYEVG9Wh3CR0dJ9MKU7WfmV9o+o7oLD8IHriEhcko4XZ4d1wNtLqevL4vfNvlOw7eKSU29TdavGdenm99Ya0Jnw/pReTPMfQmdEPkmVV47BE9I/9+h1UQ67trOanAae3WYxzspsIY0PBsyn5BYZP2vC6XB6eOOqqW7ka3f2q2TseR/L7div4S/ppdRme1SjlEBXtcTo2fgKI1EAuK2MrmQhGk/bp33pjabrxV8Eb6+G1JB4H53bPUwpOXnwotjbIUl/nVZqyME2NDxo/REplpVUMexpcRGQB6yMpNfB5XQTKfFi9Y7E6YE8oqQr924nzzqrOF7+JauHEEMZEoCvureSDP47DKuAJE9f60QY0ubHneGKJ6R31Qmj5Ja/fiils+C895xJDsrgN60w0et5UwxBeyAC3ZRF2aXxpeYN5C4BGJHfv0qT3O95CM0S7GUyZ806MG8mwZO1cxDvOyuy+9Bkz9oYY9VywJ/3ZklAaWBIZMeRsUn8DJ943BaSKY3VL/Gl0FPPKFxsD1geQTKzHuHxrm6IZFMxjmU81d4YhPSdyOEzt9DsBZEzc1KuxtMZ3ijrN42Etyf3z5htOxx1OvvHXomFkdYgRI8H5duBOIzlkHY0PjF1kXcwBieqCMD2lYiyBNWMH6ksS2HVKQb3wl1N2S4f6zBDWydBVOFTxRGhcXBnAzJTkmVZUm2n1A/X4guVzhvmnnS99GkmBUVAMj+Q5t3U0fcZSruZqfFvbOBGNUD2K6MNww95u4gU8rk1tXMcvUW0Vg=', '22d3b3519a52068fd1dbef7249d8d378');

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
  `tags` text,
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

INSERT INTO `sites_info` (`id`, `time`, `token`, `display`, `hash`, `scheme`, `sub`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `language`, `country`, `type`, `tags`, `title`, `thumbnail`, `description`, `url`, `scan`, `certificate`, `updated`) VALUES
(1, 1441184169, 'dd3c4c8b', '4f1aef1fef151627b42a39827ef573b5', '98c50f5a0eb09a4544509300d9e7b5b5', 'http', '', 'vnreview.vn', 'vnreview', 'vn', '', '', 'f3ea46d0', 'vi', 'VN', 'article', 'newspapers read information', 'VnReview - ÄÃ¡nh giÃ¡, tin tá»©c, tÆ° váº¥n sáº£n pháº©m cÃ´ng nghá»‡', 'photos/raw/other/2CNBZDSZx3rjgGR4ZJr7g46cbP9oyR26lajSCX+WGEUI3UfShu7//qzeWw2wR7PFw49bgMEcDL50QITB16s4oA==', 'ÄÃ¡nh giÃ¡ sáº£n pháº©m cÃ´ng nghá»‡, tin tá»©c cÃ´ng nghá»‡, tÆ° váº¥n sáº£n pháº©m, Ä‘iá»‡n thoáº¡i di Ä‘á»™ng, smartphone, TV, laptop, Ä‘á»“ gia dá»¥ng, mÃ¡y tÃ­nh báº£ng, mÃ¡y áº£nh sá»‘', 'http://vnreview.vn/', '3cb38c7c11c5d9ee4c7f140496d39f4f', '', 1441184169),
(2, 1441184691, 'cb8fc719', 'b574cc4e97fb1e05c8636f9b1807f6a1', '570ebc90ae43186029283bb1f9e729a3', 'http', '', 'vnexpress.net', 'vnexpress', 'net', '', '', 'a8d66807', '', '', '', NULL, 'Tin nhanh VnExpress - Äá»c bÃ¡o, tin tá»©c online 24h', 'photos/raw/other/PeDTifbL3BXUGeZ4o3FeR7IBwet/1fUUTrm6xhNG29BY/So778zUEb8u2qfB4yD3HCWyVqoLCDUHLC3mP5V5xM6nLz5psYAZTVZJCP+VKJygAPcUawSnxcPYg3F/weHA', 'ThÃ´ng tin nhanh &amp;amp; má»›i nháº¥t Ä‘Æ°á»£c cáº­p nháº­t hÃ ng giá». Tin tá»©c Viá»‡t Nam &amp;amp; tháº¿ giá»›i vá» xÃ£ há»™i, kinh doanh, phÃ¡p luáº­t, khoa há»c, cÃ´ng nghá»‡, sá»©c khoáº», Ä‘á»i sá»‘ng, vÄƒn hÃ³a, rao váº·t, tÃ¢m sá»±...', 'http://vnexpress.net', 'bee1dc32244d643d0c040bf91ffa84f4', '', 1441184691),
(3, 1441184704, 'a49ca74a', '8778467be4836da0ad1a95347c6553c6', '266adb88be6da12efea60d13249b39f4', 'http', '', 'stackoverflow.com', 'stackoverflow', 'com', 'questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '', '10c10843', '', '', 'website', NULL, 'How to extract title and meta description using PHP Simple HTML DOM Parser? - Stack Overflow', 'photos/raw/other/5jmr+GGHFVEXl7DtOdFOPe1P2I7KU++hn5RzuLYA/jBRtcu2efm/kx/dmj0PpT4HsaZUij8NG06WbT1rcB5MzQP9DOuZzykEKEpXcuuYe+jYrX6gJ+ACFpcWBfe1VU2nJ3Cyem/fqZhk1rFiBh8rvm8vNeT4LX/1rra08WjFBXE=', 'How can I extract a page&amp;#39;s title and meta description using the PHP Simple HTML DOM Parser?  I just need the title of the page and the keywords in plain text. ', 'http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '736444bc3612697c735ac92d365bd219', '', 1441184704),
(4, 1441477108, '9d24e854', 'e0efa6913cc843827a2a489bcee00cc1', 'e89c605794cb3c7646e2bf1d275b6e00', 'https', '', 'tinhte.vn', 'tinhte', 'vn', '', '', '6399826d', 'vi', '', 'article', NULL, 'Cá»™ng Ä‘á»“ng Khoa há»c &amp;amp; CÃ´ng nghá»‡ | Tinhte.vn', '', '', 'https://tinhte.vn/', '27ce15f2e348d0bd76fab1920cb94568', '', 1441477108),
(5, 1441477145, '7ab250f1', '683833be714a2aef912d5a17ceebee84', 'baa034786446164961799e4189df7f65', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=aw9aBIT3HGk', '', '6635cff9', 'vi', '', 'video', NULL, 'Lasse Lindh - Run To You FMV (Angel Eyes OST) With Lyrics - YouTube', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuHgBt0WZeaTWap6WM4eyneW7NdfuJU8tBlDkBWIzloGg==', '', 'https://www.youtube.com/watch?v=aw9aBIT3HGk', '', '', 1441477145);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

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
(18, 1, '0bebc957', '38f4e6532d3252e39173fb915d53a7f7', 1442130535, 1442130535, 0, 1, 'user', 1, 3, 3, 3, 'status', 'Ll9lG7Cmsj9mll49hRHD71ns7p0VBXQF+CdaKXUN8pA=', 0, 0, 0, 0, 0, 0),
(19, 1, '0093edfe', '8620ddfe7daafbe9e904d607c80022ea', 1442315066, 1442315066, 0, 1, 'user', 1, 3, 3, 3, 'status', 'cHxn1WXYznSvG0atKxeE57mY6IFa6SWu6htCBV101MM=', 0, 0, 1, 0, 0, 0),
(20, 1, '78d67e47', 'ca6cd3e8d3068ce2c283b1da9c77b3ce', 1442401093, 1442401093, 0, 1, 'user', 1, 3, 3, 3, 'status', 'VS5ecDE7l+C60Umr0rkIeaJa4Uc/LKEhcb0gTGBGZ3vdBWOdlRMvifFrQhPp5rGDHYy4r3m+4e/fsSUhePN9+g==', 0, 0, 1, 0, 0, 0),
(21, 1, 'b1237c67', '18c493c23518d817788d55c9552f2bd0', 1442516062, 1442516062, 0, 2, 'user', 2, 4, 3, 3, 'status', 'S0A9DS9F8CpwKleOe6iJCT442W5tsUCdFE7II6FPbgQK2BlO8Ho5h69zY6Sd7jVV3hEn6cQxpk7YS7SxAEXHSQ==', 0, 1, 0, 0, 0, 0);

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
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_hashtag`
--

INSERT INTO `status_hashtag` (`id`, `time`, `inside.type`, `inside.id`, `hashtag`) VALUES
(1, 0, 'status', 10, 'live'),
(2, 0, 'status', 10, 'ganhhao'),
(4, 1442516062, 'status', 21, 'live');

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
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `music.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_music`
--

INSERT INTO `status_music` (`id`, `time`, `status.id`, `music.id`) VALUES
(1, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_photos`
--

CREATE TABLE IF NOT EXISTS `status_photos` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_photos`
--

INSERT INTO `status_photos` (`id`, `time`, `status.id`, `photos.id`) VALUES
(1, 0, 3, 1),
(2, 0, 3, 2),
(3, 0, 3, 3),
(4, 0, 3, 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

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
(8, 1442065353, 'status', 16, '505'),
(9, 1442315066, 'status', 19, '506'),
(10, 1442401093, 'status', 20, '511');

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
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_videos`
--

CREATE TABLE IF NOT EXISTS `status_videos` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `time`, `status.id`, `videos.id`) VALUES
(1, 0, 4, 1);

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
  `updated` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `updated`, `size`, `modified`) VALUES
(2, 'drive', 1, 1441182582, 'df7f7a54', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '3pRoOIIdWWRoJfFdu3wS6KrehyNdMHfWe6gDTnRTHJSVZRECaPlnh/VTdI8ldlGI0NLClOFzOc/Cfbe53WgVog==', 'audio/mp3', '314b49e3', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182582, 9803861, 0),
(3, 'drive', 1, 1441182582, '89ea6650', '', 'e6321c040a4eceb05c0d6241487da67c', 'qMJC2HgxprakgJ35nS2WR4qz7/bQ91FbZMtclQ4vg1XXwmSwf4sCmKdHsZ69ZsfI+HsfdBCsQXRq7ch4WmRlpA==', 'video/x-mpeg', '3521a9ad', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182593, 9804514, 0),
(4, 'drive', 1, 1441182593, 'de5214db', '', '7f3d0ab076b9fbbead304640c8be22af', 'uQi5Rek/ln+I0fLv5VVNeKr9PomUbg6EbpaPcci5JMlf/ShVod0yXy9FLD6sIehode5ipY0l3lt3enie94vdyQ==', 'video/x-mpeg', 'e224e7ed', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182602, 3921826, 0);

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
  `updated` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `icc`, `mime`, `display`, `name`, `updated`, `size`, `modified`) VALUES
(5, 'faces', 1, 1441183035, '7f7b5037', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'XlNUSVVar7t2igeKJJ+vwUooML3Rj5+vTUsDe1976AWw3k+eeuZk/XnJf3fdzQDL/JY7SN9fkoXRk8d9MhMzUA==', NULL, 'image/jpeg', 'f45a9102', 'CL36_2nUkAATviz.jpg', 1441183035, 54420, 0),
(6, 'faces', 1, 1441183044, '9f1d2ed5', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'nF+Rta09RwrTlGEq8cnpxsJmdo2mjb7zGc39szRiQT3W9H/bdzF042lYGgZFZMG2wL6Y0Hi9QftlanNjYGVihw==', NULL, 'image/jpeg', '4388c5fd', 'CL36_2nUkAATviz.jpg', 1441183044, 54420, 0),
(7, 'faces', 1, 1441183051, '8323de3b', '', '50d36e33ce1f6d1cfefd3a54203c061d', '5QCwOmL1tJugZqJYQxS84W3AgOtitxbX1p9aHnJUBTvRUvUPGpoJOLlu+2H6/Bjnep/Rb4G9b6yO6bbSlLOBLA==', NULL, 'image/jpeg', '8d153617', 'CL36_2nUkAATviz.jpg', 1441183051, 54420, 0),
(8, 'faces', 1, 1441183053, 'f3970573', '', '1c82fa8c3761ba1bcc88cb10af514bdb', 'OTXZmajArbOlu3IsLlZPaW4efbJInUOh9EBDo/xjgpeLksNGCO6oSwgK3BcqEKRCCjUap57aZThOG3KJows2ww==', NULL, 'image/jpeg', 'a06c6ad1', '1440690613319_3257.jpg', 1441183053, 246017, 0),
(9, 'faces', 1, 1441183054, '9f413d25', '', 'b69946e35fff6c33d17636829b6c7fe9', 'LZwwOTyUjq2k1q/tPNPnNi8GzICif6nkYy94/y0fkxCcQ6BPIP9hB4Xvi9aS7BDQmewNqlie2xvNMSHSJ5tK5A==', NULL, 'image/jpeg', '4e27d80f', '1500x500.jpg', 1441183054, 101411, 0),
(10, 'faces', 1, 1441183054, '02242222', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'KvqL3i/zn3HbaXl0Je596sVTxSxNTt4Gzq1sRhjCiGW1TKnjsF+shVg9MEdxpjwGGrjHTWfOoyKJaKo4ZdznRg==', NULL, 'image/jpeg', '6296c255', 'CL36_2nUkAATviz.jpg', 1441183054, 54420, 0),
(11, 'faces', 1, 1441183057, 'bdc7b196', '', 'b69946e35fff6c33d17636829b6c7fe9', '1a1KJ/hOfgbBO8If+amueqWYV2vm6H6mQfut6mOpoMU8Q7IN/ki7BqXrCZOtT4KvShi4KQivLd6DkRH7JEaWmA==', NULL, 'image/jpeg', 'c311434d', '1500x500.jpg', 1441183057, 101411, 0),
(12, 'faces', 1, 1441183060, 'd490aa0f', '', 'b69946e35fff6c33d17636829b6c7fe9', 'ejtAXuPKnqy4+Ai53TGDNPhbEeQMeHxNsHyYTh5PJDjVVLh718oaWkTPUN0Q5hSmQgo8x2KYqRE5WSwsAk1QlA==', NULL, 'image/jpeg', '1b399bbb', '1500x500.jpg', 1441183060, 101411, 0),
(13, 'faces', 1, 1441183064, '9d9d07f5', '', 'b69946e35fff6c33d17636829b6c7fe9', 'nfx78XGS0YQ5wimeO+ie8YV5KNR8Bvjy8tfDGXVZeL3xTjl1WWgcaz+6ZtoKnFxVbNlrWjUWsSz9mop0g5CCZw==', NULL, 'image/jpeg', 'c935d3ce', '1500x500.jpg', 1441183064, 101411, 0),
(14, 'faces', 1, 1441183067, 'd137981d', '', 'b69946e35fff6c33d17636829b6c7fe9', 'RXtUvzvs99wKIqxqbPqvPHfAVcO6ADD+osks7pll5vjjXuo9t2UhWPBzCfSmGmVD7dskSSX9WodKQ5aWPQv/Kg==', NULL, 'image/jpeg', '9c4869b9', '1500x500.jpg', 1441183067, 101411, 0),
(15, 'drive', 1, 1441183070, '540470ff', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'Bafk4A14j7L3NBYeF11bNc+mu5bvlqG5psjyZmcMaQbDjoDjk4Ze9BZ/GqsBhUQP2SePU+0bXnVTITRkJlvU6g==', NULL, 'image/jpeg', '87d7ce29', 'CL36_2nUkAATviz.jpg', 1441183070, 54420, 0),
(16, 'drive', 1, 1441183070, '0ac0b586', '', 'd91e809c1152dbeecc0ff9e60278eee2', 'Thr2nQTWPs/LA8p67E6dbU7Xe0831a9SVpRx6LiZBmve+dXYksrZVCOPvopzIv67GfgwkUOFNIQuHPSs79o8jg==', NULL, 'image/jpeg', 'e8266bb1', 'CL36_2nUkAATviz.jpg', 1441183070, 54420, 0),
(17, 'faces', 1, 1441183070, '9a002158', '', 'b69946e35fff6c33d17636829b6c7fe9', '7FE3GCkv3Txh9RF9kapR6FtBms2M8TN6wcu9moCO/9ZRWwG5SQRxMFak0MYb2hkGGcpiutiDYpcI4ZxJQ2c/LQ==', NULL, 'image/jpeg', 'd6e56475', '1500x500.jpg', 1441183070, 101411, 0),
(18, 'drive', 1, 1441183071, 'ece62837', '', '1c82fa8c3761ba1bcc88cb10af514bdb', 'OI3mYgpHSiSDnqK9U2YrmPGEiF6Fv+oyXSRpS0HTFP+rXsBBCQoaYqWpZ5Lb1lykvBVoD2jc7otsOn6CytArGA==', NULL, 'image/jpeg', 'fce21e37', '1440690613319_3257.jpg', 1441183071, 246017, 0),
(19, 'drive', 1, 1441183071, '3678ec28', '', '3e3f258d756bf1b8dfeea76b61490d8b', 'Mx4g2jnkawEUHn9/7caXxORaJZWM5G8gjB7ThuCsOxT+85NT6tdunhA7DBC0DrPZGfeGYYLJ5CmsO0JWSajJRA==', NULL, 'image/jpeg', 'ae225fe9', '1440690613319_3257.jpg', 1441183071, 246017, 0),
(20, 'drive', 1, 1441183072, '947b369a', '', 'f322d982f6b00c3e546469fb893d312b', 'Bmtl+s+sSJwRUnW+zxgKwFAV7oWL4XyE04nv+r3anhO5I9YYMPpd2pXEAgLIUdGUJTuMgl4ub3x/eJG2TIBWVA==', NULL, 'image/jpeg', 'e03adb6b', '1909298_1474502006103047_649702505_o.jpg', 1441183072, 295131, 0),
(21, 'drive', 1, 1441183073, 'd023675f', '', 'b19cce68ddc0c0bc34772db494234278', 'VQ/shrr+LwbeXcwk7EdrIRygZMvYf25xT1nWHNRx6+JXbnlmAM5LwL/Jh0DMjbjHuU2qlfWhfubgmzZTeE14bQ==', NULL, 'image/jpeg', '7df1e26f', '1909298_1474502006103047_649702505_o.jpg', 1441183073, 295131, 0),
(22, 'faces', 1, 1441183073, 'a41e4855', '', 'b69946e35fff6c33d17636829b6c7fe9', '5BDMvQDEgjI5/dDAc2GwC3E2HxYvg1w3YoPWewAS8uDyrLom6eM2TpPjisUMpwQo4JfnpGaum3iSkVHQkB6L2g==', NULL, 'image/jpeg', '322e17bf', '1500x500.jpg', 1441183073, 101411, 0),
(23, 'drive', 1, 1441183075, '733b3f9e', '', 'f55c976be787b8d4a9afc91e4e1ba63e', '8dabl3NlsZrUPo/jIUJO6Xw3AgjoMVaOsu0F08SciYZnHY3Wkmohp0tpVi5hNIU/ESu2XDGEdZsSN2kKHyaJTQ==', NULL, 'image/jpeg', '999f329e', '1909298_1474502006103047_649702505_o.jpg', 1441183075, 75328, 0),
(24, 'drive', 1, 1441183075, 'a5251c58', '', '0bc94804ea378316e3dbeccaf0b53716', '+vsFEBOG7zTSRNZaAfTUPOlFVtCI/qFizJe5RK6wfPtPPVplf5+usSQjd8bO7CtOW6BqPeK6EX6zJyY/IWMj3g==', NULL, 'image/jpeg', '997478ae', '1909298_1474502006103047_649702505_o.jpg', 1441183075, 28178, 0),
(25, 'drive', 1, 1441183076, '87b1642b', '', 'b69946e35fff6c33d17636829b6c7fe9', '9JkRYCPlGtmTiacjRoawpAksWPKj7fk9SRwLdGcXXTDrpkXIrrBd5pPdCUYM/VRHl3T+xauFlpzW1PMLinW/Tg==', NULL, 'image/jpeg', '25af09f8', '1500x500.jpg', 1441183076, 101411, 0),
(26, 'drive', 1, 1441183076, '1c3f7826', '', '49d9392e6cc8b444d5799abc5d2b3347', '+EYRQR+Cl7lrJTPNcE0LOt+Q1JXZzEm/Z57BTmrtQHHMAALan6g4gH05KQ+tDOZPbu0VtltY8QHvGiACHy5emw==', NULL, 'image/jpeg', 'f47e0c81', '1500x500.jpg', 1441183076, 101411, 0),
(27, 'drive', 1, 1441183077, '8c957bb3', '', '3ba915353c9ec1141db4ade4639d2d09', 'NKdZ/BkR037hdyZatZ7yxBywhbFnl0iKGbQIpVhujTt1Pwl7uvxtsHnAe58IwBABBCj677CM8MLBS4q60nlU+A==', NULL, 'image/jpeg', '47e3399f', '1500x500.jpg', 1441183077, 35991, 0),
(28, 'drive', 1, 1441183077, 'd6d97b41', '', '781d56f8dcb33f904a07c2b0b2b68d5a', 'Vj5fKuQNGGSmDl+8gq8dZI6c94PUCUHoFNlVNRrmLg6sg2sdZnffJormfjH0ZRJCbqfSNw8IiBAkfNj8oKX4Xg==', NULL, 'image/jpeg', '67f5a822', '1500x500.jpg', 1441183077, 11651, 0);

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
  `updated` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `updated`, `size`, `modified`) VALUES
(2, 'drive', 1, 1441183315, '12655393', '', '54bf075239ef091cd33eded54a766da6', '2Wgk1gYcMn0bKZzgQG6ZAqbBdJSz0qlvhm6+JHXf2kZFZJUZHCpKkxgi0nPVaGsKQ9AJEA7zSa9DT6xF0ipv7A==', 'audio/x-mpeg-4', '1f4bf6ca', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441183773, 48873769, 0),
(3, 'drive', 1, 1441183773, '4ed123f0', '', '3e2b285b4479d3525790bc8592fcb2d5', 'lTxnTNPFVt2zql4jC9rhXW6EOX9ee8IS7zhqKhJvl0Iya+VCJiyUrUoncvZp3K4GcCt2tj7YgSlW8tjpRPKZ1g==', 'audio/x-mpeg-4', '9ca0bfec', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441183960, 24005656, 0),
(4, 'drive', 1, 1441183960, '0f82c8ef', '', '91f9ec3a914a6213564c2a0db2564387', 'p9iEYH0oEzQgC2apb8OcmBfx/lpRALKq9jrH+TKrcyBZ5+LhDGhGzVffl6CxSRmKXj6261VSKYsBC3FvDMaCCg==', 'audio/x-mpeg-4', '94560fb9', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441184002, 10340185, 0);

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
(1, 1441181980, '9b5d543e', '887055cc62c65776f0bc9bd99c82be48', 'lamhieu', 'lamhieu@giccos.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sgoGje5bU+MTh6XsX4yz+xJGXZOXwU5t8vY/pfJRx8k=', '', 'Lam Hieu', 'lam', '', 'hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'e9b01662', 0, 1, 0, 1442937884),
(2, 1441441349, 'd0e43dd2', '248bb9a2b5c0622a005256b360e119d2', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cx8YfmKhbUIMgmUBT+Lt/mXZ61ZW5oSSUOZyaOueLWc=', '', 'TrÆ°Æ¡ng Tuáº¥n', 'TrÆ°Æ¡ng', '', 'Tuáº¥n', 'f-m-l', '', 'male', NULL, 915127261, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '64', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'fc2f320b', 0, 0, 0, 1442516855),
(3, 1441890502, '0236434f', '6dcdec6cd495efac92603381bfa2f812', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '1amHNJuPQWpKm1f9pbxT/S8duiP2G6C2P5StZFQG+iQ=', '', 'Tráº§n DÆ°á»¡ng', 'Tráº§n', '', 'DÆ°á»¡ng', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, '1e17e0ee', 0, 0, 0, 1442499564),
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

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
(34, 1442152982, 'id', '1', 1, '1a4cb25f'),
(35, 1442210048, 'id', '1', 1, '1a4cb25f'),
(36, 1442231955, 'id', '1', 1, '1a4cb25f'),
(37, 1442297697, 'id', '1', 1, '1a4cb25f'),
(38, 1442388766, 'id', '1', 1, '1a4cb25f'),
(39, 1442422994, 'id', '1', 1, '1a4cb25f'),
(40, 1442473638, 'id', '1', 1, '1a4cb25f'),
(41, 1442481954, 'id', '1', 1, '3c3ff190'),
(42, 1442490626, 'id', '1', 1, '1a4cb25f'),
(43, 1442491052, 'id', '1', 1, '1a4cb25f'),
(44, 1442491123, 'id', '1', 1, '1a4cb25f'),
(45, 1442491172, 'id', '1', 1, '1a4cb25f'),
(46, 1442492294, 'id', '1', 1, '1a4cb25f'),
(47, 1442495690, 'id', '1', 1, '1a4cb25f'),
(48, 1442495712, 'id', '1', 1, '1a4cb25f'),
(49, 1442495939, 'id', '1', 1, '1a4cb25f'),
(50, 1442496094, 'id', '1', 1, '1a4cb25f'),
(51, 1442496699, 'id', '1', 1, '1a4cb25f'),
(52, 1442498860, 'id', '3', 1, '1a4cb25f'),
(53, 1442499581, 'id', '1', 1, '1a4cb25f'),
(54, 1442516042, 'id', '2', 1, '1a4cb25f'),
(55, 1442577312, 'id', '1', 1, '1a4cb25f'),
(56, 1442651603, 'id', '1', 1, '1a4cb25f'),
(57, 1442730592, 'id', '1', 1, '1a4cb25f'),
(58, 1442735688, 'id', '1', 1, '1a4cb25f'),
(59, 1442812201, 'id', '1', 1, '1a4cb25f'),
(60, 1442905178, 'id', '1', 1, '1a4cb25f');

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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

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
(77, 1, 1442158832, 1442159334, '1a4cb25f'),
(78, 0, 1442161112, 1442161112, '1a4cb25f'),
(79, 0, 1442210044, 1442210044, '1a4cb25f'),
(80, 1, 1442210049, 1442211312, '1a4cb25f'),
(81, 1, 1442211783, 1442212187, '1a4cb25f'),
(82, 1, 1442226862, 1442232038, '1a4cb25f'),
(83, 0, 1442231941, 1442231954, '1a4cb25f'),
(84, 0, 1442297689, 1442297695, '1a4cb25f'),
(85, 1, 1442297697, 1442317517, '1a4cb25f'),
(86, 1, 1442318669, 1442329311, '1a4cb25f'),
(87, 0, 1442388745, 1442388764, '1a4cb25f'),
(88, 1, 1442388766, 1442397761, '1a4cb25f'),
(89, 1, 1442398808, 1442398865, '1a4cb25f'),
(90, 1, 1442399193, 1442403109, '1a4cb25f'),
(91, 0, 1442422971, 1442422990, '1a4cb25f'),
(92, 1, 1442422994, 1442423346, '1a4cb25f'),
(93, 0, 1442473548, 1442473638, '1a4cb25f'),
(94, 1, 1442473638, 1442473638, '1a4cb25f'),
(95, 1, 1442474551, 1442477835, '1a4cb25f'),
(96, 1, 1442479399, 1442481917, '1a4cb25f'),
(97, 0, 1442481945, 1442481952, '3c3ff190'),
(98, 1, 1442481954, 1442482299, '3c3ff190'),
(99, 1, 1442482310, 1442496102, '1a4cb25f'),
(100, 0, 1442490600, 1442491168, '1a4cb25f'),
(101, 0, 1442492289, 1442492289, '1a4cb25f'),
(102, 0, 1442495686, 1442496696, '1a4cb25f'),
(103, 1, 1442496699, 1442498796, '1a4cb25f'),
(104, 0, 1442498855, 1442498855, '1a4cb25f'),
(105, 3, 1442498860, 1442499071, '1a4cb25f'),
(106, 3, 1442499492, 1442499564, '1a4cb25f'),
(107, 0, 1442499570, 1442499576, '1a4cb25f'),
(108, 1, 1442499581, 1442499914, '1a4cb25f'),
(109, 1, 1442503864, 1442504791, '1a4cb25f'),
(110, 1, 1442505186, 1442516943, '1a4cb25f'),
(111, 0, 1442516029, 1442516041, '1a4cb25f'),
(112, 2, 1442516042, 1442516856, '1a4cb25f'),
(113, 1, 1442524844, 1442527357, '1a4cb25f'),
(114, 0, 1442577129, 1442577310, '1a4cb25f'),
(115, 1, 1442577312, 1442589727, '1a4cb25f'),
(116, 0, 1442651490, 1442651601, '1a4cb25f'),
(117, 1, 1442651603, 1442651821, '1a4cb25f'),
(118, 1, 1442652213, 1442652626, '1a4cb25f'),
(119, 1, 1442653880, 1442655689, '1a4cb25f'),
(120, 1, 1442658593, 1442658593, '1a4cb25f'),
(121, 1, 1442663603, 1442679700, '1a4cb25f'),
(122, 1, 1442680459, 1442682438, '1a4cb25f'),
(123, 0, 1442730580, 1442730586, '1a4cb25f'),
(124, 1, 1442730592, 1442734175, '1a4cb25f'),
(125, 0, 1442734185, 1442735683, '1a4cb25f'),
(126, 1, 1442735688, 1442737083, '1a4cb25f'),
(127, 1, 1442757165, 1442760609, '1a4cb25f'),
(128, 0, 1442811959, 1442812200, '1a4cb25f'),
(129, 1, 1442812201, 1442812361, '1a4cb25f'),
(130, 1, 1442814430, 1442815645, '1a4cb25f'),
(131, 0, 1442905172, 1442905178, '1a4cb25f'),
(132, 1, 1442905179, 1442905435, '1a4cb25f'),
(133, 1, 1442913093, 1442914502, '1a4cb25f'),
(134, 1, 1442918109, 1442918149, '1a4cb25f'),
(135, 1, 1442937801, 1442937884, '1a4cb25f');

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
  `status` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `tags` text,
  `description` text,
  `private.view` int(1) NOT NULL,
  `private.comment` int(1) NOT NULL,
  `private.share` int(1) NOT NULL,
  `file.hd` varchar(50) NOT NULL,
  `file.vga` varchar(50) NOT NULL,
  `file.qvga` varchar(50) NOT NULL,
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
  `preview` int(1) NOT NULL DEFAULT '0',
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

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `status`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.hd`, `file.vga`, `file.qvga`, `secret.hd`, `secret.vga`, `secret.qvga`, `path.thumbnail`, `path.audio`, `path.hd`, `path.vga`, `path.qvga`, `file.datetime`, `file.size`, `preview`, `codec_name`, `codec_long_name`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(1, 1, 'user', 1, 0, 1441184002, '4f526865', '5f59d1c5f6b97391b1072f5bced89210', '', 'Ä‘iá»u anh lo láº¯ng', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 'love like khanhphuong best music love like khanhphuong best music', 'Molly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses', 4, 4, 4, '68ee2fce6c94d53b3f2d9f264d6d8d18', 'ef429e84ba74a7c5771b1f2acb8dddf1', 'feadfb52ee08ab062e7c0dbdec789ca4', '54bf075239ef091cd33eded54a766da6', '3e2b285b4479d3525790bc8592fcb2d5', '91f9ec3a914a6213564c2a0db2564387', '0', '0', '1f4bf6ca', '9ca0bfec', '94560fb9', 0, 57882648, 1, 'h264', 'H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10', 720, 1280, '16:9', 1388648, '25/1', 333.461670, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 333, 191999);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_pointtag`
--

INSERT INTO `videos_pointtag` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `point`, `length`, `sticker`, `content`) VALUES
(1, 1441386003, 1, 'user', 1, 17.43, 50.00, '', 'comment in videos'),
(2, 1441980392, 1, 'user', 1, 3.58, 5.00, '', 'ná»¯ chÃ­nh Ä‘áº¹p quÃ¡ cÆ¡ :D'),
(3, 1442135885, 1, 'user', 1, 55.10, 5.00, '', 'buá»“n :('),
(4, 1442759645, 1, 'user', 1, 134.55, 5.00, '', 'wwhat do you doing now ??');

-- --------------------------------------------------------

--
-- Table structure for table `videos_preview`
--

CREATE TABLE IF NOT EXISTS `videos_preview` (
  `id` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `distance` int(11) NOT NULL,
  `path` char(10) NOT NULL,
  `size.width` int(11) NOT NULL,
  `size.height` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_preview`
--

INSERT INTO `videos_preview` (`id`, `videos.id`, `distance`, `path`, `size.width`, `size.height`) VALUES
(1, 1, 2, '', 128, 72);

-- --------------------------------------------------------

--
-- Table structure for table `videos_rate`
--

CREATE TABLE IF NOT EXISTS `videos_rate` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `point` int(1) NOT NULL,
  `updated` int(11) NOT NULL
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
-- Table structure for table `videos_thumbnail`
--

CREATE TABLE IF NOT EXISTS `videos_thumbnail` (
  `id` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `type` char(10) NOT NULL,
  `time` int(11) NOT NULL,
  `official` int(1) NOT NULL,
  `thumbnail.path` char(10) NOT NULL,
  `original.path` char(10) NOT NULL
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
  `captions` char(10) NOT NULL,
  `updated` int(11) NOT NULL
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
-- Indexes for table `videos_preview`
--
ALTER TABLE `videos_preview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_rate`
--
ALTER TABLE `videos_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_replay`
--
ALTER TABLE `videos_replay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_thumbnail`
--
ALTER TABLE `videos_thumbnail`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=874;
--
-- AUTO_INCREMENT for table `library_cited`
--
ALTER TABLE `library_cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_voice`
--
ALTER TABLE `library_voice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `library_words`
--
ALTER TABLE `library_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=512;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=265;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=136;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `videos_preview`
--
ALTER TABLE `videos_preview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_rate`
--
ALTER TABLE `videos_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_replay`
--
ALTER TABLE `videos_replay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_thumbnail`
--
ALTER TABLE `videos_thumbnail`
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
