<?php
if(!defined("7c9a87aba3d96d2dc3edc45da062ce72")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class session {
	function __construct() {
	   	/*session_set_save_handler(
		   	array($this, 'open'), 
		   	array($this, 'close'), 
		   	array($this, 'read'),
		   	array($this, 'write'),
		   	array($this, 'destroy'),
		   	array($this, 'gc')
	   	);*/
	   	register_shutdown_function('session_write_close');
	}
	function start_session($name, $secure) {
		$httponly = true;
		$session_hash = "sha256";
		if (in_array($session_hash, hash_algos())) {
		   ini_set('session.hash_function', $session_hash);
		}
		ini_set("session.hash_bits_per_character", 6);
		// ini_set("session.gc_maxlifetime", 30 * 60);
		ini_set("session.gc_probability", 100);
		ini_set("session.gc_divisor", 100);
		ini_set("session.use_only_cookies", 1);
		ini_set("session.cookie_httponly", 1);
		$cookieParams = session_get_cookie_params();
		session_set_cookie_params($cookieParams['lifetime'], $cookieParams['path'], $cookieParams['domain'], $secure, $httponly);
		session_name($name);
		session_start();
		if (isset($_SESSION["client"]['time']) && $_SESSION["client"]['time'] + 3600 < time()) {
			$this->reset();
			$_SESSION["client"]['time'] = time();
		}else {
			if (!isset($_SESSION["client"]['time'])) {
				$this->reset();
				$_SESSION["client"]['time'] = time();
			}
		}
	}
	function reset () {
		session_regenerate_id(true);
	}
	function open () {
		$mysqli = new mysqli("localhost", "root", "", "giccos");
		$this->db = $mysqli;
   		return true;
	}
	function close () {
		$this->db->close();
		return true;
	}
	function read ($id) {
		if(!isset($this->read_stmt)) {
		   $this->read_stmt = $this->db->prepare("SELECT `data` FROM `sessions` WHERE `id` = ? LIMIT 1");
		}
		$this->read_stmt->bind_param('s', $id);
		$this->read_stmt->execute();
		$this->read_stmt->store_result();
		$this->read_stmt->bind_result($data);
		$this->read_stmt->fetch();
		$key = $this->getkey($id);
		$data = $this->decrypt($data, $key);
		return $data;
	}
	function write ($id, $data) {
		$key = $this->getkey($id);
		$data = $this->encrypt($key, $data);
		$time = time();
		if(!isset($this->w_stmt)) {
		   $this->w_stmt = $this->db->prepare("REPLACE INTO `sessions` (`id`, `time`, `data`, `token`) VALUES (?, ?, ?, ?)");
		}
		$this->w_stmt->bind_param('siss', $id, $time, $data, $key);
		$this->w_stmt->execute();
		return true;
	}
	function destroy ($id) {
		if(!isset($this->delete_stmt)) {
		    $this->delete_stmt = $this->db->prepare("DELETE FROM `sessions` WHERE `id` = ?");
		}
		$this->delete_stmt->bind_param('s', $id);
		$this->delete_stmt->execute();
		return true;
	}
	function gc ($max) {
		if(!isset($this->gc_stmt)) {
		   $this->gc_stmt = $this->db->prepare("DELETE FROM `sessions` WHERE `time` < ?");
		}
		$old = time() - $max;
		$this->gc_stmt->bind_param('s', $old);
		$this->gc_stmt->execute();
		return true;
	}
	private function getkey($id) {
		if(!isset($this->key_stmt)) {
		   $this->key_stmt = $this->db->prepare("SELECT `token` FROM `sessions` WHERE `id` = ? LIMIT 1");
		}
		$this->key_stmt->bind_param('s', $id);
		$this->key_stmt->execute();
		$this->key_stmt->store_result();
		if($this->key_stmt->num_rows == 1) { 
		    $this->key_stmt->bind_result($key);
		    $this->key_stmt->fetch();
		    return $key;
		}else {
		    $key = hash('sha512', uniqid(mt_rand(1, mt_getrandmax()), true));
		    return $key;
		}
	}
	private function encrypt($key, $data) {
        return rtrim(base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($key), $data, MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND))), "\0");
    }
    private function decrypt($key, $data) {
        return rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, md5($key), base64_decode($data), MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND)), "\0");
    }
}
?>