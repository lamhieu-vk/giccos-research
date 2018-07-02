<?php
if(!defined("7c9a87aba3d96d2dc3edc45da062ce72")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class session {
	function __construct() {
	   	session_set_save_handler(
		   	array($this, 'open'), 
		   	array($this, 'close'), 
		   	array($this, 'read'),
		   	array($this, 'write'),
		   	array($this, 'destroy'),
		   	array($this, 'gc')
	   	);
	   	register_shutdown_function("session_write_close");
	}
	function setup ($name, $secure) {
		$this->name = $name;
		$httponly = true;
		$session_hash = "sha256";
		if (in_array($session_hash, hash_algos())) {
		   ini_set("session.hash_function", $session_hash);
		}
		ini_set("session.hash_bits_per_character", 6);
		ini_set("session.gc_maxlifetime", 15 * 60);
		ini_set("session.gc_probability", 10);
		ini_set("session.gc_divisor", 100);
		ini_set("session.use_only_cookies", 1);
		ini_set("session.cookie_httponly", 1);
		$cookieParams = session_get_cookie_params();
		$cookieParams['path'] = "/giccos";
		session_set_cookie_params($cookieParams['lifetime'], $cookieParams['path'], $cookieParams['domain'], $secure, $httponly);
		session_name($this->name);
		if (!isset($_SESSION)) {
			session_start();
		}
		if (isset($_SESSION["client"]['time']) && $_SESSION["client"]['time'] + 3600 < time()) {
			$this->reset();
			$_SESSION["client"]['time'] = time();
			$this->expired = true;
		}else {
			if (!isset($_SESSION["client"]['time'])) {
				$this->reset();
				$_SESSION["client"]['time'] = time();
				$this->expired = true;
			}
		}
	}
	function expired () {
		if (!isset($this->expired)) {
			$this->expired = false;
		}
		return $this->expired;
	}
	function reset () {
		if (isset($_COOKIE[$this->name])) {
			$id = $_COOKIE[$this->name];
			session_regenerate_id(true);
			return true;
		}else {
			return false;
		}
	}
	function open () {
		$this->db = mysqli_connect("localhost", "root", "", "giccos");
   		return true;
	}
	function close () {
		mysqli_close($this->db);
		return true;
	}
	function read ($id) {
		$sql = "SELECT `data`, `token` FROM `sessions` WHERE `id` = '{$id}'";
		$query = mysqli_query($this->db, $sql);
		$fetch = mysqli_fetch_assoc($query);
		$data = $fetch['data'];
		$token = $fetch['token'];
		$data = $this->decrypt($this->key($id, $token), $data);
		return $data;
	}
	function write ($id, $data) {
		$time = time();
		$token = hash('crc32', time().'::'.rand());
		$data = $this->encrypt($this->key($id, $token), $data);
		mysqli_query($this->db, "REPLACE INTO `sessions` (`id`, `time`, `data`, `token`) VALUES ('{$id}', '{$time}', '{$data}', '{$token}')");
		return true;
	}
	function destroy ($id) {
		$sql = "DELETE FROM `sessions` WHERE `id` = '{$id}'";
		$query = mysqli_query($this->db, $sql);
		return true;
	}
	function gc ($max) {
		$old = time() - $max;
		$sql = "DELETE FROM `sessions` WHERE `time` < '{$old}'";
		$query = mysqli_query($this->db, $sql);
		return true;
	}
	private function key ($id, $token) {
		return md5($_SERVER["HTTP_USER_AGENT"]."::".$id);
	}
	private function encrypt($key, $data) {
        return rtrim(base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($key), $data, MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND))), "\0");
    }
    private function decrypt($key, $data) {
        return rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, md5($key), base64_decode($data), MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND)), "\0");
    }
}
?>