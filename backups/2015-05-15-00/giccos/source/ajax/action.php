<?php
@define("6246d859de19710432b4faff46731ff2f1f57d940c040aa7bd165de6a3b769aa", true);
require_once ("source/config.php");
if (isset($g_client['token']['ajax'], $_SERVER['HTTP_TOKEN'], $_SERVER['HTTP_X_REQUESTED_WITH'], $_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_SERVER['HTTP_TOKEN'] == $g_client['token']['ajax'] && $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest" && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")) {
	if (isset($_SERVER['HTTP_RANDKEY'])) {
		setcookie($_SERVER['HTTP_RANDKEY'], null, $_tool->timeNow() - 31536000, $_parameter->get('cookie.host.path'), $g_client['http']['secure'], false);
	}
	if (!isset($g_client['token']['action']['key']['cookie']) || !isset($_SERVER['HTTP_RANDKEY']) || $g_client['token']['action']['key']['cookie'] != $_COOKIE[$_SERVER['HTTP_RANDKEY']]) {
		die(print json_encode(array("return" => false, "reason" => "")));
	}
	$_giccos->logsAjax();
	if (isset($_POST['robot']) && is_string($_POST['robot'])) $robotRequest = $_POST['robot']; else $robotRequest = null;
	if (isset($_POST['port']) && is_string($_POST['port'])) $port = $_POST['port']; else $port = null;
	if (isset($_POST['token']) && is_string($_POST['token'])) $token = $_POST['token']; else $token = null;
	if (isset($_POST['type']) && is_string($_POST['type'])) $type = $_POST['type']; else $type = null;
	if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
	if (isset($_POST[$g_client['token']['action']['key']['obj']]) && is_array($_POST[$g_client['token']['action']['key']['obj']])) $ObjRequest = $_POST[$g_client['token']['action']['key']['obj']]; else $ObjRequest = null;
	if ($type == null || $action == null) {
		// die(print json_encode(array("return" => false, "reason" => "")));
	}
	if ($ObjRequest == null) {
		// die(print json_encode(array("return" => false, "reason" => "")));
	}
	if ($port == "accounts" && $token == $g_client['token']['action']['accounts']) {
		if ($type == "login") {
			if (isset($ObjRequest['username']) && is_string($ObjRequest['username'])) $username = $ObjRequest['username']; else $username = null;
			if (isset($ObjRequest['password']) && is_string($ObjRequest['password'])) $password = $ObjRequest['password']; else $password = null;
			if (isset($ObjRequest['remember']) && is_string($ObjRequest['remember'])) $remember = $ObjRequest['remember']; else $remember = null;
			if ($username == null || $password == null) {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
			if ($remember == "false" || $remember == 0) {
				$remember = false;
			}else if ($remember == "true" || $remember == 1) {
				$remember = true;
			}else {
				//.
			}
			$loginAccount = $_user->login(array("type" => 1, "user" => array("username" => $username, "password" => $password), "remember" => $remember));
			if (isset($loginAccount['return']) && $loginAccount['return'] == true) {
				$_session->reset();
				$redirectArr['home'] = $_tool->links('::redirect::home');
				if (isset($_SESSION["redirect"]['later'])) {
					$redirectArr['later'] = $_tool->links($_tool->hash('decode', $_SESSION["redirect"]['later'], $_parameter->get('hash_sites_direct')));
					if ($redirectArr['later'] == $redirectArr['home']) {
						unset($redirectArr['later']);
					}
				}
				die(print json_encode(array("return" => true, "redirect" => $redirectArr)));
			}else if (isset($loginAccount['return'], $loginAccount['reason']) && $loginAccount['return'] == false) {
				die(print json_encode(array("return" => false, "reason" => $loginAccount['reason'])));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "register" || $type == "create") {
			if (isset($ObjRequest['login']) && (is_bool($ObjRequest['login']) || (is_string($ObjRequest['login']) && in_array($ObjRequest['login'], ["true", "false"])))) $loginAccount = $ObjRequest['login']; else $loginAccount = false;
			if (isset($ObjRequest['profile']['username']) && is_string($ObjRequest['profile']['username'])) $accountProfile['username'] = $ObjRequest['profile']['username']; else $accountProfile['username'] = null;
			if (isset($ObjRequest['profile']['password']) && is_string($ObjRequest['profile']['password'])) $accountProfile['password'] = $ObjRequest['profile']['password']; else $accountProfile['password'] = null;
			if (isset($ObjRequest['profile']['email']) && is_string($ObjRequest['profile']['email'])) $accountProfile['email'] = $ObjRequest['profile']['email']; else $accountProfile['email'] = null;
			if (isset($ObjRequest['profile']['firstname']) && is_string($ObjRequest['profile']['firstname'])) $accountProfile['firstname'] = $ObjRequest['profile']['firstname']; else $accountProfile['firstname'] = null;
			if (isset($ObjRequest['profile']['lastname']) && is_string($ObjRequest['profile']['lastname'])) $accountProfile['lastname'] = $ObjRequest['profile']['lastname']; else $accountProfile['lastname'] = null;
			if (isset($ObjRequest['profile']['birthday']) && is_array($ObjRequest['profile']['birthday']) && count($ObjRequest['profile']['birthday']) == 3) $accountProfile['birthday'] = $ObjRequest['profile']['birthday']; else $accountProfile['birthday'] = null;
			if (isset($ObjRequest['profile']['gender']) && is_string($ObjRequest['profile']['gender'])) $accountProfile['gender'] = $ObjRequest['profile']['gender']; else $accountProfile['gender'] = null;
			if ($accountProfile['username'] == null || $accountProfile['password'] == null || $accountProfile['email'] == null || $accountProfile['firstname'] == null || $accountProfile['lastname'] == null || $accountProfile['birthday'] == null || $accountProfile['gender'] == null) {
				die(print json_encode(array("return" => false, "reason" => "")));
			}else {
				//.
				if ($loginAccount == "true") {
					$loginAccount = true;
				}else if ($loginAccount == "false") {
					$loginAccount = false;
				}
				$createAccount = $_user->register(array("user" => $accountProfile));
				if (isset($createAccount['return'], $createAccount['data']) && $createAccount['return'] == true) {
					if (!isset($_SESSION["client"]['accounts']['create'])) {
						$_SESSION["client"]['accounts']['create'] = array();
					}
					$_SESSION["client"]['accounts']['create'][] = array("time" => time(), "user" => $createAccount['data']['id']);
					if (isset($loginAccount) && $loginAccount == true) {
						$loginAccountThis = $_user->login(array("type" => 1, "user" => array("username" => $accountProfile['username'], "password" => $accountProfile['password']), "remember" => false));
						if (isset($loginAccountThis['return']) && $loginAccountThis['return'] == true) {
							$_session->reset();
						}else {
							//.
						}
					}else {
						$_session->reset();
					}
					$redirectArr['home'] = $_tool->links('::redirect::home');
					if (isset($_SESSION["redirect"]['later'])) {
						$redirectArr['later'] = $_tool->links($_tool->hash('decode', $_SESSION["redirect"]['later'], $_parameter->get('hash_sites_direct')));
						if ($redirectArr['later'] == $redirectArr['home']) {
							unset($redirectArr['later']);
						}
					}
					die(print json_encode(array("return" => true, "redirect" => $redirectArr)));
				}else if (isset($createAccount['return'], $createAccount['reason']) && $createAccount['return'] == false) {
					die(print json_encode(array("return" => false, "reason" => $createAccount['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if (($port == "user" || $port == "users") && $token == $g_client['token']['action']['user']) {
		if ($type == "reload") {
			$photosMediaCacheClean = $_media->cache("photos", array("action" => "clean"));
			$musicMediaCacheClean = $_media->cache("music", array("action" => "clean"));
			$videosMediaCacheClean = $_media->cache("videos", array("action" => "clean"));
			if (!$photosMediaCacheClean || !$musicMediaCacheClean || !$videosMediaCacheClean) {
				die(print json_encode(array("return" => false, "reason" => "")));
			}else {
				foreach ($_COOKIE as $key => $value) {
					if (in_array($key, ["gPlayer_volume", "gPlayer_resizeT_o", "MesOpt_AutoScroll", "MesOpt_PressEnter"])) {
						setcookie($key, $value, 0, $_parameter->get('cookie.host.path'), $g_client['http']['secure'], false);
					}
				}
				die(print json_encode(array("return" => true)));
			}
		}else if ($type == "autocomplete") {
			if (isset($ObjRequest['value']) && is_string($ObjRequest['value'])) $value = $ObjRequest['value']; else $value = null;
			if (isset($ObjRequest['from']) && is_string($ObjRequest['from'])) $from = $ObjRequest['from']; else $from = null;
			if ($value == null || $from == null) {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
			if (isset($ObjRequest['path']) && is_string($ObjRequest['path'])) $path = $ObjRequest['path']; else $path = null;
			if ($path == null) {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
			$d_users = $d_groups = $d_pages = array();
			$value = $_tool->convertDatabaseString($ObjRequest['value']);
			$array_words = $_tool->StringtoArray($value, false);
			$array_words_c = array_count_values($array_words);
			if ($path == "info") {
				if ($from == "users" || $from == "friends" || $from == "all") {
					if ($from == "users") {
						$sql_regex[] = "`fullname` LIKE '%{$value}%'";
						$sql_regex[] = "`username` = '{$value}'";
						$sql_regex[] = "`email` = '{$value}'";
						$sql_regex[] = "`phone` = '{$value}'";
						$sql_regex[] = "`link` = '{$value}'";
					}else if ($from == "friends") {
						$sql_regex[] = "`fullname` LIKE '%{$value}%'";
						$sql_regex[] = "`username` LIKE '%{$value}%'";
						$sql_regex[] = "`email` = '{$value}'";
						$sql_regex[] = "`phone` = '{$value}'";
						$sql_regex[] = "`link` = '{$value}'";
					}
					foreach ($sql_regex as $key => $sql_regex_value) {
						if (isset($search_query_sql_regex) && $search_query_sql_regex != '') {
							$search_query_sql_regex .= " OR ".$sql_regex_value;
						}else {
							$search_query_sql_regex = $sql_regex_value;
						}
					}
					if ($from == "users") {
						$searchRequest = "SELECT `id` FROM `users` WHERE `private.search` >= '{$_parameter->get('user_private.search_agree')}' AND ({$search_query_sql_regex})";
					}else if ($from == "friends") {
						$searchRequest = "SELECT `id` FROM `users` WHERE `private.tag` >= '{$_parameter->get('user_private.tag_agree')}' AND `id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}') AND ({$search_query_sql_regex})";
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					$searchQuery = mysqli_query($_db->port('beta'), $searchRequest);
					if ($searchQuery == true && mysqli_num_rows($searchQuery) > 0) {
						while ($search_fetch = mysqli_fetch_assoc($searchQuery)) {
							$getUserAction = $_user->getInfo(array("rows" => "`id`, `username`, `fullname`, `avatar.small`, `cover.small`", "id" => $search_fetch['id']));
							if (isset($getUserAction['return'], $getUserAction['data']) && $getUserAction['return'] == true) {
								$d_users[] = array(
									"id" => $getUserAction['data']['id'],
									"tag" => $getUserAction['data']['username'],
									"name" => $getUserAction['data']['fullname'],
									"avatar" => $getUserAction['data']['avatar.small'],
									"cover" => $getUserAction['data']['cover.small']
								);
							}else {
								continue;
							}
						}
					}
				}
				if ($from == "groups" || $from == "all") {
					//.
				}
				if ($from == "pages" || $from == "all") {
					//.
				}
				die(print json_encode(array("return" => true, "data" => array("users" => $d_users, "groups" => $d_groups, "pages" => $d_pages), "s" => $search_query_sql)));
			}else if ($path == "mood") {
				$search_query_sql_regex = "`text` LIKE '%{$value}%'";
				$d_feels = array();
				if ($from == "feel" || $from == "all") {
					$search_query_sql = "SELECT `type`, `code` FROM `mood` WHERE `code` IN (SELECT `code` FROM `languages_values` WHERE `language` = '{$g_client['language']['code']}' AND `code` REGEXP '^[[.left-square-bracket.]]feel[[.right-square-bracket.]]' AND ({$search_query_sql_regex})) ORDER BY CHAR_LENGTH(`code`) ASC";
					$search_query = mysqli_query($_db->port('beta'),$search_query_sql);
					while ($search_fetch = mysqli_fetch_assoc($search_query)) {
						$d_feels[] = array(
							"type" => $search_fetch['type'],
							"code" => $search_fetch['code'],
							"text" => $_language->text($search_fetch['code'], "ucfirst"),
							"emoticon" => ""
						);
					}
				}
				die(print json_encode(array("return" => true, "data" => array("feels" => $d_feels))));
			}else if ($path == "media") {
				$d_scrapbook = $d_album = $d_playlist = array();
				if ($from == "scrapbook") {
					foreach ($array_words_c as $keyword => $keyword_c) {
						if (isset($search_query_sql_regex) && $search_query_sql_regex != '') {
							$search_query_sql_regex .= " AND `name` REGEXP '{$keyword}{{$keyword_c}}'";
						}else {
							$search_query_sql_regex = "`name` REGEXP '{$keyword}{{$keyword_c}}'";
						}
					}
					$search_query_sql_order = "ORDER BY CHAR_LENGTH(`name`) ASC";
					$author = $g_user['mode'];
					$search_query_sql = "SELECT `name`, `time`, `token` FROM `photos_scrapbook` WHERE `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}' AND {$search_query_sql_regex} {$search_query_sql_order}";
					$search_query = mysqli_query($_db->port('beta'),$search_query_sql);
					while ($search_fetch = mysqli_fetch_assoc($search_query)) {
						$d_scrapbook[] = array(
							"type" => "scrapbook",
							"thumbnail" => "",
							"name" => $search_fetch['name'],
							"token" => $search_fetch['token'],
							"time" => array(
								"stamp" => $search_fetch['time'],
								"ago" => $_tool->agoDatetime($search_fetch['time'], 'ago'),
								"tip" => $_tool->agoDatetime($search_fetch['time'], 'tip')
							)
						);
					}
				}else if ($from == "album") {
					foreach ($array_words_c as $keyword => $keyword_c) {
						if (isset($search_query_sql_regex) && $search_query_sql_regex != '') {
							$search_query_sql_regex .= " AND `name` REGEXP '{$keyword}{{$keyword_c}}'";
						}else {
							$search_query_sql_regex = "`name` REGEXP '{$keyword}{{$keyword_c}}'";
						}
					}
					$search_query_sql_order = "ORDER BY CHAR_LENGTH(`name`) ASC";
					$author = $g_user['mode'];
					$search_query_sql = "SELECT `name`, `time`, `token` FROM `music_album` WHERE `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}' AND {$search_query_sql_regex} {$search_query_sql_order}";
					$search_query = mysqli_query($_db->port('beta'),$search_query_sql);
					while ($search_fetch = mysqli_fetch_assoc($search_query)) {
						$d_album[] = array(
							"type" => "album",
							"thumbnail" => "",
							"name" => $search_fetch['name'],
							"token" => $search_fetch['token'],
							"time" => array(
								"stamp" => $search_fetch['time'],
								"ago" => $_tool->agoDatetime($search_fetch['time'], 'ago'),
								"tip" => $_tool->agoDatetime($search_fetch['time'], 'tip')
							)
						);
					}
				}else if ($from == "playlist") {
					foreach ($array_words_c as $keyword => $keyword_c) {
						if (isset($search_query_sql_regex) && $search_query_sql_regex != '') {
							$search_query_sql_regex .= " AND `name` REGEXP '{$keyword}{{$keyword_c}}'";
						}else {
							$search_query_sql_regex = "`name` REGEXP '{$keyword}{{$keyword_c}}'";
						}
					}
					$search_query_sql_order = "ORDER BY CHAR_LENGTH(`name`) ASC";
					$author = $g_user['mode'];
					$search_query_sql = "SELECT `name`, `time`, `token` FROM `videos_playlist` WHERE `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}' AND {$search_query_sql_regex} {$search_query_sql_order}";
					$search_query = mysqli_query($_db->port('beta'),$search_query_sql);
					while ($search_fetch = mysqli_fetch_assoc($search_query)) {
						$d_playlist[] = array(
							"type" => "playlist",
							"thumbnail" => "",
							"name" => $search_fetch['name'],
							"token" => $search_fetch['token'],
							"time" => array(
								"stamp" => $search_fetch['time'],
								"ago" => $_tool->agoDatetime($search_fetch['time'], 'ago'),
								"tip" => $_tool->agoDatetime($search_fetch['time'], 'tip')
							)
						);
					}
				}
				die(print json_encode(array("return" => true, "data" => array("scrapbook" => $d_scrapbook, "album" => $d_album, "playlist" => $d_playlist))));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "friends") {
			if (isset($ObjRequest['id']) && (is_string($ObjRequest['id']) || is_numeric($ObjRequest['id']))) $id = $ObjRequest['id']; else $id = 0;
			if (!in_array($action, ["add", "cancel", "accept", "refuse", "remove"]) || $id == null || $id == 0) {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
			if ($action == "add") {
				$addUserFriends = $_user->friends("add", array("id" => $id));
				if (isset($addUserFriends['return']) && $addUserFriends['return'] == true) {
					die(print json_encode(array("return" => true)));
				}else if (isset($addUserFriends['return'], $addUserFriends['reason']) && $addUserFriends['return'] == false) {
					die(print json_encode(array("return" => false, "reason" => $addUserFriends['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "cancel") {
				$cancelUserFriends = $_user->friends("cancel", array("id" => $id));
				if (isset($cancelUserFriends['return']) && $cancelUserFriends['return'] == true) {
					die(print json_encode(array("return" => true)));
				}else if (isset($cancelUserFriends['return'], $cancelUserFriends['reason']) && $cancelUserFriends['return'] == false) {
					die(print json_encode(array("return" => false, "reason" => $cancelUserFriends['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "accept") {
				$acceptUserFriends = $_user->friends("accept", array("id" => $id));
				if (isset($acceptUserFriends['return']) && $acceptUserFriends['return'] == true) {
					die(print json_encode(array("return" => true)));
				}else if (isset($acceptUserFriends['return'], $acceptUserFriends['reason']) && $acceptUserFriends['return'] == false) {
					die(print json_encode(array("return" => false, "reason" => $acceptUserFriends['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "refuse") {
				$refuseUserFriends = $_user->friends("refuse", array("id" => $id));
				if (isset($refuseUserFriends['return']) && $refuseUserFriends['return'] == true) {
					die(print json_encode(array("return" => true)));
				}else if (isset($refuseUserFriends['return'], $refuseUserFriends['reason']) && $refuseUserFriends['return'] == false) {
					die(print json_encode(array("return" => false, "reason" => $refuseUserFriends['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "remove") {
				$removeUserFriends = $_user->friends("remove", array("id" => $id));
				if (isset($removeUserFriends['return']) && $removeUserFriends['return'] == true) {
					die(print json_encode(array("return" => true)));
				}else if (isset($removeUserFriends['return'], $removeUserFriends['reason']) && $removeUserFriends['return'] == false) {
					die(print json_encode(array("return" => false, "reason" => $removeUserFriends['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "info") {
			if ($action == "update") {
				if (isset($ObjRequest['rows']) && is_array($ObjRequest['rows']) && count($ObjRequest['rows']) > 0) $rowsArr = $ObjRequest['rows']; else $rowsArr = null;
				if ($rowsArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$notifyArr = array();
				$reloadProfile = 0;
				foreach ($rowsArr as $rowsArrThis) {
					if (isset($rowsArrThis['label']) && is_string($rowsArrThis['label'])) $rowsArrThisLabel = $rowsArrThis['label']; else $rowsArrThisLabel = null;
					if (isset($rowsArrThis['value']) && $rowsArrThis['value'] != null) $rowsArrThisValue = $rowsArrThis['value']; else $rowsArrThisValue = null;
					if ($rowsArrThisLabel == null || $rowsArrThisValue == null) {
						continue;
					}
					if (in_array($rowsArrThisLabel, ["live", "country"])) {
						if (is_array($rowsArrThisValue)) {
							$placesCode = $rowsArrThisValue['code'];
							$getMapsPlaces = $_maps->places(true, array("type" => "get", "rows" => "`id`", "code" => $placesCode));
							if (isset($getMapsPlaces['return'], $getMapsPlaces['data'][0]) && $getMapsPlaces['return'] == true) {
								$rowsArrThisValue = $getMapsPlaces['data'][0]['id'];
							}else {
								$addMapsPlaces = $_maps->places(true, array("type" => "add", "code" => $placesCode));
								if (isset($addMapsPlaces['return']) && $addMapsPlaces['return'] == true) {
									$rowsArrThisValue = $addMapsPlaces['data']['id'];
								}else {
									$rowsArrThisValue = $rowsArrThisValue['address'];
								}
							}
						}else {
							$rowsArrThisValue = $rowsArrThisValue;
						}
					}else if (preg_match("/^(private)+/", $rowsArrThisLabel)) {
						$rowsArrThisLabel = preg_replace("/(\-\>)/", ".", $rowsArrThisLabel);
					}
					$updateUserInfo = $_user->info("update", array("label" => $rowsArrThisLabel, "value" => $rowsArrThisValue));
					if (isset($updateUserInfo['return']) && $updateUserInfo['return'] == true) {
						$notifyArr[$rowsArrThis['label']] = true;
						$reloadProfile++;
					}else {
						$notifyArr[$rowsArrThis['label']] = false;
					}
				}
				if ($reloadProfile > 0) {
					$_user->reloadProfile($g_user['id']);
				}
				die(print json_encode(array("return" => true, "notify" => $notifyArr)));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "photos" && $token == $g_client['token']['action']['photos']) {
		if ($type == "editor") {
			if ($action == "preview") {
				if (isset($ObjRequest['name']) && is_string($ObjRequest['name'])) $imgName = $ObjRequest['name']; else $imgName = null;
				if (isset($ObjRequest['options']) && is_string($ObjRequest['options'])) $editorOptions = $ObjRequest['options']; else $editorOptions = null;
				if ($imgName == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if ($editorOptions == "resize") {
					if (isset($ObjRequest['height']) && is_string($ObjRequest['height'])) $imgHeight = $ObjRequest['height']; else $imgHeight = null;
					if (isset($ObjRequest['width']) && is_string($ObjRequest['width'])) $imgWidth = $ObjRequest['width']; else $imgWidth = null;
					$getMediaCache = $_media->cache('photos', array("action" => "get", "label" => "name", "value" => $imgName));
					if (isset($getMediaCache['return'], $getMediaCache['data'][0]) && $getMediaCache['return'] == true && is_array($getMediaCache['data'][0])) {
						$imgData = $getMediaCache['data'][0];
						$imgDisplay = $imgData['path'];
						$imgPhotosEditor = photosEditor::factory($imgData);
						if ($imgWidth == null && $imgHeight != null) {
							$imgPhotosEditor->resize($imgWidth, 0);
						}else if ($imgWidth != null && $height == null) {
							$imgPhotosEditor->resize(0, $imgHeight);
						}else {
							$imgPhotosEditor->resize($imgWidth, $imgHeight);
						}
						$_storage->recheck(array("format" => "image", "label" => "display", "value" => $imgDisplay));
						die(print json_encode(array("return" => true)));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($editorOptions == "effect") {
					if (isset($_SESSION["cache"]['photos_editor_changing'][$imgName])) {
						$cachePhotosEditorChanging = $_SESSION["cache"]['photos_editor_changing'][$imgName];
					}else {
						$cachePhotosEditorChanging = null;
					}
					if (isset($cachePhotosEditorChanging, $cachePhotosEditorChanging['wait']) && $cachePhotosEditorChanging != null) {
						$imgIsWaiting = $cachePhotosEditorChanging['wait'];
						if ($imgIsWaiting == true) {
							$replaceMediaCacheOptions = array(
								"action" => "replace", 
								"set" => "cancel", 
								"name" => $imgName
							);
							$replaceMediaCache = $_media->cache("photos", $replaceMediaCacheOptions);
						}
					}
					if (isset($ObjRequest['layer']) && is_string($ObjRequest['layer'])) $effectLayer = $ObjRequest['layer']; else $effectLayer = null;
					if (isset($ObjRequest['value']) && is_string($ObjRequest['value'])) $effectValue = $ObjRequest['value']; else $effectValue = null;
					$cacheMediaGet = $_media->cache("photos", array("action" => "get", "label" => "name", "value" => $imgName));
					if (isset($cacheMediaGet['return'], $cacheMediaGet['data'][0]) && $cacheMediaGet['return'] == true && count($cacheMediaGet['data'][0]) > 0) {
						$returnValue = false;
						$imgData = $cacheMediaGet['data'][0];
						$imgPhotosEditor = photosEditor::factory($imgData);
						if ($effectLayer == "filter" && ($effectValue > 0 && $effectValue <= 8)) {
							$imgPhotosEditor->filter($effectValue);
							$returnValue = true;
						}else if ($effectLayer == "brightness" && ($effectValue >= -25 && $effectValue <= 25)) {
							$imgPhotosEditor->brightness($effectValue);
							$returnValue = true;
						}else if ($effectLayer == "contrast" && ($effectValue >= 0 && $effectValue <= 25)) {
							$imgPhotosEditor->stretch("{$effectValue},0", true);
							$returnValue = true;
						}else if ($effectLayer == "rotate" && in_array($effectValue, ["-90", "+90", "left", "right"])) {
							if ($effectValue == "left") {
								$effectValue = -90;
							}else if ($effectValue == "right") {
								$effectValue = +90;
							}
							$imgPhotosEditor->rotate($value);
							$returnValue = true;
						}
						if (isset($returnValue) && $returnValue == true) {
							$_SESSION["cache"]['photos_editor_changing'][$name]['wait'] = true;
							$_storage->recheck(array("format" => "image", "label" => "display", "value" => $imgData['path']));
							die(print json_encode(array("return" => true)));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($editorOptions == "action") {
					if (isset($ObjRequest['set']) && is_string($ObjRequest['set'])) $actionSet = $ObjRequest['set']; else $actionSet = null;
					if ($actionSet == "apply" || $actionSet == "cancel") {
						$cacheMediaGet = $_media->cache('photos', array("action" => "replace", "set" => $actionSet, "name" => $imgName));
						if (isset($cacheMediaGet['return']) && $cacheMediaGet['return'] == true) {
							$_SESSION["cache"]['photos_editor_handling'][$imgName]['wait'] = false;
							die(print json_encode(array("return" => true)));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "cache") {
			if ($action == "add") {
				$fileUpload = $_FILES["file"];
				$fileArr = $_tool->resetFileUpload($fileUpload);
				$fileReturnArr = null;
				foreach ($fileArr as $key => $fileArrThis) {
					$cacheMediaGet = $_media->cache("photos", array("action" => "add", "file" => $fileArrThis));
					if (isset($cacheMediaGet['return'], $cacheMediaGet['data']) && $cacheMediaGet['return'] == true && is_array($cacheMediaGet['data']) && count($cacheMediaGet['data']) > 0) {
						$cacheMediaData = $cacheMediaGet['data'];
						$fileReturnArr[$key] = array("type" => "photos", "local" => "cache", "verify" => "false");
						$fileReturnArr[$key]['secret'] = $cacheMediaData['secret'];
						$fileReturnArr[$key]['name'] = $cacheMediaData['name'];
						$fileReturnArr[$key]['mime'] = $cacheMediaData['mime'];
						$fileReturnArr[$key]['link'] = $_tool->links('photos/cache/'.$cacheMediaData['name']);
						$fileReturnArr[$key]['size'] = $cacheMediaData['size'];
						if (isset($ObjRequest['resize'][$key]) && is_array($ObjRequest['resize'][$key])) $imgResize = $ObjRequest['resize'][$key]; else $imgResize = null;
						if ($imgResize != null) {
							if (!isset($ObjRequest['resize'][$key]['width']) || !is_string($ObjRequest['resize'][$key]['width'])) $ObjRequest['resize'][$key]['width'] = 0;
							if (!isset($ObjRequest['resize'][$key]['height']) || !is_string($ObjRequest['resize'][$key]['height'])) $ObjRequest['resize'][$key]['height'] = 0;
							if ($ObjRequest['resize'][$key]['width'] != null && $ObjRequest['resize'][$key]['height'] != null) {
								$imgPhotosEditor = photosEditor::factory($cacheMediaData['tmp'], true);
								$imgPhotosEditor->resize($ObjRequest['resize'][$key]['width'], $ObjRequest['resize'][$key]['height']);
							}
						}
						/*
						$optionsForm = array(
							"robot" => $g_client['token']['robot'],
							"token" => $g_client['token']['action']['photos'],
							"port" => "photos",
							"type" => "analysis",
							"action" => "getFaces",
						    "secret" => $media_cache["data"]['secret']
						);
						$optionsHeaders = array(
							"token" => $g_client['token']['ajax'],
							"referer" => $_tool->links(),
							"host" => $_tool->links("::host"),
							"x-requested-with" =>"XMLHttpRequest"
						);
						$_tool->curl($_tool->links("source/ajax/action.ajax"), 0, array("cookie" => true, "method" => "POST", "headers" => $optionsHeaders, "form" => $optionsForm));
						*/
					}else {
						continue;
						//. $fileReturnArr[$key] = $media_cache['file'];
					}
				}
				die(print json_encode(array("return" => true, "data" => $fileReturnArr, "x" => $cacheMediaGet)));
			}else if ($action == "copy") {
				if (isset($ObjRequest['name']) && is_string($ObjRequest['name'])) $imgName = $ObjRequest['name']; else $imgName = null;
				if (isset($ObjRequest['secret']) && is_string($ObjRequest['secret'])) $imgSecret = $ObjRequest['secret']; else $imgSecret = null;
				if ($imgName == null || $imgSecret == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$getMediaCache = $_media->cache("photos", array("action" => "copy", "secret" => $imgSecret, "name" => $imgName));
				if (isset($getMediaCache['return'], $getMediaCache['data']) && $getMediaCache['return'] == true && is_array($getMediaCache['data'])) {
					$imgData['original']['secret'] = $getMediaCache['data']['original']['secret'];
					$imgData['original']['name'] = $getMediaCache['data']['original']['name'];
					$imgData['original']['nameraw'] = $getMediaCache['data']['original']['nameraw'];
					$imgData['original']['link'] = $_tool->links('photos/cache/'.$getMediaCache['data']['original']['name']);
					$imgData['copy']['secret'] = $getMediaCache['data']['copy']['secret'];
					$imgData['copy']['name'] = $getMediaCache['data']['copy']['name'];
					$imgData['copy']['nameraw'] = $getMediaCache['data']['copy']['nameraw'];
					$imgData['copy']['link'] = $_tool->links('photos/cache/'.$getMediaCache['data']['copy']['name']);
					die(print json_encode(array("return" => true, "data" => $imgData)));
				}else if (isset($getMediaCache['return'], $getMediaCache['reason']) && $getMediaCache['return'] == false) {
					die(print json_encode(array("return" => false, "reason" => $getMediaCache['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "delete") {
				if (isset($ObjRequest['file']) && is_array($ObjRequest['file']) && count($ObjRequest['file']) > 0) $imgFileArr = $ObjRequest['file']; else $imgFileArr = null;
				if ($imgFileArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$notifyArr = array();
				foreach ($imgFileArr as $key => $imgFileArrThis) {
					if (isset($imgFileArrThis['name']) && is_string($imgFileArrThis['name'])) $imgName = $imgFileArrThis['name']; else $imgName = null;
					if (isset($imgFileArrThis['secret']) && is_string($imgFileArrThis['secret'])) $imgSecret = $imgFileArrThis['secret']; else $imgSecret = null;
					if (isset($imgFileArrThis['verify']) && $imgFileArrThis['verify']) $imgVerify = $imgFileArrThis['verify']; else $imgVerify = null;
					if (isset($imgVerify) && in_array($imgVerify, ["0", 0, "false", false])) {
						$verifyValue = false;
					}else if (isset($imgVerify) && in_array($imgVerify, ["1", 1, "true", true])) {
						$verifyValue = true;
					}else {
						continue;
					}
					if ($imgName == null || $imgSecret == null) {
						$notifyArr[] = array("return" => false, "reason" => "");
					}
					$deleteMediaFile = $_media->cache("photos", array("action" => "delete", "secret" => $imgSecret, "name" => $imgName, "verify" => $imgVerify));
					if (isset($deleteMediaFile['return']) && $deleteMediaFile['return'] == true) {
						$notifyArr[] = array("return" => true, "file" => $imgFileArrThis);
					}else if (isset($deleteMediaFile['return'], $deleteMediaFile['reason']) && $deleteMediaFile['return'] == false) {
						$notifyArr[] = array("return" => false, "file" => $imgFileArrThis, "reason" => $deleteMediaFile['reason']);
					}else {
						$notifyArr[] = array("return" => false, "file" => $imgFileArrThis, "reason" => "");
					}
				}
				die(print json_encode(array("return" => true, "data" => $notifyArr)));
			}else if ($action == "push") {
				if (isset($ObjRequest['file']) && is_array($ObjRequest['file']) && count($ObjRequest['file']) > 0) $imgFileArr = $ObjRequest['file']; else $imgFileArr = null;
				if ($imgFileArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$notifyArr = array();
				foreach ($imgFileArr as $key => $imgFileArrThis) {
					if (isset($imgFileArrThis['name']) && is_string($imgFileArrThis['name'])) $imgName = $imgFileArrThis['name']; else $imgName = null;
					if (isset($imgFileArrThis['secret']) && is_string($imgFileArrThis['secret'])) $imgSecret = $imgFileArrThis['secret']; else $imgSecret = null;
					if ($imgName == null || $imgSecret == null) {
						$notifyArr[] = array("return" => false, "reason" => "");
					}
					$deleteMediaFile = $_media->cache("photos", array("action" => "push", "secret" => $imgSecret, "name" => $imgName));
					if (isset($deleteMediaFile['return']) && $deleteMediaFile['return'] == true) {
						$notifyArr[] = array("return" => true, "file" => $imgFileArrThis);
					}else if (isset($deleteMediaFile['return'], $deleteMediaFile['reason']) && $deleteMediaFile['return'] == false) {
						$notifyArr[] = array("return" => false, "file" => $imgFileArrThis, "reason" => $deleteMediaFile['reason']);
					}else {
						$notifyArr[] = array("return" => false, "file" => $imgFileArrThis, "reason" => "");
					}
				}
				die(print json_encode(array("return" => true, "data" => $notifyArr)));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "info") {
			if ($action == "get") {
				die(print json_encode(array("return" => false)));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "faces") {
			if ($action == "write") {
				if (isset($ObjRequest['photos']['local']) && is_string($ObjRequest['photos']['local'])) $photosLocal = $ObjRequest['photos']['local']; else $photosLocal = null;
				if (isset($ObjRequest['photos']['label']) && is_string($ObjRequest['photos']['label'])) $photosLabel = $ObjRequest['photos']['label']; else $photosLabel = null;
				if (isset($ObjRequest['photos']['value']) && is_string($ObjRequest['photos']['value'])) $photosValue = $ObjRequest['photos']['value']; else $photosValue = null;
				if (isset($ObjRequest['boundingbox']['tl']['y']) && is_string($ObjRequest['boundingbox']['tl']['y'])) $boundingbox_tl_y = $ObjRequest['boundingbox']['tl']['y']; else $boundingbox_tl_y = null;
				if (isset($ObjRequest['boundingbox']['tl']['x']) && is_string($ObjRequest['boundingbox']['tl']['x'])) $boundingbox_tl_x = $ObjRequest['boundingbox']['tl']['x']; else $boundingbox_tl_x = null;
				if (isset($ObjRequest['boundingbox']['size']['height']) && is_string($ObjRequest['boundingbox']['size']['height'])) $boundingbox_size_height = $ObjRequest['boundingbox']['size']['height']; else $boundingbox_size_height = null;
				if (isset($ObjRequest['boundingbox']['size']['width']) && is_string($ObjRequest['boundingbox']['size']['width'])) $boundingbox_size_width = $ObjRequest['boundingbox']['size']['width']; else $boundingbox_size_width = null;
				if (isset($ObjRequest['guy']['type']) && is_string($ObjRequest['guy']['type'])) $guyType = $ObjRequest['guy']['type']; else $guyType = 0;
				if (isset($ObjRequest['guy']['id']) && is_string($ObjRequest['guy']['id'])) $guyId = $ObjRequest['guy']['id']; else $guyId = null;
				if ($photosLocal == null || $photosLabel == null || $photosValue == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if ($boundingbox_tl_y == null || $boundingbox_tl_x == null || $boundingbox_size_height == null || $boundingbox_size_width == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if ($guyType == null || $guyId == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if ($photosLocal == "cache") {
					$dbName = "photos_cache";
				}else if ($photosLocal == "drive") {
					$dbName = "photos_info";
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$getExists = $_media->exists("photos", array("db" => $dbName, "label" => $photosLabel, "value" => $photosValue));
				if (isset($getExists['return'], $getExists['exists']) && $getExists['return'] == true && $getExists['exists'] == true) {
					$photosId = $getExists['id'][0];
					if ($photosLocal == "cache") {
						$photosQuerySql = "SELECT `secret`, `name` FROM {$dbName} WHERE `id` = '{$photosId}' ORDER BY `id` DESC LIMIT 1";
					}else if ($photosLocal == "cache") {
						$photosQuerySql = "SELECT `display` FROM {$dbName} WHERE `id` = '{$photosId}' ORDER BY `id` DESC LIMIT 1";
					}
					$photosQuery = mysqli_query($_db->port('beta'), $photosQuerySql);
					if (!$photosQuery) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					$photosFetch = mysqli_fetch_assoc($photosQuery);
					if ($photosLocal == "cache") {
						$photosDisplay = $photosFetch['secret'];
					}else if ($photosLocal == "drive") {
						$photosDisplay = $photosFetch['display'];
					}
					$numTagQuerySql = "SELECT `id` FROM `photos_faces` WHERE `photos` = '{$photosDisplay}' AND `photos.local` = '{$photosLocal}' AND `boundingbox.tl.y` = '{$boundingbox_tl_y}' AND `boundingbox.tl.x` = '{$boundingbox_tl_x}' AND `boundingbox.size.height` = '{$boundingbox_size_height}' AND `boundingbox.size.width` = '{$boundingbox_size_width}' LIMIT 1";
					$numTagQuery = mysqli_query($_db->port('beta'), $numTagQuerySql);
					if ($numTagQuery) $numTag = mysqli_num_rows($numTagQuery); else $numTag = 0;
					if ($numTag == 0) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}else {
						//. check private guy.
						$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $photosDisplay, "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
						if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
							$imageSource = $_tool->hash('decode', $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
							list($boundingbox_img_width, $boundingbox_img_height) = getimagesize($imageSource);
							$boundingbox_ratio_height = $boundingbox_img_height / $boundingbox_size_height;
							$boundingbox_ratio_width = $boundingbox_img_width / $boundingbox_size_width;
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
						$numTagFecth = mysqli_fetch_assoc($numTagQuery);
						$numTagId = $numTagFecth['id'];
						$cacheFacestag = array();
						$cacheFacestag['photos'] = $photosDisplay;
						$cacheFacestag['photos.local'] = $photosLocal;
						$cacheFacestag['faces.image'] = 0;
						$cacheFacestag['faces'] = 0;
						$cacheFacestag['token'] = hash('crc32', $cacheFacestag['photos.local'].'::'.$cacheFacestag['photos'].'::'.time());
						$cacheFacestag['display'] = hash('md5', $cacheFacestag['token']);
						$numTagInsertSql = "
						INSERT INTO `photos_faces` 
						(`id`, `token`, `display`, `user.id`, `author.type`, `author.id`, `photos`, `photos.local`, `faces`, `faces.image`, `guy.type`, `guy.id`, `boundingbox.tl.y`, `boundingbox.tl.x`, `boundingbox.size.height`, `boundingbox.size.width`, `boundingbox.ratio.height`, `boundingbox.ratio.width`) 
						VALUES 
						(NULL, '{$cacheFacestag['token']}', '{$cacheFacestag['display']}', '{$g_user['id']}', '{$g_user['mode']['type']}', '{$g_user['mode']['id']}', '{$cacheFacestag['photos']}', '{$cacheFacestag['photos.local']}', '{$cacheFacestag['faces']}', '{$cacheFacestag['faces.image']}', {$guyType}, {$guyId}, '{$boundingbox_tl_y}', '{$boundingbox_tl_x}', '{$boundingbox_size_height}', '{$boundingbox_size_width}', '{$boundingbox_ratio_height}', '{$boundingbox_ratio_width}');
						";
						$numTagInsert = mysqli_query($_db->port('beta'), $numTagInsertSql);
						if (!$numTagInsert) {
							die(print json_encode(array("return" => false, "reason" => "")));
						}else {
							die(print json_encode(array("return" => true, "faces" => $cacheFacestag)));
						}
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "get" || $action == "check") {
				if (isset($ObjRequest['photos']['local']) && is_string($ObjRequest['photos']['local'])) $photosLocal = $ObjRequest['photos']['local']; else $photosLocal = null;
				if (isset($ObjRequest['photos']['label']) && is_string($ObjRequest['photos']['label'])) $photosLabel = $ObjRequest['photos']['label']; else $photosLabel = null;
				if (isset($ObjRequest['photos']['value']) && is_string($ObjRequest['photos']['value'])) $photosValue = $ObjRequest['photos']['value']; else $photosValue = null;
				if ($photosLocal == null || $photosLabel == null || $photosValue == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if ($photosLocal == "cache") {
					$dbName = "photos_cache";
				}else if ($photosLocal == "drive") {
					$dbName = "photos_info";
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$getExists = $_media->exists("photos", array("db" => $dbName, "label" => $photosLabel, "value" => $photosValue));
				if (isset($getExists['return'], $getExists['exists']) && $getExists['return'] == true && $getExists['exists'] == true) {
					$photosId = $getExists['id'][0];
					if ($photosLocal == "cache") {
						$photosQuerySql = "SELECT `secret`, `name` FROM {$dbName} WHERE `id` = '{$photosId}' ORDER BY `id` DESC LIMIT 1";
					}else if ($photosLocal == "cache") {
						$photosQuerySql = "SELECT `display`, `file.original`, `file.large` FROM {$dbName} WHERE `id` = '{$photosId}' ORDER BY `id` DESC LIMIT 1";
					}
					$photosQuery = mysqli_query($_db->port('beta'), $photosQuerySql);
					if (!$photosQuery) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					$photosFetch = mysqli_fetch_assoc($photosQuery);
					if ($photosLocal == "cache") {
						$photosDisplay = $photosFetch['secret'];
						$photosLink = $_tool->links('photos/cache/'.$photosFetch['name']);
					}else if ($photosLocal == "drive") {
						$photosDisplay = $photosFetch['display'];
						if ($photosFetch['path.large'] != 0 && $photosFetch['file.large'] != 0) {
							$photosLink = $_tool->links('photos/raw/'.$photosFetch['file.large']);
						}else {
							$photosLink = $_tool->links('photos/raw/'.$photosFetch['file.original']);
						}
					}
					if (isset($_SESSION["cache"]['photos_faces_notfound'])) {
						$cachePhotosGetFacesNotfound = $_SESSION["cache"]['photos_faces_notfound'];
						foreach ($cachePhotosGetFacesNotfound as $key => $cachePhotosGetFacesNotfoundThis) {
							if (isset($cachePhotosGetFacesNotfoundThis['photos'], $cachePhotosGetFacesNotfoundThis['photos.local'], $cachePhotosGetFacesNotfoundThis['user.id'], $cachePhotosGetFacesNotfoundThis['author.type'], $cachePhotosGetFacesNotfoundThis['author.id']) && is_string($cachePhotosGetFacesNotfoundThis['photos']) && is_string($cachePhotosGetFacesNotfoundThis['photos.local'])) {
								if ($cachePhotosGetFacesNotfoundThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesNotfoundThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesNotfoundThis['author.id'] == $g_user['mode']['id'] && $cachePhotosGetFacesNotfoundThis['photos'] == $photosDisplay && $cachePhotosGetFacesNotfoundThis['photos.local'] == $photosLocal) {
									$_SESSION["cache"]['photos_faces_notfound'] = $cachePhotosGetFacesNotfound;
									if ($robotRequest == $g_client['token']['robot']) {
										die(print json_encode(array("return" => true)));
									}
									die(print json_encode(array("return" => true, "image" => $imageData, "faces" => array())));
								}else {
									continue;
								}
							}else {
								unset($cachePhotosGetFacesNotfound[$key]);
							}
						}
					}
					if (isset($_SESSION["cache"]['photos_faces_handling'])) {
						$cachePhotosGetFacesHandling = $_SESSION["cache"]['photos_faces_handling'];
						foreach ($cachePhotosGetFacesHandling as $key => $cachePhotosGetFacesHandlingThis) {
							if (isset($cachePhotosGetFacesHandlingThis['photos'], $cachePhotosGetFacesHandlingThis['photos.local'], $cachePhotosGetFacesHandlingThis['user.id'], $cachePhotosGetFacesHandlingThis['author.type'], $cachePhotosGetFacesHandlingThis['author.id']) && is_string($cachePhotosGetFacesHandlingThis['photos']) && is_string($cachePhotosGetFacesHandlingThis['photos.local'])) {
								if ($cachePhotosGetFacesHandlingThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesHandlingThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesHandlingThis['author.id'] == $g_user['mode']['id'] && $cachePhotosGetFacesHandlingThis['photos'] == $photosDisplay && $cachePhotosGetFacesHandlingThis['photos.local'] == $photosLocal) {
									$_SESSION["cache"]['photos_faces_handling'] = $cachePhotosGetFacesHandling;
									if ($robotRequest == $g_client['token']['robot']) {
										die(print json_encode(array("return" => false)));
									}
									die(print json_encode(array("return" => false, "reason" => "")));
								}else {
									continue;
								}
							}else {
								unset($cachePhotosGetFacesHandling[$key]);
							}
						}
					}
					if (isset($_SESSION["cache"]['photos_faces'])) {
						$cachePhotosGetFaces = $_SESSION["cache"]['photos_faces'];
						$facesDataCache = array();
						foreach ($cachePhotosGetFaces as $key => $cachePhotosGetFacesThis) {
							if (isset($cachePhotosGetFacesThis['photos'])) {
								if (isset($cachePhotosGetFacesThis['user.id'], $cachePhotosGetFacesThis['author.type'], $cachePhotosGetFacesThis['author.id'])) {
									if ($cachePhotosGetFacesThis['photos'] == $photosDisplay && $cachePhotosGetFacesThis['photos.local'] == $photosLocal) {
										if (isset($cachePhotosGetFacesThis['faces'], $cachePhotosGetFacesThis['thumbnail'], $cachePhotosGetFacesThis['display'], $cachePhotosGetFacesThis['position'], $cachePhotosGetFacesThis['size'], $cachePhotosGetFacesThis['ratio'])) {
											if ($cachePhotosGetFacesThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesThis['author.id'] == $g_user['mode']['id']) {
												$cachePhotosGetFacesThisPush = $cachePhotosGetFacesThis;
												if (isset($cachePhotosGetFacesThisPush['user.id'])) {
													unset($cachePhotosGetFacesThisPush['user.id']);
												}
												if (isset($cachePhotosGetFacesThisPush['author.type'])) {
													unset($cachePhotosGetFacesThisPush['author.type']);
												}
												if (isset($cachePhotosGetFacesThisPush['author.id'])) {
													unset($cachePhotosGetFacesThisPush['author.id']);
												}
												$facesDataCache[] = $cachePhotosGetFacesThisPush;
											}else {
												continue;
											}
										}else {
											unset($cachePhotosGetFaces[$key]);
										}
									}else {
										continue;
									}
								}else if (!isset($cachePhotosGetFacesThis['user.id'], $cachePhotosGetFacesThis['author.type'], $cachePhotosGetFacesThis['author.id'])) {
									unset($cachePhotosGetFaces[$key]);
								}else {
									continue;
								}
							}else {
								unset($cachePhotosGetFaces[$key]);
							}
						}
						$_SESSION["cache"]['photos_faces'] = $cachePhotosGetFaces;
						if (count($facesDataCache) > 0) {
							if ($robotRequest == $g_client['token']['robot']) {
								die(print json_encode(array("return" => true)));
							}
							die(print json_encode(array("return" => true, "faces" => $facesDataCache)));
						}
					}
					$imgUrl = $photosLink;
					$getAnalysis = $_analysis->faces("check", array("url" => $imgUrl));
					if (isset($getAnalysis['return'], $getAnalysis['faces']) && $getAnalysis['return'] == true && is_array($getAnalysis['faces'])) {
						$faceAnalysis = $getAnalysis['faces'];
						$facesData = array();
						if (count($getAnalysis['faces']) == 0) {
							$_SESSION["cache"]['photos_faces_notfound'][] = array(
								"user.id" => $g_user['id'],
								"author.type" => $g_user['mode']['type'],
								"author.id" => $g_user['mode']['id'],
								"photos" => $photosDisplay,
								"photos.local" => $photosLocal
							);
						}
						foreach ($faceAnalysis as $key => $faceAnalysisThis) {
							if ($faceAnalysisThis['confidence'] < $_parameter->get('rekognition_rate_allow')) {
								unset($faceAnalysis[$key]);
							}else {
								$facesData[] = $faceAnalysisThis;
								continue;
							}
						}
						die(print json_encode(array("return" => true, "faces" => $facesData)));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "add") {
				if (isset($ObjRequest['photos']['local']) && is_string($ObjRequest['photos']['local'])) $photosLocal = $ObjRequest['photos']['local']; else $photosLocal = null;
				if (isset($ObjRequest['photos']['label']) && is_string($ObjRequest['photos']['label'])) $photosLabel = $ObjRequest['photos']['label']; else $photosLabel = null;
				if (isset($ObjRequest['photos']['value']) && is_string($ObjRequest['photos']['value'])) $photosValue = $ObjRequest['photos']['value']; else $photosValue = null;
				if ($photosLocal == null || $photosLabel == null || $photosValue == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if ($photosLocal == "cache") {
					$getMediaCache = $_media->cache('photos', array("action" => "get", "label" => $photosLabel, "rows" => "*", "value" => $photosValue, "limit" => "ORDER BY `id` DESC LIMIT 1"));
				}else if ($photosLocal == "drive") {
					$getMediaCache = $_media->data('photos', array("action" => "get", "label" => $photosLabel, "rows" => "*", "value" => $photosValue, "limit" => "ORDER BY `id` DESC LIMIT 1"));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if ($photosLocal == "cache" && isset($getMediaCache['return']) && $getMediaCache['return'] == true && is_array($getMediaCache['data']) && count($getMediaCache['data']) > 0) {
					$fileCache = $getMediaCache['data'][0];
					$fileCache['local'] = "cache";
					$fileCache['display'] = $fileCache['secret'];
					$fileCache['link'] = $_tool->links('photos/cache/'.$fileCache['name']);
					if (!isset($fileCache['path']) || $fileCache['path'] == null) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($photosLocal == "drive" && isset($getMediaCache['return']) && $getMediaCache['return'] == true && is_array($getMediaCache['data']) && count($getMediaCache['data']) > 0) {
					$fileCache = $getMediaCache['data'][0];
					$fileCache['local'] = "drive";
					$fileCache['mime'] = $fileCache['mime_type'];
					if (isset($fileCache['file.original'], $fileCache['file.large']) && $fileCache['file.original'] != null && $fileCache['file.large'] != null) {
						if ($fileCache['file.large'] != 0) {
							$fileCache['path'] = $fileCache['file.large'];
							$fileCache['link'] = $this->class['_tool']->links('photos/raw/').$fileCache['file.large'];
						}else {
							$fileCache['path'] = $fileCache['file.original'];
							$fileCache['link'] = $this->class['_tool']->links('photos/raw/').$fileCache['file.original'];
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if (isset($fileCache['path']) && $fileCache['path'] != null) {
					$getMediaFile = $_storage->get(array("format" => "image", "label" => "display", "value" => $fileCache['path'], "rows" => "`token`, `path`", "limit" => "LIMIT 1"));
					if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
						$fileCache['source'] = $_tool->hash('decode', $getMediaFile['file'][0]['path'], $getMediaFile['file'][0]['token']);
						if ($fileCache['local'] == "cache") {
							list($fileCachesW, $fileCachesH) = getimagesize($fileCache['source']);
							$fileCache['size'] = array("height" => $fileCachesH, "width" => $fileCachesW);
						}else {
							$fileCache['size'] = array("height" => $fileCache['size.height'], "width" => $fileCache['size.width']);
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}
				if (isset($fileCache) && is_array($fileCache) && count($fileCache) > 0) {
					$imageData = array(
						"link" => $fileCache['link'],
						"display" => $fileCache['display'],
						"mime" => $fileCache['mime'],
						"name" => $fileCache['name'],
						"size" => $fileCache['size']
					);
					if (isset($_SESSION["cache"]['photos_faces_notfound'])) {
						$cachePhotosGetFacesNotfound = $_SESSION["cache"]['photos_faces_notfound'];
						foreach ($cachePhotosGetFacesNotfound as $key => $cachePhotosGetFacesNotfoundThis) {
							if (isset($cachePhotosGetFacesNotfoundThis['photos'], $cachePhotosGetFacesNotfoundThis['photos.local'], $cachePhotosGetFacesNotfoundThis['user.id'], $cachePhotosGetFacesNotfoundThis['author.type'], $cachePhotosGetFacesNotfoundThis['author.id']) && is_string($cachePhotosGetFacesNotfoundThis['photos']) && is_string($cachePhotosGetFacesNotfoundThis['photos.local'])) {
								if ($cachePhotosGetFacesNotfoundThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesNotfoundThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesNotfoundThis['author.id'] == $g_user['mode']['id'] && $cachePhotosGetFacesNotfoundThis['photos'] == $fileCache['display'] && $cachePhotosGetFacesNotfoundThis['photos.local'] == $fileCache['local']) {
									$_SESSION["cache"]['photos_faces_notfound'] = $cachePhotosGetFacesNotfound;
									if ($robotRequest == $g_client['token']['robot']) {
										die(print json_encode(array("return" => true)));
									}
									die(print json_encode(array("return" => true, "image" => $imageData, "faces" => array())));
								}else {
									continue;
								}
							}else {
								unset($cachePhotosGetFacesNotfound[$key]);
							}
						}
					}
					if (isset($_SESSION["cache"]['photos_faces_handling'])) {
						$cachePhotosGetFacesHandling = $_SESSION["cache"]['photos_faces_handling'];
						foreach ($cachePhotosGetFacesHandling as $key => $cachePhotosGetFacesHandlingThis) {
							if (isset($cachePhotosGetFacesHandlingThis['photos'], $cachePhotosGetFacesHandlingThis['photos.local'], $cachePhotosGetFacesHandlingThis['user.id'], $cachePhotosGetFacesHandlingThis['author.type'], $cachePhotosGetFacesHandlingThis['author.id']) && is_string($cachePhotosGetFacesHandlingThis['photos']) && is_string($cachePhotosGetFacesHandlingThis['photos.local'])) {
								if ($cachePhotosGetFacesHandlingThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesHandlingThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesHandlingThis['author.id'] == $g_user['mode']['id'] && $cachePhotosGetFacesHandlingThis['photos'] == $fileCache['display'] && $cachePhotosGetFacesHandlingThis['photos.local'] == $fileCache['local']) {
									$_SESSION["cache"]['photos_faces_handling'] = $cachePhotosGetFacesHandling;
									if ($robotRequest == $g_client['token']['robot']) {
										die(print json_encode(array("return" => false)));
									}
									die(print json_encode(array("return" => false, "reason" => "")));
								}else {
									continue;
								}
							}else {
								unset($cachePhotosGetFacesHandling[$key]);
							}
						}
					}
					if (isset($_SESSION["cache"]['photos_faces'])) {
						$cachePhotosGetFaces = $_SESSION["cache"]['photos_faces'];
						$facesDataCache = array();
						foreach ($cachePhotosGetFaces as $key => $cachePhotosGetFacesThis) {
							if (isset($cachePhotosGetFacesThis['photos'])) {
								if (isset($cachePhotosGetFacesThis['user.id'], $cachePhotosGetFacesThis['author.type'], $cachePhotosGetFacesThis['author.id'])) {
									if ($cachePhotosGetFacesThis['photos'] == $fileCache['display'] && $cachePhotosGetFacesThis['photos.local'] == $fileCache['local']) {
										if (isset($cachePhotosGetFacesThis['faces'], $cachePhotosGetFacesThis['thumbnail'], $cachePhotosGetFacesThis['display'], $cachePhotosGetFacesThis['position'], $cachePhotosGetFacesThis['size'], $cachePhotosGetFacesThis['ratio'])) {
											if ($cachePhotosGetFacesThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesThis['author.id'] == $g_user['mode']['id']) {
												$cachePhotosGetFacesThisPush = $cachePhotosGetFacesThis;
												if (isset($cachePhotosGetFacesThisPush['user.id'])) {
													unset($cachePhotosGetFacesThisPush['user.id']);
												}
												if (isset($cachePhotosGetFacesThisPush['author.type'])) {
													unset($cachePhotosGetFacesThisPush['author.type']);
												}
												if (isset($cachePhotosGetFacesThisPush['author.id'])) {
													unset($cachePhotosGetFacesThisPush['author.id']);
												}
												$facesDataCache[] = $cachePhotosGetFacesThisPush;
											}else {
												continue;
											}
										}else {
											unset($cachePhotosGetFaces[$key]);
										}
									}else {
										continue;
									}
								}else if (!isset($cachePhotosGetFacesThis['user.id'], $cachePhotosGetFacesThis['author.type'], $cachePhotosGetFacesThis['author.id'])) {
									unset($cachePhotosGetFaces[$key]);
								}else {
									continue;
								}
							}else {
								unset($cachePhotosGetFaces[$key]);
							}
						}
						$_SESSION["cache"]['photos_faces'] = $cachePhotosGetFaces;
						if (count($facesDataCache) > 0) {
							if ($robotRequest == $g_client['token']['robot']) {
								die(print json_encode(array("return" => true)));
							}
							die(print json_encode(array("return" => true, "image" => $imageData, "faces" => $facesDataCache)));
						}
					}
					$photosGetFaces_query = mysqli_query($_db->port('beta'), "SELECT * FROM `photos_faces` WHERE `photos` = '{$fileCache['display']}' AND `photos.local` = '{$fileCache['local']}' AND `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `user.id` = '{$g_user['id']}'");
					if ($photosGetFaces_query) $photosGetFaces_num = mysqli_num_rows($photosGetFaces_query); else $photosGetFaces_num = 0;
					if ($photosGetFaces_num > 0) {
						$facesData = array();
						while ($photosGetFaces_fetch = mysqli_fetch_assoc($photosGetFaces_query)) {
							$checkExists = $_analysis->faces("exists", array("label" => "display", "value" => $photosGetFaces_fetch['faces']));
							if (isset($checkExists['return'], $checkExists['exists']) && $checkExists['return'] == true && $checkExists['exists'] == false) {
								mysqli_query($_db->port('beta'), "DELETE FROM `photos_cache_usertag` WHERE `id` = '{$photosGetFaces_fetch['id']}'");
								continue;
							}
							if ($photosGetFaces_fetch['guy.type'] != null && $photosGetFaces_fetch['guy.id'] != null) {
								if ($photosGetFaces_fetch['guy.type'] == "user" || $photosGetFaces_fetch['guy.type'] == "users") {
									$getGuyName = $_user->profile(array("id" => $photosGetFaces_fetch['guy.id'], "rows" => "`fullname`"));
									if (isset($getGuyName['return'], $getGuyName['data']) && $getGuyName['return'] == true) {
										$photosGetFaces_fetch['guy.name'] = $getGuyName['data']['fullname'];
									}else {
										continue;
									}
								}else {
									continue;
								}
							}else {
								$photosGetFaces_fetch['guy.name'] = null;
							}
							$facesData[] = $facesDataThis = array(
								"photos" => $photosGetFaces_fetch['photos'],
								"photos.local" => $photosGetFaces_fetch['photos.local'],
								"faces" => $photosGetFaces_fetch['faces'],
								"thumbnail" => $_tool->links('photos/faces/'.$photosGetFaces_fetch['display']),
								"display" => $photosGetFaces_fetch['display'],
								"position" => array(
									"x" => $photosGetFaces_fetch['boundingbox.tl.x'], 
									"y" => $photosGetFaces_fetch['boundingbox.tl.y']
								),
								"size" => array(
									"height" => $photosGetFaces_fetch['boundingbox.size.height'],
									"width" => $photosGetFaces_fetch['boundingbox.size.width']
								),
								"ratio" => array(
									"height" => $photosGetFaces_fetch['boundingbox.ratio.height'],
									"width" => $photosGetFaces_fetch['boundingbox.ratio.width']
								),
								"guy.type" => $photosGetFaces_fetch['guy.type'],
								"guy.id" => $photosGetFaces_fetch['guy.id'],
								"guy.name" => $photosGetFaces_fetch['guy.name']
							);
							$facesDataThis['user.id'] = $g_user['id'];
							$facesDataThis['author.type'] = $g_user['mode']['type'];
							$facesDataThis['author.id'] = $g_user['mode']['id'];
							$_SESSION["cache"]['photos_faces'][] = $facesDataThis;
						}
						if ($robotRequest == $g_client['token']['robot']) {
							die(print json_encode(array("return" => true)));
						}
						die(print json_encode(array("return" => true, "image" => $imageData, "faces" => $facesData)));
					}else {
						$imgUrl = $fileCache['link'];
						$getAnalysis = $_analysis->faces("check", array("url" => $imgUrl));
						if (isset($getAnalysis['return'], $getAnalysis['faces']) && $getAnalysis['return'] == true && is_array($getAnalysis['faces'])) {
							$faceAnalysis = $getAnalysis['faces'];
							$facesData = array();
							if (count($getAnalysis['faces']) == 0) {
								$_SESSION["cache"]['photos_faces_notfound'][] = array(
									"user.id" => $g_user['id'],
									"author.type" => $g_user['mode']['type'],
									"author.id" => $g_user['mode']['id'],
									"photos" => $fileCache['display'],
									"photos.local" => $fileCache['local']
								);
							}
							foreach ($faceAnalysis as $key => $faceAnalysisThis) {
								if ($faceAnalysisThis['confidence'] < $_parameter->get('rekognition_rate_allow')) {
									unset($faceAnalysis[$key]);
								}else {
									$faceAnalysis[$key]['photos'] = $fileCache['display'];
								}
							}
							foreach ($faceAnalysis as $key => $faceAnalysisThis) {
								$thumbnail = array("file" => $fileCache['source'], "mime" => $fileCache['mime'], "nameraw" => $fileCache['nameraw']);
								$addAnalysisFaces = $_analysis->faces("add", array("face" => $faceAnalysisThis, "thumbnail" => $thumbnail));
								if (isset($addAnalysisFaces['return'], $addAnalysisFaces['obj']) && $addAnalysisFaces['return'] == true && is_array($addAnalysisFaces['obj']) && count($addAnalysisFaces['obj']) > 0) {
									$cacheFacestag = array();
									$cacheFacestag['photos'] = $fileCache['display'];
									$cacheFacestag['photos.local'] = $fileCache['local'];
									$cacheFacestag['faces.image'] = $addAnalysisFaces['obj']['thumbnail'];
									$cacheFacestag['faces'] = $addAnalysisFaces['obj']['display'];
									$cacheFacestag['token'] = hash('crc32', $cacheFacestag['faces']);
									$cacheFacestag['display'] = hash('md5', $cacheFacestag['token']);
									$insertCacheTaguserSql = "INSERT INTO `photos_faces` (`id`, `token`, `display`, `user.id`, `author.type`, `author.id`, `photos`, `photos.local`, `faces`, `guy.type`, `guy.id`, `boundingbox.tl.y`, `boundingbox.tl.x`, `boundingbox.size.height`, `boundingbox.size.width`, `boundingbox.ratio.height`, `boundingbox.ratio.width`) VALUES (NULL, '{$cacheFacestag['token']}', '{$cacheFacestag['display']}', '{$g_user['id']}', '{$g_user['mode']['type']}', '{$g_user['mode']['id']}', '{$cacheFacestag['photos']}', '{$cacheFacestag['photos.local']}', '{$cacheFacestag['faces']}', null, null, '{$faceAnalysisThis['boundingbox.tl.y']}', '{$faceAnalysisThis['boundingbox.tl.x']}', '{$faceAnalysisThis['boundingbox.size.height']}', '{$faceAnalysisThis['boundingbox.size.width']}', '{$faceAnalysisThis['boundingbox.ratio.height']}', '{$faceAnalysisThis['boundingbox.ratio.width']}');";
									$insertCacheTaguserQuery = mysqli_query($_db->port('beta'), $insertCacheTaguserSql);
									if (!$insertCacheTaguserQuery) {
										//.
									}else {
										$facesData[] = $facesDataThis = array(
											"photos" => $cacheFacestag['photos'],
											"photos.local" => $cacheFacestag['photos.local'],
											"faces" => $cacheFacestag['faces'],
											"thumbnail" => $_tool->links('photos/faces/'.$cacheFacestag['display']),
											"display" => $cacheFacestag['display'],
											"position" => array(
												"y" => $faceAnalysisThis['boundingbox.tl.y'], 
												"x" => $faceAnalysisThis['boundingbox.tl.x']
											),
											"size" => array(
												"height" => $faceAnalysisThis['boundingbox.size.height'],
												"width" => $faceAnalysisThis['boundingbox.size.width']
											),
											"ratio" => array(
												"height" => $faceAnalysisThis['boundingbox.ratio.height'],
												"width" => $faceAnalysisThis['boundingbox.ratio.width']
											),
											"guy.type" => null,
											"guy.id" => null,
											"guy.name" => null
										);
										$facesDataThis['user.id'] = $g_user['id'];
										$facesDataThis['author.type'] = $g_user['mode']['type'];
										$facesDataThis['author.id'] = $g_user['mode']['id'];
										$_SESSION["cache"]['photos_faces'][] = $facesDataThis;
									}
								}else {
									continue;
								}
							}
							if ($robotRequest == $g_client['token']['robot']) {
								die(print json_encode(array("return" => true)));
							}
							die(print json_encode(array("return" => true, "image" => $imageData, "faces" => $facesData)));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "update" || $action == "change") {
				if (isset($ObjRequest['tag']['label']) && is_string($ObjRequest['tag']['label'])) $tagLabel = $ObjRequest['tag']['label']; else $tagLabel = null;
				if (isset($ObjRequest['tag']['value']) && is_string($ObjRequest['tag']['value'])) $tagValue = $ObjRequest['tag']['value']; else $tagValue = null;
				if (isset($ObjRequest['guy']['type']) && is_string($ObjRequest['guy']['type'])) $guyType = $ObjRequest['guy']['type']; else $guyType = 0;
				if (isset($ObjRequest['guy']['id']) && is_string($ObjRequest['guy']['id'])) $guyId = $ObjRequest['guy']['id']; else $guyId = null;
				if ($tagLabel == null || $tagValue == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if ($guyType == null && $guyId == null) {
					$guySet = false;
				}else if ($guyType != null && $guyId != null) {
					$guySet = true;
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$numTagQuerySql = "SELECT * FROM `photos_faces` WHERE `{$tagLabel}` = '{$tagValue}' AND `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `user.id` = '{$g_user['id']}'";
				$numTagQuery = mysqli_query($_db->port('beta'), $numTagQuerySql);
				if ($numTagQuery) $numTag = mysqli_num_rows($numTagQuery); else $numTag = 0;
				if ($numTag == 0) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}else {
					$tagFetch = mysqli_fetch_assoc($numTagQuery);
					//. check guy private.
					if ($guySet == true) {
						if ($guyType == "user" || $guyType == "users") {
							$getGuyName = $_user->profile(array("id" => $guyId, "rows" => "`fullname`"));
							if (isset($getGuyName['return'], $getGuyName['data']) && $getGuyName['return'] == true) {
								$guy_name = $getGuyName['data']['fullname'];
							}else {
								die(print json_encode(array("return" => false, "reason" => "")));
							}
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}
					if (!$guySet) {
						$updateSqlPush = "`guy.type` = null, `guy.id` = null";
					}else {
						$updateSqlPush = "`guy.type` = '{$guyType}', `guy.id` = '{$guyId}'";
					}
					$updateSql = "UPDATE `photos_faces` SET {$updateSqlPush} WHERE `{$tagLabel}` = '{$tagValue}' AND `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `user.id` = '{$g_user['id']}'";
					$updateQuery = mysqli_query($_db->port('beta'), $updateSql);
					if (!$updateQuery) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}else {
						if (isset($_SESSION["cache"]['photos_faces'])) {
							$cachePhotosGetFaces = $_SESSION["cache"]['photos_faces'];
							foreach ($cachePhotosGetFaces as $key => $cachePhotosGetFacesThis) {
								if (isset($cachePhotosGetFacesThis['photos'])) {
									if (isset($cachePhotosGetFacesThis['user.id'], $cachePhotosGetFacesThis['author.type'], $cachePhotosGetFacesThis['author.id'])) {
										if ($cachePhotosGetFacesThis['photos'] == $tagFetch['photos'] && $cachePhotosGetFacesThis['photos.local'] == $tagFetch['photos.local'] && $cachePhotosGetFacesThis['display'] == $tagFetch['display']) {
											if (isset($cachePhotosGetFacesThis['faces'], $cachePhotosGetFacesThis['thumbnail'], $cachePhotosGetFacesThis['display'], $cachePhotosGetFacesThis['position'], $cachePhotosGetFacesThis['size'], $cachePhotosGetFacesThis['ratio'])) {
												if ($cachePhotosGetFacesThis['user.id'] == $g_user['id'] && $cachePhotosGetFacesThis['author.type'] == $g_user['mode']['type'] && $cachePhotosGetFacesThis['author.id'] == $g_user['mode']['id']) {
													$cachePhotosGetFaces[$key]['guy.type'] = $guyType;
													$cachePhotosGetFaces[$key]['guy.id'] = $guyId;
													$cachePhotosGetFaces[$key]['guy.name'] = $guy_name;
												}else {
													continue;
												}
											}else {
												unset($cachePhotosGetFaces[$key]);
											}
										}else {
											continue;
										}
									}else if (!isset($cachePhotosGetFacesThis['user.id'], $cachePhotosGetFacesThis['author.type'], $cachePhotosGetFacesThis['author.id'])) {
										unset($cachePhotosGetFaces[$key]);
									}else {
										continue;
									}
								}else {
									unset($cachePhotosGetFaces[$key]);
								}
							}
							$_SESSION["cache"]['photos_faces'] = $cachePhotosGetFaces;
						}
						if ($robotRequest == $g_client['token']['robot']) {
							die(print json_encode(array("return" => true)));
						}
						die(print json_encode(array("return" => true)));
					}
				}
			}else if ($action == "delete" || $action == "remove") {
				die(print json_encode(array("return" => true)));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "music" && $token == $g_client['token']['action']['music']) {
		if ($type == "cache") {
			if ($action == "add") {
				$fileUpload = $_FILES["file"];
				$fileArr = $_tool->resetFileUpload($fileUpload);
				$musikArr = array();
				foreach ($fileArr as $key => $fileArrThis) {
					$addMediaCache = $_media->cache("music", array("action" => "add", "file" => $fileArrThis));
					if (isset($addMediaCache['return'], $addMediaCache['data']) && $addMediaCache['return'] == true) {
						$addMediaCacheData = $addMediaCache['data'];
						$musikArr[$key] = array("type" => "music", "local" => "cache", "verify" => "false");
						$musikArr[$key]['secret'] = $addMediaCacheData['secret'];
						$musikArr[$key]['name'] = $addMediaCacheData['name'];
						$musikArr[$key]['nameraw'] = $addMediaCacheData['nameraw'];
						$musikArr[$key]['mime'] = $addMediaCacheData['mime'];
						$musikArr[$key]['link'] = $_tool->links('music/cache/'.$addMediaCacheData['name']);
						$musikArr[$key]['thumbnail'] = $_tool->links('music/cache/thumbnail/'.$addMediaCacheData['thumbnail']);
						$musikArr[$key]['duration'] = $addMediaCacheData['duration'];
					}else {
						continue;
					}
				}
				die(print json_encode(array("return" => true, "data" => $musikArr)));
			}else if ($action == "copy") {
				if (isset($ObjRequest['secret']) && is_string($ObjRequest['secret'])) $musikSecret = $ObjRequest['secret']; else $musikSecret = null;
				if (isset($ObjRequest['name']) && is_string($ObjRequest['name'])) $musikName = $ObjRequest['name']; else $musikName = null;
				if ($musikSecret == null || $musikName == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$copyMediaCache = $_media->cache("music", array("action" => "copy", "secret" => $musikSecret, "name" => $musikName));
				if (isset($copyMediaCache['return'], $copyMediaCache['data']) && $copyMediaCache['return'] == true){
					$copyMediaCacheData = $copyMediaCache['data'];
					$musikData['original']['secret'] = $copyMediaCacheData['original']['secret'];
					$musikData['original']['name'] = $copyMediaCacheData['original']['name'];
					$musikData['original']['nameraw'] = $copyMediaCacheData['original']['nameraw'];
					$musikData['original']['link'] = $_tool->links('music/cache/'.$copyMediaCacheData['original']['name']);
					$musikData['original']['link'] = $_tool->links('music/cache/thumbnail/'.$copyMediaCacheData['original']['thumbnail']);
					$musikData['copy']['secret'] = $copyMediaCacheData['copy']['secret'];
					$musikData['copy']['name'] = $copyMediaCacheData['copy']['name'];
					$musikData['copy']['nameraw'] = $copyMediaCacheData['copy']['nameraw'];
					$musikData['copy']['link'] = $_tool->links('music/cache/'.$copyMediaCacheData['copy']['name']);
					$musikData['copy']['link'] = $_tool->links('music/cache/thumbnail/'.$copyMediaCacheData['copy']['thumbnail']);
					die(print json_encode(array("return" => true, "data" => $musikData)));
				}else if (isset($copyMediaCache['return'], $copyMediaCache['reason']) && $copyMediaCache['return'] == false && is_string($copyMediaCache['reason'])) {
					die(print json_encode(array("return" => false, "reason" => $copyMediaCache['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "delete") {
				if (isset($ObjRequest['file']) && is_array($ObjRequest['file']) && count($ObjRequest['file']) > 0) $musikFileArr = $ObjRequest['file']; else $musikFileArr = null;
				if ($musikFileArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$notifyArr = array();
				foreach ($musikFileArr as $key => $musikFileArrThis) {
					if (isset($musikFileArrThis['name']) && is_string($musikFileArrThis['name'])) $musikName = $musikFileArrThis['name']; else $musikName = null;
					if (isset($musikFileArrThis['secret']) && is_string($musikFileArrThis['secret'])) $musikSecret = $musikFileArrThis['secret']; else $musikSecret = null;
					if (isset($musikFileArrThis['verify']) && $musikFileArrThis['verify']) $musikVerify = $musikFileArrThis['verify']; else $musikVerify = null;
					if (isset($musikVerify) && in_array($musikVerify, ["0", 0, "false", false])) {
						$verifyValue = false;
					}else if (isset($musikVerify) && in_array($musikVerify, ["1", 1, "true", true])) {
						$verifyValue = true;
					}else {
						continue;
					}
					if ($musikName == null || $musikSecret == null) {
						$notifyArr[] = array("return" => false, "reason" => "");
					}
					$deleteMediaFile = $_media->cache("music", array("action" => "delete", "secret" => $musikSecret, "name" => $musikName, "verify" => $musikVerify));
					if (isset($deleteMediaFile['return']) && $deleteMediaFile['return'] == true) {
						$notifyArr[] = array("return" => true, "file" => $musikFileArrThis);
					}else if (isset($deleteMediaFile['return'], $deleteMediaFile['reason']) && $deleteMediaFile['return'] == false) {
						$notifyArr[] = array("return" => false, "file" => $musikFileArrThis, "reason" => $deleteMediaFile['reason']);
					}else {
						$notifyArr[] = array("return" => false, "file" => $musikFileArrThis, "reason" => "");
					}
				}
				die(print json_encode(array("return" => true, "data" => $notifyArr)));
			}else if ($action == "push") {
				if (isset($ObjRequest['file']) && is_array($ObjRequest['file']) && count($ObjRequest['file']) > 0) $musikFileArr = $ObjRequest['file']; else $musikFileArr = null;
				if ($musikFileArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$notifyArr = array();
				foreach ($musikFileArr as $key => $musikFileArrThis) {
					if (isset($musikFileArrThis['name']) && is_string($musikFileArrThis['name'])) $musikName = $musikFileArrThis['name']; else $musikName = null;
					if (isset($musikFileArrThis['secret']) && is_string($musikFileArrThis['secret'])) $musikSecret = $musikFileArrThis['secret']; else $musikSecret = null;
					if ($musikName == null || $musikSecret == null) {
						$notifyArr[] = array("return" => false, "reason" => "");
					}
					$deleteMediaFile = $_media->cache("music", array("action" => "push", "secret" => $musikSecret, "name" => $musikName));
					if (isset($deleteMediaFile['return']) && $deleteMediaFile['return'] == true) {
						$notifyArr[] = array("return" => true, "file" => $musikFileArrThis);
					}else if (isset($deleteMediaFile['return'], $deleteMediaFile['reason']) && $deleteMediaFile['return'] == false) {
						$notifyArr[] = array("return" => false, "file" => $musikFileArrThis, "reason" => $deleteMediaFile['reason']);
					}else {
						$notifyArr[] = array("return" => false, "file" => $musikFileArrThis, "reason" => "");
					}
				}
				die(print json_encode(array("return" => true, "data" => $notifyArr)));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "info") {
			if ($action == "get") {
				die(print json_encode(array("return" => false)));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "replay") {
			if ($action == "add") {
				if (isset($ObjRequest['label']) && is_string($ObjRequest['label'])) $label = $ObjRequest['label']; else $label = null;
				if (isset($ObjRequest['value']) && (is_string($ObjRequest['value']) || is_numeric($ObjRequest['value']))) $value = $ObjRequest['value']; else $value = null;
				if (isset($ObjRequest['at']) && (is_string($ObjRequest['at']) || is_numeric($ObjRequest['at']))) $at = $ObjRequest['at']; else $at = 0;
				if (isset($ObjRequest['expires']) && (is_string($ObjRequest['expires']) || is_numeric($ObjRequest['expires']))) $expires = $ObjRequest['expires']; else $expires = 0;
				if ($label == null || $value == null || $at == 0 || $expires == 0) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$queryAction = $_media->replay("music", array("action" => "add", "label" => $label, "value" => $value, "at" => $at, "expires" => $expires));
				if (isset($queryAction['return']) && $queryAction['return'] == true) {
					die(print json_encode(array("return" => true)));
				}else if (isset($queryAction['return'], $queryAction['reason']) && $queryAction['return'] == false && is_string($queryAction['reason'])) {
					die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "get") {
				if (isset($ObjRequest['label']) && is_string($ObjRequest['label'])) $label = $ObjRequest['label']; else $label = null;
				if (isset($ObjRequest['value']) && (is_string($ObjRequest['value']) || is_numeric($ObjRequest['value']))) $value = $ObjRequest['value']; else $value = null;
				$queryAction = $_media->replay("music", array("action" => "get", "label" => $label, "value" => $value));
				if (isset($queryAction['return'], $queryAction['num'], $queryAction['data']) && $queryAction['return'] == true) {
					die(print json_encode(array("return" => true, "num" => $queryAction['num'], "data" => $queryAction['data'])));
				}else if (isset($queryAction['return'], $queryAction['reason']) && $queryAction['return'] == false && is_string($queryAction['reason'])) {
					die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "delete") {
				if (isset($ObjRequest['label']) && is_string($ObjRequest['label'])) $label = $ObjRequest['label']; else $label = null;
				if (isset($ObjRequest['value']) && (is_string($ObjRequest['value']) || is_numeric($ObjRequest['value']))) $value = $ObjRequest['value']; else $value = null;
				$queryAction = $_media->replay("music", array("action" => "delete", "label" => $label, "value" => $value));
				if (isset($queryAction['return'], $queryAction['num'], $queryAction['data']) && $queryAction['return'] == true) {
					die(print json_encode(array("return" => true, "num" => $queryAction['num'], "data" => $queryAction['data'])));
				}else if (isset($queryAction['return'], $queryAction['reason']) && $queryAction['return'] == false && is_string($queryAction['reason'])) {
					die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "clean") {
				$queryAction = $_media->replay("music", array("action" => "clean"));
				if (isset($queryAction['return'], $queryAction['num'], $queryAction['data']) && $queryAction['return'] == true) {
					die(print json_encode(array("return" => true, "num" => $queryAction['num'], "data" => $queryAction['data'])));
				}else if (isset($queryAction['return'], $queryAction['reason']) && $queryAction['return'] == false && is_string($queryAction['reason'])) {
					die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "videos" && $token == $g_client['token']['action']['videos']) {
		if ($type == "cache"){
			if ($action == "add") {
				$fileUpload = $_FILES["file"];
				$fileArr = $_tool->resetFileUpload($fileUpload);
				$vioArr = array();
				foreach ($fileArr as $key => $fileArrThis) {
					$addMediaCache = $_media->cache("videos", array("action" => "add", "file" => $fileArrThis));
					if (isset($addMediaCache['return'], $addMediaCache['data']) && $addMediaCache['return'] == true) {
						$addMediaCacheData = $addMediaCache['data'];
						$vioArr[$key] = array("type" => "videos", "local" => "cache", "verify" => "false");
						$vioArr[$key]['secret'] = $addMediaCacheData['secret'];
						$vioArr[$key]['name'] = $addMediaCacheData['name'];
						$vioArr[$key]['nameraw'] = $addMediaCacheData['nameraw'];
						$vioArr[$key]['mime'] = $addMediaCacheData['mime'];
						$vioArr[$key]['link'] = $_tool->links('videos/cache/'.$addMediaCacheData['name']);
						$vioArr[$key]['thumbnail'] = $_tool->links('videos/cache/thumbnail/'.$addMediaCacheData['thumbnail']);
						$vioArr[$key]['duration'] = $addMediaCacheData['duration'];
					}else {
						continue;
					}
				}
				die(print json_encode(array("return" => true, "data" => $vioArr)));
			}else if ($action == "copy") {
				if (isset($ObjRequest['secret']) && is_string($ObjRequest['secret'])) $vioSecret = $ObjRequest['secret']; else $vioSecret = null;
				if (isset($ObjRequest['name']) && is_string($ObjRequest['name'])) $vioName = $ObjRequest['name']; else $vioName = null;
				if ($vioSecret == null || $vioName == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$copyMediaCache = $_media->cache("videos", array("action" => "copy", "secret" => $vioSecret, "name" => $vioName));
				if (isset($copyMediaCache['return'], $copyMediaCache['data']) && $copyMediaCache['return'] == true){
					$copyMediaCacheData = $copyMediaCache['data'];
					$vioData['original']['secret'] = $copyMediaCacheData['original']['secret'];
					$vioData['original']['name'] = $copyMediaCacheData['original']['name'];
					$vioData['original']['nameraw'] = $copyMediaCacheData['original']['nameraw'];
					$vioData['original']['link'] = $_tool->links('videos/cache/'.$copyMediaCacheData['original']['name']);
					$vioData['original']['link'] = $_tool->links('videos/cache/thumbnail/'.$copyMediaCacheData['original']['thumbnail']);
					$vioData['copy']['secret'] = $copyMediaCacheData['copy']['secret'];
					$vioData['copy']['name'] = $copyMediaCacheData['copy']['name'];
					$vioData['copy']['nameraw'] = $copyMediaCacheData['copy']['nameraw'];
					$vioData['copy']['link'] = $_tool->links('videos/cache/'.$copyMediaCacheData['copy']['name']);
					$vioData['copy']['link'] = $_tool->links('videos/cache/thumbnail/'.$copyMediaCacheData['copy']['thumbnail']);
					die(print json_encode(array("return" => true, "data" => $vioData)));
				}else if (isset($copyMediaCache['return'], $copyMediaCache['reason']) && $copyMediaCache['return'] == false && is_string($copyMediaCache['reason'])) {
					die(print json_encode(array("return" => false, "reason" => $copyMediaCache['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "delete") {
				if (isset($ObjRequest['file']) && is_array($ObjRequest['file']) && count($ObjRequest['file']) > 0) $vioFileArr = $ObjRequest['file']; else $vioFileArr = null;
				if ($vioFileArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$notifyArr = array();
				foreach ($vioFileArr as $key => $vioFileArrThis) {
					if (isset($vioFileArrThis['name']) && is_string($vioFileArrThis['name'])) $vioName = $vioFileArrThis['name']; else $vioName = null;
					if (isset($vioFileArrThis['secret']) && is_string($vioFileArrThis['secret'])) $vioSecret = $vioFileArrThis['secret']; else $vioSecret = null;
					if (isset($vioFileArrThis['verify']) && $vioFileArrThis['verify']) $vioVerify = $vioFileArrThis['verify']; else $vioVerify = null;
					if (isset($vioVerify) && in_array($vioVerify, ["0", 0, "false", false])) {
						$verifyValue = false;
					}else if (isset($vioVerify) && in_array($vioVerify, ["1", 1, "true", true])) {
						$verifyValue = true;
					}else {
						continue;
					}
					if ($vioName == null || $vioSecret == null) {
						$notifyArr[] = array("return" => false, "reason" => "");
					}
					$deleteMediaFile = $_media->cache("videos", array("action" => "delete", "secret" => $vioSecret, "name" => $vioName, "verify" => $vioVerify));
					if (isset($deleteMediaFile['return']) && $deleteMediaFile['return'] == true) {
						$notifyArr[] = array("return" => true, "file" => $vioFileArrThis);
					}else if (isset($deleteMediaFile['return'], $deleteMediaFile['reason']) && $deleteMediaFile['return'] == false) {
						$notifyArr[] = array("return" => false, "file" => $vioFileArrThis, "reason" => $deleteMediaFile['reason']);
					}else {
						$notifyArr[] = array("return" => false, "file" => $vioFileArrThis, "reason" => "");
					}
				}
				die(print json_encode(array("return" => true, "data" => $notifyArr)));
			}else if ($action == "push") {
				if (isset($ObjRequest['file']) && is_array($ObjRequest['file']) && count($ObjRequest['file']) > 0) $vioFileArr = $ObjRequest['file']; else $vioFileArr = null;
				if ($vioFileArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$notifyArr = array();
				foreach ($vioFileArr as $key => $vioFileArrThis) {
					if (isset($vioFileArrThis['name']) && is_string($vioFileArrThis['name'])) $vioName = $vioFileArrThis['name']; else $vioName = null;
					if (isset($vioFileArrThis['secret']) && is_string($vioFileArrThis['secret'])) $vioSecret = $vioFileArrThis['secret']; else $vioSecret = null;
					if ($vioName == null || $vioSecret == null) {
						$notifyArr[] = array("return" => false, "reason" => "");
					}
					$deleteMediaFile = $_media->cache("videos", array("action" => "push", "secret" => $vioSecret, "name" => $vioName));
					if (isset($deleteMediaFile['return']) && $deleteMediaFile['return'] == true) {
						$notifyArr[] = array("return" => true, "file" => $vioFileArrThis);
					}else if (isset($deleteMediaFile['return'], $deleteMediaFile['reason']) && $deleteMediaFile['return'] == false) {
						$notifyArr[] = array("return" => false, "file" => $vioFileArrThis, "reason" => $deleteMediaFile['reason']);
					}else {
						$notifyArr[] = array("return" => false, "file" => $vioFileArrThis, "reason" => "");
					}
				}
				die(print json_encode(array("return" => true, "data" => $notifyArr)));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "info") {
			if ($action == "get") {
				die(print json_encode(array("return" => false)));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "replay") {
			if ($action == "add") {
				if (isset($ObjRequest['label']) && is_string($ObjRequest['label'])) $label = $ObjRequest['label']; else $label = null;
				if (isset($ObjRequest['value']) && (is_string($ObjRequest['value']) || is_numeric($ObjRequest['value']))) $value = $ObjRequest['value']; else $value = null;
				if (isset($ObjRequest['at']) && (is_string($ObjRequest['at']) || is_numeric($ObjRequest['at']))) $at = $ObjRequest['at']; else $at = 0;
				if (isset($ObjRequest['expires']) && (is_string($ObjRequest['expires']) || is_numeric($ObjRequest['expires']))) $expires = $ObjRequest['expires']; else $expires = 0;
				if ($label == null || $value == null || $at == 0 || $expires == 0) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$queryAction = $_media->replay("videos", array("action" => "add", "label" => $label, "value" => $value, "at" => $at, "expires" => $expires));
				if (isset($queryAction['return']) && $queryAction['return'] == true) {
					die(print json_encode(array("return" => true)));
				}else if (isset($queryAction['return'], $queryAction['reason']) && $queryAction['return'] == false && is_string($queryAction['reason'])) {
					die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "get") {
				if (isset($ObjRequest['label']) && is_string($ObjRequest['label'])) $label = $ObjRequest['label']; else $label = null;
				if (isset($ObjRequest['value']) && (is_string($ObjRequest['value']) || is_numeric($ObjRequest['value']))) $value = $ObjRequest['value']; else $value = null;
				$queryAction = $_media->replay("videos", array("action" => "get", "label" => $label, "value" => $value));
				if (isset($queryAction['return'], $queryAction['num'], $queryAction['data']) && $queryAction['return'] == true) {
					die(print json_encode(array("return" => true, "num" => $queryAction['num'], "data" => $queryAction['data'])));
				}else if (isset($queryAction['return'], $queryAction['reason']) && $queryAction['return'] == false && is_string($queryAction['reason'])) {
					die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "delete") {
				if (isset($ObjRequest['label']) && is_string($ObjRequest['label'])) $label = $ObjRequest['label']; else $label = null;
				if (isset($ObjRequest['value']) && (is_string($ObjRequest['value']) || is_numeric($ObjRequest['value']))) $value = $ObjRequest['value']; else $value = null;
				$queryAction = $_media->replay("videos", array("action" => "delete", "label" => $label, "value" => $value));
				if (isset($queryAction['return'], $queryAction['num'], $queryAction['data']) && $queryAction['return'] == true) {
					die(print json_encode(array("return" => true, "num" => $queryAction['num'], "data" => $queryAction['data'])));
				}else if (isset($queryAction['return'], $queryAction['reason']) && $queryAction['return'] == false && is_string($queryAction['reason'])) {
					die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "clean") {
				$queryAction = $_media->replay("videos", array("action" => "clean"));
				if (isset($queryAction['return'], $queryAction['num'], $queryAction['data']) && $queryAction['return'] == true) {
					die(print json_encode(array("return" => true, "num" => $queryAction['num'], "data" => $queryAction['data'])));
				}else if (isset($queryAction['return'], $queryAction['reason']) && $queryAction['return'] == false && is_string($queryAction['reason'])) {
					die(print json_encode(array("return" => false, "reason" => $queryAction['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "cache" && $token == $g_client['token']['action']['cache']) {
		//.
	}else if ($port == "feed" && $token == $g_client['token']['action']['feed']) {
		if ($type == "status" && in_array($action, ["xxx", "newcheck", "load", "get"]) && !function_exists("getCodeQuery")) {
			function getCodeQuery ($getFor = null) {
				$g_user = $_SESSION["user"];
				if (isset($ObjRequest['id']) && (is_numeric($ObjRequest['id']) || is_string($ObjRequest['id']))) $id = $ObjRequest['id']; else $id = 0;
				if (isset($ObjRequest['feed']) && is_array($ObjRequest['feed'])) $port = $ObjRequest['feed']; else $port = null;
				if ($id != null && $port != null) {
					if ($getFor == "newcheck") {
						$feed_['query']['select'] = "`id`";
						$feed_['query']['order'] = $feed_['query']['limit'] = "";
						$feed_['follow']['sort'] = ">";
					}else if ($getFor == "load") {
						$feed_['query']['select'] = "*";
						if (isset($ObjRequest['sort']) && is_string($ObjRequest['sort'])) $sort = $ObjRequest['sort']; else $sort = null;
						if (isset($ObjRequest['limit']) && is_numeric($ObjRequest['limit'])) $limit = $ObjRequest['limit']; else $limit = 0;
						if (in_array($sort, [">", ">="])) {
							$feed_['query']['order'] = "ORDER BY `id` ASC";
						}else if (in_array($sort, ["<", "<="])) {
							$feed_['query']['order'] = "ORDER BY `id` DESC";
						}else {
							$feed_['query']['order'] = null;
						}
						if ($limit == 0 && $sort != ">") {
							$feed_['query']['limit'] = "LIMIT 1";
						}else if ($limit > 0) {
							$feed_['query']['limit'] = "LIMIT {$limit}";
						}else {
							$feed_['query']['limit'] = null;
						}
						$feed_['follow']['sort'] = $sort;
					}else {
						return array("return" => false, "reason" => "");
					}
					if (isset($port['type']) && $port['type'] == "feed") {
						if ($g_user['mode']['type'] == "user") {
							if (isset($port['from']) && $port['from'] == "all") {
								$feed_['follow']['query'] = mysqli_query($_db->port('beta'), "SELECT `guy.type`, `guy.id` FROM `users_follow` WHERE `user.id` = '{$g_user['mode']['id']}'");
								$feed_['follow']['count'] = 0;
								while ($feed_['follow']['fetch'] = mysqli_fetch_assoc($feed_['follow']['query'])) {
									if ($feed_['follow']['count'] == 0) {
										$feed_['query']['source'] = "(`author.type` = '{$feed_['follow']['fetch']['guy.type']}' AND `author.id` = '{$feed_['follow']['fetch']['guy.id']}')";
									}else {
										$feed_['query']['source'] .= " OR (`author.type` = '{$feed_['follow']['fetch']['guy.type']}' AND `author.id` = '{$feed_['follow']['fetch']['guy.id']}')";
									}
									$feed_['follow']['count']++;
								}
								$feed_['query']['source'] = "AND ({$feed_['query']['source']})";
							}else {
								$feed_['query']['source'] = false;
							}
						}else {
							$feed_['query']['source'] = false;
						}
					}else if (isset($port['type']) && $port['type'] == "hashtag") {
						if (isset($ObjRequest['port']['require'])) $feed_['content']['require'] = $ObjRequest['port']['require']; else $feed_['content']['require'] = null;
						if ($feed_['content']['require'] == null) {
							return array("return" => false, "reason" => "");
						}
						for ($i = 0; $i < count($feed_['content']['require']); $i++) {
							$cache_hashtag_['push']['author'] = null;
							if (isset($feed_['content']['require'][$i][0], $feed_['content']['require'][$i][1])) {
								$feed_['content']['require'][$i][1] = array_filter(explode(",", $feed_['content']['require'][$i][1]));
								for ($x = 0; $x < count($feed_['content']['require'][$i][1]); $x++) {
									$cache_hashtag_['username'] = $cache_hashtag_['author'] = null;
									if (preg_match("/^(\)/", $feed_['content']['require'][$i][1][$x]) == true) {
										$cache_hashtag_['username'] = preg_replace("/^(\)/", "", $feed_['content']['require'][$i][1][$i]);
										$cache_hashtag_['author']['id'] = mysqli_fetch_assoc(mysqli_query($_db->port('beta'),"SELECT `id` FROM `users` WHERE `username` = '{$cache_hashtag_['username']}'"))['id'];
										$cache_hashtag_['author']['type'] = "user";
									}else if (preg_match("/^(\+)/", $feed_['content']['require'][$i][1][$x]) == true) {
										$cache_hashtag_['author']['id'] = "1";
										$cache_hashtag_['author']['type'] = "pages";
									}else {
										continue;
									}
									if ($x == 0) {
										$cache_hashtag_['push']['author'] = "`status.id` IN (SELECT `id` FROM `status` WHERE `author.type` = '{$cache_hashtag_['author']['type']}' AND `author.id` = '{$cache_hashtag_['author']['id']}')";
									}else {
										$cache_hashtag_['push']['author'] .= " OR `status.id` IN (SELECT `id` FROM `status` WHERE `author.type` = '{$cache_hashtag_['author']['type']}' AND `author.id` = '{$cache_hashtag_['author']['id']}')";
									}
								}
								$cache_hashtag_['push']['author'] = " AND ({$cache_hashtag_['push']['author']})";
							}else if (isset($feed_['content']['require'][$i][0])) {
								$cache_hashtag_['push']['author'] = "";
							}else {
								continue;
							}
							if (preg_match("/([^a-zA-Z0-9\_]+)/", $_tool->convertDatabaseString($feed_['content']['require'][$i][0])) == true) {
								unset($feed_['content']['require'][$i]);
								continue;
							}else {
								$feed_['content']['require'][$i][0] = preg_replace("/([^a-zA-Z0-9\_]+)/", "_", $_tool->convertDatabaseString($feed_['content']['require'][$i][0]));
								if ($i == 0) {
									$feed_['query']['get'] = "(`hashtag` = '{$feed_['content']['require'][$i][0]}'{$cache_hashtag_['push']['author']})";
								}else {
									$feed_['query']['get'] .= " OR (`hashtag` = '{$feed_['content']['require'][$i][0]}'{$cache_hashtag_['push']['author']})"; 
								}
							}
						}
						$feed_['query']['source'] = "AND (`id` IN (SELECT `status.id` FROM `status_hashtag` WHERE {$feed_['query']['get']}))";
					}else if (isset($port['type']) && $port['type'] == "time") {
						if (isset($ObjRequest['port']['require'])) $feed_['content']['require'] = $ObjRequest['port']['require']; else $feed_['content']['require'] = null;
						if ($feed_['content']['require'] == null) {
							return array("return" => false, "reason" => "");
						}else {
							if (isset($ObjRequest['port']['require']['key'])) $feed_['content']['require']['key'] = $ObjRequest['port']['require']['key']; else $feed_['content']['require']['key'] = null;
							if (isset($ObjRequest['port']['require']['value'])) $feed_['content']['require']['value'] = $ObjRequest['port']['require']['value']; else $feed_['content']['require']['value'] = null;
							if (!in_array($ObjRequest['port']['require']['key'], ["stamp", "string"]) || $ObjRequest['port']['require']['value'] == null) {
								return array("return" => false, "reason" => "");
							}else {
								if (is_array($feed_['content']['require']['value'])) {
									$countRequireValue = count($feed_['content']['require']['value']);
									if ($countRequireValue == 1) {
										$valueTimeFrom = $feed_['content']['require']['value'][0];
										$valueTimeTo = null;
									}else if ($countRequireValue == 2) {
										$valueTimeFrom = $feed_['content']['require']['value'][0];
										$valueTimeTo = $feed_['content']['require']['value'][1];
									}else {
										return array("return" => false, "reason" => "");
									}
								}else {
									return array("return" => false, "reason" => "");
								}
								if ($ObjRequest['port']['require']['key'] == "stamp") {
									//.
								}else if ($ObjRequest['port']['require']['key'] == "string") {
									if ($valueTimeFrom != null && $valueTimeTo != null) {
										if (isset($valueTimeFrom) && $valueTimeFrom != null) {
											$fromTimestamp = $_tool->convertDatetime($valueTimeFrom);
											$valueTimeTo = $fromTimestamp['stamp'];
										}else {
											return array("return" => false, "reason" => "");
										}
										if (isset($valueTimeTo) && $valueTimeTo != null) {
											$toTimestamp = $_tool->convertDatetime($valueTimeTo);
											$valueTimeTo = $toTimestamp['stamp'];
										}else {
											return array("return" => false, "reason" => "");
										}
									}else {
										return array("return" => false, "reason" => "");
									}
								}
								if ($countRequireValue == 1) {
									$feed_['query']['source'] = "AND `time` >= '{$valueTimeFrom}'";
								}else if ($countRequireValue == 2) {
									$feed_['query']['source'] = "AND (`time` BETWEEN '{$valueTimeFrom}' AND '{$valueTimeTo}')";
								}else {
									return array("return" => false, "reason" => "");
								}
							}
						}
					}else {
						$feed_['query']['source'] = false;
					}
					if ($g_user['mode']['type'] == "user") {
						$feed_['query']['hide'] = "AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '{$g_user['id']}'))";
						$feed_['query']['private'] = "AND ((`private.view` = '1' AND `author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '2' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR (`private.view` = '3' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR (`private.view` = '4' OR `author.type` = 'user' AND `author.id` = '{$g_user['id']}'))";
					}else {
						$feed_['query']['hide'] = "";
						$feed_['query']['private'] = "AND (`private.view` = '4')";
					}
					$feed_['query']['block'] = "AND (`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}'))";
					$feed_['query']['order'] = "ORDER BY `id` DESC";
					$feed_['query']['code'] = "SELECT {$feed_['query']['select']} FROM `status` WHERE `id` {$feed_['follow']['sort']} '{$id}' {$feed_['query']['block']} {$feed_['query']['source']} {$feed_['query']['private']} {$feed_['query']['order']} {$feed_['query']['limit']}";
					$feed_['query']['source'] = "AND ({$feed_['query']['source']})";
					if (isset($feed_['query']['source']) && $feed_['query']['source'] != false) {
						return array("return" => true, "code" => $feed_['query']['code']);
					}else {
						return array("return" => true, "code" => "");
					}
				}else {
					return array("return" => false, "reason" => "ERROR#FEEDS_002");
				}
			}
		}
		if ($type == "status") {
			if ($action == "add" || $action == "upload") {
				if (isset($ObjRequest['type']) && is_string($ObjRequest['type'])) $statusType = $ObjRequest['type']; else $statusType = null;
				if (isset($ObjRequest['content']) && is_string($ObjRequest['content'])) $statusContent = $ObjRequest['content']; else $statusContent = null;
				if (isset($ObjRequest['media']) && is_array($ObjRequest['media'])) $statusMedia = $ObjRequest['media']; else $statusMedia = null;
				if (isset($ObjRequest['push']) && is_array($ObjRequest['push'])) $statusPush = $ObjRequest['push']; else $statusPush = null;
				if (isset($ObjRequest['private']) && is_array($ObjRequest['private'])) $statusPrivate = $ObjRequest['private']; else $statusPrivate = null;
				if ($statusType == null) {
					die(print json_encode(array("return" => false, "reason" => "4")));
				}
				$statusAddOptions = array(
					"type" => $statusType,
					"content" => $statusContent,
					"media" => $statusMedia,
					"private" => $statusPrivate
				);
				if ($statusPush != null) {
					if (isset($push['mood'])) $statusAddOptions['mood'] = $push['mood']; else $statusAddOptions['mood'] = null;
					if (isset($push['places'])) $statusAddOptions['places'] = $push['places']; else $statusAddOptions['places'] = null;
					if (isset($push['usertag'])) $statusAddOptions['usertag'] = $push['usertag']; else $statusAddOptions['usertag'] = null;
					if (isset($push['link'])) $statusAddOptions['link'] = $push['link']; else $statusAddOptions['link'] = null;
					if (isset($push['share'])) $statusAddOptions['share'] = $push['share']; else $statusAddOptions['share'] = null;
				}
				$statusRequest = $_feed->status_add($statusAddOptions);
				if (isset($statusRequest['return']) && $statusRequest['return'] == true) {
					die(print json_encode(array("return" => true)));
				}else if (isset($statusRequest['reason'], $statusRequest['return']) && $statusRequest['return'] == false) {
					die(print json_encode(array("return" => false, "reason" => $statusRequest['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "1")));
				}
			}else if ($action == "newcheck") {
				$actionGetCodeQuery = getCodeQuery("newcheck");
				if (isset($statusRequest['return']) && $statusRequest['return'] == true) {
					if (isset($statusRequest['code']) && $statusRequest['code'] != null) {
						$statsCount = mysqli_num_rows(mysqli_query($_db->port('beta'), $statusRequest['code']));
						$statsDetail = array(
							"user" => 0, 
							"groups" => 0, 
							"pages" => 0
						);
						$statsArr = array("number" => $number, "detail" => $detail);
						die(print json_encode(array("return" => true, "stats" => $statsArr)));
					}else {
						die(print json_encode(array("return" => true)));
					}
				}else if (isset($statusRequest['reason']) && $statusRequest['return'] == false) {
					die(print json_encode(array("return" => false, "reason" => $statusRequest['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "get" || $action == "load") {
				$actionGetCodeQuery = getCodeQuery("load");
				if (isset($statusRequest['return']) && $statusRequest['return'] == true) {
					if (isset($statusRequest['code']) && $statusRequest['code'] != null) {
						$statusGet = $_feed->status_get(array("return" => "json", "query" => $actionGetCodeQuery['code']));
						if (isset($statusGet['return'], $statusGet['data'], $statusGet['count']) && $statusGet['return'] == true) {
							die(print json_encode(array("return" => true, "count" => $statusGet['count'], "data" => $statusGet['data'])));
						}else if (isset($statusGet['return'], $statusGet['reason']) && $statusGet['return'] == false && $statusGet['reason']) {
							die(print json_encode(array("return" => false, "reason" => $statusGet['reason'])));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => true)));
					}
				}else if (isset($statusRequest['reason']) && $statusRequest['return'] == false) {
					die(print json_encode(array("return" => false, "reason" => $statusRequest['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "block") {
				if (isset($ObjRequest['id']) && is_array($ObjRequest['id']) && count($ObjRequest['id']) > 0) $idArr = $ObjRequest['id']; else $idArr = null;
				if (isset($ObjRequest['id']) && (is_string($ObjRequest['id']) || is_numeric($ObjRequest['id']))) $idString = $ObjRequest['id']; else $idString = null;
				if ($idString != null) {
					$idArr = array();
					$idArr[] = $idString;
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$notifyArr = array();
				foreach ($idArr as $key => $idArrThis) {
					if ((is_string($idArrThis) || is_numeric($idArrThis)) && $idArrThis > 0) {
						$statusBlockOptions = array("id" => $idArrThis);
						$blockRequest = $_feed->status_block($statusBlockOptions);
						if (isset($blockRequest['return']) && $blockRequest['return'] == true) {
							$notifyArr[] = array("id" => $idArrThis, "return" => true);
						}else if (isset($blockRequest['reason']) && $blockRequest['return'] == false) {
							$notifyArr[] = array("id" => $idArrThis, "return" => false, "reason" => $blockRequest['reason']);
						}else {
							$notifyArr[] = array("id" => $idArrThis, "return" => false, "reason" => "");
						}
					}else {
						continue;
					}
				}
				die(print json_encode(array("return" => true, "data" => $notifyArr)));
			}else if ($action == "edit" || $action == "change") {
				if (isset($ObjRequest['id']) && (is_string($ObjRequest['id']) || is_numeric($ObjRequest['id']))) $statusId = $ObjRequest['id']; else $statusId = null;
				if (isset($ObjRequest['rows']) && is_array($ObjRequest['rows']) && count($ObjRequest['rows']) > 0) $statusRows = $ObjRequest['rows']; else $statusRows = null;
				if ($statusId == null || $statusRows == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				foreach ($statusRows as $key => $statusRowsThis) {
					if (preg_match("/^(private)+/", $key)) {
						$statusRowsThis[preg_replace("/(\-\>)/", ".", $key)] = $value;
						unset($statusRowsThis[$key]);
						if (!preg_match("/([0-9]+)/", $value)) {
							unset($statusRowsThis[$key]);
						}
					}
				}
				$statusEditOptions = array("id" => $statusId, "rows" => $statusRowsThis);
				$editRequest = $_feed->status_edit($statusEditOptions);
				if (isset($editRequest['return']) && $editRequest['return'] == true) {
					die(print json_encode(array("id" => $statusId, "return" => true)));
				}else if (isset($editRequest['reason']) && $editRequest['return'] == false) {
					die(print json_encode(array("id" => $statusId, "return" => false, "reason" => $editRequest['reason'])));
				}else {
					die(print json_encode(array("id" => $statusId, "return" => false, "reason" => "")));
				}
			}else if ($action == "remove" || $action == "delete") {
				if (isset($ObjRequest['id']) && is_array($ObjRequest['id']) && count($ObjRequest['id']) > 0) $idArr = $ObjRequest['id']; else $idArr = null;
				if (isset($ObjRequest['id']) && (is_string($ObjRequest['id']) || is_numeric($ObjRequest['id']))) $idString = $ObjRequest['id']; else $idString = null;
				if ($idString == null && $idArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				if ($idString != null) {
					$idArr = array();
					$idArr[] = $idString;
				}
				$notifyArr = array();
				foreach ($idArr as $key => $idArrThis) {
					if ((is_string($idArrThis) || is_numeric($idArrThis)) && $idArrThis > 0) {
						$statusDeleteOptions = array(
							"id" => $idArrThis,
							"private" => true,
							"author" => array(
								"type" => $g_user['mode']['type'],
								"id" => $g_user['mode']['id']
							)
						);
						$deleteRequest = $_feed->status_remove($statusDeleteOptions);
						if (isset($deleteRequest['return']) && $deleteRequest['return'] == true) {
							$notifyArr[] = array("id" => $idArrThis, "return" => true);
						}else if (isset($deleteRequest['reason']) && $deleteRequest['return'] == false) {
							$notifyArr[] = array("id" => $idArrThis, "return" => false, "reason" => $deleteRequest['reason']);
						}else {
							$notifyArr[] = array("id" => $idArrThis, "return" => false, "reason" => "");
						}
					}else {
						continue;
					}
				}
				die(print json_encode(array("return" => true, "data" => $notifyArr)));
			}else if ($action == "stats" || $action == "statistic") {
				if (isset($ObjRequest['id']) && is_array($ObjRequest['id'])) $statusIdArr = $ObjRequest['id']; else $statusIdArr = null;
				if (isset($ObjRequest['rows']) && is_array($ObjRequest['rows'])) $statusRowsArr = $ObjRequest['rows']; else $statusRowsArr = null;
				if (isset($ObjRequest['type']) && is_array($ObjRequest['type'])) $statusTypeArr = $ObjRequest['type']; else $statusTypeArr = null;
				if ($statusIdArr == null || $statusRowsArr == null || $statusTypeArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}else {
					$notifyArr = array();
					foreach ($statusIdArr as $key => $statusIdThis) {
						if (!isset($statusRowsArr[$key]) || !isset($statusTypeArr[$key])) {
							$notifyArr[] = array("id" => $statusIdThis, "return" => false, "reason" => "");
							continue;
						}else {
							$statusRowsThis = $statusRowsArr[$key];
							$statusTypeThis = $statusTypeArr[$key];
						}
						$getStatsFeedstatusOptions = array("id" => $statusIdThis, "rows" => $statusRowsThis, "type" => $statusTypeThis);
						$getStatsFeedstatus = $_feed->status_stats($getStatsFeedstatusOptions);
						if (isset($getStatsFeedstatus['return'], $getStatsFeedstatus['stats'], $getStatsFeedstatus['list']) && $getStatsFeedstatus['return'] == true) {
							$notifyArr[] = array("id" => $statusIdThis, "return" => true, "stats" => $getStatsFeedstatus['stats'], "list" => $getStatsFeedstatus['list']);
						}else if (isset($getStatsFeedstatus['return'], $getStatsFeedstatus['reason']) && $getStatsFeedstatus['return'] == false) {
							$notifyArr[] = array("id" => $statusIdThis, "return" => false, "reason" => $getStatsFeedstatus['reason']);
						}else {
							$notifyArr[] = array("id" => $statusIdThis, "return" => false, "reason" => "");
						}
					}
					die(print json_encode(array("return" => true, "data" => $notifyArr)));
				}
			}else if ($action == "favorite") {
				if (isset($ObjRequest['id']) && is_array($ObjRequest['id']) && count($ObjRequest['id']) > 0) $idArr = $ObjRequest['id']; else $idArr = null;
				if ($idArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$favoriteArr = array();
				foreach ($idArr as $key => $idArrThis) {
					$statusfavoriteOptions = array(
						"id" => $idArrThis,
						"action" => "add"
					);
					$favoriteRequest = $_feed->status_favorite($statusfavoriteOptions);
					if (isset($favoriteRequest['return']) && $favoriteRequest['return'] == true) {
						$favoriteArr[] = array("id" => $idArrThis, "return" => true);
					}else if (isset($favoriteRequest['reason']) && $favoriteRequest['return'] == false) {
						$favoriteArr[] = array("id" => $idArrThis, "return" => false, "reason" => $favoriteRequest['reason']);
					}else {
						$favoriteArr[] = array("id" => $idArrThis, "return" => false, "reason" => "");
					}
				}
				die(print json_encode(array("return" => true, "data" => $favoriteArr)));
			}else if ($action == "unfavorite") {
				if (isset($ObjRequest['id']) && is_array($ObjRequest['id']) && count($ObjRequest['id']) > 0) $idArr = $ObjRequest['id']; else $idArr = null;
				if ($idArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$unfavoriteArr = array();
				foreach ($idArr as $key => $idArrThis) {
					$statusunfavoriteOptions = array(
						"id" => $idArrThis,
						"action" => "remove"
					);
					$unfavoriteRequest = $_feed->status_favorite($statusunfavoriteOptions);
					if (isset($unfavoriteRequest['return']) && $unfavoriteRequest['return'] == true) {
						$unfavoriteArr[] = array("id" => $idArrThis, "return" => true);
					}else if (isset($unfavoriteRequest['reason']) && $unfavoriteRequest['return'] == false) {
						$unfavoriteArr[] = array("id" => $idArrThis, "return" => false, "reason" => $unfavoriteRequest['reason']);
					}else {
						$unfavoriteArr[] = array("id" => $idArrThis, "return" => false, "reason" => "");
					}
				}
				die(print json_encode(array("return" => true, "data" => $unfavoriteArr)));
			}else if ($action == "follow") {
				if (isset($ObjRequest['id']) && is_array($ObjRequest['id']) && count($ObjRequest['id']) > 0) $idArr = $ObjRequest['id']; else $idArr = null;
				if ($idArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$followArr = array();
				foreach ($idArr as $key => $idArrThis) {
					$statusfollowOptions = array(
						"id" => $idArrThis,
						"action" => "add"
					);
					$followRequest = $_feed->status_follow($statusfollowOptions);
					if (isset($followRequest['return']) && $followRequest['return'] == true) {
						$followArr[] = array("id" => $idArrThis, "return" => true);
					}else if (isset($followRequest['reason']) && $followRequest['return'] == false) {
						$followArr[] = array("id" => $idArrThis, "return" => false, "reason" => $followRequest['reason']);
					}else {
						$followArr[] = array("id" => $idArrThis, "return" => false, "reason" => "");
					}
				}
				die(print json_encode(array("return" => true, "data" => $followArr)));
			}else if ($action == "unfollow") {
				if (isset($ObjRequest['id']) && is_array($ObjRequest['id']) && count($ObjRequest['id']) > 0) $idArr = $ObjRequest['id']; else $idArr = null;
				if ($idArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$unfollowArr = array();
				foreach ($idArr as $key => $idArrThis) {
					$statusunfollowOptions = array(
						"id" => $idArrThis,
						"action" => "remove"
					);
					$unfollowRequest = $_feed->status_unfollow($statusunfollowOptions);
					if (isset($unfollowRequest['return']) && $unfollowRequest['return'] == true) {
						$unfollowArr[] = array("id" => $idArrThis, "return" => true);
					}else if (isset($unfollowRequest['reason']) && $unfollowRequest['return'] == false) {
						$unfollowArr[] = array("id" => $idArrThis, "return" => false, "reason" => $unfollowRequest['reason']);
					}else {
						$unfollowArr[] = array("id" => $idArrThis, "return" => false, "reason" => "");
					}
				}
				die(print json_encode(array("return" => true, "data" => $unfollowArr)));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "comment") {
			if ($action == "add") {
				if (isset($ObjRequest['inside_type']) && is_string($ObjRequest['inside_type'])) $insideType = $ObjRequest['inside_type']; else $insideType = null;
				if (isset($ObjRequest['inside_id']) && is_string($ObjRequest['inside_id'])) $insideId = $ObjRequest['inside_id']; else $insideId = null;
				if (isset($ObjRequest['content']) && is_string($ObjRequest['content'])) $content = $ObjRequest['content']; else $content = null;
				if ($insideType == null || $insideId == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
				$commentOptionsAdd = array("inside_type" => $insideType, "inside_id" => $insideId, "content" => $content, "author" => $g_user['mode'], "user" => array("id" => $g_user['id']));
				$addFeedComment = $_feed->comment_add($commentOptionsAdd);
				if (isset($addFeedComment['return']) && $addFeedComment['return'] == true) {
					die(print json_encode(array("return" => true, "data" => $addFeedComment['data'])));
				}else if (isset($addFeedComment['return'], $addFeedComment['reason']) && $addFeedComment['return'] == false) {
					die(print json_encode(array("return" => false, "reason" => $addFeedComment['reason'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($action == "get" || $action == "load") {
				if (isset($ObjRequest['options']) && is_array($ObjRequest['options']) && count($ObjRequest['options']) > 0) $optionsArr = $ObjRequest['options']; else $optionsArr = null;
				if ($optionsArr == null) {
					die(print json_encode(array("return" => false, "reason" => "1")));
				}
				$dataArr = array();
				foreach ($optionsArr as $key => $optionsArrThis) {
					if (isset($optionsArrThis['return']) && is_string($optionsArrThis['return'])) $returnType = $optionsArrThis['return']; else $returnType = null;
					if (isset($optionsArrThis['inside_type']) && is_string($optionsArrThis['inside_type'])) $insideType = $optionsArrThis['inside_type']; else $insideType = null;
					if (isset($optionsArrThis['inside_id']) && is_numeric($optionsArrThis['inside_id'])) $insideId = $optionsArrThis['inside_id']; else $insideId = null;
					if (isset($optionsArrThis['id']) && is_numeric($optionsArrThis['id'])) $commentId = $optionsArrThis['id']; else $commentId = null;
					if (isset($optionsArrThis['sort']) && is_string($optionsArrThis['sort'])) $commentSort = $optionsArrThis['sort']; else $commentSort = null;
					if (isset($optionsArrThis['limit']) && is_numeric($optionsArrThis['limit'])) $commentLimit = $optionsArrThis['limit']; else $commentLimit = null;
					if (isset($optionsArrThis['reply']) && is_bool($optionsArrThis['reply'])) $getReply = $optionsArrThis['reply']; else $getReply = true;
					if ($returnType == null) {
						continue;
					}
					if ($insideType == null || $insideId == null) {
						continue;
					}
					if ($commentId == null) {
						$commentId = 0;
					}
					if ($commentLimit != null) {
						$commentLimit = 'LIMIT '.$commentLimit;
					}
					if (in_array($commentSort, [">", ">="])) {
						$commentOrder = "ORDER BY `id` ASC";
					}else if (in_array($commentSort, ["<", "<="])) {
						$commentOrder = "ORDER BY `id` DESC";
					}else {
						$commentOrder = null;
					}
					$getCommentRequest = "SELECT `id` FROM `status_comment` WHERE `id` {$commentSort} {$commentId} AND `inside.type` = '{$insideType}' AND `inside.id` = '{$insideId}' {$commentOrder} {$commentLimit}";
					$getCommentQuery = mysqli_query($_db->port('beta'), $getCommentRequest);
					if ($getCommentRequest && mysqli_num_rows($getCommentQuery) > 0) {
						while ($getCommentFetch = mysqli_fetch_assoc($getCommentQuery)) {
							if ($returnType == "json") {
								$thisRequestComment = "SELECT * FROM `status_comment` WHERE `id` = '{$getCommentFetch['id']}' LIMIT 1";
								$getFeedCommentOptions = array(
									"return" => "json",
									"query" => $thisRequestComment
								);
								$getFeedComment = $_feed->comment_get($getFeedCommentOptions);
								if (isset($getFeedComment['return'], $getFeedComment['data'][0]) && $getFeedComment['return'] == true) {
									$feedCommentData = $getFeedComment['data'][0];
									$dataArr[] = array(
										"inside_type" => $insideType, 
										"inside_id" => $insideId,
										"return" => true,
										"data" => $feedCommentData
									);
									if ($insideType == "status" && $getReply == true && isset($feedCommentData['reply']['count']) && $feedCommentData['reply']['count'] > 0) {
										$getFeedCommentRelpyRequest = "SELECT * FROM `status_comment` WHERE `inside.type` = 'comment' AND `inside.id` = '{$getCommentFetch['id']}' ORDER BY `id` DESC LIMIT 3";
										$getFeedCommentRelpyOptions = array(
											"return" => "json",
											"query" => $getFeedCommentRelpyRequest
										);
										$getFeedCommentReply = $_feed->comment_get($getFeedCommentRelpyOptions);
										if (isset($getFeedCommentReply['return'], $getFeedCommentReply['data']) && $getFeedCommentReply['return'] == true) {
											$feedCommentReplyData = $getFeedCommentReply['data'];
											foreach ($feedCommentReplyData as $key => $feedCommentReplyDataThis) {
												$dataArr[] = array(
													"inside_type" => $insideType, 
													"inside_id" => $insideId,
													"return" => true,
													"data" => $feedCommentReplyDataThis
												);
											}
										}
									}
								}else if (isset($getFeedComment['return'], $getFeedComment['reason']) && $getFeedComment['return'] == false) {
									$dataArr[] = array(
										"inside_type" => $insideType, 
										"inside_id" => $insideId,
										"return" => false, 
										"reason" => $getFeedComment['reason']
									);
								}else {
									$dataArr[] = array(
										"inside_type" => $insideType, 
										"inside_id" => $insideId,
										"return" => false, 
										"reason" => "3"
									);
								}
							}else if ($returnType == "html") {
								//.
							}
						}
					}else if ($getCommentRequest && mysqli_num_rows($getCommentQuery) == 0) {
						$dataArr[] = array(
							"inside_type" => $insideType, 
							"inside_id" => $insideId,
							"return" => true,
							"data" => array()
						);
					}else {
						$dataArr[] = array(
							"inside_type" => $insideType, 
							"inside_id" => $insideId,
							"return" => false, 
							"reason" => "2"
						);
					}
				}
				die(print json_encode(array("return" => true, "data" => $dataArr)));
			}else if ($action == "delete" || $action == "remove") {

			}else if ($action == "favorite") {
				if (isset($ObjRequest['id']) && is_array($ObjRequest['id'])) $commentIdArr = $ObjRequest['id']; else $commentIdArr = null;
				if ($commentIdArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}else {
					$notifyArr = array();
					foreach ($commentIdArr as $commentIdThis) {
						$addFavoriteFeedCommentOptions = array("id" => $commentIdThis, "type" => "add");
						$addFavoriteFeedComment = $_feed->comment_favorite($addFavoriteFeedCommentOptions);
						if (isset($addFavoriteFeedComment['return']) && $addFavoriteFeedComment['return'] == true) {
							$notifyArr[] = array("id" => $commentIdThis, "return" => true);
						}else if (isset($addFavoriteFeedComment['return'], $addFavoriteFeedComment['reason']) && $addFavoriteFeedComment['return'] == false) {
							$notifyArr[] = array("id" => $commentIdThis, "return" => false, "reason" => $addFavoriteFeedComment['reason']);
						}else {
							$notifyArr[] = array("id" => $commentIdThis, "return" => false, "reason" => "");
						}
					}
					die(print json_encode(array("return" => true, "data" => $notifyArr)));
				}
			}else if ($action == "unfavorite") {
				if (isset($ObjRequest['id']) && is_array($ObjRequest['id'])) $commentIdArr = $ObjRequest['id']; else $commentIdArr = null;
				if ($commentIdArr == null) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}else {
					$notifyArr = array();
					foreach ($commentIdArr as $commentIdThis) {
						$addFavoriteFeedCommentOptions = array("id" => $commentIdThis, "type" => "remove");
						$addFavoriteFeedComment = $_feed->comment_favorite($addFavoriteFeedCommentOptions);
						if (isset($addFavoriteFeedComment['return']) && $addFavoriteFeedComment['return'] == true) {
							$notifyArr[] = array("id" => $commentIdThis, "return" => true);
						}else if (isset($addFavoriteFeedComment['return'], $addFavoriteFeedComment['reason']) && $addFavoriteFeedComment['return'] == false) {
							$notifyArr[] = array("id" => $commentIdThis, "return" => false, "reason" => $addFavoriteFeedComment['reason']);
						}else {
							$notifyArr[] = array("id" => $commentIdThis, "return" => false, "reason" => "");
						}
					}
					die(print json_encode(array("return" => true, "data" => $notifyArr)));
				}
			}else if ($action == "stats" || $action == "statistic") {
				if (isset($ObjRequest['id']) && is_array($ObjRequest['id'])) $commentIdArr = $ObjRequest['id']; else $commentIdArr = null;
				if (isset($ObjRequest['rows']) && is_array($ObjRequest['rows'])) $commentRowsArr = $ObjRequest['rows']; else $commentRowsArr = null;
				if (isset($ObjRequest['type']) && is_array($ObjRequest['type'])) $commentTypeArr = $ObjRequest['type']; else $commentTypeArr = null;
				if ($commentIdArr == null || $commentRowsArr == null || $commentTypeArr == null) {
					die(print json_encode(array("return" => false, "reason" => "5")));
				}else {
					$notifyArr = array();
					foreach ($commentIdArr as $key => $commentIdThis) {
						if (!isset($commentRowsArr[$key]) || !isset($commentTypeArr[$key])) {
							$notifyArr[] = array("id" => $commentIdThis, "return" => false, "reason" => "6");
							continue;
						}else {
							$commentRowsThis = $commentRowsArr[$key];
							$commentTypeThis = $commentTypeArr[$key];
						}
						$getStatsFeedCommentOptions = array("id" => $commentIdThis, "rows" => $commentRowsThis, "type" => $commentTypeThis);
						$getStatsFeedComment = $_feed->comment_stats($getStatsFeedCommentOptions);
						if (isset($getStatsFeedComment['return'], $getStatsFeedComment['stats'], $getStatsFeedComment['list']) && $getStatsFeedComment['return'] == true) {
							$notifyArr[] = array("id" => $commentIdThis, "return" => true, "stats" => $getStatsFeedComment['stats'], "list" => $getStatsFeedComment['list']);
						}else if (isset($getStatsFeedComment['return'], $getStatsFeedComment['reason']) && $getStatsFeedComment['return'] == false) {
							$notifyArr[] = array("id" => $commentIdThis, "return" => false, "reason" => $getStatsFeedComment['reason']);
						}else {
							$notifyArr[] = array("id" => $commentIdThis, "return" => false, "reason" => "7");
						}
					}
					die(print json_encode(array("return" => true, "data" => $notifyArr)));
				}
			}else if ($action == "follow") {

			}else if ($action == "unfollow") {

			}else if ($action == "block") {

			}else if ($action == "unblock") {

			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "maps" && $token == $g_client['token']['action']['maps']) {
		if ($type == "thumbnail") {
			if ($action == "get") {
				if (isset($ObjRequest['title']) && is_string($ObjRequest['title'])) $thumbnailTitle = $ObjRequest['title']; else $thumbnailTitle = null;
				if (isset($ObjRequest['size']) && is_string($ObjRequest['size'])) $thumbnailSize = $ObjRequest['size']; else $thumbnailSize = 100;
				if ($thumbnailTitle != null) {
					$getThumbnailMaps = $_maps->thumbnail($thumbnailTitle, $thumbnailSize);
					if (isset($getThumbnailMaps['return']) && $getThumbnailMaps['return'] == true) {
						die(print json_encode(array("return" => true, "data" => $getThumbnailMaps['data'])));
					}else if (isset($getThumbnailMaps['return'], $getThumbnailMaps['reason']) && $getThumbnailMaps['return'] == false) {
						die(print json_encode(array("return" => false, "reason" => $getThumbnailMaps['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "places") {
			if ($action == "search") {
				if (isset($ObjRequest['query']) && is_array($ObjRequest['query'])) $query = $ObjRequest['query']; else $query = null;
				if ($query == null && count($query) == 0) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}else {
					if (isset($query['by'])) {
						$query['by'] = $query['by'].'search';
					}
					$requestMapsPlaces = $_maps->places(false, array("type" => "search", "query" => $query));
					if (isset($requestMapsPlaces['return'], $requestMapsPlaces['data']) && $requestMapsPlaces['return'] == true) {
						$requestMapsPlacesData = $requestMapsPlaces['data'];
						foreach ($requestMapsPlacesData as $key => $requestMapsPlacesDataThis) {
							unset($requestMapsPlaces['data'][$i]['reference']);
						}
						die(print json_encode(array("return" => true, "data" => $requestMapsPlaces['data'])));
					}else if (isset($requestMapsPlaces['return'], $requestMapsPlaces['reason']) && $requestMapsPlaces['return'] == false) {
						die(print json_encode(array("return" => false, "reason" => $requestMapsPlaces['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "sites" && $token == $g_client['token']['action']['sites']) {
		if ($type == "info" || $type == "data") {
			if ($action == "get") {
				if (isset($ObjRequest['url']) && is_string($ObjRequest['url'])) $siteUrl = $ObjRequest['url']; else $siteUrl = null;
				if ($siteUrl != null) {
					$getInfoSites = $_sites->extract($siteUrl);
					if (isset($getInfoSites['return']) && $getInfoSites['return'] == true) {
						if (isset($getInfoSites['data']['thumbnail']) && $getInfoSites['data']['thumbnail'] != null) {
							$getInfoSites['data']['thumbnail'] = $_tool->links($getInfoSites['data']['thumbnail']);
						}else {
							$getInfoSites['data']['thumbnail'] = null;
						}
						die(print json_encode(array("return" => true, "data" => $getInfoSites['data'], "url" => $siteUrl)));
					}else if (isset($getInfoSites['return'], $getInfoSites['reason']) && $getInfoSites['return'] == false) {
						die(print json_encode(array("return" => false, "reason" => $getInfoSites['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "messages" && $token == $g_client['token']['action']['messages']) {
		if ($type == "chatbox") {
			if (isset($ObjRequest['local']) && is_string($ObjRequest['local'])) $local = $ObjRequest['local']; else $local = null;
			if ($local == "hashtag") {
				if (isset($ObjRequest['hashtag']) && is_string($ObjRequest['hashtag'])) $chatboxHashtag = $ObjRequest['hashtag']; else $chatboxHashtag = null;
				if ($action == "add" && $chatboxHashtag != null) {
					if (isset($ObjRequest['content']) && is_string($ObjRequest['content'])) $messageContent = $ObjRequest['content']; else $messageContent = null;
					if ($messageContent == null) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					$insertMessageChatbox = $_messages->chatbox(array("port" => "hashtag", "type" => "insert", "hashtag" => $chatboxHashtag, "content" => $messageContent));
					if (isset($insertMessageChatbox['return'], $insertMessageChatbox['data']) && $insertMessageChatbox['return'] == true) {
						$messagesArr = array();
						$messagesData = $insertMessageChatbox['data'];
						$messagesData['author']['avatar'] = $g_user['avatar.small'];
						$messagesData['author']['cover'] = $g_user['cover.small'];
						$messagesData['author']['name'] = $g_user['fullname'];
						$messagesData['author']['tag'] = $g_user['username'];
						$messagesData['author']['link'] = $g_user['link'];
						$messagesArr[] = $messagesData;
						die(print json_encode(array("return" => true, "data" => $messagesArr)));
					}else if (isset($insertMessageChatbox['return'], $insertMessageChatbox['reason']) && $insertMessageChatbox['return'] == false) {
						die(print json_encode(array("return" => false, "reason" => $insertMessageChatbox['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "private") {
			if (isset($ObjRequest['manage']) && is_string($ObjRequest['manage'])) $manage = $ObjRequest['manage']; else $manage = null;
			if ($manage == "guy") {
				if ($action == "search") {
					if (isset($ObjRequest['from']) && is_string($ObjRequest['from'])) $from = $ObjRequest['from']; else $from = null;
					if (isset($ObjRequest['value']) && is_string($ObjRequest['value'])) $value = $ObjRequest['value']; else $value = null;
					if ($from == null || $value == null) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					if ($from == "all") {
						$requestRegex[] = "`fullname` LIKE '%{$value}%'";
						$requestRegex[] = "`username` = '{$value}'";
						$requestRegex[] = "`email` = '{$value}'";
						$requestRegex[] = "`phone` = '{$value}'";
						$requestRegex[] = "`link` = '{$value}'";
					}else if ($from == "friends") {
						$requestRegex[] = "`fullname` LIKE '%{$value}%'";
						$requestRegex[] = "`username` LIKE '%{$value}%'";
						$requestRegex[] = "`email` = '{$value}'";
						$requestRegex[] = "`phone` = '{$value}'";
						$requestRegex[] = "`link` = '{$value}'";
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					foreach ($requestRegex as $key => $requestRegexThis) {
						if (isset($searchQueryRegexThis) && $searchQueryRegexThis != null) {
							$searchQueryRegexThis .= " OR ".$requestRegexThis;
						}else {
							$searchQueryRegexThis = $requestRegexThis;
						}
					}
					if ($from == "all") {
						$searchRequest = "SELECT `id` FROM `users` WHERE `private.search` >= '{$_parameter->get('user_private.search_agree')}' AND ({$searchQueryRegexThis})";
					}else if ($from == "friends") {
						$searchRequest = "SELECT `id` FROM `users` WHERE `private.tag` >= '{$_parameter->get('user_private.tag_agree')}' AND `id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}') AND ({$searchQueryRegexThis})";
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					$guyArr = array();
					$searchQuery = mysqli_query($_db->port('beta'), $searchRequest);
					if ($searchQuery == true && mysqli_num_rows($searchQuery) > 0) {
						while ($searchFetch = mysqli_fetch_assoc($searchQuery)) {
							$getUserAction = $_user->getInfo(array("rows" => "`id`, `username`, `fullname`, `avatar.small`, `cover.small`", "id" => $searchFetch['id']));
							if (isset($getUserAction['return'], $getUserAction['data']) && $getUserAction['return'] == true) {
								$guyArr[] = array(
									"id" => $getUserAction['data']['id'],
									"tag" => $getUserAction['data']['username'],
									"name" => $getUserAction['data']['fullname'],
									"avatar" => $getUserAction['data']['avatar.small'],
									"cover" => $getUserAction['data']['cover.small']
								);
							}else {
								continue;
							}
						}
					}
					die(print json_encode(array("return" => true, "results" => $guyArr)));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($manage == "tab") {
				die(print json_encode(array("return" => true)));
			}else if ($manage == "members") {
				die(print json_encode(array("return" => true)));
			}else if ($manage == "data") {
				if ($action == "add") {
					if (isset($ObjRequest['tab']) && is_string($ObjRequest['tab'])) $messageTab = $ObjRequest['tab']; else $messageTab = null;
					if (isset($ObjRequest['content']) && is_string($ObjRequest['content'])) $messageContent = $ObjRequest['content']; else $messageContent = null;
					if (isset($ObjRequest['emoticons']) && is_string($ObjRequest['emoticons'])) $messageEmoticons = $ObjRequest['emoticons']; else $messageEmoticons = null;
					if ($messageTab == null || $messageContent == null) { 
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					$addMessagesOptions = array("action" => "add", "id" => $messageTab, "content" => $messageContent, "emoticons" => $messageEmoticons);
					$addMessages = $_messages->data($addMessagesOptions);
					if (isset($addMessages['return'], $addMessages['data']) && $addMessages['return'] == true) {
						die(print json_encode(array("return" => true, "data" => $addMessages['data'])));
					}if (isset($addMessages['return'], $addMessages['reason']) && $addMessages['return'] == false) {
						die(print json_encode(array("return" => true, "reason" => $addMessages['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($action == "get" || $action == "load") {
					if (isset($ObjRequest['tab']) && is_string($ObjRequest['tab'])) $messageTab = $ObjRequest['tab']; else $messageTab = null;
					if (isset($ObjRequest['id']) && is_string($ObjRequest['id'])) $messageId = $ObjRequest['id']; else $messageId = null;
					if (isset($ObjRequest['sort']) && is_string($ObjRequest['sort'])) $messageSort = $ObjRequest['sort']; else $messageSort = null;
					if (isset($ObjRequest['limit']) && is_string($ObjRequest['limit'])) $messageLimit = $ObjRequest['limit']; else $messageLimit = null;
					if ($messageTab > 0 && $messageId > 0 && ($messageSort == "<" || $messageSort == ">" || $messageSort == "=")) {
						if ($messageSort == "<") {
							$messageOrder = "ORDER BY `id` DESC";
						}else if ($messageSort == ">") {
							$messageOrder = "ORDER BY `id` DESC";
						}
						if ($messageLimit != null) {
							$messageLimit = "LIMIT ".$messageLimit;
						}
						$getMessages = $_messages->data(array("action" => "get", "tab" => $messageTab, "id" => $messageId, "sort" => $messageSort, "limit" => $messageLimit, "order" => $messageOrder));
						if (isset($getMessages['return'], $getMessages['data']) && $getMessages['return'] == true) {
							die(print json_encode(array("return" => true, "data" => $getMessages['data'])));
						}else if (isset($getMessages['return'], $getMessages['reason']) && $getMessages['reason'] == false) {
							die(print json_encode(array("return" => true, "reason" => $getMessages['reason'])));
						}else {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($action == "delete") {
					die(print json_encode(array("return" => true)));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($manage == "views") {
				if ($action == "add") {
					if (isset($ObjRequest['tab']) && is_string($ObjRequest['tab'])) $messageTab = $ObjRequest['tab']; else $messageTab = null;
					if ($messageTab == null) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					$addViewsMessages = $_messages->views(array("action" => "add", "id" => $messageTab));
					if (isset($addViewsMessages['return'], $addViewsMessages['data']) && $addViewsMessages['return'] == true) {
						die(print json_encode(array("return" => true, "data" => $addViewsMessages['data'])));
					}else if (isset($addViewsMessages['return'], $addViewsMessages['reason']) && $addViewsMessages['return'] == false) {
						die(print json_encode(array("return" => true, "reason" => $addViewsMessages['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($action == "get") {
					if (isset($ObjRequest['tab']) && is_string($ObjRequest['tab'])) $messageTab = $ObjRequest['tab']; else $messageTab = null;
					if ($messageTab == null) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					$getViewsMessages = $_messages->views(array("action" => "get", "id" => $messageTab));
					if (isset($getViewsMessages['return'], $getViewsMessages['data']) && $getViewsMessages['return'] == true) {
						die(print json_encode(array("return" => true, "data" => $getViewsMessages['data'])));
					}else if (isset($getViewsMessages['return'], $getViewsMessages['reason']) && $getViewsMessages['return'] == false) {
						die(print json_encode(array("return" => true, "reason" => $getViewsMessages['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($manage == "typing") {
				if ($action == "add") {
					if (isset($ObjRequest['tab']) && is_string($ObjRequest['tab'])) $messageTab = $ObjRequest['tab']; else $messageTab = null;
					if ($messageTab == null) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					$addTypingMessages = $_messages->typing(array("action" => "add", "id" => $messageTab));
					if (isset($addTypingMessages['return'], $addTypingMessages['data']) && $addTypingMessages['return'] == true) {
						die(print json_encode(array("return" => true, "data" => $addTypingMessages['data'])));
					}else if (isset($addTypingMessages['return'], $addTypingMessages['reason']) && $addTypingMessages['return'] == false) {
						die(print json_encode(array("return" => true, "reason" => $addTypingMessages['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($action == "remove") {
					if (isset($ObjRequest['tab']) && is_string($ObjRequest['tab'])) $messageTab = $ObjRequest['tab']; else $messageTab = null;
					if ($messageTab == null) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					$removeTypingMessages = $_messages->typing(array("action" => "remove", "id" => $messageTab));
					if (isset($removeTypingMessages['return'], $removeTypingMessages['data']) && $removeTypingMessages['return'] == true) {
						die(print json_encode(array("return" => true, "data" => $removeTypingMessages['data'])));
					}else if (isset($removeTypingMessages['return'], $removeTypingMessages['reason']) && $removeTypingMessages['return'] == false) {
						die(print json_encode(array("return" => true, "reason" => $removeTypingMessages['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else if ($action == "get") {
					if (isset($ObjRequest['tab']) && is_string($ObjRequest['tab'])) $messageTab = $ObjRequest['tab']; else $messageTab = null;
					if ($messageTab == null) {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					$getTypingMessages = $_messages->typing(array("action" => "get", "id" => $messageTab));
					if (isset($getTypingMessages['return'], $getTypingMessages['data']) && $getTypingMessages['return'] == true) {
						die(print json_encode(array("return" => true, "data" => $getTypingMessages['data'])));
					}else if (isset($getTypingMessages['return'], $getTypingMessages['reason']) && $getTypingMessages['return'] == false) {
						die(print json_encode(array("return" => true, "reason" => $getTypingMessages['reason'])));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "explorer" && $token == $g_client['token']['action']['explorer']) {
		if ($type == "photos") {
			if (isset($ObjRequest['local']) && is_string($ObjRequest['local'])) $local = $ObjRequest['local']; else $local = null;
			if ($local == "cache") {
				if ($action == "get") {
					if (isset($ObjRequest['class']) && is_string($ObjRequest['class'])) $class = $ObjRequest['class']; else $class = null;
					if ($class == "list") {
						$checkExistsRequest = "SELECT `name` FROM `photos_cache` WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `copy` = '0' ORDER BY `id` ASC";
						$checkExistsQuery = mysqli_query($_db->port('beta'), $checkExistsRequest);
						if ($checkExistsQuery) $checkExists = mysqli_num_rows($checkExistsQuery); else $checkExists = 0;
						if ($checkExists == 0) {
							die(print json_encode(array("return" => true, "data" => array("file" => null))));
						}else {
							$fileArr = array();
							$pushTimeCloseQuery = mysqli_query($_db->port('beta'), "UPDATE `photos_cache` SET `close` = '{$_tool->timeNow()}' + '900' WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `close` != '0'");
							while ($fileFetch = mysqli_fetch_assoc($checkExistsQuery)) {
								$getMediaCacheOptions = array("action" => "get", "label" => "name", "value" => $fileFetch['name']);
								$getMediaCache = $_media->cache("photos", $getMediaCacheOptions);
								if (isset($getMediaCache['return'], $getMediaCache['data']) && $getMediaCache['return'] == true) {
									$getData = $getMediaCache['data'][0];
									if (isset($getData['path'])) {
										unset($getData['path']);
									}
									if (isset($getData['copy'])) {
										unset($getData['copy']);
									}
									if (isset($getData['tmp'])) {
										$getData['link'] = $_tool->links('photos/cache/'.$getData['name']);
										unset($getData['tmp']);
									}
									if (isset($getData['size'])) {
										$getData['size'] = $_tool->convertSize($getData['size']);
									}
									$getData['type'] = "photos";
									$getData['local'] = "cache";
									$getData['verify'] = "false";
									$fileArr['file'][] = $getData;
								}else {
									continue;
								}
							}
							die(print json_encode(array("return" => true, "data" => $fileArr)));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($local == "sync") {
				die(print json_encode(array("return" => true, "data" => array("file" => null))));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "music") {
			if (isset($ObjRequest['local']) && is_string($ObjRequest['local'])) $local = $ObjRequest['local']; else $local = null;
			if ($local == "cache") {
				if ($action == "get") {
					if (isset($ObjRequest['class']) && is_string($ObjRequest['class'])) $class = $ObjRequest['class']; else $class = null;
					if ($class == "list") {
						$checkExistsRequest = "SELECT `name` FROM `music_cache` WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `copy` = '0' ORDER BY `id` ASC";
						$checkExistsQuery = mysqli_query($_db->port('beta'), $checkExistsRequest);
						if ($checkExistsQuery) $checkExists = mysqli_num_rows($checkExistsQuery); else $checkExists = 0;
						if ($checkExists == 0) {
							die(print json_encode(array("return" => true, "data" => array("file" => null))));
						}else {
							$fileArr = array();
							$pushTimeCloseQuery = mysqli_query($_db->port('beta'), "UPDATE `music_cache` SET `close` = '{$_tool->timeNow()}' + '900' WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `close` != '0'");
							while ($fileFetch = mysqli_fetch_assoc($checkExistsQuery)) {
								$getMediaCacheOptions = array("action" => "get", "label" => "name", "name" => $fileFetch['name']);
								$getMediaCache = $_media->cache("music", $getMediaCacheOptions);
								if (isset($getMediaCache['return'], $getMediaCache['data']) && $getMediaCache['return'] == true) {
									$getData = $getMediaCache['data'][0];
									if (isset($getData['path'])) {
										unset($getData['path']);
									}
									if (isset($getData['copy'])) {
										unset($getData['copy']);
									}
									if (isset($getData['tmp'])) {
										$getData['link'] = $_tool->links('music/cache/'.$getData['name']);
										unset($getData['tmp']);
									}
									if (isset($getData['size'])) {
										$getData['size'] = $_tool->convertSize($getData['size']);
									}
									if (isset($getData['duration']) && $getData['duration'] > 0) {
										$getData['duration'] = $_tool->convertTimetoDuration($getData['duration']);
									}else {
										$getData['duration'] = null;
									}
									$getData['type'] = "music";
									$getData['local'] = "cache";
									$getData['verify'] = "false";
									$fileArr['file'][] = $getData;
								}else {
									continue;
								}
							}
							die(print json_encode(array("return" => true, "data" => $fileArr)));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($local == "sync") {
				die(print json_encode(array("return" => true, "data" => array("file" => null))));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else if ($type == "videos") {
			if (isset($ObjRequest['local']) && is_string($ObjRequest['local'])) $local = $ObjRequest['local']; else $local = null;
			if ($local == "cache") {
				if ($action == "get") {
					if (isset($ObjRequest['class']) && is_string($ObjRequest['class'])) $class = $ObjRequest['class']; else $class = null;
					if ($class == "list") {
						$checkExistsRequest = "SELECT `name` FROM `videos_cache` WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `copy` = '0' ORDER BY `id` ASC";
						$checkExistsQuery = mysqli_query($_db->port('beta'), $checkExistsRequest);
						if ($checkExistsQuery) $checkExists = mysqli_num_rows($checkExistsQuery); else $checkExists = 0;
						if ($checkExists == 0) {
							die(print json_encode(array("return" => true, "data" => array("file" => null))));
						}else {
							$fileArr = array();
							$pushTimeCloseQuery = mysqli_query($_db->port('beta'), "UPDATE `videos_cache` SET `close` = '{$_tool->timeNow()}' + '900' WHERE `author.type` = '{$g_user['mode']['type']}' AND `author.id` = '{$g_user['mode']['id']}' AND `close` != '0'");
							while ($fileFetch = mysqli_fetch_assoc($checkExistsQuery)) {
								$getMediaCacheOptions = array("action" => "get", "label" => "name", "name" => $fileFetch['name']);
								$getMediaCache = $_media->cache("videos", $getMediaCacheOptions);
								if (isset($getMediaCache['return'], $getMediaCache['data']) && $getMediaCache['return'] == true) {
									$getData = $getMediaCache['data'][0];
									if (isset($getData['path'])) {
										unset($getData['path']);
									}
									if (isset($getData['copy'])) {
										unset($getData['copy']);
									}
									if (isset($getData['tmp'])) {
										$getData['link'] = $_tool->links('videos/cache/'.$getData['name']);
										unset($getData['tmp']);
									}
									if (isset($getData['thumbnail'])) {
										$getData['thumbnail'] = $_tool->links('videos/cache/thumbnail/'.$getData['thumbnail']);
									}
									if (isset($getData['size'])) {
										$getData['size'] = $_tool->convertSize($getData['size']);
									}
									if (isset($getData['duration']) && $getData['duration'] > 0) {
										$getData['duration'] = $_tool->convertTimetoDuration($getData['duration']);
									}else {
										$getData['duration'] = null;
									}
									$getData['type'] = "videos";
									$getData['local'] = "cache";
									$getData['verify'] = "false";
									$fileArr['file'][] = $getData;
								}else {
									continue;
								}
							}
							die(print json_encode(array("return" => true, "data" => $fileArr)));
						}
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else if ($local == "sync") {
				die(print json_encode(array("return" => true, "data" => array("file" => null))));
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($port == "ajaxify" && $token == $g_client['token']['action']['ajaxify']) {
		/*
		if (isset($ObjRequest['url']) && is_string($ObjRequest['url'])) $url = $ObjRequest['url']; else $url = null;
		if ($url != null) {
			require ("source/class/html_dom.php");
			if (preg_match("/((http|https|ftp|ftps)(:\/\/)(www\.)?(localhost\/giccos)($|[\S]+))/", $url) == true) {
				if ($_tool->siteDie($url)) {
					die(print json_encode(array("return" => false, "reason" => "")));
				}else {
					// print json_encode(array("return" => true, "direct" => true)); die();
				}
				$htmlPage = $_tool->curl($url, 5, array("cookie" => true, "method" => "POST", "form" => array("token" => "")));
				if (isset($htmlPage['return']) && $htmlPage['return'] == true) {
					$pageDom = new simple_html_dom(null, true, true, DEFAULT_TARGET_CHARSET, true, DEFAULT_BR_TEXT, DEFAULT_SPAN_TEXT);
					$pageDom->load($htmlPage['data'], true, true);
					$pageMain = array();
					$pageMain['head'] = $pageDom->find("head", 0)->outertext;
					$pageMain['body'] = $pageDom->find("body", 0)->outertext;
					// $pageMain['footer'] = $pageDom->find("footer", 0)->outertext;
					// $pageMain = $pageDom->find("#gMain", 0)->outertext;
					// $pageMain = preg_replace('#<script(.*?)>(.*?)</script>#is', '', $pageMain);
					$pageMainDom = new DOMDocument();
					libxml_use_internal_errors(true);
					$pageMainDom->loadHTML($pageDom);
					libxml_use_internal_errors(false);
					$scriptItems = $pageMainDom->getElementsByTagName('script');
					$scriptTags = array();
					foreach ($scriptItems as $scriptItem) {
						$scriptTags[] = array(
						    'src' => $scriptItem->getAttribute('src'),
						    'outerHTML' => $pageMainDom->saveHTML($scriptItem),
						    'innerHTML' => $pageMainDom->saveHTML($scriptItem->firstChild),
					  	);
					}
					$callbackTags = array();
					$cssTags = array();
					$data = array("path" => $url, "title" => $pageDom->find("title", 0)->plaintext, "html" => $pageMain, "callback" => $callbackTags, "script" => $scriptTags, "css" => $cssTags);
					die(print json_encode(array("return" => true, "direct" => false, "data" => $data)));
				}else {
					die(print json_encode(array("return" => false, "reason" => $htmlPage['reason'])));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
		*/
		die(print json_encode(array("return" => false, "reason" => "")));
	}else if ($port == "wall" && $token == $g_client['token']['action']['wall']) {
		if ($type == "friends") {
			if ($action == "get" || $action == "load") {
				if (isset($ObjRequest['wall_id']) && (is_string($ObjRequest['wall_id']) || is_numeric($ObjRequest['wall_id']))) $wall_id = $ObjRequest['wall_id']; else $wall_id = 0;
				if ($wall_id > 0 && $rows != null) {
					if (in_array($rows, ["all_friends", "mutual_friends", "live", "country"])) {
						if (isset($ObjRequest['friends_id']) && (is_string($ObjRequest['friends_id']) || is_numeric($ObjRequest['friends_id']))) $friendsId = $ObjRequest['friends_id']; else $friendsId = 0;
						if (isset($ObjRequest['order']) && is_string($ObjRequest['order'])) $getOrder = $ObjRequest['order']; else $getOrder = null;
						if (isset($ObjRequest['limit']) && (is_string($ObjRequest['limit']) || is_numeric($ObjRequest['limit']))) $getLimit = $ObjRequest['limit']; else $getLimit = null;
						if (in_array($rows, ["mutual_friends", "live", "country"]) && $g_user['mode']['type'] != "user") {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
						if ($getOrder == null) {
							die(print json_encode(array("return" => false, "reason" => "")));
						}
						if ($rows == "all_friends") {
							$getFriendsRequest = "SELECT `id`, `guy.id` FROM `friends` WHERE `user.id` = '{$wall_id}' AND `id` {$order} '{$friends_id}' ORDER BY `id` DESC";
						}else if ($rows == "mutual_friends") {
							$getFriendsRequest = "SELECT `id`, `guy.id` FROM `friends` WHERE `user.id` = '{$wall_id}' AND `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}') AND `id` {$order} '{$friends_id}' ORDER BY `id` DESC";
						}else if ($rows == "live") {
							if (!isset($g_user['live']) || $g_user['live'] == null || $g_user['live'] == "0") {
								print json_encode(array("return" => false, "reason" => "")); die();
							}
							$getFriendsRequest = "SELECT `id`, `guy.id` FROM `friends` WHERE `user.id` = '{$wall_id}' AND `guy.id` IN (SELECT `id` FROM `users` WHERE `live` = '{$g_user['live']}') AND `id` {$order} '{$friends_id}' ORDER BY `id` DESC";
						}else if ($rows == "country") {
							if (!isset($g_user['country']) || $g_user['country'] == null || $g_user['country'] == "0") {
								print json_encode(array("return" => false, "reason" => "")); die();
							}
							$getFriendsRequest = "SELECT `id`, `guy.id` FROM `friends` WHERE `user.id` = '{$wall_id}' AND `guy.id` IN (SELECT `id` FROM `users` WHERE `country` = '{$g_user['country']}') AND `id` {$order} '{$friends_id}' ORDER BY `id` DESC";
						}else {
							print json_encode(array("return" => false, "reason" => "")); die();
						}
						if ($getLimit != null && $getLimit > 0) {
							$getFriendsRequest .= " LIMIT ".$getLimit;
						}
						$getFriendsQuery = mysqli_query($_db->port('beta'), $getFriendsRequest);
						$count = mysqli_num_rows($getFriendsQuery);
						$data = array();
						while ($fetch = mysqli_fetch_assoc($getFriendsQuery)) {
							$thisUserGet = $_user->getInfo(array("id" => $fetch['guy.id'], "rows" => "`id`, `avatar.small`, `fullname`, `username`, `link`"));
							if (isset($thisUserGet['return']) && $thisUserGet['return'] == true) {
								$thisUserData = $thisUserGet['data'];
								if (isset($thisUserData['avatar.small']) && is_string($thisUserData['avatar.small'])) {
									$thisUserData['avatar'] = $thisUserData['avatar.small'];
									unset($thisUserData['avatar.small']);
								}else {
									$thisUserData['avatar'] = null;
								}
								if (isset($thisUserData['fullname']) && is_string($thisUserData['fullname'])) {
									$thisUserData['name'] = $thisUserData['fullname']; 
									unset($thisUserData['fullname']);
								}else {
									$thisUserData['name'] = null;
								}
								if (isset($thisUserData['username']) && is_string($thisUserData['username'])) {
									$thisUserData['tag'] = $thisUserData['username']; 
									unset($thisUserData['username']);
								}else {
									$thisUserData['tag'] = null;
								}
								if ($g_user['mode']['type'] != "user" || $g_user['mode']['id'] != $thisUserData['id']) {
									if ($g_user['mode']['type'] == "user") {
										$thisUserData['is_friend'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$g_user['mode']['id']}' AND `guy.id` = '{$thisUserData['id']}' LIMIT 1"));
										if ($thisUserData['is_friend'] == 0) {
											$thisUserDataNutualFriend = $_user->getFriendsMutual(array("userId" => $thisUserData['id'], "guyId" => $g_user['mode']['id']));
											if (isset($thisUserDataNutualFriend['return']) && $thisUserDataNutualFriend['return'] == true) {
												$thisUserData['mutual_friends'] = count($thisUserDataNutualFriend['data']);
											}else {
												$thisUserData['mutual_friends'] = 0;
											}
										}else {
											$thisUserData['mutual_friends'] = 0;
										}
									}else {
										$thisUserData['is_friend'] = $thisUserData['mutual_friend'] = 0;
									}
									if ($thisUserData['is_friend'] == 0) {
										$thisUserData['send_request'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends_request` WHERE `user.id` = '{$g_user['mode']['id']}' AND `guy.id` = '{$thisUserData['id']}' LIMIT 1"));
										$thisUserData['waiting_request'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends_request` WHERE `guy.id` = '{$g_user['mode']['id']}' AND `user.id` = '{$thisUserData['id']}' LIMIT 1"));
									}else {
										$thisUserData['send_request'] = $thisUserData['waiting_request'] = 0;
									}
									$thisUserData['is_you'] = 0;
								}else {
									$thisUserData['is_you'] = 1;
									$thisUserData['send_request'] = $thisUserData['waiting_request'] = $thisUserData['is_friend'] = $thisUserData['mutual_friend'] = 0;
								}
							}else {
								continue;
							}
							$thisUserData['friends_id'] = $fetch['id'];
							$data[] = $thisUserData;
						}
						die(print json_encode(array("return" => true, "count" => $count, "data" => $data)));
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else {
		die(header("HTTP/1.1 404 Not Found"));
	}
}else {
	die(header("HTTP/1.1 404 Not Found"));
}
?>