function friendsRequest () {
	var list = $("#tabFriends > .content > .list");
	var rows = $("#tabFriends > .content > .list > .rows[friend-id]");
	rows.find("[friend-request]").bind("click", function(){
		var button = $(this);
		if (isset(button.attr('friend-request'))) {
			return false;
		}
		if (isset(button.attr('friend-request')) && typeof JSON.parse(button.attr('friend-request')) == "object") {
			var object = JSON.parse(button.attr('friend-request'));
			if (isset(object['action']) && object['id'] !== 0) {
				if (object['action'] != "add" || object['action'] != "cancel" || object['action'] != "accept" || object['action'] != "remove") {
					var action = object['action'];
					var id = object['id'];
				}else {
					return false;
				}
				if (isset(action)) {
					var data = {'port': 'user', 'type': 'friends', 'action': action, 'id': id};
				}else {
					return;
				}
				if (isset(data) && typeof data == "object") {
					button.attr('handling-request', 'true');
					$.ajax({
						url: '<?php print $_tool->links("source/ajax/user.ajax"); ?>',
						type: 'POST',
						data: data,
						dataType: 'json',
						contentType: '<?php print $_parameter->get('contentType_urlencoded.utf8'); ?>',
						error: function () {
							//.
						},
						success: function (data) {
							if (data['return'] !== undefined && data['return'] == true) {
								button.mouseout();
								if (action == "add") {
									var popupDescription = "<?php print $_language->text('send_request_success', 'ucfirst'); ?>";
									button.attr('friend-request', JSON.stringify({'action': 'cancel', 'id': id})).attr('title', '<?php print $_language->text('cancel_request', 'ucfirst'); ?>').find(".add").removeClass("add").addClass("cancel");
								}else if (action == "cancel") {
									var popupDescription = "<?php print $_language->text('cancel_request_success', 'ucfirst'); ?>";
									button.attr('friend-request', JSON.stringify({'action': 'add', 'id': id})).attr('title', '<?php print $_language->text('send_request', 'ucfirst'); ?>').find(".cancel").removeClass("cancel").addClass("add");
								}else if (action == "remove") {
									var popupDescription = "<?php print $_language->text('remove_friends_success', 'ucfirst'); ?>";
									button.attr('friend-request', JSON.stringify({'action': 'add', 'id': id})).attr('title', '<?php print $_language->text('send_request', 'ucfirst'); ?>').find(".remove").removeClass("remove").addClass("add");
								}else if (action == "accept") {
									var popupDescription = "<?php print $_language->text('add_friends_success', 'ucfirst'); ?>";
									button.attr('friend-request', JSON.stringify({'action': 'remove', 'id': id})).attr('title', '<?php print $_language->text('remove_friends', 'ucfirst'); ?>').find(".accept").removeClass("accept").addClass("remove");
								}else {
									//.
								}
								if (popupDescription != undefined) {
									popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst', false); ?>', description: popupDescription, from: '<?php print $_language->text('system', 'ucfirst', false); ?>'});
								}
								button.mouseover();
								friendsRequest();
							}else {
								//.
							}
						}
					}).done(function(){
						button.removeAttr('handling-request');
					});
				}
			}
		}
	});
}
function friendsPush (order, object) {
	if (object['is_you'] === 1) {
		var buttonAction = "";
		var textReason = "<?php print $_language->text('you', 'ucfirst'); ?>";
	}else {
		if (object['is_friend'] === 1) {
			var buttonAction = "<div class='action _tt-bk s' friend-request='"+JSON.stringify({'action': 'remove', 'id': object['id']})+"' title='<?php print $_language->text('remove_friends', 'ucfirst'); ?>'> <i class='remove'></i> </div>";
			var textReason = "<?php print $_language->text('friends', 'ucfirst'); ?>";
		}else {
			if (object['send_request'] === 1) {
				var buttonAction = "<div class='action _tt-bk s' friend-request='"+JSON.stringify({'action': 'cancel', 'id': object['id']})+"' title='<?php print $_language->text('cancel_request', 'ucfirst'); ?>'> <i class='cancel'></i> </div>";
			}else {
				if (object['waiting_request'] === 1) {
					var buttonAction = "<div class='action _tt-bk s' friend-request='"+JSON.stringify({'action': 'accept', 'id': object['id']})+"' title='<?php print $_language->text('accept_request', 'ucfirst'); ?>'> <i class='accept'></i> </div>";
				}else {
					var buttonAction = "<div class='action _tt-bk s' friend-request='"+JSON.stringify({'action': 'add', 'id': object['id']})+"' title='<?php print $_language->text('send_request', 'ucfirst'); ?>'> <i class='add'></i> </div>";
				}
			}
			var textReason = object['mutual_friends']+" <?php print $_language->text('mutual_friends', 'strtolower'); ?>";
		}
	}
	var code = " <div class='rows _h' friend-id='"+object['friends_id']+"'> <div class='ptLt'> <div class='avatar'> <img src='"+object['avatar']+"'></div> <div class='button'> <div class='wrap'></div> "+buttonAction+" </div> </div> <div class='ptRt'> <div class='info'> <div class='text name nowrap'><a href='"+object['link']+"'>"+object['name']+"</a></div> <div class='text tag nowrap'> <a href='"+object['link']+"'>"+object['tag']+"</a> </div> </div> <div class='reason nowrap'> <span> "+textReason+" </span> </div> </div> </div>";
	var list = $("#tabFriends > .content > .list");
	var rowsOld = $("#tabFriends > .content > .list > .rows[friend-id]");
	var rowsThis = $("#tabFriends > .content > .list > .rows[friend-id='"+object['friends_id']+"']");
	if (rowsThis.length == 0){
		if (rowsOld.length == 0) {
			list.append(code);
		}else {
			if (order == "<") {
				rowsOld.last().after(code);
			}else {
				rowsOld.first().before(code);
			}
		}
	}
	var rowsThis = $("#tabFriends > .content > .list > .rows[friend-id]._h");
	rowsThis.hide().fadeIn();
	setupTooltip();
}
function friendsLoad (object) {
	var title = $("#tabFriends > .title");
	var content = $("#tabFriends > .content");
	if (object['id'] != undefined && object['type'] != undefined && object['order'] != undefined && object['limit'] != undefined) {
		//.
		if (wallInfo != undefined && typeof wallInfo == "object") {
			var wall_id = wallInfo['id'];
		}else {
			return false;
		}
	}else {
		return false;
	}
	if (content.attr("handling-load") != "true") {
		content.attr("handling-load", "true");
		$.ajax({
			type: "POST",
			dataType: "json",
			url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
			data: {"wall_id": wall_id, "port": "friends", "type": object['type'], "friends_id": object['id'], "order": object['order'], "limit": object['limit']},
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			success: function (data) {
				console.log(data);
				if (data['return'] != null && data['return'] == true) {
					if (data['data'] != null && typeof data['data'] == "object" && Object.keys(data['data']).length > 0) {
						for (var i in data['data']) {
							var rows = data['data'][i];
							friendsPush(object['order'], rows);
						}
						friendsRequest();
					}else {
						var list = $("#tabFriends > .content > .list"),
							rows = $("#tabFriends > .content > .list > .rows[friend-id]");
						if (rows.length == 0) {
							list.append("<div class='rows null _h'> <i class='null_friends'></i> <span><?php print $_language->text('user_have_not_friends', 'ucfirst'); ?></span> </div>").find("._h").hide().fadeIn();
						}else {
							//.
						}
					}
				}else {
					if (data['reason'] != null && data['reason'] !== null) {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason'])});
					}
				}
			}
		}).done(function() {
			content.removeAttr("handling-load");
		});
	}
}
function friendsTypeChoose () {
	function actionWhenClick (e) {	
		disabledEventPropagation(e);
		var typeinList = true;
		var options = [];
		var list = $("#tabFriends > .content > .list");
		var type = $("#tabFriends > .title > .rows");
		var typeClicked = $(this);
		if (!typeClicked.hasClass("active") && typeClicked.attr("handling-load") != "true") {
			typeClicked.attr("handling-load", "true");
			options['path'] = typeClicked.children("a[href]").attr("href");
			if (typeClicked.hasClass('all_friends')) {
				options['type'] = "all_friends";
			}else if (typeClicked.hasClass('suggest')) {
				options['type'] = "suggest";
			}else if (typeClicked.hasClass('mutual_friends')) {
				options['type'] = "mutual_friends";
			}else if (typeClicked.hasClass('live')) {
				options['type'] = "live";
			}else if (typeClicked.hasClass('country')) {
				options['type'] = "country";
			}else if (typeClicked.hasClass('workplaces')) {
				options['type'] = "workplaces";
			}else if (typeClicked.hasClass('school')) {
				options['type'] = "school";
			}else {
				//.
				delete options['path'];
				var typeinList = false;
			}
			if (typeinList == true) {
				list.html('');
				options['id'] = 0;
				options['order'] = ">";
				options['limit'] = 30;
				type.removeClass('active');
				typeClicked.addClass('active');
				var title = $("title").text();
				var path = options['path'];
				window.history.pushState("", title, path);
				friendsLoad(options);
				setTimeout(function(){
					typeClicked.removeAttr("handling-load");
				}, 500);
			}else {
				popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('request_is_invalid', 'ucfirst'); ?>', from: '<?php print $_language->text('system', 'ucfirst', false); ?>'});
			}
		}
	}
	var type = $("#tabFriends > .title > .rows");
	type.bind('click', actionWhenClick);
}
friendsTypeChoose();