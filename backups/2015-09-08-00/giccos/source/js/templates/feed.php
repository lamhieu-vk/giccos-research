var feed_status_compress_content = function () {
	var status = $(".status.inFeeds[status]");
	var statusContent = status.find(".body .text");
	status.each(function () {
		var thisStatus = $(this);
		var thisContent = thisStatus.find(".body .text");
		var limitHeight = 300;
		if (thisStatus.attr('compress-content') != "true") {
			thisStatus.attr('compress-content', 'true');
			if (thisContent.height() > limitHeight && thisContent.children("span").length > 0) {
				var oldText = thisContent.children("span").html();
				var oldHeight = thisContent.height();
				var charArr = oldText.split(" ");
				var charLength = charArr.length;
				var charShow = parseInt(charLength / (oldHeight / limitHeight));
				var newText = "";
				for (i = 0; i < charShow - 1; i++) {
					newText = newText + ' ' + charArr[i];
				}
				thisContent.children("span").html(newText + '... ');
				var newHeight = thisContent.height();
				thisStatus.hover(function () {
					thisContent.bind('click', function () {
						thisContent.animate({
							'height': oldHeight
						}, 100, function () {
							thisContent.children("span").html(oldText);
							thisStatus.addClass('compress-content-disabled');
						});
					});
					var t = setTimeout(function() {
						if (thisStatus.attr('compress-content-notify') != "true") {
							thisStatus.attr('compress-content-notify', 'true');
							popupNotification ({type: 'tips', title: '<?php print $_language->text('tips', 'ucfirst'); ?>', description: '<?php print $_language->text('click_disable_collapse_contents','ucfirst'); ?>.', timeout: 4000});
							setTimeout(function () {
								thisStatus.removeAttr('compress-content-notify');
							}, 10000);
						}
					}, 500);
					$(this).data('timeout', t);
				}, function () {
					if (thisStatus.hasClass('compress-content-disabled')) {
						return false;
					}
					clearTimeout($(this).data('timeout'));
					thisContent.animate({
						'height': newHeight
					}, 200, function () {
						thisContent.children("span").html(newText + '... ');
					});
				});
			}
		}
	});
};
var feed_status_embed = function () {
	var status = $(".status.inFeeds[status]");
	var mediaLink = status.find(".body .media.LinkBox > .link[media='link'][media-info]");
	mediaLink.each(function(){
		var thisLink = $(this);
		if (typeof thisLink.attr('media-embed') == "string" && typeof JSON.parse(thisLink.attr('media-embed')) == "object") {
			var linkInfo = JSON.parse(thisLink.attr('media-embed'));
			if (isset(linkInfo) && typeof linkInfo == "object") {
				if (isset(linkInfo['code']) && typeof linkInfo['code'] == "string") {
					thisLink.removeAttr('direct');
					thisLink.bind('click', function () {
						thisLink.replaceWith(linkInfo['code']);
					});
				}
			}
		}else if (typeof thisLink.attr('media-info') == "string" && typeof JSON.parse(thisLink.attr('media-info')) == "object") {
			var linkInfo = JSON.parse(thisLink.attr('media-info'));
			if (isset(linkInfo) && typeof linkInfo == "object") {
				var hostAllow = function (host, sub) {
					if (!isset(host)) {
						host = "";
					}
					if (!isset(sub)) {
						sub = "";
					}
					if (isset(host) && typeof host == "string" && (inArray(host, ["dailymotion", "dailymotion.com"]) || inArray(host, ["youtube", "youtube.com", "youtu.be"]) || inArray(host, ["vimeo", "vimeo.com"]) || inArray(host, ["vine", "vine.co"]) || inArray(host, ["flickr", "flickr.com"]) || inArray(host, ["myspace", "myspace.com"]) || inArray(host, ["ted", "ted.com"]) || inArray(host, ["nhaccuatui", "nhaccuatui.com"]) || (inArray(host, ["zing.vn"]) && inArray(sub, ["tv", "mp3"])) || inArray(host, ["clipvn", "clip.vn"]) || inArray(host, ["vid", "vid.me"]))) {
						return true;
					}else {
						return false;
					}
				};
				if (isset(linkInfo['url']) && typeof linkInfo['url'] == "string" && (new RegExp(<?php print $_parameter->get('regex_sites_url'); ?>).test(linkInfo['url']) || new RegExp(<?php print $_parameter->get('regex_sites_giccos_direct'); ?>).test(linkInfo['url'])) && typeof linkInfo['host'] == "string" && hostAllow(linkInfo['host'], linkInfo['sub'])) {
					thisLink.attr('direct-disabled', 'true').bind('click', function (e) {
						stopEvent(e);
						var getDisplayContent = function () {
							if (thisLink.attr('handing-link') != "true") {
								popupNotification ({type: 'notification', title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('content_from_site_loading', 'ucfirst'); ?>', timeout: 3000});
								thisLink.attr('handing-link', "true");
								$.ajax({
									url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
									type: "GET",
									data: {'port': 'sites', 'type': 'info', 'action': 'embed', 'url': linkInfo['url']},
									dataType: "json",
									success: function(data) {
										console.log(data);
										if (isset(data['return'], data['data']) && data['return'] === true) {
											if (isset(data['data']['embed']) && typeof data['data']['embed'] == "object" && countArr(data['data']['embed']) > 0) {
												if (isset(data['data']['embed']['code']) && typeof data['data']['embed']['code'] == "string") {
													thisLink.replaceWith(data['data']['embed']['code']);
													popupNotification ({type: 'notification', title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('pushed_content_from_site', 'ucfirst'); ?>', global: true, audio: true, timeout: 5000});
												}else {
													popupNotification ({type: 'warning', title: '<?php print $_language->text("error", "ucfirst"); ?>', description: '<?php print $_language->text('content_notfound_may_error', 'ucfirst'); ?>. <br> <?php print $_language->text('click_open_site', 'ucfirst'); ?>.', callback: openSite, global: true, audio: true, timeout: 5000});
												}
											}else {
												popupNotification ({type: 'warning', title: '<?php print $_language->text("error", "ucfirst"); ?>', description: '<?php print $_language->text('content_notfound_may_error', 'ucfirst'); ?>. <br> <?php print $_language->text('click_open_site', 'ucfirst'); ?>.', callback: openSite, global: true, audio: true, timeout: 5000});
											}
										}else {
											popupNotification ({type: 'warning', title: '<?php print $_language->text("error", "ucfirst"); ?>', description: '<?php print $_language->text('content_notfound_may_error', 'ucfirst'); ?>. <br> <?php print $_language->text('click_open_site', 'ucfirst'); ?>.', callback: openSite, global: true, audio: true, timeout: 5000});
										}
									}
								}).fail(function() {
									setTimeout(function() {
										thisLink.removeAttr('handing-link');
									}, 100);
								}).done(function() {
									setTimeout(function() {
										thisLink.removeAttr('handing-link');
									}, 100);
								});
							}
						};
						var openSite = function () {
							thisLink.addClass('compress-content-disabled');
							window.open(linkInfo['url'], '_blank');
						};
						popupAlert({
							'title': '<?php print $_language->text('notification', 'ucfirst'); ?>', 
							'content': '<?php print $_language->text('question_display_content_embed', 'ucfirst'); ?>',
							'escActive': true,
							'actionTrue': '<?php print $_language->text('display_content', 'ucfirst'); ?>',
							'callbackTrue': getDisplayContent,
							'actionFalse': '<?php print $_language->text('open_this_site', 'ucfirst'); ?>', 
							'callbackFalse': openSite
						});
					});
				}
			}
		}
	});
};
var feed_status_arrangePhotos = function () {
	$(".status.inFeeds[status]").each(function(i) {
		var status = $(this),
			type = JSON.parse(status.attr('status'))['type'],
			body = status.children(".body"),
			selector = body.find(".media.PhotosBox"),
			selectorW = selector.width() - 2,
			div = selector.find("[media='photos']"),
			photosNumber = div.length;
		if (photosNumber == 1) {
			div.width(selectorW).height(selectorW);
		}else if (photosNumber == 2) {
			div.height(selectorW / 5 * 4).width(selectorW / 2 - 3);
			div.each(function(i) {
				var div = $(this);
				if (i % 2 === 0) {
					div.css('margin-right','1px');
				}else if (i === 1) {
					div.css('margin-left','1px');
				}
			});
		}else if (photosNumber >= 3) {
			var iLoop = (photosNumber - (photosNumber % 3)) / 3,
				iObj = [];
			for (i = 1;i <= iLoop;i++) {
				iObj.push(i * 3);
			}
			if (photosNumber % 3 === 0 || (photosNumber % 3 == 2 && Object.keys(iObj).length > 1)) {
				div.each(function(i) {
					var div = $(this);
					div.height(selectorW / 5 * 3);
					i++;
					if (inArray(i, iObj) >= 0) {
						div.width(selectorW - 2).css({'margin-top':'5px', 'margin-bottom': '5px'});
						if (i < photosNumber) {
							div.css('margin-bottom','5px');
						}
					}else {
						div.width(selectorW / 2 - 3);
						if (i % 2 === 0) {
							div.css('margin-right','1px');
						}else if (i === 1) {
							div.css('margin-left','1px');
						}
					}
				});
			}else if (photosNumber % 3 == 1) {
				div.each(function(i) {
					var div = $(this);
					div.height(selectorW / 5 * 3);
					if (i === 0 || $.inArray(i, iObj) >= 0) {
						div.width(selectorW - 2).css({'margin-top':'4px', 'margin-bottom':'4px'});
					}else {
						div.width(selectorW / 2 - 3);
					}
				});
			}else if (photosNumber % 3 == 2 && Object.keys(iObj).length == 1) {
				div.each(function(i) {
					var div = $(this);
					div.height(selectorW / 5 * 3);
					i++;
					if (i == 1 || i == 2) {
						div.width(selectorW / 2 - 3);
						if (i % 2 === 0) {
							div.css('margin-right','1px');
						}else if (i === 1) {
							div.css('margin-left','1px');
						}
					}else {
						div.width(selectorW / 3 - 3);
						if (i % 2 === 0) {
							div.css('margin-right','1px');
						}else if (i == 1) {
							div.css('margin-left','1px');
						}
						div.css('margin-top','5px');
					}
				});
			}
		}
	});
}
var feed_status_stats = function (object, callback) {
	if (!isset(object['id']) || !isset(object['rows']) || !isset(object['type'])) {
		return false;
	}
	if (!isset(callback)) {
		var callback = null;
	}
	var statusId = object['id'],
		statusRows = object['rows'],
		statusType = object['type'];
	var data = {'port': 'feed', 'type': 'status', 'action': 'stats', 'obj': {'id': statusId, 'rows': statusRows, 'type': statusType}};
	var requestStatus = $.ajax({
		url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
		type: "GET",
		dataType: "json",
		data: data,
		contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
		error: function () {
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('transmission_error', 'ucfirst'); ?>. <?php print $_language->text('please_try_agian', 'ucfirst'); ?>."});
		},
		success: function (data) {
			console.log(data);
			if (isset(data['return']) && data['return'] == true) {
				if (isset(data['data']) && Object.keys(data['data']).length > 0) {
					for (var i in data['data']) {
						var thisRow = data['data'][i];
						if (isset(thisRow['return']) && thisRow['return'] === true) {
							var status = $(".status.inFeeds[status][status-id='"+thisRow['id']+"']");
							var oldStatsFavorite = status.find("[status-stats-favorite]").text();
							if (oldStatsFavorite != thisRow['stats']['favorite']) {
								status.find("[status-stats-favorite]").fadeOut(function(){
									$(this).text(thisRow['stats']['favorite']).fadeIn()
								});
							}
							var oldStatsComment = status.find("[status-stats-comment]").text();
							if (oldStatsComment != thisRow['stats']['comment']) {
								status.find("[status-stats-comment]").fadeOut(function(){
									$(this).text(thisRow['stats']['comment']).fadeIn()
								});
							}
							var oldStatsShare = status.find("[status-stats-share]").text();
							if (oldStatsShare != thisRow['stats']['share']) {
								status.find("[status-stats-share]").fadeOut(function(){
									$(this).text(thisRow['stats']['share']).fadeIn()
								});
							}
							var oldStatsInvite = status.find("[status-stats-invite]").text();
							if (oldStatsInvite != thisRow['stats']['invite']) {
								status.find("[status-stats-invite]").fadeOut(function(){
									$(this).text(thisRow['stats']['invite']).fadeIn()
								});
							}
						}
					}
				}else {
					//.
				}
			}else {
				//.
			}
		}
	}).fail(callback).done(callback);
}
var feed_status_share = function () {
	$(".status.inFeeds[status]").each(function(){
		var status = $(this),
			shareButton = status.find("[status-action-share]");
		shareButton.bind('click', function(){
			var shareButton = $(this);
			if (shareButton.attr('handling-setup') != "true") {
				shareButton.attr('handling-setup', "true");
				var popupStatusAction = $("#popupStatusAction");
				if (popupStatusAction.length > 0) {
					popupStatusAction.find(".box > .title > .close").click();
				}
				var code = "<div id='popupStatusAction' status-share status-display="+JSON.parse(status.attr('status'))['display']+"> <div class='box'> <div class='title nowrap'> <span><?php print $_language->text('share_this_status', 'ucfirst'); ?></span> <i class='close' close></i> </div> <div class='main'> <div class='content'> <textarea class='ip_as' type='text' placeholder='<?php print $_language->text('feelings_about_it', 'ucfirst'); ?>'></textarea> </div> </div> <div class='options'> <div class='private'> <div class='view _tt-bk s' editor-push='private' private='' title='<small><?php print $_language->text('change_view_private', 'ucfirst'); ?></small>'></div> <div class='comment _tt-bk s' editor-push='private' private='' title='<small><?php print $_language->text('change_comment_private', 'ucfirst'); ?></small>'></div> <div class='share _tt-bk s' editor-push='private' private='' title='<small><?php print $_language->text('change_share_private', 'ucfirst'); ?></small>'></div> </div> <div class='action'> <div class='button true _bn_c-we'> <span><?php print $_language->text('done', 'ucfirst'); ?></span> </div> <div class='button false _bn_c-we'> <span><?php print $_language->text('cancel', 'ucfirst'); ?></span> </div> </div> </div> </div> </div>";
				$("body").append(code);
				var popupStatusAction = $("#popupStatusAction");
				var oldOverflow = $("body").css('overflow-y');
				popupStatusAction.hide().fadeIn(function(){
					$("body").css('overflow-y', 'hidden');
				});
				popupStatusAction.find(".box").boxPosition({"type": "center", "resize": true});
				autosize($("#popupStatusAction .ip_as"), {'shift': false});
				$("#popupStatusAction .ip_as").donetyping(function(){
					popupStatusAction.find(".box").boxPosition({"type": "center", "resize": false});
				});
				var buttonPrivate = popupStatusAction.find(".box > .options > .private");
				var privateView = buttonPrivate.children(".view").attr('private');
				if (!isset(privateView) || typeof privateView !== "number") {
					var privateView = 3;
				}
				var privateComment = buttonPrivate.children(".comment").attr('private');
				if (!isset(privateComment) || typeof privateComment !== "number") {
					var privateComment = 3;
				}
				var privateShare = buttonPrivate.children(".share").attr('private');
				if (!isset(privateShare) || typeof privateShare !== "number") {
					var privateShare = 3;
				}
				buttonPrivate.children(".view").choosePrivate({'type': 'status', 'id': privateView});
				buttonPrivate.children(".comment").choosePrivate({'type': 'status', 'id': privateComment});
				buttonPrivate.children(".share").choosePrivate({'type': 'status', 'id': privateShare});
				var actionButton = popupStatusAction.find(".box > .options > .action > .button");
				actionButton.bind('click', function(){
					if ($(this).hasClass("true")) {
						send();
					}else if ($(this).hasClass("false")) {
						popupStatusAction.fadeOut(function(){
							$("body").css('overflow-y', oldOverflow);
							$(this).remove();
						});
					}
				});
				popupStatusAction.find(".box > .title > .close").bind('click', function(){
					popupStatusAction.find(".box > .options > .action > .button.false").click();
				});
				$(document).bind('keyup', function(e) {
					var keycode = (e.keyCode ? e.keyCode : e.which);
					if (keycode == '27' && popupStatusAction.length > 0) {
						popupStatusAction.find(".box > .options > .action > .button.false").click();
					}
				});
				setTimeout(function(){
					shareButton.removeAttr('handling-setup');
				},100);
				setupTooltip();
			}
		});
	});
	function send () {
		var popupStatusAction = $("#popupStatusAction");
		if (popupStatusAction.attr('handling-send') != "true") {
			popupStatusAction.attr('handling-send', 'true');
			var dataStatus = {
				'type': 'status',
				'content': popupStatusAction.find(".box > .main > .content textarea:first").val(),
				'media': false,
				'push': {
					'mood': false,
					'usertag': false,
					'places': false,
					'link': false,
					'share': {
						'display': popupStatusAction.attr("status-display")
					}
				},
				'private': {
					'view': JSON.parse(popupStatusAction.find(".box > .options > .private > .view .selected [private]").attr("private"))['type'],
					'comment': JSON.parse(popupStatusAction.find(".box > .options > .private > .comment .selected [private]").attr("private"))['type'],
					'share': JSON.parse(popupStatusAction.find(".box > .options > .private > .share .selected [private]").attr("private"))['type']
				}
			};
			var data = {
				'port': 'feed',
				'type': 'status',
				'action': 'add',
				'obj': dataStatus
			};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					if (isset(data['return']) && data['return'] === true) {
						popupStatusAction.find(".box > .options > .action > .button.false").click();
						popupNotification ({type: 'notify', title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('status_has_been_posted','ucfirst'); ?>', timeout: 5000, global: true, audio: true});
					}
				}
			}).fail(function(){
				popupStatusAction.removeAttr('handling-send');
			}).done(function(){
				popupStatusAction.removeAttr('handling-send');
			});
		}
	}
}
function feed_status_invite () {
	$(".status.inFeeds[status]").each(function(){
		var status = $(this),
			inviteButton = status.find("[status-action-invite]");
		inviteButton.bind('click', function(){
			var inviteButton = $(this);
			if (inviteButton.attr('handling-setup') != "true") {
				inviteButton.attr('handling-setup', 'true');
				var popupStatusAction = $("#popupStatusAction");
				if (popupStatusAction.length > 0) {
					popupStatusAction.find(".box > .title > .close").click();
				}
				var code = "<div id='popupStatusAction' status-invite status-token="+JSON.parse(status.attr('status'))['id']+"> <div class='box'> <div class='title nowrap'> <span><?php print $_language->text('invite_your_friends', 'ucfirst'); ?></span> <i class='close'></i> </div> <div class='main'> <div class='content'> <input class type='text' placeholder='<?php print $_language->text('type_name_your_friends', 'ucfirst'); ?>'> </div> </div> <div class='options'> <div class='private'></div> <div class='action'> <div class='button true _bn_c-we'> <span><?php print $_language->text('done', 'ucfirst'); ?></span> </div> <div class='button false _bn_c-we'> <span><?php print $_language->text('cancel', 'ucfirst'); ?></span> </div> </div> </div> </div> </div>";
				$("body").append(code);
				var popupStatusAction = $("#popupStatusAction");
				popupStatusAction.hide().fadeIn(function(){
					$("body").css("overflow-y", "hidden");
				});
				popupStatusAction.find(".box").boxPosition({"type": "center", "resize": true});
				popupStatusAction.find(".box > .main > .content input").AutoComplete({'path': 'info', 'from': 'friends', 'output': true, 'multiple': true});
				popupStatusAction.find(".box > .options > .private").choosePrivate({"type": "status"});
				var actionButton = popupStatusAction.find(".box > .options > .action > .button");
				actionButton.bind('click', function(){
					if ($(this).hasClass("true")) {
						send();
					}else if ($(this).hasClass("false")) {
						popupStatusAction.fadeOut(function(){
							$("body").css("overflow-y", "auto");
							$(this).remove();
						});
					}
				});
				popupStatusAction.find(".box > .title > .close").bind('click', function(){
					popupStatusAction.find(".box > .options > .action > .button.false").click();
				});
				$(document).bind('keyup', function(e) {
					var keycode = (e.keyCode ? e.keyCode : e.which);
					if (keycode == '27' && popupStatusAction.length > 0) {
						popupStatusAction.find(".box > .options > .action > .button.false").click();
					}
				});
				setTimeout(function(){
					inviteButton.removeAttr('handling-setup');
				},100);
			}
		});
	});
	var send = function () {
		console.log('xx');
	}
}
var feed_status_newcheck = function () {
	var call = function () {
		var feed = $(".thisFeeds[feed]");
		if (feed.attr('handing-newcheck') != "true") {
			feed.attr('handing-newcheck', 'true');
			var status = feed.children(".status.inFeeds[status]");
			if (status.length === 0) {
				var id = 0;
				var logs = 0;
			}else {
				if (!isset(status.first().attr('status-id')) || typeof status.first().attr('status-id') !== "string") {
					return false;
				}else if (!isset(status.first().attr('logs-id')) || typeof status.first().attr('logs-id') !== "string") {
					return false;
				}
				var id = parseInt(status.first().attr('status-id'));
				var logs = parseInt(status.first().attr('logs-id'));
			}
			var exceptId = exceptLogs = [];
			feed.children(".status.inFeeds[status][status-id][logs-id]").each(function () {
				var statusThis = $(this);
				if (!isset(statusThis.attr('status-id')) || typeof statusThis.attr('status-id') !== "string") {
					//.
				}else {
					exceptId[countArr(exceptId)] = parseInt(statusThis.attr('status-id'));
				}
				if (!isset(statusThis.attr('logs-id')) || typeof statusThis.attr('logs-id') !== "string") {
					//.
				}else {
					exceptLogs[countArr(exceptLogs)] = parseInt(statusThis.attr('logs-id'));
				}
			});
			var except = {'id': exceptId, 'logs': exceptLogs};
			if (!isset(feed.attr('feed')) || typeof feed.attr('feed') !== "string" || typeof JSON.parse(feed.attr('feed')) !== "object") {
				return false;
			}
			var port = JSON.parse(feed.attr('feed'));
			if (isset(port['type']) && port['type'] == "status") {
				return;
			}else {
				var doneRequestFunc = function() {
					setTimeout(wait, 500);
					feed.removeAttr('handing-newcheck');
				}
			}
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				dataType: "json",
				data: {'port': 'feed', 'type': 'status', 'action': 'newcheck', 'obj': {'type': port['type'], 'method': port['method'], 'sort': '>', 'id': id, 'logs': logs, 'except': except, 'order': 'new'}},
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					if (isset(data['return']) && data['return'] === true) {
						if (isset(data['count']) && typeof data['count'] === "number" && parseInt(data['count']) > 0) {
							var statsCount = data['count'];
							popupNotification ({
								'type': 'new', 
								'title': '<?php print $_language->text('news_feed', 'ucfirst'); ?>', 
								'description': statsCount + ' <?php print $_language->text('new_status', 'strtolower', false); ?>, <?php print $_language->text('drawn_up_for_update', 'strtolower', false); ?>.', 
								'callback': function() {
									popupNotification ({type: 'notification', title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('please_wait_load_data', 'ucfirst'); ?>', timeout: 2000});
									//.
									var feed = $(".thisFeeds[feed]"),
										options = {};
									if (isset(feed.attr('feed')) && typeof feed.attr('feed') == "string" && typeof JSON.parse(feed.attr('feed')) == "object") {
										var info = JSON.parse(feed.attr('feed'));
										options['port'] = info['port'];
										if (status.length === 0) {
											var id = 0;
										}else {
											var id = parseInt(status.first().attr('status-id'));
										}
										options['sort'] = ">";
										if (isset(id) && typeof options == "object") {
											options['id'] = id;
											feed_status_load(options);
											setTimeout(function () {
												$("body").animate({ scrollTop: feed.offset().top });
											}, 500);
										}
									}
								},
								'global': true,
								'timeout': 4000
							});
						}
					}else {
						popupNotification ({type: 'error', title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason'])});
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		}
	}
	var wait = function () {
		setTimeout(call, <?php print $_parameter->get('status_timeout_newcheck'); ?> / 10);
	}
	wait();
}
var feed_status_update = function () {
	$(window).scroll(function() {
		var get = false,
			feed = $(".thisFeeds[feed]"),
			wS = $(window).scrollTop(),
			wH = $(window).height(),
			dH = $(document).height(),
			status = feed.find(".status.inFeeds[status]"),
			options = {};
		if (isset(feed.attr('feed')) && typeof feed.attr('feed') == "string" && typeof JSON.parse(feed.attr('feed')) == "object") {
			var info = JSON.parse(feed.attr('feed'));
		}else {
			return;
		}
		var options = info;
		if (wS === 0) {
			var get = true;
			if (status.length === 0) {
				id = 0;
				logs = 0;
			}else {
				id = status.first().attr('status-id');
				logs = status.first().attr('logs-id');
			}
			options['sort'] = ">";
			options['order'] = "new";
		}else if (wS + 1 >= (dH - wH)) {
			if (status.length > 0) {
				var get = true,
					id = status.last().attr('status-id'),
					logs = status.last().attr('logs-id');
				options['sort'] = "<";
				options['order'] = "new";
				options['limit'] = "5";
			}
		}
		var exceptId = exceptLogs = [];
		feed.find(".status.inFeeds[status]").each(function () {
			var statusThis = $(this);
			if (isset(statusThis.attr('status-id')) || typeof statusThis.attr('status-id') == "string") {
				exceptId[countArr(exceptId)] = parseInt(statusThis.attr('status-id'));
			}
			if (isset(statusThis.attr('status-logs')) || typeof statusThis.attr('status-logs') == "string") {
				exceptLogs[countArr(exceptLogs)] = parseInt(statusThis.attr('status-logs'));
			}
		});
		options['except'] = {};
		options['except']['id'] = exceptId;
		options['except']['logs'] = exceptLogs;
		if (isset(id) && isset(logs) && isset(get) && get == true && typeof options == "object") {
			options['id'] = id;
			options['logs'] = logs;
			feed_status_load(options);
		}
	});
}
var feed_status_load = function (options) {
	if (!isset(options)) {
		return false;
	}
	var type = isset(options['type']) && typeof options['type'] === "string" ? options['type'] : null;
	var method = isset(options['method']) && typeof options['method'] === "string" ? options['method'] : null;
	var id = isset(options['id']) && (typeof options['id'] === "string" || typeof options['id'] === "number") ? parseInt(options['id']) : null;
	var logs = isset(options['logs']) && (typeof options['logs'] === "string" || typeof options['logs'] === "number") ? parseInt(options['logs']) : null;
	var sort = isset(options['sort']) && typeof options['sort'] === "string" ? options['sort'] : null;
	var order = isset(options['order']) && typeof options['order'] === "string" ? options['order'] : null;
	var except = isset(options['except']) && typeof options['except'] === "object" ? options['except'] : null;
	if (!isset(method) || !isset(id) || !isset(sort) || !isset(order)) {
		return false;
	}
	var data = {'port' : 'feed', 'type': 'status', 'action': 'load', 'obj': {'type': type, 'method': method, 'sort': sort, 'id': id, 'logs': logs, 'except': {}, 'order': order}};
	if (isset(options['limit']) && options['limit'] > 0) {
		data['obj']['limit'] = options['limit'];
	}else if (options['sort'] == '<' && options['limit'] == null) {
		data['obj']['limit'] = 5;
	}
	var feed = $(".thisFeeds[feed]");
	if (feed.attr('handing-load') != "true") {
		feed.attr('handing-load', 'true');
		var failRequestFunc = function() {
			feed.removeAttr('handing-load');
		};
		var doneRequestFunc = function() {
			feed.removeAttr('handing-load');
		};
		$.ajax({
			url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
			type: "GET",
			dataType: "json",
			data: data,
			success: function (data) {
				console.log(data);
				return;
				if (isset(data['return']) && data['return'] === true && isset(data['data']) && isset(data['count'])) {
					if (data['count'] > 0) {
						for (var i in data['data']) {
							var status = data['data'][i];
							feed_status_push({'sort': sort}, status);
						}
					}
				}else if (isset(data['return']) && data['return'] === false && isset(data['reason'])) {

				}else {
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason'])});
				}
			}
		}).fail(failRequestFunc).done(doneRequestFunc);
	}
}
var status_autosize = function () {
	//.
}
var status_block = function (id) {
	var count = 0;
	$(".status.inFeeds[status]").each(function() {
		var status = $(this),
			info = JSON.parse(status.attr('status'));
		if (info['id'] == id && (info['type'] == "music" || info['type'] == "videos")) {
			var token  = status.find(".media").attr('media');
			if (token != undefined) {
				var thisMediaPlayer = gplayer(token);
				thisMediaPlayer.ready(function(){
					thisMediaPlayer.pause();
					setTimeout(function(){
					    thisMediaPlayer.dispose();
					},0);
				});
			}
		}
		if (info['id'] == id && status.attr('handing-block') != "true") {
			status.attr('handing-block', 'true');
			count++;
		}
	});
	if (count > 0) {
		var doneRequestFunc = function() {
			$(".status.inFeeds[status]").each(function() {
				var status = $(this);
				var info = JSON.parse(status.attr('status'));
				if (inArray(info['id'], id)) {
					status.removeAttr('handing-block');
				}
			});
		};
		var id = [id],
			data = {'port': 'feed', 'type': 'status', 'action': 'block', 'id': id};
		$.ajax({
			url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
			type: "GET",
			dataType: "json",
			data: data,
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			success: function (data) {
				if (isset(data['return']) && data['return'] == true) {
					if (data['data'] != undefined && typeof data['data'] == "object" && Object.keys(data['data']).length > 0) {
						for (var i in data['data']) {
							var rows = data['data'][i];
							if (rows['return'] != undefined && rows['return'] == true) {
								var count = 0;
								$(".status.inFeeds[status]").each(function() {
									var status = $(this);
									var isInfo = JSON.parse(status.attr('status'));
									if (isInfo['id'] == rows['id']) {
										status.callEffect({
											mode: 1,
											type: 'hide', 
											effect: 'explode', 
											duration: <?php print $_parameter->get("status_effect_duration"); ?>, 
											nextTime: <?php print $_parameter->get("status_effect_nextTime"); ?>,
											complete: function () {
												$(this).remove();
											}
										});
										count++;
									}
								});
								if (count > 0) {
									popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('status_has_been_removed','ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
								}
							}else {
								if (rows['reason'] != undefined && (rows['reason'] == "ERROR#FEEDS_012" || rows['reason'] == "ERROR#FEEDS_006")) {
									$(".status.inFeeds[status]").each(function() {
										var status = $(this);
										var isInfo = JSON.parse(status.attr('status'));
										if (isInfo['id'] == rows['id']) {
											status.find(".header > .menu > .tab [menu-type='block']").remove();
										}
									});
								}
								popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(rows['reason'])});
							}
						}
					}
				}else if (data['reason'] != undefined && isset(data['return']) && data['return'] == false) {
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason'])});
				}
			}
		}).fail(doneRequestFunc).done(doneRequestFunc);
	}
}
var status_delete = function (id) {
	var count = 0;
	$(".status.inFeeds[status]").each(function() {
		var status = $(this),
			info = JSON.parse(status.attr('status'));
		if (info['id'] == id && (info['type'] == "music" || info['type'] == "videos")) {
			var token  = status.find(".media").attr('media');
			if (token != undefined) {
				var thisMediaPlayer = gplayer(token);
				thisMediaPlayer.ready(function(){
					thisMediaPlayer.pause();
					setTimeout(function(){
						thisMediaPlayer.dispose();
					},0);
				});
			}
		}
		if (info['id'] == id && status.attr('handling-delete') != "true") {
			status.attr('handling-delete', 'true');
			count++;
		}
	});
	if (count > 0) {
		var doneRequestFunc = function() {
			$(".status.inFeeds[status]").each(function() {
				var status = $(this),
					info = JSON.parse(status.attr('status'));
				if (inArray(info['id'], id)) {
					status.removeAttr('handling-delete');
				}
			});
		};
		var id = [id];
		var data = {'port': 'feed', 'type': 'status', 'action': 'delete', 'id': id};
		$.ajax({
			url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
			type: "GET",
			dataType: "json",
			data: data,
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			success: function (data) {
				if (isset(data['return']) && data['return'] === true) {
					for (var i in data['data']) {
						var rows = data['data'][i];
						if (isset(rows['return']) && rows['return'] === true) {
							var count = 0;
							$(".status.inFeeds[status]").each(function() {
								var status = $(this);
								var isInfo = JSON.parse(status.attr('status'));
								if (isInfo['id'] == rows['status']['id']) {
									status.callEffect({
										mode: 1,
										type: "hide", 
										effect: "explode", 
										duration: <?php print $_parameter->get("status_effect_duration"); ?>, 
										nextTime: <?php print $_parameter->get("status_effect_nextTime"); ?>,
										complete: function () {
											$(this).remove();
										}
									});
									count++;
								}
							});
							if (count > 0) {
								popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('status_has_been_removed','ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
							}
						}else {
							if (isset(rows['reason']) && (rows['reason'] == "ERROR#FEEDS_012" || rows['reason'] == "ERROR#FEEDS_006")) {
								button.remove();
							}
							popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(rows['reason'])});
						}
					}
				}else if (isset(data['reason']) && isset(data['return']) && data['return'] === false) {
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason'])});
				}
			}
		}).fail(doneRequestFunc).done(doneRequestFunc);
	}
}
var feed_status_menu = function () {
	var status = $(".status.inFeeds[status]");
	status.each(function() {
		var status = $(this),
			info = JSON.parse(status.attr('status')),
			menu = status.find(".menu"),
			buttonMenu = menu.find("[menu-type]"),
			qrcode = status.find(".qrcode[qrcode-image]"),
			buttonQRcode = qrcode.find(".button");
		buttonMenu.bind('click', function() {
			var button = $(this),
				status = button.parents(".status.inFeeds[status]");
			if (button.attr('handing') != "true") {
				button.attr('handing','true');
				var type = button.attr('menu-type');
				if (type == "delete") {
					popupAlert({'title': '<?php print $_language->text('notification', 'ucfirst'); ?>', 'content': '<?php print $_language->text('question_remove_status', 'ucfirst'); ?>', 'actionTrue': '<?php print $_language->text('confirm', 'ucfirst'); ?>', 'callbackTrue': function () { status_delete(info['id']) }});
					setTimeout(function() {
						button.removeAttr('handing');
					},100);
				}else if (type == "block") {
					popupAlert({'title': '<?php print $_language->text('notification', 'ucfirst'); ?>', 'content': '<?php print $_language->text('question_block_status', 'ucfirst'); ?>', 'actionTrue': '<?php print $_language->text('confirm', 'ucfirst'); ?>', 'callbackTrue': function () { status_block(info['id']) }});
					setTimeout(function() {
						button.removeAttr('handing');
					},100);
				}else if (type == "follow" || type == "unfollow") {
					var doneRequestFunc = function() {
						button.removeAttr('handing');
					};
					var data = {'port': 'feed', 'type': 'status', 'action': type, 'id': [info['id']]};
					$.ajax({
						url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
						type: "GET",
						dataType: "json",
						data: data,
						contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
						success: function (data) {
							if (isset(data['return']) && data['return'] === true) {
								for (var i in data['data']) {
									var rows = data['data'][i];
									if (isset(rows['return']) && rows['return'] === true && isset(rows['id'])) {
										var count = 0;
										var isStatus = $(".status.inFeeds[status]");
										isStatus.each(function() {
											var isStatus = $(this);
											var isInfo = JSON.parse(isStatus.attr('status'));
											if (isInfo['id'] == rows['id']) {
												var menu = isStatus.find("[status-menu]");
												if (isset(rows['action']) && inArray(rows['action'], ['add', 'follow'])) {
													var popupDescription = "<?php print $_language->text('status_follow_add_success', 'ucfirst'); ?>";
													var button = menu.find("[menu-type='follow']");
													button.attr('menu-type', 'unfollow').fadeOut(function () {
														$(this).children("span").text("<?php print $_language->text('unfollow','strtolower'); ?>");
														$(this).fadeIn();
													});
												}else if (isset(rows['action']) && inArray(rows['action'], ['remove', 'unfollow'])) {
													var popupDescription = "<?php print $_language->text('status_follow_remove_success', 'ucfirst'); ?>";
													var button = menu.find("[menu-type='unfollow']");
													button.attr('menu-type', 'follow').fadeOut(function () {
														$(this).children("span").text("<?php print $_language->text('follow','strtolower'); ?>");
														$(this).fadeIn();
													});
												}
												if (count == 0) {
													if (!isset(popupDescription) || typeof popupDescription !== "string") {
														var popupDescription = "<?php print $_language->text('action_have_been_implemented', 'ucfirst'); ?>";
													}
													popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: popupDescription});
													count++;
												}
											}
										});
									}else {
										if (isset(rows['reason']) && (rows['reason'] == "ERROR#FEEDS_012" || rows['reason'] == "ERROR#FEEDS_006")) {
											button.remove();
										}
										popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(rows['reason'])});
									}
								}
							}else if (data['reason'] != undefined && isset(data['return']) && data['return'] == false) {
								popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason'])});
							}
						}
					}).fail(doneRequestFunc).done(doneRequestFunc);
				}else if (type == "edit") {
					function convertContent (type, data) {
						if (type == "text") {
							return data.replace(new RegExp(/(<br>)/ig), "").replace(new RegExp(/(<br\/>)/ig), "");
						}else if (type == "html") {
							var data = parseText(data.replace(new RegExp(/(\n)/ig), "\n<br/>"));
							return data;
						}
					}
					if ($(this).attr('handling-editor-setup') != "true") {
						$(this).attr('handling-editor-setup', 'true');
						$(".status.inFeeds[status]").each(function() {
							if (JSON.parse($(this).attr('status'))['id'] == info['id']) {
								$(this).find(".header > .menu > .tab [menu-type='edit']").attr('handing', 'true');
							}
						});
						if (status.find(".body > .text").length === 0) {
							if (status.find(".body > div").length === 0) {
								status.find(".body").append("<div class='text'> <span></span> </div>");
							}else {
								status.find(".body > div:first").before("<div class='text'> <span></span> </div>");
							}
						}
						var contentBox = status.find(".body > .text > span");
						contentBox.hide();
						status.addClass('compress-content-disabled');
						status.find(".body > .text > span").after('<span class="cache">'+contentBox.html()+'</span>');
						var contentCahce = status.find(".body > .text > span.cache");
						contentCahce.find("i[emotions-key]").each(function() {
							$(this).replaceWith($(this).attr('emotions-key'));
						});
						var contentCode = contentCahce.text();
						contentCahce.remove();
						contentBox.after("<div class='editor'> <div class='rows input'> <textarea class='ip_as' type='text' placeholder='<?php print $_language->text('type_content_status', 'ucfirst'); ?>' input>"+convertContent('text', contentCode)+"</textarea> </div> <div class='rows options'> <div class='private'></div> <div class='submit'><div class='send _bn_c-we'><?php print $_language->text('update', 'ucfirst'); ?></div></div> </div> </div>");
						var editor = contentBox.next(".editor"),
							private = status.find(".header > .info > .private").attr('private');
						if (isset(private) && typeof JSON.parse(private) == "object") {
							var private = JSON.parse(private);
						}
						if (isset(private) && typeof private == "object") {
							var private = private['stamp'];
						}else {
							var private = 1;
						}
						editor.find(".rows.options > .private").choosePrivate({'type': 'status', 'id': private});
						status_autosize();
						$(this).removeAttr('handling-editor-setup');
						editor.find(".rows.options > .submit .send").bind('click', function() {
							var sendButton = $(this);
							if (sendButton.attr('handing-edit') != "true") {
								sendButton.attr('handing-edit', 'true');
								var doneRequestFunc = function() {
									sendButton.removeAttr('handing-edit');
								};
								var privateSelected = JSON.parse(editor.find(".rows.options > .private > .choosePrivate > .selected > [private]").attr('private')),
									content = editor.find(".rows.input textarea").val(),
									data = {'port': 'feed', 'type': 'status', 'action': 'edit', 'id': info['id'], 'rows': {'private->view': privateSelected['type'], 'content': content}};
								$.ajax({
									url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
									type: "GET",
									dataType: "json",
									data: data,
									contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
									success: function (data) {
										if (isset(data['return']) && data['return'] == true) {
											editor.fadeOut(function() {
												$(this).remove();
												contentBox.html(convertContent('html', content)).fadeIn();
											});
											$(".status.inFeeds[status]").each(function() {
												if (JSON.parse($(this).attr('status'))['id'] == info['id']) {
													$(this).find(".header > .info > .private").attr('private', JSON.stringify({'stamp':privateSelected['type']}));
													$(this).find(".header > .info > .private span").text(privateSelected['value']);
													$(this).find(".header > .menu > .tab [menu-type='edit']").attr('handing','false');
													if (privateSelected['type'] == 1) {
														var tooltip = "<?php print $_language->text('private_1_tip', 'ucfirst'); ?>";
													}else if (privateSelected['type'] == 2) {
														var tooltip = "<?php print $_language->text('private_2_tip', 'ucfirst'); ?>";
													}else if (privateSelected['type'] == 3) {
														var tooltip = "<?php print $_language->text('private_3_tip', 'ucfirst'); ?>";
													}else if (privateSelected['type'] == 4) {
														var tooltip = "<?php print $_language->text('private_4_tip', 'ucfirst'); ?>";
													}
													$(this).find(".header > .info > .private").attr('tooltip', tooltip);
													$(this).removeClass('compress-content-disabled');
												}
											});
											popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('edit_success_status', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_text_timeout'); ?>'});
										}else if (data['reason'] != undefined && isset(data['return']) && data['return'] == false) {
											popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason'])});
										}
									}
								}).fail(doneRequestFunc).done(doneRequestFunc);
							}
						});
					}
				}
			}
		});
		buttonQRcode.bind('click', function() {
			console.log('x');
			var button = $(this),
				status = button.parents(".status.inFeeds[status]");
			if (button.attr('handing') != "true") {
				button.attr('handing', 'true');
				var qrImage = button.parents("[qrcode-image]").attr('qrcode-image');
				if (!isset(qrImage)) {
					return;
				}
				var oldOverflow = $("body").css('overflow-y');
				$("body").append("<div id='statusPopupQR'> <div class='boxContent'> <div class='header'> <span><?php print $_language->text('scan_this_code', 'ucfirst'); ?></span> <i close></i> </div> <div class='body'> <img src='"+qrImage+"' alt=''> </div> <div class='footer'> <div class='text'> <span><?php print $_language->text('create_by_giccos', 'ucfirst'); ?></span> </div> </div> </div> </div>");
				$("body").css({'overflow-y': 'hidden'});
				var popupQR = $("#statusPopupQR");
				popupQR.hide().fadeIn().find(".boxContent").boxPosition({"type": "center", "resize": true});
				popupQR.find(".body").find("img").hide().after("<span class='loading'><?php print $_language->text('loading', 'ucfirst'); ?></span>").bind('error', function() {
					popupQR.find(".header").find("[close]").click();
					popupNotification ({type: 'error', title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('content_notfound_may_error', 'ucfirst'); ?>.", audio: true, global: true, timeout: 4000});
				}).bind('load', function() {
					popupQR.find(".body").find(".loading").fadeOut(function () {
						$(this).remove();
						popupQR.find(".body").find("img").fadeIn();
						popupQR.find(".boxContent").boxPosition({"type": "center", "resize": false});
					});
				});
				popupQR.find(".header").find("[close]").bind('click', function () {
					popupQR.fadeOut(function() {
						$(this).remove();
						$("body").css({'overflow-y': oldOverflow});
					});
					button.removeAttr('handing');
				});
				$(document).bind('keyup', function(e) {
					var keycode = (e.keyCode ? e.keyCode : e.which);
					if (keycode == '27' && popupQR.length > 0) {
						popupQR.find(".header").find("[close]").click();
					}
				});
			}
		});
	});
}
var feed_status_getCodeMedia = function (object) {
	var c_ = {};
	if (!isset(object['media'])) {
		return "";
	}
	if (isset(object['media']['type']) && object['media']['type'] == "link") {
		c_['status_content_media'] = "<div class='media LinkBox'>";
		for (var i in object['media']['data']) {
			var value = object['media']['data'][i];
			value['id'] = "media_link_"+value['display']+"_"+Math.round(new Date/1e3);
			var infoShowObj = {"type": "link", "id": value['id'], "display": value['display'], "sub": value['sub'], "host": value['host'], "url": value['url'], "thumbnail": value['thumbnail'], "title": value['title'], "description": value['description'], "share": value['share']};
			if (isset(value['embed'])) {
				embedShowObj = "media-embed='" + JSON.stringify(value['embed']) + "'";
				value['direct'] = "";
			}else {
				embedShowObj = "";
				value['direct'] = JSON.stringify({"by": "click", "to": value['path'], "target": "_blank"});
			}
			value['info'] = JSON.stringify(infoShowObj);
			if (isset(value['thumbnail']) && (value['thumbnail'] != 0 || value['thumbnail'] != "0")) {
				c_['status_content_media_thumbnail'] = " <div class='thumbnail'> <div style='background-image: url("+value['thumbnail']+");'></div> </div> ";
			}else {
				c_['status_content_media_thumbnail'] = "";
			}
			c_['status_content_media'] = c_['status_content_media']+" <div class='link' id='"+value['id']+"' media='link' media-display='"+value['display']+"' media-info='"+value['info']+"' "+embedShowObj+" direct='"+value['direct']+"'> "+c_['status_content_media_thumbnail']+" <div class='info'> <div class='title rows nowrap'><span>"+value['title']+"</span></div> <div class='description rows'><span>"+value['description']+"</span></div> <div class='from rows nowrap'><span>"+value['host']+"</span></div> </div> </div> ";
		}
		c_['status_content_media'] = c_['status_content_media']+"</div>";
	}else if (isset(object['media']['type']) && object['media']['type'] == "photos") {
		c_['status_content_media'] = "<div class='media PhotosBox'>";
		for (var i in object['media']['data']) {
			var value = object['media']['data'][i];
			value['id'] = "media_photos_"+value['display']+"_"+Math.round(new Date/1e3);
			value['info'] = JSON.stringify({"type": "photos", "id": value['id'], "display": value['display'], "mime": value['mime'], "thumbnail": value['thumbnail'], "link": value['link'], "share": value['share']});
			c_['status_content_media'] = c_['status_content_media']+" <div class='photos' id='"+value['id']+"' media='photos' media-display='"+value['display']+"' media-info='"+value['info']+"' style='background-image: url("+value['thumbnail']+")'> <img src='"+value['thumbnail']+"' alt='"+object['string']+"'> </div>";
		}
		c_['status_content_media'] = c_['status_content_media']+"</div>";
	}else if (isset(object['media']['type']) && object['media']['type'] == "music") {
		c_['status_content_media'] = "<div class='media MusicBox'>";
			for (var i in object['media']['data']) {
				var value = object['media']['data'][i];
				value['id'] = "media_music_"+value['display']+"_"+Math.round(new Date/1e3);
				value['info'] = JSON.stringify({"type": "music", "id": value['id'], "display": value['display'], "link": value['link'], "name": value['name'], "mime": value['mime'], "singer": value['singer'], "description": value['description'], "share": value['share']});
				c_['status_content_media'] = c_['status_content_media']+" <div class='music' id='"+value['id']+"' media='music' media-display='"+value['display']+"' media-info='"+value['info']+"'> <div class='icon'> <i></i> </div> <div class='text'> <div class='name nowrap'><span>"+value['name']+"</span></div> <div class='singer nowrap'><span>"+value['singer']+"</span></div> <div class='description nowrap'><span>"+value['description']+"</span></div> </div> </div> ";
			}
		c_['status_content_media'] = c_['status_content_media']+"</div>";
	}else if (isset(object['media']['type']) && object['media']['type'] == "videos") {
		c_['status_content_media'] = "<div class='media VideosBox'>";
			for (var i in object['media']['data']) {
				var value = object['media']['data'][i];
				value['id'] = "media_videos_"+value['display']+"_"+Math.round(new Date/1e3);
				value['info'] = JSON.stringify({"type": "videos", "id": value['id'], "display": value['display'], "link": value['link'], "thumbnail": value['thumbnail'], "name": value['name'], "mime": value['mime'], "description": value['description'], "share": value['share']});
				c_['status_content_media'] = c_['status_content_media']+" <div class='videos' id='"+value['id']+"' media='videos' media-display='"+value['display']+"' media-info='"+value['info']+"' style='background-image: url("+value['thumbnail']+");'> <div class='wrap'></div> <div class='icon'> <i></i> </div> <div class='nav'> <div class='name nowrap'><span>"+value['name']+"</span></div> <div class='description nowrap'><span>"+value['description']+"</span></div> </div> </div> ";
			}
		c_['status_content_media'] = c_['status_content_media']+"</div>";
	}else if (isset(object['media']['type']) && object['media']['type'] == "cited") {
		value = object['media']['data'][0];
		value['id'] = "media_cited_"+value['display']+"_"+Math.round(new Date/1e3);
		value['info'] = JSON.stringify({"type": "cited", "id": value['id'], "display": value['display'], "author": value['author'], "quote": value['quote'], "share": value['share']});
		if (value['thumbnail'] != null) {
			c_['cited_thumbnail'] = "style='background-image: url("+value['thumbnail']+");'";
		}else {
			c_['cited_thumbnail'] = '';
		}
		c_['status_content_media'] = "<div class='media CitedBox'> <div class='cited' id='"+value['id']+"' media='cited' media-display='"+value['display']+"' media-info='"+value['info']+"' "+c_['cited_thumbnail']+"> <div class='quote'><span>"+value['quote']+"</span></div> <div class='author'><span>"+value['author']+"</span></div> </div> </div>";
	}else if (isset(object['media']['type']) && object['media']['type'] == "share") {
		c_['status_content_media'] = "";
		for (var i in object['media']['data']) {
			if (isset(object['media']['data'][i]['exists']) && object['media']['data'][i]['exists'] === true && isset(object['media']['data'][i]['status']) && countArr(object['media']['data'][i]['status']) > 0) {
				statusInfo = object['media']['data'][i]['status']['info'];
				statusDate = object['media']['data'][i]['status']['date'];
				statusAuthor = object['media']['data'][i]['status']['author'];
				statusValue = object['media']['data'][i]['status']['content'];
				if (isset(statusValue) && isset(statusValue['media'])) {
					statusValueMore = "";
				}else {
					statusValueMore = feed_status_getCodeMedia(statusValue);
				}
				c_['status_content_media'] = c_['status_content_media'] + "<div class='media ShareBox'> <i class='arrow'></i> <div class='share' media='share'> <div class='author'><span><?php print $_language->text('from', 'strtolower', false); ?> <a href='"+statusInfo['link']+"' target='_blank'><?php print $_language->text('status', 'strtolower'); ?></a> <?php print $_language->text('posted_at', 'strtolower'); ?> <a href='<?php print $_tool->links('feed/time/'); ?>"+statusDate['stamp']+"' target='_blank'>"+agoDatetime(statusDate['stamp'], 'ago')+"</a> <?php print $_language->text('by', 'strtolower', false); ?> <a href='"+statusAuthor['link']+"' target='_blank'>"+statusAuthor['name']+" ("+statusAuthor['tag']+")</a></span></div> <div class='text'> <span>"+statusValue['text']+"</span> </div> "+statusValueMore+" </div> </div>";
			}
		}
	}else {
		c_['status_content_media'] = "";
	}
	return c_['status_content_media'];
};
var feed_status_printcode = function (statusArr) {
	if (!isset(statusArr)) {
		return false;
	}
	var classname = isset(statusArr['classname']) && typeof statusArr['classname'] === "string" ? statusArr['classname'] : null;
	var code = {};
	code['tips'] = "";
	if (isset(statusArr['tips']) && typeof statusArr['tips'] === "object" && countArr(statusArr['tips']) > 0) {
		code['tips_guy'] = code['tips_action'] = "";
		if (isset(statusArr['tips']['guy']) && typeof statusArr['tips']['guy'] === "object" && countArr(statusArr['tips']['guy']) > 0) {
			for (var i in statusArr['tips']['guy']) {
				var tipsGuyThis = statusArr['tips']['guy'][i];
				code['tips_guy'] += "<a href='"+tipsGuyThis['link']+"' target='_blank'><div class='li _tt-bk s' title='"+tipsGuyThis['name']+" ("+tipsGuyThis['tag']+")' style='background-image: url("+tipsGuyThis['avatar']+");'></div></a>";
			}
			code['tips_guy'] = "<div class='guy'> "+code['tips_guy']+" </div>";
		}
		if (inArray(statusArr['tips']['action'], ["favorite"])) {
			code['tips_action'] = "<?php print $_language->text('favorited', 'strtolower').' '.$_language->text('this_status', 'strtolower'); ?>";
		}else if (inArray(statusArr['tips']['action'], ["comment"])) {
			code['tips_action'] = "<?php print $_language->text('commented', 'strtolower').' '.$_language->text('this_status', 'strtolower'); ?>";
		}else if (inArray(statusArr['tips']['action'], ["share"])) {
			code['tips_action'] = "<?php print $_language->text('shared', 'strtolower').' '.$_language->text('this_status', 'strtolower'); ?>";
		}else if (inArray(statusArr['tips']['action'], ["follow"])) {
			code['tips_action'] = "<?php print $_language->text('following', 'strtolower').' '.$_language->text('this_status', 'strtolower'); ?>";
		}else if (inArray(statusArr['tips']['action'], ["tag", "mention"])) {
			code['tips_action'] = "<?php print $_language->text('mentioned', 'strtolower').' '.$_language->text('in_status', 'strtolower'); ?>";
		}
		code['tips'] = "<div class='tips'> "+code['tips_guy']+" <div class='text'><span>"+code['tips_action']+"</span></div> </div>";
	}
	code['cover_img'] = (isset(statusArr['author']) && isset(statusArr['author']['cover']) && isset(statusArr['author']['name']) && isset(statusArr['author']['tag'])) ? "<div class='img' style='background-image: url("+statusArr['author']['cover']+")'> <img class='img' src='"+statusArr['author']['cover']+"' alt='<?php print $_language->text('cover_of', 'strtolower'); ?> "+statusArr['author']['name']+" ("+statusArr['author']['tag']+")'> </div>" : "";
	code['avatar_img'] = (isset(statusArr['author']) && isset(statusArr['author']['link']) && isset(statusArr['author']['avatar']) && isset(statusArr['author']['name']) && isset(statusArr['author']['tag'])) ? "<a href='"+statusArr['author']['link']+"'><img class='img' src='"+statusArr['author']['avatar']+"' alt='<?php print $_language->text('avatar_of', 'strtolower'); ?> "+statusArr['author']['name']+" ("+statusArr['author']['tag']+")'></a>" : "";
	code['author_verified'] = (isset(statusArr['author']) && isset(statusArr['author']['verified']) && statusArr['author']['verified'] === true) ? "<div class='verified _tt-bk e' title='<?php $_language->text('verified', 'strtolower'); ?>'> <i></i> </div>" : "";
	code['author_name'] = (isset(statusArr['author']) && isset(statusArr['author']['name']) && isset(statusArr['author']['link'])) ? "<div class='name'> <a href='"+statusArr['author']['link']+"'> <span>"+statusArr['author']['name']+"</span> </a> </div>" : "";
	code['author_tag'] = (isset(statusArr['author']) && isset(statusArr['author']['tag']) && isset(statusArr['author']['link'])) ? "<div class='tag'> <a href='"+statusArr['author']['link']+"'> <span>"+statusArr['author']['tag']+"</span> </a> </div>" : "";
	code['date'] = (isset(statusArr['date']) && (typeof statusArr['date'] === "string" || typeof statusArr['date'] === "number")) ? "<div class='date nowrap _tt s' title='<?php print $_language->text('posted_at', 'strtolower'); ?> "+agoDatetime(statusArr['date'], 'tip')+"'> <i></i> <a href='<?php print $_tool->links('feed/time/'); ?>"+statusArr['date']+"' target='_blank'>"+agoDatetime(statusArr['date'], 'ago')+"</a> </div>" : "";
	code['private_view'] = (isset(statusArr['private']) && isset(statusArr['private']['view']) && (typeof statusArr['private']['view'] === "string" || typeof statusArr['private']['view'] === "number")) ? "<div class='private view nowrap _tt s' private-value='"+statusArr['private']['view']+"' title='"+textPrivateNumber('tip', statusArr['private']['view'])+"'> <i class='label'></i> <i class='value'></i> </div>" : "";
	code['private_comment'] = (isset(statusArr['private']) && isset(statusArr['private']['comment']) && (typeof statusArr['private']['comment'] === "string" || typeof statusArr['private']['comment'] === "number")) ? "<div class='private comment nowrap _tt s' private-value='"+statusArr['private']['comment']+"' title='"+textPrivateNumber('tip', statusArr['private']['comment'])+"'> <i class='label'></i> <i class='value'></i> </div>" : "";
	code['private_share'] = (isset(statusArr['private']) && isset(statusArr['private']['share']) && (typeof statusArr['private']['share'] === "string" || typeof statusArr['private']['share'] === "number")) ? "<div class='private share nowrap _tt s' private-value='"+statusArr['private']['share']+"' title='"+textPrivateNumber('tip', statusArr['private']['share'])+"'> <i class='label'></i> <i class='value'></i> </div>" : "";
	code['edit'] = (isset(statusArr['edit']) && (typeof statusArr['edit'] === "string" || typeof statusArr['edit'] === "number")) ? "<div class='date nowrap _tt s' title='<?php print $_language->text('last_edit_at', 'strtolower'); ?> "+agoDatetime(statusArr['edit'], 'tip')+"'> <i></i> </div>" : "";
	code['mood'] = (isset(statusArr['content']) && isset(statusArr['content']['mood']) && isset(statusArr['content']['mood']['text']) && typeof statusArr['content']['mood']['text'] === "string") ? "<div class='mood nowrap _tt s' title='"+statusArr['content']['mood']['text']+"'> <i></i> </div>" : "";
	if (isset(statusArr['content']) && isset(statusArr['content']['usertag']) && typeof statusArr['content']['usertag'] === "object" && countArr(statusArr['content']['usertag']) > 0) {
		code['usertag'] = "";
		usertagCount = 0;
		for (var i in statusArr['content']['usertag']) {
			usertagThis = statusArr['content']['usertag'][i];
			if (isset(usertagThis['name'])) {
				if (!isset(code['usertag']) || code['usertag'] == "") {
					code['usertag'] = usertagThis['name'];
				}else {
					code['usertag'] = code['usertag'] + ", "+usertagThis['name'];
				}
			}
			usertagCount++;
			if (usertagCount > 3) {
				code['usertag'] = code['usertag'] + " <?php print $_language->text('and', 'strtolower'); ?> "+(countArr(statusArr['content']['usertag']) - 3)+" <?php print $_language->text('others', 'strtolower'); ?>";
				break;
			}
		}
		if (isset(code['usertag']) && typeof code['usertag'] === "string") {
			code['usertag'] = "<div class='usertag nowrap _tt s' title='<?php print $_language->text('with', 'strtolower'); ?> "+code['usertag']+"'> <i></i> </div>";
		}
	}else {
		code['usertag'] = "";
	}
	if (isset(statusArr['places']) && typeof statusArr['places'] === "object" && isset(statusArr['places']['name']) && typeof statusArr['places']['name'] === "string" && countArr(statusArr['places']) > 0) { 
		if (isset(statusArr['places']['id']) && isset(statusArr['places']['address'])) { 
			code['places'] = "<div class='places nowrap _tt _tt-dbl s' title='<?php print $_language->text('checkin_at', 'strtolower'); ?> "+statusArr['places']['name']+"' dblclick='"+JSON.stringify({"type": "notification", "data": {"type": "notification", "title": "<?php print $_language->text('information_about_places', 'ucfirst'); ?>", "description": {"type": "info::places", "data": statusArr['places']}, "timeout": 6000}})+"'> <i></i> </div>"; 
		}else {
			code['places'] = "<div class='places nowrap _tt _tt-dbl s' title='<?php print $_language->text('checkin_at', 'strtolower'); ?> "+statusArr['places']['name']+"'><i></i> </div>";
		}
	}else {
		code['places'] = "";
	}
	if (isset(statusArr['menu']) && isset(statusArr['menu']['status']) && countArr(statusArr['menu']['status']) > 0) {
		code['menu'] = "";
		for (var typeThis in statusArr['menu']['status']) {
			valueThis = statusArr['menu']['status'][typeThis];
			if (typeThis == "block" && valueThis === true) {
				code['menu'] = code['menu'] + " <div class='nowrap' menu-type='block'> <i></i> <span><?php print $_language->text('block', 'strtolower'); ?></span> </div> ";
			}else if (typeThis == "report" && valueThis === true) {
				code['menu'] = code['menu'] + " <div class='nowrap' menu-type='report'> <i></i> <span><?php print $_language->text('report', 'strtolower'); ?></span> </div> ";
			}else if (typeThis == "edit" && valueThis === true) {
				code['menu'] = code['menu'] + " <div class='nowrap' menu-type='edit'> <i></i> <span><?php print $_language->text('edit', 'strtolower'); ?></span> </div> ";
			}else if (typeThis == "delete" && valueThis === true) {
				code['menu'] = code['menu'] + " <div class='nowrap' menu-type='delete'> <i></i> <span><?php print $_language->text('delete', 'strtolower'); ?></span> </div> ";
			}else if (typeThis == "follow") {
				if (valueThis === true) {
					code['menu'] = code['menu'] + " <div class='nowrap' menu-type='unfollow'> <i></i> <span><?php print $_language->text('unfollow', 'strtolower'); ?></span> </div> ";
				}else if (valueThis === false) {
					code['menu'] = code['menu'] + " <div class='nowrap' menu-type='follow'> <i></i> <span><?php print $_language->text('follow', 'strtolower'); ?></span> </div> ";
				}
			}else if (typeThis == "popup" && valueThis === true) {
				code['menu'] = code['menu'] + " <div class='nowrap' menu-type='popup'> <i></i> <span><?php print $_language->text('popup', 'strtolower'); ?></span> </div> ";
			}else if (typeThis == "link" && valueThis === true) {
				code['menu'] = code['menu'] + " <div class='nowrap' menu-type='link'> <i></i> <span><a href='"+statusArr['info']['link']+"'><?php print $_language->text('link', 'strtolower'); ?></a></span> </div> ";
			}
		}
		code['menu'] = " <div class='menu' status-menu> <div class='button'> <i></i> </div> <div class='tab'> "+code['menu']+"</div> </div> ";
	}else {
		code['menu'] = "";
	}
	code['qrcode'] = "<div class='qrcode _tt-bk e' title='<?php print $_language->text('view_qrcode', 'normal'); ?>' qrcode-image='"+statusArr['info']['qrcode']+"'> <div class='button'><i></i></div> </div>";
	if (isset(statusArr['content']) && isset(statusArr['content']['mood']) && isset(statusArr['content']['mood']['text']) && typeof statusArr['content']['mood']['text'] === "string") {
		if (isset(statusArr['content']['mood']['icon']) && typeof statusArr['content']['mood']['icon'] === "string") {
			code['content_mood'] = "";
		}else {
			code['content_mood'] = "";
		}
		code['content_mood'] = "<div class='mood'> "+code['content_mood']+" <span>"+statusArr['content']['mood']['text']+".</span> </div>";
	}else {
		code['content_mood'] = "";
	}
	code['content_text'] = (isset(statusArr['content']) && isset(statusArr['content']['text']) && typeof statusArr['content']['text'] === "string") ? "<div class='text'> <span class='content'>"+statusArr['content']['text']+"</span> "+code['content_mood']+" </div>" : "";
	if (isset(statusArr['content']) && isset(statusArr['content']['usertag']) && typeof statusArr['content']['usertag'] === "object" && countArr(statusArr['content']['usertag']) > 0) {
		code['content_usertag'] = "";
		for (var i in statusArr['content']['usertag']) {
			usertagThis = statusArr['content']['usertag'][i];
			if (isset(usertagThis['tag']) && isset(usertagThis['link']) && isset(usertagThis['name'])) {
				code['content_usertag'] = code['content_usertag'] + "<div class='div _tt-bk' title='"+usertagThis['tag']+"'><a href='"+usertagThis['link']+"'>"+usertagThis['name']+"</a></div>";
			}
		}
		if (isset(code['content_usertag']) && typeof code['content_usertag'] === "string") {
			code['content_usertag'] = "<div class='usertag'> <div class='with'><span> - <?php print $_language->text('with', 'strtolower'); ?></span></div> <div class='li'>"+code['content_usertag']+"</div> </div>";
		}
	}else {
		code['content_usertag'] = "";
	}
	if (isset(statusArr['content']) && isset(statusArr['content']['media']) && typeof statusArr['content']['media'] === "object" && countArr(statusArr['content']['media']) > 0) {
		code['content_media'] = "";
		if (isset(statusArr['content']['media']['type']) && isset(statusArr['content']['media']['data']) && typeof statusArr['content']['media']['data'] === "object" && countArr(statusArr['content']['media']['data']) > 0) {
			code['content_media'] = feed_status_getCodeMedia(statusArr['content']);
		}
	}else {
		code['content_media'] = "";
	}
	if (isset(statusArr['action']) && isset(statusArr['action']['favorite']) && isset(statusArr['action']['favorite']['status']) && isset(statusArr['action']['favorite']['selected']) && statusArr['action']['favorite']['status'] === true) {
		code['action_favorite'] = "";
		if (statusArr['action']['favorite']['selected'] == true) {
			code['action_favorite'] = "<div class='favorite'> <span status-action-favorite favorite='true'><?php print $_language->text('unfavorite', 'strtolower'); ?></span> </div>";
		}else if (statusArr['action']['favorite']['selected'] == false) {
			code['action_favorite'] = "<div class='favorite'> <span status-action-favorite favorite='false'><?php print $_language->text('favorite', 'strtolower'); ?></span> </div>";
		}
	}else {
		code['action_favorite'] = "";
	}
	if (isset(statusArr['action']) && isset(statusArr['action']['share']) && isset(statusArr['action']['share']['status']) && statusArr['action']['share']['status'] === true) {
		code['action_share'] = "<div class='share'> <span status-action-share><?php print $_language->text('share', 'strtolower'); ?></span> </div>";
	}else {
		code['action_share'] = "";
	}
	if (isset(statusArr['action']) && isset(statusArr['action']['invite']) && isset(statusArr['action']['invite']['status']) && statusArr['action']['invite']['status'] === true) {
		code['action_invite'] = "<div class='invite'> <span status-action-invite><?php print $_language->text('invite', 'strtolower'); ?></span> </div>";
	}else {
		code['action_invite'] = "";
	}
	code['stats_favorite'] = (isset(statusArr['stats']) && isset(statusArr['stats']['favorite'])) ? "<div class='invite'> <i></i> <span status-stats-favorite>"+statusArr['stats']['favorite']+"</span> </div>" : "";
	code['stats_share'] = (isset(statusArr['stats']) && isset(statusArr['stats']['share'])) ? "<div class='share'> <i></i> <span status-stats-share>"+statusArr['stats']['share']+"</span> </div>" : "";
	code['stats_invite'] = (isset(statusArr['stats']) && isset(statusArr['stats']['invite'])) ? "<div class='invite'> <i></i> <span status-stats-invite>"+statusArr['stats']['invite']+"</span> </div>" : "";
	if (isset(statusArr['action']) && isset(statusArr['action']['comment']) && isset(statusArr['action']['comment']['status']) && statusArr['action']['comment']['status'] === true) {
		code['comment_type'] = "<div class='type' status-comment-type> <textarea type='text' placeholder='<?php print $_language->text('write_a_comment', 'strtolower'); ?>' status-action-comment></textarea> </div>";
	}else {
		code['comment_type'] = "<div class='type null' status-comment-type> <span><?php print $_language->text('status_unlimited_comment', 'strtolower'); ?></span> </div>";
	}
	if (isset(statusArr['comment']) && isset(statusArr['comment']['count'])) {
		code['comment_content'] = "";
		if (statusArr['comment']['count'] == 0) {
			code['comment_stats'] = "";
			code['comment_content'] = "<div class='null' status-comment-null> <span status-comment-null><?php print $_language->text('status_null_comment', 'strtolower'); ?></span> </div>";
		}else if (statusArr['comment']['count'] > 0) {
			if (statusArr['comment']['count'] >= 3) {
				code['comment_stats'] = "<div class='showmore' status-comment-showmore> <i class='icon'></i> <span class='text'><?php print $_language->text('show_more_comments', 'strtolower'); ?></span> </div>";
			}else {
				code['comment_stats'] = "";
			}
			code['comment_content'] = "";
			if (isset(statusArr['comment']['data'])) {
				for (var i in statusArr['comment']['data']) {
					var commentThis = statusArr['comment']['data'][i];
					commentPrintCode = feed_comment_printcode(commentThis);
					code['comment_content'] += commentPrintCode;
				}
			}
		}
		if (isset(statusArr['comment']['count']) && statusArr['comment']['count'] > 0) {
			code['comment_stats'] = "<div class='statistic'> <div class='info'> <i class='icon'></i> <span class='count' status-comment-stats>"+statusArr['comment']['count']+"</span> <span class='text'><?php print $_language->text('comment(s)', 'strtolower'); ?></span> </div> "+code['comment_stats']+" </div>";
		}
		//.
	}else {
		code['comment_content'] = code['comment_stats'] = "";
	}
	if (isset(code['comment_content']) && is_string(code['comment_content'])) {
		code['comment_content'] = "<div class='content' status-comment-content> "+code['comment_content']+" </div>";
	}
	return code = "<div class='"+classname+"' status-id='"+statusArr['info']['id']+"' status='"+JSON.stringify(statusArr['infoshow'])+"'> "+code['tips']+" <div class='header'> <div class='cover'> <div class='wrap'></div> "+code['cover_img']+" </div> <div class='avatar'> "+code['avatar_img']+" </div> <div class='author'> "+code['author_verified']+" "+code['author_name']+" "+code['author_tag']+" </div> <div class='info'> "+code['private_view']+" "+code['private_comment']+" "+code['private_share']+" "+code['edit']+" "+code['places']+" "+code['mood']+" "+code['usertag']+" </div> "+code['menu']+" "+code['qrcode']+" </div> <div class='body'> "+code['content_text']+" "+code['content_media']+" "+code['content_usertag']+" </div> <div class='footer'> <div class='info'> <div class='action'> "+code['action_favorite']+" "+code['action_share']+" "+code['action_invite']+" </div> <div class='statistic'> "+code['stats_favorite']+" "+code['stats_share']+" "+code['stats_invite']+" </div> </div> <div class='comment'> "+code['comment_type']+" "+code['comment_stats']+" "+code['comment_content']+" </div> </div> </div>";
};
var feed_status_push = function (options, statusArr) {
	if (!isset(options) || !isset(statusArr)) {
		return false;
	}
	feed_status_printcode(statusArr);
	return;
	c_['status_info'] = JSON.stringify(status['info']);
	if (!isset(status['author'])) {
		return false;
	}
	if (isset(status['author']['verified']) && status['author']['verified'] === true) {
		c_['status_author_verified'] = " <div class='verified _tt e' title='<?php print $_language->text('verified', 'ucfirst'); ?>'> <i></i> </div> ";
	}else {
		c_['status_author_verified'] = "";
	}
	if (isset(status['date'])) {
		c_['status_date'] = " <div class='date nowrap _tt s cr-pointer' time='"+status['date']['json']+"' title='<?php print $_language->text('posted_at', 'ucfirst'); ?> "+status['date']['tip']+"'> <i> </i> <a href='<?php print $_tool->links('feed/time'); ?>/"+status['date']['stamp']+"' time-show>"+status['date']['ago']+"</a> </div> ";
	}else {
		c_['status_date'] = "";
	}
	if (isset(status['private'])) {
		c_['status_private'] = " <div class='private nowrap _tt s cr-pointer' private='"+status['private']['view']['json']+"' title='"+status['private']['view']['tip']+"' private> <i> </i> <span private-show>"+status['private']['view']['text']+"</span> </div> ";
	}else {
		c_['status_private'] = "";
	}
	if (isset(status['edit']) && isset(status['edit']['status']) && status['edit']['status'] == true) {
		c_['status_edit'] = " <div class='edited nowrap _tt s cr-pointer' time='"+status['edit']['time']['json']+"' title='<?php print $_language->text('edited_at', 'ucfirst'); ?> "+status['edit']['time']['tip']+"'> <i> </i> </div> ";
	}else {
		c_['status_edit'] = "";
	}
	if (isset(status['content']) && isset(status['content']['mood']) && isset(status['content']['mood']['text'])) {
		c_['status_mood'] = " <div class='mood nowrap _tt s cr-pointer' title='"+status['content']['mood']['text'].ucfirst()+"'> <i> </i> </div> ";
	}else {
		c_['status_mood'] = "";
	}
	if (isset(status['places'])) {
		if (isset(status['places']['by']) && status['places']['by'] == 1) {
			c_['status_places_dbl_type'] = "notification";
			c_['status_places_dbl_data'] = {
				"type": 1,
				"title": "<?php print $_language->text('information_about_places', 'ucfirst'); ?>",
				"description": {
					"type": "info::places", 
					"data": status['places']
				},
				"from": "<?php print $_language->text('status', 'ucfirst'); ?>"
			};
			c_['status_places_dbl'] = JSON.stringify({"type": c_['status_places_dbl_type'], "data": c_['status_places_dbl_data']});
			c_['status_places'] = "<div class='places nowrap _tt _tt-dbl s' title='<?php print $_language->text('at', 'ucfirst'); ?> "+status['places']['name']+"' dblclick='"+c_['status_places_dbl']+"'> <i> </i> </div> ";
		}else if (isset(status['places']['by']) && status['places']['by'] == 2) {
			c_['status_places'] = "<div class='places nowrap _tt _tt-dbl s' title='<?php print $_language->text('at', 'ucfirst'); ?> "+status['places']['name']+"'> <i> </i> </div> ";
		}
	}else {
		c_['status_places'] = "";
	}
	if (isset(status['menu'])) {
		c_['status_menu_tab'] = "";
		for (var type in  status['menu']) {
			for (var text in  status['menu'][type]) {
				var menu_text = status['menu'][type][text];
				if (type == "status") {
					if (text == "block" && menu_text == true) {
						c_['status_menu_tab'] = c_['status_menu_tab']+ " <div class='nowrap' menu-type='block'> <i></i> <span><?php print $_language->text('block', 'ucfirst'); ?></span> </div> ";
					}else if (text == "report" && menu_text == true) {
						c_['status_menu_tab'] = c_['status_menu_tab']+ " <div class='nowrap' menu-type='report'> <i></i> <span><?php print $_language->text('report', 'ucfirst'); ?></span> </div> ";
					}else if (text == "edit" && menu_text == true) {
						c_['status_menu_tab'] = c_['status_menu_tab']+ " <div class='nowrap' menu-type='edit'> <i></i> <span><?php print $_language->text('edit', 'ucfirst'); ?></span> </div> ";
					}else if (text == "delete" && menu_text == true) {
						c_['status_menu_tab'] = c_['status_menu_tab']+ " <div class='nowrap' menu-type='delete'> <i></i> <span><?php print $_language->text('delete', 'ucfirst'); ?></span> </div> ";
					}else if (text == "follow") {
						if (menu_text == true) {
							c_['status_menu_tab'] = c_['status_menu_tab']+ " <div class='nowrap' menu-type='unfollow'> <i></i> <span><?php print $_language->text('unfollow', 'ucfirst'); ?></span> </div> ";
						}else {
							c_['status_menu_tab'] = c_['status_menu_tab']+ " <div class='nowrap' menu-type='follow'> <i></i> <span><?php print $_language->text('follow', 'ucfirst'); ?></span> </div> ";
						}
					}else if (text == "popup" && menu_text == true) {
						c_['status_menu_tab'] = c_['status_menu_tab']+ " <div class='nowrap' menu-type='popup'> <i></i> <span><?php print $_language->text('popup', 'ucfirst'); ?></span> </div> ";
					}else if (text == "link" && menu_text == true) {
						c_['status_menu_tab'] = c_['status_menu_tab']+ " <div class='nowrap' menu-type='link'> <i></i> <span><a href='<?php print $_tool->links('feed/status/'); ?>"+status['info']['token']+"'><?php print $_language->text('link', 'ucfirst'); ?></a></span> </div> ";
					}
				}else if (type == "author") {
					//.
				}
			}
			c_['status_menu'] = " <div class='menu' status-menu> <div class='button'> <i></i> </div> <div class='tab'> "+c_['status_menu_tab']+"</div> </div> ";
		}
	}else {
		c_['status_menu'] = "";
	}
	if (isset(status['content']) && isset(status['content']['mood']) && isset(status['content']['mood']['text'])) {
		if (isset(status['content']['mood']['icon'])) {
			c_['status_content_mood_i'] = "";
		}else {
			c_['status_content_mood_i'] = "";
		}
		c_['status_content_mood'] = " <div class='mood'>" + c_['status_content_mood_i'] + "<span>" + status['content']['mood']['text'] + ".</span> </div> ";
	}else {
		c_['status_content_mood'] = "";
	}
	if (isset(status['content']) && isset(status['content']['text'])) {
		console.log(status['content']['text']);
		c_['status_content_text'] = " <div class='text'> <span>"+status['content']['text']+"</span>"+c_['status_content_mood']+"</div> ";
	}else {
		c_['status_content_text'] = "";
	}
	if (isset(status['content']) && isset(status['content']['usertag'])) {
		c_['status_content_usertag_li'] = "";
		for (var i in status['content']['usertag']) {
			c_['status_content_usertag_i'] = status['content']['usertag'][i];
			c_['status_content_usertag_li'] = c_['status_content_usertag_li']+"<div class='div _tt-bk' title='"+c_['status_content_usertag_i']['tag']+"'> <a href='"+c_['status_content_usertag_i']['link']+"'>"+c_['status_content_usertag_i']['name']+"</a> </div> ";
		}
		c_['status_content_usertag'] = " <div class='usertag'> <div class='with'> <span>- <?php print $_language->text('with', 'normal'); ?> </span> </div> <div class='li'>"+c_['status_content_usertag_li']+"</div> </div> ";
	}else {
		c_['status_content_usertag'] = "";
	}
	if (isset(status['content']) && isset(status['content']['media']) && typeof status['content']['media'] == "object" && status['content']['media'] != null) {
		if (isset(status['content']['media']['type']) && isset(status['content']['media']['data'])) {
			c_['status_content_media'] = feed_status_getCodeMedia(status['content']);
		}else {
			c_['status_content_media'] = "";
		}
	}else {
		c_['status_content_media'] = "";
	}
	if (isset(status['action']) && isset(status['action']['favorite']) && isset(status['action']['favorite']['status']) && status['action']['favorite']['status'] == true) {
		if (status['action']['favorite']['selected'] == true) {
			c_['status_action_favorite'] = " <div class='favorite'> <span status-action-favorite favorite='true'> <?php print $_language->text('unfavorite', 'ucfirst'); ?> </span> </div> ";
		}else {
			c_['status_action_favorite'] = " <div class='favorite'> <span status-action-favorite favorite='false'> <?php print $_language->text('favorite', 'ucfirst'); ?> </span> </div> ";
		}
	}else {
		c_['status_action_favorite'] = "";
	}
	if (isset(status['action']) && isset(status['action']['share']) && isset(status['action']['share']['status']) && status['action']['share']['status'] == true) {
		c_['status_action_share'] = " <div class='share'> <span status-action-share> <?php print $_language->text('share', 'ucfirst'); ?> </span> </div> ";
	}else {
		c_['status_action_share'] = "";
	}
	if (isset(status['action']) && isset(status['action']['invite']) && isset(status['action']['invite']['status']) && status['action']['invite']['status'] == true) {
		c_['status_action_invite'] = " <div class='invite'> <span status-action-invite> <?php print $_language->text('invite', 'ucfirst'); ?> </span> </div> ";
	}else {
		c_['status_action_invite'] = "";
	}
	if (isset(status['action']) && isset(status['action']['comment']) && isset(status['action']['comment']['status']) && status['action']['comment']['status'] == true) {
		c_['private_comment_class'] = "";
		c_['private_comment'] = " <textarea type='text' placeholder='<?php print $_language->text('write_a_comment', 'ucfirst'); ?>' status-action-comment handing='false'></textarea>";
	}else {
		c_['private_comment_class'] = "null";
		c_['private_comment'] = " <span> <?php print $_language->text('status_unlimited_comment', 'ucfirst'); ?> </span>";
	}
	if (isset(status['comment']) && isset(status['comment']['count']) && status['comment']['number'] === 0) {
		c_['status_comment_null'] = " <div class='null' status-comment-null> <span status-comment-null> <?php print $_language->text('status_null_comment', 'ucfirst'); ?> </span> </div> ";
		c_['status_comment_rows'] = c_['status_comment'] = "";
	}else {
		if (status['comment']['number'] > 3) {
			c_['status_comment_showmore'] = " <div class='showmore' status-comment-load> <i class='icon'></i> <span class='text'> <?php print $_language->text('show_more_comments', 'ucfirst'); ?> </span> </div> ";
		}else {
			c_['status_comment_showmore'] = "";
		}
		if (isset(status['comment']) && isset(status['comment']['count']) && status['comment']['count'] > 0) {
			c_['status_comment'] = " <div class='statistic'> <div class='info'> <i class='icon'> </i> <span class='number' status-stats-comment>"+status['comment']['count']+"</span> <span class='text'> <?php print $_language->text('comment(s)', 'strtolower'); ?> </span> </div>"+c_['status_comment_showmore']+"</div> ";
		}else {
			c_['status_comment'] = "";
		}
		c_['status_comment_rows'] = " <div class='null' status-comment-null> <span status-comment-null> <?php print $_language->text('status_null_comment', 'ucfirst'); ?> </span> </div> ";
		c_['status_comment_null'] = "";
	}
	var code = " <div class='status inFeeds boxGrid _h' status='"+c_['status_info']+"' status-id='"+status['info']['id']+"'> <div class='header'> <div class='cover'> <div class='wrap'> </div> <div class='img' style='background-image: url("+status['author']['cover']+");'> <img class='img' src='"+status['author']['cover']+"' alt='<?php print $_language->text('cover_of', 'strtolower'); ?> "+status['author']['name']+" ("+status['author']['tag']+")'> </div> </div> <div class='avatar'> <a href='"+status['author']['link']+"'> <img class='img' src='"+status['author']['avatar']+"' alt='<?php print $_language->text('avatar_of', 'strtolower'); ?> "+status['author']['name']+" ("+status['author']['tag']+")'> </a> </div> <div class='user'> "+c_['status_author_verified']+" <div class='name'> <a href='"+status['author']['link']+"'> <span>"+status['author']['name']+"</span> </a> </div> <div class='tag'> <a href='"+status['author']['link']+"'> <span>"+status['author']['tag']+"</span> </a> </div> </div> <div class='info'>"+c_['status_date']+""+c_['status_private']+""+c_['status_edit']+""+c_['status_places']+""+c_['status_mood']+"</div> "+c_['status_menu']+" </div> <div class='body'>"+c_['status_content_text']+""+c_['status_content_media']+""+c_['status_content_usertag']+"</div> <div class='footer'> <div class='info'> <div class='action'>"+c_['status_action_favorite']+""+c_['status_action_share']+""+c_['status_action_invite']+"</div> <div class='statistic'> <div class='favorite'> <i></i> <span status-stats-favorite>"+status['statistic']['favorite']+"</span> </div> <div class='share'> <i></i> <span status-stats-share>"+status['statistic']['share']+"</span> </div> <div class='invite'> <i></i> <span status-stats-invite>"+status['statistic']['invite']+"</span> </div> </div> </div> <div class='comment'> <div class='type "+c_['private_comment_class']+"' status-comment-type>"+c_['private_comment']+"</div>"+c_['status_comment']+"<div class='content' status-comment-content>"+c_['status_comment_null']+""+c_['status_comment_rows']+"</div> </div> </div> </div> ";
	var feed = $(".thisFeeds[feed]"),
		length = feed.find(".status.inFeeds[status]").length,
		num = feed.find(".status.inFeeds[status='"+c_['status_info']+"']").length,
		oldWindowHeight = $(document).height(),
		oldWindowScroll = $(document).scrollTop();
	if (options['sort'] == ">" && length > 0 && num === 0) {
		$(".status.inFeeds[status]").first().each(function(i) {
			$(this).before(code);
			return false;
		});
	}else if (options['sort'] == "<" && length > 0 && num === 0) {
		$(".status.inFeeds[status]").last().each(function() {
			$(this).after(code);
			return false;
		});
	}else if (length === 0 && num === 0) {
		feed.append(code);
	}
	setTimeout(function() {
		$(".status.inFeeds[status]._h").callEffect({
			mode: <?php print $_parameter->get('status_effect_id'); ?>, 
			type: 'show', 
			effect: '<?php print $_parameter->get('status_effect_type'); ?>', 
			duration: <?php print $_parameter->get('status_effect_duration'); ?>, 
			nextTime: <?php print $_parameter->get('status_effect_nextTime'); ?>,
			complete: function () {
				$(this).removeClass('_h');
			}
		});
	}, <?php print $_parameter->get('status_effect_show'); ?>);
	if (status['comment']['number'] != null && status['comment']['number'] > 0) {
		for (var i in status['comment']['data']) {
			feed_comment_push({status_id: status['info']['id'], sort: '>'}, status['comment']['data'][i]);
		}
	}
	setTimeout(feedAllFuncCallback, 100);
	var c = "";
}
var feed_status_favorite = function () {
	var button = $(".status.inFeeds[status]").find('[status-action-favorite][favorite]');
	button.bind('click', function() {
		var button = $(this);
		var handing = button.attr('handing');
		if (handing != "true") {
			button.attr('handing','true');
			var selector = button.parents('#gFeeds > .status[status]');
			if (selector == null || typeof JSON.parse(selector.attr('status')) != 'object') {
				return;
			}
			var status = JSON.parse(selector.attr('status'));
			var status_id = status['id'];
			var data = {'port': 'feed', 'type': 'status', 'id': [status_id]};
			var value = button.attr('favorite');
			if (value == "true") {
				data['action'] = "unfavorite";
			}else if (value == "false") {
				data['action'] = "favorite";
			}else {
				return;
			}
			var doneRequestFunc = function() {
				var status = $(".status.inFeeds[status]");
				status.each(function() {
					var status = $(this);
					if (JSON.parse(status.attr('status'))['id'] == status_id) {
						var button = status.find('[status-action-favorite][favorite]');
						button.removeAttr('handing');
					}
				});
			};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					var status = $(".status.inFeeds[status]");
					if (isset(data['return']) && data['return'] == true) {
						feed_status_stats({'id': [status_id], 'rows': ['all'], 'type': ['stats']});
						status.each(function() {
							var status = $(this);
							if (JSON.parse(status.attr('status'))['id'] == status_id) {
								var button = status.find('[status-action-favorite][favorite]');
								if (value == "true") {
									button.attr('favorite', 'false').text('<?php print $_language->text('favorite', 'strtolower'); ?>');
								}else if (value == "false") {
									button.attr('favorite', 'true').text('<?php print $_language->text('unfavorite', 'strtolower'); ?>');
								}
							}
						});
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason'])});
						if (data['reason'] != undefined && data['reason'] == 'ERROR#FEEDS_005') {
							var favorite = button.attr('favorite');
							if (favorite == "true") {
								// button.attr('favorite', 'false').text('<?php print $_language->text('favorite', 'strtolower'); ?>');
							}else if (favorite == "false") {
								// button.attr('favorite', 'true').text('<?php print $_language->text('unfavorite', 'strtolower'); ?>');
							}
						}
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		}
	});
}
var feed_comment_update = function () {
	var delay = 0,
		count = 0,
		options = {},
		status = $(".status.inFeeds[status][status-id]");
	status.each(function() {
		var status = $(this),
			insideType = "status",
			insideId = status.attr('status-id');
		if (status.attr('handling-comment-update') === undefined) {
			delay++;
		}
		if (status.attr('handling-comment-update') != "true") {
			status.attr('handling-comment-update', 'true');
			setTimeout(function() {
				status.removeAttr('handling-comment-update');
			},<?php print $_parameter->get('feed_update_timeout'); ?> / 3 * 2);
			var id = status.find(".lines[comment][comment-id]:first").attr('comment-id');
			if (!isset(id)) {
				//. continue;
			}
			var returnType = "json",
				sort = ">",
				limit = null;
			options[count] = {'return': returnType, 'inside_type': insideType, 'inside_id': insideId, 'id': id, 'sort': sort, 'limit': limit};
			count++;
		}
	});
	if (count > 0 && delay === 0) {
		feed_comment_load(options);
	}
	setTimeout(function() {
		feed_comment_update();
	},<?php print $_parameter->get('feed_update_timeout'); ?>);
}
feed_comment_update();

var feed_comment_add = function (object, callback) {
	if (!isset(object) || !isset(object['inside_type']) || !isset(object['inside_id']) || !isset(object['content'])) {
		return false;
	}
	var insideType = object['inside_type'],
		insideId = object['inside_id'],
		content = object['content'];
	var data = {'port': 'feed', 'type': 'comment', 'action': 'add', 'inside_type': insideType, 'inside_id': insideId, 'content': content};
	var requestCommentAdd = $.ajax({
		url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
		type: "GET",
		dataType: "json",
		data: data,
		contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
		error: function () {
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('transmission_error', 'ucfirst'); ?>. <?php print $_language->text('please_try_agian', 'ucfirst'); ?>."});
		},
		success: function (data) {
			console.log(data);
			if (isset(data['return']) && data['return'] === true && data['data'] !== undefined && typeof data['data'] == "object") {
				feed_comment_push({'inside_type': insideType, 'inside_id': insideId, 'sort': '>'}, data['data']);
				if (insideType == "status") {
					feed_status_stats({'id': [insideId], 'rows': ['all'], 'type': ['stats']});
				}else if (insideType == "comment") {
					feed_comment_stats({'id': [insideId], 'rows': ['all'], 'type': ['stats']});
				}
			}
		}
	}).fail(callback).done(callback);
}	
var feed_comment_addfromStatus = function () {
	var textarea = $(".status.inFeeds[status][status-id]").find("[status-action-comment]");
	textarea.bind('keyup', function(e) {
		var textarea = $(this);
		var value = textarea.val();
		var keycode = e.keyCode ? e.keyCode : e.which;
		if (keycode == 13) {
			var selector = textarea.parents(".status.inFeeds[status][status-id]");
			if (!isset(selector.attr('status')) || selector.attr('status') === null || typeof JSON.parse(selector.attr('status')) != "object") {
				return;
			}
			var status_id = selector.attr('status-id');
			if (isset(status_id) && textarea.attr('handing-add') != "true" && e.shiftKey === false) {
				if (new RegExp(/([\S]+)/ig).test(value) === true && new RegExp(/(^([\s]+)$)/ig).test(value) === false) {
					var doneRequestFunc = function () {
						textarea.val('').removeAttr('handing-add').attr('placeholder', '<?php print $_language->text("write_a_comment", 'ucfirst'); ?>').removeAttr('disabled');
					};
					textarea.val('').attr('handing-add', 'true').attr('placeholder','<?php print $_language->text("sending...", 'ucfirst'); ?>').attr('disabled','disabled');
					feed_comment_add({'inside_type': 'status', 'inside_id': status_id, 'content': value}, doneRequestFunc);
				}else {
					autosize(textarea, {'reset': true});
					popupNotification ({type: 'error', title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('comment_content_is_empty', 'ucfirst'); ?>."});
					textarea.val('').removeAttr('handing-add').attr('placeholder','<?php print $_language->text('write_a_comment', 'ucfirst'); ?>').removeAttr('disabled');
				}
			}
		}else {
			if (value.length > 40 && textarea.attr('guide-down-line') != "true") {
				textarea.attr('guide-down-line', 'true');
				popupNotification ({type: 'tips', title: '<?php print $_language->text('tips', 'ucfirst'); ?>', description: "<?php print $_language->text('guide_down_line_press', 'ucfirst'); ?>", timeout: 6000});
				setTimeout(function () {
					textarea.removeAttr('guide-down-line', 'true');
				}, 5 * 60000);
			}
		}
	});
	autosize(textarea, {'shift': true});
}
var feed_comment_addfromComment = function () {
	var status = $(".status.inFeeds[status][status-id]"),
		comment = status.find("[comment][comment-id]"),
		buttonCommentReply = comment.find("[status-comment-action-reply]");
	buttonCommentReply.bind('click', function(){
		var buttonCommentReplyThis = $(this),
			commentThis = buttonCommentReplyThis.parents("[comment][comment-id]"),
			commentReplyThis = commentThis.next(".lines.reply.typing[comment-id]");
		if (commentReplyThis.length === 0) {
			var c_inputType = "<div class='lines reply typing _h' status-comment-lines-reply comment-id='"+commentThis.attr('comment-id')+"'> <i></i> <textarea type='text' placeholder='<?php print $_language->text('write_a_reply', 'ucfirst'); ?>' status-comment-action-reply></textarea> </div>";
			commentThis.after(c_inputType);
			commentThis.next(".lines.reply.typing_h[status-comment-lines-reply][comment-id]").hide().fadeIn().removeClass("_h");
		}else {
			commentReplyThis.find("[status-comment-action-reply]").focus();	
		}
		var commentReplyThis = commentThis.next(".lines.reply[comment-id]"),
			commentReplyTypeThis = commentReplyThis.find("[status-comment-action-reply]");
		commentReplyTypeThis.bind('keyup', function (e) {
			var textarea = $(this)
			var value = textarea.val();
			var keycode = e.keyCode ? e.keyCode : e.which;
			if (keycode == 13) {
				if (textarea.attr('handing-add') != "true" && e.shiftKey === false) {
					if (new RegExp(/([\S]+)/ig).test(value) === true && new RegExp(/(^([\s]+)$)/ig).test(value) === false) {
						var doneRequestFunc = function () {
							textarea.val('').removeAttr('handing-add').attr('placeholder', '<?php print $_language->text('write_a_reply', 'ucfirst'); ?>').removeAttr('disabled');
						};
						textarea.val('').attr('handing-add', 'true').attr('placeholder','<?php print $_language->text('sending...', 'ucfirst'); ?>').attr('disabled','disabled');
						feed_comment_add({'inside_type': 'comment', 'inside_id': commentReplyThis.attr('comment-id'), 'content': value}, doneRequestFunc);
					}else {
						autosize(textarea, {'reset': true});
						popupNotification ({type: 'error', title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('comment_content_is_empty', 'ucfirst'); ?>."});
						textarea.val('').removeAttr('handing-add').attr('placeholder','<?php print $_language->text('write_a_reply', 'ucfirst'); ?>').removeAttr('disabled');
					}
				}
			}else {
				if (value.length > 30 && textarea.attr('guide-down-line') != "true") {
					textarea.attr('guide-down-line', 'true');
					popupNotification ({type: 'tips', title: '<?php print $_language->text('tips', 'ucfirst'); ?>', description: "<?php print $_language->text('guide_down_line_press', 'ucfirst'); ?>", timeout: 6000});
					setTimeout(function () {
						textarea.removeAttr('guide-down-line', 'true');
					}, 5 * 60000);
				}
			}
		});
		autosize(commentReplyTypeThis, {'shift': true});
	});
}
var feed_comment_favorite = function () {
	var button = $(".status.inFeeds[status][status-id]").find('[status-comment-action-favorite][favorite]');
	button.bind('click', function() {
		var buttonThis = $(this),
			statusThis = buttonThis.parents(".status.inFeeds[status][status-id]"),
			status = $(".status.inFeeds[status][status-id='"+statusThis.attr('status-id')+"']"),
			button = status.find("[comment-id='"+buttonThis.parents("[comment-id]").attr('comment-id')+"']").find("[status-comment-action-favorite][favorite]");
		if (button.attr('handing-favorite') != "true") {
			button.attr('handing-favorite', 'true');
			var selector = button.parents("[comment][comment-id]");
			if (!isset(selector.attr('comment-id')) || selector.attr('comment-id') === null) {
				return false;
			}
			var comment_id = selector.attr('comment-id');
			var data = {'port': 'feed', 'type': 'comment', 'id': [comment_id]};
			var value = buttonThis.attr('favorite');
			if (value == "true") {
				data['action'] = "unfavorite";
			}else if (value == "false") {
				data['action'] = "favorite";
			}
			var doneRequestFunc = function() {
				button.removeAttr('handing-favorite');
			};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				error: function () {
					setTimeout(function() {
						button.removeAttr('handing-favorite');
					}, <?php print $_parameter->get("sleep_when_error"); ?>);
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('transmission_error', 'ucfirst'); ?>. <?php print $_language->text('please_try_agian', 'ucfirst'); ?>."});
				},
				success: function (data) {
					if (isset(data['return']) && data['return'] === true) {
						if (isset(data['data']) && Object.keys(data['data']).length > 0) {
							var commentIdArr = [],
								commentRowsArr = [],
								commentTypeArr = [];
							for (var i in data['data']) {
								var thisRow = data['data'][i];
								if (isset(thisRow['return'], thisRow['id']) && thisRow['return'] == true) {
									commentIdArr[i] = thisRow['id'];
									commentRowsArr[i] = "all";
									commentTypeArr[i] = "stats";
									var button = button = status.find("[comment-id='"+thisRow['id']+"']").find("[status-comment-action-favorite][favorite]");
									button.removeAttr('handing-favorite').mouseout();
									if (value == "true") {
										button.attr('favorite', 'false').attr('tooltip', '<?php print $_language->text('favorite', 'ucfirst'); ?>');
									}else if (value == "false") {
										button.attr('favorite', 'true').attr('tooltip', '<?php print $_language->text('unfavorite', 'ucfirst'); ?>');
									}
								}
							}
							feed_comment_stats({'id': commentIdArr, 'rows': commentRowsArr, 'type': commentTypeArr}, null);
						}
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason'])});
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		}
	});
}
var feed_comment_showmore = function () {
	var buttonClickFuncInsideStatus = function () {
		var button = $(this),
			status = button.parents(".status.inFeeds[status][status-id]"),
			returnType = "json",
			insideType = "status",
			insideId = status.attr('status-id'),
			id = status.find(".lines[comment][comment-id]").last().attr('comment-id'),
			sort = "<",
			limit = "10";
		if (button.attr('handling-click') != "true" && isset(insideId) && isset(id)) {
			button.attr('handling-click', 'true');
			var getCommentOptions = {
				'return': returnType,
				'inside_type': insideType,
				'inside_id': insideId,
				'id': id,
				'sort': sort,
				'limit': limit
			};
			feed_comment_load([getCommentOptions]);
			setTimeout(function(){
				button.removeAttr('handling-click');
			},250);
		}
	};
	var buttonClickFuncInsideComment = function () {
		var button = $(this),
			status = button.parents(".status.inFeeds[status][status-id]"),
			returnType = "json",
			insideType = "comment",
			insideId = button.parents(".lines.statistic[status-comment-lines-stats][comment-id]").attr('comment-id'),
			id = status.find(".lines[comment][inside-type='comment'][inside-id='"+insideId+"']").last().attr('comment-id'),
			sort = "<",
			limit = "10";
		if (button.attr('handling-click') != "true" && isset(insideId) && isset(id)) {
			button.attr('handling-click', 'true');
			var getCommentOptions = {
				'return': returnType,
				'inside_type': insideType,
				'inside_id': insideId,
				'id': id,
				'sort': sort,
				'limit': limit
			};
			feed_comment_load([getCommentOptions]);
			setTimeout(function(){
				button.removeAttr('handling-click');
			},250);
		}
	};
	var buttonLoadComment = $(".status.inFeeds[status][status-id]").find("[status-comment-load]");
	buttonLoadComment.bind('click', buttonClickFuncInsideStatus);
	var buttonLoadReply = $(".status.inFeeds[status][status-id]").find("[status-comment-lines-stats][comment-id]").find("[status-comment-reply-load]");
	buttonLoadReply.bind('click', buttonClickFuncInsideComment);
}
var feed_comment_showmore_hide = function (object) {
	if (!isset(object['inside_type']) || !isset(object['inside_id'])) {
		return false;
	}
	var insideType = object['inside_type'],
		insideId = object['inside_id'];
	if (insideType == "status") {
		var status = $(".status.inFeeds[status][status-id='"+insideId+"']"),
			buttonLoadComment = status.find("[status-comment-load]");
	}else if (insideType == "comment") {
		var status = $(".status.inFeeds[status][status-id]"),
			comment = status.find("[status-comment-content]"),
			buttonLoadComment = comment.find("[status-comment-lines-stats][comment-id='"+insideId+"']").find("[status-comment-reply-load]");
	}
	buttonLoadComment.mouseout().fadeOut(function(){
		$(this).remove();
	});
};
var feed_comment_load = function (options, callback) {
	if (!isset(callback)) {
		var callback = null;
	}
	for (var i in options) {
		var optionsThis = options[i],
			returnType = optionsThis['return'],
			insideType = optionsThis['inside_type'],
			insideId = optionsThis['inside_id'],
			id = optionsThis['id'],
			sort = optionsThis['sort'],
			limit = optionsThis['limit'];
		if (!isset(insideType) || !isset(insideId) || !isset(id) || !isset(sort)) {
			delete options[i];
			//. continue;
		}else {
			if (insideType == "status") {
				var status = $(".status.inFeeds[status][status-id='"+insideId+"']");
				var buttonLoadComment = status.find("[status-comment-load]");
				if (buttonLoadComment.attr("handling-loading") == "true") {
					delete options[i];
				}else {
					buttonLoadComment.attr("handling-loading", 'true');
				}
			}else if (insideType == "comment") {
				var buttonLoadComment = $(".status.inFeeds[status][status-id]").find(".lines.statistic[comment-id='"+insideId+"']").find("[status-comment-reply-load]");
				if (buttonLoadComment.attr("handling-loading") == "true") {
					delete options[i];
				}else {
					buttonLoadComment.attr("handling-loading", 'true');
				}
			}
		}
	}
	if (Object.keys(options).length == 0) {
		//.
	}else {
		var afterDoneFunc = function() {
			for (var i in options) {
				var optionsThis = options[i],
					insideType = optionsThis['inside_type'],
					insideId = optionsThis['inside_id'];
				if (insideType == "status") {
					var status = $(".status.inFeeds[status][status-id='"+insideId+"']");
					var buttonLoadComment = status.find("[status-comment-load]");
					buttonLoadComment.removeAttr("handling-loading");
				}else if (insideType == "comment") {
					var buttonLoadComment = $(".status.inFeeds[status][status-id]").find(".lines.statistic[comment-id='"+insideId+"']").find("[status-comment-reply-load]");
					buttonLoadComment.removeAttr("handling-loading");
				}
			}
		};
		var data = {'port': 'feed', 'type': 'comment', 'action': 'load', 'options': options};
		var requestLoadComment = $.ajax({
			url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
			type: "GET",
			dataType: "json",
			data: data,
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			error: function () {
				popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('transmission_error', 'ucfirst'); ?>. <?php print $_language->text('please_try_agian', 'ucfirst'); ?>."});
			},
			success: function (data) {
				if (isset(data['return']) && isset(data['data']) && data['return'] === true) {
					if (countArr(data['data']) === 0) {
						//.
					}else {
						for (var i in data['data']) {
							var thisRow = data['data'][i];
							if (isset(thisRow['return']) && isset(thisRow['data']) && thisRow['return'] === true) {
								for (var x in options) {
									thisOptions = options[x];
									if (isset(thisRow['data']) && Object.keys(thisRow['data']).length === 0) {
										feed_comment_showmore_hide({'inside_type': thisRow['inside_type'], 'inside_id': thisRow['inside_id']});
									}else if (isset(thisRow['data']) && isset(thisRow['inside_type']) && isset(thisRow['inside_type']) && thisOptions['inside_type'] == thisRow['inside_type'] && isset(thisRow['inside_id']) && thisOptions['inside_id'] == thisRow['inside_id']) {
										feed_comment_push({'inside_type': thisRow['data']['info']['inside.type'], 'inside_id': thisRow['data']['info']['inside.id'], 'sort': thisOptions['sort']}, thisRow['data']);
										break;
									}
								}
							}else {
								//.
							}
						}
					}
				}else {
					//.
				}
			}
		}).fail(afterDoneFunc).done(afterDoneFunc);
	}
}
var feed_comment_printcode = function (commentArr) {
	if (!isset(commentArr)) {
		return false;
	}
	var classname = isset(commentArr['classname']) && typeof commentArr['classname'] === "string" ? commentArr['classname'] : null;
	commentArr['infoshow'] = commentArr['info'];
	if (isset(commentArr['infoshow']['token'])) {
		unset(commentArr['infoshow']['token']);
	}
	var code = {};
	code['time'] = (isset(commentArr['time']) && (typeof commentArr['time'] === "string" || typeof commentArr['time'] === "number")) ? "<div class='time'> <i class='_tt s' title='"+agoDatetime(commentArr['time'], 'tip')+"'></i> <span>"+agoDatetime(commentArr['time'], 'ago')+"</span> </div>" : "";
	code['author'] = (isset(commentArr['author']) && isset(commentArr['author']['type']) && isset(commentArr['author']['tag']) && isset(commentArr['author']['name']) && isset(commentArr['author']['link']) && typeof commentArr['author']['type'] === "string" && typeof commentArr['author']['name'] === "string" && typeof commentArr['author']['tag'] === "string" && typeof commentArr['author']['link'] === "string") ? "<div class='name'> <i class='i-"+commentArr['author']['type']+" _tt s' title='"+commentArr['author']['tag']+"'></i> <span> <a href='"+commentArr['author']['link']+"' target='_blank'>"+commentArr['author']['name']+"</a> </span> </div>" : "";
	code['edit'] = (isset(commentArr['edit']) && typeof commentArr['edit'] === "string") ? "<div class='edit'> <i class='_tt s' title='<?php print $_language->text('edited_at', 'strtolower'); ?> "+agoDatetime(commentArr['edit'], 'tip')+"'></i> <span>"+agoDatetime(commentArr['edit'], 'ago')+"</span> </div>" : "";
	code['action_reply'] = (isset(commentArr['info']) && isset(commentArr['info']['inside']) && isset(commentArr['info']['inside']['type']) && isset(commentArr['reply']['count']) && commentArr['info']['inside']['type'] == "status") ? "<div class='reply'> <i class='_tt s' status-comment-action-reply title='<?php print $_language->text('reply_comment', 'strtolower'); ?>'></i> <span status-comment-stats-reply>"+commentArr['reply']['count']+"</span> </div>" : "";
	if (isset(commentArr['action']) && isset(commentArr['action']['favorite']) && isset(commentArr['stats']) && isset(commentArr['stats']['favorite'])) {
		code['action_favorite'] = "";
		if (commentArr['action']['favorite'] === true) {
			code['action_favorite'] = "<i class='_tt s' status-comment-action-favorite favorite='true' title='<?php print $_language->text('unfavorite', 'strtolower'); ?>'></i>";
		}else if (commentArr['action']['favorite'] === false) {
			code['action_favorite'] = "<i class='_tt s' status-comment-action-favorite favorite='false' title='<?php print $_language->text('favorite', 'strtolower'); ?>'></i>";
		}
		code['action_favorite'] = "<div class='favorite'> "+code['action_favorite']+" <span status-comment-stats-favorite>"+commentArr['stats']['favorite']+"</span> </div>";
	}else {
		code['action_favorite'] = "";
	}
	if (isset(commentArr['reply']) && isset(commentArr['reply']['data']) && typeof commentArr['reply']['data'] === "object" && countArr(commentArr['reply']) > 0) {
		code['reply'] = "";
		for (var i in commentArr['reply']['data']) {
			replyThis = commentArr['reply']['data'][i];
			replyThis['classname'] = "reply lines";
			replyPrintCode = feed_comment_printcode(replyThis);
			console.log(replyPrintCode);
			if (isset(replyPrintCode) && typeof replyPrintCode === "string") {
				code['reply'] += replyPrintCode;
			}
		}
		if (isset(commentArr['reply']['count']) && commentArr['reply']['count'] >= 3) {
			
		}
	}else {
		code['reply'] = "";
	}
	return code = "<div class='"+classname+"' comment-id='"+commentArr['info']['id']+"' inside-type='"+commentArr['info']['inside']['type']+"' inside-id='"+commentArr['info']['inside']['id']+"' comment='"+JSON.stringify(commentArr['infoshow'])+"'> <div class='bL'> <a class='avatar' href='"+commentArr['author']['link']+"'> <img class='img' src='"+commentArr['author']['avatar']+"' alt='<?php print $_language->text('avatar_of', 'strtolower'); ?> "+commentArr['author']['name']+" ("+commentArr['author']['tag']+")'> </a> </div> <div class='bR'> <div class='i'></div> <div class='header'>"+code['author']+" "+code['time']+"</div> <div class='body'> <span class='content'>"+commentArr['content']['text']+"</span> </div> <div class='footer'> "+code['action_favorite']+" "+code['action_reply']+" "+code['edit']+"</div> </div> </div> "+code['reply'];
};
var feed_comment_push = function (options, commentArr) {
	if (!isset(options) || !isset(statusArr)) {
		return false;
	}
	feed_comment_printcode(commentArr);
	return;
	var count = 0,
		insideType = options['inside_type'],
		insideId = options['inside_id'],
		sort = options['sort'],
		className = "lines";
	if (insideType == "status") {
		var insideThis = $("[status][status-id='"+insideId+"']"),
			classNameLines = className;
	}else if (insideType == "comment") {
		var insideThis = $("[comment][comment-id='"+insideId+"']"),
			classNameLines = className+'.reply',
			className = className+" reply";
	}else {
		return false;
	}
	if (comment['info']['inside.type'] == "status") {
		var c_comment_reply = " <div class='reply'> <i class='_tt s' status-comment-action-reply title='<?php print $_language->text('reply_comment', 'ucfirst'); ?>'></i> <span status-comment-stats-reply>"+comment['reply']['count']+"</span> </div>";
	}else {
		var c_comment_reply = "";
	}
	if (isset(comment['edit']) == true && isset(comment['edit']['status']) == true && comment['edit']['status'] !== false) {
		var c_comment_edit = "<div class='edit' time='"+comment['edit']['time']['json']+"'> <i class='_tt-bk s' title='"+comment['edit']['time']['tip']+"'> </i> <span time-show>"+comment['edit']['time']['ago']+"</span> </div> ";
	}else {
		var c_comment_edit = "";
	}
	if (isset(comment['reply']['count']) && comment['reply']['count'] > 3) {
		var c_comment_showmore = "<div class='lines statistic' status-comment-lines-stats comment-id='"+comment['info']['id']+"'> <div class='info'> <i class='icon'></i> <span class='count' status-comment-stats-reply>"+comment['reply']['count']+"</span> <span class='text'><?php print $_language->text('reply(s)', 'strtolower'); ?></span> </div> <div class='showmore' status-comment-reply-load> <i class='icon'></i> <span class='text'><?php print $_language->text('show_more_reply', 'ucfirst'); ?></span> </div> </div>";
	}else {
		var c_comment_showmore = "";
	}
	var c_comment_id = comment['info']['id'];
	var c_comment_info = JSON.stringify(comment['info']);
	var c_data = "<div class='"+className+" _h' status-comment-lines comment-id='"+comment['info']['id']+"' inside-type='"+comment['info']['inside.type']+"' inside-id='"+comment['info']['inside.id']+"' comment='"+c_comment_info+"'> <div class='bL'> <a class='avatar' href='"+comment['author']['link']+"'> <img class='img' src='"+comment['author']['avatar']+"'> </a> </div> <div class='bR'> <div class='i'></div> <div class='header'> <div class='nowrap name'> <i class='i-"+comment['author']['type']+" _tt s' title='"+comment['author']['tag']+"'></i> <span> <a href='"+comment['author']['link']+"'>"+comment['author']['name']+"</a> </span> </div> <div class='nowrap time' time='"+comment['time']['json']+"'> <i class='_tt s' title='"+comment['time']['tip']+"'></i> <span time-show>"+comment['time']['ago']+"</span> </div> </div> <div class='body'> <span>"+comment['content']['text']+"</span> </div> <div class='footer'> <div class='favorite'> <i class='_tt s' status-comment-action-favorite favorite='"+comment['action']['favorite']['text']+"' title='"+comment['action']['favorite']['tip']+"'></i> <span status-comment-stats-favorite>"+comment['stats']['favorite']+"</span> </div>"+c_comment_edit+c_comment_reply+"</div> </div> </div> " + c_comment_showmore;
	insideThis.each(function(i) {
		var insideThis = $(this);
		if (insideType == "status") {
			var status = insideThis;
			var commentContent = status.find("[status-comment-content]");
			var lengthCommentLines = commentContent.find("[comment]").length;
			var lengthComment = status.find("[comment-id='"+comment['info']['id']+"']").length;
			if (sort == ">" && lengthCommentLines > 0 && lengthComment === 0) {
				status.find("[comment]").first().before(c_data);
			}else if (sort == "<" && lengthCommentLines > 0 && lengthComment === 0) {
				var statsLines = status.find("[comment]").last().next("[status-comment-lines-stats][comment-id]");
				if (statsLines.length === 0) {
					var replyLines = status.find("[comment]").last().next("[status-comment-lines-reply][comment-id]");
					if (replyLines.length === 0) {
						status.find("[comment]").last().after(c_data);
					}else {
						replyLines.after(c_data);
					}
				}else {
					statsLines.after(c_data);
				}
			}else if (lengthCommentLines === 0 && lengthComment === 0) {
				commentContent.append(c_data);
				commentContent.find("[status-comment-null]").callEffect({
					mode: 2, 
					type: "hide", 
					effect: "fade", 
					duration: <?php print $_parameter->get("status_comment_effect_duration"); ?>, 
					nextTime: <?php print $_parameter->get("status_comment_effect_nextTime"); ?>,
					complete: function () {
						$(this).remove();
					}
				});
			}
			setTimeout(function() {
				$("."+classNameLines+"._h[comment]").callEffect({
					mode: 2, 
					type: 'show', 
					effect: 'fade', 
					duration: <?php print $_parameter->get("status_comment_effect_duration"); ?>, 
					nextTime: <?php print $_parameter->get("status_comment_effect_nextTime"); ?>,
					complete: function () {
						$(this).removeClass("_h");
						feed_comment_favorite();
						feed_comment_showmore();
					}
				});
				$("."+classNameLines+"._h[comment]").removeClass("_h");
			}, <?php print $_parameter->get("status_comment_effect_show"); ?>);
			feed_comment_addfromComment();
			count++;
		}else if (insideType == "comment") {
			var status = insideThis.parents("[status]");
			var commentContent = status.find('[status-comment-content]');
			var lengthCommentLines = commentContent.find("[comment][inside-type='comment'][inside-id='"+insideId+"']").length;
			var statsLines = commentContent.find("[status-comment-lines-stats][comment-id='"+insideId+"']");
			var replyLines = commentContent.find("[status-comment-lines-reply][comment-id='"+insideId+"']");
			var lengthComment = status.find("[comment-id='"+comment['info']['id']+"']").length;
			if (sort == ">" && lengthCommentLines > 0 && lengthComment === 0) {
				if (statsLines.length === 0) {
					if (replyLines.length === 0) {
						status.find("[comment][inside-type='comment'][inside-id='"+insideId+"']").first().before(c_data);
					}else {
						replyLines.after(c_data);
					}
				}else {
					statsLines.after(c_data);
				}
			}else if (sort == "<" && lengthCommentLines > 0 && lengthComment === 0) {
				status.find("[comment][inside-type='comment'][inside-id='"+insideId+"']").last().after(c_data);
			}else if (lengthCommentLines === 0 && lengthComment === 0) {
				if (statsLines.length === 0) {
					if (replyLines.length === 0) {
						commentContent.find("[comment][comment-id='"+insideId+"']").after(c_data);
					}else {
						replyLines.after(c_data);
					}
				}else {
					statsLines.after(c_data);
				}
			}
			setTimeout(function() {
				$("."+classNameLines+"._h[comment]").callEffect({
					mode: 2, 
					type: 'show', 
					effect: 'fade',
					duration: <?php print $_parameter->get("status_comment_effect_duration"); ?>, 
					nextTime: <?php print $_parameter->get("status_comment_effect_nextTime"); ?>,
					complete: function () {
						$(this).removeClass("_h");
						feed_comment_favorite();
					}
				});
				$("."+classNameLines+"._h[comment]").removeClass("_h");
			}, <?php print $_parameter->get("status_comment_effect_show"); ?>);
			count++;
		}
	});
	if (count > 0) {
		setupTooltip();
		feed_comment_barScroll();
	}
}
var feed_comment_stats = function (object, callback) {
	if (!isset(object['id']) || !isset(object['rows']) || !isset(object['type'])) {
		return false;
	}
	if (!isset(callback)) {
		var callback = null;
	}
	var commentId = object['id'],
		commentRows = object['rows'],
		commentType = object['type'];
	var data = {'port': 'feed', 'type': 'comment', 'action': 'stats', 'obj': {'id': commentId, 'rows': commentRows, 'type': commentType}};
	var requestCommentAdd = $.ajax({
		url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
		type: "GET",
		dataType: "json",
		data: data,
		contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
		error: function () {
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('transmission_error', 'ucfirst'); ?>. <?php print $_language->text('please_try_agian', 'ucfirst'); ?>."});
		},
		success: function (data) {
			console.log(data);
			if (isset(data['return']) && data['return'] == true) {
				if (isset(data['data']) && Object.keys(data['data']).length > 0) {
					for (var i in data['data']) {
						var thisRow = data['data'][i];
						var status = $(".status.inFeeds[status][status-id]");
						var thisComment = status.find("[comment-id='"+thisRow['id']+"']");
						var oldStatsFavorite = thisComment.find("[status-comment-stats-favorite]").text();
						if (oldStatsFavorite != thisRow['stats']['favorite']) {
							thisComment.find("[status-comment-stats-favorite]").fadeOut(function(){
								$(this).text(thisRow['stats']['favorite']).fadeIn()
							});
						}
						var oldStatsReply = thisComment.find("[status-comment-stats-reply]").text();
						if (oldStatsReply != thisRow['stats']['reply']) {
							thisComment.find("[status-comment-stats-reply]").fadeOut(function(){
								$(this).text(thisRow['stats']['reply']).fadeIn()
							});
						}
					}
				}else {
					//.
				}
			}else {
				//.
			}
		}
	}).fail(callback).done(callback);
}
function feed_comment_barScroll () {
	var status = $(".status.inFeeds[status]");
	status.each(function() {
		var status = $(this),
			comment = status.find('[comment]'),
			num = comment.length;
		if (num >= <?php print $_parameter->get("status_comment_scrollbar_limit"); ?>) {
			status.find('[status-comment-content]').barScroll({
				height: 500,
				size: "5px",
				railOpacity: 0.25,
				distance: "2.5px"
			});
		}
	});
}
var feed_status_toggleMenu = function () {
	var status = $(".status.inFeeds[status]");
	status.each(function() {
		var status = $(this),
			buttonMenu = status.find(".header > .menu > .button"),
			buttonQRcode = status.find(".header > .qrcode > .button");
		buttonMenu.bind('click', function() {
			var button = $(this);
			if (button.next('.tab').attr('show') != "true") {
				button.next('.tab').slideDown(function() {
					$(this).attr('show', 'true');
					$(this).mouseleave(function() {
						$(this).slideUp().attr('show', 'false');
					});
					setTimeout(function() {
						$(this).attr('show', 'false');
					},100);
				});
			}
		});
		buttonQRcode.bind('click', function() {
			var button = $(this);
			if (button.next('.tab').attr('show') != "true") {
				button.next('.tab').slideDown(function() {
					$(this).attr('show', 'true');
					$(this).mouseleave(function() {
						$(this).slideUp().attr('show', 'false');
					});
					setTimeout(function() {
						$(this).attr('show', 'false');
					},100);
				});
			}
		});
		status.hover(function() {
			buttonMenu.stop(true,true).fadeIn();
			buttonQRcode.stop(true,true).fadeIn();
		}, function() {
			buttonMenu.fadeOut();
			buttonQRcode.fadeOut();
		});
	});
}
/*
*/
var feed_status_loadMedia = function () {
	var allStatus = $(".status.inFeeds[status-id][status]");
	allStatus.find(".body .media").each(function () {
		var boxMedia = $(this);
		boxMedia.children("[media][media-info]").each(function () {
			var thisMedia = $(this);
			var thisType = thisMedia.attr('media');
			var thisInfo = thisMedia.attr('media-info');
			if (isset(thisInfo) && typeof thisInfo === "string" && typeof JSON.parse(thisInfo) === "object") {
				var thisInfo = JSON.parse(thisInfo);
			}else {
				return;
			}
			if (isset(thisType) && thisType == "photos") {
				thisMedia.bind('click', function () {
					if (!isset(thisInfo['link']) || typeof thisInfo['link'] !== "string") {
						return false;
					}
					thisInfo['description'] = isset(thisInfo['description']) && typeof thisInfo['description'] === "string" ? thisInfo['description'] : "";
					if (thisMedia.attr('handling-media-show') == "true") {
						return false;
					}else {
						thisMedia.attr('handling-media-show', 'true');
					}
					var randkey = randomKeyString(10);
					var valueOverflowY = $("body").css('overflow-y');
					$("body").css({'overflow-y': 'hidden'}).append("<div id='statusPopupMedia' randkey='"+randkey+"'> <div class='boxButton'> <i close></i> </div> <img class='boxPhotos' src='"+thisInfo['link']+"' alt='"+thisInfo['description']+"'> </div>");
					var popupMedia = $("#statusPopupMedia[randkey='"+randkey+"']");
					popupMedia.removeAttr('randkey').hide().fadeIn();
					popupMedia.find(".boxButton > i[close]").bind('click', function () {
						popupMedia.fadeOut(function () {
							$(this).remove();
							$("body").css({'overflow-y': valueOverflowY});
						});
					});
					$(document).bind('keyup',function(e) {
						var keycode = (e.keyCode ? e.keyCode : e.which);
						if (keycode == 27 && popupMedia.length > 0) {
							popupMedia.find(".boxButton > i[close]").click();
						}
					});
					setTimeout(function () {
						thisMedia.removeAttr('handling-media-show');
					}, 100);
					/*
					$("body").css({'overflow-y': 'hidden'}).append("<div id='statusPopupMedia' randkey='"+randkey+"'> <div class='boxContent'> <div class='header'> <span>View photos<?php print $_language->text('', 'ucfirst'); ?></span> <i close></i> </div> <div class='body'> <div class='img'> <img src='"+thisInfo['link']+"' alt> </div> </div> <div class='footer'> <div class='action text'> <span>Giccos</span> </div> </div> </div> </div>");
					*/
				});
				thisMedia.children(".button.link").bind('click', function (e) {
					stopEvent(e);
					var buttonLink = $(this);
					if (buttonLink.children("a[href]").length > 0) {
						var linkRedirect = buttonLink.children("a[href]").attr('href');
						var targetRedirect = buttonLink.children("a[href]").attr('target');
						if (isset(linkRedirect) && typeof linkRedirect === "string") {
							if (isset(targetRedirect) && typeof targetRedirect === "string") {
								window.open(linkRedirect, targetRedirect);
							}else {
								window.location.href = linkRedirect;
							}
						}
					}
				});
			}else {
				//.
			}
		});
	});
};
var feedAllFuncCallback = function () {
	setupDirect();
	setupTooltip();
	feed_status_compress_content();
	feed_status_loadMedia();
	feed_status_arrangePhotos();
	feed_status_embed();
	feed_status_favorite();
	feed_status_share();
	feed_status_invite();
	feed_status_newcheck();
	feed_status_update();
	feed_status_menu();
	feed_status_toggleMenu();
	feed_comment_addfromStatus();
	feed_comment_addfromComment();
	feed_comment_favorite();
	feed_comment_showmore();
};
$(document).ready(feedAllFuncCallback);