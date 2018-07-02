<?php
if(!defined("7c9a87aba3d96d2dc3edc45da062ce72")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class session {
	private $config = array("https" => false, "token" => array("name" => "gSID", "time" => 900), "session" => array("time" => 900));
	private $parameter = array("secret" => null, "token" => null, "ip" => null, "client" => null, "time" => null);
	private $working = false;
	function __construct () {
		$register = $this->working = false;
		if (isset($_COOKIE[$this->config['token']['name']])) {
			$ip = $_SERVER['REMOTE_ADDR'];
			$client = hash('crc32', md5($_SERVER['REMOTE_ADDR'].'::'.$_SERVER['HTTP_USER_AGENT']));
			$token = $_COOKIE[$this->config['token']['name']];
			$query = @mysql_query("SELECT * FROM `giccos`.`sessions_id` WHERE `client` = '{$client}' AND `token` = '{$token}'");
			$length = @mysql_num_rows($query);
			if ($length == 0) {
				setcookie($this->config['token']['name'], null, time() - 1, "/", $this->config['https']);
				$register = true;
			}else {
				$config = $this->config();
				if ($config == true) {
					$this->working = true;
				}else {
					setcookie($this->config['token']['name'], null, time() - 1, "/", $this->config['https']);
					$register = true;
				}
			}
		}else {
			$register = true;
		}
		$this->cache('delete');
		if ($register == true && $this->working == false) {
			$create = $this->create();
			if ($create == true) {
				$this->working = true;
				return true;
			}else {
				$this->working = false;
				return false;
			}
		}else {
			$this->cache('update');
			$this->cache('clean');
			$this->working = true;
			return true;
		}
	}
	function config () {
		$token = $_COOKIE[$this->config['token']['name']];
		$client = hash('crc32', md5($_SERVER['REMOTE_ADDR'].'::'.$_SERVER['HTTP_USER_AGENT']));
		$query = @mysql_query("SELECT * FROM `giccos`.`sessions_id` WHERE `client` = '{$client}' AND `token` = '{$token}'");
		$length = @mysql_num_rows($query);
		if ($length > 0) {
			$fetch = @mysql_fetch_assoc($query);
			$this->parameter['ip'] = $fetch['ip'];
			$this->parameter['client'] = $fetch['client'];
			$this->parameter['secret'] = $fetch['secret'];
			$this->parameter['token'] = $fetch['token'];
			$this->parameter['time'] = $fetch['time'];
			return true;
		}else {
			return false;
		}
	}
	function create () {
		$this->parameter['ip'] = $_SERVER['REMOTE_ADDR'];
		$this->parameter['client'] = hash('crc32', md5($_SERVER['REMOTE_ADDR'].'::'.$_SERVER['HTTP_USER_AGENT']));
		$this->parameter['secret'] = hash('crc32', md5($this->parameter['client'].'::'.time().'::'.rand(000,999)));
		$this->parameter['token'] = hash('crc32', $this->parameter['client']).hash('crc32', $this->parameter['secret']);
		$this->parameter['time'] = time();
		$query = @mysql_query("INSERT INTO `giccos`.`sessions_id` (`id`, `ip`, `client`, `secret`, `token`, `time`) VALUES (NULL, '{$this->parameter['ip']}','{$this->parameter['client']}', '{$this->parameter['secret']}', '{$this->parameter['token']}', '{$this->parameter['time']}')");
		$set = Setcookie($this->config['token']['name'], $this->parameter['token'], 0, "/", $this->config['https']);
		if(!$query || !$set){
			return false;
		}else {
			return true;
		}
	}
	function write ($name = null, $data = null, $push = false) {
		if($this->working && $name != null && $data != null){
			$time = time();
			$name = addslashes($name);
			$query = @mysql_query("SELECT `id` FROM `giccos`.`sessions` WHERE `token` = '{$this->parameter['token']}' AND `name` = '{$name}'");
			$length = @mysql_num_rows($query);
			if($push && $length > 0){
				$query = @mysql_query("SELECT `id`, `data` FROM `giccos`.`sessions` WHERE `token` = '{$this->parameter['token']}' AND `name` = '{$name}'");
				$fetch = @mysql_fetch_assoc($query);
				$f_data = unserialize($this->decrypt($fetch['data']));
				$array = array('array');
				if(@in_array(gettype($f_data), $array) && @in_array(gettype($data), $array)){
					/*foreach ($data as $key => $data_v) {
						$f_data[$key] = $data_v;
					}
					$data = $f_data;*/
					$data = array_merge($f_data, $data);
				}else if(@in_array(gettype($f_data), $array) || @in_array(gettype($data), $array)){
					$data = $data;
				}else {
					$data .= $f_data;
				}
			}
			$data = $this->encrypt(serialize($data));
			if($length == 0){
				$query = "INSERT INTO `giccos`.`sessions` (`id`, `token`, `time`, `name`, `data`) VALUES (NULL, '{$this->parameter['token']}', '{$time}', '{$name}', '{$data}')";
			}else {
				$query = "UPDATE `giccos`.`sessions` SET `time` = '{$time}', `data` = '{$data}' WHERE `token` = '{$this->parameter['token']}' AND `name` = '{$name}'";
			}
			$return = @mysql_query($query);
			return $return;
		}else {
			return false;
		}
	}
	function read ($name = null) {
		if($this->working && $name != null){
			$name = addslashes($name);
			$query = @mysql_query("SELECT `id`, `data` FROM `sessions` WHERE `token` = '{$this->parameter['token']}' AND  `name` = '{$name}'");
			$length = @mysql_num_rows($query);
			if($length == 0){
				return false;
			}else {
				$return = @mysql_fetch_assoc($query);
				$data = unserialize($this->decrypt($return['data']));
				return $data;
			}
		}else {
			return false;
		}
	}
	function delete ($name = null) {
		if($this->working && $name != null){
			$name = addslashes($name);
			$length = @mysql_num_rows(@mysql_query("SELECT `id` FROM `sessions` WHERE `token` = '{$this->parameter['token']}' AND  `name` = '{$name}'"));
			if($length == 0){
				return false;
			}else {
				$query = "DELETE FROM `sessions` WHERE `token` = '{$this->parameter['token']}' AND `name` = '{$name}'";
				$return = @mysql_query($query);
				return $return;
			}
		}else {
			return false;
		}
	}
	private function cache ($action, $object = null) {
		$time = time();
		if($action == "update" && $this->working == true && isset($_COOKIE[$this->config['token']['name']])){
			$update_id = @mysql_query("UPDATE `giccos`.`sessions_id` SET `time` = '{$time}' + '{$this->config['token']['time']}' WHERE `token` = '{$this->parameter['token']}'");
			$update_data = @mysql_query("UPDATE `giccos`.`sessions` SET `time` = '{$time}' + '{$this->config['token']['time']}' WHERE `token` = '{$this->parameter['token']}'");
			$update_cookie = Setcookie($this->config['token']['name'], $this->parameter['token'], 0, '/', $this->config['https']);
			$clean_data = @mysql_query("SELECT `id`, `name` FROM `giccos`.`sessions` WHERE `token` = '{$this->parameter['token']}' ORDER BY `id` DESC");
			$pushClean = array();
			while ($clean = @mysql_fetch_assoc($clean_data)) {
				if(!in_array($clean['name'], $pushClean)){
					$pushClean[] = $clean['name'];
				}else {
					@mysql_query("DELETE FROM `giccos`.`sessions` WHERE `id` = '{$clean['id']}'");
				}
			}
			if($update_id && $update_data && $update_cookie){
				return true;
			}else {
				return false;
			}
		}else if($action == "delete"){
			$data_query = @mysql_query("SELECT `token` FROM `giccos`.`sessions_id` WHERE `ip` = '{$this->parameter['ip']}' AND `time` + '{$this->config['token']['time']}' < '{$time}'");
			while ($data = @mysql_fetch_assoc($data_query)) {
				$data_token = $data['token'];
				$del_id = @mysql_query("DELETE FROM `giccos`.`sessions_id` WHERE `token` = '{$data_token}'");
				if($del_id == true){
					$del_data = @mysql_query("DELETE FROM `giccos`.`sessions` WHERE `token` = '{$data_token}'");
				}
			}
		}else if($action == "clean"){
			$del_id = @mysql_query("DELETE FROM `giccos`.`sessions_id` WHERE `time` + '{$this->config['session']['time']}' < '{$time}'");
			$del_data = @mysql_query("DELETE FROM `giccos`.`sessions` WHERE `time` + '{$this->config['session']['time']}' < '{$time}'");
			if(!$del_id || !$del_data){
				return false;
			}else {
				return true;
			}
		}else {
			return false;
		}
	}
	private function encrypt($data) {
        return rtrim(base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $this->parameter['client'], $data, MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND))), "\0");
    }
    private function decrypt($data) {
        return rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $this->parameter['client'], base64_decode($data), MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND)), "\0");
    }
}
?>