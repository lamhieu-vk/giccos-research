<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')) {
    die(header('HTTP/1.0 404 Not Found'));
}
Class feed {
	function __construct () {
		$GLOBALS["_feed"] = $this;
		$this->class = $GLOBALS;
	}
	function callUserInfo () {
		if (isset($_SESSION["user"])) {
			$this->user = $_SESSION["user"];
		}else {
			$this->user = array("login" => false, "id" => 0, "mode" => array("type" => "guy", "id" => $this->class['_client']->client(true)));
		}
	}
	function status_list () {

	}
	function status_block ($object) {
		if (isset($object['id']) && (is_numeric($object['id']) || is_string($object['id']))) $id = $object['id']; else $id = 0;
		if ($id > 0) {
			$this->callUserInfo();
			$user = $this->user;
			$query = mysqli_query($this->class['_db']->port('beta'),"SELECT `id` FROM `status` WHERE `id` = '{$id}' AND (`author.type` != '{$user['mode']['type']}' OR `author.id` != '{$user['mode']['id']}')");
			$num = mysqli_num_rows($query);
			if ($num > 0) {
				$insert = mysqli_query($this->class['_db']->port('beta'),"INSERT INTO `status_block` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES (null, '{$this->class['_tool']->timeNow()}', '{$id}', '{$user['mode']['type']}', '{$user['mode']['id']}')");
				if (!$insert) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true);
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function status_quickinfo ($object) {
		if (isset($object['key']) && (is_numeric($object['key']) || is_string($object['key']))) $key = $object['key']; else $key = null;
		if ($key != null) {
			$this->callUserInfo();
			$user = $this->user;
			$query = mysqli_query($this->class['_db']->port('beta'),"SELECT * FROM `status` WHERE `id` = '{$key}' OR `token` = '{$key}' LIMIT 1");
			$num = mysqli_num_rows($query);
			if ($num > 0) {
				$fetch = mysqli_fetch_assoc($query);
				$info = array("id" => $fetch['id'], "token" => $fetch['token'], "time" => $fetch['time'], "edit" => $fetch['edit'], "user.id" => $fetch['user.id'], "author" => array("type" => $fetch['author.type'], "id" => $fetch['author.id']));
				return array("return" => true, "data" => $info);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function status_edit ($object) {
		if (isset($object['id']) && (is_numeric($object['id']) || is_string($object['id']))) $id = $object['id']; else $id = 0;
		if ($id > 0) {
			$this->callUserInfo();
			$user = $this->user;
			if (!isset($user['login']) || !$user['login']) {
				return array("return" => false, "reason" => "");
			}
			$query = mysqli_query($this->class['_db']->port('beta'),"SELECT `id`, `token`, `time`, `content` FROM `status` WHERE `id` = '{$id}' AND `author.type` = '{$user['mode']['type']}' AND `author.id` = '{$user['mode']['id']}'");
			$length = mysqli_num_rows($query);
			if ($length > 0) {
				if (isset($object['rows']) && is_array($object['rows'])) $rows = $object['rows']; else $rows = null;
				if ($rows != null) {
					$c = 0;
					$set = null;
					$status = mysqli_fetch_assoc($query);
					$token = $status['token'];
					$change = false;
					foreach ($rows as $key => $value) {
						if ($key == "content") {
							mysqli_query($this->class['_db']->port('beta'),"DELETE FROM `status_hashtag` WHERE `status.id` = '{$status['id']}'");
							$hashtag_match = preg_match_all($this->class['_parameter']->get('regex_hashtag'), $value, $hashtag);
							if ($hashtag_match) {
								$hashtag_value = 1;
								$hashtag = $hashtag[2];
								$hashtagCache = array();
								for ($i = 0; $i < count($hashtag); $i++) {
									if (!in_array($hashtag[$i], $hashtagCache)) {
										$hashtagCache[] = $hashtag[$i];
									}
								}
								foreach ($hashtagCache as $i => $tags) {
									mysqli_query($this->class['_db']->port('beta'),"INSERT INTO `status_hashtag` (`id`, `status.id`, `hashtag`) VALUES (null, '{$status['id']}', '{$tags}')");
								}
								$tags = null;
								mysqli_query($this->class['_db']->port('beta'),"UPDATE `status` SET `hashtag` = '1' WHERE `id` = '{$status['id']}'");
							}else {
								mysqli_query($this->class['_db']->port('beta'),"UPDATE `status` SET `hashtag` = '0' WHERE `id` = '{$status['id']}'");
							}
							$value = $this->class['_tool']->hash('encode', $this->class['_tool']->convertDatabaseString($value), $this->class['_parameter']->get('hash_status_content').'::'.$token);
							if ($status['content'] == $value) {
								continue;
							}else {
								mysqli_query($this->class['_db']->port('beta'),"INSERT INTO `status_edit` (`id`, `status.id`, `time`, `content`) VALUES (NULL, '{$status['id']}', '{$status['time']}', '{$status['content']}')");
								$change = true;
							}
						}else if (preg_match("/^(private)+/", $key)) {
							$rows[preg_replace("/(\-\>)/", ".", $key)] = $value;
							unset($rows[$key]);
							if (!preg_match("/([0-9]+)/", $value)) {
								unset($rows[$key]);
							}
							$change = true;
						}
						if ($c == 0) {
							$set .= "`{$key}` = '{$value}'";
						}else if($c > 0) {
							$set .= ", `{$key}` = '{$value}'";
						}
						$c++;
					}
					if (!$change) {
						return array("return" => false, "reason" => "");
					}else {
						$sql = "UPDATE `status` SET {$set}, `edit` = '{$this->class['_tool']->timeNow()}' WHERE `id` = '{$status['id']}'";
						$update = mysqli_query($this->class['_db']->port('beta'), $sql);
						if (!$update) {
							return array("return" => false, "reason" => "");
						}else {
							$this->class['_logs']->actions("add", array("action" => "edit", "things" => "status", "things_id" => $status['id']));
							return array("return" => true);
						}
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function status_remove ($object) {
		if (isset($object) && is_array($object)) {
			if (isset($object['id']) && (is_numeric($object['id']) || is_string($object['id']))) $id = $object['id']; else $id = 0;
			if (isset($object['private']) && is_bool($object['private'])) $private = $object['private']; else $private = true;
			if ($id > 0) {
				$db = $this->class['_db']->port('beta');
				if ($private == true) {
					if (isset($object['author'])) $author = $object['author']; else $author = null;
					if (is_array($author) && isset($author['type']) && isset($author['id'])) {
						$sql = "SELECT * FROM `status` WHERE `id` = '{$id}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}'";
					}else {
						return array("return" => false, "reason" => "ERROR#FEEDS_012");
					}
				}else if ($private == false) {
					$sql = "SELECT * FROM `status` WHERE `id` = '{$id}'";
				}
				$query = mysqli_query($this->class['_db']->port('beta'),$sql);
				$length = mysqli_num_rows($query);
				if ($length == 0) {
					if ($private == true) {
						return array("return" => false, "reason" => "ERROR#FEEDS_012");
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					$status = mysqli_fetch_assoc($query);
					if ($status['type'] == "status") {
						//.
					}else if ($status['type'] == "photos") {
						$media_query = mysqli_query($db, "SELECT * FROM `status_photos` WHERE `status.id` = '{$status['id']}'");
						while ($media_fetch = mysqli_fetch_assoc($media_query)) {
							$media_remove = $this->class['_media']->data("photos", array("action" => "delete", "label" => "id", "value" => $media_fetch['photos.id'], "private" => true, "author" => array("type" => $status['author.type'], "id" => $status['author.id'])));
						}
						mysqli_query($db, "DELETE FROM `status_photos` WHERE `status.id` = '{$status['id']}'");
					}else if ($status['type'] == "music") {
						$media_query = mysqli_query($db, "SELECT * FROM `status_music` WHERE `status.id` = '{$status['id']}'");
						while ($media_fetch = mysqli_fetch_assoc($media_query)) {
							$media_remove = $this->class['_media']->data("music", array("action" => "delete", "label" => "id", "value" => $media_fetch['music.id'], "private" => true, "author" => array("type" => $status['author.type'], "id" => $status['author.id'])));
						}
						mysqli_query($db, "DELETE FROM `status_music` WHERE `status.id` = '{$status['id']}'");
					}else if ($status['type'] == "videos") {
						$media_query = mysqli_query($db, "SELECT * FROM `status_videos` WHERE `status.id` = '{$status['id']}'");
						while ($media_fetch = mysqli_fetch_assoc($media_query)) {
							$media_remove = $this->class['_media']->data("videos", array("action" => "delete", "label" => "id", "value" => $media_fetch['videos.id'], "private" => true, "author" => array("type" => $status['author.type'], "id" => $status['author.id'])));
						}
						mysqli_query($db, "DELETE FROM `status_videos` WHERE `status.id` = '{$status['id']}'");
					}else if ($status['type'] == "cited") {
						$media_query = mysqli_query($db, "SELECT * FROM `status_cited` WHERE `status.id` = '{$status['id']}'");
						while ($media_fetch = mysqli_fetch_assoc($media_query)) {
							$media_this_query = mysqli_query($db, "SELECT * FROM `cited` WHERE `id` = '{$media_fetch['cited.id']}' AND `author.type` = '{$status['author.type']}' AND `author.id` = '{$status['author.id']}'");
							$media_this_length = mysqli_num_rows($media_this_query);
							if ($media_this_length > 0) {
								$media_this = mysqli_fetch_assoc($media_this_query);
								if ($media_this['photos.id'] != '0') {
									$media_remove = $this->class['_media']->data("photos", array("action" => "delete", "label" => "id", "value" => $media_this['photos.id'], "private" => true, "author" => array("type" => $status['author.type'], "id" => $status['author.id'])));
								}
								mysqli_query($db, "DELETE FROM `cited` WHERE `id` = '{$media_fetch['cited.id']}' AND `author.type` = '{$status['author.type']}' AND `author.id` = '{$status['author.id']}'");
							}
						}
						mysqli_query($db, "DELETE FROM `status_cited` WHERE `status.id` = '{$status['id']}'");
					}
					if ($status['edit'] != '0') {
						mysqli_query($db, "DELETE FROM `status_edit` WHERE `status.id` = '{$status['id']}'");
					}
					if ($status['usertag'] != '0') {
						mysqli_query($db, "DELETE FROM `status_usertag` WHERE `status.id` = '{$status['id']}'");
					}
					if ($status['hashtag'] != '0') {
						mysqli_query($db, "DELETE FROM `status_hashtag` WHERE `status.id` = '{$status['id']}'");
					}
					if ($status['places'] != '0') {
						mysqli_query($db, "DELETE FROM `status_places` WHERE `status.id` = '{$status['id']}'");
					}
					if ($status['mood'] != '0') {
						mysqli_query($db, "DELETE FROM `status_mood` WHERE `status.id` = '{$status['id']}'");
					}
					$block_length = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_block` WHERE `status.id` = '{$status['id']}'"));
					if ($block_length > 0) {
						mysqli_query($db, "DELETE FROM `status_block` WHERE `status.id` = '{$status['id']}'");
					}
					$follow_length = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_follow` WHERE `status.id` = '{$status['id']}'"));
					if ($follow_length > 0) {
						mysqli_query($db, "DELETE FROM `status_follow` WHERE `status.id` = '{$status['id']}'");
					}
					$favorite_length = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_favorite` WHERE `status.id` = '{$status['id']}'"));
					if ($favorite_length > 0) {
						mysqli_query($db, "DELETE FROM `status_favorite` WHERE `status.id` = '{$status['id']}'");
					}
					$comment_length = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `status.id` = '{$status['id']}'"));
					if ($comment_length > 0) {
						$comment_query = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `status.id` = '{$status['id']}'");
						while ($comment_fetch = mysqli_fetch_assoc($comment_query)) {
							mysqli_query($db, "DELETE FROM `status_comment_favorite` WHERE `comment.id` = '{$comment_fetch['id']}'");
							mysqli_query($db, "DELETE FROM `status_comment` WHERE `id` = '{$comment_fetch['id']}'");
						}
					}
					$share_length = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_share` WHERE `this.id` = '{$status['id']}'"));
					if ($share_length > 0) {
						mysqli_query($db, "DELETE FROM `status_share` WHERE `this.id` = '{$status['id']}'");
					}
					$invite_length = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_invite` WHERE `status.id` = '{$status['id']}'"));
					if ($invite_length > 0) {
						mysqli_query($db, "DELETE FROM `status_invite` WHERE `status.id` = '{$status['id']}'");
					}
					mysqli_query($db, "DELETE FROM `status` WHERE `id` = '{$status['id']}'");
					$this->class['_logs']->actions("add", array("action" => "remove", "things" => "status", "things_id" => $status['id']));
					return array("return" => true);
				}
			}
		}
	}
	function status_add ($object) {
		if (isset($object) && is_array($object)) {
			$this->callUserInfo();
			if (!isset($this->user['login']) || !$this->user['login']) {
				return array("return" => false, "reason" => "");
			}else {
				$_storage = $this->class['_storage'];
				$_tool = $this->class['_tool'];
				$_parameter = $this->class['_parameter'];
				$_client = $this->class['_client'];
				$_analysis = $this->class['_analysis'];
				$_media = $this->class['_media'];
				$_logs = $this->class['_logs'];
				$db = $this->class['_db']->port('beta');
			}
			$token = hash('crc32', time().'::('.$author['type'].'_'.$author['id'].')'.'::'.rand());
			$display = hash('md5', $token);
			$time = time();
			$edit = false;
			if (isset($object['private']) && is_array($object['private'])) {
				if (isset($object['private']['view'])) {
					$private['view'] = $object['private']['view'];
				}
				if (isset($object['private']['comment'])) {
					$private['comment'] = $object['private']['comment'];
				}
				if (isset($object['private']['share'])) {
					$private['share'] = $object['private']['share'];
				}
			}
			if (!isset($private['view'])) {
				$private['view'] = $this->user['private.status.view'];
			}
			if (!isset($private['comment'])) {
				$private['comment'] = $this->user['private.status.comment'];
			}
			if (!isset($private['share'])) {
				$private['share'] = $this->user['private.status.share'];
			}
			$type = $object['type'];
			$content = $object['content'];
			$hashtag_match = preg_match_all($this->class['_parameter']->get('regex_hashtag'), $content, $hashtag);
			if ($hashtag_match) {
				$hashtag_value = 1;
				$hashtag = $hashtag[2];
			}else {
				$hashtag_value = 0;
			}
			if (isset($object['usertag']) && is_array($object['usertag']) && $object['usertag'] != null) {
				$this->usertag['type'] = 1;
			}else {
				$this->usertag['type'] = 0;
			}
			if (isset($object['places']) && is_array($object['places']) && $object['places'] != null) {
				$places = 1;
			}else {
				$places = 0;
			}
			if (isset($object['mood']) && is_array($object['mood']) && $object['mood'] != null) {
				$mood = 1;
			}else {
				$mood = 0;
			}
			$link = $share = 0;
			$content = $_tool->hash('encode', $_tool->convertDatabaseString($content), $this->class['_parameter']->get('hash_status_content').'::'.$token);
			$insert = mysqli_query($db, "INSERT INTO `status` (`id`, `token`, `display`, `time`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES (null, '{$token}', '{$display}', '{$time}', '{$edit}', '{$this->user['id']}', '{$this->user['mode']['type']}', '{$this->user['mode']['id']}', '{$private['view']}', '{$private['comment']}', '{$private['share']}', '{$type}', '{$content}', '{$this->usertag['type']}', '{$hashtag_value}', '{$places}', '{$mood}', '{$link}', '{$share}')");
			$status['id'] = mysqli_insert_id($db);
			if ($this->usertag['type'] > 0) {
				foreach ($object['usertag'] as $value) {
					if ($value['type'] == "users") {
						$value['type'] = "user";
					}
					mysqli_query($db, "INSERT INTO `status_usertag` (`id`, `status.id`, `guy.type`, `guy.id`) VALUES (null, '{$status['id']}', '{$value['type']}', '{$value['id']}')");
				}
			}
			if ($hashtag_value > 0) {
				$hashtagCache = array();
				for ($i = 0; $i < count($hashtag); $i++) {
					if (!in_array($hashtag[$i], $hashtagCache)) {
						$hashtagCache[] = strtolower($hashtag[$i]);
					}
				}
				foreach ($hashtagCache as $i => $value) {
					mysqli_query($db, "INSERT INTO `status_hashtag` (`id`, `status.id`, `hashtag`) VALUES (null, '{$status['id']}', '{$value}')");
				}
			}
			if (isset($places) && $places > 0) {
				$places = array();
				if (isset($object['places']['code']) && $object['places']['code'] != null) {
					$places_get = $this->class['_maps']->places(true, array("type" => "get", "rows" => "`id`", "code" => $object['places']['code']));
					if ($places_get['return'] == true) {
						$places['value'] = $places_get['data']['id'];
					}else {
						$places_add = $this->class['_maps']->places(true, array("type" => "add", "code" => $object['places']['code']));
						if ($places_add['return'] == true) {
							$places['value'] = $places_add['data']['id'];
						}
					}
					$places['type'] = 1;
					$places['insert'] = true;
				}else if (isset($object['places']['address']) && $object['places']['address'] != null) {
					$places['type'] = 2;
					$places['value'] = $object['places']['address'];
					$places['insert'] = true;
				}
				if ($places['insert'] == true) {
					mysqli_query($db, "INSERT INTO `status_places` (`id`, `status.id`, `type`, `value`) VALUES (null, '{$status['id']}', '{$places['type']}', '{$places['value']}')");
				}
			}
			if (isset($mood) && $mood > 0) {
				$mood = array();
				if (isset($object['mood']['code']) && $object['mood']['code'] != null) {
					$mood['type'] = 1;
					$mood['value'] = $object['mood']['code'];
					$mood['insert'] = true;
				}else if (isset($object['mood']['text']) && $object['mood']['text'] != null) {
					$mood['type'] = 2;
					$mood['value'] = $object['mood']['text'];
					$mood['insert'] = true;
				}
				if ($mood['insert'] == true) {
					mysqli_query($db, "INSERT INTO `status_mood` (`id`, `status.id`, `type`, `value`) VALUES (null, '{$status['id']}', '{$mood['type']}', '{$mood['value']}')");
				}
			}
			mysqli_query($db, "INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES (null, '{$time}', '{$status['id']}', '{$this->user['mode']['type']}', '{$this->user['mode']['id']}')");
			if ($type == 1 || $type == "status") {
				if (isset($object['link']) && $object['link'] != false && isset($object['link']['path']) && $object['link']['path'] != null) {
					$returnAction = $this->class['_sites']->add($object['link']['path']);
					if ($returnAction['return'] == true) {
						$sitesInfo = $returnAction['data'];
						mysqli_query($db, "UPDATE `status` SET `link` = '1' WHERE `status`.`id` = '{$status['id']}'");
						mysqli_query($db, "INSERT INTO `status_link` (`id`, `status.id`, `sites.id`) VALUES (null, '{$status['id']}', '{$sitesInfo['id']}')");
					}
				}else if (isset($object['share']) && $object['share'] != false && isset($object['share']['token']) && $object['share']['token'] != null) {
					$this_id = mysqli_fetch_assoc(mysqli_query($db ,"SELECT `id` FROM `status` WHERE `token` = '{$object['share']['token']}' LIMIT 1"))['id'];
					if (isset($this_id) && $this_id > 0) {
						mysqli_query($db, "UPDATE `status` SET `share` = '1' WHERE `status`.`id` = '{$status['id']}'");
						mysqli_query($db, "INSERT INTO `status_share` (`id`, `time`, `status.id`, `this.id`, `guy.type`, `guy.id`) VALUES (null, '{$_tool->timeNow()}', '{$this_id}', '{$status['id']}', '{$this->user['mode']['type']}', '{$this->user['mode']['id']}')");
						$is_share = true;
						$is_share_statusID = $this_id;
					}
				}
			}else if ($type == 2 || $type == "photos") {
				if (isset($object['media']['file']) && count($object['media']['file']) > 0) {
					if (is_array($object['media']['scrapbook']) && isset($object['media']['scrapbook']['value'])) {
						if ($object['media']['scrapbook']['value'] == true) {
							if (isset($object['media']['scrapbook']['data']['name']['token']) && $object['media']['scrapbook']['data']['name']['token'] != null) {
								$scrapbook_token = $object['media']['scrapbook']['data']['name']['token'];
								$scrapbook_query = mysqli_query($db, "SELECT `id` FROM `photos_scrapbook` WHERE `token` = '{$scrapbook_token}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}'");
								if (mysqli_num_rows($scrapbook_query) > 0) {
									$scrapbook = mysqli_fetch_assoc($scrapbook_query)['id'];
								}else {
									$scrapbook = false;
								}
							}else if (isset($object['media']['scrapbook']['data']['name']) && $object['media']['scrapbook']['data']['name'] != null) {
								$scrapbook_name = $_tool->convertDatabaseString($object['media']['scrapbook']['data']['name']);
								$scrapbook_query = mysqli_query($db, "SELECT `id` FROM `photos_scrapbook` WHERE `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}' AND `name` = '{$scrapbook_name}'");
								if (mysqli_num_rows($scrapbook_query) > 0) {
									$scrapbook = mysqli_fetch_assoc($scrapbook_query)['id'];
								}else {
									if (isset($object['media']['scrapbook']['data']['places']) && is_array($object['media']['scrapbook']['data']['places']) && $object['media']['scrapbook']['data']['places'] != null) {
										if (isset($object['media']['scrapbook']['data']['places']['location']) && $object['media']['scrapbook']['data']['places']['location'] != null) {
											$object['media']['scrapbook']['data']['places']['location'] = $_tool->stringFloat("10,6", $object['media']['scrapbook']['data']['places']['location'], 2);
											$scrapbook_places_get = $this->class['_maps']->places(true, array("type" => "get", "rows" => "`id`", "code" => $object['media']['scrapbook']['data']['places']['code']));
											if ($scrapbook_places_get['return'] == true) {
												$scrapbook_places['value'] = $scrapbook_places_get['data']['id'];
											}else {
												$scrapbook_places_add = $this->class['_maps']->places(true, array("type" => "add", "code" => $object['media']['scrapbook']['data']['places']['code']));
												if ($scrapbook_places_add['return'] == true) {
													$scrapbook_places['value'] = $scrapbook_places_add['data']['id'];
												}
											}
											$scrapbook_places['type'] = 1;
										}else if (isset($object['media']['scrapbook']['data']['places']['address']) && $object['media']['scrapbook']['data']['places']['address'] != null) {
											$scrapbook_places['type'] = 2;
											$scrapbook_places['value'] = $object['media']['scrapbook']['data']['places']['address'];
										}
									}else {
										$scrapbook_places['type'] = 0;
										$scrapbook_places['value'] = null;
									}
									if (isset($object['media']['scrapbook']['data']['name']) && $object['media']['scrapbook']['data']['name'] != null) {
										$scrapbook_name = $_tool->convertDatabaseString($object['media']['scrapbook']['data']['name']);
									}else {
										$scrapbook_name = null;
									}
									if (isset($object['media']['scrapbook']['data']['description']) && $object['media']['scrapbook']['data']['description'] != null) {
										$scrapbook_description = $_tool->convertDatabaseString($object['media']['scrapbook']['data']['description']);
									}else {
										$scrapbook_description = null;
									}
									$scrapbook_token = hash('crc32', time().'::'.rand().'::('.$this->user['mode']['type'].'_'.$this->user['mode']['id'].')');
									$scrapbook_display = hash('md5', $scrapbook_token);
									mysqli_query($db, "INSERT INTO `photos_scrapbook` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`) VALUES (null, '{$this->user['mode']['type']}', '{$this->user['mode']['id']}', '{$scrapbook_token}', '{$scrapbook_display}', '{$time}', '{$scrapbook_name}', '{$scrapbook_places['type']}', '{$scrapbook_places['value']}', '{$scrapbook_description}')");
									$scrapbook = mysqli_insert_id($db);
								}
							}else {
								$scrapbook = false;
							}
						}else {
							$scrapbook = false;
						}
					}else {
						$scrapbook = false;
					}
					$attachments = false;
					$public = false;
					foreach ($object['media']['file'] as $key => $value) {
						$upload_file = $_media->cache("photos", $xx = array("action" => "upload", "secret" => $value['secret'], "name" => $value['name'], "scrapbook" => $scrapbook, "multiple" => true, "attachments" => $attachments, "public" => $public));
						$_SESSION['ss'][] = $upload_file;
						if (isset($upload_file['return']) && $upload_file['return'] == true) {
							mysqli_query($db, "INSERT INTO `status_photos` (`id`, `status.id`, `photos.id`) VALUES (null, '{$status['id']}', '{$upload_file['id']}')");
						}
					}
				}else {
					mysqli_query($db, "UPDATE `status` SET `type` = 'status' WHERE `status`.`id` = '{$status['id']}'");
				}
			}else if ($type == 3 || $type == "music") {
				if (isset($object['media']['file']) && count($object['media']['file']) > 0) {
					if (isset($object['media']['info']['data']['album'])) {
						$object_album = $object['media']['info']['data']['album'];
						if (is_array($object_album) && isset($object_album['token']) && $object_album['token'] != null) {
							$album_token = $object_album['token'];
							$album_query = mysqli_query($db, "SELECT `id` FROM `music_album` WHERE `token` = '{$album_token}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}'");
							if (mysqli_num_rows($album_query) > 0) {
								$album = mysqli_fetch_assoc($album_query)['id'];
							}else {
								$album = false;
							}
						}else if (!is_array($object_album) && $object_album != null) {
							$album_name = $_tool->convertDatabaseString($object_album);
							$album_query = mysqli_query($db, "SELECT `id` FROM `music_album` WHERE `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}' AND `name` = '{$album_name}'");
							if (mysqli_num_rows($album_query) > 0) {
								$album = mysqli_fetch_assoc($album_query)['id'];
							}else {
								$album_places['type'] = 0;
								$album_places['id'] = null;
								$album_description = null;
								$album_token = hash('crc32', time().'::'.rand().'::('.$this->user['mode']['type'].'_'.$this->user['mode']['id'].')');
								$album_display = hash('md5', $album_token);
								mysqli_query($db, "INSERT INTO `music_album` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`) VALUES (null, '{$this->user['mode']['type']}', '{$this->user['mode']['id']}', '{$album_token}', '{$album_display}', '{$time}', '{$album_name}', '{$album_places['type']}', '{$album_places['id']}', '{$album_description}')");
								$album = mysqli_insert_id($db);
							}
						}else {
							$album = false;
						}
					}else {
						$album = false;
					}
					foreach ($object['media']['file'] as $key => $value) {
						$info = $object['media']['info']['data'];
						$upload_file = $_media->cache("music", array("action" => "upload", "secret" => $value['secret'], "name" => $value['name'], "album" => $album, "info" => $info));
						if (isset($upload_file['return']) && $upload_file['return'] == true) {
							mysqli_query($db, "INSERT INTO `status_music` (`id`, `status.id`, `music.id`) VALUES (null, '{$status['id']}', '{$upload_file['id']}')");
						}
					}
				}else {
					mysqli_query($db, "UPDATE `status` SET `type` = 'status' WHERE `status`.`id` = '{$status['id']}'");
				}
			}else if ($type == 4 || $type == "videos") {
				if (isset($object['media']['file']) && count($object['media']['file']) > 0) {
					if (isset($object['media']['info']['data']['playlist'])) {
						$object_playlist = $object['media']['info']['data']['playlist'];
						if (is_array($object_playlist) && isset($object_playlist['token']) && $object_playlist['token'] != null) {
							$playlist_token = $object_playlist['token'];
							$playlist_query = mysqli_query($db, "SELECT `id` FROM `videos_playlist` WHERE `token` = '{$playlist_token}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}'");
							if (mysqli_num_rows($playlist_query) > 0) {
								$playlist = mysqli_fetch_assoc($playlist_query)['id'];
							}else {
								$playlist = false;
							}
						}else if (!is_array($object_playlist) && $object_playlist != null) {
							$playlist_name = $_tool->convertDatabaseString($object_playlist);
							$playlist_query = mysqli_query($db, "SELECT `id` FROM `videos_playlist` WHERE `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}' AND `name` = '{$playlist_name}'");
							if (mysqli_num_rows($playlist_query) > 0) {
								$playlist = mysqli_fetch_assoc($playlist_query)['id'];
							}else {
								$playlist_places['type'] = 0;
								$playlist_places['id'] = null;
								$playlist_description = null;
								$playlist_token = hash('crc32', time().'::'.rand().'::('.$this->user['mode']['type'].'_'.$this->user['mode']['id'].')');
								$playlist_display = hash('md5', $playlist_token);
								mysqli_query($db, "INSERT INTO `videos_playlist` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`) VALUES (null, '{$this->user['mode']['type']}', '{$this->user['mode']['id']}', '{$playlist_token}', '{$playlist_display}', '{$time}', '{$playlist_name}', '{$playlist_places['type']}', '{$playlist_places['id']}', '{$playlist_description}')");
								$playlist = mysqli_insert_id($db);
							}
						}else {
							$playlist = false;
						}
					}else {
						$playlist = false;
					}
					foreach ($object['media']['file'] as $key => $value) {
						$info = $object['media']['info']['data'];
						$upload_file = $_media->cache("videos", array("action" => "upload", "secret" => $value['secret'], "name" => $value['name'], "playlist" => $playlist, "info" => $info));
						if (isset($upload_file['return']) && $upload_file['return'] == true) {
							mysqli_query($db, "INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES (null, '{$status['id']}', '{$upload_file['id']}')");
						}
					}
				}else {
					mysqli_query($db, "UPDATE `status` SET `type` = 'status' WHERE `status`.`id` = '{$status['id']}'");
				}
			}else if ($type == 5 || $type == "cited") {
				if (isset($object['media']['info']['data']) && is_array($object['media']['info']['data'])) {
					$media_data = $object['media']['info']['data'];
					if (!isset($media_data['author'])) {
						$media_data['author'] = "-";
					}
					if (!isset($media_data['quote'])) {
						$media_data['quote'] = "-";
					}
					$media_data['photos.id'] = $this->class['_parameter']->get('cited_photosID_default');
					$cited_token = hash('crc32', time().'::'.rand().'::'.base64_encode($media_data['author'].'::'.$media_data['quote']));
					$cited_display = hash('md5', $cited_token);
					mysqli_query($db, "INSERT INTO `cited` (`id`, `token`, `display`, `author.type`, `author.id`, `time`, `author`, `quote`, `photos.id`) VALUES (null, '{$cited_token}', '{$cited_display}', '{$this->user['mode']['type']}', '{$this->user['mode']['id']}', '{$time}', '{$media_data['author']}', '{$media_data['quote']}', '{$media_data['photos.id']}')");
					$cited['id'] = mysqli_insert_id($db);
					mysqli_query($db, "INSERT INTO `status_cited` (`id`, `status.id`, `cited.id`) VALUES (null, '{$status['id']}', '{$cited['id']}')");
					if (isset($object['media']['file']) && count($object['media']['file']) > 0) {
						$scrapbook = 0;
						$value = $object['media']['file'][0];
						$upload_file = $_media->cache("photos", array("action" => "upload", "secret" => $value['secret'], "name" => $value['name'], "scrapbook" => $scrapbook, "multiple" => false, "attachments" => false, "public" => false, "maxsize" => array("width" => $_parameter->get('cited_photosSize_length'))));
						if (isset($upload_file['return']) && $upload_file['return'] == true) {
							mysqli_query($db, "UPDATE `cited` SET `photos.id` = '{$upload_file['id']}' WHERE `id` = '{$cited['id']}'");
						}
					}
				}else {
					mysqli_query($db, "UPDATE `status` SET `type` = 'status' WHERE `status`.`id` = '{$status['id']}'");
				}
			}
			if (isset($is_share, $is_share_statusID) && $is_share == true) {
				$_logs->actions("add", array("action" => "share", "things" => "status", "things_id" => $is_share_statusID, "obj" => "status", "obj_id" => $status['id']));
			}else {
				$_logs->actions("add", array("action" => "add", "things" => null, "things_id" => null, "obj" => "status", "obj_id" => $status['id']));
			}
			return array("return" => true);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function status_get ($object) {
		if (isset($object['query']) && is_string($object['query'])) $query = $object['query']; else $query = null;
		if (isset($object['return']) && is_string($object['return'])) $return = $object['return']; else $return = null;
		if (isset($object['class']) && is_string($object['class'])) $className = $object['class']; else $className = null;
		if (isset($object['media']) && is_bool($object['media'])) $getMedia = $object['media']; else $getMedia = true;
		if ($query == null || $return == null) {
			return array("return" => false, "reason" => "");
		}
		$this->callUserInfo();
		if (!isset($this->user['login']) || !$this->user['login']) {
			return array("return" => false, "reason" => "");
		}else {
			$_storage = $this->class['_storage'];
			$_tool = $this->class['_tool'];
			$_parameter = $this->class['_parameter'];
			$_client = $this->class['_client'];
			$_analysis = $this->class['_analysis'];
			$_media = $this->class['_media'];
			$_logs = $this->class['_logs'];
			$_language = $this->class['_language'];
			$db = $this->class['_db']->port('beta');
		}
		$query = mysqli_query($db, $query);
		if ($query) $num = mysqli_num_rows($query); else $num = 0;
		if ($num == 0) {
			return array("return" => true, "count" => 0, "data" => "");
		}else {
			while ($status = mysqli_fetch_assoc($query)) {
				$author['type'] = $status['author.type'];
				$author['id'] = $status['author.id'];
				$info['id'] = $status['id'];
				$info['type'] = $status['type'];
				$info['token'] = $status['token'];
				$info['display'] = $status['display'];
				$info['link'] = $_tool->links('feed/status/').$info['display'];
				$info['author'] = array("type" => $author['type'], "id" => $author['id']);
				if ($author['type'] == "user") {
					$getInfo = $this->class['_user']->getInfo(array("id" => $status['author.id'], "rows" => "`avatar.small`, `cover.small`, `fullname`, `username`, `link`, `verified`"));
					if (isset($getInfo['return']) && $getInfo['return'] == true) {
						$author['avatar'] = $getInfo['data']['avatar.small'];
						$author['cover'] = $getInfo['data']['cover.small'];
						$author['name'] = $getInfo['data']['fullname'];
						$author['tag'] = $getInfo['data']['username'];
						$author['link'] = $getInfo['data']['link'];
						$author['verified'] = $getInfo['data']['verified'];
					}else {
						continue;
					}
				}
				if ($author['type'] != "user") {
					$from['status'] = true;
				}else {
					$from['status'] = false;
				}
				if ($status['edit'] == 0) {
					$edit['status'] = false;
				}else {
					$edit['status'] = true;
					$edit['time']['stamp'] = $status['edit'];
					$edit['time']['ago'] = $_tool->agoDatetime($status['edit'], 'ago');
					$edit['time']['tip'] = $_tool->agoDatetime($status['edit'], 'tip');
					$edit['time']['json'] = json_encode(array("stamp" => $edit['time']['stamp'], "length" => "1"));
				}
				if ($status['places'] == 0) {
					$places = null;
				}else if ($status['places'] == 1) {
					$places_query = mysqli_query($db, "SELECT `type`, `value` FROM `status_places` WHERE `status.id` = '{$status['id']}'");
					if (mysqli_num_rows($places_query) == 0) {
						$places = null;
					}else {
						$places = mysqli_fetch_assoc($places_query);
						if ($places['type'] == 1) {
							$places_query = mysqli_query($db, "SELECT `address`, `location`, `name`, `thumbnail`, `type` FROM `maps_places` WHERE `id` = '{$places['value']}'");
							$places = mysqli_fetch_assoc($places_query);
							$places['by'] = 1;
						}else if ($places['type'] == 2) {
							$places['name'] = $places['value'];
							$places['by'] = 2;
						}
						$places['type'] = null;
					}
				}
				if (!isset($status['date']) || $status['date'] == null || $status['date'] == 0) {
					$status['date'] = $status['time'];
				}
				$date['stamp'] = $status['date'];
				$date['ago'] = $_tool->agoDatetime($status['date'], 'ago');
				$date['tip'] = $_tool->agoDatetime($status['date'], 'tip');
				$date['json'] = json_encode(array("stamp" => $date['stamp'], "length" => "1"));
				$private['view']['text'] = $_language->text("private_{$status['private.view']}_text", "ucfirst");
				$private['view']['tip'] = $_language->text("private_{$status['private.view']}_tip", "ucfirst");
				$private['view']['stamp'] = $status['private.view'];
				$private['view']['json'] = json_encode(array("stamp" => $private['view']['stamp']));
				$private['comment']['text'] = $_language->text("private_{$status['private.comment']}_text", "ucfirst");
				$private['comment']['tip'] = $_language->text("private_{$status['private.comment']}_tip", "ucfirst");
				$private['comment']['stamp'] = $status['private.comment'];
				$private['comment']['json'] = json_encode(array("stamp" => $private['comment']['stamp']));
				$private['share']['text'] = $_language->text("private_{$status['private.share']}_text", "ucfirst");
				$private['share']['tip'] = $_language->text("private_{$status['private.share']}_tip", "ucfirst");
				$private['share']['stamp'] = $status['private.share'];
				$private['share']['json'] = json_encode(array("stamp" => $private['share']['stamp']));
				if ($status['mood'] == 0) {
					$content['mood'] = null;
				}else {
					$mood_query = mysqli_query($db, "SELECT * FROM `status_mood` WHERE `status.id` = '{$status['id']}'");
					if (mysqli_num_rows($mood_query) == 0) {
						$content['mood'] = null;
					}else {
						$mood = mysqli_fetch_assoc($mood_query);
						if ($mood['type'] == 1) {
							if (preg_match("/^(\[feel\])/", $mood['value'])) {
								$content['mood']['push'] = $_language->text('feeling');
							}else {
								$content['mood']['push'] = null;
							}
							$content['mood']['text'] = $content['mood']['push'].' '.$_language->text($mood['value']).'.';
							$content['mood']['icon'] = null;
						}else if ($mood['type'] == 2) {

						}else {
							$content['mood'] = null;
						}
					}
				}
				if ($status['usertag'] == 0) {
					$content['usertag'] = null;
				}else {
					$usertag_query = mysqli_query($db, "SELECT * FROM `status_usertag` WHERE `status.id` = '{$status['id']}'");
					if (mysqli_num_rows($usertag_query) == 0) {
						$content['usertag'] = null;
					}else {
						while ($usertag = mysqli_fetch_assoc($usertag_query)) {
							if ($usertag['guy.type'] == "user" || $usertag['guy.type'] == "users") {
								$usertag_user = mysqli_fetch_assoc(mysqli_query($db, "SELECT `id`, `fullname`, `username`, `link` FROM `users` WHERE `id` = '{$usertag['guy.id']}'"));
								$content['usertag'][] = array(
									"id" => $usertag_user['id'],
									"name" => $usertag_user['fullname'],
									"tag" => $usertag_user['username'],
									"link" => $usertag_user['link']
								);
							}else {
								continue;
							}
						}
					}
				}
				$content['string'] = $_tool->hash('decode', $status['content'], $_parameter->get('hash_status_content').'::'.$status['token']);
				$content['text'] = $_tool->parseContent($content['string']);
				if ($getMedia == true && $info['type'] == "status" && $status['link'] == 1) {
					$media_query = mysqli_query($db, "SELECT * FROM `status_link` WHERE `status.id` = '{$status['id']}' LIMIT 1");
					if (mysqli_num_rows($media_query) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "link";
						while ($media_data = mysqli_fetch_assoc($media_query)) {
							$rows = "`token`, `display`, `host`, `path`, `title`, `thumbnail`, `description`";
							$media_fetch = $_sites->data(array("rows" => $rows, "label" => "id", "value" => $media_data['sites.id'], "limit" => "LIMIT 1"));
							if (isset($media_fetch['return']) && $media_fetch['return'] == true) {
								$media_fetchData = $media_fetch['data'][0];
								if (isset($media_fetchData['thumbnail']) && $media_fetchData['thumbnail'] != null && ($media_fetchData['thumbnail'] != 0 || $media_fetchData['thumbnail'] != "0")) {
									$media_fetchData['thumbnail'] = $_tool->links($media_fetchData['thumbnail']);
								}else {
									$media_fetchData['thumbnail'] = null;
								}
								$media_fetchData['path'] = $_tool->links('sites/direct/'.$_tool->hash('encode', $media_fetchData['path'], $_parameter->get('hash_sites_direct')));
								$content['media']['data'][] = array(
									"display" => $media_fetchData['display'],
									"host" => $media_fetchData['host'],
									"title" => $media_fetchData['title'],
									"description" => $media_fetchData['description'],
									"thumbnail" => $media_fetchData['thumbnail'],
									"path" => $media_fetchData['path'],
									"share" => array(
										"link" => $_tool->links('link/embed/').$media_fetchData['display']
									)
								);
							}
						}
					}
				}else if ($getMedia == true && $info['type'] == "status" && $status['share'] == 1) {
					$media_sql = "SELECT * FROM `status` WHERE `id` IN (SELECT DISTINCT `status.id` FROM `status_share` WHERE `this.id` = '{$status['id']}' LIMIT 1) LIMIT 1";
					$media_query = mysqli_query($db, $media_sql);
					if (mysqli_num_rows($media_query) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "share";
						$content['media']['get'] = $this->status_get(array("return" => "json", "query" => $media_sql));
						if (isset($content['media']['get']['return']) && $content['media']['get']['return'] == true) {
							if (isset($content['media']['get']['count']) && $content['media']['get']['count'] > 0) {
								$content['media']['data'][] = array("exists" => true, "status" => array("info" => $content['media']['get']['data'][0]['info'], "author" => $content['media']['get']['data'][0]['author'], "content" => $content['media']['get']['data'][0]['content']));
							}else {
								$content['media']['data'][] = array("exists" => false, "status" => null);
							}
						}else {
							$content['media']['data'][] = array("exists" => false, "status" => null);
						}
						$content['media']['get'] = null;
					}
				}else if ($getMedia == true && $info['type'] == "photos") {
					$media_query = mysqli_query($db, "SELECT DISTINCT `status.id`, `photos.id` FROM `status_photos` WHERE `status.id` = '{$status['id']}'");
					if (mysqli_num_rows($media_query) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "photos";
						while ($media_data = mysqli_fetch_assoc($media_query)) {
							$rows = "`token`, `display`, `mime_type`, `file.original`, `file.large`, `file.medium`";
							$media_fetch = $_media->data("photos", array("action" => "get", "rows" => $rows, "label" => "id", "value" => $media_data['photos.id'], "private" => true, "author" => array("type" => $author['type'], "id" => $author['id']), "limit" => "LIMIT 1"));
							if (isset($media_fetch['return']) && $media_fetch['return'] == true) {
								$media_fetchData = $media_fetch['data'][0];
								if ($media_fetchData['file.medium'] != '0') {
									$media_thumbnail = $_tool->links('photos/raw/').$media_fetchData['file.medium'];
								}else {
									$media_thumbnail = $_tool->links('photos/raw/').$media_fetchData['file.original'];
								}
								if ($media_fetchData['file.large'] != '0') {
									$media_link = $_tool->links('photos/raw/').$media_fetchData['file.large'];
								}else {
									$media_link = $_tool->links('photos/raw/').$media_fetchData['file.original'];
								}
								$content['media']['data'][] = array(
									"display" => $media_fetchData['display'], 
									"mime" => $media_fetchData['mime_type'], 
									"thumbnail" => $media_thumbnail, 
									"link" => $media_link,
									"share" => array(
										"link" => $_tool->links('photos/embed/').$media_fetchData['display']
									)
								);
							}
						}
					}
				}else if ($getMedia == true && $info['type'] == "music") {
					$media_query = mysqli_query($db, "SELECT DISTINCT `status.id`, `music.id` FROM `status_music` WHERE `status.id` = '{$status['id']}' LIMIT 1");
					if (mysqli_num_rows($media_query) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "music";
						while ($media_data = mysqli_fetch_assoc($media_query)) {
							$rows = "`token`, `display`, `name`, `mime_type`, `singer`, `description`, `file.original`";
							$media_fetch = $_media->data("music", array("action" => "get", "rows" => $rows, "label" => "id", "value" => $media_data['music.id'], "private" => true, "author" => array("type" => $author['type'], "id" => $author['id']), "limit" => "LIMIT 1"));
							if (isset($media_fetch['return']) && $media_fetch['return'] == true) {
								$media_fetchData = $media_fetch['data'][0];
								if ($media_fetchData['name'] == null) {
									$media_fetchData['name'] = $_language->text('null:music_name', 'ucfirst');
								}
								if ($media_fetchData['singer'] == null) {
									$media_fetchData['singer'] = $_language->text('not_updated', 'ucfirst');
								}else {
									$media_fetchData['singer'] = $_language->text('presented_by', 'ucfirst').': '.$media_fetchData['singer'];
								}
								if ($media_fetchData['description'] == null) {
									$media_fetchData['description'] = $_language->text('null:description_music', 'ucfirst');
								}
								$media_fetchData['link'] = $_tool->links("music/raw/").$media_fetchData['file.original'];
								$content['media']['data'][] = array(
									"display" => $media_fetchData['display'],
									"name" => $media_fetchData['name'],
									"mime" => $media_fetchData['mime_type'], 
									"singer" => $media_fetchData['singer'], 
									"description" => $media_fetchData['description'],
									"link" => $media_fetchData['link'],
									"share" => array(
										"link" => $_tool->links('music/embed/').$media_fetchData['display']
									)
								);
							}else {
								//.
							}
						}
					}
				}else if ($getMedia == true && $info['type'] == "videos") {
					$media_query = mysqli_query($db, "SELECT DISTINCT `status.id`, `videos.id` FROM `status_videos` WHERE `status.id` = '{$status['id']}' LIMIT 1");
					if (mysqli_num_rows($media_query) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "videos";
						while ($media_data = mysqli_fetch_assoc($media_query)) {
							$rows = "`token`, `display`, `name`, `mime_type`, `description`, `file.thumbnail`, `file.sd`";
							$media_fetch = $_media->data("videos", array("action" => "get", "rows" => $rows, "label" => "id", "value" => $media_data['videos.id'], "private" => true, "author" => array("type" => $author['type'], "id" => $author['id']), "limit" => "LIMIT 1"));
							if (isset($media_fetch['return']) && $media_fetch['return'] == true) {
								$media_fetchData = $media_fetch['data'][0];
								if ($media_fetchData['name'] == null) {
									$media_fetchData['name'] = $_language->text('null:videos_name', 'ucfirst');
								}
								if ($media_fetchData['description'] == null) {
									$media_fetchData['description'] = $_language->text('null:description_videos', 'ucfirst');
								}
								$media_fetchData['thumbnail'] = $_tool->links("videos/raw/thumbnail/").$media_fetchData['file.thumbnail'];
								$media_fetchData['link'] = $_tool->links('videos/raw/').$media_fetchData['file.sd'];
								$content['media']['data'][] = array(
									"display" => $media_fetchData['display'], 
									"name" => $media_fetchData['name'],
									"mime" => $media_fetchData['mime_type'],
									"description" => $media_fetchData['description'],
									"thumbnail" => $media_fetchData['thumbnail'],
									"link" => $media_fetchData['link'],
									"share" => array(
										"link" => $_tool->links('videos/embed/').$media_fetchData['display']
									)
								);
							}
						}
					}
				}else if ($getMedia == true && $info['type'] == "cited") {
					$media_query = mysqli_query($db, "SELECT * FROM `status_cited` WHERE `status.id` = '{$status['id']}' LIMIT 1");
					if (mysqli_num_rows($media_query) == 0) {
						$content['media'] = null;
					}else {
						$content['media'] = array();
						$content['media']['type'] = "cited";
						$cited_id = mysqli_fetch_assoc($media_query)['cited.id'];
						$cited_query = mysqli_query($db, "SELECT `token`, `quote`, `author`, `photos.id` FROM `cited` WHERE `id` = '{$cited_id}' AND `author.type` = '{$author['type']}' AND `author.id` = '{$author['id']}' LIMIT 1");
						$cited_fetch = mysqli_fetch_assoc($cited_query);
						if ($cited_fetch['photos.id'] != '0') {
							$rows = "`token`, `display`, `file.original`, `file.medium`";
							$media_fetch = $_media->data("photos", array("action" => "get", "rows" => $rows, "label" => "id", "value" => $cited_fetch['photos.id'], "private" => true, "author" => array("type" => $author['type'], "id" => $author['id']), "limit" => "LIMIT 1"));
						}else {
							$media_fetch['return'] = false;
						}
						if (isset($media_fetch['return']) && $media_fetch['return'] == true) {
							if ($media_fetch['data'][0]['file.medium'] != '0') {
								$media_path = $media_fetch['data'][0]['file.medium'];
							}else {
								$media_path = $media_fetch['data'][0]['file.original'];
							}
							$cited_fetch['thumbnail'] = $_tool->links('photos/raw/').$media_path;
						}else {
							$cited_fetch['thumbnail'] = null;
						}
						$content['media']['data'][] = array(
							"display" => $cited_fetch['display'],
							"author" => $cited_fetch['author'],
							"quote" => $cited_fetch['quote'],
							"thumbnail" => $cited_fetch['thumbnail'],
							"share" => array(
								"link" => $_tool->links('cited/embed/').$media_fetch['data']['display']
							)
						);
					}
				}else {
					$content['media'] = null;
				}
				if ($this->user['mode']['type'] == $author['type'] && $this->user['mode']['id'] == $author['id']) {
					$menu['status']['report'] = $menu['status']['block'] = false;
					$menu['status']['delete'] = $menu['status']['edit'] = true;
				}else {
					$menu['status']['report'] = $menu['status']['block'] = $menu['author']['hide'] = true;
					$menu['status']['delete'] = $menu['status']['edit'] = false;
				}
				if (mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_follow` WHERE `status.id` = '{$info['id']}' AND `guy.id` = '{$this->user['mode']['id']}' AND `guy.type` = '{$this->user['mode']['type']}'")) > 0) {
					$menu['status']['follow'] = true;
				}else {
					$menu['status']['follow'] = false;
				}
				if ($info['type'] == "photos" || $info['type'] == "music" || $info['type'] == "videos" || $info['type'] == "cited") {
					$menu['status']['popup'] = true;
				}else {
					$menu['status']['popup'] = false;
				}
				$menu['status']['link'] = true;
				$statistic['follow'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_follow` WHERE `status.id` = '{$info['id']}'"));
				$statistic['favorite'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_favorite` WHERE `status.id` = '{$info['id']}'"));
				$statistic['share'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_share` WHERE `status.id` = '{$info['id']}'"));
				$statistic['invite'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_invite` WHERE `status.id` = '{$info['id']}'"));
				$action['favorite']['check'] = 1;
				$action['share']['check'] = 1;
				$action['invite']['check'] = 1;
				if ($author['type'] == $this->user['mode']['type'] && $author['id'] == $this->user['mode']['id']) {
					$action['comment']['check'] = 1;
				}else if ($private['comment']['stamp'] == 1) {
					if ($author['type'] == $this->user['type'] && $author['id'] == $this->user['id']) {
						$action['comment']['check'] = 1;
					}else {
						$action['comment']['check'] = 0;
					}
				}else if ($private['comment']['stamp'] == 2) {
					$action['comment']['check'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$this->user['id']}' AND `guy.id` = '{$author['id']}' LIMIT 1"));
				}else if ($private['comment']['stamp'] == 3) {
					if ($author['type'] == "user") {
						$action['comment']['check'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE (`user.id` = '{$this->user['id']}' AND `guy.id` = '{$author['id']}') OR (`guy.id` = '{$author['id']}' AND `user.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$this->user['id']}')) LIMIT 1"));
					}else {
						$action['comment']['check'] = 0;
					}
				}else if ($private['comment']['stamp'] == 4) {
					$action['comment']['check'] = 1;
				}else {
					$action['comment']['check'] = 0;
				}
				if ($action['favorite']['check'] > 0) {
					$action['favorite']['status'] = true;
					$action['favorite']['selected'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_favorite` WHERE `status.id` = '{$info['id']}' AND `guy.id` = '{$this->user['mode']['id']}' AND `guy.type` = '{$this->user['mode']['type']}'"));
					if ($action['favorite']['selected'] == 0) {
						$action['favorite']['selected'] = false;
					}else {
						$action['favorite']['selected'] = true;
					}
				}else {
					$action['favorite']['status'] = false;
				}
				if ($action['share']['check'] > 0) {
					$action['share']['status'] = true;
				}else {
					$action['share']['status'] = false;
				}
				if ($action['invite']['check'] > 0) {
					$action['invite']['status'] = true;
				}else {
					$action['invite']['status'] = false;
				}
				if ($action['comment']['check'] > 0) {
					$action['comment']['status'] = true;
				}else {
					$action['comment']['status'] = false;
				}
				$comment_query = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `status.id` = '{$status['id']}'");
				$comment['number'] = mysqli_num_rows($comment_query);
				$statusData[] = array (
					'info' => $info,
					'author' => $author, 
					'from' => $from, 
					'edit' => $edit,
					'places' => $places,
					'date' => $date,
					'private' => $private,
					'menu' => $menu,
					'content' => $content,
					'statistic' => $statistic,
					'action' => $action,
					'comment' => $comment,
				);
			};
			if ($return == "json") {
				for ($i = 0; $i < count($statusData); $i++ ) {
					$getCommentSql = "SELECT * FROM `status_comment` WHERE `status.id` = '{$statusData[$i]['info']['id']}' ORDER BY `id` DESC LIMIT 3";
					$getComment = $this->comment_get(array("return" => "json", "query" => $getCommentSql));
					if (isset($getComment['return'], $getComment['data']) && $getComment['return'] == true && is_array($getComment['data']) && count($getComment['data']) > 0) {
						$commentData = $getComment['data'];
						$commentReply = array();
						$commentReplySql = "SELECT * FROM `status_comment` WHERE `comment.id` = '{$commentData['info']['id']}' ORDER BY `id` DESC LIMIT 3";
						$getCommentReply = $this->comment_get(array("return" => "json", "query" => $commentReplySql));
						if (isset($getCommentReply['return'], $getCommentReply['data']) && $getCommentReply['return'] == true && is_array($getCommentReply['data'])) {
							$commentReply[] = $getCommentReply['data'];
						}
						$getComment['data']['reply'] = $commentData['reply'] = $commentReply;
						$returnData[$i]['comment']['data'] = $getComment['data'];
					}
					$getCommentSql = $getComment = null;
				}
				$returnData = $statusData;
				return array("return" => true, "count" => count($returnData), "data" => $returnData);
			}else if ($return == "html") {
				$countData = count($statusData);
				$returnData = null;
				for ($i = 0; $i < count($statusData); $i++ ) {
					$status = null;
					$status = $statusData[$i];
					$status['infoshow'] = $status['info'];
					if (isset($status['infoshow']['token'])) {
						unset($status['infoshow']['token']);
					}
					$c_['status_info'] = json_encode($status['infoshow']);
					if (isset($status['author']['verified']) && $status['author']['verified'] == 1) {
						$c_['status_author_verified'] = "
							<div class='verified _tt e' title='{$_language->text('verified', 'ucfirst')}'>
								<i></i>
							</div>
						";
					}else {
						$c_['status_author_verified'] = null;
					}
					if (isset($status['date']) && $status['date'] != null) {
						$c_['status_date'] = "
							<div class='date nowrap _tt s' time='{$status['date']['json']}' title='{$_language->text('posted_at', 'ucfirst')} {$status['date']['tip']}'>
								<i></i>
								<a href='{$_tool->links('feed/time')}/{$status['date']['stamp']}' date-show>{$status['date']['ago']}</a>
							</div>
						";
					}else {
						$c_['status_date'] = null;
					}
					if (isset($status['private']) && $status['private'] != null) {
						$c_['status_private'] = "
							<div class='private nowrap _tt s' private='{$status['private']['view']['json']}' title='{$status['private']['view']['tip']}' private>
								<i></i>
								<span private-show>{$status['private']['view']['text']}</span>
							</div>
						";
					}else {
						$c_['status_private'] = null;
					}
					if (isset($status['edit']['status']) && $status['edit']['status'] == true) {
						$c_['status_edit'] = "
							<div class='edited nowrap _tt s' time='{$status['edit']['time']['json']}' title='{$_language->text('edited_at', 'ucfirst')} {$status['edit']['time']['tip']}'>
								<i></i>
							</div>
						";
					}else {
						$c_['status_edit'] = null;
					}
					if (isset($status['places']) && $status['places'] != null) {
						if ($status['places']['by'] == 1) {
							$c_['status_places_dbl_type'] = "notification";
							$c_['status_places_dbl_data'] = array(
								"type" => 1, 
								"title" => $_language->text('information_about_places', 'ucfirst'),
								"description" => array("type" => "info::places", "data" => $status['places']),
								"from" => $_language->text('status', 'ucfirst'),
								"timeout" => $_parameter->get('notification_info_places')
							);
							foreach ($c_['status_places_dbl_data'] as $key => $value) {
								$c_['status_places_dbl_data'][$key] = ($value);
							}
							$c_['status_places_dbl'] = json_encode(array("type" => $c_['status_places_dbl_type'], "data" => $c_['status_places_dbl_data']));
							$c_['status_places'] = "
								<div class='places nowrap _tt _tt-dbl s' title='{$_language->text('at', 'ucfirst')} {$status['places']['name']}' dblclick='{$c_['status_places_dbl']}'>
									<i></i>
								</div>
							";
						}else if ($status['places']['by'] == 2) {
							$c_['status_places'] = "
								<div class='places nowrap _tt _tt-dbl s' title='{$_language->text('at', 'ucfirst')} {$status['places']['name']}'>
									<i></i>
								</div>
							";
						}
					}else {
						$c_['status_places'] = null;
					}
					if (isset($status['menu']) && is_array($status['menu'])) {
						$c_['status_menu_tab'] = null;
						foreach ($status['menu'] as $type => $menu_type) {
							foreach ($menu_type as $text => $menu_text) {
								if ($type == "status") {
									if ($text == "block" && $menu_text == true) {
										$c_['status_menu_tab'] .= "
											<div class='nowrap' menu-type='block'>
												<i></i>
												<span>{$_language->text('block', 'ucfirst')}</span>
											</div>
										";
									}else if ($text == "report" && $menu_text == true) {
										$c_['status_menu_tab'] .= "
											<div class='nowrap' menu-type='report'>
												<i></i>
												<span>{$_language->text('report', 'ucfirst')}</span>
											</div>
										";
									}else if ($text == "edit" && $menu_text == true) {
										$c_['status_menu_tab'] .= "
											<div class='nowrap' menu-type='edit'>
												<i></i>
												<span>{$_language->text('edit', 'ucfirst')}</span>
											</div>
										";
									}else if ($text == "delete" && $menu_text == true) {
										$c_['status_menu_tab'] .= "
											<div class='nowrap' menu-type='delete'>
												<i></i>
												<span>{$_language->text('delete', 'ucfirst')}</span>
											</div>
										";
									}else if ($text == "follow") {
										if ($menu_text == true) {
											$c_['status_menu_tab'] .= "
												<div class='nowrap' menu-type='unfollow'>
													<i></i>
													<span>{$_language->text('unfollow', 'ucfirst')}</span>
												</div>
											";
										}else {
											$c_['status_menu_tab'] .= "
												<div class='nowrap' menu-type='follow'>
													<i></i>
													<span>{$_language->text('follow', 'ucfirst')}</span>
												</div>
											";
										}
									}else if ($text == "popup" && $menu_text == true) {
										$c_['status_menu_tab'] .= "
											<div class='nowrap' menu-type='popup'>
												<i></i>
												<span>{$_language->text('popup', 'ucfirst')}</span>
											</div>
										";
									}else if ($text == "link" && $menu_text == true) {
										$c_['status_menu_tab'] .= "
											<div class='nowrap' menu-type='link'>
												<i></i>
												<span><a href='{$_tool->links("feed/status/")}{$status['info']['token']}' target='_blank'>{$_language->text('link', 'ucfirst')}</a></span>
											</div>
										";
									}
								}else if ($type == "author") {
									//.
								}
							}
							$c_['status_menu'] = "
								<div class='menu' status-menu>
									<div class='button'><i></i></div>
									<div class='tab'>
										{$c_['status_menu_tab']}
									</div>
								</div>
							";
						}
					}else {
						$c_['status_menu'] = null;
					}
					if (isset($status['content']['mood']['text']) && $status['content']['mood']['text'] != null) {
						if ($status['content']['mood']['icon'] != null) {
							$c_['status_content_mood_i'] = null;
						}else {
							$c_['status_content_mood_i'] = null;
						}
						$c_['status_content_mood'] = "
							<div class='mood'>
								{$c_['status_content_mood_i']}
								<span>{$status['content']['mood']['text']}</span>
							</div>
						";
					}else {
						$c_['status_content_mood'] = null;
					}
					if (isset($status['content']['text']) && $status['content']['text'] != null) {
						$c_['status_content_text'] = "
							<div class='text'>
								<span>{$status['content']['text']}</span>
								{$c_['status_content_mood']}
							</div>
						";
					}else {
						$c_['status_content_text'] = null;
					}
					if (isset($status['content']['usertag']) && $status['content']['usertag'] != null) {
						$c_['status_content_usertag_li'] = null;
						foreach ($status['content']['usertag'] as $c_['status_content_usertag_i']) {
							$c_['status_content_usertag_li'] .= "<div class='div _tt-bk' title='{$c_['status_content_usertag_i']['tag']}'><a href='{$c_['status_content_usertag_i']['link']}'>{$c_['status_content_usertag_i']['name']}</a></div>";
						}
						$c_['status_content_usertag'] = "
							<div class='usertag'>
								<div class='with'><span>- {$_language->text('with', 'normal')}</span></div>
								<div class='li'>{$c_['status_content_usertag_li']}</div>
							</div>
						";
					}else {
						$c_['status_content_usertag'] = null;
					}
					if (isset($status['content']['media']) && is_array($status['content']['media'])) {
						if (isset($status['content']['media']['type']) && isset($status['content']['media']['data']) && is_array($status['content']['media']['data'])) {
							$c_['status_content_media'] = $this->status_getCodeMedia($status['content']);
						}else {
							$c_['status_content_media'] = null;
						}
					}else {
						$c_['status_content_media'] = null;
					}
					if (isset($status['action']['favorite']['status']) && $status['action']['favorite']['status'] == true) {
						if ($status['action']['favorite']['selected'] == true) {
							$c_['status_action_favorite'] = "
								<div class='favorite'>
									<span status-action-favorite favorite='true'>{$_language->text("unfavorite", "ucfirst")}</span>
								</div>
							";
						}else {
							$c_['status_action_favorite'] = "
								<div class='favorite'>
									<span status-action-favorite favorite='false'>{$_language->text("favorite", "ucfirst")}</span>
								</div>
							";
						}
					}else {
						$c_['status_action_favorite'] = null;
					}
					if (isset($status['action']['share']['status']) && $status['action']['share']['status'] == true) {
						$c_['status_action_share'] = "
							<div class='share'>
								<span status-action-share>{$_language->text("share", "ucfirst")}</span>
							</div>
						";
					}else {
						$c_['status_action_share'] = null;
					}
					if (isset($status['action']['invite']['status']) && $status['action']['invite']['status'] == true) {
						$c_['status_action_invite'] = "
							<div class='invite'>
								<span status-action-invite>{$_language->text("invite", "ucfirst")}</span>
							</div>
						";
					}else {
						$c_['status_action_invite'] = null;
					}
					if (isset($status['action']['comment']['status']) && $status['action']['comment']['status'] == true) {
						$c_['private_comment_class'] = "";
						$c_['private_comment'] = "
							<textarea type='text' placeholder='{$_language->text('write_a_comment', 'ucfirst')}' status-action-comment handing='false'></textarea>
						";
					}else {
						$c_['private_comment_class'] = "null";
						$c_['private_comment'] = "
							<span>{$_language->text('status_unlimited_comment', 'ucfirst')}</span>
						";
					}
					if (isset($status['comment']['number']) && $status['comment']['number'] == 0) {
						$c_['status_comment_null'] = "
							<div class='null' status-comment-null>
								<span status-comment-null>{$_language->text('status_null_comment', 'ucfirst')}</span>
							</div>
						";
						$c_['status_comment_rows'] = $c_['status_comment'] = null;
					}else {
						if ($status['comment']['number'] > 3) {
							$c_['status_comment_showmore'] = "
								<div class='showmore' status-comment-load>
									<i class='icon'></i>
									<span class='text'>{$_language->text('show_more_comments', 'ucfirst')}</span>
								</div>
							";
						}else {
							$c_['status_comment_showmore'] = null;
						}
						$c_['status_comment'] = "
							<div class='statistic'>
								<div class='info'>
									<i class='icon'></i>
									<span class='number' status-statistic-comment>{$status['comment']['number']}</span>
									<span class='text'>{$_language->text('comment(s)', 'strtolower')}</span>
								</div>
								{$c_['status_comment_showmore']}
							</div>
						";
						$c_['comment'] = $this->comment_get(array("return" => "html", "query" => "SELECT * FROM `status_comment` WHERE `status.id` = '{$status['info']['id']}' ORDER BY `id` DESC LIMIT 3", "class" => "lines"));
						if ($c_['comment']['return'] == true) {
							$c_['status_comment_rows'] = $c_['comment']['data'];
						}else {
							$c_['status_comment_rows'] = null;
						}
						$getCommentIdSql = "SELECT `id` FROM `status_comment` WHERE `status.id` = '{$status['info']['id']}' ORDER BY `id` DESC LIMIT 3";;
						$getCommentIdQuery = mysqli_query($db, $getCommentIdSql);
						if ($getCommentIdQuery == true && mysqli_num_rows($getCommentIdQuery) > 0) {
							$getCommentIdFetch = mysqli_fetch_assoc($getCommentIdQuery);
							foreach ($getCommentIdFetch as $getCommentIdFetchArr) {
								$getCommentSql = "SELECT * FROM `status_comment` WHERE `id` = '{$getCommentIdFetch['id']}' LIMIT 1";
								$getComment = $this->comment_get(array("return" => "html", "query" => $getCommentSql, "class" => "lines"));
								if (isset($getComment['return'], $getComment['data']) && $getComment['return'] == true && $getComment['data'] != null) {
									$c_['status_comment_rows'] = $getComment['data'];
									$commentReply = array();
									$commentReplySql = "SELECT * FROM `status_comment` WHERE `comment.id` = '{$getCommentIdFetch['id']}' ORDER BY `id` DESC LIMIT 3";
									$getCommentReply = $this->comment_get(array("return" => "html", "query" => $commentReplySql, "class" => "lines reply"));
									if (isset($getCommentReply['return'], $getCommentReply['data']) && $getCommentReply['return'] == true && $getCommentReply['data']) {
										$c_['status_comment_rows'] .= $getCommentReply['data'];
									}
								}else {
									continue;
								}
								$getCommentSql = $getComment = null;
							}
						}else {
							$c_['status_comment_rows'] = null;
						}
						$c_['status_comment_null'] = null;
					}
					$returnData .= "
					<div class='{$className} inFeeds boxGrid' status='{$c_['status_info']}'>
						<div class='header'>
							<div class='cover'>
								<div class='wrap'></div>
								<div class='img' style='background-image: url({$status['author']['cover']})'>
									<img class='img' src='{$status['author']['cover']}'>
								</div>
							</div>
							<div class='avatar'>
								<a href='{$status['author']['link']}'>
									<img class='img' src='{$status['author']['avatar']}'>
								</a>
							</div>
							<div class='user'>
								{$c_['status_author_verified']}
								<div class='name'>
									<a href='{$status['author']['link']}'>
										<span>{$status['author']['name']}</span>
									</a>
								</div>
								<div class='tag'>
									<a href='{$status['author']['link']}'>
										<span>{$status['author']['tag']}</span>
									</a>
								</div>
							</div>
							<div class='info'>
								{$c_['status_date']}
								{$c_['status_private']}
								{$c_['status_edit']}
								{$c_['status_places']}
							</div>
							{$c_['status_menu']}
						</div>
						<div class='body'>
							{$c_['status_content_text']}
							{$c_['status_content_media']}
							{$c_['status_content_usertag']}
						</div>
						<div class='footer'>
							<div class='info'>
								<div class='action'>
									{$c_['status_action_favorite']}
									{$c_['status_action_share']}
									{$c_['status_action_invite']}
								</div>
								<div class='statistic'>
									<div class='favorite'>
										<i></i>
										<span status-statistic-favorite>{$status['statistic']['favorite']}</span>
									</div>
									<div class='share'>
										<i></i>
										<span status-statistic-share>{$status['statistic']['share']}</span>
									</div>
									<div class='invite'>
										<i></i>
										<span status-statistic-invite>{$status['statistic']['invite']}</span>
									</div>
								</div>
							</div>
							<div class='comment'>
								<div class='type {$c_['private_comment_class']}' status-comment-type>
									{$c_['private_comment']}
								</div>
								{$c_['status_comment']}
								<div class='content' status-comment-content>
									{$c_['status_comment_null']}
									{$c_['status_comment_rows']}
								</div>
							</div>
						</div>
					</div>
					";
					$c_ = null;
				};
				return array("return" => true, "count" => $countData, "data" => $returnData);
			}
		}
	}
	function status_getCodeMedia ($object) {
		$c_ = array();
		if (isset($object['media']['type']) && $object['media']['type'] == "link") {
			$c_['status_content_media'] = "<div class='media LinkBox'>";
			foreach ($object['media']['data'] as $key => $value) {
				$value['id'] = "media_link_".$value['display']."_".rand();
				$value['info'] = json_encode(array("type" => "link", "id" => $value['id'], "display" => $value['display'], "host" => $value['host'], "path" => $value['path'], "thumbnail" => $value['thumbnail'], "title" => $value['title'], "description" => $value['description'], "share" => $value['share']));
				$value['direct'] = json_encode(array("by" => "click", "to" => $value['path'], "target" => "_blank"));
				if (isset($value['thumbnail']) && $value['thumbnail'] != null && ($value['thumbnail'] !== 0 || $value['thumbnail'] !== "0")) {
					$c_['status_content_media_thumbnail'] = "<div class='thumbnail'><div style='background-image: url({$value['thumbnail']});'></div></div>";
				}else {
					$c_['status_content_media_thumbnail'] = null;
				}
				$c_['status_content_media'] .= "
				<div class='link' id='{$value['id']}' media='link' media-display='{$value['display']}' media-info='{$value['info']}' direct='{$value['direct']}'>
					{$c_['status_content_media_thumbnail']}
					<div class='info'>
						<div class='title rows nowrap'><span>{$value['title']}</span></div> 
						<div class='description rows'><span>{$value['description']}</span></div> 
						<div class='from rows nowrap'><span>{$value['host']}</span></div> 
					</div>
				</div>
				";
			}
			$c_['status_content_media'] .= "</div>";
		}else if (isset($object['media']['type']) && $object['media']['type'] == "photos") {
			$c_['status_content_media'] = "<div class='media PhotosBox'>";
			foreach ($object['media']['data'] as $key => $value) {
				$value['id'] = "media_photos_".$value['display']."_".rand();
				$value['info'] = json_encode(array("type" => "photos", "id" => $value['id'], "display" => $value['display'], "mime" => $value['mime'], "thumbnail" => $value['thumbnail'], "link" => $value['link'], "share" => $value['share']));
				$c_['status_content_media'] .= "
					<div class='photos' id='{$value['id']}' media='photos' media-display='{$value['display']}' media-info='{$value['info']}' style='background-image: url({$value['thumbnail']})'>
						<img src='{$value['thumbnail']}' alt='{$object['string']}'>
					</div>
				";
			}
			$c_['status_content_media'] .= "</div>";
		}else if (isset($object['media']['type']) && $object['media']['type'] == "music") {
			$c_['status_content_media'] = "<div class='media MusicBox'>";
				foreach ($object['media']['data'] as $key => $value) {
					$value['id'] = "media_music_".$value['display']."_".rand();
					$value['info'] = json_encode(array("type" => "music", "id" => $value['id'], "display" => $value['display'], "link" => $value['link'], "name" => $value['name'], "mime" => $value['mime'], "singer" => $value['singer'], "description" => $value['description'], "share" => $value['share']));
					$c_['status_content_media'] .= "
					<div class='music' id='{$value['id']}' media='music' media-display='{$value['display']}' media-info='{$value['info']}'>
						<div class='icon'>
							<i class='fa fa-play-circle'></i>
						</div>
						<div class='text'>
							<div class='name nowrap'><span>{$value['name']}</span></div>
							<div class='singer nowrap'><span>{$value['singer']}</span></div>
							<div class='description nowrap'><span>{$value['description']}</span></div>
						</div>
					</div>
					";
				}
			$c_['status_content_media'] .= "</div>";
		}else if (isset($object['media']['type']) && $object['media']['type'] == "videos") {
			$c_['status_content_media'] = "<div class='media VideosBox'>";
				foreach ($object['media']['data'] as $key => $value) {
					$value['id'] = "media_videos_".$value['display']."_".rand();
					$value['info'] = json_encode(array("type" => "videos", "id" => $value['id'], "display" => $value['display'], "link" => $value['link'], "thumbnail" => $value['thumbnail'], "name" => $value['name'], "mime" => $value['mime'], "description" => $value['description'], "share" => $value['share']));
					$c_['status_content_media'] .= "
					<div class='videos' id={$value['id']}' media='videos' media-display='{$value['display']}' media-info='{$value['info']}' style='background-image: url({$value['thumbnail']});'>
						<div class='wrap'></div>
						<div class='icon'>
							<i class='fa fa-play-circle'></i>
						</div>
						<div class='nav'>
							<div class='name nowrap'><span>{$value['name']}</span></div>
							<div class='description nowrap'><span>{$value['description']}</span></div>
						</div>
					</div>
					";
				}
			$c_['status_content_media'] .= "</div>";
		}else if (isset($object['media']['type']) && $object['media']['type'] == "cited") {
			$value = $object['media']['data'][0];
			$value['id'] = "media_cited_".$value['token']."_".rand();
			$value['info'] = json_encode(array("type" => "cited", "id" => $value['id'], "display" => $value['display'], "author" => $value['author'], "quote" => $value['quote'], "share" => $value['share']));
			if ($value['thumbnail'] != null) {
				$c_['cited_thumbnail'] = "style='background-image: url({$value['thumbnail']});'";
			}else {
				$c_['cited_thumbnail'] = '';
			}
			$c_['status_content_media'] = "<div class='media CitedBox'>";
			$c_['status_content_media'] .= "
			<div class='cited' id='{$value['id']}' media='cited' media-token='{$value['token']}' media-info='{$value['info']}' {$c_['cited_thumbnail']}>
				<div class='quote'><span>{$value['quote']}</span></div>
				<div class='author'><span>{$value['author']}</span></div>
			</div>
			";
			$c_['status_content_media'] .= "</div>";
		}else if (isset($object['media']['type']) && $object['media']['type'] == "share") {
			if (isset($object['media']['data'][0]['exists']) && $object['media']['data'][0]['exists'] == true) {
				$info = $object['media']['data'][0]['status']['info'];
				$author = $object['media']['data'][0]['status']['author'];
				$value = $object['media']['data'][0]['status']['content'];
				$c_['status_content_media'] = "<div class='media ShareBox'>";
				$c_['status_content_media'] .= "
					<i class='arrow'></i>
					<div class='share' media='share'>
						<div class='author'><span>{$this->class['_language']->text('from', 'strtolower')} <a href='{$info['link']}' target='_blank'>{$this->class['_language']->text('status', 'strtolower')}</a> {$this->class['_language']->text('by', 'strtolower')} <a href='{$author['link']}' target='_blank'>{$author['name']} ({$author['tag']})</a></span></div>
						<div class='text'>
							<span>{$value['text']}</span>
						</div>
						{$this->status_getCodeMedia($value)}
					</div>";
				$c_['status_content_media'] .= "</div>";
			}else {
				$c_['status_content_media'] = null;
			}
		}else {
			$c_['status_content_media'] = null;
		}
		return $c_['status_content_media'];
	}
	function status_statistic ($object) {
		return $this->status_stats($object);
	}
	function status_stats ($object) {
		if (isset($object['id']) && (is_string($object['id']) || is_numeric($object['id']))) $status_id = $object['id']; else $status_id = 0;
		if (isset($object['type']) && is_string($object['type'])) $type = $object['type']; else $type = "all";
		if (isset($object['rows']) && is_string($object['rows'])) $rows = $object['rows']; else $rows = "all";
		if ($status_id == 0) {
			return array("return" => false, "reason" => "");
		}
		$this->callUserInfo();
		if (!isset($this->user['login']) || !$this->user['login']) {
			return array("return" => false, "reason" => "");
		}else {
			$_storage = $this->class['_storage'];
			$_tool = $this->class['_tool'];
			$_parameter = $this->class['_parameter'];
			$_client = $this->class['_client'];
			$_analysis = $this->class['_analysis'];
			$_media = $this->class['_media'];
			$_logs = $this->class['_logs'];
			$_language = $this->class['_language'];
			$db = $this->class['_db']->port('beta');
		}
		$statusQuery = mysqli_query($db, "SELECT `id` FROM `status` WHERE `id` = '{$status_id}'");
		if ($statusQuery) $statusNum = mysqli_num_rows($statusQuery); else $statusNum = 0;
		if ($statusNum > 0) {
			if ($from == "favorite" || $from == "all") {
				$favoriteQuery = mysqli_query($db, "SELECT `id` FROM `status_favorite` WHERE `status.id` = '{$status_id}'");
			}
			if ($from == "share" || $from == "all") {
				$shareQuery = mysqli_query($db, "SELECT `id` FROM `status_share` WHERE `status.id` = '{$status_id}'");
			}
			if ($from == "invite" || $from == "all") {
				$inviteQuery = mysqli_query($db, "SELECT `id` FROM `status_invite` WHERE `status.id` = '{$status_id}'");
			}
			if ($from == "comment" || $from == "all") {
				$commentQuery = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `status.id` = '{$status_id}'");
			}
			if ($type == "statistic" || $type == "all") {
				if (($from == "favorite" || $from == "all") && isset($favoriteQuery)) {
					$favoriteNum = mysqli_num_rows($favoriteQuery);
				}
				if (($from == "share" || $from == "all") && isset($shareQuery)) {
					$shareNum = mysqli_num_rows($shareQuery);
				}
				if (($from == "invite" || $from == "all") && isset($inviteQuery)) {
					$inviteNum = mysqli_num_rows($inviteQuery);
				}
				if (($from == "comment" || $from == "all") && isset($commentQuery)) {
					$commentNum = mysqli_num_rows($commentQuery);
				}
				$statistic = array();
				if (($from == "favorite" || $from == "all") && isset($favoriteNum)) {
					$statistic['favorite'] = $favoriteNum;
				}
				if (($from == "share" || $from == "all") && isset($shareNum)) {
					$statistic['share'] = $shareNum;
				}
				if (($from == "invite" || $from == "all") && isset($inviteNum)) {
					$statistic['invite'] = $inviteNum;
				}
				if (($from == "comment" || $from == "all") && isset($commentNum)) {
					$statistic['comment'] = $commentNum;
				}
			}else {
				$statistic = null;
			}
			if ($type == "list" || $type == "all") {
				if (($from == "favorite" || $from == "all") && isset($favoriteQuery)) {
					$favoriteList = array();
					while ($favoriteListFetch = mysqli_fetch_assoc($favoriteQuery)) {
					$favoriteList[] = array("guy.type" => $favoriteListFetch['guy.type'], "guy.id" => $favoriteListFetch['guy.id']);
					}
				}
				if (($from == "share" || $from == "all") && isset($shareQuery)) {
					$shareList = array();
					while ($shareListFetch = mysqli_fetch_assoc($shareQuery)) {
					$shareList[] = array("guy.type" => $shareListFetch['guy.type'], "guy.id" => $shareListFetch['guy.id']);
					}
				}
				if (($from == "invite" || $from == "all") && isset($inviteQuery)) {
					$inviteList = array();
					while ($inviteListFetch = mysqli_fetch_assoc($inviteQuery)) {
					$inviteList[] = array("guy.type" => $inviteListFetch['guy.type'], "guy.id" => $inviteListFetch['guy.id']);
					}
				}
				if (($from == "comment" || $from == "all") && isset($commentQuery)) {
					$commentList = array();
					while ($commentListFetch = mysqli_fetch_assoc($commentQuery)) {
					$commentList[] = array("guy.type" => $commentListFetch['guy.type'], "guy.id" => $commentListFetch['guy.id']);
					}
				}
				$list = array();
				if (($from == "favorite" || $from == "all") && isset($favoriteList)) {
					$list['favorite'] = $favoriteList;
				}
				if (($from == "share" || $from == "all") && isset($shareList)) {
					$list['share'] = $shareList;
				}
				if (($from == "invite" || $from == "all") && isset($inviteList)) {
					$list['invite'] = $inviteList;
				}
				if (($from == "comment" || $from == "all") && isset($commentList)) {
					$list['comment'] = $commentList;
				}
			}else {
				$list = null;
			}
			return array("return" => true, "stats" => $statistic, "list" => $list);
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function status_follow ($object) {
		if (isset($object['id']) && (is_string($object['id']) || is_numeric($object['id']))) $status_id = $object['id']; else $status_id = 0;
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($status_id > 0 && ($action == "add" || $action == "remove")) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['id']) && $this->user['login'] == true && $this->user['mode']['type'] != null && $this->user['mode']['id'] > 0) {
				return array("return" => false, "reason" => "");
			}else {
				$_storage = $this->class['_storage'];
				$_tool = $this->class['_tool'];
				$_parameter = $this->class['_parameter'];
				$_client = $this->class['_client'];
				$_analysis = $this->class['_analysis'];
				$db = $this->class['_db']->port('beta');
			}
			$statusQuery = mysqli_query($db, "SELECT `id`, `user.id`, `author.id`, `author.type`, `private.comment` FROM `status` WHERE `id` = '{$status_id}'");
			if ($statusQuery) $statusNum = mysqli_num_rows($statusQuery); else $statusNum = 0;
			if ($statusNum > 0) {
				$statusFetch = mysqli_fetch_assoc($statusQuery);
				$followNum = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_follow` WHERE `status.id` = '{$statusFetch['id']}' AND `guy.id` = '{$user['mode']['id']}' AND `guy.type` = '{$user['mode']['type']}'"));
				if ($followNum == 0 && $action == "add") {
					$relaNum = 0;
					$statusFetch_private = $statusFetch['private.comment'];
					if ($statusFetch['author.type'] == 'user' && $user['mode']['type'] == 'user') {
						if ($user['id'] == $statusFetch['user.id']) $relaNum = 1;
						if ($relaNum = 0) {
							$numQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$user['id']}' AND `guy.id` = '{$statusFetch['user.id']}'");
							if ($numQuery) $num = mysqli_num_rows($numQuery); else $num = 0;
							if ($num > 0) $relaNum = 2;
						}
						if ($relaNum = 0) {
							$numQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$user['id']}' AND (`guy.id` = '{$statusFetch['user.id']}' OR `guy.id` IN (SELECT `user.id` FROM `friends` WHERE `guy.id` = '{$statusFetch['user.id']}'))");
							if ($numQuery) $num = mysqli_num_rows($numQuery); else $num = 0;
							$num = mysqli_num_rows($numQuery);
							if ($num > 0) $relaNum = 3;
						}
						if ($relaNum = 0) $relaNum = 4;
					}else {
						if ($user['mode']['id'] == $statusFetch['author.id'] && $user['mode']['type'] == $statusFetch['author.type']) {
							$relaNum = 1;
						}
						if ($relaNum = 0) $relaNum = 4;
					}
					if ($relaNum < $statusFetch_private) {
						$time = time();
						$action = mysqli_query($db, "INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.id`, `guy.type`) VALUES (null, '{$time}', '{$statusFetch['id']}', '{$user['mode']['id']}', '{$user['mode']['type']}')");
						if ($action == false) {
							return array("return" => false, "reason" => "");
						}else {
							return array("return" => true);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else if ($followNum > 0 && $action == "remove") {
					$action = mysqli_query($db, "DELETE FROM `status_follow` WHERE `status.id` = '{$statusFetch['id']}' AND `guy.id` = '{$user['mode']['id']}' AND `guy.type` = '{$user['mode']['type']}'");
					if ($action == false) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					if ($action != "add" && $action != "remove") {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => false, "reason" => "");
					}
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			if ($status_id == 0) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function status_favorite ($object) {
		if (isset($object['status_id']) && (is_string($object['status_id']) || is_numeric($object['status_id']))) $status_id = $object['status_id']; else $status_id = 0;
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($status_id > 0 && ($action == "add" || $action == "remove")) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['id']) && $this->user['login'] == true && $this->user['mode']['type'] != null && $this->user['mode']['id'] > 0) {
				return array("return" => false, "reason" => "");
			}else {
				$_storage = $this->class['_storage'];
				$_tool = $this->class['_tool'];
				$_parameter = $this->class['_parameter'];
				$_client = $this->class['_client'];
				$_analysis = $this->class['_analysis'];
				$db = $this->class['_db']->port('beta');
			}
			$statusQuery = mysqli_query($db, "SELECT `id`, `user.id`, `author.id`, `author.type`, `private.comment` FROM `status` WHERE `id` = '{$status_id}'");
			if ($statusQuery) $statusNum = mysqli_num_rows($statusQuery); else $statusNum = 0;
			if ($statusNum > 0) {
				$statusFetch = mysqli_fetch_assoc($statusQuery);
				$favoriteNum = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_favorite` WHERE `status.id` = '{$statusFetch['id']}' AND `guy.id` = '{$user['mode']['id']}' AND `guy.type` = '{$user['mode']['type']}'"));
				if ($favoriteNum == 0 && $action == "add") {
					$relaNum = 0;
					$statusFetch_private = $statusFetch['private.comment'];
					if ($statusFetch['author.type'] == 'user' && $user['mode']['type'] == 'user') {
						if ($user['id'] == $statusFetch['user.id']) $relaNum = 1;
						if ($relaNum = 0) {
							$numQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$user['id']}' AND `guy.id` = '{$statusFetch['user.id']}'");
							if ($numQuery) $num = mysqli_num_rows($numQuery); else $num = 0;
							if ($num > 0) $relaNum = 2;
						}
						if ($relaNum = 0) {
							$numQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$user['id']}' AND (`guy.id` = '{$statusFetch['user.id']}' OR `guy.id` IN (SELECT `user.id` FROM `friends` WHERE `guy.id` = '{$statusFetch['user.id']}'))");
							if ($numQuery) $num = mysqli_num_rows($numQuery); else $num = 0;
							$num = mysqli_num_rows($numQuery);
							if ($num > 0) $relaNum = 3;
						}
						if ($relaNum = 0) $relaNum = 4;
					}else {
						if ($user['mode']['id'] == $statusFetch['author.id'] && $user['mode']['type'] == $statusFetch['author.type']) {
							$relaNum = 1;
						}
						if ($relaNum = 0) $relaNum = 4;
					}
					if ($relaNum < $statusFetch_private) {
						$time = time();
						$action = mysqli_query($db, "INSERT INTO `status_favorite` (`id`, `time`, `status.id`, `guy.id`, `guy.type`) VALUES (null, '{$time}', '{$statusFetch['id']}', '{$user['mode']['id']}', '{$user['mode']['type']}')");
						if ($action == false) {
							return array("return" => false, "reason" => "");
						}else {
							return array("return" => true);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else if ($favoriteNum > 0 && $action == "remove") {
					$action = mysqli_query($db, "DELETE FROM `status_favorite` WHERE `status.id` = '{$statusFetch['id']}' AND `guy.id` = '{$user['mode']['id']}' AND `guy.type` = '{$user['mode']['type']}'");
					if ($action == false) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					if ($action != "add" && $action != "remove") {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => false, "reason" => "");
					}
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			if ($status_id == 0) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function comment_get ($object = array("return" => "json", "query" => null, "class" => "gFeeds-status-comment")) {
		if (isset($object['return']) && is_string($object['return'])) $return = $object['return']; else $return = null;
		if (isset($object['query']) && is_string($object['query'])) $query = $object['query']; else $query = null;
		$this->callUserInfo();
		if ($return == null || $query == null) {
			return array("return" => false, "reason" => "");
		}else {
			$_storage = $this->class['_storage'];
			$_tool = $this->class['_tool'];
			$_parameter = $this->class['_parameter'];
			$_client = $this->class['_client'];
			$_analysis = $this->class['_analysis'];
			$db = $this->class['_db']->port('beta');
		}
		$commentQuery = mysqli_query($db, $query);
		if ($commentQuery) $commentNum = mysqli_num_rows($commentQuery); else $commentNum = 0;
		if ($commentNum == 0) {
			$a_return = true;
			$a_reason = null;
			$a_data = null;
		}else {
			while ($comment = mysqli_fetch_assoc($commentQuery)) {
				if (isset($comment['status.id']) && $comment['status.id'] != 0) {
					$key = $comment['time']."::".$comment['status.id'];
					$comment_info['inside'] = "status";
				}else if (isset($comment['comment.id']) && $comment['comment.id'] != 0) {
					$key = $comment['time']."::".$comment['comment.id'];
					$comment_info['inside'] = "comment";
				}else {
					continue;
				}
				$comment_info['id'] = $comment['id'];
				$comment_author['type'] = $comment['author.type'];
				$comment_author['id'] = $comment['author.id'];
				if ($comment_author['type'] == "user") {
					$getInfo = $_user->getInfo(array("id" => $comment_author['id'], "rows" => "`avatar.small`, `fullname`, `username`, `link`"));
					if (isset($getInfo['return']) && $getInfo['return'] == true) {
						$comment_author['avatar'] = $getInfo['data']['avatar.small'];
						$comment_author['name'] = $getInfo['data']['fullname'];
						$comment_author['tag'] = $getInfo['data']['username'];
						$comment_author['link'] = $getInfo['data']['link'];
					}else {
						continue;
					}
				}else {
					continue;
				}
				if ($comment['edit'] != "") {
					$comment_edit['status'] = true;
					$comment_edit['time']['stamp'] = $comment['edit'];
					$comment_edit['time']['ago'] = $_tool->agoDatetime($comment['edit'], 'ago');
					$comment_edit['time']['tip'] = $_tool->agoDatetime($comment['edit'], 'tip');
					$comment_edit['time']['json'] = json_encode(array("stamp" => $comment_edit['time']['stamp']));
				}else {
					$comment_edit['status'] = false;
				}
				$comment_time['stamp'] = $comment['time'];
				$comment_time['ago'] = $_tool->agoDatetime($comment['time'], 'ago');
				$comment_time['tip'] = $_tool->agoDatetime($comment['time'], 'tip');
				$comment_time['json'] = json_encode(array("stamp" => $comment_time['stamp']));
				$comment_content['text'] = $_tool->parseContent($_tool->hash('decode', $comment['content'], $key));
				$comment_statistic['favorite'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_comment_favorite` WHERE `comment.id` = '{$comment['id']}'"));
				$comment_action['favorite']['check'] = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_comment_favorite` WHERE `comment.id` = '{$comment['id']}' AND `guy.id` = '{$this->user['mode']['id']}' AND `guy.type` = '{$this->user['mode']['type']}'"));
				if ($comment_action['favorite']['check'] == 0) {
					$comment_action['favorite']['selected'] = false;
					$comment_action['favorite']['text'] = 'false';
					$comment_action['favorite']['tip'] = $_language->text('favorite', 'ucfirst');
				}else {
					$comment_action['favorite']['selected'] = true;
					$comment_action['favorite']['text'] = 'true';
					$comment_action['favorite']['tip'] = $_language->text('unfavorite', 'ucfirst');
				}
				$comment_reply = array();
				$comment_reply_query = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `comment.id` = '{$comment['id']}'");
				if ($comment_reply_query == true) $comment_reply['count'] = mysqli_num_rows($comment_reply_query); else $comment_reply['count'] = 0;
				$commentData[] = array (
					'info' => $comment_info,
					'author' => $comment_author,
					'edit' => $comment_edit,
					'time' => $comment_time,
					'content' => $comment_content,
					'statistic' => $comment_statistic,
					'action' => $comment_action,
					'relpy' => $comment_reply
				);
			}
			if ($return == "json") {
				$a_return = true;
				$a_reason = null;
				$a_data = $commentData;
			}else if ($return == "html") {
				$className = $object['class'];
				$c_data = null;
				for ($i = 0; $i < count($commentData); $i++ ) {
					$comment = $commentData[$i];
					if ($comment['edit']['status']) {
						$c_comment_edit = "
						<div class='edit'>
							<i class='_tt s' time='{$comment['edit']['time']['json']}' title='{$comment['edit']['time']['tip']}'></i>
							<span time-show>{$comment['edit']['time']['ago']}</span>
						</div>
						";
					}else {
						$c_comment_edit = null;
					}
					if ($comment['info']['inside'] == "status") {
						$c_comment_reply = "
						<div class='reply'>
							<i class='_tt s' title='{$_language->text('reply_comment', 'ucfirst')}'></i>
							<span status-comment-reply>{$comment['relpy']['count']}</span>
						</div>
						";
					}else {
						$c_comment_reply = null;
					}
					$c_comment_info = json_encode($comment['info']);
					$c_data .= "
						<div class='{$className}' status-comment-lines comment='{$c_comment_info}'>
							<div class='bL'>
								<a class='avatar' href='{$comment['author']['link']}'>
									<img class='img' src='{$comment['author']['avatar']}'>
								</a>
							</div>
							<div class='bR'>
								<div class='i'></div>
								<div class='header'>
									<div class='nowrap name'>
										<i class='i-{$comment['author']['type']} _tt s' title='{$comment['author']['tag']}'></i>
										<span><a href='{$comment['author']['link']}'>{$comment['author']['name']}</a></span>
									</div>
									<div class='nowrap time' time='{$comment['time']['json']}'>
										<i class='_tt s' title='{$comment['time']['tip']}'></i>
										<span time-show>{$comment['time']['ago']}</span>
									</div>
								</div>
								<div class='body'>
									<span>{$comment['content']['text']}</span>
								</div>
								<div class='footer'>
									<div class='favorite'>
										<i class='_tt s' status-comment-action-favorite favorite='{$comment['action']['favorite']['text']}' title='<small>{$comment['action']['favorite']['tip']}</small>'></i>
										<span status-comment-statistic-favorite>{$comment['statistic']['favorite']}</span>
									</div>
									{$c_comment_reply}
									{$c_comment_edit}
								</div>
							</div>
						</div>
					";
				};
				$a_return = true;
				$a_reason = null;
				$a_data = $c_data;
			}
		}
		return array("return" => $a_return, "reason" => $a_reason, "data" => $a_data);
	}
	function comment_add ($object) {
		if (isset($object['status_id']) && (is_string($object['status_id']) || is_numeric($object['status_id']))) $statusId = $object['status_id']; else $statusId = 0;
		if (isset($object['comment_id']) && (is_string($object['comment_id']) || is_numeric($object['comment_id']))) $commentId = $object['comment_id']; else $commentId = 0;
		if (isset($object['content']) && is_string($object['content'])) $content = $this->class['_tool']->convertDatabaseString($object['content']); else $content = null;
		if (($statusId > 0 || $commentId > 0) && $content != null) {
			$this->callUserInfo();
			if ($return == null || $query == null) {
				return array("return" => false, "reason" => "");
			}else {
				$_storage = $this->class['_storage'];
				$_tool = $this->class['_tool'];
				$_parameter = $this->class['_parameter'];
				$_client = $this->class['_client'];
				$_analysis = $this->class['_analysis'];
				$db = $this->class['_db']->port('beta');
			}
			if (isset($user['login'], $user['mode']['type'], $user['mode']['id']) && $user['login'] == true && $user['mode']['type'] != null && $user['mode']['id'] > 0) {
				if ($statusId > 0) {
					$statusQuery = mysqli_query($db, "SELECT `id`, `user.id`, `author.id`, `author.type`, `private.comment` FROM `status` WHERE `id` = '{$statusId}'");
					if ($statusQuery == true && mysqli_num_rows($statusQuery) > 0) {
						$statusFetch = mysqli_fetch_assoc($statusQuery);
						$relaNum = 0;
						$statusFetch_private = $statusFetch['private.comment'];
						$relaNum = 0;
						$statusFetch_private = $statusFetch['private.comment'];
						if ($statusFetch['author.type'] == 'user' && $user['mode']['type'] == 'user') {
							if ($user['id'] == $statusFetch['user.id']) $relaNum = 1;
							if ($relaNum = 0) {
								$numQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$user['id']}' AND `guy.id` = '{$statusFetch['user.id']}'");
								if ($numQuery) $num = mysqli_num_rows($numQuery); else $num = 0;
								if ($num > 0) $relaNum = 2;
							}
							if ($relaNum = 0) {
								$numQuery = mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$user['id']}' AND (`guy.id` = '{$statusFetch['user.id']}' OR `guy.id` IN (SELECT `user.id` FROM `friends` WHERE `guy.id` = '{$statusFetch['user.id']}'))");
								if ($numQuery) $num = mysqli_num_rows($numQuery); else $num = 0;
								$num = mysqli_num_rows($numQuery);
								if ($num > 0) $relaNum = 3;
							}
							if ($relaNum = 0) $relaNum = 4;
						}else {
							if ($user['mode']['id'] == $statusFetch['author.id'] && $user['mode']['type'] == $statusFetch['author.type']) {
								$relaNum = 1;
							}
							if ($relaNum = 0) $relaNum = 4;
						}
						if ($relaNum < $statusFetch_private) {
							$time = time();
							$key = $time."::".$status_id;
							$content = $_tool->hash('encode', $_tool->convertDatabaseString($content), $key);
							$action = mysqli_query($db, "INSERT INTO `status_comment` (`id`, `time`, `status.id`, `comment.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES (null, '{$time}', '{$status_id}', '0', '{$user['mode']['type']}', '{$user['mode']['id']}', null, '{$value}', null)");
							if (!$action) {
								return array("return" => false, "reason" => "");
							}else {
								$obj_id = mysqli_insert_id($db);
								// $this->class['_logs']->actions("add", array("action" => "add", "things" => "status", "things_id" => $status['id'], "obj" => "comment", "obj_id" => $obj_id));
								return array("return" => true);
							}
						}else {
							return array("return" => false, "reason" => "");
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else if ($commentId > 0) {
					$commentQuery = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `id` = '{$commentId}'");
					if ($commentQuery == true && mysqli_num_rows($commentQuery) > 0) {
						$commentFetch = mysqli_fetch_assoc($commentQuery);
						$time = time();
						$key = $time."::".$comment_id;
						$content = $_tool->hash('encode', $_tool->convertDatabaseString($content), $key);
						$action = mysqli_query($db, "INSERT INTO `status_comment` (`id`, `time`, `status.id`, `comment.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES (null, '{$time}', '0', '{$comment_id}', '{$user['mode']['type']}', '{$user['mode']['id']}', null, '{$value}', null)");
						if (!$action) {
							return array("return" => false, "reason" => "");
						}else {
							// $obj_id = mysqli_insert_id($db);
							// $this->class['_logs']->actions("add", array("action" => "add", "things" => "status", "things_id" => $status['id'], "obj" => "comment", "obj_id" => $obj_id));
							return array("return" => true);
						}
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			if ($status_id == 0) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function comment_delete () {
	}
	function comment_edit () {
	}
	function comment_favorite ($object) {
		if (isset($object['comment_id']) && is_string($object['comment_id'])) $comment_id = $object['comment_id']; else $id = 0;
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($comment_id > 0 && ($action == "add" || $action == "remove")) {
			$db = $this->class['_db']->port('beta');
			$this->callUserInfo();
			if ($this->user['login'] && $this->user['id'] > 0) {
				$status = mysqli_fetch_assoc(mysqli_query($db, "SELECT `status.id` FROM `status_comment` WHERE `id` = '{$comment_id}'"));
				$status_id = $status['status.id'];
				$status_query = mysqli_query($db, "SELECT `id`, `user.id`, `author.id`, `author.type`, `private.comment` FROM `status` WHERE `id` = '{$status_id}'");
				if (mysqli_num_rows($status_query) > 0) {
					$status = mysqli_fetch_assoc($status_query);
					$favorite_num = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `status_comment_favorite` WHERE `comment.id` = '{$comment_id}' AND `guy.id` = '{$this->user['mode']['id']}' AND `guy.type` = '{$this->user['mode']['type']}'"));
					if ($favorite_num == 0 && $action == "add") {
						$relationship_num = 0;
						$status_private = $status['private.comment'];
						if ($status['author.type'] == 'user' && $this->user['mode']['type'] == 'user') {
							if ($this->user['id'] == $status['user.id']) {
								$relationship_num = 1;
							}
							if ($relationship_num = 0) {
								$num = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$this->user['id']}' AND `guy.id` = '{$status['user.id']}'"));
								if ($num > 0) {
									$relationship_num = 2;
								}
							}
							if ($relationship_num = 0) {
								$num = mysqli_num_rows(mysqli_query($db, "SELECT `id` FROM `friends` WHERE `user.id` = '{$this->user['id']}' AND (`guy.id` = '{$status['user.id']}' OR `guy.id` IN (SELECT `user.id` FROM `friends` WHERE `guy.id` = '{$status['user.id']}'))"));
								if ($num > 0) {
									$relationship_num = 3;
								}
							}
							if ($relationship_num = 0) {
								$relationship_num = 4;
							}
						}else {
							if ($this->user['mode']['id'] == $status['author.id'] && $this->user['mode']['type'] == $status['author.type']) {
								$relationship_num = 1;
							}
							if ($relationship_num = 0) {
								$relationship_num = 4;
							}
						}
						if ($relationship_num < $status_private) {
							$time = $this->class['_tool']->timeNow();
							$action = mysqli_query($db, "INSERT INTO `status_comment_favorite` (`id`, `time`, `comment.id`, `guy.id`, `guy.type`) VALUES (null, '{$time}', '{$comment_id}', '{$this->user['mode']['id']}', '{$this->user['mode']['type']}')");
							if (!$action) {
								return array("return" => false, "reason" => "ERROR#FEEDS_007");
							}else {
								$this->class['_logs']->actions("add", array("action" => "favorite", "things" => "status_comment", "things_id" => $comment_id));
								return array("return" => true);
							}
						}else {
							return array("return" => false, "reason" => "ERROR#FEEDS_006");
						}
					}else if ($favorite_num > 0 && $action == "remove") {
						$action = mysqli_query($db, "DELETE FROM `status_comment_favorite` WHERE `comment.id` = '{$comment_id}' AND `guy.id` = '{$this->user['mode']['id']}' AND `guy.type` = '{$this->user['mode']['type']}'");
						if (!$action) {
							return array("return" => false, "reason" => "ERROR#FEEDS_007");
						}else {
							$this->class['_logs']->actions("add", array("action" => "unfavorite", "things" => "status_comment", "things_id" => $comment_id));
							return array("return" => true);
						}
					}else {
						if ($action != "add" && $action != "remove") {
							return array("return" => false, "reason" => "");
						}else {
							return array("return" => false, "reason" => "ERROR#FEEDS_005");
						}
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else {
				return array("return" => false, "reason" => "ERROR#FEEDS_003");
			}
		}else {
			if ($comment_id == 0) {
				return array("return" => false, "reason" => "ERROR#FEEDS_009");
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function comment_statistic ($object) {
		if (isset($object['id']) && (is_numeric($object['id']) || is_string($object['id']))) $id = $object['id']; else $id = 0;
		if (isset($object['from']) && is_string($object['from'])) $from = $object['from']; else $from = null;
		if ($id > 0 && $from > 0) {
			$db = $this->class['_db']->port('beta');
			if ($from == 1) {
				$query = mysqli_query($db, "SELECT `id` FROM `status_comment` WHERE `id` = '{$id}' LIMIT 1");
				$num = mysqli_num_rows($query);
			}else if ($from == 2) {
				$query = mysqli_query($db, "SELECT `id` FROM `status` WHERE `id` = '{$id}'");
				$num = mysqli_num_rows($query);
			}
			if ($num > 0) {
				if ($from == 1) {
					$comment_id = $id;
					$favoriteQuery = mysqli_query($db, "SELECT `id`, `guy.type`, `guy.id` FROM `status_comment_favorite` WHERE `comment.id` = '{$comment_id}'");
					$favoriteNum = mysqli_num_rows($favoriteQuery);
					$a_statistic = array("favorite" => $favoriteNum);
					$favoriteList = array();
					while ($favoriteListFetch = mysqli_fetch_assoc($favoriteQuery)) {
						$favoriteList[] = array(
							"guy.type" => $favoriteListFetch['guy.type'], 
							"guy.id" => $favoriteListFetch['guy.id']
						);
					}
					$a_list = array("favorite" => $favoriteList);
					$a_comment[] = array("id" => $comment_id, "statistic" => $a_statistic, "list" => $a_list);
				}else if ($from == 2) {
					$a_comment = array();
					$query = mysqli_query($db,"SELECT `id` FROM `status_comment` WHERE `status.id` = '{$id}'");
					while ($fetch = mysqli_fetch_assoc($query)) {
						$comment_id = $fetch['id'];
						$favoriteQuery = mysqli_query($db, "SELECT `id`, `guy.type`, `guy.id` FROM `status_comment_favorite` WHERE `comment.id` = '{$comment_id}'");
						$favoriteNum = mysqli_num_rows($favoriteQuery);
						$a_statistic = array("favorite" => $favoriteNum);
						$favoriteList = array();
						while ($favoriteListFetch = mysqli_fetch_assoc($favoriteQuery)) {
							$favoriteList[] = array(
								"guy.type" => $favoriteListFetch['guy.type'], 
								"guy.id" => $favoriteListFetch['guy.id']
							);
						}
						$a_list = array("favorite" => $favoriteList);
						$a_comment[] = array("id" => $comment_id, "statistic" => $a_statistic, "list" => $a_list);
					}
				}
				return array("return" => true, "data" => $a_comment);
			}else {
				return array("return" => true, "data" => "");
			}
		}else {
			if ($id == 0) {
				return array("return" => false, "reason" => "ERROR#FEEDS_009");
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function comment_report () {
	}
}
?>