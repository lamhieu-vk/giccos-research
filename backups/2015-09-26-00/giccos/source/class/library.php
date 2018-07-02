<?php
if (!defined('7c9a87aba3d96d2dc3edc45da062ce72')){
    die(header('HTTP/1.0 404 Not Found'));
}
Class library {
	function __construct () {
		$GLOBALS["_library"] = $this;
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
	function wordnik ($object = array()) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		//.
		if (isset($object['type']) && is_string($object['type'])) $type = $object['type']; else $type = null;
		if ($type == "word") {
			if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
			if ($action == "audio") {
				if (isset($object['keywords']) && is_string($object['keywords'])) $keywords = urlencode($object['keywords']); else $keywords = null;
				if ($keywords == null) {
					return array("return" => false, "reason" => "");
				}
				$keyServices = $_parameter->get('key_api_wordnik_1');
				$urlRequest = "http://api.wordnik.com:80/v4/word.json/".$keywords."/audio?useCanonical=false";
				$urlRequest .= "&api_key=".$keyServices;
				$urlRequest .= "&limit=1";
				$requestAction = $_tool->curl($urlRequest, "auto", array("cookie" => false));
				if (isset($requestAction['return'], $requestAction['data']) && $requestAction['return'] == true) {
					$dataArrOriginal = json_decode($requestAction['data'], true)[0];
					$getFile = base64_encode($_tool->contentMediaFile($dataArrOriginal['fileUrl'], 5, array("cookie" => true)));
					$dataArr = array(
						"word" => $dataArrOriginal['word'],
						"base64" => $getFile,
						"author" => $dataArrOriginal['createdBy'],
						"attribution" => $dataArrOriginal['attributionText']
					);
					return array("return" => true, "data" => $dataArr);
				}else {
					return array("return" => false, "reason" => "3");
				}
			}else if ($action == "define") {
				if (isset($object['keywords']) && is_string($object['keywords'])) $keywords = urlencode($object['keywords']); else $keywords = null;
				if (isset($object['dictionaries']) && is_string($object['dictionaries'])) $dictionaries = urlencode($object['dictionaries']); else $dictionaries = "all";
				if (isset($object['limit']) && is_numeric($object['limit'])) $limit = $object['limit']; else $limit = 10;
				if ($keywords == null) {
					return array("return" => false, "reason" => "");
				}else if ($dictionaries == null) {
					return array("return" => false, "reason" => "");
				}else if ($limit == null) {
					return array("return" => false, "reason" => "");
				}
				// $keyServices = $_parameter->get('key_api_wordnik_'.rand(1,10));
				$keyServices = $_parameter->get('key_api_wordnik_1');
				$urlRequest = "http://api.wordnik.com:80/v4/word.json/".$keywords."/definitions?includeRelated=true&sourceDictionaries=all&useCanonical=false&includeTags=false";
				$urlRequest .= "&partOfSpeech=".$dictionaries;
				$urlRequest .= "&api_key=".$keyServices;
				$urlRequest .= "&limit=".$limit;
				$requestAction = $_tool->curl($urlRequest, "auto", array("cookie" => false));
				if (isset($requestAction['return'], $requestAction['data']) && $requestAction['return'] == true) {
					$dataArrOriginal = json_decode($requestAction['data'], true);
					$dataArr = array();
					if (is_array($dataArrOriginal) && count($dataArrOriginal) > 0) {
						foreach ($dataArrOriginal as $thisKey => $thisValue) {
							$dataArr[$thisKey]['word'] = isset($thisValue['word']) ? $thisValue['word'] : null;
							$dataArr[$thisKey]['source'] = isset($thisValue['sourceDictionary']) ? $thisValue['sourceDictionary'] : null;
							$dataArr[$thisKey]['example'] = isset($thisValue['exampleUses']) ? $thisValue['exampleUses'] : null;
							$dataArr[$thisKey]['related'] = isset($thisValue['relatedWords']) ? $thisValue['relatedWords'] : null;
							$dataArr[$thisKey]['type'] = isset($thisValue['partOfSpeech']) && is_string($thisValue['partOfSpeech']) ? $thisValue['partOfSpeech'] : null;
							$dataArr[$thisKey]['attribution'] = isset($thisValue['attributionText']) && is_string($thisValue['attributionText']) ? preg_replace("/^(from)\s([\S\s]+)/i", "$2", $thisValue['attributionText']) : null;
							$dataArr[$thisKey]['content'] = isset($thisValue['text']) && is_string($thisValue['text']) ? preg_replace("/^([\S\s]+)(\.)$/i", "$1", $thisValue['text']) : null;
							$dataArr[$thisKey]['cited'] = isset($thisValue['citations']) ? $thisValue['citations'] : null;
							//.
							if (isset($dataArr[$thisKey]['citations'])) {
								unset($dataArr[$thisKey]['sourceDictionary']);
							}
							if (isset($dataArr[$thisKey]['citations'])) {
								unset($dataArr[$thisKey]['exampleUses']);
							}
							if (isset($dataArr[$thisKey]['citations'])) {
								unset($dataArr[$thisKey]['relatedWords']);
							}
								if (isset($dataArr[$thisKey]['citations'])) {
								unset($dataArr[$thisKey]['partOfSpeech']);
							}
								if (isset($dataArr[$thisKey]['citations'])) {
								unset($dataArr[$thisKey]['attributionText']);
							}
								if (isset($dataArr[$thisKey]['citations'])) {
								unset($dataArr[$thisKey]['text']);
							}
							if (isset($dataArr[$thisKey]['citations'])) {
								unset($dataArr[$thisKey]['citations']);
							}
							//.
							if (isset($dataArr[$thisKey]['example'][0], $dataArr[$thisKey]['example'][0]['text'])) {
								$dataArr[$thisKey]['example'] = $dataArr[$thisKey]['example'][0]['text'];
							}
							if (isset($dataArr[$thisKey]['related'][0], $dataArr[$thisKey]['related'][0]['words'])) {
								$dataArr[$thisKey]['related'] = $dataArr[$thisKey]['related'][0]['words'];
							}
							if (count($dataArr[$thisKey]['cited']) > 0) {
								foreach ($dataArr[$thisKey]['cited'] as $key => $value) {
									$dataArr[$thisKey]['cited'] = $value;
									break;
								}
							}
						}
					}
					return array("return" => true, "data" => $dataArr);
				}else {
					return array("return" => false, "reason" => "3");
				}
			}else {
				return array("return" => false, "reason" => "");
			}
		}
	}
	function voice ($object = array()) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "add") {
			if (isset($object['language']) && is_string($object['language'])) $language = substr($_tool->convertDatabaseString($object['language']), 0, 4); else $language = null;
			if (isset($object['word']) && is_string($object['word'])) $word = $_tool->convertDatabaseString($object['word']); else $word = null;
			if (isset($object['content']) && is_string($object['content']) && $_tool->isBase64($object['content'])) $content = strip_tags($object['content']); else $content = null;
			if ($language == null || $word == null || $content == null) {
				return array("return" => false, "reason" => "");
			}
			$existsAudioRequest = "SELECT `id`, `time`, `updated`, `token`, `content` FROM `library_voice` WHERE `language` = '".$language."' AND `word` = '".$word."' LIMIT 1;";
			$existsAudioQuery = mysqli_query($db, $existsAudioRequest);
			if (!$existsAudioQuery) {
				return array("return" => false, "reason" => "");
			}else {
				if (mysqli_num_rows($existsAudioQuery) == 0) {
					$token = hash('crc32', $word.'::'.time().'::'.rand());
					$addAudioRequest = "INSERT INTO `library_voice` (`id`, `time`, `updated`, `token`, `language`, `word`, `content`) VALUES (NULL, '".time()."', '".time()."', '".$token."', '".$language."', '".$word."', '".$content."');";
					$addAudioQuery = mysqli_query($db, $addAudioRequest);
					if (!$addAudioQuery) {
						return array("return" => false, "reason" => "");
					}else {
						$audioId = mysqli_insert_id($db);
						$dataArr = array(
							"id" => $audioId,
							"token" => $token,
							"time" => time(),
							"updated" => time(),
							"content" => $content
						);
						return array("return" => true, "data" => $dataArr);
					}
				}else {
					$audioFetch = mysqli_fetch_assoc($existsAudioQuery);
					if ($audioFetch['updated'] + 7776000 < time() && $content != $audioFetch['content']) {
						$updateAudioRequest = "UPDATE `library_voice` SET `updated` = '".time()."', `content` = '".$content."' WHERE `id` = '".$audioFetch['id']."';";
						$updateAudioQuery = mysqli_query($db, $updateAudioRequest);
						if (!$updateAudioQuery) {
							return array("return" => false, "reason" => "");
						}
					}
					$dataArr = array(
						"id" => $audioFetch['id'],
						"token" => $audioFetch['token'],
						"time" => $audioFetch['time'],
						"updated" => time(),
						"content" => $content
					);
					return array("return" => true, "data" => $dataArr);
				}
			}
		}else if ($action == "get") {
			if (isset($object['language']) && is_string($object['language'])) $language = substr($_tool->convertDatabaseString($object['language']), 0, 4); else $language = null;
			if (isset($object['word']) && is_string($object['word'])) $word = $_tool->convertDatabaseString($object['word']); else $word = null;
			if ($language == null || $word == null) {
				return array("return" => false, "reason" => "");
			}
			$existsAudioRequest = "SELECT * FROM `library_voice` WHERE `language` = '".$language."' AND `word` = '".$word."' LIMIT 1;";
			$existsAudioQuery = mysqli_query($db, $existsAudioRequest);
			if (!$existsAudioQuery) {
				return array("return" => false, "reason" => "");
			}else {
				$dataArr = array();
				while ($audioFetch = mysqli_fetch_assoc($existsAudioQuery)) {
					$dataArr[] = $audioFetch;
				}
				$dataCount = count($dataArr);
				return array("return" => true, "count" => $dataCount, "data" => $dataArr);
			}
		}else if ($action == "exists") {
			if (isset($object['language']) && is_string($object['language'])) $language = substr($_tool->convertDatabaseString($object['language']), 0, 4); else $language = null;
			if (isset($object['word']) && is_string($object['word'])) $word = $_tool->convertDatabaseString($object['word']); else $word = null;
			if ($language == null || $word == null) {
				return array("return" => false, "reason" => "");
			}
			$existsAudioRequest = "SELECT `id` FROM `library_voice` WHERE `language` = '".$language."' AND `word` = '".$word."' LIMIT 1;";
			$existsAudioQuery = mysqli_query($db, $existsAudioRequest);
			if (!$existsAudioQuery) {
				return array("return" => false, "reason" => "");
			}else {
				if (mysqli_num_rows($existsAudioQuery) == 0) {
					return array("return" => true, "exists" => false);
				}else {
					return array("return" => true, "exists" => true);
				}
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
	function words ($object = array()) {
		$_tool = $this->class['_tool'];
		$_parameter = $this->class['_parameter'];
		$_language = $this->class['_language'];
		$db = $this->class['_db']->port('beta');
		//.
		if (isset($object['action']) && is_string($object['action'])) $action = $object['action']; else $action = null;
		if ($action == "extract") {
			if (isset($object['language']) && is_string($object['language'])) $language = substr($_tool->convertDatabaseString($object['language']), 0, 4); else $language = null;
			if (isset($object['word']) && is_string($object['word'])) $word = $_tool->convertDatabaseString($object['word']); else $word = null;
			if (isset($object['type']) && is_string($object['type'])) $type = $_tool->convertDatabaseString($object['type']); else $type = null;
			if (isset($object['limit']) && is_numeric($object['limit'])) $limit = intval($object['limit']); else $limit = 20;
			if (isset($object['translate']) && is_bool($object['translate'])) $translate = $object['translate']; else $translate = false;
			if ($word == null || $type == null)  {
				return array("return" => false, "reason" => "");
			}
			if ($language == null) {
				return array("return" => false, "reason" => "");
			}
			$getWord = $this->words(array("action" => "get", "language" => $language, "word" => $word, "type" => $type, "limit" => 'LIMIT '.$limit));
			if (isset($getWord['return'], $getWord['count'], $getWord['data']) && $getWord['return'] == true) {
				if ($getWord['count'] < $limit && $limit < 50) {
					$extractAllow = true;
					if ($translate == true && $language != "en") {
						$translateContent = $_language->translate("en", $word, $language);
						if (isset($translateContent['return'], $translateContent['data']) && $translateContent['return'] == true) {
							if ($translateContent['data'] != $word) {
								$word = $translateContent['data'];
							}else {
								$extractAllow = false;
							}
						}else {
							$extractAllow = false;
						}
					}
					if ($extractAllow == true) {
						$audioFile = null;
						if ($language == "en") {
							$audioWord = $this->wordnik(array("type" => "word", "action" => "audio", "keywords" => $word));
							if (isset($audioWord['return'], $audioWord['data']) && $audioWord['return'] == true) {
								$addWord = $this->voice(array("action" => "add", "language" => $language, "word" => $word, "content" => $audioWord['data']['base64']));
							}
						}
						$extractLibrary = $this->wordnik(array("type" => "word", "action" => "define", "keywords" => $word, "dictionaries" => $type, "limit" => $limit));
						if (isset($extractLibrary['return'], $extractLibrary['data']) && $extractLibrary['return'] == true) {
							foreach ($extractLibrary['data'] as $key => $thisHasData) {
								if (isset($thisHasData['word'], $thisHasData['type'], $thisHasData['attribution'], $thisHasData['source'])) {
									foreach ($getWord['data'] as $oldHasData) {
										if (isset($oldHasData['word'], $oldHasData['type'], $oldHasData['attribution'], $oldHasData['source'])) {
											if ($oldHasData['word'] == $oldHasData['word'] && $oldHasData['type'] == $oldHasData['type'] && $oldHasData['attribution'] == $oldHasData['attribution'] && $oldHasData['source'] == $oldHasData['source']) {
												unset($extractLibrary['data'][$key]);
											}
										}
									}
								}
							}
							foreach ($extractLibrary['data'] as $thisData) {
								$addAllow = true;
								if ($translate == true && $language != "en") {
									$translateContent = $_language->translate($language, $thisData['content'], "en");
									if (isset($translateContent['return'], $translateContent['data']) && $translateContent['return'] == true) {
										if ($translateContent['data'] != $thisData['content']) {
											$thisData['content'] = $translateContent['data'];
										}else {
											$addAllow = false;
										}
									}else {
										$addAllow = false;
									}
								}
								if ($addAllow == true) {
									$addWord = $this->words(array("action" => "add", "language" => $language, "word" => $word, "type" => $thisData['type'], "content" => $thisData['content'], "example" => $thisData['example'], "related" => $thisData['related'], "attribution" => $thisData['attribution'], "source" => $thisData['source'], "host" => "wordnik", "audio" => $audioFile, "primary" => false));
									if (isset($addWord['return'], $addWord['data']) && $addWord['return'] == true) {
										$isFounded = 0;
										foreach ($getWord['data'] as $key => $hasWord) {
											if (isset($hasWord['id'], $addWord['data']['id']) && $hasWord['id'] == $addWord['data']['id']) {
												$isFounded++;
											}
										}
										if ($isFounded == 0) {
											$getWord['data'][] = $addWord['data'];
										}
									}
								}
							}
						}
					}
				}
				$dataArr = $getWord['data'];
				$dataCount = count($getWord['data']);
				return array("return" => true, "count" => $dataCount, "data" => $dataArr);
			}else if (isset($getWord['return'], $getWord['reason']) && $getWord['return'] == false) {
				return array("return" => false, "reason" => $getWord['reason']);
			}else {
				return array("return" => false, "reason" => "");
			}
		}else if ($action == "search") {
			if (isset($object['rows']) && is_array($object['rows']) && count($object['rows']) > 0) $rows = $object['rows']; else $rows = null;
			if (isset($object['language']) && is_array($object['language'])) $language = $object['language']; else $language = null;
			if (isset($object['word']) && is_array($object['word'])) $word = $object['word']; else $word = null;
			if (isset($object['type']) && is_array($object['type'])) $type = $object['type']; else $type = null;
			if (isset($object['content']) && is_array($object['content'])) $content = $object['content']; else $content = null;
			if (isset($object['example']) && is_array($object['example'])) $example = $object['example']; else $example = null;
			if (isset($object['related']) && is_array($object['related'])) $related = $object['related']; else $related = null;
			if (isset($object['limit']) && is_string($object['limit'])) $limit = $object['limit']; else $limit = null;
			if ($rows == null) {
				return array("return" => false, "reason" => "");
			}
			$selectCondition = null;
			foreach ($rows as $rowThis) {
				$rowThis = $_tool->convertDatabaseString($rowThis);
				if ($rowThis == "*") {
					$selectCondition = "*";
					break;
				}
				if ($rowThis == null || !is_string($rowThis)) {
					continue;
				}
				if ($selectCondition == null) {
					$selectCondition = "`".$rowThis."`";
				}else {
					$selectCondition .= ", `".$rowThis."`";
				}
			}
			if ($selectCondition == null) {
				return array("return" => false, "reason" => "");
			}
			$requestCondition['language'] = $requestCondition['word'] = $requestCondition['type'] = $requestCondition['content'] = $requestCondition['example'] = $requestCondition['related'] = null;
			if ($language != null) {
				for ($il = 0; $il < count($language); $il++) {
					$thisLanguage = substr($_tool->convertDatabaseString($language[$il]), 0, 4);
					if ($thisLanguage == null || !preg_match($_parameter->get('regex_language_code'), $thisLanguage)) {
						continue;
					}
					if ($requestCondition['language'] == null) {
						$requestCondition['language'] = "`language` = '".$thisLanguage."'";
					}else {
						$requestCondition['language'] .= "OR `language` = '".$thisLanguage."'";
					}
				}
			}
			if ($word != null) {
				for ($iw = 0; $iw < count($word); $iw++) {
					$thisWord = $_tool->convertDatabaseString($word[$iw]);
					if ($thisWord == null || !preg_match($_parameter->get('regex_word'), $thisWord)) {
						continue;
					}
					if ($requestCondition['word'] == null) {
						$requestCondition['word'] = "`word` = '".$thisWord."'";
					}else {
						$requestCondition['word'] .= "OR `word` = '".$thisWord."'";
					}
				}
			}
			if ($type != null) {
				for ($it = 0; $it < count($type); $it++) {
					$thisType = $_tool->convertDatabaseString($type[$it]);
					if ($thisType == null || !preg_match($_parameter->get('regex_word'), $thisType)) {
						continue;
					}
					if ($requestCondition['type'] == null) {
						$requestCondition['type'] = "`type` = '".$thisType."'";
					}else {
						$requestCondition['type'] .= "OR `type` = '".$thisType."'";
					}
				}
			}
			if ($content != null) {
				for ($ic = 0; $ic < count($content); $ic++) {
					$thisCotent = $_tool->convertDatabaseString($content[$ic]);
					if ($thisCotent == null) {
						continue;
					}
					if ($requestCondition['content'] == null) {
						$requestCondition['content'] = "`content` LIKE '%".$thisCotent."%'";
					}else {
						$requestCondition['content'] .= "OR `content` LIKE '%".$thisCotent."%'";
					}
				}
			}
			if ($example != null) {
				for ($ie = 0; $ie < count($example); $ie++) {
					$thisExample = $_tool->convertDatabaseString($example[$ie]);
					if ($thisExample == null) {
						continue;
					}
					if ($requestCondition['example'] == null) {
						$requestCondition['example'] = "`example` LIKE '%".$thisExample."%'";
					}else {
						$requestCondition['example'] .= "OR `example` LIKE '%".$thisExample."%'";
					}
				}
			}
			if ($related != null) {
				for ($ir = 0; $ir < count($related); $ir++) {
					$thisRelated = $_tool->convertDatabaseString($related[$ir]);
					if ($thisRelated == null) {
						continue;
					}
					if ($requestCondition['related'] == null) {
						$requestCondition['related'] = "`related` LIKE '".$thisRelated."'";
					}else {
						$requestCondition['related'] .= "OR `related` LIKE '".$thisRelated."'";
					}
				}
			}
			$conditionNull = 0;
			$conditionString = null;
			foreach ($requestCondition as $conditionKey => $conditionValue) {
				if ($conditionValue == null) {
					$conditionNull++;
				}else {
					if ($conditionString == null) {
						$conditionString = "(".$conditionValue.")";
					}else {
						$conditionString .= " AND (".$conditionValue.")";
					}
				}
			}
			if ($conditionNull == count($requestCondition)) {
				return array("return" => false, "reason" => "");
			}
			$searchWordRequest = "SELECT ".$selectCondition." FROM `library_words` WHERE ".$conditionString." ".$limit.";";
			$searchWordQuery = mysqli_query($db, $searchWordRequest);
			if (!$searchWordQuery) {
				return array("return" => false, "reason" => "");
			}else {
				$resultServer = $resultOther = array();
				$resultCount = mysqli_num_rows($searchWordQuery);
				while ($resultFetch = mysqli_fetch_assoc($searchWordQuery)) {
					$resultServer[] = $resultFetch;
				}
				$resultArr = array_merge($resultServer, $resultOther);
				$resultCount = count($resultArr);
				return array("return" => true, "count" => $resultCount, "data" => $resultArr);
			}
		}else if ($action == "add") {
			if (isset($object['primary']) && is_bool($object['primary'])) $primary = $object['primary']; else $primary = true;
			if (isset($object['language']) && is_string($object['language'])) $language = substr($_tool->convertDatabaseString($object['language']), 0, 4); else $language = null;
			if (isset($object['word']) && is_string($object['word'])) $word = $_tool->convertDatabaseString($object['word']); else $word = null;
			if (isset($object['type']) && is_string($object['type'])) $type = $_tool->convertDatabaseString($object['type']); else $type = null;
			if (isset($object['content']) && is_string($object['content'])) $content = strip_tags($_tool->convertDatabaseString($object['content'])); else $content = null;
			if (isset($object['example']) && is_string($object['example'])) $example = $_tool->convertDatabaseString($object['example']); else $example = null;
			if (isset($object['related'])) $related = $object['related']; else $related = null;
			if (isset($object['attribution']) && is_string($object['attribution'])) $attribution = $_tool->convertDatabaseString($object['attribution']); else $attribution = null;
			if (isset($object['source']) && is_string($object['source'])) $source = $_tool->convertDatabaseString($object['source']); else $source = null;
			if (isset($object['host']) && is_string($object['host'])) $host = $_tool->convertDatabaseString($object['host']); else $host = null;
			if ($word == null || $type == null || $content == null) {
				return array("return" => false, "reason" => "");
			}
			if (is_array($related) && count($related) > 0) {
				$relatedText = null;
				foreach ($related as $relatedThis) {
					if ($relatedText == null) {
						$relatedText = " ".$_tool->convertDatabaseString($relatedThis);
					}else {
						$relatedText .= " ".$_tool->convertDatabaseString($relatedThis);
					}
				}
				$related = $relatedText;
			}else if (is_string($related)) {
				$related = $related;
			}else {
				$related = null;
			}
			if ($language == null) {
				$language = $_SESSION['client']['language']['code'];
			}
			$existsWordRequest = "SELECT `id`, `updated` FROM `library_words` WHERE `language` = '".$language."' AND `type` = '".$type."' AND `word` = '".$word."' AND (`content` = '".$content."' OR `attribution` = '".$attribution."' OR `source` = '".$source."' OR `host` = '".$host."') LIMIT 1;";
			$existsWordQuery = mysqli_query($db, $existsWordRequest);
			if (!$existsWordQuery) {
				return array("return" => false, "reason" => "");
			}else {
				if (mysqli_num_rows($existsWordQuery) == 0) {
					$addWordRequest = "INSERT INTO `library_words` (`id`, `language`, `time`, `updated`, `word`, `type`, `content`, `example`, `related`, `attribution`, `source`, `host`) VALUES (NULL, '".$language."', '".time()."', '".time()."', '".$word."', '".$type."', '".$content."', '".$example."', '".$related."', '".$attribution."', '".$source."', '".$host."');";
					$addWordQuery = mysqli_query($db, $addWordRequest);
					if (!$addWordQuery) {
						return array("return" => false, "reason" => "");
					}else {
						$wordId = mysqli_insert_id($db);
					}
				}else {
					$wordArr = mysqli_fetch_assoc($existsWordQuery);
					$wordId = $wordArr['id'];
					if ($wordArr['updated'] + 2592000 < time()) {
						$updateWordRequest = "UPDATE `library_words` SET `updated` = '".time()."', `content` = '".$content."', `example` = '".$example."', `related` = '".$related."', `attribution` = '".$attribution."', `source` = '".$source."', `host` = '".$host."' WHERE `id` = '".$wordId."';";
						$updateWordQuery = mysqli_query($db, $updateWordRequest);
						if (!$updateWordQuery) {
							return array("return" => false, "reason" => "");
						}
					}
				}
				if (isset($wordId) && is_numeric($wordId)) {
					if ($primary == true) {
						$getWordRequest = "SELECT `id` FROM `library_words` WHERE `id` = '".$wordId."' LIMIT 1;";
					}else {
						$getWordRequest = "SELECT * FROM `library_words` WHERE `id` = '".$wordId."' LIMIT 1;";
					}
					$getWordQuery = mysqli_query($db, $getWordRequest);
					if (!$getWordQuery) {
						return array("return" => false, "reason" => "");
					}else {
						$dataArr = mysqli_fetch_assoc($getWordQuery);
						return array("return" => true, "data" => $dataArr);
					}
				}else {
					return array("return" => false, "reason" => "");
				}
			}
		}else if ($action == "get") {
			if (isset($object['language']) && is_string($object['language'])) $language = substr($_tool->convertDatabaseString($object['language']), 0, 4); else $language = null;
			if (isset($object['word']) && is_string($object['word'])) $word = $_tool->convertDatabaseString($object['word']); else $word = null;
			if (isset($object['type']) && is_string($object['type'])) $type = $_tool->convertDatabaseString($object['type']); else $type = null;
			if (isset($object['limit']) && is_string($object['limit'])) $limit = $_tool->convertDatabaseString($object['limit']); else $limit = null;
			if (isset($object['translate']) && is_bool($object['translate'])) $translate = $object['translate']; else $translate = false;
			if ($word == null || $type == null)  {
				return array("return" => false, "reason" => "1");
			}
			if ($language == null) {
				return array("return" => false, "reason" => "2");
			}
			if ($type == "all") {
				$type = null;
			}else {
				$type = "AND `type` = '".$type."'";
			}
			$getWordRequest = "SELECT * FROM `library_words` WHERE `language` = '".$language."' AND `word` = '".$word."' ".$type." ".$limit.";";
			$getWordQuery = mysqli_query($db, $getWordRequest);
			if (!$getWordQuery) {
				return array("return" => false, "reason" => $getWordRequest);
			}else {
				if (mysqli_num_rows($getWordQuery) == 0 && $translate == true) {
					$getWordRequest = "SELECT * FROM `library_words` WHERE `language` = 'en' AND `word` = '".$word."' ".$type." ".$limit.";";
				}
				$wordArr = array();
				while ($wordFetch = mysqli_fetch_assoc($getWordQuery)) {
					$addAllow = true;
					if (isset($wordFetch['related']) && is_string($wordFetch['related']) && $wordFetch['related'] != "") {
						$wordFetch['related'] = explode(" ", $wordFetch['related']);
					}
					if (isset($wordFetch['content']) && is_string($wordFetch['content'])) {
						$wordFetch['content'] = $_tool->convertDisplayString($wordFetch['content']);
					}
					if ($addAllow == true && $translate == true && $wordFetch['language'] != $language) {
						$translateContent = $_language->translate($language, $wordFetch['related'], "en");
						if (isset($translateContent['return'], $translateContent['data']) && $translateContent['return'] == true) {
							if ($translateContent['data'] != $wordFetch['related']) {
								$wordFetch['related'] = $translateContent['data'];
							}else {
								$addAllow = false;
							}
						}else {
							$addAllow = false;
						}
					}
					if ($addAllow == true && $translate == true && $wordFetch['language'] != $language) {
						$translateContent = $_language->translate($language, $wordFetch['content'], "en");
						if (isset($translateContent['return'], $translateContent['data']) && $translateContent['return'] == true) {
							if ($translateContent['data'] != $wordFetch['content']) {
								$wordFetch['content'] = $translateContent['data'];
							}else {
								$addAllow = false;
							}
						}else {
							$addAllow = false;
						}
					}
					if ($addAllow == true) {
						$wordArr[] = $wordFetch;
					}
				}
				$wordCount = count($wordArr);
				return array("return" => true, "count" => $wordCount, "data" => $wordArr);
			}
		}else if ($action == "exists") {
			if (isset($object['language']) && is_string($object['language'])) $language = substr($_tool->convertDatabaseString($object['language']), 0, 4); else $language = null;
			if (isset($object['word']) && is_string($object['word'])) $word = $_tool->convertDatabaseString($object['word']); else $word = null;
			if (isset($object['type']) && is_string($object['type'])) $type = $_tool->convertDatabaseString($object['type']); else $type = null;
			if ($word == null)  {
				return array("return" => false, "reason" => "1");
			}
			if ($language == null || $type == null) {
				return array("return" => false, "reason" => "2");
			}
			if ($type == "all") {
				$type = null;
			}else {
				$type = "AND `type` = '".$type."'";
			}
			$getWordRequest = "SELECT * FROM `library_words` WHERE `language` = '".$language."' AND `word` = '".$word."' ".$type." LIMIT 1;";
			$getWordQuery = mysqli_query($db, $getWordRequest);
			if (!$getWordQuery) {
				return array("return" => false, "reason" => $getWordRequest);
			}else {
				if (mysqli_num_rows($getWordQuery) == 0) {
					return array("return" => true, "exists" => false);
				}else {
					return array("return" => true, "exists" => true);
				}
			}
		}else {
			return array("return" => false, "reason" => "");
		}
	}
}
?>