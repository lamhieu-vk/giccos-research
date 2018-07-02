function boxSuggest_friendsRequest () {
	var buttonRequest = $("[box-friends-request]").find("[request]");
		buttonRequest.bind('click', function(){
			var button = $(this);
			if (button.attr('request') !== undefined && typeof JSON.parse(button.attr('request')) != 'object') {
				return;
			}
			if (JSON.parse(button.attr('request')) !== null && typeof JSON.parse(button.attr('request')) == 'object') {
				var request = JSON.parse(button.attr('request'));
				var handing = button.attr('handing');
				if (handing != 'true' && (request['action'] == "add" || request['action'] == "cancel" || request['action'] == "accept" || request['action'] == "refuse" || request['action'] == "remove")) {
					buttonRequest.each(function(){
						if (typeof JSON.parse($(this).attr('request')) != 'object') {
							return;
						}
						var checking = JSON.parse($(this).attr('request'));
						if (checking['action'] == request['action'] && checking['id'] == request['id']) {
							$(this).attr('handing', 'true');
						}
					});
					if (request['action'] == "add") {
						var id = request['id'];
						var data = {'type': 'friends', 'action': 'add', 'id': id};
					}else if (request['action'] == "cancel") {
						var id = request['id'];
						var data = {'type': 'friends', 'action': 'cancel', 'id': id};
					}else if (request['action'] == "accept") {
						var id = request['id'];
						var data = {'type': 'friends', 'action': 'accept', 'id': id};
					}else if (request['action'] == "refuse") {
						var id = request['id'];
						var data = {'type': 'friends', 'action': 'refuse', 'id': id};
					}else if (request['action'] == "remove") {
						var id = request['id'];
						var data = {'type': 'friends', 'action': 'remove', 'id': id};
					}
					data['token'] = '<?php print $g_client['token']['action']['user']; ?>';
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
								buttonRequest.each(function(){
									var button = $(this);
									if (button.attr('request') !== undefined && typeof JSON.parse(button.attr('request')) != 'object') {
										return;
									}
									var checking = JSON.parse(button.attr('request'));
									if (checking['action'] == request['action'] && checking['id'] == request['id']) {
										button.removeAttr('handing');
										if (checking['action'] == "add") {
											var popupDescription = "<?php print $_language->text('send_request_success', 'ucfirst'); ?>";
											button.attr('request', JSON.stringify({'action': 'cancel', 'id': id})).children("span").text('<?php print $_language->text('cancel_request', 'ucfirst', false); ?>');
											boxSuggest_friendsRequest();
										}else if (checking['action'] == "cancel") {
											var popupDescription = "<?php print $_language->text('cancel_request_success', 'ucfirst'); ?>";
											button.attr('request', JSON.stringify({'action': 'add', 'id': id})).children("span").text('<?php print $_language->text('send_request', 'ucfirst', false); ?>');
											boxSuggest_friendsRequest();
										}else if (checking['action'] == "accept") {
											var popupDescription = "<?php print $_language->text('add_friends_success', 'ucfirst'); ?>";
											button.parents("[box-friends-request]").slideUp(function(){
												$(this).remove();
											});
										}else if (checking['action'] == "refuse") {
											var popupDescription = "<?php print $_language->text('refuse_friends_success', 'ucfirst'); ?>";
											button.parents("[box-friends-request]").slideUp(function(){
												$(this).remove();
											});
										}
										if (popupDescription !== undefined) {
											popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst', false); ?>', description: popupDescription, from: '<?php print $_language->text('system', 'ucfirst', false); ?>'});
										}
									}
								});
							}else {
								popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst', false); ?>', description: transferError(data['reason']), from: '<?php print $_language->text('system', 'ucfirst', false); ?>', timeout: <?php print $_parameter->get('notifyPopup_timeout'); ?>});
							}
						}
					}).done(function(){
						buttonRequest.each(function(){
							var button = $(this);
							if (button.attr('request') !== undefined && typeof JSON.parse(button.attr('request')) != 'object') {
								return;
							}
							if (JSON.parse(button.attr('request')) !== undefined) {
								var checking = JSON.parse(button.attr('request'));
							}else {
								return;
							}
							if (checking['action'] == request['action'] && checking['id'] == request['id']) {
								button.removeAttr('handing');
							}
						});
					});
				}else {
					//.
				}
			}
		});
}
$(document).ready(function(){
	boxSuggest_friendsRequest();
});