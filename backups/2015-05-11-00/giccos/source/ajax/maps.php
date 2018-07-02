<?php
@define("6246d859de19710432b4faff46731ff2f1f57d940c040aa7bd165de6a3b769aa", true);
die;
require_once ("source/config.php");
if (isset($g_client['token']['ajax'], $_SERVER['HTTP_TOKEN'], $_SERVER['HTTP_X_REQUESTED_WITH'], $_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_SERVER['HTTP_TOKEN'] == $g_client['token']['ajax'] && $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest" && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")) {
	$_giccos->logsAjax();
	if (isset($_POST['type']) && is_string($_POST['type'])) $type = $_POST['type']; else $type = null;
	if (isset($_POST['token']) && is_string($_POST['token'])) $token = $_POST['token']; else $token = null;
	if ($type == "places" && $token == $g_client['token']['maps']['places']) {
		if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
		if ($action == "search") {
			if (isset($_POST['query']) && is_array($_POST['query'])) $query = $_POST['query']; else $query = null;
			if ($query != null && count($query) > 0) {
				if (isset($query['by'])) {
					$query['by'] = $query['by'].'search';
				}
				$request = $_maps->places(false, array("type" => "search", "query" => $query));
				if ($request['return'] == true) {
					foreach ($request['data'] as $i => $value) {
						unset($request['data'][$i]['reference']);
					}
					print json_encode(array("return" => true, "data" => $request['data'])); die();
				}else {
					print json_encode(array("return" => false, "reason" => $request['reason'])); die();
				}
			}else {
				print json_encode(array("return" => false, "reason" => "")); die();
			}
		}else {
			die();
		}
	}else {
		die();
	}
}else {
	// Not ajax.
}
?>