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
		if ($this->ready == true && $id > 0) {
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
		if (isset($getProfile['return'], $getProfile['data'], $getProfile['data'][0]) && $getProfile['return'] == true) {
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
	function online ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "add") {
			if (isset($object['id']) && is_numeric($object['id'])) $userId = $object['id']; else $userId = null;
			if ($userId == null) {
				return array("return" => false, "reason" => "");
			}
			$getOnlineRequest = "SELECT * FROM `users_online` WHERE `user.id` = '".$userId."' AND `client` = '".$_client->client(true)."' AND `updated` + '".$_parameter->get('users_online_timeout')."' > '".time()."' LIMIT 1;";
			$getOnlineQuery = mysqli_query($db, $getOnlineRequest);
			if (!$getOnlineQuery) {
				return array("return" => false, "reason" => "");
			}else {
				if (mysqli_num_rows($getOnlineQuery) == 0) {
					$addOnlineRequest = "INSERT INTO `giccos`.`users_online` (`id`, `user.id`, `time`, `updated`, `client`) VALUES (NULL, '".$userId."', '".time()."', '".time()."', '".$_client->client(true)."');";
					$addOnlineQuery = mysqli_query($db, $addOnlineRequest);
					if (!$addOnlineQuery) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					$getOnlineFetch = mysqli_fetch_assoc($getOnlineQuery);
					$onlineId = $getOnlineFetch['id'];
					$updateOnlineRequest = "UPDATE `users_online` SET `updated` = '".time()."', `client` = '".$_client->client(true)."' WHERE `id` = '".$onlineId."';";
					$updateOnlineQuery = mysqli_query($db, $updateOnlineRequest);
					if (!$updateOnlineQuery) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}
			}
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
	function active ($object) {
		if (isset($object['username']) && is_string($object['username'])) $username = $object['username']; else $username = null;
		if (isset($object['code']) && is_string($object['code'])) $code = $object['code']; else $code = null;
		if ($username == null || $code == null) {
			return array("return" => false, "reason" => "");
		}
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		$username = $_tool->convertDatabaseString($username);
		$code = $_tool->convertDatabaseString($code);
		if (!preg_match($_parameter->get('regex_username'), $username) && !preg_match($_parameter->get('regex_email'), $username)) {
			return array("return" => false, "reason" => "21");
		}else if (!preg_match("/^([a-zA-Z0-9]{8,10}$)/", $code)) {
			return array("return" => false, "reason" => "2");
		}
		$selectUserRequest = "SELECT `id`, `activated` FROM `users` WHERE (`username` = '{$username}' OR `email` = '{$username}') AND `activated.code` = '{$code}';";
		$selectUserQuery = mysqli_query($db, $selectUserRequest);
		if (!$selectUserQuery) {
			return array("return" => false, "reason" => "3");
		}else {
			$selectUserCount = mysqli_num_rows($selectUserQuery);
			$userFetch = mysqli_fetch_assoc($selectUserQuery);
			$userId = $userFetch['id'];
			$isActivated = $userFetch['activated'];
			if ($selectUserCount > 0 && $isActivated != "1") {
				$updateUserRequest = "UPDATE `users` SET `activated` = '1', `activated.time` = '".time()."' WHERE `id` = '{$userId}';";
				$updateUserQuery = mysqli_query($db, $updateUserRequest);
				if (!$updateUserQuery) {
					return array("return" => false, "reason" => "4");
				}
			}
			$getProfile = $this->getInfo(array("rows" => "`id`, `username`, `fullname`, `activated.time`, `activated.code`, `link`, `avatar.small`", "label" => "id", "value" => $userId));
			if (isset($getProfile['return'], $getProfile['data'], $getProfile['data'][0]) && $getProfile['return'] == true) {
				$dataProfile = $getProfile['data'][0];
				$pathPageActive = $_tool->links('accounts/active/'.$dataProfile['username'].'/'.$dataProfile['activated.code']);
				$dataArr = array(
					"id" => $dataProfile['id'],
					"time" => $dataProfile['activated.time'],//c85b2ea9a6
					"code" => $dataProfile['activated.code'],
					"username" => $dataProfile['username'],
					"fullname" => $dataProfile['fullname'],
					"link" => $dataProfile['link'],
					"avatar" => $dataProfile['avatar.small'],
					"url" => $pathPageActive
				);
				return array("return" => true, "data" => $dataArr);
			}else {
				return array("return" => true, "data" => array());
			}
		}
	}
	function getPassword ($object) {
		if (isset($object['type']) && is_string($object['type'])) $type = $object['type']; else $type = null;
		if ($type == null) {
			return array("return" => false, "reason" => "");
		}
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		if ($type == "add") {
			if (isset($object['username']) && is_string($object['username'])) $username = $object['username']; else $username = null;
			if ($type == null) {
				return array("return" => false, "reason" => "");
			}
			$username = $_tool->convertDatabaseString($username);
			if (!preg_match($_parameter->get('regex_username'), $username) && !preg_match($_parameter->get('regex_email'), $username)) {
				return array("return" => false, "reason" => "c#user:getpassword:002");
			}
			$selectUserRequest = "SELECT `id` FROM `users` WHERE `username` = '{$username}' OR `email` = '{$username}' LIMIT 1;";
			$selectUserQuery = mysqli_query($db, $selectUserRequest);
			if (!$selectUserQuery) {
				return array("return" => false, "reason" => "c#user:getpassword:001");
			}else {
				if (mysqli_num_rows($selectUserQuery) == 0) {
					return array("return" => false, "reason" => "c#user:getpassword:003");
				}else {
					$selectUserFetch = mysqli_fetch_assoc($selectUserQuery);
					$userId = $selectUserFetch['id'];
					$selectRowRequest = "SELECT * FROM `users_getpassword` WHERE `user.id` = '{$userId}' ORDER BY `id` DESC LIMIT 1;";
					$selectRowQuery = mysqli_query($db, $selectRowRequest);
					if (!$selectRowQuery) {
						return array("return" => false, "reason" => "c#user:getpassword:004");
					}else {
						if (mysqli_num_rows($selectRowQuery) == 0) {
							$createCode = true;
						}else {
							$selectRowFetch = mysqli_fetch_assoc($selectRowQuery);
							if (isset($selectRowFetch['time'], $selectRowFetch['id']) && $selectRowFetch['time'] + $_parameter->get('users_getpassword_timeout') <= time()) {
								$deleteRowRequest = "DELETE FROM `users_getpassword` WHERE `user.id` = '{$userId}' AND `id` <= '{$selectRowFetch['id']}';";
								$deleteRowQuery = mysqli_query($db, $deleteRowRequest);
								if (!$deleteRowQuery) {
									return array("return" => false, "reason" => "c#user:getpassword:005");
								}else {
									$createCode = true;
								}
							}else {
								$codeId = $selectRowFetch['id'];
							}
						}
						if (isset($createCode) && $createCode == true) {
							$randCode = hash('crc32', $userId.'::'.time().'::'.rand());
							$insertCodeRequest = "INSERT INTO `users_getpassword` (`id`, `time`, `user.id`, `code`) VALUES (NULL, '".time()."', '".$userId."', '".$randCode."');";
							$insertCodeQuery = mysqli_query($db, $insertCodeRequest);
							if (!$insertCodeQuery) {
								return array("return" => false, "reason" => "c#user:getpassword:006");
							}else {
								$codeId = mysqli_insert_id($db);
							}
						}
						if (isset($codeId) && is_numeric($codeId)) {
							$getCodeRowRequest = "SELECT * FROM `users_getpassword` WHERE `id` = '{$codeId}' LIMIT 1;";
							$getCodeRowQuery = mysqli_query($db, $getCodeRowRequest);
							if (!$getCodeRowQuery) {
								return array("return" => false, "reason" => "c#user:getpassword:007");
							}else {
								if (mysqli_num_rows($getCodeRowQuery) > 0) {
									$getCodeRowFetch = mysqli_fetch_assoc($getCodeRowQuery);
									$dataArr = array(
										"id" => $getCodeRowFetch['id'],
										"time" => $getCodeRowFetch['time']
									);
									return array("return" => true, "data" => $dataArr);
								}else {
									return array("return" => false, "reason" => "c#user:getpassword:008");
								}
							}
						}else {
							return array("return" => false, "reason" => "c#user:getpassword:009");
						}
					}
				}
			}
		}else if ($type == "check") {
			if (isset($object['code']) && is_string($object['code'])) $code = $object['code']; else $code = null;
			if ($code == null) {
				return array("return" => false, "reason" => "");
			}
			$code = $_tool->convertDatabaseString($code);
			if (!preg_match("/^([a-zA-Z0-9]{8,10}$)/", $code)) {
				return array("return" => false, "reason" => "c#user:getpassword:010");
			}
			$checkCodeRequest = "SELECT * FROM `users_getpassword` WHERE `time` + '".$_parameter->get('users_getpassword_timeout')."' > '".time()."' AND `code` = '".$code."' LIMIT 1;";
			$checkCodeQuery = mysqli_query($db, $checkCodeRequest);
			if (!$checkCodeQuery) {
				return array("return" => false, "reason" => "c#user:getpassword:011");
			}else {
				if (mysqli_num_rows($checkCodeQuery) > 0) {
					$dataArr = array();
					$checkCodeFetch = mysqli_fetch_assoc($checkCodeQuery);
					$requestTime = $checkCodeFetch['time'];
					$userId = $checkCodeFetch['user.id'];
					$getProfile = $this->getInfo(array("rows" => "`id`, `username`, `fullname`, `link`, `avatar.small`", "label" => "id", "value" => $userId, "limit" => "LIMIT 1"));
					if (isset($getProfile['return'], $getProfile['data'], $getProfile['data'][0]) && $getProfile['return'] == true) {
						$dataProfile = $getProfile['data'][0];
						$dataArr = array(
							"id" => $dataProfile['id'],
							"time" => $requestTime,
							"code" => $code,
							"username" => $dataProfile['username'],
							"fullname" => $dataProfile['fullname'],
							"link" => $dataProfile['link'],
							"avatar" => $dataProfile['avatar.small']
						);
					}else {
						return array("return" => false, "reason" => "c#user:getpassword:012");
					}
					$deleteCodeWaitingRequest = "DELETE FROM `users_getpassword` WHERE `user.id` = '".$checkCodeFetch['user.id']."' AND `code` != '".$code."';";
					$deleteCodeWaitingQuery = mysqli_query($db, $deleteCodeWaitingRequest);
					if (!$deleteCodeWaitingQuery) {
						//.
					}
					return array("return" => true, "data" => $dataArr);
				}else {
					return array("return" => false, "reason" => "c#user:getpassword:013");
				}
			}
		}else if ($type == "use") {
			if (isset($object['password']) && is_string($object['password'])) $password = $object['password']; else $password = null;
			if (isset($object['code']) && is_string($object['code'])) $code = $object['code']; else $code = null;
			if ($password == null || $code == null) {
				return array("return" => false, "reason" => "c#user:getpassword:");
			}
			$password = $_tool->convertDatabaseString($password);
			$code = $_tool->convertDatabaseString($code);
			if (!preg_match($_parameter->get('regex_password'), $password)) {
				return array("return" => false, "reason" => "c#user:getpassword:");
			}else if (!preg_match("/^([a-zA-Z0-9]{8,10}$)/", $code)) {
				return array("return" => false, "reason" => "c#user:getpassword:");
			}
			$isCodeAvailableRequest = "SELECT * FROM `users_getpassword` WHERE `time` + '".$_parameter->get('users_getpassword_timeout')."' > '".time()."' AND `code` = '".$code."' LIMIT 1;";
			$isCodeAvailableQuery = mysqli_query($db, $isCodeAvailableRequest);
			if (!$isCodeAvailableQuery) {
				return array("return" => false, "reason" => "c#user:getpassword:");
			}else {
				if (mysqli_num_rows($isCodeAvailableQuery) > 0) {
					$isCodeAvailableFetch = mysqli_fetch_assoc($isCodeAvailableQuery);
					if (isset($isCodeAvailableFetch['user.id']) && is_numeric($isCodeAvailableFetch['user.id'])) {
						$userId = $isCodeAvailableFetch['user.id'];
						$getProfile = $this->getInfo(array("rows" => "`token`", "label" => "id", "value" => $userId));
						if (isset($getProfile['return'], $getProfile['data'], $getProfile['data'][0]) && $getProfile['return'] == true) {
							$userProfile = $getProfile['data'][0];
							$passwordHash = hash('sha1', hash('crc32', $password).'::'.hash('md5', $password));
							$passwordBase = $_tool->hash('encode', $password, $userProfile['token'].'::'.$_parameter->get('hash_user_password'));
							$updatePasswordRequest = "UPDATE `users` SET `password` = '{$passwordHash}', `password.hash` = '{$passwordBase}' WHERE `id` = '{$userId}';";
							$updatePasswordQuery = mysqli_query($db, $updatePasswordRequest);
							if (!$updatePasswordQuery) {
								return array("return" => false, "reason" => "c#user:getpassword:");
							}else {
								$deleteCodeWaitingRequest = "DELETE FROM `users_getpassword` WHERE `user.id` = '".$userId."';";
								$deleteCodeWaitingQuery = mysqli_query($db, $deleteCodeWaitingRequest);
								if (!$deleteCodeWaitingQuery) {
									//.
								}
								return array("return" => true);
							}
						}else {
							return array("return" => false, "reason" => "c#user:getpassword:");
						}
					}else {
						return array("return" => false, "reason" => "c#user:getpassword:");
					}
				}else {
					return array("return" => false, "reason" => "c#user:getpassword:");
				}
			}
		}else {
			return array("return" => false, "reason" => "2");
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
				$clientToken = $_client->client(true);
				mysqli_query($db, "INSERT INTO `users_login` (`id`, `time`, `user.id`, `status`, `client`) VALUES (NULL, '{$_tool->timeNow()}', '{$userId}', '1', '{$clientToken}');");
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
			if (isset($getProfile['return'], $getProfile['data'], $getProfile['data'][0]) && $getProfile['return'] == true) {
				$userOnlineAdd = $this->online(array("action" => "add", "id" => $userId));
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
				if (!isset($userProfile['ip'])) {
					return array("return" => false, "reason" => "");
				}
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
				$userProfile['mode']['safe'] = $_parameter->get('user_mode.safe_default');
				$userProfile['messages']['translate'] = $_parameter->get('user_messages.translate_default');
				$userProfile['private']['tag'] = $_parameter->get('user_private.tag_default');
				$userProfile['private']['search'] = $_parameter->get('user_private.search_default');
				$userProfile['private']['status']['view'] = $userProfile['private']['status']['comment'] = $userProfile['private']['status']['share'] = $_parameter->get('user_private.status_default');
				$userProfile['private']['photos']['view'] = $userProfile['private']['photos']['comment'] = $userProfile['private']['photos']['share'] = $_parameter->get('user_private.photos_default');
				$userProfile['private']['music']['view'] = $userProfile['private']['music']['comment'] = $userProfile['private']['music']['share'] = $_parameter->get('user_private.music_default');
				$userProfile['private']['videos']['view'] = $userProfile['private']['videos']['comment'] = $userProfile['private']['videos']['share'] = $_parameter->get('user_private.videos_default');
				$userProfile['private']['info']['friends'] = $userProfile['private']['info']['birthday'] = $userProfile['private']['info']['country'] = $userProfile['private']['info']['live'] = $userProfile['private']['info']['email'] = $userProfile['private']['info']['phone'] = $_parameter->get('user_private.info_default');
				$userProfile['live'] = $userProfile['live.description'] = $userProfile['country'] = $userProfile['country.description'] = null;
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
				$userProfile['activated.code'] = hash('crc32', hash('md5', $userProfile['token'].'::'.$userProfile['username'].'::'.$userProfile['time']));
				$userProfile['activated.time'] = $userProfile['activated'] = $userProfile['verified'] = $userProfile['dead'] = 0;
				$createUserRequest = "
				INSERT INTO 
				`users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `mode.safe`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`) 
				VALUES 
				(NULL, '{$userProfile['time']}', '{$userProfile['token']}', '{$userProfile['secret']}', '{$userProfile['username']}', '{$userProfile['email']}', '{$userProfile['password_hash']}', '{$userProfile['password_base']}', '{$userProfile['phone']}', '{$userProfile['fullname']}', '{$userProfile['firstname']}', '{$userProfile['middlename']}', '{$userProfile['lastname']}', '{$userProfile['formatname']}', '{$userProfile['nickname']}', '{$userProfile['gender']}', null, '{$userProfile['birthday']['stamp']}', '{$userProfile['birthday']['format']}', null, null, null, '{$userProfile['language']}', '{$userProfile['timezone']}', null, null, '{$userProfile['avatar']['large']}', '{$userProfile['avatar']['medium']}', '{$userProfile['avatar']['small']}', '{$userProfile['cover']['large']}', '{$userProfile['cover']['medium']}', '{$userProfile['cover']['small']}', '{$userProfile['theme']}', '{$userProfile['link']}', '{$userProfile['mode']['safe']}', '{$userProfile['messages']['translate']}', '{$userProfile['private']['tag']}', '{$userProfile['private']['search']}', '{$userProfile['private']['info']['friends']}', '{$userProfile['private']['info']['birthday']}', '{$userProfile['private']['info']['country']}', '{$userProfile['private']['info']['live']}', '{$userProfile['private']['info']['email']}', '{$userProfile['private']['info']['phone']}', '{$userProfile['private']['status']['view']}', '{$userProfile['private']['status']['comment']}', '{$userProfile['private']['status']['share']}', '{$userProfile['private']['photos']['view']}', '{$userProfile['private']['photos']['comment']}', '{$userProfile['private']['photos']['share']}', '{$userProfile['private']['music']['view']}', '{$userProfile['private']['music']['comment']}', '{$userProfile['private']['music']['share']}', '{$userProfile['private']['videos']['view']}', '{$userProfile['private']['videos']['comment']}', '{$userProfile['private']['videos']['share']}', '{$userProfile['country']}', '{$userProfile['country.description']}', '{$userProfile['live']}', '{$userProfile['live.description']}', '{$userProfile['units']['temperature']}', '{$userProfile['units']['speed']}', '{$userProfile['units']['pressure']}', '{$userProfile['units']['distance']}', '{$userProfile['videos']['replay']}', '{$userProfile['music']['replay']}', '{$userProfile['activated']}', '{$userProfile['activated.code']}', '{$userProfile['activated.time']}', '{$userProfile['verified']}', '{$userProfile['dead']}');
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
 		// setcookie("MesOpt_PressEnter", null, $this->class['_tool']->timeNow() - 31536000, "/", $_SESSION["http"]['secure'], false);
 		// setcookie("MpOpt_volume", null, $this->class['_tool']->timeNow() - 31536000, "/", false, true);
 		// setcookie("MpOpt_rememberTime", null, $this->class['_tool']->timeNow() - 31536000, "/", $_SESSION["http"]['secure'], false);
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
			if (!$getInfoQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($getInfoQuery) > 0) {
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
		if (isset($object['id']) && is_string($object['id'])) $id = $object['id']; else $id = null;
		if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
		if (isset($object['value']) && is_string($object['value'])) $value = $object['value']; else $value = null;
		if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
		if ($id == null) {
			return array("return" => false, "reason" => "");
		}else {
			$db = $this->class['_db']->port('beta');
		}
		if ($label == null && $value == null) {
			$getContactRequestPush = null;
		}else {
			$getContactRequestPush = "AND `{$label}` = '{$value}'";
		}
		$getContactRequest = "SELECT * FROM `users_contact` WHERE `user.id` = '{$id}' {$getContactRequestPush} {$limit}";
		$getContactQuery = mysqli_query($db, $getContactRequest);
		if (!$getContactQuery) {
			return array("return" => false, "reason" => "");
		}else {
			$dataArr = array();
			while ($getContactFetch = mysqli_fetch_assoc($getContactQuery)) {
				$dataArr[] = $getContactFetch;
			}
			$countArr = count($dataArr);
			return array("return" => true, "count" => $countArr, "data" => $dataArr);
		}
	}
	function getEducation ($object) {
		if (isset($object['id']) && is_string($object['id'])) $id = $object['id']; else $id = null;
		if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
		if (isset($object['value']) && is_string($object['value'])) $value = $object['value']; else $value = null;
		if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
		if ($id == null) {
			return array("return" => false, "reason" => "");
		}else {
			$db = $this->class['_db']->port('beta');
		}
		if ($label == null && $value == null) {
			$getEducationRequestPush = null;
		}else {
			$getEducationRequestPush = "AND `{$label}` = '{$value}'";
		}
		$getEducationRequest = "SELECT * FROM `users_education` WHERE `user.id` = '{$id}' {$getEducationRequestPush} {$limit}";
		$getEducationQuery = mysqli_query($db, $getEducationRequest);
		if (!$getEducationQuery) {
			return array("return" => false, "reason" => "");
		}else {
			$dataArr = array();
			while ($getEducationFetch = mysqli_fetch_assoc($getEducationQuery)) {
				$dataArr[] = $getEducationFetch;
			}
			$countArr = count($dataArr);
			return array("return" => true, "count" => $countArr, "data" => $dataArr);
		}
	}
	function getWorkplaces ($object) {
		if (isset($object['id']) && is_string($object['id'])) $id = $object['id']; else $id = null;
		if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
		if (isset($object['value']) && is_string($object['value'])) $value = $object['value']; else $value = null;
		if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
		if ($id == null) {
			return array("return" => false, "reason" => "");
		}else {
			$db = $this->class['_db']->port('beta');
		}
		if ($label == null && $value == null) {
			$getWorkplacesRequestPush = null;
		}else {
			$getWorkplacesRequestPush = "AND `{$label}` = '{$value}'";
		}
		$getWorkplacesRequest = "SELECT * FROM `users_workplaces` WHERE `user.id` = '{$id}' {$getWorkplacesRequestPush} {$limit}";
		$getWorkplacesQuery = mysqli_query($db, $getWorkplacesRequest);
		if (!$getWorkplacesQuery) {
			return array("return" => false, "reason" => "");
		}else {
			$dataArr = array();
			while ($getWorkplacesFetch = mysqli_fetch_assoc($getWorkplacesQuery)) {
				$dataArr[] = $getWorkplacesFetch;
			}
			$countArr = count($dataArr);
			return array("return" => true, "count" => $countArr, "data" => $dataArr);
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
}
?>