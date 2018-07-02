<?php
if (isset($boxLinksRequire) && is_array($boxLinksRequire)) {
	$boxLinksCode = array();
	if (isset($boxLinksRequire['mode'])) {
		$modeContentCode = null;
		if (isset($g_user['mode']['type']) && $g_user['mode']['type'] == "user") {
			$modeContentCode = "
			<div class='tab cover'> 
				<div class='wrap'></div>
				<div class='img' style='background-image: url(".$g_user['cover.small'].");'> 
					<img class='img' src='".$g_user['cover.small']."' alt> 
				</div>
			</div>
			<div class='tab avatar'>
				<a href='".$g_user['link']."'> <img class='img' src='".$g_user['avatar.small']."' alt=''> </a>
			</div>
			<div class='tab text'>
				<div class='name nowrap'> <a href='".$g_user['link']."'>".$g_user['fullname']."</a> </div>
				<div class='tag nowrap'> <a href='".$g_user['link']."'>".$g_user['username']."</a> </div>
			</div>
			";
		}
		$boxLinksCode["mode"] = "
		<div class='box mode boxGrid'>
			<div class='content'>".$modeContentCode."</div>
		</div>
		";
	}
	if (isset($boxLinksRequire['groups'])) {
		$groupsContentCode = null;
		if (1 + 1 == 2) {
			$groupsContentCode = "
			<ul class='list'> <li class='rows null'><span>".$_language->text('you_null_groups', 'strtolower')."</span></li> </ul>
			";
		}
		$boxLinksCode["groups"] = "
		<div class='box groups boxGrid'>
			<div class='title'> <a href='".$_tool->links('groups')."'>".$_language->text('groups', 'ucfirst')."</a> </div>
			<div class='content'>".$groupsContentCode."</div>
		</div>
		";
	}
	if (isset($boxLinksRequire['hashtag'])) {
		$hashtagContentCode = null;
		$hashtagStatusTopUsed = array();
		if (isset($g_user['mode'], $g_user['mode']['hashtag'], $g_user['mode']['hashtag']['topused']) && is_array($g_user['mode']['hashtag']['topused'])) {
			$hashtagStatusTopUsed = $g_user['mode']['hashtag']['topused'];
			if (!isset($hashtagStatusTopUsed['time']) || (isset($hashtagStatusTopUsed['time']) && $hashtagStatusTopUsed['time'] + $_parameter->get('boxLinks_hashtag_timeout') < time())) {
				$hashtagStatusTopUsed = array();
			}
		}
		if (!isset($hashtagStatusTopUsed) || !is_array($hashtagStatusTopUsed) || count($hashtagStatusTopUsed) == 0) {
			// if (isset($g_user['mode'], $g_user['mode']['type'], $g_user['mode']['id']) && in_array($g_user['mode']['type'], ["user", "group", "page"])) {
			if (1 + 1 == 2) {
				$hashtagStatusTopUsedListRequest = "SELECT DISTINCT `hashtag`, COUNT(`hashtag`) AS `count` FROM `status_hashtag` WHERE `time` + '".$_parameter->get('boxLinks_hashtag_timetop')."' > '".time()."' AND (`inside.type` = 'status' AND `inside.id` IN (SELECT `id` FROM `status` WHERE `author.type` = '".$g_user['mode']['type']."' AND `author.id` = '".$g_user['mode']['id']."')) OR (`inside.type` = 'comment' AND `inside.id` IN (SELECT `id` FROM `status_comment` WHERE `author.type` = '".$g_user['mode']['type']."' AND `author.id` = '".$g_user['mode']['id']."')) GROUP BY `hashtag` ORDER BY `count` DESC LIMIT 5;";
				$hashtagStatusTopUsedListQuery = mysqli_query($_db->port('beta'), $hashtagStatusTopUsedListRequest);
				if (!$hashtagStatusTopUsedListQuery) {
					//.
				}else {
					$hashtagStatusTopUsed['time'] = time();
					$hashtagStatusTopUsed['list'] = array();
					while ($hashtagStatusTopUsedThis = mysqli_fetch_assoc($hashtagStatusTopUsedListQuery)) {
						$hashtagStatusTopUsedCountQuery = mysqli_query($_db->port('beta'), "SELECT COUNT(`id`) AS `count` FROM `status_hashtag` WHERE `hashtag` = '".$_tool->convertDatabaseString($hashtagStatusTopUsedThis['hashtag'])."' AND (`inside.type` = 'status' AND `inside.id` IN (SELECT `id` FROM `status` WHERE `author.type` = '".$g_user['mode']['type']."' AND `author.id` = '".$g_user['mode']['id']."')) OR (`inside.type` = 'comment' AND `inside.id` IN (SELECT `id` FROM `status_comment` WHERE `author.type` = '".$g_user['mode']['type']."' AND `author.id` = '".$g_user['mode']['id']."')) LIMIT 1;");
						if (!$hashtagStatusTopUsedCountQuery) {
							$hashtagStatusTopUsedThis['count'] = 0;
						}else {
							$hashtagStatusTopUsedThis['count'] = mysqli_fetch_assoc($hashtagStatusTopUsedCountQuery)['count'];
						}
						$hashtagStatusTopUsed['list'][$hashtagStatusTopUsedThis['hashtag']] = $hashtagStatusTopUsedThis['count'];
					}	
					if (count($hashtagStatusTopUsed['list']) == 0) {
						$hashtagStatusTopUsedListRequest = "SELECT DISTINCT `hashtag`, COUNT(`hashtag`) AS `count` FROM `status_hashtag` WHERE (`inside.type` = 'status' AND `inside.id` IN (SELECT `id` FROM `status` WHERE `author.type` = '".$g_user['mode']['type']."' AND `author.id` = '".$g_user['mode']['id']."')) OR (`inside.type` = 'comment' AND `inside.id` IN (SELECT `id` FROM `status_comment` WHERE `author.type` = '".$g_user['mode']['type']."' AND `author.id` = '".$g_user['mode']['id']."')) GROUP BY `hashtag` ORDER BY `count` DESC LIMIT 5;";
						$hashtagStatusTopUsedListQuery = mysqli_query($_db->port('beta'), $hashtagStatusTopUsedListRequest);
						if (!$hashtagStatusTopUsedListQuery) {
							//.
						}else {
							while ($hashtagStatusTopUsedThis = mysqli_fetch_assoc($hashtagStatusTopUsedListQuery)) {
								$hashtagStatusTopUsed['list'][$hashtagStatusTopUsedThis['hashtag']] = $hashtagStatusTopUsedThis['count'];
							}
						}
					}
					$_SESSION["user"]['mode']['hashtag']['topused'] = $g_user['mode']['hashtag']['topused'] = $hashtagStatusTopUsed;
				}
			}
		}
		if (isset($hashtagStatusTopUsed, $hashtagStatusTopUsed['list']) && is_array($hashtagStatusTopUsed['list']) && count($hashtagStatusTopUsed['list']) > 0) {
			foreach ($hashtagStatusTopUsed['list'] as $valueHashtag => $countHashtag) {
				$hashtagContentCode .= "<li class='rows'> <div class='icon'><i></i></div> <div class='text nowrap'><a href='".$_tool->links('feed/hashtag/'.$valueHashtag)."' class='_tt-bk w' title='".$valueHashtag." - ".$countHashtag." ".$_language->text('times_mentions')."'><span>".$valueHashtag."</span></a></div> </li>";
			}
			$hashtagContentCode = "
			<ul class='list'> ".$hashtagContentCode." </ul>
			";
		}else {
			$hashtagContentCode = "
			<ul class='list'> <li class='rows null'><span>".$_language->text('you_null_hashtag', 'strtolower')."</span></li> </ul>
			";
		}
		$boxLinksCode["hashtag"] = "
		<div class='box hashtag boxGrid'>
			<div class='title'> <a href='".$_tool->links('feed/hashtag')."'>".$_language->text('hashtag', 'ucfirst')."</a> </div>
			<div class='content'>".$hashtagContentCode."</div>
		</div>
		";
	}
}
?>
<div id="gBoxLinks">
	<?php
	if (isset($boxLinksCode) && is_array($boxLinksCode)) {
		foreach ($boxLinksCode as $boxType => $boxCode) {
			print $boxCode;
		}
	}
	?>
	<link rel="stylesheet" href="<?php print $_tool->links("source/css/templates/box_links.css"); ?>" />
	<script src="<?php print $_tool->links("source/js/templates/box_links.js"); ?>" type="text/javascript"></script>
</div>