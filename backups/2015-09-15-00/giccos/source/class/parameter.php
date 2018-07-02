<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class parameter {
	function __construct () {
		$GLOBALS["_parameter"] = $this;
		$this->class = $GLOBALS;
		$this->db = $this->class['_db']->port('beta');
		$this->data = array();
	}
	function setup ($language = "en", $reset = false) {
		if (isset($_SESSION["parameter"], $_SESSION["parameter"]['time'], $_SESSION["parameter"]['data'], $_SESSION["parameter"]['languageNF'])) {
			$parameter = $_SESSION["parameter"];
			if ($parameter['time'] + 24 * 3600 < time()) {
				$reset = true;
			}
			if ($parameter['language'] != $language && !in_array($parameter['languageNF'], $language)) {
				$reset = true;
			}
		}else {
			$reset = true;
		}
		if ($reset == true) {
			$languageNF = array();
			$checkLanguage = mysqli_num_rows(mysqli_query($this->db, "SELECT `id` FROM `parameter` WHERE `language` = '{$language}' LIMIT 1"));
			if ($checkLanguage == 0) {
				if (isset($_SESSION["parameter"]['languageNF'])) {
					$languageNF = $_SESSION["parameter"]['languageNF'];
				}
				$languageNF[] = $language;
				$language = "en";
			}
			$sql = "SELECT * FROM `parameter` WHERE `language` = '{$language}'";
			$query = mysqli_query($this->db, $sql);
			$parameterData = array();
			while ($fetch = mysqli_fetch_assoc($query)) {
				$parameterData[] = array("code" => $fetch['code'], "value" => $fetch['value']);
			}
			$_SESSION["parameter"] = array();
			$_SESSION["parameter"]['time'] = time();
			$_SESSION["parameter"]['language'] = $language;
			$_SESSION["parameter"]['languageNF'] = $languageNF;
			$_SESSION["parameter"]['data'] = $parameterData;
		}
		return true;
	}
	function get ($code, $serialize = false) {
		if (!isset($_SESSION["parameter"])) {
			$this->setup('en');
		}
		if (isset($this->data) && is_array($this->data) && count($this->data) > 0) {
			$dataCache = $this->data;
		}else {
			$dataCache = $_SESSION["parameter"]['data'];
		}
		$value = null;
		if (is_array($dataCache) && count($dataCache) > 0) {
			foreach ($dataCache as $key => $thisValue) {
				if (isset($thisValue['code'], $thisValue['value'])) {
					if ($thisValue['code'] == $code) {
						$value = $thisValue['value'];
						if ($serialize == true) {
							$value = unserialize($value);
						}
						break;
					}else {
						continue;
					}
				}else {
					unset($dataCache[$key]);
				}
			}
			$this->data = $dataCache;
		}
		return $value;
	}
	function insert ($language, $code, $value) {
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($language, $code, $value)){
			$addRequest = "INSERT INTO `parameter` (`id`, `code`, `value`, `language`) VALUES (NULL, '{$code}', '{$value}', '{$language}');";
			$addQuery = mysqli_query($db, $addRequest);
			if (!$addQuery) {
				return false;
			}else {
				return true;
			}
		}else {
			return false;
		}
	}
	function update ($language, $code, $value) {
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($language, $code, $value)){
			$updateRequest = "UPDATE `parameter` SET `value` = '{$value}' WHERE `code` = '{$code}' AND `language` = '{$language}'";
			$updateQuery = mysqli_query($db, $updateRequest);
			if (!$updateQuery) {
				return false;
			}else {
				return true;
			}
		}else {
			return false;
		}
	}
}
?>