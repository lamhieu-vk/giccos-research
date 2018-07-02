<?php
if (!defined("giccos#class>language")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class language {
	function __construct () {
		$GLOBALS["_language"] = $this;
		$this->class = $GLOBALS;
		$this->ready = false;
		$this->db = null;
		$this->language = null;
		$this->data = array();
	}
	function using () {
		if ($this->language == null && isset($_SESSION['language']['using'])) {
			$this->language = $_SESSION['language']['using'];
		}
		return $this->language;
	}
	function open ($object = array()) {
		$_db = $this->class['_db'];
		//.
		if (isset($this->db) && $this->db != null) {
			return array("return" => true, "connected" => true, "called" => false);
		}
		$openDatabase = $_db->open(array(
			"port" => "language",
			"db" => array(
				"host" => "localhost",
				"username" => "root",
				"password" => "",
				"name" => "giccos"
			)
		));
		if (isset($openDatabase, $openDatabase['return']) && $openDatabase['return']) {
			$this->db = $_db->port("language");
			return array("return" => true, "connected" => true, "called" => true);
		}else if (isset($openDatabase, $openDatabase['return'], $openDatabase['reason']) && !$openDatabase['return']) {
			return array("return" => false, "reason" => "error#language:open>".$openDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#language:open>_");
		}
	}
	function close () {
		$_db = $this->class['_db'];
		//.
		$closeDatabase = $_db->close("language");
		if (isset($closeDatabase, $closeDatabase['return']) && $closeDatabase['return']) {
			$this->db = null;
			return array("return" => true);
		}else if (isset($closeDatabase, $closeDatabase['return'], $closeDatabase['reason']) && !$closeDatabase['return']) {
			return array("return" => false, "reason" => "error#language:close>".$closeDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#language:close>_");
		}
	}
	function exists ($object = array()) {
		$language = isset($object['language']) && is_string($object['language']) ? $object['language'] : null;
		if ($language == null) {
			return array("return" => false, "reason" => "error#language:exists>langnull");
		}else {
			if (isset($this->data[$language]) && is_array($this->data[$language])) {
				return array("return" => true, "exists" => true, "supported" => true, "cached" => true);
			}
		}
		$openLanguageAction = $this->open();
		if (isset($openLanguageAction, $openLanguageAction['return']) && $openLanguageAction['return']) {
			// $existsLanguageRequest = "SELECT `id` FROM `language_id` WHERE `code` = '".$language."' AND `supported` = '1' AND `code` IN (SELECT `language` FROM `language_data` WHERE `language` = '".$language."') LIMIT 1;";
			$existsLanguageRequest = "SELECT `id` FROM `language_id` WHERE `code` = '".$language."' AND `supported` = '1' LIMIT 1;";
			$existsLanguageQuery = mysqli_query($this->db, $existsLanguageRequest);
			if (!$existsLanguageQuery) {
				return array("return" => false, "reason" => "error#language:exists>existsquery");
			}else {
				if (mysqli_num_rows($existsLanguageQuery) == 0) {
					return array("return" => true, "exists" => false, "supported" => false, "cached" => false);
				}else {
					return array("return" => true, "exists" => true, "supported" => true, "cached" => false);
				}
			}
		}else if (isset($openLanguageAction, $openLanguageAction['return'], $openLanguageAction['reason']) && !$openLanguageAction['return']) {
			return array("return" => false, "reason" => "error#language:exists>".$openLanguageAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#language:exists>_");
		}
	}
	function setup ($object = array()) {
		$refresh = isset($object['refresh']) && is_bool($object['refresh']) ? $object['refresh'] : false;
		$language = isset($object['language']) && is_string($object['language']) ? $object['language'] : null;
		$language = $language == null && $this->using() != null ? $this->using() : $language;
		$cache = isset($object['cache']) && is_bool($object['cache']) ? $object['cache'] : true;
		if ($language == null) {
			return array("return" => false, "reason" => "error#language:setup>langnull");
		}else {
			if (!$refresh && isset($this->data[$language]) && is_array($this->data[$language])) {
				$this->language = $language;
				$this->ready = true;
				return array("return" => true, "exists" => true, "setup" => false, "cached" => true);
			}
			if (!$refresh && $cache) {
				if (isset($_SESSION['language']['data'][$language]) && is_array($_SESSION['language']['data'][$language])) {
					$_SESSION['language']['using'] = $this->language = $language;
					$this->data[$language] = $_SESSION['language']['data'][$language];
					$this->ready = true;
					return array("return" => true, "exists" => true, "setup" => false, "cached" => true);
				}
			}
		}
		$openLanguageAction = $this->open();
		if (isset($openLanguageAction, $openLanguageAction['return']) && $openLanguageAction['return']) {
			$getLanguageRequest = "SELECT * FROM `language_data` WHERE `language` = '".$language."';";
			$getLanguageQuery = mysqli_query($this->db, $getLanguageRequest);
			if (!$getLanguageQuery) {
				return array("return" => false, "reason" => "error#language:setup>getquery");
			}else {
				if (mysqli_num_rows($getLanguageQuery) == 0) {
					$this->ready = true;
					return array("return" => true, "exists" => false, "setup" => true, "cached" => false);
				}else {
					$dataLanguageArr = array();
					while ($rowLanguageFetch = mysqli_fetch_assoc($getLanguageQuery)) {
						if (isset($rowLanguageFetch['time'])) {
							unset($rowLanguageFetch['time']);
						}
						if (isset($rowLanguageFetch['language'])) {
							unset($rowLanguageFetch['language']);
						}
						if (isset($rowLanguageFetch['updated'])) {
							unset($rowLanguageFetch['updated']);
						}
						$rowLanguageFetch['short'] = isset($rowLanguageFetch['short']) ? filter_var($rowLanguageFetch['short'], FILTER_VALIDATE_BOOLEAN) : false;
						$dataLanguageArr[] = $rowLanguageFetch;
					}
					$_SESSION['language']['using'] = $this->language = $language;
					$this->data[$language] = $dataLanguageArr;
					if ($cache) {
						$_SESSION['language']['data'][$language] = $dataLanguageArr;
					}
					$this->ready = true;
					return array("return" => true, "exists" => true, "setup" => true, "cached" => $cache);
				}
			}
		}else if (isset($openLanguageAction, $openLanguageAction['return'], $openLanguageAction['reason']) && !$openLanguageAction['return']) {
			return array("return" => false, "reason" => "error#language:setup>".$openLanguageAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#language:setup>_");
		}
	}
	function data ($language = null) {
		if (!$this->ready) {
			$this->setup(array(
				"language" => "global"
			));
		}
		//.
		$language = isset($language) && is_string($language) ? $language : null;
		if ($language == null) {
			return array("return" => false, "reason" => "error#language:data>codenull");
		}else {
			$listDataArr = array();
			if (isset($this->data[$language]) && is_array($this->data[$language])) {
				$listDataArr = $this->data[$language];
			}
			if (isset($_SESSION['language']['data'][$language]) && is_array($_SESSION['language']['data'][$language])) {
				$listDataArr = $this->data[$language] = $_SESSION['language']['data'][$language];
			}
			return array("return" => true, "data" => $listDataArr);
		}
	}
	function text ($label = null, $type = null, $short = null) {
		if (!$this->ready) {
			$this->setup(array(
				"language" => "global"
			));
		}
		//.
		$label = isset($label) && is_string($label) ? $label : null;
		$type = isset($type) && is_string($type) ? $type : null;
		$short = isset($short) && is_bool($short) ? $short : false;
		if ($label == null) {
			return array("return" => false, "reason" => "error#language:text>labelnull");
		}
		$dataLanguageAction = $this->data($this->language);
		if (isset($dataLanguageAction, $dataLanguageAction['return'], $dataLanguageAction['data']) && $dataLanguageAction['return']) {
			$valueLanguage = null;
			$listLanguageArr = $dataLanguageAction['data'];
			foreach ($listLanguageArr as $key => $listLanguageRow) {
				if (isset($listLanguageRow, $listLanguageRow['label']) && $listLanguageRow['label'] == $label && $listLanguageRow['short'] == $short) {
					$valueLanguage = $listLanguageRow['value'];
					break;
				}
			}
			/*if ($valueLanguage == null) {
				foreach ($listLanguageArr as $key => $listLanguageRow) {
					if (isset($listLanguageRow, $listLanguageRow['label']) && $listLanguageRow['label'] == $label) {
						$valueLanguage = $listLanguageRow['value'];
						break;
					}
				}
			}*/
			return $valueLanguage;
		}else if (isset($dataLanguageAction, $dataLanguageAction['return'], $dataLanguageAction['reason']) && !$dataLanguageAction['return']) {
			return array("return" => false, "reason" => "error#language:text>".$dataLanguageAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#language:text>_");
		}
	}
}
?>