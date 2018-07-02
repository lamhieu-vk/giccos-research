<?php
if (isset($wall_['key'], $wall_['tab']) && $wall_['key'] !=  null && $wall_['tab'] !=  null) {
	$wall_['id'] = mysqli_fetch_assoc(mysqli_query($_db->port('beta'), "SELECT `id` FROM `users` WHERE `id` = '{$wall_['key']}' OR `username` = '{$wall_['key']}' LIMIT 1"))['id'];
	$getInfo = $_user->getInfo(array("id" => $wall_['id'], "rows" => "*"));
	if (isset($getInfo['return']) && $getInfo['return'] == true) {
		if (isset($getInfo['data']['password'])) unset($getInfo['data']['password']);
		if (isset($getInfo['data']['password.hash'])) unset($getInfo['data']['password.hash']);
		$getGuy = $_wall->guy(array("wall.id" => $wall_['id'], "guy.type" => $g_user['mode']['type'], "guy.id" => $g_user['mode']['id']));
		if (isset($getGuy['return']) && $getGuy['return'] == true) {
			$wall_['guy'] = $getGuy['guy'];
		}else {
			$wall_['guy'] = 4;
		}
		if (isset($wall_['guy']) && $wall_['guy'] == 5) {
			$wall_['blocked'] = true;
		}else {
			$wall_['blocked'] = false;
		}
		$wall_['about'] = $getInfo['data'];
		$wall_['link'] = $wall_['about']['link'];
		$wall_['title'] = $wall_['title_raw'] = $wall_['about']['fullname']." (".$wall_['about']['username'].")";
		if ($wall_['tab'] == "about") {
			$wall_['title'] .= " - ".$_language->text('about', 'ucwords');
		}else if ($wall_['tab'] == "timeline") {
			$wall_['title'] .= " - ".$_language->text('timeline', 'ucwords');
		}else if ($wall_['tab'] == "friends") {
			$wall_['title'] .= " - ".$_language->text('friends', 'ucwords');
			if (isset($_uri[3]) && is_string($_uri[3]) && in_array($_uri[3], ['all_friends', 'live', 'country', 'workplaces', 'school', 'suggest', 'mutual_friends'])) {
				$wall_friends_type = strtolower($_uri[3]);
			}else {
				if (!isset($_uri[3])) {
					$wall_friends_type = null;
				}else {
					$wall_friends_type = false;
				}
			}
		}else if ($wall_['tab'] == "photos") {
			$wall_['title'] .= " - ".$_language->text('photos', 'ucwords');
		}else if ($wall_['tab'] == "music") {
			$wall_['title'] .= " - ".$_language->text('music', 'ucwords');
		}else if ($wall_['tab'] == "videos") {
			$wall_['title'] .= " - ".$_language->text('videos', 'ucwords');
		}else if ($wall_['tab'] == "places") {
			$wall_['title'] .= " - ".$_language->text('places', 'ucwords');
		}
	}else {
		//.
		die(header("Location: {$_tool->links('::redirect::oops')}"));
	}
}else {
	die(header("Location: {$_tool->links('::redirect::oops')}"));
}
if (isset($wall_['blocked']) && $wall_['blocked'] == true) {
	die(require_once("source/ports/oops.php"));
}
header($_parameter->get('contentType_html.utf8'));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="wall <?php print $wall_['tab']; ?>">
	<head>
		<title><?php if (isset($wall_['title'])) { print $wall_['title'].' :: '; } print $_language->text('pages_wall.title', 'ucwords', false); ?></title>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/wall.css"); ?>" rel="stylesheet" />
		<script src="<?php print $_tool->links("source/js/jquery.js"); ?>" type="text/javascript"></script>
		<script src="<?php print $_tool->links("source/js/basic.js"); ?>" type="text/javascript"></script>
	</head>
	<body>
		<div id="gMain">
			<?php require_once ("templates/navbar.php"); ?>
			<div id="gBox">
				<div id="leftBox">
					<?php require_once ("templates/box_links.php"); ?>
				</div>
				<div id="centerBox">
					<div id="wallQuickInfo">
						<script>var wallInfo = {"id": "<?php print $wall_['id']; ?>", "tab": "<?php print $wall_['tab']; ?>", "link": "<?php print $wall_['link']; ?>"}</script>
					</div>
					<div id="navBox" class="boxGrid<?php if ($wall_['about']['dead'] == 1) { print " dead"; } ?>">
						<div class="coverBox">
							<div class="wrap"></div>
							<div class="img" style="background-image: url(<?php print $wall_['about']['cover.large']; ?>);">
								<img src="<?php print $wall_['about']['cover.large']; ?>" />
							</div>
						</div>
						<div class="avatarBox">
							<div class="border"></div>
							<div class="img" style="background-image: url(<?php print $wall_['about']['avatar.large']; ?>);">
								<img src="<?php print $wall_['about']['avatar.large']; ?>" />
							</div>
						</div>
						<div class="infoBox">
							<div class="text">
								<div class="tag"><a href="<?php print $wall_['about']['link']; ?>"><?php print $wall_['about']['username']; ?></a></div>
								<div class="name"><a href="<?php print $wall_['about']['link']; ?>"><?php print $wall_['about']['fullname']; ?></a></div>
							</div>
						</div>
						<div class="tagsInfo">
						<?php
						if ($wall_['about']['verified'] == 1) {
							print "<div class='tags verified _tt-we s' title='{$_language->text('verified', 'ucfirst')}'><i></i></div>";
						}
						if ($wall_['about']['dead'] == 1) {
							print "<div class='tags dead _tt-we s' title='{$_language->text('dead', 'ucfirst')}'><i></i></div>";
						}
						?>
						</div>
					</div>
					<div id="mainBox">
						<div id="navWallType" class="boxGrid">
							<div class="ul">
								<div class="li about"><a href="<?php print $wall_['link']; ?>/about"><?php print $_language->text('about', 'ucfirst'); ?></a></div>
								<div class="li timeline"><a href="<?php print $wall_['link']; ?>/timeline"><?php print $_language->text('timeline', 'ucfirst'); ?></a></div>
								<div class="li friends"><a href="<?php print $wall_['link']; ?>/friends"><?php print $_language->text('friends', 'ucfirst'); ?></a></div>
								<div class="li photos"><a href="<?php print $wall_['link']; ?>/photos"><?php print $_language->text('photos', 'ucfirst'); ?></a></div>
								<div class="li music"><a href="<?php print $wall_['link']; ?>/music"><?php print $_language->text('music', 'ucfirst'); ?></a></div>
								<div class="li videos"><a href="<?php print $wall_['link']; ?>/videos"><?php print $_language->text('videos', 'ucfirst'); ?></a></div>
								<div class="li places"><a href="<?php print $wall_['link']; ?>/places"><?php print $_language->text('places', 'ucfirst'); ?></a></div>
								<div class="li more"><a href="#"><?php print $_language->text('more', 'ucfirst'); ?></a></div>
								<script type="text/javascript">$("#navWallType > .ul > .li.<?php print $wall_['tab']; ?>").addClass("active");</script>
							</div>
							<div class="text"><span><?php print preg_replace("/(_____)/", $wall_['about']['lastname'], $_language->text('wall_desc_'.$wall_['tab'], 'ucfirst')); ?></span></div>
						</div>
						<div id="wallContent">
							<?php
							if ($wall_['tab'] == "about") {
								$codeInfoTab['introduction'] = $codeInfoTab['about'] = $codeInfoTab['contact'] = $codeInfoTab['education'] = $codeInfoTab['workplaces'] = $codeInfoTab['places'] = null;
								if (isset($wall_['about']['introduction']) && $wall_['about']['introduction'] != null) {
									$codeInfoTab['introduction'] .= "
									<div class='value oe'>
										<div class='texttitle'><span>{$_language->text('introduction', 'ucfirst')}</span></div>
										<div class='textmain'><span>{$wall_['about']['introduction']}</span></div>
									</div>
									";
								}
								if (isset($wall_['about']['slogan']) && $wall_['about']['slogan'] != null) {
									$codeInfoTab['introduction'] .= "
									<div class='value oe'>
										<div class='texttitle'><span>{$_language->text('slogan', 'ucfirst')}</span></div>
										<div class='textmain'><span>{$wall_['about']['slogan']}</span></div>
									</div>
									";
								}
								if (!isset($codeInfoTab['introduction']) || $codeInfoTab['introduction'] == null) {
									$codeInfoTab['introduction'] = "
									<div class='value null'>
										<span>".preg_replace("/(_____)/", $wall_['about']['lastname'], $_language->text('wall_info_introduction_null', 'ucfirst'))."</span>
									</div>
									";
								}
								if (isset($wall_['about']['username']) && $wall_['about']['username'] != null) {
									$codeInfoTab['about'] .= "
									<div class='value to'>
										<div class='texttitle'><span>{$_language->text('user', 'ucfirst')}</span></div>
										<div class='textmain'><span>{$wall_['about']['username']}</span></div>
									</div>
									";
								}
								if (isset($wall_['about']['fullname']) && $wall_['about']['fullname'] != null) {
									$codeInfoTab['about'] .= "
									<div class='value to'>
										<div class='texttitle'><span>{$_language->text('name', 'ucfirst')}</span></div>
										<div class='textmain'><span>{$wall_['about']['fullname']}</span></div>
										<div class='texttitle'></div>
										<div class='textmain'><small>{$_language->text('firstname', 'ucfirst')}: {$wall_['about']['firstname']} / {$_language->text('lastname', 'ucfirst')}: {$wall_['about']['lastname']}</small></div>
									</div>
									";
								}
								if (isset($wall_['about']['nickname']) && $wall_['about']['nickname'] != null) {
									$codeInfoTab['about'] .= "
									<div class='value to'>
										<div class='texttitle'><span>{$_language->text('nickname', 'ucfirst')}</span></div>
										<div class='textmain'><span>{$wall_['about']['nickname']}</span></div>
									</div>
									";
								}
								if (isset($wall_['about']['gender']) && $wall_['about']['gender'] != null) {
									$codeInfoTab['about'] .= "
									<div class='value to'>
										<div class='texttitle'><span>{$_language->text('gender', 'ucfirst')}</span></div>
										<div class='textmain'><span>{$_language->text($wall_['about']['gender'], 'ucfirst')}</span></div>
									</div>
									";
								}
								if (isset($wall_['about']['interest']) && $wall_['about']['interest'] != null) {
									$codeInfoTab['about'] .= "
									<div class='value to'>
										<div class='texttitle'><span>{$_language->text('interest', 'ucfirst')}</span></div>
										<div class='textmain'><span>{$_language->text($wall_['about']['interest'], 'ucfirst')}</span></div>
									</div>
									";
								}
								if (isset($wall_['about']['relationship']) && $wall_['about']['relationship'] != null) {
									$codeInfoTab['about'] .= "
									<div class='value to'>
										<div class='texttitle'><span>{$_language->text('relationship', 'ucfirst')}</span></div>
										<div class='textmain'><span>{$_language->text('relationship_'.$wall_['about']['relationship'], 'ucfirst')}</span></div>
									</div>
									";
								}
								if (isset($wall_['about']['birthday'], $wall_['about']['private.info.birthday']) && $wall_['about']['birthday'] != null && $wall_['about']['private.info.birthday'] >= $wall_['guy']) {
									if (!isset($wall_['about']['birthday.format']) || $wall_['about']['birthday.format'] == null) {
										$wall_['about']['birthday.format'] = "m/d/Y";
									}
									$wall_['about']['birthday.formatstring'] = $wall_['about']['birthday.format'];
									$wall_['about']['birthday.formatstring'] = preg_replace("/(s)/", $_language->text('seconds', 'strtolower'), $wall_['about']['birthday.formatstring']);
									$wall_['about']['birthday.formatstring'] = preg_replace("/(i)/", $_language->text('minutes', 'strtolower'), $wall_['about']['birthday.formatstring']);
									$wall_['about']['birthday.formatstring'] = preg_replace("/(H)/", $_language->text('hours', 'strtolower'), $wall_['about']['birthday.formatstring']);
									$wall_['about']['birthday.formatstring'] = preg_replace("/(d)/", $_language->text('days', 'strtolower'), $wall_['about']['birthday.formatstring']);
									$wall_['about']['birthday.formatstring'] = preg_replace("/(m)/", $_language->text('months', 'strtolower'), $wall_['about']['birthday.formatstring']);
									$wall_['about']['birthday.formatstring'] = preg_replace("/(Y)/", $_language->text('years', 'strtolower'), $wall_['about']['birthday.formatstring']);
									$wall_['about']['birthday.formatstring'] = preg_replace("/(\/)/", " / ", $wall_['about']['birthday.formatstring']);
									$codeInfoTab['about'] .= "
									<div class='value to'>
										<div class='texttitle'><span>{$_language->text('birthday', 'ucfirst')}</span></div>
										<div class='textmain'><span>".date($wall_['about']['birthday.format'], $wall_['about']['birthday'])."</span></div>
										<div class='texttitle'></div>
										<div class='textmain'><small>{$_language->text('format', 'ucfirst')}: {$wall_['about']['birthday.formatstring']}</small></div>
									</div>
									";
								}
								if (isset($wall_['about']['language']) && $wall_['about']['language'] != null) {
									$codeInfoTab['about'] .= "
									<div class='value to'>
										<div class='texttitle'><span>{$_language->text('language', 'ucfirst')}</span></div>
										<div class='textmain'><span>{$_language->text('language_'.$wall_['about']['language'], 'ucfirst')}</span></div>
									</div>
									";
								}
								if (!isset($codeInfoTab['about']) || $codeInfoTab['about'] == null) {
									$codeInfoTab['about'] = "
									<div class='value null'>
										<span>".preg_replace("/(_____)/", $wall_['about']['lastname'], $_language->text('wall_info_about_null', 'ucfirst'))."</span>
									</div>
									";
								}
								$contactEmailInfoGet = $_user->getContact(array("id" => $wall_['id'], "rows" => "*", "where" => "`type` = 'email'", "limit" => "ORDER BY `id` DESC"));
								if ($contactEmailInfoGet['return'] == true && $contactEmailInfoGet['data'] != null && is_array($contactEmailInfoGet['data'])) {
									$contactEmailInfoDataThis_s = 0;
									foreach ($contactEmailInfoGet['data'] as $key => $contactEmailInfoDataThis) {
										if ($contactEmailInfoDataThis['private'] >= $wall_['guy']) {
											if ($contactEmailInfoDataThis_s == 0) {
												$contactEmailInfoDataThis['type'] = $_language->text($contactEmailInfoDataThis['type'], 'ucfirst');
											}else {
												$contactEmailInfoDataThis['type'] = null;
											}
											$codeInfoTab['contact'] .= "
											<div class='value to'>
												<div class='texttitle'><span>{$contactEmailInfoDataThis['type']}</span></div>
												<div class='textmain'><span>{$contactEmailInfoDataThis['value']}</span></div>
												<div class='texttitle'></div>
												<div class='textmain'><small>{$_language->text($contactEmailInfoDataThis['at'], 'ucfirst')}</small></div>
											</div>
											";
											$contactEmailInfoDataThis_s++;
										}else {
											//.
										}
									}
								}else {
									//.
								}
								$contactPhoneInfoGet = $_user->getContact(array("id" => $wall_['id'], "rows" => "*", "where" => "`type` = 'phone'", "limit" => "ORDER BY `id` DESC"));
								if ($contactPhoneInfoGet['return'] == true && $contactPhoneInfoGet['data'] != null && is_array($contactPhoneInfoGet['data'])) {
									$contactPhoneInfoDataThis_s = 0;
									foreach ($contactPhoneInfoGet['data'] as $key => $contactPhoneInfoDataThis) {
										if ($contactPhoneInfoDataThis['private'] >= $wall_['guy']) {
											if ($contactPhoneInfoDataThis_s == 0) {
												$contactPhoneInfoDataThis['type'] = $_language->text($contactPhoneInfoDataThis['type'], 'ucfirst');
											}else {
												$contactPhoneInfoDataThis['type'] = null;
											}
											$codeInfoTab['contact'] .= "
											<div class='value to'>
												<div class='texttitle'><span>{$contactPhoneInfoDataThis['type']}</span></div>
												<div class='textmain'><span>{$contactPhoneInfoDataThis['value']}</span></div>
												<div class='texttitle'></div>
												<div class='textmain'><small>{$_language->text($contactPhoneInfoDataThis['at'], 'ucfirst')}</small></div>
											</div>
											";
											$contactPhoneInfoDataThis_s++;
										}else {
											//.
										}
									}
								}else {
									//.
								}
								if (!isset($codeInfoTab['contact']) || $codeInfoTab['contact'] == null) {
									$codeInfoTab['contact'] = "
									<div class='value null'>
										<span>".preg_replace("/(_____)/", $wall_['about']['lastname'], $_language->text('wall_info_contact_null', 'ucfirst'))."</span>
									</div>
									";
								}
								$educationInfoGet = $_user->getEducation(array("id" => $wall_['id'], "rows" => "*", "limit" => "ORDER BY `id` DESC"));
								if (isset($educationInfoGet['return'], $educationInfoGet['data']) && $educationInfoGet['return'] == true && $educationInfoGet['data'] != null && is_array($educationInfoGet['data'])) {
									foreach ($educationInfoGet['data'] as $key => $educationInfoDataThis) {
										if ($educationInfoDataThis['private'] >= $wall_['guy']) {
											if (!isset($educationInfoDataThis['time.format']) || $educationInfoDataThis['time.format'] == null) {
												$educationInfoDataThis['time.format'] = "m/d/Y";
											}
											$educationInfoDataThis['time.formatstring'] = $educationInfoDataThis['time.format'];
											$educationInfoDataThis['time.formatstring'] = preg_replace("/(s)/", $_language->text('seconds', 'strtolower'), $educationInfoDataThis['time.formatstring']);
											$educationInfoDataThis['time.formatstring'] = preg_replace("/(i)/", $_language->text('minutes', 'strtolower'), $educationInfoDataThis['time.formatstring']);
											$educationInfoDataThis['time.formatstring'] = preg_replace("/(H)/", $_language->text('hours', 'strtolower'), $educationInfoDataThis['time.formatstring']);
											$educationInfoDataThis['time.formatstring'] = preg_replace("/(d)/", $_language->text('days', 'strtolower'), $educationInfoDataThis['time.formatstring']);
											$educationInfoDataThis['time.formatstring'] = preg_replace("/(m)/", $_language->text('months', 'strtolower'), $educationInfoDataThis['time.formatstring']);
											$educationInfoDataThis['time.formatstring'] = preg_replace("/(Y)/", $_language->text('years', 'strtolower'), $educationInfoDataThis['time.formatstring']);
											$educationInfoDataThis['time.formatstring'] = preg_replace("/(\/)/", " / ", $educationInfoDataThis['time.formatstring']);
											if ((isset($educationInfoDataThis['time.start']) && $educationInfoDataThis['time.start'] != null && $educationInfoDataThis['time.start'] > 0) || (isset($educationInfoDataThis['time.stop']) && $educationInfoDataThis['time.stop'] != null)) {
												if (isset($educationInfoDataThis['time.start']) && $educationInfoDataThis['time.start'] != null && $educationInfoDataThis['time.start'] > 0) {
													$educationInfoDataThis['time.start.value'] = date($educationInfoDataThis['time.format'], $educationInfoDataThis['time.start']);
												}else {
													$educationInfoDataThis['time.start.value'] = $_language->text('unknown', 'ucfirst');
												}
												if (isset($educationInfoDataThis['time.stop']) && $educationInfoDataThis['time.stop'] != null) {
													if ($educationInfoDataThis['time.stop'] > 0) {
														$educationInfoDataThis['time.stop.value'] = date($educationInfoDataThis['time.format'], $educationInfoDataThis['time.stop']);
													}else {
														$educationInfoDataThis['time.stop.value'] = $_language->text('now', 'ucfirst');
													}
												}else {
													$educationInfoDataThis['time.stop.value'] = $_language->text('unknown', 'ucfirst');
												}
												$educationInfoDataThis['time.value'] = "{$_language->text('time', 'ucfirst')}: {$educationInfoDataThis['time.start.value']} - {$educationInfoDataThis['time.stop.value']}.";
											}else {
												$educationInfoDataThis['time.value'] = null;
											}
											if ($educationInfoDataThis['time.value'] != null) {
												$educationInfoDataThis['time.value'] = "
												<div class='texttitle'></div>
												<div class='textmain'><i class='time'></i><small class='_tt-bk e' title='<small>{$_language->text('format', 'ucfirst')}: {$educationInfoDataThis['time.formatstring']}</small>'>{$educationInfoDataThis['time.value']}</small></div>
												";
											}
											if (isset($educationInfoDataThis['school']) && $educationInfoDataThis['school'] != null) {
												$educationInfoDataThis['title.value'] = $educationInfoDataThis['school'];
											}else {
												$educationInfoDataThis['title.value'] = $_language->text('unknown', 'ucfirst');
											}
											if (isset($educationInfoDataThis['level']) && $educationInfoDataThis['level'] != null) {
												$educationInfoDataThis['level.value'] = "
												<div class='textmain'><i class='level'></i><small>{$_language->text('level', 'ucfirst')}:  {$educationInfoDataThis['level']}</small></div>
												";
											}else {
												$educationInfoDataThis['level.value'] = null;
											}
											if (isset($educationInfoDataThis['address']) && $educationInfoDataThis['address'] != null) {
												if (is_numeric($educationInfoDataThis['address'])) {
													$placesLivingMapsDataQuery = mysqli_query($_db->port('beta'), "SELECT `code` FROM `maps_places` WHERE `id` = '{$educationInfoDataThis['address']}' LIMIT 1");
													$placesLivingMapsDataCheck = mysqli_num_rows($placesLivingMapsDataQuery);
													if ($placesLivingMapsDataCheck == 1) {
														$wall_['about']['live.code'] = mysqli_fetch_assoc($placesLivingMapsDataQuery)['code'];
														if ($wall_['about']['live.code'] != null) {
															$_maps = new maps;
															$placesLivingMapsData = $_maps->places(true, array("type" => "get", "rows" => "`address`, `location`, `name`, `thumbnail`", "code" => $wall_['about']['live.code']));
															if ($placesLivingMapsData['return'] == true) {
																$educationInfoDataThis['address.value'] = "
																<div class='textmain _tt-dbl cr-pointer' dblclick='".json_encode(array("type" => "notification", "timeout" => "5000", "data" => array("type" => "1", "title" => $_language->text('information_about_places', 'ucfirst'), "description" => array("type" => "info::places", "data" => $placesLivingMapsData['data']))))."'><i class='places'></i><small>{$_language->text('address', 'ucfirst')}:  {$placesLivingMapsData['data']['address']}</small></div>
																";
															}else {
																//.
															}
														}else {
															//.
														}
													}else {
														//.
													}
												}else {
													$educationInfoDataThis['address.value'] = "
													<div class='textmain'><i class='places'></i><small>{$_language->text('address', 'ucfirst')}:  {$educationInfoDataThis['address']}</small></div>
													";
												}
											}else {
												$educationInfoDataThis['address.value'] = null;
											}
											$codeInfoTab['education'] .= "
											<div class='value oe'>
												<div class='texttitle'><i class='school'></i><span class='_tt-bk e cr-pointer' title='{$educationInfoDataThis['title.value']}'>{$educationInfoDataThis['title.value']}</span></div>
												{$educationInfoDataThis['level.value']}
												<div class='textmain'><span>{$educationInfoDataThis['description']}</span></div>
												{$educationInfoDataThis['address.value']}
												{$educationInfoDataThis['time.value']}
											</div>
											";
										}else {
											//.
										}
									}
								}else {
									//.
								}
								if (!isset($codeInfoTab['education']) || $codeInfoTab['education'] == null) {
									$codeInfoTab['education'] = "
									<div class='value null'>
										<span>".preg_replace("/(_____)/", $wall_['about']['lastname'], $_language->text('wall_info_education_null', 'ucfirst'))."</span>
									</div>
									";
								}
								$workplacesInfoGet = $_user->getWorkplaces(array("id" => $wall_['id'], "rows" => "*", "limit" => "ORDER BY `id` DESC"));
								if (isset($workplacesInfoGet['return'], $workplacesInfoGet['data']) && $workplacesInfoGet['return'] == true && $workplacesInfoGet['data'] != null && is_array($workplacesInfoGet['data'])) {
									foreach ($workplacesInfoGet['data'] as $key => $workplacesInfoDataThis) {
										if ($workplacesInfoDataThis['private'] >= $wall_['guy']) {
											if (!isset($workplacesInfoDataThis['time.format']) || $workplacesInfoDataThis['time.format'] == null) {
												$workplacesInfoDataThis['time.format'] = "m/d/Y";
											}
											$workplacesInfoDataThis['time.formatstring'] = $workplacesInfoDataThis['time.format'];
											$workplacesInfoDataThis['time.formatstring'] = preg_replace("/(s)/", $_language->text('seconds', 'strtolower'), $workplacesInfoDataThis['time.formatstring']);
											$workplacesInfoDataThis['time.formatstring'] = preg_replace("/(i)/", $_language->text('minutes', 'strtolower'), $workplacesInfoDataThis['time.formatstring']);
											$workplacesInfoDataThis['time.formatstring'] = preg_replace("/(H)/", $_language->text('hours', 'strtolower'), $workplacesInfoDataThis['time.formatstring']);
											$workplacesInfoDataThis['time.formatstring'] = preg_replace("/(d)/", $_language->text('days', 'strtolower'), $workplacesInfoDataThis['time.formatstring']);
											$workplacesInfoDataThis['time.formatstring'] = preg_replace("/(m)/", $_language->text('months', 'strtolower'), $workplacesInfoDataThis['time.formatstring']);
											$workplacesInfoDataThis['time.formatstring'] = preg_replace("/(Y)/", $_language->text('years', 'strtolower'), $workplacesInfoDataThis['time.formatstring']);
											$workplacesInfoDataThis['time.formatstring'] = preg_replace("/(\/)/", " / ", $workplacesInfoDataThis['time.formatstring']);
											if ((isset($workplacesInfoDataThis['time.start']) && $workplacesInfoDataThis['time.start'] != null && $workplacesInfoDataThis['time.start'] > 0) || (isset($workplacesInfoDataThis['time.stop']) && $workplacesInfoDataThis['time.stop'] != null)) {
												if (isset($workplacesInfoDataThis['time.start']) && $workplacesInfoDataThis['time.start'] != null && $workplacesInfoDataThis['time.start'] > 0) {
													$workplacesInfoDataThis['time.start.value'] = date($workplacesInfoDataThis['time.format'], $workplacesInfoDataThis['time.start']);
												}else {
													$workplacesInfoDataThis['time.start.value'] = $_language->text('unknown', 'ucfirst');
												}
												if (isset($workplacesInfoDataThis['time.stop']) && $workplacesInfoDataThis['time.stop'] != null) {
													if ($workplacesInfoDataThis['time.stop'] > 0) {
														$workplacesInfoDataThis['time.stop.value'] = date($workplacesInfoDataThis['time.format'], $workplacesInfoDataThis['time.stop']);
													}else {
														$workplacesInfoDataThis['time.stop.value'] = $_language->text('now', 'ucfirst');
													}
												}else {
													$workplacesInfoDataThis['time.stop.value'] = $_language->text('unknown', 'ucfirst');
												}
												$workplacesInfoDataThis['time.value'] = "{$_language->text('time', 'ucfirst')}: {$workplacesInfoDataThis['time.start.value']} - {$workplacesInfoDataThis['time.stop.value']}.";
											}else {
												$workplacesInfoDataThis['time.value'] = null;
											}
											if ($workplacesInfoDataThis['time.value'] != null) {
												$workplacesInfoDataThis['time.value'] = "
												<div class='texttitle'></div>
												<div class='textmain'><i class='time'></i><small class='_tt-bk e' title='<small>{$_language->text('format', 'ucfirst')}: {$workplacesInfoDataThis['time.formatstring']}</small>'>{$workplacesInfoDataThis['time.value']}</small></div>
												";
											}
											if (isset($workplacesInfoDataThis['company']) && $workplacesInfoDataThis['company'] != null) {
												$workplacesInfoDataThis['title.value'] = $workplacesInfoDataThis['company'];
											}else {
												$workplacesInfoDataThis['title.value'] = $_language->text('unknown', 'ucfirst');
											}
											if (isset($workplacesInfoDataThis['work']) && $workplacesInfoDataThis['work'] != null) {
												$workplacesInfoDataThis['work.value'] = "
												<div class='texttitle'></div>
												<div class='textmain'><i class='work'></i><small>{$_language->text('work', 'ucfirst')}:  {$workplacesInfoDataThis['work']}</small></div>
												";
											}else {
												$workplacesInfoDataThis['work.value'] = null;
											}
											if (isset($workplacesInfoDataThis['awards']) && $workplacesInfoDataThis['awards'] != null) {
												$workplacesInfoDataThis['awards.value'] = "
												<div class='texttitle'></div>
												<div class='textmain'><i class='awards'></i><small>{$_language->text('awards', 'ucfirst')}:  {$workplacesInfoDataThis['awards']}</small></div>
												";
											}else {
												$workplacesInfoDataThis['awards.value'] = null;
											}
											if (isset($workplacesInfoDataThis['address']) && $workplacesInfoDataThis['address'] != null) {
												if (is_numeric($workplacesInfoDataThis['address'])) {
													$placesLivingMapsDataQuery = mysqli_query($_db->port('beta'), "SELECT `code` FROM `maps_places` WHERE `id` = '{$workplacesInfoDataThis['address']}' LIMIT 1");
													$placesLivingMapsDataCheck = mysqli_num_rows($placesLivingMapsDataQuery);
													if ($placesLivingMapsDataCheck == 1) {
														$wall_['about']['live.code'] = mysqli_fetch_assoc($placesLivingMapsDataQuery)['code'];
														if ($wall_['about']['live.code'] != null) {
															$_maps = new maps;
															$placesLivingMapsData = $_maps->places(true, array("type" => "get", "rows" => "`address`, `location`, `name`, `thumbnail`", "code" => $wall_['about']['live.code']));
															if ($placesLivingMapsData['return'] == true) {
																$workplacesInfoDataThis['address.value'] = "
																<div class='textmain _tt-dbl cr-pointer' dblclick='".json_encode(array("type" => "notification", "timeout" => "5000", "data" => array("type" => "1", "title" => $_language->text('information_about_places', 'ucfirst'), "description" => array("type" => "info::places", "data" => $placesLivingMapsData['data']))))."'><i class='places'></i><small>{$_language->text('address', 'ucfirst')}:  {$placesLivingMapsData['data']['address']}</small></div>
																";
															}else {
																//.
															}
														}else {
															//.
														}
													}else {
														//.
													}
												}else {
													$workplacesInfoDataThis['address.value'] = "
													<div class='textmain'><i class='places'></i><small>{$_language->text('address', 'ucfirst')}:  {$workplacesInfoDataThis['address']}</small></div>
													";
												}
											}else {
												$workplacesInfoDataThis['address.value'] = null;
											}
											$codeInfoTab['workplaces'] .= "
											<div class='value oe'>
												<div class='texttitle'><i class='company'></i><span class='_tt-bk e cr-pointer' title='{$workplacesInfoDataThis['title.value']}'>{$workplacesInfoDataThis['title.value']}</span></div>
												<div class='textmain'><span>{$workplacesInfoDataThis['description']}</span></div>
												{$workplacesInfoDataThis['work.value']}
												{$workplacesInfoDataThis['awards.value']}
												{$workplacesInfoDataThis['address.value']}
												{$workplacesInfoDataThis['time.value']}
											</div>
											";
										}else {
											//.
										}
									}
								}else {
									//.
								}
								if (!isset($codeInfoTab['workplaces']) || $codeInfoTab['workplaces'] == null) {
									$codeInfoTab['workplaces'] = "
									<div class='value null'>
										<span>".preg_replace("/(_____)/", $wall_['about']['lastname'], $_language->text('wall_info_workplaces_null', 'ucfirst'))."</span>
									</div>
									";
								}
								if (isset($wall_['about']['live']) && $wall_['about']['live'] != null) {
									if (is_numeric($wall_['about']['live'])) {
										$placesLivingMapsDataQuery = mysqli_query($_db->port('beta'), "SELECT `code` FROM `maps_places` WHERE `id` = '{$wall_['about']['live']}' LIMIT 1");
										$placesLivingMapsDataCheck = mysqli_num_rows($placesLivingMapsDataQuery);
										if ($placesLivingMapsDataCheck == 1) {
											$wall_['about']['live.code'] = mysqli_fetch_assoc($placesLivingMapsDataQuery)['code'];
											if (isset($wall_['about']['live.code']) && $wall_['about']['live.code'] != null) {
												$_maps = new maps;
												$placesLivingMapsData = $_maps->places(true, array("type" => "get", "rows" => "*", "code" => $wall_['about']['live.code']));
												if ($placesLivingMapsData['return'] == true) {
													$codeInfoTab['places'] .= "
													<div class='value to'>
														<div class='texttitle'><span>{$_language->text('live', 'ucfirst')}</span></div>
														<div class='textmain'><span>{$placesLivingMapsData['data']['name']}</span></div>
														<div class='texttitle'></div>
														<div class='textmain'><small>{$placesLivingMapsData['data']['address']}</small></div>
														<div class='imgMaps'><img src='".preg_replace("/(markers\=color\:red)/", "markers=color:gray", preg_replace("/(zoom=15)/", "zoom=14", preg_replace("/(400x400)/", "324x248", $placesLivingMapsData['data']['thumbnail'])))."' alt='{$placesLivingMapsData['data']['name']} - {$placesLivingMapsData['data']['address']}' /></div>
													</div>
													";
												}else {
													//.
												}
											}else {
												//.
											}
										}else {
											//.
										}
									}else {
										$codeInfoTab['places'] .= "
										<div class='value to'>
											<div class='texttitle'><span>{$_language->text('live', 'ucfirst')}</span></div>
											<div class='textmain'><span>{$wall_['about']['live']}</span></div>
											<div class='texttitle'></div>
											<div class='textmain'><small>{$_language->text('unknown_coordinates', 'ucfirst')}</small></div>
										</div>
										";
									}
								}
								if (isset($wall_['about']['country']) && $wall_['about']['country'] != null) {
									if (is_numeric($wall_['about']['country'])) {
										$placesCountryMapsDataQuery = mysqli_query($_db->port('beta'), "SELECT `code` FROM `maps_places` WHERE `id` = '{$wall_['about']['country']}' LIMIT 1");
										$placesCountryMapsDataCheck = mysqli_num_rows($placesCountryMapsDataQuery);
										if ($placesCountryMapsDataCheck == 1) {
											$wall_['about']['country.code'] = mysqli_fetch_assoc($placesCountryMapsDataQuery)['code'];
											if (isset($wall_['about']['country.code']) && $wall_['about']['country.code'] != null) {
												if (isset($wall_['about']['live.code']) && $wall_['about']['country.code'] == $wall_['about']['live.code']) {
													$codeInfoTab['places'] .= "
														<div class='value to'>
															<div class='texttitle'><span>{$_language->text('country', 'ucfirst')}</span></div>
															<div class='textmain null'><span>".preg_replace("/(_____)/", $wall_['about']['lastname'], $_language->text('country_like_living', 'ucfirst'))."</span></div>
														</div>
														";
												}else {
													$_maps = new maps;
													$placesCountryMapsData = $_maps->places(true, array("type" => "get", "rows" => "*", "code" => $wall_['about']['country.code']));
													if ($placesCountryMapsData['return'] == true) {
														$codeInfoTab['places'] .= "
														<div class='value to'>
															<div class='texttitle'><span>{$_language->text('country', 'ucfirst')}</span></div>
															<div class='textmain'><span>{$placesCountryMapsData['data']['name']}</span></div>
															<div class='texttitle'></div>
															<div class='textmain'><small>{$placesCountryMapsData['data']['address']}</small></div>
															<div class='imgMaps'><img src='".preg_replace("/(markers\=color\:red)/", "markers=color:gray", preg_replace("/(zoom=15)/", "zoom=14", preg_replace("/(400x400)/", "324x248", $placesCountryMapsData['data']['thumbnail'])))."' alt='{$placesCountryMapsData['data']['name']} - {$placesCountryMapsData['data']['address']}' /></div>
														</div>
														";
													}else {
														//.
													}
												}
											}else {
												//.
											}
										}else {
											//.
										}
									}else {
										$codeInfoTab['places'] .= "
										<div class='value to'>
											<div class='texttitle'><span>{$_language->text('country', 'ucfirst')}</span></div>
											<div class='textmain'><span>{$wall_['about']['country']}</span></div>
											<div class='texttitle'></div>
											<div class='textmain'><small>{$_language->text('unknown_coordinates', 'ucfirst')}</small></div>
										</div>
										";
									}
								}
								if (!isset($codeInfoTab['places']) || $codeInfoTab['places'] == null) {
									$codeInfoTab['places'] = "
									<div class='value null'>
										<span>".preg_replace("/(_____)/", $wall_['about']['lastname'], $_language->text('wall_info_places_null', 'ucfirst'))."</span>
									</div>
									";
								}
								if (isset($wall_['guy']) && $wall_['guy'] == 1) {
									$codeInfoTab['edit'] = "<i class='editButton _tt-bk w' title='<small>{$_language->text('click_to_edit', 'ucfirst')}</small>'></i>";
								}else {
									$codeInfoTab['edit'] = "";
								}
								print "
								<div id='tabInfo'>
									<div class='rows'>
										<div class='introduction tab boxGrid'>
											<div class='title'>
												<span>{$_language->text('introduction', 'ucfirst')}</span>
												<div class='action'>{$codeInfoTab['edit']}</div>
											</div>
											<div class='content'>{$codeInfoTab['introduction']}</div>
										</div>
										<div class='about tab boxGrid'>
											<div class='title'>
												<span>{$_language->text('about', 'ucfirst')}</span>
												<div class='action'>{$codeInfoTab['edit']}</div>
											</div>
											<div class='content'>{$codeInfoTab['about']}</div>
										</div>
										<div class='contact tab boxGrid'>
											<div class='title'>
												<span>{$_language->text('contact', 'ucfirst')}</span>
												<div class='action'>{$codeInfoTab['edit']}</div>
											</div>
											<div class='content'>{$codeInfoTab['contact']}</div>
										</div>
									</div>
									<div class='rows'>
										<div class='education tab boxGrid'>
											<div class='title'>
												<span>{$_language->text('education', 'ucfirst')}</span>
												<div class='action'>{$codeInfoTab['edit']}</div>
											</div>
											<div class='content'>{$codeInfoTab['education']}</div>
										</div>
										<div class='workplaces tab boxGrid'>
											<div class='title'>
												<span>{$_language->text('workplaces', 'ucfirst')}</span>
												<div class='action'>{$codeInfoTab['edit']}</div>
											</div>
											<div class='content'>{$codeInfoTab['workplaces']}</div>
										</div>
										<div class='places tab boxGrid'>
											<div class='title'>
												<span>{$_language->text('places', 'ucfirst')}</span>
												<div class='action'>{$codeInfoTab['edit']}</div>
											</div>
											<div class='content'>{$codeInfoTab['places']}</div>
										</div>
									</div>
								</div>
								";
							}else if ($wall_['tab'] == "timeline") {
								if (isset($_SESSION['wallTimelineType']) && is_string($_SESSION['wallTimelineType'])) $wallTimelineType = $_SESSION['wallTimelineType']; else $wallTimelineType = null;
								if ($wallTimelineType != null) {
									foreach ($wallTimelineType as $key => $value) {
										if ($wallTimelineType[$key] == $wall_['id']) {
											$typeGetTimeline = 1;
											break;
										}else {
											continue;
										}
									}
									if (!isset($typeGetTimeline)) {
										$typeGetTimeline = 0;
									}
								}else {
									$typeGetTimeline = 0;
								}
								if ($typeGetTimeline == 0) {
									$sqlGetTimeline = "SELECT * FROM `status` WHERE `author.type` = 'user' AND `author.id` = '{$wall_['id']}'ORDER BY `id` DESC LIMIT 5";
									$introTypeGetTimeline = "";
								}else if ($typeGetTimeline == 1) {
									$sqlGetTimeline = "SELECT * FROM `status` WHERE `author.type` = 'user' AND `author.id` = '{$wall_['id']}'ORDER BY `id` DESC LIMIT 5";
									$introTypeGetTimeline = "";
								}else {
									$introTypeGetTimeline = null;
								}
								$numStatusTimeline = mysqli_num_rows(mysqli_query($_db->port('beta'), $sqlGetTimeline));
								if ($numStatusTimeline == 0) {
									//.
									$codeStatusTimeline = "
									<div class='notify inFeeds boxGrid null'>
										<div class='icon'><i></i></div>
										<div class='text'><span>".preg_replace("/(_____)/", $wall_['about']['lastname'], $_language->text('timeline_is_null', 'ucfirst'))."</span></div>
									</div>
									";
								}else {
									//.
									$_feed = new feed;
									$codeStatusTimeline = $_feed->status_get(array("return" => "html", "class" => "status", "query" => $sqlGetTimeline, "media" => true))['data'];
								}
								$feedRequire = json_encode(array("port" => array("type" => "wall", "require" => $wall_['id'])));
								print "
								<div id='tabTimeline'>
									<div id='gFeeds' class='thisFeeds feed timeline' feed='{$feedRequire}'>
										<div class='info inFeeds boxGrid' class='thisTotal'>
											<div class='title'>
												<span>{$_language->text('timeline', 'ucfirst', false)}: {$wall_['title_raw']}</span>
											</div>
											<div class='description'>
												<span>{$introTypeGetTimeline}.</span>
											</div>
										</div>
										{$codeStatusTimeline}
										<link rel='stylesheet' href='{$_tool->links("source/css/templates/feed.css")}' />
										<script src='{$_tool->links("source/js/ext/feed.js")}' type='text/javascript'></script>
									</div>
								</div>
								";
								print "
								<div id='boxQuickInfo'>
									<div class='box boxGrid'>
										<div class='title'><span>{$_language->text('info', 'ucfirst')}</span></div>
										<div class='content'></div>
									</div>
									<div class='box boxGrid'>
										<div class='title'><span>{$_language->text('friends', 'ucfirst')}</span></div>
										<div class='content'></div>
									</div>
									<div class='box boxGrid'>
										<div class='title'><span>{$_language->text('photos', 'ucfirst')}</span></div>
										<div class='content'></div>
									</div>
									<div class='box boxGrid'>
										<div class='title'><span>{$_language->text('music', 'ucfirst')}</span></div>
										<div class='content'></div>
									</div>
									<div class='box boxGrid'>
										<div class='title'><span>{$_language->text('videos', 'ucfirst')}</span></div>
										<div class='content'></div>
									</div>
									<div class='box boxGrid'>
										<div class='title'><span>{$_language->text('places', 'ucfirst')}</span></div>
										<div class='content'></div>
									</div>
								</div>
								";
							}else if ($wall_['tab'] == "friends") {
								$codeFriendsTab['title'] = null;
								$wall_friends_typeAllow = [];
								if ($wall_['about']['private.info.friends'] >= $wall_['guy']) {
									$wall_friends_typeAllow[] = "all_friends";
									$codeFriendsTab['title'] .= "<div class='rows all_friends'><a href='{$wall_['link']}/friends/all_friends'>{$_language->text('all_friends', 'ucfirst')}</a></div>";
									if (isset($g_user['mode']['type'], $g_user['mode']['id']) && ($g_user['mode']['type'] == "user" && $wall_['id'] != $g_user['mode']['id'])) {
										$wall_friends_typeAllow[] = "suggest";
										$codeFriendsTab['title'] .= "<div class='rows suggest'><a href='{$wall_['link']}/friends/suggest'>{$_language->text('people_may_know', 'ucfirst')}</a></div>";
									}
								}
								if (isset($g_user['mode']['type'], $g_user['mode']['id']) && ($g_user['mode']['type'] == "user" && $wall_['id'] != $g_user['mode']['id'])) {
									$wall_friends_typeAllow[] = "mutual_friends";
									$codeFriendsTab['title'] .= "<div class='rows mutual_friends'><a href='{$wall_['link']}/friends/mutual_friends'>{$_language->text('mutual_friends', 'ucfirst')}</a></div>";
								}
								if (isset($wall_['about']['live'], $g_user['mode']['type']) && $wall_['about']['live'] != null && $g_user['mode']['type'] == "user") {
									$wall_friends_typeAllow[] = "live";
									$codeFriendsTab['title'] .= "<div class='rows live'><a href='{$wall_['link']}/friends/live'>{$_language->text('live', 'ucfirst')}</a></div>";
								}
								if (isset($wall_['about']['country'], $g_user['mode']['type']) && $wall_['about']['country'] != null && $g_user['mode']['type'] == "user") {
									$wall_friends_typeAllow[] = "country";
									$codeFriendsTab['title'] .= "<div class='rows country'><a href='{$wall_['link']}/friends/country'>{$_language->text('country', 'ucfirst')}</a></div>";
								}
								$workplacesInfoGet = $_user->getWorkplaces(array("id" => $wall_['id'], "rows" => "`id`", "limit" => "LIMIT 1"));
								if (isset($workplacesInfoGet['return'], $workplacesInfoGet['data'], $g_user['mode']['type']) && $workplacesInfoGet['return'] == true && $workplacesInfoGet['data'] != null && is_array($workplacesInfoGet['data']) && $g_user['mode']['type'] == "user") {
									$wall_friends_typeAllow[] = "workplaces";
									$codeFriendsTab['title'] .= "<div class='rows workplaces'><a href='{$wall_['link']}/friends/workplaces'>{$_language->text('workplaces', 'ucfirst')}</a></div>";
								}
								$educationInfoGet = $_user->getEducation(array("id" => $wall_['id'], "rows" => "`id`", "limit" => "LIMIT 1"));
								if (isset($educationInfoGet['return'], $educationInfoGet['data'], $g_user['mode']['type']) && $educationInfoGet['return'] == true && $educationInfoGet['data'] != null && is_array($educationInfoGet['data']) && $g_user['mode']['type'] == "user") {
									$wall_friends_typeAllow[] = "school";
									$codeFriendsTab['title'] .= "<div class='rows school'><a href='{$wall_['link']}/friends/school'>{$_language->text('school', 'ucfirst')}</a></div>";
								}
								if ($wall_friends_type == null) {
									$wall_friends_type = $wall_friends_typeAllow[0];
								}else {
									//.
								}
								if (!in_array($wall_friends_type, $wall_friends_typeAllow)) {
									//.
								}else {
									print "
									<div id='tabFriends' class='boxGrid'>
										<div class='title'>
											{$codeFriendsTab['title']}
										</div>
										<div class='content'>
											<div class='list'></div>
										</div>
										<script src='{$_tool->links('source/js/wall.friends.js')}' type='text/javascript'></script>
										<script type='text/javascript'>$('#wallContent > #tabFriends > .title > .rows.{$wall_friends_type}').click();</script>
									</div>
									";
								}
							}
							?>
					</div>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
			<script src="<?php print $_tool->links("source/js/wall.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>
	</body>
</html>