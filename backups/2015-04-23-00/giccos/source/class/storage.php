<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class storage {
	function __construct () {
		$GLOBALS["_storage"] = $this;
		$this->class = $GLOBALS;
		$this->db = $this->class['_db']->port('beta');
	}
	function upload ($object) {
		$_db = $this->db;
		$_parameter = $this->class['_parameter'];
		$_tool = $this->class['_tool'];
		if (isset($object['format']) && is_string($object['format'])) $format = $object['format']; else $format = null;
		if (!in_array($format, ["image", "audio", "video"])) {
			return array("return" => false, "reason" => "");
		}else {
			if (isset($object['file']) && is_string($object['file'])) $file = $object['file']; else $file = null;
			if (isset($object['url']) && is_string($object['url'])) $url = $object['url']; else $url = null;
			if ($url != null) {

			}else if ($file != null) {

			}
			if (!file_exists($file) && $file != "none") {
				return array("return" => false, "reason" => "");
			}
			if (isset($object['move']) && is_string($object['move'])) $move = $object['move']; else $move = null;
			if (isset($object['folder']) && is_string($object['folder'])) $folder = $object['folder']; else $folder = null;
			if (isset($object['port']) && is_string($object['port'])) $port = $object['port']; else $port = null;
			if (isset($object['name']) && is_string($object['name'])) $name = $object['name']; else $name = null;
			if (isset($object['mime']) && is_string($object['mime'])) $mime = $object['mime']; else $mime = null;
			$storage = array();
			$storage['time'] = time();
			if ($mime != null) {
				$storage['mime'] = $mime;
			}else {
				$storage['mime'] = $_tool->mime_content_type($file);
			}
			if ($storage['mime'] != null) {
				$storage['ext'] = $_tool->mime_content_type($storage['mime'], true);
			}else {
				$storage['ext'] = strtolower(pathinfo($file, PATHINFO_EXTENSION));
			}
			if ($folder != null) {
				$storage['folder'] = $folder;
			}else {
				$storage['folder'] = $_parameter->get('storage_folder_name');
			}
			if ($port != null) {
				$storage['port'] = $port;
			}else {
				$storage['port'] = rand($_parameter->get('storage_folder_min'), $_parameter->get('storage_folder_max'));
			}
			if ($name != null) {
				$storage['name'] = $name;
				if (in_array($storage['ext'], ["tmp"])) {
					$storage['ext'] = strtolower(pathinfo($storage['name'], PATHINFO_EXTENSION));
				}
			}else {
				$storage['name'] = null;
			}
			$storage['name'] = $_tool->convertDatabaseString($storage['name']);
			$storage['nameraw'] = hash("md5", $storage['folder']."::".$storage['port']."::".$storage['time']."::".rand()."_".rand());
			if ($file == "none") {
				$storage['nameraw'] .= '.'.$storage['ext'];
			}else {
				$storage['nameraw'] .= '.'.$storage['ext'];
			}
			$storage['token'] = hash("crc32", $storage['nameraw']);
			$storage['display'] = hash("crc32", $storage['token']);
			$storage['secret'] = null;
			if ($file == "none") {
				$storage['hash'] = 0;
				$storage['size'] = 0;
			}else {
				$storage['hash'] = md5_file($file);
				$storage['size'] = filesize($file);
			}
			$storage['name'] = $storage['name'];
			$storage['status'] = time();
			$storage['dir'] = $this->class['_parameter']->get('storage_folder_path')."/{$format}/".$storage['folder']."/".$storage['port'];
			if (!file_exists($storage['dir'])) { 
				mkdir($storage['dir']);
				chmod($storage['dir'], 0777);
			}
			$storage['source'] = $storage['dir']."/".$storage['nameraw'];
			$storage['path'] = $_tool->hash("encode", $storage['source'], $storage['token']);
			$sql = "INSERT INTO `storage_{$format}` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES (NULL, '{$storage['folder']}', '{$storage['port']}', '{$storage['time']}', '{$storage['token']}', '{$storage['secret']}', '{$storage['hash']}', '{$storage['path']}', '{$storage['mime']}', '{$storage['display']}', '{$storage['name']}', '{$storage['status']}', '{$storage['size']}')";
			$query = mysqli_query($_db, $sql);
			if ($move == "rename") {
				$puts = $_tool->rename($file, $storage['source']);
			}else if ($move == "copy") {
				$puts = $_tool->copy($file, $storage['source']);
			}else if ($move == "none") {
				$puts = true;
			}else {
				return array("return" => false, "reason" => "");
			}
			if (!$query || !$puts) {
				return array("return" => false, "reason" => "");
			}else {
				$storage['id'] = mysqli_insert_id($_db);
			}
			return array("return" => true, "storage" => $storage);
		}
	}
	function get ($object) {
		$_db = $this->db;
		$_parameter = $this->class['_parameter'];
		$_tool = $this->class['_tool'];
		if (isset($object['format']) && is_string($object['format'])) $format = $object['format']; else $format = null;
		if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = "*";
		if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
		if (isset($object['value']) && is_string($object['value'])) $value = $object['value']; else $value = null;
		if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
		if ($rows == null || $label == null || $value == null) {
			return array("return" => false, "reason" => "");
		}
		if ($format == "image") {
			$sql = "SELECT {$rows} FROM `storage_image` WHERE `{$label}` = '{$value}' {$limit}";
		}else if ($format == "audio") {
			$sql = "SELECT {$rows} FROM `storage_audio` WHERE `{$label}` = '{$value}' {$limit}";
		}else if ($format == "video") {
			$sql = "SELECT {$rows} FROM `storage_video` WHERE `{$label}` = '{$value}' {$limit}";
		}else {
			return array("return" => false, "reason" => "");
		}
		if (!isset($sql)) {
			return array("return" => false, "reason" => "");
		}
		$query = mysqli_query($_db, $sql);
		$num = mysqli_num_rows($query);
		if ($num == 0) {
			return array("return" => true, "num" => 0, "file" => array());
		}else {
			$file = array();
			while ($fetch = mysqli_fetch_assoc($query)) {
				$file[] = $fetch;
			}
			return array("return" => true, "num" => $num, "file" => $file);
		}
	}
	function delete ($object) {
		$_db = $this->db;
		$_parameter = $this->class['_parameter'];
		$_tool = $this->class['_tool'];
		if (isset($object['format']) && is_string($object['format'])) $format = $object['format']; else $format = null;
		if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
		if (isset($object['value']) && is_string($object['value'])) $value = $object['value']; else $value = null;
		if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
		if ($label == null || $value == null) {
			return array("return" => false, "reason" => "");
		}
		if (!in_array($format, ["image", "audio", "video"])) {
			return array("return" => false, "reason" => "");
		}
		$sql = "SELECT `id`, `token`, `path` FROM `storage_{$format}` WHERE `{$label}` = '{$value}' {$limit}";
		$query = mysqli_query($_db, $sql);
		$num = mysqli_num_rows($query);
		if ($num == 0) {
			return array("return" => true, "num" => 0);
		}else {
			$fetch = mysqli_fetch_assoc($query);
			$file = $_tool->hash("decode", $fetch['path'], $fetch['token']);
			if (file_exists($file)) {
				$removeFile = $_tool->unlink($file);
			}else {
				$removeFile = true;
			}
			if (isset($removeFile) && $removeFile == true) {
				$sql = "DELETE FROM `storage_{$format}` WHERE `{$label}` = '{$value}' {$limit}";
				$delete = mysqli_query($_db, $sql);
				return array("return" => true, "num" => $num);
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function replace ($object) {
		$_db = $this->db;
		$_parameter = $this->class['_parameter'];
		$_tool = $this->class['_tool'];
		if (isset($object['format']) && is_string($object['format'])) $format = $object['format']; else $format = null;
		if (isset($object['labelSource']) && is_string($object['labelSource'])) $labelSource = $object['labelSource']; else $labelSource = null;
		if (isset($object['valueSource']) && is_string($object['valueSource'])) $valueSource = $object['valueSource']; else $valueSource = null;
		if (isset($object['labelDestination']) && is_string($object['labelDestination'])) $labelDestination = $object['labelDestination']; else $labelDestination = null;
		if (isset($object['valueDestination']) && is_string($object['valueDestination'])) $valueDestination = $object['valueDestination']; else $valueDestination = null;
		if (!in_array($format, ["image", "audio", "video"])) {
			return array("return" => false, "reason" => "");
		}
		$getMediaFileSource = $this->get(array("format" => $format, "label" => $labelSource, "value" => $valueSource, "limit" => "LIMIT 1"));
		if (isset($getMediaFileSource['return'], $getMediaFileSource['num'], $getMediaFileSource['file']) && $getMediaFileSource['return'] == true && $getMediaFileSource['num'] > 0) {
			$dataMediaFileSource = $getMediaFileSource['file'][0];
			$dataMediaFileSource['file'] = $_tool->hash("decode", $dataMediaFileSource['path'], $dataMediaFileSource['token']);
		}else {
			return array("return" => false, "reason" => "");
		}
		$getMediaFileDestination = $this->get(array("format" => $format, "label" => $labelDestination, "value" => $valueDestination, "limit" => "LIMIT 1"));
		if (isset($getMediaFileDestination['return'], $getMediaFileDestination['num'], $getMediaFileDestination['file']) && $getMediaFileDestination['return'] == true && $getMediaFileDestination['num'] > 0) {
			$dataMediaFileDestination = $getMediaFileDestination['file'][0];
			$dataMediaFileDestination['file'] = $_tool->hash("decode", $dataMediaFileDestination['path'], $dataMediaFileDestination['token']);
		}else {
			return array("return" => false, "reason" => "");
		}
		if (!isset($dataMediaFileSource) || !isset($dataMediaFileDestination)) {
			return array("return" => false, "reason" => "");
		}else {
			if (!file_exists($dataMediaFileSource['file'])) {
				$this->recheck(array("format" => $format, "label" => $labelSource, "value" => $valueSource));
				return array("return" => false, "reason" => "");
			}
		}
		$replaceDestinationFile = $_tool->copy($dataMediaFileSource['file'], $dataMediaFileDestination['file']);
		$updateDestinationSql = "UPDATE `storage_{$format}` SET `secret` = '{$dataMediaFileSource['secret']}', `hash` = '{$dataMediaFileSource['hash']}', `mime` = '{$dataMediaFileSource['mime']}', `name` = '{$dataMediaFileSource['name']}', `status` = '{$dataMediaFileDestination['status']}', `size` = '{$dataMediaFileDestination['size']}' WHERE `id` = '{$dataMediaFileDestination['id']}'";
		$updateDestinationQuery = mysqli_query($_db, $updateDestinationSql);
		if (!$replaceDestinationFile || !$updateDestinationQuery) {
			return array("return" => false, "reason" => "");
		}else {
			$dataMediaFileDestination['secret'] = $dataMediaFileSource['secret'];
			$dataMediaFileDestination['hash'] = $dataMediaFileSource['hash'];
			$dataMediaFileDestination['mime'] = $dataMediaFileSource['mime'];
			$dataMediaFileDestination['name'] = $dataMediaFileSource['name'];
			$dataMediaFileDestination['status'] = $dataMediaFileSource['status'];
			$dataMediaFileDestination['size'] = $dataMediaFileSource['size'];
			return array("return" => true, "source" => $dataMediaFileSource, "destination" => $dataMediaFileDestination);
		}
	}
	function recheck ($object) {
		$_db = $this->db;
		$_parameter = $this->class['_parameter'];
		$_tool = $this->class['_tool'];
		if (isset($object['format']) && is_string($object['format'])) $format = $object['format']; else $format = null;
		if (isset($object['label']) && is_string($object['label'])) $label = $object['label']; else $label = null;
		if (isset($object['value']) && is_string($object['value'])) $value = $object['value']; else $value = null;
		if (!in_array($format, ["image", "audio", "video"])) {
			return array("return" => false, "reason" => "");
		}
		$getMediaFile = $this->get(array("format" => $format, "label" => $label, "value" => $value, "limit" => "LIMIT 1"));
		if (isset($getMediaFile['return'], $getMediaFile['num'], $getMediaFile['file']) && $getMediaFile['return'] == true && $getMediaFile['num'] > 0) {
			$dataMediaFile = $getMediaFile['file'][0];
			$dataMediaFile['file'] = $_tool->hash("decode", $dataMediaFile['path'], $dataMediaFile['token']);
			if (!file_exists($dataMediaFile['file'])) {
				$updateMediaFileSql = "UPDATE `storage_{$format}` SET `status` = '0', `size` = '0' WHERE `id` = '{$dataMediaFile['id']}'";
				$updateMediaFile = mysqli_query($_db, $updateMediaFileSql);
				if (!isset($updateMediaFile)) {
					return array("return" => false, "reason" => "");
				}else {
					$dataMediaFile['status'] = 0;
					return array("return" => true, "file" => $dataMediaFile);
				}
			}else {
				$dataMediaFile['hash'] = md5_file($dataMediaFile['file']);
				$dataMediaFile['mime'] = $_tool->mime_content_type($dataMediaFile['file']);
				$dataMediaFile['status'] = time();
				$dataMediaFile['size'] = filesize($dataMediaFile['file']);
				$updateMediaFileSql = "UPDATE `storage_{$format}` SET `hash` = '{$dataMediaFile['hash']}', `mime` = '{$dataMediaFile['mime']}', `status` = '{$dataMediaFile['status']}', `size` = '{$dataMediaFile['size']}' WHERE `id` = '{$dataMediaFile['id']}'";
				$updateMediaFile = mysqli_query($_db, $updateMediaFileSql);
				if (!isset($updateMediaFile)) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true, "file" => $dataMediaFile);
				}
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
}
?>