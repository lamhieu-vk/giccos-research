function resizeTemplate (){
	function navCover () {
		var wH = $(window).height();
		var wW = $(window).width();
		var nC_h = wH / 4;
		if (nCt_h > 200) {
			//.
		}else {
			var nC_h = 200;
		}
		var nCt_h = (nC_h - $(".navCover-text").height()) / 2 - 20;
		$("#navCover").height(nC_h);
		$(".navCover-text").css('top', nCt_h);
		$(".navCover-text > div:nth-child(3)").css('margin-left', (wW - $(".navCover-text > div:nth-child(3)").width()) / 2);
		$("#wrapBox").height(wH - nC_h);
	}
	navCover();
	$(window).bind('resizeEnd', navCover);
	function boxLogin () {
		$("#gLogin").boxPosition({
			position: 'center',
			resize: true,
			pH: $("#navCover").height(),
			mY: 0
		});
	}
	boxLogin();
}
function action () {
	function toggleRemember () {
		var box = $("#gLogin div[name='remember']");
		box.bind('click', function(){
			var isBox = box.children("div[remember]");
			if(isBox.attr('remember') == 'false'){
				isBox.attr('remember', 'true');
			}else {
				isBox.attr('remember', 'false');
			}
		});
	}
	toggleRemember();
	function error (id) {
		var title = $(".title");
		var tagPush = "";
		if(transferError(id) != ''){
			var tagPush = transferError(id);
		}else {
			title.find("i.error").remove();
		}
		if(tagPush != ""){
			if(title.find("i.error").length == 0){
				title.find("span").first().after("<i class='fa fa-exclamation-circle error south' title='"+tagPush+"'></i>");
			}else {
				title.find("i.error").fadeIn("fast");
				title.find("i.error").attr("title", tagPush);
			}
			title.find("i.error").tooltip({gravity: 's', trigger: 'manual'});
		}
	}
	function login () {
		function check () {
			var username_I = $(".boxForm > .content > .lines input[name='username']");
			var password_I = $(".boxForm > .content > .lines input[name='password']");
			var remember_I = $(".boxForm > .content > .lines div[name='remember'] > div");
			function usernameRegex(string) {
				var pattern = new RegExp(/^([a-zA-Z0-9\.\_]{6,30}$)/);
			    //return pattern.test(string);
			    return true;
			};
			function emailRegex(string) {
				var pattern = new RegExp(/(([\w-\.]+@([\w-]+\.)+[\w-]{2,6}))$/);
			    return pattern.test(string);
			};
			function passwordRegex(string) {
				var pattern = new RegExp(/^(\S{8,}$)/);
				return pattern.test(string);
			};
			function rememberRegex(string) {
			    var pattern = new RegExp(/^(true|false)/);
			    return pattern.test(string);
			};
			var username = username_I.val();
			var password = password_I.val();
			var remember = remember_I.attr('remember');
			if (!usernameRegex(username) && !emailRegex(username)) {
				return {status: false, reason: 'username', code: "ERROR#USER_001"};
			}else if (!passwordRegex(password)) {
				return {status: false, reason: 'password', code: "ERROR#USER_002"};
			}else if (!rememberRegex(remember)) {
				return {status: false, reason: 'remember', code: "ERROR#USER_005"};
			}else {
				return {status: true, data: {type: 'login', token: '<?php print $g_client['token']['accounts']['login']; ?>', user: {username: username, password: password, remember: remember}}};
			}
		}
		function send (data) {
			var loginTab = $("#gLogin");
			if (loginTab.attr('handling') != 'true') {
				loginTab.attr('handling','true');
				$.ajax({
					type: "POST",
					dataType: "json",
					url: "<?php print $_tool->links("source/ajax/accounts.ajax"); ?>",
					data: data,
					contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
					success: function (returnData) {
						if (returnData['return'] !== undefined && returnData['return'] == false) {
							error(returnData['reason']);
						}else if (returnData['redirect'] !== undefined && returnData['redirect'] != null) {
							window.location.href = returnData['redirect'];
						}else {
							//.
						}
					},
					error: function (xhr, ajaxOptions, thrownError) {
						error("ERROR#USER_000");
					}
				}).done(function(){
					setTimeout(function(){
						loginTab.attr('handling','false');
					},100);
				});
			}
		}
		function action () {
			var box = $(".boxForm");
			var button = $(".boxForm > .content > .lines button");
			var input = $(".boxForm > .content > .lines input[name]");
			button.bind('click', function(){
				var button = $(this);
				if(button.attr('name') == 'login' && button.attr('process') != 'true'){
					if(check()['status']){
						$(".boxForm-title i.error").fadeOut("fast");
						var returnSend = send(check()['data']);
					}else {
						error(check()['code']);
					}
				}else if(button.attr('name') == 'register'){
					window.location.href = '<?php print $_tool->links("accounts/register"); ?>';
				}else if(button.attr('name') == 'forgetpassword'){
					window.location.href = '<?php print $_tool->links("accounts/forgetpassword"); ?>';
				}
			});
			input.keypress(function(event){
				var keycode = (event.keyCode ? event.keyCode : event.which);
				if(keycode == '13'){
					$(".boxForm > .content > .lines button[name='login']").click();
				}
			});

		}
		action();
	}
	login();
}
$(document).ready(function(){
	resizeTemplate();
	action();
});
