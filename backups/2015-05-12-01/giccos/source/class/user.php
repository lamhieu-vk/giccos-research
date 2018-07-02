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
	function reloadProfile ($id) {
		$getProfile = $this->getInfo(array("id" => $id, "rows" => "*"));
		if (isset($getProfile['return']) && $getProfile['return'] == true) {
			$_SESSION["user"] = $getProfile['data'];
			$_SESSION["user"]['login'] = true;
			return array("return" => true);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function login ($object) {
		$this->ready = false;
		if (isset($object['type']) && is_numeric($object['type'])) $type = $object['type']; else $type = 0;
		if (isset($object['user']) && is_array($object['user'])) $user = $object['user']; else $user = null;
		if (isset($object['remember']) && is_bool($object['remember'])) $remember = $object['remember']; else $remember = false;
		if (isset($object['auto']) && is_bool($object['auto'])) $auto = $object['auto']; else $auto = false;
		if (!$auto) {
			//.
		}
		if ($type == 0 || $user == null) {
			return array("return" => false, "reason" => "");
		}else {
			$db = $this->class['_db']->port('beta');
		}
		if ($type == 1 && isset($user['username'], $user['password'])) {
			if (!preg_match("/^([a-zA-Z0-9\.\_]{6,30})$/", $user['username']) AND !preg_match("/^(([\w-\.]+([\w-]+\.)+[\w-]{2,6}))$/", $user['username'])) {
				return array("return" => false, "reason" => "ERROR#USER_001");
			}else if (!preg_match("/^(\S{8,})$/", $user['password'])) {
				return array("return" => false, "reason" => "ERROR#USER_002");
			}else {
				$key = $this->class['_parameter']->get('hash_user_password');
				$username = $email = $user['username'];
				$password = hash("sha1", hash("crc32", $user['password'])."::".hash("md5", $user['password']));
				$num = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `users` WHERE `username` = '{$username}' OR `email` = '{$email}'"));
				if ($num == 0) {
					return array("return" => false, "reason" => "ERROR#USER_003");
				}else {
					$timeSleep = 0;
					$sql =  "SELECT `id` FROM `users` WHERE (`username` = '{$username}' OR `email` = '{$email}') AND `password` = '{$password}'";
					$query = mysqli_query($db, $sql);
					if ($query && mysqli_num_rows($query) == 0) {
						$thisUserId = mysqli_fetch_assoc(mysqli_query($db, "SELECT `id` FROM `users` WHERE (`username` = '{$username}' OR `email` = '{$email}')"))['id'];
						if (!isset($_SESSION["user"]['login']['logs'])) {
							$_SESSION["user"]['login']['logs'] = array();
						}else {
							if (is_array($_SESSION["user"]['login']['logs']) && count($_SESSION["user"]['login']['logs']) > 0) {
								$countTry = 0;
								$loginTimeAllow = $this->class['_parameter']->get("security_accounts_loginTimesIncorrect") * $this->class['_parameter']->get("security_accounts_loginTimeAllow");
								foreach ($_SESSION["user"]['login']['logs'] as $key => $tryLoginThis) {
									if ($tryLoginThis['id'] == $thisUserId && $tryLoginThis['time'] + $loginTimeAllow > $this->class['_tool']->timeNow()) {
										$countTry++;
									}
								}
								if ($countTry > $this->class['_parameter']->get("security_accounts_loginTimesIncorrect")) {
									$timeSleep = 3 * intval($countTry / $this->class['_parameter']->get("security_accounts_loginTimesIncorrect"));
									sleep($timeSleep);
									//.
								}
							}
						}
						$_SESSION["user"]['login']['logs'][] = array("id" => $thisUserId, "password" => $password, "time" => $this->class['_tool']->timeNow());
						$browser = $this->class['_client']->browser();
						mysqli_query($db, "INSERT INTO `users_login` (`id`, `time`, `user.id`, `status`, `client`, `ip`, `platform`, `browser.name`, `browser.version`) VALUES (NULL, '{$this->class['_tool']->timeNow()}', '{$thisUserId}', '0', '{$this->class['_client']->client(true)}', '{$browser['ip']}', '{$browser['platform']}', '{$browser['name']}', '{$browser['version']}')");
						return array("return" => false, "reason" => "ERROR#USER_004 {$sql}");
					}else {
						if (isset($_SESSION["user"]['login']['logs'])) {
							unset($_SESSION["user"]['login']['logs']);
						}
						$id = mysqli_fetch_assoc($query)['id'];
						$browser = $this->class['_client']->browser();
						mysqli_query($db, "INSERT INTO `users_login` (`id`, `time`, `user.id`, `status`, `client`, `ip`, `platform`, `browser.name`, `browser.version`) VALUES (NULL, '{$this->class['_tool']->timeNow()}', '{$id}', '1', '{$this->class['_client']->client(true)}', '{$browser['ip']}', '{$browser['platform']}', '{$browser['name']}', '{$browser['version']}')");
						$this->ready = true;
					}
				}
			}
		}else if ($type == 2 && isset($user['id'])) {
			$query = mysqli_query($db, "SELECT `id` FROM `users` WHERE `id` = '{$user['id']}'");
			$num = mysqli_num_rows($query);
			if ($num == 0) {
				return array("return" => false, "reason" => "");
			}else {
				$id = $user['id'];
				$this->ready = true;
				if (isset($_SESSION["login"])) {
					unset($_SESSION["login"]);
				}
			}
		}
		if ($this->ready == true && $id > 0) {
			$getProfile = $this->getInfo(array("id" => $id, "rows" => "*"));
			if ($getProfile['return'] == true) {
				$_SESSION["user"] = $getProfile['data'];
				$this->mode("user", $id);
				$_SESSION["user"]['login'] = true;
				$time = $this->class['_tool']->timeNow();
				if ($remember == true) {
					$remember = array();
					$remember['client'] = $this->class['_client']->client(true);
					$remember['token'] = hash("crc32", $remember['client'].'::'.$id.'::'.rand());
					$expires = $this->class['_tool']->timeNow() + 31536000;
					mysqli_query($db, "DELETE FROM `users_remembers` WHERE `client` = '{$remember['client']}'");
					mysqli_query($db, "INSERT INTO `users_remembers` (`id`, `user.id`, `client`, `token`, `time`) VALUES (null, '{$id}', '{$remember['client']}', '{$remember['token']}', '{$expires}')");
					setcookie("AccRemember", $remember['token'], $this->class['_tool']->timeNow() + 31536000, "/", $_SESSION["http"]['secure'], false);
				}else {
					if (isset($_COOKIE["AccRemember"])) {
						setcookie("AccRemember", null, $this->class['_tool']->timeNow() - 31536000, "/", $_SESSION["http"]['secure'], false);
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
				`users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `slogan`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `verified`, `dead`) 
				VALUES 
				(NULL, '{$userProfile['time']}', '{$userProfile['token']}', '{$userProfile['secret']}', '{$userProfile['username']}', '{$userProfile['email']}', '{$userProfile['password_hash']}', '{$userProfile['password_base']}', '{$userProfile['phone']}', '{$userProfile['fullname']}', '{$userProfile['firstname']}', '{$userProfile['middlename']}', '{$userProfile['lastname']}', '{$userProfile['formatname']}', '{$userProfile['nickname']}', '{$userProfile['gender']}', null, '{$userProfile['birthday']['stamp']}', '{$userProfile['birthday']['format']}', null, null, null, '{$userProfile['language']}', '{$userProfile['timezone']}', null, null, '{$userProfile['avatar']['large']}', '{$userProfile['avatar']['medium']}', '{$userProfile['avatar']['small']}', '{$userProfile['cover']['large']}', '{$userProfile['cover']['medium']}', '{$userProfile['cover']['small']}', '{$userProfile['theme']}', '{$userProfile['link']}', '{$userProfile['private']['tag']}', '{$userProfile['private']['search']}', '{$userProfile['private']['info']['friends']}', '{$userProfile['private']['info']['birthday']}', '{$userProfile['private']['info']['country']}', '{$userProfile['private']['info']['live']}', '{$userProfile['private']['info']['email']}', '{$userProfile['private']['info']['phone']}', '{$userProfile['private']['status']['view']}', '{$userProfile['private']['status']['comment']}', '{$userProfile['private']['status']['share']}', '{$userProfile['private']['photos']['view']}', '{$userProfile['private']['photos']['comment']}', '{$userProfile['private']['photos']['share']}', '{$userProfile['private']['music']['view']}', '{$userProfile['private']['music']['comment']}', '{$userProfile['private']['music']['share']}', '{$userProfile['private']['videos']['view']}', '{$userProfile['private']['videos']['comment']}', '{$userProfile['private']['videos']['share']}', '{$userProfile['country']}', '{$userProfile['live']}', '{$userProfile['units']['temperature']}', '{$userProfile['units']['speed']}', '{$userProfile['units']['pressure']}', '{$userProfile['units']['distance']}', '{$userProfile['videos']['replay']}', '{$userProfile['music']['replay']}', '{$userProfile['activated']}', '{$userProfile['verified']}', '{$userProfile['dead']}');
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
			if ($type == "update") {
				if (isset($object['label'])) $label = addslashes($object['label']); else $label = null;
				if (isset($object['value'])) $value = addslashes($object['value']); else $value = null;
				$update = mysqli_query($this->class['_db']->port('beta'),"UPDATE `users` SET `{$label}` = '{$value}' WHERE `id` = '{$this->user['id']}'");
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
		if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = "*";
		if (isset($object['id']) && (is_string($object['id']) || is_numeric($object['id']))) $id = $object['id']; else $id = 0;
		if ($id > 0) {
			$_tool = $this->class['_tool'];
			$rBe = preg_match("/(secret)/", $rows);
			if (!$rBe && !preg_match("/(\*)/", $rows)) {
				$rows .= ", `secret`";
			}
			$sql = "SELECT {$rows} FROM `users` WHERE `id` = '{$id}' LIMIT 1";
			$query = mysqli_query($this->class['_db']->port('beta'), $sql);
			if ($query && mysqli_num_rows($query) > 0) {
				$fetch = mysqli_fetch_assoc($query);
				if (isset($fetch['password'])) {
					unset($fetch['password']);
				}
				if (isset($fetch['link'])) {
					$fetch['link'] = $_tool->links($fetch['link']);
				}
				if (isset($fetch['avatar.large'])) {
					if (preg_match("/^(\:\:default)/", $fetch['avatar.large'])) {
						$fetch['avatar.large'] = $_tool->links($fetch['avatar.large']);
					}else if ($fetch['avatar.large'] == null || $fetch['avatar.large'] == "0") {
						$fetch['avatar.large'] = $_tool->links('::default::user::avatar::large');
					}else {
						$fetch['avatar.large'] = $_tool->hash('decode', $fetch['avatar.large'], $id."_".$fetch['secret']);
						$fetch['avatar.large'] = $_tool->links($fetch['avatar.large'], false);
					}
				}
				if (isset($fetch['avatar.medium'])) {
					if (preg_match("/^(\:\:default)/", $fetch['avatar.medium'])) {
						$fetch['avatar.medium'] = $_tool->links($fetch['avatar.medium']);
					}else if ($fetch['avatar.medium'] == null || $fetch['avatar.medium'] == "0") {
						$fetch['avatar.medium'] = $_tool->links('::default::user::avatar::medium');
					}else {
						$fetch['avatar.medium'] = $_tool->hash('decode', $fetch['avatar.medium'], $id."_".$fetch['secret']);
						$fetch['avatar.medium'] = $_tool->links($fetch['avatar.medium'], false);
					}
				}
				if (isset($fetch['avatar.small'])) {
					if (preg_match("/^(\:\:default)/", $fetch['avatar.small'])) {
						$fetch['avatar.small'] = $_tool->links($fetch['avatar.small']);
					}else if ($fetch['avatar.small'] == null || $fetch['avatar.small'] == "0") {
						$fetch['avatar.small'] = $_tool->links('::default::user::avatar::small');
					}else {
						$fetch['avatar.small'] = $_tool->hash('decode', $fetch['avatar.small'], $id."_".$fetch['secret']);
						$fetch['avatar.small'] = $_tool->links($fetch['avatar.small'], false);
					}
				}
				if (isset($fetch['cover.large'])) {
					if (preg_match("/^(\:\:default)/", $fetch['cover.large'])) {
						$fetch['cover.large'] = $_tool->links($fetch['cover.large']);
					}else if ($fetch['cover.large'] == null || $fetch['cover.large'] == "0") {
						$fetch['cover.large'] = $_tool->links('::default::user::cover::large');
					}else {
						$fetch['cover.large'] = $_tool->hash('decode', $fetch['cover.large'], $id."_".$fetch['secret']);
						$fetch['cover.large'] = $_tool->links($fetch['cover.large'], false);
					}
				}
				if (isset($fetch['cover.medium'])) {
					if (preg_match("/^(\:\:default)/", $fetch['cover.medium'])) {
						$fetch['cover.medium'] = $_tool->links($fetch['cover.medium']);
					}else if ($fetch['cover.medium'] == null || $fetch['cover.medium'] == "0") {
						$fetch['cover.medium'] = $_tool->links('::default::user::cover::medium');
					}else {
						$fetch['cover.medium'] = $_tool->hash('decode', $fetch['cover.medium'], $id."_".$fetch['secret']);
						$fetch['cover.medium'] = $_tool->links($fetch['cover.medium'], false);
					}
				}
				if (isset($fetch['cover.large'])) {
					if (preg_match("/^(\:\:default)/", $fetch['cover.small'])) {
						$fetch['cover.small'] = $_tool->links($fetch['cover.small']);
					}else if ($fetch['cover.small'] == null || $fetch['cover.small'] == "0") {
						$fetch['cover.small'] = $_tool->links('::default::user::cover::small');
					}else {
						$fetch['cover.small'] = $_tool->hash('decode', $fetch['cover.small'], $id."_".$fetch['secret']);
						$fetch['cover.small'] = $_tool->links($fetch['cover.small'], false);
					}
				}
				if (!$rBe && !preg_match("/(\*)/", $rows)) {
					if (isset($fetch['secret'])) {
						unset($fetch['secret']);
					}
					if (isset($fetch['token'])) {
						unset($fetch['token']);
					}
				}
				return array("return" => true, "data" => $fetch);
			}else {
				return array("return" => false, "reason" => "");
			}
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
			if ($type == "guys" || $type == "users") {
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