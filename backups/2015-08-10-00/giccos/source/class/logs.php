<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class logs {
	function __construct () {
		$GLOBALS["_logs"] = $this;
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
	function actions ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "add") {
			if (isset($object['type']) && is_string($object['type'])) $actionType = $_tool->convertDatabaseString(strip_tags($object['type'])); else $actionType = null;
			if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString(strip_tags($object['guy']['type'])); else $guyType = null;
			if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
			if (isset($object['things'], $object['things']['type']) && is_string($object['things']['type'])) $thingsType = $_tool->convertDatabaseString(strip_tags($object['things']['type'])); else $thingsType = null;
			if (isset($object['things'], $object['things']['id']) && is_numeric($object['things']['id'])) $thingsId = intval($object['things']['id']); else $thingsId = null;
			if (isset($object['object'], $object['object']['type']) && is_string($object['object']['type'])) $objType = $_tool->convertDatabaseString(strip_tags($object['object']['type'])); else $objType = null;
			if (isset($object['object'], $object['object']['id']) && is_numeric($object['object']['id'])) $objId = intval($object['object']['id']); else $objId = null;
			if (isset($object['duplicate']) && is_bool($object['duplicate'])) $duplicate = $object['duplicate']; else $duplicate = true;
			if ($actionType == null) {
				return array("return" => false, "reason" => "1");
			}
			if ($guyType == null || $guyId == null) {
				return array("return" => false, "reason" => "2");
			}
			$allowAdd = true;
			if ($duplicate == false) {
				$existsActionRequest = "SELECT `id` FROM `logs_actions` WHERE `type` = '".$actionType."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' AND (`things.type` = '".$thingsType."' AND `things.id` = '".$thingsId."') AND (`obj.type` = '".$objType."' AND `obj.id` = '".$objId."') LIMIT 1;";
				$existsActionQuery = mysqli_query($db, $existsActionRequest);
				if (!$existsActionQuery) {
					return array("return" => false, "reason" => "3");
				}else {
					if (mysqli_num_rows($existsActionQuery) > 0) {
						$allowAdd = false;
						mysqli_query($db, "UPDATE `logs_actions` SET `time` = '".time()."' WHERE `type` = '".$actionType."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' AND (`things.type` = '".$thingsType."' AND `things.id` = '".$thingsId."') AND (`obj.type` = '".$objType."' AND `obj.id` = '".$objId."');");
						return array("return" => true);
					}
				}
			}
			if (isset($allowAdd) && $allowAdd == true) {
				$addActionRequest = "INSERT INTO `logs_actions` (`id`, `time`, `guy.type`, `guy.id`, `type`, `things.type`, `things.id`, `obj.type`, `obj.id`) VALUES (NULL, '".time()."', '".$guyType."', '".$guyId."', '".$actionType."', '".$thingsType."', '".$thingsId."', '".$objType."', '".$objId."');";
				$addActionQuery = mysqli_query($db, $addActionRequest);
				if (!$addActionQuery) {
					return array("return" => false, "reason" => "5");
				}else {
					return array("return" => true);
				}
			}else {
				return array("return" => false, "reason" => "6");
			}
		}else if ($action == "exists") {
			if (isset($object['type']) && is_string($object['type'])) $actionType = $object['type']; else $actionType = null;
			if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString(strip_tags($object['guy']['type'])); else $guyType = null;
			if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
			if (isset($object['things'], $object['things']['type']) && is_string($object['things']['type'])) $thingsType = $_tool->convertDatabaseString(strip_tags($object['things']['type'])); else $thingsType = null;
			if (isset($object['things'], $object['things']['id']) && is_numeric($object['things']['id'])) $thingsId = intval($object['things']['id']); else $thingsId = null;
			if (isset($object['object'], $object['object']['type']) && is_string($object['object']['type'])) $objType = $_tool->convertDatabaseString(strip_tags($object['object']['type'])); else $objType = null;
			if (isset($object['object'], $object['object']['id']) && is_numeric($object['object']['id'])) $objId = intval($object['object']['id']); else $objId = null;
			if ($actionType == null) {
				return array("return" => false, "reason" => "");
			}
			if ($guyType == null || $guyId == null) {
				return array("return" => false, "reason" => "");
			}
			$existsActionRequest = "SELECT `id` FROM `logs_actions` WHERE `type` = '".$actionType."' AND `guy.type` = '".$guyType."' AND `guy.id` = '".$guyId."' AND (`things.type` = '".$thingsType."' AND `things.id` = '".$thingsId."') AND (`obj.type` = '".$objType."' AND `obj.id` = '".$objId."') LIMIT 1;";
			$existsActionQuery = mysqli_query($db, $existsActionRequest);
			if (!$existsActionQuery) {
				return array("return" => false, "reason" => "");
			}else {
				if (mysqli_num_rows($existsActionQuery) == 0) {
					return array("return" => true, "exists" => false);
				}else {
					return array("return" => true, "exists" => true);
				}
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function axctions ($type = null, $object = null) {
		if ($type == null || $object == null) {
			return array("return" => false, "reason" => "");
		}else {
			$this->callUserInfo();
			$user = $this->user;
		}
		if ($type == "add") {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if (isset($object['things']) && is_string($object['things'])) $things = $object['things']; else $things = null;
			if (isset($object['things_id']) && (is_string($object['things_id']) || is_numeric($object['things_id']))) $things_id = $object['things_id']; else $things_id = null;
			if (isset($object['obj']) && is_string($object['obj'])) $obj = $object['obj']; else $obj = null;
			if (isset($object['obj_id']) && (is_string($object['obj_id']) || is_numeric($object['obj_id']))) $obj_id = $object['obj_id']; else $obj_id = null;
			if (!isset($object['author_type'], $object['author_id'])) {
				$author_type = $user['mode']['type']; $author_id = $user['mode']['id'];
			}else {
				if (isset($object['author_type']) && is_string($object['author_type'])) $author_type = $object['author_type'];
				if (isset($object['author_id']) && is_string($object['author_id'])) $author_id = $object['author_id'];
			}
			if ($action == null) {
				return array("return" => false, "reason" => "");
			}
			$time = $this->class['_tool']->timeNow();
			$db = $this->class['_db']->port('beta');
			$sql = "INSERT INTO `logs_actions` (`id`, `time`, `author.type`, `author.id`, `action`, `things`, `things.id`, `obj`, `obj.id`) VALUES (NULL, '{$time}', '{$author_type}', '{$author_id}', '{$action}', '{$things}', '{$things_id}', '{$obj}', '{$obj_id}')";
			$query = mysqli_query($db, $sql);
			if (!$query) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => true);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
}
?>