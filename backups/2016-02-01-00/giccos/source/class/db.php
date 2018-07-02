<?php
if (!defined("giccos#class>db")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class db {
	function __construct () {
		$GLOBALS["_db"] = $this;
		$this->class = $GLOBALS;
		$this->db = array();
	}
	function open ($object = array()) {
		$db = isset($object['db'], $object['db']['host'], $object['db']['username'], $object['db']['password'], $object['db']['name']) ? $object['db'] : null;
		$port = isset($object['port']) ? $object['port'] : null;
		if ($db == null) {
			return array("return" => false, "reason" => "error#db:open>dbnull");
		}else if ($port == null) {
			return array("return" => false, "reason" => "error#db:open>portnull");
		}
		$openDatabase = mysqli_connect($db['host'], $db['username'], $db['password'], $db['name']);
		if (mysqli_connect_errno()) {
			return array("return" => false, "reason" => "error#db:open>failconnect");
		}else {
			$this->db[$port] = $openDatabase;
			return array("return" => true);
		}
	}
	function close ($object = array()) {
		$port = isset($object['port']) ? $object['port'] : null;
		if ($port == null) {
			return array("return" => false, "reason" => "error#db:close>portnull");
		}
		if (isset($this->db, $this->db[$port])) {
			$closeDatabase = mysqli_close($this->db[$port]);
			unset($this->db[$port]);
			return array("return" => true);
		}else {
			return array("return" => false, "reason" => "error#db:close>portexists");
		}
	}
	function port ($name = null) {
		if ($name == null) {
			return array("return" => false, "reason" => "error#db:close>namenull");
		}
		if (isset($this->db, $this->db[$name])) {
			return $this->db[$name];
		}else {
			return array("return" => false, "reason" => "error#db:close>portexists");
		}
	}
}
?>