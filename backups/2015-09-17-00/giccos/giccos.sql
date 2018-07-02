-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2015 at 04:25 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=872 DEFAULT CHARSET=latin1;

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
(871, 'en', 'times_mentions', 'times mentions', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

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
(59, 1442499607, 'user', 1, 'favorite', 'status', '20', '', ''),
(60, 1442499610, 'user', 1, 'unfavorite', 'status', '20', '', '');

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
(6, 1441460850, 1442475143, '1a4cb25f', '113.170.46.167', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.93', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36'),
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
(8, 1441126202, 2, '0d92d0df', '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'),
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
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=latin1;

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
(262, 'video_cache_timeout', 'en', '3600');

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
('NPOszsn4d1v-fJt2wsVtCjlOah9NdsGdr-ZQtgGNFV2', 1442499914, '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', 'b19cae6e28557a225dd6de7769cc7220');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('RtqMgBmlXNbVqosf7UNbS-iYUrAL,Ihch3poVwAW2ya', 1442499565, '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', 'b00eb68b4498206e28ab60687b8b6a8a');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

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
(20, 1, '78d67e47', 'ca6cd3e8d3068ce2c283b1da9c77b3ce', 1442401093, 1442401093, 0, 1, 'user', 1, 3, 3, 3, 'status', 'VS5ecDE7l+C60Umr0rkIeaJa4Uc/LKEhcb0gTGBGZ3vdBWOdlRMvifFrQhPp5rGDHYy4r3m+4e/fsSUhePN9+g==', 0, 0, 1, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_hashtag`
--

INSERT INTO `status_hashtag` (`id`, `time`, `inside.type`, `inside.id`, `hashtag`) VALUES
(1, 0, 'status', 10, 'live'),
(2, 0, 'status', 10, 'ganhhao'),
(3, 0, 'status', 9, 'ganhhao');

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
(1, 1441181980, '9b5d543e', '887055cc62c65776f0bc9bd99c82be48', 'lamhieu', 'lamhieu@giccos.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sgoGje5bU+MTh6XsX4yz+xJGXZOXwU5t8vY/pfJRx8k=', '', 'Lam Hieu', 'lam', '', 'hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'e9b01662', 0, 1, 0, 1442499914),
(2, 1441441349, 'd0e43dd2', '248bb9a2b5c0622a005256b360e119d2', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cx8YfmKhbUIMgmUBT+Lt/mXZ61ZW5oSSUOZyaOueLWc=', '', 'TrÆ°Æ¡ng Tuáº¥n', 'TrÆ°Æ¡ng', '', 'Tuáº¥n', 'f-m-l', '', 'male', NULL, 915127261, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '64', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'fc2f320b', 0, 0, 0, 1442062664),
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

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
(53, 1442499581, 'id', '1', 1, '1a4cb25f');

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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

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
(108, 1, 1442499581, 1442499914, '1a4cb25f');

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
  `description` text,
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
(1, 1, 'user', 1, 0, 1441184002, '4f526865', '5f59d1c5f6b97391b1072f5bced89210', 'Ä‘iá»u anh lo láº¯ng', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 'love like khanhphuong best music love like khanhphuong best music', 'Molly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses', 4, 4, 4, '9453472a838aa76d4afcae64086aebef', '0', '68ee2fce6c94d53b3f2d9f264d6d8d18', 'ef429e84ba74a7c5771b1f2acb8dddf1', 'feadfb52ee08ab062e7c0dbdec789ca4', '', '0', '54bf075239ef091cd33eded54a766da6', '3e2b285b4479d3525790bc8592fcb2d5', '91f9ec3a914a6213564c2a0db2564387', '0', '0', '1f4bf6ca', '9ca0bfec', '94560fb9', 0, 57882648, 'h264', 'H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10', 720, 1280, '16:9', 1388648, '25/1', 333.461670, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 333, 191999);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=872;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=263;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
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
