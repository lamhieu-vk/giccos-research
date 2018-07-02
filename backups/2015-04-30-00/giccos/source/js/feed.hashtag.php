function hashtag_chatbox () {
	var getCookie = $.cookie("hashtagChatbox");
	if (getCookie != undefined) {
		var box = $(".thisFeeds > .chatbox.inFeeds");
		box.bind('each', function(){
			var box = $(this);
			var content = box.children(".content");
			var arrValue = getCookie.split("_");
			for (var i in arrValue) {
				var thisValue = arrValue[i];
				var contentValue = thisValue.split(".");
				if ((contentValue[0] != null && contentValue[1] != null) && contentValue[0] == box.attr('keyword')) {
					if (contentValue[1] == 'true') {
						content.stop(true, true).show();
					}else {
						content.stop(true, true).hide();
					}
				}
			}
		});
	}
	var chatbox = $(".thisFeeds > .chatbox.inFeeds");
	var list = chatbox.find(".content > .main > .list");
	list.barScroll({height: '250px', size: '4px', railOpacity: 0.25, start: 'bottom'});
	var nav = chatbox.children(".title").children("span");
	nav.bind('click', function(){
		var nav = $(this);
		var box = nav.parents(".chatbox.inFeeds");
		var content = box.children(".content");
		if (nav.attr('handing') != 'true') {
			nav.attr('handing', 'true');
			if (content.css('display') == 'none') {
				content.stop(true, true).slideDown();
				nav.attr('tooltip', '<small><?php print $_language->text('click_close', 'ucfirst', false); ?></small>').mouseout();
				var valueCookie = "true";
			}else {
				content.slideUp();
				nav.attr('tooltip', '<small><?php print $_language->text('click_open', 'ucfirst', false); ?></small>').mouseout();
				var valueCookie = "false";
			}
			var getCookie = $.cookie("hashtagChatbox");
			if (getCookie == undefined) {
				var saveCookie = box.attr('keyword')+'.'+valueCookie;
			}else {
				var saveCookie = "";
				var arrValue = getCookie.split("_");
				for (var i in arrValue) {
					var thisValue = arrValue[i];
					var contentValue = thisValue.split(".");
					if ((contentValue[0] != null && contentValue[1] != null) && contentValue[0] != box.attr('keyword')) {
						if (saveCookie == "") {
							var saveCookie = contentValue[0]+'.'+contentValue[1];
						}else {
							var saveCookie = saveCookie+'_'+contentValue[0]+'.'+contentValue[1];
						}
					}
				}
				if (saveCookie != "") {
					var saveCookie = saveCookie+'_'+box.attr('keyword')+'.'+valueCookie;
				}else {
					var saveCookie = box.attr('keyword')+'.'+valueCookie;
				}
			}
			$.cookie("hashtagChatbox", saveCookie, { path: "/" });
			setTimeout(function(){
				nav.attr('handing', 'false');
			},250);
		}
	});
	var textarea = chatbox.find(".content > .type > textarea");
	textarea.enter(function(){
		var textarea = $(this);
		var content = textarea.val().replace(new RegExp(/(\n)$/ig), "");
		var hashtag = chatbox.attr('keyword');
		if (content != "" && hashtag != "" && textarea.attr('handling') != "true") {
			textarea.attr('placeholder', '<?php print $_language->text('messages_sending', 'ucfirst', false); ?>').attr('disabled', 'disabled').attr('handling', 'true').val('');
			var data = {'token': '<?php print $g_client['token']["action"]['messages']; ?>', 'port': 'messages', 'type': 'chatbox', 'local': 'hashtag', 'hashtag': hashtag, 'action': 'add', 'content': content};
			$.ajax({
				type: "POST",
				dataType: "json",
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				error: function () {
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst', false); ?>', description: '<?php print $_language->text('transmission_error', 'ucfirst', false); ?>. <?php print $_language->text('please_try_agian', 'ucfirst', false); ?>.', from: '<?php print $_language->text('system', 'ucfirst', false); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
				},
				success: function (data) {
					console.log(data);
					if (data['return'] == true) {
						for (var i in data['data']) {
							messages = data['data'][i];
							push(messages);
						}
						chatbox.find(".content > .main .list > .rows._h").bind('each', function(){
							$(this).hide().fadeIn().removeClass('_h');
						});
						setupTooltip();
					}
				}
			}).done(function(){
				textarea.attr('placeholder', '<?php print $_language->text('type_messages', 'ucfirst', false); ?>').removeAttr('disabled').attr('handling', 'false').val('').focus();
				var list = chatbox.find(".content > .main .list");
				var scrollHeight = list.children(".rows").length * list.children(".rows").innerHeight() * 2;
				list.barScroll({scrollTo: scrollHeight});
			});
		}
	}, 10);
	function push (object) {
		object['info'] = JSON.stringify(object['info']);
		var code = "<div class='rows _h' message='"+object['info']+"'> <div class='author'> <a href='"+object['author']['link']+"'> <img src='"+object['author']['avatar']+"'> </a> </div> <div class='message'> <div class='i'> </div> <div class='header'> <div class='nowrap name'> <i class='i-user _tt s' title='"+object['author']['tag']+"'> </i> <span> <a href='"+object['author']['link']+"'>"+object['author']['name']+"</a> </span> </div> <div class='nowrap time' time='"+JSON.stringify({'stamp': object['time']})+"'> <i class='_tt s' title='"+agoDatetime(object['time'], 'tip')+"'> </i> <span time-show>"+agoDatetime(object['time'], 'ago')+"</span> </div> </div> <div class='body'> <span>"+object['content']+"</span> </div> </div> </div>";
		var rows = chatbox.find(".content > .main .list > .rows");
		if (rows.length == 0) {
			list.append(code);
		}else {
			rows.last().after(code);
			chatbox.find(".content > .main .list > .rows._h").removeClass('_h').hide().fadeIn();
		}
	}
}
hashtag_chatbox();