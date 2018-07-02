var actionBoxGetpassword = function () {
	var resizeCenterSubBox = function (){
		var headerBox = $("#centerBox > #headerBox"),
			getpasswordBox = $("#centerBox > #getpasswordBox"),
			footerBox = $("#centerBox > #footerBox");
		headerBox.css({
			'margin-top': (($(window).height() / 2 - getpasswordBox.innerHeight() / 2) - headerBox.innerHeight()) / 2
		});
		getpasswordBox.css({
			'margin-top': (($(window).height() / 2 - getpasswordBox.innerHeight() / 2) - headerBox.innerHeight()) / 2
		});
		footerBox.css({
			'margin-top': '45px'
		});
	};
	resizeCenterSubBox();
	$(window).bind('resizeEnd', resizeCenterSubBox);
	var toggleCheckboxType = function () {
		var getpasswordBox = $("#centerBox > #getpasswordBox"),
			linesGetcode = getpasswordBox.find(".lines.getcode"),
			lineTypecode = getpasswordBox.find(".lines.typecode"),
			inputCheckbox = getpasswordBox.find(".input").children(".checkbox");
			inputCheckbox.bind('click', function(){
				var inputCheckboxThis = $(this);
				if (inputCheckboxThis.attr('handling-click') != "true" && !inputCheckboxThis.hasClass("active")) {
					inputCheckboxThis.attr('handling-click', 'true');
					inputCheckbox.removeClass("active");
					inputCheckboxThis.addClass("active");
					if (inputCheckboxThis.hasClass("getcode")) {
						lineTypecode.fadeOut(function(){
							linesGetcode.fadeIn(function () {
								linesGetcode.find(".input.username").focus();
							});
						});
					}else {
						linesGetcode.fadeOut(function(){
							lineTypecode.fadeIn(function () {
								lineTypecode.find(".input.code").focus();
							});
						});
					}
					setTimeout(function(){
						inputCheckboxThis.removeAttr('handling-click');
					},100);
				}
			});
	};
	toggleCheckboxType();
	var toggleCheckboxRecheck = function () {
		var getpasswordBox = $("#centerBox > #getpasswordBox"),
			confirmPassword = getpasswordBox.find(".lines.confirm_password");
			inputRecheck = getpasswordBox.find(".input.recheck");
			inputRecheck.children().bind('click', function(){
				if (inputRecheck.attr('handling-click') != "true") {
					inputRecheck.attr('handling-click', 'true');
					inputRecheck.toggleClass("active");
					if (inputRecheck.hasClass("active")) {
						confirmPassword.slideDown();
					}else {
						confirmPassword.slideUp();
					}
					setTimeout(function(){
						inputRecheck.removeAttr('handling-click');
					},100);
				}
			});
	};
	toggleCheckboxRecheck();
	var setupBoxDisplay = function () {
		var getpasswordBox = $("#centerBox > #getpasswordBox"),
			linesGetcode = getpasswordBox.find(".lines.getcode"),
			lineTypecode = getpasswordBox.find(".lines.typecode"),
			inputCheckbox = getpasswordBox.find(".input").children(".checkbox");
		if (lineTypecode.find(".input").val() != "") {
			inputCheckbox.parent(".input").children(".typecode").click();
		}else {
			inputCheckbox.parent(".input").children(".getcode").click();
		}
	};
	setupBoxDisplay();
};
var setpasswordAccounts = function () {
	var setpasswordBox = $("#centerBox > #getpasswordBox"),
		buttonSetpassword = setpasswordBox.find(".input.getpassword");
	var actionSetpasswordAccounts = function () {
		var getpasswordBox = $("#centerBox > #getpasswordBox"),
			inputPassword = getpasswordBox.find(".input.password");
		var passwordRegex = function (string) {
			var pattern = new RegExp(<?php print $_parameter->get('regex_password'); ?>);
			return pattern.test(string);
		};
		if (!passwordRegex(inputPassword.val())) {
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('password_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else {
			if (getpasswordBox.attr('handling-getpassword') != "true") {
				getpasswordBox.attr('handling-getpassword', 'true');
				inputPassword.attr('disabled', 'disabled');
			}else {
				return false;
			}
			var data = {'port': 'accounts', 'type': 'getpassword', 'by': 'usecode', 'code': inputPassword.attr('code'), 'password': inputPassword.val()};
			console.log(data);
			var doneRequestFunc = function () {
				getpasswordBox.removeAttr('handling-getpassword');
				inputPassword.removeAttr('disabled');
			};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				data: data,
				dataType: "json",
				success: function(data) {
					console.log(data);
					if (isset(data['return']) && data['return'] === true) {
						inputPassword.val('');
						popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('password_successfully_changed', 'ucfirst'); ?>.'});
						if (isset(data['redirect']['later']) && isset(data['redirect']['home'])) {
							popupAlert({
								"title": "<?php print $_language->text('notification', 'ucfirst'); ?>", 
								"content": "<?php print $_language->text('do_you_want_redirect_page', 'ucfirst'); ?>.<br><?php print $_language->text('link', 'ucfirst'); ?>: " + data['redirect']['later'] + ".",
								"escActive": true,
								"actionTrue": "<?php print $_language->text('redirect', 'ucfirst'); ?>",
								"callbackTrue": function () { 
									window.location.href = data['redirect']['later'];
								},
								"actionFalse": "<?php print $_language->text('go_to_home', 'ucfirst'); ?>", 
								"callbackFalse": function () { 
									window.location.href = data['redirect']['home'];
								}
							});
						}else if (isset(data['redirect']['home'])) {
							setTimeout(function () {
								window.location.href = data['redirect']['home'];
							}, 3000);
						}else {
							setTimeout(function () {
								location.reload();
							}, 3000);
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
	buttonSetpassword.bind('click', actionSetpasswordAccounts);
	$(document).bind('keyup', function(e){
		var keycode = (e.keyCode ? e.keyCode : e.which);
		if (keycode == 13) {
			actionSetpasswordAccounts();
		}
	});
};
var getpasswordAccounts = function () {
	var getpasswordBox = $("#centerBox > #getpasswordBox"),
		buttonGetpassword = getpasswordBox.find(".input.getpassword");
	var actionGetpasswordAccounts = function () {
		var getpasswordBox = $("#centerBox > #getpasswordBox"),
			inputUsername = getpasswordBox.find(".input.username"),
			inputCode = getpasswordBox.find(".input.code"),
			checkboxType = getpasswordBox.find(".checkbox.active[value]").attr('value');
		var usernameRegex = function (string) {
			var pattern = new RegExp(<?php print $_parameter->get('regex_username'); ?>);
			return pattern.test(string);
		};
		var emailRegex = function (string) {
			var pattern = new RegExp(<?php print $_parameter->get('regex_email'); ?>);
			return pattern.test(string);
		};
		var codeRegex = function (string) {
			var pattern = new RegExp(/^([a-zA-Z0-9]{8,10}$)/);
			return pattern.test(string);
		};
		if (!inArray(checkboxType, ["typecode", "getcode"])) {
			return false;
		}
		if (!usernameRegex(inputUsername.val()) && !emailRegex(inputUsername.val()) && checkboxType == "getcode") {
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('username_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else if (!codeRegex(inputCode.val()) && checkboxType == "typecode") {
			popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('code_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('please_recheck', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		}else {
			if (getpasswordBox.attr('handling-getpassword') != "true") {
				getpasswordBox.attr('handling-getpassword', 'true');
				if (checkboxType == "typecode") {
					inputCode.attr('disabled', 'disabled');
				}else if (checkboxType == "getcode") {
					inputUsername.attr('disabled', 'disabled');
				}
			}else {
				return false;
			}
			if (!inArray(checkboxType, ["typecode", "getcode"])) {
				getpasswordBox.removeAttr('handling-getpassword');
				return false;
			}
			var data = {'port': 'accounts', 'type': 'getpassword', 'by': checkboxType};
			if (checkboxType == "typecode") {
				data['code'] = inputCode.val();
			}else if (checkboxType == "getcode") {
				data['username'] = inputUsername.val();
			}
			console.log(data);
			var doneRequestFunc = function () {
				getpasswordBox.removeAttr('handling-getpassword');
				if (checkboxType == "typecode") {
					inputCode.removeAttr('disabled');
				}else if (checkboxType == "getcode") {
					inputUsername.removeAttr('disabled');
				}
			};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				data: data,
				dataType: "json",
				success: function(data) {
					console.log(data);
					if (isset(data['return']) && data['return'] === true) {
						inputUsername.val('');
						inputCode.val('');
						if (isset(data['type']) && data['type'] == "get") {
							popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('account_has_successfully_activated', 'ucfirst'); ?>.'});
							getpasswordBox.find(".checkbox[value='typecode']").click();
							setTimeout(function () {
								inputCode.focus();
							}, 500);
						}else if (isset(data['type']) && data['type'] == "check" && isset(data['data']) && countArr(data['data']) > 0) {
							popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('confirmed_please_type_new_password', 'ucfirst'); ?>.'});
							getpasswordBox.children(".body").slideUp(function () {
								getpasswordBox.children(".body").html("<div class='lines quickinfo'> <div class='thumbnail'> <a href='"+ data['data']['link'] +"'> <div class='avatar img' style='background-image: url("+ data['data']['avatar'] +");'> <img src='"+ data['data']['avatar'] +"' alt='<?php print $_language->text('avatar_of', 'strtolower'); ?> " + data['data']['fullname'] + " (" + data['data']['username'] + ")'> </div> </a> </div> <div class='textinfo'> <div class='name'> <label><?php print $_language->text('name', 'ucfirst'); ?>: </label> <span>"+ data['data']['fullname'] +"</span> </div> <div class='tag'> <label><?php print $_language->text('tag', 'ucfirst'); ?>: </label> <span>"+ data['data']['username'] +"</span> </div> <div class='code _tt-bk s' title='<?php print $_language->text('confirmation_code_get_password', 'strtolower'); ?>'> <label><?php print $_language->text('code', 'ucfirst'); ?>: </label> <span>"+ data['data']['code'] +"</span> </div> <div class='time _tt-bk s' title='<?php print $_language->text('time_confirmation_code_created', 'strtolower'); ?>'> <label><?php print $_language->text('time', 'ucfirst'); ?>: </label> <span>"+ agoDatetime(data['data']['time'], 'ago') +"</span> </div> </div> </div> <div class='lines password'> <label class='dn_i'><?php print $_language->text('password', 'ucfirst'); ?></label> <div><input class='input password' type='password' code='" + data['data']['code'] + "' placeholder='<?php print $_language->text('type_new_password', 'strtolower'); ?>'></div> </div> <div class='lines getpassword'> <label class='hide'><?php print $_language->text('getpassword', 'ucfirst'); ?></label> <div><i class='input getpassword button'></i></div> </div>").slideDown();
								setTimeout(function () {
									setupTooltip();
									setpasswordAccounts();
								}, 500);
							});
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
	buttonGetpassword.bind('click', actionGetpasswordAccounts);
	$(document).bind('keyup', function(e){
		var keycode = (e.keyCode ? e.keyCode : e.which);
		if (keycode == 13) {
			actionGetpasswordAccounts();
		}
	});
};
var callFuncReady = function () {
	actionBoxGetpassword();
	getpasswordAccounts();
};
$(document).ready(callFuncReady);