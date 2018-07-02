<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class photosEditor {
    public static function factory($image, $type = false){
        return new photosEditor($image, $type);
    }
    function __construct($image, $type = false) {
        $GLOBALS["_photosEditor"] = $this;
        $this->class = $GLOBALS;
        $this->photos_token = $_SESSION["client"]['token']['cache']['photos'];
        if($type == true){
            $img['name'] = "";
            $img['tmp'] = $image;
            $img['secret'] = hash('crc32', md5_file($image));
        }else {
            $img = $image;
        }
        if (file_exists($img['tmp'])) {
            $imgSize = getimagesize($img['tmp']);
            $this->photos_width = $imgSize[0];
            $this->photos_height = $imgSize[1];
            $this->photos_mime = $imgSize['mime'];
            $this->tempfile($img);
        }else {
            throw new Exception('File not found. Aborting.');
        }
    }
    function info () {
        return array(
            'secret' => $this->photos_secret,
            'name' => $this->photos_name,
            'mime' => $this->photos_mime,
            'tmp' => $this->photos_tmp, 
            'height' => $this->photos_height, 
            'width' => $this->photos_width
        );
    }
    function tempfile ($image) {
        $this->photos_name = $image['name'];
        $this->photos_tmp = $this->class['_client']->root().$image['tmp'];
        $this->photos_secret = $image['secret'];
        #$this->class['_tool']->copy($this->photos_image, $this->photos_tmp);
    }
    function tmp () {
        return $this->photos_tmp;
    }
    function copy ($path) {
        return $this->class['_tool']->copy($this->photos_tmp, $path);
    }
    function delete ($action) {
        return unlink($this->photos_tmp);
    }
    function move ($path) {
        return rename($this->photos_tmp, $path);
    }
    function output ($value = false) {
        if(!$value){
            rename($this->photos_tmp, $this->photos_output);
        }else {
            $image = base64_encode(file_get_contents($this->photos_tmp));
            unlink($this->photos_tmp);
            return $image;
        }
    }
    function execute ($command) {
        $command = str_replace(array("\n", "'"), array('', '"'), $command);
        $command = escapeshellcmd($command)." 2>&1";
        return exec($command);
    }
    function colortone ($input, $color, $level, $type = 0) {
        $args[0] = $level;
        $args[1] = 100 - $level;
        $negate = $type == 0? '-negate': '';
        $this->execute("convert {$input} ( -clone 0 -fill '$color' -colorize 100% ) ( -clone 0 -colorspace gray $negate ) -compose blend -define compose:args=$args[0],$args[1] -composite {$input}");
    }
    function border ($input, $width = 5, $color = null) {
        $this->execute("convert $input -bordercolor $color -border {$width}x{$width} $input");
    }
    function frame ($input, $frame) {
        $this->execute("convert $input ( '$frame' -resize {$this->photos_width}x{$this->photos_height}! -unsharp 1.5×1.0+1.5+0.02 ) -flatten $input");
    }
    function vignette ($input, $color_1 = 'none', $color_2 = 'black', $crop_factor = 3) {
        $crop_x = floor($this->photos_width * $crop_factor);
        $crop_y = floor($this->photos_height * $crop_factor);
        $this->execute("convert ( {$input} ) ( -size {$crop_x}x{$crop_y} radial-gradient:$color_1-$color_2 -gravity center -crop {$this->photos_width}x{$this->photos_height}+0+0 +repage ) -compose multiply -flatten {$input}");
    }
    function filter ($id) {        if ($id == 1) {
            $this->colortone($this->photos_tmp, '#21399C', 25, 0);
            $this->execute("convert {$this->photos_tmp} -channel R -level 5% -channel G -level 10% {$this->photos_tmp}");
            $this->execute("convert {$this->photos_tmp} -sigmoidal -contrast 3,0%  {$this->photos_tmp}");
        }else if ($id == 2) {
            $this->colortone($this->photos_tmp, '#21399C', 15, 0);
            $this->execute("convert {$this->photos_tmp} -channel G -level 5% -channel B -level 15% -modulate 90,45 -fill 'rgb(231, 189, 20)' -colorize 15 -gamma 0.75 -sigmoidal-contrast 2,0%  {$this->photos_tmp}");
            $this->execute("convert {$this->photos_tmp} -sigmoidal-contrast 4,0%  {$this->photos_tmp}");
        }else if ($id == 3) {
            $this->colortone($this->photos_tmp, '#330000', 15, 0);
            $this->execute("convert {$this->photos_tmp} -channel R -level 10% -channel G -level 10% -modulate 100,50 -contrast {$this->photos_tmp}");
            $this->execute("convert {$this->photos_tmp} -sigmoidal-contrast 3,0%  {$this->photos_tmp}");
        }else if ($id == 4) {
            $this->execute("convert {$this->photos_tmp} -channel B -level 10% -channel R -level 5%  {$this->photos_tmp}");
            $this->execute("convert {$this->photos_tmp} -sigmoidal-contrast 2,0%  {$this->photos_tmp}");
        }else if ($id == 5) {
            $this->execute("convert $this->photos_tmp -modulate 120,10,100 -fill '#222b6d' -colorize 10 -gamma 0.90 -contrast -contrast $this->photos_tmp");
        }else if ($id == 6) {
            $this->colortone($this->photos_tmp, '#330000', 25, 0);
            $this->execute("convert {$this->photos_tmp} -channel G -channel B -level 10% -sigmoidal-contrast 2,0%  {$this->photos_tmp}");
            $this->colortone($this->photos_tmp, '#FFFFFF', 15, 0);
            $this->execute("convert {$this->photos_tmp} -sigmoidal-contrast 2,0%  {$this->photos_tmp}");
        }else if ($id == 7) {
            $this->execute("convert {$this->photos_tmp} -channel R -level 20% -channel G -level 20% $this->photos_tmp");
            $this->vignette($this->photos_tmp);
        }else if ($id == 8) {
            $this->colortone($this->photos_tmp, '#330000', 25, 0);
            $this->execute("convert $this->photos_tmp -modulate 150,80,100 -gamma 0.50 -contrast -contrast $this->photos_tmp");
            $this->execute("convert {$this->photos_tmp} -sigmoidal-contrast 1,0%  {$this->photos_tmp}");
        }
    }
    function sharpen ($type = 'sharpen', $value = '0x0') {
        $this->execute("convert {$this->photos_tmp} -{$type} {$value}  {$this->photos_tmp}");
    }
    function brightness ($value = '0', $type = false) {
        if ($type == false) {
            $this->execute("convert {$this->photos_tmp} -brightness-contrast {$value} {$this->photos_tmp}");
        }else {
            $this->execute("convert {$this->photos_tmp} -brightness-contrast {$value}% {$this->photos_tmp}");
        }
    }
    function sigmoidal ($value = '0') {
        $this->execute("convert {$this->photos_tmp} -sigmoidal-contrast {$value}% {$this->photos_tmp}");
    }
    function stretch  ($value = '0,0', $type = false) {
        if ($type == false) {
            $this->execute("convert {$this->photos_tmp} -contrast-stretch {$value} {$this->photos_tmp}");
        }else {
            $this->execute("convert {$this->photos_tmp} -contrast-stretch {$value}% {$this->photos_tmp}");
        }
    }
    function rotate ($value = '0') {
        $this->execute("convert {$this->photos_tmp} -rotate {$value} {$this->photos_tmp}");
    }
    function resize ($width = 0, $height = 0) {
        if ($width != 0 && $height == 0) {
            $this->execute("convert {$this->photos_tmp} -resize {$width}x {$this->photos_tmp}");
        }else if($width == 0 && $height != 0) {
            $this->execute("convert {$this->photos_tmp} -resize x{$height} {$this->photos_tmp}");
        }else {
            $this->execute("convert {$this->photos_tmp} -resize {$width}x{$height} {$this->photos_tmp}");
        }
    }
    function thumbnail ($value = 0) {
        $this->execute("convert {$this->photos_tmp} -thumbnail {$value}x{$value}^ \ -gravity center -extent {$value}x{$value}  {$this->photos_tmp}");
    }
    function crop ($width, $height, $x = 0, $y = 0) {
        $this->execute("convert {$this->photos_tmp} -crop {$width}x{$height}+{$x}+{$y} {$this->photos_tmp}");
    }
}
?>