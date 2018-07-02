<?php
if (!defined("giccos#class>scrapbook")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class scrapbook {
	function __construct () {
		$GLOBALS["_scrapbook"] = $this;
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
			"port" => "scrapbook",
			"db" => array(
				"host" => "localhost",
				"username" => "root",
				"password" => "",
				"name" => "giccos"
			)
		));
		if (isset($openDatabase, $openDatabase['return']) && $openDatabase['return']) {
			$this->db = $_db->port("scrapbook");
			return array("return" => true, "connected" => true, "called" => true);
		}else if (isset($openDatabase, $openDatabase['return'], $openDatabase['reason']) && !$openDatabase['return']) {
			return array("return" => false, "reason" => "error#scrapbook:open>".$openDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#scrapbook:open>_");
		}
	}
	function close () {
		$_db = $this->class['_db'];
		//.
		$closeDatabase = $_db->close("scrapbook");
		if (isset($closeDatabase, $closeDatabase['return']) && $closeDatabase['return']) {
			$this->db = null;
			return array("return" => true);
		}else if (isset($closeDatabase, $closeDatabase['return'], $closeDatabase['reason']) && !$closeDatabase['return']) {
			return array("return" => false, "reason" => "error#scrapbook:close>".$closeDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#scrapbook:close>_");
		}
	}
	function setup ($object = array()) {
		$openUserAction = $this->open();
		if (isset($openUserAction, $openUserAction['return']) && $openUserAction['return']) {
			$this->ready = true;
			return array("return" => true);
		}else if (isset($openUserAction, $openUserAction['return'], $openUserAction['reason']) && !$openUserAction['return']) {
			return array("return" => false, "reason" => "error#scrapbook:setup>".$openUserAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#scrapbook:setup>_");
		}
	}
	function id ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_tool = $this->class['_tool'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if (in_array($action, ["get"])) {
			$scrapbookRow = isset($object['row']) && is_array($object['row']) && count($object['row']) > 0 ? $object['row'] : null;
			$scrapbookLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$scrapbookValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $object['value'] : null;
			if (!is_array($scrapbookRow) || count($scrapbookRow) == 0) {
				return array("return" => false, "reason" => "error#scrapbook:id>get>rownull");
			}else if ($scrapbookLabel == null) {
				return array("return" => false, "reason" => "error#scrapbook:id>get>labelnull");
			}else if (!in_array($scrapbookLabel, ['id', 'display'])) {
				return array("return" => false, "reason" => "error#scrapbook:id>get>labelinvaild");
			}else if ($scrapbookValue == null) {
				return array("return" => false, "reason" => "error#scrapbook:id>get>valuenull");
			}
			$rowAllow = ["id", "token", "display", "date", "user.id", "mode.type", "mode.id", "name", "link"];
			foreach ($scrapbookRow as $rowLabel => $rowValue) {
				if ($rowValue == "*") {
					$valueLink = true;
					$scrapbookRow = ["*"];
					break;
				}else if (!in_array($rowValue, $rowAllow)) {
					unset($scrapbookRow[$rowLabel]);
					continue;
				}
				if ($rowValue == "link") {
					if (!in_array("display", $scrapbookRow)) {
						$scrapbookRow[] = "display";
					}
					$valueLink = true;
					unset($scrapbookRow[$rowLabel]);
					continue;
				}
				$scrapbookRow[$rowLabel] = $_tool->parseDBString($rowValue);
			}
			$getScrapbookIdRequest = "SELECT `".implode($scrapbookRow, "`, `")."` FROM `scrapbook_id` WHERE `".$_tool->parseDBString($scrapbookLabel)."` = '".$_tool->parseDBString($scrapbookValue)."' ;";
			$getScrapbookIdQuery = mysqli_query($this->db, $getScrapbookIdRequest);
			if (!$getScrapbookIdQuery) {
				return array("return" => false, "reason" => "error#scrapbook:id>get>getscrapbookidquery");
			}else {
				$dataArr = array();
				while ($infoScrapbookIdFetch = mysqli_fetch_assoc($getScrapbookIdQuery)) {
					if (isset($valueLink) && $valueLink) {
						$infoScrapbookIdFetch['link'] = $_tool->links('scrapbook/id/'.$infoScrapbookIdFetch['display']);
					}
					$dataArr = $infoScrapbookIdFetch;
				}
				$existsArr = count($dataArr) > 0 ? true : false;
				return array("return" => true, "exists" => $existsArr, "data" => $dataArr);
			}
		}else {
			return array("return" => false, "reason" => "error#scrapbook:id>actioninvaild");
		}
	}
}
?>