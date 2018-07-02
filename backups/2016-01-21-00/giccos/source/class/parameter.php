<?php
if (!defined("giccos#class>parameter")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class parameter {
	function __construct () {
		$GLOBALS["_parameter"] = $this;
		$this->class = $GLOBALS;
		$this->ready = false;
		$this->db = null;
		$this->code = null;
		$this->data = array();
	}
	function open ($object = array()) {
		$_db = $this->class['_db'];
		//.
		if (isset($this->db) && $this->db != null) {
			return array("return" => true, "connected" => true, "called" => false);
		}
		$openDatabase = $_db->open(array(
			"port" => "parameter",
			"db" => array(
				"host" => "localhost",
				"username" => "root",
				"password" => "",
				"name" => "giccos"
			)
		));
		if (isset($openDatabase, $openDatabase['return']) && $openDatabase['return']) {
			$this->db = $_db->port("parameter");
			return array("return" => true, "connected" => true, "called" => true);
		}else if (isset($openDatabase, $openDatabase['return'], $openDatabase['reason']) && !$openDatabase['return']) {
			return array("return" => false, "reason" => "error#parameter:open>".$openDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#parameter:open>_");
		}
	}
	function close () {
		$_db = $this->class['_db'];
		//.
		$closeDatabase = $_db->close("parameter");
		if (isset($closeDatabase, $closeDatabase['return']) && $closeDatabase['return']) {
			$this->db = null;
			return array("return" => true);
		}else if (isset($closeDatabase, $closeDatabase['return'], $closeDatabase['reason']) && !$closeDatabase['return']) {
			return array("return" => false, "reason" => "error#parameter:close>".$closeDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#parameter:close>_");
		}
	}
	function exists ($object = array()) {
		$parameter = isset($object['parameter']) && is_string($object['parameter']) ? $object['parameter'] : null;
		if ($parameter == null) {
			return array("return" => false, "reason" => "error#parameter:exists>langnull");
		}else {
			if (isset($this->data[$parameter]) && is_array($this->data[$parameter])) {
				// $this->code = $parameter;
				return array("return" => true, "exists" => true, "supported" => true, "cached" => true);
			}
		}
		$openParameterAction = $this->open();
		if (isset($openParameterAction, $openParameterAction['return']) && $openParameterAction['return']) {
			// $existsParameterRequest = "SELECT `id` FROM `parameter_id` WHERE `code` = '".$parameter."' AND `supported` = '1' AND `code` IN (SELECT `parameter` FROM `parameter_data` WHERE `parameter` = '".$parameter."') LIMIT 1;";
			$existsParameterRequest = "SELECT `id` FROM `parameter_id` WHERE `code` = '".$parameter."' AND `supported` = '1' LIMIT 1;";
			$existsParameterQuery = mysqli_query($this->db, $existsParameterRequest);
			if (!$existsParameterQuery) {
				return array("return" => false, "reason" => "error#parameter:exists>existsquery");
			}else {
				if (mysqli_num_rows($existsParameterQuery) == 0) {
					return array("return" => true, "exists" => false, "supported" => false, "cached" => false);
				}else {
					return array("return" => true, "exists" => true, "supported" => true, "cached" => false);
				}
			}
		}else if (isset($openParameterAction, $openParameterAction['return'], $openParameterAction['reason']) && !$openParameterAction['return']) {
			return array("return" => false, "reason" => "error#parameter:exists>".$openParameterAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#parameter:exists>_");
		}
	}
	function setup ($object = array()) {
		$refresh = isset($object['refresh']) && is_bool($object['refresh']) ? $object['refresh'] : false;
		$code = isset($object['code']) && is_string($object['code']) ? $object['code'] : null;
		$cache = isset($object['cache']) && is_bool($object['cache']) ? $object['cache'] : true;
		if ($code == null) {
			return array("return" => false, "reason" => "error#parameter:setup>codenull");
		}else {
			if (!$refresh && isset($this->data[$code]) && is_array($this->data[$code])) {
				$this->code = $code;
				$this->ready = true;
				return array("return" => true, "exists" => true, "setup" => false, "cached" => true);
			}
			if (!$refresh && $cache) {
				if (isset($_SESSION['parameter']['data'][$code]) && is_array($_SESSION['parameter']['data'][$code])) {
					$this->code = $code;
					$this->data[$code] = $_SESSION['parameter']['data'][$code];
					$this->ready = true;
					return array("return" => true, "exists" => true, "setup" => false, "cached" => true);
				}
			}
		}
		$openParameterAction = $this->open();
		if (isset($openParameterAction, $openParameterAction['return']) && $openParameterAction['return']) {
			$getParameterRequest = "SELECT * FROM `parameter_data` WHERE `code` = '".$code."';";
			$getParameterQuery = mysqli_query($this->db, $getParameterRequest);
			if (!$getParameterQuery) {
				return array("return" => false, "reason" => "error#parameter:setup>getquery");
			}else {
				if (mysqli_num_rows($getParameterQuery) == 0) {
					$this->ready = true;
					return array("return" => true, "exists" => false, "setup" => true, "cached" => false);
				}else {
					$dataParameterArr = array();
					while ($rowParameterFetch = mysqli_fetch_assoc($getParameterQuery)) {
						if (isset($rowParameterFetch['code'])) {
							unset($rowParameterFetch['code']);
						}
						$dataParameterArr[] = $rowParameterFetch;
					}
					$this->code = $code;
					$this->data[$code] = $dataParameterArr;
					if ($cache) {
						$_SESSION['parameter']['data'][$code] = $dataParameterArr;
					}
					$this->ready = true;
					return array("return" => true, "exists" => true, "setup" => true, "cached" => $cache);
				}
			}
		}else if (isset($openParameterAction, $openParameterAction['return'], $openParameterAction['reason']) && !$openParameterAction['return']) {
			return array("return" => false, "reason" => "error#parameter:setup>".$openParameterAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#parameter:setup>_");
		}
	}
	function data ($code = null) {
		$code = isset($code) && is_string($code) ? $code : null;
		if ($code == null) {
			return array("return" => false, "reason" => "error#parameter:data>codenull");
		}else {
			$listDataArr = array();
			if (isset($this->data[$code]) && is_array($this->data[$code])) {
				$listDataArr = $this->data[$code];
			}
			if (isset($_SESSION['parameter']['data'][$code]) && is_array($_SESSION['parameter']['data'][$code])) {
				$listDataArr = $this->data[$code] = $_SESSION['parameter']['data'][$code];
			}
			return array("return" => true, "data" => $listDataArr);
		}
	}
	function get ($label = null) {
		if (!$this->ready) {
			$this->setup(array(
				"code" => "global"
			));
		}
		$label = isset($label) && is_string($label) ? $label : null;
		if ($label == null) {
			return array("return" => false, "reason" => "error#parameter:text>labelnull");
		}
		$dataParameterAction = $this->data($this->code);
		if (isset($dataParameterAction, $dataParameterAction['return'], $dataParameterAction['data']) && $dataParameterAction['return']) {
			$valueParameter = null;
			$listParameterArr = $dataParameterAction['data'];
			foreach ($listParameterArr as $key => $listParameterRow) {
				if (isset($listParameterRow, $listParameterRow['label']) && $listParameterRow['label'] == $label) {
					$valueParameter = $listParameterRow['value'];
					break;
				}
			}
			return $valueParameter;
		}else if (isset($dataParameterAction, $dataParameterAction['return'], $dataParameterAction['reason']) && !$dataParameterAction['return']) {
			return array("return" => false, "reason" => "error#parameter:code>".$dataParameterAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#parameter:code>_");
		}
	}
}
?>