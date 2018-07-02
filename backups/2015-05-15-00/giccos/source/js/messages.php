var popupCreateMessages = function () {
	var requestCreateMessages = function () {
		var popupCreateMessagesCount = $("[messages-create-popup]").length;
		if (popupCreateMessagesCount > 0) {
			return;
		}
		var randkey = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>),
			codePopup = "<div id='popupCreateMessages' messages-create-popup randkey='"+randkey+"'> <div class='box'> <div class='title nowrap'> <span><?php print $_language->text('create_new_messages', 'ucfirst'); ?></span> <i class='close'></i> </div> <div class='main'> <div class='content'> <input input type='text' placeholder='<?php print $_language->text('send_to', 'ucfirst'); ?>'> </div> </div> <div class='options'> <div class='private'></div> <div class='action'> <div class='button true _bn_c-we'> <span><?php print $_language->text('done', 'ucfirst'); ?></span> </div> <div class='button false _bn_c-we'> <span><?php print $_language->text('cancel', 'ucfirst'); ?></span> </div> </div> </div> </div> </div>";
		$("body").append(codePopup);
		var popupCreateMessages = $("[messages-create-popup][randkey='"+randkey+"']");
		popupCreateMessages.hide().fadeIn().find(".box").boxPosition({"type": "center", "resize": true});
		var popupCreateMessagesMain = popupCreateMessages.find(".box > .main"),
			inputType = popupCreateMessagesMain.find("[input]");
		inputType.donetyping(function(){
			var inputThis = $(this);
			if (isset(inputThis.val()) && inputThis.val() !== null) {
				findMessagesGuy(inputThis.val());
			}
		},250);
		//inputType.AutoComplete({'path': 'info', 'from': 'users', 'output': true, 'multiple': true});
		popupCreateMessages.find(".box").bind('click', function () {
			inputType.focus();
		});
		popupCreateMessages.find(".box > .title > .close").bind('click', function(){
			popupCreateMessages.find(".box > .options > .action > .button.false").click();
		});
		var actionButton = popupCreateMessages.find(".box > .options > .action > .button");
		actionButton.bind('click', function(){
			if ($(this).hasClass("true")) {
				//.
			}else if ($(this).hasClass("false")) {
				popupCreateMessages.fadeOut(function(){
					$(this).remove();
				});
			}
		});
		$(document).bind('keyup', function(e) {
			var keycode = (e.keyCode ? e.keyCode : e.which);
			if (keycode == '27' && popupCreateMessages.length > 0) {
				popupCreateMessages.find(".box > .options > .action > .button.false").click();
			}
		});
		var findMessagesGuy = function (value) {
			if (!isset(value) || value === null) {
				return false;
			}
			if (popupCreateMessages.attr('handling-guy') != "true") {
				popupCreateMessages.attr('handling-guy', 'true');
				var doneRequestFunc = function () {
					popupCreateMessages.removeAttr('handling-guy');
				};
				var data = {'port': 'messages', 'token': '<?php print $g_client['token']['action']['messages']; ?>', 'type': 'private', 'manage': 'guy', 'action': 'search', 'from': 'all', 'value': value};
				$.ajax({
					url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
					type: "POST",
					dataType: "json",
					data: data,
					contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
					success: function (data) {
						console.log(data);
						if (isset(data['return']) && data['return'] === true) {
							if (isset(data['results']) && Object.keys(data['results']).length > 0) {
								var title = '<?php print $_language->text('you_may_need', 'ucfirst'); ?>',
									footer = {'get': true, 'type': 'preview-info'},
									box = {'title': title, 'type': 'info', 'content': {'users': data['results']}, 'footer': footer, 'output': true, 'multiple': true};
								boxSuggest(box, inputType);
							}
						}else {
							//.
						}
					}
				}).fail(doneRequestFunc).done(doneRequestFunc);
			}
		};
	};
	var buttonCreateMessages = $("[messages-create-button]");
	buttonCreateMessages.bind('click', requestCreateMessages);
}
$(document).ready(function(){
	popupCreateMessages();
});