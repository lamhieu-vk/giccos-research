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
			$ipCode = isset($object['ip']) && is_string($object['ip']) ? $_tool->convertDatabaseString($object['ip']) : null;
			if ($ipCode == null) {
				return array("return" => false, "reason" => "");
			}else if (!preg_match("/^([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})$/", $ipCode)) {
				return array("return" => false, "reason" => "");
			}else {
				$ipHash = hash('crc32', $ipCode);
				if (isset($_SESSION["cache"]['ip'][$ipHash])) {
					$dataArr = $_SESSION["cache"]['ip'][$ipHash];
					return array("return" => true, "exists" => true, "data" => $dataArr);
				}
			}
			if (preg_match("/^([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})\.([0-9]{1,3})$/", $ipCode)) {
				$ipType = "ipv4";
			}else {
				return array("return" => false, "reason" => "");
			}
			$getInfoRequest = "SELECT * FROM `ip_info` WHERE `type` = '".$ipType."' AND (INET_ATON('".$ipCode."') BETWEEN INET_ATON(`ip.begin`) AND INET_ATON(`ip.end`)) LIMIT 1";
			$getInfoQuery = mysqli_query($db, $getInfoRequest);
			if (!$getInfoQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($getInfoQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				$dataArr = mysqli_fetch_assoc($getInfoQuery);
				$_SESSION["cache"]['ip'][$ipHash] = $dataArr;
				return array("return" => true, "exists" => true, "data" => $dataArr);
			}
		}
	}
}
?>