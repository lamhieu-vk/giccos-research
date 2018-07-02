<?php
header($_parameter->get('contentType_html.utf8'));
//. print $_tool->hash('encode', 'https://www.youtube.com/watch?v=pYrDERCmvDk', $_parameter->get('hash_sites_link'));
if (isset($siteInput) && is_string($siteInput) && $_tool->isBase64($siteInput)) {
	$siteInput = urldecode($_tool->hash('decode', $siteInput, $_parameter->get('hash_sites_direct')));
	if (isset($siteInput) && is_string($siteInput) && preg_match($_parameter->get('regex_sites_url'), $siteInput)) {
		$regexUrl = $_parameter->get('regex_sites_url');
		if (!preg_match($regexUrl, $siteInput, $matchUrl)) {
			print "asdasdsa";
			die;
		}
		$siteMatch['scheme'] = isset($matchUrl[2]) && is_string($matchUrl[2]) ? $matchUrl[2] : null;
		$siteMatch['sub'] = isset($matchUrl[5]) && is_string($matchUrl[5]) ? $matchUrl[5] : null;
		$siteMatch['host'] = isset($matchUrl[7]) && is_string($matchUrl[7]) ? $matchUrl[7] : null;
		$siteMatch['path'] = isset($matchUrl[10]) && is_string($matchUrl[10]) ? $matchUrl[10] : null;
		if ($siteMatch['scheme'] == null && $siteMatch['sub'] == null && $siteMatch['host'] == null && $siteMatch['path'] == null) {
			print "asdaxxxsdsa";
			die;
		}
		$siteHash = hash('md5', $siteMatch['scheme'].'::'.$siteMatch['sub'].'::'.$siteMatch['host'].'::'.$siteMatch['path']);
		$existsSite = $_sites->info(array("guy" => $g_user['mode'], "action" => "exists", "label" => "hash", "value" => $siteHash));
		if (isset($existsSite, $existsSite['return'], $existsSite['exists']) && $existsSite['return'] == true) {
			if ($existsSite['exists'] == true) {

			}else if ($existsSite['exists'] == false) {
				$getInfoSites = $_sites->extract(array("guy" => $g_user['mode'], "url" => $siteInput));
				if (isset($getInfoSites['return'], $getInfoSites['data']) && $getInfoSites['return'] == true) {
					//. scanlogs
					$isFoundedScanlog = 0;
					if (isset($_SESSION["cache"]['sites']['scan']['check'])) {
						$cacheSitesScanCheck = $_SESSION["cache"]['sites']['scan']['check'];
						if (is_array($cacheSitesScanCheck) && count($cacheSitesScanCheck) > 0) {
							foreach ($cacheSitesScanCheck as $thisUrl => $thisValue) {
								if ($thisUrl == $siteInput) {
									if (isset($thisValue) && $thisValue == true) {
										$isFoundedScanlog++;
									}
								}
							}
						}
					}
					if ($isFoundedScanlog == 0) {
						$existsScanlog = $_sites->scan(array("guy" => $g_user['mode'], "action" => "exists", "label" => "hash", "value" => hash('crc32', $siteHash)));
						if (isset($existsScanlog, $existsScanlog['return'], $existsScanlog['exists']) && $existsScanlog['return'] == true && $existsScanlog['exists'] == false) {
							$extractScanlog = $_sites->scan(array("guy" => $g_user['mode'], "action" => "extract", "url" => $siteInput));
							if (isset($extractScanlog, $extractScanlog['return'], $extractScanlog['data']) && $extractScanlog['return'] == true) {
								$extractScanlog['data']['hash'] = hash('crc32', $siteHash);
								$addScanlog = $_sites->scan(array("guy" => $g_user['mode'], "action" => "add", "info" => $extractScanlog['data']));
								if (isset($addScanlog, $addScanlog['return'], $addScanlog['data'], $addScanlog['data']['display']) && $addScanlog['return'] == true) {
									mysqli_query($_db->port('beta'), "UPDATE `sites_info` SET `scan` = '".$addScanlog['data']['display']."' WHERE `hash` = '".$siteHash."' ;");
									$_SESSION["cache"]['sites']['scan']['check'][$siteInput] = true;
								}
							}
						}
					}
				}else if (isset($getInfoSites['return'], $getInfoSites['reason']) && $getInfoSites['return'] == false) {
					print_r($getInfoSites);
					die;
				}else {
					print "as321dsa";
					die;
				}
			}else {
				print "sdftjh";
				die;
			}
		}else {
			print "dfhrthg";
			die;
		}
	}else {
		print "gtrh";
		die;
	}
}
if (isset($siteHash) && is_string($siteHash) && preg_match("/^([a-zA-Z0-9]{30,40})$/", $siteHash)) {
	if (!isset($siteInfoArr) || !is_array($siteInfoArr)) {
		$siteInfoArr = array();
	}
	$existsSite = $_sites->info(array("guy" => $g_user['mode'], "action" => "exists", "label" => "hash", "value" => $siteHash));
	if (isset($existsSite, $existsSite['return'], $existsSite['exists']) && $existsSite['return'] == true && $existsSite['exists'] == true) {
		//. get information
		$getInfo = $_sites->info(array("guy" => $g_user['mode'], "action" => "get", "label" => "hash", "value" => $siteHash, "limit" => "LIMIT 1"));
		if (isset($getInfo, $getInfo['return'], $getInfo['data'], $getInfo['data'][0]) && $getInfo['return'] == true) {
			$siteInfoArr = array_merge($getInfo['data'][0]);
		}else if (isset($getInfo, $getInfo['return'], $getInfo['reason']) && $getInfo['return'] == false) {
			print_r($getInfo);
			die;
		}else {
			print "sadasd";
			die;
		}
		//. get stats
		$getStatsViews = $_sites->views(array("guy" => $g_user['mode'], "action" => "stats", "id" => $siteInfoArr['id'], "time" => ["last_week", "this_week"]));
		if (isset($getStatsViews, $getStatsViews['return'], $getStatsViews['data']) && $getStatsViews['return'] == true) {
			$siteInfoArr['stats']['views'] = array_merge($getStatsViews['data']);
		}else if (isset($getStatsViews, $getStatsViews['return'], $getStatsViews['reason']) && $getStatsViews['return'] == false) {
			print_r($getStatsViews);
			die;
		}else {
			print "sdsxas";
			die;
		}
		//. get mention
		$getStatsMention = $_sites->mention(array("guy" => $g_user['mode'], "action" => "stats", "id" => $siteInfoArr['id'], "time" => ["last_week", "this_week"]));
		if (isset($getStatsMention, $getStatsMention['return'], $getStatsMention['data']) && $getStatsMention['return'] == true) {
			$siteInfoArr['stats']['mention'] = array_merge($getStatsMention['data']);
		}else if (isset($getStatsMention, $getStatsMention['return'], $getStatsMention['reason']) && $getStatsMention['return'] == false) {
			print_r($getStatsMention);
			die;
		}else {
			print "sdsxas";
			die;
		}
		//. get rate
		$getRate = $_sites->rate(array("guy" => $g_user['mode'], "action" => "stats", "id" => $siteInfoArr['id']));
		if (isset($getRate, $getRate['return'], $getRate['data']) && $getRate['return'] == true) {
			$siteInfoArr['rate'] = array_merge($getRate['data']);
		}else if (isset($getRate, $getRate['return'], $getRate['reason']) && $getRate['return'] == false) {
			print_r($getRate);
			die;
		}else {
			print "gghef";
			die;
		}
		//. get certificate
		if (is_string($siteInfoArr['certificate']) && preg_match("/^([a-zA-Z0-9]{30,40})$/", $siteInfoArr['certificate'])) {
			$getCertificate = $_sites->certificate(array("guy" => $g_user['mode'], "action" => "get", "label" => "display", "value" => $siteInfoArr['certificate'], "limit" => "LIMIT 1"));
			if (isset($getCertificate, $getCertificate['return'], $getCertificate['data']) && $getCertificate['return'] == true) {
				if (isset($getCertificate['data'][0]) && is_array($getCertificate['data'][0])) {
					$siteInfoArr['certificate'] = array_merge($getCertificate['data'][0]);
				}else {
					$siteInfoArr['certificate'] = array();
				}
			}else if (isset($getCertificate, $getCertificate['return'], $getCertificate['reason']) && $getCertificate['return'] == false) {
				print_r($getCertificate);
				die;
			}else {
				print "jghjgf";
				die;
			}
		}else {
			$siteInfoArr['certificate'] = array();
		}
		//. get scan
		if (is_string($siteInfoArr['scan']) && preg_match("/^([a-zA-Z0-9]{30,40})$/", $siteInfoArr['scan'])) {
			$getScan = $_sites->scan(array("guy" => $g_user['mode'], "action" => "get", "label" => "display", "value" => $siteInfoArr['scan'], "limit" => "LIMIT 1"));
			if (isset($getScan, $getScan['return'], $getScan['data']) && $getScan['return'] == true) {
				if (isset($getScan['data'][0]) && is_array($getScan['data'][0])) {
					$siteInfoArr['scan'] = array_merge($getScan['data'][0]);
				}else {
					$siteInfoArr['scan'] = array();
				}
			}else if (isset($getScan, $getScan['return'], $getScan['reason']) && $getScan['return'] == false) {
				print_r($getScan);
				die;
			}else {
				print "jghjgf";
				die;
			}
		}else {
			$siteInfoArr['scan'] = array();
		}
		//print_r($siteInfoArr);
	}
}else {
	//.
}
//die;
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="sites info">
	<head>
		<title>.</title>
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
		<link href="<?php print $_tool->links("source/css/sites.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/sites.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gSource">
			<!--
			<link href="<?php print $_tool->links("source/css/templates/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/templates/mediaplayer.js"); ?>" type="text/javascript"></script>
			<link href="<?php print $_tool->links("source/css/templates/feed.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/templates/feed.js"); ?>" type="text/javascript"></script>
			-->
		</div>
		<div id="gMain">
			<?php require_once ("templates/navbar.php"); ?>
			<div id="gBox">
				<div id="leftBox">
					<!-- -->
					<div id="linkPage" class="boxGrid">
						<div class="title">
							<span><?php print $_language->text('link', 'ucfirst'); ?></span>
						</div>
						<div class="content">
							<div class="typing">
								<input class="input" type="text" placeholder="type a link" value="<?php if (isset($siteInfoArr['url'])) { print $siteInfoArr['url']; } else { print ""; } ?>">
							</div>
						</div>
					</div>
					<div id="infoPage" class="boxGrid">
						<div class="cover">
							<div class="thumbnail" style="background-image: url(<?php print $siteInfoArr['thumbnail']; ?>);">
								<img src="<?php print $siteInfoArr['thumbnail']; ?>" alt="<?php print $_language->text('thumbnail_from', 'strtolower').' '.$siteInfoArr['url']; ?>">
							</div>
							<div class="title">
								<span><?php print $siteInfoArr['title']; ?></span>
							</div>
							<div class="host">
								<span><?php print $siteInfoArr['host']; ?></span>
							</div>
							<div class="button">
								<div class="copylink _tt-we w" title="<?php print $_language->text('copy_link', 'strtolower'); ?>"><i></i></div>
								<div class="redirectlink _tt-we w" title="<?php print $_language->text('redirect_link', 'strtolower'); ?>"><i></i></div>
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
										foreach ($siteInfoArr['stats']['views'] as $statsTypeTime => $statsThisTime) {
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
										dataCache.add("sites_info_stats_views_dataset", datasetOptions);
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
										foreach ($siteInfoArr['stats']['mention'] as $statsTypeTime => $statsThisTime) {
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
										dataCache.add("sites_info_stats_mention_dataset", datasetOptions);
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
						<?php if (isset($siteInfoArr['rate'])) { ?>
						<div class="rate box">
							<div class="title">
								<span><?php print $_language->text('rate', 'ucfirst'); ?></span>
							</div>
							<div class="content">
								<div class="rows total">
									<div class="label"><span><?php print $_language->text('total', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php if (isset($siteInfoArr['rate']['total'])) { print $siteInfoArr['rate']['total']; }else { print "undefined"; } ?> times recorded</span></div>
								</div>
								<div class="rows ratio">
									<div class="label"><span><?php print $_language->text('ratio', 'ucfirst'); ?></span></div>
									<div class="value"><div class="rateBox" rate-value="<?php if (isset($siteInfoArr['rate']['ratio'])) { print $siteInfoArr['rate']['ratio']; }else { print "0"; } ?>" rate-action="false"></div></div>
								</div>
								<div class="rows rating">
									<div class="label"><span><?php print $_language->text('rating', 'ucfirst'); ?></span></div>
									<div class="value">
										<div class="rateBox" rate-value="<?php if (isset($siteInfoArr['rate']['rating'])) { print $siteInfoArr['rate']['rating']; }else { print "0"; } ?>" rate-action="true"></div>
										<script type="text/javascript">
										</script>
									</div>
								</div>
							</div>
						</div>
						<?php } ?>
						<div class="info box">
							<div class="title">
								<span><?php print $_language->text('information', 'ucfirst'); ?></span>
							</div>
							<div class="content">
								<div class="rows host">
									<div class="label"><span><?php print $_language->text('host', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php print $siteInfoArr['host']; ?></span></div>
								</div>
								<div class="rows hash">
									<div class="label"><span><?php print $_language->text('hash', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php print $siteInfoArr['hash']; ?></span></div>
								</div>
								<?php if (isset($siteInfoArr['type'])) { ?>
								<div class="rows type">
									<div class="label"><span><?php print $_language->text('type', 'ucfirst'); ?></span></div>
									<div class="value"><a href="#"><?php if (isset($siteInfoArr['type'])) { print $siteInfoArr['type']; } else { print "-"; } ?></a></div>
								</div>
								<?php } ?>
								<?php if (isset($siteInfoArr['language'])) { ?>
								<div class="rows language">
									<div class="label"><span><?php print $_language->text('language', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php if (isset($siteInfoArr['language'])) { print $siteInfoArr['language']; } else { print "-"; } ?></span></div>
								</div>
								<?php } ?>
								<?php if (isset($siteInfoArr['country'])) { ?>
								<div class="rows local">
									<div class="label"><span><?php print $_language->text('country', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php if (isset($siteInfoArr['country'])) { print $siteInfoArr['country']; } else { print "-"; } ?></span></div>
								</div>
								<?php } ?>
								<div class="rows title">
									<div class="label"><span><?php print $_language->text('title', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php if (isset($siteInfoArr['title'])) { print $siteInfoArr['title']; } else { print "-"; } ?></span></div>
								</div>
								<div class="rows description">
									<div class="label"><span><?php print $_language->text('description', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php if (isset($siteInfoArr['description'])) { print $siteInfoArr['description']; } else { print "-"; } ?></span></div>
								</div>
								<div class="rows link">
									<div class="label"><span><?php print $_language->text('link', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php if (isset($siteInfoArr['url'])) { print $siteInfoArr['url']; } else { print "-"; } ?></span></div>
								</div>
								<div class="rows updated">
									<div class="label"><span><?php print $_language->text('last_update', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php if (isset($siteInfoArr['updated'])) { print $_tool->agoDatetime($siteInfoArr['updated'], "ago"); } else { print "-"; } ?></span></div>
								</div>
							</div>
						</div>
						<div class="certificate box">
							<div class="title">
								<span><?php print $_language->text('certificate', 'ucfirst'); ?></span>
							</div>
							<div class="content">
								<?php if (!isset($siteInfoArr['certificate']) || count($siteInfoArr['certificate']) == 0) { ?>
								<div class="rows null"> <span><?php print $_language->text('page_null_certificate', 'strtolower'); ?></span> </div>
								<?php }else { ?>
								<div class="rows issuer">
									<div class="label"><span><?php print $_language->text('issuer', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php if (isset($siteInfoArr['certificate']['issuer'], $siteInfoArr['certificate']['issuer']['o'])) { print $siteInfoArr['certificate']['issuer']['o'].' - '.$_language->text('organization', 'strtolower'); } ?><?php if (isset($siteInfoArr['certificate']['issuer'], $siteInfoArr['certificate']['issuer']['c'])) { print '<br> '.$siteInfoArr['certificate']['issuer']['c'].' - '.$_language->text('country', 'strtolower'); } ?><?php if (isset($siteInfoArr['certificate']['issuer'], $siteInfoArr['certificate']['issuer']['cn'])) { print '<br> '.$siteInfoArr['certificate']['issuer']['cn'].' - '.$_language->text('common_name', 'strtolower'); } ?></span></div>
								</div>
								<?php if (isset($siteInfoArr['certificate']['signature'], $siteInfoArr['certificate']['signature']['type'], $siteInfoArr['certificate']['signature']['type']['name'])) { ?>
								<div class="rows encryption">
									<div class="label"><span><?php print $_language->text('encryption', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php print $siteInfoArr['certificate']['signature']['type']['name']; ?> - <?php print $_language->text('type', 'strtolower'); ?></span></div>
								</div>
								<?php } ?>
								<?php if (isset($siteInfoArr['certificate']['usefor'], $siteInfoArr['certificate']['usefor'], $siteInfoArr['certificate']['usefor']['extended'], $siteInfoArr['certificate']['usefor']['extended'])) { ?>
								<div class="rows usage">
									<div class="label"><span><?php print $_language->text('usage', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php print $siteInfoArr['certificate']['usefor']['key']; ?> - <?php print $_language->text('key', 'strtolower'); ?> <br>T<?php print $siteInfoArr['certificate']['usefor']['extended']; ?> - <?php print $_language->text('extended', 'strtolower'); ?></span></div>
								</div>
								<?php } ?>
								<?php } ?>
							</div>
						</div>
						<div class="malwarescan box">
							<div class="title">
								<span><?php print $_language->text('malware_scan', 'ucfirst'); ?></span>
							</div>
							<div class="content">
								<?php if (!isset($siteInfoArr['scan']) || count($siteInfoArr['scan']) == 0) { ?>
								<div class="rows null"> <span><?php print $_language->text('page_null_scanlogs', 'strtolower'); ?></span> </div>
								<?php }else { ?>
								<div class="rows totalscanner">
									<div class="label"><span><?php print $_language->text('total_scanner', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php if (isset($siteInfoArr['scan']['total'])) { print $siteInfoArr['scan']['total'].' '.$_language->text('system_scanner', 'strtolower'); } else { print "-"; } ?></span></div>
								</div>
								<div class="rows detectionrate">
									<div class="label"><span><?php print $_language->text('detection_rate', 'ucfirst'); ?></span></div>
									<div class="value"><span><?php if (isset($siteInfoArr['scan']['status'])) { print $siteInfoArr['scan']['status'].'%'; if ($siteInfoArr['scan']['status'] == 0) { print " - ".$_language->text('safe', 'strtolower'); } else if ($siteInfoArr['scan']['status'] <= 10) { print " - ".$_language->text('suspicious', 'strtolower'); }else  if ($siteInfoArr['scan']['status'] > 10) { print " - ".$_language->text('not_safe', 'strtolower'); } } else { print "-"; } ?></span></div>
								</div>
								<div class="rows results">
									<div class="label"><span><?php print $_language->text('results', 'ucfirst'); ?></span></div>
									<div class="value">
										<span>
											<?php
											$isPrinted = 0;
											foreach ($siteInfoArr['scan']['data'] as $scanner => $scandata) {
												if (in_array($scandata['result'], ["clean site", "safe"])) {
													$scanreport = "<a class='scanreport safe'>".$_language->text('safe', 'strtolower')."</a>";
												}else if (in_array($scandata['result'], ["suspicious site", "suspicious"])) {
													$scanreport = "<a class='scanreport suspicious'>".$_language->text('suspicious', 'strtolower')."</a>";
												}else if (in_array($scandata['result'], ["danger site", "danger"]) || $scandata['detected'] == true) {
													$scanreport = "<a class='scanreport danger'>".$_language->text('danger', 'strtolower')."</a>";
												}else if (in_array($scandata['result'], ["unrated site", "unrated"])) {
													$scanreport = "<a class='scanreport unrated'>".$_language->text('unrated', 'strtolower')."</a>";
												}else {
													$scanreport = "<a class='scanreport undefined'>".$_language->text('undefined', 'strtolower')."</a>";
												}
												if (in_array($scandata['detected'], [null, false])) {
													$scandetected = "<a class='scandetected notdetected'>not detected</a>";
												}else if (in_array($scandata['detected'], [true])) {
													$scandetected = "<a class='scandetected hasdetected'>".$scandata['result']."</a>";
												}else {
													$scandetected = "<a class='scandetected undefined'>".$_language->text('undefined', 'strtolower')."</a>";
												}
												if ($isPrinted == 0) {
													print "<a class='scanner'>".$scanner."</a>: ".$scanreport." - ".$scandetected;
												}else {
													print "<br> <a class='scanner'>".$scanner."</a>: ".$scanreport." - ".$scandetected;
												}
												$isPrinted++;
											}
											?>
										</span>
									</div>
								</div>
								<?php } ?>
							</div>
						</div>
					</div>
					<!-- -->
				</div>
				<div id="rightBox">
					<div id class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $_language->text('sponsored', 'ucfirst'); ?></span>
						</div>
						<div class="content"><br></div>
					</div>
					<div id class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $_language->text('comments', 'ucfirst'); ?></span>
						</div>
						<div class="content"><br></div>
					</div>
					<div id class="tab boxGrid">
						<div class="title nowrap">
							<span><?php print $_language->text('you_may_want_read', 'ucfirst'); ?></span>
						</div>
						<div class="content"><br></div>
					</div>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
		</div>
		<div id="gInclude"></div>
	</body>
</html>