<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class videos {
	function __construct () {
		$GLOBALS["_videos"] = $this;
		$this->class = $GLOBALS;
	}
	function add ($object) {
		$_tool = $this->class['_tool'];
		$db = $this->class['_db']->port('beta');
		//.
		
	}
}
?>