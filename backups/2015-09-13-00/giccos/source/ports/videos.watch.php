<?php
header($_parameter->get('contentType_html.utf8'));
$existsVideoThis = $_videos->exists(array("guy" => $g_user['mode'], "label" => "display", "value" => $videoDisplay));
if (isset($existsVideoThis, $existsVideoThis['return'], $existsVideoThis['exists']) && $existsVideoThis['return'] == true) {
	if ($existsVideoThis['exists'] == true) {
		$fetchVideoThis = $_videos->fetch(array("guy" => $g_user['mode'], "rows" => ["*"], "label" => "display", "value" => $videoDisplay));
		if (isset($fetchVideoThis, $fetchVideoThis['return'], $fetchVideoThis['data'], $fetchVideoThis['data'][0]) && $fetchVideoThis['return'] == true) {
			$videoInfo = $fetchVideoThis['data'][0];
			if (!isset($videoInfo['description']) || $videoInfo['description'] == null) $videoInfo['description'] = $_language->text('description_not_updated', 'strtolower');
			$getGuyVideo = $_media->guy(array("author" => $videoInfo['author'], "guy" => $g_user['mode']));
			if (isset($getGuyVideo, $getGuyVideo['return'], $getGuyVideo['guy']) && $getGuyVideo['return'] == true) {
				$videoInfo['guy'] = $getGuyVideo['guy'];
			}else {
				$getGuyVideo['guy'] = 4;
			}
			if (isset($videoInfo['author'], $videoInfo['author']['type']) && $videoInfo['author']['type'] == "user") {
				$getAuthorVideo = $_user->profile(array("action" => "get", "rows" => ["id", "username", "fullname", "avatar.medium", "cover.medium", "link", "verified"], "label" => "id", "value" => $videoInfo['author']['id'], "limit" => "LIMIT 1"));
				if (isset($getAuthorVideo['return'], $getAuthorVideo['data'][0]) && $getAuthorVideo['return'] == true) {
					$getAuthorVideo = $getAuthorVideo['data'][0];
					$videoInfo['author'] = array(
						"type" => "type",
						"id" => $getAuthorVideo['id'],
						"tag" => $getAuthorVideo['username'],
						"name" => $getAuthorVideo['fullname'],
						"avatar" => $getAuthorVideo['avatar.medium'],
						"cover" => $getAuthorVideo['cover.medium'],
						"link" => $getAuthorVideo['link'],
						"verified" => $getAuthorVideo['verified']
					);
				}else {
					//.
				}
			}
			//. print_r($videoInfo);
		}else if (isset($fetchVideoThis, $fetchVideoThis['return'], $fetchVideoThis['reason']) && $fetchVideoThis['return'] == false) {
			print "ee";
		}else {
			print "rr";
		}
	}else {
		print "aa";
	}
}else if (isset($existsVideoThis, $existsVideoThis['return'], $existsVideoThis['reason']) && $existsVideoThis['return'] == false) {
	print "xx";
}else {
	print "ss";
}
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="videos watch">
	<head>
		<title>.</title>
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/videos.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/videos.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/templates/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/templates/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gMain">
			<?php require_once ("templates/navbar.php"); ?>
			<div id="gBox">
				<div id="leftBox">
					<div id="playerTab" class="tab boxGrid">
						<div class="content">
							<video id="videoPlayer" class="gplayer-skin v-simple video"></video>
						</div>
					</div>
					<div id="infoTab" class="tab boxGrid">
						<div class="title box">
							<span><?php print $videoInfo['name']; ?></span>
						</div>
						<div class="cover box">
							<div class="thumbnail">
								<div class="wrap"></div>
								<img class="img" src="<?php print $videoInfo['author']['cover']; ?>" alt="<?php print $_language->text('cover_of', 'strtolower').' '.$videoInfo['author']['name'].' ('.$videoInfo['author']['tag'].')'; ?>">
							</div>
							<div class="avatar">
								<a href="<?php print $videoInfo['author']['link']; ?>"><img class="img" src="<?php print $videoInfo['author']['avatar']; ?>" alt="<?php print $_language->text('avatar_of', 'strtolower')." ".$videoInfo['author']['name']." (".$videoInfo['author']['tag'].")"; ?>"></a>
							</div>
							<div class="author">
								<div class="name"> <a href="<?php print $videoInfo['author']['link']; ?>"> <span><?php print $videoInfo['author']['name']; ?></span> </a> </div>
								<div class="tag"> <a href="<?php print $videoInfo['author']['link']; ?>"> <span><?php print $videoInfo['author']['tag']; ?></span> </a> </div>
							</div>
							<div class="info"> 
								<?php
								if (isset($videoInfo['author'], $videoInfo['author']['verified']) && in_array($videoInfo['author']['verified'], [true, "true", 1, "1"])) {
									print "<div class='verified _tt e' title='".$_language->text('verified', 'strtolower')."'> <i></i> </div>";
								}
								?>
								<div class="private view nowrap _tt s" private-value="<?php print $videoInfo['private']['view']; ?>" title="<?php print $_language->text('private_'.$videoInfo['private']['view'].'_tip', 'strtolower'); ?>"> <i class="label"></i> <i class="value"></i> </div> 
								<div class="private comment nowrap _tt s" private-value="<?php print $videoInfo['private']['comment']; ?>" title="<?php print $_language->text('private_'.$videoInfo['private']['comment'].'_tip', 'strtolower'); ?>"> <i class="label"></i> <i class="value"></i> </div> 
								<div class="private share nowrap _tt s" private-value="<?php print $videoInfo['private']['share']; ?>" title="<?php print $_language->text('private_'.$videoInfo['private']['share'].'_tip', 'strtolower'); ?>"> <i class="label"></i> <i class="value"></i> </div> 
								<div class="date nowrap _tt s" title="<?php print $_language->text('posted_at', 'strtolower')." ".$_tool->agoDatetime($videoInfo['time'], 'tip') ?>"> <i></i> <a href="<?php print $_tool->links('videos/time/'.$videoInfo['time']) ?>" target="_blank"><?php print $_tool->agoDatetime($videoInfo['time'], 'ago') ?></a> </div>
							</div>
						</div>
						<div class="information box">
							<div class="title">
								<span><?php print $_language->text('information', 'ucfirst'); ?></span>
							</div>
							<div class="content">
								<div class="tab left">
									<div class="rows name">
										<div class="value"> <span>Dieu anh lo lang</span> </div>
									</div>
									<div class="rows description">
										<div class="value"> <span><?php print $_tool->parseContent($videoInfo['description']); ?></span> </div>
									</div>
								</div>
								<div class="tab right">
									<div class="rows time">
										<div class="label"> <span><?php print $_language->text('upload_at', 'strtolower'); ?></span> </div>
										<div class="value"> <span><?php print $_tool->agoDatetime($videoInfo['time'], 'tip'); ?></span> </div>
									</div>
									<div class="rows duration">
										<div class="label"> <span><?php print $_language->text('duration', 'strtolower'); ?></span> </div>
										<div class="value"> <span><?php print $_tool->convertTimetoDuration($videoInfo['duration'], 'tip'); ?></span> </div>
									</div>
									<?php 
									if (isset($videoInfo['tags']) && is_string($videoInfo['tags']) && $videoInfo['tags'] != null) {
										$videoInfoTagsArr = explode(" ", $videoInfo['tags']);
										$tagsCode = null;
										$tagsShowedArr = array();
										foreach ($videoInfoTagsArr as $labelTag => $valueTag) {
											$valueTag = $_tool->convertDisplayString($valueTag);
											if (in_array($valueTag, $tagsShowedArr)) {
												continue;
											}
											$tagsCode .= " <a href='".$_tool->links('videos/tags/'.$valueTag)."' target='_blank'>".$valueTag."</a>";
											$tagsShowedArr[] = $valueTag;
										}
										print "
										<div class='rows duration'>
											<div class='label'> <span>".$_language->text('tags', 'strtolower')."</span> </div>
											<div class='value'> <span>".$tagsCode."</span> </div>
										</div>
										";
									}
									?>
								</div>
							</div>
						</div>
						<div class="stats box">
							<div class="title">
								<span><?php print $_language->text('stats', 'ucfirst'); ?></span>
							</div>
							<div class="content"></div>
						</div>
					</div>
				</div>
				<div id="rightBox">
					<div id="" class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $_language->text('sponsored', 'ucfirst'); ?></span>
						</div>
						<div class="content"><br></div>
					</div>
					<div id="" class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $_language->text('comments', 'ucfirst'); ?></span>
						</div>
						<div class="content">
						<?php
						if (isset($videoInfo['private']['comment']) && $videoInfo['private']['comment'] == 0) {
							print "
							<div class='null nowrap'>
								<span>{$_language->text('comment_disabled', 'ucfirst')}</span>
							</div>
							";
						}else {
							if ($videoInfo['private']['comment'] >= $videoInfo['guy']) {
								print "
								<br>
								";
							}else {
								print "
								<div class='null nowrap'>
									<span>{$_language->text('comment_limited', 'ucfirst')}</span>
								</div>
								";
							}
						}
						?>
						</div>
					</div>
					<div id="" class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $_language->text('you_may_want_watch', 'ucfirst'); ?></span>
						</div>
						<div class="content"><br></div>
					</div>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
		</div>
		<div id="gInclude"></div>
	</body>
	<script type="text/javascript">
	$(document).ready(function(){
		var resizeCallbackFunc = function () {
			var button = this;
			var player = button['player_'];
			var playerElement = $('#' + player['id_']);
			var isActivated = button.hasClass('gplayer-control-active');
			if (isActivated == true) {
				$("#gBox").addClass("playerFullWeight");
			}else {
				$("#gBox").removeClass("playerFullWeight");
			}
		};
		var videoPlayer_options = {
			'height': '345px',
			'width': '100%',
			'controls': true,
			'autoplay': false,
			'preload': 'auto',
			'controlBar': {
    			// 'muteToggle': false
  			},
			'plugins': {
	    		'replay': {
	      			'active': true,
	      			'mime': '<?php print $videoInfo['mime_type']; ?>',
					'display': '<?php print $videoInfo['display']; ?>',
					'distance': 3,
					'expires': 900,
					'autoplay': true
				},
				'information': {
					'active': false
				},
				'loop': {
					'active': true
				},
				'progresstips': {
					'active': true
				},
				'reisze': {
					'active': true,
					'type': 1,
					'callback': resizeCallbackFunc
				},
				'pointtag': '<?php print $videoInfo['display']; ?>'
			}
		};

		var thumbnailLink = "<?php print $videoInfo['source']['thumbnail']; ?>";
		if (isset(thumbnailLink) && thumbnailLink != "") {
			videoPlayer_options['poster'] = thumbnailLink;
		}
		<?php
		if (isset($videoInfo['source']['hd']) && is_string($videoInfo['source']['hd']) && $videoInfo['source']['hd'] != null) {
			$videoPlayerSrc = "{'text': 'HD', 'type': '".$videoInfo['mime_type']."', 'source': '".$videoInfo['source']['hd']."'}";
		}
		if (isset($videoInfo['source']['vga']) && is_string($videoInfo['source']['vga']) && $videoInfo['source']['vga'] != null) {
			if (isset($videoPlayerSrc)) {
				$videoPlayerSrc .= ",";
			}
			$videoPlayerSrc .= "{'text': 'VGA', 'type': '".$videoInfo['mime_type']."', 'source': '".$videoInfo['source']['vga']."'}";
		}
		if (isset($videoInfo['source']['qvga']) && is_string($videoInfo['source']['qvga']) && $videoInfo['source']['qvga'] != null) {
			if (isset($videoPlayerSrc)) {
				$videoPlayerSrc .= ",";
			}
			$videoPlayerSrc .= "{'text': 'QVGA', 'type': '".$videoInfo['mime_type']."', 'source': '".$videoInfo['source']['qvga']."'}";
		}
		print "videoPlayer_options['src'] = [".$videoPlayerSrc.'];';
		?>
		var videoPlayer = gplayer("videoPlayer", videoPlayer_options);
	});
	</script>
</html>