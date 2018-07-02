<?php
if (!defined("giccos#class>ip")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class ip {
	function __construct () {
		$GLOBALS["_ip"] = $this;
		$this->class = $GLOBALS;
		$this->ready = false;
		$this->db = null;
	}
	function open ($object = array()) {
		$_db = $this->class['_db'];
		//.
		if (isset($this->db) && $this->db != null) {
			return array("return" => true, "connected" => true, "called" => false);
		}
		$openDatabase = $_db->open(array(
			"port" => "ip",
			"db" => array(
				"host" => "localhost",
				"username" => "root",
				"password" => "",
				"name" => "giccos"
			)
		));
		if (isset($openDatabase, $openDatabase['return']) && $openDatabase['return']) {
			$this->db = $_db->port("ip");
			return array("return" => true, "connected" => true, "called" => true);
		}else if (isset($openDatabase, $openDatabase['return'], $openDatabase['reason']) && !$openDatabase['return']) {
			return array("return" => false, "reason" => "error#ip:open>".$openDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#ip:open>_");
		}
	}
	function close () {
		$_db = $this->class['_db'];
		//.
		$closeDatabase = $_db->close("ip");
		if (isset($closeDatabase, $closeDatabase['return']) && $closeDatabase['return']) {
			$this->db = null;
			return array("return" => true);
		}else if (isset($closeDatabase, $closeDatabase['return'], $closeDatabase['reason']) && !$closeDatabase['return']) {
			return array("return" => false, "reason" => "error#ip:close>".$closeDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#ip:close>_");
		}
	}
	function setup ($object = array()) {
		$this->ready = false;
		$openUserAction = $this->open();
		if (isset($openUserAction, $openUserAction['return']) && $openUserAction['return']) {
			$this->ready = true;
			return array("return" => true);
		}else if (isset($openUserAction, $openUserAction['return'], $openUserAction['reason']) && !$openUserAction['return']) {
			return array("return" => false, "reason" => "error#ip:setup>".$openUserAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#ip:setup>_");
		}
	}
	function data ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		$_tool = $this->class['_tool'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? strtolower($object['action']) : null;
		if (in_array($action, ["get"])) {
			$ipCode = isset($object['ip']) && is_string($object['ip']) ? $object['ip'] : null;
			if ($ipCode == null) {
				return array("return" => false, "reason" => "error#ip:data>get>ipnull");
			}else if (!preg_match("/^([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})$/", $ipCode)) {
				return array("return" => false, "reason" => "error#ip:data>get>ipincorrect");
			}
			if (preg_match("/^([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})$/", $ipCode)) {
				$ipType = "ipv4";
			}
			// $ipHash = $ipType.'|'.$ipCode; // $ipHash = hash('crc32', $ipType.'|'.$ipCode);
			$ipHash = $ipCode; // $ipHash = hash('crc32', $ipCode);
			if (isset($_SESSION['ip']['data'][$ipHash])) {
				return array("return" => true, "exists" => true, "data" => $_SESSION['ip']['data'][$ipHash]);
			}
			$getIpDataRequest = "SELECT * FROM `ip_data` WHERE `type` = '".$_tool->parseDBString($ipType)."' AND (INET_ATON('".$_tool->parseDBString($ipCode)."') BETWEEN INET_ATON(`ip.begin`) AND INET_ATON(`ip.end`)) LIMIT 1;";
			$getIpDataQuery = mysqli_query($this->db, $getIpDataRequest);
			if (!$getIpDataQuery) {
				return array("return" => false, "reason" => "error#ip:data>get>failqueryget");
			}
			if (mysqli_num_rows($getIpDataQuery) == 0) {
				return array("return" => true, "exists" => false, "data" => array());
			}else {
				$thisIpDataFetch = mysqli_fetch_assoc($getIpDataQuery);
				foreach ($thisIpDataFetch as $key => $thisIpDataValue) {
					$thisIpDataFetch[$key] = $_tool->parseDisplayString($thisIpDataValue);
				}
				$dataArr = $thisIpDataFetch;
				$_SESSION['ip']['data'][$ipHash] = $dataArr;
				return array("return" => true, "exists" => true, "data" => $dataArr);
			}
		}else {
			return array("return" => false, "reason" => "error#ip:data>actionexists");
		}
	}
}
?>