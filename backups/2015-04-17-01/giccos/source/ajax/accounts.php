<?php
@define("6246d859de19710432b4faff46731ff2f1f57d940c040aa7bd165de6a3b769aa", true);
require_once ("source/config.php");
if (isset($g_client['token']['ajax'], $_SERVER['HTTP_TOKEN'], $_SERVER['HTTP_X_REQUESTED_WITH'], $_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_SERVER['HTTP_TOKEN'] == $g_client['token']['ajax'] && $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest" && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")) {
	$_giccos->logsAjax();
	if (isset($_POST['type']) && is_string($_POST['type'])) $type = $_POST['type']; else $type = null;
	if (isset($_POST['token']) && is_string($_POST['token'])) $token = $_POST['token']; else $token = null;
	if ($type == "login" && $token == $g_client['token']['accounts']['login'] ){
		if (isset($_POST['user']['username']) && is_string($_POST['user']['username'])) $username = $_POST['user']['username']; else $username = null;
		if (isset($_POST['user']['password']) && is_string($_POST['user']['password'])) $password = $_POST['user']['password']; else $password = null;
		if (isset($_POST['user']['remember']) && is_string($_POST['user']['remember'])) $remember = $_POST['user']['remember']; else $remember = null;
		if($remember == "true"){
			$remember = true;
		}else {
			$remember = false;
		}
		$login = $_user->login(array("type" => 1, "user" => array("username" => $username, "password" => $password), "remember" => $remember));
		if ($login['return'] == true) {
			$_session->reset();
			print json_encode(array("return" => true, "redirect" => $_tool->links('::redirect::home'))); die();
		}else {
			print json_encode(array("return" => false, "reason" => $login['reason'])); die();
		}
	}else if ($type == "register" && $token == $g_client['token']['accounts']['register']) {
		if (isset($_POST['user']) && is_array($_POST['user'])) $user = $_POST['user']; else $user = null;
		if($user != null && count($user) > 0){
			$register = $_user->register($user);
			if($register['return'] == true){
				$login = $_user->login(array("type" => 2, "user" => array("id" => $register['data']['id']), "remember" => false));
				$_session->reset();
				print json_encode(array("return" => true, "redirect" => $_tool->links('::redirect::home'))); die();
			}else {
				print json_encode(array("return" => false, "reason" => $register['reason'])); die();
			}
		}else {
			print json_encode(array("return" => false, "reason" => "ERROR#USER_016")); die();
		}
	}else {
		print json_encode(array("return" => false, "reason" => "")); die();
	}
}else {
	// Not ajax.
	die(header("HTTP/1.1 404 Not Found"));
}
?>