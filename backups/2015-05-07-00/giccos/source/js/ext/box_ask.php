function ask_action (type) {
	if (type == "live" || type == "country") {
		var ask = $("#gboxAsk[ask-type='"+type+"']");
		var rowsInput = ask.find(".box > .content > .rows.input");
		var input = rowsInput.children("input");
		input.donetyping(function(){
			var value = input.val();
			if (value != '') {
				var address = value;
				var data = {'type': 'places', 'token': '<?php print $g_client['token']['maps']['places']; ?>', 'action': 'search', 'query': {'by': 'text', 'output': 'json', 'address': address}};
				$.ajax({
					url: '<?php print $_tool->links("source/ajax/maps.ajax"); ?>',
					type: 'POST',
					data: data,
					dataType: 'json',
					success: function(data) {
						console.log(data);
						if(data['return'] == true){
							var title = '<?php print $_language->text('places_suggest', 'ucfirst'); ?>';
							var content = [];
							for (var i in data['data']){
								var rows = data['data'][i];
								var img = '';
								if(rows['name'] != null){
									var name = rows['name'];
								}else if(rows['formatted_address'] != null){
									var name = rows['formatted_address'];
								}
								var img = name.replace(/([\s])/g, "%20");
								var description = rows['formatted_address'];
								var location = rows['geometry']['location']['lat']+','+rows['geometry']['location']['lng'];
								var img = '<?php print $_tool->links("maps/places/thumbnail/"); ?>title='+img+'&size=100&format=gif';
								var preview = '<?php print $_tool->links("maps/places/staticmap/"); ?>location='+location+'&zoom=15&size=300x300&maptype=roadmap&markers=color:red%7C'+location+'&format=gif';
								var code = rows['place_id'];
								content[i] = {'img': img, 'name': name, 'description': description, 'code': code, 'location': location, 'preview': preview};
							}
							var name = address;
							var footer = {'get': true, 'type': 'preview-map'};
							var box = {'title': title, 'type': 'places', 'name': name, 'content': content, 'footer': footer, 'output': true, 'multiple': false};
							boxSuggest(box, input);
						}else {
							//.
						}
					}
				});
			}else {
				$("#boxSuggest").remove();
			}
		});
		ask.find(".box > .content > .rows > .private").choosePrivate({'type': 'status', 'id': '3'});
		var send = ask.find(".box > .content > .rows.options > .submit > .send");
		send.bind('click', function(){
			var handing = ask.attr('handing');
			if (handing != 'true') {
				ask.attr('handing','true');
				var tag = rowsInput.find("[tag]");
				var rows = ask.attr('ask-type');
				var private = JSON.parse(ask.find(".box > .content > .rows > .private > .choosePrivate > .selected > [private]").attr('private'))['type'];
				if (tag.length == 0) {
					var value = rowsInput.children("input").val();
				}else {
					var value = {"type": tag.attr('tag'), "code": tag.attr('tag-code')};
				}
				var data = {'type': 'info', 'token': '<?php print $g_client['token']['action']['user']; ?>', 'action': 'update', 'rows': [{'rows': rows, 'value': value}, {'rows': 'private->info->'+rows, 'value': private}]};
				$.ajax({
					type: "POST",
					dataType: "json",
					url: "<?php print $_tool->links("source/ajax/user.ajax"); ?>",
					data: data,
					contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
					success: function (data) {
						if (data['return'] == true) {
							ask.slideUp(function(){
								$(this).remove();
								popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('information_has_been_updated','ucfirst'); ?>', from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_text_timeout'); ?>'});
							});
						}else if (data['return'] == false) {
							popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError(data['reason']), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
						}
					},
					error: function () {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: transferError('ERROR#FEEDS_007'), from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_error_timeout'); ?>'});
					}
				}).done(function(){
					ask.attr('handing','false');
				});
			}
		});
	}
}
$(document).ready(function(){
	var type = $("#gboxAsk").attr('ask-type');
	ask_action(type);
});