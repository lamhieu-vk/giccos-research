<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class feed {
	function __construct () {
		$GLOBALS["_feed"] = $this;
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
	function status_quickinfo ($object) {
		$_tool = $this->class['_tool'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['label']) && (is_numeric($object['label']) || is_string($object['label']))) $statusLabel = $object['label']; else $statusLabel = null;
		if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $statusValue = $object['value']; else $statusValue = null;
		if ($statusLabel == null || $statusValue == null) {
			return array("return" => false, "reason" => "");
		}
		$getInfoRequest = "SELECT * FROM `status` WHERE `{$statusLabel}` = '{$statusValue}';";
		$getInfoQuery = mysqli_query($db, $getInfoRequest);
		if (!$getInfoQuery) {
			return array("return" => false, "reason" => "");
		}
		$countNum = mysqli_num_rows($getInfoQuery);
		$infoArr = array();
		while ($infoFetch = mysqli_fetch_assoc($query)) {
			$infoArr[] = array(
				"id" => $infoFetch['id'], 
				"token" => $infoFetch['token'], 
				"time" => $infoFetch['time'], 
				"edit" => $infoFetch['edit'], 
				"user.id" => $infoFetch['user.id'], 
				"author" => array(
					"type" => $infoFetch['author.type'], 
					"id" => $infoFetch['author.id']
				)
			);
		}
		return array("return" => true, "count" => $countNum, "data" => $infoArr);
	}
	function status_guy ($object) {
		if (isset($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
		if (isset($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
		if (isset($object['author'], $object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author'], $object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}else if ($authorType == null || $authorId == null) {
			return array("return" => false, "reason" => "");
		}else {
			$db = $this->class['_db']->port('beta');
		}
		if ($guyType == "guy") {
			return array("return" => true, "guy" => 4);
		}
		if ($authorType == $guyType && $authorId == $guyId) {
			return array("return" => true, "guy" => 1);
		}else {
			if ($authorType == "user") {
				$isBlockedQuery = mysqli_query($db, "SELECT `id` FROM `users_block` WHERE (`user.id` = '{$authorId}' AND `guy.type` = '{guyType}' AND `guy.id` = '{$guyId}') OR (`user.id` = '{$guyId}' AND 'user' = '{$guyType}' AND `guy.type` = 'user' AND `guy.id` = '{$authorId}') LIMIT 1");
				if ($isBlockedQuery) $isBlocked = mysqli_num_rows($isBlockedQuery); else $isBlocked = 0;
				if ($isBlocked > 0) {
					return array("return" => true, "guy" => 5);
				}
				if ($guyType == "user") {
					$isFriendQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$authorId}' AND `guy.id` = '{$guyId}' LIMIT 1");
					if ($isFriendQuery) $isFriend = mysqli_num_rows($isFriendQuery); else $isFriend = 0;
					if ($isFriend > 0) {
						return array("return" => true, "guy" => 2);
					}
					$isMutualFriendsQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$authorId}' AND `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$guyId}') LIMIT 1");
					$isMutualFriends = mysqli_num_rows($isMutualFriendsQuery);
					if ($isMutualFriends > 0) {
						return array("return" => true, "guy" => 3);
					}
					return array("return" => true, "guy" => 4);
				}else if ($guyType == "groups") {
					return array("return" => true, "guy" => 4);
				}else if ($guyType == "pages") {
					return array("return" => true, "guy" => 4);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($authorType == "groups") {
				return array("return" => true, "guy" => 4);
			}else if ($authorType == "pages") {
				return array("return" => true, "guy" => 4);
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function status_block ($object) {
		$_tool = $this->class['_tool'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['id']) && (is_numeric($object['id']) || is_string($object['id']))) $statusId = intval($object['id']); else $statusId = null;
		if (isset($object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if (isset($object['user'], $object['user']['id']) && is_numeric($object['user']['id'])) $userId = intval($object['user']['id']); else $userId = null;
		if ($statusId == null) {
			return array("return" => false, "reason" => "");
		}
		if ($userId == null) {
			return array("return" => false, "reason" => "");
		}
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}
		$countCheckRequest = "SELECT `id` FROM `status` WHERE `id` = '".$statusId."' AND `user.id` != '".$userId."' AND (`author.type` != '".$guyType."' OR `author.id` != '".$guyId."');";
		$countCheckQuery = mysqli_query($db, $countCheckRequest);
		if (!$countCheckQuery) {
			return array("return" => false, "reason" => "");
		}else {
			if (mysqli_num_rows($countCheckQuery) == 0) {
				return array("return" => false, "reason" => "");
			}
			$insertQuery = mysqli_query($db, "INSERT INTO `status_block` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES (null, '".time()."', '".$statusId."', '".$guyType."', '".$guyId."');");
			if (!$insertQuery) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => true);
			}
		}
	}
	function status_list ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_user = $this->class['_user'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "1");
		}
		if (isset($object['type']) && is_string($object['type'])) $type = $object['type']; else $type = null;
		if (isset($object['method']) && is_string($object['method'])) $method = $object['method']; else $method = null;
		if (isset($object['sort']) && is_string($object['sort']) && in_array($object['sort'], ['<', '<=', '=', '>=', '>'])) $sort = $object['sort']; else $sort = null;
		if (isset($object['id']) && is_numeric($object['id'])) $id = $object['id']; else $id = null;
		if (isset($object['order']) && is_string($object['order']) && in_array($object['order'], ['new', 'old'])) $order = $object['order']; else $order = null;
		if (isset($object['limit']) && is_numeric($object['limit'])) $limit = $object['limit']; else $limit = null;
		if (isset($object['except']) && is_array($object['except']) && count($object['except']) > 0) $except = $object['except']; else $except = null;
		if ($type == null || $method == null || $sort == null || $order == null) {
			return array("return" => false, "reason" => "2");
		}
		//.
		if ($guyType == "user") {
			$listQuery['hide'] = "AND ((`status`.`author.type`, `status`.`author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '".$guyId."'))";
			$listQuery['private'] = "AND ((`status`.`author.type` = 'user' AND `status`.`author.id` = '".$guyId."') OR (`status`.`private.view` = '1' AND `status`.`id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = 'user' AND `guy.id` = '".$guyId."')) OR (`status`.`private.view` = '2' AND ((`status`.`author.type` = 'user' AND `status`.`author.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '".$guyId."')) OR `status`.`id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = 'user' AND (`guy.id` = '".$guyId."' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '".$guyId."'))))) OR (`status`.`private.view` = '3' AND ((`status`.`author.type` = 'user' AND `status`.`author.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '".$guyId."' OR `user.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '".$guyId."'))) OR `status`.`id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = 'user' AND (`guy.id` = '".$guyId."' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '".$guyId."' OR `user.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '".$guyId."')))))) OR (`status`.`private.view` = '4'))";
		}else if ($guyType == "page") {
			$listQuery['hide'] = "AND ((`status`.`author.type`, `status`.`author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `papes_block` WHERE `user.id` = '".$guyId."'))";
			$listQuery['private'] = "AND ((`status`.`author.type` = '".$guyType."' AND `status`.`author.id` = '".$guyId."') OR (`status`.`id` IN (SELECT `status.id` FROM `status_usertag` WHERE `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."')) OR (`status`.`private.view` = '4'))";
		}
		$listQuery['block'] = "AND (`status`.`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."'))";
		if (isset($id) && is_numeric($id)) {
			$listQuery['id'] = $id;
		}else {
			$listQuery['id'] = 0;
		}
		if (isset($sort) && is_string($sort)) {
			$listQuery['sort'] = $sort;
		}else {
			$listQuery['sort'] = null;
		}
		if (isset($except) && is_array($except) && count($except) > 0) {
			foreach ($except as $exceptThis) {
				$except[$key] = intval($_tool->convertDatabaseString($exceptThis));
			}
			$listQuery['except'] = "AND `status`.`id` NOT IN ('" . implode($except, "', '") . "')";
		}else {
			$listQuery['except'] = null;
		}
		if (isset($order) && is_string($order)) {
			if ($order == "new") {
				$listQuery['order'] = "DESC";
			}else {
				$listQuery['order'] = "ASC";
			}
		}else {
			$listQuery['order'] = null;
		}
		if (isset($limit) && is_numeric($limit)) {
			$listQuery['limit'] = "LIMIT ".$limit;
		}else {
			$listQuery['limit'] = null;
		}
		//.
		if ($type == "general") {
			if ($guyType == "user") {
				$listQuery['follow'] = "((`status`.`author.type`, `status`.`author.id`) IN (SELECT `guy.type`, `guy.id` FROM `users_follow` WHERE `user.id` = '".$guyId."'))";
			}else if ($guyType == "page") {
				$listQuery['follow'] = "((`status`.`author.type`, `status`.`author.id`) IN (SELECT `guy.type`, `guy.id` FROM `pages_follow` WHERE `page.id` = '".$guyId."'))";
			}
			if ($method == "auto") {
				if ($guyType == "user") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND (`logs_actions`.`time` + '".$_parameter->get('feeds_action_timeout')."' < '".time()."') AND ((`logs_actions`.`guy.type`, `logs_actions`.`guy.id`) IN (SELECT `guy.type`, `guy.id` FROM `users_follow` WHERE `user.id` = '".$guyId."'))) OR ".$listQuery['follow'].")";
				}else if ($guyType == "page") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND (`logs_actions`.`time` + '".$_parameter->get('feeds_action_timeout')."' < '".time()."') AND ((`logs_actions`.`guy.type`, `logs_actions`.`guy.id`) IN (SELECT `guy.type`, `guy.id` FROM `users_follow` WHERE `user.id` = '".$guyId."'))) OR ".$listQuery['follow'].")";
				}
				$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` LEFT JOIN `logs_actions` ON (`logs_actions`.`things.type` = 'status' AND `logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`type` IN ('favorite', 'follow', 'share', 'comment')) OR (`logs_actions`.`obj.type` = 'status' AND `logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`type` IN ('add')) WHERE `status`.`id` IN (".$listQuery['code'].") ORDER BY `logs_actions`.`time` ".$listQuery['order']." ".$listQuery['limit'];
			}else if ($method == "new") {
				if ($guyType == "user") {
					$listQuery['code'] = "SELECT `status`.`id` FROM `status` WHERE `status`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ".$listQuery['follow']." ORDER BY `status`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}else if ($guyType == "page") {
					$listQuery['code'] = "SELECT `status`.`id` FROM `status` WHERE `status`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ".$listQuery['follow']." ORDER BY `status`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}
			}else if ($method == "action") {
				if ($guyType == "user") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND ((`logs_actions`.`guy.type`, `logs_actions`.`guy.id`) IN (SELECT `guy.type`, `guy.id` FROM `users_follow` WHERE `user.id` = '".$guyId."')) ORDER BY `logs_actions`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}else if ($guyType == "page") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND ((`logs_actions`.`guy.type`, `logs_actions`.`guy.id`) IN (SELECT `guy.type`, `guy.id` FROM `pages_follow` WHERE `page.id` = '".$guyId."')) ORDER BY `logs_actions`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}
			}
		}else if ($type == "time") {
			if (isset($object['time'], $object['time'][0]) && is_numeric($object['time'][0])) $timeValueOne = $object['time'][0]; else $timeValueOne = null;
			if (isset($object['time'], $object['time'][1]) && is_numeric($object['time'][1])) $timeValueTwo = $object['time'][1]; else $timeValueTwo = null;
			if ($timeValueOne == null) {
				return array("return" => false, "reason" => "");
			}
			if ($timeValueOne != null && $timeValueTwo != null) {
				$listQuery['time'] = "(`status`.`time` BETWEEN '".$timeValueOne."' AND '".$timeValueTwo."')";
			}else {
				$listQuery['time'] = "(`status`.`time` >= '".$timeValueOne."')";
			}
			if ($method == "auto") {
				if ($guyType == "user") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND (`logs_actions`.`time` + '".$_parameter->get('feeds_action_timeout')."' < '".time()."') AND ".$listQuery['time'].") OR ".$listQuery['time'].")";
				}else if ($guyType == "page") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND (`logs_actions`.`time` + '".$_parameter->get('feeds_action_timeout')."' < '".time()."') AND ".$listQuery['time'].") OR ".$listQuery['time'].")";
				}
				$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` LEFT JOIN `logs_actions` ON (`logs_actions`.`things.type` = 'status' AND `logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`type` IN ('favorite', 'follow', 'share', 'comment')) OR (`logs_actions`.`obj.type` = 'status' AND `logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`type` IN ('add')) WHERE `status`.`id` IN (".$listQuery['code'].") ORDER BY `logs_actions`.`time` ".$listQuery['order']." ".$listQuery['limit'];
			}else if ($method == "new") {
				if ($guyType == "user") {
					$listQuery['code'] = "SELECT `status`.`id` FROM `status` WHERE `status`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ".$listQuery['time']." ORDER BY `status`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}else if ($guyType == "page") {
					$listQuery['code'] = "SELECT `status`.`id` FROM `status` WHERE `status`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ".$listQuery['time']." ORDER BY `status`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}
			}else if ($method == "action") {
				if ($guyType == "user") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND ".$listQuery['time']." ORDER BY `logs_actions`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}else if ($guyType == "page") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND ".$listQuery['time']." ORDER BY `logs_actions`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}
			}
		}else if (in_array($type, ["hashtag", "tags"])) {
			if (isset($object['require']) && is_array($object['require']) && count($object['require']) > 0) $requireArr = $object['require']; else $requireArr = null;
			if ($requireArr == null) {
				return array("return" => false, "reason" => "");
			}
			$listQuery['tag'] = null;
			foreach ($requireArr as $keywordThis => $requireThis) {
				$requireTagThis = null;
				if (isset($requireThis) && is_array($requireThis) && count($requireThis) > 0) {
					foreach ($requireThis as $requireSubThis) {
						if (isset($requireSubThis['type'], $requireSubThis['label'], $requireSubThis['value']) && is_string($requireSubThis['type'])) {
							if ($requireSubThis['type'] == "user") {
								$getUserId = $_user->profile(array("action" => "get", "rows" => ['id'], "label" => $requireSubThis['label'], "value" => $requireSubThis['value'], "limit" => "LIMIT 1"));
								if (isset($getUserId['return'], $getUserId['data'], $getUserId['data'][0], $getUserId['data'][0]['id']) && $getUserId['return'] == true) {
									if (!isset($requireTagThis) || !is_string($requireTagThis)) {
										$requireTagThis = "(`status`.`author.type` = 'user' AND `status`.`author.id` = '".$getUserId['data'][0]['id']."')";
									}else {
										$requireTagThis .= "OR (`status`.`author.type` = 'user' AND `status`.`author.id` = '".$getUserId['data'][0]['id']."')";
									}
								}
							}
						}
					}
					if (isset($requireTagThis) && is_string($requireTagThis)) {
						$requireTagThis = "AND (".$requireTagThis.")";
					}
				}
				if (!isset($listQuery['tag']) || !is_string($listQuery['tag'])) {
					$listQuery['tag'] = "(`status`.`id` IN (SELECT `status.id` FROM `status_hashtag` WHERE `hashtag` = '".$_tool->convertDatabaseString($keywordThis)."') ".$requireTagThis.")";
				}else {
					$listQuery['tag'] .= " OR (`status`.`id` IN (SELECT `status.id` FROM `status_hashtag` WHERE `hashtag` = '".$_tool->convertDatabaseString($keywordThis)."') ".$requireTagThis.")";
				}
			}
			if (isset($listQuery['tag']) && is_string($listQuery['tag'])) {
				$listQuery['tag'] = "(".$listQuery['tag'].")";
			}
			if ($method == "auto") {
				if ($guyType == "user") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND (`logs_actions`.`time` + '".$_parameter->get('feeds_action_timeout')."' < '".time()."') AND ".$listQuery['tag'].") OR ".$listQuery['tag'].")";
				}else if ($guyType == "page") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND (`logs_actions`.`time` + '".$_parameter->get('feeds_action_timeout')."' < '".time()."') AND ".$listQuery['tag'].") OR ".$listQuery['tag'].")";
				}
				$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` LEFT JOIN `logs_actions` ON (`logs_actions`.`things.type` = 'status' AND `logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`type` IN ('favorite', 'follow', 'share', 'comment')) OR (`logs_actions`.`obj.type` = 'status' AND `logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`type` IN ('add')) WHERE `status`.`id` IN (".$listQuery['code'].") ORDER BY `logs_actions`.`time` ".$listQuery['order']." ".$listQuery['limit'];
			}else if ($method == "new") {
				if ($guyType == "user") {
					$listQuery['code'] = "SELECT `status`.`id` FROM `status` WHERE `status`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ".$listQuery['tag']." ORDER BY `status`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}else if ($guyType == "page") {
					$listQuery['code'] = "SELECT `status`.`id` FROM `status` WHERE `status`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ".$listQuery['tag']." ORDER BY `status`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}
			}else if ($method == "action") {
				if ($guyType == "user") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND ".$listQuery['tag']." ORDER BY `logs_actions`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}else if ($guyType == "page") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND ".$listQuery['tag']." ORDER BY `logs_actions`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}
			}
		}else if ((in_array($type, ["family", "friends"]) && $guyType == "user") || (in_array($type, ["related"]) && $guyType == "page")) {
			if ($guyType == "user") {
				if ($type == "family") {
					$listQuery['source'] = "(`logs_actions`.`guy.type` = 'user' AND `logs_actions`.`guy.id` IN (SELECT `guy.id` FROM `users_family` WHERE `user.id` = '".$guyId."'))";
				}else if ($type == "friends") {
					$listQuery['source'] = "(`logs_actions`.`guy.type` = 'user' AND `logs_actions`.`guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '".$guyId."'))";
				}
			}else if ($guyType == "page") {
				$listQuery['source'] = "(`logs_actions`.`guy.type` = 'page' AND `logs_actions`.`guy.id` IN (SELECT `guy.id` FROM `pages_related` WHERE `page.id` = '".$guyId."'))";
			}
			if ($method == "auto") {
				if ($guyType == "user" && $type == "family") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND (`logs_actions`.`time` + '".$_parameter->get('feeds_action_timeout')."' < '".time()."') AND ".$listQuery['source'].") OR ".$listQuery['source'].")";
				}else if ($guyType == "user" && $type == "friends") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND (`logs_actions`.`time` + '".$_parameter->get('feeds_action_timeout')."' < '".time()."') AND ".$listQuery['source'].") OR ".$listQuery['source'].")";
				}else if ($guyType == "page" && $type == "related") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND (`logs_actions`.`time` + '".$_parameter->get('feeds_action_timeout')."' < '".time()."') AND ".$listQuery['source'].") OR ".$listQuery['source'].")";
				}
				$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` LEFT JOIN `logs_actions` ON (`logs_actions`.`things.type` = 'status' AND `logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`type` IN ('favorite', 'follow', 'share', 'comment')) OR (`logs_actions`.`obj.type` = 'status' AND `logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`type` IN ('add')) WHERE `status`.`id` IN (".$listQuery['code'].") ORDER BY `logs_actions`.`time` ".$listQuery['order']." ".$listQuery['limit'];
			}else if ($method == "new") {
				if ($guyType == "user" && $type == "family") {
					$listQuery['code'] = "SELECT `status`.`id` FROM `status` WHERE `status`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ".$listQuery['source']." ORDER BY `status`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}else if ($guyType == "user" && $type == "friends") {
					$listQuery['code'] = "SELECT `status`.`id` FROM `status` WHERE `status`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ".$listQuery['source']." ORDER BY `status`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}else if ($guyType == "page" && $type == "related") {
					$listQuery['code'] = "SELECT `status`.`id` FROM `status` WHERE `status`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ".$listQuery['source']." ORDER BY `status`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}
			}else if ($method == "action") {
				if ($guyType == "user" && $type == "family") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND ".$listQuery['source']." ORDER BY `logs_actions`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}else if ($guyType == "user" && $type == "friends") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND ".$listQuery['source']." ORDER BY `logs_actions`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}else if ($guyType == "page" && $type == "related") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND ".$listQuery['source']." ORDER BY `logs_actions`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}
			}
		}else if ($type == "nearby") {
			if (isset($object['places']) && is_array($object['places']) && count($object['places']) > 0) $placesArr = $object['places']; else $placesArr = null;
			if ($placesArr == null) {
				return array("return" => false, "reason" => "");
			}
			$listQuery['nearby'] = null;
			foreach ($placesArr as $placesThis) {
				if (is_numeric($placesThis)) {
					$placesNearbyRequest = "SELECT `latitude`, `longitude` FROM `maps_places` WHERE `id` = '".intval($placesThis)."' LIMIT 1;";
					$placesNearbyQuery = mysqli_query($db, $placesNearbyRequest);
					if (!$placesNearbyQuery) {
						continue;
					}else {
						if (mysqli_num_rows($placesNearbyQuery) > 0) {
							$placesNearbyFetch = mysqli_fetch_assoc($placesNearbyQuery);
							if (!isset($listQuery['nearby']) || $listQuery['nearby'] == null) {
								$listQuery['nearby'] = "(`status`.`places` = '1' AND `status`.`id` IN (SELECT `status.id` FROM `status_places` WHERE `value` REGEXP '^[0-9]+$' AND `value` IN (SELECT `id` FROM `maps_places` WHERE (6371 * acos(cos(radians('".$placesNearbyFetch['latitude']."') ) * cos(radians(`latitude`)) * cos(radians(`longitude`) - radians('".$placesNearbyFetch['longitude']."')) + sin(radians('".$placesNearbyFetch['latitude']."')) * sin(radians(`latitude`)))) <= '".$_parameter->get('feeds_nearby_scanning_distance')."')))";
							}else {
								$listQuery['nearby'] .= " OR (`status`.`places` = '1' AND `status`.`id` IN (SELECT `status.id` FROM `status_places` WHERE `value` REGEXP '^[0-9]+$' AND `value` IN (SELECT `id` FROM `maps_places` WHERE (6371 * acos(cos(radians('".$placesNearbyFetch['latitude']."') ) * cos(radians(`latitude`)) * cos(radians(`longitude`) - radians('".$placesNearbyFetch['longitude']."')) + sin(radians('".$placesNearbyFetch['latitude']."')) * sin(radians(`latitude`)))) <= '".$_parameter->get('feeds_nearby_scanning_distance')."')))";
							}
						}
					}
				}else if (is_string($placesThis)) {
					$placesNearbyRequest = "SELECT `latitude`, `longitude` FROM `maps_places` WHERE `address` LIKE '%".$_tool->convertDatabaseString($placesThis)."%' ORDER BY CHAR_LENGTH(`address`) ASC LIMIT 1;";
					$placesNearbyQuery = mysqli_query($db, $placesNearbyRequest);
					if (!$placesNearbyQuery) {
						continue;
					}else {
						if (mysqli_num_rows($placesNearbyQuery) > 0) {
							$placesNearbyFetch = mysqli_fetch_assoc($placesNearbyQuery);
							if (!isset($listQuery['nearby']) || $listQuery['nearby'] == null) {
								$listQuery['nearby'] = "(`status`.`places` = '1' AND `status`.`id` IN (SELECT `status.id` FROM `status_places` WHERE `value` REGEXP '^[0-9]+$' AND `value` IN (SELECT `id` FROM `maps_places` WHERE (6371 * acos(cos(radians('".$placesNearbyFetch['latitude']."') ) * cos(radians(`latitude`)) * cos(radians(`longitude`) - radians('".$placesNearbyFetch['longitude']."')) + sin(radians('".$placesNearbyFetch['latitude']."')) * sin(radians(`latitude`)))) <= '".$_parameter->get('feeds_nearby_scanning_distance')."')))";
							}else {
								$listQuery['nearby'] .= " OR (`status`.`places` = '1' AND `status`.`id` IN (SELECT `status.id` FROM `status_places` WHERE `value` REGEXP '^[0-9]+$' AND `value` IN (SELECT `id` FROM `maps_places` WHERE (6371 * acos(cos(radians('".$placesNearbyFetch['latitude']."') ) * cos(radians(`latitude`)) * cos(radians(`longitude`) - radians('".$placesNearbyFetch['longitude']."')) + sin(radians('".$placesNearbyFetch['latitude']."')) * sin(radians(`latitude`)))) <= '".$_parameter->get('feeds_nearby_scanning_distance')."')))";
							}
						}
					}
				}else if (is_array($placesThis) && (isset($placesThis[0], $placesThis[1]) || isset($placesThis['latitude'], $placesThis['longitude']))) { // 0 = latitude; 1 = longitude
					if ((is_string($placesThis[0]) && is_string($placesThis[1])) || is_string($placesThis['latitude']) && is_string($placesThis['longitude'])) {
						if (isset($placesThis[0], $placesThis[1])) {
							$placesNearbyFetch['latitude'] = $placesThis[0];
							$placesNearbyFetch['longitude'] = $placesThis[1];
						}else if (isset($placesThis['latitude'], $placesThis['longitude'])) {
							$placesNearbyFetch['latitude'] = $placesThis['latitude'];
							$placesNearbyFetch['longitude'] = $placesThis['longitude'];
						}
						if (isset($placesNearbyFetch['latitude'], $placesNearbyFetch['longitude'])) {
							if (!isset($listQuery['nearby']) || $listQuery['nearby'] == null) {
								$listQuery['nearby'] = "(`status`.`places` = '1' AND `status`.`id` IN (SELECT `status.id` FROM `status_places` WHERE `value` REGEXP '^[0-9]+$' AND `value` IN (SELECT `id` FROM `maps_places` WHERE (6371 * acos(cos(radians('".$placesNearbyFetch['latitude']."') ) * cos(radians(`latitude`)) * cos(radians(`longitude`) - radians('".$placesNearbyFetch['longitude']."')) + sin(radians('".$placesNearbyFetch['latitude']."')) * sin(radians(`latitude`)))) <= '".$_parameter->get('feeds_nearby_scanning_distance')."')))";
							}else {
								$listQuery['nearby'] .= " OR (`status`.`places` = '1' AND `status`.`id` IN (SELECT `status.id` FROM `status_places` WHERE `value` REGEXP '^[0-9]+$' AND `value` IN (SELECT `id` FROM `maps_places` WHERE (6371 * acos(cos(radians('".$placesNearbyFetch['latitude']."') ) * cos(radians(`latitude`)) * cos(radians(`longitude`) - radians('".$placesNearbyFetch['longitude']."')) + sin(radians('".$placesNearbyFetch['latitude']."')) * sin(radians(`latitude`)))) <= '".$_parameter->get('feeds_nearby_scanning_distance')."')))";
							}
						}
					}
				}
			}
			if (!isset($listQuery['nearby']) || !is_string($listQuery['nearby'])) {
				return array("return" => false, "reason" => "2");
			}else {
				$listQuery['nearby'] = "(".$listQuery['nearby'].")";
			}
			if ($method == "auto") {
				if ($guyType == "user") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND (`logs_actions`.`time` + '".$_parameter->get('feeds_action_timeout')."' < '".time()."') AND ".$listQuery['nearby'].") OR ".$listQuery['nearby'].")";
				}else if ($guyType == "page") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND (`logs_actions`.`time` + '".$_parameter->get('feeds_action_timeout')."' < '".time()."') AND ".$listQuery['nearby'].") OR ".$listQuery['nearby'].")";
				}
				$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` LEFT JOIN `logs_actions` ON (`logs_actions`.`things.type` = 'status' AND `logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`type` IN ('favorite', 'follow', 'share', 'comment')) OR (`logs_actions`.`obj.type` = 'status' AND `logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`type` IN ('add')) WHERE `status`.`id` IN (".$listQuery['code'].") ORDER BY `logs_actions`.`time` ".$listQuery['order']." ".$listQuery['limit'];
			}else if ($method == "new") {
				if ($guyType == "user") {
					$listQuery['code'] = "SELECT `status`.`id` FROM `status` WHERE `status`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ".$listQuery['nearby']." ORDER BY `status`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}else if ($guyType == "page") {
					$listQuery['code'] = "SELECT `status`.`id` FROM `status` WHERE `status`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ".$listQuery['nearby']." ORDER BY `status`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}
			}else if ($method == "action") {
				if ($guyType == "user") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND ".$listQuery['nearby']." ORDER BY `logs_actions`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}else if ($guyType == "page") {
					$listQuery['code'] = "SELECT DISTINCT `status`.`id` FROM `status` INNER JOIN `logs_actions` WHERE `logs_actions`.`id` ".$listQuery['sort'] ." '".$listQuery['id']."' ".$listQuery['except']." ".$listQuery['private']." ".$listQuery['hide']." ".$listQuery['block']." AND ((`logs_actions`.`things.id` = `status`.`id` AND `logs_actions`.`things.type` = 'status' AND `logs_actions`.`type` IN ('favorite', 'follow', 'share')) OR (`logs_actions`.`obj.id` = `status`.`id` AND `logs_actions`.`obj.type` = 'status' AND `logs_actions`.`type` IN ('add'))) AND ".$listQuery['nearby']." ORDER BY `logs_actions`.`id` ".$listQuery['order']." ".$listQuery['limit'];
				}
			}
		}else {
			return array("return" => false, "reason" => "3");
		}
		if (isset($listQuery['code']) && is_string($listQuery['code'])) {
			$getListQuery = mysqli_query($db, $listQuery['code']);
			if (!$getListQuery) {
				return array("return" => false, "reason" => $listQuery['code']);
			}else {
				$listArr = array();
				while ($getListFetch = mysqli_fetch_assoc($getListQuery)) {
					$listArr[] = $getListFetch['id'];
				}
				$countArr = count($listArr);
				return array("return" => true, "count" => $countArr, "data" => $listArr);
			}
		}else {
			return array("return" => false, "reason" => "5");
		}
	}
	function status_printcode ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_language = $this->class['_language'];
		$_media = $this->class['_media'];
		$_storage = $this->class['_storage'];
		$_sites = $this->class['_sites'];
		$_maps = $this->class['_maps'];
		$_user = $this->class['_user'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "1");
		}
		if (isset($object['status']) && is_array($object['status']) && count($object['status']) > 0) $statusArr = $object['status']; else $statusArr = null;
		if (isset($object['classname']) && is_string($object['classname'])) $statusClassname = $object['classname']; else $statusClassname = null;
		if ($statusArr == null) {
			return array("return" => false, "reason" => "1");
		}
		$statusArr['infoshow'] = $statusArr['info'];
		if (isset($statusArr['infoshow']['token'])) {
			unset($statusArr['infoshow']['token']);
		}
		$code = array();
		$code['author_verified'] = (isset($statusArr['author']['verified']) && $statusArr['author']['verified'] == 1) ? "<div class='verified _tt e' title='".$_language->text('verified', 'strtolower')."'> <i></i> </div>" : "";
		$code['date'] = (isset($statusArr['date']) && is_numeric($statusArr['date'])) ? "<div class='date nowrap _tt s' title='".$_language->text('posted_at', 'strtolower')." ".$_tool->agoDatetime($statusArr['date'], 'tip')."'> <i></i> <a href='".$_tool->links('feed/time/'.$statusArr['date'])."' target='_blank'>".$_tool->agoDatetime($statusArr['date'], 'ago')."</a> </div>" : "";
		$code['private_view'] = (isset($statusArr['private'], $statusArr['private']['view']) && is_numeric($statusArr['private']['view'])) ? "<div class='private view nowrap _tt s' private-value='".$statusArr['private']['view']."'php title='".$_language->text('private_'.$statusArr['private']['view'].'_tip', 'strtolower')."'> <i class='label'></i> <i class='value'></i> </div>" : "";
		$code['private_comment'] = (isset($statusArr['private'], $statusArr['private']['comment']) && is_numeric($statusArr['private']['comment'])) ? "<div class='private comment nowrap _tt s' private-value='".$statusArr['private']['comment']."'php title='".$_language->text('private_'.$statusArr['private']['comment'].'_tip', 'strtolower')."'> <i class='label'></i> <i class='value'></i> </div>" : "";
		$code['private_share'] = (isset($statusArr['private'], $statusArr['private']['share']) && is_numeric($statusArr['private']['share'])) ? "<div class='private share nowrap _tt s' private-value='".$statusArr['private']['share']."' title='".$_language->text('private_'.$statusArr['private']['share'].'_tip', 'strtolower')."'> <i class='label'></i> <i class='value'></i> </div>" : "";
		$code['edit'] = (isset($statusArr['edit']) && is_numeric($statusArr['edit'])) ? "<div class='edit nowrap _tt s' title='".$_language->text('last_edit_at', 'strtolower')." ".$_tool->agoDatetime($statusArr['edit'], 'tip')."'> <i></i> </div>" : "";
		$code['mood'] = (isset($statusArr['content'], $statusArr['content']['mood'], $statusArr['content']['mood']['text']) && is_string($statusArr['content']['mood']['text'])) ? "<div class='mood nowrap _tt s' title='".$_language->text('feeling', 'strtolower')." ".$statusArr['content']['mood']['text']."'> <i></i> </div>" : "";
		if (isset($statusArr['places'], $statusArr['places']['name']) && is_array($statusArr['places']) && count($statusArr['places']) > 0) { 
			if (isset($statusArr['places']['id'], $statusArr['places']['address'])) { 
				$code['places'] = "<div class='places nowrap _tt _tt-dbl s' title='".$_language->text('at', 'strtolower')." ".$statusArr['places']['name']."' dblclick='".json_encode(array("type" => "notification", "data" => array("type" => "notification", "title" => $_language->text('information_about_places', 'ucfirst'), "description" => array("type" => "info::places", "data" => $statusArr['places']), "timeout" => 6000 )))."'> <i></i> </div>"; 
			}else {
				$code['places'] = "<div class='places nowrap _tt _tt-dbl s' title='".$_language->text('at', 'ucfirst')." ".$statusArr['places']['name']."'><i></i> </div>";
			}
		}else {
			$code['places'] = "";
		}
		if (isset($statusArr['menu']) && is_array($statusArr['menu']) && count($statusArr['menu']) > 0) {
			$code['menu'] = null;
			foreach ($statusArr['menu'] as $typeThis => $valueThis) {
				if ($typeThis == "status") {
					if ($typeThis == "block" && $valueThis == true) {
						$code['menu'] .= "<div class='nowrap' menu-type='block'> <i></i> <span>".$_language->text('block', 'ucfirst')."</span> </div>";
					}else if ($typeThis == "report" && $valueThis == true) {
						$code['menu'] .= "<div class='nowrap' menu-type='report'> <i></i> <span>".$_language->text('report', 'ucfirst')."</span> </div>";
					}else if ($typeThis == "edit" && $valueThis == true) {
						$code['menu'] .= "<div class='nowrap' menu-type='edit'> <i></i> <span>".$_language->text('edit', 'ucfirst')."</span> </div>";
					}else if ($typeThis == "delete" && $valueThis == true) {
						$code['menu'] .= "<div class='nowrap' menu-type='delete'> <i></i> <span>".$_language->text('delete', 'ucfirst')."</span> </div>";
					}else if ($typeThis == "follow") {
						if ($valueThis == true) {
							$code['menu'] .= "<div class='nowrap' menu-type='unfollow'> <i></i> <span>".$_language->text('unfollow', 'ucfirst')."</span> </div>";
						}else {
							$code['menu'] .= "<div class='nowrap' menu-type='unfollow'> <i></i> <span>".$_language->text('unfollow', 'ucfirst')."</span> </div>";
						}
					}else if ($typeThis == "popup" && $valueThis == true) {
						$code['menu'] .= "<div class='nowrap' menu-type='popup'> <i></i> <span>".$_language->text('popup', 'ucfirst')."</span> </div>";
					}else if ($typeThis == "link" && $valueThis == true) {
						$code['menu'] .= "<div class='nowrap' menu-type='link'> <i></i> <span><a href='".$_tool->links('feed/status/'.$status['info']['display'])."'>".$_language->text('link', 'ucfirst')."</a></span> </div>";
					}
				}
			}
			if (isset($code['menu']) && is_string($code['menu'])) {
				$code['menu'] = "<div class='menu' status-menu> <div class='button'><i></i></div> <div class='tab'>".$code['menu']."</div> </div>";
			}
		}
		if (isset($statusArr['content'], $statusArr['content']['mood'], $statusArr['content']['mood']['text']) && is_string($statusArr['content']['mood']['text'])) {
			if (isset($statusArr['content']['mood']['icon']) && is_string($statusArr['content']['mood']['icon'])) {
				$code['content_mood'] = null;
			}else {
				$code['content_mood'] = null;
			}
			$code['content_mood'] = "<div class='mood'> ".$code['content_mood']." <span>".$statusArr['content']['mood']['text'].".</span> </div>";
		}else {
			$code['content_mood'] = null;
		}
		$code['content_text'] = (isset($statusArr['content'], $statusArr['content']['text']) && is_string($statusArr['content']['text'])) ? "<div class='text'> <span class='content'>".$statusArr['content']['text']."</span> ".$code['content_mood']." </div>" : "";
		if (isset($statusArr['content'], $statusArr['content']['usertag']) && $statusArr['content']['usertag'] != null) {
			$code['content_usertag'] = null;
			foreach ($statusArr['content']['usertag'] as $usertagThis) {
				if (isset($usertagThis['tag'], $usertagThis['link'], $usertagThis['name'])) {
					$code['content_usertag'] .= "<div class='div _tt-bk' title='".$usertagThis['tag']."'><a href='".$usertagThis['link']."'>".$usertagThis['name']."</a></div>";
				}
			}
			$code['content_usertag'] = "<div class='usertag'> <div class='with'><span> - ".$_language->text('with', 'strtolower')."</span></div> <div class='li'>".$c_['content_usertag']."</div> </div>";
		}else {
			$code['content_usertag'] = null;
		}
		if (isset($statusArr['content'], $statusArr['content']['media']) && is_array($statusArr['content']['media']) && count($statusArr['content']['media']) > 0) {
			$code['content_media'] = null;
			if (isset($statusArr['content']['media']['type'], $statusArr['content']['media']['data']) && is_string($statusArr['content']['media']['type']) && is_array($statusArr['content']['media']['data']) && count($statusArr['content']['media']['data']) > 0) {
				$code['content_media'] = $this->status_getCodeMedia($statusArr['content']);
			}
		}else {
			$code['content_media'] = null;
		}
		if (isset($statusArr['action'], $statusArr['action']['favorite'], $statusArr['action']['favorite']['status'], $statusArr['action']['favorite']['selected']) && $statusArr['action']['favorite']['status'] == true) {
			$code['action_favorite'] = null;
			if ($statusArr['action']['favorite']['selected'] == true) {
				$code['action_favorite'] = "<div class='favorite'> <span status-action-favorite favorite='true'>".$_language->text('unfavorite', 'ucfirst')."</span> </div>";
			}else if ($statusArr['action']['favorite']['selected'] == false) {
				$code['action_favorite'] = "<div class='favorite'> <span status-action-favorite favorite='false'>".$_language->text('favorite', 'ucfirst')."</span> </div>";
			}
		}else {
			$code['action_favorite'] = null;
		}
		if (isset($statusArr['action'], $statusArr['action']['share'], $statusArr['action']['share']['status']) && $statusArr['action']['share']['status'] == true) {
			$code['action_share'] = "<div class='share'> <span status-action-share>".$_language->text('share', 'ucfirst')."</span> </div>";
		}else {
			$code['action_share'] = null;
		}
		if (isset($statusArr['action'], $statusArr['action']['invite'], $statusArr['action']['invite']['status']) && $statusArr['action']['invite']['status'] == true) {
			$code['action_invite'] = "<div class='invite'> <span status-action-invite>".$_language->text('invite', 'ucfirst')."</span> </div>";
		}else {
			$code['action_invite'] = null;
		}
		if (isset($statusArr['action'], $statusArr['action']['comment'], $statusArr['action']['comment']['status']) && $statusArr['action']['comment']['status'] == true) {
			$code['comment_type'] = "<div class='type null' status-comment-type> <textarea type='text' placeholder='".$_language->text('write_a_comment', 'strtolower')."' status-action-comment></textarea> </div>";
		}else {
			$code['comment_type'] = "<div class='type null' status-comment-type> <span>".$_language->text('status_unlimited_comment', 'ucfirst')."</span> </div>";
		}
		if (isset($statusArr['comment'], $statusArr['comment']['count'])) {
			$code['comment_content'] = null;
			if ($statusArr['comment']['count'] == 0) {
				$code['comment_stats'] = null;
				$code['comment_content'] = "<div class='null' status-comment-null> <span status-comment-null>".$_language->text('status_null_comment', 'ucfirst')."</span> </div>";
			}else if ($statusArr['comment']['count'] > 0) {
				$code['comment_stats'] = "<div class='showmore' status-comment-showmore> <i class='icon'></i> <span class='text'>".$_language->text('show_more_comments', 'ucfirst')."</span> </div>";
				$code['comment_content'] = null;
				if (isset($statusArr['comment']['data'])) {
					foreach ($statusArr['comment']['data'] as $i => $commentThis) {
						$commentPrintCode = $this->comment_printcode(array("guy" => array("type" => $guyType, "id" => $guyId), "comment" => $commentThis, "classname" => "lines"));
						if (isset($commentPrintCode['return'], $commentPrintCode['code']) && $commentPrintCode['return'] == true) {
							$code['comment_content'] .= $commentPrintCode['code'];
						}
					}
				}
			}
			if (isset($code['comment_stats']) && is_string($code['comment_stats'])) {
				$code['comment_stats'] = "<div class='statistic'> <div class='info'> <i class='icon'></i> <span class='count' status-comment-stats>".$statusArr['comment']['count']."</span> <span class='text'>".$_language->text('comment(s)', 'strtolower')."</span> </div> ".$code['comment_stats']." </div>";
			}
			//.
		}else {
			$code['comment_content'] = $code['comment_stats'] = null;
		}
		if (isset($code['comment_content']) && is_string($code['comment_content'])) {
			$code['comment_content'] = "<div class='content' status-comment-content> ".$code['comment_content']." </div>";
		}
		$code = "
		<div class='".$statusClassname."' status-id='".$statusArr['info']['id']."' status='".json_encode($statusArr['infoshow'])."'>
			<div class='header'>
				<div class='cover'>
					<div class='wrap'></div>
					<div class='img' style='background-image: url(".$statusArr['author']['cover'].";)'> <img class='img' src='".$statusArr['author']['cover']."' alt='".$_language->text('cover_of', 'strtolower')." ".$statusArr['author']['name']." (".$statusArr['author']['tag'].")'> </div>
				</div>
				<div class='avatar'>
					<a href='".$statusArr['author']['link']."'><img class='img' src='".$statusArr['author']['avatar']."' alt='".$_language->text('avatar_of', 'strtolower')." ".$statusArr['author']['name']." (".$statusArr['author']['tag'].")'></a>
				</div>
				<div class='user'>
					".$code['author_verified']."
					<div class='name'> <a href='".$statusArr['author']['link']."'> <span>".$statusArr['author']['name']."</span> </a> </div>
					<div class='tag'> <a href='".$statusArr['author']['link']."'> <span>".$statusArr['author']['tag']."</span> </a> </div>
				</div>
				<div class='info'> ".$code['private_view']." ".$code['private_comment']." ".$code['private_share']." ".$code['edit']." ".$code['places']." ".$code['mood']." </div>
				".$code['menu']."
			</div>
			<div class='body'> ".$code['content_text']." ".$code['content_media']." ".$code['content_usertag']." </div>
			<div class='footer'>
				<div class='info'>
					<div class='action'> ".$code['action_favorite']." ".$code['action_share']." ".$code['action_invite']." </div>
					<div class='statistic'>
						<div class='favorite'> <i></i> <span status-stats-favorite>".$statusArr['stats']['favorite']."</span> </div>
						<div class='share'> <i></i> <span status-stats-share>".$statusArr['stats']['share']."</span> </div>
						<div class='invite'> <i></i> <span status-stats-invite>".$statusArr['stats']['invite']."</span> </div>
					</div>
				</div>
				<div class='comment'> ".$code['comment_type']." ".$code['comment_stats']." ".$code['comment_content']." </div>
			</div>
		</div>
		";
		return array("return" => true, "code" => $code);
	}
	function status_fetch ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_language = $this->class['_language'];
		$_media = $this->class['_media'];
		$_storage = $this->class['_storage'];
		$_sites = $this->class['_sites'];
		$_maps = $this->class['_maps'];
		$_user = $this->class['_user'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "1");
		}
		if (isset($object['id']) && is_array($object['id']) && count($object['id']) > 0) $idArr = $object['id']; else $idArr = null;
		if ($idArr == null) {
			return array("return" => false, "reason" => "1");
		}
		$statusArr = array();
		foreach ($idArr as $idThis => $idValue) {
			$statusArr[] = intval($idThis);
			if (!isset($statusRequestPush)) {
				$statusRequestPush = "'".intval($idThis)."'";
			}else {
				$statusRequestPush .= ", '".intval($idThis)."'";
			}
		}
		if (isset($statusRequestPush) && is_string($statusRequestPush)) {
			$statusRequestPush = "`id` IN (".$statusRequestPush.")";
		}
		$statusRequest = "SELECT * FROM `status` WHERE ".$statusRequestPush.";";
		$statusQuery = mysqli_query($db, $statusRequest);
		if (!$statusQuery) {
			return array("return" => false, "reason" => "1x");
		}else {
			$statusCount = 0;
			while ($status = mysqli_fetch_assoc($statusQuery)) {
				$getMedia = false;
				$isShared = false;
				foreach ($idArr as $idThis => $idValue) {
					if ($idThis == $status['id']) {
						if (isset($idValue['media']) && $idValue['media'] == true) {
							$getMedia = true;
						}
						if (isset($idValue['shared']) && $idValue['shared'] == true) {
							$isShared = true;
						}
						if (isset($idValue['comment']) && $idValue['comment'] == true) {
							$getComment = true;
						}
					}
				}
				$author['type'] = $status['author.type'];
				$author['id'] = $status['author.id'];
				$info['id'] = $status['id'];
				$info['type'] = $status['type'];
				$info['token'] = $status['token'];
				$info['display'] = $status['display'];
				$info['link'] = $_tool->links('feed/status/'.$info['display']);
				$info['author'] = array("type" => $author['type'], "id" => $author['id']);
				if ($author['type'] == "user") {
					$getInfo = $_user->profile(array("action" => "get", "rows" => ["avatar.small", "cover.small", "fullname", "username", "link", "verified"], "label" => "id", "value" => $status['author.id']));
					if (isset($getInfo['return'], $getInfo['data'][0]) && $getInfo['return'] == true) {
						$author['avatar'] = $getInfo['data'][0]['avatar.small'];
						$author['cover'] = $getInfo['data'][0]['cover.small'];
						$author['name'] = $getInfo['data'][0]['fullname'];
						$author['tag'] = $getInfo['data'][0]['username'];
						$author['link'] = $getInfo['data'][0]['link'];
						$author['verified'] = $getInfo['data'][0]['verified'];
					}else {
						continue;
					}
				}
				if ($author['type'] != "user") {
					$from['status'] = true;
				}else {
					$from['status'] = false;
				}
				if ($status['edit'] == 0) {
					$edit['status'] = false;
				}else {
					$edit['status'] = $status['edit'];
				}
				if ($status['places'] == 0) {
					$places = null;
				}else if ($status['places'] == 1) {
					$placesQuery = mysqli_query($db, "SELECT `value` FROM `status_places` WHERE `status.id` = '".$status['id']."' LIMIT 1;");
					if (!$placesQuery) {
						//.
					}else {
						if (mysqli_num_rows($placesQuery) == 0) {
							$places = null;
						}else {
							$places = mysqli_fetch_assoc($placesQuery);
							if (is_numeric($places['value'])) {
								$getPlacesInfo = $_maps->places(array("action" => "get", "label" => "id", "value" => $places['value'], "limit" => "LIMIT 1"));
								if (isset($getPlacesInfo['return'], $getPlacesInfo['data'], $getPlacesInfo['data'][0]) && $getPlacesInfo['return'] == true) {
									$places = $getPlacesInfo['data'][0];
								}else {
									$places['name'] = $places['value'];
								}
							}else {
								$places['name'] = $places['value'];
							}
						}
					}
				}
				if (!isset($status['date']) || $status['date'] == null || $status['date'] == 0) {
					$status['date'] = $status['time'];
				}
				$date = $status['date'];
				$private['view'] = $status['private.view'];
				$private['comment'] = $status['private.comment'];
				$private['share'] = $status['private.share'];
				if ($status['mood'] == 0) {
					$content['mood'] = null;
				}else {
					$moodQuery = mysqli_query($db, "SELECT * FROM `status_mood` WHERE `status.id` = '".$status['id']."' LIMIT 1;");
					if ($moodQuery && mysqli_num_rows($moodQuery) == 0) {
						$content['mood'] = null;
					}else {
						$moodFetch = mysqli_fetch_assoc($moodQuery);
						if ($moodFetch['type'] == 1) {
							if (preg_match("/^(\[feel\])/", $moodFetch['value'])) {
								$content['mood']['push'] = $_language->text('feeling');
							}else {
								$content['mood']['push'] = null;
							}
							$content['mood']['text'] = $content['mood']['push'].' '.$_language->text($moodFetch['value']);
							$content['mood']['icon'] = null;
						}else if ($moodFetch['type'] == 2) {
							$content['mood']['text'] = $_tool->convertDatabaseString($moodFetch['value']);
							$content['mood']['icon'] = null;
						}else {
							$content['mood'] = null;
						}
					}
				}
				if ($status['usertag'] == 0) {
					$content['usertag'] = null;
				}else {
					$usertagQuery = mysqli_query($db, "SELECT * FROM `status_usertag` WHERE `status.id` = '".$status['id']."'");
					if ($usertagQuery && mysqli_num_rows($usertagQuery) == 0) {
						$content['usertag'] = null;
					}else {
						while ($usertagFetch = mysqli_fetch_assoc($usertagQuery)) {
							if ($usertagFetch['guy.type'] == "user" || $usertagFetch['guy.type'] == "user") {
								$usertagUser = $_user->profile(array("rows" => "`id`, `fullname`, `username`, `link`", "label" => "id", "value" => $usertagFetch['guy.id']));
								if (isset($usertagUser['return'], $usertagUser['data'][0]) && $usertagUser['return'] == true) {
									$content['usertag'][] = array(
										"id" => $usertagUser['data'][0]['id'],
										"name" => $usertagUser['data'][0]['fullname'],
										"tag" => $usertagUser['data'][0]['username'],
										"link" => $usertagUser['data'][0]['link']
									);
								}else {
									continue;
								}
							}else {
								continue;
							}
						}
					}
				}
				$content['string'] = $_tool->hash('decode', $status['content'], $status['token'].'::'.$_parameter->get('hash_feed_status_content'));
				$content['text'] = $_tool->parseContent($content['string']);
				if ($getMedia == true && $info['type'] == "status" && $status['link'] == 1) {
					$mediaQuery = mysqli_query($db, "SELECT * FROM `status_link` WHERE `status.id` = '".$status['id']."' LIMIT 1");
					if (!$mediaQuery) {
						//.
					}else {
						if (mysqli_num_rows($mediaQuery) == 0) {
							$content['media'] = null;
						}else {
							$content['media'] = array();
							$content['media']['type'] = "link";
							while ($mediaData = mysqli_fetch_assoc($mediaQuery)) {
								$mediaFetch = $_sites->data(array("type" => "info", "action" => "get", "label" => "id", "value" => $mediaData['sites.id'], "limit" => "LIMIT 1"));
								if (isset($mediaFetch['return'], $mediaFetch['data'], $mediaFetch['data'][0]) && $mediaFetch['return'] == true) {
									$mediaFetchData = $mediaFetch['data'][0];
									if (isset($mediaFetchData['thumbnail']) && is_string($mediaFetchData['thumbnail']) && $mediaFetchData['thumbnail'] != "0") {
										$mediaFetchData['thumbnail'] = $_tool->links($mediaFetchData['thumbnail']);
									}else {
										$mediaFetchData['thumbnail'] = null;
									}
									$mediaDataArr = array(
										"display" => $mediaFetchData['display'],
										"sub" => $mediaFetchData['sub'],
										"host" => $mediaFetchData['host'],
										"title" => $_tool->convertDisplayString($mediaFetchData['title']),
										"description" => $_tool->convertDisplayString($mediaFetchData['description']),
										"thumbnail" => $mediaFetchData['thumbnail'],
										"url" => $_tool->links('sites/direct/'.$_tool->hash('encode', $mediaFetchData['url'], $_parameter->get('hash_sites_direct'))),
										"secure" => $mediaFetchData['secure'],
										"share" => array(
											"link" => $_tool->links('link/embed/'.$mediaFetchData['display'])
										)
									);
									/*
									$getMediaEmbed = $_sites->embed(array("url" => $mediaFetchData['url'], "class" => "mediaEmbed", "size" => array("width" => "auto", "height" => "auto")));
									if (isset($getMediaEmbed['return'], $getMediaEmbed['data']) && $getMediaEmbed['return'] == true) {
										$mediaDataArr['embed'] = $getMediaEmbed['data']['embed'];
									}
									*/
									$content['media']['data'][] = $mediaDataArr;
									$mediaDataArr = null;
								}
							}
						}
					}
				}else if ($getMedia == true && $info['type'] == "status" && $status['share'] == 1 && $isShared == false) {
					$mediaRequest = "SELECT `id` FROM `status` WHERE `id` IN (SELECT DISTINCT `status.id` FROM `status_share` WHERE `this.id` = '".$status['id']."') LIMIT 1;";
					$mediaQuery = mysqli_query($db, $mediaRequest);
					if (!$mediaQuery) {
						//.
					}
					if (mysqli_num_rows($mediaQuery) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "share";
						$statusShareId = mysqli_fetch_assoc($mediaQuery)['id'];
						$getStatusShared = $this->status_fetch(array("guy" => array("type" => $guyType, "id" => $guyId), "id" =>  array($statusShareId => array("shared" => true))));
						if (isset($getStatusShared['return']) && $getStatusShared['return'] == true) {
							if (isset($getStatusShared['data'], $getStatusShared['data'][0]) && is_array($getStatusShared['data'][0])) {
								$content['media']['data'][] = array(
									"exists" => true, 
									"status" => array(
										"info" => $getStatusShared['data'][0]['info'], 
										"date" => $getStatusShared['data'][0]['date'], 
										"author" => $getStatusShared['data'][0]['author'],
										"content" => $getStatusShared['data'][0]['content']
									)
								);
							}else {
								$content['media']['data'][] = array(
									"exists" => false, 
									"status" => null
								);
							}
						}else {
							$content['media']['data'][] = array(
								"exists" => false, 
								"status" => null
							);
						}
						unset($content['media']['get']);
						$content['media']['get'] = null;
					}
				}else if ($getMedia == true && $info['type'] == "photos") {
					$mediaQuery = mysqli_query($db, "SELECT DISTINCT `status.id`, `photos.id` FROM `status_photos` WHERE `status.id` = '".$status['id']."'");
					if ($mediaQuery && mysqli_num_rows($mediaQuery) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "photos";
						while ($mediaData = mysqli_fetch_assoc($mediaQuery)) {
							$mediaFetch = $_media->data("photos", array("action" => "get", "rows" => "`token`, `display`, `mime_type`, `file.original`, `file.large`, `file.medium`", "label" => "id", "value" => $mediaData['photos.id'], "private" => true, "author" => array("type" => $author['type'], "id" => $author['id']), "limit" => "LIMIT 1"));
							if (isset($mediaFetch['return']) && $mediaFetch['return'] == true) {
								$mediaFetchData = $mediaFetch['data'][0];
								if ($mediaFetchData['file.medium'] != '0') {
									$mediaFetchData['thumbnail'] = $_tool->links('photos/raw/'.$mediaFetchData['file.medium']);
								}else {
									$mediaFetchData['thumbnail'] = $_tool->links('photos/raw/'.$mediaFetchData['file.original']);
								}
								if ($mediaFetchData['file.large'] != '0') {
									$mediaFetchData['link'] = $_tool->links('photos/raw/'.$mediaFetchData['file.large']);
								}else {
									$mediaFetchData['link'] = $_tool->links('photos/raw/'.$mediaFetchData['file.original']);
								}
								$content['media']['data'][] = array(
									"display" => $mediaFetchData['display'], 
									"mime" => $mediaFetchData['mime_type'], 
									"thumbnail" => $mediaFetchData['thumbnail'], 
									"link" => $mediaFetchData['link'],
									"share" => array(
										"link" => $_tool->links('photos/picture/'.$mediaFetchData['display'])
									)
								);
							}
						}
					}
				}else if ($getMedia == true && $info['type'] == "music") {
					$mediaQuery = mysqli_query($db, "SELECT DISTINCT `status.id`, `music.id` FROM `status_music` WHERE `status.id` = '".$status['id']."' LIMIT 1");
					if ($mediaQuery && mysqli_num_rows($mediaQuery) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "music";
						while ($mediaData = mysqli_fetch_assoc($mediaQuery)) {
							$mediaFetch = $_media->data("music", array("action" => "get", "rows" => "`token`, `display`, `name`, `mime_type`, `singer`, `description`, `file.original`", "label" => "id", "value" => $mediaData['music.id'], "private" => true, "author" => array("type" => $author['type'], "id" => $author['id']), "limit" => "LIMIT 1"));
							if (isset($mediaFetch['return']) && $mediaFetch['return'] == true) {
								$mediaFetchData = $mediaFetch['data'][0];
								if ($mediaFetchData['name'] == null) {
									$mediaFetchData['name'] = $_language->text('null:music_name', 'ucfirst');
								}
								if ($mediaFetchData['singer'] == null) {
									$mediaFetchData['singer'] = $_language->text('not_updated', 'ucfirst');
								}else {
									$mediaFetchData['singer'] = $_language->text('presented_by', 'ucfirst').': '.$mediaFetchData['singer'];
								}
								if ($mediaFetchData['description'] == null) {
									$mediaFetchData['description'] = $_language->text('null:description_music', 'ucfirst');
								}
								$mediaFetchData['link'] = $_tool->links('music/raw/'.$mediaFetchData['file.original']);
								$content['media']['data'][] = array(
									"display" => $mediaFetchData['display'],
									"name" => $mediaFetchData['name'],
									"mime" => $mediaFetchData['mime_type'], 
									"singer" => $mediaFetchData['singer'], 
									"description" => $mediaFetchData['description'],
									"link" => $mediaFetchData['link'],
									"share" => array(
										"link" => $_tool->links('music/song/'.$mediaFetchData['display'])
									)
								);
							}else {
								//.
							}
						}
					}
				}else if ($getMedia == true && $info['type'] == "videos") {
					$mediaQuery = mysqli_query($db, "SELECT DISTINCT `status.id`, `videos.id` FROM `status_videos` WHERE `status.id` = '".$status['id']."' LIMIT 1");
					if ($mediaQuery && mysqli_num_rows($mediaQuery) == 0) {
						$content['media'] = null;
					}else if ($mediaQuery && mysqli_num_rows($mediaQuery) > 0) {
						$content['media'] = array();
						$content['media']['type'] = "videos";
						while ($mediaData = mysqli_fetch_assoc($mediaQuery)) {
							$mediaFetch = $_media->data("videos", array("action" => "get", "rows" => "`token`, `display`, `name`, `mime_type`, `description`, `file.thumbnail`, `file.sd`", "label" => "id", "value" => $mediaData['videos.id'], "private" => true, "author" => array("type" => $author['type'], "id" => $author['id']), "limit" => "LIMIT 1"));
							if (isset($mediaFetch['return']) && $mediaFetch['return'] == true) {
								$mediaFetchData = $mediaFetch['data'][0];
								if ($mediaFetchData['name'] == null) {
									$mediaFetchData['name'] = $_language->text('null:videos_name', 'ucfirst');
								}
								if ($mediaFetchData['description'] == null) {
									$mediaFetchData['description'] = $_language->text('null:description_videos', 'ucfirst');
								}
								$mediaFetchData['thumbnail'] = $_tool->links('videos/raw/thumbnail/'.$mediaFetchData['file.thumbnail']);
								$mediaFetchData['link'] = $_tool->links('videos/raw/'.$mediaFetchData['file.sd']);
								$content['media']['data'][] = array(
									"display" => $mediaFetchData['display'], 
									"name" => $mediaFetchData['name'],
									"mime" => $mediaFetchData['mime_type'],
									"description" => $mediaFetchData['description'],
									"thumbnail" => $mediaFetchData['thumbnail'],
									"link" => $mediaFetchData['link'],
									"share" => array(
										"link" => $_tool->links('videos/watch/'.$mediaFetchData['display'])
									)
								);
							}
						}
					}else {
						$content['media'] = null;
					}
				}else if ($getMedia == true && $info['type'] == "cited") {
					$mediaQuery = mysqli_query($db, "SELECT * FROM `status_cited` WHERE `status.id` = '".$status['id']."' LIMIT 1");
					if ($mediaQuery && mysqli_num_rows($mediaQuery) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "cited";
						$citedId = mysqli_fetch_assoc($mediaQuery)['cited.id'];
						$citedQuery = mysqli_query($db, "SELECT `token`, `quote`, `author`, `photos.id` FROM `cited` WHERE `id` = '{$citedId}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}' LIMIT 1");
						if (!$citedQuery) {
							$content['media'] = null;
						}else {
							$citedFetch = mysqli_fetch_assoc($citedQuery);
							if ($citedFetch['photos.id'] != '0') {
								$mediaFetch = $_media->data("photos", array("action" => "get", "rows" => "`token`, `display`, `file.original`, `file.medium`", "label" => "id", "value" => $cited_fetch['photos.id'], "private" => true, "author" => array("type" => $author['type'], "id" => $author['id']), "limit" => "LIMIT 1"));
							}else {
								$mediaFetch['return'] = false;
							}
							if (isset($mediaFetch['return']) && $mediaFetch['return'] == true) {
								if ($mediaFetch['data'][0]['file.medium'] != '0') {
									$mediaPath = $mediaFetch['data'][0]['file.medium'];
								}else {
									$mediaPath = $mediaFetch['data'][0]['file.original'];
								}
								$citedFetch['thumbnail'] = $_tool->links('photos/raw/').$mediaPath;
							}else {
								$citedFetch['thumbnail'] = null;
							}
							$content['media']['data'][] = array(
								"display" => $citedFetch['display'],
								"author" => $citedFetch['author'],
								"quote" => $citedFetch['quote'],
								"thumbnail" => $citedFetch['thumbnail'],
								"share" => array(
									"link" => $_tool->links('cited/embed/'.$mediaFetch['data']['display'])
								)
							);
						}
					}
				}else {
					$content['media'] = null;
				}
				if ($guyType == $author['type'] && $guyId == $author['id']) {
					$menu['status']['report'] = $menu['status']['block'] = false;
					$menu['status']['delete'] = $menu['status']['edit'] = true;
				}else {
					$menu['status']['report'] = $menu['status']['block'] = $menu['author']['hide'] = true;
					$menu['status']['delete'] = $menu['status']['edit'] = false;
				}
				$favoriteCountQuery = mysqli_query($db, "SELECT `id` FROM `status_follow` WHERE `status.id` = '{$info['id']}' AND `guy.type` = '{$guyType}' AND `guy.id` = '{$guyId}'");
				if ($favoriteCountQuery && mysqli_num_rows($favoriteCountQuery) > 0) {
					$menu['status']['follow'] = true;
				}else {
					$menu['status']['follow'] = false;
				}
				if ($info['type'] == "photos" || $info['type'] == "music" || $info['type'] == "videos" || $info['type'] == "cited") {
					$menu['status']['popup'] = true;
				}else {
					$menu['status']['popup'] = false;
				}
				$menu['status']['link'] = true;
				$statsFollowQuery = mysqli_query($db, "SELECT `id` FROM `status_follow` WHERE `status.id` = '{$info['id']}'");
				if ($statsFollowQuery) { $statistic['follow'] = mysqli_num_rows($statsFollowQuery); } else $statistic['follow'] = 0;
				$statsFavoriteQuery = mysqli_query($db, "SELECT `id` FROM `status_favorite` WHERE `status.id` = '{$info['id']}'");
				if ($statsFollowQuery) { $statistic['favorite'] = mysqli_num_rows($statsFavoriteQuery); } else $statistic['favorite'] = 0;
				$statsShareQuery = mysqli_query($db, "SELECT `id` FROM `status_share` WHERE `status.id` = '{$info['id']}'");
				if ($statsShareQuery) { $statistic['share'] = mysqli_num_rows($statsShareQuery); } else $statistic['share'] = 0;
				$statsInviteQuery = mysqli_query($db, "SELECT `id` FROM `status_invite` WHERE `status.id` = '{$info['id']}'");
				if ($statsInviteQuery) { $statistic['invite'] = mysqli_num_rows($statsInviteQuery); } else $statistic['invite'] = 0;
				$action['favorite']['check'] = 1;
				$action['share']['check'] = 1;
				$action['invite']['check'] = 1;
				if ($author['type'] == $guyType && $author['id'] == $guyId) {
					$action['comment']['check'] = 1;
				}else if ($private['comment'] == 1) {
					if ($author['type'] == $this->user['type'] && $author['id'] == $this->user['id']) {
						$action['comment']['check'] = 1;
					}else {
						$action['comment']['check'] = 0;
					}
				}else if ($private['comment'] == 2) {
					if ($guyType == "user") {
						$actionCommentCheckQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$guyId}' AND `guy.id` = '{$author['id']}' LIMIT 1");
						if ($actionCommentCheckQuery) $action['comment']['check'] = mysqli_num_rows($actionCommentCheckQuery); else $action['comment']['check'] = 0;
					}else {
						$action['comment']['check'] = 0;
					}
				}else if ($private['comment'] == 3) {
					if ($author['type'] == "user" && $guyType == "user") {
						$actionCommentCheckQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE (`user.id` = '{$guyId}' AND `guy.id` = '{$author['id']}') OR (`guy.id` = '{$author['id']}' AND `user.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$guyId}')) LIMIT 1");
						if ($actionCommentCheckQuery) $action['comment']['check'] = mysqli_num_rows($actionCommentCheckQuery); else $action['comment']['check'] = 0;
					}else {
						$action['comment']['check'] = 0;
					}
				}else if ($private['comment'] == 4) {
					$action['comment']['check'] = 1;
				}else {
					$action['comment']['check'] = 0;
				}
				if ($action['favorite']['check'] > 0) {
					$action['favorite']['status'] = true;
					$action['favorite']['selected'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_favorite` WHERE `status.id` = '{$info['id']}' AND `guy.id` = '{$guyId}' AND `guy.type` = '{$guyType}'"));
					if ($action['favorite']['selected'] == 0) {
						$action['favorite']['selected'] = false;
					}else {
						$action['favorite']['selected'] = true;
					}
				}else {
					$action['favorite']['status'] = false;
				}
				if ($action['share']['check'] > 0) {
					$action['share']['status'] = true;
				}else {
					$action['share']['status'] = false;
				}
				if ($action['invite']['check'] > 0) {
					$action['invite']['status'] = true;
				}else {
					$action['invite']['status'] = false;
				}
				if ($action['comment']['check'] > 0) {
					$action['comment']['status'] = true;
				}else {
					$action['comment']['status'] = false;
				}
				$commentQuery = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `inside.type` = 'status' AND `inside.id` = '".$status['id']."'");
				if ($commentQuery) $comment['count'] = mysqli_num_rows($commentQuery); else $comment['count'] = 0;
				if (isset($getComment) && $getComment == true) {
					$getCommentList = $this->comment_list(array("guy" => array("type" => $guyType, "id" => $guyId), "inside" => [array("type" => "status", "id" => $status['id'])], "sort" => ">", "id" => 0, "order" => "new", "limit" => 3));
					if (isset($getCommentList['return'], $getCommentList['count'], $getCommentList['data']) && $getCommentList['return'] == true) {
						if ($getCommentList['count'] > 0 && count($getCommentList['data']) > 0) {
							$listCommentId = array();
							foreach ($getCommentList['data'] as $key => $commentIdThis) {
								$listCommentId[$commentIdThis] = array("reply" => true);
							}
							$getCommentFetch = $this->comment_fetch(array("guy" => array("type" => $guyType, "id" => $guyId), "id" => $listCommentId));
							if (isset($getCommentFetch['return'], $getCommentFetch['data']) && $getCommentFetch['return'] == true) {
								$comment['data'] = $getCommentFetch['data'];
							}
						}
					}
				}
				foreach ($statusArr as $i => $statusThis) {
					if ($statusThis == $info['id']) {
						$statusArr[$i] = array (
							'info' => $info,
							'author' => $author, 
							'from' => $from, 
							'edit' => $edit,
							'places' => $places,
							'date' => $date,
							'private' => $private,
							'menu' => $menu,
							'content' => $content,
							'stats' => $statistic,
							'action' => $action,
							'comment' => $comment,
						);
					}
				}
			};
			$statusCount = count($statusArr);
			return array("return" => true, "count" => $statusCount, "data" => $statusArr);
		}
	}
	function status_change ($object) {
		return $this->status_edit($object);
	}
	function status_edit ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['label']) && (is_numeric($object['label']) || is_string($object['label']))) $statusLabel = $_tool->convertDatabaseString($object['label']); else $statusLabel = null;
		if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $statusValue = $_tool->convertDatabaseString($object['value']); else $statusValue = null;
		if (isset($object['rows']) && is_array($object['rows']) && count($object['rows']) > 0) $rowsArr = $object['rows']; else $rowsArr = null;
		if (isset($object['author'], $object['author']['type']) && is_string($object['author']['type'])) $authorType = $_tool->convertDatabaseString($object['author']['type']); else $authorType = null;
		if (isset($object['author'], $object['author']['id']) && is_numeric($object['author']['id'])) $authorId = intval($object['author']['id']); else $authorId = null;
		if ($rowsArr == null) {
			return array("return" => false, "reason" => "");
		}
		if ($statusLabel == null || $statusValue == null) {
			return array("return" => false, "reason" => "");
		}
		if ($authorType == null || $authorId == null) {
			return array("return" => false, "reason" => "");
		}
		$countRequest = "SELECT `id`, `token`, `time`, `content` FROM `status` WHERE `".$statusLabel."` = '".$statusValue."' AND `author.type` = '".$authorType."' AND `author.id` = '".$authorId."';";
		$countQuery = mysqli_query($db, $countRequest);
		if (!$countQuery) {
			return array("return" => false, "reason" => "");
		}
		$countStatus = mysqli_num_rows($countQuery);
		if ($countStatus == 0) {
			return array("return" => false, "reason" => "");
		}
		$notifyArr = array();
		while ($statusFetch = mysqli_fetch_assoc($countQuery)) {
			$statusId = $statusFetch['id'];
			$statusToken = $statusFetch['token'];
			$setUpdate = null;
			$isChanged = $countEach = 0;
			foreach ($rowsArr as $key => $rowsArrThis) {
				if ($key == "content") {
					$rowsArrThis = $_tool->hash('encode', $_tool->convertDatabaseString($rowsArrThis), $statusToken.'::'.$_parameter->get('hash_feed_status_content'));
					if ($statusFetch['content'] == $rowsArrThis) {
						continue;
					}else {
						mysqli_query($db, "DELETE FROM `status_hashtag` WHERE `status.id` = '".$statusId."';");
						$hashtagMatch = preg_match_all($_parameter->get('regex_hashtag'), $rowsArrThis, $hashtagArr);
						if ($hashtagMatch) {
							$hashtagValue = 1;
							$hashtagArr = $hashtagArr[3];
							$hashtagCache = array();
							for ($i = 0; $i < count($hashtagArr); $i++) {
								if (!in_array($hashtagArr[$i], $hashtagCache)) {
									$hashtagCache[] = $hashtagArr[$i];
								}
							}
							foreach ($hashtagCache as $i => $hashtagCacheThis) {
								mysqli_query($db, "INSERT INTO `status_hashtag` (`id`, `status.id`, `hashtag`) VALUES (null, '".$statusId."', '".$hashtagCacheThis."');");
							}
							$hashtagCacheThis = null;
							mysqli_query($db, "UPDATE `status` SET `hashtag` = '1' WHERE `id` = '".$statusId."';");
						}else {
							mysqli_query($db, "UPDATE `status` SET `hashtag` = '0' WHERE `id` = '".$statusId."';");
						}
						//.
						mysqli_query($db, "INSERT INTO `status_edit` (`id`, `status.id`, `time`, `content`) VALUES (NULL, '".$statusId."', '".$statusFetch['time']."', '".$statusFetch['time']."');");
						$isChanged++;
					}
				}else if (preg_match("/^(private)+/", $key)) {
					$rowsArr[preg_replace("/(\-\>)/", ".", $key)] = $rowsArrThis;
					unset($rowsArr[$key]);
					if (!preg_match("/([0-9]+)/", $rowsArrThis)) {
						unset($rowsArr[$key]);
					}
					$isChanged++;
				}
				if ($countEach == 0) {
					$setUpdate .= "`{$key}` = '{$rowsArrThis}'";
				}else if($countEach > 0) {
					$setUpdate .= ", `{$key}` = '{$rowsArrThis}'";
				}
				$countEach++;
			}
			if ($isChanged == 0) {
				$notifyArr[] = array("return" => false, "reason" => "", "status" => array("label" => $statusLabel, "value" => $statusValue, "id" => $statusId));
			}else {
				$updateRequest = "UPDATE `status` SET {$setUpdate}, `edit` = '".time()."' WHERE `id` = '".$statusId."';";
				$updateQuery = mysqli_query($db, $updateRequest);
				if (!$updateQuery) {
					$notifyArr[] = array("return" => false, "reason" => "", "status" => array("label" => $statusLabel, "value" => $statusValue, "id" => $statusId));
				}else {
					$notifyArr[] = array("return" => true, "status" => array("label" => $statusLabel, "value" => $statusValue, "id" => $statusId));
				}
			}
		}
		return array("return" => true, "notify" => $notifyArr);
	}
	function status_remove ($object) {
		$_tool = $this->class['_tool'];
		$_media = $this->class['_media'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['label']) && (is_numeric($object['label']) || is_string($object['label']))) $statusLabel = $_tool->convertDatabaseString($object['label']); else $statusLabel = null;
		if (isset($object['value']) && (is_numeric($object['value']) || is_string($object['value']))) $statusValue = $_tool->convertDatabaseString($object['value']); else $statusValue = null;
		if (isset($object['private']) && is_bool($object['private'])) $private = $object['private']; else $private = true;
		if (isset($object['author'], $object['author']['type']) && is_string($object['author']['type'])) $authorType = $_tool->convertDatabaseString($object['author']['type']); else $authorType = null;
		if (isset($object['author'], $object['author']['id']) && is_numeric($object['author']['id'])) $authorId = intval($object['author']['id']); else $authorId = null;
		if (isset($object['user'], $object['user']['id']) && is_numeric($object['user']['id'])) $userId = intval($object['user']['id']); else $userId = null;
		if ($statusLabel == null || $statusValue == null) {
			return array("return" => false, "reason" => "");
		}
		if ($userId == null || $authorType == null || $authorId == null) {
			return array("return" => false, "reason" => "");
		}
		if ($private == true) {
			$statusRequest = "SELECT * FROM `status` WHERE `".$statusLabel."` = '".$statusValue."' AND ((`author.type` = '".$authorType."' AND `author.id` = '".$authorId."') OR `user.id` = '".$userId."');";
		}else {
			$statusRequest = "SELECT * FROM `status` WHERE `".$statusLabel."` = '".$statusValue."';";
		}
		$statusQuery = mysqli_query($db, $statusRequest);
		if (!$statusQuery) {
			return array("return" => false, "reason" => "");
		}
		$statusCount = mysqli_num_rows($statusQuery);
		if ($statusCount == 0) {
			return array("return" => false, "reason" => "");
		}else {
			$notifyArr = array();
			while ($statusFetch = mysqli_fetch_assoc($statusQuery)) {
				$deleteQuery = array();
				if ($statusFetch['type'] == "status") {
					//.
				}else if ($statusFetch['type'] == "photos") {
					$mediaQuery = mysqli_query($db, "SELECT * FROM `status_photos` WHERE `status.id` = '".$statusFetch['id']."'");
					while ($mediaFetch = mysqli_fetch_assoc($mediaQuery)) {
						$mediaRemove = $_media->data("photos", array("action" => "delete", "label" => "id", "value" => $mediaFetch['photos.id'], "private" => true, "author" => array("type" => $statusFetch['author.type'], "id" => $statusFetch['author.id'])));
					}
					$deleteQuery['photos'] = mysqli_query($db, "DELETE FROM `status_photos` WHERE `status.id` = '".$statusFetch['id']."'");
				}else if ($statusFetch['type'] == "music") {
					$mediaQuery = mysqli_query($db, "SELECT * FROM `status_music` WHERE `status.id` = '".$statusFetch['id']."'");
					while ($mediaFetch = mysqli_fetch_assoc($mediaQuery)) {
						$mediaRemove = $_media->data("music", array("action" => "delete", "label" => "id", "value" => $mediaFetch['music.id'], "private" => true, "author" => array("type" => $statusFetch['author.type'], "id" => $statusFetch['author.id'])));
					}
					$deleteQuery['music'] = mysqli_query($db, "DELETE FROM `status_music` WHERE `status.id` = '".$statusFetch['id']."'");
				}else if ($statusFetch['type'] == "videos") {
					$mediaQuery = mysqli_query($db, "SELECT * FROM `status_videos` WHERE `status.id` = '".$statusFetch['id']."'");
					while ($mediaFetch = mysqli_fetch_assoc($mediaQuery)) {
						$mediaRemove = $_media->data("videos", array("action" => "delete", "label" => "id", "value" => $mediaFetch['videos.id'], "private" => true, "author" => array("type" => $statusFetch['author.type'], "id" => $statusFetch['author.id'])));
					}
					$deleteQuery['video'] = mysqli_query($db, "DELETE FROM `status_videos` WHERE `status.id` = '".$statusFetch['id']."'");
				}else if ($statusFetch['type'] == "cited") {
					$mediaQuery = mysqli_query($db, "SELECT * FROM `status_cited` WHERE `status.id` = '".$statusFetch['id']."'");
					while ($mediaFetch = mysqli_fetch_assoc($mediaQuery)) {
						$mediaThisQuery = mysqli_query($db, "SELECT * FROM `cited` WHERE `id` = '{$mediaFetch['cited.id']}' AND `author.type` = '{$statusFetch['author.type']}' AND `author.id` = '{$statusFetch['author.id']}'");
						if ($mediaThisQuery) $mediaThisCount = mysqli_num_rows($mediaThisQuery); else $mediaThisCount = 0;
						if ($mediaThisCount == 0) {
							continue;
						}
						$mediaThisFetch = mysqli_fetch_assoc($mediaThisQuery);
						if ($mediaThisFetch['photos.id'] != "0") {
							$mediaRemove = $_media->data("photos", array("action" => "delete", "label" => "id", "value" => $mediaThisFetch['photos.id'], "private" => true, "author" => array("type" => $status['author.type'], "id" => $status['author.id'])));
						}
						mysqli_query($db, "DELETE FROM `cited` WHERE `id` = '{$mediaFetch['cited.id']}' AND `author.type` = '{$status['author.type']}' AND `author.id` = '{$status['author.id']}'");
					}
					$deleteQuery['cited'] = mysqli_query($db, "DELETE FROM `status_cited` WHERE `status.id` = '".$statusFetch['id']."'");
				}
				if ($statusFetch['edit'] != "0") {
					$deleteQuery['edit'] = mysqli_query($db, "DELETE FROM `status_edit` WHERE `status.id` = '".$statusFetch['id']."'");
				}
				if ($statusFetch['usertag'] != "0") {
					$deleteQuery['usertag'] = mysqli_query($db, "DELETE FROM `status_usertag` WHERE `status.id` = '".$statusFetch['id']."'");
				}
				if ($statusFetch['hashtag'] != "0") {
					$deleteQuery['hashtag'] = mysqli_query($db, "DELETE FROM `status_hashtag` WHERE `status.id` = '".$statusFetch['id']."'");
				}
				if ($statusFetch['places'] != "0") {
					$deleteQuery['places'] = mysqli_query($db, "DELETE FROM `status_places` WHERE `status.id` = '".$statusFetch['id']."'");
				}
				if ($statusFetch['mood'] != "0") {
					$deleteQuery['mood'] = mysqli_query($db, "DELETE FROM `status_mood` WHERE `status.id` = '".$statusFetch['id']."'");
				}
				$actionCountQuery = mysqli_query($db, "SELECT `id` FROM `status_actions` WHERE `status.id` = '".$statusFetch['id']."' LIMIT 1");
				if ($actionCountQuery) $actionCount = mysqli_num_rows($actionCountQuery); else $actionCount = 0;
				if ($actionCount > 0) {
					$deleteQuery['action'] = mysqli_query($db, "DELETE FROM `status_action` WHERE `status.id` = '".$statusFetch['id']."'");
				}
				$blockCountQuery = mysqli_query($db, "SELECT `id` FROM `status_block` WHERE `status.id` = '".$statusFetch['id']."' LIMIT 1");
				if ($blockCountQuery) $blockCount = mysqli_num_rows($blockCountQuery); else $blockCount = 0;
				if ($blockCount > 0) {
					$deleteQuery['block'] = mysqli_query($db, "DELETE FROM `status_block` WHERE `status.id` = '".$statusFetch['id']."'");
				}
				$followCountQuery = mysqli_query($db, "SELECT `id` FROM `status_follow` WHERE `status.id` = '".$statusFetch['id']."' LIMIT 1");
				if ($followCountQuery) $followCount = mysqli_num_rows($followCountQuery); else $followCount = 0;
				if ($followCount > 0) {
					$deleteQuery['follow'] = mysqli_query($db, "DELETE FROM `status_follow` WHERE `status.id` = '".$statusFetch['id']."'");
				}
				$favoriteCountQuery = mysqli_query($db, "SELECT `id` FROM `status_favorite` WHERE `status.id` = '".$statusFetch['id']."' LIMIT 1");
				if ($favoriteCountQuery) $favoriteCount = mysqli_num_rows($favoriteCountQuery); else $favoriteCount = 0;
				if ($favoriteCount > 0) {
					$deleteQuery['favorite'] = mysqli_query($db, "DELETE FROM `status_favorite` WHERE `status.id` = '".$statusFetch['id']."'");
				}
				$shareCountQuery = mysqli_query($db, "SELECT `id` FROM `status_share` WHERE `this.id` = '".$statusFetch['id']."' LIMIT 1");
				if ($shareCountQuery) $shareCount = mysqli_num_rows($shareCountQuery); else $shareCount = 0;
				if ($shareCount > 0) {
					$deleteQuery['share'] = mysqli_query($db, "DELETE FROM `status_share` WHERE `this.id` = '".$statusFetch['id']."'");
				}
				$inviteCountQuery = mysqli_query($db, "SELECT `id` FROM `status_invite` WHERE `status.id` = '".$statusFetch['id']."' LIMIT 1");
				if ($inviteCountQuery) $inviteCount = mysqli_num_rows($inviteCountQuery); else $inviteCount = 0;
				if ($inviteCount > 0) {
					$deleteQuery['invite'] = mysqli_query($db, "DELETE FROM `status_invite` WHERE `status.id` = '".$statusFetch['id']."'");
				}
				$commentCountQuery = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `status.id` = '".$statusFetch['id']."' OR `comment.id` IN (SELECT `id` FROM `status_comment` WHERE `status.id` = '".$statusFetch['id']."') LIMIT 1");
				if ($commentCountQuery) $commentCount = mysqli_num_rows($commentCountQuery); else $commentCount = 0;
				if ($commentCount > 0) {
					$commentQuery = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `status.id` = '".$statusFetch['id']."' OR `comment.id` IN (SELECT `id` FROM `status_comment` WHERE `status.id` = '".$statusFetch['id']."')");
					while ($commentFetch = mysqli_fetch_assoc($commentQuery)) {
						$deleteQuery['comment_favorite'] = mysqli_query($db, "DELETE FROM `status_comment_favorite` WHERE `comment.id` = '{$commentFetch['id']}'");
						$deleteQuery['comment'] = mysqli_query($db, "DELETE FROM `status_comment` WHERE `id` = '{$commentFetch['id']}'");
					}
				}
				$deleteQuery['status'] = mysqli_query($db, "DELETE FROM `status` WHERE `id` = '".$statusFetch['id']."'");
				foreach ($deleteQuery as $deleteKey => $deleteResult) {
					if ($deleteResult == false) {
						$haveErrors = true;
					}
				}
				if (!isset($haveErrors) || (isset($haveErrors) && $haveErrors != false)) {
					$notifyArr[] = array("return" => true, "status" => array("label" => $statusLabel, "value" => $statusValue, "id" => $statusFetch['id']));
				}else {
					$notifyArr[] = array("return" => false, "reason" => "", "query" => $deleteQuery, "status" => array("label" => $statusLabel, "value" => $statusValue, "id" => $statusFetch['id']));
				}
			}
			return array("return" => true, "notify" => $notifyArr);
		}
	}
	function status_add ($object) {
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_analysis = $this->class['_analysis'];
		$_media = $this->class['_media'];
		$_logs = $this->class['_logs'];
		$_sites = $this->class['_sites'];
		$_maps = $this->class['_maps'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['author'], $object['author']['type']) && is_string($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author'], $object['author']['id']) && is_numeric($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if (isset($object['user']) && is_array($object['user'])) $userInfo = $object['user']; else $userInfo = null;
		if ($authorType == null || $authorId == null) {
			return array("return" => false, "reason" => "3");
		}
		$status['token'] = hash('crc32', time().'::('.$authorType.'_'.$authorId.')'.'::'.rand());
		$status['display'] = hash('md5', $status['token']);
		$status['time'] = time();
		if (isset($object['date']) && (is_string($object['date']) || is_numeric($object['date']))) {
			if (is_string($object['date'])) {
				$status['date'] = $object['date'];
			}else {
				$status['date'] = $_tool->convertDatetime($object['date'])['stamp'];
			}
		}else {
			$status['date'] = $status['time'];
		}
		$status['edit'] = false;
		if (isset($object['type']) && is_string($object['type'])) $status['type'] = $object['type']; else $status['type'] = "status";
		if (isset($object['private'], $object['private']['view']) && is_numeric($object['private']['view'])) $status['private']['view'] = $object['private']['view']; else $status['private']['view'] = $userInfo['private.status.view'];
		if (isset($object['private'], $object['private']['comment']) && is_numeric($object['private']['comment'])) $status['private']['comment'] = $object['private']['comment']; else $status['private']['comment'] = $userInfo['private.status.comment'];
		if (isset($object['private'], $object['private']['share']) && is_numeric($object['private']['share'])) $status['private']['share'] = $object['private']['share']; else $status['private']['share'] = $userInfo['private.status.share'];
		if (isset($object['content']) && (is_string($object['content']) || is_numeric($object['content']))) $status['content'] = $object['content']; else $status['content'] = null;
		$hashtagMatch = preg_match_all($this->class['_parameter']->get('regex_hashtag'), $status['content'], $hashtagArr);
		if ($hashtagMatch) {
			$status['hashtag'] = 1;
			$hashtagArr = $hashtagArr[3];
		}else {
			$status['hashtag'] = 0;
		}
		if (isset($object['usertag']) && is_array($object['usertag']) && count($object['usertag']) > 0) $status['usertag'] = 1; else $status['usertag'] = 0;
		if (isset($object['places']) && is_array($object['places']) && count($object['places']) > 0) $status['places'] = 1; else $status['places'] = 0;
		if (isset($object['mood']) && is_array($object['mood']) && count($object['mood']) > 0) $status['mood'] = 1; else $status['mood'] = 0;
		$status['link'] = $status['share'] = 0;
		$status['contentHashed'] = $_tool->hash('encode', $_tool->convertDatabaseString($status['content']), $status['token'].'::'.$_parameter->get('hash_feed_status_content'));
		$insertRequest = "
		INSERT INTO 
		`status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) 
		VALUES 
		(null, '{$status['token']}', '{$status['display']}', '{$status['time']}', '{$status['date']}', '{$status['edit']}', '{$userInfo['id']}', '{$authorType}', '{$authorId}', '{$status['private']['view']}', '{$status['private']['comment']}', '{$status['private']['share']}', '{$status['type']}', '{$status['contentHashed']}', '{$status['usertag']}', '{$status['hashtag']}', '{$status['places']}', '{$status['mood']}', '{$status['link']}', '{$status['share']}');
		";
		$insertQuery = mysqli_query($db, $insertRequest);
		$status['id'] = mysqli_insert_id($db);
		if ($status['usertag'] > 0) {
			foreach ($object['usertag'] as $usertagThis) {
				if ($usertagThis['type'] == "users") {
					$usertagThis['type'] = "user";
				}
				if (isset($usertagThis['type'], $usertagThis['id']) && is_string($usertagThis['type']) && is_string($usertagThis['id'])) {
					mysqli_query($db, "INSERT INTO `status_usertag` (`id`, `status.id`, `guy.type`, `guy.id`) VALUES (null, '{$status['id']}', '{$usertagThis['type']}', '{$usertagThis['id']}')");
				}else {
					continue;
				}
			}
		}
		if (isset($status['hashtag']) && $status['hashtag'] > 0) {
			$hashtagCache = array();
			for ($i = 0; $i < count($hashtagArr); $i++) {
				if (!in_array($hashtagArr[$i], $hashtagCache)) {
					$hashtagCache[] = strtolower($hashtagArr[$i]);
				}
			}
			foreach ($hashtagCache as $i => $hashtagCacheThis) {
				mysqli_query($db, "INSERT INTO `status_hashtag` (`id`, `status.id`, `hashtag`) VALUES (null, '{$status['id']}', '{$hashtagCacheThis}')");
			}
		}
		if (isset($status['places']) && $status['places'] > 0) {
			$placesArr = array();
			if (isset($object['places']['id']) && is_numeric($object['places']['id'])) {
				$getPlacesId = $_maps->places(array("action" => "get", "label" => "id", "value" => $object['places']['id'], "limit" => "LIMIT 1"));
				if (isset($getPlacesId['return'], $getPlacesId['data'], $getPlacesId['data'][0]) && $getPlacesId['return'] == true) {
					$placesArr['value'] = $getPlacesId['data'][0]['id'];
					$placesArr['insert'] = true;
				}
			}else if (isset($object['places']['display']) && is_string($object['places']['display'])) {
				$getPlacesId = $_maps->places(array("action" => "get", "label" => "display", "value" => $object['places']['display'], "limit" => "LIMIT 1"));
				if (isset($getPlacesId['return'], $getPlacesId['data'], $getPlacesId['data'][0]) && $getPlacesId['return'] == true) {
					$placesArr['value'] = $getPlacesId['data'][0]['id'];
					$placesArr['insert'] = true;
				}
			}else if (isset($object['places']['address']) && is_string($object['places']['address'])) {
				$placesArr['value'] = $object['places']['address'];
				$placesArr['insert'] = true;
			}
			if (isset($placesArr['insert']) && $placesArr['insert'] == true) {
				mysqli_query($db, "INSERT INTO `status_places` (`id`, `status.id`, `value`) VALUES (null, '{$status['id']}', '{$placesArr['value']}');");
			}
		}
		if (isset($status['mood']) && $status['mood'] > 0) {
			$moodArr = array();
			if (isset($object['mood']['code']) && is_string($object['mood']['code'])) {
				$moodArr['type'] = 1;
				$moodArr['value'] = $object['mood']['code'];
				$moodArr['insert'] = true;
			}else if (isset($object['mood']['text']) && is_string($object['mood']['text'])) {
				$moodArr['type'] = 2;
				$moodArr['value'] = $object['mood']['text'];
				$moodArr['insert'] = true;
			}
			if (isset($moodArr['insert']) && $moodArr['insert'] == true) {
				mysqli_query($db, "INSERT INTO `status_mood` (`id`, `status.id`, `type`, `value`) VALUES (null, '{$status['id']}', '{$moodArr['type']}', '{$moodArr['value']}')");
			}
		}
		mysqli_query($db, "INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES (null, '{$status['time']}', '{$status['id']}', '{$authorType}', '{$authorId}')");
		$_logs->actions(array("action" => "add", "type" => "follow", "guy" => array("type" => $authorType, "id" => $authorId), "things" => array("type" => "status", "id" => $status['id']), "duplicate" => false));
		if ($status['type'] == "status") {
			if (isset($object['link']) && $object['link'] != false && ((isset($object['link']['display']) && is_string($object['link']['display'])) || (isset($object['link']['url']) && is_string($object['link']['url'])))) {
				if (isset($object['link']['display'])) {
					$getSiteinfoOptions = array(
						"type" => "info",
						"action" => "get",
						"label" => "display",
						"value" => $object['link']['display'],
						"limit" => "LIMIT 1"
					);
					$getSiteInfo = $_sites->data($getSiteinfoOptions);
					if (isset($getSiteInfo['return'], $getSiteInfo['data'], $getSiteInfo['data'][0], $getSiteInfo['data'][0]['id']) && $getSiteInfo['return'] == true) {
						$siteinfoId = $getSiteInfo['data'][0]['id'];
					}
				}else if (isset($object['link']['url'])) {
					$siteExtractOptions = array(
						"url" => $object['link']['url']
					);
					$getSiteExtract = $_sites->extract($siteExtractOptions);
					if (isset($getSiteExtract['return'], $getSiteExtract['data'], $getSiteExtract['data']['id']) && $getSiteExtract['return'] == true) {
						$siteinfoId = $getSiteExtract['data']['id'];
					}
				}
				if (isset($siteinfoId) && is_numeric($siteinfoId)) {
					mysqli_query($db, "UPDATE `status` SET `link` = '1' WHERE `id` = '{$status['id']}'");
					mysqli_query($db, "INSERT INTO `status_link` (`id`, `status.id`, `sites.id`) VALUES (null, '{$status['id']}', '{$siteinfoId}')");
				}
			}else if (isset($object['share']) && $object['share'] != false) {
				if (isset($object['share']['display']) && is_string($object['share']['display'])) {
					$statusShareQuery = mysqli_query($db ,"SELECT `id` FROM `status` WHERE `display` = '".$object['share']['display']."' LIMIT 1;");
					if (!$statusShareQuery) {
						//.
					}else {
						$statusShareId = mysqli_fetch_assoc($statusShareQuery)['id'];
						if (isset($statusShareId) && $statusShareId > 0) {
							mysqli_query($db, "UPDATE `status` SET `share` = '1' WHERE `id` = '".$status['id']."';");
							mysqli_query($db, "INSERT INTO `status_share` (`id`, `time`, `status.id`, `this.id`, `guy.type`, `guy.id`) VALUES (null, '".time()."', '".$statusShareId."', '".$status['id']."', '".$authorType."', '".$authorId."');");
						}
					}
				}else if (isset($object['share']['id']) && is_numeric($object['share']['id'])) {
					$statusShareQuery = mysqli_query($db ,"SELECT `id` FROM `status` WHERE `id` = '".$object['share']['id']."' LIMIT 1;");
					if (!$statusShareQuery) {
						//.
					}else {
						$statusShareId = mysqli_fetch_assoc($statusShareQuery)['id'];
						if (isset($statusShareId) && $statusShareId > 0) {
							mysqli_query($db, "UPDATE `status` SET `share` = '1' WHERE `id` = '".$status['id']."';");
							mysqli_query($db, "INSERT INTO `status_share` (`id`, `time`, `status.id`, `this.id`, `guy.type`, `guy.id`) VALUES (null, '".time()."', '".$statusShareId."', '".$status['id']."', '".$authorType."', '".$authorId."');");
						}
					}
				}
			}
		}else if ($status['type'] == 2 || $status['type'] == "photos") {
			if (isset($object['media']['file']) && count($object['media']['file']) > 0) {
				if (is_array($object['media']['scrapbook']) && isset($object['media']['scrapbook']['value'])) {
					if ($object['media']['scrapbook']['value'] == true) {
						if (isset($object['media']['scrapbook']['data']['name']['display']) && $object['media']['scrapbook']['data']['name']['display'] != null) {
							$scrapbookDisplay = $object['media']['scrapbook']['data']['name']['display'];
							$scrapbookQuery = mysqli_query($db, "SELECT `id` FROM `photos_scrapbook` WHERE `display` = '{$scrapbookDisplay}' AND `author.type` = '{$authorType}' AND `author.id` = '{$authorId}'");
							if ($scrapbookQuery && mysqli_num_rows($scrapbookQuery) > 0) {
								$scrapbookId = mysqli_fetch_assoc($scrapbookQuery)['id'];
							}else {
								$scrapbookId = false;
							}
						}else if (isset($object['media']['scrapbook']['data']['name']) && $object['media']['scrapbook']['data']['name'] != null) {
							$scrapbookName = $_tool->convertDatabaseString($object['media']['scrapbook']['data']['name']);
							$scrapbookQuery = mysqli_query($db, "SELECT `id` FROM `photos_scrapbook` WHERE `name` = '{$scrapbookName}' AND `author.type` = '{$authorType}' AND `author.id` = '{$authorId}'");
							if ($scrapbookQuery && mysqli_num_rows($scrapbookQuery) > 0) {
								$scrapbookId = mysqli_fetch_assoc($scrapbookQuery)['id'];
							}else {
								if (isset($object['media']['scrapbook']['data']['places']) && is_array($object['media']['scrapbook']['data']['places']) && $object['media']['scrapbook']['data']['places'] != null) {
									if (isset($object['media']['scrapbook']['data']['places']['location']) && is_string($object['media']['scrapbook']['data']['places']['location'])) {
										$object['media']['scrapbook']['data']['places']['location'] = $_tool->stringFloat("10,6", $object['media']['scrapbook']['data']['places']['location'], 2);
										$scrapbookPlaceGet = $_maps->places(true, array("type" => "get", "rows" => "`id`", "code" => $object['media']['scrapbook']['data']['places']['code']));
										if (isset($scrapbookPlaceGet['return']) && $scrapbookPlaceGet['return'] == true) {
											$scrapbookPlaces['value'] = $scrapbookPlaceGet['data']['id'];
										}else {
											$scrapbookPlacesAdd = $_maps->places(true, array("type" => "add", "code" => $object['media']['scrapbook']['data']['places']['code']));
											if (isset($scrapbookPlacesAdd['return']) && $scrapbookPlacesAdd['return'] == true) {
												$scrapbookPlaces['value'] = $scrapbookPlacesAdd['data']['id'];
											}
										}
										$scrapbookPlaces['type'] = 1;
									}else if (isset($object['media']['scrapbook']['data']['places']['address']) && is_string($object['media']['scrapbook']['data']['places']['address'])) {
										$scrapbookPlaces['type'] = 2;
										$scrapbookPlaces['value'] = $object['media']['scrapbook']['data']['places']['address'];
									}
								}else {
									$scrapbookPlaces['type'] = 0;
									$scrapbookPlaces['value'] = null;
								}
								if (isset($object['media']['scrapbook']['data']['name']) && is_string($object['media']['scrapbook']['data']['name'])) {
									$scrapbookName = $_tool->convertDatabaseString($object['media']['scrapbook']['data']['name']);
								}else {
									$scrapbookName = null;
								}
								if (isset($object['media']['scrapbook']['data']['description']) && is_string($object['media']['scrapbook']['data']['description'])) {
									$scrapbookDescription = $_tool->convertDatabaseString($object['media']['scrapbook']['data']['description']);
								}else {
									$scrapbookDescription = null;
								}
								$scrapbookToken = hash('crc32', time().'::'.rand().'::('.$authorType.'_'.$authorId.')');
								$scrapbookDisplay = hash('md5', $scrapbookToken);
								$scrapbookInsertRequest = "
								INSERT INTO `photos_scrapbook` 
								(`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`) 
								VALUES 
								(null, '{$authorType}', '{$authorId}', '{$scrapbookToken}', '{$scrapbookDisplay}', '{$_tool->timeNow()}', '{$scrapbookName}', '{$scrapbookPlaces['type']}', '{$scrapbookPlaces['value']}', '{$scrapbookDescription}');
								";
								mysqli_query($db, $scrapbookInsertRequest);
								$scrapbookId = mysqli_insert_id($db);
							}
						}else {
							$scrapbookId = false;
						}
					}else {
						$scrapbookId = false;
					}
				}else {
					$scrapbookId = false;
				}
				$photosAttachments = false;
				$photosPublic = false;
				foreach ($object['media']['file'] as $key => $mediaFileThis) {
					$uploadMediaFile = $_media->cache("photos", array("action" => "upload", "secret" => $mediaFileThis['secret'], "name" => $mediaFileThis['name'], "scrapbook" => $scrapbookId, "multiple" => true, "attachments" => $photosAttachments, "public" => $photosPublic));
					if (isset($uploadMediaFile['return'], $uploadMediaFile['id']) && $uploadMediaFile['return'] == true && is_numeric($uploadMediaFile['id'])) {
						mysqli_query($db, "INSERT INTO `status_photos` (`id`, `status.id`, `photos.id`) VALUES (null, '{$status['id']}', '{$uploadMediaFile['id']}')");
					}else {
						continue;
					}
				}
			}else {
				mysqli_query($db, "UPDATE `status` SET `type` = 'status' WHERE `id` = '{$status['id']}'");
			}
		}else if ($status['type'] == 3 || $status['type'] == "music") {
			if (isset($object['media']['file']) && count($object['media']['file']) > 0) {
				if (isset($object['media']['info']['data']['album'])) {
					$albumArr = $object['media']['info']['data']['album'];
					if (is_array($albumArr) && isset($albumArr['display']) && $albumArr['display'] != null) {
						$albumDisplay = $albumArr['display'];
						$albumQuery = mysqli_query($db, "SELECT `id` FROM `music_album` WHERE `display` = '{$albumDisplay}' AND `author.type` = '{$authorType}' AND `author.id` = '{$authorId}'");
						if ($albumQuery && mysqli_num_rows($albumQuery) > 0) {
							$albumId = mysqli_fetch_assoc($album_query)['id'];
						}else {
							$albumId = false;
						}
					}else if (!is_array($albumArr) && $albumArr != null) {
						$albumName = $_tool->convertDatabaseString($albumArr);
						$albumQuery = mysqli_query($db, "SELECT `id` FROM `music_album` WHERE `name` = '{$albumName}' AND `author.type` = '{$authorType}' AND `author.id` = '{$authorId}'");
						if ($albumQuery && mysqli_num_rows($albumQuery) > 0) {
							$albumId = mysqli_fetch_assoc($albumQuery)['id'];
						}else {
							$albumPlaces['type'] = 0;
							$albumPlaces['id'] = null;
							$albumDescription = null;
							$albumToken = hash('crc32', time().'::'.rand().'::('.$authorType.'_'.$authorId.')');
							$albumDisplay = hash('md5', $albumToken);
							mysqli_query($db, "INSERT INTO `music_album` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`) VALUES (null, '{$authorType}', '{$authorId}', '{$albumToken}', '{$albumDisplay}', '{$_tool->timeNow()}', '{$albumName}', '{$albumPlaces['type']}', '{$albumPlaces['id']}', '{$albumDescription}');");
							$albumId = mysqli_insert_id($db);
						}
					}else {
						$albumId = false;
					}
				}else {
					$albumId = false;
				}
				foreach ($object['media']['file'] as $key => $mediaFileThis) {
					$info = $object['media']['info']['data'];
					$uploadMediaFile = $_media->cache("music", array("action" => "upload", "secret" => $mediaFileThis['secret'], "name" => $mediaFileThis['name'], "album" => $albumId, "info" => $info));
					if (isset($uploadMediaFile['return']) && $uploadMediaFile['return'] == true && is_numeric($uploadMediaFile['id'])) {
						mysqli_query($db, "INSERT INTO `status_music` (`id`, `status.id`, `music.id`) VALUES (null, '{$status['id']}', '{$uploadMediaFile['id']}');");
					}
				}
			}else {
				mysqli_query($db, "UPDATE `status` SET `type` = 'status' WHERE `id` = '{$status['id']}'");
			}
		}else if ($status['type'] == 3 || $status['type'] == "videos") {
			if (isset($object['media']['file']) && count($object['media']['file']) > 0) {
				if (isset($object['media']['info']['data']['playlist'])) {
					$playlistArr = $object['media']['info']['data']['playlist'];
					if (is_array($playlistArr) && isset($playlistArr['display']) && $playlistArr['display'] != null) {
						$playlistDisplay = $playlistArr['display'];
						$playlistQuery = mysqli_query($db, "SELECT `id` FROM `videos_playlist` WHERE `display` = '{$playlistDisplay}' AND `author.type` = '{$authorType}' AND `author.id` = '{$authorId}'");
						if ($playlistQuery && mysqli_num_rows($playlistQuery) > 0) {
							$playlistId = mysqli_fetch_assoc($playlistQuery)['id'];
						}else {
							$playlistId = false;
						}
					}else if (!is_array($playlistArr) && $playlistArr != null) {
						$playlistName = $_tool->convertDatabaseString($playlistArr);
						$playlistQuery = mysqli_query($db, "SELECT `id` FROM `videos_playlist` WHERE `name` = '{$playlistName}' AND `author.type` = '{$authorType}' AND `author.id` = '{$authorId}'");
						if ($playlistQuery && mysqli_num_rows($playlistQuery) > 0) {
							$playlistId = mysqli_fetch_assoc($playlistQuery)['id'];
						}else {
							$playlistPlaces['type'] = 0;
							$playlistPlaces['id'] = null;
							$playlistDescription = null;
							$playlistToken = hash('crc32', time().'::'.rand().'::('.$authorType.'_'.$authorId.')');
							$playlistDisplay = hash('md5', $playlistToken);
							mysqli_query($db, "INSERT INTO `videos_playlist` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`) VALUES (null, '{$authorType}', '{$authorId}', '{$playlistToken}', '{$playlistDisplay}', '{$_tool->timeNow()}', '{$playlistName}', '{$playlistPlaces['type']}', '{$playlistPlaces['id']}', '{$playlistDescription}');");
							$playlistId = mysqli_insert_id($db);
						}
					}else {
						$playlistId = false;
					}
				}else {
					$playlistId = false;
				}
				foreach ($object['media']['file'] as $key => $mediaFileThis) {
					$info = $object['media']['info']['data'];
					$uploadMediaFile = $_media->cache("videos", array("action" => "upload", "secret" => $mediaFileThis['secret'], "name" => $mediaFileThis['name'], "playlist" => $playlistId, "info" => $info));
					if (isset($uploadMediaFile['return']) && $uploadMediaFile['return'] == true && is_numeric($uploadMediaFile['id'])) {
						mysqli_query($db, "INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES (null, '{$status['id']}', '{$uploadMediaFile['id']}');");
					}
				}
			}else {
				mysqli_query($db, "UPDATE `status` SET `type` = 'status' WHERE `id` = '{$status['id']}'");
			}
		}else if ($status['type'] == 5 || $status['type'] == "cited") {
			if (isset($object['media']['info']['data']) && is_array($object['media']['info']['data'])) {
				$mediaData = $object['media']['info']['data'];
				if (!isset($mediaData['author']) || !is_string($mediaData['author'])) {
					$mediaData['author'] = "-";
				}
				if (!isset($mediaData['quote']) || !is_string($mediaData['quote'])) {
					$mediaData['quote'] = "-";
				}
				$mediaData['photos.id'] = $_parameter->get('cited_photosID_default');
				$citedToken = hash('crc32', time().'::'.rand().'::('.$authorType.'_'.$authorId.')');
				$citedDisplay = hash('md5', $citedToken);
				mysqli_query($db, "INSERT INTO `cited` (`id`, `token`, `display`, `author.type`, `author.id`, `time`, `author`, `quote`, `photos.id`) VALUES (null, '{$citedToken}', '{$citedDisplay}', '{$authorType}', '{$authorId}', '{$_tool->timeNow()}', '{$media_data['author']}', '{$mediaData['quote']}', '{$mediaData['photos.id']}');");
				$citedId = mysqli_insert_id($db);
				mysqli_query($db, "INSERT INTO `status_cited` (`id`, `status.id`, `cited.id`) VALUES (null, '{$status['id']}', '{$citedId}')");
				if (isset($object['media']['file']) && count($object['media']['file']) > 0) {
					$scrapbook = 0;
					$mediaFileThis = $object['media']['file'][0];
					$uploadMediaFile = $_media->cache("photos", array("action" => "upload", "secret" => $mediaFileThis['secret'], "name" => $mediaFileThis['name'], "scrapbook" => $scrapbook, "multiple" => false, "attachments" => false, "public" => false, "maxsize" => array("width" => $_parameter->get('cited_photosSize_length'))));
					if (isset($uploadMediaFile['return']) && $uploadMediaFile['return'] == true && is_numeric($uploadMediaFile['id'])) {
						mysqli_query($db, "UPDATE `cited` SET `photos.id` = '{$uploadMediaFile['id']}' WHERE `id` = '{$cited['id']}'");
					}
				}
			}else {
				mysqli_query($db, "UPDATE `status` SET `type` = 'status' WHERE `id` = '{$status['id']}'");
			}
		}
		if (isset($statusShareId) && is_numeric($statusShareId) && $statusShareId > 0) {
			$_logs->actions(array("action" => "add", "type" => "share", "guy" => array("type" => $authorType, "id" => $authorId), "things" => array("type" => "status", "id" => $statusShareId), "object" => array("type" => "status", "id" => $status['id']), "duplicate" => false));
		}else {
			$_logs->actions(array("action" => "add", "type" => "add", "guy" => array("type" => $authorType, "id" => $authorId), "object" => array("type" => "status", "id" => $status['id']), "duplicate" => false));
		}
		return array("return" => true);
	}
	function status_get ($object) {
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_analysis = $this->class['_analysis'];
		$_media = $this->class['_media'];
		$_logs = $this->class['_logs'];
		$_language = $this->class['_language'];
		$_user = $this->class['_user'];
		$_sites = $this->class['_sites'];
		$_maps = $this->class['_maps'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['query']) && is_string($object['query'])) $queryRequest = $object['query']; else $queryRequest = null;
		if (isset($object['return']) && is_string($object['return'])) $returnType = strip_tags($object['return']); else $returnType = null;
		if (isset($object['class']) && is_string($object['class'])) $className = strip_tags($object['class']); else $className = null;
		if (isset($object['media']) && is_bool($object['media'])) $getMedia = $object['media']; else $getMedia = true;
		if (isset($object['shared']) && is_bool($object['shared'])) $isShared = $object['shared']; else $isShared = false;
		if ($queryRequest == null || $returnType == null) {
			return array("return" => false, "reason" => "");
		}
		if (isset($object['guy'], $object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}
		$query = mysqli_query($db, $queryRequest);
		if ($query) $count = mysqli_num_rows($query); else $count = 0;
		if ($count == 0) {
			return array(
				"return" => true, 
				"count" => 0, 
				"data" => array()
			);
		}else {
			while ($status = mysqli_fetch_assoc($query)) {
				$author['type'] = $status['author.type'];
				$author['id'] = $status['author.id'];
				$info['id'] = $status['id'];
				$info['type'] = $status['type'];
				$info['token'] = $status['token'];
				$info['display'] = $status['display'];
				$info['link'] = $_tool->links('feed/status/'.$info['display']);
				$info['author'] = array("type" => $author['type'], "id" => $author['id']);
				if ($author['type'] == "user") {
					$getInfo = $_user->profile(array("action" => "get", "rows" => ["avatar.small", "cover.small", "fullname", "username", "link", "verified"], "label" => "id", "value" => $status['author.id']));
					if (isset($getInfo['return'], $getInfo['data'][0]) && $getInfo['return'] == true) {
						$author['avatar'] = $getInfo['data'][0]['avatar.small'];
						$author['cover'] = $getInfo['data'][0]['cover.small'];
						$author['name'] = $getInfo['data'][0]['fullname'];
						$author['tag'] = $getInfo['data'][0]['username'];
						$author['link'] = $getInfo['data'][0]['link'];
						$author['verified'] = $getInfo['data'][0]['verified'];
					}else {
						continue;
					}
				}
				if ($author['type'] != "user") {
					$from['status'] = true;
				}else {
					$from['status'] = false;
				}
				if ($status['edit'] == 0) {
					$edit['status'] = false;
				}else {
					$edit['status'] = true;
					$edit['time']['stamp'] = $status['edit'];
					$edit['time']['ago'] = $_tool->agoDatetime($status['edit'], 'ago');
					$edit['time']['tip'] = $_tool->agoDatetime($status['edit'], 'tip');
					$edit['time']['json'] = json_encode(array("stamp" => $edit['time']['stamp'], "length" => "1"));
				}
				if ($status['places'] == 0) {
					$places = null;
				}else if ($status['places'] == 1) {
					$placesQuery = mysqli_query($db, "SELECT `value` FROM `status_places` WHERE `status.id` = '".$status['id']."' LIMIT 1;");
					if (!$placesQuery) {
						//.
					}else {
						if (mysqli_num_rows($placesQuery) == 0) {
							$places = null;
						}else {
							$places = mysqli_fetch_assoc($placesQuery);
							if (is_numeric($places['value'])) {
								$getPlacesInfo = $_maps->places(array("action" => "get", "label" => "id", "value" => $places['value'], "limit" => "LIMIT 1"));
								if (isset($getPlacesInfo['return'], $getPlacesInfo['data'], $getPlacesInfo['data'][0]) && $getPlacesInfo['return'] == true) {
									$places = $getPlacesInfo['data'][0];
									$places['by'] = 1;
								}else {
									$places['name'] = $places['value'];
									$places['by'] = 2;
								}
							}else {
								$places['name'] = $places['value'];
								$places['by'] = 2;
							}
						}
					}
				}
				if (!isset($status['date']) || $status['date'] == null || $status['date'] == 0) {
					$status['date'] = $status['time'];
				}
				$date['stamp'] = $status['date'];
				$date['ago'] = $_tool->agoDatetime($status['date'], 'ago');
				$date['tip'] = $_tool->agoDatetime($status['date'], 'tip');
				$date['json'] = json_encode(array("stamp" => $date['stamp'], "length" => "1"));
				$private['view']['text'] = $_language->text("private_{$status['private.view']}_text", "ucfirst");
				$private['view']['tip'] = $_language->text("private_{$status['private.view']}_tip", "ucfirst");
				$private['view']['stamp'] = $status['private.view'];
				$private['view']['json'] = json_encode(array("stamp" => $private['view']['stamp']));
				$private['comment']['text'] = $_language->text("private_{$status['private.comment']}_text", "ucfirst");
				$private['comment']['tip'] = $_language->text("private_{$status['private.comment']}_tip", "ucfirst");
				$private['comment']['stamp'] = $status['private.comment'];
				$private['comment']['json'] = json_encode(array("stamp" => $private['comment']['stamp']));
				$private['share']['text'] = $_language->text("private_{$status['private.share']}_text", "ucfirst");
				$private['share']['tip'] = $_language->text("private_{$status['private.share']}_tip", "ucfirst");
				$private['share']['stamp'] = $status['private.share'];
				$private['share']['json'] = json_encode(array("stamp" => $private['share']['stamp']));
				if ($status['mood'] == 0) {
					$content['mood'] = null;
				}else {
					$moodQuery = mysqli_query($db, "SELECT * FROM `status_mood` WHERE `status.id` = '".$status['id']."' LIMIT 1;");
					if ($moodQuery && mysqli_num_rows($moodQuery) == 0) {
						$content['mood'] = null;
					}else {
						$moodFetch = mysqli_fetch_assoc($moodQuery);
						if ($moodFetch['type'] == 1) {
							if (preg_match("/^(\[feel\])/", $moodFetch['value'])) {
								$content['mood']['push'] = $_language->text('feeling');
							}else {
								$content['mood']['push'] = null;
							}
							$content['mood']['text'] = $content['mood']['push'].' '.$_language->text($moodFetch['value']);
							$content['mood']['icon'] = null;
						}else if ($moodFetch['type'] == 2) {
							$content['mood']['text'] = $_tool->convertDatabaseString($moodFetch['value']);
							$content['mood']['icon'] = null;
						}else {
							$content['mood'] = null;
						}
					}
				}
				if ($status['usertag'] == 0) {
					$content['usertag'] = null;
				}else {
					$usertagQuery = mysqli_query($db, "SELECT * FROM `status_usertag` WHERE `status.id` = '".$status['id']."'");
					if ($usertagQuery && mysqli_num_rows($usertagQuery) == 0) {
						$content['usertag'] = null;
					}else {
						while ($usertagFetch = mysqli_fetch_assoc($usertagQuery)) {
							if ($usertagFetch['guy.type'] == "user" || $usertagFetch['guy.type'] == "user") {
								$usertagUser = $_user->profile(array("rows" => "`id`, `fullname`, `username`, `link`", "label" => "id", "value" => $usertagFetch['guy.id']));
								if (isset($usertagUser['return'], $usertagUser['data'][0]) && $usertagUser['return'] == true) {
									$content['usertag'][] = array(
										"id" => $usertagUser['data'][0]['id'],
										"name" => $usertagUser['data'][0]['fullname'],
										"tag" => $usertagUser['data'][0]['username'],
										"link" => $usertagUser['data'][0]['link']
									);
								}else {
									continue;
								}
							}else {
								continue;
							}
						}
					}
				}
				$content['string'] = $_tool->hash('decode', $status['content'], $status['token'].'::'.$_parameter->get('hash_feed_status_content'));
				$content['text'] = $_tool->parseContent($content['string']);
				if ($getMedia == true && $info['type'] == "status" && $status['link'] == 1) {
					$mediaQuery = mysqli_query($db, "SELECT * FROM `status_link` WHERE `status.id` = '".$status['id']."' LIMIT 1");
					if (!$mediaQuery) {
						//.
					}else {
						if (mysqli_num_rows($mediaQuery) == 0) {
							$content['media'] = null;
						}else {
							$content['media'] = array();
							$content['media']['type'] = "link";
							while ($mediaData = mysqli_fetch_assoc($mediaQuery)) {
								$mediaFetch = $_sites->data(array("type" => "info", "action" => "get", "label" => "id", "value" => $mediaData['sites.id'], "limit" => "LIMIT 1"));
								if (isset($mediaFetch['return'], $mediaFetch['data'], $mediaFetch['data'][0]) && $mediaFetch['return'] == true) {
									$mediaFetchData = $mediaFetch['data'][0];
									if (isset($mediaFetchData['thumbnail']) && is_string($mediaFetchData['thumbnail']) && $mediaFetchData['thumbnail'] != "0") {
										$mediaFetchData['thumbnail'] = $_tool->links($mediaFetchData['thumbnail']);
									}else {
										$mediaFetchData['thumbnail'] = null;
									}
									$mediaDataArr = array(
										"display" => $mediaFetchData['display'],
										"sub" => $mediaFetchData['sub'],
										"host" => $mediaFetchData['host'],
										"title" => $_tool->convertDisplayString($mediaFetchData['title']),
										"description" => $_tool->convertDisplayString($mediaFetchData['description']),
										"thumbnail" => $mediaFetchData['thumbnail'],
										"url" => $_tool->links('sites/direct/'.$_tool->hash('encode', $mediaFetchData['url'], $_parameter->get('hash_sites_direct'))),
										"secure" => $mediaFetchData['secure'],
										"share" => array(
											"link" => $_tool->links('link/embed/'.$mediaFetchData['display'])
										)
									);
									/*
									$getMediaEmbed = $_sites->embed(array("url" => $mediaFetchData['url'], "class" => "mediaEmbed", "size" => array("width" => "auto", "height" => "auto")));
									if (isset($getMediaEmbed['return'], $getMediaEmbed['data']) && $getMediaEmbed['return'] == true) {
										$mediaDataArr['embed'] = $getMediaEmbed['data']['embed'];
									}
									*/
									$content['media']['data'][] = $mediaDataArr;
									$mediaDataArr = null;
								}
							}
						}
					}
				}else if ($getMedia == true && $info['type'] == "status" && $status['share'] == 1 && $isShared == false) {
					$mediaRequest = "SELECT * FROM `status` WHERE `id` IN (SELECT DISTINCT `status.id` FROM `status_share` WHERE `this.id` = '".$status['id']."') LIMIT 1;";
					$mediaQuery = mysqli_query($db, $mediaRequest);
					if ($mediaQuery && mysqli_num_rows($mediaQuery) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "share";
						$content['media']['get'] = $this->status_get(array("return" => "json", "query" => $mediaRequest, "media" => true, "guy" => array("type" => $guyType, "id" => $guyId), "shared" => true));
						if (isset($content['media']['get']['return']) && $content['media']['get']['return'] == true) {
							if (isset($content['media']['get']['data'], $content['media']['get']['data'][0]) && is_array($content['media']['get']['data'][0])) {
								$content['media']['data'][] = array(
									"exists" => true, 
									"status" => array(
										// "info" => array_merge(array("link" => $_tool->links('feed/status/'.$content['media']['get']['data'][0]['info']['display'])), $content['media']['get']['data'][0]['info']), 
										"info" => $content['media']['get']['data'][0]['info'], 
										"date" => $content['media']['get']['data'][0]['date'], 
										"author" => $content['media']['get']['data'][0]['author'],
										"content" => $content['media']['get']['data'][0]['content']
									)
								);
							}else {
								$content['media']['data'][] = array(
									"exists" => false, 
									"status" => null
								);
							}
						}else {
							$content['media']['data'][] = array(
								"exists" => false, 
								"status" => null
							);
						}
						unset($content['media']['get']);
						$content['media']['get'] = null;
					}
				}else if ($getMedia == true && $info['type'] == "photos") {
					$mediaQuery = mysqli_query($db, "SELECT DISTINCT `status.id`, `photos.id` FROM `status_photos` WHERE `status.id` = '".$status['id']."'");
					if ($mediaQuery && mysqli_num_rows($mediaQuery) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "photos";
						while ($mediaData = mysqli_fetch_assoc($mediaQuery)) {
							$mediaFetch = $_media->data("photos", array("action" => "get", "rows" => "`token`, `display`, `mime_type`, `file.original`, `file.large`, `file.medium`", "label" => "id", "value" => $mediaData['photos.id'], "private" => true, "author" => array("type" => $author['type'], "id" => $author['id']), "limit" => "LIMIT 1"));
							if (isset($mediaFetch['return']) && $mediaFetch['return'] == true) {
								$mediaFetchData = $mediaFetch['data'][0];
								if ($mediaFetchData['file.medium'] != '0') {
									$mediaFetchData['thumbnail'] = $_tool->links('photos/raw/'.$mediaFetchData['file.medium']);
								}else {
									$mediaFetchData['thumbnail'] = $_tool->links('photos/raw/'.$mediaFetchData['file.original']);
								}
								if ($mediaFetchData['file.large'] != '0') {
									$mediaFetchData['link'] = $_tool->links('photos/raw/'.$mediaFetchData['file.large']);
								}else {
									$mediaFetchData['link'] = $_tool->links('photos/raw/'.$mediaFetchData['file.original']);
								}
								$content['media']['data'][] = array(
									"display" => $mediaFetchData['display'], 
									"mime" => $mediaFetchData['mime_type'], 
									"thumbnail" => $mediaFetchData['thumbnail'], 
									"link" => $mediaFetchData['link'],
									"share" => array(
										"link" => $_tool->links('photos/picture/'.$mediaFetchData['display'])
									)
								);
							}
						}
					}
				}else if ($getMedia == true && $info['type'] == "music") {
					$mediaQuery = mysqli_query($db, "SELECT DISTINCT `status.id`, `music.id` FROM `status_music` WHERE `status.id` = '".$status['id']."' LIMIT 1");
					if ($mediaQuery && mysqli_num_rows($mediaQuery) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "music";
						while ($mediaData = mysqli_fetch_assoc($mediaQuery)) {
							$mediaFetch = $_media->data("music", array("action" => "get", "rows" => "`token`, `display`, `name`, `mime_type`, `singer`, `description`, `file.original`", "label" => "id", "value" => $mediaData['music.id'], "private" => true, "author" => array("type" => $author['type'], "id" => $author['id']), "limit" => "LIMIT 1"));
							if (isset($mediaFetch['return']) && $mediaFetch['return'] == true) {
								$mediaFetchData = $mediaFetch['data'][0];
								if ($mediaFetchData['name'] == null) {
									$mediaFetchData['name'] = $_language->text('null:music_name', 'ucfirst');
								}
								if ($mediaFetchData['singer'] == null) {
									$mediaFetchData['singer'] = $_language->text('not_updated', 'ucfirst');
								}else {
									$mediaFetchData['singer'] = $_language->text('presented_by', 'ucfirst').': '.$mediaFetchData['singer'];
								}
								if ($mediaFetchData['description'] == null) {
									$mediaFetchData['description'] = $_language->text('null:description_music', 'ucfirst');
								}
								$mediaFetchData['link'] = $_tool->links('music/raw/'.$mediaFetchData['file.original']);
								$content['media']['data'][] = array(
									"display" => $mediaFetchData['display'],
									"name" => $mediaFetchData['name'],
									"mime" => $mediaFetchData['mime_type'], 
									"singer" => $mediaFetchData['singer'], 
									"description" => $mediaFetchData['description'],
									"link" => $mediaFetchData['link'],
									"share" => array(
										"link" => $_tool->links('music/song/'.$mediaFetchData['display'])
									)
								);
							}else {
								//.
							}
						}
					}
				}else if ($getMedia == true && $info['type'] == "videos") {
					$mediaQuery = mysqli_query($db, "SELECT DISTINCT `status.id`, `videos.id` FROM `status_videos` WHERE `status.id` = '".$status['id']."' LIMIT 1");
					if ($mediaQuery && mysqli_num_rows($mediaQuery) == 0) {
						$content['media'] = null;
					}else if ($mediaQuery && mysqli_num_rows($mediaQuery) > 0) {
						$content['media'] = array();
						$content['media']['type'] = "videos";
						while ($mediaData = mysqli_fetch_assoc($mediaQuery)) {
							$mediaFetch = $_media->data("videos", array("action" => "get", "rows" => "`token`, `display`, `name`, `mime_type`, `description`, `file.thumbnail`, `file.sd`", "label" => "id", "value" => $mediaData['videos.id'], "private" => true, "author" => array("type" => $author['type'], "id" => $author['id']), "limit" => "LIMIT 1"));
							if (isset($mediaFetch['return']) && $mediaFetch['return'] == true) {
								$mediaFetchData = $mediaFetch['data'][0];
								if ($mediaFetchData['name'] == null) {
									$mediaFetchData['name'] = $_language->text('null:videos_name', 'ucfirst');
								}
								if ($mediaFetchData['description'] == null) {
									$mediaFetchData['description'] = $_language->text('null:description_videos', 'ucfirst');
								}
								$mediaFetchData['thumbnail'] = $_tool->links('videos/raw/thumbnail/'.$mediaFetchData['file.thumbnail']);
								$mediaFetchData['link'] = $_tool->links('videos/raw/'.$mediaFetchData['file.sd']);
								$content['media']['data'][] = array(
									"display" => $mediaFetchData['display'], 
									"name" => $mediaFetchData['name'],
									"mime" => $mediaFetchData['mime_type'],
									"description" => $mediaFetchData['description'],
									"thumbnail" => $mediaFetchData['thumbnail'],
									"link" => $mediaFetchData['link'],
									"share" => array(
										"link" => $_tool->links('videos/watch/'.$mediaFetchData['display'])
									)
								);
							}
						}
					}else {
						$content['media'] = null;
					}
				}else if ($getMedia == true && $info['type'] == "cited") {
					$mediaQuery = mysqli_query($db, "SELECT * FROM `status_cited` WHERE `status.id` = '".$status['id']."' LIMIT 1");
					if ($mediaQuery && mysqli_num_rows($mediaQuery) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "cited";
						$citedId = mysqli_fetch_assoc($mediaQuery)['cited.id'];
						$citedQuery = mysqli_query($db, "SELECT `token`, `quote`, `author`, `photos.id` FROM `cited` WHERE `id` = '{$citedId}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}' LIMIT 1");
						if (!$citedQuery) {
							$content['media'] = null;
						}else {
							$citedFetch = mysqli_fetch_assoc($citedQuery);
							if ($citedFetch['photos.id'] != '0') {
								$mediaFetch = $_media->data("photos", array("action" => "get", "rows" => "`token`, `display`, `file.original`, `file.medium`", "label" => "id", "value" => $cited_fetch['photos.id'], "private" => true, "author" => array("type" => $author['type'], "id" => $author['id']), "limit" => "LIMIT 1"));
							}else {
								$mediaFetch['return'] = false;
							}
							if (isset($mediaFetch['return']) && $mediaFetch['return'] == true) {
								if ($mediaFetch['data'][0]['file.medium'] != '0') {
									$mediaPath = $mediaFetch['data'][0]['file.medium'];
								}else {
									$mediaPath = $mediaFetch['data'][0]['file.original'];
								}
								$citedFetch['thumbnail'] = $_tool->links('photos/raw/').$mediaPath;
							}else {
								$citedFetch['thumbnail'] = null;
							}
							$content['media']['data'][] = array(
								"display" => $citedFetch['display'],
								"author" => $citedFetch['author'],
								"quote" => $citedFetch['quote'],
								"thumbnail" => $citedFetch['thumbnail'],
								"share" => array(
									"link" => $_tool->links('cited/embed/'.$mediaFetch['data']['display'])
								)
							);
						}
					}
				}else {
					$content['media'] = null;
				}
				if ($guyType == $author['type'] && $guyId == $author['id']) {
					$menu['status']['report'] = $menu['status']['block'] = false;
					$menu['status']['delete'] = $menu['status']['edit'] = true;
				}else {
					$menu['status']['report'] = $menu['status']['block'] = $menu['author']['hide'] = true;
					$menu['status']['delete'] = $menu['status']['edit'] = false;
				}
				$favoriteCountQuery = mysqli_query($db, "SELECT `id` FROM `status_follow` WHERE `status.id` = '{$info['id']}' AND `guy.type` = '{$guyType}' AND `guy.id` = '{$guyId}'");
				if ($favoriteCountQuery && mysqli_num_rows($favoriteCountQuery) > 0) {
					$menu['status']['follow'] = true;
				}else {
					$menu['status']['follow'] = false;
				}
				if ($info['type'] == "photos" || $info['type'] == "music" || $info['type'] == "videos" || $info['type'] == "cited") {
					$menu['status']['popup'] = true;
				}else {
					$menu['status']['popup'] = false;
				}
				$menu['status']['link'] = true;
				$statsFollowQuery = mysqli_query($db, "SELECT `id` FROM `status_follow` WHERE `status.id` = '{$info['id']}'");
				if ($statsFollowQuery) { $statistic['follow'] = mysqli_num_rows($statsFollowQuery); } else $statistic['follow'] = 0;
				$statsFavoriteQuery = mysqli_query($db, "SELECT `id` FROM `status_favorite` WHERE `status.id` = '{$info['id']}'");
				if ($statsFollowQuery) { $statistic['favorite'] = mysqli_num_rows($statsFavoriteQuery); } else $statistic['favorite'] = 0;
				$statsShareQuery = mysqli_query($db, "SELECT `id` FROM `status_share` WHERE `status.id` = '{$info['id']}'");
				if ($statsShareQuery) { $statistic['share'] = mysqli_num_rows($statsShareQuery); } else $statistic['share'] = 0;
				$statsInviteQuery = mysqli_query($db, "SELECT `id` FROM `status_invite` WHERE `status.id` = '{$info['id']}'");
				if ($statsInviteQuery) { $statistic['invite'] = mysqli_num_rows($statsInviteQuery); } else $statistic['invite'] = 0;
				$action['favorite']['check'] = 1;
				$action['share']['check'] = 1;
				$action['invite']['check'] = 1;
				if ($author['type'] == $guyType && $author['id'] == $guyId) {
					$action['comment']['check'] = 1;
				}else if ($private['comment']['stamp'] == 1) {
					if ($author['type'] == $this->user['type'] && $author['id'] == $this->user['id']) {
						$action['comment']['check'] = 1;
					}else {
						$action['comment']['check'] = 0;
					}
				}else if ($private['comment']['stamp'] == 2) {
					if ($guyType == "user") {
						$actionCommentCheckQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$guyId}' AND `guy.id` = '{$author['id']}' LIMIT 1");
						if ($actionCommentCheckQuery) $action['comment']['check'] = mysqli_num_rows($actionCommentCheckQuery); else $action['comment']['check'] = 0;
					}else {
						$action['comment']['check'] = 0;
					}
				}else if ($private['comment']['stamp'] == 3) {
					if ($author['type'] == "user" && $guyType == "user") {
						$actionCommentCheckQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE (`user.id` = '{$guyId}' AND `guy.id` = '{$author['id']}') OR (`guy.id` = '{$author['id']}' AND `user.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$guyId}')) LIMIT 1");
						if ($actionCommentCheckQuery) $action['comment']['check'] = mysqli_num_rows($actionCommentCheckQuery); else $action['comment']['check'] = 0;
					}else {
						$action['comment']['check'] = 0;
					}
				}else if ($private['comment']['stamp'] == 4) {
					$action['comment']['check'] = 1;
				}else {
					$action['comment']['check'] = 0;
				}
				if ($action['favorite']['check'] > 0) {
					$action['favorite']['status'] = true;
					$action['favorite']['selected'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_favorite` WHERE `status.id` = '{$info['id']}' AND `guy.id` = '{$guyId}' AND `guy.type` = '{$guyType}'"));
					if ($action['favorite']['selected'] == 0) {
						$action['favorite']['selected'] = false;
					}else {
						$action['favorite']['selected'] = true;
					}
				}else {
					$action['favorite']['status'] = false;
				}
				if ($action['share']['check'] > 0) {
					$action['share']['status'] = true;
				}else {
					$action['share']['status'] = false;
				}
				if ($action['invite']['check'] > 0) {
					$action['invite']['status'] = true;
				}else {
					$action['invite']['status'] = false;
				}
				if ($action['comment']['check'] > 0) {
					$action['comment']['status'] = true;
				}else {
					$action['comment']['status'] = false;
				}
				$commentQuery = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `inside.type` = 'status' AND `inside.id` = '".$status['id']."'");
				if ($commentQuery) $comment['count'] = mysqli_num_rows($commentQuery); else $comment['count'] = 0;
				$statusData[] = array (
					'info' => $info,
					'author' => $author, 
					'from' => $from, 
					'edit' => $edit,
					'places' => $places,
					'date' => $date,
					'private' => $private,
					'menu' => $menu,
					'content' => $content,
					'statistic' => $statistic,
					'action' => $action,
					'comment' => $comment,
				);
			};
			if ($returnType == "json") {
				for ($i = 0; $i < count($statusData); $i++ ) {
					$getCommentSql = "SELECT * FROM `status_comment` WHERE `status.id` = '{$statusData[$i]['info']['id']}' ORDER BY `id` DESC LIMIT 2";
					$getComment = $this->comment_get(array("return" => "json", "query" => $getCommentSql));
					if (isset($getComment['return'], $getComment['data']) && $getComment['return'] == true && is_array($getComment['data']) && count($getComment['data']) > 0) {
						$commentData = $getComment['data'];
						$commentReply = array();
						$commentReplySql = "SELECT * FROM `status_comment` WHERE `comment.id` = '{$commentData['info']['id']}' ORDER BY `id` DESC LIMIT 3";
						$getCommentReply = $this->comment_get(array("return" => "json", "query" => $commentReplySql));
						if (isset($getCommentReply['return'], $getCommentReply['data']) && $getCommentReply['return'] == true && is_array($getCommentReply['data'])) {
							$commentReply[] = $getCommentReply['data'];
						}
						$getComment['data']['reply'] = $commentData['reply'] = $commentReply;
						$returnData[$i]['comment']['data'] = $getComment['data'];
					}
					$getCommentSql = $getComment = null;
				}
				$returnData = $statusData;
				return array("return" => true, "count" => count($returnData), "data" => $returnData);
			}else if ($returnType == "html") {
				$countData = count($statusData);
				$returnData = null;
				for ( $i = 0; $i < count($statusData); $i++ ) {
					$status = null;
					$status = $statusData[$i];
					$status['infoshow'] = $status['info'];
					if (isset($status['infoshow']['token'])) {
						unset($status['infoshow']['token']);
					}
					$c_['status_info'] = json_encode($status['infoshow']);
					if (isset($status['author']['verified']) && $status['author']['verified'] == 1) {
						$c_['status_author_verified'] = "
							<div class='verified _tt e' title='{$_language->text('verified', 'ucfirst')}'>
								<i></i>
							</div>
						";
					}else {
						$c_['status_author_verified'] = null;
					}
					if (isset($status['date']) && $status['date'] != null) {
						$c_['status_date'] = "
							<div class='date nowrap _tt s' time='{$status['date']['json']}' title='{$_language->text('posted_at', 'ucfirst')} {$status['date']['tip']}'>
								<i></i>
								<a href='{$_tool->links('feed/time')}/{$status['date']['stamp']}' date-show>{$status['date']['ago']}</a>
							</div>
						";
					}else {
						$c_['status_date'] = null;
					}
					if (isset($status['private']) && $status['private'] != null) {
						$c_['status_private'] = "
							<div class='private nowrap _tt s' private='{$status['private']['view']['json']}' title='{$status['private']['view']['tip']}' private>
								<i></i>
								<span private-show>{$status['private']['view']['text']}</span>
							</div>
						";
					}else {
						$c_['status_private'] = null;
					}
					if (isset($status['edit']['status']) && $status['edit']['status'] == true) {
						$c_['status_edit'] = "
							<div class='edited nowrap _tt s' time='{$status['edit']['time']['json']}' title='{$_language->text('edited_at', 'ucfirst')} {$status['edit']['time']['tip']}'>
								<i></i>
							</div>
						";
					}else {
						$c_['status_edit'] = null;
					}
					if (isset($status['content']['mood']['text']) && $status['content']['mood']['text'] != null) {
						$c_['status_mood'] = "
							<div class='mood nowrap _tt s' title='".ucfirst($status['content']['mood']['text'])."'>
								<i></i>
							</div>
						";
					}else {
						$c_['status_mood'] = null;
					}
					if (isset($status['places']) && $status['places'] != null) {
						if ($status['places']['by'] == 1) {
							$c_['status_places_dbl_type'] = "notification";
							$c_['status_places_dbl_data'] = array(
								"type" => 1, 
								"title" => $_language->text('information_about_places', 'ucfirst'),
								"description" => array("type" => "info::places", "data" => $status['places']),
								"timeout" => $_parameter->get('notifyPopup_info_places')
							);
							foreach ($c_['status_places_dbl_data'] as $key => $value) {
								$c_['status_places_dbl_data'][$key] = ($value);
							}
							$c_['status_places_dbl'] = json_encode(array("type" => $c_['status_places_dbl_type'], "data" => $c_['status_places_dbl_data']));
							$c_['status_places'] = "
								<div class='places nowrap _tt _tt-dbl s' title='{$_language->text('at', 'ucfirst')} {$status['places']['name']}' dblclick='{$c_['status_places_dbl']}'>
									<i></i>
								</div>
							";
						}else if ($status['places']['by'] == 2 && isset($status['places']['name']) && $status['places']['name'] != null) {
							$c_['status_places'] = "
								<div class='places nowrap _tt _tt-dbl s' title='{$_language->text('at', 'ucfirst')} {$status['places']['name']}'>
									<i></i>
								</div>
							";
						}else {
							$c_['status_places'] = null;
						}
					}else {
						$c_['status_places'] = null;
					}
					if (isset($status['menu']) && is_array($status['menu'])) {
						$c_['status_menu_tab'] = null;
						foreach ($status['menu'] as $type => $menu_type) {
							foreach ($menu_type as $text => $menu_text) {
								if ($type == "status") {
									if ($text == "block" && $menu_text == true) {
										$c_['status_menu_tab'] .= "
											<div class='nowrap' menu-type='block'>
												<i></i>
												<span>{$_language->text('block', 'ucfirst')}</span>
											</div>
										";
									}else if ($text == "report" && $menu_text == true) {
										$c_['status_menu_tab'] .= "
											<div class='nowrap' menu-type='report'>
												<i></i>
												<span>{$_language->text('report', 'ucfirst')}</span>
											</div>
										";
									}else if ($text == "edit" && $menu_text == true) {
										$c_['status_menu_tab'] .= "
											<div class='nowrap' menu-type='edit'>
												<i></i>
												<span>{$_language->text('edit', 'ucfirst')}</span>
											</div>
										";
									}else if ($text == "delete" && $menu_text == true) {
										$c_['status_menu_tab'] .= "
											<div class='nowrap' menu-type='delete'>
												<i></i>
												<span>{$_language->text('delete', 'ucfirst')}</span>
											</div>
										";
									}else if ($text == "follow") {
										if ($menu_text == true) {
											$c_['status_menu_tab'] .= "
												<div class='nowrap' menu-type='unfollow'>
													<i></i>
													<span>{$_language->text('unfollow', 'ucfirst')}</span>
												</div>
											";
										}else {
											$c_['status_menu_tab'] .= "
												<div class='nowrap' menu-type='follow'>
													<i></i>
													<span>{$_language->text('follow', 'ucfirst')}</span>
												</div>
											";
										}
									}else if ($text == "popup" && $menu_text == true) {
										$c_['status_menu_tab'] .= "
											<div class='nowrap' menu-type='popup'>
												<i></i>
												<span>{$_language->text('popup', 'ucfirst')}</span>
											</div>
										";
									}else if ($text == "link" && $menu_text == true) {
										$c_['status_menu_tab'] .= "
											<div class='nowrap' menu-type='link'>
												<i></i>
												<span><a href='{$_tool->links("feed/status/")}{$status['info']['token']}' target='_blank'>{$_language->text('link', 'ucfirst')}</a></span>
											</div>
										";
									}
								}else if ($type == "author") {
									//.
								}
							}
							$c_['status_menu'] = "
								<div class='menu' status-menu>
									<div class='button'><i></i></div>
									<div class='tab'>
										{$c_['status_menu_tab']}
									</div>
								</div>
							";
						}
					}else {
						$c_['status_menu'] = null;
					}
					if (isset($status['content']['mood']['text']) && $status['content']['mood']['text'] != null) {
						if ($status['content']['mood']['icon'] != null) {
							$c_['status_content_mood_i'] = null;
						}else {
							$c_['status_content_mood_i'] = null;
						}
						$c_['status_content_mood'] = "
							<div class='mood'>
								{$c_['status_content_mood_i']}
								<span>{$status['content']['mood']['text']}.</span>
							</div>
						";
					}else {
						$c_['status_content_mood'] = null;
					}
					if (isset($status['content']['text']) && $status['content']['text'] != null) {
						$c_['status_content_text'] = "
							<div class='text'>
								<span>{$status['content']['text']}</span>
								{$c_['status_content_mood']}
							</div>
						";
					}else {
						$c_['status_content_text'] = null;
					}
					if (isset($status['content']['usertag']) && $status['content']['usertag'] != null) {
						$c_['status_content_usertag_li'] = null;
						foreach ($status['content']['usertag'] as $c_['status_content_usertag_i']) {
							$c_['status_content_usertag_li'] .= "<div class='div _tt-bk' title='{$c_['status_content_usertag_i']['tag']}'><a href='{$c_['status_content_usertag_i']['link']}'>{$c_['status_content_usertag_i']['name']}</a></div>";
						}
						$c_['status_content_usertag'] = "
							<div class='usertag'>
								<div class='with'><span>- {$_language->text('with', 'normal')}</span></div>
								<div class='li'>{$c_['status_content_usertag_li']}</div>
							</div>
						";
					}else {
						$c_['status_content_usertag'] = null;
					}
					if (isset($status['content']['media']) && is_array($status['content']['media'])) {
						if (isset($status['content']['media']['type']) && isset($status['content']['media']['data']) && is_array($status['content']['media']['data'])) {
							$c_['status_content_media'] = $this->status_getCodeMedia($status['content']);
						}else {
							$c_['status_content_media'] = null;
						}
					}else {
						$c_['status_content_media'] = null;
					}
					if (isset($status['action']['favorite']['status']) && $status['action']['favorite']['status'] == true) {
						if ($status['action']['favorite']['selected'] == true) {
							$c_['status_action_favorite'] = "
								<div class='favorite'>
									<span status-action-favorite favorite='true'>{$_language->text("unfavorite", "ucfirst")}</span>
								</div>
							";
						}else {
							$c_['status_action_favorite'] = "
								<div class='favorite'>
									<span status-action-favorite favorite='false'>{$_language->text("favorite", "ucfirst")}</span>
								</div>
							";
						}
					}else {
						$c_['status_action_favorite'] = null;
					}
					if (isset($status['action']['share']['status']) && $status['action']['share']['status'] == true) {
						$c_['status_action_share'] = "
							<div class='share'>
								<span status-action-share>{$_language->text("share", "ucfirst")}</span>
							</div>
						";
					}else {
						$c_['status_action_share'] = null;
					}
					if (isset($status['action']['invite']['status']) && $status['action']['invite']['status'] == true) {
						$c_['status_action_invite'] = "
							<div class='invite'>
								<span status-action-invite>{$_language->text("invite", "ucfirst")}</span>
							</div>
						";
					}else {
						$c_['status_action_invite'] = null;
					}
					if (isset($status['action']['comment']['status']) && $status['action']['comment']['status'] == true) {
						$c_['private_comment_class'] = "";
						$c_['private_comment'] = "
							<textarea type='text' placeholder='{$_language->text('write_a_comment', 'ucfirst')}' status-action-comment handing='false'></textarea>
						";
					}else {
						$c_['private_comment_class'] = "null";
						$c_['private_comment'] = "
							<span>{$_language->text('status_unlimited_comment', 'ucfirst')}</span>
						";
					}
					if (isset($status['comment']['count']) && $status['comment']['count'] == 0) {
						$c_['status_comment_null'] = "
							<div class='null' status-comment-null>
								<span status-comment-null>{$_language->text('status_null_comment', 'ucfirst')}</span>
							</div>
						";
						$c_['status_comment_rows'] = $c_['status_comment'] = null;
					}else {
						if ($status['comment']['count'] > 3) {
							$c_['status_comment_showmore'] = "
								<div class='showmore' status-comment-load>
									<i class='icon'></i>
									<span class='text'>{$_language->text('show_more_comments', 'ucfirst')}</span>
								</div>
							";
						}else {
							$c_['status_comment_showmore'] = null;
						}
						$c_['status_comment'] = "
							<div class='statistic'>
								<div class='info'>
									<i class='icon'></i>
									<span class='count' status-stats-comment>{$status['comment']['count']}</span>
									<span class='text'>{$_language->text('comment(s)', 'strtolower')}</span>
								</div>
								{$c_['status_comment_showmore']}
							</div>
						";
						$c_['status_comment_rows'] = null;
						$getCommentIdSql = "SELECT `id` FROM `status_comment` WHERE `inside.type` = 'status' AND `inside.id` = '{$status['info']['id']}' ORDER BY `id` DESC LIMIT 2";
						$getCommentIdQuery = mysqli_query($db, $getCommentIdSql);
						if ($getCommentIdQuery && mysqli_num_rows($getCommentIdQuery) > 0) {
							while ($getCommentIdFetch = mysqli_fetch_assoc($getCommentIdQuery)) {
								foreach ($getCommentIdFetch as $getCommentIdFetchArr) {
									$getCommentSql = "SELECT * FROM `status_comment` WHERE `id` = '{$getCommentIdFetch['id']}' LIMIT 1";
									$getComment = $this->comment_get(array("return" => "html", "query" => $getCommentSql, "class" => "lines"));
									if (isset($getComment['return'], $getComment['data']) && $getComment['return'] == true && $getComment['data'] != null) {
										$c_['status_comment_rows'] .= $getComment['data'];
										$commentReplyCountRequest = "SELECT `id` FROM `status_comment` WHERE `inside.type` = 'comment' AND `inside.id` = '{$getCommentIdFetch['id']}' ORDER BY `id`";
										$commentReplyCountQuery = mysqli_query($db, $commentReplyCountRequest);
										if ($commentReplyCountQuery) $commentReplyCount = mysqli_num_rows($commentReplyCountQuery); else $commentReplyCount = 0;
										if ($commentReplyCount == 0) {
											//.
										}else {
											if ($commentReplyCount > 3) {
												$c_['status_comment_rows'] .= "
												<div class='lines statistic' status-comment-lines-stats comment-id='{$getCommentIdFetch['id']}'>
													<div class='info'>
														<i class='icon'></i>
														<span class='count' status-comment-stats-reply>{$commentReplyCount}</span>
														<span class='text'>{$_language->text('reply(s)', 'strtolower')}</span>
													</div>
													<div class='showmore' status-comment-reply-load>
														<i class='icon'></i>
														<span class='text'>{$_language->text('show_more_reply', 'ucfirst')}</span>
													</div>
												</div>
												";
											}
											$commentReply = array();
											$commentReplySql = "SELECT * FROM `status_comment` WHERE `inside.type` = 'comment' AND `inside.id` = '{$getCommentIdFetch['id']}' ORDER BY `id` DESC LIMIT 3";
											$getCommentReply = $this->comment_get(array("return" => "html", "query" => $commentReplySql, "class" => "lines reply"));
											if (isset($getCommentReply['return'], $getCommentReply['data']) && $getCommentReply['return'] == true && $getCommentReply['data']) {
												$c_['status_comment_rows'] .= $getCommentReply['data'];
											}else {
												continue;
											}
										}
									}else {
										continue;
									}
									$getCommentSql = $getComment = null;
								}
							}
						}else {
							$c_['status_comment_rows'] = null;
						}
						$c_['status_comment_null'] = null;
					}
					$returnData .= "
					<div class='{$className} inFeeds boxGrid' status-id='{$status['info']['id']}' status='{$c_['status_info']}'>
						<div class='header'>
							<div class='cover'>
								<div class='wrap'></div>
								<div class='img' style='background-image: url({$status['author']['cover']})'>
									<img class='img' src='{$status['author']['cover']}' alt='{$_language->text('cover_of', 'strtolower')} {$status['author']['name']} ({$status['author']['tag']})'>
								</div>
							</div>
							<div class='avatar'>
								<a href='{$status['author']['link']}'>
									<img class='img' src='{$status['author']['avatar']}' alt='{$_language->text('avatar_of', 'strtolower')} {$status['author']['name']} ({$status['author']['tag']})'>
								</a>
							</div>
							<div class='user'>
								{$c_['status_author_verified']}
								<div class='name'>
									<a href='{$status['author']['link']}'>
										<span>{$status['author']['name']}</span>
									</a>
								</div>
								<div class='tag'>
									<a href='{$status['author']['link']}'>
										<span>{$status['author']['tag']}</span>
									</a>
								</div>
							</div>
							<div class='info'>
								{$c_['status_date']}
								{$c_['status_private']}
								{$c_['status_edit']}
								{$c_['status_places']}
								{$c_['status_mood']}
							</div>
							{$c_['status_menu']}
						</div>
						<div class='body'>
							{$c_['status_content_text']}
							{$c_['status_content_media']}
							{$c_['status_content_usertag']}
						</div>
						<div class='footer'>
							<div class='info'>
								<div class='action'>
									{$c_['status_action_favorite']}
									{$c_['status_action_share']}
									{$c_['status_action_invite']}
								</div>
								<div class='statistic'>
									<div class='favorite'>
										<i></i>
										<span status-stats-favorite>{$status['statistic']['favorite']}</span>
									</div>
									<div class='share'>
										<i></i>
										<span status-stats-share>{$status['statistic']['share']}</span>
									</div>
									<div class='invite'>
										<i></i>
										<span status-stats-invite>{$status['statistic']['invite']}</span>
									</div>
								</div>
							</div>
							<div class='comment'>
								<div class='type {$c_['private_comment_class']}' status-comment-type>
									{$c_['private_comment']}
								</div>
								{$c_['status_comment']}
								<div class='content' status-comment-content>
									{$c_['status_comment_null']}
									{$c_['status_comment_rows']}
								</div>
							</div>
						</div>
					</div>
					";
					$c_ = null;
				};
				return array("return" => true, "count" => $countData, "data" => $returnData);
			}
		}
	}
	function status_getCodeMedia ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_language = $this->class['_language'];
		//.
		$c_ = array();
		if (isset($object['media']['type']) && $object['media']['type'] == "link") {
			$c_['status_content_media'] = "<div class='media LinkBox'>";
			foreach ($object['media']['data'] as $key => $value) {
				$value['id'] = "media_link_".$value['display']."_".rand();
				$infoShowArr = array("type" => "link", "id" => $value['id'], "display" => $value['display'], "sub" => $value['sub'], "host" => $value['host'], "url" => $value['url'], "thumbnail" => $value['thumbnail'], "title" => $value['title'], "description" => $value['description'], "share" => $value['share']);
				if (isset($value['embed'])) {
					$embedShowArr = "media-embed='".json_encode($value['embed'])."'";
					$value['direct'] = "";
				}else {
					$embedShowArr = "";
					$value['direct'] = json_encode(array("by" => "click", "link" => $value['url'], "target" => "_blank"));
				}
				$value['info'] = json_encode($infoShowArr);
				if (isset($value['thumbnail']) && $value['thumbnail'] != null && ($value['thumbnail'] !== 0 || $value['thumbnail'] !== "0")) {
					$c_['status_content_media_thumbnail'] = "<div class='thumbnail'><div style='background-image: url({$value['thumbnail']});'></div></div>";
				}else {
					$c_['status_content_media_thumbnail'] = null;
				}
				$c_['status_content_media'] .= "
				<div class='link' id='{$value['id']}' media='link' media-display='{$value['display']}' media-info='{$value['info']}' {$embedShowArr} direct='{$value['direct']}'>
					{$c_['status_content_media_thumbnail']}
					<div class='info'>
						<div class='title rows nowrap'><span>{$value['title']}</span></div> 
						<div class='description rows'><span>{$value['description']}</span></div> 
						<div class='from rows nowrap'><span>{$value['host']}</span></div> 
					</div>
				</div>
				";
			}
			$c_['status_content_media'] .= "</div>";
		}else if (isset($object['media']['type']) && $object['media']['type'] == "photos") {
			$c_['status_content_media'] = "<div class='media PhotosBox'>";
			foreach ($object['media']['data'] as $key => $value) {
				$value['id'] = "media_photos_".$value['display']."_".rand();
				$value['info'] = json_encode(array("type" => "photos", "id" => $value['id'], "display" => $value['display'], "mime" => $value['mime'], "thumbnail" => $value['thumbnail'], "link" => $value['link'], "share" => $value['share']));
				$c_['status_content_media'] .= "
					<div class='photos' id='{$value['id']}' media='photos' media-display='{$value['display']}' media-info='{$value['info']}' style='background-image: url({$value['thumbnail']})'>
						<img src='{$value['thumbnail']}' alt='{$object['string']}'>
					</div>
				";
			}
			$c_['status_content_media'] .= "</div>";
		}else if (isset($object['media']['type']) && $object['media']['type'] == "music") {
			$c_['status_content_media'] = "<div class='media MusicBox'>";
				foreach ($object['media']['data'] as $key => $value) {
					$value['id'] = "media_music_".$value['display']."_".rand();
					$value['info'] = json_encode(array("type" => "music", "id" => $value['id'], "display" => $value['display'], "link" => $value['link'], "name" => $value['name'], "mime" => $value['mime'], "singer" => $value['singer'], "description" => $value['description'], "share" => $value['share']));
					$c_['status_content_media'] .= "
					<div class='music' id='{$value['id']}' media='music' media-display='{$value['display']}' media-info='{$value['info']}'>
						<div class='icon'>
							<i></i>
						</div>
						<div class='text'>
							<div class='name nowrap'><span>{$value['name']}</span></div>
							<div class='singer nowrap'><span>{$value['singer']}</span></div>
							<div class='description nowrap'><span>{$value['description']}</span></div>
						</div>
					</div>
					";
				}
			$c_['status_content_media'] .= "</div>";
		}else if (isset($object['media']['type']) && $object['media']['type'] == "videos") {
			$c_['status_content_media'] = "<div class='media VideosBox'>";
				foreach ($object['media']['data'] as $key => $value) {
					$value['id'] = "media_videos_".$value['display']."_".rand();
					$value['info'] = json_encode(array("type" => "videos", "id" => $value['id'], "display" => $value['display'], "link" => $value['link'], "thumbnail" => $value['thumbnail'], "name" => $value['name'], "mime" => $value['mime'], "description" => $value['description'], "share" => $value['share']));
					$c_['status_content_media'] .= "
					<div class='videos' id={$value['id']}' media='videos' media-display='{$value['display']}' media-info='{$value['info']}' style='background-image: url({$value['thumbnail']});'>
						<div class='wrap'></div>
						<div class='icon'>
							<i></i>
						</div>
						<div class='nav'>
							<div class='name nowrap'><span>{$value['name']}</span></div>
							<div class='description nowrap'><span>{$value['description']}</span></div>
						</div>
					</div>
					";
				}
			$c_['status_content_media'] .= "</div>";
		}else if (isset($object['media']['type']) && $object['media']['type'] == "cited") {
			$value = $object['media']['data'][0];
			$value['id'] = "media_cited_".$value['display']."_".rand();
			$value['info'] = json_encode(array("type" => "cited", "id" => $value['id'], "display" => $value['display'], "author" => $value['author'], "quote" => $value['quote'], "share" => $value['share']));
			if ($value['thumbnail'] != null) {
				$c_['cited_thumbnail'] = "style='background-image: url({$value['thumbnail']});'";
			}else {
				$c_['cited_thumbnail'] = '';
			}
			$c_['status_content_media'] = "<div class='media CitedBox'>";
			$c_['status_content_media'] .= "
			<div class='cited' id='{$value['id']}' media='cited' media-display='{$value['display']}' media-info='{$value['info']}' {$c_['cited_thumbnail']}>
				<div class='quote'><span>{$value['quote']}</span></div>
				<div class='author'><span>{$value['author']}</span></div>
			</div>
			";
			$c_['status_content_media'] .= "</div>";
		}else if (isset($object['media']['type']) && $object['media']['type'] == "share") {
			$c_['status_content_media'] = "";
			foreach ($object['media']['data'] as $key => $mediaObjThis) {
				if (isset($mediaObjThis['exists']) && $mediaObjThis['exists'] == true) {
					$statusInfo = $mediaObjThis['status']['info'];
					$statusDate = $mediaObjThis['status']['date'];
					$statusAuthor = $mediaObjThis['status']['author'];
					$statusValue = $mediaObjThis['status']['content'];
					$c_['status_content_media'] .= "<div class='media ShareBox'>";
					$c_['status_content_media'] .= "
						<i class='arrow'></i>
						<div class='share' media='share'>
							<div class='author'><span>".$_language->text('from', 'strtolower')." <a href='".$statusInfo['link']."' target='_blank'>".$_language->text('status', 'strtolower')."</a> ".$_language->text('posted_at', 'strtolower')." <a href='".$_tool->links('feed/time/'.$statusDate)."' target='_blank'>".$_tool->agoDatetime($statusDate, 'ago')."</a> ".$_language->text('by', 'strtolower')." <a href='".$statusAuthor['link']."' target='_blank'>".$statusAuthor['name']." (".$statusAuthor['tag'].")</a></span></div>
							<div class='text'>
								<span>".$statusValue['text']."</span>
							</div>
							".$this->status_getCodeMedia($statusValue)."
						</div>";
					$c_['status_content_media'] .= "</div>";
				}else {
					$c_['status_content_media'] .= null;
				}
			}
		}else {
			$c_['status_content_media'] = null;
		}
		return $c_['status_content_media'];
	}
	function status_statistic ($object) {
		return $this->status_stats($object);
	}
	function status_stats ($object) {
		if (isset($object['id']) && (is_string($object['id']) || is_numeric($object['id']))) $statusId = $object['id']; else $statusId = 0;
		if (isset($object['type']) && is_string($object['type'])) $type = $object['type']; else $type = "all";
		if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = "all";
		if ($statusId == 0) {
			return array("return" => false, "reason" => "");
		}
		if (isset($object['author'], $object['author']['type']) && is_string($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author'], $object['author']['id']) && is_numeric($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['id']) && $this->user['login'] == true && $this->user['mode']['type'] != null && $this->user['mode']['id'] > 0) {
				$authorType = $this->user['mode']['type'];
				$authorId = $this->user['mode']['id'];
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
		$statusQuery = mysqli_query($db, "SELECT `id` FROM `status` WHERE `id` = '{$statusId}'");
		if ($statusQuery) $statusCount = mysqli_num_rows($statusQuery); else $statusCount = 0;
		if ($statusCount > 0) {
			if ($rows == "favorite" || $rows == "all") {
				$favoriteQuery = mysqli_query($db, "SELECT `id` FROM `status_favorite` WHERE `status.id` = '{$statusId}'");
			}
			if ($rows == "share" || $rows == "all") {
				$shareQuery = mysqli_query($db, "SELECT `id` FROM `status_share` WHERE `status.id` = '{$statusId}'");
			}
			if ($rows == "invite" || $rows == "all") {
				$inviteQuery = mysqli_query($db, "SELECT `id` FROM `status_invite` WHERE `status.id` = '{$statusId}'");
			}
			if ($rows == "comment" || $rows == "all") {
				$commentQuery = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `inside.type` = 'status' AND `inside.id` = '{$statusId}'");
			}
			if ($type == "stats" || $type == "all") {
				if (($rows == "favorite" || $rows == "all") && isset($favoriteQuery) && $favoriteQuery) {
					$favoriteCount = mysqli_num_rows($favoriteQuery);
				}
				if (($rows == "share" || $rows == "all") && isset($shareQuery) && $shareQuery) {
					$shareCount = mysqli_num_rows($shareQuery);
				}
				if (($rows == "invite" || $rows == "all") && isset($inviteQuery) && $inviteQuery) {
					$inviteCount = mysqli_num_rows($inviteQuery);
				}
				if (($rows == "comment" || $rows == "all") && isset($commentQuery) && $commentQuery) {
					$commentCount = mysqli_num_rows($commentQuery);
				}
				$statsArr = array();
				if (($rows == "favorite" || $rows == "all") && isset($favoriteCount)) {
					$statsArr['favorite'] = $favoriteCount;
				}
				if (($rows == "share" || $rows == "all") && isset($shareCount)) {
					$statsArr['share'] = $shareCount;
				}
				if (($rows == "invite" || $rows == "all") && isset($inviteCount)) {
					$statsArr['invite'] = $inviteCount;
				}
				if (($rows == "comment" || $rows == "all") && isset($commentCount)) {
					$statsArr['comment'] = $commentCount;
				}
			}else {
				$statsArr = array();
			}
			if ($type == "list" || $type == "all") {
				if (($rows == "favorite" || $rows == "all") && isset($favoriteQuery)) {
					$favoriteList = array();
					while ($favoriteListFetch = mysqli_fetch_assoc($favoriteQuery)) {
						$favoriteList[] = array(
							"guy.type" => $favoriteListFetch['guy.type'], 
							"guy.id" => $favoriteListFetch['guy.id']
						);
					}
				}
				if (($rows == "share" || $rows == "all") && isset($shareQuery)) {
					$shareList = array();
					while ($shareListFetch = mysqli_fetch_assoc($shareQuery)) {
						$shareList[] = array(
							"guy.type" => $shareListFetch['guy.type'], 
							"guy.id" => $shareListFetch['guy.id']
						);
					}
				}
				if (($rows == "invite" || $rows == "all") && isset($inviteQuery)) {
					$inviteList = array();
					while ($inviteListFetch = mysqli_fetch_assoc($inviteQuery)) {
						$inviteList[] = array(
							"guy.type" => $inviteListFetch['guy.type'], 
							"guy.id" => $inviteListFetch['guy.id']
						);
					}
				}
				if (($rows == "comment" || $rows == "all") && isset($commentQuery)) {
					$commentList = array();
					while ($commentListFetch = mysqli_fetch_assoc($commentQuery)) {
						$commentList[] = array(
							"guy.type" => $commentListFetch['guy.type'], 
							"guy.id" => $commentListFetch['guy.id']
						);
					}
				}
				$listArr = array();
				if (($rows == "favorite" || $rows == "all") && isset($favoriteList)) {
					$listArr['favorite'] = $favoriteList;
				}
				if (($rows == "share" || $rows == "all") && isset($shareList)) {
					$listArr['share'] = $shareList;
				}
				if (($rows == "invite" || $rows == "all") && isset($inviteList)) {
					$listArr['invite'] = $inviteList;
				}
				if (($rows == "comment" || $rows == "all") && isset($commentList)) {
					$listArr['comment'] = $commentList;
				}
			}else {
				$listArr = array();
			}
			return array("return" => true, "stats" => $statsArr, "list" => $listArr);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function status_follow ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_logs = $this->class['_logs'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['id']) && (is_string($object['id']) || is_numeric($object['id']))) $statusId = $object['id']; else $statusId = 0;
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($statusId > 0 && ($action == "add" || $action == "remove")) {
			if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
			if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
			if (isset($object['user'], $object['user']['id']) && is_numeric($object['user']['id'])) $userId = intval($object['user']['id']); else $userId = null;
			if ($guyType == null && $guyId == null || $userId == null) {
				return array("return" => false, "reason" => "");
			}
			$statusQuery = mysqli_query($db, "SELECT `id`, `user.id`, `author.id`, `author.type`, `private.comment` FROM `status` WHERE `id` = '".$statusId."';");
			if (!$statusQuery) {
				return array("return" => false, "reason" => "");
			}
			if ($statusQuery) $statusNum = mysqli_num_rows($statusQuery); else $statusNum = 0;
			if ($statusNum > 0) {
				$statusFetch = mysqli_fetch_assoc($statusQuery);
				$followNum = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_follow` WHERE `status.id` = '".$statusFetch['id']."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId." LIMIT 1';"));
				if ($followNum == 0 && $action == "add") {
					$relaNum = 0;
					$statusFetch_private = $statusFetch['private.comment'];
					if ($statusFetch['author.type'] == "user" && $guyType == "user") {
						if ($guyId == $statusId) $relaNum = 1;
						if ($relaNum = 0) {
							$numQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '".$guyId."' AND `guy.id` = '".$statusId."';");
							if ($numQuery) $num = mysqli_num_rows($numQuery); else $num = 0;
							if ($num > 0) $relaNum = 2;
						}
						if ($relaNum = 0) {
							$numQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '".$guyId."' AND (`guy.id` = '".$statusId."' OR `guy.id` IN (SELECT `user.id` FROM `friends` WHERE `guy.id` = '".$statusId."'));");
							if ($numQuery) $num = mysqli_num_rows($numQuery); else $num = 0;
							$num = mysqli_num_rows($numQuery);
							if ($num > 0) $relaNum = 3;
						}
						if ($relaNum = 0) $relaNum = 4;
					}else {
						if ($user['mode']['id'] == $statusFetch['author.id'] && $guyType == $statusFetch['author.type']) {
							$relaNum = 1;
						}
						if ($relaNum = 0) $relaNum = 4;
					}
					if ($relaNum < $statusFetch_private) {
						$time = time();
						$action = mysqli_query($db, "INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.id`, `guy.type`) VALUES (null, '".time()."', '".$statusId."', '".$guyId."', '".$guyType."');");
						if ($action == false) {
							return array("return" => false, "reason" => "");
						}else {
							$_logs->actions(array("action" => "add", "type" => "follow", "guy" => array("type" => $guyType, "id" => $guyId), "things" => array("type" => "status", "id" => $statusId), "duplicate" => false));
							return array("return" => true);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else if ($followNum > 0 && $action == "remove") {
					$action = mysqli_query($db, "DELETE FROM `status_follow` WHERE `status.id` = '".$statusId."' AND `guy.id` = '".$guyId."' AND `guy.type` = '".$guyType."';");
					if ($action == false) {
						return array("return" => false, "reason" => "");
					}else {
						$_logs->actions(array("action" => "add", "type" => "unfollow", "guy" => array("type" => $guyType, "id" => $guyId), "things" => array("type" => "status", "id" => $statusId), "duplicate" => false));
						return array("return" => true);
					}
				}else {
					if ($action != "add" && $action != "remove") {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => false, "reason" => "");
					}
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			if ($statusId == 0) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function status_action ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "add") {
			if (isset($object['author'], $object['author']['type']) && is_string($object['author']['type'])) $guyType = $_tool->convertDatabaseString($object['author']['type']); else $guyType = null;
			if (isset($object['author'], $object['author']['id']) && is_numeric($object['author']['id'])) $guyId = $_tool->convertDatabaseString($object['author']['id']); else $guyId = null;
			if (isset($object['id']) && (is_string($object['id']) || is_numeric($object['id']))) $statusId = $_tool->convertDatabaseString($object['id']); else $statusId = null;
			if (isset($object['type']) && is_string($object['type'])) $actionType = $_tool->convertDatabaseString($object['type']); else $actionType = null;
			if ($guyType == null || $guyId == null) {
				return array("return" => false, "reason" => "");
			}
			if ($statusId == null || $actionType == null) {
				return array("return" => false, "reason" => "");
			}else {
				if (!in_array($actionType, ["favorite", "unfavorite"])) {
					return array("return" => false, "reason" => "");
				}
			}
			$existsActionRequest = "SELECT `id` FROM `status_actions` WHERE (`author.type` = '".$guyType."' AND `author.id` = '".$guyId."') AND `status.id` = '".$statusId."' AND `type` = '".$actionType."' LIMIT 1;";
			$existsActionQuery = mysqli_query($db, $existsActionRequest);
			if (!$existsActionQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($existsActionQuery) == 0) {
				$addActionRequest = "INSERT INTO `status_actions` (`id`, `status.id`, `time`, `guy.type`, `guy.id`, `type`) VALUES (NULL, '".$statusId."', '".time()."', '".$guyType."', '".$guyId."', '".$actionType."');";
				$addActionQuery = mysqli_query($db, $addActionRequest);
				if (!$addActionQuery) {
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
	}
	function status_favorite ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_logs = $this->class['_logs'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['id']) && (is_string($object['id']) || is_numeric($object['id']))) $statusId = $object['id']; else $statusId = 0;
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($statusId > 0 && ($action == "add" || $action == "remove")) {
			if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
			if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if ($guyType == null || $guyId == null) {
				return array("return" => false, "reason" => "3");
			}
			$statusQuery = mysqli_query($db, "SELECT `id`, `user.id`, `author.id`, `author.type`, `private.comment` FROM `status` WHERE `id` = '".$statusId."' LIMIT 1;");
			if (!$statusQuery) {
				return array("return" => false, "reason" => "1");
			}
			$statusNum = mysqli_num_rows($statusQuery);
			if ($statusNum > 0) {
				$statusFetch = mysqli_fetch_assoc($statusQuery);
				$favoriteQuery = mysqli_query($db, "SELECT `id` FROM `status_favorite` WHERE `status.id` = '".$statusId."' AND `guy.id` = '".$guyId."' AND `guy.type` = '".$guyType."';");
				if (!$favoriteQuery) {
					return array("return" => false, "reason" => "2");
				}
				$favoriteNum = mysqli_num_rows($favoriteQuery);
				if ($favoriteNum == 0 && $action == "add") {
					$relaNum = 0;
					$statusFetch_private = $statusFetch['private.comment'];
					if ($statusFetch['author.type'] == "user" && $guyType == "user") {
						if ($guyId == $statusFetch['user.id']) $relaNum = 1;
						if ($relaNum = 0) {
							$numQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '".$guyId."' AND `guy.id` = '{$statusFetch['user.id']}'");
							if ($numQuery) $num = mysqli_num_rows($numQuery); else $num = 0;
							if ($num > 0) $relaNum = 2;
						}
						if ($relaNum = 0) {
							$numQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '".$guyId."' AND (`guy.id` = '{$statusFetch['user.id']}' OR `guy.id` IN (SELECT `user.id` FROM `friends` WHERE `guy.id` = '{$statusFetch['user.id']}'))");
							if ($numQuery) $num = mysqli_num_rows($numQuery); else $num = 0;
							$num = mysqli_num_rows($numQuery);
							if ($num > 0) $relaNum = 3;
						}
						if ($relaNum = 0) $relaNum = 4;
					}else {
						if ($guyId == $statusFetch['author.id'] && $guyType == $statusFetch['author.type']) {
							$relaNum = 1;
						}
						if ($relaNum = 0) $relaNum = 4;
					}
					if ($relaNum < $statusFetch_private) {
						$time = time();
						$action = mysqli_query($db, "INSERT INTO `status_favorite` (`id`, `time`, `status.id`, `guy.id`, `guy.type`) VALUES (null, '".time()."', '".$statusId."', '".$guyId."', '".$guyType."')");
						if ($action == false) {
							return array("return" => false, "reason" => "4");
						}else {
							$_logs->actions(array("action" => "add", "type" => "favorite", "guy" => array("type" => $guyType, "id" => $guyId), "things" => array("type" => "status", "id" => $statusId), "duplicate" => false));
							return array("return" => true);
						}
					}else {
						return array("return" => false, "reason" => "5");
					}
				}else if ($favoriteNum > 0 && $action == "remove") {
					$action = mysqli_query($db, "DELETE FROM `status_favorite` WHERE `status.id` = '".$statusId."' AND `guy.id` = '".$guyId."' AND `guy.type` = '".$guyType."'");
					if ($action == false) {
						return array("return" => false, "reason" => "");
					}else {
						$_logs->actions(array("action" => "add", "type" => "unfavorite", "guy" => array("type" => $guyType, "id" => $guyId), "things" => array("type" => "status", "id" => $statusId), "duplicate" => false));
						return array("return" => true);
					}
				}else {
					if ($action != "add" && $action != "remove") {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => false, "reason" => "");
					}
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			if ($statusId == 0) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function comment_printcode ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "1");
		}
		if (isset($object['comment']) && is_array($object['comment']) && count($object['comment']) > 0) $commentArr = $object['comment']; else $commentArr = null;
		if (isset($object['classname']) && is_string($object['classname'])) $commentClassname = $object['classname']; else $commentClassname = null;
		if ($commentArr == null) {
			return array("return" => false, "reason" => "1");
		}
		$commentArr['infoshow'] = $commentArr['info'];
		if (isset($commentArr['infoshow']['token'])) {
			unset($commentArr['infoshow']['token']);
		}
		$code = array();
		$code['time'] = (isset($commentArr['time']) && is_numeric($commentArr['time'])) ? "<div class='time'> <i class='_tt s' title='".$_language->text('timeed_at', 'strtolower')." ".$_tool->agoDatetime($commentArr['time'], 'tip')."'></i> <span>".$_tool->agoDatetime($commentArr['time'], 'ago')."</span> </div>" : "";
		$code['author'] = (isset($commentArr['author'], $commentArr['author']['type'], $commentArr['author']['tag'], $commentArr['author']['name'], $commentArr['author']['link']) && is_string($commentArr['author']['type']) && is_string($commentArr['author']['name']) && is_string($commentArr['author']['tag']) && is_string($commentArr['author']['link'])) ? "<div class='nowrap name'> <i class='i-".$commentArr['author']['type']." _tt s' title='".$commentArr['author']['tag']."'></i> <span> <a href='".$commentArr['author']['link']."'>".$commentArr['author']['name']."</a> </span> </div>" : "";
		$code['edit'] = (isset($commentArr['edit']) && is_numeric($commentArr['edit'])) ? "<div class='edit'> <i class='_tt s' title='".$_language->text('edited_at', 'strtolower')." ".$_tool->agoDatetime($commentArr['edit'], 'tip')."'></i> <span>".$_tool->agoDatetime($commentArr['edit'], 'ago')."</span> </div>" : "";
		$code['action_reply'] = (isset($commentArr['info'], $commentArr['info']['inside'], $commentArr['info']['inside']['type'], $commentArr['reply']['count']) && $commentArr['info']['inside']['type'] == "status") ? "<div class='reply'> <i class='_tt s' status-comment-action-reply title='".$_language->text('reply_comment', 'strtolower(str)')."'></i> <span status-comment-stats-reply>".$commentArr['reply']['count']."</span> </div>" : "";
		if (isset($commentArr['action'], $commentArr['action']['favorite'], $commentArr['stats'], $commentArr['stats']['favorite']) && is_bool($commentArr['action']['favorite']) && is_numeric($commentArr['stats']['favorite'])) {
			$code['action_favorite'] = null;
			if ($commentArr['action']['favorite'] == true) {
				$code['action_favorite'] = "<i class='_tt s' status-comment-action-favorite favorite='true' title='".$_language->text('unfavorite', 'strtolower')."'></i>";
			}else if ($commentArr['action']['favorite'] == false) {
				$code['action_favorite'] = "<i class='_tt s' status-comment-action-favorite favorite='false' title='".$_language->text('favorite', 'strtolower')."'></i>";
			}
			$code['action_favorite'] = "<div class='favorite'> ".$code['action_favorite']." <span status-comment-stats-favorite>".$commentArr['stats']['favorite']."</span> </div>";
		}else {
			$code['action_favorite'] = null;
		}
		if (isset($commentArr['reply'], $commentArr['reply']['data']) && is_array($commentArr['reply']['data']) && count($commentArr['reply']) > 0) {
			$code['reply'] = null;
			foreach ($commentArr['reply']['data'] as $i => $replyThis) {
				$replyPrintCode = $this->comment_printcode(array("guy" => array("type" => $guyType, "id" => $guyId), "comment" => $replyThis, "classname" => "lines reply"));
				if (isset($replyPrintCode['return'], $replyPrintCode['code']) && $replyPrintCode['return'] == true) {
					$code['reply'] .= $replyPrintCode['code'];
				}
			}
			if (isset($commentArr['reply']['count']) && $commentArr['reply']['count'] >= 3) {
				
			}
		}else {
			$code['reply'] = null;
		}
		$code = "
		<div class='".$commentClassname."' comment-id='".$commentArr['info']['id']."' inside-type='".$commentArr['info']['inside']['type']."' inside-id='".$commentArr['info']['inside']['id']."' comment='".json_encode($commentArr['infoshow'])."'>
			<div class='bL'> <a class='avatar' href='".$commentArr['author']['link']."'> <img class='img' src='".$commentArr['author']['avatar']."' alt='".$_language->text('avatar_of', 'strtolower')." ".$commentArr['author']['name']." (".$commentArr['author']['tag'].")'> </a> </div>
			<div class='bR'>
				<div class='i'></div>
				<div class='header'>".$code['author']." ".$code['time']."</div>
				<div class='body'> <span class='content'>".$commentArr['content']['text']."</span> </div>
				<div class='footer'> ".$code['action_favorite']." ".$code['action_reply']." ".$code['edit']."</div>
			</div>
		</div>
		".$code['reply']."
		";
		return array("return" => true, "code" => $code);
	}
	function comment_fetch ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_language = $this->class['_language'];
		$_user = $this->class['_user'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}
		if (isset($object['id']) && is_array($object['id']) && count($object['id']) > 0) $idArr = $object['id']; else $idArr = null;
		if ($idArr == null) {
			return array("return" => false, "reason" => "1");
		}
		$commentArr = array();
		foreach ($idArr as $idThis => $idValue) {
			$commentArr[] = intval($idThis);
			if (!isset($commentRequestPush)) {
				$commentRequestPush = "'".intval($idThis)."'";
			}else {
				$commentRequestPush .= ", '".intval($idThis)."'";
			}
		}
		if (isset($commentRequestPush) && is_string($commentRequestPush)) {
			$commentRequestPush = "`id` IN (".$commentRequestPush.")";
		}
		$commentRequest = "SELECT * FROM `status_comment` WHERE ".$commentRequestPush.";";
		$commentQuery = mysqli_query($db, $commentRequest);
		if (!$commentQuery) {
			return array("return" => false, "reason" => "1x");
		}else {
			$commentCount = 0;
			while ($comment = mysqli_fetch_assoc($commentQuery)) {
				$getReply = false;
				foreach ($idArr as $idThis => $idValue) {
					if ($idThis == $comment['id']) {
						if (isset($idValue['reply']) && $idValue['reply'] == true) {
							$getReply = true;
						}
					}
				}
				$commentInfo['id'] = $comment['id'];
				$commentInfo['inside']['type'] = $comment['inside.type'];
				$commentInfo['inside']['id'] = $comment['inside.id'];
				$commentAuthor['type'] = $comment['author.type'];
				$commentAuthor['id'] = $comment['author.id'];
				if ($commentAuthor['type'] == "user") {
					$getInfo = $_user->profile(array("action" => "get", "rows" => ['avatar.small', 'fullname', 'username', 'link'], "label" => "id", "value" => $commentAuthor['id'], "limit" => "LIMIT 1"));
					if (isset($getInfo['return'], $getInfo['data'], $getInfo['data'][0]) && $getInfo['return'] == true) {
						$commentAuthor['avatar'] = $getInfo['data'][0]['avatar.small'];
						$commentAuthor['name'] = $getInfo['data'][0]['fullname'];
						$commentAuthor['tag'] = $getInfo['data'][0]['username'];
						$commentAuthor['link'] = $getInfo['data'][0]['link'];
					}else {
						continue;
					}
				}else {
					continue;
				}
				if ($comment['edit'] != null && $comment['edit'] != "0") {
					$commentEdit = $comment['edit'];
				}else {
					$commentEdit = false;
				}
				$commentTime = $comment['time'];
				$commentContent['text'] = $_tool->parseContent($_tool->hash('decode', $comment['content'], $comment['token'].'::'.$_parameter->get('hash_feed_comment_content')));
				$commentStatsFavoriteCountQuery = mysqli_query($db, "SELECT `id` FROM `status_comment_favorite` WHERE `comment.id` = '".$comment['id']."';");
				if (!$commentStatsFavoriteCountQuery) {
					//.
				}
				if ($commentStatsFavoriteCountQuery) $commentStats['favorite'] = mysqli_num_rows($commentStatsFavoriteCountQuery); else $commentStats['favorite'] = 0;
				$commentActionFavoriteExistsQuery = mysqli_query($db, "SELECT `id` FROM `status_comment_favorite` WHERE `comment.id` = '".$comment['id']."' AND `guy.id` = '".$guyId."' AND `guy.type` = '".$guyType."';");
				if (!$commentActionFavoriteExistsQuery) {
					//.
				}
				if ($commentActionFavoriteExistsQuery) $commentActionFavoriteExistsNum = mysqli_num_rows($commentActionFavoriteExistsQuery); $commentActionFavoriteExistsNum = 0;
				if ($commentActionFavoriteExistsNum == 0) {
					$commentAction['favorite'] = false;
				}else {
					$commentAction['favorite'] = true;
				}
				$commentReply = array();
				$commentReplyCountQuery = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `inside.type` = 'comment' AND `inside.id` = '".$comment['id']."';");
				if (!$commentReplyCountQuery) {
					//.
				}
				if (isset($commentInfo['inside']['type']) && $commentInfo['inside']['type'] == "status") {
					if ($commentReplyCountQuery) $commentReply['count'] = mysqli_num_rows($commentReplyCountQuery); else $commentReply['count'] = 0;
					if (isset($getReply) && $getReply == true) {
						$getReplyList = $this->comment_list(array("guy" => array("type" => $guyType, "id" => $guyId), "inside" => [array("type" => "comment", "id" => $comment['id'])], "sort" => ">", "id" => 0, "order" => "new", "limit" => 3));
						if (isset($getReplyList['return'], $getReplyList['count'], $getReplyList['data']) && $getReplyList['return'] == true) {
							if ($getReplyList['count'] > 0 && count($getReplyList['data']) > 0) {
								$listReplyId = array();
								foreach ($getReplyList['data'] as $key => $replyIdThis) {
									$listReplyId[$replyIdThis] = array("reply" => false);
								}
								$getReplyFetch = $this->comment_fetch(array("guy" => array("type" => $guyType, "id" => $guyId), "id" => $listReplyId));
								if (isset($getReplyFetch['return'], $getReplyFetch['data']) && $getReplyFetch['return'] == true) {
									$commentReply['data'] = $getReplyFetch['data'];
								}
							}
						}
					}
				}
				foreach ($commentArr as $i => $commentThis) {
					if ($commentThis == $comment['id']) {
						$commentArr[$i] = array(
							"info" => $commentInfo,
							"author" => $commentAuthor,
							"edit" => $commentEdit,
							"time" => $commentTime,
							"content" => $commentContent,
							"stats" => $commentStats,
							"action" => $commentAction,
							"reply" => $commentReply
						);
					}
				}
			}
			$commentCount = count($commentArr);
			return array("return" => true, "count" => $commentCount, "data" => $commentArr);
		}
	}
	function comment_list ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_language = $this->class['_language'];
		$_user = $this->class['_user'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}
		if (isset($object['sort']) && is_string($object['sort']) && in_array($object['sort'], ['<', '<=', '=', '>=', '>'])) $sort = $object['sort']; else $sort = null;
		if (isset($object['id']) && is_numeric($object['id'])) $id = $object['id']; else $id = null;
		if (isset($object['order']) && is_string($object['order']) && in_array($object['order'], ['new', 'old'])) $order = $object['order']; else $order = null;
		if (isset($object['limit']) && is_numeric($object['limit'])) $limit = $object['limit']; else $limit = null;
		if (isset($object['except']) && is_array($object['except']) && count($object['except']) > 0) $except = $object['except']; else $except = null;
		if ($sort == null || $order == null) {
			return array("return" => false, "reason" => "2");
		}
		if (isset($object['inside']) && is_array($object['inside']) && count($object['inside']) > 0) $insideArr = $object['inside']; else $insideArr = null;
		if ($insideArr == null) {
			return array("return" => false, "reason" => "");
		}
		foreach ($insideArr as $i => $insideThis) {
			if (isset($insideThis['type']) && is_string($insideThis['type'])) {
				$insideThis['type'] = $_tool->convertDatabaseString($insideThis['type']);
			}else {
				continue;
			}
			if (isset($insideThis['id']) && is_numeric($insideThis['id'])) {
				$insideThis['id'] = intval($insideThis['id']);
			}else {
				continue;
			}
			if (!isset($commenListRequestPush)) {
				$commenListRequestPush = "(`inside.type` = '".$insideThis['type']."') AND (`inside.id` = '".$insideThis['id']."')";
			}else {
				$commenListRequestPush .= "OR (`inside.type` = '".$insideThis['type']."') AND (`inside.id` = '".$insideThis['id']."')";
			}
		}
		if (isset($commenListRequestPush) && is_string($commenListRequestPush)) {
			$commenListRequestPush = "AND (".$commenListRequestPush.")";
		}else {
			return array("return" => false, "reason" => "");
		}
		if (isset($id) && is_numeric($id)) {
			$listQuery['id'] = $id;
		}else {
			$listQuery['id'] = 0;
		}
		if (isset($sort) && is_string($sort)) {
			$sort= $sort;
		}else {
			$sort = null;
		}
		if (isset($except) && is_array($except) && count($except) > 0) {
			foreach ($except as $exceptThis) {
				$except[$key] = intval($_tool->convertDatabaseString($exceptThis));
			}
			$except = "AND `status`.`id` NOT IN ('" . implode($except, "', '") . "')";
		}else {
			$except = null;
		}
		if (isset($order) && is_string($order)) {
			if ($order == "new") {
				$order = "DESC";
			}else {
				$order = "ASC";
			}
		}else {
			$order = null;
		}
		if (isset($limit) && is_numeric($limit)) {
			$limit = "LIMIT ".$limit;
		}else {
			$limit = null;
		}
		$commentListRequest = "SELECT `id` FROM `status_comment` WHERE `id` ".$sort." '".$id."' ".$except." ".$commenListRequestPush." ORDER BY `id` ".$order." ".$limit.";";
		$commentListQuery = mysqli_query($db, $commentListRequest);
		if (!$commentListQuery) {
			return array("return" => false, "reason" => "");
		}else {
			$commentListArr = array();
			$commentListCount = 0;
			while ($commentFetch = mysqli_fetch_assoc($commentListQuery)) {
				$commentListArr[] = $commentFetch['id'];
			}
			$commentListCount = count($commentListArr);
			return array("return" => true, "count" => $commentListCount, "data" => $commentListArr);
		}
	}
	function comment_get ($object = array("return" => "json", "query" => null, "class" => "gFeeds-status-comment")) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_user = $this->class['_user'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['return']) && is_string($object['return'])) $returnType = strip_tags($object['return']); else $returnType = null;
		if (isset($object['query']) && is_string($object['query'])) $queryRequest = strip_tags($object['query']); else $queryRequest = null;
		if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if (isset($object['user'], $object['user']['id']) && is_numeric($object['user']['id'])) $userId = intval($object['user']['id']); else $userId = null;
		if ($guyType == null || $guyId == null || $userId == null) {
			return array("return" => false, "reason" => "");
		}
		$commentQuery = mysqli_query($db, $queryRequest);
		if (!$commentQuery) {
			return array("return" => false, "reason" => "");
		}
		if ($commentQuery) $commentNum = mysqli_num_rows($commentQuery); else $commentNum = 0;
		if ($commentNum == 0) {
			$returnArr = true;
			$reasonArr = null;
			$dataArr = null;
		}else {
			while ($comment = mysqli_fetch_assoc($commentQuery)) {
				$commentInfo['id'] = $comment['id'];
				$commentInfo['inside.type'] = $comment['inside.type'];
				$commentInfo['inside.id'] = $comment['inside.id'];
				$commentAuthor['type'] = $comment['author.type'];
				$commentAuthor['id'] = $comment['author.id'];
				if ($commentAuthor['type'] == "user") {
					$getInfo = $_user->profile(array("rows" => ['avatar.small', 'fullname', 'username', 'link'], "label" => "id", "value" => $commentAuthor['id'], "limit" => "LIMIT 1"));
					if (isset($getInfo['return'], $getInfo['data'], $getInfo['data'][0]) && $getInfo['return'] == true) {
						$commentAuthor['avatar'] = $getInfo['data'][0]['avatar.small'];
						$commentAuthor['name'] = $getInfo['data'][0]['fullname'];
						$commentAuthor['tag'] = $getInfo['data'][0]['username'];
						$commentAuthor['link'] = $getInfo['data'][0]['link'];
					}else {
						continue;
					}
				}else {
					continue;
				}
				if ($comment['edit'] != null && $comment['edit'] != "0") {
					$commentEdit['status'] = true;
					$commentEdit['time']['stamp'] = $comment['edit'];
					$commentEdit['time']['ago'] = $_tool->agoDatetime($comment['edit'], 'ago');
					$commentEdit['time']['tip'] = $_tool->agoDatetime($comment['edit'], 'tip');
					$commentEdit['time']['json'] = json_encode(array("stamp" => $commentEdit['time']['stamp']));
				}else {
					$commentEdit['status'] = false;
				}
				$commentTime['stamp'] = $comment['time'];
				$commentTime['ago'] = $_tool->agoDatetime($comment['time'], 'ago');
				$commentTime['tip'] = $_tool->agoDatetime($comment['time'], 'tip');
				$commentTime['json'] = json_encode(array("stamp" => $commentTime['stamp']));
				$commentContent['text'] = $_tool->parseContent($_tool->hash('decode', $comment['content'], $comment['token'].'::'.$_parameter->get('hash_feed_comment_content')));
				$commentStats['favorite'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_comment_favorite` WHERE `comment.id` = '".$comment['id']."';"));
				$commentAction['favorite']['check'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_comment_favorite` WHERE `comment.id` = '".$comment['id']."' AND `guy.id` = '".$guyId."' AND `guy.type` = '".$guyType."';"));
				if ($commentAction['favorite']['check'] == 0) {
					$commentAction['favorite']['selected'] = false;
					$commentAction['favorite']['text'] = 'false';
					$commentAction['favorite']['tip'] = $_language->text('favorite', 'ucfirst');
				}else {
					$commentAction['favorite']['selected'] = true;
					$commentAction['favorite']['text'] = 'true';
					$commentAction['favorite']['tip'] = $_language->text('unfavorite', 'ucfirst');
				}
				$commentReply = array();
				$commentReplyCountQuery = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `inside.type` = 'comment' AND `inside.id` = '".$comment['id']."';");
				if (!$commentReplyCountQuery) {
					//.
				}
				if ($commentReplyCountQuery) $commentReply['count'] = mysqli_num_rows($commentReplyCountQuery); else $commentReply['count'] = 0;
				$commentData[] = array(
					"info" => $commentInfo,
					"author" => $commentAuthor,
					"edit" => $commentEdit,
					"time" => $commentTime,
					"content" => $commentContent,
					"stats" => $commentStats,
					"action" => $commentAction,
					"reply" => $commentReply
				);
			}
			if ($returnType == "json") {
				$returnArr = true;
				$reasonArr = null;
				$dataArr = $commentData;
			}else if ($returnType == "html") {
				$className = $object['class'];
				$c_data = null;
				for ($i = 0; $i < count($commentData); $i++ ) {
					$comment = $commentData[$i];
					if ($comment['edit']['status']) {
						$c_comment_edit = "
						<div class='edit'>
							<i class='_tt s' time='{$comment['edit']['time']['json']}' title='{$comment['edit']['time']['tip']}'></i>
							<span time-show>{$comment['edit']['time']['ago']}</span>
						</div>
						";
					}else {
						$c_comment_edit = null;
					}
					if ($comment['info']['inside.type'] == "status") {
						$c_comment_reply = "
						<div class='reply'>
							<i class='_tt s' status-comment-action-reply title='{$_language->text('reply_comment', 'ucfirst')}'></i>
							<span status-comment-stats-reply>{$comment['reply']['count']}</span>
						</div>
						";
					}else {
						$c_comment_reply = null;
					}
					$comment['infoshow'] = $comment['info'];
					$c_comment_info = json_encode($comment['infoshow']);
					$c_data .= "
						<div class='{$className}' status-comment-lines comment-id='{$comment['info']['id']}' inside-type='{$comment['info']['inside.type']}' inside-id='{$comment['info']['inside.id']}' comment='{$c_comment_info}'>
							<div class='bL'>
								<a class='avatar' href='{$comment['author']['link']}'>
									<img class='img' src='{$comment['author']['avatar']}'>
								</a>
							</div>
							<div class='bR'>
								<div class='i'></div>
								<div class='header'>
									<div class='nowrap name'>
										<i class='i-{$comment['author']['type']} _tt s' title='{$comment['author']['tag']}'></i>
										<span><a href='{$comment['author']['link']}'>{$comment['author']['name']}</a></span>
									</div>
									<div class='nowrap time' time='{$comment['time']['json']}'>
										<i class='_tt s' title='{$comment['time']['tip']}'></i>
										<span time-show>{$comment['time']['ago']}</span>
									</div>
								</div>
								<div class='body'>
									<span>{$comment['content']['text']}</span>
								</div>
								<div class='footer'>
									<div class='favorite'>
										<i class='_tt s' status-comment-action-favorite favorite='{$comment['action']['favorite']['text']}' title='{$comment['action']['favorite']['tip']}'></i>
										<span status-comment-stats-favorite>{$comment['stats']['favorite']}</span>
									</div>
									{$c_comment_reply}
									{$c_comment_edit}
								</div>
							</div>
						</div>
					";
				};
				$returnArr = true;
				$reasonArr = null;
				$dataArr = $c_data;
			}
		}
		return array("return" => $returnArr, "reason" => $reasonArr, "data" => $dataArr);
	}
	function comment_add ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_logs = $this->class['_logs'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['inside'], $object['inside']['type']) && is_string($object['inside']['type'])) $insideType = $_tool->convertDatabaseString($object['inside']['type']); else $insideType = null;
		if (isset($object['inside'], $object['inside']['id']) && is_string($object['inside']['id'])) $insideId = intval($object['inside']['id']); else $insideId = null;
		if (isset($object['content']) && (is_string($object['content']) || is_numeric($object['content']))) $commentContent = $object['content']; else $commentContent = null;
		if ($insideType == null || $insideId == null) {
			return array("return" => false, "reason" => "1");
		}
		if (isset($object['author'], $object['author']['type']) && is_string($object['author']['type'])) $authorType = $_tool->convertDatabaseString($object['author']['type']); else $authorType = null;
		if (isset($object['author'], $object['author']['id']) && is_numeric($object['author']['id'])) $authorId = intval($object['author']['id']); else $authorId = null;
		if (isset($object['user'], $object['user']['id']) && is_numeric($object['user']['id'])) $userId = intval($object['user']['id']); else $userId = null;
		if ($authorType == null || $authorId == null || $userId == null) {
			return array("return" => false, "reason" => "2");
		}
		if ($insideType == "status") {
			$insideThisQuery = mysqli_query($db, "SELECT `id` FROM `status` WHERE `id` = '".$insideId."' LIMIT 1;");
		}else if ($insideType == "comment") {
			$insideThisQuery = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `id` = '".$insideId."' AND `inside.type` = 'status' LIMIT 1;");
		}else {
			return array("return" => false, "reason" => "4");
		}
		if (!$insideThisQuery) {
			return array("return" => false, "reason" => "4");
		}
		if ($insideThisQuery) $insideThisCount = mysqli_num_rows($insideThisQuery); else $insideThisCount = 0;
		if ($insideThisCount == 0) {
			return array("return" => false, "reason" => "5");
		}else {
			//. check private.
			$commentArr['token'] = hash('crc32', '('.$authorType.'_'.$authorId.')'.'::'.time().'::'.rand());
			$commentArr['display'] = hash('md5', $commentArr['token']);
			$commentArr['time'] = time();
			$commentArr['inside.type'] = $insideType;
			$commentArr['inside.id'] = $insideId;
			$commentArr['user.id'] = $userId;
			$commentArr['author.type'] = $authorType;
			$commentArr['author.id'] = $authorId;
			$commentArr['edit'] = null;
			$commentArr['logscontent'] = null;
			$commentContent = $_tool->convertDatabaseString($commentContent);
			$commentArr['content'] = $_tool->hash('encode', $commentContent, $commentArr['token'].'::'.$_parameter->get('hash_feed_comment_content'));
			$insertRequest = "
			INSERT INTO `status_comment` 
			(`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) 
			VALUES 
			(NULL, '".$commentArr['token']."', '".$commentArr['display']."', '".$commentArr['time']."', '".$commentArr['inside.type']."', '".$commentArr['inside.id']."', '".$commentArr['user.id']."', '".$commentArr['author.type']."', '".$commentArr['author.id']."', '".$commentArr['edit']."', '".$commentArr['content']."', '".$commentArr['logscontent']."');
			";
			$insertQuery = mysqli_query($db, $insertRequest);
			if (!$insertQuery) {
				return array("return" => false, "reason" => "44");
			}else {
				$commentId = mysqli_insert_id($db);
				$dataArr = array("id" => $commentId);
				return array("return" => true, "data" => $dataArr);
			}
		}
	}
	function comment_favorite ($object) {
		$_tool = $this->class['_tool'];
		$_logs = $this->class['_logs'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['id']) && is_numeric($object['id'])) $commentId = intval($object['id']); else $commentId = null;
		if (isset($object['type']) && is_string($object['type'])) $favoriteType = $_tool->convertDatabaseString($object['type']); else $favoriteType = null;
		if ($commentId == null || $favoriteType == null) {
			return array("return" => false, "reason" => "1");
		}
		if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyType = intval($object['guy']['id']); else $guyId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "2");
		}
		$countCommentQuery = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `id` = '".$commentId."' LIMIT 1;");
		if (!$countCommentQuery) {
			return array("return" => false, "reason" => "2");
		}
		if ($countCommentQuery) $countComment = mysqli_num_rows($countCommentQuery); else $countComment = 0;
		if ($countComment == 0) {
			return array("return" => false, "reason" => "4");
		}else {
			$countFavoriteAddedQuery = mysqli_query($db, "SELECT `id` FROM `status_comment_favorite` WHERE `comment.id` = '".$commentId."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' LIMIT 1");
			if (!$countFavoriteAddedQuery) {
				return array("return" => false, "reason" => "4");
			}
			if ($countFavoriteAddedQuery) $countFavoriteAdded = mysqli_num_rows($countFavoriteAddedQuery); else $countFavoriteAdded = 0;
			if ($countFavoriteAdded == 0 && $favoriteType == "add") {
				$insertFavoriteRequest = "INSERT INTO`status_comment_favorite` (`id`, `time`, `comment.id`, `guy.type`, `guy.id`) VALUES (NULL, '".time()."', '".$commentId."', '".$guyType."', '".$guyId."');";
				$insertFavoriteQuery = mysqli_query($db, $insertFavoriteRequest);
				if (!$insertFavoriteQuery) {
					return array("return" => false, "reason" => "6");
				}else {
					$_logs->actions(array("action" => "add", "type" => "favorite", "guy" => array("type" => $guyType, "id" => $guyId), "things" => array("type" => "comment", "id" => $commentId), "duplicate" => false));
					return array("return" => true);
				}
			}else if ($countFavoriteAdded > 0 && $favoriteType == "remove") {
				$removeFavoriteRequest = "DELETE FROM `status_comment_favorite` WHERE `comment.id` = '".$commentId."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."';";
				$removeFavoriteQuery = mysqli_query($db, $removeFavoriteRequest);
				if (!$removeFavoriteQuery) {
					return array("return" => false, "reason" => "6");
				}else {
					$_logs->actions(array("action" => "add", "type" => "unfavorite", "guy" => array("type" => $guyType, "id" => $guyId), "things" => array("type" => "comment", "id" => $commentId), "duplicate" => false));
					return array("return" => true);
				}
			}else {
				return array("return" => false, "reason" => "5");
			}
		}
	}
	function comment_stats ($object) {
		if (isset($object['id']) && (is_string($object['id']) || is_numeric($object['id']))) $commentId = $object['id']; else $commentId = null;
		if (isset($object['type']) && is_string($object['type'])) $type = $object['type']; else $type = "all";
		if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = "all";
		if ($commentId == null) {
			return array("return" => false, "reason" => "1");
		}
		if (isset($object['author'], $object['author']['type']) && is_string($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author'], $object['author']['id']) && is_numeric($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['id']) && $this->user['login'] == true && $this->user['mode']['type'] != null && $this->user['mode']['id'] > 0) {
				$authorType = $this->user['mode']['type'];
				$authorId = $this->user['mode']['id'];
			}else {
				return array("return" => false, "reason" => "2");
			}
		}
		if (!isset($authorType) || !isset($authorId)) {
			return array("return" => false, "reason" => "3");
		}else {
			$_tool = $this->class['_tool'];
			$_parameter = $this->class['_parameter'];
			$db = $this->class['_db']->port('beta');
		}
		$commentQuery = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `id` = '{$commentId}' LIMIT 1");
		if ($commentQuery) $commentCount = mysqli_num_rows($commentQuery); else $commentCount = 0;
		if ($commentCount == 0) {
			return array("return" => false, "reason" => "4");
		}else {
			if ($rows == "favorite" || $rows == "all") {
				$favoriteQuery = mysqli_query($db, "SELECT * FROM `status_comment_favorite` WHERE `comment.id` = '{$commentId}'");
			}
			if ($rows == "reply" || $rows == "all") {
				$replyQuery = mysqli_query($db, "SELECT * FROM `status_comment` WHERE `inside.type` = 'comment' AND `inside.id` = '{$commentId}'");
			}
			if ($type == "stats" || $type == "all") {
				if (($rows == "favorite" || $rows == "all") && isset($favoriteQuery) && $favoriteQuery) {
					$favoriteCount = mysqli_num_rows($favoriteQuery);
				}
				if (($rows == "reply" || $rows == "all") && isset($replyQuery) && $replyQuery) {
					$replyCount = mysqli_num_rows($replyQuery);
				}
				$statsArr = array();
				if (($rows == "favorite" || $rows == "all") && isset($favoriteCount)) {
					$statsArr['favorite'] = $favoriteCount;
				}
				if (($rows == "reply" || $rows == "all") && isset($replyCount)) {
					$statsArr['reply'] = $replyCount;
				}
			}else {
				$statsArr = array();
			}
			if ($type == "list" || $type == "all") {
				if (($rows == "favorite" || $rows == "all") && isset($favoriteQuery) && $favoriteQuery) {
					$favoriteList = array();
					while ($favoriteListFetch = mysqli_fetch_assoc($favoriteQuery)) {
						$favoriteList[] = array(
							"guy.type" => $favoriteListFetch['guy.type'], 
							"guy.id" => $favoriteListFetch['guy.id']
						);
					}
				}
				if (($rows == "reply" || $rows == "all") && isset($replyQuery) && $replyQuery) {
					$replyList = array();
					while ($replyListFetch = mysqli_fetch_assoc($replyQuery)) {
						$replyList[] = array(
							"guy.type" => $replyListFetch['guy.type'], 
							"guy.id" => $replyListFetch['guy.id']
						);
					}
				}
				$listArr = array();
				if (($rows == "favorite" || $rows == "all") && isset($favoriteList)) {
					$listArr['favorite'] = $favoriteList;
				}
				if (($rows == "reply" || $rows == "all") && isset($replyList)) {
					$listArr['reply'] = $replyList;
				}
			}else {
				$listArr = array();
			}
			return array("return" => true, "stats" => $statsArr, "list" => $listArr);
		}
	}
	function comment_delete () {
	}
	function comment_edit () {
	}
}
?>