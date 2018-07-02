<?php
if (!defined("giccos#class>storage")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class storage {
	function __construct () {
		$GLOBALS["_storage"] = $this;
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
			"port" => "storage",
			"db" => array(
				"host" => "localhost",
				"username" => "root",
				"password" => "",
				"name" => "giccos"
			)
		));
		if (isset($openDatabase, $openDatabase['return']) && $openDatabase['return']) {
			$this->db = $_db->port("storage");
			return array("return" => true, "connected" => true, "called" => true);
		}else if (isset($openDatabase, $openDatabase['return'], $openDatabase['reason']) && !$openDatabase['return']) {
			return array("return" => false, "reason" => "error#storage:open>".$openDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#storage:open>_");
		}
	}
	function close () {
		$_db = $this->class['_db'];
		//.
		$closeDatabase = $_db->close("storage");
		if (isset($closeDatabase, $closeDatabase['return']) && $closeDatabase['return']) {
			$this->db = null;
			return array("return" => true);
		}else if (isset($closeDatabase, $closeDatabase['return'], $closeDatabase['reason']) && !$closeDatabase['return']) {
			return array("return" => false, "reason" => "error#storage:close>".$closeDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#storage:close>_");
		}
	}
	function setup ($object = array()) {
		$openUserAction = $this->open();
		if (isset($openUserAction, $openUserAction['return']) && $openUserAction['return']) {
			$this->ready = true;
			return array("return" => true);
		}else if (isset($openUserAction, $openUserAction['return'], $openUserAction['reason']) && !$openUserAction['return']) {
			return array("return" => false, "reason" => "error#storage:setup>".$openUserAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#storage:setup>_");
		}
	}
	function upload ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_parameter = $this->class['_parameter'];
		$_tool = $this->class['_tool'];
		$_image = $this->class['_image'];
		$db = $this->class['_db']->port('beta');
		//.
		$format = isset($object['format']) && is_string($object['format']) ? strtolower($object['format']) : null;
		$file = isset($object['file']) && is_string($object['file']) ? $object['file'] : null;
		$type = isset($object['type']) && is_string($object['type']) ? $object['type'] : null;
		if (!in_array($format, ["image", "audio", "video"])) {
			return array("return" => false, "reason" => "error#storage:upload>formatinvaild");
		}else if (!file_exists($file) && $file != "none") {
			return array("return" => false, "reason" => "error#storage:upload>filenull");
		}
		$storage = array();
		$storage['time'] = $storage['updated'] = time();
		$storage['token'] = hash("crc32", hash("md5", time().'::'.rand().'_'.rand().'_'.rand()));
		$storage['display'] = hash("md5", $storage['token']);
		$storage['folder'] = isset($object['folder']) && is_string($object['folder']) ? $object['folder'] : "drive";
		$storage['port'] = isset($object['port']) && is_string($object['port']) ? $object['port'] : 0;
		$storage['dir'] = $_tool->root().'/'.$_parameter->get('storage_folder_path').'/'.$format.'/'.$storage['folder'].'/'.$storage['port'];
		$storage['source'] = $file;
		$storage['mime'] = isset($object['mime']) && is_string($object['mime']) ? strtolower($object['mime']) : null;
		$storage['name'] = hash("md5", $storage['folder'].'::'.$storage['port'].'::'.$storage['time'].'::'.rand().'_'.rand().'_'.rand());
		$storage['nameraw'] = isset($object['nameraw']) && is_string($object['nameraw']) ? basename($object['nameraw']) : basename($storage['source']);
		if ($storage['mime'] == null) {
			if (preg_match("/(\.([a-zA-Z0-9]+))$/i", $storage['source'])) {
				$storage['ext'] = strtolower(pathinfo($storage['source'], PATHINFO_EXTENSION));
			}else if (preg_match("/(\.([a-zA-Z0-9]+))$/i", $storage['nameraw'])) {
				$storage['ext'] = strtolower(pathinfo($storage['nameraw'], PATHINFO_EXTENSION));
			}
			if (isset($storage['ext']) && is_string($storage['ext'])) {
				$storage['mime'] = $_tool->convertExtToMime($storage['ext']);
			}
		}else {
			$storage['ext'] = $_tool->convertMimeToExt($storage['mime']);
		}
		$storage['name'] = isset($storage['ext']) && $storage['ext'] != null ? $storage['name'].'.'.$storage['ext'] : $storage['name'];
		if ($file == "none") {
			$storage['fingerprint'] = null;
			$storage['size'] = 0;
			$storage['modified'] = 0;
		}else {
			$storage['fingerprint'] = md5_file($storage['source']);
			$storage['size'] = filesize($storage['source']);
			$storage['modified'] = filemtime($storage['source']);
		}
		if (!is_dir($storage['dir'])) { 
			mkdir($storage['dir']);
			chmod($storage['dir'], 0777);
		}
		$storage['destination'] = $storage['dir'].'/'.$storage['name'];
		if ($storage['ext'] == null) {
			return array("return" => false, "reason" => "error#storage:upload>extnull");
		}else if (!preg_match("/(\.([a-zA-Z0-9]+))$/", $storage['name'])) {
			return array("return" => false, "reason" => "error#storage:upload>nameerror");
		}else if ($storage['size'] > $_parameter->get($format.'_size_allow')) {
			// return array("return" => false, "reason" => "error#storage:upload>filesizelimit ".$storage['size']);
		}
		if (1 + 1 == 3) {
			return array("return" => false, "reason" => "error#storage:upload>_");
		}else {
			set_time_limit(0);
		}
		$storage['folder'] = $_tool->hash("encode", $storage['folder'], $storage['token']);
		$storage['port'] = $_tool->hash("encode", $storage['port'], $storage['token']);
		$storage['name'] = $_tool->hash("encode", $storage['name'], $storage['token']);
		$storage['path'] = $_tool->hash("encode", $storage['destination'], $storage['token']);
		if ($format == "image") {
			$insertStorageRequest = "
			INSERT INTO `storage_image` 
			(`id`, `time`, `token`, `display`, `fingerprint`, `folder`, `port`, `name`, `nameraw`, `mime`, `ext`, `size`, `path`, `modified`, `updated`) 
			VALUES 
			(NULL, '".$storage['time']."', '".$storage['token']."', '".$storage['display']."', '".$storage['fingerprint']."', '".$storage['folder']."', '".$storage['port']."', '".$storage['name']."', '".$storage['nameraw']."', '".$storage['mime']."', '".$storage['ext']."', '".$storage['size']."', '".$storage['path']."', '".$storage['modified']."', '".$storage['updated']."');
			";
		}else if ($format == "audio") {
			$insertStorageRequest = "
			INSERT INTO `storage_audio` 
			(`id`, `time`, `token`, `display`, `fingerprint`, `folder`, `port`, `name`, `nameraw`, `mime`, `ext`, `size`, `path`, `modified`, `updated`) 
			VALUES 
			(NULL, '".$storage['time']."', '".$storage['token']."', '".$storage['display']."', '".$storage['fingerprint']."', '".$storage['folder']."', '".$storage['port']."', '".$storage['name']."', '".$storage['nameraw']."', '".$storage['mime']."', '".$storage['ext']."', '".$storage['size']."', '".$storage['path']."', '".$storage['modified']."', '".$storage['updated']."');
			";
		}else if ($format == "video") {
			$insertStorageRequest = "
			INSERT INTO `storage_video` 
			(`id`, `time`, `token`, `display`, `fingerprint`, `folder`, `port`, `name`, `nameraw`, `mime`, `ext`, `size`, `path`, `modified`, `updated`) 
			VALUES 
			(NULL, '".$storage['time']."', '".$storage['token']."', '".$storage['display']."', '".$storage['fingerprint']."', '".$storage['folder']."', '".$storage['port']."', '".$storage['name']."', '".$storage['nameraw']."', '".$storage['mime']."', '".$storage['ext']."', '".$storage['size']."', '".$storage['path']."', '".$storage['modified']."', '".$storage['updated']."');
			";
		}
		$insertStorageQuery = mysqli_query($this->db, $insertStorageRequest);
		if (!$insertStorageQuery) {
			return array("return" => false, "reason" => "error#storage:upload>failinsertquery");
		}else {
			$storage['id'] = mysqli_insert_id($this->db);
			if ($type == "rename") {
				$puts = $_tool->rename($storage['source'], $storage['destination']);
			}else if ($type == "copy") {
				$puts = $_tool->copy($storage['source'], $storage['destination']);
			}else if ($type == "none") {
				$puts = true;
			}else {
				return array("return" => false, "reason" => "error#storage:upload>putinvalid");
			}
			if (!$puts) {
				return array("return" => false, "reason" => "error#storage:upload>putfalse");
			}else {
				if ($format == "image") {
					$hashFileAction = $_image->hash(array("type" => "analyze", "file" => $storage['source'], "tech" => ["difference", "perceptual", "average", "profile"]));
					if (isset($hashFileAction, $hashFileAction['return'], $hashFileAction['data']) && $hashFileAction['return'] == true) {
						$storage['hash.difference'] = isset($hashFileAction['data']['difference']['hash']) ? $hashFileAction['data']['difference']['hash'] : null;
						$storage['hash.perceptual'] = isset($hashFileAction['data']['perceptual']['hash']) ? $hashFileAction['data']['perceptual']['hash'] : null;
						$storage['hash.average'] = isset($hashFileAction['data']['average']['hash']) ? $hashFileAction['data']['average']['hash'] : null;
						$storage['hash.profile'] = isset($hashFileAction['data']['profile']['hash']) ? $hashFileAction['data']['profile']['hash'] : null;
					}else {
						$storage['hash.difference'] = $storage['hash.perceptual'] = $storage['hash.average'] = $storage['hash.profile'] = null;
					}
					$storage['updated'] = time();
					$storage['size'] = filesize($storage['destination']);
					$updateFileHashRequest = "UPDATE `storage_image` SET `updated` = '".$storage['updated']."', `size` = '".$storage['size']."', `hash.difference` = '".$storage['hash.difference']."', `hash.perceptual` = '".$storage['hash.perceptual']."', `hash.average` = '".$storage['hash.average']."', `hash.profile` = '".$storage['hash.profile']."' WHERE `id` = '".$storage['id']."' ;";
					$updateFileHashQuery = mysqli_query($this->db, $updateFileHashRequest);
					if (!$updateFileHashQuery) {
						//.
					}
				}else if ($format == "audio") {
					#
				}else if ($format == "video") {
					#
				}
				$storage['folder'] = $_tool->hash("decode", $storage['folder'], $storage['token']);
				$storage['port'] = $_tool->hash("decode", $storage['port'], $storage['token']);
				$storage['name'] = $_tool->hash("decode", $storage['name'], $storage['token']);
				//. $storage['source'] = $_tool->hash("decode", $storage['destination'], $storage['token']);
				return array("return" => true, "data" => $storage, "storage" => $storage);
			}
		}
	}
	function file ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_tool = $this->class['_tool'];
		//.
		$format = isset($object['format']) && is_string($object['format']) ? strtolower($object['format']) : null;
		$label = isset($object['label']) && is_string($object['label']) ? $_tool->parseDBString($object['label']) : null;
		$value = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->parseDBString($object['value']) : null;
		$limit = isset($object['limit']) && (is_string($object['limit']) || is_numeric($object['limit'])) ? $_tool->parseDBString($object['limit']) : null;
		if (!in_array($format, ["image", "audio", "video"])) {
			return array("return" => false, "reason" => ""); //. image2wbmp(image)
		}
		if ($format == "image") {
			$getFileRequest = "SELECT * FROM `storage_image` WHERE `".$label."` = '".$value."' ".$limit." ;";
		}else if ($format == "audio") {
			$getFileRequest = "SELECT * FROM `storage_image` WHERE `".$label."` = '".$value."' ".$limit." ;";
		}else if ($format == "video") {
			$getFileRequest = "SELECT * FROM `storage_image` WHERE `".$label."` = '".$value."' ".$limit." ;";
		}else {
			return array("return" => false, "reason" => "");
		}
		$getFileQuery = mysqli_query($this->db, $getFileRequest);
		if (!$getFileQuery) {
			return array("return" => false, "reason" => "");
		}else {
			if (mysqli_num_rows($getFileQuery) == 0) {
				return array("return" => true, "exists" => false, "count" => 0, "data" => array());
			}
		}
		$dataArr = array();
		while ($thisFile = mysqli_fetch_assoc($getFileQuery)) {
			$thisFile['folder'] = $_tool->hash('decode', $thisFile['folder'], $thisFile['token']);
			$thisFile['port'] = $_tool->hash('decode', $thisFile['port'], $thisFile['token']);
			$thisFile['name'] = $_tool->hash('decode', $thisFile['name'], $thisFile['token']);
			$thisFile['source'] = $_tool->hash('decode', $thisFile['path'], $thisFile['token']);
			//.
			$dataArr[] = $thisFile;
		}
		$countArr = count($dataArr);
		return array("return" => true, "exists" => true, "count" => $countArr, "data" => $dataArr);
	}
	function delete ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_tool = $this->class['_tool'];
		//.
		$format = isset($object['format']) && is_string($object['format']) ? strtolower($object['format']) : null;
		$label = isset($object['label']) && is_string($object['label']) ? $_tool->parseDBString($object['label']) : null;
		$value = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->parseDBString($object['value']) : null;
		if (!in_array($format, ["image", "audio", "video"])) {
			return array("return" => false, "reason" => ""); //. image2wbmp(image)
		}
		$infoFileAction = $this->file(array(
			"format" => $format,
			"label" => $label,
			"value" => $value
		));
		if (isset($infoFileAction, $infoFileAction['return'], $infoFileAction['exists'], $infoFileAction['data']) && $infoFileAction['return']) {
			if (!$infoFileAction['exists']) {
				return array("return" => true, "exists" => false, "count" => 0, "data" => array());
			}else {
				$notifyArr = array();
				$infoFileList = $infoFileAction['data'];
				foreach ($infoFileList as $infoFileThis) {
					mysqli_query($this->db, "DELETE FROM `storage_".$format."` WHERE `id` = '".$infoFileThis['id']."' ;");
					if (file_exists($infoFileThis['source'])) {
						$unlineFileAction = $_tool->unlink($infoFileThis['source']);
						if (!$unlineFileAction) {
							$notifyArr[] = array("return" => false, "reason" => "");
							continue;
						}
					}
					$notifyArr[] = array("return" => true);
				}
				$countArr = count($notifyArr);
				return array("return" => true, "exists" => true, "count" => $countArr, "data" => $notifyArr);
			}
		}else if (isset($infoFileAction, $infoFileAction['return'], $infoFileAction['reason']) && !$infoFileAction['return']) {
			return array("return" => false, "reason" => "");
		}else {
			return array("return" => false, "reason" => "");
		}
	}
}
?>