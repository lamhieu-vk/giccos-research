<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class db {
	function __construct () {
		$GLOBALS["_db"] = $this;
		$this->class = $GLOBALS;
	}
	function connect ($port = null, $db = null) {
		if ($port == null || !isset($db, $db['host'], $db['user'], $db['pass'], $db['name'])) {
			return array("return" => false, "reason" => "");
		}else {
			$this->db[$port] = false;
			$this->db[$port] = mysqli_connect($db['host'], $db['user'], $db['pass'], $db['name']);
			if (!$this->db[$port]) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => true);
			}
		}
	}
	function close ($port) {
		if (!isset($this->db[$port]) || !$this->db[$port]) {
			return array("return" => false, "reason" => "");
		}else {
			$close = mysqli_close($this->db[$port]);
			if (!$close) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => true);
			}
		}
	}
	function port ($port) {
		if (!isset($this->db[$port]) || !$this->db[$port]) {
			return array("return" => false, "reason" => "");
		}else {
			return $this->db[$port];
		}
	}
}
?>