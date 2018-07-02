<?php
if (!defined("giccos#class>client")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class client {
	function __construct () {
		$GLOBALS["_client"] = $this;
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
			"port" => "client",
			"db" => array(
				"host" => "localhost",
				"username" => "root",
				"password" => "",
				"name" => "giccos"
			)
		));
		if (isset($openDatabase, $openDatabase['return']) && $openDatabase['return']) {
			$this->db = $_db->port("client");
			return array("return" => true, "connected" => true, "called" => true);
		}else if (isset($openDatabase, $openDatabase['return'], $openDatabase['reason']) && !$openDatabase['return']) {
			return array("return" => false, "reason" => "error#client:open>".$openDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#client:open>_");
		}
	}
	function close () {
		$_db = $this->class['_db'];
		//.
		$closeDatabase = $_db->close("client");
		if (isset($closeDatabase, $closeDatabase['return']) && $closeDatabase['return']) {
			$this->db = null;
			return array("return" => true);
		}else if (isset($closeDatabase, $closeDatabase['return'], $closeDatabase['reason']) && !$closeDatabase['return']) {
			return array("return" => false, "reason" => "error#client:close>".$closeDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#client:close>_");
		}
	}
	function setup ($object = array()) {
		$this->ready = false;
		$openUserAction = $this->open();
		if (isset($openUserAction, $openUserAction['return']) && $openUserAction['return']) {
			$this->ready = true;
			return array("return" => true);
		}else if (isset($openUserAction, $openUserAction['return'], $openUserAction['reason']) && !$openUserAction['return']) {
			return array("return" => false, "reason" => "error#client:setup>".$openUserAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#client:setup>_");
		}
	}
	function id ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_tool = $this->class['_tool'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? strtolower($object['action']) : null;
		if (in_array($action, ["add"])) {
			$clientToken = isset($object['client'], $object['client']['token']) ? $object['client']['token'] : null;
			$clientIP = isset($object['client'], $object['client']['ip']) ? $object['client']['ip'] : null;
			$clientDevice = isset($object['client'], $object['client']['device']) ? $object['client']['device'] : null;
			$clientPlatform = isset($object['client'], $object['client']['platform']) ? $object['client']['platform'] : null;
			$clientAgent = isset($object['client'], $object['client']['agent']) ? $object['client']['agent'] : null;
			$clientBrowserName = isset($object['client'], $object['client']['browsername']) ? $object['client']['browsername'] : null;
			$clientBrowserKernel = isset($object['client'], $object['client']['browserkernel']) ? $object['client']['browserkernel'] : null;
			$clientBrowserVersion = isset($object['client'], $object['client']['browserversion']) ? $object['client']['browserversion'] : null;
			if (in_array(null, [$clientToken, $clientIP, $clientDevice, $clientPlatform, $clientAgent, $clientBrowserName, $clientBrowserKernel, $clientBrowserVersion])) {
				return array("return" => false, "reason" => "error#client:id>add>inputnull");
			}
			$existsClientIdAction = $this->id(array(
				"action" => "exists",
				"token" => $clientToken
			));
			if (isset($existsClientIdAction, $existsClientIdAction['return'], $existsClientIdAction['exists']) && $existsClientIdAction['return']) {
				if ($existsClientIdAction['exists']) {
					// updated.
					$updateClientIdRequest = "UPDATE `client_id` SET `updated` = '".time()."' WHERE `token` = '".$clientToken."' ;";
					$updateClientIdQuery = mysqli_query($this->db, $updateClientIdRequest);
					if (!$updateClientIdQuery) {
						//.
					}
					return array("return" => true, "added" => false);
				}
			}else if (isset($existsClientIdAction, $existsClientIdAction['return'], $existsClientIdAction['reason']) && !$existsClientIdAction['return']) {
				return array("return" => false, "reason" => "error#client:id>add>".$existsClientIdAction['reason']);
			}else {
				return array("return" => false, "reason" => "error#client:id>add>_");
			}
			$addClientIdRequest = "
			INSERT INTO `client_id` (`id`, `time`, `token`, `ip`, `device`, `platform`, `agent`, `browser.name`, `browser.kernel`, `browser.version`, `updated`) 
			VALUES (NULL, '".time()."', '".$clientToken."', '".$clientIP."', '".$clientDevice."', '".$clientPlatform."', '".$clientAgent."', '".$clientBrowserName."', '".$clientBrowserKernel."', '".$clientBrowserVersion."', '".time()."');
			";
			$addClientIdQuery = mysqli_query($this->db, $addClientIdRequest);
			if (!$addClientIdQuery) {
				return array("return" => false, "reason" => "error#client:id>add>failquery");
			}else {
				return array("return" => true, "added" => true);
			}
		}else if (in_array($action, ["update"])) {
			$clientInformationArr = $_tool->client();
			$addClientIdAction = $this->id(array(
				"action" => "add",
				"client" => $clientInformationArr
			));
			if (isset($addClientIdAction, $addClientIdAction['return']) && $addClientIdAction['return']) {
				return array("return" => true);
			}else if (isset($addClientIdAction, $addClientIdAction['return'], $addClientIdAction['reason']) && !$addClientIdAction['return']) {
				return array("return" => false, "reason" => "error#client:id>update>".$addClientIdAction['reason']);
			}else {
				return array("return" => false, "reason" => "error#client:id>update>_");
			}
		}else if (in_array($action, ["exists"])) {
			$clientToken = isset($object, $object['token']) ? $object['token'] : null;
			if ($clientToken == null) {
				return array("return" => false, "reason" => "error#client:id>exists>tokennull");
			}
			$existsClientIdRequest = "SELECT `id` FROM `client_id` WHERE `token` = '".$clientToken."' LIMIT 1;";
			$existsClientIdQuery = mysqli_query($this->db, $existsClientIdRequest);
			if (!$existsClientIdQuery) {
				return array("return" => false, "reason" => "error#client:id>exists>failquery");
			}else {
				if (mysqli_num_rows($existsClientIdQuery) == 0) {
					return array("return" => true, "exists" => false);
				}else {
					return array("return" => true, "exists" => true);
				}
			}
		}
	}
}
?>