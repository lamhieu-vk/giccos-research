<?php
/* code login, will delete when created page login <!-- */
if (!isset($_SESSION['user']['using'])) {
	$getUserIdAction = $_user->id(array(
		"row" => ["*"],
		"action" => "get",
		"label" => "id",
		"value" => "1"
	));
	if (isset($getUserIdAction, $getUserIdAction['return'], $getUserIdAction['exists'], $getUserIdAction['data']) && $getUserIdAction['return']) {
		if ($getUserIdAction['exists']) {
			if (isset($getUserIdAction['data'], $getUserIdAction['data']['id'])) {
				$_SESSION['user']['data'][$getUserIdAction['data']['id']] = $getUserIdAction['data'];
				$_SESSION['user']['using'] = $getUserIdAction['data']['id'];
			}
		}
	}
}
if (!isset($_SESSION['user']['mode'])) {
	if (isset($_SESSION['user']['using'])) {
		$_SESSION['user']['mode'] = array(
			"type" => "user",
			"id" => $_SESSION['user']['using']
		);
	}
}
if (isset($_SESSION['user']['using']) && !isset($_SESSION['user']['session'], $_SESSION['user']['session']['id'])) {
	$createUserSessionAction = $_user->session(array(
		"action" => "create",
		"user" => array(
			"id" => $_SESSION['user']['using']
		)
	));
	if (isset($createUserSessionAction, $createUserSessionAction['return'], $createUserSessionAction['data']) && $createUserSessionAction['return']) {
		if (isset($createUserSessionAction['data']['id'])) {
			$_SESSION['user']['session'] = $createUserSessionAction['data'];
		}
	}
}
if (isset($_SESSION['user']['session'], $_SESSION['user']['session']['id'])) {
	$updateUserSessionAction = $_user->session(array(
		"action" => "update",
		"id" => $_SESSION['user']['session']['id']
	));
}
/* --> */
?>