<?php
if (!defined("giccos#class>session")){
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
	function setup ($name = "gSID", $secure = false) {
		$this->cookiename = $name;
		$hashType = "sha256";
		if (in_array($hashType, hash_algos())) {
		   ini_set("session.hash_function", $hashType);
		}
		ini_set("session.hash_bits_per_character", 6);
		ini_set("session.gc_maxlifetime", 5 * 60);
		ini_set("session.gc_probability", 10);
		ini_set("session.gc_divisor", 100);
		ini_set("session.use_cookies", 1);
		ini_set("session.use_only_cookies", 1);
		ini_set("session.cookie_httponly", 1);
		$cookieParams = session_get_cookie_params();
		$cookieParams['path'] = "/giccos";
		session_set_cookie_params($cookieParams['lifetime'], $cookieParams['path'], $cookieParams['domain'], $secure, 1);
		session_name($this->cookiename);
		if (!isset($_SESSION)) {
			if (!session_start()) {
				setcookie($this->cookiename, null, time() - 31536000, $cookieParams['path'], $secure);
				session_start();
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
		if (isset($_COOKIE[$this->cookiename])) {
			$oldSessionId = session_id();
			$oldSessionData = $this->read($oldSessionId);
			session_regenerate_id(true);
			$newSessionId = session_id();
			$this->write($newSessionId, $oldSessionData);
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
		if (!isset($this->db)) {
			return false;
		}
		$closeQuery = mysqli_close($this->db);
		if (!$closeQuery) {
			return false;
		}else {
			if (isset($this->hashCache)) unset($this->hashCache);
			if (isset($this->tokenCache)) unset($this->tokenCache);
			if (isset($this->storageCache)) unset($this->storageCache);
			if (isset($this->expiredCache)) unset($this->expiredCache);
			return true;
		}
	}
	function cache ($sessionToken, $sessionData) {
		if ($sessionToken == null || $sessionData == null) {
			return false;
		}
		$this->tokenCache = $sessionToken;
		$this->storageCache = $sessionData;
		$this->hashCache = hash('md5', $this->tokenCache.'::'.$this->storageCache);
		$this->expiredCache = time() + 60;
		return true;
	}
	function read ($id) {
		if ($id == null) {
			return false;
		}
		if (isset($this->hashCache, $this->tokenCache, $this->storageCache, $this->expiredCache)) {
			if ($this->expiredCache < time() && $this->hashCache == hash('md5', $this->tokenCache.'::'.$this->storageCache)) {
				return $this->decrypt($this->key($id, $this->tokenCache), $this->storageCache);
			}else {
				if (isset($this->hashCache)) unset($this->hashCache);
				if (isset($this->tokenCache)) unset($this->tokenCache);
				if (isset($this->storageCache)) unset($this->storageCache);
				if (isset($this->expiredCache)) unset($this->expiredCache);
			}
		}
		$getRequest = "SELECT `data`, `token` FROM `session` WHERE `id` = '".$id."' LIMIT 1;";
		$getQuery = mysqli_query($this->db, $getRequest);
		if (!$getQuery) {
			return false;
		}
		$session = mysqli_fetch_assoc($getQuery);
		$this->cache($session['token'], $session['data']);
		return $this->decrypt($this->key($id, $session['token']), $session['data']);
	}
	function write ($id = null, $sessionData = null) {
		if ($id == null || $sessionData == null) {
			return false;
		}
		$sessionToken = hash('md5', time().'::'.rand().'_'.rand().'_'.rand());
		$sessionData = $this->encrypt($this->key($id, $sessionToken), $sessionData);
		$existsRequest = "SELECT `id` FROM `session` WHERE `id` = '".$id."' LIMIT 1;";
		$existsQuery = mysqli_query($this->db, $existsRequest);
		if (!$existsQuery) {
			return false;
		}else {
			if (mysqli_num_rows($existsQuery) == 0) {
				$writeRequest = "INSERT INTO `session` (`id`, `time`, `token`, `data`, `updated`) VALUES ('".$id."', '".time()."', '".$sessionToken."', '".$sessionData."', '".time()."');";
			}else {
				$writeRequest = "UPDATE `session` SET `updated` = '".time()."', `token` = '".$sessionToken."', `data` = '".$sessionData."' WHERE `id` = '".$id."' ;";
			}
			$writeQuery = mysqli_query($this->db, $writeRequest);
			if (!$writeQuery) {
				return false;
			}else {
				$this->cache($sessionToken, $sessionData);
				return true;
			}
		}
		/*
		$replaceRequest = "REPLACE INTO `session` (`id`, `time`, `data`, `token`, `updated`) VALUES ('".$id."', `time`, '".$sessionData."', '".$sessionToken."', '".time()."');";
		$replaceQuery = mysqli_query($this->db, $replaceRequest);
		if (!$replaceQuery) {
			return false;
		}else {
			$this->cache($sessionToken, $sessionData);
			return true;
		}
		*/
	}
	function destroy ($id = null) {
		if ($id == null) {
			return false;
		}
		$deleteRequest = "DELETE FROM `session` WHERE `id` = '".$id."' ;";
		$deleteQuery = mysqli_query($this->db, $deleteRequest);
		if (!$deleteQuery) {
			return false;
		}else {
			return true;
		}
	}
	function gc ($max = 3600) {
		if ($max == 0) {
			return false;
		}
		$max = isset($max) && is_numeric($max) ? intval($max) : 3600;
		$deleteRequest = "DELETE FROM `session` WHERE `time` < '".(time() - $max)."';";
		$deleteQuery = mysqli_query($this->db, $deleteRequest);
		if (!$deleteQuery) {
			return false;
		}else {
			return true;
		}
	}
	private function key ($id, $token) {
		return hash('md5', $id);
	}
	private function encrypt($key, $data) {
        return rtrim(base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, hash('md5', $key), $data, MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND))), "\0");
    }
    private function decrypt($key, $data) {
        return rtrim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, hash('md5', $key), base64_decode($data), MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND)), "\0");
    }
}
?>