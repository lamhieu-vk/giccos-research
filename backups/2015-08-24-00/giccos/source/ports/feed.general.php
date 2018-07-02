<?php
header($_parameter->get('contentType_html.utf8'));
//print_r($_SESSION['x']); die;
//print_r($_tool->links('photos/raw/qr/500/'.$_tool->hash('encode', "fuck", $_parameter->get('hash_photos_qr'))));
?>
<!DOCTYPE html>
<html lang="<?php print $g_client['language']['code']; ?>" id="giccos" class="feed general">
	<head>
		<title><?php print $_language->text('pages_feed_general.title', 'ucwords'); ?></title>
		<link href="<?php print $_tool->links("source/css/basic.css"); ?>" rel="stylesheet" />
		<link href="<?php print $_tool->links("source/css/feed.css"); ?>" rel="stylesheet" />
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
					<?php
					require_once ("templates/box_ask.php");
					require_once ("templates/editor.php");
					$statusListOptions = array(
						"guy" => $g_user['mode'],
						"type" => "general",
						"method" => $feed_['options']['method'],
						"sort" => ">",
						"id" => 0,
						"order" => "new",
						"limit" => 5
					);
					$statusList = $_feed->status_list($statusListOptions);
					if (isset($statusList['return'], $statusList['count'], $statusList['data']) && $statusList['return'] == true) {
						$feedCode = null;
						if ($statusList['count'] == 0 || count($statusList['data']) == 0) {
							$feedCode = "<div class='null inFeeds boxGrid'> <div class='title'><span>{$_language->text('inFeeds_null_title_text', 'ucfirst')}</span></div> <div class='description'><span>{$_language->text('inFeeds_null_notify_text', 'ucfirst')}.</span></div> </div>";
						}else {
							$listStatusId = array();
							foreach ($statusList['data'] as $key => $idThis) {
								$listStatusId[$idThis] = array("media" => true, "comment" => true);
							}
							$statusFetch = $_feed->status_fetch(array("guy" => $g_user['mode'], "id" =>  $listStatusId));
							if (isset($statusFetch['return'], $statusFetch['count'], $statusFetch['data']) && $statusFetch['return'] == true) {
								foreach ($statusFetch['data'] as $i => $statusArrThis) {
									$statusPrintCode = $_feed->status_printcode(array("guy" => $g_user['mode'], "status" => $statusArrThis, "classname" => "status inFeeds"));
									if (isset($statusPrintCode['return'], $statusPrintCode['code']) && $statusPrintCode['return'] == true) {
										$feedCode .= $statusPrintCode['code'];
									}
								}
							}else {
								//.
							}
						}
						$feedCode = "
						<div id='gFeeds' class='thisFeeds feed' feed='".json_encode($feed_['options'])."'>
							<div class='info inFeeds boxGrid' class='thisTotal'>
								<div class='title'> <span>".$_language->text('news_feed', 'ucfirst').": ..</span> </div>
								<div class='description'> <span>".$_language->text('pages_feed.quickdescription', 'ucfirst').".</span> </div>
							</div>
							".$feedCode."
							<link rel='stylesheet' href='{$_tool->links("source/css/templates/feed.css")}' />
							<script src='{$_tool->links("source/js/ext/feed.js")}' type='text/javascript'></script>
						</div>
						";
						print $feedCode;
					}else {
						//.
					}
					/*if (isset($feed_['query']['code'])) {
						$getFeed = $_feed->status_get(array("return" => "html", "class" => "status", "query" => $feed_['query']['code'], "media" => true, "guy" => $g_user['mode']));
						if (isset($getFeed['return'], $getFeed['count'], $getFeed['data']) && $getFeed['return'] == true) {
							if ($getFeed['count'] == 0) {
								$feed_['content']['code'] = "<div class='null inFeeds boxGrid'> <div class='title'><span>{$_language->text('inFeeds_null_title_text', 'ucfirst')}</span></div> <div class='description'><span>{$_language->text('inFeeds_null_notify_text', 'ucfirst')}.</span></div> </div>";
							}else {
								$feed_['content']['code'] = $getFeed['data'];
							}
						}else {
							$feed_['content']['code'] = null;
						}
					}else {
						$feed_['content']['code'] = null;
					}
					print "
					<div id='gFeeds' class='thisFeeds feed' feed='".json_encode($feed_['content']['this'])."'>
						<div class='info inFeeds boxGrid' class='thisTotal'>
							<div class='title'>
								<span>{$_language->text('news_feed', 'ucfirst')}: {$feed_['content']['from']}</span>
							</div>
							<div class='description'>
								<span>{$_language->text('pages_feed.quickdescription', 'ucfirst')} {$feed_['content']['from']}.</span>
							</div>
						</div>
						{$feed_['content']['code']}
						<link rel='stylesheet' href='{$_tool->links("source/css/templates/feed.css")}' />
						<script src='{$_tool->links("source/js/ext/feed.js")}' type='text/javascript'></script>
					</div>
					";
					$feed_ = null;*/
					?>
				</div>
				<div id="rightBox">
					<?php require_once ("templates/box_suggest.php"); ?>
				</div>
			</div>
			<?php require_once ("templates/sidebar.php"); ?>
			<script src="<?php print $_tool->links("source/js/feed.general.js"); ?>" type="text/javascript"></script>
		</div>
		<div id="gInclude"></div>
		<div id="gSource">
			<link href="<?php print $_tool->links("source/css/ext/mediaplayer.css"); ?>" rel="stylesheet" />
			<script src="<?php print $_tool->links("source/js/ext/mediaplayer.js"); ?>" type="text/javascript"></script>
		</div>



		<div id="boxPopup" style="display: block;">
			<div class="leftBox">
				<div class="navBar top">
					<div class="rows left">
						<div class="li close">
							<i></i> <span>Close</span>
						</div>
					</div>
					<div class="rows right">
						<div class="li link">
							<i></i> <span>Links</span> <div class="tabOn"><input type="text" value="https://soundcloud.com/stream" /></div>
						</div>
						<div class="li embed">
							<i></i> <span>Embed</span> <div class="tabOn"><textarea type="text"><iframe width="410" height="100" src="http://mp3.zing.vn/embed/song/IWABZ9OD?autostart=false" frameborder="0" allowfullscreen="true"></iframe></textarea></div>
						</div>
						<div class="li download _tt-we n" title="download this file">
							<i></i> <span>Download</span>
						</div>
					</div>
				</div>
				<div class="mainBox">
					<div class="content">
						<!-- 
						type: image;
						<img class="ts" src="http://i.huffpost.com/gen/1370263/thumbs/o-JACK-THE-RIPPER-facebook.jpg">
						-->
						<!--
						type: video;
						-->
						<video id="xxxxx" class="gplayer-skin v-simple video ts" width="630" height="360"></video>
					</div>
				</div>
				<div class="navBar bottom">
					<div class="rows left"></div>
					<div class="rows center">
						<div class="li info">
							<div class="button prev"><i class="fa fa-chevron-left"></i></div>
							<div class="button text">
								<span>1 / 2</span>
								<div class="list">
									<div class="bt prev"> <i></i> </div>
									<div class="ml">
										<div class="ts" style="background-image: url(http://i.huffpost.com/gen/1370263/thumbs/o-JACK-THE-RIPPER-facebook.jpg);"></div>
										<div class="ts" style="background-image: url(http://i.huffpost.com/gen/1370263/thumbs/o-JACK-THE-RIPPER-facebook.jpg);"></div>
										<div class="ts active" style="background-image: url(http://i.huffpost.com/gen/1370263/thumbs/o-JACK-THE-RIPPER-facebook.jpg);"></div>
									</div>
									<div class="bt next"> <i></i> </div>
								</div>
							</div>
							<div class="button next"><i class="fa fa-chevron-right"></i></div>
						</div>
					</div>
					<div class="rows right">
						<div class="li views _tt-we s" title="<?php print $_language->text('total_views', 'strtolower'); ?>">
							<i></i> <span>311.135</span>
						</div>
					</div>
				</div>
			</div>
			<div class="rightBox"></div>
		</div>
		<script type="text/javascript">
		$(document).ready(function(){
			$("body").css('overflow-y', 'hidden');
			var setHeightMainbox = function () {
				var leftBox = $("#boxPopup > .leftBox");
				var mainBox = leftBox.children(".mainBox");
				var navBar = leftBox.children(".navBar");
				mainBox.animate({
					'marginTop': (leftBox.height() - (navBar.innerHeight() * 2)) / 2 / 2 + 'px',
					'height': (leftBox.height() - (navBar.innerHeight() * 2)) / 2 + 'px'
				}, 500, function () {
					mainBox.animate({
						'marginTop': 0,
						'height': (leftBox.height() - (navBar.innerHeight() * 2)) / 1 + 'px'
					}, 500);
				});
				navBar.find(".rows.center > .li.info > .button.text > .list > .ml > .ts").each(function (i) {
					$(this).animate({
						'left': i * 65 + 'px'
					});
				});
			};
			setHeightMainbox();
			$(window).bind('resizeEnd', setHeightMainbox);
			var options = {
				'src': [
					{
						'text': 'HD',
						'mime': 'video/mp4',
						'source': 'http://localhost/giccos/videos/raw/518393a80caec4dffdc63795e9d1043e'
					},
					{
						'default': true,
						'text': 'VGA',
						'mime': 'video/mp4',
						'source': 'http://localhost/giccos/videos/raw/d3cff698019e21648ce2373673c419f0'
					},
					{
						'text': 'QVGA',
						'mime': 'video/mp4',
						'source': 'http://localhost/giccos/videos/raw/d8702a50ec2b7d93b522caa50f0f4bdf'
					}
				],
				'controls': true,
				'autoplay': false,
				'preload': 'auto',
				'poster': 'http://i.huffpost.com/gen/1370263/thumbs/o-JACK-THE-RIPPER-facebook.jpg',
				'plugins': {
					/*
					'information': {
						'active': true,
						'auto': false,
						'info': {
							'name': 'sdf asdf asd fasd sd',
							'share': {
								'link': 'x'
							}
						}
					},
					*/
					'brandbox': {
						'title': {
							'text': 'Dan ong cung muon khoc',
							'link': 'x'
						},
						'logo': {
							'image': 'https://yt3.ggpht.com/-uqgQQOw-8lk/AAAAAAAAAAI/AAAAAAAAAAA/78wjlCTvfxU/s88-c-k-no/photo.jpg',
							'link': 'http://localhost/giccos/wall/lamhieu'
						},
						'author': {
							'name': 'Lam Hieu',
							'tag': 'lamhieu',
							'link': 'http://localhost/giccos/wall/lamhieu'
						}
					},
					'loop': {
						'active': true
					},
					'progresstips': {
						'active': true
					},
					// 'pointtag': '<?php print $_tool->hash('encode', '0d54f66e66fb7b8c4a2569216808e06f', $_parameter->get('hash_videos_pointtag_check')); ?>'
					'pointtag': '0d54f66e66fb7b8c4a2569216808e06f'
				}
			};
			setTimeout(function(){
				var demo_mediaPlayerThis = gplayer("#xxxxx", options);
			});
		});
		</script>



	</body>
</html>