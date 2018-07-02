<?php
# Setting.
if (!defined("giccos#function")){
	die(header('HTTP/1.0 404 Not Found'));
}
# Config.
if (!function_exists('is_exists')) {
	function is_exists () {
		$args = func_get_args();
		foreach ($args as $key => $value) {
			if (!isset($value) || (!is_numeric($value) && !is_string($value) && !is_array($value))) {
				return false;
			}
		}
		return true;
	}
}
# Include.
@define("giccos#class>string.lz", true);
require_once ("source/class/string.lz.php");
?>