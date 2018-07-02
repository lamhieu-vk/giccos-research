<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class wall {
	function __construct () {
		$GLOBALS["_wall"] = $this;
		$this->class = $GLOBALS;
	}
	function callUserInfo () {
		if (isset($_SESSION["user"])) {
			$this->user = $_SESSION["user"];
		}else {
			$this->user = array(
				"login" => false, 
				"id" => 0, 
				"mode" => array(
					"type" => "guy", 
					"id" => $this->class['_client']->client(true)
				)
			);
		}
	}
	function available ($object) {
		if (isset($object['key']) && is_string($object['key'])) $key = $object['key']; else $key = null;
		if (isset($object['value']) && is_string($object['value'])) $value = $object['value']; else $value = null;
		if ($value != null) {
			if ($key == null) {
				$requestAvailable = "SELECT `id` FROM `users` WHERE `id` = '{$value}' OR `username` = '{$value}' LIMIT 1";
			}else {
				if (in_array($key, ['id', 'username', 'email'])) {
					$requestAvailable = "SELECT `id` FROM `users` WHERE `{$key}` = '{$value}' LIMIT 1";
				}else {
					return array("return" => false, "reason" => "");
				}
			}
			$queryAvailable = mysqli_query($this->class['_db']->port('beta'), $requestAvailable);
			if ($queryAvailable == true && mysqli_num_rows($queryAvailable) == 1) {
				return array("return" => true);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function guy ($object) {
		if (isset($object['wall.id']) && (is_string($object['wall.id']) || is_numeric($object['wall.id']))) $wallId = $object['wall.id']; else $wallId = null;
		if (isset($object['guy.type']) && is_string($object['guy.type'])) $guyType = $object['guy.type']; else $guyType = null;
		if (isset($object['guy.id']) && (is_string($object['guy.id']) || is_numeric($object['guy.id']))) $guyId = $object['guy.id']; else $guyId = null;
		if ($wallId != null && $guyType != null && $guyId != null) {
			$db = $this->db = $this->class['_db']->port('beta');
			if ($guyId == $wallId && $guyType == "user") {
				return array("return" => true, "guy" => 1);
			}else {
				$isBlockedQuery = mysqli_query($db, "SELECT `id` FROM `users_block` WHERE (`user.id` = '{$wallId}' AND `guy.type` = '{guyType}' AND `guy.id` = '{$guyId}') OR (`user.id` = '{$guyId}' AND 'user' = '{$guyType}' AND `guy.type` = 'user' AND `guy.id` = '{$wallId}') LIMIT 1");
				if (!$isBlockedQuery) {
					return array("return" => false, "reason" => "");
				}
				$isBlocked = mysqli_num_rows($isBlockedQuery);
				if ($isBlocked > 0) {
					return array("return" => true, "guy" => 5);
				}else {
					if ($guyType == "user") {
						$isFriendQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$wallId}' AND `guy.id` = '{$guyId}' LIMIT 1");
						if (!$isFriendQuery) {
							return array("return" => false, "reason" => "");
						}
						$isFriend = mysqli_num_rows($isFriendQuery);
						if ($isFriend > 0) {
							return array("return" => true, "guy" => 2);
						}
						$isMutualFriendsQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$wallId}' AND `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$guyId}') LIMIT 1");
						if (!$isMutualFriendsQuery) {
							return array("return" => false, "reason" => "");
						}
						$isMutualFriends = mysqli_num_rows($isMutualFriendsQuery);
						if ($isMutualFriends > 0) {
							return array("return" => true, "guy" => 3);
						}
						return array("return" => true, "guy" => 4);
					}else {
						return array("return" => true, "guy" => 4);
					}
				}
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function boxInfo ($object) {
		if (isset($object['key']) && $object['key']) $key = $object['key']; else $key = null;
		if (isset($object['value']) && $object['value']) $value = $object['value']; else $value = null;
		if ($value != null) {
			if ($key != null) {
				$available = $this->available(array("key" => $key, "value" => $value));
			}else {
				$available = $this->available(array("value" => $value));
			}
			if ($available['return'] == true) {
				//.
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function friends ($object) {
		if (isset($object['author']['type']) && is_string($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author']['id']) && is_numeric($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if (isset($object['user']) && is_array($object['user'])) $userInfo = $object['user']; else $userInfo = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user) && $this->user['login'] == true && $this->user['mode']['type'] != null && $this->user['mode']['id'] > 0) {
				$authorType = $this->user['mode']['type'];
				$authorId = $this->user['mode']['id'];
				$userInfo = $this->user;
			}else {
				return array("return" => false, "reason" => "");
			}
		}
		if (!isset($authorType) || !isset($authorId)) {
			return array("return" => false, "reason" => "");
		}else {
			$_tool = $this->class['_tool'];
			$_parameter = $this->class['_parameter'];
			$_logs = $this->class['_logs'];
			$db = $this->class['_db']->port('beta');
		}
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "get") {
			if (isset($object['wall_id']) && is_string($object['wall_id'])) $wallId = $object['wall_id']; else $wallId = null;
			if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = null;
			if (in_array($rows, ["all_friends", "mutual_friends", "live", "country"])) {
				if (isset($object['friends_id']) && is_string($object['friends_id'])) $friendsId = $object['friends_id']; else $friendsId = 0;
				if (isset($object['order']) && is_string($object['order'])) $order = $object['order']; else $order = null;
				if (isset($object['limit']) && (is_string($object['limit']) || is_numeric($object['limit']))) $limit = $object['limit']; else $limit = null;
				if ($rows == "all_friends") {
					$getFriendsRequest = "SELECT `id`, `guy.id` FROM `friends` WHERE `user.id` = '{$wallId}' AND `id` {$order} '{$friendsId}' ORDER BY `id` DESC {$limit}";
				}else if ($rows == "mutual_friends") {
					$getFriendsRequest = "SELECT `id`, `guy.id` FROM `friends` WHERE `user.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$userInfo['id']}') AND `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$wallId}' AND `guy.id` != '{$userInfo['id']}') AND `id` {$order} '{$friendsId}' ORDER BY `id` DESC {$limit}";
				}else if ($rows == "live") {
					if (!isset($userInfo['live']) || $userInfo['live'] == null) {
						return array("return" => false, "reason" => "2");
					}
					$getFriendsRequest = "SELECT `id`, `guy.id` FROM `friends` WHERE `user.id` = '{$wallId}' AND `guy.id` IN (SELECT `id` FROM `users` WHERE `live` = '{$userInfo['live']}') AND `id` {$order} '{$friendsId}' ORDER BY `id` DESC {$limit}";
				}else if ($rows == "country") {
					if (!isset($userInfo['country']) || $userInfo['country'] == null) {
						return array("return" => false, "reason" => "3");
					}
					$getFriendsRequest = "SELECT `id`, `guy.id` FROM `friends` WHERE `user.id` = '{$wallId}' AND `guy.id` IN (SELECT `id` FROM `users` WHERE `country` = '{$userInfo['country']}') AND `id` {$order} '{$friendsId}' ORDER BY `id` DESC {$limit}";
				}else {
					return array("return" => false, "reason" => "4");
				}
				if (isset($getFriendsRequest) && is_string($getFriendsRequest)) {
					$getFriendsQuery = mysqli_query($db, $getFriendsRequest);
					if (!$getFriendsQuery) {
						return array("return" => false, "reason" => "5");
					}
					$friendsArr = array();
					while ($getFriendsFetch = mysqli_fetch_assoc($getFriendsQuery)) {
						$friendsArr[] = array(
							"id" => $getFriendsFetch['id'], 
							"user.id" => $getFriendsFetch['guy.id']
						);
					}
					$friendsCount = count($friendsArr);
					return array("return" => true, "count" => $friendsCount, "data" => $friendsArr);
				}else {
					return array("return" => false, "reason" => "6");
				}
			}else {
				return array("return" => false, "reason" => "7");
			}
		}else {
			return array("return" => false, "reason" => "8");
		}
	}
}
?>