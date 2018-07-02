<?php
@define("6246d859de19710432b4faff46731ff2f1f57d940c040aa7bd165de6a3b769aa", true);
require_once ("source/config.php");
if (isset($g_client['token']['ajax'], $_SERVER['HTTP_TOKEN'], $_SERVER['HTTP_X_REQUESTED_WITH'], $_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_SERVER['HTTP_TOKEN'] == $g_client['token']['ajax'] && $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest" && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")) {
	$_giccos->logsAjax();
	if (isset($_POST['type']) && is_string($_POST['type'])) $type = $_POST['type']; else $type = null;
	if (isset($_POST['token']) && is_string($_POST['token'])) $token = $_POST['token']; else $token = null;
	if ($type == "reload" && $token == $g_client['token']['action']['user']) {
		$_media = new media;
		$photos_cache_clean = $_media->cache("photos", array("action" => "clean"));
		$music_cache_clean = $_media->cache("music", array("action" => "clean"));
		$videos_cache_clean = $_media->cache("videos", array("action" => "clean"));
		if (!$photos_cache_clean || !$music_cache_clean || !$videos_cache_clean) {
			die(print json_encode(array("return" => false, "reason" => "")));
		}else {
			foreach ($_COOKIE as $key => $value) {
				if (in_array($key, ["gPlayer_volume", "gPlayer_resizeT_o", "MesOpt_AutoScroll", "MesOpt_PressEnter"])) {
					setcookie($key, $value, 0, $_parameter->get('cookie.host.path'), $g_client['http']['secure'], false);
				}
			}
			die(print json_encode(array("return" => true)));
		}
	}else if($type == "autocomplete" && $token == $g_client['token']['action']['user']){
		if (isset($_POST['value']) && is_string($_POST['value'])) $value = $_POST['value']; else $value = null;
		if (isset($_POST['from']) && is_string($_POST['from'])) $from = $_POST['from']; else $from = null;
		if($value != null && $from != null){
			if (isset($_POST['path']) && is_string($_POST['path'])) $path = $_POST['path']; else $path = null;
			if ($path == null) {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
			$d_users = $d_groups = $d_pages = null;
			$value = $_tool->convertDatabaseString($_POST['value']);
			$array_words = $_tool->StringtoArray($value, false);
			$array_words_c = array_count_values($array_words);
			if ($path == "info") {
				if ($from == "users" || $from == "friends" || $from == "all") {
					$sql_regex[] = "`fullname` LIKE '%{$value}%'";
					$sql_regex[] = "`username` LIKE '%{$value}%'";
					foreach ($sql_regex as $key => $sql_regex_value) {
						if (isset($search_query_sql_regex) && $search_query_sql_regex != '') {
							$search_query_sql_regex .= " AND".$sql_regex_value;
						}else {
							$search_query_sql_regex = $sql_regex_value;
						}
					}
					if ($from == "users") {
						$search_query_sql = "SELECT `id` FROM `users` WHERE `private.search` >= '{$_parameter->get('user_private.search_agree')}' AND ({$search_query_sql_regex})";
					}else if ($from == "friends") {
						$search_query_sql = "SELECT `id` FROM `users` WHERE `private.tag` >= '{$_parameter->get('user_private.tag_agree')}' AND `id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}') AND ({$search_query_sql_regex})";
					}else {
						die(print json_encode(array("return" => false, "reason" => "")));
					}
					$search_query = mysqli_query($_db->port('beta'), $search_query_sql);
					if (mysqli_num_rows($search_query) > 0) {
						while ($search_fetch = mysqli_fetch_assoc($search_query)) {
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
				$returnData = array(
					"return" => true,
					"data" => array(
						"users" => $d_users, 
						"groups" => $d_groups, 
						"pages" => $d_pages
						)
					);
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
							"text" => $_language->text($search_fetch['code'], 'ucfirst', false),
							"emoticon" => ""
						);
					}
				}
				$returnData = array(
					"return" => true,
					"data" => array(
						"feels" => $d_feels
						)
					);
			}else if ($path == "media") {
				$d_scrapbook = array();
				$d_album = array();
				$d_playlist = array();
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
				$returnData = array(
					"return" => true, 
					"data" => array(
						"scrapbook" => $d_scrapbook,
						"album" => $d_album,
						"playlist" => $d_playlist
						)
					);
			}
		}
		print json_encode($returnData); die();
	}else if ($type == "friends" && $token == $g_client['token']['action']['user']) {
		if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
		if (isset($_POST['id']) && (is_string($_POST['id']) || is_numeric($_POST['id']))) $id = $_POST['id']; else $id = 0;
		if ($action == "add" && $id > 0) {
			$action = $_user->friends('add', array("id" => $id));
			if ($action['return'] == true) {
				print json_encode(array("return" => true));
			}else {
				print json_encode(array("return" => false, "reason" => $action['reason']));
			}
			die();
		}else if ($action == "cancel" && $id > 0) {
			$action = $_user->friends('cancel', array("id" => $id));
			if ($action['return'] == true) {
				print json_encode(array("return" => true));
			}else {
				print json_encode(array("return" => false, "reason" => $action['reason']));
			}
			die();
		}else if ($action == "accept" && $id > 0) {
			$action = $_user->friends('accept', array("id" => $id));
			if ($action['return'] == true) {
				print json_encode(array("return" => true));
			}else {
				print json_encode(array("return" => false, "reason" => $action['reason']));
			}
			die();
		}else if ($action == "refuse" && $id > 0) {
			$action = $_user->friends('refuse', array("id" => $id));
			if ($action['return'] == true) {
				print json_encode(array("return" => true));
			}else {
				print json_encode(array("return" => false, "reason" => $action['reason']));
			}
			die();
		}else if ($action == "remove" && $id > 0) {
			$action = $_user->friends('remove', array("id" => $id));
			if ($action['return'] == true) {
				print json_encode(array("return" => true));
			}else {
				print json_encode(array("return" => false, "reason" => $action['reason']));
			}
			die();
		}else if ($action == "follow" && $id > 0) {
			
		}else if ($action == "block" && $id > 0) {
			
		}else if ($action == "unblock" && $id > 0) {
			
		}else {
			print json_encode(array("return" => false, "reason" => ""));
		}
	}else if ($type == "info" && $token == $g_client['token']['action']['user']) {
		if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
		if ($action == "update") {
			if (isset($_POST['rows'])) $rows = $_POST['rows']; else $rows = null;
			if ($rows != null && is_array($rows) && count($rows) > 0) {
				foreach ($rows as $isRows) {
					$isName = $isRows['rows'];
					$isValue = $isRows['value'];
					if ($isName == "live" || $isName == "country") {
						if (is_array($isValue)) {
							$places_code = $isValue['code'];
							$places_get = $_maps->places(true, array("type" => "get", "rows" => "`id`", "code" => $places_code));
							if ($places_get['return'] == true) {
								$isValue = $places_get['data']['id'];
							}else {
								$places_add = $_maps->places(true, array("type" => "add", "code" => $places_code));
								if ($places_add['return'] == true) {
									$isValue = $places_add['data']['id'];
								}else {
									$isValue = $isValue['address'];
								}
							}
						}else {
							$isValue = $isValue;
						}
					}else if (preg_match("/^(private)+/", $isName)) {
						$isName = preg_replace("/(\-\>)/", ".", $isName);
					}
					$returnAction = $_user->info("update", array("rows" => $isName, "value" => $isValue));
					if ($returnAction['return'] == true) {
						//.
					}
				}
				$_user->profile("id", $g_user['id'], true);
				print json_encode(array("return" => true, "data" => "")); die();
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
		}
	}
}else {
	// Not ajax.
}
?>