var actionBoxActive = function () {
	var resizeCenterSubBox = function (){
		var headerBox = $("#centerBox > #headerBox"),
			activeBox = $("#centerBox > #activeBox"),
			footerBox = $("#centerBox > #footerBox");
		headerBox.css({
			'margin-top': (($(window).height() / 2 - activeBox.innerHeight() / 2) - headerBox.innerHeight()) / 2 + 'px'
		});
		activeBox.css({
			'margin-top': (($(window).height() / 2 - activeBox.innerHeight() / 2) - headerBox.innerHeight()) / 2 + 'px'
		});
		footerBox.css({
			'margin-top': (($(window).height() / 2 - activeBox.innerHeight() / 2) - headerBox.innerHeight()) / 2 + 'px'
		});
	};
	resizeCenterSubBox();
	$(window).bind('resizeEnd', resizeCenterSubBox);
};
var activeAccounts = function () {
	var activeBox = $("#centerBox > #activeBox"),
		buttonActive = activeBox.find(".input.active");
	var actionActiveAccounts = function () {
		var activeBox = $("#centerBox > #activeBox"),
			inputUsername = activeBox.find(".input.username"),
			inputCode = activeBox.find(".input.code");
		var usernameRegex = function (string) {
			var pattern = new RegExp(/^([a-zA-Z0-9\.\_]{6,30}$)/);
			return pattern.test(string);
		};
		var emailRegex = function (string) {
			var pattern = new RegExp(/(([\w-\.]+@([\w-]+\.)+[\w-]{2,6}))$/);
			return pattern.test(string);
		};
		var codeRegex = function (string) {
			var pattern = new RegExp(/^([a-zA-Z0-9]{8,10}$)/);
			return pattern.test(string);
		};
		if (!usernameRegex(inputUsername.val()) && !emailRegex(inputUsername.val())) {
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('username_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (!codeRegex(inputCode.val())) {
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('code_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else {
			if (activeBox.attr('handling-active') != "true") {
				activeBox.attr('handling-active', 'true');
			}else {
				return false;
			}
			var username = inputUsername.val(),
				code = inputCode.val();
			var data = {'port': 'accounts', 'type': 'active', 'username': username, 'code': code};
			console.log(data);
			var doneRequestFunc = function () {
				activeBox.removeAttr('handling-active');
			};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				data: data,
				dataType: "json",
				success: function(data) {
					console.log(data);
					if (isset(data['return']) && data['return'] === true) {
						if (isset(data['data']) && countArr(data['data'])) {
							popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('account_has_successfully_activated','ucfirst'); ?>.'});
							activeBox.children(".body").slideUp(function(){
								activeBox.children(".body").html("<div class='lines quickinfo'> <div class='thumbnail'> <a href='"+ data['data']['link'] +"'> <div class='avatar img' style='background-image: url("+ data['data']['avatar'] +");'> <img src='"+ data['data']['avatar'] +"' alt='<?php print $_language->text('avatar_of', 'strtolower'); ?> " + data['data']['fullname'] + " (" + data['data']['username'] + ")'> </div> </a> </div> <div class='textinfo'> <div class='name'> <label><?php print $_language->text('name', 'ucfirst'); ?>: </label> <span>"+ data['data']['fullname'] +"</span> </div> <div class='tag'> <label><?php print $_language->text('tag', 'ucfirst'); ?>: </label> <span>"+ data['data']['username'] +"</span> </div> <div class='code'> <label><?php print $_language->text('code', 'ucfirst'); ?>: </label> <span>"+ data['data']['code'] +"</span> </div> <div class='time'> <label><?php print $_language->text('time', 'ucfirst'); ?>: </label> <span>"+ agoDatetime(data['data']['time'], 'ago') +"</span> </div> </div> </div>").slideDown();
							});
							//.
							var titlePage = data['data']['fullname'] + " (" + data['data']['username'] + ") :: <?php print $_language->text('pages_accounts_active.title', 'ucwords'); ?>";
							var pathPage = data['data']['url'];
							window.history.pushState("", titlePage, pathPage);
							$("title").text(titlePage);
						}else {
							//.
						}
					}else if (isset(data['return']) && isset(data['reason']) && data['return'] === false) {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: ".", timeout: '50<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('undefined', 'ucfirst'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		}
	};
	buttonActive.bind('click', actionActiveAccounts);
	$(document).bind('keyup', function(e){
		var keycode = (e.keyCode ? e.keyCode : e.which);
		if (keycode == 13) {
			actionActiveAccounts();
		}
	});
};
var callFuncReady = function () {
	activeAccounts();
	actionBoxActive();
};
$(document).ready(callFuncReady);