<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class antivirus {
	function __construct () {
		$GLOBALS["_antivirus"] = $this;
		$this->class = $GLOBALS;
	}
	function virustotal ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$db = $this->class['_db']->port('beta');
		//.
		$type = isset($object, $object['type']) && is_string($object['type']) ? $object['type'] : null;
		if ($type == "url") {
			$action = isset($object, $object['action']) && is_string($object['action']) ? $object['action'] : null;
			if ($action == "scan") {
				$url = isset($object, $object['url']) && is_string($object['url']) ? $object['url'] : null;
				if ($url == null) {
					return array("return" => false, "reason" => "asd"); 
				}
				$fieldsArr = array(
					"url" => $url,
					"apikey" => $_parameter->get('key_api_virustotal_'.rand(1,10))
				);
				$requestUrl = "https://www.virustotal.com/vtapi/v2/url/scan";
				$requestAction = $this->virustotal(array("type" => "request", "url" => $requestUrl, "fields" => $fieldsArr));
				return $requestAction;
			}else if ($action == "report") {
				$resource = isset($object, $object['resource']) && is_string($object['resource']) ? $object['resource'] : null;
				if ($resource == null) {
					return array("return" => false, "reason" => "asd"); 
				}
				$fieldsArr = array(
					"resource" => $resource,
					"apikey" => $_parameter->get('key_api_virustotal_'.rand(1,10))
				);
				$requestUrl = "https://www.virustotal.com/vtapi/v2/url/report";
				$requestAction = $this->virustotal(array("type" => "request", "url" => $requestUrl, "fields" => $fieldsArr));
				return $requestAction;
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($type == "request") {
			$url = isset($object, $object['url']) && is_string($object['url']) ? $object['url'] : null;
			$fields = isset($object, $object['fields']) && is_array($object['fields']) ? $object['fields'] : null;
			if ($url == null || $fields == null) {
				return array("return" => false, "reason" => "12"); 
			}
			$ch = curl_init($url);
			curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_0);
			curl_setopt($ch, CURLOPT_FORBID_REUSE, 1);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($ch, CURLOPT_VERBOSE, 0);
			curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
			curl_setopt($ch, CURLOPT_POST, true);
			curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
			$requestAction = curl_exec($ch);
			$httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE); 
			curl_close($ch);
			$dataArr = json_decode($requestAction, true);
			return array("return" => true, "data" => $dataArr);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function things ($object) {
		$action = isset($object, $object['action']) && is_string($object['action']) ? $object['action'] : null;
		if ($action == "scan") {
			$dbPath = isset($object, $object['db']) && is_string($object['db']) ? $object['db'] : 'C:\ClamAV\db-win';
			$thingsPath = isset($object, $object['things']) && is_string($object['things']) ? $object['things'] : null;
			if ($dbPath == null || $thingsPath == null) {
				return array("return" => false, "reason" => "");
			}
			if (!file_exists($thingsPath)) {
				return array("return" => false, "reason" => "");
			}
			$execCode = '"C:\ClamAV\clamscan.exe"  --database="'.$dbPath.'" --phishing-cloak=yes --phishing-ssl=yes --scan-archive=yes --detect-broken=yes --algorithmic-detection=yes --detect-structured=yes --recursive '.$thingsPath.' ';
			exec($execCode, $resultArr);
			if (!isset($resultArr) || $resultArr == null) {
				return array("return" => false, "reason" => "");
			}
			$dataArr = array();
			foreach ($resultArr as $i => $resultLine) {
				if ($resultLine == null) {
					break;
				}
				if ($i > 1) {
					$dataArr[] = $resultLine;
				}
			}
			foreach ($dataArr as $x => $dataThis) {
				$infoArr = isset($dataThis) && is_string($dataThis) && $dataThis != null ? explode(" ", $dataThis) : null;
				$infoPath = preg_replace("/([\:]{1})$/", "", $infoArr[0]);
				$infoFile = explode("\\", $infoPath);
				$infoFile = isset($infoFile[count($infoFile) - 1]) && is_string($infoFile[count($infoFile) - 1]) ? $infoFile[count($infoFile) - 1] : null;
				$dataArr[$x] = array(
					"path" => $infoPath,
					"file" => $infoFile
				);
				if (count($infoArr) == 2 && isset($infoArr[1]) && $infoArr[1] == "OK") {
					$dataArr[$x]['status'] = true;
				}else if (count($infoArr) == 3 && isset($infoArr[2]) && $infoArr[2] == "FOUND") {
					$dataArr[$x]['status'] = false;
				}
			}
			return array("return" => true, "data" => $dataArr);
		}
	}
}
?>