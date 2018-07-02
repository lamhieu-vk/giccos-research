<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class language {
	private $language = "en";
	function __construct ($language = "en") {
		$GLOBALS["_language"] = $this;
		$this->class = $GLOBALS;
		$count = mysqli_num_rows(mysqli_query($this->class['_db']->port('beta'), "SELECT `id` FROM `languages` WHERE `code` = '{$language}'"));
		if($count == 0){
			$_SESSION["client"]['language'] = array();
			$_SESSION["client"]['language']['code'] = "en";
			return array("return" => false, "reason" => "ERROR#LANG_001", "language" => $language);
		}else {
			$_SESSION["client"]['language']['code'] = $language;
			$this->language = $language;
			if (!isset($this->data, $this->data[$this->language])) {
				if (isset($_SESSION["client"]['language']['data'][$this->language])) {
					if (!isset($this->data)) {
						$this->data = array();
					}
					if (isset($_SESSION["client"]['language']['getTime'])) {
						//if ($_SESSION["client"]['language']['getTime'] + 10800 < time()) {
						if ($_SESSION["client"]['language']['getTime'] + 0 < time()) {
							$this->getData($this->language);
						}
					}else {
						$this->getTime = $_SESSION["client"]['language']['getTime'] = time();
					}
					$this->data[$this->language] = $_SESSION["client"]['language']['data'][$this->language];
				}else {
					$this->getData($this->language);
				}
			}else {
				$this->getData($this->language);
			}
			return array("return" => true, "language" => $language);
		}
	}
	function chooseLanguage ($language = "en") {
		if ($this->language != $language || (isset($_SESSION["client"]['language']['code']) && $_SESSION["client"]['language']['code'] != $language)) {
			$getCode = $this->getCode($language);
			if ($getCode['return'] == true) {
				$this->language = $language;
				$this->getData($language);
				return array("return" => true);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function getCode ($code = "en") {
		$sql = "SELECT `code` FROM `languages_codes` WHERE `country` = '{$code}' LIMIT 1";
		$query = mysqli_query($this->class['_db']->port('beta'), $sql);
		$num = mysqli_num_rows($query);
		if($num > 0){
			$code = mysqli_fetch_assoc($query)["code"];
			return array("return" => true, "code" => $code);
		}else {
			return array("return" => false, "code" => "en", "reason" => "ERROR#LANG_002");
		}
	}
	function getData ($code = "en") {
		$sql = "SELECT * FROM `languages_values` WHERE `language` = '{$code}'";
		$query = mysqli_query($this->class['_db']->port('beta'), $sql);
		$num = mysqli_num_rows($query);
		if ($num > 0) {
			if (!isset($_SESSION["client"]['language']['data'])) {
				$_SESSION["client"]['language']['data'] = array();
			}
			if (!isset($this->data)) {
				$this->data = array();
			}
			$_SESSION["client"]['language']['data'][$code] = array();
			while ($data = mysqli_fetch_assoc($query)) {
				if ($data['short'] == "false") {
					$data['short'] = false;
				}else if ($data['short'] == "true") {
					$data['short'] = true;
				}
				$_SESSION["client"]['language']['data'][$code][] = $this->data[$code][] = $data;
			}
			$_SESSION["client"]['language']['getTime'] = $this->getTime = time();
			return array("return" => true);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function text ($code = NULL, $type = "normal", $short = false) {
		if (isset($this->data[$this->language]) && is_array($this->data[$this->language]) && count($this->data[$this->language]) > 0) {
			foreach ($this->data[$this->language] as $key => $value) {
				if ($value['code'] == $code && $value['short'] == $short) {
					$fetch = $value;
					break;
				}else {
					continue;
				}
			}
			if (!isset($fetch)) {
				foreach ($this->data[$this->language] as $key => $value) {
					if ($value['code'] == $code) {
						$fetch = $value;
						break;
					}else {
						continue;
					}
				}
			}
		}else {
			$sql_code = $code;
			if($short == true){
				$sql_port = "AND `short` = 'true'";
			}else {
				$sql_port = "AND `short` = 'false'";
			}
			$sql = "SELECT * FROM `languages_values` WHERE `language` = '{$this->language}' AND `code` = '{$sql_code}' {$sql_port}";
			$query = mysqli_query($this->class['_db']->port('beta'), $sql);
			if (mysqli_num_rows($query) > 0) {
				$fetch = mysqli_fetch_assoc($query);
			}else {
				$sql = "SELECT * FROM `languages_values` WHERE `language` = 'en' AND `code` = '{$sql_code}' {$sql_port}";
				$query = mysqli_query($this->class['_db']->port('beta'), $sql);
				$fetch = mysqli_fetch_assoc($query);
			}
		}
		if (isset($fetch) && is_array($fetch)) {
			$text = $fetch["text"];
			if($type == "normal"){
				$text = $text;
			}else if($type == "strtolower"){
				$text = strtolower($text);
			}else if($type == "strtoupper"){
				$text = strtoupper($text);
			}else if($type == "ucfirst"){
				$text = ucfirst($text);
			}else if($type == "ucwords"){
				$text = ucwords($text);
			}
		}else {
			$text = null;
		}
		return $text;
	}
	function pushCacheTranslate ($outLang = null, $inLang = null, $outContent = null, $inContent = null) {
		if ($outLang == null || $outContent == null) {
			return array("return" => false, "reason" => "");
		}
		if (isset($_SESSION["client"]['language']['translate'])) {
			$count = $fix = 0;
			$dataTranslate = $_SESSION["client"]['language']['translate'];
			foreach ($dataTranslate as $key => $dataTranslateThis) {
				if ($dataTranslateThis['outLang'] == $outLang && $dataTranslateThis['inLang'] == $inLang && $dataTranslateThis['outContent'] == $outContent && $dataTranslateThis['inContent'] == $inContent) {
					$count++;
					break;
				}else {
					if ($dataTranslateThis['outLang'] == null || $dataTranslateThis['outContent'] == null) {
						$fix++;
						unset($dataTranslate[$key]);
					}
				}
			}
			if ($count == 0) {
				$dataTranslate[] = array(
					"time" => $this->class['_tool']->timeNow(),
					"outLang" => $outLang,
					"inLang" => $inLang,
					"outContent" => $outContent,
					"inContent" => $inContent
				);
			}
			if ($count == 0 || $fix > 0) {
				$_SESSION["client"]['language']['translate'] = $dataTranslate;
			}
		}else {
			$_SESSION["client"]['language']['translate'] = array();
			$_SESSION["client"]['language']['translate'][] = array(
				"time" => $this->class['_tool']->timeNow(),
				"outLang" => $outLang,
				"inLang" => $inLang,
				"outContent" => $outContent,
				"inContent" => $inContent
			);
		}
		return array("return" => true);
	}
	function getCacheTranslate ($outLang = null, $content = null, $inLang = null) {
		if ($outLang == null || $content == null) {
			return array("return" => false, "reason" => "");
		}
		if (isset($_SESSION["client"]['language']['translate'])) {
			$dataTranslate = $_SESSION["client"]['language']['translate'];
			foreach ($dataTranslate as $key => $dataTranslateThis) {
				if ($dataTranslateThis['outLang'] == $outLang && $dataTranslateThis['inContent'] == $content && ($inLang == null || $dataTranslateThis['inLang'] == $inLang)) {
					return array("return" => true, "data" => $dataTranslateThis);
					break;
				}
			}
			return array("return" => true, "data" => null);
		}else {
			return array("return" => true, "data" => null);
		}
	}
	function translate ($outLang = null, $content = null, $inLang = null, $server = 3, $try = 0) {
		if ($outLang == null || $content == null) {
			return array("return" => false, "reason" => "");
		}
		$getCache = $this->getCacheTranslate($outLang, $content, $inLang);
		if ($getCache['return'] == true) {
			if (is_array($getCache['data']) && isset($getCache['data']['outContent'])) {
				return array("return" => true, "data" => $getCache['data']['outContent']);
			}
		}else {
			//.
		}
		if ($server == 1) {
			return array("return" => false, "reason" => "");
			$url = "https://www.googleapis.com/language/translate/v2";
			$url .= "?key=".$this->class['_parameter']->get('key_api_google_'.rand(1,9));
			$url .= "&format=text";
			$url .= "&target=".$outLang;
			if ($inLang != null) {
				$url .= "&source=".$inLang;
			}
			$url .= "&q=".urlencode($content);
			$data = $this->class['_tool']->curl($url, 5);
			// return array("return" => true, "data" => $data);
		}else if ($server == 2) {
			require_once ("translate.php");
			$_translator = new translator;
			$data = $_translator::text($content, $inLang, $outLang);
			if (!$data) {
				return array("return" => false, "reason" => "");
			}else {
				$this->pushCacheTranslate($outLang, $inLang, $data, $content);
				return array("return" => true, "data" => $data);
			}
		}else if ($server == 3) {
			$yql = "SELECT * FROM google.translate WHERE q = '{$content}' AND target = '{$outLang}'";
			if ($inLang != null) {
				$yql .= " AND source = '{$inLang}'";
			}
			$url = "http://query.yahooapis.com/v1/public/yql";
			$url .= "?q=".urlencode($yql);
			$url .= "&format=json&diagnostics=false&env=store://datatables.org/alltableswithkeys";
			$curl = $this->class['_tool']->curl($url, 10);
			if ($curl['return'] == true) {
				$data = $curl['data'];
				$data = json_decode($data, true);
				if ($data['query']['count'] == 0) {
					return array("return" => false, "reason" => $url);
				}else {
					$this->pushCacheTranslate($outLang, $inLang, $data['query']['results']['json']['sentences']['trans'], $content);
					return array("return" => true, "data" => $data['query']['results']['json']['sentences']['trans']);
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
}
?>