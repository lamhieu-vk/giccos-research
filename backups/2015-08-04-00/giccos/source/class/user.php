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
		//.
		$_client = $this->class['_client'];
		//.
		if (!isset($_SESSION["user"])) {
			$_SESSION["user"] = array();
		}
		$userData = $_SESSION["user"];
		if (isset($userData, $userData['id'], $userData['login']) && $userData['login'] == true) {
			$isLogged = true;
		}else {
			$isLogged = false;
		}
		if (!isset($isLogged) || $isLogged == false) {
			$clientToken = $_client->client(true);
			$_SESSION["user"] = array(
				"login" => false, 
				"id" => 0, 
				"mode" => array(
					"type" => "guy", 
					"id" => $clientToken
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
			$clientToken = $_client->client(true);
			$this->user = array(
				"login" => false, 
				"id" => 0, 
				"mode" => array(
					"type" => "guy", 
					"id" => $clientToken
				)
			);
		}
	}
	function guide ($object) {
		//.
	}
	function exists ($object) {
		//.
		$_tool = $this->class['_tool'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['value']) && is_string($object['value'])) $userValue = $_tool->convertDatabaseString($object['value']); else $userLabel = null;
		if (isset($object['label']) && is_string($object['label'])) $userLabel = $_tool->convertDatabaseString($object['label']); else $userLabel = null;
		if ($userLabel == null || $userValue == null) {
			return array("return" => false, "reason" => "");
		}
		$existsUserRequest = "SELECT `id` FROM `users` WHERE `".$userLabel."` = '".$userValue."' LIMIT 1;";
		$existsUserQuery = mysqli_query($db, $existsUserRequest);
		if (!$existsUserQuery) {
			return array("return" => false, "reason" => "");
		}else {
			if (mysqli_num_rows($existsUserQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				return array("return" => true, "exists" => true);
			}
		}
	}
	function active ($object) {
		//.
		$_tool = $this->class['_tool'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "create") {
			if (isset($object['username']) && is_string($object['username'])) $username = $object['username']; else $username = null;
			if ($username == null) {
				return array("return" => false, "reason" => "c#user.f:active.o:001");
			}
			if (!preg_match($_parameter->get('regex_username'), $username) && !preg_match($_parameter->get('regex_email'), $username)) {
				return array("return" => false, "reason" => "c#user.f:active.o:002");
			}
			$activeToken = hash('crc32', hash('md5', $username.'::'.time().'::'.rand()));
			$activeTime = time();
			$dataArr = array("time" => $activeTime, "code" => $activeToken);
			return array("return" => true, "data" => $dataArr);
		}else if ($action == "use") {
			if (isset($object['username']) && is_string($object['username'])) $username = $_tool->convertDatabaseString($object['username']); else $username = null;
			if (isset($object['code']) && is_string($object['code'])) $code = $_tool->convertDatabaseString($object['code']); else $code = null;
			if ($username == null || $code == null) {
				return array("return" => false, "reason" => "c#user.f:active.o:003");
			}
			if (!preg_match($_parameter->get('regex_username'), $username) && !preg_match($_parameter->get('regex_email'), $username)) {
				return array("return" => false, "reason" => "c#user.f:active.o:004");
			}else if (!preg_match("/^([a-zA-Z0-9]{8,10}$)/", $code)) {
				return array("return" => false, "reason" => "c#user.f:active.o:005");
			}
			$existsUserRequest = "SELECT `id`, `activated`, `activated.code`, `activated.time` FROM `users` WHERE `username` = '".$username."' OR `email` = '".$username."' LIMIT 1;";
			$existsUserQuery = mysqli_query($db, $existsUserRequest);
			if (!$existsUserQuery) {
				return array("return" => false, "reason" => "c#user.f:active.o:006");
			}else {
				if (mysqli_num_rows($existsUserQuery) == 0) {
					return array("return" => false, "reason" => "c#user.f:active.o:007");
				}else {
					$userFetch = mysqli_fetch_assoc($existsUserQuery);
					if ($userFetch['activated.code'] != $code) {
						return array("return" => false, "reason" => "c#user.f:active.o:008");
					}else {
						if ($userFetch['activated'] == "0") {
							$userFetch['activated.time'] = time();
							$updateUserRequest = "UPDATE `users` SET `activated` = '1', `activated.time` = '".time()."' WHERE `id` = '".$userFetch['id']."';";
							$updateUserQuery = mysqli_query($db, $updateUserRequest);
							if (!$updateUserQuery) {
								return array("return" => false, "reason" => "c#user.f:active.o:009");
							}
						}
						$dataArr = array(
							"user.id" => $userFetch['id'],
							"activated" => true,
							"time" => $userFetch['activated.time']
						);
						return array("return" => true, "data" => $dataArr);
					}

				}
			}
		}else {
			return array("return" => false, "reason" => "c#user.f:active.o:010");
		}
	}	
	function getpassword ($object) {
		//.
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['type']; else $action = null;
		if ($action == "add") {
			if (isset($object['username']) && is_string($object['username'])) $username = $object['username']; else $username = null;
			if ($username == null) {
				return array("return" => false, "reason" => "");
			}
			$username = $_tool->convertDatabaseString($username);
			if (!preg_match($_parameter->get('regex_username'), $username) && !preg_match($_parameter->get('regex_email'), $username)) {
				return array("return" => false, "reason" => "c#user.f:getpassword.o:002");
			}
			$selectUserRequest = "SELECT `id` FROM `users` WHERE `username` = '{$username}' OR `email` = '{$username}' LIMIT 1;";
			$selectUserQuery = mysqli_query($db, $selectUserRequest);
			if (!$selectUserQuery) {
				return array("return" => false, "reason" => "c#user.f:getpassword.o:001");
			}else {
				if (mysqli_num_rows($selectUserQuery) == 0) {
					return array("return" => false, "reason" => "c#user.f:getpassword.o:003");
				}else {
					$selectUserFetch = mysqli_fetch_assoc($selectUserQuery);
					$userId = $selectUserFetch['id'];
					$selectRowRequest = "SELECT * FROM `users_getpassword` WHERE `user.id` = '{$userId}' ORDER BY `id` DESC LIMIT 1;";
					$selectRowQuery = mysqli_query($db, $selectRowRequest);
					if (!$selectRowQuery) {
						return array("return" => false, "reason" => "c#user.f:getpassword.o:004");
					}else {
						if (mysqli_num_rows($selectRowQuery) == 0) {
							$createCode = true;
						}else {
							$selectRowFetch = mysqli_fetch_assoc($selectRowQuery);
							if (isset($selectRowFetch['time'], $selectRowFetch['id']) && $selectRowFetch['time'] + $_parameter->get('users_getpassword_timeout') <= time()) {
								$deleteRowRequest = "DELETE FROM `users_getpassword` WHERE `user.id` = '{$userId}' AND `id` <= '{$selectRowFetch['id']}';";
								$deleteRowQuery = mysqli_query($db, $deleteRowRequest);
								if (!$deleteRowQuery) {
									return array("return" => false, "reason" => "c#user.f:getpassword.o:005");
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
								return array("return" => false, "reason" => "c#user.f:getpassword.o:006");
							}else {
								$codeId = mysqli_insert_id($db);
							}
						}
						if (isset($codeId) && is_numeric($codeId)) {
							$getCodeRowRequest = "SELECT * FROM `users_getpassword` WHERE `id` = '{$codeId}' LIMIT 1;";
							$getCodeRowQuery = mysqli_query($db, $getCodeRowRequest);
							if (!$getCodeRowQuery) {
								return array("return" => false, "reason" => "c#user.f:getpassword.o:007");
							}else {
								if (mysqli_num_rows($getCodeRowQuery) > 0) {
									$getCodeRowFetch = mysqli_fetch_assoc($getCodeRowQuery);
									$dataArr = array(
										"id" => $getCodeRowFetch['id'],
										"time" => $getCodeRowFetch['time']
									);
									return array("return" => true, "data" => $dataArr);
								}else {
									return array("return" => false, "reason" => "c#user.f:getpassword.o:008");
								}
							}
						}else {
							return array("return" => false, "reason" => "c#user.f:getpassword.o:009");
						}
					}
				}
			}
		}else if ($action == "check") {
			if (isset($object['code']) && is_string($object['code'])) $code = $object['code']; else $code = null;
			if ($code == null) {
				return array("return" => false, "reason" => "");
			}
			$code = $_tool->convertDatabaseString($code);
			if (!preg_match("/^([a-zA-Z0-9]{8,10}$)/", $code)) {
				return array("return" => false, "reason" => "c#user.f:getpassword.o:010");
			}
			$checkCodeRequest = "SELECT * FROM `users_getpassword` WHERE `time` + '".$_parameter->get('users_getpassword_timeout')."' > '".time()."' AND `code` = '".$code."' LIMIT 1;";
			$checkCodeQuery = mysqli_query($db, $checkCodeRequest);
			if (!$checkCodeQuery) {
				return array("return" => false, "reason" => "c#user.f:getpassword.o:011");
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
						return array("return" => false, "reason" => "c#user.f:getpassword.o:012");
					}
					$deleteCodeWaitingRequest = "DELETE FROM `users_getpassword` WHERE `user.id` = '".$checkCodeFetch['user.id']."' AND `code` != '".$code."';";
					$deleteCodeWaitingQuery = mysqli_query($db, $deleteCodeWaitingRequest);
					if (!$deleteCodeWaitingQuery) {
						//.
					}
					return array("return" => true, "data" => $dataArr);
				}else {
					return array("return" => false, "reason" => "c#user.f:getpassword.o:013");
				}
			}
		}else if ($action == "use") {
			if (isset($object['password']) && is_string($object['password'])) $password = $object['password']; else $password = null;
			if (isset($object['code']) && is_string($object['code'])) $code = $object['code']; else $code = null;
			if ($password == null || $code == null) {
				return array("return" => false, "reason" => "c#user.f:getpassword.o:014");
			}
			$password = $_tool->convertDatabaseString($password);
			$code = $_tool->convertDatabaseString($code);
			if (!preg_match($_parameter->get('regex_password'), $password)) {
				return array("return" => false, "reason" => "c#user.f:getpassword.o:015");
			}else if (!preg_match("/^([a-zA-Z0-9]{8,10}$)/", $code)) {
				return array("return" => false, "reason" => "c#user.f:getpassword.o:016");
			}
			$isCodeAvailableRequest = "SELECT * FROM `users_getpassword` WHERE `time` + '".$_parameter->get('users_getpassword_timeout')."' > '".time()."' AND `code` = '".$code."' LIMIT 1;";
			$isCodeAvailableQuery = mysqli_query($db, $isCodeAvailableRequest);
			if (!$isCodeAvailableQuery) {
				return array("return" => false, "reason" => "c#user.f:getpassword.o:017");
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
								return array("return" => false, "reason" => "c#user.f:getpassword.o:018");
							}else {
								$deleteCodeWaitingRequest = "DELETE FROM `users_getpassword` WHERE `user.id` = '".$userId."';";
								$deleteCodeWaitingQuery = mysqli_query($db, $deleteCodeWaitingRequest);
								if (!$deleteCodeWaitingQuery) {
									//.
								}
								return array("return" => true);
							}
						}else {
							return array("return" => false, "reason" => "c#user.f:getpassword.o:019");
						}
					}else {
						return array("return" => false, "reason" => "c#user.f:getpassword.o:020");
					}
				}else {
					return array("return" => false, "reason" => "c#user.f:getpassword.o:021");
				}
			}
		}else {
			return array("return" => false, "reason" => "c#user.f:getpassword.o:022");
		}
	}
	function logs ($object) {
		//.
		$_tool = $this->class['_tool'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['type']) && is_string($object['type'])) $type = $object['type']; else $type = null;
		if ($type == "login") {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "add") {
				if (isset($object['label']) && is_string($object['label'])) $userLabel = $_tool->convertDatabaseString($object['label']); else $userLabel = null;
				if (isset($object['value']) && (is_string($object['value']) || is_numeric($object['value']))) $userValue = $_tool->convertDatabaseString($object['value']); else $userValue = null;
				if (isset($object['status']) && is_numeric($object['status']) && in_array($object['status'], [0, 1])) $status = $object['status']; else $status = null;
				if ($userLabel == null || $userValue == null || $status == null) {
					return array("return" => false, "reason" => "");
				}
				$clientToken = $_client->client(true);
				$addLogsRequest = "INSERT INTO `users_login` (`id`, `time`, `user.label`, `user.value`, `status`, `client`) VALUES (NULL, '".time()."', '".$userLabel."', '".$userValue."', '".$status."', '".$clientToken."');";
				$addLogsQuery = mysqli_query($db, $addLogsRequest);
				if (!$addLogsQuery) {
					return array("return" => false, "reason" => "");
				}else {
					$logsId = mysqli_insert_id($db);
					$dataArr = array(
						"id" => $logsId
					);
					return array("return" => true, "data" => $dataArr);
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function login ($object) {
		//.
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['type']) && is_string($object['type'])) $type = $object['type']; else $type = null;
		if (in_array($type, [1, "static"])) {
			if (isset($object['user'], $object['user']['username']) && is_string($object['user']['username'])) $username = $_tool->convertDatabaseString($object['user']['username']); else $username = null;
			if (isset($object['user'], $object['user']['password']) && is_string($object['user']['password'])) $password = $_tool->convertDatabaseString($object['user']['password']); else $password = null;
			if ($username == null || $password == null) {
				return array("return" => false, "reason" => "a#action.f:login.o:001");
			}
			if (!preg_match($_parameter->get('regex_username'), $username) && !preg_match($_parameter->get('regex_email'), $username)) {
				return array("return" => false, "reason" => "a#action.f:login.o:002");
			}else if (!preg_match($_parameter->get('regex_password'), $password)) {
				return array("return" => false, "reason" => "a#action.f:login.o:003");
			}
			$password = hash('sha1', hash('crc32', $password).'::'.hash('md5', $password));
			$existsUsernameRequest = "SELECT `id` FROM `users` WHERE `username` = '".$username."' OR `email` = '".$username."' LIMIT 1;";
			$existsUsernameQuery = mysqli_query($db, $existsUsernameRequest);
			if (!$existsUsernameQuery) {
				return array("return" => false, "reason" => "a#action.f:login.o:004");
			}else {
				if (mysqli_num_rows($existsUsernameQuery) == 0) {
					return array("return" => false, "reason" => "a#action.f:login.o:005");
				}else {
					$userId = mysqli_fetch_assoc($existsUsernameQuery)['id'];
					$loginAccountRequest = "SELECT `id` FROM `users` WHERE `id` = '".$userId."' AND `password` = '".$password."' LIMIT 1;";
					$loginAccountQuery = mysqli_query($db, $loginAccountRequest);
					if (!$loginAccountQuery) {
						return array("return" => false, "reason" => "a#action.f:login.o:006");
					}else {
						if (mysqli_num_rows($loginAccountQuery) == 0) {
							$this->logs(array("type" => "login", "action" => "add", "status" => 0, "label" => "id", "value" => $userId));
							return array("return" => false, "reason" => "a#action.f:login.o:007");
						}else {
							$this->logs(array("type" => "login", "action" => "add", "status" => 1, "label" => "id", "value" => $userId));
							$dataArr = array("id" => $userId);
							return array("return" => true, "data" => $dataArr);
						}
					}
				}
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function online ($object) {
		//.
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "add") {
			if (isset($object['id']) && is_numeric($object['id'])) $userId = $_tool->convertDatabaseString($object['id']); else $userId = null;
			if ($userId == null) {
				return array("return" => false, "reason" => "c#user.f:online.o:001");
			}
			$clientToken = $_client->client(true);
			$getOnlineRequest = "SELECT * FROM `users_online` WHERE `user.id` = '".$userId."' AND `client` = '".$clientToken."' AND `updated` + '".$_parameter->get('users_online_timeout')."' > '".time()."' LIMIT 1;";
			$getOnlineQuery = mysqli_query($db, $getOnlineRequest);
			$updateOnlineRequest = "UPDATE `users` SET `online` = '".time()."' WHERE `id` = '".$userId."' LIMIT 1;";
			$updateOnlineQuery = mysqli_query($db, $updateOnlineRequest);
			if (!$getOnlineQuery || !$updateOnlineQuery) {
				return array("return" => false, "reason" => "c#user.f:online.o:002");
			}else {
				if (mysqli_num_rows($getOnlineQuery) == 0) {
					$addOnlineRequest = "INSERT INTO `users_online` (`id`, `user.id`, `time`, `updated`, `client`) VALUES (NULL, '".$userId."', '".time()."', '".time()."', '".$clientToken."');";
					$addOnlineQuery = mysqli_query($db, $addOnlineRequest);
					if (!$addOnlineQuery) {
						return array("return" => false, "reason" => "c#user.f:online.o:003");
					}
				}else {
					$getOnlineFetch = mysqli_fetch_assoc($getOnlineQuery);
					$onlineId = $getOnlineFetch['id'];
					$updateOnlineRequest = "UPDATE `users_online` SET `updated` = '".time()."', `client` = '".$clientToken."' WHERE `id` = '".$onlineId."';";
					$updateOnlineQuery = mysqli_query($db, $updateOnlineRequest);
					if (!$updateOnlineQuery) {
						return array("return" => false, "reason" => "c#user.f:online.o:004");
					}
				}
				return array("return" => true);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function profile ($object) {
		//.
		$_tool = $this->class['_tool'];
		$_client = $this->class['_client'];
		$_parameter = $this->class['_parameter'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "get") {
			if (isset($object['rows']) && is_array($object['rows']) && count($object['rows']) > 0) $rows = $object['rows']; else $rows = null;
			if (isset($object['label']) && is_string($object['label'])) $userLabel = $_tool->convertDatabaseString($object['label']); else $userLabel = null;
			if (isset($object['value']) && (is_string($object['value']) || is_numeric($object['value']))) $userValue = $_tool->convertDatabaseString($object['value']); else $userValue = null;
			if (isset($object['limit']) && is_string($object['limit'])) $limit = $_tool->convertDatabaseString($object['limit']); else $limit = null;
			if ($rows == null) {
				return array("return" => false, "reason" => "");
			}else if ($userLabel == null || $userLabel == null) {
				return array("return" => false, "reason" => "");
			}
			foreach ($rows as $rowText) {
				if ($rowText == "*") {
					$rowsGet = "*";
					break;
				}
				if (in_array($rowText, [""])) {
					continue;
				}
				if (!isset($rowsGet) || $rowsGet == null) {
					$rowsGet = "`".$rowText."`";
				}else {
					$rowsGet .= ", `".$rowText."`";
				}
			}
			if (isset($rowsGet) && $rowsGet != null && !in_array("token", $rows)) {
				$rowsGet .= ", `token`";
			}
			if (!isset($rowsGet) || $rowsGet == null) {
				return array("return" => false, "reason" => "");
			}
			$getProfileRequest = "SELECT ".$rowsGet." FROM `users` WHERE `".$userLabel."` = '".$userValue."' ".$limit.";";
			$getProfileQuery = mysqli_query($db, $getProfileRequest);
			if (!$getProfileQuery) {
				return array("return" => false, "reason" => "");
			}else {
				$dataArr = array();
				while ($getProfileFetch = mysqli_fetch_assoc($getProfileQuery)) {
					if (isset($getProfileFetch['link'])) {
						$getProfileFetch['link'] = $_tool->links($getProfileFetch['link']);
					}
					if (isset($getProfileFetch['avatar.large'])) {
						if (preg_match("/^(\:\:default)/", $getProfileFetch['avatar.large'])) {
							$getProfileFetch['avatar.large'] = $_tool->links($getProfileFetch['avatar.large']);
						}else if ($getProfileFetch['avatar.large'] == null || $getProfileFetch['avatar.large'] == "0") {
							$getProfileFetch['avatar.large'] = $_tool->links('::default::user::avatar::large');
						}else {
							$getProfileFetch['avatar.large'] = $_tool->hash('decode', $getProfileFetch['avatar.large'], $getProfileFetch['token'].'_'.$_parameter->get('hash_user_info'));
							$getProfileFetch['avatar.large'] = $_tool->links($getProfileFetch['avatar.large'], false);
						}
					}
					if (isset($getProfileFetch['avatar.medium'])) {
						if (preg_match("/^(\:\:default)/", $getProfileFetch['avatar.medium'])) {
							$getProfileFetch['avatar.medium'] = $_tool->links($getProfileFetch['avatar.medium']);
						}else if ($getProfileFetch['avatar.medium'] == null || $getProfileFetch['avatar.medium'] == "0") {
							$getProfileFetch['avatar.medium'] = $_tool->links('::default::user::avatar::medium');
						}else {
							$getProfileFetch['avatar.medium'] = $_tool->hash('decode', $getProfileFetch['avatar.medium'], $getProfileFetch['token'].'_'.$_parameter->get('hash_user_info'));
							$getProfileFetch['avatar.medium'] = $_tool->links($getProfileFetch['avatar.medium'], false);
						}
					}
					if (isset($getProfileFetch['avatar.small'])) {
						if (preg_match("/^(\:\:default)/", $getProfileFetch['avatar.small'])) {
							$getProfileFetch['avatar.small'] = $_tool->links($getProfileFetch['avatar.small']);
						}else if ($getProfileFetch['avatar.small'] == null || $getProfileFetch['avatar.small'] == "0") {
							$getProfileFetch['avatar.small'] = $_tool->links('::default::user::avatar::small');
						}else {
							$getProfileFetch['avatar.small'] = $_tool->hash('decode', $getProfileFetch['avatar.small'], $getProfileFetch['token'].'_'.$_parameter->get('hash_user_info'));
							$getProfileFetch['avatar.small'] = $_tool->links($getProfileFetch['avatar.small'], false);
						}
					}
					if (isset($getProfileFetch['cover.large'])) {
						if (preg_match("/^(\:\:default)/", $getProfileFetch['cover.large'])) {
							$getProfileFetch['cover.large'] = $_tool->links($getProfileFetch['cover.large']);
						}else if ($getProfileFetch['cover.large'] == null || $getProfileFetch['cover.large'] == "0") {
							$getProfileFetch['cover.large'] = $_tool->links('::default::user::cover::large');
						}else {
							$getProfileFetch['cover.large'] = $_tool->hash('decode', $getProfileFetch['cover.large'], $getProfileFetch['token'].'_'.$_parameter->get('hash_user_info'));
							$getProfileFetch['cover.large'] = $_tool->links($getProfileFetch['cover.large'], false);
						}
					}
					if (isset($getProfileFetch['cover.medium'])) {
						if (preg_match("/^(\:\:default)/", $getProfileFetch['cover.medium'])) {
							$getProfileFetch['cover.medium'] = $_tool->links($getProfileFetch['cover.medium']);
						}else if ($getProfileFetch['cover.medium'] == null || $getProfileFetch['cover.medium'] == "0") {
							$getProfileFetch['cover.medium'] = $_tool->links('::default::user::cover::medium');
						}else {
							$getProfileFetch['cover.medium'] = $_tool->hash('decode', $getProfileFetch['cover.medium'], $getProfileFetch['token'].'_'.$_parameter->get('hash_user_info'));
							$getProfileFetch['cover.medium'] = $_tool->links($getProfileFetch['cover.medium'], false);
						}
					}
					if (isset($getProfileFetch['cover.small'])) {
						if (preg_match("/^(\:\:default)/", $getProfileFetch['cover.small'])) {
							$getProfileFetch['cover.small'] = $_tool->links($getProfileFetch['cover.small']);
						}else if ($getProfileFetch['cover.small'] == null || $getProfileFetch['cover.small'] == "0") {
							$getProfileFetch['cover.small'] = $_tool->links('::default::user::cover::small');
						}else {
							$getProfileFetch['cover.small'] = $_tool->hash('decode', $getProfileFetch['cover.small'], $getProfileFetch['token'].'_'.$_parameter->get('hash_user_info'));
							$getProfileFetch['cover.small'] = $_tool->links($getProfileFetch['cover.small'], false);
						}
					}
					if (isset($getProfileFetch['feed.order'])) {
						$getProfileFetch['feed.order'] = unserialize($_tool->hash('decode', $getProfileFetch['feed.order'], $getProfileFetch['token'].'_'.$_parameter->get('hash_user_info')));
					}
					$dataArr[] = $getProfileFetch;
				}
				$countTaken = count($dataArr);
				return array("return" => true, "count" => $countTaken, "data" => $dataArr);
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
				$userProfile['activated.code'] = $this->active(array("action" => "create", "username" => $username))['data']['code'];
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
}
?>