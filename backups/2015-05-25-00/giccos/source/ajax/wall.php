<?php
@define("6246d859de19710432b4faff46731ff2f1f57d940c040aa7bd165de6a3b769aa", true);
die;
require_once ("source/config.php");
if (isset($g_client['token']['ajax'], $_SERVER['HTTP_TOKEN'], $_SERVER['HTTP_X_REQUESTED_WITH'], $_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_SERVER['HTTP_TOKEN'] == $g_client['token']['ajax'] && $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest" && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")) {
	$_giccos->logsAjax();
	if (isset($_POST['port']) && is_string($_POST['port'])) $port = $_POST['port']; else $port = null;
	if (isset($_POST['token']) && is_string($_POST['token'])) $token = $_POST['token']; else $token = null;
	if ($port == "friends" && $token == $g_client['token']['wall']['friends']) {
		if (isset($_POST['wall_id']) && (is_string($_POST['wall_id']) || is_numeric($_POST['wall_id']))) $wall_id = $_POST['wall_id']; else $wall_id = 0;
		if (isset($_POST['type']) && is_string($_POST['type'])) $type = $_POST['type']; else $type = null;
		if ($wall_id > 0 && $type != null) {
			if (in_array($type, ["all_friends", "mutual_friends", "live", "country"])) {
				if (isset($_POST['friends_id']) && (is_string($_POST['friends_id']) || is_numeric($_POST['friends_id']))) $friends_id = $_POST['friends_id']; else $friends_id = 0;
				if (isset($_POST['order']) && is_string($_POST['order'])) $order = $_POST['order']; else $order = null;
				if (isset($_POST['limit']) && (is_string($_POST['limit']) || is_numeric($_POST['limit']))) $limit = $_POST['limit']; else $limit = null;
				if (in_array($type, ["mutual_friends", "live", "country"]) && $g_user['mode']['type'] != "user") {
					print json_encode(array("return" => false, "reason" => "")); die();
				}
				if ($order != null) {
					if ($type == "all_friends") {
						$sql = "SELECT `id`, `guy.id` FROM `friends` WHERE `user.id` = '{$wall_id}' AND `id` {$order} '{$friends_id}' ORDER BY `id` DESC";
					}else if ($type == "mutual_friends") {
						$sql = "SELECT `id`, `guy.id` FROM `friends` WHERE `user.id` = '{$wall_id}' AND `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}') AND `id` {$order} '{$friends_id}' ORDER BY `id` DESC";
					}else if ($type == "live") {
						if (!isset($g_user['live']) || $g_user['live'] == null || $g_user['live'] == "0") {
							print json_encode(array("return" => false, "reason" => "")); die();
						}
						$sql = "SELECT `id`, `guy.id` FROM `friends` WHERE `user.id` = '{$wall_id}' AND `guy.id` IN (SELECT `id` FROM `users` WHERE `live` = '{$g_user['live']}') AND `id` {$order} '{$friends_id}' ORDER BY `id` DESC";
					}else if ($type == "country") {
						if (!isset($g_user['country']) || $g_user['country'] == null || $g_user['country'] == "0") {
							print json_encode(array("return" => false, "reason" => "")); die();
						}
						$sql = "SELECT `id`, `guy.id` FROM `friends` WHERE `user.id` = '{$wall_id}' AND `guy.id` IN (SELECT `id` FROM `users` WHERE `country` = '{$g_user['country']}') AND `id` {$order} '{$friends_id}' ORDER BY `id` DESC";
					}else {
						print json_encode(array("return" => false, "reason" => "")); die();
					}
					if ($limit != null && $limit > 0) {
						$sql .= " LIMIT ".$limit;
					}
					$db = $_db->port('beta');
					$query = mysqli_query($db, $sql);
					$num = mysqli_num_rows($query);
					$data = null;
					while ($fetch = mysqli_fetch_assoc($query)) {
						if ($data == null) {
							$data = array();
						}
						$thisUserGet = $_user->getInfo(array("id" => $fetch['guy.id'], "rows" => "`id`, `avatar.small`, `fullname`, `username`, `link`"));
						if (isset($thisUserGet['return']) && $thisUserGet['return'] == true) {
							$thisUserData = $thisUserGet['data'];
							$thisUserData['avatar'] = $thisUserData['avatar.small'];
							unset($thisUserData['avatar.small']);
							$thisUserData['name'] = $thisUserData['fullname'];
							unset($thisUserData['fullname']);
							$thisUserData['tag'] = $thisUserData['username'];
							unset($thisUserData['username']);
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
						}
						$thisUserData['friends_id'] = $fetch['id'];
						$data[] = $thisUserData;
					}
					print json_encode(array("return" => true, "num" => $num, "data" => $data)); die();
				}else {
					print json_encode(array("return" => false, "reason" => "")); die();
				}
			}else {
				print json_encode(array("return" => false, "reason" => "")); die();
			}
		}else {
			print json_encode(array("return" => false, "reason" => "")); die();
		}
	}else {
		//.
	}
}
?>