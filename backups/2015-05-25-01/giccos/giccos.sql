-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 25 Mai 2015 à 18:24
-- Version du serveur :  5.6.21
-- Version de PHP :  5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `giccos`
--

-- --------------------------------------------------------

--
-- Structure de la table `advertising_actions`
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
-- Structure de la table `advertising_id`
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
-- Structure de la table `analysis_faces`
--

CREATE TABLE IF NOT EXISTS `analysis_faces` (
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `analysis_faces`
--

INSERT INTO `analysis_faces` (`id`, `time`, `updated`, `token`, `display`, `tag`, `thumbnail`, `faces`, `confidence`, `eye.left.x`, `eye.left.y`, `eye.right.x`, `eye.right.y`, `nose.x`, `nose.y`, `mouth.tl.x`, `mouth.tl.y`, `mouth.bl.x`, `mouth.bl.y`, `mouth.tr.x`, `mouth.tr.y`, `mouth.br.x`, `mouth.br.y`, `pose.roll`, `pose.yaw`, `pose.pitch`, `race.text`, `race.value`, `quality.brn`, `quality.shn`, `emotion.oe.text`, `emotion.oe.value`, `emotion.to.text`, `emotion.to.value`, `emotion.te.text`, `emotion.te.value`, `age`, `smile`, `glasses`, `sunglasses`, `eye_closed`, `mouth_open_wide`, `beauty`, `sex`) VALUES
(8, 1431790466, 1431790466, '2c1c6d60', '6c2c8ed3', '073ca2a2b839a15fd65a9e146150b38b', 'd77e899e', 'b543367d', '1', '395.6', '221', '417.8', '221.9', '406.2', '233.5', '396.5', '242.3', '396.5', '242.3', '413.9', '243.1', '413.9', '243.1', '2.18', '6.53', '-6.23', 'asian', '0.99', '0.37', '0', 'confused', '0.01', '', '0', '', '0', '16.38', '0.88', '0', '0', '0', '0.05', '0.9871', '0'),
(9, 1431790472, 1431790472, '796b7f61', '33a0ccae', '073ca2a2b839a15fd65a9e146150b38b', '8995d578', 'd226272f', '1', '319.7', '232.4', '342.7', '232.7', '334.8', '246.4', '319.3', '254.8', '319.3', '254.8', '339', '254.5', '339', '254.5', '-1.04', '34.65', '-3.77', 'asian', '0.91', '0.51', '0.1', 'calm', '0', '', '0', '', '0', '25.46', '0.99', '0', '0.01', '0', '0.99', '0.5190', '0'),
(10, 1431790477, 1431790477, 'a55d009d', '38e8e714', '073ca2a2b839a15fd65a9e146150b38b', '5bf0774c', 'f11f7d8e', '1', '493.3', '225.7', '515.2', '228', '504.9', '239.1', '492.9', '247.5', '492.9', '247.5', '512.2', '248.8', '512.2', '248.8', '6.09', '9.87', '-1.49', 'asian', '0.97', '0.29', '0.1', 'sad', '0.02', '', '0', '', '0', '22', '0.8', '0', '0', '0.02', '0.34', '0.9027', '0'),
(11, 1431790482, 1431790482, '08ce1790', '9e08409e', '073ca2a2b839a15fd65a9e146150b38b', 'fd92b7d8', '6168593e', '1', '209.7', '238.1', '234.9', '237.2', '227.4', '250.9', '214.7', '264.2', '214.7', '264.2', '235.1', '263', '235.1', '263', '-3.37', '17', '-3.43', 'asian', '0.82', '0.47', '0.1', 'calm', '0.02', '', '0', '', '0', '22.02', '0.06', '0', '0.01', '0', '0.02', '0.9823', '0'),
(12, 1431790486, 1431790486, '39e9518d', '0618ac42', '073ca2a2b839a15fd65a9e146150b38b', 'e4038007', '53f99e7b', '1', '586.8', '215.9', '609.3', '216.5', '594.2', '227.1', '588.5', '236.9', '588.5', '236.9', '608.3', '237.9', '608.3', '237.9', '2.42', '-27.4', '1.69', 'asian', '0.39', '0.57', '0', 'disgust', '0.01', '', '0', '', '0', '21.05', '0.94', '0', '0.06', '0', '0.49', '0.5729', '0'),
(13, 1431790759, 1431790759, '71b64d12', 'a20a372b', '073ca2a2b839a15fd65a9e146150b38b', '249761a7', 'fc149565', '1', '586.8', '215.9', '609.3', '216.5', '594.2', '227.1', '588.5', '236.9', '588.5', '236.9', '608.3', '237.9', '608.3', '237.9', '2.42', '-27.4', '1.69', 'asian', '0.39', '0.57', '0', 'disgust', '0.01', '', '0', '', '0', '21.05', '0.94', '0', '0.06', '0', '0.49', '0.5729', '0');

-- --------------------------------------------------------

--
-- Structure de la table `answers_category`
--

CREATE TABLE IF NOT EXISTS `answers_category` (
  `id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `answers_post`
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
-- Structure de la table `answers_rate`
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
-- Structure de la table `answers_topic`
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
-- Structure de la table `cited`
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
-- Structure de la table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `friends_request`
--

CREATE TABLE IF NOT EXISTS `friends_request` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
`id` int(11) NOT NULL,
  `language` varchar(40) NOT NULL,
  `code` varchar(2) NOT NULL,
  `note` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `languages`
--

INSERT INTO `languages` (`id`, `language`, `code`, `note`) VALUES
(1, 'english', 'en', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `languages_codes`
--

CREATE TABLE IF NOT EXISTS `languages_codes` (
`id` int(11) NOT NULL,
  `country` varchar(2) NOT NULL,
  `code` char(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `languages_codes`
--

INSERT INTO `languages_codes` (`id`, `country`, `code`) VALUES
(1, 'vn', 'vi'),
(2, 'us', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `languages_values`
--

CREATE TABLE IF NOT EXISTS `languages_values` (
`id` int(11) NOT NULL,
  `language` varchar(4) NOT NULL,
  `code` text NOT NULL,
  `text` text NOT NULL,
  `short` char(10) DEFAULT 'false'
) ENGINE=InnoDB AUTO_INCREMENT=578 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `languages_values`
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
(574, 'en', 'messages_not_exist_maybe_has_deleted', 'messages not exist, maby has deleted', 'false'),
(575, 'en', 'may_say_hello', 'may say hello with they', 'false'),
(576, 'en', 'not_found_old_messages', 'not found old messages', 'false'),
(577, 'en', 'loading_old_messages', 'loading old messages, please wait...', 'false');

-- --------------------------------------------------------

--
-- Structure de la table `logs_actions`
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `author.type`, `author.id`, `action`, `things`, `things.id`, `obj`, `obj.id`) VALUES
(1, 1431546174, 'user', 15, 'add', '', 0, 'status', 1),
(2, 1432051085, 'user', 15, 'add', '', 0, 'status', 2),
(3, 1432051223, 'user', 15, 'add', '', 0, 'status', 3),
(4, 1432051278, 'user', 15, 'add', '', 0, 'status', 4),
(5, 1432051327, 'user', 15, 'add', '', 0, 'status', 5),
(6, 1432051385, 'user', 15, 'add', '', 0, 'status', 6),
(7, 1432051455, 'user', 15, 'add', '', 0, 'status', 7),
(8, 1432051647, 'user', 15, 'add', '', 0, 'status', 8),
(9, 1432051716, 'user', 15, 'add', '', 0, 'status', 9),
(10, 1432051907, 'user', 15, 'add', '', 0, 'status', 10),
(11, 1432052165, 'user', 15, 'add', '', 0, 'status', 11),
(12, 1432052378, 'user', 15, 'add', '', 0, 'status', 12),
(13, 1432052430, 'user', 15, 'add', '', 0, 'status', 13),
(14, 1432052517, 'user', 15, 'add', '', 0, 'status', 14),
(15, 1432052598, 'user', 15, 'add', '', 0, 'status', 15),
(16, 1432052854, 'user', 15, 'add', '', 0, 'status', 16),
(17, 1432052901, 'user', 15, 'add', '', 0, 'status', 17),
(18, 1432053047, 'user', 15, 'add', '', 0, 'status', 18),
(19, 1432053216, 'user', 15, 'add', '', 0, 'status', 19),
(20, 1432053292, 'user', 15, 'add', '', 0, 'status', 20),
(21, 1432214173, 'user', 15, 'add', '', 0, 'status', 1),
(22, 1432488658, 'user', 15, 'add', '', 0, 'status', 2),
(23, 1432488695, 'user', 15, 'add', '', 0, 'status', 3);

-- --------------------------------------------------------

--
-- Structure de la table `logs_ajax`
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
-- Structure de la table `logs_client`
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1431351753, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa'),
(2, 1431448990, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa'),
(3, 1432140873, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.152', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safa');

-- --------------------------------------------------------

--
-- Structure de la table `maps_places`
--

CREATE TABLE IF NOT EXISTS `maps_places` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `display`, `code`, `reference`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `icon`, `thumbnail`) VALUES
(1, '395602f4', '49db5fa1d07d8a9bbce41cc32597920b', 'ChIJ0wPk--NnoTERe6JmxzwUajk', 'ChIJ0wPk--NnoTERe6JmxzwUajk', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'http://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif');

-- --------------------------------------------------------

--
-- Structure de la table `messages_data`
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages_data`
--

INSERT INTO `messages_data` (`id`, `time`, `tab`, `token`, `display`, `author.type`, `author.id`, `content`, `emoticons`) VALUES
(27, 1432305661, 58, 'aacd111c', '0c5dbeab846fa3c6e9502d851375c8e5', 'user', 15, 'hkT2sbLGh5KMfM/pCT6hJqSrBCBXVqqsbUxX30dw3z0=', ''),
(28, 1432305662, 58, '968f35dd', 'b9dfb59addaac9fa7ff795b1fbbe63da', 'user', 15, 'YMpJtggDOHHGNdXwJm0dzXBYiLB35BIIpy+2ykHJk20=', ''),
(29, 1432305664, 58, '5172d4be', '56141c7797d455f065b99b7d5df61e4a', 'user', 15, 'zgw6PgGNFqVGZKAVUHclcgSX+Nv7pm1XKfX5+ZVT6mI=', ''),
(30, 1432305668, 58, '060cc94b', '0b9425f3a3df6813421080c8a7c8140a', 'user', 15, 'IGmDNCe3am393gD2L51iuGS4UV18jmDTIYFbkLeMGy8=', ''),
(31, 1432306792, 58, '0b92bf61', '931d17f6c52fc408f950b9e9c07afe4d', 'user', 15, 'cfhWOoBvwd2o0oTXNF9DWLKzhN+l9tjva1A8XFuYlME=', ''),
(32, 1432312459, 59, '01e70ea7', 'd19b08e673442ed121d27c77271cef95', 'user', 15, 'Y3mpILyc7Xyc/5Gi97LvucHf5gJQEDUPfzv9hxPvKdM=', ''),
(33, 1432312460, 59, 'a39ec9c5', '3ffa8ad01d18ad85278bcee45a2a584c', 'user', 15, 'FgggATm8jk1RBbawSYJsZD0vWTyoBkmTI6HT8r6BvOg=', ''),
(34, 1432315944, 58, 'ca8801c0', 'b65fdc525cc00d48b135361ebfe59b55', 'user', 15, 'KzilxnR4bg0UZFRwyzEMF9ddZCMDv4m7tF0gxaKl6t69XRUiH9zZ9DaYXfU5HXMTGYf6a0yBoD+z6I6pLelwaA==', ''),
(35, 1432315956, 58, 'b1e19f7b', '87042e0da66f94cb35636b70c45fb30d', 'user', 15, 'oy1ZPTGGIHc0+1o2HTaCi3fkH7voEnZSpjCpvVeOg+LrwQ1AAc3PLhoLtLm/Wn2OaXChcKjudWL00pB5dIfTfwYmo7x1zxt9az/DJcaTaxdWa0OS2pHBC2fohpThSWfW', ''),
(36, 1432316185, 60, 'cb42a995', '50e3ff8831aa0711818ece6412504a26', 'user', 15, 'nw+h9avWkhGD6hV/WRrC/Gd5p3jusXJXOa1lGxvmwaI=', ''),
(37, 1432316254, 58, 'bd318765', '52eb970ab3aaf946059dedf3c25a3c63', 'user', 17, 'nwhk+XJBifw3QTsS+2Y+z86iGMBkDmalU5gLju/PnqA=', ''),
(38, 1432400984, 58, 'f85f3810', '81e217e9b1af8d3ccf8f8bbdd1341d8f', 'user', 15, 'G4c/k6MMwaa+8hh3pwiH6QwiBJTbcOOGvhD9KQee2jY=', ''),
(39, 1432487138, 58, '4d3d2310', '9966d7d5f97246c6c4d63fe7f5724cdf', 'user', 15, '1UzPQbP+qu3d3bWyKv9yOnpApuIx1qV3EKEfqXghAy8=', ''),
(43, 1432488034, 58, '214d0607', 'bc88a6191916e1ce3c874c63d355a007', 'user', 17, 'C+kU28U56NG7/NvyZRhC3FjR+45WWM/xtByH7Bp+dok=', ''),
(44, 1432488703, 58, 'a59c6688', '72b0046cecc735783843481fa517ae15', 'user', 15, 'dCVBndndrNELsGLUVd0DPlbU3Qr8nkYzBsDce6DS2m9GHyHcf9gUXgPOLzf9rVyAtLQfV9IsqatxhZKaHO67iw==', ''),
(45, 1432488742, 58, '29e7a54f', '5001a52391f7447653c77f3ad2f7ec24', 'user', 15, 'ZdjcYBZrWOQQI2S+Gpf5LGiqBCFuF9nYBmRKQphEih8=', ''),
(46, 1432505106, 59, 'fcc68880', 'c9c6137e809ce66cdacbc4d49aa9955e', 'user', 15, 'Z055sKfaWfMHzX7sfLiADYwHwxeBVhw24BA1YSnoYLU=', ''),
(47, 1432505143, 59, 'ca257bbd', '0ca789615c15a182f269c6a13688d4a4', 'user', 15, 'E9kYO3jLQ7qJQOW+M3w07ui2VUpEVg6ObhRwPBepkxo=', ''),
(48, 1432505175, 59, '1c07b8b0', 'b0b50ab7290608279baed8e654f2f6b6', 'user', 16, 'TdUnrPjZJgv5tvMNTTBv68xFsPtu0c19CsSuwBnqhYA=', ''),
(49, 1432505183, 59, 'a842488b', '558df0f4454b14cca8aa764bfad6e9a4', 'user', 16, 'idcK0ftvL4K1sQOiyfGb1W4PbGM8RQMOIeAFhnjens0=', ''),
(50, 1432505214, 59, '2f3e1f69', '17cf472cb7d1eb4fab8fd964f338debf', 'user', 16, 'AUuuNKXaffKHo+WwxTzf6EWoyN+52HuHg4svDx8Q3kc=', ''),
(51, 1432505231, 59, '0183f55b', '8dd69b6144f3e5f1f4b3fe0f0eb0f4b5', 'user', 16, 'omiSYBsr/FK5ROVP26uR48BYlr8tI96ouOqu3cKtUMg=', ''),
(52, 1432505248, 59, '6aa48065', '2479e7aa156e5f022e8a8de565990d53', 'user', 16, 'S7KznMq7zxdBtwbAcAYjjp4T5E7zcKwBjys6Fzik2R8=', ''),
(53, 1432505268, 59, '87e50e31', '8875bffe92a312e56a6f9ac62fed2ced', 'user', 16, 'iJQXo95YJeUMEWKsN4/DzLrG5VXAGYxpdpOAdu0X5BV7uoO9Sv0aArPpjpx12WjMnYohli7qi43OCi1yH+eDyg==', ''),
(54, 1432564392, 59, '4282e273', 'f5ea638755fad9c1b7d6e8b4cd6d6f45', 'user', 15, 'p+tXjp+sMYpDbznBL7CNNvuVCT/6Px/zIrlYG5Ol6z0=', ''),
(55, 1432564411, 59, 'ff78f3a7', 'de09985191ffd0a9d22f8f8b25552062', 'user', 15, 'aQtuDasxgzTZKGa14GoZOoF8pxkr+FN0xSjOOiqvrUc=', ''),
(56, 1432564525, 59, '962988fc', '84e0bc5b790ca17ed50dcec4bf618ef6', 'user', 15, 'pJV4fvfUxj82hTlcaCzMa8Giqr7ajjzd6VXxFtEAygo=', ''),
(57, 1432564570, 59, '13aa96ad', '2b891bf67d15614bdeb780efa4d69ec8', 'user', 16, 'zLTT+xhuzKmWZF8Xo+Ze/dD1C1swsU8Hd05lqIwIKyc=', ''),
(58, 1432564592, 59, 'd935b262', 'fe1aa62ef459a3b05911411eec0e0c2e', 'user', 15, 's6Mja/4IqJf1S+GE7WZFvN79gsNvUz6xPLLkSDro8cM=', ''),
(59, 1432564924, 59, 'b0f45b08', 'a419525da448fd61514c17a6144ffb41', 'user', 15, '5XZ9VUS2cUwbRQXxFenRnIeKFGsDgG2ntHobwYdIOHU=', ''),
(60, 1432564934, 59, '5e8e17b1', 'ed64f2668eb7f3703f4a1e9d6b7fcd7b', 'user', 15, 'pAwdBcNH9yf6yhCV84M+SnCpz6LQ3BP9LcnSFF+eFjo=', '');

-- --------------------------------------------------------

--
-- Structure de la table `messages_hashtag`
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
-- Structure de la table `messages_id`
--

CREATE TABLE IF NOT EXISTS `messages_id` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` char(40) NOT NULL,
  `private` int(1) NOT NULL,
  `type` char(10) NOT NULL,
  `name` text,
  `language` char(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `display`, `private`, `type`, `name`, `language`) VALUES
(58, 1432305657, '48cda1bd', '0aa208294d775325838e5b831c517058', 1, 'private', NULL, 'vi'),
(59, 1432312165, '83902e36', '3df6d135d89faf20eb64843acb778c70', 1, 'private', NULL, 'vi'),
(60, 1432316182, 'd245ddff', '8af0b58221503306efd2055da442796f', 1, 'private', NULL, 'vi');

-- --------------------------------------------------------

--
-- Structure de la table `messages_members`
--

CREATE TABLE IF NOT EXISTS `messages_members` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `regency` char(10) NOT NULL,
  `translate` char(4) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(92, 1432305657, 58, 'members', 'en', 'user', 15),
(93, 1432305657, 58, 'members', '0', 'user', 17),
(94, 1432312166, 59, 'members', 'en', 'user', 15),
(95, 1432312166, 59, 'members', '0', 'user', 16),
(96, 1432316182, 60, 'members', '0', 'user', 15),
(97, 1432316182, 60, 'members', '0', 'user', 18);

-- --------------------------------------------------------

--
-- Structure de la table `messages_typing`
--

CREATE TABLE IF NOT EXISTS `messages_typing` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `messages_views`
--

CREATE TABLE IF NOT EXISTS `messages_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages_views`
--

INSERT INTO `messages_views` (`id`, `time`, `tab`, `guy.type`, `guy.id`) VALUES
(1, 1432568064, 59, 'user', 15),
(2, 1432565478, 59, 'user', 16),
(3, 1432565399, 58, 'user', 15);

-- --------------------------------------------------------

--
-- Structure de la table `mood`
--

CREATE TABLE IF NOT EXISTS `mood` (
`id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `emoticon` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `mood`
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
-- Structure de la table `music_album`
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
-- Structure de la table `music_block`
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
-- Structure de la table `music_cache`
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
-- Structure de la table `music_info`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `music_replay`
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
-- Structure de la table `music_reviewlater`
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
-- Structure de la table `music_views`
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
-- Structure de la table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
`id` int(11) NOT NULL,
  `code` text NOT NULL,
  `language` char(4) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `parameter`
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
(23, 'notifyPopup_info_places', 'en', '5000'),
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
(109, 'hash_feed_status_content', 'en', 'g::key::feed->status->content'),
(110, 'hash_user_password', 'en', 'g::key::user->password'),
(112, 'user_timezone.default', 'en', 'Asia/Saigon'),
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
(228, 'messages_views_timeout', 'en', '3000');

-- --------------------------------------------------------

--
-- Structure de la table `photos_block`
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
-- Structure de la table `photos_cache`
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `photos_faces`
--

CREATE TABLE IF NOT EXISTS `photos_faces` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `photos` varchar(40) NOT NULL,
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
-- Structure de la table `photos_info`
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 15, 'user', 15, 0, 1432051085, '5a532833', '8dae07ac97b8a31727c280491940b369', 'ef19c165.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'd3a4e4b4329bf19d4479cb6f841637cc.jpg', '48f2726ee4f9af0b5fddbcb515454b70.jpg', '25c7ba34f1914f110e0eccc586a06296.jpg', 'af157198f535b6368939cb90026c7da9.jpg', 'fa4694044b7b0446f637af53483aa7b6', '7e50192708e693bbde7e59795d5afd7c', '5482caf667fd514c0480c4876fe2ebf1', 'e5d3fe0eb62dee031368dd45650eafe7', '43e2b107', 'ed718a32', 'af410299', '08e11cab', 2158, 2877, 'f/2.8', '95/32', 0, 1432051080, 374785, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(2, 15, 'user', 15, 0, 1432051223, 'ef6b2125', '3f861d49e7661f4d2c0a3ccdcc6deff4', 'a79bc602.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '056d3f6acc796f8e24325f191abd7d13.jpg', '604d89ab4f516f2d63e7d2be01ef62f9.jpg', 'b8bd173658b6280a1f2e871cc7d02815.jpg', 'a4d5ce010273a5eb05fe9f2c80c36e5c.jpg', '850b159e4cd63b2ed57399d4297ca245', '4d4b904b148cc8d9e7920537c5628b0c', 'd36e266546fd4bdaf15f23799c51ada3', '2a39fa12731aaf09f6cb5ead6f3ed6d4', '9736054b', '3cb0e53e', '5ee65d09', '676f1ef3', 2158, 2877, 'f/2.8', '95/32', 0, 1432051203, 2431812, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(3, 15, 'user', 15, 0, 1432051278, '579b2df4', '8227a0dba7363a95a864e8f32423ee56', '13b39194.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'c480aaa6c1789c1d58f5716a9307a462.jpg', 'fd124848b9ced3ccc870753fcd8193bc.jpg', 'a912c19acb7956f0acda023e2a1c7dc0.jpg', 'bb2160dc69bdb6fa758995e743b5c56e.jpg', '939e0dd4cb98489285099851cd0b6f6d', 'a09686187a6120f3147c8b5724480ef2', '28eefabd91da4a290ca17f74f7721261', 'c8bf4c239e573c38bc5b6ec20b69f084', '1aaf46de', '5f67b421', 'dc4833e4', 'f8ccbd26', 2158, 2877, 'f/2.8', '95/32', 0, 1432051272, 1815494, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(4, 15, 'user', 15, 0, 1432051327, '11c05bf8', '8461f4cd13d76e67975b3e7d80233363', '7958b533.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '640ba19fffd5649e345db867e1806d54.jpg', '8e521ac71a6bc22a620c3e8fac73421c.jpg', '699c86831f61c608553eda848ab1b55e.jpg', 'bf83b5e86c8d782f6134032dde7564c4.jpg', 'b5709c3e1f471436aca52e672cd0bdb2', 'e4d89fd5717422c3f37cc2dec8f86acf', 'b68edade64b8b79f36adbf308262a173', 'e6f92563995501a1dceeefc95d15f073', '7006d245', 'ed74506c', '6b274276', 'f3aa9e8a', 2877, 3836, 'f/2.8', '95/32', 0, 1432051323, 3069106, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(5, 15, 'user', 15, 0, 1432051385, 'c4cf243a', 'b95a4868493df7e8301c12907476d222', 'ab042cbc.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '28cec18d8d29983042700733206cefb5.jpg', '9e799a999422bbfd2f304467b2f3d9ca.jpg', 'b17f6c7e6f202836dfa8ed6152acc513.jpg', 'dbdace3b92db1ac52439817aea8847fc.jpg', '37aaf7392ef7dae8f38ca81ea7771517', '043cf8e7cfac66e1737bbab2050dbe7b', '1c2e5a1fd55b6c7320a17445cd8b3173', '220dab04a8651882ab7b571d18f5202a', 'ac763230', 'f187ed84', '880aedb8', '95b952fd', 2302, 3069, 'f/2.8', '95/32', 0, 1432051379, 337577, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(6, 15, 'user', 15, 0, 1432051455, 'e7138165', 'cded99d4aa9c8477d33896d4581d435b', '08bcf1b3.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '536562be57f47c02d4c4674238475000.jpg', '2fd37689d52be0929c531bab0665ca0d.jpg', 'cd35f9e81fbd43d922311a2fe5e956c5.jpg', '98a59d8dd5c1a62d9126ac3182e27a40.jpg', '3701e94230b56a3573f981e5aa02a6eb', '54f25fc28b3d6e7196c2badfbefad578', '4e8dcf4d25bdc796cea8d3312fb56217', '3d8ecacf895d4f2932781b3700dea149', '349c3f1b', '6b70b215', 'f09f58ef', '7866a590', 2158, 2877, 'f/2.8', '95/32', 0, 1432051449, 267468, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(7, 15, 'user', 15, 0, 1432051647, '9b7892ed', 'fa153c36bd95e86938264cc2441f8ebe', '0fc27815.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'd280d752401863b5c3aa9225aa6fcb40.jpg', '24f45f0736e879b524cc2b577bb2fcd9.jpg', 'facf40e7ebbb8f73cc61cd6bd90e0382.jpg', 'f3abdebb7625ef95bcba34d5129584f9.jpg', 'fa4694044b7b0446f637af53483aa7b6', '7e50192708e693bbde7e59795d5afd7c', '5482caf667fd514c0480c4876fe2ebf1', 'e5d3fe0eb62dee031368dd45650eafe7', '696b4484', '91c23dbe', '944094d9', '1c6e6e83', 2158, 2877, 'f/2.8', '95/32', 0, 1432051633, 374785, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(8, 15, 'user', 15, 0, 1432051716, 'bb1775f5', '84387f56d3f1d021f20883f2743991d6', 'ccdf17e6.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'b345c95f59f312c8937bb8d0ef2681ee.jpg', '9bae6e81e460f98d118d04ff9815c68f.jpg', '6f8f331fbdaf4fcee3d236a3346ffaf5.jpg', '0cdfd42439902acd38e28941a8923157.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', 'bbd316a4', 'e7a93ec6', '13030303', '98ea37d3', 2158, 2877, 'f/2.8', '95/32', 0, 1432051698, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(9, 15, 'user', 15, 0, 1432051906, '94d43768', '9539786f77d0fc36a8b80f49cde7aae8', '21551e01.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '9a0bf5a528681c98fb5126e2e96d0327.jpg', '66778cbff093bb132c34cf6f04535954.jpg', 'f98cd7e173163961aacb26591277fef9.jpg', 'e5eff87f4aecab8216b9a14ef23dc18b.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', 'ea10423a', '1462d4fe', 'daeb99ae', 'cecc7caa', 2158, 2877, 'f/2.8', '95/32', 0, 1432051895, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(10, 15, 'user', 15, 0, 1432052165, '3209160c', '408d0dd2bbfc6b2e137b2f3dbc612739', '38160140.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'edc14b2625790df717b631fff2321c49.jpg', 'da9684d1f737bfddd7f3633c2beffbee.jpg', '68123b9b0e58c7adf664a9ce399a9027.jpg', 'b13fbafa084abd815f5bb3cbedabab7f.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', '822783cd', '24cc6310', 'db8e1d38', 'deb6d4d9', 2158, 2877, 'f/2.8', '95/32', 0, 1432052159, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(11, 15, 'user', 15, 0, 1432052377, 'd6fc0be9', '660b561cc5d4ecdbde52a927433a6547', '89c60f20.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '964703defd8baa1c285e23a0ae6d0601.jpg', '19d7e8bf26ad9ee5cc5fc0c0c1b5ff69.jpg', 'f3c0986bd91334447ffdd662361d69be.jpg', '7540dd9de7ef63928177eabcef9edd71.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', 'c24c67ad', '589037fd', 'f492494b', '52b06e63', 2158, 2877, 'f/2.8', '95/32', 0, 1432052365, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(12, 15, 'user', 15, 0, 1432052430, '5b2220bf', '2b536c59bd4b299edab1822c5996fd1e', '1c2a50b2.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '27260f79ff66ebc1a2c44dea670e2b4b.jpg', '0e60048c363bf3747a4de01674f05ac8.jpg', 'c3c05d6c16cb075e5e0bc2b9474cf696.jpg', '307395a2e84b5edbe21f705790583133.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', 'eefd1d68', 'f534a2d9', 'd92971c4', 'ca727853', 2158, 2877, 'f/2.8', '95/32', 0, 1432052425, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(13, 15, 'user', 15, 0, 1432052517, 'b309e341', '6f5dd51868492e9227d1b8a23b226d05', '6005121b.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'eba8fd2f6c535333e68bc9325502f253.jpg', '9601a2f93871f8d1145da946023a9c8f.jpg', 'c5597a83c0eac505986cda1d53243247.jpg', '45e011b79930663c929b198d71791825.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', '6c486bfc', 'e2b89e30', '63a1b1e8', '196af27b', 2158, 2877, 'f/2.8', '95/32', 0, 1432052506, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(14, 15, 'user', 15, 0, 1432052597, 'b39aaa65', '43e2d6994d7401a4c09481369ddc8fa9', '5d63348e.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'b830d1589d6c84bd3eec407393d78461.jpg', '3a5494e0df8da894756b4cfe410d3373.jpg', 'aac36c791d2fc1cf65ca3bda5b2ab5e0.jpg', 'be0365323c9c06f8b08918488e2dcfa9.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', 'c52c9ad1', '69c9ab9b', '92127110', '0b789d6e', 2158, 2877, 'f/2.8', '95/32', 0, 1432052591, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(15, 15, 'user', 15, 0, 1432052854, '8ade564d', 'fcfcc54d53dd20af95ac5ce26b6c3e78', '7e4a239c.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '992d80912cc0673d3af8d4bc6ada208a.jpg', '08ede463642a275da191f3f9e8cf2237.jpg', '29c0ee0ef851ef45fd93775733f716be.jpg', '7c38d007c2eec7f4082b88621407b315.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', '365d7670', '4e5f8960', '260f5450', '3468b9ed', 2158, 2877, 'f/2.8', '95/32', 0, 1432052848, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(16, 15, 'user', 15, 0, 1432052901, 'f9d94fe8', '3faf388aa74f3bdfee9153ea6b60635f', '4c0e0f6d.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, 'fbfa95cf0810d9692ccecb9c6b9f344a.jpg', 'a28f468a880a889ee8b74d32a4bd6739.jpg', 'b5f500d7ec60554fd6d8396578175f35.jpg', '4277873f822812a9bf8aae49a0cf4df8.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', '06760413', '3784ac10', '46e90382', '13e984bb', 2158, 2877, 'f/2.8', '95/32', 0, 1432052894, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(17, 15, 'user', 15, 0, 1432053047, '3b66e383', 'd7ad12111e2793d2606cf27f8069845a', '575454b0.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '3f3f9f7ec0048d223a32a43f7fe230d0.jpg', '90ad94aeb507beeb04be573c489c18a0.jpg', '4a4084dc05dbfe342d0774869b2d427b.jpg', '72a9cb611124aeb679fed9f5e4d3a1bb.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', 'b9d3c1ac', 'd35ecabb', '9381a1e2', '031d59d0', 2158, 2877, 'f/2.8', '95/32', 0, 1432053040, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(18, 15, 'user', 15, 0, 1432053216, '92b881ef', 'f5cc7179c8c990ffa89882109d2d5b7e', 'a9005d29.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '6209a49c7add597cf676ceebf78abc15.jpg', 'a9a172c91be43af146927dfea83bd0af.jpg', '7b9aae6ea3618caf9a5013079c5413f8.jpg', '', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '', '4d458318', 'c4333210', '28b2aa55', '', 2158, 2877, 'f/2.8', '95/32', 0, 1432053203, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608'),
(19, 15, 'user', 15, 0, 1432053292, '0c28cdfc', 'aad0a2088d3b38d70c1cf274dc87fe31', '446e3fb9.jpg', '11322255806_7110cfb945_o.jpg', '', '', 0, 0, 4, 4, 4, '1dffdac4bde5144721faa02b878eeacc.jpg', 'e7fddc554589267dd8ed115560882ce1.jpg', 'd8168aa226321ea7a024f24c8bed70c7.jpg', '921ac8f8f177b1bc2386a132399bb44e.jpg', '1d578845874dd88c35a387ed8867d6cf', '10f5a81ff43a38af552e5df53935db8e', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '7e79dd4f6123fc3047580388565f24fc', '06ac338e', '12140afb', '4c374905', 'c617f8c9', 2158, 2877, 'f/2.8', '95/32', 0, 1432053287, 382739, 2, '0', 16, '5000/1000', 100, 'Canon', 'Canon PowerShot A810', 5, 'image/jpeg', 'Adobe Photoshop CS6 (Windows)', '0', '1/200', 0, '0/3', '28/10', 2, '245/32', '4608/4608');

-- --------------------------------------------------------

--
-- Structure de la table `photos_scrapbook`
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
-- Structure de la table `photos_tips`
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
-- Structure de la table `photos_views`
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
-- Structure de la table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` char(128) NOT NULL,
  `time` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `token` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sessions`
--

INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('CbMVH87WkkHIKRfvQfSndNDokcg4HxnwzUcVLFAN3d8', 1432571022, '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', '575c821d');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('q3rLYwrFkkWkekhaapkUWj6YBMw8M5H7CzKTXw8CR,6', 1432570557, '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', '33000309');

-- --------------------------------------------------------

--
-- Structure de la table `sites_author`
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
-- Structure de la table `sites_id`
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
-- Structure de la table `sites_info`
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
-- Structure de la table `sites_secure`
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
-- Structure de la table `sites_views`
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
-- Structure de la table `status`
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '353fe9fa', 'f836fa1e87b0184a214fa6a8cd4b6f95', 1432214173, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'U9Q+PeiY8DCd8qrZc8BP6FAGs29JeA8z4SjaD6ocveA=', 0, 0, 0, 0, 0, 0),
(3, '7dfeebdd', 'ea182ff65340ee2d9fea22718d0d8169', 1432488695, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'VW1ztHFiZ0zSHVfu9qr7UbGYsZiXUwGBpL9SGarpSbMX2hxi1h+wWpkSvFXs8GTClFoT/iy7zvUKKDpftC7weA==', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `status_block`
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
-- Structure de la table `status_cited`
--

CREATE TABLE IF NOT EXISTS `status_cited` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `cited.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `status_comment`
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(1, '96cde9e8', '182f3e4bbd3c0d1aebe5f697a78dee68', 1432214181, 'status', 1, 15, 'user', 15, 0, 'BTnNRmBjgYgqjJJTLKTND1YsaK3zZUUxC9VAIyKtjog=', '');

-- --------------------------------------------------------

--
-- Structure de la table `status_comment_favorite`
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
-- Structure de la table `status_edit`
--

CREATE TABLE IF NOT EXISTS `status_edit` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `status_favorite`
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
-- Structure de la table `status_follow`
--

CREATE TABLE IF NOT EXISTS `status_follow` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1432214173, 1, 'user', 15),
(3, 1432488695, 3, 'user', 15);

-- --------------------------------------------------------

--
-- Structure de la table `status_hashtag`
--

CREATE TABLE IF NOT EXISTS `status_hashtag` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `status_invite`
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
-- Structure de la table `status_link`
--

CREATE TABLE IF NOT EXISTS `status_link` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `status_mood`
--

CREATE TABLE IF NOT EXISTS `status_mood` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `status_music`
--

CREATE TABLE IF NOT EXISTS `status_music` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `music.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `status_photos`
--

CREATE TABLE IF NOT EXISTS `status_photos` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `status_places`
--

CREATE TABLE IF NOT EXISTS `status_places` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `status_share`
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
-- Structure de la table `status_usertag`
--

CREATE TABLE IF NOT EXISTS `status_usertag` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `status_videos`
--

CREATE TABLE IF NOT EXISTS `status_videos` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `storage_audio`
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
-- Structure de la table `storage_cache_image`
--

CREATE TABLE IF NOT EXISTS `storage_cache_image` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `storage_image`
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `icc`, `mime`, `display`, `name`, `status`, `size`) VALUES
(9, 'faces', 9, 1431790463, 'ba6f3f1a', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'PZWCCetxSf04UoRms5xlbnJjSEYp6cOQ3Ctlq7QKhwG+n1q1T/jpo1vz7EtfCBd0FwVgxv+KkNpoB2XugqNZdQ==', 'D9mueBASvQgzSGibH9kuRvDd/6VUeIjlXbKnj0lD18TdbKoCJYtlRM4lPpq2o8gHNW2i2Ac0JgwovZDEw9cl0g==', 'image/jpeg', 'd77e899e', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790463, 62556),
(10, 'faces', 5, 1431790468, 'dd590aa5', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'bpkJJOg/erE8N3ugxWRz7cmzPcvYbV2CZ1XFi1VYtPxBVNn/AZnR3NrXO5nP9k+f2A5xrekMj6DpyHT+c0QDnQ==', 'ebPuMyoniTAO+bE+1fnn6yNxXSF2ffx1ojZKQ7FmHEXCgeaBbBMfEfVcZRm//Jswf6AajjfK3vNboPvT2+Rd9g==', 'image/jpeg', '8995d578', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790468, 62556),
(11, 'faces', 5, 1431790473, '814a4af7', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'f1EIvvLHnV2kM/OM6XugP7EgZF4eRRkMDw5gYlC44T33OeSZqg3KmwUDp2np0PxnWOl35iNhzfArN9yACvBfIg==', 'Qp9JVRsxKcSncyJNhUpkX9Ge3U1EoLo7+5R7pewPTCEGyY6+KNnW6tj6WF8s2Uh7kx7VHyTKadhihJbf7acy0A==', 'image/jpeg', '5bf0774c', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790473, 62556),
(12, 'faces', 9, 1431790478, 'c426bf21', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'Vd6C9T0/vxAXvaf3tKLJIrQUH7Wu60PAfkUivrPDQ+dVaZHLgyvE4btBfWg9G5O38LF/GM4NXacw/idd4V1r1w==', 'nsG5jBCxmhUBFawH6HdlirSzZeTeHiZfSGwyNZZiPImpTLmOIK8EU30X2q/GSFvze3NGGfX4+RAqWcd//w2z4Q==', 'image/jpeg', 'fd92b7d8', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790478, 62556),
(13, 'faces', 3, 1431790483, '2c71a6c3', '', 'daa6c7bd67ed51090f3f27d4960266aa', '0AKruSRcQ7NZJE+bM27GsERCuhDrChEhANwjcjKcgwx+Wzkj02n4x2sMBie7qsXqBaz9AvZZSgf5Ob12qjeK5g==', 'ehw4Nd32v8viXs/sZhOZ4ZkhComv9k2FeLmmzAVSgs849mE90V6sjgbAERCrg0Jhk4gYGRNw5JVbKuwhP+DVOg==', 'image/jpeg', 'e4038007', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790483, 62556),
(15, 'faces', 4, 1431790688, '7ebc2e32', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'wd7/6oILGjdn/4JsZutEZbtPMHzhJ3dLUMUUNYAQtPilkd8wb/PtZVPS/Yh/jirqnGZLh7rIDfOxY7RNq2dYiw==', 'XzsaRgS83Bde4USXfC5zyrL1l5T1aCdZ/Q2tD8y3moeysRHZKvdOUCLhitYJk8vJybIN2ao/OQJRDGqqVnGRYA==', 'image/jpeg', '7c0675ed', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790688, 62556),
(16, 'faces', 8, 1431790692, 'ed77d8fd', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'LlKZmthsGJu2JZ56rFJAdcMj1498LLVsr42EHKAu0PjPeV3AIuIqZmQpSTDeuyma9hOWgjRugKMILELHwf9MqA==', '6pfWpFoD7sUBYdoDyx774jh7NDhfVHLw8JmBSYTltEQ0glp07m8EQdTpD+g0HRC2cWtjo2HilX5A7FOGOb7yVA==', 'image/jpeg', '1a00f493', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790692, 62556),
(17, 'faces', 2, 1431790696, '555c807e', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'uJCI7y4fzVTtjYjSH70MFlZn7BT28hDOXD4Go75cmLU+i9IVFyt9Zj7D4hWZobF3mUh2yWrByPJHWfCWA+qHLQ==', 'uc0Blg6SpBcV7eQxKStBiALftnLhGfKa87EecxcWy3oZQzt52/00c2e6MybJUDQbOIcnjsaM9MxsDXkdDClX4A==', 'image/jpeg', '73d7cf04', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790696, 62556),
(18, 'faces', 1, 1431790699, 'e200ff86', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'KiQljdzVbMJjKeUOCdyFjgy6XDboGgVPuLHydR/+Hjw9l61Mzafj/UejZp4la1JV1/JPcM6CR8FMAhRw3Es1HA==', 'GUS9bqPbOq3do06QjipJMNalAbzTp5XezqDFPsX8+iJCcN3P2LUclPMxz2us6q92yl+smV4hR8kygYTWCM9r8Q==', 'image/jpeg', '13bf366e', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790699, 62556),
(19, 'faces', 4, 1431790703, 'a97945d9', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'oeRgpZ+l//MJiQti+S70O5V135rn1pESwkHA1EATgB6CgOs1uxk0b+YqCezoXjw1loOWKyzdhHXQEPW7CiBQPw==', 'jpkePeWHCa/MFiKguY9szOO+hX1VKoOi5ytuyfSNj6Hwgjl/xfCxVpY7CmeFarf9r/sblfE57M82TTH+7kWUFQ==', 'image/jpeg', 'b5f16dba', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790703, 62556),
(24, 'faces', 3, 1431790755, 'f3222bd5', '', 'daa6c7bd67ed51090f3f27d4960266aa', 'raE1QOE54fI0KrhowaKlvY/9rSuvNcZVByLsvLq/wpBkZwJ6dZ3EMPLX4GZXD3mt8nCPZanh6vDDiFi7D5wjbw==', 'Ia5iDB6apJ0UFXZ652CeGc4LBteXbUnKGbvhwhBlBoctHAj6t7thBcC90yxU5NL5YHv7WY+xsxSiRofoiyfGCQ==', 'image/jpeg', '249761a7', '3027252_Tinhte.vn_Game_One-1.jpg', 1431790755, 62556),
(32, 'drive', 1, 1432051075, 'd06fe42b', '', '94468469a47333bc6f05a4e926a1b68c', 'hDJIhT79eVQpT6wy3O5uHSP+On5bgstW6EZgdYx0dlzSioF82ZC5SCxCB2JTR2DrfTtE9CnzToz2jns3NVrkoA==', NULL, 'image/jpeg', '76df718f', '11322255806_7110cfb945_o.jpg', 1432051075, 3778260),
(33, 'drive', 1, 1432051081, '461ecde6', '', 'fa4694044b7b0446f637af53483aa7b6', 'zxs80WZMOmihv7Y6XYyNJ/qDN6utkGDTM6aqLv7WphFPOTFTM0X1gHZItOxYe/XrPfphEyxL42G9senLaehvCQ==', NULL, 'image/jpeg', '43e2b107', '11322255806_7110cfb945_o.jpg', 1432051081, 374785),
(34, 'drive', 1, 1432051084, '3f8fea2f', '', '7e50192708e693bbde7e59795d5afd7c', 'sBqV1tEF00p1gXHcX09HEZMlCh2RsA0zpaWWXEEEUfrecbGmuUnfA1ttCFpq6iSZdSY0WVPX30Fr1970bdPrQg==', NULL, 'image/jpeg', 'ed718a32', '11322255806_7110cfb945_o.jpg', 1432051084, 374785),
(35, 'drive', 1, 1432051085, 'b5ed67b0', '', '5482caf667fd514c0480c4876fe2ebf1', 't27Kpnuwy1+ZpCvnlXEgvSh8OSKq9wsgp/cn51Paz38HfGepw9BiX80hfBzxOgJzyQxOmpAiQIieAK2YzeZOKQ==', NULL, 'image/jpeg', 'af410299', '11322255806_7110cfb945_o.jpg', 1432051085, 374785),
(36, 'drive', 1, 1432051085, 'd1e343b4', '', 'e5d3fe0eb62dee031368dd45650eafe7', 'AgCayvf4Oj5Sl+grZJnWaycmCjgeJ7NLiXNqEWnFqJ9tBEEIP63dDkhcEP+oX+gK0faCsQJL1HtRUv/zW6Q8mw==', NULL, 'image/jpeg', '08e11cab', '11322255806_7110cfb945_o.jpg', 1432051085, 374785),
(37, 'drive', 1, 1432051197, 'ba980e10', '', '94468469a47333bc6f05a4e926a1b68c', 'mglfbWlR5rnncTnGkwTyE6PhkUWHwPqDXeWCJMI7jgCDt9RiAhjxHxMlRNYEILRaLTEBzpIwzyc8F1hRNXmzMQ==', NULL, 'image/jpeg', 'e580466e', '11322255806_7110cfb945_o.jpg', 1432051197, 3778260),
(38, 'drive', 1, 1432051218, '81e63b1f', '', '850b159e4cd63b2ed57399d4297ca245', 't7O3jOvbG7WfbdGB5qYPAmVXolVXieBoTV5tLQn6Xqdcr/sw0YcGP9vrPtCdrtDotWjqi7zluFNz2xsPlNkYMg==', NULL, 'image/jpeg', '9736054b', '11322255806_7110cfb945_o.jpg', 1432051218, 2431812),
(39, 'drive', 1, 1432051221, '8b54b23b', '', '4d4b904b148cc8d9e7920537c5628b0c', 'SDk8mOkyGHkxq8GKDgmKvgahKQh6rwh/CX4H9Vjc6WTyOFawhfMKQLU2I4AC/1tWsS7ArbAcXODisql4I8mGsQ==', NULL, 'image/jpeg', '3cb0e53e', '11322255806_7110cfb945_o.jpg', 1432051221, 2431812),
(40, 'drive', 1, 1432051222, '52255750', '', 'd36e266546fd4bdaf15f23799c51ada3', '4sZKQu4hX/bhJ3EytGNs4WgtDwBnsXw3SWDTREC/+H8zhfHUwotPJ3TYhQwfw+v0Pc3UAyqUR0kr6h+Bmc7Mvg==', NULL, 'image/jpeg', '5ee65d09', '11322255806_7110cfb945_o.jpg', 1432051222, 2431812),
(41, 'drive', 1, 1432051223, '4d4e425b', '', '2a39fa12731aaf09f6cb5ead6f3ed6d4', 'husjggquvpKZVh6OtS9qkEpbk0zl5SclVt34MnNlh6a1QYIOb/BSlcme9u4nEg6mLNaTYpdBRxjxl9S1XiPwZg==', NULL, 'image/jpeg', '676f1ef3', '11322255806_7110cfb945_o.jpg', 1432051223, 2431812),
(42, 'drive', 1, 1432051269, '42418fd4', '', '94468469a47333bc6f05a4e926a1b68c', 'RMDtKkUKjLX/jS+xD8I/3KII3Utj/sERWrF1XdsI8urHs6EuS6l9T/Jl5iWSB6vOQ7bgdXTj2zoODJQXmiCd+Q==', NULL, 'image/jpeg', 'd7ddf98b', '11322255806_7110cfb945_o.jpg', 1432051269, 3778260),
(43, 'drive', 1, 1432051276, '821ba2f7', '', '939e0dd4cb98489285099851cd0b6f6d', '8iT/DR7ekjSWKWkgZF0sRwX9eRdmAuqJ/ADu99TufLgimp/cRXq08OVACxCs4lO4MZePyBO55lcbYLNzmrIHyQ==', NULL, 'image/jpeg', '1aaf46de', '11322255806_7110cfb945_o.jpg', 1432051276, 1815494),
(44, 'drive', 1, 1432051277, '43646c29', '', 'a09686187a6120f3147c8b5724480ef2', 'bvwgyyu1YxrhSV05gZZ9vZpMt9IUThKw8B7K3Tr7XyciPXSbHWVnKja71+8fUc2sfYJNHgRN7i2DNN8R/TIIhQ==', NULL, 'image/jpeg', '5f67b421', '11322255806_7110cfb945_o.jpg', 1432051277, 1815494),
(45, 'drive', 1, 1432051278, '6cde1437', '', '28eefabd91da4a290ca17f74f7721261', 'Y3vsp8zg2SguAODDLXMPvJWRbjGvVWPgwJUoe2m5J3lRRV+ZLmRLOrVJtMogGsQzVEK+2SHcw5CUz7d2/7BOKw==', NULL, 'image/jpeg', 'dc4833e4', '11322255806_7110cfb945_o.jpg', 1432051278, 1815494),
(46, 'drive', 1, 1432051278, 'cebd1f39', '', 'c8bf4c239e573c38bc5b6ec20b69f084', 'ye6aSbYGyxwTmu4Hlvi57VmXeumSWJGoRDe5WYDNHGzKAzZT93TXNsZEojK9qhz7yIUbiImgKBTOlts2ZmSUzA==', NULL, 'image/jpeg', 'f8ccbd26', '11322255806_7110cfb945_o.jpg', 1432051278, 1815494),
(47, 'drive', 1, 1432051320, '91894608', '', '94468469a47333bc6f05a4e926a1b68c', 'UndiHyzasikqVeQTAzVEmoGAAvVsC8cads5g5aaXF0847OuQu72RNM6HKNsZqmJ7k0/QNwkgzeajdCVoquc2Ew==', NULL, 'image/jpeg', '8423e384', '11322255806_7110cfb945_o.jpg', 1432051320, 3778260),
(48, 'drive', 1, 1432051325, 'e58f6967', '', 'b5709c3e1f471436aca52e672cd0bdb2', 'Hez9tHZEOjWhnHc7Tf5oLVXdKO3U38PLJCWXx5OatXSQkua+18QR9xG4HeWHn7rKK74DcpIkIGkLLTz2tRYm4A==', NULL, 'image/jpeg', '7006d245', '11322255806_7110cfb945_o.jpg', 1432051325, 3069106),
(49, 'drive', 1, 1432051327, 'f31c4cad', '', 'e4d89fd5717422c3f37cc2dec8f86acf', 'sRMRnTOq+73TGwi4BETChTPZzlqvjpAfv087EDG/z9fRFP3PMhzEcSzgh/fBxtxUbh7M8CsOoHKRcCxMtwEAPw==', NULL, 'image/jpeg', 'ed74506c', '11322255806_7110cfb945_o.jpg', 1432051327, 3069106),
(50, 'drive', 1, 1432051327, '6485dbfe', '', 'b68edade64b8b79f36adbf308262a173', 'uMH+qukBny1XnQuhBdfkaqE1ZzpmiLpBLokPteDEH4xYOe3ZAM1gcvpGH3E9tW0dYZdWoT8u7l1c3jvb4BmNGQ==', NULL, 'image/jpeg', '6b274276', '11322255806_7110cfb945_o.jpg', 1432051327, 3069106),
(51, 'drive', 1, 1432051327, '3402d2ca', '', 'e6f92563995501a1dceeefc95d15f073', '2GSt6aDqUveNe9faw8Id2ilufe9g9vCa3gOOvsG0I62gt7XJZJ2szmWn53qCVMvk0PTmiKuvHXXWTzuNi3cyNg==', NULL, 'image/jpeg', 'f3aa9e8a', '11322255806_7110cfb945_o.jpg', 1432051327, 3069106),
(52, 'drive', 1, 1432051374, '3115d97f', '', '94468469a47333bc6f05a4e926a1b68c', '73tfACF2boPV7hR/LrO8ihMAAPINwrgsUo/LMnRrdcZrNzNipTZR1RmkxmSSxlTbi7ffuG69Xn13WcKTEsTzjw==', NULL, 'image/jpeg', '3f4e461a', '11322255806_7110cfb945_o.jpg', 1432051374, 3778260),
(53, 'drive', 1, 1432051381, '6cd1a372', '', '37aaf7392ef7dae8f38ca81ea7771517', 'dXPhhetZ78dmhcPMVUOFwAenlHE7ZzepeYCpTGDh//6nw+daA5C91hqYKgffGXLZBYiLEpv+gEntoUGNvIz6BQ==', NULL, 'image/jpeg', 'ac763230', '11322255806_7110cfb945_o.jpg', 1432051381, 337577),
(54, 'drive', 1, 1432051384, 'ab89b81a', '', '043cf8e7cfac66e1737bbab2050dbe7b', 'mcPwA76OT86RbhRWMJ+uAIzu0iEKu3Ei9RySAH0rAj2+hYntJxKy3Tnv6JzwvxtuZpGgMRKoTtmFpHod+egnpQ==', NULL, 'image/jpeg', 'f187ed84', '11322255806_7110cfb945_o.jpg', 1432051384, 337577),
(55, 'drive', 1, 1432051385, '8be7412a', '', '1c2e5a1fd55b6c7320a17445cd8b3173', '0cinngZyR6iY2aalkfOH6cX4QesedopHCA9h4ma5Ej/oKyPKdfWJJwGWfoReoI6vHj0MJ0LXWJIEruSx2d3GBA==', NULL, 'image/jpeg', '880aedb8', '11322255806_7110cfb945_o.jpg', 1432051385, 337577),
(56, 'drive', 1, 1432051385, '060d9ade', '', '220dab04a8651882ab7b571d18f5202a', 'HCpHCzdgpEuHk1hRroyI1SXv4QDANbExtOSvsEUY5ID8Ol8Rk2SfJ/AHcNPDXoFfsgWNcYWB5KxBvSDBw6BgBQ==', NULL, 'image/jpeg', '95b952fd', '11322255806_7110cfb945_o.jpg', 1432051385, 337577),
(57, 'drive', 1, 1432051443, 'edea8d63', '', '94468469a47333bc6f05a4e926a1b68c', 'abTlDdEqzT0xHeUYBYY8QqtdwTrnYutPLAk0S7s29FW4ci88ygxun1aFKY0jteCV+/I32ocqL7+1ehjWycXV4g==', NULL, 'image/jpeg', '94d84f02', '11322255806_7110cfb945_o.jpg', 1432051443, 3778260),
(58, 'drive', 1, 1432051451, '17e1eb2c', '', '3701e94230b56a3573f981e5aa02a6eb', 'ZnLEuY/kxpjGcm1VlqxuPjlB7i2N0S6Hs89AvU1XPOE50SPsKpRJHVcn2pfZKi8PNN+hoZECKzoi8239cZ5F2A==', NULL, 'image/jpeg', '349c3f1b', '11322255806_7110cfb945_o.jpg', 1432051451, 267468),
(59, 'drive', 1, 1432051453, 'a7c001c5', '', '54f25fc28b3d6e7196c2badfbefad578', 'GTFozIwnz8E1vLhRj4jATy/vyUS0sm+G68+XzqB1wOn+qVOH7+/PoalpOEV4kZyoFQGD7M1nvRKHeZBnK7LJwA==', NULL, 'image/jpeg', '6b70b215', '11322255806_7110cfb945_o.jpg', 1432051453, 267468),
(60, 'drive', 1, 1432051454, 'ceddc34b', '', '4e8dcf4d25bdc796cea8d3312fb56217', 'NDxyDZDxXDZtS0+vha4hlhmTctJ4EH9+sewdCLI3uHdcs8pfEiCTP1IFRUyY+TEYEfIecfKM2OFfHZaOTHuUSA==', NULL, 'image/jpeg', 'f09f58ef', '11322255806_7110cfb945_o.jpg', 1432051454, 267468),
(61, 'drive', 1, 1432051455, '8628b8e3', '', '3d8ecacf895d4f2932781b3700dea149', 'CAPXy6FuMt3YqVIZ4j4eblI11RnUUGPhNNhc1E+B3n4EK8dQP66RKK9KHSYAiVD+kRSuM7cidF/mB5xSi063tg==', NULL, 'image/jpeg', '7866a590', '11322255806_7110cfb945_o.jpg', 1432051455, 267468),
(62, 'drive', 1, 1432051627, 'c7737812', '', '94468469a47333bc6f05a4e926a1b68c', 'Z1yBJZgp/WeB6OH554nfQedJtUplaWa1Kd6bYLhn6BimD9UXWasYrqp0UhLm0Uzru6G1C/MYvlxpWiWo58a9eA==', NULL, 'image/jpeg', '8c82bf8f', '11322255806_7110cfb945_o.jpg', 1432051627, 3778260),
(63, 'drive', 1, 1432051641, '403b2b2d', '', 'fa4694044b7b0446f637af53483aa7b6', '/x7A1Mp2v7CxhD4+PRtbiFpr7pJ63lWgQokVicYKSSzkKyq+To1qpcqAKJdK83zwC1+cVYNz/L+qoMRmLx1oFA==', NULL, 'image/jpeg', '696b4484', '11322255806_7110cfb945_o.jpg', 1432051641, 374785),
(64, 'drive', 1, 1432051645, 'a919112e', '', '7e50192708e693bbde7e59795d5afd7c', 'J7R7UB/wcu/eg5GJT5VJMCHD+sw/t5qpd6a1B0Wxd8f3gNgzmlxoKnTAIMB+selvREbNHyfXqyHUHoOtqEAzTg==', NULL, 'image/jpeg', '91c23dbe', '11322255806_7110cfb945_o.jpg', 1432051645, 148674),
(65, 'drive', 1, 1432051646, 'c53f6640', '', '5482caf667fd514c0480c4876fe2ebf1', 'BOfaPE6TKpJ1YtXJ9wscv1xV5z3IiJcplsjbxo/Lf5sytzLP5q5IGCubKuOB5UQzCQhL1G54xH2zwZjIQyER7w==', NULL, 'image/jpeg', '944094d9', '11322255806_7110cfb945_o.jpg', 1432051646, 69463),
(66, 'drive', 1, 1432051646, 'e62a58a6', '', 'e5d3fe0eb62dee031368dd45650eafe7', 'f8nez+llDFr4fecmenwIlsdXyoOEPRCg0Qgytf+tKvjiqIM8Q3r4MPxpBzQilHhhsRnkEXcnxZm33F8OdC5HHA==', NULL, 'image/jpeg', '1c6e6e83', '11322255806_7110cfb945_o.jpg', 1432051646, 38743),
(67, 'drive', 1, 1432051694, '3f9e36c8', '', '94468469a47333bc6f05a4e926a1b68c', 'KPuZeyhqf/ciO17OY+02hrkGip1k+8VZ+YlVTeQy2ruWjrakyH4zvCvcNRhRzB8Q1jEiGMc6BPAIZSCpnr6mZA==', NULL, 'image/jpeg', '839ee0bd', '11322255806_7110cfb945_o.jpg', 1432051694, 3778260),
(68, 'drive', 1, 1432051712, '29f17fb4', '', '1d578845874dd88c35a387ed8867d6cf', 'iVgSwC6c3WheNNdlVdjcHD4n8BDvFe8UuitIfsyM6QHd2kR832ZnJLrKsx3ayQtGBXIRrR8wqQD7sDZaGpir2Q==', NULL, 'image/jpeg', 'bbd316a4', '11322255806_7110cfb945_o.jpg', 1432051712, 382739),
(69, 'drive', 1, 1432051714, 'f9bfadd6', '', '10f5a81ff43a38af552e5df53935db8e', 'kDxd1esqPF0sS/IIbLtG9FkDlvcveMz0OHCngD8hx1IXF9IqeHc33jzcpjlOU566wt8M5go8lMGsOCRxeeeQlA==', NULL, 'image/jpeg', 'e7a93ec6', '11322255806_7110cfb945_o.jpg', 1432051714, 149067),
(70, 'drive', 1, 1432051715, 'bed03e0e', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '953Z2AuNhY9XS6XLLqlXwlCW0nioIbJb/LhpvRpz4jsSN8leDNtt9x4edGoJJD2Zxhq4PDWF6zQ9k4OuNZOOIw==', NULL, 'image/jpeg', '13030303', '11322255806_7110cfb945_o.jpg', 1432051715, 69417),
(71, 'drive', 1, 1432051715, '949e99f7', '', '7e79dd4f6123fc3047580388565f24fc', '3gpjBnkua4y5geOuLRwB26FAQ+usR7pTauaSUrFIlBy41gKJmxV+/zj1YSkefKZM6X75u3d8BW1sjgR1yq4AVg==', NULL, 'image/jpeg', '98ea37d3', '11322255806_7110cfb945_o.jpg', 1432051715, 38736),
(72, 'drive', 1, 1432051892, 'aba85175', '', '94468469a47333bc6f05a4e926a1b68c', 'HYKS1I0tF1NtosB0PR3hu7Vqytzy8wy99TgbbJzkEZyE4MzQsD6dqf/A/AB8JHOY4vWb6dnnzAAl3n2KZ7Zuiw==', NULL, 'image/jpeg', '1eb691d2', '11322255806_7110cfb945_o.jpg', 1432051892, 3778260),
(73, 'drive', 1, 1432051903, 'c7869e15', '', '1d578845874dd88c35a387ed8867d6cf', 'vUCO3sTuP8gwe3GcjLpmlmGTPzZyoeSiCk4+DyW2oqgwv2IOKaNJkngu7tduyXNAVOMXIrcm9usTp9/u4YB5eg==', NULL, 'image/jpeg', 'ea10423a', '11322255806_7110cfb945_o.jpg', 1432051903, 382739),
(74, 'drive', 1, 1432051905, '7637c283', '', '10f5a81ff43a38af552e5df53935db8e', 'DS+raT3aXrCKAVpAqMhk+ry4FQDES8ROx9Ct4Rvq72u0YKj7t7yXUmePjKhXSdaBL6aloM0GXSDh95QmDxtRNQ==', NULL, 'image/jpeg', '1462d4fe', '11322255806_7110cfb945_o.jpg', 1432051905, 149067),
(75, 'drive', 1, 1432051905, 'd61f1f9a', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'UzZ7zJ1irU8rO06KNNmJkiP2Tffw9oarQItAu8qyCuDYXp10liHkMivk28SV9PVl6iTm9lvW3BvkAyTvg4LpUA==', NULL, 'image/jpeg', 'daeb99ae', '11322255806_7110cfb945_o.jpg', 1432051905, 69417),
(76, 'drive', 1, 1432051906, '053c9b9b', '', '7e79dd4f6123fc3047580388565f24fc', 'naU2ludhNwBbRJLky8SyrQdrJupmNgWBixVuEBaLg9faUvXAqCGeP5S4wvzTwdTEb7pLhLYjWdrGn7Es+RhZfQ==', NULL, 'image/jpeg', 'cecc7caa', '11322255806_7110cfb945_o.jpg', 1432051906, 38736),
(78, 'drive', 1, 1432052155, '14a133e7', '', '94468469a47333bc6f05a4e926a1b68c', 'IXxoiurwJot+M2SSCoQ4gUC94BViZRskLUr1OoXPP3Btt3deljVW+oLpIdETEW7c3M5z5HUwqs0dFffmjN0qUw==', NULL, 'image/jpeg', '04d9bc27', '11322255806_7110cfb945_o.jpg', 1432052155, 3778260),
(79, 'drive', 1, 1432052160, 'dfa0d281', '', '1d578845874dd88c35a387ed8867d6cf', '0jGamll8xKK0njGAh3aDQcBcqbDFr9H5VlIPKhYPFRPYaqlFlZZMQXmdRA9KHjjilvEASa08LseTkwJ2voE57A==', NULL, 'image/jpeg', '822783cd', '11322255806_7110cfb945_o.jpg', 1432052160, 382739),
(80, 'drive', 1, 1432052163, '4963b3a5', '', '10f5a81ff43a38af552e5df53935db8e', 'jVpJwc0Yl+Ck9qjWwTiDbhOptt9Th346f5cgCgUDWR4einhRhhdde8rmLj8te0Oor7lzk6x1z0Sb1PvK3PMZgA==', NULL, 'image/jpeg', '24cc6310', '11322255806_7110cfb945_o.jpg', 1432052163, 149067),
(81, 'drive', 1, 1432052164, 'a57e3601', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'QJBGZm7k1bvdylKrLt/Jp3RXAyralQQ3gxZLZ5HysG4bugvruU8H4iqFUq91GJPNmZPp2SLCMaaU2iSxjuGnsg==', NULL, 'image/jpeg', 'db8e1d38', '11322255806_7110cfb945_o.jpg', 1432052164, 69417),
(82, 'drive', 1, 1432052164, '7e913199', '', '7e79dd4f6123fc3047580388565f24fc', 'vY3vb0HA30QqC6Rcdk2fgYUbfeKduPSiGdNAflAg+pPnOtdRBWaia5HU8Jgi7TDWcSNrCoWouBnhjJ44aMl7xQ==', NULL, 'image/jpeg', 'deb6d4d9', '11322255806_7110cfb945_o.jpg', 1432052164, 38736),
(83, 'drive', 1, 1432052362, 'b7bdc117', '', '94468469a47333bc6f05a4e926a1b68c', 'tnkDq0unVYyREXDpAOANd0X4Lgt/8kc0bVMTfJP9opbmWDoqkCxSFCVnDCqdaqTYrQGR2U7P2256TOxQmyfKPw==', NULL, 'image/jpeg', '3acb83f9', '11322255806_7110cfb945_o.jpg', 1432052362, 3778260),
(84, 'drive', 1, 1432052373, 'd65ad77d', '', '1d578845874dd88c35a387ed8867d6cf', 'f6Aa66/Gi5ju4BKr0+rpykcyuXr1Ika08sFWErtMj/WrfeZ9RxhwdMlLOdfKP8HgYgsLWIM6x+AExxrwxphXEw==', NULL, 'image/jpeg', 'c24c67ad', '11322255806_7110cfb945_o.jpg', 1432052373, 382739),
(85, 'drive', 1, 1432052376, '790dcf00', '', '10f5a81ff43a38af552e5df53935db8e', 'Sy2yvFzHy6dBEnMxScPXnFc7/4GRx9RWeinGWvaH9AMXQK0rCo38vro0FvW+h8G33cr6JokSmJsk1xb0N0Qiyg==', NULL, 'image/jpeg', '589037fd', '11322255806_7110cfb945_o.jpg', 1432052376, 382739),
(86, 'drive', 1, 1432052377, 'f8559301', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'oMuH3hpyBBm6yalpVEO+M3uQ1OTKqqZ9eJxo6p2mgAzRhTsZae9rDgNCBstQn0c1IfFqj/6jnUc+l4AT23+Ryg==', NULL, 'image/jpeg', 'f492494b', '11322255806_7110cfb945_o.jpg', 1432052377, 382739),
(87, 'drive', 1, 1432052377, '6386bf9f', '', '7e79dd4f6123fc3047580388565f24fc', 'ECtLSbvy+ehlAnsn4T2ZUJ4Ka5zGg3FQ2Yu4Txtn4hScjQ9RSfNOXUpWsNPKXK0iLi3Phm9cr4k2xegNLSgEUg==', NULL, 'image/jpeg', '52b06e63', '11322255806_7110cfb945_o.jpg', 1432052377, 382739),
(88, 'drive', 1, 1432052422, '1542843b', '', '94468469a47333bc6f05a4e926a1b68c', 'Ur2L+an3DiD0xf2Ax5ZUsDr8QWpgZ8ird04rmlzkUihc1RTBHftf/oG+vtTrb7MFuiNAaAGUos3pkV0hW6Y6dg==', NULL, 'image/jpeg', 'fb1db5e5', '11322255806_7110cfb945_o.jpg', 1432052422, 3778260),
(89, 'drive', 1, 1432052427, 'f99acfdf', '', '1d578845874dd88c35a387ed8867d6cf', 'cijk0sXUASZJJs0yCFk61p+8cS1HDSGYXuzd+22/dIRDH5RMXKeTM0DZ25l8bp3M+lQO4EEGC4UT1JVyhhl6wQ==', NULL, 'image/jpeg', 'eefd1d68', '11322255806_7110cfb945_o.jpg', 1432052427, 382739),
(90, 'drive', 1, 1432052429, 'a33804e8', '', '10f5a81ff43a38af552e5df53935db8e', '66h+O2bpKUK8p7bA4fswy0Bxs2NHKqWPOv/JP1iO3Iu/FPyJ9M1M7+4S4/0fZNRdgbCaMabEf5mTk0KLDZ+Qgw==', NULL, 'image/jpeg', 'f534a2d9', '11322255806_7110cfb945_o.jpg', 1432052429, 382739),
(91, 'drive', 1, 1432052430, 'e074545a', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '3fa8sl2YkMIDCnWuwsoGxbe+hlIDFi/nVCTtjn25H3/SI33ShZlpZ3gtaF81GVD7SaU4Yi3/5zPln6h8JSuN6Q==', NULL, 'image/jpeg', 'd92971c4', '11322255806_7110cfb945_o.jpg', 1432052430, 382739),
(92, 'drive', 1, 1432052430, '0ec83318', '', '7e79dd4f6123fc3047580388565f24fc', 'XvRWgek4ivrHsE4H1wPOL4+wihQcIdzNXBFNgP2Ds07PES0XHA5gYodlVTxbups8tg9p41cx6YjW58K0nTlwKA==', NULL, 'image/jpeg', 'ca727853', '11322255806_7110cfb945_o.jpg', 1432052430, 382739),
(93, 'drive', 1, 1432052503, '0eab610b', '', '94468469a47333bc6f05a4e926a1b68c', 'Xzxdz9FpumeWviBrZ0jxuOWkoPVw8lbU5Iqsk8vXceO3x/HZ1F/AnYkhQ4qaSLMcVfA36vBnaVBDWYSTNqnmqw==', NULL, 'image/jpeg', 'c59eee15', '11322255806_7110cfb945_o.jpg', 1432052503, 3778260),
(94, 'drive', 1, 1432052513, '4206b0b6', '', '1d578845874dd88c35a387ed8867d6cf', 'utUbwu61TbeA7tGoL5bbs9dDyjBVfnXODghIVRcfJkwM2r7kPFAUNJxlZt7/dPK6NWdzOo1JWgZ7h9U3KlsPkg==', NULL, 'image/jpeg', '6c486bfc', '11322255806_7110cfb945_o.jpg', 1432052513, 382739),
(95, 'drive', 1, 1432052515, 'e95f2f31', '', '10f5a81ff43a38af552e5df53935db8e', '3zHxxScvCe1JmJyoqFlMMhtBLWgAm399gF+6Y5g0q90RuCzzFDscG9Q47kPBmGEtFrXaXiGXxAnGxpB9ULAB2w==', NULL, 'image/jpeg', 'e2b89e30', '11322255806_7110cfb945_o.jpg', 1432052515, 149067),
(96, 'drive', 1, 1432052516, '6a173cc2', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'FgoqkSMdPZfGH7DPZ97K9m+lC4AGqkNkc4n5GQuo0RnT1PWCsWSb/FcxoSFXcX398wL0AlIw9lt6/c2s8n1IHg==', NULL, 'image/jpeg', '63a1b1e8', '11322255806_7110cfb945_o.jpg', 1432052516, 69417),
(97, 'drive', 1, 1432052516, '161ccb4f', '', '7e79dd4f6123fc3047580388565f24fc', 'r/HNkW3aVCmny8X4hqD77BZYKyCdVy6YE/BGRTe5K4zNDZud1ZR33/RUl4qQEQ+47VSCIMZYq/dBV2gZJPgmBg==', NULL, 'image/jpeg', '196af27b', '11322255806_7110cfb945_o.jpg', 1432052516, 38736),
(98, 'drive', 1, 1432052588, 'a7b4bac7', '', '94468469a47333bc6f05a4e926a1b68c', 'eHF7hIeKm2q0d8waWv5mmRLjd2fHixXtiT/5sIOBF/kT/isx1IHriSdKfcURHZWcMVL5eBxAKPJnAxIL3Fge7Q==', NULL, 'image/jpeg', '61b950d6', '11322255806_7110cfb945_o.jpg', 1432052588, 3778260),
(99, 'drive', 1, 1432052592, 'bfe277b0', '', '1d578845874dd88c35a387ed8867d6cf', 'h9Zy6vA0MK/cuwKA290svQrsrQq4/BzxcrxlE447/WzhMjtY3AtiyOZyQ0zV6vnTKy84KePXeI6LHpW8BuKTOA==', NULL, 'image/jpeg', 'c52c9ad1', '11322255806_7110cfb945_o.jpg', 1432052592, 382739),
(100, 'drive', 1, 1432052595, '889c29e7', '', '10f5a81ff43a38af552e5df53935db8e', 'vvGs8RISxso1tIoh/ukscCRi2x/6gRvDZTfrEVX1Y1yyz9jx4gW0vC2tRNdHCATVOlDBtice9xSPhkih5Jzg3A==', NULL, 'image/jpeg', '69c9ab9b', '11322255806_7110cfb945_o.jpg', 1432052595, 382739),
(101, 'drive', 1, 1432052596, '49ad910b', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'VhufU5khGuWdbzAtvyHPfwCLl+v4EzroghJIpoXFVDc73RoAN9vXpaap3/+T9ioBdmrapggMoTTe2ArXpnjPIA==', NULL, 'image/jpeg', '92127110', '11322255806_7110cfb945_o.jpg', 1432052596, 382739),
(102, 'drive', 1, 1432052597, '3729c9ff', '', '7e79dd4f6123fc3047580388565f24fc', 'RgqYMBEiZpx1jC2Ub+A06Ur4wVzvqWJD6YT6jmKdKd2VJbXi7y1X+e+bi4NkqBWISLVgT9jMXfBBkw0JLL3ttQ==', NULL, 'image/jpeg', '0b789d6e', '11322255806_7110cfb945_o.jpg', 1432052597, 382739),
(103, 'drive', 1, 1432052844, '342eb84a', '', '94468469a47333bc6f05a4e926a1b68c', 'LfdL6cJsE2LV4hDoH62TGmRw+KglDVboZu5ncEx06a+zLVkgmnPDUjleK11ENXoyDA21tIOMU6mfzrRSuLNU3Q==', NULL, 'image/jpeg', '8a467669', '11322255806_7110cfb945_o.jpg', 1432052845, 3778260),
(104, 'drive', 1, 1432052850, 'd5f48139', '', '1d578845874dd88c35a387ed8867d6cf', '0LAL9IjZ9MYGLBqABnccpab6TCsTIwNahDYh3N9/eMVI0Ll82FAXiGT3vW5J4r3uJzPTMQri4h4sczD9Dhw4Eg==', NULL, 'image/jpeg', '365d7670', '11322255806_7110cfb945_o.jpg', 1432052850, 382739),
(105, 'drive', 1, 1432052852, 'f3e38fad', '', '10f5a81ff43a38af552e5df53935db8e', 'iCgh72+9iqN2KHnwbsYqlNaBfNkowV17x1YTtP8OU12TP4dBKwQWLK4E+YzR2+bHf5nXd8nAmxJVi+k+luu/WA==', NULL, 'image/jpeg', '4e5f8960', '11322255806_7110cfb945_o.jpg', 1432052852, 149067),
(106, 'drive', 1, 1432052853, '1525942d', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '9Jz06ou4wF1wtMdpO8+dc9uo8SzOtcS1bnuXuTEMCd7RwKDsvo68IpJvRzV12YEpIV++9dzA4FJhotevbdvzdg==', NULL, 'image/jpeg', '260f5450', '11322255806_7110cfb945_o.jpg', 1432052853, 69417),
(107, 'drive', 1, 1432052854, 'bc8a75c3', '', '7e79dd4f6123fc3047580388565f24fc', '3WeIzGnr5dfKewsj7j9ugjlMB0iZG1Q930oHoQGH5RxiQS1Z7CtuqcwkzCZNdZ6hCEbsRSIb/qp+kiHbPfl79A==', NULL, 'image/jpeg', '3468b9ed', '11322255806_7110cfb945_o.jpg', 1432052854, 38736),
(108, 'drive', 1, 1432052890, 'db9188ae', '', '94468469a47333bc6f05a4e926a1b68c', '9HU7IzB9MLv1yqvrl8SWUDHittS8/Vha0/yuNqSGmhc9QLn32X6YG6GslyJlrn2FKV/q+UjIZkMww4s5z00pTg==', NULL, 'image/jpeg', '7cb32fce', '11322255806_7110cfb945_o.jpg', 1432052890, 3778260),
(109, 'drive', 1, 1432052896, '01453b53', '', '1d578845874dd88c35a387ed8867d6cf', 'FEBNE1AD7EJfBJsmHUszWRP9Q42tJYgrugdVCRfA/BQpHUYIb4gWrmBYRlsIR1bSupTMIUJKWzYdzvfkGpj06g==', NULL, 'image/jpeg', '06760413', '11322255806_7110cfb945_o.jpg', 1432052896, 382739),
(110, 'drive', 1, 1432052899, 'c391202f', '', '10f5a81ff43a38af552e5df53935db8e', 'nY6qd6gEorLoy8rguWfpHZysrtaaB60JkUfdvav4SrwX4wcz5mC/ZzVIv9nmlQwRrsXKjeu8JqPyAI9Nl7QWrw==', NULL, 'image/jpeg', '3784ac10', '11322255806_7110cfb945_o.jpg', 1432052899, 149067),
(111, 'drive', 1, 1432052900, '1443af02', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'hEhGMndUOldlX9aP7K7nWyhsWQR+jWIMnym8bl/4O1I/uPewxS3QBfzUKjSWcNrTXHsIweltlWP3ZH3bMDWe0w==', NULL, 'image/jpeg', '46e90382', '11322255806_7110cfb945_o.jpg', 1432052900, 69417),
(112, 'drive', 1, 1432052901, 'a04183b5', '', '7e79dd4f6123fc3047580388565f24fc', 'w9Zpi3R3hLA7xrIaaBsqMjrl1Yfr4ecphMSfbEV6TfnGK37Jr+AdGrD69vtSUhbz+kueU58nT4It0acOD0HNvg==', NULL, 'image/jpeg', '13e984bb', '11322255806_7110cfb945_o.jpg', 1432052901, 38736),
(113, 'drive', 1, 1432053037, '122f498b', '', '94468469a47333bc6f05a4e926a1b68c', '69v6WNRBamBPS5DQExT94zgUhr5T6+C+IuAfM8i0tagNtluTWZ8qdjOhGLp92hUkaUrKMKsgTFEIjAszu6fYHQ==', NULL, 'image/jpeg', 'd70b0f87', '11322255806_7110cfb945_o.jpg', 1432053037, 3778260),
(114, 'drive', 1, 1432053041, '9422ec53', '', '1d578845874dd88c35a387ed8867d6cf', 'O1noEAuesr7v3suO55GjOp6I5xw7dXACnhNfNkbfmca9D7RKpVi9KkVYGjER2dqXJH+43H9lUMA0a/bFls4k2g==', NULL, 'image/jpeg', 'b9d3c1ac', '11322255806_7110cfb945_o.jpg', 1432053041, 382739),
(115, 'drive', 1, 1432053045, 'a6ad09cd', '', '10f5a81ff43a38af552e5df53935db8e', 'I5HOxGHrX2BHuSBUNwC0SunjFL4aMcGedV/bVVmVUKAz2b7aLG/GVTvr8+nrdQmxO3DU+f4rHSiU1weixhwkXg==', NULL, 'image/jpeg', 'd35ecabb', '11322255806_7110cfb945_o.jpg', 1432053045, 149067),
(116, 'drive', 1, 1432053046, 'd9a7bc3d', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'EAdYLbrQkDRbCavZkaWpSqRzxn7ygSky3kpOpY+i11OvqwJLpQZIY0pLABFctajFo8PBbaFZ2EVZxRDiaZFR+w==', NULL, 'image/jpeg', '9381a1e2', '11322255806_7110cfb945_o.jpg', 1432053046, 69417),
(117, 'drive', 1, 1432053047, 'bed01c01', '', '7e79dd4f6123fc3047580388565f24fc', 'evw1hPbNS6oM+F/xwqSzGbnrbmMJkFPD25b2YTIA/r9IJFiBxQGnmfKoxmUvi8tUqCl0N+IoVUsHCCp6ojBsPQ==', NULL, 'image/jpeg', '031d59d0', '11322255806_7110cfb945_o.jpg', 1432053047, 38736),
(118, 'drive', 1, 1432053200, '2810a869', '', '94468469a47333bc6f05a4e926a1b68c', 'YX0cK3Kf7YJjlH6lE1i6/DezTjLbLC1RnDZS5873ZvWj68eVDESilCyLySH8F/lieGzqtSome4UtrmoDhZrrEw==', NULL, 'image/jpeg', '5fc8f127', '11322255806_7110cfb945_o.jpg', 1432053200, 3778260),
(119, 'drive', 1, 1432053212, '613536dc', '', '1d578845874dd88c35a387ed8867d6cf', 'NXM1pccZHR9pW3TS8fZCfCSnwiJO3B3GshbsAcsJ3jdbZTZbr1xU56Kz/pdOGOC9H14CvplsnmmENSARchqC8g==', NULL, 'image/jpeg', '4d458318', '11322255806_7110cfb945_o.jpg', 1432053212, 382739),
(120, 'drive', 1, 1432053214, 'ced5156a', '', '10f5a81ff43a38af552e5df53935db8e', '+shKzD95pU7oM8tjuO2dqvtH+uywenm7JtJe3OdDbfDF6iy8B8WyyKxQzWugUan7Semn2rsKk/+dOwU5arM+YA==', NULL, 'image/jpeg', 'c4333210', '11322255806_7110cfb945_o.jpg', 1432053214, 382739),
(121, 'drive', 1, 1432053215, 'def3d57e', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', 'ufNapIaxMR7rgbgrqyRPrFY3D0kI8gc0MUTVTRapKgQNrxnF90ofR95PvbcmY5H6Cob+961wWdhFn9m5MENbDg==', NULL, 'image/jpeg', '28b2aa55', '11322255806_7110cfb945_o.jpg', 1432053215, 69417),
(122, 'drive', 1, 1432053216, 'bfecb36c', '', '7e79dd4f6123fc3047580388565f24fc', 'zWzkVF1RbTFoqJHGfh1Y4d/R4fjfX3tzsGbcYSEKQsfczlkOPR02kp6pjTDaptuXfS2MpDnu5wajtVRrqWXloA==', NULL, 'image/jpeg', '6ac495fd', '11322255806_7110cfb945_o.jpg', 1432053216, 38736),
(123, 'drive', 1, 1432053283, '4a620d60', '', '94468469a47333bc6f05a4e926a1b68c', 'hv1cuxdVl65XkSkjyPyDvcf3/bzxs4J0Rlg6Dwr4cpNPDtk7n/gBS1QaiooiZ86nJ8ROPOG1KF11PKP7pHvW+g==', NULL, 'image/jpeg', '2e0707dd', '11322255806_7110cfb945_o.jpg', 1432053283, 3778260),
(124, 'drive', 1, 1432053288, 'cd40ca58', '', '1d578845874dd88c35a387ed8867d6cf', '0RzWrLbuuMSLWS0vD3WNmew985o3+iAjcaMgBFsOcwoNNVJTyLLe41+AJQofnKHxABA6gPcpSnfKmcNn7zCH8Q==', NULL, 'image/jpeg', '06ac338e', '11322255806_7110cfb945_o.jpg', 1432053288, 382739),
(125, 'drive', 1, 1432053290, '6d956da9', '', '10f5a81ff43a38af552e5df53935db8e', '5NBHE6f78aIEr3QV8Akg9vhhwpD4pN3ZEbX4upYsG/8NDDmEOh+dJr4z03pMTQpughNs9nYI9vY72mU0pHssQQ==', NULL, 'image/jpeg', '12140afb', '11322255806_7110cfb945_o.jpg', 1432053290, 382739),
(126, 'drive', 1, 1432053291, 'd93109e8', '', 'cbe1fd31f4141cadb1b3fcf5dc4230fd', '+3FQ541GrCuw+xHdxfX9UNqOB716IgqlXRiONY6NVa1dOWRUKEA5nqoNbZn5mSViTPfDxEOis5KtlFPOQD8xjQ==', NULL, 'image/jpeg', '4c374905', '11322255806_7110cfb945_o.jpg', 1432053291, 69417),
(127, 'drive', 1, 1432053292, '9c9077b1', '', '7e79dd4f6123fc3047580388565f24fc', 'ATWnJ08KxJHbR5qtYRmPgM5kM63SI+KwxVWXQ30vW1EymZosd6qOgggxuDqFseUXhs35YLF4TIldtKO1OKnDcA==', NULL, 'image/jpeg', 'c617f8c9', '11322255806_7110cfb945_o.jpg', 1432053292, 38736);

-- --------------------------------------------------------

--
-- Structure de la table `storage_static`
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
-- Structure de la table `storage_video`
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
-- Structure de la table `users`
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
  `slogan` varchar(100) DEFAULT NULL,
  `avatar.large` text,
  `avatar.medium` text,
  `avatar.small` text,
  `cover.large` text,
  `cover.medium` text,
  `cover.small` text,
  `theme` int(1) DEFAULT NULL,
  `link` text,
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
  `country` varchar(50) NOT NULL,
  `live` varchar(50) NOT NULL,
  `units.temperature` char(1) NOT NULL,
  `units.speed` char(10) NOT NULL,
  `units.pressure` char(5) NOT NULL,
  `units.distance` char(5) NOT NULL,
  `videos.replay` int(1) NOT NULL,
  `music.replay` int(1) NOT NULL,
  `activated` int(1) DEFAULT '0',
  `verified` int(1) NOT NULL,
  `dead` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `slogan`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `verified`, `dead`) VALUES
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 3, 1, 4, 4, 4, 3, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(16, 1432305135, '6ce9dd8f', '432963786e27b3405beab480adcb1004', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '8vf2SLJ57qOZxH27a5wJmxXbIbVjQVu/VpDnpSGI7KY=', '', 'Truong Tuan', 'Truong', '', 'Tuan', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(17, 1432305182, '3ba3e443', '4d9036323fcb74408b65a322f9fd4e97', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'irrl2DX/bZ415Pi8JyqiQXWnS+EJhcRAU4wFWO2SJUc=', '', 'Tran Duong', 'Tran', '', 'Duong', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(18, 1432316171, '08ab64a9', '14a4246db5e77a996d541229ae83af56', 'tringuyen', 'tringuyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cHuw+fwFH/GFMnSGQbeE6B5Sp8CKZR7f2Y4S7zIMP6E=', '', 'Tri Nguyen', 'Tri', '', 'Nguyen', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tringuyen', 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `users_block`
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
-- Structure de la table `users_contact`
--

CREATE TABLE IF NOT EXISTS `users_contact` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `time` int(11) NOT NULL,
  `type` char(10) NOT NULL,
  `at` char(10) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users_education`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users_faces`
--

CREATE TABLE IF NOT EXISTS `users_faces` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `faces.id` int(11) NOT NULL,
  `verified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users_follow`
--

CREATE TABLE IF NOT EXISTS `users_follow` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users_follow`
--

INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES
(1, 1431447796, 2, 'user', 2),
(2, 1431447958, 3, 'user', 3),
(3, 1431448069, 4, 'user', 4),
(4, 1431448099, 5, 'user', 5),
(5, 1431448205, 6, 'user', 6),
(6, 1431448265, 7, 'user', 7),
(7, 1431448456, 8, 'user', 8),
(8, 1431448487, 9, 'user', 9),
(9, 1431448511, 10, 'user', 10),
(10, 1431449021, 11, 'user', 11),
(11, 1431449110, 12, 'user', 12),
(12, 1431449563, 13, 'user', 13),
(13, 1431449623, 14, 'user', 14),
(14, 1431482041, 15, 'user', 15),
(15, 1432305135, 16, 'user', 16),
(16, 1432305182, 17, 'user', 17),
(17, 1432316171, 18, 'user', 18);

-- --------------------------------------------------------

--
-- Structure de la table `users_getpassword`
--

CREATE TABLE IF NOT EXISTS `users_getpassword` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users_getpassword`
--

INSERT INTO `users_getpassword` (`id`, `time`, `user.id`, `code`) VALUES
(1, 1, 1, 'xyz');

-- --------------------------------------------------------

--
-- Structure de la table `users_guide`
--

CREATE TABLE IF NOT EXISTS `users_guide` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users_login`
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users_login`
--

INSERT INTO `users_login` (`id`, `time`, `user.id`, `status`, `client`, `ip`, `platform`, `browser.name`, `browser.version`) VALUES
(1, 1431448459, 5, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(2, 1431448489, 5, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(3, 1431448532, 5, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(4, 1431449023, 11, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(5, 1431449116, 12, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(6, 1431449566, 13, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(7, 1431449644, 13, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(8, 1431482044, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(9, 1431494182, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(10, 1431535061, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(11, 1431542858, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(12, 1431621741, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(13, 1431621766, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(14, 1431621776, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(15, 1431686410, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(16, 1431755673, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(17, 1431770517, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(18, 1432021986, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(19, 1432043417, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(20, 1432073141, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(21, 1432137064, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(22, 1432140658, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(23, 1432140881, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(24, 1432140886, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(25, 1432211631, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(26, 1432257626, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(27, 1432282976, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.152'),
(28, 1432302096, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(29, 1432302098, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(30, 1432302110, 0, 0, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(31, 1432302150, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(32, 1432305137, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(33, 1432305184, 17, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(34, 1432305637, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(35, 1432316174, 18, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(36, 1432327995, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(37, 1432388722, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(38, 1432479801, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(39, 1432503377, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(40, 1432503384, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(41, 1432503414, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(42, 1432505071, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(43, 1432505087, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(44, 1432564363, 16, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65'),
(45, 1432565372, 15, 1, 'da65d66b', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '43.0.2357.65');

-- --------------------------------------------------------

--
-- Structure de la table `users_remembers`
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
-- Structure de la table `users_workplaces`
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
-- Structure de la table `videos_block`
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
-- Structure de la table `videos_cache`
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
-- Structure de la table `videos_comment`
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
-- Structure de la table `videos_info`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `videos_playlist`
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
-- Structure de la table `videos_replay`
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
-- Structure de la table `videos_views`
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
-- Structure de la table `wiki_pages`
--

CREATE TABLE IF NOT EXISTS `wiki_pages` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `advertising_actions`
--
ALTER TABLE `advertising_actions`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `advertising_id`
--
ALTER TABLE `advertising_id`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `analysis_faces`
--
ALTER TABLE `analysis_faces`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `answers_post`
--
ALTER TABLE `answers_post`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `answers_rate`
--
ALTER TABLE `answers_rate`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `answers_topic`
--
ALTER TABLE `answers_topic`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cited`
--
ALTER TABLE `cited`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `friends`
--
ALTER TABLE `friends`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `friends_request`
--
ALTER TABLE `friends_request`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages_codes`
--
ALTER TABLE `languages_codes`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages_values`
--
ALTER TABLE `languages_values`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logs_actions`
--
ALTER TABLE `logs_actions`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logs_ajax`
--
ALTER TABLE `logs_ajax`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logs_client`
--
ALTER TABLE `logs_client`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `maps_places`
--
ALTER TABLE `maps_places`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_data`
--
ALTER TABLE `messages_data`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_id`
--
ALTER TABLE `messages_id`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_members`
--
ALTER TABLE `messages_members`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_typing`
--
ALTER TABLE `messages_typing`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_views`
--
ALTER TABLE `messages_views`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mood`
--
ALTER TABLE `mood`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_album`
--
ALTER TABLE `music_album`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_block`
--
ALTER TABLE `music_block`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_cache`
--
ALTER TABLE `music_cache`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_info`
--
ALTER TABLE `music_info`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_replay`
--
ALTER TABLE `music_replay`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_views`
--
ALTER TABLE `music_views`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parameter`
--
ALTER TABLE `parameter`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_block`
--
ALTER TABLE `photos_block`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_cache`
--
ALTER TABLE `photos_cache`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_faces`
--
ALTER TABLE `photos_faces`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_info`
--
ALTER TABLE `photos_info`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_tips`
--
ALTER TABLE `photos_tips`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_views`
--
ALTER TABLE `photos_views`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites_author`
--
ALTER TABLE `sites_author`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites_id`
--
ALTER TABLE `sites_id`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites_info`
--
ALTER TABLE `sites_info`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites_secure`
--
ALTER TABLE `sites_secure`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites_views`
--
ALTER TABLE `sites_views`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_block`
--
ALTER TABLE `status_block`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_cited`
--
ALTER TABLE `status_cited`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_comment`
--
ALTER TABLE `status_comment`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_edit`
--
ALTER TABLE `status_edit`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_favorite`
--
ALTER TABLE `status_favorite`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_follow`
--
ALTER TABLE `status_follow`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_hashtag`
--
ALTER TABLE `status_hashtag`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_invite`
--
ALTER TABLE `status_invite`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_link`
--
ALTER TABLE `status_link`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_mood`
--
ALTER TABLE `status_mood`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_music`
--
ALTER TABLE `status_music`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_photos`
--
ALTER TABLE `status_photos`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_places`
--
ALTER TABLE `status_places`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_share`
--
ALTER TABLE `status_share`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_usertag`
--
ALTER TABLE `status_usertag`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_videos`
--
ALTER TABLE `status_videos`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `storage_audio`
--
ALTER TABLE `storage_audio`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `storage_cache_image`
--
ALTER TABLE `storage_cache_image`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `storage_image`
--
ALTER TABLE `storage_image`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `storage_static`
--
ALTER TABLE `storage_static`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `storage_video`
--
ALTER TABLE `storage_video`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_block`
--
ALTER TABLE `users_block`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_contact`
--
ALTER TABLE `users_contact`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_education`
--
ALTER TABLE `users_education`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_faces`
--
ALTER TABLE `users_faces`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_follow`
--
ALTER TABLE `users_follow`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_getpassword`
--
ALTER TABLE `users_getpassword`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_guide`
--
ALTER TABLE `users_guide`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_login`
--
ALTER TABLE `users_login`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_remembers`
--
ALTER TABLE `users_remembers`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_workplaces`
--
ALTER TABLE `users_workplaces`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_block`
--
ALTER TABLE `videos_block`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_cache`
--
ALTER TABLE `videos_cache`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_comment`
--
ALTER TABLE `videos_comment`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_info`
--
ALTER TABLE `videos_info`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_playlist`
--
ALTER TABLE `videos_playlist`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_replay`
--
ALTER TABLE `videos_replay`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_views`
--
ALTER TABLE `videos_views`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wiki_pages`
--
ALTER TABLE `wiki_pages`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `advertising_actions`
--
ALTER TABLE `advertising_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `advertising_id`
--
ALTER TABLE `advertising_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `analysis_faces`
--
ALTER TABLE `analysis_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `answers_post`
--
ALTER TABLE `answers_post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `answers_rate`
--
ALTER TABLE `answers_rate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `answers_topic`
--
ALTER TABLE `answers_topic`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cited`
--
ALTER TABLE `cited`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `friends`
--
ALTER TABLE `friends`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `friends_request`
--
ALTER TABLE `friends_request`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `languages_codes`
--
ALTER TABLE `languages_codes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `languages_values`
--
ALTER TABLE `languages_values`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=578;
--
-- AUTO_INCREMENT pour la table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `logs_ajax`
--
ALTER TABLE `logs_ajax`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `logs_client`
--
ALTER TABLE `logs_client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `maps_places`
--
ALTER TABLE `maps_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `messages_data`
--
ALTER TABLE `messages_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT pour la table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `messages_id`
--
ALTER TABLE `messages_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT pour la table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT pour la table `messages_typing`
--
ALTER TABLE `messages_typing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `messages_views`
--
ALTER TABLE `messages_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `mood`
--
ALTER TABLE `mood`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `music_album`
--
ALTER TABLE `music_album`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `music_block`
--
ALTER TABLE `music_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `music_cache`
--
ALTER TABLE `music_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `music_info`
--
ALTER TABLE `music_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `music_replay`
--
ALTER TABLE `music_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `music_views`
--
ALTER TABLE `music_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `parameter`
--
ALTER TABLE `parameter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT pour la table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `photos_faces`
--
ALTER TABLE `photos_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `photos_info`
--
ALTER TABLE `photos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `photos_tips`
--
ALTER TABLE `photos_tips`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `photos_views`
--
ALTER TABLE `photos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sites_author`
--
ALTER TABLE `sites_author`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sites_id`
--
ALTER TABLE `sites_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sites_info`
--
ALTER TABLE `sites_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sites_secure`
--
ALTER TABLE `sites_secure`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sites_views`
--
ALTER TABLE `sites_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `status_block`
--
ALTER TABLE `status_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_cited`
--
ALTER TABLE `status_cited`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_comment`
--
ALTER TABLE `status_comment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_edit`
--
ALTER TABLE `status_edit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_favorite`
--
ALTER TABLE `status_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_follow`
--
ALTER TABLE `status_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `status_hashtag`
--
ALTER TABLE `status_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_invite`
--
ALTER TABLE `status_invite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_link`
--
ALTER TABLE `status_link`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_mood`
--
ALTER TABLE `status_mood`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_music`
--
ALTER TABLE `status_music`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_photos`
--
ALTER TABLE `status_photos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_places`
--
ALTER TABLE `status_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_share`
--
ALTER TABLE `status_share`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_usertag`
--
ALTER TABLE `status_usertag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_videos`
--
ALTER TABLE `status_videos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `storage_audio`
--
ALTER TABLE `storage_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `storage_cache_image`
--
ALTER TABLE `storage_cache_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT pour la table `storage_static`
--
ALTER TABLE `storage_static`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `storage_video`
--
ALTER TABLE `storage_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `users_block`
--
ALTER TABLE `users_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users_contact`
--
ALTER TABLE `users_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users_education`
--
ALTER TABLE `users_education`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users_faces`
--
ALTER TABLE `users_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users_follow`
--
ALTER TABLE `users_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `users_getpassword`
--
ALTER TABLE `users_getpassword`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `users_guide`
--
ALTER TABLE `users_guide`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users_login`
--
ALTER TABLE `users_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `users_remembers`
--
ALTER TABLE `users_remembers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users_workplaces`
--
ALTER TABLE `users_workplaces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `videos_block`
--
ALTER TABLE `videos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `videos_cache`
--
ALTER TABLE `videos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `videos_comment`
--
ALTER TABLE `videos_comment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `videos_info`
--
ALTER TABLE `videos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `videos_playlist`
--
ALTER TABLE `videos_playlist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `videos_replay`
--
ALTER TABLE `videos_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
