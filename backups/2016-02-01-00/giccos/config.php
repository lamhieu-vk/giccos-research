<?php
# Setting.
if (!defined("giccos#config")){
	die(header('HTTP/1.0 404 Not Found'));
}
# Function.
@define("giccos#function", true);
require_once ("function.php");
# Config.
// db.
@define("giccos#class>db", true);
require_once ("source/class/db.php");
// session.
@define("giccos#class>session", true);
require_once ("source/class/session.php");
// parameter.
@define("giccos#class>parameter", true);
require_once ("source/class/parameter.php");
// language.
@define("giccos#class>language", true);
require_once ("source/class/language.php");
// tool.
@define("giccos#class>tool", true);
require_once ("source/class/tool.php");
// client.
@define("giccos#class>client", true);
require_once ("source/class/client.php");
// ip.
@define("giccos#class>ip", true);
require_once ("source/class/ip.php");
// storage.
@define("giccos#class>storage", true);
require_once ("source/class/storage.php");
// user.
@define("giccos#class>user", true);
require_once ("source/class/user.php");
// image.
@define("giccos#class>image", true);
require_once ("source/class/image.php");
// imeditor.
@define("giccos#class>imeditor", true);
require_once ("source/class/imeditor.php");
// scrapbook.
@define("giccos#class>scrapbook", true);
require_once ("source/class/scrapbook.php");
# Setup.
// db.
$_db = new db;
// session.
$_session = new session;
$_session->setup("gSID", false);
// parameter.
$_parameter = new parameter;
$_parameter->setup(array(
	"code" => "global",
	"refresh" => true
));
// language.
$_language = new language;
$_language->setup(array(
	"language" => "en",
	"refresh" => true
));
// tool.
$_tool = new tool;
// client.
$_client = new client;
$_client->setup();
// ip.
$_ip = new ip;
$_ip->setup();
// storage.
$_storage = new storage;
$_storage->setup();
// user.
$_user = new user;
$_user->setup();
// image.
$_image = new image;
$_image->setup();
// scrapbook.
$_scrapbook = new scrapbook;
$_scrapbook->setup();
# Set.
// client.
if (!isset($_SESSION['client'])) {
	$dataClientObj = array();
	$dataClientUsing = $_tool->client();
	$dataClientObj['token'] = isset($dataClientUsing['token']) ? $dataClientUsing['token'] : null;
	$dataClientObj['platform'] = isset($dataClientUsing['platform']) ? $dataClientUsing['platform'] : null;
	$dataClientObj['device'] = isset($dataClientUsing['device']) ? $dataClientUsing['device'] : null;
	$dataClientObj['browser']['name'] = isset($dataClientUsing['browsername']) ? $dataClientUsing['browsername'] : null;
	$dataClientObj['browser']['version'] = isset($dataClientUsing['browserversion']) ? $dataClientUsing['browserversion'] : null;
	$dataClientObj['browser']['kernel'] = isset($dataClientUsing['browserkernel']) ? $dataClientUsing['browserkernel'] : null;
	$getIpAction = $_ip->data(array(
		"action" => "get",
		"ip" => $dataClientUsing['ip']
	));
	if (isset($getIpAction, $getIpAction['return'], $getIpAction['exists'], $getIpAction['data']) && $getIpAction['return']) {
		if ($getIpAction['exists']) {
			$dataClientObj['country'] = isset($getIpAction['data']['country']) ? $getIpAction['data']['country'] : null;
			$dataClientObj['region'] = isset($getIpAction['data']['region']) ? $getIpAction['data']['region'] : null;
			$dataClientObj['city'] = isset($getIpAction['data']['city']) ? $getIpAction['data']['city'] : null;
			$dataClientObj['location'] = isset($getIpAction['data']['latitude'], $getIpAction['data']['longitude']) ? $getIpAction['data']['latitude'].','.$getIpAction['data']['longitude'] : null;
			$dataClientObj['zipcode'] = isset($getIpAction['data']['zipcode']) ? $getIpAction['data']['zipcode'] : null;
			$dataClientObj['timezone'] = isset($getIpAction['data']['timezone']) ? $getIpAction['data']['timezone'] : null;
		}
	}
	$_SESSION['client'] = $dataClientObj;
}
if (!isset($_SESSION['client']['updated'])) {
	$updateClientAction = $_client->id(array(
		"action" => "update"
	));
	$_SESSION['client']['updated'] = time();
}
// user.
require_once ("config.userlogin.php"); // will delete after created page login.
if ($_user->logged() && isset($_SESSION['user']['data'][$_user->using()])) {
	$userObject = $_SESSION['user']['data'][$_user->using()];
	$userObject['logged'] = true;
	$userObject['mode'] = $_user->mode();
	$userObject['name'] = $userObject['fullname'];
	$userObject['tag'] = $userObject['username'];
}else {
	$userObject = array();
	$userObject['logged'] = false;
	$userObject['mode'] = array("type" => null, "id" => null);
	$userObject['name'] = $userObject['tag'] = null;
}
?>