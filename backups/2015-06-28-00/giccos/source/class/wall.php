<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class wall {
	function __construct () {
		$GLOBALS["_wall"] = $this;
		$this->class = $GLOBALS;
		$this->db = $this->class['_db']->port('beta');
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
					return array("return" => false, "reason" => null);
				}
			}
			$queryAvailable = mysqli_query($this->class['_db']->port('beta'), $requestAvailable);
			if ($queryAvailable == true && mysqli_num_rows($queryAvailable) == 1) {
				return array("return" => true);
			}else {
				return array("return" => false, "reason" => null);
			}
		}else {
			return array("return" => false, "reason" => null);
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
				$isBlocked = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `users_block` WHERE (`user.id` = '{$wallId}' AND `guy.type` = '{guyType}' AND `guy.id` = '{$guyId}') OR (`user.id` = '{$guyId}' AND 'user' = '{$guyType}' AND `guy.type` = 'user' AND `guy.id` = '{$wallId}') LIMIT 1"));
				if ($isBlocked > 0) {
					return array("return" => true, "guy" => 5);
				}else {
					if ($guyType == "user") {
						$isFriend = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$wallId}' AND `guy.id` = '{$guyId}' LIMIT 1"));
						if ($isFriend > 0) {
							return array("return" => true, "guy" => 2);
						}
						$isMutualFriends = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$wallId}' AND `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$guyId}') LIMIT 1"));
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
			return array("return" => false, "reason" => null);
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
				return array("return" => false, "reason" => null);
			}
		}else {
			return array("return" => false, "reason" => null);
		}
	}
}
?>