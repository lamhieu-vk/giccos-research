<?php
header($_parameter->get('contentType_html.utf8'));
$existsVideoThis = $_videos->exists(array("guy" => $g_user['mode'], "label" => "display", "value" => $videoDisplay));
if (isset($existsVideoThis, $existsVideoThis['return'], $existsVideoThis['exists']) && $existsVideoThis['return'] == true) {
	if ($existsVideoThis['exists'] == true) {
		$fetchVideoThis = $_videos->fetch(array("guy" => $g_user['mode'], "rows" => ["*"], "label" => "display", "value" => $videoDisplay));
		if (isset($fetchVideoThis, $fetchVideoThis['return'], $fetchVideoThis['data'], $fetchVideoThis['data'][0]) && $fetchVideoThis['return'] == true) {
			$videoInfoArr = $fetchVideoThis['data'][0];
			if (!isset($videoInfoArr['description']) || $videoInfoArr['description'] == null) $videoInfoArr['description'] = $_language->text('description_not_updated', 'strtolower');
			$getGuyVideo = $_videos->guy(array("author" => $videoInfoArr['author'], "guy" => $g_user['mode']));
			if (isset($getGuyVideo, $getGuyVideo['return'], $getGuyVideo['guy']) && $getGuyVideo['return'] == true) {
				$videoInfoArr['guy'] = $getGuyVideo['guy'];
			}else {
				$videoInfoArr['guy'] = 5;
			}
			//. get author.
			if (isset($videoInfoArr['author'], $videoInfoArr['author']['type']) && $videoInfoArr['author']['type'] == "user") {
				$getAuthorVideo = $_user->profile(array("action" => "get", "rows" => ["id", "username", "fullname", "avatar.medium", "cover.medium", "link", "verified"], "label" => "id", "value" => $videoInfoArr['author']['id'], "limit" => "LIMIT 1"));
				if (isset($getAuthorVideo['return'], $getAuthorVideo['data'][0]) && $getAuthorVideo['return'] == true) {
					$getAuthorVideo = $getAuthorVideo['data'][0];
					$videoInfoArr['author'] = array(
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
			//. get stats
			$getStatsViews = $_videos->views(array("guy" => $g_user['mode'], "action" => "stats", "id" => $videoInfoArr['id'], "time" => ["last_week", "this_week"]));
			if (isset($getStatsViews, $getStatsViews['return'], $getStatsViews['data']) && $getStatsViews['return'] == true) {
				$videoInfoArr['stats']['views'] = array_merge($getStatsViews['data']);
			}else if (isset($getStatsViews, $getStatsViews['return'], $getStatsViews['reason']) && $getStatsViews['return'] == false) {
				print_r($getStatsViews);
				die;
			}else {
				print "sdsxas";
				die;
			}
			//. get mention
			$getStatsMention = $_videos->mention(array("guy" => $g_user['mode'], "action" => "stats", "id" => $videoInfoArr['id'], "time" => ["last_week", "this_week"]));
			if (isset($getStatsMention, $getStatsMention['return'], $getStatsMention['data']) && $getStatsMention['return'] == true) {
				$videoInfoArr['stats']['mention'] = array_merge($getStatsMention['data']);
			}else if (isset($getStatsMention, $getStatsMention['return'], $getStatsMention['reason']) && $getStatsMention['return'] == false) {
				print_r($getStatsMention);
				die;
			}else {
				print "sdsxas";
				die;
			}
			//. get rate
			$getRate = $_videos->rate(array("guy" => $g_user['mode'], "action" => "stats", "id" => $videoInfoArr['id']));
			if (isset($getRate, $getRate['return'], $getRate['data']) && $getRate['return'] == true) {
				$videoInfoArr['rate'] = array_merge($getRate['data']);
			}else if (isset($getRate, $getRate['return'], $getRate['reason']) && $getRate['return'] == false) {
				print_r($getRate);
				die;
			}else {
				print "gghef";
				die;
			}
			//. print_r($videoInfoArr);
		}else if (isset($fetchVideoThis, $fetchVideoThis['return'], $fetchVideoThis['reason']) && $fetchVideoThis['return'] == false) {
			print "ee";
			print_r($fetchVideoThis);
			die;
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
	</head>
	<body>
		<div id="gPage">
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
								<span><?php print $videoInfoArr['name']; ?></span>
							</div>
							<div class="cover box">
								<div class="thumbnail">
									<div class="wrap"></div>
									<img class="img" src="<?php print $videoInfoArr['author']['cover']; ?>" alt="<?php print $_language->text('cover_of', 'strtolower').' '.$videoInfoArr['author']['name'].' ('.$videoInfoArr['author']['tag'].')'; ?>">
								</div>
								<div class="avatar">
									<a href="<?php print $videoInfoArr['author']['link']; ?>"><img class="img" src="<?php print $videoInfoArr['author']['avatar']; ?>" alt="<?php print $_language->text('avatar_of', 'strtolower')." ".$videoInfoArr['author']['name']." (".$videoInfoArr['author']['tag'].")"; ?>"></a>
								</div>
								<div class="author">
									<div class="name"> <a href="<?php print $videoInfoArr['author']['link']; ?>"> <span><?php print $videoInfoArr['author']['name']; ?></span> </a> </div>
									<div class="tag"> <a href="<?php print $videoInfoArr['author']['link']; ?>"> <span><?php print $videoInfoArr['author']['tag']; ?></span> </a> </div>
								</div>
								<div class="info"> 
									<?php
									if (isset($videoInfoArr['author'], $videoInfoArr['author']['verified']) && in_array($videoInfoArr['author']['verified'], [true, "true", 1, "1"])) {
										print "<div class='verified _tt e' title='".$_language->text('verified', 'strtolower')."'> <i></i> </div>";
									}
									?>
									<div class="private view nowrap _tt s" private-value="<?php print $videoInfoArr['private']['view']; ?>" title="<?php print $_language->text('private_'.$videoInfoArr['private']['view'].'_tip', 'strtolower'); ?>"> <i class="label"></i> <i class="value"></i> </div> 
									<div class="private comment nowrap _tt s" private-value="<?php print $videoInfoArr['private']['comment']; ?>" title="<?php print $_language->text('private_'.$videoInfoArr['private']['comment'].'_tip', 'strtolower'); ?>"> <i class="label"></i> <i class="value"></i> </div> 
									<div class="private share nowrap _tt s" private-value="<?php print $videoInfoArr['private']['share']; ?>" title="<?php print $_language->text('private_'.$videoInfoArr['private']['share'].'_tip', 'strtolower'); ?>"> <i class="label"></i> <i class="value"></i> </div> 
									<div class="date nowrap _tt s" title="<?php print $_language->text('posted_at', 'strtolower')." ".$_tool->agoDatetime($videoInfoArr['time'], 'tip') ?>"> <i></i> <a href="<?php print $_tool->links('videos/time/'.$videoInfoArr['time']) ?>" target="_blank"><?php print $_tool->agoDatetime($videoInfoArr['time'], 'ago') ?></a> </div>
								</div>
							</div>
							<div class="information box">
								<div class="title">
									<span><?php print $_language->text('information', 'ucfirst'); ?></span>
								</div>
								<div class="content">
									<div class="tab left">
										<div class="rows name">
											<div class="value"> <span><?php print $_tool->convertDisplayString($videoInfoArr['title']); ?></span> </div>
										</div>
										<div class="rows description">
											<div class="value"> <span><?php print $_tool->convertDisplayString(""); ?></span> </div>
										</div>
									</div>
									<div class="tab right">
										<div class="rows time">
											<div class="label"> <span><?php print $_language->text('upload_at', 'strtolower'); ?></span> </div>
											<div class="value"> <span><?php print $_tool->agoDatetime($videoInfoArr['time'], 'tip'); ?></span> </div>
										</div>
										<div class="rows duration">
											<div class="label"> <span><?php print $_language->text('duration', 'strtolower'); ?></span> </div>
											<div class="value"> <span><?php print $_tool->convertTimetoDuration($videoInfoArr['duration'], 'tip'); ?></span> </div>
										</div>
										<?php 
										if (isset($videoInfoArr['tags']) && is_string($videoInfoArr['tags']) && $videoInfoArr['tags'] != null) {
											$videoInfoArrTagsArr = explode(" ", $videoInfoArr['tags']);
											$tagsCode = null;
											$tagsShowedArr = array();
											foreach ($videoInfoArrTagsArr as $labelTag => $valueTag) {
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
							<div class="rate box">
								<div class="title">
									<span><?php print $_language->text('rate', 'ucfirst'); ?></span>
								</div>
								<div class="content">
									<div class="rows total">
										<div class="label"><span><?php print $_language->text('total', 'ucfirst'); ?></span></div>
										<div class="value"><span><?php if (isset($videoInfoArr['rate'], $videoInfoArr['rate']['total'])) { print $videoInfoArr['rate']['total']; }else { print $_language->text('undefined', 'strtolower'); } ?> <?php print $_language->text('times_recorded', 'strtolower'); ?></span></div>
									</div>
									<div class="rows ratio">
										<div class="label"><span><?php print $_language->text('ratio', 'ucfirst'); ?></span></div>
										<div class="value"><div class="rateBox" rate-value="<?php if (isset($videoInfoArr['rate'], $videoInfoArr['rate']['ratio'])) { print $videoInfoArr['rate']['ratio']; }else { print "0"; } ?>" rate-action="false"></div></div>
									</div>
									<div class="rows rating">
										<div class="label"><span><?php print $_language->text('rating', 'ucfirst'); ?></span></div>
										<div class="value">
											<div class="rateBox" rate-value="<?php if (isset($videoInfoArr['rate']['rating'])) { print $videoInfoArr['rate']['rating']; }else { print "0"; } ?>" rate-action="true"></div>
											<script type="text/javascript">
											</script>
										</div>
									</div>
								</div>
							</div>
							<div class="stats box">
								<div class="title">
									<span><?php print $_language->text('stats', 'ucfirst'); ?></span>
								</div>
								<div class="content">
									<div class="rows table">
										<div class="value views"> 
											<span><?php print $_language->text('views', 'strtolower'); ?></span>
											<?php
											$countWeekdays = 1;
											$wdt = date("N", time());
											while ($countWeekdays <= 7) {
												if ($wdt == 0) {
													$wdt = 7;
												}
												$statsViews['this_week'][strtolower($_tool->convertWeekday(abs($wdt), true))] = 0;
												$statsViews['last_week'][strtolower($_tool->convertWeekday(abs($wdt), true))] = 0;
												$countWeekdays++;
												$wdt--;
											}
											$statsViews['this_week'] = array_reverse($statsViews['this_week']);
											$statsViews['last_week'] = array_reverse($statsViews['last_week']);
											foreach ($videoInfoArr['stats']['views'] as $statsTypeTime => $statsThisTime) {
												if ($statsTypeTime == "this_week") {
													foreach ($statsThisTime as $statusLi => $thisViews) {
														$weekdaysThis = strtolower($_tool->convertWeekday(date("N", $thisViews['time']), true));
														if (!isset($statsViews['this_week'][$weekdaysThis]) || $statsViews['this_week'][$weekdaysThis] == null) {
															$statsViews['this_week'][$weekdaysThis] = 0;
														}
														$statsViews['this_week'][$weekdaysThis]++;
													}
													$statsViews['this_week'][$_language->text('today', 'strtolower')] = $statsViews['this_week'][strtolower($_tool->convertWeekday(date("N", time()), true))];
													unset($statsViews['this_week'][strtolower($_tool->convertWeekday(date("N", time()), true))]);
												}else if ($statsTypeTime == "last_week") {
													foreach ($statsThisTime as $statusLi => $thisViews) {
														$weekdaysThis = strtolower($_tool->convertWeekday(date("N", $thisViews['time']), true));
														if (!isset($statsViews['last_week'][$weekdaysThis]) || $statsViews['last_week'][$weekdaysThis] == null) {
															$statsViews['last_week'][$weekdaysThis] = 0;
														}
														$statsViews['last_week'][$weekdaysThis]++;
													}
												}
											}
											?>
											<canvas class="statsBox"></canvas> <br> 
											<script type="text/javascript">
											var datasetOptions = {
												labels: [<?php $isPrinted = 0; foreach ($statsViews['this_week'] as $weekdaysLabel => $weekdaysValue) { if ($isPrinted == 0) { print '"'.$weekdaysLabel.'"'; } else { print ', "'.$weekdaysLabel.'"'; } $isPrinted++; } ?>],
											    datasets: [
											        {
											            label: "<?php print $_language->text('stats_lastweek_data', 'strtolower'); ?>",
											            fillColor: "rgba(153, 153, 153, 0.5)",
											            strokeColor: "rgba(153, 153, 153, 1)",
											            pointColor: "rgba(153, 153, 153, 1)",
											            pointStrokeColor: "#fff",
											            pointHighlightFill: "#fff",
											            pointHighlightStroke: "rgba(153, 153, 153, 1)",
											            data: [<?php $isPrinted = 0; foreach ($statsViews['last_week'] as $viewsCount) { if ($isPrinted == 0) { print $viewsCount; } else { print ", ".$viewsCount; } $isPrinted++; } ?>]
											        },
											        {
											            label: "<?php print $_language->text('stats_thisweek_data', 'strtolower'); ?>",
											            fillColor: "rgba(7, 197, 190, 0.5)",
											            strokeColor: "rgba(7, 197, 190, 1)",
											            pointColor: "rgba(7, 197, 190, 1)",
											            pointStrokeColor: "#fff",
											            pointHighlightFill: "#fff",
											            pointHighlightStroke: "rgba(7, 197, 190, 1)",
											             data: [<?php $isPrinted = 0; foreach ($statsViews['this_week'] as $viewsCount) { if ($isPrinted == 0) { print $viewsCount; } else { print ", ".$viewsCount; } $isPrinted++; } ?>]
											        }
											    ]
											};
											_g['session'].add("videos_info_stats_views_dataset", datasetOptions);
											</script>
										</div>
										<div class="value mention"> 
											<span><?php print $_language->text('mention', 'strtolower'); ?></span>
											<?php
											$countWeekdays = 1;
											$wdt = date("N", time());
											while ($countWeekdays <= 7) {
												if ($wdt == 0) {
													$wdt = 7;
												}
												$statsMention['this_week'][strtolower($_tool->convertWeekday(abs($wdt), true))] = 0;
												$statsMention['last_week'][strtolower($_tool->convertWeekday(abs($wdt), true))] = 0;
												$countWeekdays++;
												$wdt--;
											}
											$statsMention['this_week'] = array_reverse($statsMention['this_week']);
											$statsMention['last_week'] = array_reverse($statsMention['last_week']);
											foreach ($videoInfoArr['stats']['mention'] as $statsTypeTime => $statsThisTime) {
												if ($statsTypeTime == "this_week") {
													foreach ($statsThisTime as $statusLi => $thisMention) {
														$weekdaysThis = strtolower($_tool->convertWeekday(date("N", $thisMention['time']), true));
														if (!isset($statsMention['this_week'][$weekdaysThis]) || $statsMention['this_week'][$weekdaysThis] == null) {
															$statsMention['this_week'][$weekdaysThis] = 0;
														}
														$statsMention['this_week'][$weekdaysThis]++;
													}
													$statsMention['this_week'][$_language->text('today', 'strtolower')] = $statsMention['this_week'][strtolower($_tool->convertWeekday(date("N", time()), true))];
													unset($statsMention['this_week'][strtolower($_tool->convertWeekday(date("N", time()), true))]);
												}else if ($statsTypeTime == "last_week") {
													foreach ($statsThisTime as $statusLi => $thisMention) {
														$weekdaysThis = strtolower($_tool->convertWeekday(date("N", $thisMention['time']), true));
														if (!isset($statsMention['last_week'][$weekdaysThis]) || $statsMention['last_week'][$weekdaysThis] == null) {
															$statsMention['last_week'][$weekdaysThis] = 0;
														}
														$statsMention['last_week'][$weekdaysThis]++;
													}
												}
											}
											?>
											<canvas class="statsBox"></canvas> <br>
											<script type="text/javascript">
											var datasetOptions = {
												labels: [<?php $isPrinted = 0; foreach ($statsMention['this_week'] as $weekdaysLabel => $weekdaysValue) { if ($isPrinted == 0) { print '"'.$weekdaysLabel.'"'; } else { print ', "'.$weekdaysLabel.'"'; } $isPrinted++; } ?>],
											    datasets: [
											        {
											            label: "<?php print $_language->text('stats_lastweek_data', 'strtolower'); ?>",
											            fillColor: "rgba(153, 153, 153, 0.5)",
											            strokeColor: "rgba(153, 153, 153, 1)",
											            pointColor: "rgba(153, 153, 153, 1)",
											            pointStrokeColor: "#fff",
											            pointHighlightFill: "#fff",
											            pointHighlightStroke: "rgba(153, 153, 153, 1)",
											            data: [<?php $isPrinted = 0; foreach ($statsMention['last_week'] as $mentionCount) { if ($isPrinted == 0) { print $mentionCount; } else { print ", ".$mentionCount; } $isPrinted++; } ?>]
											        },
											        {
											            label: "<?php print $_language->text('stats_thisweek_data', 'strtolower'); ?>",
											            fillColor: "rgba(7, 197, 190, 0.5)",
											            strokeColor: "rgba(7, 197, 190, 1)",
											            pointColor: "rgba(7, 197, 190, 1)",
											            pointStrokeColor: "#fff",
											            pointHighlightFill: "#fff",
											            pointHighlightStroke: "rgba(7, 197, 190, 1)",
											             data: [<?php $isPrinted = 0; foreach ($statsMention['this_week'] as $mentionCount) { if ($isPrinted == 0) { print $mentionCount; } else { print ", ".$mentionCount; } $isPrinted++; } ?>]
											        }
											    ]
											};
											_g['session'].add("videos_info_stats_mention_dataset", datasetOptions);
											</script>
										</div>
										<div class="value">
											<div class="statsTip"> 
												<div class="lastweek"> <div></div> <span><?php print $_language->text('last_week', 'strtolower'); ?></span> </div> 
												<div class="thisweek"> <div></div> <span><?php print $_language->text('this_week', 'strtolower'); ?></span> </div> 
											</div> 
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="rightBox">
						<div id="sponsoredTab" class="tab boxGrid">
							<div class="title nowrap">
								<span><?php print $_language->text('sponsored', 'ucfirst'); ?></span>
							</div>
							<div class="content"><br></div>
						</div>
						<div id="commentTab" class="tab boxGrid">
							<div class="title nowrap">
								<span><?php print $_language->text('comments', 'ucfirst'); ?></span>
							</div>
							<div class="content">
							<?php
							if (isset($videoInfoArr['private']['comment']) && $videoInfoArr['private']['comment'] == 0) {
								print "
								<div class='box null nowrap'>
									<span>{$_language->text('comment_disabled', 'strtolower')}</span>
								</div>
								";
							}else {
								if ($videoInfoArr['private']['comment'] >= $videoInfoArr['guy']) {
									print "
									<div class='typing'>
										<textarea class='ip_s1 ip_as' type='text' placeholder='what are you thinking ?' input></textarea>
									</div>
									<div class='box list'>
									</div>
									";
								}else {
									print "
									<div class='box null nowrap'>
										<span>{$_language->text('comment_limited', 'strtolower')}</span>
									</div>
									";
								}
							}
							?>
							</div>
						</div>
						<div id="suggestTab" class="tab boxGrid">
							<div class="title nowrap">
								<span><?php print $_language->text('you_may_want_watch', 'ucfirst'); ?></span>
							</div>
							<div class="content"><br></div>
						</div>
					</div>
				</div>
				<div id="gInclude">
					<link href="<?php print $_tool->links("source/css/videos.css"); ?>" rel="stylesheet" />
					<script src="<?php print $_tool->links("source/js/videos.js"); ?>" type="text/javascript"></script>
					<script src="<?php print $_tool->links("source/js/videos.watch.js"); ?>" type="text/javascript"></script>
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
					      			'mime': '<?php print $videoInfoArr['mime_type']; ?>',
									'display': '<?php print $videoInfoArr['display']; ?>',
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
								/*
								'previewtips': {
									'active': <?php print isset($videoInfoArr['preview'], $videoInfoArr['preview']['exists']) && $videoInfoArr['preview']['exists'] === true ? "true" : "false"; ?>,
									'interval': <?php print isset($videoInfoArr['preview'], $videoInfoArr['preview']['interval']) ? intval($videoInfoArr['preview']['interval']) : 0; ?>,
									'source': <?php print isset($videoInfoArr['source'], $videoInfoArr['source']['preview']) ? "'".$videoInfoArr['source']['preview']."'" : "null"; ?>
								},
								*/
								'pointtag': '<?php print $videoInfoArr['display']; ?>'
							}
						};
						var thumbnailLink = "<?php print $videoInfoArr['source']['thumbnail']; ?>";
						if (isset(thumbnailLink) && thumbnailLink != "") {
							videoPlayer_options['poster'] = thumbnailLink;
						}
						<?php
						if (isset($videoInfoArr['source']['hd']) && is_string($videoInfoArr['source']['hd']) && $videoInfoArr['source']['hd'] != null) {
							$videoPlayerSrc = "{'text': 'HD', 'type': '".$videoInfoArr['mime_type']."', 'source': '".$videoInfoArr['source']['hd']."'}";
						}
						if (isset($videoInfoArr['source']['vga']) && is_string($videoInfoArr['source']['vga']) && $videoInfoArr['source']['vga'] != null) {
							if (isset($videoPlayerSrc)) {
								$videoPlayerSrc .= ",";
							}
							$videoPlayerSrc .= "{'text': 'VGA', 'type': '".$videoInfoArr['mime_type']."', 'source': '".$videoInfoArr['source']['vga']."'}";
						}
						if (isset($videoInfoArr['source']['qvga']) && is_string($videoInfoArr['source']['qvga']) && $videoInfoArr['source']['qvga'] != null) {
							if (isset($videoPlayerSrc)) {
								$videoPlayerSrc .= ",";
							}
							$videoPlayerSrc .= "{'text': 'QVGA', 'type': '".$videoInfoArr['mime_type']."', 'source': '".$videoInfoArr['source']['qvga']."'}";
						}
						print "videoPlayer_options['src'] = [".$videoPlayerSrc.'];';
						?>
						var loopCallbackPlayer = function () {
							c = typeof c === "numer" ? c : 0;
							setTimeout(function () {
								if (typeof gplayer === "function") {
									gplayer("videoPlayer", videoPlayer_options)
								}else {
									c++;
									if (c >= 10) return false;
									loopCallbackPlayer(c);
								}
							}, 250);
						};
						window.document.onload = loopCallbackPlayer();
					});
					</script>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
			<div id="gSource"></div>
		</div>
	</body>
</html>