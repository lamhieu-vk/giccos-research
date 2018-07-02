function ask_action (type) {
	if (type == "live" || type == "country") {
		var ask = $("#gboxAsk[ask-type='"+type+"']");
		var rowsInput = ask.find(".box > .content > .rows.input");
		var input = rowsInput.children("input");
		input.donetyping(function(){
			var value = input.val();
			if (isset(value) && value !== "" && value != input.attr('val') && input.attr('handling') != "true") {
				input.attr('handling-request', 'true');
				var doneRequestFunc = function () {
					input.removeAttr('handling-request');
				};
				var address = value;
				var data = {'port': 'maps', 'token': '<?php print $g_client['token']['action']['maps']; ?>', 'type': 'places', 'action': 'search', 'query': {'by': 'text', 'output': 'json', 'address': address}};
				$.ajax({
					url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
					type: "POST",
					data: data,
					dataType: "json",
					success: function(data) {
						if (isset(data['return']) && data['return'] === true) {
							input.attr('val', value);
							if (isset(data['data'])) {
								var placesFoundedArr = [];
								placesLoop: for (var i in data['data']) {
									var thisPlaces = data['data'][i];
									thisPlaces['thumbnail'] = '<?php print $_tool->links("maps/raw/places/thumbnail/"); ?>title='+thisPlaces['name'].replace(/([\s])/g, "%20")+'&size=100&format=gif';
									thisPlaces['preview'] = {'type': 'image', 'url': '<?php print $_tool->links("maps/raw/places/staticmap/"); ?>location='+thisPlaces['location']+'&zoom=15&size=300x300&maptype=roadmap&markers=color:red%7C'+thisPlaces['location']+'&format=gif'};
									thisPlaces['tag'] = {};
									thisPlaces['tag']['type'] = "places";
									thisPlaces['tag']['display'] = thisPlaces['display'];
									thisPlaces['tag']['location'] = thisPlaces['location'];
									thisPlaces['tag']['address'] = thisPlaces['address'];
									thisPlaces['tag']['name'] = thisPlaces['name'];
									thisPlaces['tag']['preview'] = thisPlaces['preview'];
									placesFoundedArr[countArr(placesFoundedArr)] = {'class': 'tagPlaces', 'thumbnail': thisPlaces['thumbnail'], 'text': thisPlaces['name'], 'tip': thisPlaces['address'], 'tag': thisPlaces['tag'], 'preview': thisPlaces['preview']}
								}
								var boxSuggestOptions = {
									'multiple': false,
									'output': true,
									'title': '<?php print $_language->text('you_may_find', 'ucfirst'); ?>',
									'content': {
										'<?php print $_language->text('places', 'ucfirst'); ?>': placesFoundedArr
									}
								};
								boxSuggest(input, boxSuggestOptions);
							}
							setTimeout(function(){
								input.removeAttr('val');
							}, 1000);
						}else {
							//.
						}
					}
				}).fail(doneRequestFunc).done(doneRequestFunc);
			}else {
				$("#boxSuggest").remove();
			}
		});
		ask.find(".box > .content > .rows > .private").choosePrivate({'type': 'status', 'id': '3'});
		var send = ask.find(".box > .content > .rows.options > .submit > .send");
		send.bind('click', function(){
			var handing = ask.attr('handing');
			if (handing != "true") {
				ask.attr('handing','true');
				var tag = rowsInput.find("[tag]");
				var rows = ask.attr('ask-type');
				var private = JSON.parse(ask.find(".box > .content > .rows > .private > .choosePrivate > .selected > [private]").attr('private'))['type'];
				if (tag.length == 0) {
					var value = rowsInput.children("input").val();
				}else {
					var value = {"type": tag.attr('tag'), "code": tag.attr('tag-code')};
				}
				var doneRequestFunc = function () {
					ask.removeAttr('handing');
				};
				var data = {'port': 'user', 'token': '<?php print $g_client['token']['action']['user']; ?>', 'type': 'info', 'action': 'update', 'rows': [{'label': rows, 'value': value}, {'label': 'private->info->'+rows, 'value': private}]};
				$.ajax({
					url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
					type: "POST",
					dataType: "json",
					data: data,
					contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
					success: function (data) {
						if (isset(data['return']) && data['return'] == true) {
							ask.slideUp(function(){
								$(this).remove();
								popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('information_has_been_updated','ucfirst'); ?>', from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_text_timeout'); ?>'});
							});
						}
					}
				}).fail(doneRequestFunc).done(doneRequestFunc);
			}
		});
	}
}
$(document).ready(function(){
	var type = $("#gboxAsk").attr('ask-type');
	if (isset(type) && type !== null) {
		ask_action(type);
	}
});