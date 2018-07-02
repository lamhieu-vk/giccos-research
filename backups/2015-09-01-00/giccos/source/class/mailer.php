<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class mailer {
	function __construct () {
		$GLOBALS["_mailer"] = $this;
		$this->class = $GLOBALS;
	}
	//.
	function id ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if ($action == "add") {
			$mailerInfo = isset($object['info']) && is_array($object['info']) && count($object['info']) > 0 ? $object['info'] : null;
			if ($mailerInfo == null) {
				return array("return" => false, "reason" => "");
			}
			$mailerInfo['token'] = hash('crc32', time().'::'.rand().'::'.rand().'::'.rand());
			$mailerInfo['type'] = $_tool->convertDatabaseString($mailerInfo['type']);
			$mailerInfo['host'] = $_tool->convertDatabaseString($mailerInfo['host']);
			$mailerInfo['secure'] = $_tool->convertDatabaseString($mailerInfo['secure']);
			$mailerInfo['port'] = intval($mailerInfo['port']);
			$mailerInfo['from']['email'] = $_tool->convertDatabaseString($mailerInfo['from']['email']);
			$mailerInfo['from']['name'] = $_tool->convertDatabaseString($mailerInfo['from']['name']);
			$mailerInfo['reply']['name'] = $_tool->convertDatabaseString($mailerInfo['reply']['email']);
			$mailerInfo['reply']['name'] = $_tool->convertDatabaseString($mailerInfo['reply']['name']);
			$mailerInfo['username'] = $_tool->hash('encode', $mailerInfo['username'], $mailerInfo['token'].'::'.$_parameter->get('hash_mailer_id'));
			$mailerInfo['password'] = $_tool->hash('encode', $mailerInfo['password'], $mailerInfo['token'].'::'.$_parameter->get('hash_mailer_id'));
			$addAccountRequest = "INSERT INTO `mailer_id` (`id`, `time`, `token`, `type`, `host`, `username`, `password`, `secure`, `port`, `from.email`, `from.name`, `reply.email`, `reply.name`, `updated`) VALUES (NULL, '".$mailerInfo['time'] = time()."', '".$mailerInfo['token']."', '".$mailerInfo['type']."', '".$mailerInfo['host']."', '".$mailerInfo['username']."', '".$mailerInfo['password']."', '".$mailerInfo['secure']."', '".$mailerInfo['port']."', '".$mailerInfo['from']['email']."', '".$mailerInfo['from']['name']."', '".$mailerInfo['reply']['email']."', '".$mailerInfo['reply']['name']."', '".$mailerInfo['updated'] = time()."');";
			$addAccountQuery = mysqli_query($db, $addAccountRequest);
			if (!$addAccountQuery) {
				return array("return" => false, "reason" => "");
			}else {
				$mailerInfo['id'] = mysqli_insert_id($db);
				return array("return" => true);
			}
		}else if ($action == "get") {
			$mailerType = isset($object['type']) && is_string($object['type']) ? $_tool->convertDatabaseString($object['type']) : null;
			$mailerHost = isset($object['host']) && is_string($object['host']) ? $_tool->convertDatabaseString($object['host']) : null;
			if ($mailerType == null) {
				return array("return" => false, "reason" => "");
			}else if (!in_array($type, ["support", "mailer"])) {
				return array("return" => false, "reason" => "");
			}
			if ($mailerHost != null) {
				$getAccountRequest = "SELECT * FROM `mailer_id` WHERE `type` = '".$mailerType."' AND `host` = '".$mailerHost."' ORDER BY RAND() LIMIT 1;";
			}else {
				$getAccountRequest = "SELECT * FROM `mailer_id` WHERE `type` = '".$mailerType."' ORDER BY RAND() LIMIT 1;";
			}
			$getAccountQuery = mysqli_query($db, $getAccountRequest);
			if (!$getAccountQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($getAccountQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				$dataArr = array();
				$mailerFetch = mysqli_fetch_assoc($getAccountQuery);
				if (!isset($mailerFetch['token'])) {
					return array("return" => false, "reason" => "");
				}
				if (isset($mailerFetch['username']) && is_string($mailerFetch['username'])) {
					$mailerFetch['username'] = $_tool->hash('decode', $mailerFetch['username'], $mailerFetch['token'].'::'.$_parameter->get('hash_mailer_id'));
				}
				if (isset($mailerFetch['password']) && is_string($mailerFetch['password'])) {
					$mailerFetch['password'] = $_tool->hash('decode', $mailerFetch['password'], $mailerFetch['token'].'::'.$_parameter->get('hash_mailer_id'));
				}
				if (isset($mailerFetch['from.email'])) {
					$mailerFetch['from']['email'] = $mailerFetch['from.email'];
					unset($mailerFetch['from.email']);
				}
				if (isset($mailerFetch['from.name'])) {
					$mailerFetch['from']['name'] = $mailerFetch['from.name'];
					unset($mailerFetch['from.name']);
				}
				if (isset($mailerFetch['reply.email'])) {
					$mailerFetch['reply']['email'] = $mailerFetch['reply.email'];
					unset($mailerFetch['reply.email']);
				}
				if (isset($mailerFetch['reply.name'])) {
					$mailerFetch['reply']['name'] = $mailerFetch['reply.name'];
					unset($mailerFetch['reply.name']);
				}
				$dataArr = $mailerFetch;
				return array("return" => true, "exists" => true, "data" => $dataArr);
			}
		}else if ($action == "exists") {
			$mailerLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
			$mailerValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $_tool->convertDatabaseString($object['value']) : null;
			if ($mailerLabel ==  null || $mailerValue == null) {
				return array("return" => false, "reason" => "");
			}
			$existsMailerRequest = "SELECT `id` FROM `mailer_id` WHERE `".$mailerLabel."` = '".$mailerValue."' LIMIT 1;";
			$existsMailerQuery = mysqli_query($db, $existsMailerRequest);
			if (!$existsMailerQuery) {
				return array("return" => false, "reason" => "");
			}
			if (mysqli_num_rows($existsMailerQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				return array("return" => true, "exists" => true);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function send ($object) {
		$mailerType = isset($object['type']) && is_string($object['type']) ? $object['type'] : null;
		$mailTitle = isset($object['title']) && is_string($object['title']) ? $object['title'] : null;
		$mailContent = isset($object['content']) && is_string($object['content']) ? $object['content'] : null;
		$mailAlt = isset($object['alt']) && is_string($object['alt']) ? $object['alt'] : null;
		$mailTo = isset($object['to'], $object['to']['email'], $object['to']['name']) ? $object['to'] : null;
		$mailHTML = isset($object['html']) && is_bool($object['html']) ? $object['html'] : true;
		$mailLog = isset($object['log']) && is_bool($object['log']) ? $object['log'] : false;
		if ($mailerType == null || $mailTo == null) {
			return array("return" => false, "reason" => "");
		}
		$getMailer = $this->id(array("action" => "get", "type" => "mailer"));
		if (isset($getMailer, $getMailer['return'], $getMailer['data']) && $getMailer['return'] == true) {
			$mailerArr = $getMailer['data'];
			if ($mailLog == true) {
				$addLog = $this->logs(array("action" => "add", "id" => $mailerArr['id'], "content" => $mailContent));
				if (isset($addLog, $addLog['return'], $addLog['data'], $addLog['data']['token']) && $addLog['return'] == true) {
					$mailContent = preg_replace("/(\{mailerLogToken\})/i", $addLog['data']['token'], $mailContent);
				}else if (isset($addLog, $addLog['return'], $addLog['reason']) && $addLog['return'] == false) {
					return array("return" => false, "reason" => $addLog['reason']);
				}else {
					return array("return" => false, "reason" => "");
				}
			}
			require_once ("mailer.autoloader.php");
			$mail = new PHPMailer;
			$mail->SMTPDebug = 3;
			$mail->isSMTP();
			$mail->Host = $mailerArr['host'];
			$mail->SMTPAuth = true;
			$mail->Username = $mailerArr['username'];
			$mail->Password = $mailerArr['password'];
			$mail->SMTPSecure = $mailerArr['secure'];
			$mail->Port = $mailerArr['port'];
			$mail->From = $mailerArr['from']['email'];
			$mail->FromName = $mailerArr['from']['name'];
			$mail->addAddress($mailTo['email'], $mailTo['name']);
			$mail->addReplyTo($mailerArr['reply']['email'], $mailerArr['reply']['name']);
			$mail->isHTML($mailHTML);
			$mail->Subject = $mailTitle;
			$mail->Body = $mailContent;
			$mail->AltBody = $mailAlt;
			if(!$mail->send()) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => true);
			}
		}else if (isset($getMailer, $getMailer['return'], $getMailer['reason']) && $getMailer['return'] == false) {
			return array("return" => false, "reason" => $getMailer['reason']);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function logs ($object) {
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if ($action == "add") {
			$mailerId = isset($object['id']) && is_string($object['id']) ? $object['id'] : null;
			$mailerContent = isset($object['content']) && is_string($object['content']) ? $object['content'] : null;
			if ($mailerId == null || $mailerContent == null) {
				return array("return" => false, "reason" => "");
			}
			$existsMailer = $this->id(array("action" => "exists", "label" => "id", "value" => $mailerId));
			if (isset($existsMailer, $existsMailer['return'], $existsMailer['exists']) && $existsMailer['return'] == true) {
				$mailerToken = hash('crc32', time().'::'.rand().'::'.rand().'::'.rand());
				$mailerContent = $_tool->hash('decode', $mailerContent, $mailerToken.'::'.$_parameter->get('hash_mailer_logs'));
				$addLogRequest = "INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES (NULL, '".time()."', '".$mailerId."', '".$mailerToken."', '".$mailerContent."');";
				$addLogQuery = mysqli_query($db, $addLogRequest);
				if (!$addLogQuery) {
					return array("return" => false, "reason" => "");
				}else {
					$logId = mysqli_insert_id($db);
					$dataArr = array(
						"id" => $logId,
						"token" => $mailerToken
					);
					return array("return" => true, "data" => $dataArr);
				}
			}else if (isset($existsMailer, $existsMailer['return'], $existsMailer['reason']) && $existsMailer['return'] == false) {
				return array("return" => false, "reason" => $existsMailer['reason']);
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
}
?>