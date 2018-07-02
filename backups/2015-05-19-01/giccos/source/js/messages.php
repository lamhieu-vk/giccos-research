var popupCreateMessages = function () {
	var requestCreateMessages = function () {
		var popupCreateMessagesCount = $("[messages-create-popup]").length;
		if (popupCreateMessagesCount > 0) {
			return;
		}
		var randkey = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>),
			codePopup = "<div id='popupCreateMessages' messages-create-popup randkey='"+randkey+"'> <div class='box'> <div class='title nowrap'> <span><?php print $_language->text('create_new_messages', 'ucfirst'); ?></span> <i class='close'></i> </div> <div class='main'> <div class='content name'> <input input type='text' placeholder='<?php print $_language->text('type_name_tab_messages', 'ucfirst'); ?>'> </div> <div class='content guy'> <input input type='text' placeholder='<?php print $_language->text('send_to', 'ucfirst'); ?>'> </div> </div> <div class='options'> <div class='private'></div> <div class='action'> <div class='button true _bn_c-we'> <span><?php print $_language->text('done', 'ucfirst'); ?></span> </div> <div class='button false _bn_c-we'> <span><?php print $_language->text('cancel', 'ucfirst'); ?></span> </div> </div> </div> </div> </div>";
		$("body").append(codePopup);
		var popupCreateMessages = $("[messages-create-popup][randkey='"+randkey+"']");
		popupCreateMessages.hide().fadeIn().find(".box").boxPosition({"type": "center", "resize": true});
		var popupCreateMessagesMain = popupCreateMessages.find(".box > .main"),
			inputType = popupCreateMessagesMain.children(".content.guy").find("[input]");
		inputType.donetyping(function(){
			var inputThis = $(this);
			if (isset(inputThis.val()) && inputThis.val() !== null) {
				findMessagesGuy(inputThis.val());
			}
		},250);
		//inputType.AutoComplete({'path': 'info', 'from': 'users', 'output': true, 'multiple': true});
		popupCreateMessagesMain.children(".content").bind('click', function () {
			$(this).find("input").focus();
		});
		popupCreateMessages.find(".box > .title > .close").bind('click', function(){
			popupCreateMessages.find(".box > .options > .action > .button.false").click();
		});
		var actionButton = popupCreateMessages.find(".box > .options > .action > .button");
		actionButton.bind('click', function(){
			if ($(this).hasClass("true")) {
				var tagsGuy = popupCreateMessages.find(".box > .main > .content.guy").find("[tag][tag-type][tag-id]");
				if (isset(tagsGuy) && tagsGuy.length > 0) {
					var guyObj = {};
					tagsGuy.each(function(){
						var tagThis = $(this);
						if (isset(tagThis.attr('tag-type')) && tagThis.attr('tag-type') !== null && isset(tagThis.attr('tag-id')) && tagThis.attr('tag-id') !== null) {
							guyObj[countArr(guyObj)] = {'type': tagThis.attr('tag-type'), 'id': tagThis.attr('tag-id')};
						}
					});
					if (typeof guyObj == "object" && Object.keys(guyObj).length > 0) {
						var nameObj = popupCreateMessages.find(".box > .main > .content.name").find("input").val();
						if (!isset(nameObj) || nameObj === null || nameObj == "") {
							var nameObj = null;
						}
						var requestObj = {
							'name': nameObj,
							'guy': guyObj,
							'private': 1
						};
						createMessagesTab(requestObj);
					}else {
						//.
					}
				}else {
					//.
				}
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
		var createMessagesTab = function (object) {
			if (!isset(object) || typeof object != "object" || countArr(object) === 0) {
				return false;
			}
			if (popupCreateMessages.attr('handling-create') != "true") {
				popupCreateMessages.attr('handling-create', 'true');
				var doneRequestFunc = function () {
					popupCreateMessages.removeAttr('handling-create');
				};
				if (!isset(object['name']) || object['name'] === null || object['name'] == "") {
					object['name'] = null;
				}
				if (!isset(object['language'])) {
					object['language'] = "<?php print $g_user['language']; ?>";
				}
				if (!isset(object['private'])) {
					return false;
				}
				for (var i in object['guy']) {
					thisGuy = object['guy'][i];
					if (!isset(thisGuy['type']) || !isset(thisGuy['id'])) {
						delete object['guy'][i];
					}
				}
				if (countArr(object['guy']) === 0) {
					return false;
				}
				var data = {'port': 'messages', 'token': '<?php print $g_client['token']['action']['messages']; ?>', 'type': 'private', 'manage': 'tab', 'action': 'add', 'name': object['name'], 'private': object['private'], 'guy': object['guy'], 'language': object['language']};
				$.ajax({
					url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
					type: "POST",
					dataType: "json",
					data: data,
					contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
					success: function (data) {
						console.log(data);
					}
				}).fail(doneRequestFunc).done(doneRequestFunc);
			}
		}
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