<?php
if (!defined("giccos#class>user")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class user {
	function __construct () {
		$GLOBALS["_user"] = $this;
		$this->class = $GLOBALS;
		$this->ready = false;
		$this->db = null;
		$this->logged = null;
		$this->mode = null;
	}
	function using () {
		if ($this->logged == null && isset($_SESSION['user']['using'])) {
			$this->logged = $_SESSION['user']['using'];
		}
		return $this->logged;
	}
	function mode () {
		if ($this->mode == null && isset($_SESSION['user']['mode'])) {
			$this->mode = $_SESSION['user']['mode'];
		}
		return $this->mode;
	}
	function logged () {
		$using = $this->using();
		if (is_numeric($using) && $using > 0) {
			return true;
		}else {
			return false;
		}
	}
	function open ($object = array()) {
		$_db = $this->class['_db'];
		//.
		if (isset($this->db) && $this->db != null) {
			return array("return" => true, "connected" => true, "called" => false);
		}
		$openDatabase = $_db->open(array(
			"port" => "user",
			"db" => array(
				"host" => "localhost",
				"username" => "root",
				"password" => "",
				"name" => "giccos"
			)
		));
		if (isset($openDatabase, $openDatabase['return']) && $openDatabase['return']) {
			$this->db = $_db->port("user");
			return array("return" => true, "connected" => true, "called" => true);
		}else if (isset($openDatabase, $openDatabase['return'], $openDatabase['reason']) && !$openDatabase['return']) {
			return array("return" => false, "reason" => "error#user:open>".$openDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#user:open>_");
		}
	}
	function close () {
		$_db = $this->class['_db'];
		//.
		$closeDatabase = $_db->close("user");
		if (isset($closeDatabase, $closeDatabase['return']) && $closeDatabase['return']) {
			$this->db = null;
			return array("return" => true);
		}else if (isset($closeDatabase, $closeDatabase['return'], $closeDatabase['reason']) && !$closeDatabase['return']) {
			return array("return" => false, "reason" => "error#user:close>".$closeDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#user:close>_");
		}
	}
	function setup ($object = array()) {
		$openUserAction = $this->open();
		if (isset($openUserAction, $openUserAction['return']) && $openUserAction['return']) {
			$this->ready = true;
			return array("return" => true);
		}else if (isset($openUserAction, $openUserAction['return'], $openUserAction['reason']) && !$openUserAction['return']) {
			return array("return" => false, "reason" => "error#user:setup>".$openUserAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#user:setup>_");
		}
	}
	function tool ($object = array()) {
		$action = isset($object['action']) && is_string($object['action']) ? strtolower($object['action']) : null;
		if (in_array($action, ["hashuserpassword"])) {
			$hashToken = isset($object['token']) && is_string($object['token']) ? $object['token'] : null;
			$hashDisplay = isset($object['display']) && is_string($object['display']) ? $object['display'] : null;
			$hashText = isset($object['text']) && (is_string($object['text']) || is_numeric($object['text'])) ? $object['text'] : null;
			if ($hashToken == null) {
				return array("return" => false, "reason" => "error#user:tool>hashuserpassword>tokenexists");
			}else if ($hashDisplay == null) {
				return array("return" => false, "reason" => "error#user:tool>hashuserpassword>displayexists");
			}else if ($hashText == null) {
				return array("return" => false, "reason" => "error#user:tool>hashuserpassword>textexists");
			}
			$hashHandled = hash('sha256', hash('sha1', $hashToken.'::'.$hashDisplay).'::'.hash('sha1', $hashText));
			return array("return" => true, "hash" => $hashHandled);
		}else {
			return array("return" => false, "reason" => "error#user:tool>actionexists");
		}
	}
	function session ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		$_tool = $this->class['_tool'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? strtolower($object['action']) : null;
		if (in_array($action, ["add", "create"])) {
			$usrObj = isset($object['user']) && is_array($object['user']) && count($object['user']) > 0 ? $object['user'] : null;
			if (!isset($usrObj, $usrObj['id'])) {
				return array("return" => false, "reason" => "error#user:session>create>userobjnull");
			}
			$usrObj['type'] = "user";
			if (isset($usrObj['mode'])) {
				unset($usrObj['mode']);
			}
			$usrId = $usrObj['id'];
			$clientObj = $_tool->client();
			$sessionIp = $clientObj['ip'];
			$sessionClient = $clientObj['token'];
			$sessionPort = rand(0000, 9999);
			$sessionTime = time();
			$sessionToken = hash('md5', $sessionClient.'_'.$sessionPort.'_'.$sessionTime);
			$sessionArr = array(
				"port" => $sessionPort,
				"time" => $sessionTime,
				"token" => $sessionToken,
				"user" => $usrId
			);
			$existsSessionRequest = "SELECT * FROM `user_session` WHERE `user.id` = '".$_tool->parseDBString($usrId)."' AND `client` = '".$_tool->parseDBString($sessionClient)."' AND `ip` = '".$_tool->parseDBString($sessionIp)."' AND `updated` + '360' > '".time()."' LIMIT 1;";
			$existsSessionQuery = mysqli_query($this->db, $existsSessionRequest);
			if (!$existsSessionQuery) {
				return array("return" => false, "reason" => "error#user:session>create>failqueryexists");
			}else {
				if (mysqli_num_rows($existsSessionQuery) > 0) {
					$thisSessionFetch = mysqli_fetch_assoc($existsSessionQuery);
					if (isset($thisSessionFetch['user.id'])) {
						$thisSessionFetch['user'] = $thisSessionFetch['user.id'];
						unset($thisSessionFetch['user.id']);
					}
					$sessionArr = $thisSessionFetch;
					return array("return" => true, "created" => false, "data" => $sessionArr);
				}
			}
			$addSessionRequest = "INSERT INTO `user_session` (`id`, `time`, `token`, `port`, `client`, `ip`, `user.id`, `updated`) VALUES (NULL, '".$sessionTime."', '".$_tool->parseDBString($sessionToken)."', '".$_tool->parseDBString($sessionPort)."', '".$_tool->parseDBString($sessionClient)."', '".$_tool->parseDBString($sessionIp)."', '".$_tool->parseDBString($usrId)."', '".time()."');";
			$addSessionQuery = mysqli_query($this->db, $addSessionRequest);
			if (!$addSessionQuery) {
				return array("return" => false, "reason" => "error#user:session>create>failqueryadd");
			}else {
				$sessionArr['id'] = $sessionId = mysqli_insert_id($this->db);
			}
			return array("return" => true, "created" => true, "data" => $sessionArr);
		}else if (in_array($action, ["update"])) {
			$sessionId = isset($object['id']) && (is_string($object['id']) || is_numeric($object['id'])) ? $object['id'] : null;
			if ($sessionId == null) {
				return array("return" => false, "reason" => "error#user:session>update>idnnull");
			}
			$updateSessionRequest = "UPDATE `user_session` SET `updated` = '".time()."' WHERE `id` = '".$_tool->parseDBString($sessionId)."' ;";
			$updateSessionQuery = mysqli_query($this->db, $updateSessionRequest);
			if (!$updateSessionQuery) {
				return array("return" => false, "reason" => "error#user:session>update>failqueryupdate");
			}
			return array("return" => true);
		}else {
			return array("return" => false, "reason" => "error#user:session>actionexists");
		}
	}
	function id ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		$_tool = $this->class['_tool'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? strtolower($object['action']) : null;
		if (in_array($action, ["add"])) {
			//.
		}else if (in_array($action, ["get"])) {
			$row = isset($object['row']) && is_array($object['row']) && count($object['row']) > 0 ? $object['row'] : null;
			$label = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$value = isset($object['value']) && (is_string($object['label']) || is_numeric($object['label'])) ? $object['value'] : null;
			if (in_array($row, [null])) {
				return array("return" => false, "reason" => "error#user:id>get>rowexists");
			}else if (!in_array($label, ["id", "token", "display", "username", "email"])) {
				return array("return" => false, "reason" => "error#user:id>get>labelexists");
			}else if (in_array($label, [null])) {
				return array("return" => false, "reason" => "error#user:id>get>valueexists");
			}
			$rowAllow = ["id", "display", "username", "email", "password", "passhash", "fullname", "firstname", "middlename", "lastname", "formatname", "nickname", "gender", "link"];
			$rowArr = $row;
			$rowText = null;
			foreach ($rowArr as $rowValue) {
				if ($rowValue == "*") {
					$rowText = "*";
					$valueLink = true;
					break;
				}else if (!in_array($rowValue, $rowAllow)) {
					continue;
				}
				if ($rowValue == "link") {
					if (!in_array("username", $rowArr)) {
						$rowArr[] = "username";
					}
					$valueLink = true;
					continue;
				}
				$rowText = $rowText == null ? "`".$_tool->parseDBString($rowValue)."`" : $rowText.", `".$_tool->parseDBString($rowValue)."`";
			}
			$getUserIdRequest = "SELECT ".$rowText." FROM `user_id` WHERE `".$_tool->parseDBString($label)."` = '".$_tool->parseDBString($value)."' LIMIT 1;";
			$getUserIdQuery = mysqli_query($this->db, $getUserIdRequest);
			if (!$getUserIdQuery) {
				return array("return" => false, "reason" => "error#user:id>exists>existsquery");
			}
			if (mysqli_num_rows($getUserIdQuery) == 0) {
				return array("return" => true, "exists" => false, "data" => array());
			}else {
				$userIdFetch = mysqli_fetch_assoc($getUserIdQuery);
				if (isset($userIdFetch['token'])) {
					unset($userIdFetch['token']);
				}
				if (isset($valueLink) && $valueLink) {
					$userIdFetch['link'] = $_tool->links('wall/'.$userIdFetch['username']);
				}
				$dataArr = $userIdFetch;
				return array("return" => true, "exists" => true, "data" => $dataArr);
			}
		}else if (in_array($action, ["exists"])) {
			$label = isset($object['label']) ? $object['label'] : null;
			$value = isset($object['value']) ? $object['value'] : null;
			if (!in_array($label, ["id", "token", "display", "username", "email"])) {
				return array("return" => false, "reason" => "error#user:id>exists>labelexists");
			}else if (in_array($label, [null])) {
				return array("return" => false, "reason" => "error#user:id>exists>valueexists");
			}
			$existsUserIdRequest = "SELECT `id` FROM `user_id` WHERE `".$_tool->parseDBString($label)."` = '".$_tool->parseDBString($value)."' LIMIT 1;";
			$existsUserIdQuery = mysqli_query($this->db, $existsUserIdRequest);
			if (!$existsUserIdQuery) {
				return array("return" => false, "reason" => "error#user:id>exists>existsquery");
			}
			if (mysqli_num_rows($existsUserIdQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				return array("return" => true, "exists" => true);
			}
		}else {
			return array("return" => false, "reason" => "error#user:id>actionexists");
		}
	}
}
?>