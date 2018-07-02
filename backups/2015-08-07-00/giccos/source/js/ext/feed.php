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
					if (thisStatus.attr('compress-content-notify') != "true") {
						thisStatus.attr('compress-content-notify', 'true');
						popupNotification ({type: 'tips', title: '<?php print $_language->text('tips', 'ucfirst'); ?>', description: '<?php print $_language->text('click_disable_collapse_contents','ucfirst'); ?>.', timeout: 4000});
					}
					thisContent.animate({
						'height': oldHeight
					}, 100, function () {
						thisContent.children("span").html(oldText);
						thisContent.bind('click', function () {
							thisStatus.addClass('compress-content-disabled');
						});
					});
				}, function () {
					if (thisStatus.hasClass('compress-content-disabled')) {
						return false;
					}
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
function feed_status_share () {
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
				var code = "<div id='popupStatusAction' status-share status-token="+JSON.parse(status.attr('status'))['token']+"> <div class='box'> <div class='title nowrap'> <span><?php print $_language->text('share_this_status', 'ucfirst'); ?></span> <i class='close'></i> </div> <div class='main'> <div class='content'> <textarea class='ip_as' type='text' placeholder='<?php print $_language->text('feelings_about_it', 'ucfirst'); ?>'></textarea> </div> </div> <div class='options'> <div class='private'></div> <div class='action'> <div class='button true _bn_c-we'> <span><?php print $_language->text('done', 'ucfirst'); ?></span> </div> <div class='button false _bn_c-we'> <span><?php print $_language->text('cancel', 'ucfirst'); ?></span> </div> </div> </div> </div> </div>";
				$("body").append(code);
				var popupStatusAction = $("#popupStatusAction");
				popupStatusAction.hide().fadeIn(function(){
					$("body").css("overflow-y", "hidden");
				});
				popupStatusAction.find(".box").boxPosition({"type": "center", "resize": true});
				autosize($("#popupStatusAction .ip_as"), {'shift': false});
				$("#popupStatusAction .ip_as").donetyping(function(){
					popupStatusAction.find(".box").boxPosition({"type": "center", "resize": true});
				});
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
					shareButton.removeAttr('handling-setup');
				},100);
			}
		});
	});
	function send () {
		/*
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
						'token': popupStatusAction.attr("status-token")
					}
				},
				'private': {
					'view': JSON.parse(popupStatusAction.find(".box > .options > .private .selected [private]").attr("private"))['type']
				}
			};
			var data = {
				'port': 'status',
				'token': '<?php print $g_client['token']['action']['feed']; ?>',
				'action': 'upload',
				'data': dataStatus
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
						popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('status_has_been_posted','ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
					}
				}
			}).done(function(){
				setTimeout(function(){
					popupStatusAction.removeAttr('handling-send');
				});
			});
		}
		*/
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
				var code = "<div id='popupStatusAction' status-invite status-token="+JSON.parse(status.attr('status'))['token']+"> <div class='box'> <div class='title nowrap'> <span><?php print $_language->text('invite_your_friends', 'ucfirst'); ?></span> <i class='close'></i> </div> <div class='main'> <div class='content'> <input class type='text' placeholder='<?php print $_language->text('type_name_your_friends', 'ucfirst'); ?>'> </div> </div> <div class='options'> <div class='private'></div> <div class='action'> <div class='button true _bn_c-we'> <span><?php print $_language->text('done', 'ucfirst'); ?></span> </div> <div class='button false _bn_c-we'> <span><?php print $_language->text('cancel', 'ucfirst'); ?></span> </div> </div> </div> </div> </div>";
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
			}else {
				if (!isset(status.first().attr('status')) || typeof status.first().attr('status') != "string" || typeof JSON.parse(status.first().attr('status')) != "object") {
					return false;
				}
				var id = JSON.parse(status.first().attr('status'))['id'];
			}
			var except = [];
			feed.children(".status.inFeeds[status]").each(function () {
				var statusThis = $(this);
				if (!isset(statusThis.attr('status')) || typeof statusThis.attr('status') != "string" || typeof JSON.parse(statusThis.attr('status')) != "object") {
					//.
				}else {
					except[countArr(except)] = JSON.parse(statusThis.attr('status'))['id'];
				}
			});
			if (!isset(feed.attr('feed')) || typeof feed.attr('feed') != "string" || typeof JSON.parse(feed.attr('feed')) != "object") {
				return false;
			}
			var port = JSON.parse(feed.attr('feed'))['port'];
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
				type: "GET",
				dataType: "json",
				data: {'port': 'feed', 'type': 'status', 'action': 'newcheck', 'feed': port, 'id': id, except: except},
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					if (isset(data['return']) && data['return'] == true && isset(data['stats'])) {
						if (isset(data['stats']['count']) && typeof data['stats']['count'] == "number" && data['stats']['count'] > 0) {
							var statsCount = data['stats']['count'];
							popupNotification ({
								'type': 3, 
								'title': '<?php print $_language->text('news_feed', 'ucfirst'); ?>', 
								'description': statsCount + ' <?php print $_language->text('new_status', 'strtolower', false); ?>, <?php print $_language->text('drawn_up_for_update', 'strtolower', false); ?>.', 
								'callback': function() {
									//.
									var feed = $(".thisFeeds[feed]"),
										options = {};
									if (isset(feed.attr('feed')) && typeof feed.attr('feed') == "string" && typeof JSON.parse(feed.attr('feed')) == "object") {
										var info = JSON.parse(feed.attr('feed'));
										options['port'] = info['port'];
										if (status.length === 0) {
											var id = 0;
										}else {
											var id = JSON.parse(status.first().attr('status'))['id'];
										}
										options['sort'] = ">";
										if (isset(id) && typeof options == "object") {
											options['id'] = id;
											status_load(options);
										}
									}
								},
								'global': true,
								// 'audio': true
							});
						}
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason'])});
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
		options['port'] = info['port'];
		if (wS === 0) {
			var get = true;
			if (status.length === 0) {
				var id = 0;
			}else {
				var id = JSON.parse(status.first().attr('status'))['id'];
			}
			options['sort'] = ">";
		}else if (wS + 1 >= (dH - wH)) {
			if (status.length > 0) {
				var get = true,
					id = JSON.parse(status.last().attr('status'))['id'];
				options['sort'] = "<";
				options['limit'] = "5";
			}
		}
		var except = [];
		feed.find(".status.inFeeds[status]").each(function () {
			var statusThis = $(this);
			if (isset(statusThis.attr('status')) || typeof statusThis.attr('status') == "string" || typeof JSON.parse(statusThis.attr('status')) == "object") {
				except[countArr(except)] = JSON.parse(statusThis.attr('status'))['id'];
			}
		});
		options['except'] = except;
		if (isset(id) && isset(get) && get == true && typeof options == "object") {
			options['id'] = id;
			status_load(options);
		}
	});
}
var status_load = function (options) {
	var id = options['id'],
		sort = options['sort'],
		port = options['port'],
		except = options['except'],
		data = {'port' : 'feed', 'type': 'status', 'action': 'load', 'feed': port, 'sort': sort, 'id': id, 'except': except};
	if (!isset(port) || !isset(port['require'])) {
		return false;
	}
	if (port['require'] == "none") {
		return false;
	}
	if (isset(options['limit']) && options['limit'] > 0) {
		data['limit'] = options['limit'];
	}else if (options['sort'] == '<' && options['limit'] == null) {
		data['limit'] = '5';
	}
	var feed = $(".thisFeeds[feed]");
	if (feed.attr('handing-load') != "true") {
		var failRequestFunc = function() {
			feed.removeAttr("handing-load");
		};
		var doneRequestFunc = function() {
			feed.removeAttr("handing-load");
		};
		feed.attr('handing-load', 'true');
		$.ajax({
			url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
			type: "GET",
			dataType: "json",
			data: data,
			success: function (data) {
				console.log(data);
				if (isset(data['return']) && data['return'] == true) {
					if (countArr(data['data']) > 0) {
						for (var i in data['data']) {
							var status = data['data'][i];
							feed_status_push({'sort': sort}, status);
						}
					}
				}else {
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason'])});
				}
			}
		}).fail(failRequestFunc).done(doneRequestFunc);
	}
}
var status_autosize = function () {
	autosize($(".status.inFeeds[status]").find(".ip_as"));
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
								if (isInfo['id'] == rows['id']) {
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
			menu = status.find("[status-menu]"),
			button = menu.find("[menu-type]");
		button.bind('click', function() {
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
													button.attr('menu-type', 'unfollow').children("span").text("<?php print $_language->text('unfollow','ucfirst'); ?>");
												}else if (isset(rows['action']) && inArray(rows['action'], ['remove', 'unfollow'])) {
													var popupDescription = "<?php print $_language->text('status_follow_remove_success', 'ucfirst'); ?>";
													var button = menu.find("[menu-type='unfollow']");
													button.attr('menu-type', 'follow').children("span").text("<?php print $_language->text('follow','ucfirst'); ?>");
												}
												count++;
											}
										});
										if (count > 0) {
											if (!isset(popupDescription)) {
												var popupDescription = "<?php print $_language->text('action_have_been_implemented', 'ucfirst'); ?>";
											}
											popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: popupDescription});
										}
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
	});
}
var status_getCodeMedia = function (object) {
	var c_ = {};
	if (object['media']['type'] == "link") {
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
	}else if (object['media']['type'] == "photos") {
		c_['status_content_media'] = "<div class='media PhotosBox'>";
		for (var i in object['media']['data']) {
			var value = object['media']['data'][i];
			value['id'] = "media_photos_"+value['display']+"_"+Math.round(new Date/1e3);
			value['info'] = JSON.stringify({"type": "photos", "id": value['id'], "display": value['display'], "mime": value['mime'], "thumbnail": value['thumbnail'], "link": value['link'], "share": value['share']});
			c_['status_content_media'] = c_['status_content_media']+" <div class='photos' id='"+value['id']+"' media='photos' media-display='"+value['display']+"' media-info='"+value['info']+"' style='background-image: url("+value['thumbnail']+")'> <img src='"+value['thumbnail']+"' alt='"+object['string']+"'> </div>";
		}
		c_['status_content_media'] = c_['status_content_media']+"</div>";
	}else if (object['media']['type'] == "music") {
		c_['status_content_media'] = "<div class='media MusicBox'>";
			for (var i in object['media']['data']) {
				var value = object['media']['data'][i];
				value['id'] = "media_music_"+value['token']+"_"+Math.round(new Date/1e3);
				value['info'] = JSON.stringify({"type": "music", "id": value['id'], "display": value['display'], "link": value['link'], "name": value['name'], "mime": value['mime'], "singer": value['singer'], "description": value['description'], "share": value['share']});
				c_['status_content_media'] = c_['status_content_media']+" <div class='music' id='"+value['id']+"' media='music' media-display='"+value['display']+"' media-info='"+value['info']+"'> <div class='icon'> <i></i> </div> <div class='text'> <div class='name nowrap'><span>"+value['name']+"</span></div> <div class='singer nowrap'><span>"+value['singer']+"</span></div> <div class='description nowrap'><span>"+value['description']+"</span></div> </div> </div> ";
			}
		c_['status_content_media'] = c_['status_content_media']+"</div>";
	}else if (object['media']['type'] == "videos") {
		c_['status_content_media'] = "<div class='media VideosBox'>";
			for (var i in object['media']['data']) {
				var value = object['media']['data'][i];
				value['id'] = "media_videos_"+value['display']+"_"+Math.round(new Date/1e3);
				value['info'] = JSON.stringify({"type": "videos", "id": value['id'], "display": value['display'], "link": value['link'], "thumbnail": value['thumbnail'], "name": value['name'], "mime": value['mime'], "description": value['description'], "share": value['share']});
				c_['status_content_media'] = c_['status_content_media']+" <div class='videos' id='"+value['id']+"' media='videos' media-display='"+value['display']+"' media-info='"+value['info']+"' style='background-image: url("+value['thumbnail']+");'> <div class='wrap'></div> <div class='icon'> <i></i> </div> <div class='nav'> <div class='name nowrap'><span>"+value['name']+"</span></div> <div class='description nowrap'><span>"+value['description']+"</span></div> </div> </div> ";
			}
		c_['status_content_media'] = c_['status_content_media']+"</div>";
	}else if (object['media']['type'] == "cited") {
		value = object['media']['data'][0];
		value['id'] = "media_cited_"+value['display']+"_"+Math.round(new Date/1e3);
		value['info'] = JSON.stringify({"type": "cited", "id": value['id'], "display": value['display'], "author": value['author'], "quote": value['quote'], "share": value['share']});
		if (value['thumbnail'] != null) {
			c_['cited_thumbnail'] = "style='background-image: url("+value['thumbnail']+");'";
		}else {
			c_['cited_thumbnail'] = '';
		}
		c_['status_content_media'] = "<div class='media CitedBox'> <div class='cited' id='"+value['id']+"' media='cited' media-display='"+value['display']+"' media-info='"+value['info']+"' "+c_['cited_thumbnail']+"> <div class='quote'><span>"+value['quote']+"</span></div> <div class='author'><span>"+value['author']+"</span></div> </div> </div>";
	}else if (object['media']['type'] == "share") {
		info = object['media']['data'][0]['info'];
		author = object['media']['data'][0]['author'];
		value = object['media']['data'][0]['content'];
		c_['status_content_media'] = "<div class='media ShareBox'> <i class='arrow'></i> <div class='share' media='share'> <div class='author'><span><?php print $_language->text('from', 'strtolower', false); ?> <a href='"+info['link']+"' target='_blank'><?php print $_language->text('status', 'strtolower', false); ?></a> <?php print $_language->text('by', 'strtolower', false); ?> <a href='"+author['link']+"' target='_blank'>"+author['name']+" ("+author['tag']+")</a></span></div> <div class='text'> <span>"+value['text']+"</span> </div> "+status_getCodeMedia(value)+" </div> </div>";
	}else {
		c_['status_content_media'] = "";
	}
	return c_['status_content_media'];
}
var feed_status_push = function (options, status) {
	if (!isset(options) || !isset(status)) {
		return false;
	}
	c_ = {};
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
			c_['status_content_media'] = status_getCodeMedia(status['content']);
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
									button.attr('favorite', 'false').text('<?php print $_language->text('favorite', 'ucfirst'); ?>');
								}else if (value == "false") {
									button.attr('favorite', 'true').text('<?php print $_language->text('unfavorite', 'ucfirst'); ?>');
								}
							}
						});
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason'])});
						if (data['reason'] != undefined && data['reason'] == 'ERROR#FEEDS_005') {
							var favorite = button.attr('favorite');
							if (favorite == "true") {
								// button.attr('favorite', 'false').text('<?php print $_language->text('favorite', 'ucfirst'); ?>');
							}else if (favorite == "false") {
								// button.attr('favorite', 'true').text('<?php print $_language->text('unfavorite', 'ucfirst'); ?>');
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
			var id = status.find(".lines[status-comment-lines][comment][comment-id]:first").attr('comment-id');
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
		var keycode = (e.keyCode ? e.keyCode : e.which);
		if (keycode == 13) {
			var textarea = $(this),
				selector = textarea.parents(".status.inFeeds[status][status-id]");
			if (!isset(selector.attr('status')) || selector.attr('status') === null || typeof JSON.parse(selector.attr('status')) != "object") {
				return;
			}
			var status_id = selector.attr('status-id');
			if (isset(status_id) && textarea.attr('handing-add') != "true") {
				var value = textarea.val(),
					regex = new RegExp(/(\b\n)/);
				if (value != null) {
					var doneRequestFunc = function () {
						textarea.val('').removeAttr('handing-add').attr('placeholder', '<?php print $_language->text("write_a_comment", 'ucfirst'); ?>').removeAttr('disabled');
					};
					textarea.val('').attr('handing-add', 'true').attr('placeholder','<?php print $_language->text("sending...", 'ucfirst'); ?>').attr('disabled','disabled');
					feed_comment_add({'inside_type': 'status', 'inside_id': status_id, 'content': value}, doneRequestFunc);
				}else {
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text("comment_is_not_found", 'ucfirst'); ?>.<br> <?php print $_language->text('please_try_agian', 'ucfirst'); ?>."});
					textarea.val('').removeAttr('handing-add').attr('placeholder','<?php print $_language->text("write_a_comment", 'ucfirst'); ?>').removeAttr('disabled');
				}
			}else {
				textarea.val('').removeAttr('handing-add').attr('placeholder','<?php print $_language->text("write_a_comment", 'ucfirst'); ?>').removeAttr('disabled');
				popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError('ERROR#FEEDS_008')});
			}
		}
	});
}
var feed_comment_addfromComment = function () {
	var status = $(".status.inFeeds[status][status-id]"),
		comment = status.find("[status-comment-lines][comment][comment-id]"),
		buttonCommentReply = comment.find("[status-comment-action-reply]");
	buttonCommentReply.bind('click', function(){
		var buttonCommentReplyThis = $(this),
			commentThis = buttonCommentReplyThis.parents("[status-comment-lines][comment][comment-id]"),
			commentReplyThis = commentThis.next(".lines.reply[status-comment-lines-reply][comment-id]");
		if (commentReplyThis.length === 0) {
			var c_inputType = "<div class='lines _h reply' status-comment-lines-reply comment-id='"+commentThis.attr('comment-id')+"'> <i></i> <textarea type='text' placeholder='<?php print $_language->text('write_a_reply', 'ucfirst'); ?>' status-comment-action-reply></textarea> </div>";
			commentThis.after(c_inputType);
			commentThis.next(".lines.reply._h[status-comment-lines-reply][comment-id]").hide().fadeIn().removeClass("_h");
		}else {
			commentReplyThis.find("[status-comment-action-reply]").focus();	
		}
		var commentReplyThis = commentThis.next(".lines.reply[status-comment-lines-reply][comment-id]"),
			commentReplyTypeThis = commentReplyThis.find("[status-comment-action-reply]");
		commentReplyTypeThis.bind('keypress', function(e){
			var keycode = (e.keyCode ? e.keyCode : e.which);
			if (keycode == 13) {
				var textarea = $(this),
					value = textarea.val(),
					regex = new RegExp(/(\b\n)/);
				if (value != null) {
					var doneRequestFunc = function () {
						textarea.val('').removeAttr('handing-add').attr('placeholder', '<?php print $_language->text("write_a_comment", 'ucfirst'); ?>').removeAttr('disabled');
					};
					textarea.val('').attr('handing-add', 'true').attr('placeholder','<?php print $_language->text("sending...", 'ucfirst'); ?>').attr('disabled','disabled');
					feed_comment_add({'inside_type': 'comment', 'inside_id': commentReplyThis.attr('comment-id'), 'content': value}, doneRequestFunc);
				}
			}
		});
	});
}
var feed_comment_favorite = function () {
	var button = $(".status.inFeeds[status][status-id]").find('[status-comment-action-favorite][favorite]');
	button.bind('click', function() {
		var buttonThis = $(this),
			statusThis = buttonThis.parents(".status.inFeeds[status][status-id]"),
			status = $(".status.inFeeds[status][status-id='"+statusThis.attr('status-id')+"']"),
			button = status.find("[status-comment-lines][comment-id='"+buttonThis.parents("[status-comment-lines][comment-id]").attr('comment-id')+"']").find("[status-comment-action-favorite][favorite]");
		if (button.attr('handing-favorite') != "true") {
			button.attr('handing-favorite', 'true');
			var selector = button.parents("[status-comment-lines][comment][comment-id]");
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
									var button = button = status.find("[status-comment-lines][comment-id='"+thisRow['id']+"']").find("[status-comment-action-favorite][favorite]");
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
			id = status.find(".lines[status-comment-lines][comment][comment-id]").last().attr('comment-id'),
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
			id = status.find(".lines[status-comment-lines][comment][inside-type='comment'][inside-id='"+insideId+"']").last().attr('comment-id'),
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
					if (Object.keys(data['data']).length === 0) {
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
var feed_comment_push = function (options, comment) {
	var count = 0,
		insideType = options['inside_type'],
		insideId = options['inside_id'],
		sort = options['sort'],
		className = "lines";
	if (insideType == "status") {
		var insideThis = $("[status][status-id='"+insideId+"']"),
			classNameLines = className;
	}else if (insideType == "comment") {
		var insideThis = $("[status-comment-lines][comment][comment-id='"+insideId+"']"),
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
			var lengthCommentLines = commentContent.find("[status-comment-lines][comment]").length;
			var lengthComment = status.find("[status-comment-lines][comment-id='"+comment['info']['id']+"']").length;
			if (sort == ">" && lengthCommentLines > 0 && lengthComment === 0) {
				status.find("[status-comment-lines][comment]").first().before(c_data);
			}else if (sort == "<" && lengthCommentLines > 0 && lengthComment === 0) {
				var statsLines = status.find("[status-comment-lines][comment]").last().next("[status-comment-lines-stats][comment-id]");
				if (statsLines.length === 0) {
					var replyLines = status.find("[status-comment-lines][comment]").last().next("[status-comment-lines-reply][comment-id]");
					if (replyLines.length === 0) {
						status.find("[status-comment-lines][comment]").last().after(c_data);
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
				$("."+classNameLines+"._h[status-comment-lines][comment]").callEffect({
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
				$("."+classNameLines+"._h[status-comment-lines][comment]").removeClass("_h");
			}, <?php print $_parameter->get("status_comment_effect_show"); ?>);
			feed_comment_addfromComment();
			count++;
		}else if (insideType == "comment") {
			var status = insideThis.parents("[status]");
			var commentContent = status.find('[status-comment-content]');
			var lengthCommentLines = commentContent.find("[status-comment-lines][comment][inside-type='comment'][inside-id='"+insideId+"']").length;
			var statsLines = commentContent.find("[status-comment-lines-stats][comment-id='"+insideId+"']");
			var replyLines = commentContent.find("[status-comment-lines-reply][comment-id='"+insideId+"']");
			var lengthComment = status.find("[status-comment-lines][comment-id='"+comment['info']['id']+"']").length;
			if (sort == ">" && lengthCommentLines > 0 && lengthComment === 0) {
				if (statsLines.length === 0) {
					if (replyLines.length === 0) {
						status.find("[status-comment-lines][comment][inside-type='comment'][inside-id='"+insideId+"']").first().before(c_data);
					}else {
						replyLines.after(c_data);
					}
				}else {
					statsLines.after(c_data);
				}
			}else if (sort == "<" && lengthCommentLines > 0 && lengthComment === 0) {
				status.find("[status-comment-lines][comment][inside-type='comment'][inside-id='"+insideId+"']").last().after(c_data);
			}else if (lengthCommentLines === 0 && lengthComment === 0) {
				if (statsLines.length === 0) {
					if (replyLines.length === 0) {
						commentContent.find("[status-comment-lines][comment][comment-id='"+insideId+"']").after(c_data);
					}else {
						replyLines.after(c_data);
					}
				}else {
					statsLines.after(c_data);
				}
			}
			setTimeout(function() {
				$("."+classNameLines+"._h[status-comment-lines][comment]").callEffect({
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
				$("."+classNameLines+"._h[status-comment-lines][comment]").removeClass("_h");
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
						var thisComment = status.find("[status-comment-lines][comment-id='"+thisRow['id']+"']");
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
			comment = status.find('[status-comment-lines][comment]'),
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
			button = status.find(".header > .menu > .button");
		button.bind('click', function() {
			var button = $(this);
			if (button.next('.tab').attr('show') != "true") {
				button.next('.tab').slideDown(function() {
					$(this).attr('show','true');
					$(this).mouseleave(function() {
						$(this).slideUp().attr('show','false');
					});
					setTimeout(function() {
						$(this).attr('show','false');
					},100);
				});
			}
		});
		status.hover(function() {
			button.stop(true,true).fadeIn();
		}, function() {
			button.fadeOut();
		});
	});
}
var feed_status_loadMedia = function () {
	var media = $(".status.inFeeds [media][media-info]");
	media.bind('click', function (e) {
		var media = $(this),
			type = media.attr("media"),
			object = media.attr("media-info"),
			token = media.attr("media-token");
		if (type == "photos" && object != "" && object !== undefined && typeof JSON.parse(object) == "object") {
			var object = JSON.parse(object);
			if (media.attr('handing') != "true") {
				$("#fullscreen").remove();
				media.attr('handing', 'true');
				var code = "<div id='fullscreen'> <div class='view photos'> <div class='close'><i></i></div> <img id='"+object['id']+"' src='"+object['link']+"' /> </div> </div>";
				$("body").append(code);
				setTimeout(function() {
					media.attr('handing','false');
				},100);
				var fullscreen = $("#fullscreen"),
					close = fullscreen.children(".view.photos").children(".close");
				close.bind('click', function() {
					fullscreen.fadeOut(function() {
						$(this).remove();
						$("body").css('overflow-y','auto');
					});
				});
				$(document).bind('keyup',function(e) {
					var keycode = (e.keyCode ? e.keyCode : e.which);
					if (keycode == '27' && fullscreen.length > 0) {
						close.click();
					}
				});
				$("body").css('overflow-y','hidden');
				fullscreen.hide().fadeIn();
			}
		}else if ((type == "music" || type == "videos") && object != null && typeof JSON.parse(object) == "object") {
			var object = JSON.parse(object);
			var mediaId = object['id'];
			if (object['type'] == 'music') {
				var box = $(this).parent('.media.MusicBox'),
					c_info = "<div class='navBar'> <div class='info'> <div class='name nowrap'> <div class='move'><i class='fa'></i></div> <span>"+object['name']+"</span> </div> <div class='description nowrap'> <span>"+object['description']+"</span> </div> </div> </div>",
					c_media = '<audio id="'+object['id']+'" class="gplayer-skin v-simple audio" width="98%" height="82"> <source src="'+object['link']+'" type="'+object['mime']+'"> </audio>';
			}else if (object['type'] == 'videos') {
				var box = $(this).parent('.media.VideosBox'),
					c_info = "<div class='navBar'> <div class='info'> <div class='name nowrap'> <div class='move'><i class='fa'></i></div> <span>"+object['name']+"</span> </div> <div class='description nowrap'> <span>"+object['description']+"</span> </div> </div> </div>",
					c_media = '<video id="'+object['id']+'" class="gplayer-skin v-simple video" width="98%" height="275"> <source src="'+object['link']+'" type="'+object['mime']+'"> </video>';
			}
			if (!isset(object['thumbnail']) || typeof object['thumbnail'] != "string") {
				object['thumbnail'] = 'http://www.fmwconcepts.com/misc_tests/foot_process/foot_rainbow_spots.png';
			}
			var options = {
				'controls': true,
				'autoplay': false,
				'preload': 'auto',
				'poster': object['thumbnail'],
				'plugins': {
    				'replay': {
      					'active': true,
						'display': object['display'],
						'distance': 3,
						'expires': 900
					},
					'information': {
						'active': true,
						'auto': false,
						'info': {
							'name': object['name'],
							'share': {
								'link': object['share']['link']
							}
						}
					}
				}
			};
			if (object['type'] == "music") {
				options['plugins']['loop'] = {'active': true};
			}else if (object['type'] == "videos") {
				options['plugins']['progresstips'] = {'active': true};
			}
			media.replaceWith(c_media);
			var demo_mediaPlayerThis = gplayer(object['id'], options);
			box.children('div').first().before(c_info);
			box.attr('media', object['id']);
			var moveButton = box.children(".navBar").children(".info").find(".move");
			moveButton.bind('click', function() {
				moveButton = $(this);
				if (moveButton.attr('handing-move') != "true") {
					moveButton.attr('handing-move', 'true');
					var box = moveButton.parents(".media[media]");
					if (box.hasClass('PopupBox') == true) {
						undo(box.attr('media'));
					}else {
						$(".status.inFeeds > .body .media.PopupBox").not("[media='"+object['id']+"']").find(".navBar > .info > div > .move").click();
						var c_space = "<div class='media SpaceBox' undo='"+box.attr('media')+"'> <i class='fa fa-undo'></i> <br> <span>Undo</span> </div>";
						box.after(c_space).addClass('PopupBox').css({
							'right': '0',
							'bottom': '0'
						}).animate({
							'right': '20px',
							'bottom': '20px'
						}, 750);
						var undoBox = $(".status.inFeeds > .body .media.SpaceBox[undo]");
						undoBox.bind('click', function() {
						var moveButton = $(".status.inFeeds > .body .media.PopupBox[media='"+$(this).attr('undo')+"'] > .navBar > .info > div > .move");
							moveButton.click();
						});
					}
					moveButton.removeAttr('handing-move');
				}
			});
			var undo = function (key) {
				var status = box.parents(".status.inFeeds[status]");
				box.removeClass('PopupBox');
				status.find(".media.SpaceBox[undo='"+key+"']").remove();
			};
		}
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