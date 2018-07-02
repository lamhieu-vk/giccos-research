<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class ip {
	function __construct () {
		$GLOBALS["_ip"] = $this;
		$this->class = $GLOBALS;
	}
	function info ($object) {
		$_tool = $this->class['_tool'];
		$db = $this->class['_db']->port('beta');
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if ($action == "check") {
			$ip = isset($object['ip']) && is_string($object['ip']) ? $_tool->convertDatabaseString($object['ip']) : null;
			if ($ip == null) {
				return array("return" => false, "reason" => "");
			}else if (!preg_match("/^([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})$/", $ip)) {
				return array("return" => false, "reason" => "");
			}
			$getInfoRequest = "SELECT * FROM `ip_info` WHERE INET_ATON('".$ip."') BETWEEN INET_ATON(`ip.begin`) AND INET_ATON(`ip.end`) LIMIT 1";
			$getInfoQuery = mysqli_query($db, $getInfoRequest);
			if (!$getInfoQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($getInfoQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				$dataArr = array();
				$dataArr = mysqli_fetch_assoc($getInfoQuery);
				return array("return" => true, "exists" => true, "data" => $dataArr);
			}
		}
	}
}
?>