<?php
if (!defined("giccos#class>imeditor")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class imeditor {
	function __construct () {
		$GLOBALS["_imeditor"] = $this;
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
			"port" => "imeditor",
			"db" => array(
				"host" => "localhost",
				"username" => "root",
				"password" => "",
				"name" => "giccos"
			)
		));
		if (isset($openDatabase, $openDatabase['return']) && $openDatabase['return']) {
			$this->db = $_db->port("imeditor");
			return array("return" => true, "connected" => true, "called" => true);
		}else if (isset($openDatabase, $openDatabase['return'], $openDatabase['reason']) && !$openDatabase['return']) {
			return array("return" => false, "reason" => "error#imeditor:open>".$openDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#imeditor:open>_");
		}
	}
	function close () {
		$_db = $this->class['_db'];
		//.
		$closeDatabase = $_db->close("imeditor");
		if (isset($closeDatabase, $closeDatabase['return']) && $closeDatabase['return']) {
			$this->db = null;
			return array("return" => true);
		}else if (isset($closeDatabase, $closeDatabase['return'], $closeDatabase['reason']) && !$closeDatabase['return']) {
			return array("return" => false, "reason" => "error#imeditor:close>".$closeDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#imeditor:close>_");
		}
	}
	function setup ($object = array()) {
		$openUserAction = $this->open();
		if (isset($openUserAction, $openUserAction['return']) && $openUserAction['return']) {
			$this->ready = true;
			return array("return" => true);
		}else if (isset($openUserAction, $openUserAction['return'], $openUserAction['reason']) && !$openUserAction['return']) {
			return array("return" => false, "reason" => "error#imeditor:setup>".$openUserAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#imeditor:setup>_");
		}
	}
	function execute ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
	}
}
?>