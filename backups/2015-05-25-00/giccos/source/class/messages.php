<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class messages {
	function __construct () {
		$GLOBALS["_messages"] = $this;
		$this->class = $GLOBALS;
	}
	function callUserInfo () {
		if (isset($_SESSION["user"])) {
			$this->user = $_SESSION["user"];
		}else {
			$this->user = array("login" => false, "id" => 0, "mode" => array("type" => "guy", "id" => $this->class['_client']->client(true)));
		}
	}
	function tab ($object) {
		if (isset($object['author']['type']) && is_string($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author']['id']) && is_numeric($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['mode']['type'], $this->user['mode']['id']) && $this->user['login'] == true) {
				$authorType = $this->user['mode']['type'];
				$authorId = $this->user['mode']['id'];
			}else {
				return array("return" => false, "reason" => "");
			}
		}
		//.
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_user = $this->class['_user'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "add" || $action == "create") {
			$tabInfo = array();
			$tabInfo['time'] = $_tool->timeNow();
			$tabInfo['token'] = hash('crc32', $_SESSION["client"]['token']['action']['messages'].'::'.$tabInfo['time'].'::'.rand().'_'.rand().'_'.rand());
			$tabInfo['display'] = hash('md5', $tabInfo['token']);
			if (isset($object['private']) && is_numeric($object['private'])) $tabInfo['private'] = $object['private']; else $tabInfo['private'] = 1;
			if (isset($object['name']) && is_string($object['name'])) $tabInfo['name'] = $object['name']; else $tabInfo['name'] = null;
			if (isset($object['guy']) && is_array($object['guy']) && count($object['guy']) > 0) $tabInfo['guy'] = $object['guy']; else $tabInfo['guy'] = 1;
			if (isset($object['type']) && is_string($object['type'])) $tabInfo['type'] = $object['type']; else $tabInfo['type'] = null;
			if ($tabInfo['guy'] != null) {
				foreach ($tabInfo['guy'] as $key => $tabInfoGuyThis) {
					if (isset($tabInfoGuyThis['type'], $tabInfoGuyThis['id']) && $tabInfoGuyThis['type'] == $authorType && $tabInfoGuyThis['id'] == $authorId) {
						unset($tabInfo['guy'][$key]);
						continue;
					}
					if (!isset($tabInfoGuyThis['regency'])) {
						$tabInfo['guy'][$key]['regency'] = "members";
					}
				}
				if (!in_array($tabInfo['type'], ["private", "groups"])) {
					$tabInfo['type'] = null;
				}
				if ($tabInfo['type'] == null && count($tabInfo['guy']) == 1) {
					$tabInfo['type'] = "private";
				}else if ($tabInfo['type'] == null && count($tabInfo['guy']) > 1) {
					$tabInfo['type'] = "groups";
				}
				if ($tabInfo['name'] == null) {
					if (count($tabInfo['guy']) == 1) {
						foreach ($tabInfo['guy'] as $key => $tabInfoGuyThis) {
							if (isset($tabInfoGuyThis['type'], $tabInfoGuyThis['id']) && in_array($tabInfoGuyThis['type'], ["user", "user"])) {
								$getGuyProfile = $_user->getInfo(array("rows" => "`fullname`, `username`", "label" => "id", "value" => $tabInfoGuyThis['id']));
								if (isset($getGuyProfile['return'], $getGuyProfile['data'][0]) && $getGuyProfile['return'] == true) {
									$tabInfo['name'] = $getGuyProfile['data'][0]['fullname'].' (@'.$getGuyProfile['data'][0]['username'].')';
									break;
								}else {
									unset($tabInfo['guy'][$key]);
									continue;
								}
							}else {
								unset($tabInfo['guy'][$key]);
								continue;
							}
						}
						if (!isset($tabInfo['name']) || $tabInfo['name'] == null) {
							return array("return" => false, "reason" => "1");
						}
					}else if (count($tabInfo['guy']) > 1) {
						foreach ($tabInfo['guy'] as $key => $tabInfoGuyThis) {
							if (isset($tabInfoGuyThis['type'], $tabInfoGuyThis['id']) && in_array($tabInfoGuyThis['type'], ["user", "user"])) {
								$getGuyProfile = $_user->getInfo(array("rows" => "`fullname`, `username`", "label" => "id", "value" => $tabInfoGuyThis['id']));
								if (isset($getGuyProfile['return'], $getGuyProfile['data'][0]) && $getGuyProfile['return'] == true) {
									if (isset($tabInfo['name']) && $tabInfo['name'] != null) {
										$tabInfo['name'] .= ', @'.$getGuyProfile['data'][0]['username'];
									}else {
										$tabInfo['name'] = '@'.$getGuyProfile['data'][0]['username'];
									}
								}else {
									unset($tabInfo['guy'][$key]);
									continue;
								}
							}else {
								unset($tabInfo['guy'][$key]);
								continue;
							}
						}
						if (!isset($tabInfo['name']) || $tabInfo['name'] == null) {
							return array("return" => false, "reason" => "2");
						}else {
							$tabInfo['name'] .= '';
						}
					}
				}else {
					//.
				}
			}else {
				$tabInfo['type'] = "undefined";
				if ($tabInfo['name'] == null) {
					$tabInfo['name'] = $tabInfo['display'];
				}
			}
			if (isset($object['language']) && is_string($object['language'])) $tabInfo['language'] = $object['language']; else $tabInfo['language'] = null;
			if ($tabInfo['language'] == null) {
				if (in_array($authorType, ["user", "user"])) {
					$profileAuthorQuery = $_user->profile(array("rows" => "`language`", "label" => "id", "value" => $authorId, "limit" => "LIMIT 1"));
					if (isset($profileAuthorQuery['return'], $profileAuthorQuery['data'][0]) && $profileAuthorQuery['return'] == true) {
						$tabInfo['language'] = $profileAuthorQuery['data'][0]['language'];
					}else {
						$tabInfo['language'] = $_parameter->get('user_language.default');
					}
				}
			}else if (!in_array($tabInfo['language'], $_parameter->get('user_language.code_list', true))) {
				$tabInfo['language'] = $_parameter->get('user_language.default');
			}
			if ($tabInfo['type'] == "private") {
				$existsTabRequestPush = null;
				foreach ($tabInfo['guy'] as $key => $tabInfoGuyThis) {
					if ($existsTabRequestPush == null) {
						$existsTabRequestPush .= "`id` IN (SELECT `tab` FROM `messages_members` WHERE `guy.type` = '{$tabInfoGuyThis['type']}' AND `guy.id` = '{$tabInfoGuyThis['id']}')";
					}else {
						$existsTabRequestPush .= " AND `id` IN (SELECT `tab` FROM `messages_members` WHERE `guy.type` = '{$tabInfoGuyThis['type']}' AND `guy.id` = '{$tabInfoGuyThis['id']}')";
					}
				}
				$existsTabRequest = "SELECT `id`, `token`, `display` FROM `messages_id` WHERE `type` = '{$tabInfo['type']}' AND `private` = '{$tabInfo['private']}' AND ({$existsTabRequestPush}) LIMIT 1";
				$existsTabQuery = mysqli_query($db, $existsTabRequest);
				if ($existsTabQuery == true && mysqli_num_rows($existsTabQuery) > 0) {
					$tabInfoFetch = mysqli_fetch_assoc($existsTabQuery);
					$tabInfo['id'] = $tabInfoFetch['id'];
					$tabInfo['token'] = $tabInfoFetch['token'];
					$tabInfo['display'] = $tabInfoFetch['display'];
					return array("return" => true, "tab" => $tabInfo);
				}
			}
			$createTabReuqest = "INSERT INTO `messages_id` (`id`, `time`, `token`, `display`, `private`, `type`, `name`, `language`) VALUES (NULL, '{$tabInfo['time']}', '{$tabInfo['token']}', '{$tabInfo['display']}', '{$tabInfo['private']}', '{$tabInfo['type']}', '{$tabInfo['name']}', '{$tabInfo['language']}');";
			$createTabQuery = mysqli_query($db, $createTabReuqest);
			if (!$createTabQuery) {
				return array("return" => false, "reason" => "3");
			}else {
				$tabInfo['id'] = mysqli_insert_id($db);
				if ($tabInfo['type'] == "private") {
					$authorRegency = "members";
				}else {
					$authorRegency = "author";
				}
				$addTabAuthorOptions = array(
					"action" => "add",
					"id" => $tabInfo['id'],
					"guy" => array(
						[
						"type" => $authorType, 
						"id" => $authorId,
						"regency" => $authorRegency
						]
					)
				);
				$addTabAuthor = $this->members($addTabAuthorOptions);
				if (is_array($tabInfo['guy']) && count($tabInfo['guy']) > 0 && $tabInfo['guy'] != null) {
					$addTabMemberOptions = array(
						"action" => "add",
						"id" => $tabInfo['id'],
						"guy" => $tabInfo['guy']
					);
					$addTabMember = $this->members($addTabMemberOptions);
				}
				return array("return" => true, "tab" => $tabInfo);
			}
		}else if ($action == "get") {
			if (isset($object['rows']) && is_string($object['rows'])) $tabRows = $object['rows']; else $tabRows = "*";
			if (isset($object['label']) && is_string($object['label'])) $tabLabel = $object['label']; else $tabLabel = null;
			if (isset($object['value']) && (is_string($object['value']) || is_numeric($object['value']))) $tabValue = $object['value']; else $tabValue = null;
			if (isset($object['limit']) && is_string($object['limit'])) $tabLimit = $object['limit']; else $tabLimit = "LIMIT 1";
			if ($tabRows == null || $tabLabel == null || $tabValue == null) {
				return array("return" => false, "reason" => "");
			}
			$getTabRequest = "SELECT {$tabRows} FROM `messages_id` WHERE `{$tabLabel}` = '{$tabValue}' {$tabLimit}";
			$getTabQuery = mysqli_query($db, $getTabRequest);
			if ($getTabRequest == true && mysqli_num_rows($getTabQuery) > 0) {
				$tabCount = mysqli_num_rows($getTabQuery);
				$tabArr = array();
				while ($getTabFetch = mysqli_fetch_assoc($getTabQuery)) {
					$tabArr[] = $getTabFetch;
				}
				return array("return" => true, "count" => $tabCount, "tab" => $tabArr);
			}else if ($getTabRequest == true && mysqli_num_rows($getTabQuery) == 0) {
				return array("return" => true, "count" => 0, "tab" => array());
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action =="delete" || $action == "remove") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
			if (isset($object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if ($tabId == null) {
				return array("return" => false, "reason" => "");
			}
			if ($guyType == null || $guyId == null) {
				return array("return" => false, "reason" => "");
			}
			$existsTab = $this->tab(array("action" => "exists", "label" => "id", "value" => $tabId));
			if (isset($existsTab['return'], $existsTab['exists']) && $existsTab['return'] == true && $existsTab['exists'] == true) {
				$getTab = $this->tab(array("action" => "get", "rows" => "`type`", "label" => "id", "value" => $tabId, "limit" => "LIMIT 1"));
				if (isset($getTab['return'], $getTab['data'][0]) && $getTab['return'] == true) {
					$existsMembers = $this->members(array("action" => "exists", "label" => "tab", "value" => $tabId, "author" => array("type" => $guyType, "id" => $guyId), "limit" => "LIMIT 1"));
					if (isset($existsMembers['return'], $existsMembers['exists']) && $existsMembers['return'] == true && $existsMembers['exists'] == true) {
						$deleteTabRequest = "DELETE FROM `messages_id` WHERE `id` = '{$tabId}'";
						$deleteTabQuery = mysqli_query($db, $deleteTabRequest);
						$deleteMembersRequest = "DELETE FROM `messages_members` WHERE `tab` = '{$tabId}'";
						$deleteMembersQuery = mysqli_query($db, $deleteMembersRequest);
						$deleteDataRequest = "DELETE FROM `messages_data` WHERE `tab` = '{$tabId}'";
						$deleteDataQuery = mysqli_query($db, $deleteDataRequest);
						$deleteViewsRequest = "DELETE FROM `messages_views` WHERE `tab` = '{$tabId}'";
						$deleteViewsQuery = mysqli_query($db, $deleteViewsRequest);
						$deleteTypingRequest = "DELETE FROM `messages_typing` WHERE `tab` = '{$tabId}'";
						$deleteTypingQuery = mysqli_query($db, $deleteTypingRequest);
						if (!$deleteTabQuery || !$deleteMembersQuery || !$deleteDataQuery || !$deleteViewsQuery || !$deleteTypingQuery) {
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
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "exists") {
			if (isset($object['label']) && is_string($object['label'])) $tabLabel = $object['label']; else $tabLabel = null;
			if (isset($object['value']) && (is_string($object['value']) || is_numeric($object['value']))) $tabValue = $object['value']; else $tabValue = null;
			if (isset($object['limit']) && is_string($object['limit'])) $tabLimit = $object['limit']; else $tabLimit = "LIMIT 1";
			if ($tabLabel == null || $tabValue == null) {
				return array("return" => false, "reason" => "1");
			}
			$getTabRequest = "SELECT `id` FROM `messages_id` WHERE `{$tabLabel}` = '{$tabValue}' {$tabLimit}";
			$getTabQuery = mysqli_query($db, $getTabRequest);
			if (!$getTabQuery) {
				return array("return" => false, "reason" => "2");
			}else {
				$getTabCount = mysqli_num_rows($getTabQuery);
				if ($getTabCount == 0){
					return array("return" => true, "exists" => false, "count" => 0);
				}else {
					return array("return" => true, "exists" => true, "count" => $getTabCount);
				}
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function members ($object) {
		if (isset($object['author']['type']) && is_string($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author']['id']) && is_numeric($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['mode']['type'], $this->user['mode']['id']) && $this->user['login'] == true) {
				$authorType = $this->user['mode']['type'];
				$authorId = $this->user['mode']['id'];
			}else {
				return array("return" => false, "reason" => "");
			}
		}
		//.
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_user = $this->class['_user'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "add") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['guy']) && is_array($object['guy']) && count($object['guy']) > 0) $tabGuy = $object['guy']; else $tabGuy = null;
			$existsTab = $this->tab(array("action" => "exists", "label" => "id", "value" => $tabId));
			if (isset($existsTab['return'], $existsTab['exists']) && $existsTab['return'] == true && $existsTab['exists'] == true) {
				$tabInfo = $this->tab(array("action" => "get", "label" => "id", "value" => $tabId, "limit" => "LIMIT 1"))['tab'][0];
				$addGuyNotifyArr = array();
				foreach ($tabGuy as $key => $tabGuyThis) {
					if (!isset($tabGuyThis['type']) || !isset($tabGuyThis['id'])) {
						$addGuyNotifyArr[] = array("return" => false, "reason" => "", "guy" => $tabGuyThis);
						unset($tabGuy[$key]);
						continue;
					}else if (!in_array($tabGuyThis['type'], ["user", "user"]) || !is_string($tabGuyThis['type']) || !is_numeric($tabGuyThis['id'])) {
						$addGuyNotifyArr[] = array("return" => false, "reason" => "", "guy" => $tabGuyThis);
						unset($tabGuy[$key]);
						continue;
					}else if (!isset($tabGuyThis['regency']) || !is_string($tabGuyThis['regency'])) {
						$addGuyNotifyArr[] = array("return" => false, "reason" => "", "guy" => $tabGuyThis);
						unset($tabGuy[$key]);
						continue;
					}
					$existsMembers = $this->members(array("action" => "exists", "label" => "tab", "value" => $tabId, "author" => array("type" => $tabGuyThis['type'], "id" => $tabGuyThis['id'])));
					if (isset($existsMembers['return'], $existsMembers['exists']) && $existsMembers['return'] == true && $existsMembers['exists'] == false) {
						continue;
					}else {
						unset($tabGuy[$key]);
						continue;
					}
				}
				foreach ($tabGuy as $key => $tabGuyThis) {
					if ($tabGuyThis['regency'] == "author") {
						$tabGuy[$key]['translate'] = 0;
						continue;
					}
					if (in_array($tabGuyThis['type'], ["user", "user"])) {
						$existsGuyQuery = $_user->exists(array("label" => "id", "value" => $tabGuyThis['id']));
						if (isset($existsGuyQuery['return'], $existsGuyQuery['exists']) && $existsGuyQuery['return'] == true && $existsGuyQuery['exists'] == true) {
							if (isset($tabGuyThis['regency']) && is_string($tabGuyThis['regency'])) $tabGuy[$key]['regency'] = $tabGuyThis['regency']; else $tabGuy[$key]['regency'] = "members";
							if (isset($tabGuyThis['translate']) && is_string($tabGuyThis['translate'])) $tabGuy[$key]['translate'] = $tabGuyThis['translate']; else $tabGuy[$key]['translate'] = null;
							if ($tabGuy[$key]['translate'] == null) {
								$profileGuyQuery = $_user->profile(array("rows" => "`language`, `messages.translate`", "label" => "id", "value" => $tabGuyThis['id'], "limit" => "LIMIT 1"));
								if (isset($profileGuyQuery['return'], $profileGuyQuery['data'][0]) && $profileGuyQuery['return'] == true) {
									if ($tabInfo['language'] != $profileGuyQuery['data'][0]['language']) {
										$tabGuy[$key]['translate'] = $profileGuyQuery['data'][0]['language'];
									}else {
										$tabGuy[$key]['translate'] = 0;
									}
								}else {
									$tabGuy[$key]['translate'] = 0;
								}
							}else if ($tabInfo['language'] == $tabGuy[$key]['translate']) {
								$tabGuy[$key]['translate'] = 0;
							}
						}else {
							$addGuyNotifyArr[] = array("return" => false, "reason" => "", "guy" => $tabGuyThis);
							unset($tabGuy[$key]);
							continue;
						}
					}else {
						$addGuyNotifyArr[] = array("return" => false, "reason" => "", "guy" => $tabGuyThis);
						unset($tabGuy[$key]);
						continue;
					}
				}
				foreach ($tabGuy as $key => $tabGuyThis) {
					$addGuyQuery = mysqli_query($db, "INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES (NULL, '{$_tool->timeNow()}', '{$tabId}', '{$tabGuyThis['regency']}', '{$tabGuyThis['translate']}', '{$tabGuyThis['type']}', '{$tabGuyThis['id']}');");
					if (!$addGuyQuery) {
						$addGuyNotifyArr[] = array("return" => false, "reason" => "", "guy" => $tabGuyThis);
					}else {
						$addGuyNotifyArr[] = array("return" => true, "guy" => $tabGuyThis);
					}
				}
				return array("return" => true, "notify" => $addGuyNotifyArr);
			}else if (isset($existsTab['return'], $existsTab['exists']) && $existsTab['return'] == true && $existsTab['exists'] == false) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => false, "reason" => $existsTab);
			}
		}else if ($action == "get") {
			if (isset($object['rows']) && is_string($object['rows'])) $membersRows = addslashes($object['rows']); else $membersRows = "*";
			if (isset($object['label']) && is_string($object['label'])) $membersLabel = addslashes($object['label']); else $membersLabel = 0;
			if (isset($object['value']) && (is_string($object['value']) || is_numeric($object['value']))) $membersValue = addslashes($object['value']); else $membersValue = 0;
			if (isset($object['limit']) && is_string($object['limit'])) $membersLimit = addslashes($object['limit']); else $membersLimit = null;
			if (isset($object['author']) && is_array($object['author'])) $authorArr = $object['author']; else $authorArr = null;
			if ($membersRows == null || $membersLabel == null || $membersValue == null) {
				return array("return" => false, "reason" => "1");
			}
			$getMembersRequestPush = null;
			if ($authorArr != null) {
				if (isset($authorArr['type'], $authorArr['id']) && is_string($authorArr['type']) && is_numeric($authorArr['id'])) {
					$getMembersRequestPush = "AND (`guy.type` = '{$authorArr['type']}' AND `guy.id` = '{$authorArr['id']}')";
				}else {
					return array("return" => false, "reason" => "2");
				}
			}
			$getMembersRequest = "SELECT {$membersRows} FROM `messages_members` WHERE `{$membersLabel}` = '{$membersValue}' {$getMembersRequestPush} {$membersLimit}";
			$getMembersQuery = mysqli_query($db, $getMembersRequest);
			if (!$getMembersQuery) {
				return array("return" => false, "reason" => "3");
			}else {
				$rowsArr = array();
				$getMembersCount = mysqli_num_rows($getMembersQuery);
				if ($getMembersCount == 0) {
					return array("return" => true, "count" => 0, "data" => $rowsArr);
				}else {
					while ($getMembersFetch = mysqli_fetch_assoc($getMembersQuery)) {
						$getMembersFetch['sql'] = $getMembersRequest;
						$rowsArr[] = $getMembersFetch;
					}
					return array("return" => true, "count" => $getMembersCount, "data" => $rowsArr);
				}
			}
		}else if ($action == "remove" || $action == "delete" || $action == "leave") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
			if (isset($object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if ($tabId == null) {
				return array("return" => false, "reason" => "");
			}
			if ($guyType == null || $guyId == null) {
				return array("return" => false, "reason" => "");
			}
			$existsMembers = $this->members(array("action" => "exists", "label" => "tab", "value" => $tabId, "author" => array("type" => $guyType, "id" => $guyId), "limit" => "LIMIT 1"));
			if (isset($existsMembers['return'], $existsMembers['exists']) && $existsMembers['return'] == true && $existsMembers['exists'] == true) {
				$deleteMembersRequest = "DELETE FROM `messages_members` WHERE `tab` = '{$tabId}' AND `guy.type` = '{$guyType}' AND `guy.id` = '{$guyId}'";
				$deleteMembersQuery = mysqli_query($db, $deleteMembersRequest);
				if (!$deleteMembersQuery) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true);
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "exists") {
			if (isset($object['label']) && is_string($object['label'])) $membersLabel = $object['label']; else $membersLabel = null;
			if (isset($object['value']) && (is_string($object['value']) || is_numeric($object['value']))) $membersValue = $object['value']; else $membersValue = null;
			if (isset($object['limit']) && is_string($object['limit'])) $membersLimit = $object['limit']; else $membersLimit = "LIMIT 1";
			if ($membersLabel == null || $membersValue == null) {
				return array("return" => false, "reason" => "");
			}
			if (isset($object['author']) && is_array($object['author'])) $membersAuthor = $object['author']; else $membersAuthor = null;
			if (isset($membersAuthor['type'], $membersAuthor['id'])) {
				if (!is_string($membersAuthor['type']) || !is_numeric($membersAuthor['id'])) {
					return array("return" => false, "reason" => "");
				}else {
					$getMembersRequestPush = "AND (`guy.type` = '{$membersAuthor['type']}' AND `guy.id` = '{$membersAuthor['id']}')";
				}
			}else {
				$getMembersRequestPush = null;
			}
			$getMembersRequest = "SELECT `id` FROM `messages_members` WHERE `{$membersLabel}` = '{$membersValue}' {$getMembersRequestPush} {$membersLimit}";
			$getMembersQuery = mysqli_query($db, $getMembersRequest);
			if (!$getMembersQuery) {
				return array("return" => false, "reason" => "");
			}else {
				$getMembersCount = mysqli_num_rows($getMembersQuery);
				if ($getMembersCount == 0){
					return array("return" => true, "exists" => false, "count" => 0);
				}else {
					return array("return" => true, "exists" => true, "count" => $getMembersCount);
				}
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function data ($object) {
		if (isset($object['author']['type']) && is_string($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author']['id']) && is_numeric($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['mode']['type'], $this->user['mode']['id']) && $this->user['login'] == true) {
				$authorType = $this->user['mode']['type'];
				$authorId = $this->user['mode']['id'];
			}else {
				return array("return" => false, "reason" => "");
			}
		}
		//.
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_user = $this->class['_user'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "check") {
			return array("return" => true);
		}else if ($action == "add") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['content']) && (is_string($object['content']) || is_numeric($object['content']))) $messagesContent = $object['content']; else $messagesContent = null;
			if (isset($object['emoticons']) && is_string($object['emoticons'])) $messagesEmoticons = $object['emoticons']; else $messagesEmoticons = null;
			if ($tabId == null || $messagesContent == null) {
				return array("return" => false, "reason" => "");
			}
			$regexMessages = $_parameter->get('regex_messages');
			if (!preg_match($regexMessages, $messagesContent)) {
				return array("return" => false, "reason" => "");
			}
			$existsTab = $this->tab(array("action" => "exists", "label" => "id", "value" => $tabId));
			if (isset($existsTab['return'], $existsTab['exists']) && $existsTab['return'] == true && $existsTab['exists'] == true) {
				$existsMembers = $this->members(array("action" => "exists", "label" => "tab", "value" => $tabId, "author" => array("type" => $authorType, "id" => $authorId)));
				if (isset($existsMembers['return'], $existsMembers['exists']) && $existsMembers['return'] == true && $existsMembers['exists'] == true) {
					$ddosCheckData = $this->data(array("action" => "check", "type" => "speed", "id" => $tabId, "author" => array("type" => $authorType, "id" => $authorId)));
					if (isset($ddosCheckData['return']) && $ddosCheckData['return'] == true) {
						$messagesTime = time();
						$messagesTab = $tabId;
						$messagesToken = hash('crc32', $_SESSION["client"]['token']['action']['messages'].'::'.$messagesTab.'::'.$messagesTime.'::'.rand().'_'.rand().'_'.rand());
						$messagesDisplay = hash('md5', $messagesToken);
						$messagesAuthorType = $authorType;
						$messagesAuthorId = $authorId;
						$messagesContent = $_tool->hash('encode', $_tool->convertDatabaseString($messagesContent), $messagesToken.'::'.$_parameter->get('hash_messages_content'));
						$messagesEmoticons = null;
						$addMessagesRequest = "INSERT INTO `messages_data` (`id`, `time`, `tab`, `token`, `display`, `author.type`, `author.id`, `content`, `emoticons`) VALUES (NULL, '{$messagesTime}', '{$messagesTab}', '{$messagesToken}', '{$messagesDisplay}', '{$messagesAuthorType}', '{$messagesAuthorId}', '{$messagesContent}', '{$messagesEmoticons}');";
						$addMessagesQuery = mysqli_query($db, $addMessagesRequest);
						if (!$addMessagesQuery) {
							sleep(rand(1,3));
							$addMessagesQuery = mysqli_query($db, $addMessagesRequest);
							if (!$addMessagesQuery) {
								return array("return" => false, "reason" => "");
							}
						}
						if ($addMessagesQuery == true) {
							$messagesId = mysqli_insert_id($db);
							$messagesArr = array(
								"id" => $messagesId,
								"time" => $messagesTime,
								"tab" => $messagesTab,
								"token" => $messagesToken,
								"display" => $messagesDisplay,
								"author" => array(
									"type" => $messagesAuthorType,
									"id" => $messagesAuthorId
									),
								"content" => $messagesContent,
								"emoticons" => $messagesEmoticons
							);
							return array("return" => true, "messages" => $messagesArr);
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
		}else if ($action == "get") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = addslashes($object['id']); else $dataSort = null;
			if (isset($object['sort']) && is_string($object['sort'])) $dataSort = addslashes($object['sort']); else $dataSort = "=";
			if (isset($object['label']) && is_string($object['label'])) $dataLabel = addslashes($object['label']); else $dataLabel = 0;
			if (isset($object['value']) && (is_string($object['value']) || is_numeric($object['value']))) $dataValue = addslashes($object['value']); else $dataValue = 0;
			if (isset($object['order']) && is_string($object['order'])) $dataOrder = addslashes($object['order']); else $dataOrder = null;
			if (isset($object['limit']) && is_string($object['limit'])) $dataLimit = addslashes($object['limit']); else $dataLimit = null;
			if (isset($object['language']) && is_string($object['language'])) $userLanguage = addslashes($object['language']); else $userLanguage = null;
			if ($tabId != null && $dataSort == ">=<") {
				//.
			}else if ($tabId == null || $dataSort == null || $dataLabel == null || $dataValue == null) {
				return array("return" => false, "reason" => "");
			}
			$getAllow = false;
			$existsTab = $this->tab(array("action" => "exists", "label" => "id", "value" => $tabId));
			if (isset($existsTab['return'], $existsTab['exists']) && $existsTab['return'] == true && $existsTab['exists'] == true) {
				$existsMembers = $this->members(array("action" => "exists", "label" => "tab", "value" => $tabId, "author" => array("type" => $authorType, "id" => $authorId)));
				if (isset($existsMembers['return'], $existsMembers['exists']) && $existsMembers['return'] == true && $existsMembers['exists'] == true) {
					$getAllow = true;
				}
			}
			if ($getAllow == false) {
				return array("return" => false, "reason" => "");
			}
			$tabLanguage = $this->tab(array("action" => "get", "rows" => "`language`", "label" => "id", "value" => $tabId, "limit" => "LIMIT 1"))['tab'][0]['language'];
			if ($userLanguage == null) {
				$getMembers = $this->members(array("action" => "get", "rows" => "`translate`", "label" => "tab", "value" => $tabId, "author" => array("type" => $authorType, "id" => $authorId), "limit" => "LIMIT 1"));
				if (isset($getMembers['return'], $getMembers['data'][0]['translate']) && $getMembers['return'] == true && $getMembers['data'][0]['translate'] != "0") {
					$userLanguage = $getMembers['data'][0]['translate'];
				}
			}
			if ($userLanguage == null) {
				$userLanguage = $tabLanguage;
			}
			if ($dataSort == ">=<") {
				$getDataRequest = "SELECT * FROM `messages_data` WHERE `tab` = '{$tabId}' ORDER BY `id` DESC {$dataLimit}";
			}else {
				$getDataRequest = "SELECT * FROM `messages_data` WHERE `tab` = '{$tabId}' AND (`{$dataLabel}` {$dataSort} '{$dataValue}') {$dataOrder} {$dataLimit}";
			}
			$getDataQuery = mysqli_query($db, $getDataRequest);
			if (!$getDataQuery) {
				return array("return" => false, "reason" => "");
			}else {
				$rowsArr = array();
				$getDataCount = mysqli_num_rows($getDataQuery);
				if ($getDataCount == 0) {
					return array("return" => true, "count" => 0, "data" => $rowsArr);
				}else {
					while ($getDataFetch = mysqli_fetch_assoc($getDataQuery)) {
						$getDataFetch['author'] = array(
							"type" => $getDataFetch['author.type'], 
							"id" => $getDataFetch['author.id']
						);
						$getDataFetchContent = $_tool->hash('decode', $getDataFetch['content'], $getDataFetch['token'].'::'.$_parameter->get('hash_messages_content'));
						$getDataFetch['content'] = array();
						$getDataFetch['content']['text'] = $getDataFetchContent;
						$getDataFetch['content']['original'] = $getDataFetchContent;
						$getDataFetch['content']['translated'] = false;
						$getDataFetch['content']['language'] = null;
						if ($getDataFetch['author']['type'] != $authorType || $getDataFetch['author']['id'] != $authorId) {
							$getMembersLanguage = $this->members(array("action" => "get", "rows" => "`translate`", "label" => "tab", "value" => $tabId, "author" => array("type" => $getDataFetch['author']['type'], "id" => $getDataFetch['author']['id'])));
							if (isset($getMembersLanguage['return'], $getMembersLanguage['data'][0]['translate']) && $getMembersLanguage['return'] == true && $getMembersLanguage['data'][0]['translate'] != "0") {
								$authorLanguage = $getMembersLanguage['data'][0]['translate'];
							}else {
								$authorLanguage = $tabLanguage;
							}
							$getDataFetch['content']['language'] = $authorLanguage;
							if (isset($authorLanguage) && $authorLanguage != "0" && $userLanguage != null && $authorLanguage != $userLanguage) {
								if ($getDataFetch['content']['original'] != null && is_string($getDataFetch['content']['original']) && !preg_match("/^([0-9\s]$)/", $getDataFetch['content']['original'])) {
									$translateContent = $_language->translate($userLanguage, $getDataFetch['content']['original'], $authorLanguage);
									if (isset($translateContent['return']) && $translateContent['return'] == true) {
										$getDataFetch['content']['text'] = $translateContent['data'];
										$getDataFetch['content']['translated'] = true;
										$getDataFetch['content']['language'] = $userLanguage;
									}
								}else {
									$getDataFetch['content']['language'] = $userLanguage;
								}
							}
						}else {
							$getDataFetch['content']['language'] = $userLanguage;
						}
						unset($getDataFetch['token']);
						unset($getDataFetch['author.type']);
						unset($getDataFetch['author.id']);
						$rowsArr[] = $getDataFetch;
					}
					return array("return" => true, "count" => $getDataCount, "data" => $rowsArr);
				}
			}
		}else if ($action == "remove" || $action == "delete") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
			if (isset($object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if ($tabId == null) {
				return array("return" => false, "reason" => "");
			}
			if ($guyType == null || $guyId == null) {
				return array("return" => false, "reason" => "");
			}
			$existsMembers = $this->members(array("action" => "exists", "label" => "tab", "value" => $tabId, "author" => array("type" => $guyType, "id" => $guyId), "limit" => "LIMIT 1"));
			if (isset($existsMembers['return'], $existsMembers['exists']) && $existsMembers['return'] == true && $existsMembers['exists'] == true) {
				$deleteMembersRequest = "DELETE FROM `messages_data` WHERE `tab` = '{$tabId}' AND `guy.type` = '{$guyType}' AND `guy.id` = '{$guyId}'";
				$deleteMembersQuery = mysqli_query($db, $deleteMembersRequest);
				if (!$deleteMembersQuery) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true);
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "exists") {
			if (isset($object['label']) && is_string($object['label'])) $dataLabel = $object['label']; else $dataLabel = null;
			if (isset($object['value']) && (is_string($object['value']) || is_numeric($object['value']))) $dataValue = $object['value']; else $dataValue = null;
			if (isset($object['limit']) && is_string($object['limit'])) $dataLimit = $object['limit']; else $dataLimit = "LIMIT 1";
			if ($dataLabel == null || $dataValue == null) {
				return array("return" => false, "reason" => "");
			}
			if (isset($object['author']) && is_array($object['author'])) $dataAuthor = $object['author']; else $dataAuthor = null;
			if (isset($dataAuthor['type'], $dataAuthor['id'])) {
				if (!is_string($dataAuthor['type']) || !is_numeric($dataAuthor['id'])) {
					return array("return" => false, "reason" => "");
				}else {
					$getDataRequestPush = "AND (`guy.type` = '{$dataAuthor['type']}' AND `guy.id` = '{$dataAuthor['id']}')";
				}
			}else {
				$getDataRequestPush = null;
			}
			$getDataRequest = "SELECT `id` FROM `messages_data` WHERE `{$dataLabel}` = '{$dataValue}' {$getDataRequestPush} {$dataLimit}";
			$getDataQuery = mysqli_query($db, $getDataRequest);
			if (!$getDataQuery) {
				return array("return" => false, "reason" => "");
			}else {
				$getDataCount = mysqli_num_rows($getDataQuery);
				if ($getDataCount == 0){
					return array("return" => true, "exists" => false, "count" => 0);
				}else {
					return array("return" => true, "exists" => true, "count" => $getDataCount);
				}
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function views ($object) {
		if (isset($object['author']['type']) && is_string($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author']['id']) && is_numeric($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['mode']['type'], $this->user['mode']['id']) && $this->user['login'] == true) {
				$authorType = $this->user['mode']['type'];
				$authorId = $this->user['mode']['id'];
			}else {
				return array("return" => false, "reason" => "");
			}
		}
		//.
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_user = $this->class['_user'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = addslashes($object['action']); else $action = null;
		if ($action == "add") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
			if (isset($object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if ($tabId ==  null) {
				return array("return" => false, "reason" => "");
			}
			if ($guyType == null || $guyId ==  null) {
				return array("return" => false, "reason" => "");
			}
			$existsViews = $this->views(array("action" => "exists", "id" => $tabId, "guy" => array("type" => $guyType, "id" => $guyId)));
			if (isset($existsViews['return'], $existsViews['exists']) && $existsViews['return'] == true) {
				if ($existsViews['exists'] == true) {
					$viewAddRequest = "UPDATE SET `time` = '{$_tool->timeNow()}' FROM `messages_views` WHERE `tab` = '{$tabId}' AND `guy.type` = '{$guyType}' AND `guy.id` = '{$guyId}';";
				}else {
					$viewAddRequest = "INSERT INTO `giccos`.`messages_views` (`id`, `time`, `tab`, `guy.type`, `guy.id`) VALUES (NULL, '{$_tool->timeNow()}', '{$tabId}', '{$guyType}', '{$guyId}');";
				}
				$viewAddQuery = mysqli_query($db, $viewAddRequest);
				if (!$viewAddQuery) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true);
				}
			}else if (isset($existsViews['return'], $existsViews['reason']) && $existsViews['return'] == false) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "get") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
			if (isset($object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if ($tabId ==  null) {
				return array("return" => false, "reason" => "");
			}
			if ($guyType == null || $guyId ==  null) {
				return array("return" => false, "reason" => "");
			}
			$existsTab = $this->tab(array("action" => "exists", "label" => "id", "value" => $tabId));
			if (isset($existsTab['return'], $existsTab['exists']) && $existsTab['return'] == true) {
				if ($existsTab['exists'] == true) {
					$getMembers = $this->members(array("action" => "get", "rows" => "`guy.type`, `guy.id`", "label" => "tab", "value" => $tabId));
					if (isset($getMembers['return'], $getMembers['data']) && $getMembers['return'] == true) {
						$membersTabArr = $membersSeenArr = $membersUnreadArr = array();
						foreach ($getMembers['data'] as $key => $memberDataThis) {
							$membersTabArr[] = array("type" => $memberDataThis['guy.type'], "id" => $memberDataThis['guy.id']);
						}
						$getGuyReuqest = "SELECT `time`, `guy.type`, `guy.id` FROM `messages_views` WHERE `tab` = '{$tabId}'";
						$getGuyQuery = mysqli_query($db, $getGuyReuqest);
						while ($getGuyFetch = mysqli_fetch_assoc($getGuyQuery)) {
							foreach ($membersTabArr as $key => $membersTabThis) {
								if ($membersTabThis['type'] == $getGuyFetch['guy.type'] && $membersTabThis['id'] == $getGuyFetch['guy.id']) {
									$membersSeenArr[] = array("guy" => $membersTabThis, "time" => $getGuyFetch['time']);
								}
							}
						}
						foreach ($membersSeenArr as $key => $membersSeenThis) {
							foreach ($membersTabArr as $key => $membersTabThis) {
								if ($membersTabThis['type'] == $membersSeenArr['type'] && $membersTabThis['id'] == $membersSeenArr['id']) {
									$membersUnreadArr[] = array("guy" => $membersTabThis);
								}
							}
						}
						return array("return" => true, "data" => array("seen" => $membersSeenArr, "unread" => $membersUnreadArr));
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if (isset($existsTab['return'], $existsTab['reason']) && $existsTab['return'] == false) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "remove" || $action == "delete") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
			if (isset($object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if ($tabId ==  null) {
				return array("return" => false, "reason" => "");
			}
			if ($guyType == null || $guyId ==  null) {
				return array("return" => false, "reason" => "");
			}
			$existsViews = $this->views(array("action" => "exists", "id" => $tabId, "guy" => array("type" => $guyType, "id" => $guyId)));
			if (isset($existsViews['return'], $existsViews['exists']) && $existsViews['return'] == true) {
				if ($existsViews['exists'] == true) {
					$viewDeleteRequest = "DELETE FROM `messages_views` WHERE `tab` = '{$tabId}' AND `guy.type` = '{$guyType}' AND `guy.id` = '{$guyId}';";
					$viewDeleteQuery = mysqli_query($db, $viewDeleteRequest);
					if (!$viewDeleteQuery) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if (isset($existsViews['return'], $existsViews['reason']) && $existsViews['return'] == false) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "exists") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
			if (isset($object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if ($tabId ==  null) {
				return array("return" => false, "reason" => "");
			}
			if ($guyType == null || $guyId ==  null) {
				return array("return" => false, "reason" => "");
			}
			$existsViewsRequest = "SELECT `id` FROM `messages_views` WHERE `tab` = '{$tabId}' AND `guy.type` = '{$guyType}' AND `guy.id` = '{$guyId}'";
			$existsViewsQuery = mysqli_query($db, $existsViewsRequest);
			if ($existsViewsQuery == true && mysqli_num_rows($existsViewsQuery) == 0) {
				return array("return" => true, "exists" => false, "count" => 0);
			}else if ($existsViewsQuery == true && mysqli_num_rows($existsViewsQuery) > 0) {
				$existsViewsCount = mysqli_num_rows($existsViewsQuery);
				return array("return" => true, "exists" => true, "count" => $existsViewsCount);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function typing ($object) {
		if (isset($object['author']['type']) && is_string($object['author']['type'])) $authorType = $object['author']['type']; else $authorType = null;
		if (isset($object['author']['id']) && is_numeric($object['author']['id'])) $authorId = $object['author']['id']; else $authorId = null;
		if ($authorType == null && $authorId == null) {
			$this->callUserInfo();
			if (isset($this->user['login'], $this->user['mode']['type'], $this->user['mode']['id']) && $this->user['login'] == true) {
				$authorType = $this->user['mode']['type'];
				$authorId = $this->user['mode']['id'];
			}else {
				return array("return" => false, "reason" => "");
			}
		}
		//.
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_user = $this->class['_user'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = addslashes($object['action']); else $action = null;
		if ($action == "add") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
			if (isset($object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if ($tabId ==  null) {
				return array("return" => false, "reason" => "");
			}
			if ($guyType == null || $guyId ==  null) {
				return array("return" => false, "reason" => "");
			}
			$existsTyping = $this->typing(array("action" => "exists", "id" => $tabId, "guy" => array("type" => $guyType, "id" => $guyId)));
			if (isset($existsTyping['return'], $existsTyping['exists']) && $existsTyping['return'] == true) {
				if ($existsTyping['exists'] == true) {
					$typingAddRequest = "UPDATE `messages_typing` SET `time` = '{$_tool->timeNow()}' WHERE `tab` = '{$tabId}' AND `guy.type` = '{$guyType}' AND `guy.id` = '{$guyId}';";
				}else {
					$typingAddRequest = "INSERT INTO `messages_typing` (`id`, `time`, `tab`, `guy.type`, `guy.id`) VALUES (NULL, '{$_tool->timeNow()}', '{$tabId}', '{$guyType}', '{$guyId}');";
				}
				$typingAddQuery = mysqli_query($db, $typingAddRequest);
				if (!$typingAddQuery) {
					return array("return" => false, "reason" => "");
				}else {
					return array("return" => true);
				}
			}else if (isset($existsTyping['return'], $existsTyping['reason']) && $existsTyping['return'] == false) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "get") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
			if (isset($object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if ($tabId ==  null) {
				return array("return" => false, "reason" => "");
			}
			if ($guyType == null || $guyId ==  null) {
				return array("return" => false, "reason" => "");
			}
			$existsTab = $this->tab(array("action" => "exists", "label" => "id", "value" => $tabId));
			if (isset($existsTab['return'], $existsTab['exists']) && $existsTab['return'] == true) {
				if ($existsTab['exists'] == true) {
					$getMembers = $this->members(array("action" => "get", "rows" => "`guy.type`, `guy.id`", "label" => "tab", "value" => $tabId));
					if (isset($getMembers['return'], $getMembers['data']) && $getMembers['return'] == true) {
						$membersTabArr = $membersTypingArr = array();
						foreach ($getMembers['data'] as $key => $memberDataThis) {
							$membersTabArr[] = array("type" => $memberDataThis['guy.type'], "id" => $memberDataThis['guy.id']);
						}
						$getGuyReuqest = "SELECT `time`, `guy.type`, `guy.id` FROM `messages_typing` WHERE `tab` = '{$tabId}' AND (`guy.type` != '{$guyType}' OR `guy.id` != '{$guyId}')";
						$getGuyQuery = mysqli_query($db, $getGuyReuqest);
						while ($getGuyFetch = mysqli_fetch_assoc($getGuyQuery)) {
							foreach ($membersTabArr as $key => $membersTabThis) {
								if ($membersTabThis['type'] == $getGuyFetch['guy.type'] && $membersTabThis['id'] == $getGuyFetch['guy.id']) {
									$membersTypingArr[] = array("guy" => $membersTabThis, "time" => $getGuyFetch['time']);
								}
							}
						}
						return array("return" => true, "data" => array("typing" => $membersTypingArr));
					}else {
						return array("return" => false, "reason" => "");
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if (isset($existsTab['return'], $existsTab['reason']) && $existsTab['return'] == false) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "remove" || $action == "delete") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
			if (isset($object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if ($tabId ==  null) {
				return array("return" => false, "reason" => "");
			}
			if ($guyType == null || $guyId ==  null) {
				return array("return" => false, "reason" => "");
			}
			$existsTyping = $this->typing(array("action" => "exists", "id" => $tabId, "guy" => array("type" => $guyType, "id" => $guyId)));
			if (isset($existsTyping['return'], $existsTyping['exists']) && $existsTyping['return'] == true) {
				if ($existsTyping['exists'] == true) {
					$typingDeleteRequest = "DELETE FROM `messages_typing` WHERE `tab` = '{$tabId}' AND `guy.type` = '{$guyType}' AND `guy.id` = '{$guyId}';";
					$typingDeleteQuery = mysqli_query($db, $typingDeleteRequest);
					if (!$typingDeleteQuery) {
						return array("return" => false, "reason" => "");
					}else {
						return array("return" => true);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}else if (isset($existsTyping['return'], $existsTyping['reason']) && $existsTyping['return'] == false) {
				return array("return" => false, "reason" => "");
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "exists") {
			if (isset($object['id']) && is_numeric($object['id'])) $tabId = $object['id']; else $tabId = null;
			if (isset($object['guy']['type']) && is_string($object['guy']['type'])) $guyType = $object['guy']['type']; else $guyType = null;
			if (isset($object['guy']['id']) && is_numeric($object['guy']['id'])) $guyId = $object['guy']['id']; else $guyId = null;
			if ($tabId ==  null) {
				return array("return" => false, "reason" => "");
			}
			if ($guyType == null || $guyId ==  null) {
				return array("return" => false, "reason" => "");
			}
			$existsTypingRequest = "SELECT `id` FROM `messages_typing` WHERE `tab` = '{$tabId}' AND `guy.type` = '{$guyType}' AND `guy.id` = '{$guyId}'";
			$existsTypingQuery = mysqli_query($db, $existsTypingRequest);
			if ($existsTypingQuery == true && mysqli_num_rows($existsTypingQuery) == 0) {
				return array("return" => true, "exists" => false, "count" => 0);
			}else if ($existsTypingQuery == true && mysqli_num_rows($existsTypingQuery) > 0) {
				$existsTypingCount = mysqli_num_rows($existsTypingQuery);
				return array("return" => true, "exists" => true, "count" => $existsTypingCount);
			}else {
				return array("return" => false, "reason" => "");
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