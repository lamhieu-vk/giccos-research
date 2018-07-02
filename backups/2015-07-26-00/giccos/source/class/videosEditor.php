<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class videosEditor {
    function __construct () {
        $GLOBALS["_videosEditor"] = $this;
        $this->class = $GLOBALS;
    }
    function copy ($path) {
        return copy($this->_tmp, $path);
    }
    function delete ($action) {
        return unlink($this->_tmp);
    }
    function move ($path) {
        return rename($this->_tmp, $path);
    }
    function exec ($command) {
        $command = str_replace(array("\n", "'"), array('', '"'), $command);
        $command = escapeshellcmd($command)." 2>&1";
        return exec($command);
    }
    function bitrate ($object) {
        if (isset($object['input']) && is_string($object['input'])) $input = $object['input']; else $input = null;
        if (isset($object['output']) && is_string($object['output'])) $output = $object['output']; else $output = $input;
        if (isset($object['bitrate']) && is_string($object['bitrate'])) $bitrate = $object['bitrate']; else $bitrate = "64k";
        if ($input != null && $output != null && $format != nullL) {
            $convert = $this->exec("ffmpeg -i {$input} -b:v {$bitrate} -bufsize {$bitrate} {$output}");
            if (!$convert) {
                return array("return" => false, "reason" => "");
            }else {
                return array("return" => true, "data" => "");
            }
        }else {
            return array("return" => false, "reason" => "");
        }
    }
    function framerate ($object) {
        if (isset($object['input']) && is_string($object['input'])) $input = $object['input']; else $input = null;
        if (isset($object['output']) && is_string($object['output'])) $output = $object['output']; else $output = $input;
        if (isset($object['framerate']) && is_string($object['framerate'])) $framerate = $object['framerate']; else $framerate = "30";
        if ($input != null && $output != null && $format != nullL) {
            $convert = $this->exec("ffmpeg -i {$input} -r {$framerate} {$output}");
            if (!$convert) {
                return array("return" => false, "reason" => "");
            }else {
                return array("return" => true, "data" => "");
            }
        }else {
            return array("return" => false, "reason" => "");
        }
    }
    function convert ($object) {
        if (isset($object['input']) && is_string($object['input'])) $input = $object['input']; else $input = null;
        if (isset($object['output']) && is_string($object['output'])) $output = $object['output']; else $output = $input;
        if (isset($object['format']) && is_string($object['format'])) $format = $object['format']; else $format = "mp4";
        if ($input != null && $output != null && $format != nullL) {
            $convert = $this->exec("ffmpeg -i {$input} -f {$format} {$output}");
            if (!$convert) {
                return array("return" => false, "reason" => "");
            }else {
                return array("return" => true, "data" => "");
            }
        }else {
            return array("return" => false, "reason" => "");
        }
    }
    function thumbnail ($object) {
        if (isset($object['input']) && is_string($object['input'])) $input = $object['input']; else $input = null;
        if (isset($object['output']) && is_string($object['output'])) $output = $object['output']; else $output = null;
        if (isset($object['time']) && is_string($object['time'])) $time = $object['time']; else $time = "0";
        if (isset($object['size']) && is_string($object['size'])) $size = $object['size']; else $size = "-vf scale=640x360,pad=640:480:0:60:black";
        if ($input != null && $output != null && $time != null && $size != null) {
            $get = $this->exec("ffmpeg -itsoffset -{$at}  -i {$input} -vcodec mjpeg -vframes 1 -an -f rawvideo {$size} {$output}");
            if (!$get) {
                return array("return" => false, "reason" => "");
            }else {
                return array("return" => true, "data" => "");
            }
        }else {
            return array("return" => false, "reason" => "");
        }
    }
}
?>