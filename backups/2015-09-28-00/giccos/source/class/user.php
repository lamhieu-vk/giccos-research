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
	function suggest ($object = array()) {
		$_tool = $this->class['_tool'];
		$_client = $this->class['_client'];
		$_parameter = $this->class['_parameter'];
		$_maps = $this->class['_maps'];
		$db = $this->class['_db']->port('beta');
		//.
		$userId =  isset($object['user'], $object['user']['id']) && is_numeric($object['user']['id']) ? intval($object['user']['id']) : null;
		if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if ($userId == null || $guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "xx1");
		}
		//.
		$type = isset($object['type']) && is_string($object['type']) ? $object['type'] : null;
		if ($type == "user") {
			$rowsArr = isset($object['rows']) && is_array($object['rows']) && count($object['rows']) > 0 ? $object['rows'] : null;
			if ($rowsArr == null) {
				return array("return" => false, "reason" => "xsa");
			}
			$suggsetListArr = array();
			$suggsetListCount = 0;
			if (in_array("places", $rowsArr)) {
				$usersPlacesId = array();
				$getUserProfile = $this->profile(array("action" => "get", "rows" => ["live", "country"], "label" => "id", "value" => $userId, "limit" => "LIMIT 1"));
				if (isset($getUserProfile['return'], $getUserProfile['data'], $getUserProfile['data'][0]) && $getUserProfile['return'] == true) {
					if (isset($getUserProfile['data'][0]['live']) && is_numeric($getUserProfile['data'][0]['live'])) {
						$userThisLive = $getUserProfile['data'][0]['live'];
						$placesNearbyLive = $_maps->places(array("guy" => array("type" => $guyType, "id" =>$guyId), "action" => "nearby", "label" => "id", "value" => $userThisLive, "distance" => $_parameter->get('user_suggest_live_distance')));
						if (isset($placesNearbyLive, $placesNearbyLive['return'], $placesNearbyLive['data']) && $placesNearbyLive['return'] == true) {
							if (isset($placesNearbyLive['count']) && $placesNearbyLive['count'] > 0) {
								$usersPlacesLive = array();
								foreach ($placesNearbyLive['data'] as $key => $placesValueThis) {
									$usersPlacesLive[] = $placesValueThis['id'];
								}
								$usersPlacesLive = array_unique($usersPlacesLive);
								if (count($usersPlacesLive) > 0) {
									$usersNearbyRequest = "SELECT `id` FROM `users` WHERE `live` REGEXP '^[0-9]+$' AND `live` IN ('".implode($usersPlacesLive,"', '")."');";
									$usersNearbyQuery = mysqli_query($db, $usersNearbyRequest);
									if (!$usersNearbyQuery) {
										//.
									}else {
										while ($userNearbyThis = mysqli_fetch_assoc($usersNearbyQuery)) {
											if (!isset($suggsetListArr[$userNearbyThis['id']])) {
												$suggsetListArr[$userNearbyThis['id']] = 1;
											}else {
												$suggsetListArr[$userNearbyThis['id']]++;
											}
										}
									}
								}
								if (count($usersPlacesLive) > 0) {
									$usersRecentlyRequest = "SELECT `user.id` FROM `status` WHERE `time` + '".$_parameter->get('user_suggest_nearby_timeout')."' > '".time()."' AND `places` = '1' AND `id` IN (SELECT DISTINCT `inside.id` FROM `status_places` WHERE `inside.type` = 'status' AND `value` REGEXP '^[0-9]+$' AND `value` IN ('".implode($usersPlacesLive,"', '")."')) ORDER BY `id` DESC;";
									$usersRecentlyQuery = mysqli_query($db, $usersRecentlyRequest);
									if (!$usersRecentlyQuery) {
										//. return array("return" => false, "reason" => "");
									}else {
										while ($usersRecentlyThis = mysqli_fetch_assoc($usersRecentlyQuery)) {
											if (!isset($suggsetListArr[$usersRecentlyThis['user.id']])) {
												$suggsetListArr[$usersRecentlyThis['user.id']] = 1;
											}else {
												$suggsetListArr[$usersRecentlyThis['user.id']]++;
											}
										}
									}
								}
							}
						}
					}
					if (isset($getUserProfile['data'][0]['country']) && is_numeric($getUserProfile['data'][0]['country'])) {
						$userThisCountry = $getUserProfile['data'][0]['country'];
						$placesNearbyCountry = $_maps->places(array("guy" => array("type" => $guyType, "id" =>$guyId), "action" => "nearby", "label" => "id", "value" => $userThisCountry, "distance" => $_parameter->get('user_suggest_country_distance')));
						if (isset($placesNearbyCountry, $placesNearbyLive['return'], $placesNearbyCountry['data']) && $placesNearbyCountry['return'] == true) {
							if (isset($placesNearbyCountry['count']) && $placesNearbyCountry['count'] > 0) {
								$usersPlacesCountry = array();
								foreach ($placesNearbyCountry['data'] as $key => $placesValueThis) {
									$usersPlacesCountry[] = $placesValueThis['id'];
								}
								$usersPlacesCountry = array_unique($usersPlacesCountry);
								if (count($usersPlacesLive) > 0) {
									$usersNearbyRequest = "SELECT `id` FROM `users` WHERE `country` REGEXP '^[0-9]+$' AND `country` IN ('".implode($usersPlacesLive,"', '")."');";
									$usersNearbyQuery = mysqli_query($db, $usersNearbyRequest);
									if (!$usersNearbyQuery) {
										//.
									}else {
										while ($userNearbyThis = mysqli_fetch_assoc($usersNearbyQuery)) {
											if (!isset($suggsetListArr[$userNearbyThis['id']])) {
												$suggsetListArr[$userNearbyThis['id']] = 1;
											}else {
												$suggsetListArr[$userNearbyThis['id']]++;
											}
										}
									}
								}
							}
						}
					}
				}
				//. 
				$placesRecentlyRequest = "SELECT DISTINCT `value` FROM `status_places` WHERE `value` REGEXP '^[0-9]+$' AND `inside.type` = 'status' AND `inside.id` IN (SELECT `id` FROM `status` WHERE `user.id` = '".$userId."' AND `places` = '1' AND `time` + '".$_parameter->get('user_suggest_nearby_timeout')."' > '".time()."' ORDER BY `id` DESC) LIMIT 20;";
				$placesRecentlyQuery = mysqli_query($db, $placesRecentlyRequest);
				if (!$placesRecentlyQuery) {
					//. return array("return" => false, "reason" => "");
				}else {
					while ($placesRecentlyThis = mysqli_fetch_assoc($placesRecentlyQuery)) {
						$placesNearbyRecently = $_maps->places(array("guy" => array("type" => $guyType, "id" => $guyId), "action" => "nearby", "label" => "id", "value" => $placesRecentlyThis['value'], "distance" => $_parameter->get('user_suggest_nearby_distance')));
						if (isset($placesNearbyRecently, $placesNearbyRecently['return'], $placesNearbyRecently['data']) && $placesNearbyRecently['return'] == true) {
							if (isset($placesNearbyRecently['count']) && $placesNearbyRecently['count'] > 0) {
								$usersPlacesNearby = array();
								foreach ($placesNearbyRecently['data'] as $key => $placesValueThis) {
									$usersPlacesNearby[] = $placesValueThis['id'];
								}
								$usersPlacesNearby = array_unique($usersPlacesNearby);
								if (count($usersPlacesLive) > 0) {
									$usersNearbyRequest = "SELECT `id` FROM `users` WHERE `live` REGEXP '^[0-9]+$' AND `live` IN ('".implode($usersPlacesLive,"', '")."');";
									$usersNearbyQuery = mysqli_query($db, $usersNearbyRequest);
									if (!$usersNearbyQuery) {
										//.
									}else {
										while ($userNearbyThis = mysqli_fetch_assoc($usersNearbyQuery)) {
											if (!isset($suggsetListArr[$userNearbyThis['id']])) {
												$suggsetListArr[$userNearbyThis['id']] = 1;
											}else {
												$suggsetListArr[$userNearbyThis['id']]++;
											}
										}
									}
								}
							}
						}
					}
				}
			}
			arsort($suggsetListArr);
			if (isset($suggsetListArr[$userId])) {
				unset($suggsetListArr[$userId]);
			}
			$suggsetListCount = count($suggsetListArr);
			return array("return" => true, "count" => $suggsetListCount, "data" => $suggsetListArr);
		}else {
			return array("return" => false, "reason" => "sdad");
		}
	}
	function guide ($object) {
		//.
	}
	function exists ($object) {
		$_tool = $this->class['_tool'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['label']) && is_string($object['label'])) $userLabel = $_tool->convertDatabaseString($object['label']); else $userLabel = null;
		if (isset($object['value']) && (is_string($object['value']) || is_numeric($object['value']))) $userValue = $_tool->convertDatabaseString($object['value']); else $userValue = null;
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
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
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
	function workplaces ($object) {
		$_tool = $this->class['_tool'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "get") {
			if (isset($object['id']) && is_string($object['id'])) $id = intval($object['id']); else $id = null;
			if (isset($object['label']) && is_string($object['label'])) $label = $_tool->convertDatabaseString($object['label']); else $label = null;
			if (isset($object['value']) && is_string($object['value'])) $value = $_tool->convertDatabaseString($object['value']); else $value = null;
			if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
			if ($id == null) {
				return array("return" => false, "reason" => "");
			}
			if ($label == null && $value == null) {
				$getWorkplacesRequestPush = null;
			}else {
				$getWorkplacesRequestPush = "AND `".$label."` = '".$value."'";
			}
			$getWorkplacesRequest = "SELECT * FROM `users_workplaces` WHERE `user.id` = '".$id."' ".$getWorkplacesRequestPush." ".$limit;
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
	}
	function education ($object) {
		$_tool = $this->class['_tool'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "get") {
			if (isset($object['id']) && is_string($object['id'])) $id = intval($object['id']); else $id = null;
			if (isset($object['label']) && is_string($object['label'])) $label = $_tool->convertDatabaseString($object['label']); else $label = null;
			if (isset($object['value']) && is_string($object['value'])) $value = $_tool->convertDatabaseString($object['value']); else $value = null;
			if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
			if ($id == null) {
				return array("return" => false, "reason" => "");
			}
			if ($label == null && $value == null) {
				$getWorkplacesRequestPush = null;
			}else {
				$getWorkplacesRequestPush = "AND `".$label."` = '".$value."'";
			}
			$getWorkplacesRequest = "SELECT * FROM `users_education` WHERE `user.id` = '".$id."' ".$getWorkplacesRequestPush." ".$limit;
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
	}
	function contact ($object) {
		$_tool = $this->class['_tool'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "get") {
			if (isset($object['id']) && is_string($object['id'])) $id = intval($object['id']); else $id = null;
			if (isset($object['label']) && is_string($object['label'])) $label = $_tool->convertDatabaseString($object['label']); else $label = null;
			if (isset($object['value']) && is_string($object['value'])) $value = $_tool->convertDatabaseString($object['value']); else $value = null;
			if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
			if ($id == null) {
				return array("return" => false, "reason" => "");
			}
			if ($label == null && $value == null) {
				$getWorkplacesRequestPush = null;
			}else {
				$getWorkplacesRequestPush = "AND `".$label."` = '".$value."'";
			}
			$getWorkplacesRequest = "SELECT * FROM `users_contact` WHERE `user.id` = '".$id."' ".$getWorkplacesRequestPush." ".$limit;
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
					if (isset($getProfileFetch['feed.order']) && is_string($getProfileFetch['feed.order'])) {
						$getProfileFetch['feed']['order'] = unserialize($getProfileFetch['feed.order']);
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
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_ip = $this->class['_ip'];
		$_client = $this->class['_client'];
		$_mailer = $this->class['_mailer'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['user']) && is_array($object['user']) && count($object['user']) > 0) $userProfile = $object['user']; else $userProfile = null;
		if (isset($userProfile['username'], $userProfile['password'], $userProfile['email'], $userProfile['firstname'], $userProfile['lastname'], $userProfile['birthday']['day'], $userProfile['birthday']['month'], $userProfile['birthday']['year'], $userProfile['gender'])) {
			$regex = array();
			$regex['username'] = $_parameter->get('regex_username');
			$regex['password'] = $_parameter->get('regex_password');
			$regex['email'] = $_parameter->get('regex_email');
			$regex['phone'] = $_parameter->get('regex_phone');
			$regex['name'] = $_parameter->get('regex_name');
			$regex['gender'] = $_parameter->get('regex_gender');
			$regex['date']['day'] = $_parameter->get('regex_date_day');
			$regex['date']['month'] = $_parameter->get('regex_date_month');
			$regex['date']['year'] = $_parameter->get('regex_date_year');
			if (!isset($userProfile['username']) || !is_string($userProfile['username']) || !preg_match($regex['username'], $userProfile['username'])) {
				return array("return" => false, "reason" => "2");
			}else if (!isset($userProfile['password']) || !is_string($userProfile['password']) || !preg_match($regex['password'], $userProfile['password'])) {
				return array("return" => false, "reason" => "3");
			}else if (!isset($userProfile['email']) || !is_string($userProfile['email']) || !preg_match($regex['email'], $userProfile['email'])) {
				return array("return" => false, "reason" => "4");
			}else if (!isset($userProfile['firstname'], $userProfile['lastname']) || !is_string($userProfile['firstname']) || !is_string($userProfile['lastname']) || !preg_match($regex['name'], $userProfile['firstname']) || !preg_match($regex['name'], $userProfile['lastname']) || $userProfile['firstname'] == $userProfile['lastname']) {
				return array("return" => false, "reason" => "5");
			}else if (!isset($userProfile['gender']) || !is_string($userProfile['gender']) || !preg_match($regex['gender'], $userProfile['gender'])) {
				return array("return" => false, "reason" => "6");
			}else if (!isset($userProfile['birthday']['day']) || !is_numeric($userProfile['birthday']['day']) || !preg_match($regex['date']['day'], $userProfile['birthday']['day']) || !isset($userProfile['birthday']['month']) || !is_numeric($userProfile['birthday']['month']) || !preg_match($regex['date']['month'], $userProfile['birthday']['month']) || !isset($userProfile['birthday']['year']) || !is_numeric($userProfile['birthday']['year']) || !preg_match($regex['date']['year'], $userProfile['birthday']['year'])) {
				return array("return" => false, "reason" => $regex['date']['year']);
			}else {
				foreach ($userProfile as $key => $userProfileThis) {
					if (in_array($key, ["username", "email", "firstname", "middlename", "lastname", "nickname", "gender"])) {
						$userProfile[$key] = $_tool->convertDatabaseString($userProfileThis);
					}
				}
				$usernameCountQuery = mysqli_query($db, "SELECT `id` FROM `users` WHERE `username` = '".$userProfile['username']."' LIMIT 1;");
				if (!$usernameCountQuery) {
					return array("return" => false, "reason" => "8");
				}else if ($usernameCountQuery && mysqli_num_rows($usernameCountQuery) > 0) {
					return array("return" => false, "reason" => "9");
				}
				$emailCountQuery = mysqli_query($db, "SELECT `id` FROM `users` WHERE `email` = '".$userProfile['email']."' LIMIT 1;");
				if (!$emailCountQuery) {
					return array("return" => false, "reason" => "10");
				}else if ($emailCountQuery && mysqli_num_rows($emailCountQuery) > 0) {
					return array("return" => false, "reason" => "11");
				}
				//.
				$userProfile['time'] = $time = $_tool->timeNow();
				$userProfile['secret'] = hash('md5', $time.'::'.rand().'::'.hash('crc32', rand()));
				$userProfile['token'] = hash('crc32', $userProfile['secret']);
				if (isset($userProfile['phone']) && is_string($userProfile['phone']) && preg_match($regex['phone'], $userProfile['phone'])) $userProfile['phone'] = $userProfile['phone']; else $userProfile['phone'] = null;
				$userProfile['formatname'] = "f-m-l";
				$userProfile['fullname'] = $userProfile['firstname'].' '.$userProfile['lastname'];
				if (isset($userProfile['middlename']) && is_string($userProfile['middlename']) && preg_match($regex['name'], $userProfile['middlename'])) $userProfile['middlename'] = $userProfile['middlename']; else $userProfile['middlename'] = null;
				if (isset($userProfile['nickname']) && is_string($userProfile['nickname']) && preg_match($regex['name'], $userProfile['nickname'])) $userProfile['nickname'] = $userProfile['nickname']; else $userProfile['nickname'] = null;
				$convertBirthdayDate = $_tool->convertDatetime($userProfile['birthday']['day'].'/'.$userProfile['birthday']['month'].'/'.$userProfile['birthday']['year']);
				$userProfile['birthday']['stamp'] = $convertBirthdayDate['stamp'];
				$userProfile['birthday']['format'] = $convertBirthdayDate['format'];
				$userProfile['password_hash'] = hash('sha1', hash('crc32', $userProfile['password']).'::'.hash('md5', $userProfile['password']));
				$userProfile['password_base'] = $_tool->hash('encode', $userProfile['password'], $userProfile['token'].'::'.$_parameter->get('hash_user_password'));
				$userProfile['ip'] = $_client->ip();
				if (!isset($userProfile['ip'])) {
					return array("return" => false, "reason" => "12");
				}
				$getInfoIP = $_ip->info(array("action" => "check", "ip" => $userProfile['ip']));
				if (isset($getInfoIP['return'], $getInfoIP['data']) && $getInfoIP['return'] == true) {
					$userProfile['language'] = $_language->getCode($getInfoIP['data']['country.code'])['code'];
					$userProfile['timezone'] = $getInfoIP['data']['timezone'];
					$userProfile['ip'] = array();
					$userProfile['ip']['location'] = $getInfoIP['data']['latitude'].','.$getInfoIP['data']['longitude'];
					$userProfile['ip']['places'] = $getInfoIP['data']['city'].', '.$getInfoIP['data']['country'];
				}else {
					$userProfile['language'] = $_parameter->get('user_language.default');
					$userProfile['timezone'] = $_parameter->get('user_timezone.default');
					$userProfile['ip'] = array();
					$userProfile['ip']['location'] = $userProfile['ip']['places'] = "-";
				}
				$userProfile['client'] = $_client->browser();
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
				$userProfile['feed']['order'] = serialize(array("general" => "auto", "time" => "auto", "country" => "auto", "live" => "auto", "family" => "auto", "friends" => "auto"));
				$userProfile['videos']['replay'] = $userProfile['music']['replay'] = $_parameter->get('media_settings.replay_default');
				$userProfile['activated.code'] = $this->active(array("action" => "create", "username" => $userProfile['username']))['data']['code'];
				$userProfile['activated.time'] = $userProfile['activated'] = $userProfile['verified'] = $userProfile['dead'] = 0;
				$createUserRequest = "
				INSERT INTO 
				`users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `mode.safe`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `feed.order`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`) 
				VALUES 
				(NULL, '".$userProfile['time']."', '".$userProfile['token']."', '".$userProfile['secret']."', '".$userProfile['username']."', '".$userProfile['email']."', '".$userProfile['password_hash']."', '".$userProfile['password_base']."', '".$userProfile['phone']."', '".$userProfile['fullname']."', '".$userProfile['firstname']."', '".$userProfile['middlename']."', '".$userProfile['lastname']."', '".$userProfile['formatname']."', '".$userProfile['nickname']."', '".$userProfile['gender']."', null, '".$userProfile['birthday']['stamp']."', '".$userProfile['birthday']['format']."', null, null, null, '".$userProfile['language']."', '".$userProfile['timezone']."', null, null, '".$userProfile['avatar']['large']."', '".$userProfile['avatar']['medium']."', '".$userProfile['avatar']['small']."', '".$userProfile['cover']['large']."', '".$userProfile['cover']['medium']."', '".$userProfile['cover']['small']."', '".$userProfile['theme']."', '".$userProfile['link']."', '".$userProfile['mode']['safe']."', '".$userProfile['messages']['translate']."', '".$userProfile['private']['tag']."', '".$userProfile['private']['search']."', '".$userProfile['private']['info']['friends']."', '".$userProfile['private']['info']['birthday']."', '".$userProfile['private']['info']['country']."', '".$userProfile['private']['info']['live']."', '".$userProfile['private']['info']['email']."', '".$userProfile['private']['info']['phone']."', '".$userProfile['private']['status']['view']."', '".$userProfile['private']['status']['comment']."', '".$userProfile['private']['status']['share']."', '".$userProfile['private']['photos']['view']."', '".$userProfile['private']['photos']['comment']."', '".$userProfile['private']['photos']['share']."', '".$userProfile['private']['music']['view']."', '".$userProfile['private']['music']['comment']."', '".$userProfile['private']['music']['share']."', '".$userProfile['private']['videos']['view']."', '".$userProfile['private']['videos']['comment']."', '".$userProfile['private']['videos']['share']."', '".$userProfile['feed']['order']."', '".$userProfile['country']."', '".$userProfile['country.description']."', '".$userProfile['live']."', '".$userProfile['live.description']."', '".$userProfile['units']['temperature']."', '".$userProfile['units']['speed']."', '".$userProfile['units']['pressure']."', '".$userProfile['units']['distance']."', '".$userProfile['videos']['replay']."', '".$userProfile['music']['replay']."', '".$userProfile['activated']."', '".$userProfile['activated.code']."', '".$userProfile['activated.time']."', '".$userProfile['verified']."', '".$userProfile['dead']."');
				";
				$createUserQuery = mysqli_query($db, $createUserRequest);
				if (!$createUserQuery) {
					return array("return" => false, "reason" => $createUserRequest);
				}else {
					$userProfile['id'] = mysqli_insert_id($db);
					//.
					$mailHTMLContent = "
					<tbody style='margin: 10px auto;'>
		              <tr align='center'>
		                  <td>
		                      <table border='0' cellspacing='0' cellpadding='0' style='padding: 10px;width:500px;background: #FFF;border: none;'>
		                          <tbody>
		                              <tr>
		                                  <td>
		                                      <table width='100%' style='background: #666;width: 500px;border: none;border-radius: 4px;' cellspacing='0' cellpadding='0'>
		                                          <tbody>
		                                              <tr>
		                                                  <td colspan='3' style='height: 70px;border-bottom: 2px solid #FFF;'>
		                                                    <div style='display: inline-block;vertical-align: top;text-indent: 20px;'>
		                                                      <a style='color: #FFF;font: normal normal bold 32px/1.2em Roboto,Arial,sans-serif;text-transform: capitalize;'>Giccos Inc</a>
		                                                    </div>
		                                                    <div style='display: inline-block;vertical-align: top;margin-top: 2px;width: 290px;text-align: right;'>
		                                                      <a style='cursor: pointer;color: #FFF;font: normal normal bold 18px/1.2em Roboto,Arial,sans-serif;text-transform: capitalize;'>Mailer</a><br>
		                                                      <a style='font-family: Roboto-Regular,Helvetica,Arial,sans-serif;font-size: 12px; color: #CCC;line-height: 1.2;font-weight:normal;text-decoration: none;' href='#'>#{_mailerLogToken_}</a>
		                                                    </div>
		                                                  </td>
		                                              </tr>
		                                              <tr>
		                                                  <td width='20px'></td>
		                                                  <td style='padding: 2px 0 3px;cursor: pointer;color: #CCCCCC;font: normal normal 300 15px/2em Roboto,Arial,sans-serif;'>".$_language->text('account_validation_requirements', 'ucfirst')."</td>
		                                                  <td width='20px'></td>
		                                              </tr>
		                                          </tbody>
		                                      </table>
		                                  </td>
		                              </tr>
		                              <tr>
		                                  <td>
		                                      <table bgcolor='#FFFFFF' width='100%' border='0' cellspacing='0' cellpadding='0' style='width:500px;border: none;'>
		                                          <tbody style='font-family: Roboto-Regular,Helvetica,Arial,sans-serif;font-size: 13px;color: #999;line-height: 1.4;'>
		                                              <tr height='20px'>
		                                                  <td width='30px' rowspan='3'></td>
		                                                  <td></td>
		                                                  <td width='30px' rowspan='3'></td>
		                                              </tr>
		                                              <tr>
		                                                  <td>
		                                                      <table style='min-width:300px' border='0' cellspacing='0' cellpadding='0'>
		                                                          <tbody>
		                                                              <div style='margin-top: 5px;'><span style='line-height: 1.6;'>Hi, <b>".$userProfile['fullname']."</b>.</span></div>
		                                                              <div style='margin-top: 5px;'>
		                                                                <span style='line-height: 1.6;'>We notify for you know a people has used this email address to register a service account at Giccos with username is <a href='".$_tool->links("wall/".$userProfile['username'])."' target='_blank' style='color: #555;text-decoration: none;'>".$userProfile['username']."</a>, gender is ".$_language->text($userProfile['gender'], 'strtolower').". Created at ".date('H:i, d/n/Y', $userProfile['time'])." (".date_default_timezone_get().").</span><br>
																		<span style='line-height: 1.6;'>If that's you, please <a href='".$_tool->links("accounts/active/".$userProfile['username']."/".$userProfile['activated.code'])."' target='_blank' style='color: #555;text-decoration: none;'>confirm</a> your account, if not you please <a href='#' target='_blank' style='color: #555;text-decoration: none;'>report</a> for us.</span><br>
																		<span style='line-height: 1.6;'>You can self made confirm your account at <a href='".$_tool->links("accounts/active/")."' target='_blank' style='color: #555;text-decoration: none;'>here</a>, confirmation code is <b>".$userProfile['activated.code']."</b> </span>
		                                                              </div>
		                                                              <div style='margin: 30px auto;width: 300px;'>
		                                                                <div style='margin: 15px auto;'>
		                                                                  <div style='display: inline-block;vertical-align: top;height: 40px;width: 40px;background-color: #DDD;border: none;border-radius: 360px;'>
		                                                                    <div style='margin: 15%; width: 70%; height: 70%;background-size: cover;background-position: 50% 50%;border: none;border-radius: 360px;'></div>
		                                                                  </div>
		                                                                  <div style='display: inline-block;vertical-align: top;margin: 3px 0 0 9px;'>
		                                                                    <div><span style='line-height: 1.4;font-size: 14px; font-weight: bold;'>".$userProfile['fullname']."</span></div>
		                                                                    <div><span style='line-height: 1.4;font-size: 12px; font-weight: normal;'>".$userProfile['username']."</span></div>
		                                                                  </div>
		                                                                </div>
		                                                                <div style='margin: 15px auto;'>
		                                                                  <div style='display: inline-block;vertical-align: top;height: 40px;width: 40px;background-color: #DDD;border: none;border-radius: 360px;'>
		                                                                    <div style='margin: 15%; width: 70%; height: 70%;background-size: cover;background-position: 50% 50%;border: none;border-radius: 360px;'></div>
		                                                                  </div>
		                                                                  <div style='display: inline-block;vertical-align: top;margin: 3px 0 0 9px;'>
		                                                                    <div><span style='line-height: 1.4;font-size: 14px; font-weight: bold;'>".$userProfile['client']['platform']."</span></div>
		                                                                    <div><span style='line-height: 1.4;font-size: 12px; font-weight: normal;'>".$userProfile['client']['name']."</span></div>
		                                                                  </div>
		                                                                </div>
		                                                                <div style='margin: 15px auto;'>
		                                                                  <div style='display: inline-block;vertical-align: top;height: 40px;width: 40px;background-color: #DDD;border: none;border-radius: 360px;'>
		                                                                    <div style='margin: 15%; width: 70%; height: 70%;background-size: cover;background-position: 50% 50%;border: none;border-radius: 360px;'></div>
		                                                                  </div>
		                                                                  <div style='display: inline-block;vertical-align: top;margin: 3px 0 0 9px;'>
		                                                                    <div><span style='line-height: 1.4;font-size: 14px; font-weight: bold;'>".$userProfile['ip']['places']."</span></div>
		                                                                    <div><span style='line-height: 1.4;font-size: 12px; font-weight: normal;'>".$userProfile['ip']['location']."</span></div>
		                                                                  </div>
		                                                                </div>
		                                                              </div>
		                                                              <div style='margin-top: 50px;text-align: right;'><span style='text-transform: uppercase;font-size: 11px;font-weight: bold;'>© Giccos, Inc.</span></div>
		                                                          </tbody>
		                                                      </table>
		                                                  </td>
		                                              </tr>
		                                              <tr height='20px'></tr>
		                                          </tbody>
		                                      </table>
		                                  </td>
		                              </tr>
		                          </tbody>
		                      </table>
		                  </td>
		                  <td width='32px'></td>
		              </tr>
		              <tr height='32px'></tr>
		          	</tbody>
					";
					$mailerOptions = array(
						"type" => "support",
						"title" => $_language->text('mailer_verify_account_subject', 'ucfirst'),
						"content" => $mailHTMLContent,
						"alt" => $_language->text('mailer_verify_account_altbody', 'ucfirst'),
						"to" => array("email" => $userProfile['email'], "name" => $userProfile['fullname']),
						"html" => true,
						"log" => true
					);
					$mailerSend = $_mailer->send($mailerOptions);
					if (isset($mailerSend, $mailerSend['return']) && $mailerSend['return'] == true) {
						//.
					}else if (isset($mailerSend, $mailerSend['return'], $mailerSend['reason']) && $mailerSend['return'] == false) {
						//.
					}else {
						//.
					}
					//.
					$followUserQuery = mysqli_query($db, "INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES (null, '".time()."', '".$userProfile['id']."', 'user', '".$userProfile['id']."');");
					return array("return" => true, "data" => array("id" => $userProfile));
				}
			}
		}else {
			return array("return" => false, "reason" => $userProfile);
		}
	}
	function friends ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if (in_array($action, ["add_request"])) {
			if (isset($object['user'], $object['user']['id']) && (is_string($object['user']['id']) || is_numeric($object['user']['id']))) $userId = intval($object['user']['id']); else $userId = null;
			if (isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id']))) $guyId = intval($object['guy']['id']); else $guyId = null;
			if (isset($object['auto']) && is_bool($object['auto'])) $autoAdd = $object['auto']; else $autoAdd = true;
			if ($userId == null || $guyId == null) {
				return array("return" => false, "reason" => "");
			}
			$existsUser = $this->exists(array("label" => "id", "value" => $userId));
			if (isset($existsUser['return'], $existsUser['exists']) && $existsUser['return'] == true && $existsUser['exists'] == true) {
				$isExistsUser = true;
			}
			$existsGuy = $this->exists(array("label" => "id", "value" => $guyId));
			if (isset($existsGuy['return'], $existsGuy['exists']) && $existsGuy['return'] == true && $existsGuy['exists'] == true) {
				$isExistsGuy = true;
			}
			if (isset($isExistsUser, $isExistsGuy) && $isExistsUser == true && $isExistsGuy == true) {
				$existsFriend = $this->friends(array("action" => "exists_friend", "user" => array("id" => $userId), "guy" => array("id" => $guyId)));
				if (isset($existsFriend['return'], $existsFriend['exists']) && $existsFriend['return'] == true && $existsFriend['exists'] == false) {
					$existsUserRequest = $this->friends(array("action" => "exists_request", "user" => array("id" => $userId), "guy" => array("id" => $guyId)));
					if (isset($existsUserRequest['return'], $existsUserRequest['exists']) && $existsUserRequest['return'] == true) {
						if ($existsUserRequest['exists'] == true) {
							if (isset($autoAdd) && $autoAdd == true) {
								$addFriend = $this->friends(array("action" => "add_friend", "user" => array("id" => $userId), "guy" => array("id" => $guyId)));
								if (isset($addFriend['return']) && $addFriend['return'] == true) {
									return array("return" => true, "exists" => true, "added" => true);
								}else if (isset($addFriend['return'], $addFriend['reason']) && $addFriend['return'] == false) {
									return array("return" => false, "reason" => $addFriend['reason']);
								}else {
									return array("return" => false, "reason" => "1");
								}
							}else {
								return array("return" => false, "reason" => "2");
							}
						}else {
							$existsGuyRequest = $this->friends(array("action" => "exists_request", "guy" => array("id" => $userId), "user" => array("id" => $guyId)));
							if (isset($existsGuyRequest['return'], $existsGuyRequest['exists']) && $existsGuyRequest['return'] == true) {
								if ($existsGuyRequest['exists'] == true) {
									$addFriend = $this->friends(array("action" => "add_friend", "user" => array("id" => $userId), "guy" => array("id" => $guyId)));
									if (isset($addFriend['return']) && $addFriend['return'] == true) {
										return array("return" => true, "exists" => true, "added" => true);
									}else if (isset($addFriend['return'], $addFriend['reason']) && $addFriend['return'] == false) {
										return array("return" => false, "reason" => $addFriend['reason']);
									}else {
										return array("return" => false, "reason" => "5");
									}
								}else {
									$addRequestGuyRequest = "INSERT INTO `friends_request` (`id`, `time`, `user.id`, `guy.id`) VALUES (null, '".time()."', '".$userId."', '".$guyId."');";
									$addRequestGuyQuery = mysqli_query($db, $addRequestGuyRequest);
									if (!$addRequestGuyQuery) {
										return array("return" => false, "reason" => "6");
									}else {
										return array("return" => true);
									}
								}
							}else {
								return array("return" => false, "reason" => "7");
							}
						}
					}else {
						return array("return" => false, "reason" => "8");
					}
				}else {
					return array("return" => false, "reason" => "9");
				}
			}else {
				return array("return" => false, "reason" => "10");
			}
		}else if (in_array($action, ["remove_request", "delete_request"])) {
			if (isset($object['user'], $object['user']['id']) && (is_string($object['user']['id']) || is_numeric($object['user']['id']))) $userId = intval($object['user']['id']); else $userId = null;
			if (isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id']))) $guyId = intval($object['guy']['id']); else $guyId = null;
			if ($userId == null || $guyId == null) {
				return array("return" => false, "reason" => "");
			}
			$existsRequest = $this->friends(array("action" => "exists_request", "user" => array("id" => $userId), "guy" => array("id" => $guyId)));
			if (isset($existsRequest['return'], $existsRequest['exists']) && $existsRequest['return'] == true) {
				if ($existsRequest['exists']) {
					$removeRequestRequest = "DELETE FROM `friends_request` WHERE `user.id` = '".$userId."' AND `guy.id` = '".$guyId."';";
					$removeRequestQuery = mysqli_query($db, $removeRequestRequest);
					if (!$removeRequestQuery) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true, "exists" => true, "removed" => true);
					}
				}else {
					return array("return" => true, "exists" => false, "removed" => false);
				}
			}else if (isset($existsRequest['return'], $existsRequest['reason']) && $existsRequest['return'] == true) {
				return array("return" => false, "reason" => $existsRequest['reason']);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if (in_array($action, ["exists_request"])) {
			if (isset($object['user'], $object['user']['id']) && (is_string($object['user']['id']) || is_numeric($object['user']['id']))) $userId = intval($object['user']['id']); else $userId = null;
			if (isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id']))) $guyId = intval($object['guy']['id']); else $guyId = null;
			if (isset($object['tway']) && is_bool($object['tway'])) $twoWay = $object['tway']; else $twoWay = false;
			if ($userId == null || $guyId == null) {
				return array("return" => false, "reason" => "");
			}
			if ($twoWay == true) {
				$existsRequestRequest = "SELECT `id` FROM `friends_request` WHERE (`user.id` = '".$userId."' AND `guy.id` = '".$guyId."') OR (`user.id` = '".$guyId."' AND `guy.id` = '".$userId."') LIMIT 1;";
			}else {
				$existsRequestRequest = "SELECT `id` FROM `friends_request` WHERE `user.id` = '".$userId."' AND `guy.id` = '".$guyId."' LIMIT 1";
			}
			$existsRequestQuery = mysqli_query($db, $existsRequestRequest);
			if (!$existsRequestQuery) {
				return array("return" => false, "reason" => "");
			}else {
				if (mysqli_num_rows($existsRequestQuery) == 0) {
					return array("return" => true, "exists" => false);
				}else {
					return array("return" => true, "exists" => true);
				}
			}
		}else if (in_array($action, ["accept_request", "confirm_request"])) {
			if (isset($object['user'], $object['user']['id']) && (is_string($object['user']['id']) || is_numeric($object['user']['id']))) $userId = intval($object['user']['id']); else $userId = null;
			if (isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id']))) $guyId = intval($object['guy']['id']); else $guyId = null;
			$existsUserRequest = $this->friends(array("action" => "exists_request", "user" => array("id" => $userId), "guy" => array("id" => $guyId)));
			if (isset($existsRequest['return'], $existsRequest['exists']) && $existsRequest['return'] == true) {
				if ($existsRequest['exists']) {
					$addFriend = $this->friends(array("action" => "add_friend", "user" => array("id" => $userId), "guy" => array("id" => $guyId)));
					if (isset($addFriend['return']) && $addFriend['return'] == true) {
						return array("return" => true, "exists" => true, "added" => true);
					}else if (isset($addFriend['return'], $addFriend['reason']) && $addFriend['return'] == false) {
						return array("return" => false, "reason" => $addFriend['reason']);
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => true, "exists" => false, "added" => false);
				}
			}else if (isset($existsRequest['return'], $existsRequest['reason']) && $existsRequest['return'] == true) {
				return array("return" => false, "reason" => $existsRequest['reason']);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if (in_array($action, ["add_friend"])) {
			if (isset($object['user'], $object['user']['id']) && (is_string($object['user']['id']) || is_numeric($object['user']['id']))) $userId = intval($object['user']['id']); else $userId = null;
			if (isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id']))) $guyId = intval($object['guy']['id']); else $guyId = null;
			if ($userId == null || $guyId == null) {
				return array("return" => false, "reason" => "");
			}
			$existsUser = $this->exists(array("label" => "id", "value" => $userId));
			if (isset($existsUser['return'], $existsUser['exists']) && $existsUser['return'] == true && $existsUser['exists'] == true) {
				$isExistsUser = true;
			}
			$existsGuy = $this->exists(array("label" => "id", "value" => $guyId));
			if (isset($existsGuy['return'], $existsGuy['exists']) && $existsGuy['return'] == true && $existsGuy['exists'] == true) {
				$isExistsGuy = true;
			}
			if (isset($isExistsUser, $isExistsGuy) && $isExistsUser == true && $isExistsGuy == true) {
				$addFriendsRequest = "INSERT INTO `friends` (`id`, `time`, `user.id`, `guy.id`) VALUES (NULL, '".time()."', '".$userId."', '".$guyId."'), (NULL, '".time()."', '".$guyId."', '".$userId."');";
				$addFriendsQuery = mysqli_query($db, $addFriendsRequest);
				$removeRequestRequest = "DELETE FROM `friends_request` WHERE (`user.id` = '".$userId."' AND `guy.id` = '".$guyId."') OR (`guy.id` = '".$userId."' AND `user.id` = '".$guyId."');";
				$removeRequestQuery = mysqli_query($db, $removeRequestRequest);
				if (!$removeRequestQuer || !$addFriendsQuery) {
					$errorArr = array("add" => $addFriendsQuery, "remove" => $removeRequestQuery);
					return array("return" => false, "reason" => "", "error" => $errorArr);
				}else {
					return array("return" => true, "exists" => true, "added" => true);
				}
			}else {
				$removeRequestRequest = "DELETE FROM `friends_request` WHERE (`user.id` = '".$userId."' AND `guy.id` = '".$guyId."') OR (`guy.id` = '".$userId."' AND `user.id` = '".$guyId."');";
				$removeRequestQuery = mysqli_query($db, $removeRequestRequest);
				return array("return" => false, "exists" => false, "reason" => "");
			}
		}else if (in_array($action, ["remove_friend", "delete_friend"])) {
			if (isset($object['user'], $object['user']['id']) && (is_string($object['user']['id']) || is_numeric($object['user']['id']))) $userId = intval($object['user']['id']); else $userId = null;
			if (isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id']))) $guyId = intval($object['guy']['id']); else $guyId = null;
			if ($userId == null || $guyId == null) {
				return array("return" => false, "reason" => "");
			}
			$existsFriend = $this->friends(array("action" => "exists_friend", "user" => array("id" => $userId), "guy" => array("id" => $guyId)));
			if (isset($existsFriend['return'], $existsFriend['exists']) && $existsFriend['return'] == true) {
				if ($existsFriend['exists']) {
					$removeFriendRequest = "DELETE FROM `friends` WHERE (`user.id` = '".$userId."' AND `guy.id` = '".$guyId."') OR (`guy.id` = '".$userId."' AND `user.id` = '".$guyId."');";
					$removeFriendQuery = mysqli_query($db, $removeFriendRequest);
					if (!$removeFriendQuery) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true, "exists" => true, "removed" => true);
					}
				}else {
					return array("return" => true, "exists" => false, "removed" => false);
				}
			}else if (isset($existsFriend['return'], $existsFriend['reason']) && $existsFriend['return'] == true) {
				return array("return" => false, "reason" => $existsFriend['reason']);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if (in_array($action, ["exists_friend"])) {
			if (isset($object['user'], $object['user']['id']) && (is_string($object['user']['id']) || is_numeric($object['user']['id']))) $userId = intval($object['user']['id']); else $userId = null;
			if (isset($object['guy'], $object['guy']['id']) && (is_string($object['guy']['id']) || is_numeric($object['guy']['id']))) $guyId = intval($object['guy']['id']); else $guyId = null;
			if ($userId == null || $guyId == null) {
				return array("return" => false, "reason" => "");
			}
			$existsFriendRequest = "SELECT `id` FROM `friends` WHERE (`user.id` = '".$userId."' AND `guy.id` = '".$guyId."') OR (`user.id` = '".$guyId."' AND `guy.id` = '".$userId."') LIMIT 1;";
			$existsFriendsQuery = mysqli_query($db, $existsFriendRequest);
			if (!$existsFriendsQuery) {
				return array("return" => false, "reason" => "");
			}else {
				if (mysqli_num_rows($existsFriendsQuery) == 0) {
					return array("return" => true, "exists" => false);
				}else {
					return array("return" => true, "exists" => true);
				}
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
}
?>