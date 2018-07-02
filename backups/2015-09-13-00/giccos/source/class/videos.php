<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class videos {
	function __construct () {
		$GLOBALS["_videos"] = $this;
		$this->class = $GLOBALS;
	}
	function callUserInfo () {
		if (isset($_SESSION["user"])) {
			$this->user = $_SESSION["user"];
		}else {
			$this->user = array(
				"login" => false, 
				"id" => 0, 
				"mode" => array(
					"type" => "guy", 
					"id" => $this->class['_client']->client(true)
				)
			);
		}
	}
	function guy ($object) {
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['guy'], $object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
		if (isset($object['guy'], $object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
		if (isset($object['author'], $object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author'], $object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "");
		}else if ($authorType == null || $authorId == null) {
			return array("return" => false, "reason" => "");
		}
		if ($guyType == "guy") {
			return array("return" => true, "guy" => 4);
		}
		if ($authorType == $guyType && $authorId == $guyId) {
			return array("return" => true, "guy" => 1);
		}else {
			if ($authorType == "user") {
				$isBlockedQuery = mysqli_query($db, "SELECT `id` FROM `users_block` WHERE (`user.id` = '{$authorId}' AND `guy.type` = '{guyType}' AND `guy.id` = '{$guyId}') OR (`user.id` = '{$guyId}' AND 'user' = '{$guyType}' AND `guy.type` = 'user' AND `guy.id` = '{$authorId}') LIMIT 1");
				if ($isBlockedQuery) $isBlocked = mysqli_num_rows($isBlockedQuery); else $isBlocked = 0;
				if ($isBlocked > 0) {
					return array("return" => true, "guy" => 5);
				}
				if ($guyType == "user") {
					$isFriendQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$authorId}' AND `guy.id` = '{$guyId}' LIMIT 1");
					if ($isFriendQuery) $isFriend = mysqli_num_rows($isFriendQuery); else $isFriend = 0;
					if ($isFriend > 0) {
						return array("return" => true, "guy" => 2);
					}
					$isMutualFriendsQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$authorId}' AND `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$guyId}') LIMIT 1");
					$isMutualFriends = mysqli_num_rows($isMutualFriendsQuery);
					if ($isMutualFriends > 0) {
						return array("return" => true, "guy" => 3);
					}
					return array("return" => true, "guy" => 4);
				}else if ($guyType == "groups") {
					return array("return" => true, "guy" => 4);
				}else if ($guyType == "pages") {
					return array("return" => true, "guy" => 4);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if ($authorType == "groups") {
				return array("return" => true, "guy" => 4);
			}else if ($authorType == "pages") {
				return array("return" => true, "guy" => 4);
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function exists ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$db = $this->class['_db']->port('beta');
		//.
		$videoLabel = isset($object['label']) && is_string($object['label']) ? $_tool->convertDatabaseString($object['label']) : null;
		$videoValue = isset($object['value']) && is_string($object['value']) ? $_tool->convertDatabaseString($object['value']) : null;
		if ($videoLabel == null || $videoValue == null) {
			return array("return" => false, "reason" => "");
		}
		$existsVideoRequest = "SELECT `id` FROM `videos_info` WHERE `".$videoLabel."` = '".$videoValue."' LIMIT 1;";
		$existsVideoQuery = mysqli_query($db, $existsVideoRequest);
		if (!$existsVideoQuery) {
			return array("return" => false, "reason" => "");
		}else {
			if (mysqli_num_rows($existsVideoQuery) == 0) {
				return array("return" => true, "exists" => false);
			}else {
				return array("return" => true, "exists" => true);
			}
		}
	}
	function fetch ($object) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_user = $this->class['_user'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['guy'], $object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $_tool->convertDatabaseString($object['guy']['type']); else $guyType = null;
		if (isset($object['guy'], $object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = intval($object['guy']['id']); else $guyId = null;
		if ($guyType == null || $guyId == null) {
			return array("return" => false, "reason" => "1");
		}
		$videosRows = isset($object['rows']) && is_array($object['rows']) && count($object['rows']) > 0 ? $object['rows'] : null;
		$videosLabel = isset($object['label']) && is_string($object['label']) ? $object['label'] : null;
		$videosValue = isset($object['value']) && is_string($object['value']) ? $object['value'] : null;
		if ($videosLabel == null || $videosValue == null) {
			return array("return" => false, "reason" => "");
		}
		if ($videosRows == null) {
			return array("return" => false, "reason" => "");
		}
		if (in_array("*", $videosRows)) {
			$videosSelect = "*";
		}else {
			$videosSelect = "`".implode($videosRows,"`, `")."`";
		}
		$getVideosRequest = "SELECT ".$videosSelect." FROM `videos_info` WHERE `".$videosLabel."` = '".$videosValue."';";
		$getVideosQuery = mysqli_query($db, $getVideosRequest);
		if (!$getVideosQuery) {
			return array("return" => false, "reason" => "");
		}else {
			$videosArr = array();
			while ($videoThis = mysqli_fetch_assoc($getVideosQuery)) {
				if (isset($videoThis['user.id'])) {
					$videoThis['user']['id'] = $videoThis['user.id'];
				}
				if (isset($videoThis['author.type'])) {
					$videoThis['author']['type'] = $videoThis['author.type'];
				}
				if (isset($videoThis['author.id'])) {
					$videoThis['author']['id'] = $videoThis['author.id'];
				}
				if (isset($videoThis['private.view'])) {
					$videoThis['private']['view'] = $videoThis['private.view'];
					unset($videoThis['private.view']);
				}
				if (isset($videoThis['private.comment'])) {
					$videoThis['private']['comment'] = $videoThis['private.comment'];
					unset($videoThis['private.comment']);
				}
				if (isset($videoThis['private.share'])) {
					$videoThis['private']['share'] = $videoThis['private.share'];
					unset($videoThis['private.share']);
				}
				if (isset($videoThis['time'])) {
					$videoThis['date'] = $videoThis['time'];
				}
				if (isset($videoThis['name'])) {
					$videoThis['title'] = $videoThis['name'];
				}else if (isset($videoThis['nameraw'])) {
					$videoThis['title'] = $videoThis['nameraw'];
				}
				if (isset($videoThis['file.thumbnail'])) {
					$videoThis['file']['thumbnail'] = $videoThis['file.thumbnail'];
					$videoThis['source']['thumbnail'] = $_tool->links('videos/raw/thumbnail/'.$videoThis['file']['thumbnail']);
					unset($videoThis['file.thumbnail']);
				}
				if (isset($videoThis['file.audio'])) {
					$videoThis['file']['audio'] = $videoThis['file.audio'];
					$videoThis['source']['audio'] = null;
					unset($videoThis['file.audio']);
				}
				if (isset($videoThis['file.hd'])) {
					$videoThis['file']['hd'] = $videoThis['file.hd'];
					$videoThis['source']['hd'] = $_tool->links('videos/raw/'.$videoThis['file']['hd']);
					unset($videoThis['file.hd']);
				}
				if (isset($videoThis['file.vga'])) {
					$videoThis['file']['vga'] = $videoThis['file.vga'];
					$videoThis['source']['vga'] = $_tool->links('videos/raw/'.$videoThis['file']['vga']);
					unset($videoThis['file.vga']);
				}
				if (isset($videoThis['file.qvga'])) {
					$videoThis['file']['qvga'] = $videoThis['file.qvga'];
					$videoThis['source']['qvga'] = $_tool->links('videos/raw/'.$videoThis['file']['qvga']);
					unset($videoThis['file.qvga']);
				}
				if (isset($videoThis['secret.thumbnail'])) {
					$videoThis['secret']['thumbnail'] = $videoThis['secret.thumbnail'];
					unset($videoThis['secret.thumbnail']);
				}
				if (isset($videoThis['secret.audio'])) {
					$videoThis['secret']['audio'] = $videoThis['secret.audio'];
					unset($videoThis['secret.audio']);
				}
				if (isset($videoThis['secret.hd'])) {
					$videoThis['secret']['hd'] = $videoThis['secret.hd'];
					unset($videoThis['secret.hd']);
				}
				if (isset($videoThis['secret.vga'])) {
					$videoThis['secret']['vga'] = $videoThis['secret.vga'];
					unset($videoThis['secret.vga']);
				}
				if (isset($videoThis['secret.qvga'])) {
					$videoThis['secret']['qvga'] = $videoThis['secret.qvga'];
					unset($videoThis['secret.qvga']);
				}
				if (isset($videoThis['path.thumbnail'])) {
					$videoThis['path']['thumbnail'] = $videoThis['path.thumbnail'];
					unset($videoThis['path.thumbnail']);
				}
				if (isset($videoThis['path.audio'])) {
					$videoThis['path']['audio'] = $videoThis['path.audio'];
					unset($videoThis['path.audio']);
				}
				if (isset($videoThis['path.hd'])) {
					$videoThis['path']['hd'] = $videoThis['path.hd'];
					unset($videoThis['path.hd']);
				}
				if (isset($videoThis['path.vga'])) {
					$videoThis['path']['vga'] = $videoThis['path.vga'];
					unset($videoThis['path.vga']);
				}
				if (isset($videoThis['path.qvga'])) {
					$videoThis['path']['qvga'] = $videoThis['path.qvga'];
					unset($videoThis['path.qvga']);
				}
				if (isset($videoThis['file.datetime'])) {
					$videoThis['file']['datetime'] = $videoThis['file.datetime'];
					unset($videoThis['file.datetime']);
				}
				if (isset($videoThis['file.size'])) {
					$videoThis['file']['size'] = $videoThis['file.size'];
					unset($videoThis['file.size']);
				}
				if (isset($videoThis['dimension.height'])) {
					$videoThis['dimension']['height'] = $videoThis['dimension.height'];
					unset($videoThis['dimension.height']);
				}
				if (isset($videoThis['dimension.width'])) {
					$videoThis['dimension']['width'] = $videoThis['dimension.width'];
					unset($videoThis['dimension.width']);
				}
				if (isset($videoThis['audio.codec_name'])) {
					$videoThis['audio']['codec_name'] = $videoThis['audio.codec_name'];
					unset($videoThis['audio.codec_name']);
				}
				if (isset($videoThis['audio.codec_long_name'])) {
					$videoThis['audio']['codec_long_name'] = $videoThis['audio.codec_long_name'];
					unset($videoThis['audio.codec_long_name']);
				}
				if (isset($videoThis['audio.profile'])) {
					$videoThis['audio']['profile'] = $videoThis['audio.profile'];
					unset($videoThis['audio.profile']);
				}
				if (isset($videoThis['audio.codec_type'])) {
					$videoThis['audio']['codec_type'] = $videoThis['audio.codec_type'];
					unset($videoThis['audio.codec_type']);
				}
				if (isset($videoThis['audio.codec_time_base'])) {
					$videoThis['audio']['codec_time_base'] = $videoThis['audio.codec_time_base'];
					unset($videoThis['audio.codec_time_base']);
				}
				if (isset($videoThis['audio.codec_tag_string'])) {
					$videoThis['audio']['codec_tag_string'] = $videoThis['audio.codec_tag_string'];
					unset($videoThis['audio.codec_tag_string']);
				}
				if (isset($videoThis['audio.channels'])) {
					$videoThis['audio']['channels'] = $videoThis['audio.channels'];
					unset($videoThis['audio.channels']);
				}
				if (isset($videoThis['audio.channel_layout'])) {
					$videoThis['audio']['channel_layout'] = $videoThis['audio.channel_layout'];
					unset($videoThis['audio.channel_layout']);
				}
				if (isset($videoThis['audio.duration'])) {
					$videoThis['audio']['duration'] = $videoThis['audio.duration'];
					unset($videoThis['audio.duration']);
				}
				if (isset($videoThis['audio.bit_rate'])) {
					$videoThis['audio']['bit_rate'] = $videoThis['audio.bit_rate'];
					unset($videoThis['audio.bit_rate']);
				}
				$videosArr[] = $videoThis;
			}
			$videosCount = count($videosArr);
			return array("return" => true, "count" => $videosCount, "data" => $videosArr);
		}
	}
}
?>