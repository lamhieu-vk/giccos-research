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
		$_users = $this->class['_user'];
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
				if (count($tabInfo['guy']) == 1) {
					$tabInfo['type'] = "private";
				}else if (count($tabInfo['guy']) > 1) {
					$tabInfo['type'] = "groups";
				}
				if ($tabInfo['name'] == null) {
					if (count($tabInfo['guy']) == 1) {
						foreach ($tabInfo['guy'] as $key => $tabInfoGuyThis) {
							if (isset($tabInfoGuyThis['type'], $tabInfoGuyThis['id']) && in_array($tabInfoGuyThis['type'], ["user", "users"])) {
								$getGuyProfile = $_users->getInfo(array("rows" => "`fullname`, `username`", "label" => "id", "value" => $tabInfoGuyThis['id']));
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
							if (isset($tabInfoGuyThis['type'], $tabInfoGuyThis['id']) && in_array($tabInfoGuyThis['type'], ["user", "users"])) {
								$getGuyProfile = $_users->getInfo(array("rows" => "`fullname`, `username`", "label" => "id", "value" => $tabInfoGuyThis['id']));
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
				if (in_array($authorType, ["user", "users"])) {
					$profileAuthorQuery = $_users->profile(array("rows" => "`language`", "label" => "id", "value" => $authorId, "limit" => "LIMIT 1"));
					if (isset($profileAuthorQuery['return'], $profileAuthorQuery['data'][0]) && $profileAuthorQuery['return'] == true) {
						$tabInfo['language'] = $profileAuthorQuery['data'][0]['language'];
					}else {
						$tabInfo['language'] = $_parameter->get('user_language.default');
					}
				}
			}else if (!in_array($tabInfo['language'], $_parameter->get('user_language.code_list', true))) {
				$tabInfo['language'] = $_parameter->get('user_language.default');
			}
			$createTabReuqest = "INSERT INTO `messages_id` (`id`, `time`, `token`, `display`, `private`, `type`, `name`, `language`) VALUES (NULL, '{$tabInfo['time']}', '{$tabInfo['token']}', '{$tabInfo['display']}', '{$tabInfo['private']}', '{$tabInfo['type']}', '{$tabInfo['name']}', '{$tabInfo['language']}');";
			$createTabQuery = mysqli_query($db, $createTabReuqest);
			if (!$createTabQuery) {
				return array("return" => false, "reason" => "3");
			}else {
				$tabInfo['id'] = mysqli_insert_id($db);
				$addTabAuthorOptions = array(
					"action" => "add",
					"id" => $tabInfo['id'],
					"guy" => array(
						[
						"type" => $authorType, 
						"id" => $authorId,
						"regency" => "author"
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
					$tabInfo['x'] = $addTabMember;
					$tabInfo['s'] = $addTabAuthor;
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
		$_users = $this->class['_user'];
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
					}else if (!in_array($tabGuyThis['type'], ["user", "users"]) || !is_string($tabGuyThis['type']) || !is_numeric($tabGuyThis['id'])) {
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
					if (in_array($tabGuyThis['type'], ["user", "users"])) {
						$existsGuyQuery = $_users->exists(array("label" => "id", "value" => $tabGuyThis['id']));
						if (isset($existsGuyQuery['return'], $existsGuyQuery['exists']) && $existsGuyQuery['return'] == true && $existsGuyQuery['exists'] == true) {
							if (isset($tabGuyThis['regency']) && is_string($tabGuyThis['regency'])) $tabGuy[$key]['regency'] = $tabGuyThis['regency']; else $tabGuy[$key]['regency'] = "members";
							if (isset($tabGuyThis['translate']) && is_string($tabGuyThis['translate'])) $tabGuy[$key]['translate'] = $tabGuyThis['translate']; else $tabGuy[$key]['translate'] = null;
							if ($tabGuy[$key]['translate'] == null) {
								$profileGuyQuery = $_users->profile(array("rows" => "`language`, `messages.translate`", "label" => "id", "value" => $tabGuyThis['id'], "limit" => "LIMIT 1"));
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
			if (isset($object['limit']) && is_string($object['limit'])) $limit = addslashes($object['limit']); else $limit = "LIMIT 1";
			if (isset($object['author']) && is_array($object['author'])) $authorArr = $object['author']; else $authorArr = null;
			if ($membersRows == null || $membersLabel == null || $membersValue == null) {
				return array("return" => false, "reason" => "");
			}
			$getMembersRequestPush = null;
			if ($authorArr != null) {
				if (isset($authorArr['type'], $authorArr['id']) && is_string($authorArr['type']) && is_numeric($authorArr['id'])) {
					$getMembersRequestPush = "AND (`author.type` = '{$authorArr['type']}' AND `author.id` = '{$authorArr['id']}')";
				}else {
					return array("return" => false, "reason" => "");
				}
			}
			$getMembersRequest = "SELECT {$membersRows} FROM `messages_members` WHERE `{$membersLabel}` = '{$membersValue}' {$getMembersRequestPush} {$limit}";
			$getMembersQuery = mysqli_query($db, $getMembersRequest);
			if (!$getMembersQuery) {
				return array("return" => false, "reason" => "");
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
		$_users = $this->class['_user'];
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
			if (isset($object['limit']) && is_string($object['limit'])) $dataLimit = addslashes($object['limit']); else $dataLimit = "LIMIT 1";
			if (isset($object['language']) && is_string($object['language'])) $userLanguage = addslashes($object['language']); else $userLanguage = null;
			if ($tabId == null || $dataSort == null || $dataLabel == null || $dataValue == null) {
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
				$userLanguage = $tabLanguage;
			}
			$getDataRequest = "SELECT * FROM `messages_data` WHERE `tab` = '{$tabId}' AND (`{$dataLabel}` {$dataSort} '{$dataValue}') {$dataOrder} {$dataLimit}";
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
						// $getDataFetchContent = $_tool->hash('decode', $getDataFetch['content'], $getDataFetch['token'].'::'.$_parameter->get('hash_messages_content'));
						$getDataFetchContent = "messages content";
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
								if ($getDataFetch['content']['original'] != null && is_string($getDataFetch['content']['original'])) {
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