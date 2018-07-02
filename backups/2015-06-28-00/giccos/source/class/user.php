<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class user {
	function __construct () {
		$GLOBALS["_user"] = $this;
		$this->class = $GLOBALS;
		$this->ready = false;
	}
	function setup () {
		if (!isset($_SESSION["user"], $_SESSION["user"]['mode'], $_SESSION["user"]['id'])) {
			if (isset($_COOKIE['AccRemember'])) {
				$this->relogin();
			}else {
				$this->ready = false;
			}
		}else {
			$this->ready = true;
		}
		if (!$this->ready) {
			$_SESSION["user"] = array(
				"login" => false, 
				"id" => 0, 
				"mode" => array(
					"type" => "guy", 
					"id" => $this->class['_client']->client(true)
				),
				"videos.replay" => 0,
				"music.replay" => 0
			);
		}
	}
	function callUserInfo () {
		if (isset($_SESSION["user"])) {
			$this->user = $_SESSION["user"];
		}else {
			$this->user = array("login" => false, "id" => 0, "mode" => array("type" => "guy", "id" => $this->class['_client']->client(true)));
		}
	}
	function relogin () {
		if (isset($_COOKIE["AccRemember"])) {
			$token = $_COOKIE["AccRemember"];
			$client = $this->class['_client']->client(true);
			$query = mysqli_query($this->class['_db']->port('beta'),"SELECT `user.id` FROM `users_remembers` WHERE `token` = '{$token}' AND `client` = '{$client}'");
			if ($query && mysqli_num_rows($query) > 0) {
				$id = mysqli_fetch_assoc($query)['user.id'];
				$login = $this->login(array("type" => 2, "user" => array("id" => $id), "remember" => true, "auto" => true));
				if (isset($login['return']) && $login['return'] == true) {
					return array("return" => true);
				}else if (isset($login['return'], $login['reason']) && $login['return'] == true) {
					return array("return" => false, "reason" => $login['reason']);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else {
				$this->ready = false;
				setcookie("AccRemember", null, $this->class['_tool']->timeNow() - 31536000, "/", $_SESSION["client"]['http']['secure'], false);
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function mode ($type, $id) {
		if ($this->ready == true) {
			if (isset($type, $id) && in_array($type, ["user"])) {
				$_SESSION["user"]['mode'] = array("type" => $type, "id" => $id);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function profile ($object) {
		return $this->getInfo($object);
	}
	function guide ($object) {
		if (isset($object['id']) && is_numeric($object['id'])) $id = $object['id']; else $id = 0;
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($this->ready == true && $id > 0 && $action != null) {
			if ($action == 1 || $action == "get") {
				$guide = array();
				$query = mysqli_query($this->class['_db']->port('beta'),"SELECT `code` FROM `users_guide` WHERE `user.id` = '{$id}'");
				if (mysqli_num_rows($query) > 0) {
					$guide = array();
					while ($fetch = mysqli_fetch_assoc($query)['code']) {
						$guide[] = $fetch;
					}
				}
				return array("return" => true, "data" => $guide);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function reloadProfile ($id, $mode = true) {
		$getProfile = $this->getInfo(array("rows" => "*", "label" => "id", "value" => $id));
		if (isset($getProfile['return'], $getProfile['data'][0]) && $getProfile['return'] == true) {
			if (!$mode) {
				$modeArr = $_SESSION["user"]['mode'];
			}else {
				$modeArr = array("type" => "user", "id" => $id);
			}
			$_SESSION["user"] = $getProfile['data'][0];
			$_SESSION["user"]['login'] = true;
			$this->mode($modeArr['type'], $modeArr['id']);
			return array("return" => true);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function exists ($object) {
		$db = $this->class['_db']->port('beta');
		if (isset($object['label']) && is_string($object['label'])) $userLabel = $object['label']; else $userLabel = null;
		if (isset($object['value']) && is_string($object['value'])) $userValue = $object['value']; else $userValue = null;
		if (isset($object['limit']) && is_string($object['limit'])) $userLimit = $object['limit']; else $userLimit = "LIMIT 1";
		if ($userLabel == null || $userValue == null) {
			return array("return" => false, "reason" => "");
		}
		$existsUserRequest = "SELECT `id` FROM `users` WHERE `{$userLabel}` = '{$userValue}' {$userLimit}";
		$existsUserQuery = mysqli_query($db, $existsUserRequest);
		if (!$existsUserQuery) {
			return array("return" => false, "reason" => "");
		}else {
			$existsUserCount = mysqli_num_rows($existsUserQuery);
			if ($existsUserCount == 0) {
				return array("return" => true, "exists" => false, "count" => 0);
			}else {
				return array("return" => true, "exists" => true, "count" => $existsUserCount);
			}
		}
	}
	function login ($object) {
		if (isset($object['type']) && is_numeric($object['type'])) $type = $object['type']; else $type = null;
		if (isset($object['user']) && is_array($object['user'])) $user = $object['user']; else $user = null;
		if (isset($object['remember']) && is_bool($object['remember'])) $remember = $object['remember']; else $remember = false;
		if (!in_array($type, [1, 2]) || $user == null) {
			return array("return" => false, "reason" => "1");
		}else {
			$_tool = $this->class['_tool'];
			$_parameter = $this->class['_parameter'];
			$_client = $this->class['_client'];
			$_language = $this->class['_language'];
			$db = $this->class['_db']->port('beta');
		}
		if ($type == 1) {
			if (isset($user['username']) && is_string($user['username'])) $username = $user['username']; else $username = null;
			if (isset($user['password']) && is_string($user['password'])) $password = $user['password']; else $password = null;
			if ($username == null || $password == null) {
				return array("return" => false, "reason" => "2");
			}
			if (!preg_match($_parameter->get('regex_username'), $username) && !preg_match($_parameter->get('regex_email'), $username)) {
				return array("return" => false, "reason" => "3");
			}else if (!preg_match($_parameter->get('regex_password'), $password)) {
				return array("return" => false, "reason" => "4");
			}
			$_parameter->get('hash_user_password');
			$password = hash('sha1', hash('crc32', $password).'::'.hash('md5', $password));
			$usernameQuery = mysqli_query($db, "SELECT `id` FROM `users` WHERE `username` = '{$username}' OR `email` = '{$username}' LIMIT 1");
			if (!$usernameQuery) {
				return array("return" => false, "reason" => "");
			}else if ($usernameQuery && mysqli_num_rows($usernameQuery) == 0) {
				return array("return" => false, "reason" => "");
			}
			$userloginQuery = mysqli_query($db, "SELECT `id` FROM `users` WHERE (`username` = '{$username}' OR `email` = '{$username}') AND `password` = '{$password}' LIMIT 1");
			if ($userloginQuery && mysqli_num_rows($userloginQuery) == 1) {
				if (isset($_SESSION["user"]['login']['logs'])) {
					unset($_SESSION["user"]['login']['logs']);
				}
				$userId = mysqli_fetch_assoc($userloginQuery)['id'];
				$browser = $_client->browser();
				mysqli_query($db, "INSERT INTO `users_login` (`id`, `time`, `user.id`, `status`, `client`, `ip`, `platform`, `browser.name`, `browser.version`) VALUES (NULL, '{$_tool->timeNow()}', '{$userId}', '1', '{$_client->client(true)}', '{$browser['ip']}', '{$browser['platform']}', '{$browser['name']}', '{$browser['version']}')");
				$this->ready = true;
			}else {
				$thisUserId = mysqli_fetch_assoc($userloginQuery)['id'];
				if (!isset($_SESSION["user"]['login']['logs'])) {
					$_SESSION["user"]['login']['logs'] = array();
				}else {
					$userLoginLogs = $_SESSION["user"]['login']['logs'];
					if (is_array($userLoginLogs) && count($userLoginLogs) > 0) {
						$countTry = 0;
						$loginTimeAllow = $_parameter->get('accounts_action_time_delay') * $_parameter->get('accounts_action_time_allow');
						foreach ($userLoginLogs as $key => $tryLoginThis) {
							if ($tryLoginThis['id'] == $thisUserId && $tryLoginThis['time'] + $loginTimeAllow > $_tool->timeNow()) {
								$countTry++;
							}
						}
						if ($countTry > $_parameter->get('accounts_action_time_delay')) {
							$timeSleep = 3 * intval($countTry / $_parameter->get('accounts_action_time_delay'));
							sleep($timeSleep);
						}
					}else {
						//.
					}
				}
				$userLoginLogs[] = array("id" => $thisUserId, "password" => $password, "time" => $this->class['_tool']->timeNow());
				$_SESSION["user"]['login']['logs']= $userLoginLogs;
				$browser = $_client->browser();
				mysqli_query($db, "INSERT INTO `users_login` (`id`, `time`, `user.id`, `status`, `client`, `ip`, `platform`, `browser.name`, `browser.version`) VALUES (NULL, '{$_tool->timeNow()}', '{$thisUserId}', '0', '{$_client->client(true)}', '{$browser['ip']}', '{$browser['platform']}', '{$browser['name']}', '{$browser['version']}')");
				return array("return" => false, "reason" => "");
			}
		}else if ($type == 2) {
			if (isset($user['id']) && is_numeric($user['id'])) $userId = $user['userId']; else $userId = 0;
			$userloginQuery = mysqli_query($db, "SELECT `id` FROM `users` WHERE `id` = '{$userId}' LIMIT 1");
			if ($userloginQuery && mysqli_num_rows($userloginQuery) == 1) {
				$this->ready = true;
			}else {
				return array("return" => false, "reason" => "");
			}
		}
		if (isset($userId) && $this->ready == true && $userId > 0) {
			$getProfile = $this->getInfo(array("rows" => "*", "label" => "id", "value" => $userId));
			if (isset($getProfile['return'], $getProfile['data'][0]) && $getProfile['return'] == true) {
				$_SESSION["user"] = $getProfile['data'][0];
				$this->mode("user", $userId);
				$_SESSION["user"]['login'] = true;
				$time = $_tool->timeNow();
				if ($remember == true) {
					$remember = array();
					$remember['client'] = $_client->client(true);
					$remember['token'] = hash("crc32", $remember['client'].'::'.$userId.'::'.rand());
					$expires = $_tool->timeNow() + 31536000;
					mysqli_query($db, "DELETE FROM `users_remembers` WHERE `client` = '{$remember['client']}'");
					mysqli_query($db, "INSERT INTO `users_remembers` (`id`, `user.id`, `client`, `token`, `time`) VALUES (null, '{$id}', '{$remember['client']}', '{$remember['token']}', '{$expires}')");
					setcookie("AccRemember", $remember['token'], $this->class['_tool']->timeNow() + 31536000, "/", $_SESSION["http"]['secure'], false);
				}else {
					if (isset($_COOKIE["AccRemember"])) {
						setcookie("AccRemember", null, $_tool->timeNow() - 31536000, "/", $_SESSION["http"]['secure'], false);
					}
				}
				$this->ready = true;
				return array("return" => true);
			}else {
				return array("return" => false, "reason" => $getProfile['reason']);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function register ($object) {
		//.
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['user']) && is_array($object['user']) && count($object['user']) > 0) $userProfile = $object['user']; else $userProfile = null;
		if (isset($userProfile['username'], $userProfile['password'], $userProfile['email'], $userProfile['firstname'], $userProfile['lastname'], $userProfile['birthday']['days'], $userProfile['birthday']['months'], $userProfile['birthday']['years'], $userProfile['gender'])) {
			$regex = array();
			$regex['username'] = $_parameter->get('regex_username');
			$regex['password'] = $_parameter->get('regex_password');
			$regex['email'] = $_parameter->get('regex_email');
			$regex['phone'] = $_parameter->get('regex_phone');
			$regex['name'] = $_parameter->get('regex_name');
			$regex['gender'] = $_parameter->get('regex_gender');
			$regex['date']['days'] = $_parameter->get('regex_date_days');
			$regex['date']['months'] = $_parameter->get('regex_date_months');
			$regex['date']['years'] = $_parameter->get('regex_date_years');
			if (!isset($userProfile['username']) || !is_string($userProfile['username']) || !preg_match($regex['username'], $userProfile['username'])) {
				return array("return" => false, "reason" => "");
			}else if (!isset($userProfile['password']) || !is_string($userProfile['password']) || !preg_match($regex['password'], $userProfile['password'])) {
				return array("return" => false, "reason" => "");
			}else if (!isset($userProfile['email']) || !is_string($userProfile['email']) || !preg_match($regex['email'], $userProfile['email'])) {
				return array("return" => false, "reason" => "");
			}else if (!isset($userProfile['firstname'], $userProfile['lastname']) || !is_string($userProfile['firstname']) || !is_string($userProfile['lastname']) || !preg_match($regex['name'], $userProfile['firstname']) || !preg_match($regex['name'], $userProfile['lastname']) || $userProfile['firstname'] == $userProfile['lastname']) {
				return array("return" => false, "reason" => "");
			}else if (!isset($userProfile['gender']) || !is_string($userProfile['gender']) || !preg_match($regex['gender'], $userProfile['gender'])) {
				return array("return" => false, "reason" => "");
			}else if (!isset($userProfile['birthday']['days']) || !is_numeric($userProfile['birthday']['days']) || !preg_match($regex['date']['days'], $userProfile['birthday']['days']) || !isset($userProfile['birthday']['months']) || !is_numeric($userProfile['birthday']['months']) || !preg_match($regex['date']['months'], $userProfile['birthday']['months']) || !isset($userProfile['birthday']['years']) || !is_numeric($userProfile['birthday']['years']) || !preg_match($regex['date']['years'], $userProfile['birthday']['years'])) {
				return array("return" => false, "reason" => "");
			}else {
				foreach ($userProfile as $key => $userProfileThis) {
					if (in_array($key, ["username", "email", "firstname", "middlename", "lastname", "nickname", "gender"])) {
						$userProfile[$key] = $_tool->convertDatabaseString($userProfileThis);
					}
				}
				$usernameCountQuery = mysqli_query($db, "SELECT `id` FROM `users` WHERE `username` = '{$regex['username']}' LIMIT 1");
				if (!$usernameCountQuery) {
					return array("return" => false, "reason" => "");
				}else if ($usernameCountQuery && mysqli_num_rows($usernameCountQuery) > 0) {
					return array("return" => false, "reason" => "");
				}
				$emailCountQuery = mysqli_query($db, "SELECT `id` FROM `users` WHERE `email` = '{$regex['email']}' LIMIT 1");
				if (!$emailCountQuery) {
					return array("return" => false, "reason" => "");
				}else if ($emailCountQuery && mysqli_num_rows($emailCountQuery) > 0) {
					return array("return" => false, "reason" => "");
				}
				//.
				$userProfile['time'] = $time = $_tool->timeNow();
				$userProfile['secret'] = md5($time.'::'.rand().'::'.hash('crc32', rand()));
				$userProfile['token'] = hash('crc32', $userProfile['secret']);
				if (isset($userProfile['phone']) && is_string($userProfile['phone']) && preg_match($regex['phone'], $userProfile['phone'])) $userProfile['phone'] = $userProfile['phone']; else $userProfile['phone'] = null;
				$userProfile['formatname'] = "f-m-l";
				$userProfile['fullname'] = $userProfile['firstname'].' '.$userProfile['lastname'];
				if (isset($userProfile['middlename']) && is_string($userProfile['middlename']) && preg_match($regex['name'], $userProfile['middlename'])) $userProfile['middlename'] = $userProfile['middlename']; else $userProfile['middlename'] = null;
				if (isset($userProfile['nickname']) && is_string($userProfile['nickname']) && preg_match($regex['name'], $userProfile['nickname'])) $userProfile['nickname'] = $userProfile['nickname']; else $userProfile['nickname'] = null;
				$convertBirthdayDate = $_tool->convertDatetime($userProfile['birthday']['days'].'/'.$userProfile['birthday']['months'].'/'.$userProfile['birthday']['years']);
				$userProfile['birthday']['stamp'] = $convertBirthdayDate['stamp'];
				$userProfile['birthday']['format'] = $convertBirthdayDate['format'];
				$userProfile['password_hash'] = hash('sha1', hash('crc32', $userProfile['password']).'::'.hash('md5', $userProfile['password']));
				$userProfile['password_base'] = $_tool->hash('encode', $userProfile['password'], $userProfile['token'].'::'.$_parameter->get('hash_user_password'));
				$userProfile['ip'] = $_client->userIP();
				$getInfoIP = $_tool->ip_info($userProfile['ip']);
				if (isset($getInfoIP['return'], $getInfoIP['data']) && $getInfoIP['return'] == true) {
					$userProfile['language'] = $_language->getCode($getInfoIP['data']['country']['code'])['code'];
					$userProfile['timezone'] = $getInfoIP['data']['timezone'];
				}else {
					$userProfile['language'] = $_parameter->get('user_language.default');
					$userProfile['timezone'] = $_parameter->get('user_timezone.default');
				}
				$userProfile['theme'] = $_parameter->get('user_theme.default');
				$userProfile['cover'] = array("large" => "::default::user::cover::large", "medium" => "::default::user::cover::medium", "small" => "::default::user::cover::small");
				$userProfile['avatar'] = array("large" => "::default::user::avatar::large", "medium" => "::default::user::avatar::medium", "small" => "::default::user::avatar::small");
				$userProfile['link'] = 'wall/'.$userProfile['username'];
				$userProfile['messages']['translate'] = $_parameter->get('user_messages.translate_default');
				$userProfile['private']['tag'] = $_parameter->get('user_private.tag_default');
				$userProfile['private']['search'] = $_parameter->get('user_private.search_default');
				$userProfile['private']['status']['view'] = $userProfile['private']['status']['comment'] = $userProfile['private']['status']['share'] = $_parameter->get('user_private.status_default');
				$userProfile['private']['photos']['view'] = $userProfile['private']['photos']['comment'] = $userProfile['private']['photos']['share'] = $_parameter->get('user_private.photos_default');
				$userProfile['private']['music']['view'] = $userProfile['private']['music']['comment'] = $userProfile['private']['music']['share'] = $_parameter->get('user_private.music_default');
				$userProfile['private']['videos']['view'] = $userProfile['private']['videos']['comment'] = $userProfile['private']['videos']['share'] = $_parameter->get('user_private.videos_default');
				$userProfile['private']['info']['friends'] = $userProfile['private']['info']['birthday'] = $userProfile['private']['info']['country'] = $userProfile['private']['info']['live'] = $userProfile['private']['info']['email'] = $userProfile['private']['info']['phone'] = $_parameter->get('user_private.info_default');
				$userProfile['live'] = $userProfile['country'] = null;
				if (1 + 1 == 2) {
					$userProfile['units']['temperature'] = "c";
					$userProfile['units']['speed'] = "km/h";
					$userProfile['units']['pressure'] = "mb";
					$userProfile['units']['distance'] = "km";
				}else {
					$userProfile['units']['temperature'] = "f";
					$userProfile['units']['speed'] = "mph";
					$userProfile['units']['pressure'] = "in";
					$userProfile['units']['distance'] = "mi";
				}
				$userProfile['videos']['replay'] = $userProfile['music']['replay'] = $_parameter->get('media_settings.replay_default');
				$userProfile['activated'] = $userProfile['verified'] = $userProfile['dead'] = 0;
				$createUserRequest = "
				INSERT INTO 
				`users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `slogan`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `verified`, `dead`) 
				VALUES 
				(NULL, '{$userProfile['time']}', '{$userProfile['token']}', '{$userProfile['secret']}', '{$userProfile['username']}', '{$userProfile['email']}', '{$userProfile['password_hash']}', '{$userProfile['password_base']}', '{$userProfile['phone']}', '{$userProfile['fullname']}', '{$userProfile['firstname']}', '{$userProfile['middlename']}', '{$userProfile['lastname']}', '{$userProfile['formatname']}', '{$userProfile['nickname']}', '{$userProfile['gender']}', null, '{$userProfile['birthday']['stamp']}', '{$userProfile['birthday']['format']}', null, null, null, '{$userProfile['language']}', '{$userProfile['timezone']}', null, null, '{$userProfile['avatar']['large']}', '{$userProfile['avatar']['medium']}', '{$userProfile['avatar']['small']}', '{$userProfile['cover']['large']}', '{$userProfile['cover']['medium']}', '{$userProfile['cover']['small']}', '{$userProfile['theme']}', '{$userProfile['link']}', '{$userProfile['messages']['translate']}', '{$userProfile['private']['tag']}', '{$userProfile['private']['search']}', '{$userProfile['private']['info']['friends']}', '{$userProfile['private']['info']['birthday']}', '{$userProfile['private']['info']['country']}', '{$userProfile['private']['info']['live']}', '{$userProfile['private']['info']['email']}', '{$userProfile['private']['info']['phone']}', '{$userProfile['private']['status']['view']}', '{$userProfile['private']['status']['comment']}', '{$userProfile['private']['status']['share']}', '{$userProfile['private']['photos']['view']}', '{$userProfile['private']['photos']['comment']}', '{$userProfile['private']['photos']['share']}', '{$userProfile['private']['music']['view']}', '{$userProfile['private']['music']['comment']}', '{$userProfile['private']['music']['share']}', '{$userProfile['private']['videos']['view']}', '{$userProfile['private']['videos']['comment']}', '{$userProfile['private']['videos']['share']}', '{$userProfile['country']}', '{$userProfile['live']}', '{$userProfile['units']['temperature']}', '{$userProfile['units']['speed']}', '{$userProfile['units']['pressure']}', '{$userProfile['units']['distance']}', '{$userProfile['videos']['replay']}', '{$userProfile['music']['replay']}', '{$userProfile['activated']}', '{$userProfile['verified']}', '{$userProfile['dead']}');
				";
				$createUserQuery = mysqli_query($db, $createUserRequest);
				if (!$createUserQuery) {
					return array("return" => false, "reason" => $createUserRequest);
				}else {
					$userProfile['id'] = mysqli_insert_id($db);
					$followUserQuery = mysqli_query($db, "INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES (null, '{$time}', '{$userProfile['id']}', 'user', '{$userProfile['id']}');");
					return array("return" => true, "data" => array("id" => $userProfile));
				}
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function logout () {
		if (isset($_COOKIE['AccRemember'])) {
			$token = $_COOKIE['AccRemember'];
			$client = $this->class['_client']->client(true);
			mysqli_query($this->class['_db']->port('beta'),"DELETE FROM `users_remembers` WHERE `token` = '{$token}' AND `client` = '{$client}'");
			setcookie("AccRemember", null, $this->class['_tool']->timeNow() - 31536000, "/", $_SESSION["http"]['secure'], false);
		}
		if (isset($_SESSION["user"])) {
			unset($_SESSION["user"]);
			$_SESSION["user"] = array("login" => false, "id" => $this->class['_client']->client(true), "mode" => "guy");
 		}
 		setcookie("MesOpt_PressEnter", null, $this->class['_tool']->timeNow() - 31536000, "/", $_SESSION["http"]['secure'], false);
 		setcookie("MpOpt_volume", null, $this->class['_tool']->timeNow() - 31536000, "/", false, true);
 		setcookie("MpOpt_rememberTime", null, $this->class['_tool']->timeNow() - 31536000, "/", $_SESSION["http"]['secure'], false);
	}
	function info ($type, $object) {
		if (isset($this->ready) && $this->ready == true) {
			$this->user = $_SESSION["user"];
			$db = $this->class['_db']->port('beta');
			if ($type == "update") {
				if (isset($object['label'])) $label = addslashes($object['label']); else $label = null;
				if (isset($object['value'])) $value = addslashes($object['value']); else $value = null;
				$update = mysqli_query($db, "UPDATE `users` SET `{$label}` = '{$value}' WHERE `id` = '{$this->user['id']}'");
				if (!$update) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true);
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function getFriendsMutual ($object) {
		if (isset($object['userId']) && (is_string($object['userId']) || is_numeric($object['userId']))) $userId = $object['userId']; else $userId = 0;
		if (isset($object['guyId']) && (is_string($object['guyId']) || is_numeric($object['guyId']))) $guyId = $object['guyId']; else $guyId = 0;
		if ($userId > 0 && $guyId > 0) {
			if (isset($_POST['limit']) && (is_string($_POST['limit']) || is_numeric($_POST['limit']))) $limit = $_POST['limit']; else $limit = null;
			$sql = "SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$userId}' AND `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$guyId}') ORDER BY `id` DESC";
			$db = $this->class['_db']->port('beta');
			if ($limit != null && $limit > 0) {
				$sql .= " LIMIT ".$limit;
			}
			$query = mysqli_query($db, $sql);
			$data = null;
			while ($fetch = mysqli_fetch_assoc($query)) {
				if ($data == null) {
					$data = array();
				}
				$data[] = $fetch['guy.id'];
			}
			return array("return" => true, "data" => $data);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function getInfo ($object) {
		if (isset($object['rows']) && is_string($object['rows'])) $userRows = $object['rows']; else $userRows = "*";
		if (isset($object['label']) && is_string($object['label'])) $userLabel = $object['label']; else $userLabel = null;
		if (isset($object['value']) && is_string($object['value'])) $userValue = $object['value']; else $userValue = null;
		if (isset($object['limit']) && is_string($object['limit'])) $userLimit = $object['limit']; else $userLimit = "LIMIT 1";
		if ($userRows == null || $userLabel == null || $userValue == null || $userLimit == null) {
			return array("return" => false, "reason" => "");
		}
			$_tool = $this->class['_tool'];
			$rBe = preg_match("/(secret)/", $userRows);
			if (!$rBe && !preg_match("/(\*)/", $userRows)) {
				$userRows .= ", `secret`";
			}
			$getInfoRequest = "SELECT {$userRows} FROM `users` WHERE `{$userLabel}` = '{$userValue}' {$userLimit}";
			$getInfoQuery = mysqli_query($this->class['_db']->port('beta'), $getInfoRequest);
			if ($getInfoQuery && mysqli_num_rows($getInfoQuery) > 0) {
				$userInfoArr = array();
				while ($getInfoFetch = mysqli_fetch_assoc($getInfoQuery)) {
					if (isset($getInfoFetch['password'])) {
						unset($getInfoFetch['password']);
					}
					if (isset($getInfoFetch['link'])) {
						$getInfoFetch['link'] = $_tool->links($getInfoFetch['link']);
					}
					if (isset($getInfoFetch['avatar.large'])) {
						if (preg_match("/^(\:\:default)/", $getInfoFetch['avatar.large'])) {
							$getInfoFetch['avatar.large'] = $_tool->links($getInfoFetch['avatar.large']);
						}else if ($getInfoFetch['avatar.large'] == null || $getInfoFetch['avatar.large'] == "0") {
							$getInfoFetch['avatar.large'] = $_tool->links('::default::user::avatar::large');
						}else {
							$getInfoFetch['avatar.large'] = $_tool->hash('decode', $getInfoFetch['avatar.large'], $id."_".$getInfoFetch['secret']);
							$getInfoFetch['avatar.large'] = $_tool->links($getInfoFetch['avatar.large'], false);
						}
					}
					if (isset($getInfoFetch['avatar.medium'])) {
						if (preg_match("/^(\:\:default)/", $getInfoFetch['avatar.medium'])) {
							$getInfoFetch['avatar.medium'] = $_tool->links($getInfoFetch['avatar.medium']);
						}else if ($getInfoFetch['avatar.medium'] == null || $getInfoFetch['avatar.medium'] == "0") {
							$getInfoFetch['avatar.medium'] = $_tool->links('::default::user::avatar::medium');
						}else {
							$getInfoFetch['avatar.medium'] = $_tool->hash('decode', $getInfoFetch['avatar.medium'], $id."_".$getInfoFetch['secret']);
							$getInfoFetch['avatar.medium'] = $_tool->links($getInfoFetch['avatar.medium'], false);
						}
					}
					if (isset($getInfoFetch['avatar.small'])) {
						if (preg_match("/^(\:\:default)/", $getInfoFetch['avatar.small'])) {
							$getInfoFetch['avatar.small'] = $_tool->links($getInfoFetch['avatar.small']);
						}else if ($getInfoFetch['avatar.small'] == null || $getInfoFetch['avatar.small'] == "0") {
							$getInfoFetch['avatar.small'] = $_tool->links('::default::user::avatar::small');
						}else {
							$getInfoFetch['avatar.small'] = $_tool->hash('decode', $getInfoFetch['avatar.small'], $id."_".$getInfoFetch['secret']);
							$getInfoFetch['avatar.small'] = $_tool->links($getInfoFetch['avatar.small'], false);
						}
					}
					if (isset($getInfoFetch['cover.large'])) {
						if (preg_match("/^(\:\:default)/", $getInfoFetch['cover.large'])) {
							$getInfoFetch['cover.large'] = $_tool->links($getInfoFetch['cover.large']);
						}else if ($getInfoFetch['cover.large'] == null || $getInfoFetch['cover.large'] == "0") {
							$getInfoFetch['cover.large'] = $_tool->links('::default::user::cover::large');
						}else {
							$getInfoFetch['cover.large'] = $_tool->hash('decode', $getInfoFetch['cover.large'], $id."_".$getInfoFetch['secret']);
							$getInfoFetch['cover.large'] = $_tool->links($getInfoFetch['cover.large'], false);
						}
					}
					if (isset($getInfoFetch['cover.medium'])) {
						if (preg_match("/^(\:\:default)/", $getInfoFetch['cover.medium'])) {
							$getInfoFetch['cover.medium'] = $_tool->links($getInfoFetch['cover.medium']);
						}else if ($getInfoFetch['cover.medium'] == null || $getInfoFetch['cover.medium'] == "0") {
							$getInfoFetch['cover.medium'] = $_tool->links('::default::user::cover::medium');
						}else {
							$getInfoFetch['cover.medium'] = $_tool->hash('decode', $getInfoFetch['cover.medium'], $id."_".$getInfoFetch['secret']);
							$getInfoFetch['cover.medium'] = $_tool->links($getInfoFetch['cover.medium'], false);
						}
					}
					if (isset($getInfoFetch['cover.small'])) {
						if (preg_match("/^(\:\:default)/", $getInfoFetch['cover.small'])) {
							$getInfoFetch['cover.small'] = $_tool->links($getInfoFetch['cover.small']);
						}else if ($getInfoFetch['cover.small'] == null || $getInfoFetch['cover.small'] == "0") {
							$getInfoFetch['cover.small'] = $_tool->links('::default::user::cover::small');
						}else {
							$getInfoFetch['cover.small'] = $_tool->hash('decode', $getInfoFetch['cover.small'], $id."_".$getInfoFetch['secret']);
							$getInfoFetch['cover.small'] = $_tool->links($getInfoFetch['cover.small'], false);
						}
					}
					if (!$rBe && !preg_match("/(\*)/", $userRows)) {
						if (isset($getInfoFetch['secret'])) {
							unset($getInfoFetch['secret']);
						}
						if (isset($getInfoFetch['token'])) {
							unset($getInfoFetch['token']);
						}
					}
					$userInfoArr[] = $getInfoFetch;
				}
				/*
				if ($userLimit == "LIMIT 1") {
					$userInfoArrCache = $userInfoArr[0];
					$userInfoArr = $userInfoArrCache;
				}
				*/
				return array("return" => true, "data" => $userInfoArr);
			}else {
				return array("return" => false, "reason" => "");
			}
	}
	function getContact ($object) {
		if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = "*";
		if (isset($object['id']) && (is_string($object['id']) || is_numeric($object['id']))) $id = $object['id']; else $id = 0;
		if (isset($object['where']) && is_string($object['where'])) $where = "AND (".$object['where'].")"; else $where = null;
		if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
		if ($id > 0) {
			$sql = "SELECT {$rows} FROM `users_contact` WHERE `user.id` = '{$id}' {$where} {$limit}";
			$query = mysqli_query($this->class['_db']->port('beta'), $sql);
			$num = mysqli_num_rows($query);
			if ($num > 0) {
				$data = array();
				while ($fetch = mysqli_fetch_assoc($query)) {
					$data[] = $fetch;
				}
				return array("return" => true, "data" => $data);
			}else {
				return array("return" => true, "data" => null);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function getEducation ($object) {
		if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = "*";
		if (isset($object['id']) && (is_string($object['id']) || is_numeric($object['id']))) $id = $object['id']; else $id = 0;
		if (isset($object['where']) && is_string($object['where'])) $where = "AND (".$object['where'].")"; else $where = null;
		if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
		if ($id > 0) {
			$sql = "SELECT {$rows} FROM `users_education` WHERE `user.id` = '{$id}' {$where} {$limit}";
			$query = mysqli_query($this->class['_db']->port('beta'), $sql);
			$num = mysqli_num_rows($query);
			if ($num > 0) {
				$data = array();
				while ($fetch = mysqli_fetch_assoc($query)) {
					$data[] = $fetch;
				}
				return array("return" => true, "data" => $data);
			}else {
				return array("return" => true, "data" => null);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function getWorkplaces ($object) {
		if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = "*";
		if (isset($object['id']) && (is_string($object['id']) || is_numeric($object['id']))) $id = $object['id']; else $id = 0;
		if (isset($object['where']) && is_string($object['where'])) $where = "AND (".$object['where'].")"; else $where = null;
		if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
		if ($id > 0) {
			$sql = "SELECT {$rows} FROM `users_workplaces` WHERE `user.id` = '{$id}' {$where} {$limit}";
			$query = mysqli_query($this->class['_db']->port('beta'), $sql);
			$num = mysqli_num_rows($query);
			if ($num > 0) {
				$data = array();
				while ($fetch = mysqli_fetch_assoc($query)) {
					$data[] = $fetch;
				}
				return array("return" => true, "data" => $data);
			}else {
				return array("return" => true, "data" => null);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function friends ($action, $object) {
		if (isset($this->ready) && $this->ready == true) {
			$this->user = $_SESSION["user"];
			if (isset($object['id']) && (is_string($object['id']) || is_numeric($object['id']))) $id = $object['id']; else $id = 0;
			$db = $this->class['_db']->port('beta');
			if ($action == "add" && $id > 0) {
				$isFriends = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$this->user['id']}' AND `guy.id` = '{$id}'"));
				$isSend = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends_request` WHERE `user.id` = '{$this->user['id']}' AND `guy.id` = '{$id}'"));
				if ($isFriends == 0 && $isSend == 0) {
					$isUser = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `users` WHERE `id` = '{$id}'"));
					if ($isUser > 0) {
						$time = $this->class['_tool']->timeNow();
						$insertRequest = mysqli_query($db, "INSERT INTO `friends_request` (`id`, `time`, `user.id`, `guy.id`) VALUES (null, '{$time}', '{$this->user['id']}', '{$id}')");
						if (!$insertRequest) {
							return array("return" => false, "reason" => "");
						}else {
							return array("return" => true);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "cancel" && $id > 0) {
				$isFriends = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$this->user['id']}' AND `guy.id` = '{$id}'"));
				$isSend = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends_request` WHERE `user.id` = '{$this->user['id']}' AND `guy.id` = '{$id}'"));
				if ($isFriends == 0 && $isSend > 0) {
					$isUser = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `users` WHERE `id` = '{$id}'"));
					if ($isUser > 0) {
						$time = $this->class['_tool']->timeNow();
						$deleteRequest = mysqli_query($db, "DELETE FROM `friends_request` WHERE `user.id` = '{$this->user['id']}' AND `guy.id` = '{$id}'");
						if (!$deleteRequest) {
							return array("return" => false, "reason" => "");
						}else {
							return array("return" => true);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "accept" && $id > 0) {
				$isFriends = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$this->user['id']}' AND `guy.id` = '{$id}'"));
				$isSend = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends_request` WHERE `guy.id` = '{$this->user['id']}' AND `user.id` = '{$id}'"));
				$isFollowed = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `users_follow` WHERE `user.id` = '{$this->user['id']}' AND `guy.type` = 'user' AND `guy.id` = '{$id}'"));
				if ($isFriends == 0 && $isSend > 0) {
					$isUser = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `users` WHERE `id` = '{$id}'"));
					if ($isUser > 0) {
						$time = $this->class['_tool']->timeNow();
						$deleteRequest = mysqli_query($db, "DELETE FROM `friends_request` WHERE (`user.id` = '{$this->user['id']}' AND `guy.id` = '{$id}' OR `guy.id` = '{$this->user['id']}' AND `user.id` = '{$id}')");
						$insertFriends = mysqli_query($db, "INSERT INTO `friends` (`id`, `time`, `user.id`, `guy.id`) VALUES (null, '{$time}', '{$this->user['id']}', '{$id}'), (null, '{$time}', '{$id}', '{$this->user['id']}')");
						if ($isFollowed == 0) {
							$insertFollow = mysqli_query($db, "INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES (null, '{$time}', '{$this->user['id']}', 'user', '{$id}')");
						}else {
							$insertFollow = true;
						}
						if (!$deleteRequest || !$insertFriends || !$insertFollow) {
							return array("return" => false, "reason" => "");
						}else {
							return array("return" => true);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "refuse" && $id > 0) {
				$isFriends = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$this->user['id']}' AND `guy.id` = '{$id}'"));
				$isSend = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends_request` WHERE `guy.id` = '{$this->user['id']}' AND `user.id` = '{$id}'"));
				if ($isFriends == 0 && $isSend > 0) {
					$isUser = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `users` WHERE `id` = '{$id}'"));
					if ($isUser > 0) {
						$time = $this->class['_tool']->timeNow();
						$deleteRequest = mysqli_query($db, "DELETE FROM `friends_request` WHERE (`user.id` = '{$this->user['id']}' AND `guy.id` = '{$id}' OR `guy.id` = '{$this->user['id']}' AND `user.id` = '{$id}')");
						if (!$deleteRequest) {
							return array("return" => false, "reason" => "");
						}else {
							return array("return" => true);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "remove" && $id > 0) {
				$isFriends = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$this->user['id']}' AND `guy.id` = '{$id}'"));
				if ($isFriends > 0) {
					$isUser = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `users` WHERE `id` = '{$id}'"));
					if ($isUser > 0) {
						$time = $this->class['_tool']->timeNow();
						$deleteRequest = mysqli_query($db, "DELETE FROM `friends_request` WHERE (`user.id` = '{$this->user['id']}' AND `guy.id` = '{$id}' OR `guy.id` = '{$this->user['id']}' AND `user.id` = '{$id}')");
						$deleteFriends = mysqli_query($db, "DELETE FROM `friends` WHERE (`user.id` = '{$this->user['id']}' AND `guy.id` = '{$id}' OR `guy.id` = '{$this->user['id']}' AND `user.id` = '{$id}')");
						$deleteFollow = mysqli_query($db, "DELETE FROM `users_follow` WHERE `user.id` = '{$this->user['id']}' AND `guy.type` = 'user' AND `guy.id` = '{$id}'");
						if (!$deleteRequest || !$deleteFriends || !$deleteFollow) {
							return array("return" => false, "reason" => "");
						}else {
							return array("return" => true);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($action == "follow" && $id > 0) {
				
			}else if ($action == "unfollow" && $id > 0) {
				
			}else if ($action == "block" && $id > 0) {
				
			}else if ($action == "unblock" && $id > 0) {
				
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function logs ($type, $action, $options) {
		if ($type == "view") {
			if ($action == "get") {

			}
		}
	}
	function suggest ($object) {
		if (isset($object['id']) && is_string($object['id'])) $id = addslashes($object['id']); else $id = 0;
		if (isset($object["type"]) && is_string($object['type'])) $type = addslashes($object["type"]); else $type = null;
		if ($this->ready == true && $id > 0 && $type != null) {
			$this->user = $_SESSION["user"];
			if (!isset($this->user['login']) || !$this->user['login']) {
				return array("return" => false, "reason" => "");
			}
			$db = $this->class['_db']->port('beta');
			if ($type == "guys" || $type == "user") {
				$suggest['user'] = null;
				$suggest_user = array();
				$places_visited_query = mysqli_query($db,"SELECT DISTINCT `latitude`, `longitude` FROM `maps_places` WHERE `id` IN (SELECT DISTINCT `value` FROM `status_places` WHERE `type` = '1' AND `value` REGEXP '^-?[0-9]+$' AND `status.id` IN (SELECT `id` FROM `status` WHERE `user.id` = '{$id}')) ORDER BY `id` DESC LIMIT 20");
				if (mysqli_num_rows($places_visited_query) > 0) {
					while ($places_visited = mysqli_fetch_assoc($places_visited_query)) {
						$places_visited_near = $this->class['_maps']->near(array("latitude" => $places_visited['latitude'], "longitude" => $places_visited['longitude']), 20, 10, true);
						if ($places_visited_near['return'] == true) {
							if (count($places_visited_near['data']) > 0) {
								$places_visited_near = $places_visited_near['data'];
								foreach ($places_visited_near as $i => $places_visited_near_this) {
									$checkin_near_query = mysqli_query($db,"SELECT `user.id` FROM `status` WHERE `user.id` != '{$id}' AND `user.id` NOT IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$id}') AND `user.id` NOT IN (SELECT `guy.id` FROM `friends_request` WHERE `user.id` = '{$id}') AND `id` IN (SELECT `status.id` FROM `status_places` WHERE `type` = '1' AND `value` = '{$places_visited_near_this['id']}') ORDER BY `id` DESC LIMIT 40");
									while ($checkin_near = mysqli_fetch_assoc($checkin_near_query)) {
										$suggest['user'][] = $checkin_near['user.id'];
									}
									$living_near_query = mysqli_query($db,"SELECT `id` FROM `users` WHERE `id` != '{$id}' AND `dead` = '0' AND (`country` = '{$places_visited_near_this['id']}' OR `live` = '{$places_visited_near_this['id']}') AND `id` NOT IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$id}') AND `id` NOT IN (SELECT `guy.id` FROM `friends_request` WHERE `id` = '{$id}') ORDER BY RAND() LIMIT 20");
									while ($living_near = mysqli_fetch_assoc($living_near_query)) {
										$suggest['user'][] = $living_near['id'];
									}
								}
							}
						}
					}
				}
				$places_living_query = mysqli_query($db,"SELECT DISTINCT `latitude`, `longitude` FROM `maps_places` WHERE `id` IN (SELECT `live` FROM `users` WHERE (`id` = '{$id}' AND `live` REGEXP '^-?[0-9]+$')) OR `id` IN (SELECT `country` FROM `users` WHERE `id` = '{$id}' AND `country` REGEXP '^-?[0-9]+$')");
				if (mysqli_num_rows($places_living_query) > 0) {
					while ($places_living = mysqli_fetch_assoc($places_living_query)) {
						$places_living_near = $this->class['_maps']->near(array("latitude" => $places_living['latitude'], "longitude" => $places_living['longitude']), 30, 15, true);
						if ($places_living_near['return'] == true) {
							if (count($places_living_near['data']) > 0) {
								$places_living_near = $places_living_near['data'];
								foreach ($places_living_near as $i => $places_living_near_this) {
									$checkin_near_query = mysqli_query($db,"SELECT `user.id` FROM `status` WHERE `user.id` != '{$id}' AND `user.id` NOT IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$id}') AND `user.id` NOT IN (SELECT `guy.id` FROM `friends_request` WHERE `user.id` = '{$id}') AND `id` IN (SELECT `status.id` FROM `status_places` WHERE `type` = '1' AND `value` = '{$places_living_near_this['id']}') ORDER BY `id` DESC LIMIT 40");
									while ($checkin_near = mysqli_fetch_assoc($checkin_near_query)) {
										$suggest['user'][] = $checkin_near['user.id'];
									}
									$living_near_query = mysqli_query($db,"SELECT `id` FROM `users` WHERE `id` != '{$id}' AND (`country` = '{$places_living_near_this['id']}' OR `live` = '{$places_living_near_this['id']}') AND `id` NOT IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$id}') AND `id` NOT IN (SELECT `guy.id` FROM `friends_request` WHERE `id` = '{$id}') ORDER BY RAND() LIMIT 20");
									while ($living_near = mysqli_fetch_assoc($living_near_query)) {
										$suggest['user'][] = $living_near['id'];
									}
								}
							}
						}
					}
				}
				if (is_array($suggest['user']) && count($suggest['user']) > 0) {
					$suggest['user'] = array_count_values($suggest['user']);
					arsort($suggest['user']);
					$suggest_list['user'] = array();
					foreach ($suggest['user'] as $guyID => $suggest_limit) {
						if (count($suggest_list['user']) <= 50) {
							$suggest_list['user'][] = $guyID;
						}else {
							break;
						}
					}
					return array("return" => true, "data" => $suggest_list['user']);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($type == "groups") {
				
			}else if ($type == "pages") {
				
			}else if ($type == "news") {
				$suggest['news']['hastags'] = $suggest['news']['links'] = $suggest['news']['pages'] = $suggest['news']['weather'] = null;
				$places_living_query = mysqli_query($db,"SELECT `latitude`, `longitude` FROM `maps_places` WHERE `id` IN (SELECT `live` FROM `users` WHERE `id` = '{$id}' AND `live` REGEXP '^-?[0-9]+$') ORDER BY RAND()");
				if (mysqli_num_rows($places_living_query) > 0) {
					while ($places_living = mysqli_fetch_assoc($places_living_query)) {
						$places_living_near = $this->class['_maps']->near(array("latitude" => $places_living['latitude'], "longitude" => $places_living['longitude']), 30, 15, true);
						if ($places_living_near['return'] == true) {
							if (count($places_living_near['data']) > 0) {
								$places_living_near = $places_living_near['data'];
								foreach ($places_living_near as $i => $places_living_near_this) {
									$hashtag_query = mysqli_query($db,"SELECT `hashtag` FROM `status_hashtag` WHERE `status.id` IN (SELECT `id` FROM `status` WHERE `hashtag` = '1' AND `author.type` = 'user' AND `author.id` IN (SELECT `id` FROM `users` WHERE `live` REGEXP '^-?[0-9]+$' AND `live` = '{$places_living_near_this['id']}'))");
									while ($hashtag_fetch = mysqli_fetch_assoc($hashtag_query)) {
										$suggest['news']['hastags'][] = $hashtag_fetch['hashtag'];
									}
								}
							}
						}
					}
				}
				if (is_array($suggest['news']['hastags']) && count($suggest['news']['hastags']) > 0) {
					$suggest['news']['hastags'] = array_count_values($suggest['news']['hastags']);
					arsort($suggest['news']['hastags']);
					$suggest_list['news']['hastags'] = array();
					foreach ($suggest['news']['hastags'] as $id => $suggest_user_limit) {
						if (count($suggest_list['news']['hastags']) <= 10) {
							$suggest_list['news']['hastags'][] = $id;
						}else {
							break;
						}
					}
					return array("return" => true, "data" => $suggest_list['news']);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($type == "weather") {
				$getOther = true;
				$guy = mysqli_fetch_assoc(mysqli_query($db, "SELECT `id`, `live`, `country`, `units.temperature` FROM `users` WHERE `id` = '{$id}'"));
				if ($guy['units.temperature'] != "c" && $guy['units.temperature'] != "f") {
					$guy['units.temperature'] = "f";
				}
				if ($this->user['live'] != 0 && $getOther == true) {
					$getLocation = mysqli_fetch_assoc(mysqli_query($db,"SELECT `display`, `name` FROM `maps_places` WHERE `id` = '{$guy['live']}' LIMIT 1"));
					if (isset($getLocation['display'], $getLocation['name'])) {
						$getWeather = $this->class['_tool']->getWeather($getLocation['name'], $guy['units.temperature'], 1);
						if (isset($getWeather['return'], $getWeather['data']) && $getWeather['return'] == true) {
							$data = $getWeather['data'];
							$data['location_display'] = $getLocation['display'];
							$data['location'] = $getLocation['name'];
							$getOther = false;
						}else {
							$getOther = true;
						}
					}else {
						$getOther = true;
					}
				}else {
					$getOther = true;
				}
				if ($getOther == false) {
					return array("return" => true, "data" => $data);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
}
?>