function status_arrangePhotos () {
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
			if (photosNumber % 3 == 0 || (photosNumber % 3 == 2 && Object.keys(iObj).length > 1)) {
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
					if (i == 0 || $.inArray(i, iObj) >= 0) {
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
						if (i % 2 == 0) {
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
function status_statistic (id, from) {
	if (id > 0) {
		$.ajax({
			type: "POST",
			dataType: "json",
			url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
			data: {'token': '<?php print $g_client['token']['feed']['status']; ?>', 'type': 'status_statistic', 'id': id, 'from': from},
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			error: function () {
				popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('transmission_error', 'ucfirst'); ?>. <?php print $_language->text('please_try_agian', 'ucfirst'); ?>.', from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
			},
			success: function (data) {
				if (data['return'] == true) {
					if (data['data'] != undefined && typeof data['data'] == "object" && Object.keys(data['data']).length > 0) {
						for (var i in data['data']) {
							var rows = data['data'][i],
								status = $(".status.inFeeds[status]");
							console.log(rows);
							status.each(function(){
								var status = $(this),
									object = JSON.parse(status.attr('status'));
								if (object['id'] == rows['id']) {
									var favorite = status.find('[status-statistic-favorite]'),
										share = status.find('[status-statistic-share]'),
										invite = status.find('[status-statistic-invite]'),
										comment = status.find('[status-statistic-comment]');
									favorite.text(rows['statistic']['favorite']);
									share.text(rows['statistic']['share']);
									invite.text(rows['statistic']['invite']);
									if (comment.length > 0) {
										comment.text(rows['statistic']['comment']);
									}else if (comment.length == 0 && rows['statistic']['comment'] > 0) {
										var c_comment_statistic = "<div class='statistic'> <div class='info'> <i class='icon'></i> <span class='number' status-statistic-comment=''>"+rows['statistic']['comment']+"</span> <span class='text'><?php print $_language->text('comment(s)', 'strtolower'); ?></span> </div> </div> ";
										status.find('[status-comment-type]').after(c_comment_statistic);
									}
								}
							});
						}
					}
				}else {
					var description = transferError(data['reason']);
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: description, from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
				}
			}
		});
	}
}
function status_share () {
	$(".status.inFeeds[status]").each(function(){
		var status = $(this),
			shareButton = status.find("[status-action-share]");
		shareButton.bind('click', function(){
			var shareButton = $(this);
			if (shareButton.attr('handling-setup') != "true") {
				shareButton.attr("handling-setup", "true");
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
				$("#popupStatusAction .ip_as").autosize().donetyping(function(){
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
				$(document).bind('keyup',function(e) {
					var keycode = (e.keyCode ? e.keyCode : e.which);
					if (keycode == '27' && popupStatusAction.length > 0) {
						popupStatusAction.find(".box > .options > .action > .button.false").click();
					}
				});
				setTimeout(function(){
					shareButton.attr("handling-setup", "false");
				},100);
			}
		});
	});
	function send () {
		var popupStatusAction = $("#popupStatusAction");
		if (popupStatusAction.attr("handling-send") != "true") {
			popupStatusAction.attr("handling-send","true");
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
				'token': '<?php print $g_client['token']['action']['status']; ?>',
				'action': 'upload',
				'data': dataStatus
			};
			$.ajax({
				type: "POST",
				dataType: "json",
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					if (data['return'] == true) {
						popupStatusAction.find(".box > .options > .action > .button.false").click();
						popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('status_has_been_posted','ucfirst'); ?>', from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
					}
				}
			}).done(function(){
				setTimeout(function(){
					popupStatusAction.attr("handling-send","false");
				});
			});
		}
	}
}
function status_invite () {
	$(".status.inFeeds[status]").each(function(){
		var status = $(this),
			inviteButton = status.find("[status-action-invite]");
		inviteButton.bind('click', function(){
			var inviteButton = $(this);
			if (inviteButton.attr("handling-setup") != "true") {
				inviteButton.attr("handling-setup", "true");
				var popupStatusAction = $("#popupStatusAction");
				if (popupStatusAction.length > 0) {
					popupStatusAction.find(".box > .title > .close").click();
				}
				var code = "<div id='popupStatusAction' status-invite status-token="+JSON.parse(status.attr('status'))['token']+"> <div class='box'> <div class='title nowrap'> <span><?php print $_language->text('invite_your_friends', 'ucfirst'); ?></span> <i class='close'></i> </div> <div class='main'> <div class='content'> <input class type='text' placeholder='<?php print $_language->text('type_name_your_friends', 'ucfirst'); ?>' /> </div> </div> <div class='options'> <div class='private'></div> <div class='action'> <div class='button true _bn_c-we'> <span><?php print $_language->text('done', 'ucfirst'); ?></span> </div> <div class='button false _bn_c-we'> <span><?php print $_language->text('cancel', 'ucfirst'); ?></span> </div> </div> </div> </div> </div>";
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
				$(document).bind('keyup',function(e) {
					var keycode = (e.keyCode ? e.keyCode : e.which);
					if (keycode == '27' && popupStatusAction.length > 0) {
						popupStatusAction.find(".box > .options > .action > .button.false").click();
					}
				});
				setTimeout(function(){
					inviteButton.attr("handling-setup", "false");
				},100);
			}
		});
	});
	function send () {
		console.log('xx');
	}
}
function status_newcheck () {
	function call () {
		var feed = $(".thisFeeds[feed]");
		if (feed.attr("handing-newcheck") != 'true') {
			feed.attr("handing-newcheck",'true');
			var status = feed.children(".status.inFeeds[status]");
			if (status.length == 0) {
				var id = 0;
			}else {
				var id = JSON.parse(status.first().attr('status'))['id'];
			}
			var port = JSON.parse(feed.attr('feed'))['port'];
			if (port['type'] == "status") {
				return;
			}
			$.ajax({
				type: "POST",
				dataType: "json",
				url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
				data: {'token': '<?php print $g_client['token']['feed']['status']; ?>', 'port': port, 'type': 'status_newcheck', 'id': id},
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					if (data['return'] == true) {
						if (data['data']['number'] > 0) {
							var num_status = data['data']['number'];
							popupNotification ({
								'type': 1, 
								'title': '<?php print $_language->text('suggest', 'ucfirst'); ?>', 
								'description': num_status+' <?php print $_language->text('new_status', 'strtolower', false); ?>, <?php print $_language->text('drawn_up_for_update', 'strtolower', false); ?>.', 
								'from': '<?php print $_language->text('news_feed', 'ucfirst'); ?>', 
								'timeout': '<?php print $_parameter->get('notification_text_timeout'); ?>',
								'callback': function() {
									var popupThis = $(this);
									var body = $("body");
									body.animate({
										'scrollTop': 0
									}, function () {
										popupThis.find("[close]").click();
									});
								}
							});
						}
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
					}
				}
			}).done(function() {
				feed.removeAttr("handing-newcheck");
				wait();
			});
		}
	}
	function wait () {
		setTimeout(function() {
			call();
		}, <?php print $_parameter->get('status_timeout_newcheck'); ?>);
	}
	wait();
}
function status_update () {
	$(window).scroll(function() {
		var get = false,
			feed = $(".thisFeeds[feed]"),
			info = JSON.parse(feed.attr('feed')),
			wS = $(window).scrollTop(),
			wH = $(window).height(),
			dH = $(document).height(),
			status = feed.find(".status.inFeeds[status]"),
			options = {};
		options['port'] = info['port'];
		if (wS == 0) {
			var get = true;
			if (status.length == 0) {
				var id = 0;
			}else {
				var id = JSON.parse(status.first().attr('status'))['id'];
			}
			options['sort'] = '>';
		}else if (wS + 1 >= (dH - wH)) {
			if (status.length > 0) {
				var get = true,
					id = JSON.parse(status.last().attr('status'))['id'];
				options['sort'] = '<';
				options['limit'] = '5';
			}
		}
		if (id != null && get == true && typeof options == 'object') {
			options['id'] = id;
			status_load(options);
		}
	});
}
function status_load (options) {
	var id = options['id'],
		sort = options['sort'],
		port = options['port'],
		type = 'status_load',
		token = '<?php print $g_client['token']['feed']['status']; ?>',
		data = {'type': type, 'token': token, 'port': port, 'sort': sort, 'id': id};
	if (options['limit'] != null && options['limit'] > 0) {
		data['limit'] = options['limit'];
	}else if (options['sort'] == '<' && options['limit'] == null) {
		data['limit'] = '5';
	}
	var feed = $(".thisFeeds[feed]");
	if (feed.attr("handing-load") != "true") {
		feed.attr("handing-load","true");
		$.ajax({
			type: "POST",
			dataType: "json",
			url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
			data: data,
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			success: function (data) {
				if (data['return'] == true) {
					if (data['data'] != null && typeof data['data'] == 'object') {
						var num = Object.keys(data['data']).length;
					}else {
						var num = 0;
					}
					if (num > 0) {
						for (var i in data['data']) {
							var status = data['data'][i];
							status_push({'sort': sort}, status);
						}
					}
				}else {
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
				}
			}
		}).done(function() {
			feed.removeAttr("handing-load");
		});
	}
}
function status_autosize () {
	$(".status.inFeeds[status]").find(".ip_as").autosize();
}
function status_block (id) {
	var count = 0;
	$(".status.inFeeds[status]").each(function() {
		var status = $(this),
			info = JSON.parse(status.attr('status'));
		if (info['id'] == id && (info['type'] == "music" || info['type'] == "videos")) {
			var token  = status.find(".media").attr('media');
			if (token != undefined) {
				var thisMediaPlayer = mediaPlayer(token);
				thisMediaPlayer.ready(function(){
					thisMediaPlayer.pause();
					setTimeout(function(){
					    thisMediaPlayer.dispose();
					},0);
				});
			}
		}
		if (info['id'] == id && status.attr("handing-block") != "true") {
			status.attr("handing-block", "true");
			count++;
		}
	});
	if (count > 0) {
		var id = [id],
			data = {'type': 'status_block', 'token': '<?php print $g_client['token']['feed']['status']; ?>', 'id': id};
		$.ajax({
			type: "POST",
			dataType: "json",
			url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
			data: data,
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			success: function (data) {
				if (data['return'] == true) {
					if (data['data'] !== undefined && typeof data['data'] == "object") {
						for (var i in data['data']) {
							var rows = data['data'][i];
							if (rows['return'] == true) {
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
									popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('status_has_been_removed','ucfirst'); ?>', from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
								}
							}else {
								if (rows['reason'] == "ERROR#FEEDS_012" || rows['reason'] == "ERROR#FEEDS_006") {
									$(".status.inFeeds[status]").each(function() {
										var status = $(this);
										var isInfo = JSON.parse(status.attr('status'));
										if (isInfo['id'] == rows['id']) {
											status.find(".header > .menu > .tab [menu-type='block']").remove();
										}
									});
								}
								popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(rows['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
							}
						}
					}
				}else {
					if (data['reason'] != null) {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
					}
				}
			}
		}).done(function() {
			$(".status.inFeeds[status]").each(function() {
				var status = $(this);
				var info = JSON.parse(status.attr('status'));
				if (inArray(info['id'], id)) {
					status.removeAttr("handing-block");
				}
			});
		});
	}
}
function status_delete (id) {
	var count = 0;
	$(".status.inFeeds[status]").each(function() {
		var status = $(this),
			info = JSON.parse(status.attr('status'));
		if (info['id'] == id && (info['type'] == "music" || info['type'] == "videos")) {
			var token  = status.find(".media").attr('media');
			if (token != undefined) {
				var thisMediaPlayer = mediaPlayer(token);
				thisMediaPlayer.ready(function(){
					thisMediaPlayer.pause();
					setTimeout(function(){
						thisMediaPlayer.dispose();
					},0);
				});
			}
		}
		if (info['id'] == id && status.attr("handling-delete") != "true") {
			status.attr("handling-delete", "true");
			count++;
		}
	});
	if (count > 0) {
		var id = [id];
		var data = {'type': 'status_delete', 'token': '<?php print $g_client['token']['feed']['status']; ?>', 'id': id};
		$.ajax({
			type: "POST",
			dataType: "json",
			url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
			data: data,
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			success: function (data) {
				if (data['return'] == true) {
					for (var i in data['data']) {
						var rows = data['data'][i];
						if (rows['return'] == true) {
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
								popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('status_has_been_removed','ucfirst'); ?>', from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
							}
						}else {
							if (rows['reason'] == "ERROR#FEEDS_012" || rows['reason'] == "ERROR#FEEDS_006") {
								button.remove();
							}
							popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(rows['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
						}
					}
				}else {
					if (data['reason'] != null) {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
					}
				}
			}
		}).done(function() {
			$(".status.inFeeds[status]").each(function() {
				var status = $(this),
					info = JSON.parse(status.attr('status'));
				if (inArray(info['id'], id)) {
					status.removeAttr("handling-delete");
				}
			});
		});
	}
}
function status_menu () {
	var status = $(".status.inFeeds[status]");
	status.each(function() {
		var status = $(this),
			info = JSON.parse(status.attr('status')),
			menu = status.find("[status-menu]"),
			button = menu.find("[menu-type]");
		button.bind('click', function() {
			var button = $(this),
				status = button.parents(".status.inFeeds[status]");
			if (button.attr('handing') != 'true') {
				button.attr('handing','true');
				var type = button.attr('menu-type');
				if (type == "delete") {
					popupAlert({'title': '<?php print $_language->text('notification', 'ucfirst'); ?>', 'content': '<?php print $_language->text('question_remove_status', 'ucfirst'); ?>', 'actionTrue': '<?php print $_language->text('confirm', 'ucfirst'); ?>', 'callbackTrue': function () { status_delete(info['id']) }});
					setTimeout(function() {
						button.attr('handing','false');
					},100);
				}else if (type == "block") {
					popupAlert({'title': '<?php print $_language->text('notification', 'ucfirst'); ?>', 'content': '<?php print $_language->text('question_block_status', 'ucfirst'); ?>', 'actionTrue': '<?php print $_language->text('confirm', 'ucfirst'); ?>', 'callbackTrue': function () { status_block(info['id']) }});
					setTimeout(function() {
						button.attr('handing','false');
					},100);
				}else if (type == "follow" || type == "unfollow") {
					if (type == "follow") {
						var action = ['add'];
					}else if (type == "unfollow") {
						var action = ['remove'];
					}else {
						return;
					}
					var data = {'type': 'status_follow', 'token': '<?php print $g_client['token']['feed']['status']; ?>', 'id': [info['id']], 'action': action};
					$.ajax({
						type: "POST",
						dataType: "json",
						url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
						data: data,
						contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
						success: function (data) {
							if (data['return'] == true) {
								for (var i in data['data']) {
									var rows = data['data'][i];
									if (rows['return'] == true) {
										var count = 0;
										var isStatus = $(".status.inFeeds[status]");
										isStatus.each(function() {
											var isStatus = $(this);
											var isInfo = JSON.parse(isStatus.attr('status'));
											if (isInfo['id'] == rows['id']) {
												var menu = isStatus.find("[status-menu]");
												if (rows['action'] == "add") {
													var popupDescription = "<?php print $_language->text('status_follow_add_success', 'ucfirst'); ?>";
													var button = menu.find("[menu-type='follow']");
													button.attr('menu-type', 'unfollow').children("span").text("<?php print $_language->text('unfollow','ucfirst'); ?>");
												}else if (rows['action'] == "remove") {
													var popupDescription = "<?php print $_language->text('status_follow_remove_success', 'ucfirst'); ?>";
													var button = menu.find("[menu-type='unfollow']");
													button.attr('menu-type', 'follow').children("span").text("<?php print $_language->text('follow','ucfirst'); ?>");
												}
												count++;
											}
										});
										if (count > 0) {
											if (popupDescription == undefined) {
												var popupDescription = "<?php print $_language->text('action_have_been_implemented', 'ucfirst'); ?>";
											}
											popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: popupDescription, from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
										}
									}else {
										if (rows['reason'] == "ERROR#FEEDS_012" || rows['reason'] == "ERROR#FEEDS_006") {
											button.remove();
										}
										popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(rows['reason']), timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
									}
								}
							}
						}
					}).done(function() {
						button.removeAttr('handing');
					});
				}else if (type == "edit") {
					function convertContent (type, data) {
						if (type == "text") {
							return data.replace(new RegExp(/(<br>)/ig), "").replace(new RegExp(/(<br\/>)/ig), "");
						}else if (type == "html") {
							var data = parseText(data.replace(new RegExp(/(\n)/ig), "\n<br/>"));
							return data;
						}
					}
					if ($(this).attr("handling-editor") != "true") {
						$(this).attr("handling-editor", "true");
						$(".status.inFeeds[status]").each(function() {
							if (JSON.parse($(this).attr('status'))['id'] == info['id']) {
								$(this).find(".header > .menu > .tab [menu-type='edit']").attr('handing','true');
							}
						});
						if (status.find(".body > .text").length == 0) {
							if (status.find(".body > div").length == 0) {
								status.find(".body").append("<div class='text'> <span></span> </div>");
							}else {
								status.find(".body > div:first").before("<div class='text'> <span></span> </div>");
							}
						}
						var contentBox = status.find(".body > .text > span");
						contentBox.hide();
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
						if (private != undefined && typeof JSON.parse(private) == "object") {
							var private = JSON.parse(private);
						}
						if (private != undefined && typeof private == "object") {
							var private = private['stamp'];
						}else {
							var private = 1;
						}
						editor.find(".rows.options > .private").choosePrivate({'type': 'status', 'id': private});
						status_autosize();
						$(this).removeAttr("handling-editor");
						editor.find(".rows.options > .submit .send").bind('click', function() {
							var sendButton = $(this);
							if (sendButton.attr('handing') != 'true') {
								sendButton.attr('handing', 'true');
								var privateSelected = JSON.parse(editor.find(".rows.options > .private > .choosePrivate > .selected > [private]").attr('private')),
									content = editor.find(".rows.input textarea").val(),
									data = {'type': 'status_edit', 'token': '<?php print $g_client['token']['feed']['status']; ?>', 'id': info['id'], 'rows': {'private->view': privateSelected['type'], 'content': content}};
								$.ajax({
									type: "POST",
									dataType: "json",
									url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
									data: data,
									contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
									error: function () {
										
									},
									success: function (data) {
										if (data['return'] == true) {
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
												}
											});
											popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('edit_success_status', 'ucfirst'); ?>', from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_text_timeout'); ?>'});
										}else {
											popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
										}
									}
								}).done(function() {
									sendButton.removeAttr('handing');
								});
							}
						});
					}
				}
			}
		});
	});
}
function status_getCodeMedia (object) {
	var c_ = {};
	if (object['media']['type'] == "link") {
		c_['status_content_media'] = "<div class='media LinkBox'>";
		for (var i in object['media']['data']) {
			var value = object['media']['data'][i];
			value['id'] = "media_link_"+value['token']+"_"+Math.round(new Date/1e3);
			value['info'] = JSON.stringify({"type": "link", "id": value['id'], "host": value['host'], "path": value['path'], "thumbnail": value['thumbnail'], "title": value['title'], "description": value['description']});
			value['direct'] = JSON.stringify({"by": "click", "to": value['path'], "target": "_blank"});
			if (value['thumbnail'] !== undefined && value['thumbnail'] != null && (value['thumbnail'] != 0 || value['thumbnail'] != "0")) {
				c_['status_content_media_thumbnail'] = " <div class='thumbnail'> <div style='background-image: url("+value['thumbnail']+");'></div> </div> ";
			}else {
				c_['status_content_media_thumbnail'] = "";
			}
			c_['status_content_media'] = c_['status_content_media']+" <div class='link' id='"+value['id']+"' media='link' media-token='"+value['token']+"' media-info='"+value['info']+"' direct='"+value['direct']+"'> "+c_['status_content_media_thumbnail']+" <div class='info'> <div class='title rows nowrap'><span>"+value['title']+"</span></div> <div class='description rows'><span>"+value['description']+"</span></div> <div class='from rows nowrap'><span>"+value['host']+"</span></div> </div> </div> ";
		}
		c_['status_content_media'] = c_['status_content_media']+"</div>";
	}else if (object['media']['type'] == "photos") {
		c_['status_content_media'] = "<div class='media PhotosBox'>";
		for (var i in object['media']['data']) {
			var value = object['media']['data'][i];
			value['id'] = "media_photos_"+value['token']+"_"+Math.round(new Date/1e3);
			value['info'] = JSON.stringify({"type": "photos", "id": value['id'],"mime": value['mime'], "thumbnail": value['thumbnail'], "link": value['link']});
			c_['status_content_media'] = c_['status_content_media']+" <div class='photos' id='"+value['id']+"' media='photos' media-token='"+value['token']+"' media-info='"+value['info']+"' style='background-image: url("+value['thumbnail']+")'> <img src='"+value['thumbnail']+"' alt='"+object['string']+"'> </div>";
		}
		c_['status_content_media'] = c_['status_content_media']+"</div>";
	}else if (object['media']['type'] == "music") {
		c_['status_content_media'] = "<div class='media MusicBox'>";
			for (var i in object['media']['data']) {
				var value = object['media']['data'][i];
				value['id'] = "media_music_"+value['token']+"_"+Math.round(new Date/1e3);
				value['info'] = JSON.stringify({"type": "music", "id": value['id'], "link": value['link'], "name": value['name'], "mime": value['mime'], "singer": value['singer'], "description": value['description']});
				c_['status_content_media'] = c_['status_content_media']+" <div class='music' id='"+value['id']+"' media='music' media-token='"+value['token']+"' media-info='"+value['info']+"'> <div class='icon'> <i class='fa fa-play-circle'></i> </div> <div class='text'> <div class='name nowrap'><span>"+value['name']+"</span></div> <div class='singer nowrap'><span>"+value['singer']+"</span></div> <div class='description nowrap'><span>"+value['description']+"</span></div> </div> </div> ";
			}
		c_['status_content_media'] = c_['status_content_media']+"</div>";
	}else if (object['media']['type'] == "videos") {
		c_['status_content_media'] = "<div class='media VideosBox'>";
			for (var i in object['media']['data']) {
				var value = object['media']['data'][i];
				value['id'] = "media_videos_"+value['token']+"_"+Math.round(new Date/1e3);
				value['info'] = JSON.stringify({"type": "videos", "id": value['id'], "link": value['link'], "thumbnail": value['thumbnail'], "name": value['name'], "mime": value['mime'], "description": value['description']});
				c_['status_content_media'] = c_['status_content_media']+" <div class='videos' id='"+value['id']+"' media='videos' media-token='"+value['token']+"' media-info='"+value['info']+"' style='background-image: url("+value['thumbnail']+");'> <div class='wrap'></div> <div class='icon'> <i class='fa fa-play-circle'></i> </div> <div class='nav'> <div class='name nowrap'><span>"+value['name']+"</span></div> <div class='description nowrap'><span>"+value['description']+"</span></div> </div> </div> ";
			}
		c_['status_content_media'] = c_['status_content_media']+"</div>";
	}else if (object['media']['type'] == "cited") {
		value = object['media']['data'][0];
		value['id'] = "media_cited_"+value['token']+"_"+Math.round(new Date/1e3);
		value['info'] = JSON.stringify({"type": "cited", "id": value['id'], "author": value['author'], "quote": value['quote']});
		if (value['thumbnail'] != null) {
			c_['cited_thumbnail'] = "style='background-image: url("+value['thumbnail']+");'";
		}else {
			c_['cited_thumbnail'] = '';
		}
		c_['status_content_media'] = "<div class='media CitedBox'> <div class='cited' id='"+value['id']+"' media='cited' media-token='"+value['token']+"' media-info='"+value['info']+"' "+c_['cited_thumbnail']+"> <div class='quote'><span>"+value['quote']+"</span></div> <div class='author'><span>"+value['author']+"</span></div> </div> </div>";
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
function status_push (options, status) {
	if (status != null && typeof status == 'object') {
		c_ = {};
		c_['status_info'] = JSON.stringify(status['info']);
		if (status['author']['verified'] != null && status['author']['verified'] == 1) {
			c_['status_author_verified'] = " <div class='verified _tt e' title='<?php print $_language->text('verified', 'ucfirst'); ?>'> <i></i> </div> ";
		}else {
			c_['status_author_verified'] = "";
		}
		if (status['date'] != null) {
			c_['status_date'] = " <div class='date nowrap _tt s cr-pointer' time='"+status['date']['json']+"' title='<?php print $_language->text('posted_at', 'ucfirst'); ?> "+status['date']['tip']+"'> <i> </i> <a href='<?php print $_tool->links('feed/time'); ?>/"+status['date']['stamp']+"' time-show>"+status['date']['ago']+"</a> </div> ";
		}else {
			c_['status_date'] = "";
		}
		if (status['private'] != null) {
			c_['status_private'] = " <div class='private nowrap _tt s cr-pointer' private='"+status['private']['view']['json']+"' title='"+status['private']['view']['tip']+"' private> <i> </i> <span private-show>"+status['private']['view']['text']+"</span> </div> ";
		}else {
			c_['status_private'] = "";
		}
		if (status['edit']['status'] == true) {
			c_['status_edit'] = " <div class='edited nowrap _tt s cr-pointer' time='"+status['edit']['time']['json']+"' title='<?php print $_language->text('edited_at', 'ucfirst'); ?> "+status['edit']['time']['tip']+"'> <i> </i> </div> ";
		}else {
			c_['status_edit'] = "";
		}
		if (status['places'] != null) {
			if (status['places']['by'] == 1) {
				c_['status_places_dbl_type'] = "notification";
				c_['status_places_dbl_data'] = {
					"type": 1,
					"title": "<?php print $_language->text('information_about_places', 'ucfirst'); ?>",
					"description": {
						"type": "info::places", 
						"data": status['places']
					},
					"from": "<?php print $_language->text('status', 'ucfirst'); ?>",
					"timeout": "<?php print $_parameter->get('notification_info_places'); ?>"
				};
				c_['status_places_dbl'] = JSON.stringify({"type": c_['status_places_dbl_type'], "data": c_['status_places_dbl_data']});
				c_['status_places'] = "<div class='places nowrap _tt _tt-dbl s cr-pointer' title='<?php print $_language->text('at', 'ucfirst'); ?> "+status['places']['name']+"' dblclick='"+c_['status_places_dbl']+"'> <i> </i> </div> ";
			}else if (status['places']['by'] == 2) {
				c_['status_places'] = "<div class='places nowrap _tt _tt-dbl s cr-pointer' title='<?php print $_language->text('at', 'ucfirst'); ?> "+status['places']['name']+"'> <i> </i> </div> ";
			}
		}else {
			c_['status_places'] = "";
		}
		if (status['menu'] != null) {
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
		if (status['content']['mood'] != null && status['content']['mood']['text'] != null) {
			if (status['content']['mood']['icon'] != null) {
				c_['status_content_mood_i'] = "";
			}else {
				c_['status_content_mood_i'] = "";
			}
			c_['status_content_mood'] = " <div class='mood'>"+c_['status_content_mood_i']+"<span>"+status['content']['mood']['text']+"</span> </div> ";
		}else {
			c_['status_content_mood'] = "";
		}
		if (status['content']['text'] != null) {
			c_['status_content_text'] = " <div class='text'> <span>"+status['content']['text']+"</span>"+c_['status_content_mood']+"</div> ";
		}else {
			c_['status_content_text'] = "";
		}
		if (status['content']['usertag'] != null) {
			c_['status_content_usertag_li'] = "";
			for (var i in status['content']['usertag']) {
				c_['status_content_usertag_i'] = status['content']['usertag'][i];
				c_['status_content_usertag_li'] = c_['status_content_usertag_li']+"<div class='div _tt-bk' title='"+c_['status_content_usertag_i']['tag']+"'> <a href='"+c_['status_content_usertag_i']['link']+"'>"+c_['status_content_usertag_i']['name']+"</a> </div> ";
			}
			c_['status_content_usertag'] = " <div class='usertag'> <div class='with'> <span>- <?php print $_language->text('with', 'normal'); ?> </span> </div> <div class='li'>"+c_['status_content_usertag_li']+"</div> </div> ";
		}else {
			c_['status_content_usertag'] = "";
		}
		if (typeof status['content']['media'] == 'object' && status['content']['media'] != null) {
			if (status['content']['media']['type'] != null && status['content']['media']['data'] != null) {
				c_['status_content_media'] = status_getCodeMedia(status['content']);
			}else {
				c_['status_content_media'] = "";
			}
		}else {
			c_['status_content_media'] = "";
		}
		if (status['action']['favorite']['status'] != null && status['action']['favorite']['status'] == true) {
			if (status['action']['favorite']['selected'] == true) {
				c_['status_action_favorite'] = " <div class='favorite'> <span status-action-favorite favorite='true'> <?php print $_language->text('unfavorite', 'ucfirst'); ?> </span> </div> ";
			}else {
				c_['status_action_favorite'] = " <div class='favorite'> <span status-action-favorite favorite='false'> <?php print $_language->text('favorite', 'ucfirst'); ?> </span> </div> ";
			}
		}else {
			c_['status_action_favorite'] = "";
		}
		if (status['action']['share']['status'] != null && status['action']['share']['status'] == true) {
			c_['status_action_share'] = " <div class='share'> <span status-action-share> <?php print $_language->text('share', 'ucfirst'); ?> </span> </div> ";
		}else {
			c_['status_action_share'] = "";
		}
		if (status['action']['invite']['status'] != null && status['action']['invite']['status'] == true) {
			c_['status_action_invite'] = " <div class='invite'> <span status-action-invite> <?php print $_language->text('invite', 'ucfirst'); ?> </span> </div> ";
		}else {
			c_['status_action_invite'] = "";
		}
		if (status['action']['comment']['status'] != null && status['action']['comment']['status'] == true) {
			c_['private_comment_class'] = "";
			c_['private_comment'] = " <textarea type='text' placeholder='<?php print $_language->text('write_a_comment', 'ucfirst'); ?>' status-action-comment handing='false'></textarea>";
		}else {
			c_['private_comment_class'] = "null";
			c_['private_comment'] = " <span> <?php print $_language->text('status_unlimited_comment', 'ucfirst'); ?> </span>";
		}
		if (status['comment']['number'] != null && status['comment']['number'] == 0) {
			c_['status_comment_null'] = " <div class='null' status-comment-null> <span status-comment-null> <?php print $_language->text('status_null_comment', 'ucfirst'); ?> </span> </div> ";
			c_['status_comment_rows'] = c_['status_comment'] = "";
		}else {
			if (status['comment']['number'] > 3) {
				c_['status_comment_showmore'] = " <div class='showmore' status-comment-load> <i class='icon'></i> <span class='text'> <?php print $_language->text('show_more_comments', 'ucfirst'); ?> </span> </div> ";
			}else {
				c_['status_comment_showmore'] = "";
			}
			c_['status_comment'] = " <div class='statistic'> <div class='info'> <i class='icon fa fa-comment'> </i> <span class='number' status-statistic-comment>"+status['comment']['number']+"</span> <span class='text'> <?php print $_language->text('comment(s)', 'strtolower'); ?> </span> </div>"+c_['status_comment_showmore']+"</div> ";
			c_['status_comment_rows'] = " <div class='null' status-comment-null> <span status-comment-null> <?php print $_language->text('status_null_comment', 'ucfirst'); ?> </span> </div> ";
			c_['status_comment_null'] = "";
		}
		var code = " <div class='status inFeeds boxGrid _h' status='"+c_['status_info']+"'> <div class='header'> <div class='cover'> <div class='wrap'> </div> <div class='img' style='background-image: url("+status['author']['cover']+")'> <img class='img' src='"+status['author']['cover']+"'> </div> </div> <div class='avatar'> <a href='"+status['author']['link']+"'> <img class='img' src='"+status['author']['avatar']+"'> </a> </div> <div class='user'> "+c_['status_author_verified']+" <div class='name'> <a href='"+status['author']['link']+"'> <span>"+status['author']['name']+"</span> </a> </div> <div class='tag'> <a href='"+status['author']['link']+"'> <span>"+status['author']['tag']+"</span> </a> </div> </div> <div class='info'>"+c_['status_date']+""+c_['status_private']+""+c_['status_edit']+""+c_['status_places']+"</div> "+c_['status_menu']+" </div> <div class='body'>"+c_['status_content_text']+""+c_['status_content_media']+""+c_['status_content_usertag']+"</div> <div class='footer'> <div class='info'> <div class='action'>"+c_['status_action_favorite']+""+c_['status_action_share']+""+c_['status_action_invite']+"</div> <div class='statistic'> <div class='favorite'> <i></i> <span status-statistic-favorite>"+status['statistic']['favorite']+"</span> </div> <div class='share'> <i></i> <span status-statistic-share>"+status['statistic']['share']+"</span> </div> <div class='invite'> <i></i> <span status-statistic-invite>"+status['statistic']['invite']+"</span> </div> </div> </div> <div class='comment'> <div class='type "+c_['private_comment_class']+"' status-comment-type>"+c_['private_comment']+"</div>"+c_['status_comment']+"<div class='content' status-comment-content>"+c_['status_comment_null']+""+c_['status_comment_rows']+"</div> </div> </div> </div> ";
		var feed = $(".thisFeeds[feed]"),
			length = feed.find(".status.inFeeds[status]").length,
			num = feed.find(".status.inFeeds[status='"+c_['status_info']+"']").length;
		if (options['sort'] == '>' && length > 0 && num == 0) {
			$(".status.inFeeds[status]").first().each(function(i) {
				$(this).before(code);
				return false;
			});
		}else if (options['sort'] == '<' && length > 0 && num == 0) {
			$(".status.inFeeds[status]").last().each(function() {
				$(this).after(code);
				return false;
			});
		}else if (length == 0 && num == 0) {
			$("#gFeeds").append(code);
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
				comment_push({status_id: status['info']['id'], sort: '>'}, status['comment']['data'][i]);
			}
		}
		callbackFeed();
		var c = "";
	}
}
function status_favorite () {
	var button = $(".status.inFeeds[status]").find('[status-action-favorite][favorite]');
	button.bind('click', function() {
		var button = $(this);
		var handing = button.attr('handing');
		if (handing != 'true') {
			button.attr('handing','true');
			var selector = button.parents('#gFeeds > .status[status]');
			if (selector == null || typeof JSON.parse(selector.attr('status')) != 'object') {
				return;
			}
			var status = JSON.parse(selector.attr('status'));
			var status_id = status['id'];
			var data = {'type': 'status_favorite', 'token': '<?php print $g_client['token']['feed']['status']; ?>', 'id': status_id};
			var value = button.attr('favorite');
			if (value == "true") {
				data['action'] = "remove";
			}else if (value == "false") {
				data['action'] = "add";
			}
			$.ajax({
				type: "POST",
				dataType: "json",
				url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				error: function () {
					setTimeout(function() {
						button.attr('handing','false');
					}, <?php print $_parameter->get("sleep_when_error"); ?>);
					var description = '<?php print $_language->text('transmission_error', 'ucfirst'); ?>. <?php print $_language->text('please_try_agian', 'ucfirst'); ?>.';
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: description, from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
				},
				success: function (data) {
					var status = $(".status.inFeeds[status]");
					if (data['return'] == true) {
						status_statistic([status_id], ['all']);
						status.each(function() {
							var status = $(this);
							if (JSON.parse(status.attr('status'))['id'] == status_id) {
								var button = status.find('[status-action-favorite][favorite]');
								if (value == 'true') {
									button.attr('favorite','false').text('<?php print $_language->text('favorite', 'ucfirst'); ?>');
								}else if (value == 'false') {
									button.attr('favorite','true').text('<?php print $_language->text('unfavorite', 'ucfirst'); ?>');
								}
							}
						});
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
						if (error == 'ERROR#FEEDS_005') {
							var favorite = button.attr('favorite');
							if (favorite == 'true') {
								//button.attr('favorite','false').text('<?php print $_language->text('favorite', 'ucfirst'); ?>');
							}else if (favorite == 'false') {
								//button.attr('favorite','true').text('<?php print $_language->text('unfavorite', 'ucfirst'); ?>');
							}
						}
					}
				}
			}).done(function() {
				var status = $(".status.inFeeds[status]");
				status.each(function() {
					var status = $(this);
					if (JSON.parse(status.attr('status'))['id'] == status_id) {
						var button = status.find('[status-action-favorite][favorite]');
						button.attr('handing','false');
					}
				});
			});
		}
	});
}
function comment_update () {
	var delay = 0,
		count = 0,
		options = {},
		status = $(".status.inFeeds[status]");
	status.each(function() {
		var status = $(this);
		if (status.attr('update') == undefined) {
			delay++;
		}
		if (status.attr('update') != 'true') {
			status.attr('update','true');
			setTimeout(function() {
				status.attr('update','false');
			},<?php print $_parameter->get('feed_update_timeout'); ?> / 3 * 2);
			if (status.attr('status') == null || typeof JSON.parse(status.attr('status')) != 'object') {
				return;
			}
			var status_id = JSON.parse(status.attr('status'))['id'];
			if (status.find("[status-comment-lines][comment]").first().attr('comment') == null || typeof JSON.parse(status.find("[status-comment-lines][comment]").first().attr('comment')) != 'object') {
				return;
			}
			var comment_id = JSON.parse(status.find("[status-comment-lines][comment]").first().attr('comment'))['id'];
			options = {
				'status_id': [status_id], 
				'comment_id': [comment_id], 
				'sort': ['>'], 
				'limit': [5]
			};
			count++;
		}
	});
	if (count > 0 && delay == 0) {
		comment_load(options);
	}
	setTimeout(function() {
		comment_update();
	},<?php print $_parameter->get('feed_update_timeout'); ?>);
}
comment_update();
function comment_add () {
	var textarea = $(".status.inFeeds[status]").find('[status-action-comment][handing]');
	textarea.bind('keyup',function(e) {
		var textarea = $(this),
			selector = textarea.parents('#gFeeds > .status[status]');
		if (selector.attr('status') == null || typeof JSON.parse(selector.attr('status')) != 'object') {
			return;
		}
		var status = JSON.parse(selector.attr('status')),
			status_id = status['id'];
		if (e.keyCode == 13) {
			if (textarea.attr('handing') != 'true') {
				var value = textarea.val(),
					regex = new RegExp(/(\b\n)/);
				if (value != '') {
					textarea.val('').attr('handing','true').attr('placeholder','<?php print $_language->text("sending...", 'ucfirst'); ?>').attr('disabled','disabled');
					var data = {'type': 'status_comment_add', 'token': '<?php print $g_client['token']['feed']['comment']; ?>', 'status_id': status_id, 'value': value};
					$.ajax({
						type: "POST",
						dataType: "json",
						url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
						data: data,
						contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
						error: function (e) {
							popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('transmission_error', 'ucfirst'); ?>. <?php print $_language->text('please_try_agian', 'ucfirst'); ?>.", from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
							textarea.val('').removeAttr('handing').attr('placeholder','<?php print $_language->text("write_a_comment", 'ucfirst'); ?>').removeAttr('disabled');
						},
						success: function (data) {
							textarea.val('').removeAttr('handing').attr('placeholder','<?php print $_language->text("write_a_comment", 'ucfirst'); ?>').removeAttr('disabled');
							if (data['return'] == true) {
								status_statistic([status_id], ['all']);
							}
							if (data['return'] == true) {
								var load = false;
								var comment_info = textarea.parents('#gFeeds > .status[status]').find('[status-comment-lines][comment]:first').attr('comment');
								if (comment_info == undefined) {
									var load = true;
									var comment_id = 0;
								}else {
									if (comment_info == null || typeof JSON.parse(comment_info) != 'object') {
										return;
									}else {
										var load = true;
										var comment_id  = JSON.parse(comment_info)['id'];
									}
								}
								if (load == true) {
									var options = {
										'status_id': [status_id], 
										'comment_id': [comment_id], 
										'sort': ['>'], 
										'limit': [5]
									};
									comment_load(options);
									popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('comment_sent_successfully', 'ucfirst'); ?>'});
								}
							}else {
								popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
							}
						}
					});
				}else {
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text("comment_is_not_found", 'ucfirst'); ?>.<br> <?php print $_language->text('please_try_agian', 'ucfirst'); ?>.", from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
					textarea.val('').attr('handing','false').attr('placeholder','<?php print $_language->text("write_a_comment", 'ucfirst'); ?>').removeAttr('disabled');
				}
			}else {
				textarea.val('').attr('handing','false').attr('placeholder','<?php print $_language->text("write_a_comment", 'ucfirst'); ?>').removeAttr('disabled');
				popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError('ERROR#FEEDS_008'), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
			}
		}
	});
}
function comment_favorite () {
	var button = $(".status.inFeeds[status]").find('[status-comment-action-favorite][favorite]');
	button.bind('click', function() {
		var button = $(this);
		var handing = button.attr('handing');
		if (handing != 'true') {
			button.attr('handing','true');
			var selector = button.parents('[status-comment-lines][comment]');
			var comment = JSON.parse(selector.attr('comment'));
			var comment_id = comment['id'];
			var data = {'type': 'status_comment_favorite', 'token': '<?php print $g_client['token']['feed']['comment']; ?>', 'comment_id': comment_id};
			var value = button.attr('favorite');
			if (value == "true") {
				data['action'] = "remove";
			}else if (value == "false") {
				data['action'] = "add";
			}
			$.ajax({
				type: "POST",
				dataType: "json",
				url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				error: function () {
					setTimeout(function() {
								button.attr('handing','false');
					}, <?php print $_parameter->get("sleep_when_error"); ?>);
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('transmission_error', 'ucfirst'); ?>. <?php print $_language->text('please_try_agian', 'ucfirst'); ?>.", from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
				},
				success: function (data) {
					var comment = $(".status.inFeeds[status]").find('[status-comment-lines]');
					if (data['return'] == true) {
						status_comment_statistic(comment_id, 1);
					}
					if (data['return'] == true) {
						comment.each(function() {
							var comment = $(this);
							if (comment.attr('comment') !== null && JSON.parse(comment.attr('comment'))['id'] == comment_id) {
								var button = comment.find('[status-comment-action-favorite][favorite]');
								button.attr('handing','false').mouseout();
								if (value == 'true') {
									button.attr('favorite','false').attr('tooltip', '<small><?php print $_language->text('favorite', 'ucfirst'); ?></small>');
								}else if (value == 'false') {
									button.attr('favorite','true').attr('tooltip', '<small><?php print $_language->text('unfavorite', 'ucfirst'); ?></small>');
								}
							}
						});
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
						if (error == "ERROR#FEEDS_005") {
							var favorite = button.attr('favorite');
							if (favorite == 'true') {
								button.attr('favorite','false');
							}else {
								button.attr('favorite','true');
							}
						}
					}
				}
			}).done(function() {
				var comment = $(".status.inFeeds[status]").find('[status-comment-lines]');
				comment.each(function() {
					var comment = $(this);
					if (JSON.parse(comment.attr('comment'))['id'] == comment_id) {
						var button = comment.find('[status-comment-action-favorite][favorite]');
						button.attr('handing','false');
					}
				});
			});
		}
	});
}
function comment_showmore () {
	var button = $(".status.inFeeds[status]").find('[status-comment-load]');
	button.bind('click', function() {
		var button = $(this),
			selector = button.parents('#gFeeds > .status[status]'),
			status_info = JSON.parse(selector.attr('status')),
			status_id = status_info['id'],
			comment_info = button.parents('#gFeeds > .status[status]').find('[status-comment-lines][comment]:last').attr('comment'),
			comment_id = JSON.parse(comment_info)['id'];
		if (comment_info == undefined) {
			var comment_id = 0;
		}else {
			var comment_id  = JSON.parse(comment_info)['id'];
		}
		var options = {
			'status_id': [status_id], 
			'comment_id': [comment_id], 
			'sort': ['<'], 
			'limit': [5]
		};
		comment_load(options);
	});
}
function comment_load (options) {
	var status_id = options['status_id'],
		comment_id = options['comment_id'],
		sort = options['sort'],
		limit = options['limit'],
		status = $(".status.inFeeds[status]"),
		length = 0;
	status.each(function() {
		var status = $(this);
		var object = JSON.parse(status.attr('status'));
		if (object['id'] == status_id) {
			var button = status.find('[status-comment-load]');
			if (button.attr('handing') != 'true') {
				button.attr('handing','true');
				length++;
			}
		}
	});
	if (length > 0) {
		var data = {'type': 'status_comment_load', 'token': '<?php print $g_client['token']['feed']['comment']; ?>', 'status_id': status_id, 'comment_id': comment_id, 'sort': sort, 'limit': limit};
		$.ajax({
			type: "POST",
			dataType: "json",
			url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
			data: data,
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			error: function () {
				popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('transmission_error', 'ucfirst'); ?>. <?php print $_language->text('please_try_agian', 'ucfirst'); ?>.", from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
			},
			success: function (data) {
				if (data['return'] == true) {
					if (data['data'] != null) {
						var num = Object.keys(data['data']).length;
					}else {
						var num = 0;
					}
					if (num == 0 && sort == '<') {
						status.each(function() {
							var status = $(this);
							var object = JSON.parse(status.attr('status'));
							if (object['id'] == status_id) {
								var button = status.find('[status-comment-load]');
								button.fadeOut('slow',function() {
									$(this).remove();
								});
							}
						});
					}else {
						for (var i in data['data']) {
							var rows = data['data'][i];
							for (var x in rows) {
								var comment = rows[x];
								comment_push({status_id: status_id, sort: sort}, comment);
							}
						}
						var id = [],
							from = [];
						$(".status.inFeeds[status]").each(function(i) {
							id[i] = JSON.parse($(this).attr('status'))['id'];
							from[i] = 'all';
						});
						status_statistic(id, from);
					}
				}else {
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
				}
			}
		}).done(function() {
			status.each(function() {
				var status = $(this);
				var object = JSON.parse(status.attr('status'));
				if (object['id'] == status_id) {
					var button = status.find('[status-comment-load]');
					button.removeAttr('handing');
				}
			});
			var length = 0;
		});
	}
}
function comment_push (options, comment) {
	var count = 0,
		status_id = options['status_id'],
		status = $(".status.inFeeds[status='"+status_id+"']"),
		sort = options['sort'],
		className = 'lines';
	if (comment['edit']['status'] != undefined && comment['edit']['status'] != false) {
		var c_comment_edit = "<div class='edit' time='"+comment['edit']['time']['json']+"'> <i class='fa fa-pencil tooltip s' title='<small>"+comment['edit']['time']['tip']+"</small>'> </i> <span time-show>"+comment['edit']['time']['ago']+"</span> </div> ";
	}else {
		var c_comment_edit = "";
	}
	var c_comment_id = comment['info']['id'];
	var c_comment_info = JSON.stringify(comment['info']);
	var c_data = "<div class='"+className+" _h' status-comment-lines comment='"+c_comment_info+"'> <div class='bL'> <a class='avatar' href='"+comment['author']['link']+"'> <img class='img' src='"+comment['author']['avatar']+"'> </a> </div> <div class='bR'> <div class='i'></div> <div class='header'> <div class='nowrap name'> <i class='i-"+comment['author']['type']+" _tt s' title='"+comment['author']['tag']+"'></i> <span> <a href='"+comment['author']['link']+"'>"+comment['author']['name']+"</a> </span> </div> <div class='nowrap time' time='"+comment['time']['json']+"'> <i class='_tt s' title='"+comment['time']['tip']+"'></i> <span time-show>"+comment['time']['ago']+"</span> </div> </div> <div class='body'> <span>"+comment['content']['text']+"</span> </div> <div class='footer'> <div class='favorite'> <i class='_tt s' status-comment-action-favorite favorite='"+comment['action']['favorite']['text']+"' title='<small>"+comment['action']['favorite']['tip']+"</small>'></i> <span status-comment-statistic-favorite>"+comment['statistic']['favorite']+"</span> </div>"+c_comment_edit+"</div> </div> </div> ";			var status = $(".status.inFeeds[status]");
	status.each(function(i) {
		var status = $(this);
		var status_info = JSON.parse(status.attr('status'));
		if (status_info['id'] == status_id) {
			var comment = status.find('[status-comment-content]');
			var length = comment.find("[status-comment-lines][comment]").length;
			var num = status.find("[status-comment-lines][comment='"+c_comment_info+"']").length;
			if (sort == '>' && length > 0 && num == 0) {
				status.find('[status-comment-lines][comment]:first').before(c_data);
			}else if (sort == '<' && length > 0 && num == 0) {
				status.find('[status-comment-lines][comment]:last').after(c_data);
			}else if (length == 0 && num == 0) {
				comment.append(c_data);
				comment.find("[status-comment-null]").callEffect({
					mode: 2, 
					type: 'hide', 
					effect: 'fade', 
					duration: <?php print $_parameter->get("status_comment_effect_duration"); ?>, 
					nextTime: <?php print $_parameter->get("status_comment_effect_nextTime"); ?>,
					complete: function () {
						$(this).remove();
					}
				});
			}
			setTimeout(function() {
				$("."+className+"._h[status-comment-lines][comment]").callEffect({
					mode: 2, 
					type: 'show', 
					effect: 'fade', 
					duration: <?php print $_parameter->get("status_comment_effect_duration"); ?>, 
					nextTime: <?php print $_parameter->get("status_comment_effect_nextTime"); ?>,
					complete: function () {
						$(this).removeClass('_h');
						comment_favorite();
					}
				});
				$("."+className+"._h[status-comment-lines][comment]").removeClass('_h');
			}, <?php print $_parameter->get("status_comment_effect_show"); ?>);
			count++;
		}else {
			var comment = status.find('[status-comment-content]');
			var nul = comment.find("[status-comment-null]");
			if (comment.find("[status-comment-lines][comment]").length == 0 && nul.length == 0) {
				var c_null = " <div class='null' status-comment-null> <span status-comment-null> <?php print $_language->text('status_null_comment', 'ucfirst'); ?> </span> </div> ";
				//comment.append(c_null);
			}
		}
	});
	if (count > 0) {
		setupTooltip();
		barScroll();
	}
}
function status_comment_statistic (id, from) {
	if (id > 0) {
		var data = {'type': 'status_comment_statistic', 'token': '<?php print $g_client['token']['feed']['comment']; ?>', 'id': id, 'from': from};
		$.ajax({
			type: "POST",
			dataType: "json",
			url: "<?php print $_tool->links("source/ajax/feed.ajax"); ?>",
			data: data,
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			error: function () {
				popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('transmission_error', 'ucfirst'); ?>. <?php print $_language->text('please_try_agian', 'ucfirst'); ?>.", from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
			},
			success: function (data) {
				if (data['return'] == true) {
					for (var i in data['data']) {
						var rows = data['data'][i],
							comment = $("[status-comment-lines][comment]");
						comment.each(function(i) {
							var comment = $(this),
								comment_info = JSON.parse(comment.attr('comment'));
							if (comment_info['id'] == rows['id']) {
								comment.find('[status-comment-statistic-favorite]').text(rows['statistic']['favorite']);
							}
						});
					}
				}else {
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
				}
			}
		});
	}
}
function barScroll () {
	var status = $(".status.inFeeds[status]");
	status.each(function() {
		var status = $(this),
			comment = status.find('[status-comment-lines][comment]'),
			num = comment.length;
		if (num >= <?php print $_parameter->get("status_comment_scrollbar_limit"); ?>) {
			status.find('[status-comment-content]').barScroll({
				height: 500,
				size: '5px',
				railOpacity: 0.25
			});
		}
	});
}
function status_toggleMenu () {
	var status = $(".status.inFeeds[status]");
	status.each(function() {
		var status = $(this),
			button = status.find(".header > .menu > .button");
		button.bind('click', function() {
			var button = $(this);
			if (button.next('.tab').attr('show') != 'true') {
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
function loadMedia () {
	var media = $(".status.inFeeds [media][media-info]");
	media.bind('click', function() {
		var media = $(this),
			type = media.attr("media"),
			object = media.attr("media-info"),
			token = media.attr("media-token");
		if (type == "photos" && object != "" && object !== undefined && typeof JSON.parse(object) == 'object') {
			var object = JSON.parse(object);
			if (media.attr('handing') != 'true') {
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
		}else if ((type == "music" || type == "videos") && object != null && typeof JSON.parse(object) == 'object') {
			var object = JSON.parse(object);
			var mediaId = object['id'];
			if (object['type'] == 'music') {
				var box = $(this).parent('.media.MusicBox'),
					c_info = "<div class='navBar'> <div class='info'> <div class='name nowrap'> <div class='move'><i class='fa'></i></div> <span>"+object['name']+"</span> </div> <div class='description nowrap'> <span>"+object['description']+"</span> </div> </div> </div>",
					c_media = '<audio id="'+object['id']+'" class="gplayer-skin video" controls preload="auto" width="98%" height="275" data-setup="{}"> <source src="'+object['link']+'" type="'+object['mime']+'"> </audio>';
				}else if (object['type'] == 'videos') {
					var box = $(this).parent('.media.VideosBox'),
						c_info = "<div class='navBar'> <div class='info'> <div class='name nowrap'> <div class='move'><i class='fa'></i></div> <span>"+object['name']+"</span> </div> <div class='description nowrap'> <span>"+object['description']+"</span> </div> </div> </div>",
						c_media = '<video id="'+object['id']+'" class="gplayer-skin video" controls preload="auto" width="98%" height="275" data-setup="{}"> <source src="'+object['link']+'" type="'+object['mime']+'"> </video>';
				}
				media.replaceWith(c_media);
				var options = {
					'controls': true,
					'autoplay': false,
					'preload': 'auto',
					'poster': object['thumbnail'],
					'techOrder': ['html5', 'flash'],
					'plugins': {
    					'replay': {
      						'active': true,
							'id': mediaId,
							'token': token,
							'distance': 3,
							'expires': 900
						},
						'revolume': {
							'active': true
						},
						'loop': {
							'active': true
						},
						'information': {
							'active': true,
							'auto': false,
							'info': {
								'name': object['name']
							}
						}
					}
				};
				var demo_mediaPlayerThis = gplayer(object['id'], options);
				box.children('div').first().before(c_info);
				box.attr('media',object['id']);
				var moveButton = box.children(".navBar").children(".info").find(".move");
				moveButton.bind('click', function() {
					moveButton = $(this);
					if (moveButton.attr('handing') != 'true') {
						moveButton.attr('handing', 'true');
						var box = moveButton.parents(".media[media]");
						if (box.hasClass('PopupBox') == true) {
							undo(box.attr('media'));
						}else {
							$(".status.inFeeds > .body .media.PopupBox").not("[media='"+object['id']+"']").find(".navBar > .info > div > .move").click();
							var c_space = "<div class='media SpaceBox' undo='"+box.attr('media')+"'> <i class='fa fa-undo'></i> <br> <span>Undo</span> </div>";
							box.addClass('PopupBox').css({'right': '20px', 'bottom': '20px'}).after(c_space);
							var undoBox = $(".status.inFeeds > .body .media.SpaceBox[undo]");
							undoBox.bind('click', function() {
							var moveButton = $(".status.inFeeds > .body .media.PopupBox[media='"+$(this).attr('undo')+"'] > .navBar > .info > div > .move");
								moveButton.click();
							});
						}
						moveButton.attr('handing', 'false');
					}
				});
			function undo (key) {
				var status = box.parents(".status.inFeeds[status]");
				box.removeClass('PopupBox');
				status.find(".media.SpaceBox[undo='"+key+"']").hide().remove();
			}
		}
	});
}
function callbackFeed () {
	direct();
	setupTooltip();
	loadMedia();
	status_arrangePhotos();
	status_favorite();
	status_share();
	status_invite();
	status_newcheck();
	status_update();
	status_menu();
	status_toggleMenu();
	comment_add();
	comment_favorite();
	comment_showmore();
}
callbackFeed();