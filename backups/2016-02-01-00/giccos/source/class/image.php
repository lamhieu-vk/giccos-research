<?php
if (!defined("giccos#class>image")){
    die(header('HTTP/1.0 404 Not Found'));
}
Class image {
	function __construct () {
		$GLOBALS["_image"] = $this;
		$this->class = $GLOBALS;
		$this->ready = false;
		$this->db = null;
	}
	function open ($object = array()) {
		$_db = $this->class['_db'];
		//.
		if (isset($this->db) && $this->db != null) {
			return array("return" => true, "connected" => true, "called" => false);
		}
		$openDatabase = $_db->open(array(
			"port" => "image",
			"db" => array(
				"host" => "localhost",
				"username" => "root",
				"password" => "",
				"name" => "giccos"
			)
		));
		if (isset($openDatabase, $openDatabase['return']) && $openDatabase['return']) {
			$this->db = $_db->port("image");
			return array("return" => true, "connected" => true, "called" => true);
		}else if (isset($openDatabase, $openDatabase['return'], $openDatabase['reason']) && !$openDatabase['return']) {
			return array("return" => false, "reason" => "error#image:open>".$openDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#image:open>_");
		}
	}
	function close () {
		$_db = $this->class['_db'];
		//.
		$closeDatabase = $_db->close("image");
		if (isset($closeDatabase, $closeDatabase['return']) && $closeDatabase['return']) {
			$this->db = null;
			return array("return" => true);
		}else if (isset($closeDatabase, $closeDatabase['return'], $closeDatabase['reason']) && !$closeDatabase['return']) {
			return array("return" => false, "reason" => "error#image:close>".$closeDatabase['reason']);
		}else {
			return array("return" => false, "reason" => "error#image:close>_");
		}
	}
	function setup ($object = array()) {
		$openUserAction = $this->open();
		if (isset($openUserAction, $openUserAction['return']) && $openUserAction['return']) {
			$this->ready = true;
			return array("return" => true);
		}else if (isset($openUserAction, $openUserAction['return'], $openUserAction['reason']) && !$openUserAction['return']) {
			return array("return" => false, "reason" => "error#image:setup>".$openUserAction['reason']);
		}else {
			return array("return" => false, "reason" => "error#image:setup>_");
		}
	}
	function tool ($object = array()) {
		$_tool = $this->class['_tool'];
		$this->pathToolImagick = "convert";
		//.
		if (!isset($this->listToolHandling)) {
			$this->listToolHandling = array();
		}
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if (in_array($action, ["add", "load"])) {
			$fileArr = array();
			$fileArr['source'] = isset($object['source']) && is_string($object['source']) ? $object['source'] : null;
			if ($fileArr['source'] == null) {
				return array("return" => false, "reason" => "error#image:tool>load>sourcenull");
			}/*else if (!file_exists($fileArr['source'])) {
				return array("return" => false, "reason" => "error#image:tool>load>fileexists");
			}*/
			if (1 + 1 == 2) {
				$fileArr['source'] = $fileArr['source'];
			}else {
				$fileArr['source'] = $fileArr['source'];
			}
			$fileArr['key'] = hash('md5', time().'::'.rand().'_'.rand().'_'.rand());
			$this->listToolHandling[$fileArr['key']] = $fileArr['source'];
			return array("return" => true, "key" => $fileArr['key']);
		}else if (in_array($action, ["close"])) {
			$fileArr = array();
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				if (isset($this->listToolHandling[$fileArr['key']])) {
					unset($this->listToolHandling[$fileArr['key']]);
				}
				return array("return" => true);
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => "error#image:tool>close>".$isExists['reason']);
			}else {
				return array("return" => false, "reason" => "error#image:tool>close>_");
			}
		}else if (in_array($action, ["unlink"])) {
			$fileArr = array();
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				$unlinkHandling = $_tool->unlink($fileArr['source']);
				if (!$unlinkHandling) {
					return array("return" => false, "reason" => "error#image:tool>unlink>handle");
				}else {
					return array("return" => true);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => "error#image:tool>unlink>".$isExists['reason']);
			}else {
				return array("return" => false, "reason" => "error#image:tool>unlink>_");
			}
		}else if (in_array($action, ["copy", "move"])) {
			$fileArr = array();
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$fileArr['destination'] = isset($object['destination']) && is_string($object['destination']) ? $object['destination'] : null;
			$fileArr['replace'] = isset($object['replace']) && is_bool($object['replace']) ? $object['replace'] : false;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				if (!$fileArr['replace'] && file_exists($fileArr['destination'])) {
					return array("return" => false, "reason" => "error#image:tool>cm>replacenotallow");
				}
				if ($action == "copy") {
					$actionHandling = $_tool->copy($fileArr['source'], $fileArr['destination']);
				}else if ($action == "move") {
					$actionHandling = $_tool->move($fileArr['source'], $fileArr['destination']);
				}
				if (!$actionHandling) {
					return array("return" => false, "reason" => "error#image:tool>cm>handle");
				}else {
					return array("return" => true);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => "error#image:tool>cm>".$isExists['reason']);
			}else {
				return array("return" => false, "reason" => "error#image:tool>cm>_");
			}
		}else if (in_array($action, ["resize"])) {
			$fileArr = array("size" => array());
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$fileArr['destination'] = isset($object['destination']) && is_string($object['destination']) ? $object['destination'] : null;
			$fileArr['size']['height'] = isset($object['size'], $object['size']['height']) && is_numeric($object['size']['height']) ? $object['size']['height'] : 0;
			$fileArr['size']['width'] = isset($object['size'], $object['size']['width']) && is_numeric($object['size']['width']) ? $object['size']['width'] : 0;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				if ($fileArr['destination'] == null) {
					$fileArr['destination'] = $fileArr['source'];
				}
				if ($fileArr['size']['height'] != 0 && $fileArr['size']['width'] != 0) {
					$resizeHandling = $_tool->execute(" ".$this->pathToolImagick." ".$fileArr['source']." -resize ".$fileArr['size']['width']."x".$fileArr['size']['height']."! ".$fileArr['destination']." ");
				}else if ($fileArr['size']['height'] != 0 && $fileArr['size']['width'] == 0) {
					$resizeHandling = $_tool->execute(" ".$this->pathToolImagick." ".$fileArr['source']." -resize x".$fileArr['size']['height']." ".$fileArr['destination']." ");
				}else if ($fileArr['size']['height'] == 0 && $fileArr['size']['width'] != 0) {
					$resizeHandling = $_tool->execute(" ".$this->pathToolImagick." ".$fileArr['source']." -resize ".$fileArr['size']['width']."x ".$fileArr['destination']." ");
				}else {
					return array("return" => false, "reason" => "asdwe");
				}
				if (isset($resizeHandling, $resizeHandling['return']) && $resizeHandling['return'] == true) {
					return array("return" => true, "x" => $resizeHandling);
				}else {
					return array("return" => false, "reason" => $resizeHandling);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => $isExists['reason']);
			}else {
				return array("return" => false, "reason" => "sxs");
			}
		}else if (in_array($action, ["crop"])) {
			$fileArr = array("size" => array(), "position" => array());
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$fileArr['destination'] = isset($object['destination']) && is_string($object['destination']) ? $object['destination'] : null;
			$fileArr['size']['height'] = isset($object['size'], $object['size']['height']) && is_numeric($object['size']['height']) ? $object['size']['height'] : 0;
			$fileArr['size']['width'] = isset($object['size'], $object['size']['width']) && is_numeric($object['size']['width']) ? $object['size']['width'] : 0;
			$fileArr['position']['y'] = isset($object['position'], $object['position']['y']) && is_numeric($object['position']['y']) ? $object['position']['y'] : 0;
			$fileArr['position']['x'] = isset($object['position'], $object['position']['x']) && is_numeric($object['position']['x']) ? $object['position']['x'] : 0;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				if ($fileArr['destination'] == null) {
					$fileArr['destination'] = $fileArr['source'];
				}
				$fileArr['dimension'] = array();
				list($fileArr['dimension']['width'], $fileArr['dimension']['height']) = getimagesize($fileArr['source']);
				if ($fileArr['size']['width'] == 0 || $fileArr['size']['height'] == 0) {
					return array("return" => false, "reason" => "sxs");
				}else if ($fileArr['dimension']['width'] - $fileArr['position']['x'] < $fileArr['size']['width'] || $fileArr['dimension']['height'] - $fileArr['position']['y'] < $fileArr['size']['height']) {
					return array("return" => false, "reason" => "sdfasw");
				}
				$cropHandling = $_tool->execute(' '.$this->pathToolImagick.' '.$fileArr['source'].' -crop '.$fileArr['size']['width'].'x'.$fileArr['size']['height'].'+'.$fileArr['position']['x'].'+'.$fileArr['position']['y'].' '.$fileArr['destination'].' ');
				if (isset($cropHandling, $cropHandling['return']) && $cropHandling['return'] == true) {
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => $cropHandling);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => $isExists['reason']);
			}else {
				return array("return" => false, "reason" => "sxs");
			}
		}else if (in_array($action, ["thumbnail"])) {
			$fileArr = array();
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$fileArr['destination'] = isset($object['destination']) && is_string($object['destination']) ? $object['destination'] : null;
			$fileArr['size'] = isset($object['size']) && is_numeric($object['size']) ? $object['size'] : 0;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				if ($fileArr['destination'] == null) {
					$fileArr['destination'] = $fileArr['source'];
				}
				$fileArr['dimension'] = array();
				list($fileArr['dimension']['width'], $fileArr['dimension']['height']) = getimagesize($fileArr['source']);
				if ($fileArr['size'] == 0) {
					return array("return" => false, "reason" => "sxs");
				}else if ($fileArr['dimension']['width'] < $fileArr['size'] || $fileArr['dimension']['width'] < $fileArr['size']) {
					return array("return" => false, "reason" => "sdfasw");
				}
				// $thumbnailHandling = $_tool->execute(" ".$this->pathToolImagick." ".$fileArr['source']." -thumbnail ".$fileArr['size']."x".$fileArr['size']."^ \ -gravity center -extent ".$fileArr['size']."x".$fileArr['size']." ".$fileArr['destination']." ");
				$thumbnailHandling = $_tool->execute(" ".$this->pathToolImagick." ".$fileArr['source']." -gravity center -crop ".$fileArr['size']."x".$fileArr['size']."+0+0 ".$fileArr['destination']." ");
				if (isset($thumbnailHandling, $thumbnailHandling['return']) && $thumbnailHandling['return'] == true) {
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => $thumbnailHandling);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => $isExists['reason']);
			}else {
				return array("return" => false, "reason" => "sxs");
			}
		}else if (in_array($action, ["rotate", "rotation"])) {
			$fileArr = array();
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$fileArr['destination'] = isset($object['destination']) && is_string($object['destination']) ? $object['destination'] : null;
			$fileArr['degrees'] = isset($object['degrees']) && is_numeric($object['degrees']) ? $object['degrees'] : 0;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				if ($fileArr['destination'] == null) {
					$fileArr['destination'] = $fileArr['source'];
				}
				if ($fileArr['degrees'] == 0) {
					return array("return" => false, "reason" => "sxs");
				}
				$rotateHandling = $_tool->execute(' '.$this->pathToolImagick.' '.$fileArr['source'].' -rotate '.$fileArr['degrees'].' '.$fileArr['destination'].' ');
				if (isset($rotateHandling, $rotateHandling['return']) && $rotateHandling['return'] == true) {
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => $rotateHandling);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => $isExists['reason']);
			}else {
				return array("return" => false, "reason" => "sxs");
			}
		}else if (in_array($action, ["bordercolor"])) {
			$fileArr = array();
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$fileArr['destination'] = isset($object['destination']) && is_string($object['destination']) ? $object['destination'] : null;
			$fileArr['color'] = isset($object['color']) && is_string($object['color']) ? strtolower($object['color']) : null;
			$fileArr['size'] = isset($object['size']) && is_numeric($object['size']) ? $object['size'] : 0;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				if ($fileArr['destination'] == null) {
					$fileArr['destination'] = $fileArr['source'];
				}
				if ($fileArr['color'] == null || $fileArr['size']) {
					return array("return" => false, "reason" => "sxs");
				}
				$bordercolorHandling = $_tool->execute(' '.$this->pathToolImagick.' '.$fileArr['source'].' -bordercolor '.$fileArr['color'].' -border '.$fileArr['size'].'x'.$fileArr['size'].' '.$fileArr['destination'].' ');
				if (isset($bordercolorHandling, $bordercolorHandling['return']) && $bordercolorHandling['return'] == true) {
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => $bordercolorHandling);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => $isExists['reason']);
			}else {
				return array("return" => false, "reason" => "sxs");
			}
		}else if (in_array($action, ["effect"])) {
			$fileArr = array();
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$fileArr['destination'] = isset($object['destination']) && is_string($object['destination']) ? $object['destination'] : null;
			$fileArr['name'] = isset($object['name']) && is_string($object['name']) ? strtolower($object['name']) : null;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				if ($fileArr['destination'] == null) {
					$fileArr['destination'] = $fileArr['source'];
				}
				if ($fileArr['name'] == null) {
					return array("return" => false, "reason" => "sxs");
				}
				if (in_array($fileArr['name'], ["summerlight"])) {
					// selfie, landscape, macro, exposure, portrait, pet.
					$effectExecCmd = "
						".$this->pathToolImagick." 
						".$fileArr['source']."
							( -clone 0 -fill '#FFFFFF' -colorize 80% ) ( -clone 0 -colorspace gray -negate ) -compose blend -define compose:args=10,90 -composite
							+contrast 0.25
							-channel O -level 30,90%
							-gamma 0.75
							-contrast 0.75
							-modulate 110,90
						".$fileArr['destination']." 
					";
					$effectHandling = $_tool->execute($effectExecCmd);
				}else if (in_array($fileArr['name'], ["purplelight"])) {
					// portrait, pet, selfie.
					$effectExecCmd = "
						".$this->pathToolImagick."
						".$fileArr['source']."
							+contrast 0.25
							-channel R -level 10% 
							-channel G -level 20%
							-channel O -level 5%
							-fill 'rgb(100, 22, 239)' -colorize 10
							-gamma 0.90
							-contrast 0.5
							-modulate 110,90
						".$fileArr['destination']." 
					";
					$effectHandling = $_tool->execute($effectExecCmd);
				}else if (in_array($fileArr['name'], ["sunlight"])) {
					// portrait, pet, macro, selfie.
					$effectExecCmd = " 
						".$this->pathToolImagick." 
						".$fileArr['source']." 
							+contrast 0.25
							-channel G -level 15%
							-channel B -level 15%
							-channel O -level 5%
							-fill 'rgb(255, 204, 0)' -colorize 10
							-gamma 0.75
							-contrast 0.75
							-modulate 110,90
						".$fileArr['destination']." 
					";
					$effectHandling = $_tool->execute($effectExecCmd);
				}else if (in_array($fileArr['name'], ["whitelight"])) {
					// selfie, landscape, macro, exposure, portrait, pet.
					$effectExecCmd = " 
						".$this->pathToolImagick." 
						".$fileArr['source']." 
							+contrast 0.25
							-channel R -level 10% 
							-channel G -level 10%
							-channel O -level 20%
							-contrast 0.75
							-modulate 110,60
							-sigmoidal-contrast 2,0%
						".$fileArr['destination']." 
					";
					$effectHandling = $_tool->execute($effectExecCmd);
				}else if (in_array($fileArr['name'], ["sunblind"])) {
					// selfie, landscape, macro, exposure, portrait, pet.
					$effectExecCmd = " 
						".$this->pathToolImagick." 
						".$fileArr['source']." 
							+contrast 0.25
							-channel B -level 15% 
							-channel R -level 10%
							-gamma 0.75
							-contrast 0.25
							-modulate 105,95
							-sigmoidal-contrast 2,0%
						".$fileArr['destination']." 
					";
					$effectHandling = $_tool->execute($effectExecCmd);
				}else if (in_array($fileArr['name'], ["pastlight"])) {
					// selfie, landscape, macro, exposure, portrait, pet.
					$effectExecCmd = " 
						".$this->pathToolImagick." 
						".$fileArr['source']." 
							+contrast 0.5
							-channel O -level 10%
							-fill 'rgba(23, 33, 103)' -colorize 10 
							-gamma 0.75
							-contrast 0.5
							-modulate 110,50
							-sigmoidal-contrast 1,0%
						".$fileArr['destination']." 
					";
					$effectHandling = $_tool->execute($effectExecCmd);
				}else if (in_array($fileArr['name'], ["futurelight"])) {
					// selfie, landscape, macro, exposure, portrait, pet.
					$effectExecCmd = " 
						".$this->pathToolImagick." 
						".$fileArr['source']." 
							+contrast 0.25
							-channel G -level 15% 
							-channel B -level 15% 
							-gamma 0.75
							-contrast 0.25
							-modulate 105,95
							-sigmoidal-contrast 2,0%
						".$fileArr['destination']." 
					";
					$effectHandling = $_tool->execute($effectExecCmd);
				}else if (in_array($fileArr['name'], ["begrime"])) {
					// selfie, landscape, macro, exposure, portrait, pet.
					$effectExecCmd = " 
						".$this->pathToolImagick." 
						".$fileArr['source']." 
							( -clone 0 -fill 'rgba(75, 75, 75)' -colorize 100% ) ( -clone 0 -colorspace gray -negate ) -compose blend -define compose:args=25,75 -composite
							-gamma 0.75
							-channel O -level 10%
							-fill 'rgba(75, 75, 75)' -colorize 20
							-gamma 0.25
							-contrast 0.25
							-modulate 120,80
							-sigmoidal-contrast 1,0%
						".$fileArr['destination']." 
					";
					$effectHandling = $_tool->execute($effectExecCmd);
				}
				if (isset($effectHandling, $effectHandling['return']) && $effectHandling['return'] == true) {
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => $effectHandling);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => $isExists['reason']);
			}else {
				return array("return" => false, "reason" => "sxs");
			}
		}else if (in_array($action, ["blurselective"])) {
			$fileArr = array("size" => array());
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$fileArr['amount'] = isset($object['amount']) && is_numeric($object['amount']) ? $object['amount'] : 0;
			$fileArr['blend'] = isset($object['blend']) && is_numeric($object['blend']) ? $object['blend'] : 0;
			$fileArr['threshold'] = isset($object['threshold']) && is_numeric($object['threshold']) ? $object['threshold'] : 0;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				if ($fileArr['amount'] == null || $fileArr['blend'] == 0 || $fileArr['threshold'] == 0) {
					return array("return" => false, "reason" => "sxs");
				}
				$blurselectiveHandling = $_tool->execute(' '.$this->pathToolImagick.' '.$fileArr['source'].' ( +clone -selective-blur 0x'.$fileArr['amount'].'+'.$fileArr['threshold'].'% ) -contrast 0.'.$fileArr['amount'].' -modulate 105,95 -define compose:args='.$fileArr['blend'].'% -compose blend -composite '.$fileArr['destination'].' 2>&1');
				if (isset($blurselectiveHandling, $blurselectiveHandling['return']) && $blurselectiveHandling['return'] == true) {
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => $blurselectiveHandling);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => $isExists['reason']);
			}else {
				return array("return" => false, "reason" => "sxs");
			}
		}else if (in_array($action, ["colorlist"])) {
			$fileArr = array("size" => array());
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$fileArr['count'] = isset($object['count']) && is_numeric($object['count']) ? $object['count'] : 0;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				$colorList = $arrangeList = array();
				$histogramHandling = $_tool->execute(' '.$this->pathToolImagick.' '.$fileArr['source'].' -colors 256 -depth 8 -format \"%c\" histogram:info: 2>&1');
				if (isset($histogramHandling, $histogramHandling['return']) && $histogramHandling['return'] == true) {
					$histogramArr = $histogramHandling['output'];
					foreach ($histogramArr as $histogramThis) {
			            preg_match("/([0-9]+)\:/", $histogramThis, $countMatch);
			            preg_match("/(\#[a-zA-Z0-9]+)/", $histogramThis, $colorMatch);
			            if (isset($colorMatch, $colorMatch[1], $countMatch, $countMatch[1])) {
			                $arrangeList[$colorMatch[1]] = $countMatch[1];
			            }
			        }
			        arsort($arrangeList);
			        foreach ($arrangeList as $colorThis => $arrangeThis) {
			        	if ($fileArr['count'] == 0) {
			        		$colorList[] = $colorThis;
			        	}else {
			        		if (count($colorList) < $fileArr['count']) {
			        			$colorList[] = $colorThis;
				            }else {
				                break;
				            }
			        	}
			        }
			        $dataArr = $colorList;
			        $countArr = count($dataArr);
					return array("return" => true, "count" => $countArr, "data" => $dataArr);
				}else {
					return array("return" => false, "reason" => $histogramHandling);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => $isExists['reason']);
			}else {
				return array("return" => false, "reason" => "sxs");
			}
		}else if (in_array($action, ["compress"])) {
			$fileArr = array();
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$fileArr['destination'] = isset($object['destination']) && is_string($object['destination']) ? $object['destination'] : null;
			$fileArr['type'] = isset($object['type']) && is_string($object['type']) ? strtolower($object['type']) : null;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				if ($fileArr['destination'] == null) {
					$fileArr['destination'] = $fileArr['source'];
				}
				$compressHandling = $_tool->execute(' '.$this->pathToolImagick.' '.$fileArr['source'].' -quality 75% -interlace Plane -gaussian-blur 0.05 '.$fileArr['destination'].' ');
				if (isset($compressHandling, $compressHandling['return']) && $compressHandling['return'] == true) {
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => $compressHandling);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => $isExists['reason']);
			}else {
				return array("return" => false, "reason" => "sxs");
			}
		}else if (in_array($action, ["quality"])) {
			$fileArr = array();
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$fileArr['destination'] = isset($object['destination']) && is_string($object['destination']) ? $object['destination'] : null;
			$fileArr['value'] = isset($object['value']) && is_numeric($object['value']) ? $object['value'] : null;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				if ($fileArr['destination'] == null) {
					$fileArr['destination'] = $fileArr['source'];
				}
				$qualityHandling = $_tool->execute(' '.$this->pathToolImagick.' '.$fileArr['source'].' -quality '.$fileArr['value'].'% '.$fileArr['destination'].' ');
				if (isset($qualityHandling, $qualityHandling['return']) && $qualityHandling['return'] == true) {
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => $qualityHandling);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => $isExists['reason']);
			}else {
				return array("return" => false, "reason" => "sxs");
			}
		}else if (in_array($action, ["strip"])) {
			$fileArr = array();
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			$fileArr['destination'] = isset($object['destination']) && is_string($object['destination']) ? $object['destination'] : null;
			$isExists = $this->tool(array("action" => "exists", "key" => $fileArr['key']));
			if (isset($isExists, $isExists['return']) && $isExists['return'] == true) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				if ($fileArr['destination'] == null) {
					$fileArr['destination'] = $fileArr['source'];
				}
				$stripHandling = $_tool->execute(' '.$this->pathToolImagick.' '.$fileArr['source'].' -strip '.$fileArr['destination'].' ');
				if (isset($stripHandling, $stripHandling['return']) && $stripHandling['return'] == true) {
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => $stripHandling);
				}
			}else if (isset($isExists, $isExists['return'], $isExists['reason']) && $isExists['return'] == false) {
				return array("return" => false, "reason" => $isExists['reason']);
			}else {
				return array("return" => false, "reason" => "sxs");
			}
		}else if (in_array($action, ["exists"])) {
			$fileArr = array("size" => array());
			$fileArr['key'] = isset($object['key']) && is_string($object['key']) ? $object['key'] : null;
			if (isset($this->listToolHandling[$fileArr['key']])) {
				$fileArr['source'] = $this->listToolHandling[$fileArr['key']];
				if (file_exists($fileArr['source'])) {
					return array("return" => true);
				}else {
					return array("return" => false, "reason" => "error#image:tool>sourcenotexists");
				}
			}else {
				return array("return" => false, "reason" => "error#image:tool>keyexists");
			}
		}else {
			return array("return" => false, "reason" => "error#image:tool>actionotnexists");
		}
	}
	function other ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? strtolower($object['action']) : null;
		if (in_array($action, ["use"])) {
			$url = isset($object['url']) && is_string($object['url']) ? $object['url'] : null;
			if ($url == null) {
				return array("return" => false, "reason" => "error#image:other>use>urlnull");
			}else if (!preg_match($_parameter->get('regex_url_image'), $url)) {
				return array("return" => false, "reason" => "error#image:other>use>urlinvalid");
			}
			$existsFileAction = $this->other(array("action" => "exists", "label" => "url", "value" => $url));
			if (isset($existsFileAction, $existsFileAction['return'], $existsFileAction['exists']) && $existsFileAction['return'] == true) {
				if (!$existsFileAction['exists']) {
					$addFileAction = $this->other(array("action" => "add", "url" => $url));
					if (isset($addFileAction, $addFileAction['return']) && $addFileAction['return']) {
						//.
					}else if (isset($addFileAction, $addFileAction['return'], $addFileAction['reason']) && !$addFileAction['return']) {
						return array("return" => false, "reason" => "error#image:other>use>existsfile>addfile>".$addFileAction['reason']);
					}else {
						return array("return" => false, "reason" => "error#image:other>use>existsfile>addfile>_");
					}
				}
				$getFileAction = $this->other(array("action" => "get", "label" => "url", "value" => $url));
				if (isset($getFileAction, $getFileAction['return'], $getFileAction['data'], $getFileAction['exists']) && $getFileAction['return'] == true) {
					return array("return" => true, "data" => $getFileAction['data'], "exists" => $getFileAction['exists']);
				}else if (isset($getFileAction, $getFileAction['return'], $getFileAction['reason']) && $getFileAction['return'] == false) {
					return array("return" => false, "reason" => "error#image:other>use>existsfile>getfile>".$existsFileAction['reason']);
				}else {
					return array("return" => false, "reason" => "error#image:other>use>existsfile>getfile>_");
				}
			}else if (isset($existsFileAction, $existsFileAction['return'], $existsFileAction['reason']) && $existsFileAction['return'] == false) {
				return array("return" => false, "reason" => "error#image:other>use>existsfile>".$existsFileAction['reason']);
			}else {
				return array("return" => false, "reason" => "error#image:other>use>existsfile>_");
			}
		}else if (in_array($action, ["add", "push", "append"])) {
			$url = isset($object['url']) && is_string($object['url']) ? $object['url'] : null;
			if ($url == null) {
				return array("return" => false, "reason" => "error#image:other>add>urlnull");
			}else if (!preg_match($_parameter->get('regex_url_image'), $url)) {
				return array("return" => false, "reason" => "error#image:other>add>urlinvalid");
			}
			$existsFileAction = $this->other(array("action" => "exists", "label" => "url", "value" => $url));
			if (isset($existsFileAction, $existsFileAction['return'], $existsFileAction['exists']) && $existsFileAction['return'] == true) {
				if (!$existsFileAction['exists']) {
					$fileArr = array();
					$fileArr['token'] = hash('crc32', time().'::'.rand().'_'.rand().'_'.rand());
					$fileArr['display'] = hash('md5', $fileArr['token']);
					$fileArr['url'] = $_tool->parseDBString($url);
					$fileArr['die'] = false;
					$addFileRequest = "INSERT INTO `image_other` (`id`, `time`, `token`, `display`, `url`, `die`, `updated`) VALUES (NULL, '".time()."', '".$_tool->parseDBString($fileArr['token'])."', '".$_tool->parseDBString($fileArr['display'])."', '".$_tool->parseDBString($fileArr['url'])."', '".$_tool->parseDBString($fileArr['die'])."', '".time()."');";
					$addFileQuery = mysqli_query($this->db, $addFileRequest);
					if (!$addFileQuery) {
						return array("return" => false, "reason" => "error#image:other>add>existsfile>failinsertquery");
					}else {
						return array("return" => true, "exists" => false);
					}
				}else {
					return array("return" => false, "reason" => "error#image:other>add>existsfile>true");
				}
			}else if (isset($existsFileAction, $existsFileAction['return'], $existsFileAction['reason']) && $existsFileAction['return'] == false) {
				return array("return" => false, "reason" => "error#image:other>add>existsfile>".$existsFileAction['reason']);
			}else {
				return array("return" => false, "reason" => "error#image:other>add>existsfile>_");
			}
		}else if (in_array($action, ["get"])) {
			$label = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$value = isset($object['value']) && is_string($object['value']) ? $object['value'] : null;
			if ($label == null) {
				return array("return" => false, "reason" => "error#image:other>get>labelnull");
			}else if (!in_array($label, ["id", "token", "display", "url"])) {
				return array("return" => false, "reason" => "error#image:other>get>labelnotexists");
			}else if ($value == null) {
				return array("return" => false, "reason" => "error#image:other>get>valuenull");
			}
			$getFileRequest = "SELECT `display`, `url`, `die` FROM `image_other` WHERE `".$label."` = '".$_tool->parseDBString($value)."' LIMIT 1;";
			$getFileQuery = mysqli_query($this->db, $getFileRequest);
			if (!$getFileQuery) {
				return array("return" => false, "reason" => "error#image:other>get>failgetquery");
			}else {
				if (mysqli_num_rows($getFileQuery) == 0) {
					return array("return" => true, "data" => array(), "exists" => false);
				}else {
					$thisFileFetch = mysqli_fetch_assoc($getFileQuery);
					$dataArr = array(
						"display" => $thisFileFetch['display'],
						"url" => $thisFileFetch['url'],
						"die" => $thisFileFetch['die']
					);
					return array("return" => true, "data" => $dataArr, "exists" => true);
				}
			}
		}else if (in_array($action, ["update"])) {
			$label = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$value = isset($object['value']) && is_string($object['value']) ? $object['value'] : null;
			$die = isset($object['die']) && is_bool($object['die']) ? $object['die'] : false;
			if ($label == null) {
				return array("return" => false, "reason" => "error#image:other>update>labelnull");
			}else if ($value == null) {
				return array("return" => false, "reason" => "error#image:other>update>valuenull");
			}
			$existsFileAction = $this->other(array("action" => "exists", "label" => $label, "value" => $value));
			if (isset($existsFileAction, $existsFileAction['return'], $existsFileAction['exists']) && $existsFileAction['return'] == true) {
				if (!$existsFileAction['exists']) {
					return array("return" => true, "exists" => false);
				}else {
					$updateFileRequest = "UPDATE `image_other` SET `updated` = '".time()."', `die` = '".($die == true ? 1 : 0)."' WHERE `".$_tool->parseDBString($label)."` = '".$_tool->parseDBString($value)."' ;";
					$updateFileQuery = mysqli_query($this->db, $updateFileRequest);
					if (!$updateFileQuery) {
						return array("return" => false, "reason" => "error#image:other>update>existsfileaction>updatefile>failupdatequery");
					}else {
						return array("return" => true, "exists" => true);
					}
				}
			}else if (isset($existsFileAction, $existsFileAction['return'], $existsFileAction['reason']) && $existsFileAction['return'] == false) {
				return array("return" => false, "reason" => "error#image:other>update>existsfileaction>".$existsFileAction['reason']);
			}else {
				return array("return" => false, "reason" => "error#image:other>update>existsfileaction>_");
			}
		}else if (in_array($action, ["exists"])) {
			$label = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$value = isset($object['value']) && is_string($object['value']) ? $object['value'] : null;
			if ($label == null) {
				return array("return" => false, "reason" => "error#image:other>exists>labelnull");
			}else if ($value == null) {
				return array("return" => false, "reason" => "error#image:other>exists>valuenull");
			}
			$existsFileRequest = "SELECT `id` FROM `image_other` WHERE `".$_tool->parseDBString($label)."` = '".$_tool->parseDBString($value)."' LIMIT 1;";
			$existsFileQuery = mysqli_query($this->db, $existsFileRequest);
			if (!$existsFileQuery) {
				return array("return" => false, "reason" => "error#image:other>exists>failexistsquery");
			}else {
				if (mysqli_num_rows($existsFileQuery) == 0) {
					return array("return" => true, "exists" => false);
				}else {
					return array("return" => true, "exists" => true);
				}
			}
		}else {
			return array("return" => false, "reason" => "error#image:other>_");
		}
	}
	function hash ($object = array()) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		//.
		$type = isset($object, $object['type']) && is_string($object['type']) ? $object['type'] : null;
		if (in_array($type, ["analyze", "analytical"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 16;
			$tech = isset($object, $object['tech']) && is_array($object['tech']) ? $object['tech'] : ["difference", "perceptual", "average", "profile"];
			if ($resource == null) {
				return array("return" => false, "reason" => "error#image:hash>analytical>resourcenull");
			}else if ($tech == null) {
				return array("return" => false, "reason" => "error#image:hash>analytical>technull");
			}else if ($size == null) {
				return array("return" => false, "reason" => "error#image:hash>analytical>sizenull");
			}else if ($size % 8 !== 0) {
				return array("return" => false, "reason" => "error#image:hash>analytical>sizeinvaild");
			}
			if (!file_exists($resource)) {
				return array("return" => false, "reason" => "error#image:hash>analytical>resourcenotexists");
			}
			$dataArr = array();
			foreach ($tech as $typeHash) {
				if (!in_array($typeHash, ["difference", "perceptual", "average", "profile"])) {
					continue;
				}
				$fileHashAction = $this->hash(array("type" => $typeHash, "file" => $resource, "size" => $size));
				if (isset($fileHashAction, $fileHashAction['return'], $fileHashAction['hash']) && $fileHashAction['return'] == true) {
				    $dataArr[$typeHash] = array("hash" => $fileHashAction['hash']);
				    if (isset($fileHashAction['timelogs'])) {
				    	$dataArr[$typeHash]['timelogs'] = $fileHashAction['timelogs'];
				    }
				}else {
					return array("return" => false, "reason" => "error#image:hash>analytical>".$fileHashAction['reason']);
				}
			}
			return array("return" => true, "data" => $dataArr);
		}else if (in_array($type, ["compare"])) {
			$fileA = isset($object, $object['file'], $object['file'][0]) ? $object['file'][0] : null;
			$fileB = isset($object, $object['file'], $object['file'][1]) ? $object['file'][1] : null;
			$tech = isset($object, $object['tech']) && is_array($object['tech']) ? $object['tech'] : ["difference", "perceptual", "average", "profile"];
			if ($fileA == null) {
				return array("return" => false, "reason" => "error#image:hash>compare>fileAnull");
			}else if($fileB == null) {
				return array("return" => false, "reason" => "error#image:hash>compare>fileBnull");
			}else if (!file_exists($fileA)) {
				return array("return" => false, "reason" => "error#image:hash>compare>fileAnotexists");
			}else if (!file_exists($fileB)) {
				return array("return" => false, "reason" => "error#image:hash>compare>fileBnotexists");
			}else if ($fileA == $fileB) {
				return array("return" => false, "reason" => "error#image:hash>compare>fileA=fileB");
			}
			$analyticalFileA = $analyticalFileB = false;
			$valueAllow = array("difference" => 70.00, "perceptual" => 85.00, "average" => 75.00, "profile" => 75.00);
			$analyticalHashAAction = $this->hash(array("type" => "analyze", "file" => $fileA, "tech" => $tech));
			if (isset($analyticalHashAAction, $analyticalHashAAction['return'], $analyticalHashAAction['data']) && $analyticalHashAAction['return']) {
				$analyticalFileA = true;
			}else if (isset($analyticalHashAAction, $analyticalHashAAction['return'], $analyticalHashAAction['reason']) && !$analyticalHashAAction['return']) {
				return array("return" => false, "reason" => "error#image:hash>compare>hashA>".$analyticalHashAAction['reason']);
			}else {
				return array("return" => false, "reason" => "error#image:hash>compare>hashA>_");
			}
			$analyticalHashBAction = $this->hash(array("type" => "analyze", "file" => $fileB, "tech" => $tech));
			if (isset($analyticalHashBAction, $analyticalHashBAction['return'], $analyticalHashBAction['data']) && $analyticalHashBAction['return']) {
				$analyticalFileB = true;
			}else if (isset($analyticalHashBAction, $analyticalHashBAction['return'], $analyticalHashBAction['reason']) && !$analyticalHashBAction['return']) {
				return array("return" => false, "reason" => "error#image:hash>compare>hashB>".$analyticalHashBAction['reason']);
			}else {
				return array("return" => false, "reason" => "error#image:hash>compare>hashB>_");
			}
			if ($analyticalFileA && $analyticalFileB) {
				$dataArr = array();
				$dataArr['similar'] = null;
				$dataArr['result'] = array();
				$haveSimilar = $notSimilar = 0;
				foreach ($analyticalHashAAction['data'] as $typeHash => $valueHash) {
					if (!isset($analyticalHashAAction['data'][$typeHash]['hash']) || !isset($analyticalHashBAction['data'][$typeHash]['hash'])) {
						if (isset($analyticalHashAAction['data'][$typeHash])) {
							unset($analyticalHashAAction['data'][$typeHash]);
						}
						if (isset($analyticalHashBAction['data'][$typeHash])) {
							unset($analyticalHashBAction['data'][$typeHash]);
						}
						continue;
					}
					if (isset($analyticalHashAAction['data'][$typeHash]['hash'], $analyticalHashAAction['data'][$typeHash]['hash']) && in_array($typeHash, $tech)) {
						if (in_array($typeHash, ["profile"])) {
							$resultValue = 0;
							$profileA = explode("|", $analyticalHashAAction['data'][$typeHash]['hash']);
							$profileB = explode("|", $analyticalHashBAction['data'][$typeHash]['hash']);
							$rgbDistance = intval($profileA[0] - $profileB[0]);
							$wrongCount = 0;
							foreach ($profileA as $key => $rgbA) {
								$rgbB = $profileB[$key];
								if (isset($rgbA, $rgbB)) {
									if ($rgbA - $rgbB <= $rgbDistance && abs($rgbDistance) >= 8) {
										$wrongCount++;
									}else {
										continue;
									}
								}else {
									$wrongCount++;
								}
							}
							$resultValue = number_format(100 - ($wrongCount / count($profileA) * 100), 2);
						}else {
							$resultValue = $_tool->parseHammingDistance(strval($analyticalHashAAction['data'][$typeHash]['hash']), strval($analyticalHashBAction['data'][$typeHash]['hash']));
						}
						$resultConfirm = $resultValue >= $valueAllow[$typeHash] ? true : false;
						$dataArr['result'][$typeHash] = array(
							"value" => $resultValue,
							"similar" => $resultConfirm
						);
						if ($resultConfirm == true) {
							$haveSimilar++;
						}else {
							$notSimilar++;
						}
					}
				}
				if (count($dataArr['result']) == 0) {
					return array("return" => false, "reason" => "error#image:hash>compare>resultnull");
				}
				if ($haveSimilar == $notSimilar && count($dataArr['result']) == count($valueAllow)) {
					if (isset($dataArr['result']['profile'], $dataArr['result']['profile']['similar']) && $dataArr['result']['profile']['similar'] == true) {
						$haveSimilar++;
					}
					if (isset($dataArr['result']['difference'], $dataArr['result']['difference']['similar']) && $dataArr['result']['difference']['similar'] == true) {
						$haveSimilar++;
					}
				}
				$dataArr['similar'] = $haveSimilar > $notSimilar ? true : false;
				$dataArr['hash'] = array();
				$dataArr['hash'][$fileA] = $analyticalHashAAction['data'];
				$dataArr['hash'][$fileB] = $analyticalHashBAction['data'];
				return array("return" => true, "data" => $dataArr);
			}
		}else if (in_array($type, ["average"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 8;
			if ($resource == null) {
				return array("return" => false, "reason" => "error#image:hash>average>resourcenull");
			}else if ($size == null) {
				return array("return" => false, "reason" => "error#image:hash>average>sizenull");
			}else if (!file_exists($resource)) {
				return array("return" => false, "reason" => "error#image:hash>average>resourcenotexists");
			}
			$timelogs = array("total" => 0, "begin" => 0, "end" => 0);
			$timelogs['begin'] = microtime(true);
			$file = $resource.'_'.hash('md5', time().'::'.rand().'::'.rand().'::'.rand()).'.png';
			$resourcePerms = substr(sprintf('%o', fileperms($resource)), -4);
			chmod($resource, 0775);
			//. $fileConvertAction = $_tool->execute("convert ".$resource." -strip -blur 10x10 -colorspace Gray -contrast-stretch 10% -threshold 10% -resize ".($size * 1)."x".($size * 1)."! ".$file." ");
			$fileConvertAction = $_tool->execute("convert ".$resource." -strip -level 50,100% -blur 10x10 -colorspace Gray -contrast-stretch 5% -resize ".($size * 1 + 0)."x".($size * 1 + 0)."! ".$file." ");
			if (!file_exists($file))  {
				return array("return" => false, "reason" => "error#image:hash>average>filenotexists");
			}
			if (isset($fileConvertAction, $fileConvertAction['return']) && $fileConvertAction['return'] == true) {
				$fileResource = imagecreatefromstring(file_get_contents($file));
				chmod($resource, $resourcePerms);
			    $resized = imagecreatetruecolor($size, $size);
		        imagecopyresampled($resized, $fileResource, 0, 0, 0, 0, $size, $size, imagesx($fileResource), imagesy($fileResource));
		        imagedestroy($fileResource);
		        $pixels = $mediate = [];
		        for ($y = 0; $y < $size; $y++) {
		            for ($x = 0; $x < $size; $x++) {
		                $rgb = imagecolorsforindex($resized, imagecolorat($resized, $x, $y));
		                $pixels[] = $pixel = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
		                if (($x * $y) % 8 === 0) {
		                	$mediate[] = $pixel;
		                }
		            }
		        }
		        imagedestroy($resized);
		        $average = floor(((array_sum($pixels) / count($pixels) * 2) + (array_sum($mediate) / count($mediate) * 8)) / 10);
		        $hash = null;
		        foreach ($pixels as $pixel) {
		            $hash .= ($pixel > $average) ? 1 : 0;
		        }
			    if (file_exists($file))  {
					unlink($file);
				}
				//. $hash = strval($hash);
				$timelogs['end'] = microtime(true);
				$timelogs['total'] = number_format($timelogs['end'] - $timelogs['begin'], 4);
			    return array("return" => true, "hash" => $hash, "timelogs" => $timelogs);
			}else {
				chmod($resource, $resourcePerms);
				if (file_exists($file))  {
					unlink($file);
				}
				unset($timelogs);
				return array("return" => false, "reason" => "error#image:hash>average>failfileconvert");
			}
		}else if (in_array($type, ["perceptual"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 8;
			if ($resource == null) {
				return array("return" => false, "reason" => "error#image:hash>perceptual>resourcenull");
			}else if ($size == null) {
				return array("return" => false, "reason" => "error#image:hash>perceptual>sizenull");
			}else if (!file_exists($resource)) {
				return array("return" => false, "reason" => "error#image:hash>perceptual>resourcenotexists");
			}
			$timelogs = array("total" => 0, "begin" => 0, "end" => 0);
			$timelogs['begin'] = microtime(true);
			$file = $resource.'_'.hash('md5', time().'::'.rand().'::'.rand().'::'.rand()).'.png';
			$resourcePerms = substr(sprintf('%o', fileperms($resource)), -4);
			chmod($resource, 0775);
			//. $fileConvertAction = $_tool->execute("convert ".$resource." -strip -level 20,40% -blur 10x10 -colorspace Gray -contrast-stretch 10% -resize ".($size * 10)."x".($size * 10)." ".$file." ");
			//. $fileConvertAction = $_tool->execute("convert ".$resource." -strip -level 30,60% -blur 15x15 -colorspace Gray -contrast-stretch 15% -threshold 15% -resize ".($size * 1)."x".($size * 1)."! ".$file." ");
			$fileConvertAction = $_tool->execute("convert ".$resource." -strip -level 20,40% -blur 10x10 -colorspace Gray -contrast-stretch 5% -resize ".($size * 1 + 0)."x".($size * 1 + 0)."! ".$file." ");
			if (!file_exists($file))  {
				return array("return" => false, "reason" => "error#image:hash>perceptual>filenotexists");
			}
			if (isset($fileConvertAction, $fileConvertAction['return']) && $fileConvertAction['return'] == true) {
				$fileResource = imagecreatefromstring(file_get_contents($file));
				chmod($resource, $resourcePerms);
				$size = $size * $size;
			    $resized = imagecreatetruecolor($size, $size);
		        imagecopyresampled($resized, $fileResource, 0, 0, 0, 0, $size, $size, imagesx($fileResource), imagesy($fileResource));
		        imagedestroy($fileResource);
		        $matrix = []; $row = []; $rows = []; $col = []; $cols = [];
		        for ($y = 0; $y < sqrt($size); $y++) {
		            for ($x = 0; $x < sqrt($size); $x++) {
		                $rgb = imagecolorsforindex($resized, imagecolorat($resized, $x, $y));
		                $row[$x] = floor(($rgb['red'] * 0.299) + ($rgb['green'] * 0.587) + ($rgb['blue'] * 0.114));
		            }
		            $dctPixelsAction = $this->hash(array("type" => "dct", "pixels" => $row));
		            if (isset($dctPixelsAction, $dctPixelsAction['return'], $dctPixelsAction['transformed']) && $dctPixelsAction['return'] == true) {
		                $rows[$y] = $dctPixelsAction['transformed'];
		            }else {
		                 return array("return" => false, "reason" => "error#image:hash>perceptual>dctpixelsaction>_");
		            }
		        }
		        imagedestroy($resized);
		        for ($x = 0; $x < sqrt($size); $x++) {
		            for ($y = 0; $y < sqrt($size); $y++) {
		                $col[$y] = $rows[$y][$x];
		            }
		            $dctPixelsAction = $this->hash(array("type" => "dct", "pixels" => $col));
		            if (isset($dctPixelsAction, $dctPixelsAction['return'], $dctPixelsAction['transformed']) && $dctPixelsAction['return'] == true) {
		                $matrix[$x] = $dctPixelsAction['transformed'];
		            }else {
		                return array("return" => false, "reason" => "error#image:hash>perceptual>dctpixelsaction>_");
		            }
		        }
		        $pixels = [];
		        for ($y = 0; $y < sqrt($size); $y++) {
		            for ($x = 0; $x < sqrt($size); $x++) {
		                $pixels[] = $matrix[$y][$x];
		            }
		        }
		        $medianPixelsAction = $this->hash(array("type" => "median", "pixels" => $pixels));
		        if (isset($medianPixelsAction, $medianPixelsAction['return'], $medianPixelsAction['median']) && $medianPixelsAction['return'] == true) {
		            $median = $medianPixelsAction['median'];
		        }else {
		            return array("return" => false, "reason" => "error#image:hash>perceptual>medianpixelsaction>_");
		        }
		        $hash = null;
		        foreach ($pixels as $pixel) {
		            $hash .= $pixel > $median ? 1 : 0;
		        }
			    if (file_exists($file))  {
					unlink($file);
				}
				//. $hash = strval($hash);
				$timelogs['end'] = microtime(true);
				$timelogs['total'] = number_format($timelogs['end'] - $timelogs['begin'], 4);
			    return array("return" => true, "hash" => $hash, "timelogs" => $timelogs);
			}else {
				chmod($resource, $resourcePerms);
				if (file_exists($file))  {
					unlink($file);
				}
				unset($timelogs);
				return array("return" => false, "reason" => "error#image:hash>perceptual>failfileconvert");
			}
		}else if (in_array($type, ["difference"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 8;
			if ($resource == null) {
				return array("return" => false, "reason" => "error#image:hash>difference>resourcenull");
			}else if ($size == null) {
				return array("return" => false, "reason" => "error#image:hash>difference>sizenull");
			}else if (!file_exists($resource)) {
				return array("return" => false, "reason" => "error#image:hash>difference>resourcenotexists");
			}
			$timelogs = array("total" => 0, "begin" => 0, "end" => 0);
			$timelogs['begin'] = microtime(true);
			$file = $resource.'_'.hash('md5', time().'::'.rand().'::'.rand().'::'.rand()).'.png';
			$resourcePerms = substr(sprintf('%o', fileperms($resource)), -4);
			chmod($resource, 0775);
			//. $fileConvert = $_tool->execute("convert ".$resource." -strip -level 20,40% -blur 20x20 -colorspace Gray -contrast-stretch 10% -threshold 20% -resize ".$size."x".$size." ".$file." ");
			//. $fileConvert = $_tool->execute("convert ".$resource." -strip -blur 20x20 -colorspace Gray -contrast-stretch 20% -threshold 10% -resize ".$size."x".$size."! ".$file." ");
			$fileConvertAction = $_tool->execute("convert ".$resource." -strip -level 30,60% -blur 10x10 -colorspace Gray -contrast-stretch 5% -resize ".($size * 1 + 0)."x".($size * 1 + 0)."! ".$file." ");
			if (!file_exists($file))  {
				return array("return" => false, "reason" => "error#image:hash>difference>filenotexists");
			}
			if (isset($fileConvertAction, $fileConvertAction['return']) && $fileConvertAction['return'] == true) {
				$fileResource = imagecreatefromstring(file_get_contents($file));
				chmod($resource, $resourcePerms);
				$width = $size;
				$heigth = $size;
			    $resized = imagecreatetruecolor($width, $heigth);
			    imagecopyresampled($resized, $fileResource, 0, 0, 0, 0, $width, $heigth, imagesx($fileResource), imagesy($fileResource));
			    imagedestroy($fileResource);
			    $hash = null;
			    for ($y = 0; $y < $heigth; $y++) {
			        $rgb = imagecolorsforindex($resized, imagecolorat($resized, 0, $y));
			        $left = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
			        for ($x = 0; $x < $width; $x++) {
			            $rgb = imagecolorsforindex($resized, imagecolorat($resized, $x, $y));
			            $right = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
			            $hash .= $left > $right ? 1 : 0;
			            $left = $right;
			        }
			    }
			    imagedestroy($resized);
			    if (file_exists($file))  {
					unlink($file);
				}
				//. $hash = strval($hash);
				$timelogs['end'] = microtime(true);
				$timelogs['total'] = number_format($timelogs['end'] - $timelogs['begin'], 4);
			    return array("return" => true, "hash" => $hash, "timelogs" => $timelogs);
			}else {
				chmod($resource, $resourcePerms);
				if (file_exists($file))  {
					unlink($file);
				}
				unset($timelogs);
				return array("return" => false, "reason" => "error#image:hash>difference>failfileconvert");
			}
		}else if (in_array($type, ["profile"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 8;
			if ($resource == null) {
				return array("return" => false, "reason" => "error#image:hash>profile>resourcenull");
			}else if ($size == null) {
				return array("return" => false, "reason" => "error#image:hash>profile>sizenull");
			}else if (!file_exists($resource)) {
				return array("return" => false, "reason" => "error#image:hash>profile>resourcenotexists");
			}
			$timelogs = array("total" => 0, "begin" => 0, "end" => 0);
			$timelogs['begin'] = microtime(true);
			$file = $resource.'_'.hash('md5', time().'::'.rand().'::'.rand().'::'.rand()).'.png';
			$resourcePerms = substr(sprintf('%o', fileperms($resource)), -4);
			chmod($resource, 0775);
			//. $fileConvert = $_tool->execute("convert ".$resource." -strip -blur 10x10 -colorspace Gray -contrast-stretch 10% -threshold 10% -resize ".($size * 1)."x".($size * 1)."! ".$file." ");
			$fileConvert = $_tool->execute("convert ".$resource." -strip -level 50,100% -blur 10x10 -colorspace Gray -contrast-stretch 5% -resize ".($size * 1 + 0)."x".($size * 1 + 0)."! ".$file." ");
			if (!file_exists($file))  {
				return array("return" => false, "reason" => "error#image:hash>profile>filenotexists");
			}
			if (isset($fileConvert, $fileConvert['return']) && $fileConvert['return'] == true) {
				$fileResource = imagecreatefromstring(file_get_contents($file));
				chmod($resource, $resourcePerms);
			    $resized = imagecreatetruecolor($size, $size);
		        imagecopyresampled($resized, $fileResource, 0, 0, 0, 0, $size, $size, imagesx($fileResource), imagesy($fileResource));
		        imagedestroy($fileResource);
		        $pixels = $mediate = [];
		        for ($y = 0; $y < $size; $y++) {
		            for ($x = 0; $x < $size; $x++) {
		                $rgb = imagecolorsforindex($resized, imagecolorat($resized, $x, $y));
		                $pixels[] = $pixel = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
		                if (($x * $y) % 8 === 0) {
		                	$mediate[] = $pixel;
		                }
		            }
		        }
		        imagedestroy($resized);
		        $hash = floor(((array_sum($pixels) / count($pixels) * 2) + (array_sum($mediate) / count($mediate) * 8)) / 10);
		        foreach ($pixels as $pixel) {
		            $hash .= '|'.$pixel;
		        }
			    if (file_exists($file))  {
					unlink($file);
				}
				//. $hash = strval($hash);
				$timelogs['end'] = microtime(true);
				$timelogs['total'] = number_format($timelogs['end'] - $timelogs['begin'], 4);
			    return array("return" => true, "hash" => $hash, "timelogs" => $timelogs);
			}else {
				chmod($resource, $resourcePerms);
				if (file_exists($file))  {
					unlink($file);
				}
				unset($timelogs);
				return array("return" => false, "reason" => "error#image:hash>profile>failfileconvert");
			}
		}else if (in_array($type, ["dct"])) {
			$pixels = isset($object, $object['pixels']) && is_array($object['pixels']) ? $object['pixels'] : null;
			if ($pixels == null) {
				return array("return" => false, "reason" => "error#image:hash>dct>pixelnull");
			}
			$transformed = [];
		    $size = count($pixels);
		    for ($i = 0; $i < $size; $i++) {
		        $sum = 0;
		        for ($j = 0; $j < $size; $j++) {
		            $sum += $pixels[$j] * cos($i * pi() * ($j + 0.5) / ($size));
		        }
		        $sum *= sqrt(2 / $size);
		        if ($i == 0) {
		            $sum *= 1 / sqrt(2);
		        }
		        $transformed[$i] = $sum;
		    }
		    return array("return" => true, "transformed" => $transformed);
		}else if (in_array($type, ["median"])) {
			$pixels = isset($object, $object['pixels']) && is_array($object['pixels']) ? $object['pixels'] : null;
			if ($pixels == null) {
				return array("return" => false, "reason" => "error#image:hash>median>pixelnull");
			}
			sort($pixels, SORT_NUMERIC);
		    $middle = floor(count($pixels) / 2);
		    if (count($pixels) % 2) {
		        $median = $pixels[$middle];
		    }else {
		        $low = $pixels[$middle];
		        $high = $pixels[$middle + 1];
		        $median = ($low + $high) / 2;
		    }
		    return array("return" => true, "median" => $median);
		}else {
			return array("return" => false, "reason" => "error#image:hash>typenotexists");
		}
	}
	function session ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		$_tool = $this->class['_tool'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? strtolower($object['action']) : null;
		if (in_array($action, ["add", "create"])) {
		}else {
			return array("return" => false, "reason" => "error#image:setup>actionotnexists");
		}
	}
	function raw ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? strtolower($object['action']) : null;
		if (in_array($action, ["get"])) {
			$label = isset($object['label']) && is_string($object['label']) ? $_tool->parseDBString($object['label']) : null;
			$value = isset($object['value']) && is_string($object['value']) ? $_tool->parseDBString($object['value']) : null;
			if ($label == null) {
				return array("return" => false, "reason" => "error#image:raw>get>labelnull");
			}else if ($value == null) {
				return array("return" => false, "reason" => "error#image:raw>get>valuenull");
			}
			$getImageRawRequest = "SELECT * FROM `image_raw` WHERE `".$_tool->parseDBString($label)."` = '".$_tool->parseDBString($value)."' ;";
			$getImageRawQuery = mysqli_query($this->db, $getImageRawRequest);
			if (!$getImageRawQuery) {
				return array("return" => false, "reason" => "error#image:raw>get>failgetquery");
			}else {
				$dataArr = array();
				while ($fileImageRawFetch = mysqli_fetch_assoc($getImageRawQuery)) {
					$storageFileAction = $_storage->file(array(
						"format" => "image",
						"label" => "display",
						"value" => $fileImageRawFetch['path']
					));
					if (isset($storageFileAction, $storageFileAction['return'], $storageFileAction['exists'], $storageFileAction['data']) && $storageFileAction['return'] && $storageFileAction['exists']) {
						$fileImageRawFetch['source'] = $storageFileAction['data'][0]['source'];
						$fileImageRawFetch['mime'] = $storageFileAction['data'][0]['mime'];
						$fileImageRawFetch['ext'] = $storageFileAction['data'][0]['ext'];
						$fileImageRawFetch['nameraw'] = $storageFileAction['data'][0]['nameraw'];
					}
					$dataArr[] = $fileImageRawFetch;
				}
				$countArr = count($dataArr);
				$dataExists = $countArr > 0 ? true : false;
				return array("return" => true, "exists" => $dataExists, "count" => $countArr, "data" => $dataArr);
			}
		}else {
			return array("return" => false, "reason" => "error#image:raw>actionnull");
		}
	}
	function stream ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_scrapbook = $this->class['_scrapbook'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if (in_array($action, ["get"])) {
			$userMode = isset($object['user'], $object['user']['mode'], $object['user']['mode']['id'], $object['user']['mode']['type']) ? $object['user']['mode'] : null;
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$streamFilter = isset($object['filter']) && is_array($object['filter']) ? $object['filter'] : array();
			$streamOrder = isset($object['order']) && is_string($object['order']) && in_array(strtolower($object['order']), ['time', 'id', 'activity']) ? strtolower($object['order']) : null;
			$streamSort = isset($object['sort']) && is_string($object['sort']) && in_array(strtolower($object['sort']), ['new', 'old']) ? strtolower($object['sort']) : null;
			$getStreamRequestObject = array();
			if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:stream>useridnull");
			}else if (!isset($userMode['type'], $userMode['id'])) {
				return array("return" => false, "reason" => "error#image:stream>usermodenull");
			}
			if (isset($streamFilter['id'])) {
				if (is_array($streamFilter['id']) && isset($streamFilter['id'][0])) {
					foreach ($streamFilter['id'] as $filterIdLabel => $filterIdValue) {
						if (!preg_match("/^([0-9]+)$/", $filterIdValue)) {
							unset($streamFilter['id'][$filterIdLabel]);
							continue;
						}
						$streamFilter['id'][$filterIdLabel] = $_tool->parseDBString(intval($filterIdValue));
					}
					$getStreamRequestObject['id'] = "(`image_id`.`id` IN ('".implode($streamFilter['id'], "', '")."'))";
				}else {
					//.
				}
			}
			if (isset($streamFilter['display'])) {
				if (is_array($streamFilter['display']) && isset($streamFilter['display'][0])) {
					foreach ($streamFilter['display'] as $filterDisplayLabel => $filterDisplayValue) {
						if (!preg_match("/^([a-zA-Z0-9]{32})$/", $filterDisplayValue)) {
							unset($streamFilter['display'][$filterDisplayLabel]);
							continue;
						}
						$streamFilter['display'][$filterDisplayLabel] = $_tool->parseDBString($filterDisplayValue);
					}
					$getStreamRequestObject['display'] = "(`image_id`.`display` IN ('".implode($streamFilter['display'], "', '")."'))";
				}else {
					//.
				}
			}
			if (isset($streamFilter['tag'])) {
				if (is_array($streamFilter['tag'], $streamFilter['tag'][0])) {
					$getStreamRequestObject['tag'] = null;
					foreach ($streamFilter['tag'] as $filterTagLabel => $filterTagValue) {
						if (!is_string($filterDisplayValue) || !is_numeric($filterDisplayValue) || $filterDisplayValue == null) {
							unset($streamFilter['tag'][$filterTagLabel]);
							continue;
						}
						$getStreamRequestObject['tag'] = $getStreamRequestObject['tag'] == null ? "`image_id`.`tag` LIKE '".$_tool->parseDBString($filterTagValue)."'" : $getStreamRequestObject['tag']." OR `image_id`.`tag` LIKE '".$_tool->parseDBString($filterTagValue)."'";
					}
					if ($getStreamRequestObject['tag'] == null) {
						unset($getStreamRequestObject['tag']);
					}else {
						$getStreamRequestObject['tag'] = "(".$getStreamRequestObject['tag'].")";
					}
				}else {
					//.
				}
			}
			if (isset($streamFilter['mime'])) {
				if (is_array($streamFilter['mime'], $streamFilter['mime'][0])) {
					foreach ($streamFilter['mime'] as $filterMimeLabel => $filterMimeValue) {
						if (!preg_match("/^(image\/(jpeg|jpg|gif|png))$/i", $filterMimeValue)) {
							unset($streamFilter['mime'][$filterMimeLabel]);
							continue;
						}
						$streamFilter['mime'][] = $_tool->parseDBString(strtolower($filterMimeValue));
					}
					$getStreamRequestObject['mime'] = "(`image_id`.`mime` IN ('".implode($streamFilter['mime'], "', '")."'))";
				}else {
					//.
				}
			}
			if (isset($streamFilter['time'])) {
				if (is_array($streamFilter['time'])) {
					$streamFilter['time']['begin'] = isset($streamFilter['time']['begin']) ? $streamFilter['time']['begin'] : (isset($streamFilter['time'][0]) ? $streamFilter['time'][0] : 0);
					$streamFilter['time']['begin'] = isset($streamFilter['time']['begin']) ? intval($streamFilter['time']['begin']) : 0;
					$streamFilter['time']['end'] = isset($streamFilter['time']['end']) ? $streamFilter['time']['end'] : (isset($streamFilter['time'][1]) ? $streamFilter['time'][1] : 0);
					$streamFilter['time']['end'] = isset($streamFilter['time']['end']) ? intval($streamFilter['time']['end']) : 0;
					if ($streamFilter['time']['begin'] > 0 && $streamFilter['time']['end'] > 0) {
						$getStreamRequestObject['time'] = "(`image_id`.`time` BETWEEN ".$_tool->parseDBString($streamFilter['time']['begin'])." AND ".$_tool->parseDBString($streamFilter['time']['end']).")";
					}else if ($streamFilter['time']['begin'] > 0) {
						$getStreamRequestObject['time'] = "(`image_id`.`time` >= ".$_tool->parseDBString($streamFilter['time']['begin']).")";
					}
				}else {
					//.
				}
			}
			if ($userMode['type'] == "user") {
				$getStreamRequestObject['privacy.view'] = "
				(
					(`image_id`.`author.type` = '".$_tool->parseDBString($userMode['type'])."' AND `image_id`.`author.id` = '".$_tool->parseDBString($userMode['id'])."')
					OR
					(`image_id`.`privacy.view` IN ('custom') AND `image_id`.`privacy.view` REGEXP '^([0-9]+)$' AND `image_id`.`privacy.view` IN (SELECT `privacy.id` FROM `privacy_member` WHERE `mode.type` = '".$_tool->parseDBString($userMode['type'])."' AND `mode.id` = '".$_tool->parseDBString($userMode['id'])."'))
					OR 
					(`image_id`.`privacy.view` IN ('friend', 'friends') AND `image_id`.`author.type` = 'user' AND `image_id`.`author.id` IN (SELECT `guy.id` FROM `friend_id` WHERE `user.id` = '".$_tool->parseDBString($userId)."'))
					OR
					(`image_id`.`privacy.view` IN ('allfriend', 'allfriends') AND `image_id`.`author.type` = 'user' AND `image_id`.`author.id` IN (SELECT `guy.id` FROM `friend_id` WHERE `user.id` = '".$_tool->parseDBString($userId)."' OR `user.id` IN (SELECT `guy.id` FROM `friend_id` WHERE `user.id` = '".$_tool->parseDBString($userId)."')))
					OR
					(`image_id`.`privacy.view` IN ('public'))
				)";
				$getStreamRequestObject['blocked'] = "
				(
					((`image_id`.`author.type`, `image_id`.`author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `user_block` WHERE `user.id` = '".$_tool->parseDBString($userId)."'))
					AND
					((`image_id`.`author.type`, `image_id`.`author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `image_block` WHERE `user.id` = '".$_tool->parseDBString($userId)."'))
					AND
					(`image_id`.`id` NOT IN (SELECT `inside.id` FROM `image_hide` WHERE `user.id` = '".$_tool->parseDBString($userId)."' AND `inside.type` = 'id'))
				)
				";
			}
			$getStreamRequestObject['local'] = "(`local` = 'drive')";
			$getStreamRequestObject['removed'] = "(`removed` = '0')";
			$getStreamOrder = null;
			$getStreamRequestRaw = $getStreamRequestOld = "SELECT `id` FROM `image_id` WHERE";
			foreach ($getStreamRequestObject as $filterLabel => $filterValue) {
				$getStreamRequestRaw = $getStreamRequestRaw == $getStreamRequestOld ? ($getStreamRequestRaw.' '.$filterValue) : ($getStreamRequestRaw.' AND '.$filterValue);
			}
			$getStreamRequestRaw = $_tool->parseDBQuery($getStreamRequestRaw).$getStreamOrder;
			$getStreamQuery = mysqli_query($this->db, $getStreamRequestRaw);
			if (!$getStreamQuery) {
				return array("return" => false, "reason" => "error#image:stream>getstreamquery");
			}else {
				$dataArr = array();
				while ($getStreamFetch = mysqli_fetch_assoc($getStreamQuery)) {
					$dataArr[] = $getStreamFetch['id'];
				}
				$countArr = count($dataArr);
				$existsArr = $countArr > 0 ? true : false;
				return array("return" => false, "count" => $countArr, "exists" => $existsArr, "data" => $dataArr, "request" => $getStreamRequestRaw, "object" => $object);
			}
		}else {
			return array("return" => false, "reason" => "error#image:stream>actionnull");
		}
	}
	function stats ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_tool = $this->class['_tool'];
		//.
		$insideArr = isset($object['inside'], $object['inside']['id'], $object['inside']['type']) ? $object['inside'] : null;
		if (!in_array($insideArr['type'], ["id", "comment"])) {
			return array("return" => false, "reason" => "error#image:stats>insidetypeinvaild");
		}else if (!is_numeric($insideArr['id'])) {
			return array("return" => false, "reason" => "error#image:stats>insideidinvaild");
		}
		$dataArr = array();
		$statsFavoriteRequest = "SELECT `id` FROM `image_favorite` WHERE `inside.type` = '".$_tool->parseDBString($insideArr['type'])."' AND `inside.id` = '".$_tool->parseDBString($insideArr['id'])."';";
		$statsFavoriteQuery = mysqli_query($this->db, $statsFavoriteRequest);
		if (!$statsFavoriteQuery) {
			return array("return" => false, "reason" => "error#image:stats>statsfavoritequery");
		}else {
			$countFavoriteArr = mysqli_num_rows($statsFavoriteQuery);
			$dataArr['favorite'] = $countFavoriteArr;
		}
		$statsCommentRequest = "SELECT `id` FROM `image_comment` WHERE `inside.type` = '".$_tool->parseDBString($insideArr['type'])."' AND `inside.id` = '".$_tool->parseDBString($insideArr['id'])."';";
		$statsCommentQuery = mysqli_query($this->db, $statsCommentRequest);
		if (!$statsCommentQuery) {
			return array("return" => false, "reason" => "error#image:stats>statscommentquery");
		}else {
			$countCommentArr = mysqli_num_rows($statsCommentQuery);
			$dataArr['comment'] = $countCommentArr;
		}
		return array("return" => true, "data" => $dataArr);
	}
	function favorite ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_tool = $this->class['_tool'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if (in_array($action, ["add"])) {
			$userMode = isset($object['user']['mode'], $object['user']['mode']['id'], $object['user']['mode']['type']) ? $object['user']['mode'] : null;
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$inside = isset($object['inside'], $object['inside']['id'], $object['inside']['type']) ? $object['inside'] : null;
			if (!isset($userMode, $userMode['type'], $userMode['id'])) {
				return array("return" => false, "reason" => "error#image:favorite>add>modenull");
			}else if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:favorite>add>usernull");
			}else if (!in_array($inside['type'], ["id", "comment"])) {
				return array("return" => false, "reason" => "error#image:favorite>add>insidetypeinvaild");
			}else if (!is_numeric($inside['id'])) {
				return array("return" => false, "reason" => "error#image:favorite>add>insideidinvaild");
			}
			$existsFavoriteRequest = "SELECT `id` FROM `image_favorite` WHERE (`inside.type` = '".$_tool->parseDBString($inside['type'])."' AND `inside.id` = '".$_tool->parseDBString($inside['id'])."') AND (`mode.type` = '".$_tool->parseDBString($userMode['type'])."' AND `mode.id` = '".$_tool->parseDBString($userMode['id'])."') LIMIT 1;";
			$existsFavoriteQuery = mysqli_query($this->db, $existsFavoriteRequest);
			if (!$existsFavoriteQuery) {
				return array("return" => false, "reason" => "error#image:favorite>add>existsfavoritequery");
			}else {
				if (mysqli_num_rows($existsFavoriteQuery) > 0) {
					return array("return" => true, "exists" => true, "added" => false, "value" => true);
				}else {
					$addFavoriteRequest = "INSERT INTO `image_favorite` (`id`, `time`, `user.id`, `mode.type`, `mode.id`, `inside.type`, `inside.id`) VALUES (NULL, '".time()."', '".$userId."', '".$userMode['type']."', '".$userMode['id']."', '".$inside['type']."', '".$inside['id']."');";
					$addFavoriteQuery = mysqli_query($this->db, $addFavoriteRequest);
					if (!$addFavoriteQuery) {
						return array("return" => false, "reason" => "error#image:favorite>add>addfavoritequery");
					}else {
						return array("return" => true, "exists" => false, "added" => true, "value" => true);
					}
				}
			}
		}else if (in_array($action, ["remove"])) {
			$userMode = isset($object['user']['mode'], $object['user']['mode']['id'], $object['user']['mode']['type']) ? $object['user']['mode'] : null;
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$inside = isset($object['inside'], $object['inside']['id'], $object['inside']['type']) ? $object['inside'] : null;
			if (!isset($userMode, $userMode['type'], $userMode['id'])) {
				return array("return" => false, "reason" => "error#image:favorite>remove>modenull");
			}else if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:favorite>remove>usernull");
			}else if (!in_array($inside['type'], ["id", "comment"])) {
				return array("return" => false, "reason" => "error#image:favorite>remove>insidetypeinvaild");
			}else if (!is_numeric($inside['id'])) {
				return array("return" => false, "reason" => "error#image:favorite>remove>insideidinvaild");
			}
			$existsFavoriteRequest = "SELECT `id` FROM `image_favorite` WHERE (`inside.type` = '".$_tool->parseDBString($inside['type'])."' AND `inside.id` = '".$_tool->parseDBString($inside['id'])."') AND (`mode.type` = '".$_tool->parseDBString($userMode['type'])."' AND `mode.id` = '".$_tool->parseDBString($userMode['id'])."') LIMIT 1;";
			$existsFavoriteQuery = mysqli_query($this->db, $existsFavoriteRequest);
			if (!$existsFavoriteQuery) {
				return array("return" => false, "reason" => "error#image:favorite>remove>existsfavoritequery");
			}else {
				if (mysqli_num_rows($existsFavoriteQuery) > 0) {
					$removeFavoriteRequest = "DELETE FROM `image_favorite` WHERE (`inside.type` = '".$_tool->parseDBString($inside['type'])."' AND `inside.id` = '".$_tool->parseDBString($inside['id'])."') AND (`mode.type` = '".$_tool->parseDBString($userMode['type'])."' AND `mode.id` = '".$_tool->parseDBString($userMode['id'])."');";
					$removeFavoriteQuery = mysqli_query($this->db, $removeFavoriteRequest);
					if (!$removeFavoriteQuery) {
						return array("return" => false, "reason" => "error#image:favorite>remove>removefavoritequery");
					}else {
						return array("return" => true, "exists" => true, "removed" => true, "value" => false);
					}
				}else {
					return array("return" => true, "exists" => false, "removed" => false, "value" => false);
				}
			}
		}else if (in_array($action, ["stats"])) {
			$inside = isset($object['inside'], $object['inside']['id'], $object['inside']['type']) ? $object['inside'] : null;
			if (!in_array($inside['type'], ["id", "comment"])) {
				return array("return" => false, "reason" => "error#image:favorite>stats>insidetypeinvaild");
			}else if (!is_numeric($inside['id'])) {
				return array("return" => false, "reason" => "error#image:favorite>stats>insideidinvaild");
			}
			$statsFavoriteRequest = "SELECT `id` FROM `image_favorite` WHERE `inside.type` = '".$_tool->parseDBString($inside['type'])."' AND `inside.id` = '".$_tool->parseDBString($inside['id'])."';";
			$statsFavoriteQuery = mysqli_query($this->db, $statsFavoriteRequest);
			if (!$statsFavoriteQuery) {
				return array("return" => false, "reason" => "error#image:favorite>stats>statsfavoritequery", "sql" => $statsFavoriteRequest);
			}else {
				$countArr = mysqli_num_rows($statsFavoriteQuery);
				$existsArr = $countArr > 0 ? true : false;
				return array("return" => true, "exists" => $existsArr, "count" => $countArr);
			}
		}else if (in_array($action, ["exists"])) {
			$userMode = isset($object['user']['mode'], $object['user']['mode']['id'], $object['user']['mode']['type']) ? $object['user']['mode'] : null;
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$inside = isset($object['inside'], $object['inside']['id'], $object['inside']['type']) ? $object['inside'] : null;
			if (!isset($userMode, $userMode['type'], $userMode['id'])) {
				return array("return" => false, "reason" => "error#image:favorite>exists>modenull");
			}else if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:favorite>exists>usernull");
			}else if (!in_array($inside['type'], ["id", "comment"])) {
				return array("return" => false, "reason" => "error#image:favorite>exists>insidetypeinvaild");
			}else if (!is_numeric($inside['id'])) {
				return array("return" => false, "reason" => "error#image:favorite>exists>insideidinvaild");
			}
			$existsFavoriteRequest = "SELECT `id` FROM `image_favorite` WHERE (`inside.type` = '".$_tool->parseDBString($inside['type'])."' AND `inside.id` = '".$_tool->parseDBString($inside['id'])."') AND (`mode.type` = '".$_tool->parseDBString($userMode['type'])."' AND `mode.id` = '".$_tool->parseDBString($userMode['id'])."') LIMIT 1;";
			$existsFavoriteQuery = mysqli_query($this->db, $existsFavoriteRequest);
			if (!$existsFavoriteQuery) {
				return array("return" => false, "reason" => "error#image:favorite>exists>existsfavoritequery");
			}else {
				$existsArr = mysqli_num_rows($existsFavoriteQuery) > 0 ? true : false;
				return array("return" => true, "exists" => $existsArr);
			}
		}else {
			return array("return" => false, "reason" => "error#image:favorite>actioninvaild");
		}
	}
	function delete ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_tool = $this->class['_tool'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if (in_array($action, ["add"])) {
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$authorArr = isset($object['author'], $object['author']['id'], $object['author']['type']) ? $object['author'] : null;
			$insideArr = isset($object['inside'], $object['inside']['id'], $object['inside']['type']) ? $object['inside'] : null;
			if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:delete>add>useridinvaild");
			}else if (!in_array($authorArr['type'], ["user"])) {
				return array("return" => false, "reason" => "error#image:delete>add>authortypeinvaild");
			}else if (!is_numeric($authorArr['id'])) {
				return array("return" => false, "reason" => "error#image:delete>add>authoridinvaild");
			}else if (!in_array($insideArr['type'], ["id", "comment"])) {
				return array("return" => false, "reason" => "error#image:delete>add>insidetypeinvaild");
			}else if (!is_numeric($insideArr['id'])) {
				return array("return" => false, "reason" => "error#image:delete>add>insideidinvaild");
			}
			if (in_array($insideArr['type'], ["id"])) {
				$existsAllowRequest = "SELECT `id` FROM `image_id` WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' AND `removed` = '0' AND (`user.id` = '".$_tool->parseDBString($userId)."' OR (`author.type` = '".$_tool->parseDBString($authorArr['type'])."' AND `author.id` = '".$_tool->parseDBString($authorArr['id'])."')) LIMIT 1;";
			}else if (in_array($insideArr['type'], ["comment"])) {
				$existsAllowRequest = "SELECT `id` FROM `image_comment` WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' AND `removed` = '0' AND (`user.id` = '".$_tool->parseDBString($userId)."' OR (`author.type` = '".$_tool->parseDBString($authorArr['type'])."' AND `author.id` = '".$_tool->parseDBString($authorArr['id'])."')) LIMIT 1;";
			}
			$existsAllowQuery = mysqli_query($this->db, $_tool->parseDBSQL($existsAllowRequest));
			if (!$existsAllowQuery) {
				return array("return" => false, "reason" => "error#image:delete>add>existsallowquery");
			}else {
				if (mysqli_num_rows($existsAllowQuery) == 0) {
					if (in_array($insideArr['type'], ["id"])) {
						$addedImageIdRequest = "SELECT `id` FROM `image_id` WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' AND `removed` != '0' AND (`user.id` = '".$_tool->parseDBString($userId)."' OR (`author.type` = '".$_tool->parseDBString($authorArr['type'])."' AND `author.id` = '".$_tool->parseDBString($authorArr['id'])."')) LIMIT 1;";
					}else if (in_array($insideArr['type'], ["comment"])) {
						$addedImageIdRequest = "SELECT `id` FROM `image_comment` WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' AND `removed` != '0' AND (`user.id` = '".$_tool->parseDBString($userId)."' OR (`author.type` = '".$_tool->parseDBString($authorArr['type'])."' AND `author.id` = '".$_tool->parseDBString($authorArr['id'])."')) LIMIT 1;";
					}
					$addedImageIdQuery = mysqli_query($this->db, $_tool->parseDBSQL($addedImageIdRequest));
					if (!$addedImageIdQuery) {
						return array("return" => false, "reason" => "error#image:delete>add>addedimageidquery");
					}else {
						if (mysqli_num_rows($addedImageIdQuery) == 0) {
							if (in_array($insideArr['type'], ["id"])) {
								$existsImageIdRequest = "SELECT `id` FROM `image_id` WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' LIMIT 1;";
							}else if (in_array($insideArr['type'], ["comment"])) {
								$existsImageIdRequest = "SELECT `id` FROM `image_comment` WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' LIMIT 1;";
							}
							$existsImageIdQuery = mysqli_query($this->db, $_tool->parseDBSQL($existsImageIdRequest));
							if (!$existsImageIdQuery) {
								return array("return" => false, "reason" => "error#image:delete>add>existsimageidquery");
							}else {
								if (mysqli_num_rows($existsImageIdQuery) == 0) {
									return array("return" => true, "exists" => false, "added" => false, "data" => array("image" => array("exists" => false)));
								}else {
									return array("return" => true, "exists" => false, "added" => false, "data" => array("image" => array("exists" => true)));
								}
							}
						}else {
							return array("return" => true, "exists" => true, "added" => true, "data" => array("image" => array("exists" => true)));
						}
					}
				}else {
					if (in_array($insideArr['type'], ["id"])) {
						$setImageDeleteRequest = "UPDATE `image_id` SET `removed` = '".time()."' WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' AND (`user.id` = '".$_tool->parseDBString($userId)."' OR (`author.type` = '".$_tool->parseDBString($authorArr['type'])."' AND `author.id` = '".$_tool->parseDBString($authorArr['id'])."')) LIMIT 1;";
					}else if (in_array($insideArr['type'], ["comment"])) {
						$setImageDeleteRequest = "UPDATE `image_comment` SET `removed` = '".time()."' WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' AND (`user.id` = '".$_tool->parseDBString($userId)."' OR (`author.type` = '".$_tool->parseDBString($authorArr['type'])."' AND `author.id` = '".$_tool->parseDBString($authorArr['id'])."')) LIMIT 1;";
					}
					$setImageDeleteQuery = mysqli_query($this->db, $setImageDeleteRequest);
					if (!$setImageDeleteQuery) {
						return array("return" => false, "reason" => "error#image:delete>add>setimagedeletequery");
					}else {
						return array("return" => true, "exists" => false, "added" => true, "data" => array("image" => array("exists" => true)));
					}
				}
			}
		}else if (in_array($action, ["remove"])) {
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$authorArr = isset($object['author'], $object['author']['id'], $object['author']['type']) ? $object['author'] : null;
			$insideArr = isset($object['inside'], $object['inside']['id'], $object['inside']['type']) ? $object['inside'] : null;
			if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:delete>remove>useridinvaild");
			}else if (!in_array($authorArr['type'], ["user"])) {
				return array("return" => false, "reason" => "error#image:delete>remove>authortypeinvaild");
			}else if (!is_numeric($authorArr['id'])) {
				return array("return" => false, "reason" => "error#image:delete>remove>authoridinvaild");
			}else if (!in_array($insideArr['type'], ["id", "comment"])) {
				return array("return" => false, "reason" => "error#image:delete>remove>insidetypeinvaild");
			}else if (!is_numeric($insideArr['id'])) {
				return array("return" => false, "reason" => "error#image:delete>remove>insideidinvaild");
			}
			if (in_array($insideArr['type'], ["id"])) {
				$existsAllowRequest = "SELECT `id` FROM `image_id` WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' AND `removed` != '0' AND (`user.id` = '".$_tool->parseDBString($userId)."' OR (`author.type` = '".$_tool->parseDBString($authorArr['type'])."' AND `author.id` = '".$_tool->parseDBString($authorArr['id'])."')) LIMIT 1;";
			}else if (in_array($insideArr['type'], ["comment"])) {
				$existsAllowRequest = "SELECT `id` FROM `image_comment` WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' AND `removed` != '0' AND (`user.id` = '".$_tool->parseDBString($userId)."' OR (`author.type` = '".$_tool->parseDBString($authorArr['type'])."' AND `author.id` = '".$_tool->parseDBString($authorArr['id'])."')) LIMIT 1;";
			}
			$existsAllowQuery = mysqli_query($this->db, $_tool->parseDBSQL($existsAllowRequest));
			if (!$existsAllowQuery) {
				return array("return" => false, "reason" => "error#image:delete>remove>existsallowquery");
			}else {
				if (mysqli_num_rows($existsAllowQuery) == 0) {
					if (in_array($insideArr['type'], ["id"])) {
						$removedImageIdRequest = "SELECT `id` FROM `image_id` WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' AND `removed` = '0' AND (`user.id` = '".$_tool->parseDBString($userId)."' OR (`author.type` = '".$_tool->parseDBString($authorArr['type'])."' AND `author.id` = '".$_tool->parseDBString($authorArr['id'])."')) LIMIT 1;";
					}else if (in_array($insideArr['type'], ["comment"])) {
						$removedImageIdRequest = "SELECT `id` FROM `image_comment` WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' AND `removed` = '0' AND (`user.id` = '".$_tool->parseDBString($userId)."' OR (`author.type` = '".$_tool->parseDBString($authorArr['type'])."' AND `author.id` = '".$_tool->parseDBString($authorArr['id'])."')) LIMIT 1;";
					}
					$removedImageIdQuery = mysqli_query($this->db, $_tool->parseDBSQL($removedImageIdRequest));
					if (!$removedImageIdQuery) {
						return array("return" => false, "reason" => "error#image:delete>remove>removedimageidquery");
					}else {
						if (mysqli_num_rows($removedImageIdQuery) == 0) {
							if (in_array($insideArr['type'], ["id"])) {
								$existsImageIdRequest = "SELECT `id` FROM `image_id` WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' LIMIT 1;";
							}else if (in_array($insideArr['type'], ["comment"])) {
								$existsImageIdRequest = "SELECT `id` FROM `image_comment` WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' LIMIT 1;";
							}
							$existsImageIdQuery = mysqli_query($this->db, $_tool->parseDBSQL($existsImageIdRequest));
							if (!$existsImageIdQuery) {
								return array("return" => false, "reason" => "error#image:delete>remove>existsimageidquery");
							}else {
								if (mysqli_num_rows($existsImageIdQuery) == 0) {
									return array("return" => true, "exists" => false, "removed" => false, "data" => array("image" => array("exists" => false)));
								}else {
									return array("return" => true, "exists" => false, "removed" => false, "data" => array("image" => array("exists" => true)));
								}
							}
						}else {
							return array("return" => true, "exists" => false, "removed" => true, "data" => array("image" => array("exists" => true)));
						}
					}
				}else {
					if (in_array($insideArr['type'], ["id"])) {
						$setImageDeleteRequest = "UPDATE `image_id` SET `removed` = '0' WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' AND (`user.id` = '".$_tool->parseDBString($userId)."' OR (`author.type` = '".$_tool->parseDBString($authorArr['type'])."' AND `author.id` = '".$_tool->parseDBString($authorArr['id'])."')) LIMIT 1;";
					}else if (in_array($insideArr['type'], ["comment"])) {
						$setImageDeleteRequest = "UPDATE `image_comment` SET `removed` = '0' WHERE `id` = '".$_tool->parseDBString($insideArr['id'])."' AND (`user.id` = '".$_tool->parseDBString($userId)."' OR (`author.type` = '".$_tool->parseDBString($authorArr['type'])."' AND `author.id` = '".$_tool->parseDBString($authorArr['id'])."')) LIMIT 1;";
					}
					$setImageDeleteQuery = mysqli_query($this->db, $setImageDeleteRequest);
					if (!$setImageDeleteQuery) {
						return array("return" => false, "reason" => "error#image:delete>remove>setimagedeletequery");
					}else {
						return array("return" => true, "exists" => true, "removed" => true, "data" => array("image" => array("exists" => true)));
					}
				}
			}
		}else if (in_array($action, ["progress"])) {
			//.
		}
	}
	function hide ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_tool = $this->class['_tool'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if (in_array($action, ["add"])) {
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$insideArr = isset($object['inside'], $object['inside']['id'], $object['inside']['type']) ? $object['inside'] : null;
			if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:hide>add>useridinvaild");
			}else if (!in_array($insideArr['type'], ["id", "comment"])) {
				return array("return" => false, "reason" => "error#image:hide>add>insidetypeinvaild");
			}else if (!is_numeric($insideArr['id'])) {
				return array("return" => false, "reason" => "error#image:hide>add>insideidinvaild");
			}
			$existsHideRequest = "SELECT `id` FROM `image_hide` WHERE `user.id` = '".$_tool->parseDBString($userId)."' AND (`inside.type` = '".$_tool->parseDBString($insideArr['type'])."' AND `inside.id` = '".$_tool->parseDBString($insideArr['id'])."') LIMIT 1;";
			$existsHideQuery = mysqli_query($this->db, $_tool->parseDBSQL($existsHideRequest));
			if (!$existsHideQuery) {
				return array("return" => false, "reason" => "error#image:hide>add>existshidequery");
			}else {
				if (mysqli_num_rows($existsHideQuery) > 0) {
					return array("return" => true, "added" => false, "exists" => true);
				}else {
					$addHideRequest = "INSERT INTO `image_hide` (`id`, `time`, `user.id`, `inside.type`, `inside.id`) VALUES (NULL, '".time()."', '".$_tool->parseDBString($userId)."', '".$_tool->parseDBString($insideArr['type'])."', '".$_tool->parseDBString($insideArr['id'])."');";
					$addHideQuery = mysqli_query($this->db, $_tool->parseDBSQL($addHideRequest));
					if (!$addHideQuery) {
						return array("return" => false, "reason" => "error#image:hide>add>addhidequery");
					}else {
						return array("return" => true, "added" => true, "exists" => false);
					}
				}
			}
		}else if (in_array($action, ["remove"])) {
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$insideArr = isset($object['inside'], $object['inside']['id'], $object['inside']['type']) ? $object['inside'] : null;
			if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:hide>remove>useridinvaild");
			}else if (!in_array($insideArr['type'], ["id", "comment"])) {
				return array("return" => false, "reason" => "error#image:hide>remove>insidetypeinvaild");
			}else if (!is_numeric($insideArr['id'])) {
				return array("return" => false, "reason" => "error#image:hide>remove>insideidinvaild");
			}
			$existsHideRequest = "SELECT `id` FROM `image_hide` WHERE `user.id` = '".$_tool->parseDBString($userId)."' AND (`inside.type` = '".$_tool->parseDBString($insideArr['type'])."' AND `inside.id` = '".$_tool->parseDBString($insideArr['id'])."') LIMIT 1;";
			$existsHideQuery = mysqli_query($this->db, $_tool->parseDBSQL($existsHideRequest));
			if (!$existsHideQuery) {
				return array("return" => false, "reason" => "error#image:hide>remove>existshidequery");
			}else {
				if (mysqli_num_rows($existsHideQuery) == 0) {
					return array("return" => true, "removed" => false, "exists" => false);
				}else {
					$removeHideRequest = "DELETE FROM `image_hide` WHERE `user.id` = '".$_tool->parseDBString($userId)."' AND (`inside.type` = '".$_tool->parseDBString($insideArr['type'])."' AND `inside.id` = '".$_tool->parseDBString($insideArr['id'])."');";
					$removeHideQuery = mysqli_query($this->db, $_tool->parseDBSQL($removeHideRequest));
					if (!$removeHideQuery) {
						return array("return" => false, "reason" => "error#image:hide>remove>removehidequery");
					}else {
						return array("return" => true, "removed" => true, "exists" => true);
					}
				}
			}
		}
	}
	function block ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_tool = $this->class['_tool'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if (in_array($action, ["add"])) {
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$guyArr = isset($object['guy'], $object['guy']['id'], $object['guy']['type']) ? $object['guy'] : null;
			if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:block>add>useridinvaild");
			}else if (!in_array($guyArr['type'], ["user"])) {
				return array("return" => false, "reason" => "error#image:block>add>guytypeinvaild");
			}else if (!is_numeric($guyArr['id'])) {
				return array("return" => false, "reason" => "error#image:block>add>guyidinvaild");
			}
			$existsBlockRequest = "SELECT `id` FROM `image_block` WHERE `user.id` = '".$_tool->parseDBString($userId)."' AND (`guy.type` = '".$_tool->parseDBString($guyArr['type'])."' AND `guy.id` = '".$_tool->parseDBString($guyArr['id'])."') LIMIT 1;";
			$existsBlockQuery = mysqli_query($this->db, $_tool->parseDBSQL($existsBlockRequest));
			if (!$existsBlockQuery) {
				return array("return" => false, "reason" => "error#image:block>add>existsblockquery");
			}else {
				if (mysqli_num_rows($existsBlockQuery) > 0) {
					return array("return" => true, "added" => false, "exists" => true);
				}else {
					$addBlockRequest = "INSERT INTO `image_block` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES (NULL, '".time()."', '".$_tool->parseDBString($userId)."', '".$_tool->parseDBString($guyArr['type'])."', '".$_tool->parseDBString($guyArr['id'])."');";
					$addBlockQuery = mysqli_query($this->db, $_tool->parseDBSQL($addBlockRequest));
					if (!$addBlockQuery) {
						return array("return" => false, "reason" => "error#image:block>add>addblockquery");
					}else {
						return array("return" => true, "added" => true, "exists" => false);
					}
				}
			}
		}else if (in_array($action, ["remove"])) {
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$guyArr = isset($object['guy'], $object['guy']['id'], $object['guy']['type']) ? $object['guy'] : null;
			if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:block>remove>useridinvaild");
			}else if (!in_array($guyArr['type'], ["user"])) {
				return array("return" => false, "reason" => "error#image:block>remove>guytypeinvaild");
			}else if (!is_numeric($guyArr['id'])) {
				return array("return" => false, "reason" => "error#image:block>remove>guyidinvaild");
			}
			$existsBlockRequest = "SELECT `id` FROM `image_block` WHERE `user.id` = '".$_tool->parseDBString($userId)."' AND (`guy.type` = '".$_tool->parseDBString($guyArr['type'])."' AND `guy.id` = '".$_tool->parseDBString($guyArr['id'])."') LIMIT 1;";
			$existsBlockQuery = mysqli_query($this->db, $_tool->parseDBSQL($existsBlockRequest));
			if (!$existsBlockQuery) {
				return array("return" => false, "reason" => "error#image:block>remove>existsblockquery");
			}else {
				if (mysqli_num_rows($existsBlockQuery) == 0) {
					return array("return" => true, "removed" => false, "exists" => false);
				}else {
					$removeBlockRequest = "DELETE FROM `image_block` WHERE `user.id` = '".$_tool->parseDBString($userId)."' AND (`guy.type` = '".$_tool->parseDBString($guyArr['type'])."' AND `guy.id` = '".$_tool->parseDBString($guyArr['id'])."');";
					$removeBlockQuery = mysqli_query($this->db, $_tool->parseDBSQL($removeBlockRequest));
					if (!$removeBlockQuery) {
						return array("return" => false, "reason" => "error#image:block>remove>removeblockquery");
					}else {
						return array("return" => true, "removed" => true, "exists" => true);
					}
				}
			}
		}
	}
	function comment ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_tool = $this->class['_tool'];
		$_user = $this->class['_user'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if (in_array($action, ["add"])) {
			$userMode = isset($object['user']['mode'], $object['user']['mode']['id'], $object['user']['mode']['type']) ? $object['user']['mode'] : null;
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$contentText = isset($object['content']) ? $object['content'] : null;
			$insideArr = isset($object['inside'], $object['inside']['id'], $object['inside']['type']) ? $object['inside'] : null;
			if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:comment>add>useridinvaild");
			}else if (!isset($userMode['type']) || !isset($userMode['id'])) {
				return array("return" => false, "reason" => "error#image:comment>add>usermodeinvaild");
			}else if (!in_array($insideArr['type'], ["id", "comment"])) {
				return array("return" => false, "reason" => "error#image:comment>add>insidetypeinvaild");
			}else if (!is_numeric($insideArr['id'])) {
				return array("return" => false, "reason" => "error#image:comment>add>insideidinvaild");
			}else if ($contentText == null) {
				return array("return" => false, "reason" => "error#image:comment>add>contentnull");
			}
			$commentArr['token'] = hash('crc32', $userId.'::'.time().'::'.rand().'_'.rand().'_'.rand());
			$commentArr['display'] = hash('md5', $commentArr['token']);
			$commentArr['content'] = $contentText;
			$addComentRequest = "INSERT INTO `image_comment` (`id`, `token`, `display`, `time`, `date`, `user.id`, `author.type`, `author.id`, `inside.type`, `inside.id`, `content`) VALUES (NULL, '".$commentArr['token']."', '".$commentArr['display']."', '".time()."', '".time()."', '".$_tool->parseDBString($userId)."', '".$_tool->parseDBString($userMode['type'])."', '".$_tool->parseDBString($userMode['id'])."', '".$_tool->parseDBString($insideArr['type'])."', '".$_tool->parseDBString($insideArr['id'])."', '".$_tool->parseDBString($contentText)."');";
			$addComentQuery = mysqli_query($this->db, $_tool->parseDBSQL($addComentRequest));
			if (!$addComentQuery) {
				return array("return" => false, "reason" => "error#image:comment>add>addcomentquery", "sql" => $statsCommentRequest);
			}else {
				$commentArr['id'] = mysqli_insert_id($this->db);
				return array("return" => true, "added" => true, "data" => $commentArr);
			}
		}else if (in_array($action, ["stats"])) {
			$insideArr = isset($object['inside'], $object['inside']['id'], $object['inside']['type']) ? $object['inside'] : null;
			if (!in_array($insideArr['type'], ["id", "comment"])) {
				return array("return" => false, "reason" => "error#image:comment>stats>insidetypeinvaild");
			}else if (!is_numeric($insideArr['id'])) {
				return array("return" => false, "reason" => "error#image:comment>stats>insideidinvaild");
			}
			$statsCommentRequest = "SELECT `id` FROM `image_comment` WHERE `inside.type` = '".$_tool->parseDBString($insideArr['type'])."' AND `inside.id` = '".$_tool->parseDBString($insideArr['id'])."';";
			$statsCommentQuery = mysqli_query($this->db, $_tool->parseDBSQL($statsCommentRequest));
			if (!$statsCommentQuery) {
				return array("return" => false, "reason" => "error#image:comment>stats>statscommentquery", "sql" => $statsCommentRequest);
			}else {
				$countArr = mysqli_num_rows($statsCommentQuery);
				$existsArr = $countArr > 0 ? true : false;
				return array("return" => true, "exists" => $existsArr, "count" => $countArr, "x" => $statsCommentRequest);
			}
		}else if (in_array($action, ["exists"])) {
			$insideArr = isset($object['inside'], $object['inside']['id'], $object['inside']['type']) ? $object['inside'] : null;
			if (!in_array($insideArr['type'], ["id", "comment"])) {
				return array("return" => false, "reason" => "error#image:comment>exists>insidetypeinvaild");
			}else if (!is_numeric($insideArr['id'])) {
				return array("return" => false, "reason" => "error#image:comment>exists>insideidinvaild");
			}
			$existsCommentRequest = "SELECT `id` FROM `image_comment` WHERE (`inside.type` = '".$_tool->parseDBString($insideArr['type'])."' AND `inside.id` = '".$_tool->parseDBString($insideArr['id'])."') LIMIT 1;";
			$existsCommentQuery = mysqli_query($this->db, $_tool->parseDBSQL($existsCommentRequest));
			if (!$existsCommentQuery) {
				return array("return" => false, "reason" => "error#image:comment>exists>existscommentquery");
			}else {
				$existsArr = mysqli_num_rows($existsCommentQuery) > 0 ? true : false;
				return array("return" => true, "exists" => $existsArr);
			}
		}else if (in_array($action, ["list"])) {
			$userMode = isset($object['user']['mode'], $object['user']['mode']['id'], $object['user']['mode']['type']) ? $object['user']['mode'] : null;
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$commentId = isset($object['id']) && is_numeric($object['id']) ? $object['id'] : 0;
			$insideArr = isset($object['inside'], $object['inside']['type'], $object['inside']['id']) ? $object['inside'] : null;
			$listOrder = isset($object['order']) && is_string($object['order']) && is_array($object['order'], ['id', 'favorite', 'reply']) ? $object['order'] : "id";
			$listNumber = isset($object['limit']) && is_numeric($object['limit']) ? $object['limit'] : null;
			$listSort = isset($object['sort']) && is_string($object['sort']) ? $object['sort'] : null;
			if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:comment>list>useridinvaild");
			}else if (!isset($userMode['type']) || !isset($userMode['id'])) {
				return array("return" => false, "reason" => "error#image:comment>list>usermodeinvaild");
			}if ($insideArr == null) {
				return array("return" => false, "reason" => "error#image:comment>list>insidenull");
			}else if (!in_array($listOrder, ["id"])) {
				return array("return" => false, "reason" => "error#image:comment>list>orderinvaild");
			}
			$listNumber = isset($listNumber) ? "LIMIT ".intval($listNumber) : null;
			if ($listOrder == "id") {
				$listCommentRequest = "SELECT `id` FROM `image_comment` WHERE `removed` = '0' AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `image_block` WHERE `user.id` = '".$_tool->parseDBString($userId)."')) AND `id` ".$listSort." '".$_tool->parseDBString($commentId)."' AND (`inside.type` = '".$_tool->parseDBString($insideArr['type'])."' AND `inside.id` = '".$_tool->parseDBString($insideArr['id'])."') ".(preg_match("/\>/", $listSort) ? "ORDER BY `id` DESC" : "ORDER BY `id` ASC")." ".$listNumber." ;";
			}else if ($listOrder == "favorite") {
				//.
			}
			$listCommentQuery = mysqli_query($this->db, $_tool->parseDBSQL($listCommentRequest));
			if (!$listCommentQuery) {
				return array("return" => false, "reason" => "error#image:comment>list>listcommentquery");
			}else {
				$dataArr = array();
				while ($listCommentFetch = mysqli_fetch_assoc($listCommentQuery)) {
					$dataArr[] = $listCommentFetch['id'];
				}
				$countArr = count($dataArr);
				$existsArr = $countArr > 0 ? true : false;
				return array("return" => true, "exists" => $existsArr, "count" => $countArr, "data" => $dataArr);
			}
		}else if (in_array($action, ["fetch"])) {
			$userMode = isset($object['user']['mode'], $object['user']['mode']['id'], $object['user']['mode']['type']) ? $object['user']['mode'] : null;
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$commentLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$commentValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $object['value'] : null;
			$commentReply = isset($object['reply']) && is_bool($object['reply']) ? $object['reply'] : false;
			if ($commentLabel == null) {
				return array("return" => false, "reason" => "error#image:comment>fetch>labelnull");
			}else if (!in_array($commentLabel, ['id', 'display'])) {
				return array("return" => false, "reason" => "error#image:comment>fetch>labelinvaild");
			}else if ($commentValue == null) {
				return array("return" => false, "reason" => "error#image:comment>fetch>valuenull");
			}
			$fetchCommentIdRequest = "SELECT * FROM `image_comment` WHERE `".$_tool->parseDBString($commentLabel)."` = '".$_tool->parseDBString($commentValue)."' ;";
			$fetchCommentIdQuery = mysqli_query($this->db, $_tool->parseDBSQL($fetchCommentIdRequest));
			if (!$fetchCommentIdQuery) {
				return array("return" => false, "reason" => "error#image:comment>fetch>fetchcommentidquery");
			}else {
				$dataArr = array();
				while ($fileCommentIdFetch = mysqli_fetch_assoc($fetchCommentIdQuery)) {
					if (isset($fileCommentIdFetch['token'])) {
						unset($fileCommentIdFetch['token']);
					}
					$fileCommentIdFetch['author']['type'] = isset($fileCommentIdFetch['author.type']) ? $fileCommentIdFetch['author.type'] : null;
					$fileCommentIdFetch['author']['id'] = isset($fileCommentIdFetch['author.id']) ? $fileCommentIdFetch['author.id'] : null;
					$fileCommentIdFetch['inside']['type'] = isset($fileCommentIdFetch['inside.type']) ? $fileCommentIdFetch['inside.type'] : null;
					$fileCommentIdFetch['inside']['id'] = isset($fileCommentIdFetch['inside.id']) ? $fileCommentIdFetch['inside.id'] : null;
					if (isset($fileCommentIdFetch['author.type'])) unset($fileCommentIdFetch['author.type']);
					if (isset($fileCommentIdFetch['author.id'])) unset($fileCommentIdFetch['author.id']);
					if (isset($fileCommentIdFetch['inside.type'])) unset($fileCommentIdFetch['inside.type']);
					if (isset($fileCommentIdFetch['inside.id'])) unset($fileCommentIdFetch['inside.id']);
					if ($fileCommentIdFetch['author']['type'] == "user") {
						$getUserIdAction = $_user->id(array(
							"row" => ["username", "fullname", "link"],
							"action" => "get",
							"label" => "id",
							"value" => $fileCommentIdFetch['author']['id']
						));
						if (isset($getUserIdAction, $getUserIdAction['return'], $getUserIdAction['exists'], $getUserIdAction['data']) && $getUserIdAction['return']) {
							if ($getUserIdAction['exists']) {
								$fileCommentIdFetch['author']['name'] = $getUserIdAction['data']['fullname'];
								$fileCommentIdFetch['author']['tag'] = $getUserIdAction['data']['username'];
								$fileCommentIdFetch['author']['link'] = $getUserIdAction['data']['link'];
							}else {
								//.
							}
						}else {
							//.
						}
					}
					$fileCommentIdFetch['options'] = array();
					$fileCommentIdFetch['options']['author']['block'] = true;
					$fileCommentIdFetch['options']['author']['link'] = true;
					$fileCommentIdFetch['options']['comment']['hide'] = true;
					$fileCommentIdFetch['options']['comment']['delete'] = true;
					$fileCommentIdFetch['options']['comment']['link'] = true;
					if (1 + 1 == 2) {
						$statsCommentFavoriteAction = $this->favorite(array(
							"action" => "stats",
							"inside" => array(
								"type" => "comment",
								"id" => $fileCommentIdFetch['id']
							)
						));
						if (isset($statsCommentFavoriteAction, $statsCommentFavoriteAction['return'], $statsCommentFavoriteAction['count']) && $statsCommentFavoriteAction['return']) {
							$fileCommentIdFetch['favorite']['count'] = $statsCommentFavoriteAction['count'];
						}
						$existsCommentFavoriteAction = null;
						$existsCommentFavoriteAction = $this->favorite(array(
							"action" => "exists",
							"label" => "id",
							"inside" => array(
								"type" => "comment",
								"id" => $fileCommentIdFetch['id']
							),
							"user" => array(
								"id" => $userId,
								"mode" => $userMode
							)
						));
						if (isset($existsCommentFavoriteAction, $existsCommentFavoriteAction['return'], $existsCommentFavoriteAction['exists']) && $existsCommentFavoriteAction['return']) {
							$fileCommentIdFetch['favorite']['exists'] = $existsCommentFavoriteAction['exists'];
						}
						$fileCommentIdFetch['favorite']['allow'] = true;
					}
					if (1 + 1 == 2) {
						if ($commentReply) {
							$listCommentIdAction = $this->comment(array(
								"action" => "list",
								"user" => array(
									"id" => $userId,
									"mode" => $userMode
								),
								"inside" => array(
									"type" => "comment",
									"id" => $fileCommentIdFetch['id']
								),
								"sort" => ">",
								"id" => 0,
								"limit" => 3
							));
							if (isset($listCommentIdAction, $listCommentIdAction['return'], $listCommentIdAction['data']) && $listCommentIdAction['return']) {
								// $fileImageIdFetch['comment']['data'] = $listCommentIdAction['data'];
								foreach ($listCommentIdAction['data'] as $dataCommentLabel => $dataCommentId) {
									$fetchCommentIdAction = $this->comment(array(
										"action" => "fetch",
										"label" => "id",
										"value" => $dataCommentId,
										"reply" => false,
										"user" => array(
											"id" => $userId,
											"mode" => $userMode
										)
									));
									if (isset($fetchCommentIdAction, $fetchCommentIdAction['return'], $fetchCommentIdAction['data'], $fetchCommentIdAction['exists']) && $fetchCommentIdAction['return']) {
										if ($fetchCommentIdAction['exists']) {
											$fileCommentIdFetch['comment']['data'][] = $fetchCommentIdAction['data'][0];
										}
									}
								}
							}
						}
						$fileCommentIdFetch['comment']['allow'] = true;
					}
					if (1 + 1 == 2) {
						$statsCommentReplyAction = $this->comment(array(
							"action" => "stats",
							"inside" => array(
								"type" => "comment",
								"id" => $fileCommentIdFetch['id']
							)
						));
						if (isset($statsCommentReplyAction, $statsCommentReplyAction['return'], $statsCommentReplyAction['count']) && $statsCommentReplyAction['return']) {
							$fileCommentIdFetch['comment']['count'] = $statsCommentReplyAction['count'];
						}
					}
					// $fileCommentIdFetch['link'] = $_tool->links('image/id/'.$fileCommentIdFetch['display']);
					$dataArr[] = $fileCommentIdFetch;
				}
				$countArr = count($dataArr);
				$existsArr = $countArr == 0 ? false : true;
				return array("return" => true, "exists" => $existsArr, "count" => $countArr, "data" => $dataArr);
			}
		}else if (in_array($action, ["get"])) {
			$commentRow = isset($object['row']) && is_array($object['row']) ? $object['row'] : array();
			$commentLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$commentValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $object['value'] : null;
			if (!is_exists($commentRow) || count($commentRow) == 0) {
				return array("return" => false, "reason" => "error#image:comment>get>rownull");
			}else if ($commentLabel == null) {
				return array("return" => false, "reason" => "error#image:comment>get>labelnull");
			}else if (!in_array($commentLabel, ['id', 'display'])) {
				return array("return" => false, "reason" => "error#image:comment>get>labelinvaild");
			}else if ($commentValue == null) {
				return array("return" => false, "reason" => "error#image:comment>get>valuenull");
			}
			$getCommentIdRequestRow = null;
			foreach ($commentRow as $rowLabel => $rowValue) {
				if (in_array($rowValue, ["*"])) {
					$getCommentIdRequestRow = "*";
					break;
				}
				$getCommentIdRequestRow = $getCommentIdRequestRow == null ? "`".$_tool->parseDBString($rowValue)."`" : $getCommentIdRequestRow.", `".$_tool->parseDBString($rowValue)."`";
			}
			if ($getCommentIdRequestRow == null) {
				return array("return" => false, "reason" => "error#image:comment>get>rownotexists");
			}
			$getCommentIdRequest = "SELECT ".$getCommentIdRequestRow." FROM `image_comment` WHERE `".$_tool->parseDBString($commentLabel)."` = '".$_tool->parseDBString($commentValue)."' ;";
			$getCommentIdQuery = mysqli_query($this->db, $getCommentIdRequest);
			if (!$getCommentIdQuery) {
				return array("return" => false, "reason" => "error#image:comment>get>getcommentidquery");
			}else {
				$dataArr = array();
				while ($fileCommentIdFetch = mysqli_fetch_assoc($getCommentIdQuery)) {
					if (isset($fileCommentIdFetch['token'])) {
						unset($fileCommentIdFetch['token']);
					}
					if (isset($fileCommentIdFetch['author.type'])) {
						$fileCommentIdFetch['author']['type'] = $fileCommentIdFetch['author.type'];
						unset($fileCommentIdFetch['author.type']);
					}
					if (isset($fileCommentIdFetch['author.view'])) {
						$fileCommentIdFetch['author']['id'] = $fileCommentIdFetch['author.id'];
						unset($fileCommentIdFetch['author.id']);
					}
					$dataArr[] = $fileCommentIdFetch;
				}
				$countArr = count($dataArr);
				$existsArr = $countArr == 0 ? false : true;
				return array("return" => true, "exists" => $existsArr, "count" => $countArr, "data" => $dataArr);
			}
		}else {
			return array("return" => false, "reason" => "error#image:comment>actioninvaild");
		}
	}
	function id ($object = array()) {
		if (!$this->ready) {
			$this->setup();
		}
		//.
		$_storage = $this->class['_storage'];
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_client = $this->class['_client'];
		$_user = $this->class['_user'];
		$_scrapbook = $this->class['_scrapbook'];
		//.
		$action = isset($object['action']) && is_string($object['action']) ? $object['action'] : null;
		if (in_array($action, ["add"])) {
			$userMode = isset($object['user'], $object['user']['mode'], $object['user']['mode']['id'], $object['user']['mode']['type']) ? $object['user']['mode'] : null;
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$multiple = isset($object['multiple']) && is_bool($object['multiple']) ? $object['multiple'] : true;
			$keep = isset($object['keep']) && is_bool($object['keep']) ? $object['keep'] : true;
			$strip = isset($object['strip']) && is_bool($object['strip']) ? $object['strip'] : true;
			$compress = isset($object['compress']) && is_bool($object['compress']) ? $object['compress'] : true;
			$fileArr = isset($object['file']) && is_array($object['file']) && count($object['file']) > 0 ? $object['file'] : null;
			if (!isset($userMode, $userMode['type'], $userMode['id'])) {
				return array("return" => false, "reason" => "error#image:id>add>authornull");
			}else if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:id>add>usernull");
			}else if ($fileArr == null) {
				return array("return" => false, "reason" => "error#image:id>add>filenull");
			}else if (!isset($fileArr['source'])) {
				return array("return" => false, "reason" => "error#image:id>add>sourcenull");
			}
			$fileArr['local'] = isset($fileArr['local']) && is_string($fileArr['local']) ? strtolower($fileArr['local']) : null;
			if (!in_array($fileArr['local'], ["drive", "cache"])) {
				return array("return" => false, "reason" => "error#image:id>add>localinvaild");
			}
			$fileArr['time'] = $fileArr['date'] = $fileArr['updated'] = time();
			$fileArr['expires'] = isset($fileArr['expires']) && is_numeric($fileArr['expires']) ? $fileArr['expires'] : 0;
			$fileArr['token'] = hash('crc32', '('.$userMode['type'].'_'.$userMode['id'].')::'.md5_file($fileArr['source']).'::'.time().'::'.rand());
			$fileArr['display'] = hash('md5', $fileArr['token']);
			$fileArr['multiple'] = $multiple == true ? 1 : 0;
			$fileArr['keep'] = $keep == true ? 1 : 0;
			$fileArr['compress'] = $compress == true ? 1 : 0;
			$fileArr['strip'] = $strip == true ? 1 : 0;
			$fileArr['size'] = 0;
			$fileArr['scrapbook.id'] = isset($fileArr['scrapbook.id']) && is_numeric($fileArr['scrapbook.id']) ? intval($fileArr['scrapbook.id']) : 0;
			$fileArr['copyright'] = isset($fileArr['copyright']) && is_string($fileArr['copyright']) ? strtolower($fileArr['copyright']) : null;
			$fileArr['privacy.view'] = isset($fileArr['privacy'], $fileArr['privacy']['view']) && is_string($fileArr['privacy']['view']) ? $fileArr['privacy']['view'] : null;
			$fileArr['privacy.comment'] = isset($fileArr['privacy'], $fileArr['privacy']['comment']) && is_string($fileArr['privacy']['comment']) ? $fileArr['privacy']['comment'] : null;
			$fileArr['privacy.share'] = isset($fileArr['privacy'], $fileArr['privacy']['share']) && is_string($fileArr['privacy']['share']) ? $fileArr['privacy']['share'] : null;
			$fileArr['privacy.exif'] = isset($fileArr['privacy'], $fileArr['privacy']['exif']) && is_string($fileArr['privacy']['exif']) ? $fileArr['privacy']['exif'] : null;
			$fileArr['name'] = hash('crc32', $fileArr['display'].'::'.time().'::'.rand().'_'.rand().'_'.rand());
			$fileArr['nameraw'] = isset($fileArr['nameraw']) && is_string($fileArr['nameraw']) ? $fileArr['nameraw'] : basename($fileArr['source']);
			$fileArr['description'] = isset($fileArr['description']) && is_string($fileArr['description']) ? $fileArr['description'] : null;
			$fileArr['location'] = isset($fileArr['location']) && (is_string($fileArr['location']) || is_numeric($fileArr['location'])) ? $fileArr['location'] : null;
			$fileArr['tag'] = isset($fileArr['tag']) && is_string($fileArr['tag']) ? $fileArr['tag'] : null;
			$fileArr['color'] = null;
			$fileArr['copy'] = 0;
			$fileArr['mime'] = isset($fileArr['mime']) && is_string($fileArr['mime']) ? strtolower($fileArr['mime']) : null;
			if ($fileArr['mime'] == null) {
				if (preg_match("/(\.([a-zA-Z0-9]+))$/i", $fileArr['source'])) {
					$fileArr['ext'] = strtolower(pathinfo($fileArr['source'], PATHINFO_EXTENSION));
				}else if (preg_match("/(\.([a-zA-Z0-9]+))$/i", $fileArr['nameraw'])) {
					$fileArr['ext'] = strtolower(pathinfo($fileArr['nameraw'], PATHINFO_EXTENSION));
				}
				if (isset($fileArr['ext']) && is_string($fileArr['ext'])) {
					$fileArr['mime'] = $_tool->convertExtToMime($fileArr['ext']);
				}
			}else {
				$fileArr['ext'] = $_tool->convertMimeToExt($fileArr['mime']);
			}
			$fileArr['size'] = filesize($fileArr['source']);
			list($fileArr['dimension.width'], $fileArr['dimension.height']) = getimagesize($fileArr['source']);
			$fileArr['dimension'] = array(
				"width" => $fileArr['dimension.width'],
				"height" => $fileArr['dimension.height']
			);
			$fileExifAction = isset($fileArr['mime']) && is_string($fileArr['mime']) && in_array($fileArr['mime'], ["image/jpg", "image/jpeg"]) ? $_tool->getImageExif($fileArr['source']) : null;
			$fileArr['exif'] = isset($fileExifAction, $fileExifAction['return'], $fileExifAction['data']) && $fileExifAction['return'] ? json_encode($fileExifAction['data']) : null;
			if ($fileArr['local'] == "cache" && $fileArr['expires'] == 0) {
				$fileArr['expires'] = 0;
			}
			//.
			if (!preg_match("/(\.([a-zA-Z0-9]+))$/", $fileArr['nameraw'])) {
				return array("return" => false, "reason" => "error#image:id>add>namerawerror");
			}else if ($fileArr['size'] > $_parameter->get('image_size_allow')) {
				# return array("return" => false, "reason" => "error#image:id>add>filelimitsize");
			}else if ($fileArr['privacy.view'] == null || $fileArr['privacy.comment'] == null || $fileArr['privacy.share'] == null) {
				return array("return" => false, "reason" => "error#image:id>add>privacynull");
			}
			//.
			set_time_limit(0);
			$uploadFileAction = $_storage->upload(array(
				"format" => "image", 
				"type" => "copy", 
				"file" => $fileArr['source'],
				"compress" => false,
				"strip" => false,
				"mime" => $fileArr['mime'],
				"nameraw" => $fileArr['nameraw']
			));
			#return array("return" => false, "reason" => $fileArr);
			if (isset($uploadFileAction, $uploadFileAction['return'], $uploadFileAction['data']) && $uploadFileAction['return'] == true) {
				$sourceFileInfo = $uploadFileAction['data'];
				$fileArr['source'] = $sourceFileInfo['destination'];
				//.
				$addDataFileRequest = "
				INSERT INTO `image_id` 
				(`id`, `time`, `expires`, `date`, `token`, `display`, `user.id`, `author.type`, `author.id`, `scrapbook.id`, `local`, `privacy.view`, `privacy.comment`, `privacy.share`, `privacy.exif`, `keep`, `multiple`, `compress`, `strip`, `copyright`, `mime`, `nameraw`, `description`, `location`, `tag`, `color`, `dimension.height`, `dimension.width`, `exif`, `size`, `updated`, `ready`, `removed`) 
				VALUES 
				(NULL, '".$fileArr['time']."', '".$fileArr['expires']."', '".$fileArr['date']."', '".$fileArr['token']."', '".$fileArr['display']."', '".$userId."', '".$userMode['type']."', '".$userMode['id']."', '".$fileArr['scrapbook.id']."', '".$fileArr['local']."', '".$fileArr['privacy.view']."', '".$fileArr['privacy.comment']."', '".$fileArr['privacy.share']."', '".$fileArr['privacy.exif']."', '".$fileArr['keep']."', '".$fileArr['multiple']."', '".$fileArr['compress']."', '".$fileArr['strip']."', '".$fileArr['copyright']."', '".$fileArr['mime']."', '".$fileArr['nameraw']."', '".$fileArr['description']."', '".$fileArr['location']."', '".$fileArr['tag']."', '".$fileArr['color']."', '".$fileArr['dimension.height']."', '".$fileArr['dimension.width']."', '".$fileArr['exif']."', '".$fileArr['size']."', '".$fileArr['updated']."', '0', '0');";
				$addDataFileQuery = mysqli_query($this->db, $addDataFileRequest);
				if (!$addDataFileQuery) {
					return array("return" => false, "reason" => "xqwdd-".$addDataFileRequest);
				}
				$fileArr['id'] = mysqli_insert_id($this->db);
				$fileArr['information'] = isset($fileArr['exif']) && $fileArr['exif'] != null ? $_tool->parseExifArray(json_decode($fileArr['exif'], true)) : null;
				if ($keep == true) {
					$originalFileUploadAction = $_storage->upload(array(
						"format" => "image", 
						"type" => "copy", 
						"file" => $fileArr['source'],
						"compress" => false,
						"strip" => false,
						"mime" => $fileArr['mime'],
						"nameraw" => $fileArr['nameraw']
					));
					if (isset($originalFileUploadAction, $originalFileUploadAction['return'], $originalFileUploadAction['data']) && $originalFileUploadAction['return'] == true) {
						$originalFileInfo = $originalFileUploadAction['data'];
						$originalFileRaw = array(
							"display" => hash('md5', $originalFileInfo['display'])
						);
						$fileArr['file']['original'] = array(
							"size" => $originalFileInfo['size'],
							"url" => $_tool->links('image/raw/').$originalFileRaw['display']
						);
						$addOriginalFileRequest = "INSERT INTO `image_raw` (`id`, `image.id`, `display`, `type`, `path`, `size`) VALUES (NULL, '".$fileArr['id']."', '".$originalFileRaw['display']."', 'original', '".$originalFileInfo['display']."', '".$originalFileInfo['size']."'); ";
						$addOriginalFileQuery = mysqli_query($this->db, $addOriginalFileRequest);
						if (!$addOriginalFileQuery) {
							//.
						}
					}else {
						//.
					}
				}
				//.
				$addToolOptions = array(
					"action" => "add",
					"source" => $fileArr['source']
				);
				$addToolAction = $this->tool($addToolOptions);
				if (isset($addToolAction, $addToolAction['return'], $addToolAction['key']) && $addToolAction['return'] == true) {
					$fileToolKey = $addToolAction['key'];
					if ($fileArr['size'] > $_parameter->get('image_allow_size')) {
						$sizeAllowLimit = $_parameter->get('image_allow_size');
						$sizeAllowExceeded = $sizeAllowLimit / $fileArr['size'];
						$sizeResetWidth = $fileArr['dimension.width'] * $sizeAllowExceeded;
						$sizeResetHeight = $fileArr['dimension.height'] * $sizeAllowExceeded;
						$resizeLimitToolAction = $this->tool(array("action" => "resize", "key" => $fileToolKey, "size" => array("width" => $sizeResetWidth, "height" => $sizeResetHeight)));
						$fileArr['size'] = filesize($fileArr['source']);
					}
					if ($strip == true) {
						$stripToolAction = $this->tool(array("action" => "strip", "key" => $fileToolKey));
						$fileArr['size'] = filesize($fileArr['source']);
					}
					if ($compress == true) {
						$compressToolAction = $this->tool(array("action" => "compress", "key" => $fileToolKey));
						$fileArr['size'] = filesize($fileArr['source']);
					}
					if (1 + 1 == 2) {
					// if ($multiple == true && $fileArr['dimension.width'] >= $_parameter->get('image_dimension_width_thumbnail')) {
						$thumbnailFileUploadAction = $_storage->upload(array(
							"format" => "image",
							"type" => "copy",
							"file" => $fileArr['source'],
							"mime" => $fileArr['mime'],
							"nameraw" => $fileArr['nameraw']
						));
						if (isset($thumbnailFileUploadAction, $thumbnailFileUploadAction['return'], $thumbnailFileUploadAction['data']) && $thumbnailFileUploadAction['return'] == true) {
							$thumbnailFileInfo = $thumbnailFileUploadAction['data'];
							$thumbnailFileRaw  = array(
								"display" => hash('md5', $thumbnailFileInfo['display'])
							);
							$fileArr['file']['thumbnail'] = array(
								"size" => $thumbnailFileInfo['size'],
								"url" => $_tool->links('image/raw/').$thumbnailFileRaw ['display']
							);
							$addThumbnailToolAction = $this->tool(array(
								"action" => "add",
								"source" => $thumbnailFileInfo['destination']
							));
							if (isset($addThumbnailToolAction, $addThumbnailToolAction['return'], $addThumbnailToolAction['key']) && $addThumbnailToolAction['return'] == true) {
								$thumbnailToolKey = $addThumbnailToolAction['key'];
								$cropThumbnailSize = $fileArr['dimension.width'] > $fileArr['dimension.height'] ? $fileArr['dimension.height'] : $fileArr['dimension.width'];
								$cropThumbnailToolAction = $this->tool(array("action" => "thumbnail", "key" => $thumbnailToolKey, "size" => $cropThumbnailSize));
								if ($fileArr['dimension.width'] >= $_parameter->get('image_dimension_width_thumbnail')) {
									$resizeThumbnailToolAction = $this->tool(array("action" => "resize", "key" => $thumbnailToolKey, "size" => array("width" => $_parameter->get('image_dimension_width_thumbnail'))));
									$fileArr['file']['thumbnail']['size'] = $thumbnailFileInfo['size'] = filesize($thumbnailFileInfo['destination']);
									//$recheckThumbnailAction = $_storage->recheck(array("format" => "image", "label" => "display", "value" => $thumbnailFileInfo['display']));
								}
								$addThumbnailFileRequest = "INSERT INTO `image_raw` (`id`, `image.id`, `display`, `type`, `path`, `size`) VALUES (NULL, '".$fileArr['id']."', '".$thumbnailFileRaw['display']."', 'thumbnail', '".$thumbnailFileInfo['display']."', '".$thumbnailFileInfo['size']."'); ";
								$addThumbnailFileQuery = mysqli_query($this->db, $addThumbnailFileRequest);
								if (!$addThumbnailFileQuery) {

								}
							}else {
								//.
							}
						}else {
							//. error
						}
					}
					if ($multiple == true && $fileArr['dimension.width'] >= $_parameter->get('image_dimension_width_large')) {
						if ($fileArr['dimension.width'] >= $_parameter->get('image_dimension_width_large')) {
							$resizeLargeToolAction = $this->tool(array("action" => "resize", "key" => $fileToolKey, "size" => array("width" => $_parameter->get('image_dimension_width_large'))));
						}
						$largeFileUploadAction = $_storage->upload(array(
							"format" => "image",
							"type" => "copy",
							"file" => $fileArr['source'],
							"mime" => $fileArr['mime'],
							"nameraw" => $fileArr['nameraw']
						));
						if (isset($largeFileUploadAction, $largeFileUploadAction['return'], $largeFileUploadAction['data']) && $largeFileUploadAction['return'] == true) {
							$largeFileInfo = $largeFileUploadAction['data'];
							$largeFileRaw = array(
								"display" => hash('md5', $largeFileInfo['display'])
							);
							$fileArr['file']['large'] = array(
								"size" => $largeFileInfo['size'],
								"url" => $_tool->links('image/raw/').$largeFileRaw['display']
							);
							$addLargeFileRequest = "INSERT INTO `image_raw` (`id`, `image.id`, `display`, `type`, `path`, `size`) VALUES (NULL, '".$fileArr['id']."', '".$largeFileRaw['display']."', 'large', '".$largeFileInfo['display']."', '".$largeFileInfo['size']."'); ";
							$addLargeFileQuery = mysqli_query($this->db, $addLargeFileRequest);
							if (!$addLargeFileQuery) {

							}
						}else {
							//. error
						}
					}
					if ($multiple == true && $fileArr['dimension.width'] >= $_parameter->get('image_dimension_width_medium')) {
						if ($fileArr['dimension.width'] >= $_parameter->get('image_dimension_width_medium')) {
							$resizeMediumToolAction = $this->tool(array("action" => "resize", "key" => $fileToolKey, "size" => array("width" => $_parameter->get('image_dimension_width_medium'))));
						}
						$mediumFileUploadAction = $_storage->upload(array(
							"format" => "image",
							"type" => "copy",
							"file" => $fileArr['source'],
							"mime" => $fileArr['mime'],
							"nameraw" => $fileArr['nameraw']
						));
						if (isset($mediumFileUploadAction, $mediumFileUploadAction['return'], $mediumFileUploadAction['data']) && $mediumFileUploadAction['return'] == true) {
							$mediumFileInfo = $mediumFileUploadAction['data'];
							$mediumFileRaw = array(
								"display" => hash('md5', $mediumFileInfo['display'])
							);
							$fileArr['file']['medium'] = array(
								"size" => $mediumFileInfo['size'],
								"url" => $_tool->links('image/raw/').$mediumFileRaw['display']
							);
							$addMediumFileRequest = "INSERT INTO `image_raw` (`id`, `image.id`, `display`, `type`, `path`, `size`) VALUES (NULL, '".$fileArr['id']."', '".$mediumFileRaw['display']."', 'medium', '".$mediumFileInfo['display']."', '".$mediumFileInfo['size']."'); ";
							$addMediumFileQuery = mysqli_query($this->db, $addMediumFileRequest);
							if (!$addMediumFileQuery) {

							}
						}else {
							//. error
						}
					}
					if ($multiple == true && $fileArr['dimension.width'] >= $_parameter->get('image_dimension_width_small')) {
						if ($fileArr['dimension.width'] >= $_parameter->get('image_dimension_width_small')) {
							$resizeSmallToolAction = $this->tool(array("action" => "resize", "key" => $fileToolKey, "size" => array("width" => $_parameter->get('image_dimension_width_small'))));
						}
						$smallFileUploadAction = $_storage->upload(array(
							"format" => "image",
							"type" => "copy",
							"file" => $fileArr['source'],
							"mime" => $fileArr['mime'],
							"nameraw" => $fileArr['nameraw']
						));
						if (isset($smallFileUploadAction, $smallFileUploadAction['return'], $smallFileUploadAction['data']) && $smallFileUploadAction['return'] == true) {
							$smallFileInfo = $smallFileUploadAction['data'];
							$smallFileRaw = array(
								"display" => hash('md5', $smallFileInfo['display'])
							);
							$fileArr['file']['small'] = array(
								"size" => $smallFileInfo['size'],
								"url" => $_tool->links('image/raw/').$smallFileRaw['display']
							);
							$addSmallFileRequest = "INSERT INTO `image_raw` (`id`, `image.id`, `display`, `type`, `path`, `size`) VALUES (NULL, '".$fileArr['id']."', '".$smallFileRaw['display']."', 'small', '".$smallFileInfo['display']."', '".$smallFileInfo['size']."'); ";
							$addSmallFileQuery = mysqli_query($this->db, $addSmallFileRequest);
							if (!$addSmallFileQuery) {

							}
						}else {
							//. error
						}
					}
					$fileToolHistogramAction = $this->tool(array("action" => "colorlist", "key" => $fileToolKey, "count" => 10));
					if (isset($fileToolHistogramAction, $fileToolHistogramAction['return'], $fileToolHistogramAction['data']) && $fileToolHistogramAction['return']) {
						$fileArr['color'] = json_encode($fileToolHistogramAction['data']);
						$updateDoneFileRequest = "UPDATE `image_id` SET `ready` = '1', `color` = '".$_tool->parseDBString($fileArr['color'])."' WHERE `id` = '".$fileArr['id']."' ;";
						$fileArr['color'] = $fileToolHistogramAction['data'];
					}else {
						$updateDoneFileRequest = "UPDATE `image_id` SET `ready` = '1' WHERE `id` = '".$fileArr['id']."' ;";
					}
					$updateDoneFileQuery = mysqli_query($this->db, $updateDoneFileRequest);
					if (!$updateDoneFileQuery) {
						return array("return" => false, "reason" => "affcsdfasf");
					}
					$deleteFileAction = $_storage->delete(array("format" => "image", "label" => "display", "value" => $sourceFileInfo['display'], "limit" => 1));
					if (isset($deleteFileAction, $deleteFileAction['return'], $deleteFileAction['data']) && $deleteFileAction['return']) {
						if (isset($fileArr['id'])) {
							unset($fileArr['id']);
						}
						if (isset($fileArr['source'])) {
							unset($fileArr['source']);
						}
						if (isset($fileArr['token'])) {
							unset($fileArr['token']);
						}
						return array("return" => true, "data" => $fileArr);
					}else if (isset($deleteFileAction, $deleteFileAction['return'], $deleteFileAction['reason']) && !$deleteFileAction['return']) {
						return array("return" => false, "reason" => "error#image:id>add>deletefileaction>".$deleteFileAction['reason']);
					}else {
						return array("return" => false, "reason" => "error#image:id>add>deletefileaction>_");
					}
				}else {
					return array("return" => false, "reason" => "error#image:id>add>addtoolaction>_");
				}
			}else if (isset($uploadFileAction, $uploadFileAction['return'], $uploadFileAction['reason']) && !$uploadFileAction['return']) {
				return array("return" => false, "reason" => "error#image:id>add>uploadfileaction>".$uploadFileAction['reason']);
			}else {
				return array("return" => false, "reason" => "error#image:id>add>uploadfileaction>_");
			}
		}else if (in_array($action, ["fetch"])) {
			$userMode = isset($object['user']['mode'], $object['user']['mode']['id'], $object['user']['mode']['type']) ? $object['user']['mode'] : null;
			$userId = isset($object['user'], $object['user']['id']) ? $object['user']['id'] : null;
			$imageLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$imageValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $object['value'] : null;
			$includeComment = isset($object['include']['comment']) && is_string($object['include']['comment']) ? $object['include']['comment'] : false;
			$includeComment = true;
			if (!isset($userMode, $userMode['type'], $userMode['id'])) {
				return array("return" => false, "reason" => "error#image:id>fetch>modenull");
			}else if (!isset($userId)) {
				return array("return" => false, "reason" => "error#image:id>fetch>usernull");
			}else if ($imageLabel == null) {
				return array("return" => false, "reason" => "error#image:id>fetch>labelnull");
			}else if (!in_array($imageLabel, ['id', 'display'])) {
				return array("return" => false, "reason" => "error#image:id>fetch>labelinvaild");
			}else if ($imageValue == null) {
				return array("return" => false, "reason" => "error#image:id>fetch>valuenull");
			}
			$fetchImageIdRequest = "SELECT * FROM `image_id` WHERE `".$_tool->parseDBString($imageLabel)."` = '".$_tool->parseDBString($imageValue)."' ;";
			$fetchImageIdQuery = mysqli_query($this->db, $fetchImageIdRequest);
			if (!$fetchImageIdQuery) {
				return array("return" => false, "reason" => "error#image:id>fetch>failfetchquery");
			}else {
				$dataArr = array();
				while ($fileImageIdFetch = mysqli_fetch_assoc($fetchImageIdQuery)) {
					$fileImageIdFetch['scrapbook']['id'] = isset($fileImageIdFetch['scrapbook.id']) ? $fileImageIdFetch['scrapbook.id'] : null;
					$fileImageIdFetch['author']['type'] = isset($fileImageIdFetch['author.type']) ? $fileImageIdFetch['author.type'] : null;
					$fileImageIdFetch['author']['id'] = isset($fileImageIdFetch['author.id']) ? $fileImageIdFetch['author.id'] : null;
					$fileImageIdFetch['privacy']['view'] = isset($fileImageIdFetch['privacy.view']) ? $fileImageIdFetch['privacy.view'] : null;
					$fileImageIdFetch['privacy']['comment'] = isset($fileImageIdFetch['privacy.comment']) ? $fileImageIdFetch['privacy.comment'] : null;
					$fileImageIdFetch['privacy']['share'] = isset($fileImageIdFetch['privacy.share']) ? $fileImageIdFetch['privacy.share'] : null;
					$fileImageIdFetch['privacy']['exif'] = isset($fileImageIdFetch['privacy.exif']) ? $fileImageIdFetch['privacy.exif'] : null;
					$fileImageIdFetch['options'] = array();
					$fileImageIdFetch['options']['author']['block'] = true;
					$fileImageIdFetch['options']['author']['link'] = true;
					$fileImageIdFetch['options']['id']['hide'] = true;
					$fileImageIdFetch['options']['id']['delete'] = true;
					$fileImageIdFetch['options']['id']['link'] = true;
					$fileImageIdFetch['color'] = isset($fileImageIdFetch['color']) ? json_decode($fileImageIdFetch['color'], true) : [];
					$fileImageIdFetch['tag'] = isset($fileImageIdFetch['tag']) ? split(" ", $fileImageIdFetch['tag']) : null;
					$fileImageIdFetch['dimension']['height'] = isset($fileImageIdFetch['dimension.height']) ? $fileImageIdFetch['dimension.height'] : null;
					$fileImageIdFetch['dimension']['width'] = isset($fileImageIdFetch['dimension.width']) ? $fileImageIdFetch['dimension.width'] : null;
					if (isset($fileImageIdFetch['scrapbook.id'])) unset($fileImageIdFetch['scrapbook.id']);
					if (isset($fileImageIdFetch['author.type'])) unset($fileImageIdFetch['author.type']);
					if (isset($fileImageIdFetch['author.id'])) unset($fileImageIdFetch['author.id']);
					if (isset($fileImageIdFetch['privacy.view'])) unset($fileImageIdFetch['privacy.view']);
					if (isset($fileImageIdFetch['privacy.comment'])) unset($fileImageIdFetch['privacy.comment']);
					if (isset($fileImageIdFetch['privacy.share'])) unset($fileImageIdFetch['privacy.share']);
					if (isset($fileImageIdFetch['privacy.exif'])) unset($fileImageIdFetch['privacy.exif']);
					if (isset($fileImageIdFetch['dimension.height'])) unset($fileImageIdFetch['dimension.height']);
					if (isset($fileImageIdFetch['dimension.width'])) unset($fileImageIdFetch['dimension.width']);
					if ($fileImageIdFetch['author']['type'] == "user") {
						$getUserIdAction = $_user->id(array(
							"row" => ["username", "fullname", "link"],
							"action" => "get",
							"label" => "id",
							"value" => $fileImageIdFetch['author']['id']
						));
						if (isset($getUserIdAction, $getUserIdAction['return'], $getUserIdAction['exists'], $getUserIdAction['data']) && $getUserIdAction['return']) {
							if ($getUserIdAction['exists']) {
								$fileImageIdFetch['author']['name'] = $getUserIdAction['data']['fullname'];
								$fileImageIdFetch['author']['tag'] = $getUserIdAction['data']['username'];
								$fileImageIdFetch['author']['link'] = $getUserIdAction['data']['link'];
							}else {
								//.
							}
						}else {
							//.
						}
					}
					if ($fileImageIdFetch['scrapbook']['id'] > 0) {
						$getScrapbookIdAction = $_scrapbook->id(array(
							"row" => ["name", "link"],
							"action" => "get",
							"label" => "id",
							"value" => $fileImageIdFetch['scrapbook']['id']
						));
						$fileImageIdFetch['scrapbook']['name']= $getScrapbookIdAction;
						if (isset($getScrapbookIdAction, $getScrapbookIdAction['return'], $getScrapbookIdAction['exists'], $getScrapbookIdAction['data']) && $getScrapbookIdAction['return']) {
							if ($getScrapbookIdAction['exists']) {
								$fileImageIdFetch['scrapbook']['name'] = $getScrapbookIdAction['data']['name'];
								$fileImageIdFetch['scrapbook']['link'] = $getScrapbookIdAction['data']['link'];
							}else {
								//.
							}
						}else {
							//.
						}
					}
					if (1 + 1 == 2) {
						$statsImageFavoriteAction = $this->favorite(array(
							"action" => "stats",
							"label" => "id",
							"inside" => array(
								"type" => "id",
								"id" => $fileImageIdFetch['id']
							)
						));
						if (isset($statsImageFavoriteAction, $statsImageFavoriteAction['return'], $statsImageFavoriteAction['count']) && $statsImageFavoriteAction['return']) {
							$fileImageIdFetch['favorite']['count'] = $statsImageFavoriteAction['count'];
						}
						$existsImageFavoriteAction = $this->favorite(array(
							"action" => "exists",
							"label" => "id",
							"inside" => array(
								"type" => "id",
								"id" => $fileImageIdFetch['id']
							),
							"user" => array(
								"id" => $userId,
								"mode" => $userMode
							)
						));
						if (isset($existsImageFavoriteAction, $existsImageFavoriteAction['return'], $existsImageFavoriteAction['exists']) && $existsImageFavoriteAction['return']) {
							$fileImageIdFetch['favorite']['exists'] = $existsImageFavoriteAction['exists'];
						}
						$fileImageIdFetch['favorite']['allow'] = true;
					}
					if (1 + 1 == 2) {
						$statsImageCommentAction = $this->comment(array(
							"action" => "stats",
							"label" => "id",
							"inside" => array(
								"type" => "id",
								"id" => $fileImageIdFetch['id']
							)
						));
						if (isset($statsImageCommentAction, $statsImageCommentAction['return'], $statsImageCommentAction['count']) && $statsImageCommentAction['return']) {
							$fileImageIdFetch['comment']['count'] = $statsImageCommentAction['count'];
						}
						$fileImageIdFetch['comment']['allow'] = true;
					}
					if ($includeComment) {
						$listCommentIdAction = $this->comment(array(
							"action" => "list",
							"user" => array(
								"id" => $userId,
								"mode" => $userMode
							),
							"inside" => array(
								"type" => "id",
								"id" => $fileImageIdFetch['id']
							),
							"sort" => ">",
							"id" => 0,
							"limit" => 3
						));
						if (isset($listCommentIdAction, $listCommentIdAction['return'], $listCommentIdAction['data']) && $listCommentIdAction['return']) {
							// $fileImageIdFetch['comment']['data'] = $listCommentIdAction['data'];
							foreach ($listCommentIdAction['data'] as $dataCommentLabel => $dataCommentId) {
								$fetchCommentIdAction = $this->comment(array(
									"action" => "fetch",
									"label" => "id",
									"value" => $dataCommentId,
									"reply" => true,
									"user" => array(
										"id" => $userId,
										"mode" => $userMode
									)
								));
								if (isset($fetchCommentIdAction, $fetchCommentIdAction['return'], $fetchCommentIdAction['data'], $fetchCommentIdAction['exists']) && $fetchCommentIdAction['return']) {
									if ($fetchCommentIdAction['exists']) {
										$fileImageIdFetch['comment']['data'][] = $fetchCommentIdAction['data'][0];
									}
								}
							}
						}
					}
					$fileImageIdFetch['link'] = $_tool->links('image/id/'.$fileImageIdFetch['display']);
					$getImageRawAction = $this->raw(array(
						"action" => "get",
						"label" => "image.id",
						"value" => $fileImageIdFetch['id']
					));
					if (isset($getImageRawAction, $getImageRawAction['return'], $getImageRawAction['exists'], $getImageRawAction['data']) && $getImageRawAction['return']) {
						if ($getImageRawAction['return']) {
							foreach ($getImageRawAction['data'] as $typeImageRaw => $valueImageRaw) {
								$valueImageRaw['dimension'] = isset($valueImageRaw['dimension']) && preg_match("/^(([0-9\.]+)x([0-9\.]+))$/", $valueImageRaw['dimension']) ? explode("x", $valueImageRaw['dimension']) : [];
								$valueImageRaw['dimension']['width'] = isset($valueImageRaw['dimension'][0]) ? $valueImageRaw['dimension'][0] : 0;
								$valueImageRaw['dimension']['height'] = isset($valueImageRaw['dimension'][1]) ? $valueImageRaw['dimension'][1] : 0;
								if (isset($valueImageRaw['dimension'][0])) unset($valueImageRaw['dimension'][0]);
								if (isset($valueImageRaw['dimension'][1])) unset($valueImageRaw['dimension'][1]);
								$fileImageIdFetch['file'][$valueImageRaw['type']] = array(
									"size" => $valueImageRaw['size'],
									"dimension" => $valueImageRaw['dimension'],
									"url" => $_tool->links('image/raw/').$valueImageRaw['display']
								);
							}
						}
					}
					$dataArr[] = $fileImageIdFetch;
				}
				$countArr = count($dataArr);
				$existsArr = $countArr == 0 ? false : true;
				return array("return" => true, "exists" => $existsArr, "count" => $countArr, "data" => $dataArr);
			}
		}else if (in_array($action, ["get"])) {
			$imageRow = isset($object['row']) && is_array($object['row']) ? $object['row'] : array();
			$imageLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$imageValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $object['value'] : null;
			if (!is_exists($imageRow) || count($imageRow) == 0) {
				return array("return" => false, "reason" => "error#image:id>get>rownull");
			}else if ($imageLabel == null) {
				return array("return" => false, "reason" => "error#image:id>get>labelnull");
			}else if (!in_array($imageLabel, ['id', 'display'])) {
				return array("return" => false, "reason" => "error#image:id>get>labelinvaild");
			}else if ($imageValue == null) {
				return array("return" => false, "reason" => "error#image:id>get>valuenull");
			}
			$getImageIdRequestRow = null;
			foreach ($imageRow as $rowLabel => $rowValue) {
				if (in_array($rowValue, ["*"])) {
					$getImageIdRequestRow = "*";
					break;
				}
				$getImageIdRequestRow = $getImageIdRequestRow == null ? "`".$_tool->parseDBString($rowValue)."`" : $getImageIdRequestRow.", `".$_tool->parseDBString($rowValue)."`";
			}
			if ($getImageIdRequestRow == null) {
				return array("return" => false, "reason" => "error#image:id>get>rownotexists");
			}
			$getImageIdRequest = "SELECT ".$getImageIdRequestRow." FROM `image_id` WHERE `".$_tool->parseDBString($imageLabel)."` = '".$_tool->parseDBString($imageValue)."' ;";
			$getImageIdQuery = mysqli_query($this->db, $getImageIdRequest);
			if (!$getImageIdQuery) {
				return array("return" => false, "reason" => "error#image:id>get>failgetquery");
			}else {
				$dataArr = array();
				while ($fileImageIdFetch = mysqli_fetch_assoc($getImageIdQuery)) {
					if (isset($fileImageIdFetch['token'])) {
						unset($fileImageIdFetch['token']);
					}
					if (isset($fileImageIdFetch['author.type'])) {
						$fileImageIdFetch['author']['type'] = $fileImageIdFetch['author.type'];
						unset($fileImageIdFetch['author.type']);
					}
					if (isset($fileImageIdFetch['author.view'])) {
						$fileImageIdFetch['author']['id'] = $fileImageIdFetch['author.id'];
						unset($fileImageIdFetch['author.id']);
					}
					if (isset($fileImageIdFetch['privacy.view'])) {
						$fileImageIdFetch['privacy']['view'] = $fileImageIdFetch['privacy.view'];
					}
					if (isset($fileImageIdFetch['privacy.comment'])) {
						$fileImageIdFetch['privacy']['comment'] = $fileImageIdFetch['privacy.comment'];
					}
					if (isset($fileImageIdFetch['privacy.share'])) {
						$fileImageIdFetch['privacy']['share'] = $fileImageIdFetch['privacy.share'];
					}
					if (isset($fileImageIdFetch['privacy.exif'])) {
						$fileImageIdFetch['privacy']['exif'] = $fileImageIdFetch['privacy.exif'];
					}
					$dataArr[] = $fileImageIdFetch;
				}
				$countArr = count($dataArr);
				$existsArr = $countArr == 0 ? false : true;
				return array("return" => true, "exists" => $existsArr, "count" => $countArr, "data" => $dataArr);
			}
		}else if (in_array($action, ["update"])) {
			$imageRow = isset($object['row']) && is_array($object['row']) ? $object['row'] : array();
			$imageLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$imageValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $object['value'] : null;
			if (!is_exists($imageRow) || count($imageRow) == 0) {
				return array("return" => false, "reason" => "error#image:id>update>rownull");
			}else if ($imageLabel == null) {
				return array("return" => false, "reason" => "error#image:id>update>labelnull");
			}else if (!in_array($imageLabel, ['id', 'display'])) {
				return array("return" => false, "reason" => "error#image:id>update>labelinvaild");
			}else if ($imageValue == null) {
				return array("return" => false, "reason" => "error#image:id>update>valuenull");
			}
			$existsImageIdAction = $this->id(array(
				"action" => "exists",
				"label" => $imageLabel,
				"value" => $imageValue
			));
			if (isset($existsImageIdAction, $existsImageIdAction['return'], $existsImageIdAction['exists']) && $existsImageIdAction['return']) {
				if (!$existsImageIdAction['exists']) {
					return array("return" => true, "exists" => false, "data" => array());
				}
			}else if (isset($existsImageIdAction, $existsImageIdAction['return'], $existsImageIdAction['reason']) && !$existsImageIdAction['return']) {
				return array("return" => false, "reason" => "error#image:id>post>existsimageidaction>".$existsImageIdAction['reason']);
			}else {
				return array("return" => false, "reason" => "error#image:id>post>existsimageidaction>_");
			}
			$imageRowUpdated = array();
			$rowAllow = ["date", "scrapbook.id", "local", "privacy.view", "privacy.comment", "privacy.share", "privacy.exif", "keep", "multiple", "compress", "strip", "copyright", "nameraw", "description", "location", "tag", "exif"];
			$updateImageIdRequestRow = null;
			foreach ($imageRow as $rowLabel => $rowValue) {
				$rowLabel = str_replace("-", ".", $rowLabel);
				if (!in_array($rowLabel, $rowAllow)) {
					continue;
				}
				$imageRowUpdated[$rowLabel] = $rowValue;
				$updateImageIdRequestRow = !is_exists($updateImageIdRequestRow) ? "`".$_tool->parseDBString($rowLabel)."` = '".$_tool->parseDBString($rowValue)."'" : $updateImageIdRequestRow.", `".$_tool->parseDBString($rowLabel)."` = '".$_tool->parseDBString($rowValue)."'";
			}
			if (!is_exists($updateImageIdRequestRow)) {
				return array("return" => false, "reason" => "error#image:id>update>requestupdatenull");
			}
			$updateImageIdRequestRow .= ", `updated` = '".time()."'";
			$updateImageIdRequest = "UPDATE `image_id` SET ".$updateImageIdRequestRow." WHERE `".$_tool->parseDBString($imageLabel)."` = '".$_tool->parseDBString($imageValue)."';";
			$updateImageIdQuery = mysqli_query($this->db, $updateImageIdRequest);
			if (!$updateImageIdQuery) {
				return array("return" => false, "reason" => "error#image:id>update>failupdatequery");
			}else {
				$dataArr = array(
					"updated" => $imageRowUpdated
				);
				return array("return" => true, "exists" => true, "data" => $dataArr);
			}
		}else if (in_array($action, ["post"])) {
			$imageLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$imageValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $object['value'] : null;
			if ($imageLabel == null) {
				return array("return" => false, "reason" => "error#image:id>post>labelnull");
			}else if (!in_array($imageLabel, ['id', 'display'])) {
				return array("return" => false, "reason" => "error#image:id>post>labelinvaild");
			}else if ($imageValue == null) {
				return array("return" => false, "reason" => "error#image:id>post>valuenull");
			}
			$existsImageIdAction = $this->id(array(
				"action" => "exists",
				"label" => $imageLabel,
				"value" => $imageValue
			));
			if (isset($existsImageIdAction, $existsImageIdAction['return'], $existsImageIdAction['exists']) && $existsImageIdAction['return']) {
				if (!$existsImageIdAction['exists']) {
					return array("return" => true, "exists" => false, "posted" => false);
				}
			}else if (isset($existsImageIdAction, $existsImageIdAction['return'], $existsImageIdAction['reason']) && !$existsImageIdAction['return']) {
				return array("return" => false, "reason" => "error#image:id>post>existsimageidaction>".$existsImageIdAction['reason']);
			}else {
				return array("return" => false, "reason" => "error#image:id>post>existsimageidaction>_");
			}
			$postImageIdRequest = "UPDATE `image_id` SET `local` = 'drive', `updated` = '".time()."' WHERE `".$_tool->parseDBString($imageLabel)."` = '".$_tool->parseDBString($imageValue)."';";
			$postImageIdQuery = mysqli_query($this->db, $postImageIdRequest);
			if (!$postImageIdQuery) {
				return array("return" => false, "reason" => "error#image:id>post>failpostquery");
			}else {
				return array("return" => true, "exists" => true, "posted" => true);
			}
		}else if (in_array($action, ["exists"])) {
			$imageLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
			$imageValue = isset($object['value']) && (is_string($object['value']) || is_numeric($object['value'])) ? $object['value'] : null;
			if ($imageLabel == null) {
				return array("return" => false, "reason" => "error#image:id>exists>labelnull");
			}else if (!in_array($imageLabel, ['id', 'display'])) {
				return array("return" => false, "reason" => "error#image:id>exists>labelinvaild");
			}else if ($imageValue == null) {
				return array("return" => false, "reason" => "error#image:id>exists>valuenull");
			}
			$existsImageIdRequest = "SELECT `id` FROM `image_id` WHERE `".$_tool->parseDBString($imageLabel)."` = '".$_tool->parseDBString($imageValue)."' LIMIT 1;";
			$existsImageIdQuery = mysqli_query($this->db, $existsImageIdRequest);
			if (!$existsImageIdQuery) {
				return array("return" => false, "reason" => "error#image:id>exists>failexistsquery>");
			}else {
				if (mysqli_num_rows($existsImageIdQuery) == 0) {
					return array("return" => true, "exists" => false);
				}else {
					return array("return" => true, "exists" => true);
				}
			}
		}else if (in_array($action, ["list"])) {
			$imageRow = isset($object['row']) && is_array($object['row']) && count($object['row']) > 0 ? $object['row'] : null;
			$imageLocal = isset($object['local']) && is_string($object['local']) ? $object['local'] : null;
			$imageLimit = isset($object['limit']) && (is_string($object['limit']) || is_numeric($object['limit'])) ? $object['limit'] : null;
			$imageOrder = isset($object['order']) && is_string($object['order']) ? $object['order'] : "desc";
			if (!is_exists($imageRow) || count($imageRow) == 0) {
				return array("return" => false, "reason" => "error#image:id>list>rownull");
			}else if ($imageLocal == null) {
				return array("return" => false, "reason" => "error#image:id>list>valuenull");
			}else if (!in_array($imageLocal, ['drive', 'cache'])) {
				return array("return" => false, "reason" => "error#image:id>list>localinvaild");
			}else if ($imageLimit == null) {
				return array("return" => false, "reason" => "error#image:id>list>limitnull");
			}else if ($imageOrder == null) {
				return array("return" => false, "reason" => "error#image:id>list>ordernull");
			}else if (!in_array(strtolower($imageOrder), ['desc', 'asc'])) {
				return array("return" => false, "reason" => "error#image:id>list>orderinvaild");
			}
			$rowAllow = ["id", "expires", "date", "display", "scrapbook.id", "local", "privacy.view", "privacy.comment", "privacy.share", "privacy.exif", "keep", "multiple", "compress", "strip", "copyright", "mime", "nameraw", "description", "location", "tag", "dimension.height", "dimension.width", "exif", "size"];
			$imageLimit = $imageLimit == 0 ? null : "LIMIT ".intval($imageLimit);
			$imageOrder = "ORDER BY `id` ".strtoupper($imageOrder);
			$listImageIdRequestRow = null;
			foreach ($imageRow as $rowLabel => $rowValue) {
				if (in_array($rowValue, ["*"])) {
					$listImageIdRequestRow = "*";
					break;
				}else if (!in_array($rowValue, $rowAllow)) {
					continue;
				}
				$listImageIdRequestRow = $listImageIdRequestRow == null ? "`".$_tool->parseDBString($rowValue)."`" : $listImageIdRequestRow.", `".$_tool->parseDBString($rowValue)."`";
			}
			if ($listImageIdRequestRow == null) {
				return array("return" => false, "reason" => "error#image:id>list>rownotexists");
			}
			$listImageIdRequest = "SELECT ".$listImageIdRequestRow." FROM `image_id` WHERE `local` = '".$imageLocal."' AND `removed` = '0' ".$imageOrder." ".$imageLimit." ;";
			$listImageIdQuery = mysqli_query($this->db, $listImageIdRequest);
			if (!$listImageIdQuery) {
				return array("return" => false, "reason" => "error#image:id>list>faillistquery>".$listImageIdRequest);
			}else {
				$dataArr = array();
				while ($fileImageIdFetch = mysqli_fetch_assoc($listImageIdQuery)) {
					if (isset($fileImageIdFetch['token'])) {
						unset($fileImageIdFetch['token']);
					}
					$dataArr[] = $fileImageIdFetch;
				}
				$countArr = count($dataArr);
				$existsArr = $countArr == 0 ? false : true;
				return array("return" => true, "exists" => $existsArr, "count" => $countArr, "data" => $dataArr);
			}
		}else {
			return array("return" => false, "reason" => "error#image:id>actionotnexists");
		}
	}
}
?>