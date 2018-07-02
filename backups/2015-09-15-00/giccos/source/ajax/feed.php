<?php
@define("6246d859de19710432b4faff46731ff2f1f57d940c040aa7bd165de6a3b769aa", true);
die;
require_once ("source/config.php");
if (isset($g_client['token']['ajax'], $_SERVER['HTTP_TOKEN'], $_SERVER['HTTP_X_REQUESTED_WITH'], $_SERVER['HTTP_REFERER'], $_SERVER['HTTP_HOST']) && $_SERVER['HTTP_TOKEN'] == $g_client['token']['ajax'] && $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest" && $_tool->valueCheck("referer", $_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_HOST'] == $_tool->links("::host")) {
	$_giccos->logsAjax();
	if (isset($_POST['type']) && is_string($_POST['type'])) $type = $_POST['type']; else $type = null;
	if (isset($_POST['token']) && is_string($_POST['token'])) $token = $_POST['token']; else $token = null;
	if (in_array($type, ["xxx", "status_newcheck", "status_load"]) && $token == $g_client['token']['feed']['status']) {
		if (!function_exists("getCodeQuery")) {
			function getCodeQuery ($getFor = null) {
				if (isset($_POST['id']) && (is_numeric($_POST['id']) || is_string($_POST['id']))) $id = $_POST['id']; else $id = 0;
				if (isset($_POST['port']) && is_array($_POST['port'])) $port = $_POST['port']; else $port = null;
				if ($id != null && $port != null) {
					if ($getFor == "newcheck") {
						$feed_['query']['select'] = "`id`";
						$feed_['query']['order'] = $feed_['query']['limit'] = "";
						$feed_['follow']['sort'] = ">";
					}else if ($getFor == "load") {
						$feed_['query']['select'] = "*";
						if (isset($_POST['sort']) && is_string($_POST['sort'])) $sort = $_POST['sort']; else $sort = '';
						if (isset($_POST['limit']) && is_numeric($_POST['limit'])) $limit = $_POST['limit']; else $limit = 0;
						if (in_array($sort, [">", ">="])) {
							$feed_['query']['order'] = "ORDER BY `id` ASC";
						}else if (in_array($sort, ["<", "<="])) {
							$feed_['query']['order'] = "ORDER BY `id` DESC";
						}else {
							$feed_['query']['order'] = '';
						}
						if ($limit == 0 && $sort != ">") {
							$feed_['query']['limit'] = "LIMIT 1";
						}else if ($limit > 0) {
							$feed_['query']['limit'] = "LIMIT {$limit}";
						}else {
							$feed_['query']['limit'] = '';
						}
						$feed_['follow']['sort'] = $sort;
					}else {
						return array("return" => false, "reason" => "");
					}
					$g_user = $_SESSION["user"];
					if (isset($port['type']) && $port['type'] == "feed") {
						if ($g_user['mode']['type'] == "user") {
							if (isset($port['from']) && $port['from'] == "all") {
								$feed_['follow']['query'] = mysqli_query($_db->port('beta'), "SELECT `guy.type`, `guy.id` FROM `users_follow` WHERE `user.id` = '{$g_user['mode']['id']}'");
								$feed_['follow']['count'] = 0;
								while ($feed_['follow']['fetch'] = mysqli_fetch_assoc($feed_['follow']['query'])) {
									if ($feed_['follow']['count'] == 0) {
										$feed_['query']['source'] = "(`author.type` = '{$feed_['follow']['fetch']['guy.type']}' AND `author.id` = '{$feed_['follow']['fetch']['guy.id']}')";
									}else {
										$feed_['query']['source'] .= " OR (`author.type` = '{$feed_['follow']['fetch']['guy.type']}' AND `author.id` = '{$feed_['follow']['fetch']['guy.id']}')";
									}
									$feed_['follow']['count']++;
								}
								$feed_['query']['source'] = "AND ({$feed_['query']['source']})";
							}else {
								$feed_['query']['source'] = false;
							}
						}else {
							$feed_['query']['source'] = false;
						}
					}else if (isset($port['type']) && $port['type'] == "hashtag") {
						if (isset($_POST['port']['require'])) $feed_['content']['require'] = $_POST['port']['require']; else $feed_['content']['require'] = null;
						if ($feed_['content']['require'] == null) {
							return array("return" => false, "reason" => "");
						}
						for ($i = 0; $i < count($feed_['content']['require']); $i++) {
							$cache_hashtag_['push']['author'] = null;
							if (isset($feed_['content']['require'][$i][0], $feed_['content']['require'][$i][1])) {
								$feed_['content']['require'][$i][1] = array_filter(explode(",", $feed_['content']['require'][$i][1]));
								for ($x = 0; $x < count($feed_['content']['require'][$i][1]); $x++) {
									$cache_hashtag_['username'] = $cache_hashtag_['author'] = null;
									if (preg_match("/^(\)/", $feed_['content']['require'][$i][1][$x]) == true) {
										$cache_hashtag_['username'] = preg_replace("/^(\)/", "", $feed_['content']['require'][$i][1][$i]);
										$cache_hashtag_['author']['id'] = mysqli_fetch_assoc(mysqli_query($_db->port('beta'),"SELECT `id` FROM `users` WHERE `username` = '{$cache_hashtag_['username']}'"))['id'];
										$cache_hashtag_['author']['type'] = "user";
									}else if (preg_match("/^(\+)/", $feed_['content']['require'][$i][1][$x]) == true) {
										$cache_hashtag_['author']['id'] = "1";
										$cache_hashtag_['author']['type'] = "pages";
									}else {
										continue;
									}
									if ($x == 0) {
										$cache_hashtag_['push']['author'] = "`status.id` IN (SELECT `id` FROM `status` WHERE `author.type` = '{$cache_hashtag_['author']['type']}' AND `author.id` = '{$cache_hashtag_['author']['id']}')";
									}else {
										$cache_hashtag_['push']['author'] .= " OR `status.id` IN (SELECT `id` FROM `status` WHERE `author.type` = '{$cache_hashtag_['author']['type']}' AND `author.id` = '{$cache_hashtag_['author']['id']}')";
									}
								}
								$cache_hashtag_['push']['author'] = " AND ({$cache_hashtag_['push']['author']})";
							}else if (isset($feed_['content']['require'][$i][0])) {
								$cache_hashtag_['push']['author'] = "";
							}else {
								continue;
							}
							if (preg_match("/([^a-zA-Z0-9\_]+)/", $_tool->convertDatabaseString($feed_['content']['require'][$i][0])) == true) {
								unset($feed_['content']['require'][$i]);
								continue;
							}else {
								$feed_['content']['require'][$i][0] = preg_replace("/([^a-zA-Z0-9\_]+)/", "_", $_tool->convertDatabaseString($feed_['content']['require'][$i][0]));
								if ($i == 0) {
									$feed_['query']['get'] = "(`hashtag` = '{$feed_['content']['require'][$i][0]}'{$cache_hashtag_['push']['author']})";
								}else {
									$feed_['query']['get'] .= " OR (`hashtag` = '{$feed_['content']['require'][$i][0]}'{$cache_hashtag_['push']['author']})"; 
								}
							}
						}
						$feed_['query']['source'] = "AND (`id` IN (SELECT `status.id` FROM `status_hashtag` WHERE {$feed_['query']['get']}))";
					}else if (isset($port['type']) && $port['type'] == "time") {
						if (isset($_POST['port']['require'])) $feed_['content']['require'] = $_POST['port']['require']; else $feed_['content']['require'] = null;
						if ($feed_['content']['require'] == null) {
							return array("return" => false, "reason" => "");
						}else {
							if (isset($_POST['port']['require']['key'])) $feed_['content']['require']['key'] = $_POST['port']['require']['key']; else $feed_['content']['require']['key'] = null;
							if (isset($_POST['port']['require']['value'])) $feed_['content']['require']['value'] = $_POST['port']['require']['value']; else $feed_['content']['require']['value'] = null;
							if (!in_array($_POST['port']['require']['key'], ["stamp", "string"]) || $_POST['port']['require']['value'] == null) {
								return array("return" => false, "reason" => "");
							}else {
								if (is_array($feed_['content']['require']['value'])) {
									$countRequireValue = count($feed_['content']['require']['value']);
									if ($countRequireValue == 1) {
										$valueTimeFrom = $feed_['content']['require']['value'][0];
										$valueTimeTo = null;
									}else if ($countRequireValue == 2) {
										$valueTimeFrom = $feed_['content']['require']['value'][0];
										$valueTimeTo = $feed_['content']['require']['value'][1];
									}else {
										return array("return" => false, "reason" => "");
									}
								}else {
									return array("return" => false, "reason" => "");
								}
								if ($_POST['port']['require']['key'] == "stamp") {
									//.
								}else if ($_POST['port']['require']['key'] == "string") {
									if ($valueTimeFrom != null && $valueTimeTo != null) {
										if (isset($valueTimeFrom) && $valueTimeFrom != null) {
											$fromTimestamp = $_tool->convertDatetime($valueTimeFrom);
											$valueTimeTo = $fromTimestamp['stamp'];
										}else {
											return array("return" => false, "reason" => "");
										}
										if (isset($valueTimeTo) && $valueTimeTo != null) {
											$toTimestamp = $_tool->convertDatetime($valueTimeTo);
											$valueTimeTo = $toTimestamp['stamp'];
										}else {
											return array("return" => false, "reason" => "");
										}
									}else {
										return array("return" => false, "reason" => "");
									}
								}
								if ($countRequireValue == 1) {
									$feed_['query']['source'] = "AND `time` >= '{$valueTimeFrom}'";
								}else if ($countRequireValue == 2) {
									$feed_['query']['source'] = "AND (`time` BETWEEN '{$valueTimeFrom}' AND '{$valueTimeTo}')";
								}else {
									return array("return" => false, "reason" => "");
								}
							}
						}
					}else {
						$feed_['query']['source'] = false;
					}
					if ($g_user['mode']['type'] == "user") {
						$feed_['query']['hide'] = "AND ((`author.type`, `author.id`) NOT IN (SELECT `guy.type`, `guy.id` FROM `users_block` WHERE `user.id` = '{$g_user['id']}'))";
						$feed_['query']['private'] = "AND ((`private.view` = '1' AND `author.type` = 'user' AND `author.id` = '{$g_user['id']}') OR (`private.view` = '2' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}')) OR (`private.view` = '3' AND `author.type` = 'user' AND `author.id` IN(SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}' OR `guy.id` IN (SELECT `guy.id` FROM `friends` WHERE `user.id` = '{$g_user['id']}'))) OR (`private.view` = '4' OR `author.type` = 'user' AND `author.id` = '{$g_user['id']}'))";
					}else {
						$feed_['query']['hide'] = "";
						$feed_['query']['private'] = "AND (`private.view` = '4')";
					}
					$feed_['query']['block'] = "AND (`id` NOT IN (SELECT `status.id` FROM `status_block` WHERE `guy.type` = '{$g_user['mode']['type']}' AND `guy.id` = '{$g_user['mode']['id']}'))";
					$feed_['query']['order'] = "ORDER BY `id` DESC";
					$feed_['query']['code'] = "SELECT {$feed_['query']['select']} FROM `status` WHERE `id` {$feed_['follow']['sort']} '{$id}' {$feed_['query']['block']} {$feed_['query']['source']} {$feed_['query']['private']} {$feed_['query']['order']} {$feed_['query']['limit']}";
					$feed_['query']['source'] = "AND ({$feed_['query']['source']})";
					if (isset($feed_['query']['source']) && $feed_['query']['source'] != false) {
						return array("return" => true, "code" => $feed_['query']['code']);
					}else {
						return array("return" => true, "code" => "");
					}
				}else {
					return array("return" => false, "reason" => "ERROR#FEEDS_002");
				}
			}
		}
	}
	if ($type == "get_feedTime_url" && $token == $g_client['token']['feed']['status']) {
		if (isset($_POST['dateFrom']) && is_string($_POST['dateFrom']) && $_POST['dateFrom'] != "0") $dateFrom = $_POST['dateFrom']; else $dateFrom = null;
		if (isset($_POST['dateTo']) && is_string($_POST['dateTo']) && $_POST['dateTo'] != "0") $dateTo = $_POST['dateTo']; else $dateTo = null;
		$feedTime_url = $_tool->links("feed/time/");
		if (isset($dateFrom) && $dateFrom != null) {
			$tsTimeFrom = $_tool->convertDatetime($dateFrom)['stamp'];
			$feedTime_url .= $tsTimeFrom;
		}
		if (isset($dateTo) && $dateTo != null) {
			$tsTimeTo = $_tool->convertDatetime($dateTo)['stamp'];
			$feedTime_url .= "-".$tsTimeTo;
		}
		if ($tsTimeFrom > $_tool->timeNow()) {
			die(print json_encode(array("return" => false, "reason" => "")));
		}else {
			die(print json_encode(array("return" => true, "url" => $feedTime_url)));
		}
	}else if ($type == "status_newcheck" && $token == $g_client['token']['feed']['status']) {
		$actionGetCodeQuery = getCodeQuery("newcheck");
		if (isset($actionGetCodeQuery['return']) && $actionGetCodeQuery['return'] == true) {
			if (isset($actionGetCodeQuery['code']) && $actionGetCodeQuery['code'] != null) {
				$number = mysqli_num_rows(mysqli_query($_db->port('beta'), $actionGetCodeQuery['code']));
				$detail = array("user" => 0, "groups" => 0, "pages" => 0);
				$data = array("number" => $number, "detail" => $detail);
				die(print json_encode(array("return" => true, "data" => $data)));
			}else {
				die(print json_encode(array("return" => true)));
			}
		}else if (isset($actionGetCodeQuery['return'], $actionGetCodeQuery['reason'])) {
			die(print json_encode(array("return" => $actionGetCodeQuery['return'], "reason" => $actionGetCodeQuery['reason'])));
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($type == "status_load" && $token == $g_client['token']['feed']['status']) {
		$actionGetCodeQuery = getCodeQuery("load");
		if (isset($actionGetCodeQuery['return']) && $actionGetCodeQuery['return'] == true) {
			if (isset($actionGetCodeQuery['code']) && $actionGetCodeQuery['code'] != null) {
				$_feed = new feed;
				$getFeed = $_feed->status_get(array("return" => "json", "query" => $actionGetCodeQuery['code']));
				if (isset($getFeed['return'], $getFeed['data'], $getFeed['count']) && $getFeed['return'] == true) {
					die(print json_encode(array("return" => true, "count" => $getFeed['count'], "data" => $getFeed['data'])));
				}else {
					die(print json_encode(array("return" => false, "reason" => "")));
				}
			}else {
				die(print json_encode(array("return" => true)));
			}
		}else if (isset($actionGetCodeQuery['return'], $actionGetCodeQuery['reason'])) {
			die(print json_encode(array("return" => $actionGetCodeQuery['return'], "reason" => $actionGetCodeQuery['reason'])));
		}else {
			die(print json_encode(array("return" => false, "reason" => "")));
		}
	}else if ($type == "status_block" && $token == $g_client['token']['feed']['status']) {
		if (isset($_POST['id']) && is_array($_POST['id'])) $id = $_POST['id']; else $id = null;
		if ($id != null && count($id) > 0) {
			$_feed = new feed;
			foreach ($id as $i => $status_id) {
				if ($status_id != null && $status_id > 0) {
					$options = array("id" => $status_id);
					$data = $_feed->status_block($options);
					if (isset($data['return']) && $data['return'] == true) {
						$return[] = array("return" => true, "id" => $status_id);
					}else {
						$return[] = array("return" => false, "reason" => $data['reason']);
					}
				}else {
					$return[] = array("return" => false, "reason" => "ERROR#FEEDS_002");
				}
			}
			die(print json_encode(array("return" => true, "data" => $return)));
		}else {
			die(print json_encode(array("return" => false, "reason" => "ERROR#FEEDS_002")));
		}
	}else if ($type == "status_edit" && $token == $g_client['token']['feed']['status']) {
		if (isset($_POST['id']) && (is_numeric($_POST['id']) || is_string($_POST['id']))) $id = $_POST['id']; else $id = 0;
		if (isset($_POST['rows']) && is_array($_POST['rows'])) $rows = $_POST['rows']; else $rows = null;
		if ($id > 0 && $rows != null) {
			foreach ($rows as $key => $value) {
				if (preg_match("/^(private)+/", $key)) {
					$rows[preg_replace("/(\-\>)/", ".", $key)] = $value;
					unset($rows[$key]);
					if (!preg_match("/([0-9]+)/", $value)) {
						unset($rows[$key]);
					}
				}
			}
			$options = array("id" => $id, "rows" => $rows);
			$_feed = new feed;
			$data = $_feed->status_edit($options);
			if (isset($data['return']) && $data['return'] == true) {
				die(print json_encode(array("return" => true)));
			}else {
				die(print json_encode(array("return" => false, "reason" => $data['reason'])));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "ERROR#FEEDS_002")));
		}
	}else if ($type == "status_delete" && $token == $g_client['token']['feed']['status']) {
		if (isset($_POST['id']) && is_array($_POST['id'])) $id = $_POST['id']; else $id = null;
		if ($id != null && count($id) > 0) {
			$_feed = new feed;
			foreach ($id as $i => $status_id) {
				if ($status_id != null && $status_id > 0) {
					$options = array(
						"id" => $status_id,
						"private" => true,
						"author" => array(
							"type" => $g_user['mode']['type'],
							"id" => $g_user['mode']['id']
						)
					);
					$data = $_feed->status_remove($options);
					if (isset($data['return']) && $data['return'] == true) {
						$return[] = array("return" => true, "id" => $status_id);
					}else {
						$return[] = array("return" => false, "reason" => $data['reason']);
					}
				}else {
					$return[] = array("return" => false, "reason" => "ERROR#FEEDS_002");
				}
			}
			die(print json_encode(array("return" => true, "data" => $return)));
		}else {
			die(print json_encode(array("return" => false, "reason" => "ERROR#FEEDS_002")));
		}
	}else if ($type == "status_statistic" && $token == $g_client['token']['feed']['status']) {
		if (isset($_POST['id']) && is_array($_POST['id'])) $id = $_POST['id']; else $id = null;
		if (isset($_POST['from']) && is_array($_POST['from'])) $from = $_POST['from']; else $from = null;
		if ($id != null && $from != null) {
			$_feed = new feed;
			foreach ($id as $key => $status_id) {
				$action = $_feed->status_statistic(array("id" => $status_id, "type" => "statistic", "from" => $from[$key]));
				if (isset($action['return'], $action['statistic']) && $action['return'] == true && $action['statistic'] != null) {
					$data[] = array("id" => $status_id, "statistic" => $action['statistic']);
				}else {
					continue;
				}
			}
			die(print json_encode(array("return" => true, "data" => $data)));
		}else {
			die(print json_encode(array("return" => false, "reason" => "ERROR#FEEDS_002")));
		}
	}else if ($type == "status_favorite" && $token == $g_client['token']['feed']['status']) {
		if (isset($_POST['id']) && is_numeric($_POST['id'])) $status_id = $_POST['id']; else $status_id = 0;
		if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
		if ($status_id > 0 && ($action == "remove" || $action == "add")) {
			$_feed = new feed;
			$action = $_feed->status_favorite(array("status_id" => $status_id, "action" => $action));
			if (isset($action['return']) && $action['return'] == true) {
				die(print json_encode(array("return" => true, "data" => "")));
			}else {
				die(print json_encode(array("return" => false, "reason" => $action['reason'])));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "ERROR#FEEDS_002")));
		}
	}else if ($type == "status_follow" && $token == $g_client['token']['feed']['status']) {
		if (isset($_POST['id']) && is_array($_POST['id'])) $id = $_POST['id']; else $id = null;
		if (isset($_POST['action']) && is_array($_POST['action'])) $action = $_POST['action']; else $action = null;
		if ($id != null && $action != null) {
			$_feed = new feed;
			foreach ($id as $i => $status_id) {
				if ($status_id != null && $status_id > 0) {
					$options = array("id" => $status_id, "action" => $action[$i]);
					$data = $_feed->status_follow($options);
					if (isset($data['return']) && $data['return'] == true) {
						$return[] = array("return" => true, "id" => $status_id, "action" => $action[$i]);
					}else {
						$return[] = array("return" => false, "reason" => $data['reason']);
					}
				}else {
					$return[] = array("return" => false, "reason" => "ERROR#FEEDS_002");
				}
			}
			die(print json_encode(array("return" => true, "data" => $return)));
		}else {
			die(print json_encode(array("return" => false, "reason" => "ERROR#FEEDS_002")));
		}
	}else if ($type == "status_comment_add" && $token == $g_client['token']['feed']['comment']) {
		if (isset($_POST['status_id']) && is_numeric($_POST['status_id'])) $status_id = $_POST['status_id']; else $status_id = 0;
		if (isset($_POST['comment_id']) && is_numeric($_POST['comment_id'])) $comment_id = $_POST['comment_id']; else $comment_id = 0;
		if (isset($_POST['value']) && is_string($_POST['value'])) $value = $_POST['value']; else $value = null;
		if ($status_id > 0 && $value != null) {
			$_feed = new feed;
			if ($status_id > 0) {
				$optionsAdd = array(
					"status_id" => $status_id, 
					"value" => $value
				);
			}else if ($comment_id > 0) {
				$optionsAdd = array(
					"comment_id" => $comment_id, 
					"value" => $value
				);
			}else {
				die(print json_encode(array("return" => false, "reason" => "")));
			}
			$action = $_feed->comment_add($optionsAdd);
			if (isset($action['return']) && $action['return'] == true) {
				die(print json_encode(array("return" => true)));
			}else {
				die(print json_encode(array("return" => false, "reason" => $action['reason'])));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "ERROR#FEEDS_002")));
		}
	}else if ($type == "status_comment_load" && $token == $g_client['token']['feed']['comment']) {
		if (isset($_POST['comment_id']) && is_array($_POST['comment_id'])) $comment_id = $_POST['comment_id']; else $comment_id = null;
		if (isset($_POST['sort']) && is_array($_POST['sort'])) $sort = $_POST['sort']; else $sort = null;
		if (isset($_POST['limit']) && is_array($_POST['limit'])) $limit = $_POST['limit']; else $limit = null;
		if ($comment_id != null && $sort != null && $limit != null) {
			$_feed = new feed;
			$data = array();
			foreach ($_POST['comment_id'] as $key => $comment) {
				$comment_id = $_POST['comment_id'][$key];
				$sort = $_POST['sort'][$key];
				$limit = $_POST['limit'][$key];
				if ($sort == '>') {
					$order = 'DESC';
				}else if ($sort == '<') {
					$order = 'DESC';
				}
				if (isset($_POST['status_id'][$key])) {
					$status_id = $_POST['status_id'][$key];
				}else {
					$comment = mysqli_fetch_assoc(mysqli_query($_db->port('beta'),"SELECT `status.id` FROM `status_comment` WHERE `id` = '{$comment_id}'"));
					$status_id = $comment['status.id'];
				}
				if ($comment_id == 0) {
					$when = "";
				}else {
					$when = "AND `id` {$sort} '{$comment_id}'";
				}
				$query = "SELECT * FROM `status_comment` WHERE `status.id` = '{$status_id}' {$when} ORDER BY `id` $order LIMIT $limit";
				$action = $_feed->comment_get(array("return" => "json", "query" => $query, null));
				if (isset($action['return'], $action['data']) && $action['return'] == true && $action['data'] != null) {
					$data[] = $action['data'];
				}
			}
			die(print json_encode(array("return" => true, "data" => $data)));
		}else {
			die(print json_encode(array("return" => false, "reason" => "ERROR#FEEDS_002")));
		}
	}else if ($type == "status_comment_favorite" && $token == $g_client['token']['feed']['comment']) {
		if (isset($_POST['comment_id']) && is_numeric($_POST['comment_id'])) $comment_id = $_POST['comment_id']; else $comment_id = 0;
		if (isset($_POST['action']) && is_string($_POST['action'])) $action = $_POST['action']; else $action = null;
		if ($comment_id > 0 && ($action == "remove" || $action == "add")) {
			$_feed = new feed;
			$action = $_feed->comment_favorite(array("comment_id" => $comment_id, "action" => $action));
			if (isset($action['return']) && $action['return'] == true) {
				die(print json_encode(array("return" => true)));
			}else {
				die(print json_encode(array("return" => false, "reason" => $action['reason'])));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "ERROR#FEEDS_002")));
		}
	}else if ($type == "status_comment_statistic" && $token == $g_client['token']['feed']['comment']) {
		if (isset($_POST['id']) && (is_numeric($_POST['id']) || is_string($_POST['id']))) $id = $_POST['id']; else $id = 0;
		if (isset($_POST['from']) && is_string($_POST['from'])) $from = $_POST['from']; else $from = null;
		if ($id > 0 && $from != null) {
			$_feed = new feed;
			$action = $_feed->comment_statistic(array("id" => $id, "from" => $from));
			if (isset($action['return']) && $action['return'] == true) {
				die(print json_encode(array("return" => true, "data" => $action['data'])));
			}else {
				die(print json_encode(array("return" => false, "reason" => $action['reason'])));
			}
		}else {
			die(print json_encode(array("return" => false, "reason" => "ERROR#FEEDS_002")));
		}
	}
}else {
	// Not ajax.
}
?>