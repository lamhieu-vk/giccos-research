<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class photos {
	function __construct () {
		$GLOBALS["_photos"] = $this;
		$this->class = $GLOBALS;
	}
	function exec ($command) {
		# remove newlines and convert single quotes to double to prevent errors
		$command = str_replace(array("\n", "'"), array('', '"'), $command);
		// $command = escapeshellcmd($command);
		# execute convert program
        exec($command, $output, $return);
        $return = isset($return) && $return === 0 ? true : false;
        return array("command" => $command, "output" => $output, "return" => $return);
	}
	function hash ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$type = isset($object, $object['type']) && is_string($object['type']) ? $object['type'] : null;
		if (in_array($type, ["analyze", "analytical"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$tech = isset($object, $object['tech']) && is_array($object['tech']) ? $object['tech'] : ["difference"];
			if ($resource == null || $tech == null) {
				return array("return" => false, "reason" => "fd2");
			}
			if (!file_exists($resource)) {
				return array("return" => false, "reason" => "2dxsf");
			}
			$dataArr = array();
			foreach ($tech as $typeHash) {
				if (!in_array($typeHash, ["difference", "perceptual", "average", "point"])) {
					continue;
				}
				$hashThis = $this->hash(array("type" => $typeHash, "file" => $resource, "size" => 16));
				if (isset($hashThis, $hashThis['return'], $hashThis['hash']) && $hashThis['return'] == true) {
				    $dataArr[$typeHash] = $hashThis['hash'];
				}else {
				   	return array("return" => false, "reason" => $hashThis);
				}
			}
			if (isset($dataArr) && is_array($dataArr) && count($dataArr) > 0) {
				return array("return" => true, "data" => $dataArr);
			}else {
			    return array("return" => false, "reason" => "546");
			}
		}else if (in_array($type, ["compare"])) {
			$fileA = isset($object, $object['file'], $object['file'][0]) ? $object['file'][0] : null;
			$fileB = isset($object, $object['file'], $object['file'][1]) ? $object['file'][1] : null;
			$tech = isset($object, $object['tech']) && is_array($object['tech']) ? $object['tech'] : ["difference"];
			if ($fileA == null || $fileA == null) {
				return array("return" => false, "reason" => "");
			}else if (!file_exists($fileA)) {
				return array("return" => false, "reason" => "2ddfsf");
			}else if (!file_exists($fileB)) {
				return array("return" => false, "reason" => "2derdsf");
			}else if ($fileA == $fileB) {
				return array("return" => false, "reason" => "efretew");
			}
			$valueAllow = array("difference" => 14.0, "perceptual" => 7.0, "average" => 7.0);
			$hashA = $this->hash(array("type" => "analyze", "file" => $fileA, "tech" => $tech));
			$hashB = $this->hash(array("type" => "analyze", "file" => $fileB, "tech" => $tech));
			if (isset($hashA['return'], $hashB['return'], $hashA['data'], $hashB['data']) && $hashA['return'] == true && $hashB['return'] == true) {
				$dataArr = array();
				$dataArr['similar'] = null;
				$dataArr['result'] = array();
				$haveSimilar = $notSimilar = 0;
				foreach ($hashA['data'] as $typeHash => $valueHash) {
					if (!isset($hashA['data'][$typeHash]) || !isset($hashB['data'][$typeHash])) {
						if (isset($hashA['data'][$typeHash])) {
							unset($hashA['data'][$typeHash]);
						}
						if (isset($hashB['data'][$typeHash])) {
							unset($hashB['data'][$typeHash]);
						}
						continue;
					}
					if (isset($hashA['data'][$typeHash], $hashA['data'][$typeHash]) && in_array($typeHash, $tech)) {
						$resultValue = $_tool->hamdist($hashA['data'][$typeHash], $hashB['data'][$typeHash]);
						$resultConfirm = $resultValue <= $valueAllow[$typeHash] ? true : false;
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
					return array("return" => false, "reason" => "erw");
				}
				$dataArr['similar'] = $haveSimilar >= $notSimilar ? true : false;
				$dataArr['hash'] = array();
				$dataArr['hash'][$fileA] = $hashA['data'];
				$dataArr['hash'][$fileB] = $hashB['data'];
				return array("return" => true, "data" => $dataArr);
			}else {
				return array("return" => false, "reason" => "2342era", "a" => $hashA, "b" => $hashB);
			}
		}else if (in_array($type, ["average"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 8;
			if ($resource == null || $size == null) {
				return array("return" => false, "reason" => "fd2");
			}
			if (!file_exists($resource)) {
				return array("return" => false, "reason" => "2d23sf");
			}
			$file = $resource.'_'.hash('md5', time().'::'.rand().'::'.rand().'::'.rand()).'.png';
			$resourcePerms = substr(sprintf('%o', fileperms($resource)), -4);
			chmod($resource, 0775);
			//. $fileConvert = $this->exec("convert ".$resource." -strip -blur 10x10 -colorspace Gray -contrast-stretch 10% -threshold 10% -resize ".($size * 1)."x".($size * 1)."! ".$file." ");
			$fileConvert = $this->exec("convert ".$resource." -strip -level 50,100% -blur 15x15 -colorspace Gray -contrast-stretch 5% -resize ".($size * 1 + 0)."x".($size * 1 + 0)."! ".$file." ");
			if (!file_exists($file))  {
				return array("return" => false, "reason" => "2redsf");
			}
			if (isset($fileConvert, $fileConvert['return']) && $fileConvert['return'] == true) {
				$fileResource = imagecreatefromstring(file_get_contents($file));
				chmod($resource, $resourcePerms);
			    $resized = imagecreatetruecolor($size, $size);
		        imagecopyresampled($resized, $fileResource, 0, 0, 0, 0, $size, $size, imagesx($fileResource), imagesy($fileResource));
		        imagedestroy($fileResource);
		        $pixels = [];
		        for ($y = 0; $y < $size; $y++)
		        {
		            for ($x = 0; $x < $size; $x++)
		            {
		                $rgb = imagecolorsforindex($resized, imagecolorat($resized, $x, $y));
		                $pixels[] = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
		            }
		        }
		        imagedestroy($resized);
		        $average = floor(array_sum($pixels) / count($pixels));
		        $hash = 0; $one = 1;
		        foreach ($pixels as $pixel) {
		            if ($pixel > $average) $hash |= $one;
		            $one = $one << 1;
		        }
			    if (file_exists($file))  {
					unlink($file);
				}
				$hash = abs($hash);
			    return array("return" => true, "hash" => $hash);
			}else {
				chmod($resource, $resourcePerms);
				if (file_exists($file))  {
					unlink($file);
				}
				return array("return" => false, "reason" => "sdwew");
			}
		}else if (in_array($type, ["perceptual"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 8;
			$size = 16;
			if ($resource == null || $size == null) {
				return array("return" => false, "reason" => "fd2");
			}
			if (!file_exists($resource)) {
				return array("return" => false, "reason" => "2d54sf");
			}
			$file = $resource.'_'.hash('md5', time().'::'.rand().'::'.rand().'::'.rand()).'.png';
			$resourcePerms = substr(sprintf('%o', fileperms($resource)), -4);
			chmod($resource, 0775);
			//. $fileConvert = $this->exec("convert ".$resource." -strip -level 20,40% -blur 10x10 -colorspace Gray -contrast-stretch 10% -resize ".($size * 10)."x".($size * 10)." ".$file." ");
			//. $fileConvert = $this->exec("convert ".$resource." -strip -level 30,60% -blur 15x15 -colorspace Gray -contrast-stretch 15% -threshold 15% -resize ".($size * 1)."x".($size * 1)."! ".$file." ");
			$fileConvert = $this->exec("convert ".$resource." -strip -level 50,100% -blur 15x15 -colorspace Gray -contrast-stretch 5% -resize ".($size * 1 + 0)."x".($size * 1 + 0)."! ".$file." ");
			if (!file_exists($file))  {
				return array("return" => false, "reason" => "2d34sf");
			}
			if (isset($fileConvert, $fileConvert['return']) && $fileConvert['return'] == true) {
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
		            $dctProgress = $this->hash(array("type" => "dct", "pixels" => $row));
		            if (isset($dctProgress, $dctProgress['return'], $dctProgress['transformed']) && $dctProgress['return'] == true) {
		                $rows[$y] = $dctProgress['transformed'];
		            }else {
		                return array("return" => false, "reason" => "grete");
		            }
		        }
		        imagedestroy($resized);
		        for ($x = 0; $x < sqrt($size); $x++) {
		            for ($y = 0; $y < sqrt($size); $y++) {
		                $col[$y] = $rows[$y][$x];
		            }
		            $dctProgress = $this->hash(array("type" => "dct", "pixels" => $col));
		            if (isset($dctProgress, $dctProgress['return'], $dctProgress['transformed']) && $dctProgress['return'] == true) {
		                $matrix[$x] = $dctProgress['transformed'];
		            }else {
		                return array("return" => false, "reason" => "grete");
		            }
		        }
		        $pixels = [];
		        for ($y = 0; $y < sqrt($size); $y++) {
		            for ($x = 0; $x < sqrt($size); $x++) {
		                $pixels[] = $matrix[$y][$x];
		            }
		        }
		        $medianProgress = $this->hash(array("type" => "median", "pixels" => $pixels));
		        if (isset($medianProgress, $medianProgress['return'], $medianProgress['median']) && $medianProgress['return'] == true) {
		            $median = $medianProgress['median'];
		        }else {
		            return array("return" => false, "reason" => "wreqwe");
		        }
		        $hash = 0; $one = 1;
		        foreach ($pixels as $pixel) {
		            if ($pixel > $median) $hash |= $one;
		            $one = $one << 1;
		        }
			    if (file_exists($file))  {
					unlink($file);
				}
				$hash = abs($hash);
			    return array("return" => true, "hash" => $hash);
			}else {
				chmod($resource, $resourcePerms);
				if (file_exists($file))  {
					unlink($file);
				}
				return array("return" => false, "reason" => "");
			}
		}else if (in_array($type, ["difference"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 8;
			if ($resource == null || $size == null) {
				return array("return" => false, "reason" => "fd2");
			}
			if (!file_exists($resource)) {
				return array("return" => false, "reason" => "2ddfgsf");
			}
			$file = $resource.'_'.hash('md5', time().'::'.rand().'::'.rand().'::'.rand()).'.png';
			$resourcePerms = substr(sprintf('%o', fileperms($resource)), -4);
			chmod($resource, 0775);
			//. $fileConvert = $this->exec("convert ".$resource." -strip -level 20,40% -blur 20x20 -colorspace Gray -contrast-stretch 10% -threshold 20% -resize ".$size."x".$size." ".$file." ");
			//. $fileConvert = $this->exec("convert ".$resource." -strip -blur 20x20 -colorspace Gray -contrast-stretch 20% -threshold 10% -resize ".$size."x".$size."! ".$file." ");
			$fileConvert = $this->exec("convert ".$resource." -strip -level 50,100% -blur 15x15 -colorspace Gray -contrast-stretch 5% -resize ".($size * 1 + 0)."x".($size * 1 + 0)."! ".$file." ");
			if (!file_exists($file))  {
				return array("return" => false, "reason" => "2sdfdsf");
			}
			if (isset($fileConvert, $fileConvert['return']) && $fileConvert['return'] == true) {
				$fileResource = imagecreatefromstring(file_get_contents($file));
				chmod($resource, $resourcePerms);
				$width = $size;
				$heigth = $size;
			    $resized = imagecreatetruecolor($width, $heigth);
			    imagecopyresampled($resized, $fileResource, 0, 0, 0, 0, $width, $heigth, imagesx($fileResource), imagesy($fileResource));
			    imagedestroy($fileResource);
			    $hash = 0; $one = 1;
			    for ($y = 1; $y < $heigth; $y++) {
			    	if ($y == 1 || $y + 1 == $heigth) {
			    		//continue;
			    	}
			        $rgb = imagecolorsforindex($resized, imagecolorat($resized, 0, $y));
			        $left = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
			        for ($x = 1; $x < $width; $x++) {
			        	if ($x == 1 || $x + 1 == $heigth) {
				    		//continue;
				    	}
			            $rgb = imagecolorsforindex($resized, imagecolorat($resized, $x, $y));
			            $right = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
			            if ($left > $right) $hash |= $one;
			            $left = $right;
			            $one = $one << 1;
			        }
			    }
			    imagedestroy($resized);
			    if (file_exists($file))  {
					unlink($file);
				}
				$hash = abs($hash);
			    return array("return" => true, "hash" => $hash);
			}else {
				chmod($resource, $resourcePerms);
				if (file_exists($file))  {
					unlink($file);
				}
				return array("return" => false, "reason" => "");
			}
		}else if (in_array($type, ["point"])) {
			$resource = isset($object, $object['file']) ? $object['file'] : null;
			$size = isset($object, $object['size']) && is_numeric($object['size']) ? intval($object['size']) : 8;
			if ($resource == null || $size == null) {
				return array("return" => false, "reason" => "fd2");
			}
			if (!file_exists($resource)) {
				return array("return" => false, "reason" => "2ddfgsf");
			}
			$file = $resource.'_'.hash('md5', time().'::'.rand().'::'.rand().'::'.rand()).'.png';
			$resourcePerms = substr(sprintf('%o', fileperms($resource)), -4);
			chmod($resource, 0775);
			//. $fileConvert = $this->exec("convert ".$resource." -strip -level 20,40% -blur 20x20 -colorspace Gray -contrast-stretch 10% -threshold 20% -resize ".$size."x".$size." ".$file." ");
			//. $fileConvert = $this->exec("convert ".$resource." -strip -blur 20x20 -colorspace Gray -contrast-stretch 20% -threshold 10% -resize ".$size."x".$size."! ".$file." ");
			$fileConvert = $this->exec("convert ".$resource." -strip -level 50,100% -blur 15x15 -colorspace Gray -contrast-stretch 5% -resize ".($size * 2)."x".($size * 2)."! ".$file." ");
			if (!file_exists($file))  {
				return array("return" => false, "reason" => "2sdfdsf");
			}
			if (isset($fileConvert, $fileConvert['return']) && $fileConvert['return'] == true) {
				$fileResource = imagecreatefromstring(file_get_contents($file));
				chmod($resource, $resourcePerms);
				$width = $size;
				$heigth = $size;
			    $resized = imagecreatetruecolor($width, $heigth);
			    imagecopyresampled($resized, $fileResource, 0, 0, 0, 0, $width, $heigth, imagesx($fileResource), imagesy($fileResource));
			    imagedestroy($fileResource);
			    $hash = 0; $one = 1;
			    for ($y = 1; $y < $heigth; $y++) {
			        $rgb = imagecolorsforindex($resized, imagecolorat($resized, 0, $y));
			        $left = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
			        for ($x = 1; $x < $width; $x++) {
			            $rgb = imagecolorsforindex($resized, imagecolorat($resized, $x, $y));
			            $right = floor(($rgb['red'] + $rgb['green'] + $rgb['blue']) / 3);
			            if ($left > $right) $hash |= $one;
			            $left = $right;
			            $one = $one << 1;
			        }
			    }
			    imagedestroy($resized);
			    if (file_exists($file))  {
					unlink($file);
				}
				$hash = abs($hash);
			    return array("return" => true, "hash" => $hash);
			}else {
				chmod($resource, $resourcePerms);
				if (file_exists($file))  {
					unlink($file);
				}
				return array("return" => false, "reason" => "");
			}
		}else if (in_array($type, ["dct"])) {
			$pixels = isset($object, $object['pixels']) && is_array($object['pixels']) ? $object['pixels'] : null;
			if ($pixels == null) {
				return array("return" => false, "reason" => "");
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
				return array("return" => false, "reason" => "");
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
			return array("return" => false, "reason" => "");
		}
	}
}
?>