<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class messages {
	function __construct () {
		$GLOBALS["_messages"] = $this;
		$this->class = $GLOBALS;
	}
	function tab ($object) {
		if (!isset($_SESSION["user"]['login'], $_SESSION["user"]['mode'], $_SESSION["client"]['token']['action']['messages']) || !$_SESSION["user"]['login']) {
			return array("return" => false, "reason" => "");
		}
		$this->user = $_SESSION["user"];
		if (isset($object['action']) && is_string($object['action'])) $action = addslashes($object['action']); else $action = null;
		if ($action == 1 || $action == "add" || $action == "create") {
			if ($object['guy']) $guy = $object['guy']; else $guy = null;
			$type = 0;
			if (is_array($guy) && count($guy) == 1) {
				$type = 1;
			}else if (is_array($guy) && count($guy) > 1) {
				$type = 2;
			}
			$tab = array();
			if ($type == 1) {
				$tab['name'] = null;
			}else if ($type == 2) {
				$tab['name'] = null;
			}else {
				return array("return" => false, "reason" => "");
			}
			$tab['type'] = $type;
			$tab['private'] = 1;
			$tab['token'] = hash('crc32', time().'::'.rand().'::('.$_SESSION["client"]['token']['action']['messages'].')');
			if ($tab['type'] == 1) {
				$tab['num'] = mysqli_num_rows(mysqli_query($this->class['_db']->port('beta'),"SELECT `id` FROM `messages_id` WHERE `type` = '{$tab['type']}' AND `id` IN (SELECT `tab` FROM `messages_members` WHERE `guy.type` = '{$this->user['mode']['type']}' AND `guy.id` = '{$this->user['mode']['id']}') AND `id` IN (SELECT `tab` FROM `messages_members` WHERE `guy.type` = '{$guy[0]['type']}' AND `guy.id` = '{$guy[0]['id']}') LIMIT 1"));
				if ($tab['num'] > 0) {
					return array("return" => false, "reason" => "");
				}
			}
			$tab['insert'] = mysqli_query($this->class['_db']->port('beta'),"INSERT INTO `messages_id` (`id`, `time`, `token`, `private`, `type`, `name`) VALUES (NULL, '{$this->class['_tool']->timeNow()}', '{$tab['token']}', '{$tab['private']}', '{$tab['type']}', '{$tab['name']}')");
			$tab['id'] = mysqli_insert_id($this->class['_db']->port('beta'));
			return array("return" => true, "data" => $tab);
		}else if ($action == 2 || $action == "get") {
			if ($object['get']) $get = $object['get']; else $get = null;
			if (is_array($get) && isset($get['label'], $get['value'])) {
				if ($object['rows']) $rows = $object['rows']; else $rows = "*";
				if ($rows != null) {
					$sql = "SELECT {$rows} FROM `messages_id` WHERE `{$get['label']}` = '{$get['value']}' LIMIT 1";
					$query = mysqli_query($this->class['_db']->port('beta'), $sql);
					$num = mysqli_num_rows($query);
					if ($num > 0) {
						$fetch = mysqli_fetch_assoc($query);
						if (isset($fetch['id'], $fetch['name']) && $fetch['name'] == "") {
							$members['query'] = mysqli_query($this->class['_db']->port('beta'),"SELECT `guy.type`, `guy.id` FROM `messages_members` WHERE `tab` = '{$fetch['id']}' AND (`guy.type` != '{$this->user['mode']['type']}' OR `guy.id` != '{$this->user['mode']['id']}') ORDER BY RAND() LIMIT 1");
							$members['fetch'] = mysqli_fetch_assoc($members['query']);
							if ($members['fetch']['guy.type'] == "user") {
								$name = mysqli_fetch_assoc(mysqli_query($this->class['_db']->port('beta'),"SELECT `lastname` FROM `users` WHERE `id` = '{$members['fetch']['guy.id']}' LIMIT 1"))['lastname'];
							}else {
								$name = null;
							}
							$members['query'] = mysqli_query($this->class['_db']->port('beta'),"SELECT `id` FROM `messages_members` WHERE `tab` = '{$fetch['id']}' AND (`guy.type` != '{$this->user['mode']['type']}' OR `guy.id` != '{$this->user['mode']['id']}')");
							$members['num'] = mysqli_num_rows($members['query']);
							if ($members['num'] > 1) {
								$name .= " {$this->class['_language']->text('and', 'strtolower', false)} ".($members['num'] - 1)." ".$this->class['_language']->text('others', 'strtolower', false);
							}
							$fetch['name'] = $name;
						}
						return array("return" => true, "data" => $fetch);
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
			return array("return" => false, "reason" => "");
		}
	}
	function members ($object) {
		if (!isset($_SESSION["user"]['mode'], $_SESSION["client"]['token']['action']['messages'])) {
			return array("return" => false, "reason" => "");
		}
		$this->user = $_SESSION["user"];
		if (isset($object['action']) && is_string($object['action'])) $action = addslashes($object['action']); else $action = null;
		if ($action == 1 || $action == "add") {
			if (isset($object['id']) && is_string($object['id'])) $id = addslashes($object['id']); else $id = 0;
			if ($object['guy']) $guy = $object['guy']; else $guy = null;
			if ($id > 0 && is_array($guy) && count($guy) > 0) {
				$num['tab'] = mysqli_num_rows(mysqli_query($this->class['_db']->port('beta'),"SELECT `id` FROM `messages_id` WHERE `id` = '{$id}' LIMIT 1"));
				if ($num['tab'] == 0) {
					return array("return" => false, "reason" => "");
				}
				$data = array();
				foreach ($guy as $i => $guyThis) {
					if (!isset($guyThis['type'], $guyThis['id'])) {
						unset($guy[$i]);
						return;
					}else {
						$num['guy'] = 0;
						if ($guyThis['type'] == "user") {
							$num['guy'] = mysqli_num_rows(mysqli_query($this->class['_db']->port('beta'),"SELECT `id` FROM `users` WHERE `id` = '{$guyThis['id']}' LIMIT 1"));
						}
						if ($num['guy'] == 0) {
							unset($guy[$i]);
							return;
						}
						if (!isset($guyThis['translate'])) {
							$guyThis['translate'] = 0;
						}
						if (!isset($guyThis['regency'])) {
							$guyThis['regency'] = "member";
						}
						$guyThis['insert'] = mysqli_query($this->class['_db']->port('beta'),"INSERT INTO `messages_members` (`id`, `time`, `tab`, `type`, `translate`, `guy.type`, `guy.id`) VALUES (NULL, '{$id}', '{$this->class['_tool']->timeNow()}', '{$guyThis['regency']}', '{$guyThis['translate']}', '{$guyThis['type']}', '{$guyThis['id']}')");
						$guyThis['id'] = mysqli_insert_id($this->class['_db']->port('beta'));
						if ($guyThis['insert'] == true) {
							$data[] = $guyThis;
						}
					}
				}
				return array("return" => true, "data" => $data); 
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == 2 || $action == "get") {
			if (isset($object['id']) && is_string($object['id'])) $id = addslashes($object['id']); else $id = 0;
			if ($id > 0) {
				if (isset($object['rows']) && is_string($object['rows'])) $rows = addslashes($object['rows']); else $rows = "*";
				if (isset($object['limit']) && is_string($object['limit'])) $limit = addslashes($object['limit']); else $limit = null;
				$sql = "SELECT {$rows} FROM `messages_members` WHERE `tab` = '{$id}' {$limit}";
				$query = mysqli_query($this->class['_db']->port('beta'), $sql);
				$num = mysqli_num_rows($query);
				if ($num > 0) {
					$data = array();
					while ($fetch = mysqli_fetch_assoc($query)) {
						$data[] = $fetch;
					}
					return array("return" => true, "data" => $data);
				}else {
					return array("return" => false, "reason" => "");
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function data ($object) {
		if (!isset($_SESSION["user"]['login'], $_SESSION["user"]['mode'], $_SESSION["client"]['token']['action']['messages']) || !$_SESSION["user"]['login']) {
			return array("return" => false, "reason" => "");
		}
		$this->user = $_SESSION["user"];
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == 1 || $action == "add") {
			if (isset($object['id'])) $id = $object['id']; else $id = 0;
			if (isset($object['content'])) $content = $this->class['_tool']->convertDatabaseString($object['content']); else $content = null;
			if (isset($object['emoticons'])) $emoticons = $object['emoticons']; else $emoticons = null;
			if ($id > 0 && $content != null) {
				$num['tab'] = mysqli_num_rows(mysqli_query($this->class['_db']->port('beta'),"SELECT `id` FROM `messages_id` WHERE `id` = '{$id}' LIMIT 1"));
				if ($num['tab'] == 0) {
					return array("return" => false, "reason" => "");
				}
				$num['private'] = mysqli_num_rows(mysqli_query($this->class['_db']->port('beta'),"SELECT `id` FROM `messages_members` WHERE `tab` = '{$id}' AND `guy.type` = '{$this->user['mode']['type']}' AND `guy.id` = '{$this->user['mode']['id']}'"));
				if ($num['private'] == 0) {
					return array("return" => false, "reason" => "");
				}
				$content = $this->class['_tool']->hash('encode', $content, $id.'::'.$this->class['_tool']->timeNow());
				$insert = mysqli_query($this->class['_db']->port('beta'),"INSERT INTO `messages_data` (`id`, `time`, `tab`, `author.type`, `author.id`, `content`, `emoticons`) VALUES (NULL, '{$this->class['_tool']->timeNow()}', '{$id}', '{$this->user['mode']['type']}', '{$this->user['mode']['id']}', '{$content}', '{$emoticons}')");
				$messages['id'] = mysqli_insert_id($this->class['_db']->port('beta'));
				$messages['tab'] = $id;
				$messages['content'] = $content;
				$messages['time'] = $this->class['_tool']->timeNow();
				$messages['author'] = $this->user['mode'];
				$messages['emoticons'] = $emoticons;
				if (!$insert) {
					return array("return" => false, "reason" => "");
				}else {
					$messages['content'] = $this->class['_tool']->hash('decode', $content, $id.'::'.$this->class['_tool']->timeNow());
				}
				return array("return" => true, "data" => $messages);
			}
		}else if ($action == 2 || $action == "get") {
			if (isset($object['tab']) && is_string($object['tab'])) $tab = $object['tab']; else $tab = 0;
			if ($tab > 0) {
				if (isset($object['id']) && is_string($object['sort'])) $id = $object['id']; else $id = 0;
				if (isset($object['sort']) && is_string($object['sort'])) $sort = $object['sort']; else $sort = "=";
				if (isset($object['order']) && is_string($object['order'])) $order = $object['order']; else $order = null;
				if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
				if ($id > 0) {
					$id = " AND `id` {$sort} '{$id}'";
				}else {
					$id = "";
				}
				$sql = "SELECT * FROM `messages_data` WHERE `tab` = '{$tab}' {$id} {$order} {$limit}";
				$query = mysqli_query($this->class['_db']->port('beta'), $sql);
				$data = array();
				while ($fetch = mysqli_fetch_assoc($query)) {
					if ($fetch['author.type'] == "user") {
						$guy = $this->class['_user']->getInfo(array("id" => $fetch['author.id'], "rows" => "`fullname`, `username`, `avatar.small`, `link`, `language`"));
						if ($guy['return'] == true) {
							$author = array();
							$author['type'] = "user";
							$author['id'] = $fetch['author.id'];
							$author['name'] = $guy['data']['fullname'];
							$author['tag'] = $guy['data']['username'];
							$author['avatar'] = $guy['data']['avatar.small'];
							$author['link'] = $guy['data']['link'];
							$author['language'] = $guy['data']['language'];
						}
					}else {
						//.
					}
					$fetch['author'] = $author;
					if (isset($fetch['author.type'])) {
						unset($fetch['author.type']);
					}
					if (isset($fetch['author.id'])) {
						unset($fetch['author.id']);
					}
					$fetch['content'] = $this->class['_tool']->hash('decode', $fetch['content'], $tab.'::'.$fetch['time']);
					if ($this->user['language'] != $fetch['author']['language'] && ($fetch['author']['type'] != $this->user['mode']['type'] || $fetch['author']['id'] != $this->user['mode']['id'])) {
						$translate = mysqli_num_rows(mysqli_query($this->class['_db']->port('beta'), "SELECT `id` FROM `messages_members` WHERE `tab` = '{$tab}' AND `translate` = '1' AND `guy.type` = '{$this->user['mode']['type']}' AND `guy.id` = '{$this->user['mode']['id']}'"));
						if ($translate > 0) {
							$translateAction = $this->class['_language']->translate($this->user['language'], $fetch['content'], $fetch['author']['language']);
							if ($translateAction['return'] == true) {
								$fetch['content'] = $translateAction['data'];
							}
						}
					}
					$data[] = $fetch;
				}
				return array("return" => true, "data" => $data);
			}else {
				return array("return" => false, "reason" => "$tab");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function views ($object) {
		if (!isset($_SESSION["user"]['login'], $_SESSION["user"]['mode'], $_SESSION["client"]['token']['action']['messages']) || !$_SESSION["user"]['login']) {
			return array("return" => false, "reason" => "");
		}
		$this->user = $_SESSION["user"];
		if (isset($object['action']) && is_string($object['action'])) $action = addslashes($object['action']); else $action = null;
		if ($action == 1 || $action == "add") {
			if (isset($object['id']) && is_string($object['id'])) $id = addslashes($object['id']); else $id = 0;
			$sql = "SELECT `id` FROM `messages_views` WHERE `tab` = '{$id}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}' LIMIT 1";
			$query = mysqli_query($this->class['_db']->port('beta'), $sql);
			$num = mysqli_num_rows($query);
			if ($num == 0) {
				$insert = mysqli_query($this->class['_db']->port('beta'),"INSERT INTO `messages_views` (`id`, `time`, `tab`, `author.type`, `author.id`) VALUES (NULL, '{$this->class['_tool']->timeNow()}', '{$id}', '{$this->user['mode']['type']}', '{$this->user['mode']['id']}')");
				if (!$insert) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true, "data" => array("action" => "insert"));
				}
			}else {
				$update = mysqli_query($this->class['_db']->port('beta'),"UPDATE  `messages_views` SET `time` = '{$this->class['_tool']->timeNow()}' WHERE `tab` = '{$id}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}'");
				if (!$update) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true, "data" => array("action" => "update"));
				}
			}
		}else if ($action == 2 || $action == "get") {
			if (isset($object['id']) && is_string($object['id'])) $id = addslashes($object['id']); else $id = 0;
			$delete = mysqli_query($this->class['_db']->port('beta'),"DELETE FROM `messages_views` WHERE `tab` = '{$id}' AND `time` < (SELECT `time` FROM `messages_data` WHERE `tab` = '{$id}' ORDER BY `id` DESC LIMIT 1)");
			$sql = "SELECT * FROM `messages_views` WHERE `tab` = '{$id}' AND (`author.type` != '{$this->user['mode']['type']}' OR `author.id` != '{$this->user['mode']['id']}')";
			$query = mysqli_query($this->class['_db']->port('beta'), $sql);
			$num = mysqli_num_rows($query);
			if ($num == 0) {
				return array("return" => true, "data" => null, "value" => null);
			}else {
				$value = null;
				$data = array();
				while ($fetch = mysqli_fetch_assoc($query)) {
					if ($fetch['author.type'] == "user") {
						$guy = $this->class['_user']->getInfo(array("id" => $fetch['author.id'], "rows" => "`fullname`, `username`, `avatar`, `link`"));
						if ($guy['return'] == true) {
							$author = array();
							$author['type'] = "user";
							$author['id'] = $fetch['author.id'];
							$author['name'] = $guy['data']['fullname'];
							$author['tag'] = $guy['data']['username'];
							$author['avatar'] = $guy['data']['avatar'];
							$author['link'] = $guy['data']['link'];
						}
					}else {
						//.
					}
					$fetch['author'] = $author;
					if (isset($author['name']) && $author['name'] != null) {
						if ($value == null) {
							$value .= " {$author['name']} {$this->class['_language']->text('at', 'strtolower', false)} {$this->class['_tool']->agoDatetime($fetch['time'], 'tip')}";
						}else {
							$value .= ", {$author['name']} {$this->class['_language']->text('at', 'strtolower', false)} {$this->class['_tool']->agoDatetime($fetch['time'], 'tip')}";
						}
					}
					if (isset($fetch['author.type'])) {
						unset($fetch['author.type']);
					}
					if (isset($fetch['author.id'])) {
						unset($fetch['author.id']);
					}
					$data[] = array("author" => $fetch['author'], "time" => $fetch['time']);
				}
				$value .= ".";
				return array("return" => true, "data" => $data, "value" => $value);
			}
		}else if ($action == 3 || $action == "viewed") {
			if (isset($object['id']) && is_string($object['id'])) $id = addslashes($object['id']); else $id = 0;
			if (isset($object['guy']) && is_array($object['guy'])) $guy = $object['guy']; else $guy = null;
			if ($guy == null) {
				return array("return" => false, "reason" => "");
			}
			$delete = mysqli_query($this->class['_db']->port('beta'),"DELETE FROM `messages_views` WHERE `tab` = '{$id}' AND `time` < (SELECT `time` FROM `messages_data` WHERE `tab` = '{$id}' ORDER BY `id` DESC LIMIT 1)");
			$sql = "SELECT * FROM `messages_views` WHERE `tab` = '{$id}' AND (`author.type` = '{$guy['type']}' AND `author.id` = '{$guy['id']}') LIMIT 1";
			$query = mysqli_query($this->class['_db']->port('beta'), $sql);
			$num = mysqli_num_rows($query);
			if ($num == 0) {
				return array("return" => true, "data" => null, "value" => 0);
			}else {
				return array("return" => true, "data" => null, "value" => 1);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function typing ($object) {
		if (!isset($_SESSION["user"]['login'], $_SESSION["user"]['mode'], $_SESSION["client"]['token']['action']['messages']) || !$_SESSION["user"]['login']) {
			return array("return" => false, "reason" => "");
		}
		$this->user = $_SESSION["user"];
		if (isset($object['action']) && is_string($object['action'])) $action = addslashes($object['action']); else $action = null;
		if ($action == 1 || $action == "add") {
			if (isset($object['id']) && is_string($object['id'])) $id = addslashes($object['id']); else $id = 0;
			$sql = "SELECT * FROM `messages_typing` WHERE `tab` = '{$id}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}'";
			$query = mysqli_query($this->class['_db']->port('beta'), $sql);
			$num = mysqli_num_rows($query);
			if ($num == 0) {
				$insert = mysqli_query($this->class['_db']->port('beta'),"INSERT INTO `messages_typing` (`id`, `time`, `tab`, `author.type`, `author.id`) VALUES (NULL, '{$this->class['_tool']->timeNow()}', '{$id}', '{$this->user['mode']['type']}', '{$this->user['mode']['id']}')");
				if (!$insert) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true, "data" => array("action" => "insert"));
				}
			}else {
				$update = mysqli_query($this->class['_db']->port('beta'),"UPDATE  `messages_typing` SET `time` = '{$this->class['_tool']->timeNow()}' WHERE `tab` = '{$id}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}'");
				if (!$update) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true, "data" => array("action" => "update"));
				}
			}
		}else if ($action == 2 || $action == "remove") {
			if (isset($object['id']) && is_string($object['id'])) $id = addslashes($object['id']); else $id = 0;
			$sql = "SELECT * FROM `messages_typing` WHERE `tab` = '{$id}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}'";
			$query = mysqli_query($this->class['_db']->port('beta'), $sql);
			$num = mysqli_num_rows($query);
			if ($num > 0) {
				mysqli_query($this->class['_db']->port('beta'), "DELETE FROM `messages_typing` WHERE `tab` = '{$id}' AND `author.type` = '{$this->user['mode']['type']}' AND `author.id` = '{$this->user['mode']['id']}'");
			}
			return array("return" => true, "data" => null);
		}else if ($action == 3 || $action == "get") {
			if (isset($object['id']) && is_string($object['id'])) $id = addslashes($object['id']); else $id = 0;
			$delete_query = mysqli_query($this->class['_db']->port('beta'),"SELECT DISTINCT `messages_typing`.`id` FROM `messages_data`, `messages_typing` WHERE `messages_data`.`tab` = '1' AND `messages_data`.`tab` = `messages_typing`.`tab` AND `messages_data`.`author.type` = `messages_typing`.`author.type` AND `messages_data`.`author.id` = `messages_typing`.`author.id` AND `messages_data`.`time` >= `messages_typing`.`time`");
			while ($delete = mysqli_fetch_assoc($delete_query)) {
				mysqli_query($this->class['_db']->port('beta'),"DELETE FROM `messages_typing` WHERE `id` = '{$delete['id']}'");
			}
			mysqli_query($this->class['_db']->port('beta'),"DELETE FROM `messages_typing` WHERE `time` + 300 < '{$this->class['_tool']->timeNow()}'");
			$sql = "SELECT * FROM `messages_typing` WHERE `tab` = '{$id}' AND (`author.type` != '{$this->user['mode']['type']}' OR `author.id` != '{$this->user['mode']['id']}')";
			$query = mysqli_query($this->class['_db']->port('beta'), $sql);
			$num = mysqli_num_rows($query);
			if ($num == 0) {
				return array("return" => true, "data" => null);
			}else {
				$data = array();
				while ($fetch = mysqli_fetch_assoc($query)) {
					if ($fetch['author.type'] == "user") {
						$guy = $this->class['_user']->getInfo(array("id" => $fetch['author.id'], "rows" => "`fullname`, `username`, `avatar`, `link`"));
						if ($guy['return'] == true) {
							$author = array();
							$author['type'] = "user";
							$author['id'] = $fetch['author.id'];
							$author['name'] = $guy['data']['fullname'];
							$author['tag'] = $guy['data']['username'];
							$author['avatar'] = $guy['data']['avatar'];
							$author['link'] = $guy['data']['link'];
						}
					}else {
						//.
					}
					$fetch['author'] = $author;
					if (isset($fetch['author.type'])) {
						unset($fetch['author.type']);
					}
					if (isset($fetch['author.id'])) {
						unset($fetch['author.id']);
					}
					$data[] = array("author" => $fetch['author'], "time" => $fetch['time']);
				}
				return array("return" => true, "data" => $data);
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function chatbox ($object) {
		if (isset($object['port']) && is_string($object['port'])) $port = addslashes($object['port']); else $port = "";
		if (isset($object['type']) && is_string($object['type'])) $type = addslashes($object['type']); else $type = "";
		if ($port == "hashtag" && $type != "") {
			if ($type == "clean") {
			}else if ($type == "insert" || $type == "add" || $type == "send") {
				if (isset($object['hashtag'])) $hashtag = $this->class['_tool']->convertDatabaseString($object['hashtag']); else $hashtag = "";
				if (isset($object['content'])) $content = $this->class['_tool']->convertDatabaseString($object['content']); else $content = "";
				$author = $_SESSION["user"]['mode'];
				if ($hashtag != "" && $content != "" && isset($author, $author['type'], $author['id'])) {
					$insert = mysqli_query($this->class['_db']->port('beta'),"INSERT INTO `messages_hashtag` (`id`, `hashtag`, `author.type`, `author.id`, `time`, `content`) VALUES (NULL, '{$hashtag}', '{$author['type']}', '{$author['id']}', '{$this->class['_tool']->timeNow()}', '{$content}')");
					$messages['id'] = mysqli_insert_id($this->class['_db']->port('beta'));
					if (!$insert) {
						return array("return" => false, "reason" => "");
					}else {
						mysqli_query($this->class['_db']->port('beta'),"DELETE FROM `messages_hashtag` WHERE `hashtag` = '{$hashtag}' AND `time` < {$this->class['_tool']->timeNow()} - 86400");
						$count = mysqli_num_rows(mysqli_query($this->class['_db']->port('beta'),"SELECT `id` FROM `messages_hashtag` WHERE `hashtag` = '{$hashtag}'"));
						if ($count - 10 > 0) {
							$num = $count - 10;
							mysqli_query($this->class['_db']->port('beta'),"DELETE FROM `messages_hashtag` WHERE `hashtag` = '{$hashtag}' ORDER BY `id` ASC LIMIT {$num}");
						}
						$messages['author'] = $author;
						$messages['time'] = $this->class['_tool']->timeNow();
						$messages['content'] = $this->class['_tool']->parseContent($content);
						$messages['info'] = array("local" => "chatbox", "type" => "hashtag", "hashtag" => $hashtag, "id" => $messages['id'], "author" => $messages['author']);
						return array("return" => true, "data" => $messages);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
}
?>