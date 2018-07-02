function messages_scrollBar () {
	var setSize = function () {
		var typeH = $("#gMessagesTab > .main > .type").height();
		$("#gMessagesTab > .main > .content .data").height(window.innerHeight  - 5 - 185).scrollTop($(this).innerHeight() * 2);
		$("#gMessagesTab > .main").height(window.innerHeight  + typeH - 185);
		$("#gMessagesTab > .main > .type > .input > textarea").donetyping(function(){
			var resizeH = $("#gMessagesTab > .main > .type").height() - typeH;
			$("#gMessagesTab > .main > .content > .barScrollDiv, #gMessagesTab > .main > .content > .barScrollDiv > .data").height(window.innerHeight - resizeH - 200);
		});
	}
	setSize();
	$(window).bind("resizeEnd", setSize);
}
function messages_autosize () {
	$("#gMessagesTab > .main > .type > .input > textarea").autosize();
}
function messages_optCheckbox () {
	var inputSendCheckBox = $("#gMessagesTab > .main > .type > .action > .send > .checkbox input");
	var buttonSend = $("#gMessagesTab > .main > .type > .action > .send > button");
	inputSendCheckBox.bind('click', function() {
		if (buttonSend.attr('handling-toogle') != 'true') {
			buttonSend.attr('handling-toogle', 'true');
			var inputSendCheckBox = $(this);
			if (inputSendCheckBox.is(":checked") == true) {
				buttonSend.hide();
				$.cookie("MesOpt_PressEnter", "true", { expires: 30, path: "/" });
			}else {
				buttonSend.show();
				$.cookie("MesOpt_PressEnter", "false", { expires: 30, path: "/" });
			}
			setTimeout(function(){
				buttonSend.attr('handling-toogle', 'false');
			}, 100);
		}
	});
	if ($.cookie("MesOpt_PressEnter") != undefined) {
		var setValue = $.cookie("MesOpt_PressEnter");
		if (setValue == "true") {
			inputSendCheckBox.click();
		}
	}
	var inputScrollCheckBox = $("#gMessagesTab > .main > .type > .action > .scroll > .checkbox input");
	inputScrollCheckBox.bind('click', function() {
		var inputScrollCheckBox = $(this);
		if (inputScrollCheckBox.attr('handling-toogle') != 'true') {
			inputScrollCheckBox.attr('handling-toogle', 'true');
			if (inputScrollCheckBox.is(":checked") == true) {
				$.cookie("MesOpt_AutoScroll", "true", { expires: 30, path: "/" });
			}else {
				$.cookie("MesOpt_AutoScroll", "false", { expires: 30, path: "/" });
			}
			setTimeout(function(){
				inputScrollCheckBox.attr('handling-toogle', 'false');
			}, 100);
		}
	});
	if ($.cookie("MesOpt_AutoScroll") != undefined) {
		var setValue = $.cookie("MesOpt_AutoScroll");
		if (setValue == "true") {
			inputScrollCheckBox.click();
		}
	}
}
function messages_dataAction () {
	var inputMessages = $("#gMessagesTab > .main > .type > .input > textarea");
	inputMessages.enter(function(){
		var inputCheckBox = $("#gMessagesTab > .main > .type > .action > .send > .checkbox input");
		if (inputCheckBox.is(":checked") == true) {
			messages_dataAdd();
		}
	}, 100);
	var buttonSend = $("#gMessagesTab > .main > .type > .action > .send > button");
	buttonSend.bind('click', function(){
		messages_dataAdd();
	});
}
function messages_dataPull (number) {
	if (number != undefined && number.toNumber() > 0) {
		var text = number.toNumber()+" <?php print $_language->text('scrolldown_seen_messages', 'ucfirst', false); ?>.";
	}else {
		var text = "<?php print $_language->text('scrolldown_seen_messages', 'ucfirst', false); ?>.";
	}
	popupNotification ({
		'type': 1, 
		'title': '<?php print $_language->text('notification', 'ucfirst', false); ?>', 
		'description': text,
		'pin': false,
		'callback': function () {
			var popupThis = $(this);
			var conversation = $("#gMessagesTab > .main > .content .data[conversation]");
			conversation.animate({
				'scrollTop': conversation.innerHeight() * 2
			}, function () {
				popupThis.find("[close]").click();
			});
		}
	});
}
function messages_dataAdd () {
	var conversation = JSON.parse($("#gMessagesTab > .main .data[conversation]").attr('conversation'));
	var inputMessages = $("#gMessagesTab > .main > .type > .input > textarea");
	var content = inputMessages.val();
	if (content != "" && conversation != undefined && typeof conversation == 'object') {
		var tab = $("#gMessagesTab");
		if (tab.attr('handling-send') != 'true') {
			tab.attr('handling-send', 'true');
			var emoticons = null;
			var data = {'token': '<?php print $g_client['token']["action"]['messages']; ?>', 'port': 'messages', 'type': 'private', 'local': 'none', 'manage': 'data', 'action': 'add', 'tab': conversation['id'], 'content': content, 'emoticons': emoticons};
			inputMessages.val('').height(36);
			console.log('sending');
			$.ajax({
				url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
				type: 'POST',
				data: data,
				dataType: 'json',
				success: function(data) {
					if (data['return'] == true) {
						messages_dataPush('>', data['data']);
						var seen = $("#gMessagesTab > .main > .content .rows[seen]");
						seen.fadeOut(function(){
							tab.attr('view','false');
							$(this).remove();
						});
						setTimeout(function(){
							$("#gMessagesTab > .main > .content .data").scrollTop($(this).innerHeight() * 2);
						},10);
					}else {
						//.
					}
				}
			}).done(function(){
				setTimeout(function(){
					tab.attr('handling-send', 'false');
				},100);
				inputMessages.val('').height(36);
			});
		}
	}
}
function messages_dataGet (options) {
	var conversation = JSON.parse($("#gMessagesTab > .main .data[conversation]").attr('conversation'));
	if (conversation != undefined && typeof conversation == 'object') {
		var tab = $("#gMessagesTab");
		var sort = options['sort'];
		var limit = options['limit'];
		var id = options['id'];
		if (((tab.attr('handling-get-new') != 'true' && sort == ">") || (tab.attr('handling-get-old') != 'true' && sort == "<")) && tab.attr('handling-send') != 'true') {
			if (sort == ">") {
				tab.attr('handling-get-new', 'true');
			}else if (sort == "<") {
				tab.attr('handling-get-old', 'true');
			}
			var data = {'token': '<?php print $g_client['token']["action"]['messages']; ?>', 'port': 'messages', 'type': 'private', 'local': 'none', 'manage': 'data', 'action': 'get', 'sort': sort, 'limit': limit, 'tab': conversation['id'], 'id': id};
			console.log('getting');
			$.ajax({
				url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
				type: 'POST',
				data: data,
				dataType: 'json',
				success: function(data) {
					if (data['return'] == true) {
						if (sort == "<" && Object.keys(data['data']).length > 0) {
							var Mes = $("#gMessagesTab > .main > .content .rows[messages]");
							var lengthMesOld = Mes.length;
						}
						for (var i in data['data']) {
							var rows = data['data'][i];
							messages_dataPush(sort, rows);
						}
						if (sort == ">" && Object.keys(data['data']).length > 0) {
							if ($.cookie("MesOpt_AutoScroll") != undefined && $.cookie("MesOpt_AutoScroll") == "true") {
								var boxData = $("#gMessagesTab > .main > .content .data[conversation]");
								boxData.scrollTop(boxData.innerHeight() * 2);
							}else {
								messages_dataPull();
							}
							var seen = $("#gMessagesTab > .main > .content .rows[seen]");
							seen.fadeOut(function(){
								tab.attr('view','false');
								$(this).remove();
							});
						}else if (sort == "<" && Object.keys(data['data']).length > 0) {
							var boxData = $("#gMessagesTab > .main > .content .data[conversation]");
							var Mes = $("#gMessagesTab > .main > .content .rows[messages]");
							var lengthMesNew = Mes.length;
							Mes.each(function(i){
								var i = i + 1;
								if (i == lengthMesNew - lengthMesOld) {
									return false;
								}else {
									var boxDataScrT = boxData.scrollTop();
									boxData.scrollTop(boxDataScrT + $(this).innerHeight());
								}
							});
						}else if (sort == "<" && Object.keys(data['data']).length == 0) {
							tab.attr('lock-get-old','true');
						}
					}
				}
			}).done(function(){
				setTimeout(function(){
					if (sort == ">") {
						tab.attr('handling-get-new', 'false');
						messages_callGet();
					}else if (sort == "<") {
						tab.attr('handling-get-old', 'false');
						messages_dataLoading('hide');
					}
				},100);
			});
		}else if (tab.attr('handling-send') == 'true') {
			setTimeout(function(){
				messages_callGet();
			},500);
		}
	}
}
function messages_dataLoading (type) {
	var conversation = $("#gMessagesTab > .main .data[conversation]");
	var loading = conversation.find("[loading]");
	if (loading.length == 0 && type == 'show') {
		var code = " <div class='loading' loading> <img src='<?php print $_tool->links('photos/raw/static/loading_w_s1_c777.gif'); ?>'> </div> ";
		conversation.find("[messages]").first().before(code);
		var loading = conversation.find("[loading]");
		loading.hide().fadeIn();
	}else if(loading.length > 0 && type == 'show') {
		loading.fadeIn();
	}else if(loading.length > 0 && type == 'hide') {
		loading.fadeOut();
	}
}
function messages_oldGet () {
	$("#gMessagesTab > .main > .content .data").scroll(function(){
		if ($(this).scrollTop() == 0 && $("#gMessagesTab").attr('lock-get-old') != "true") {
			messages_dataLoading('show');
			var mes = $("#gMessagesTab > .main > .content .rows[messages]");
			var sort = "<";
			var limit = "10";
			var options = {"sort": sort, "limit": limit, "id": JSON.parse(mes.first().attr('messages'))['id']};
			messages_dataGet(options);
		}
	});
}
function messages_dataPush (sort, object) {
	var tab = $("#gMessagesTab");
	var data = object;
	data['rows'] = {"type": "messages", "id": data['id'], "time": data['time'], "author": {"type": data['author']['type'], "id": data['author']['id']}};
	if ("<?php print $g_user['mode']['type']; ?>" == data['author']['type'] && "<?php print $g_user['mode']['id']; ?>" == data['author']['id'] ) {
		data['class'] = "me";
		data['tooltip'] = "e";
		data['author']['code'] = "";
	}else {
		data['class'] = "guy";
		data['tooltip'] = "w";
		data['author']['code'] = " <div class='author'> <a href='"+data['author']['link']+"'><img src='"+data['author']['avatar']+"'></a> </div> ";
	}
	var code = " <div class='rows "+data['class']+"' messages='"+JSON.stringify(data['rows'])+"'> "+data['author']['code']+" <div class='context _tt-bk "+data['tooltip']+"' time-ago='"+data['time']+"' time-tooltip='true' title='"+agoDatetime(data['time'], 'ago', 0)+"'> <i class='arrow'></i> <span>"+parseText(data['content'])+"</span> </div> </div> ";
	var conversation = $("#gMessagesTab > .main .data[conversation]");
	var mes = $("#gMessagesTab > .main > .content .rows[messages]");
	if (mes.length == 0) {
		conversation.append(code);
	}else if (mes.length > 0) {
		var num = $("#gMessagesTab > .main > .content .rows[messages='"+JSON.stringify(data['rows'])+"']").length;
		if (num == 0 && sort == '>') {
			mes.last().after(code);
		}else if (num == 0 && sort == '<') {
			mes.first().before(code);
		}
	}
	setupTooltip();
}
function messages_callGet () {
	setTimeout(function(){
		var mes = $("#gMessagesTab > .main > .content .rows[messages]");
		var sort = ">";
		var limit = "";
		var options = {"sort": sort, "limit": limit, "id": JSON.parse(mes.last().attr('messages'))['id']};
		messages_dataGet(options);
	}, 1000);
}
function messages_viewsAdd () {
	var conversation = JSON.parse($("#gMessagesTab > .main .data[conversation]").attr('conversation'));
	var tab = $("#gMessagesTab");
	if (tab.attr('view') != "true" && conversation != undefined && typeof conversation == 'object') {
		var mes = $("#gMessagesTab > .main > .content .rows[messages]")
		var lastMes = JSON.parse(mes.last().attr('messages'));
		if (tab.attr('handling-view-add') != 'true' && (lastMes['author']['type'] != "<?php print $g_user['mode']['type']; ?>" || lastMes['author']['id'] != "<?php print $g_user['mode']['id']; ?>")) {
			tab.attr('handling-view-add', 'true');
			var data = {'token': '<?php print $g_client['token']["action"]['messages']; ?>', 'port': 'messages', 'type': 'private', 'local': 'none', 'manage': 'views', 'action': 'add', 'tab': conversation['id']};
			console.log('view');
			$.ajax({
				url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
				type: 'POST',
				data: data,
				dataType: 'json',
				success: function(data) {
					if (data['return'] == true) {
						tab.attr('view','true');
						console.log(data['data']['action']);
					}else {
						//.
					}
				}
			}).done(function(){
				setTimeout(function(){
					tab.attr('handling-view-add', 'false');
				},100);
			});
		}
	}
	setTimeout(messages_viewsAdd,2500);
}
function messages_viewsGet () {
	var conversation = JSON.parse($("#gMessagesTab > .main .data[conversation]").attr('conversation'));
	var tab = $("#gMessagesTab");
	if (conversation != undefined && typeof conversation == 'object') {
		var mes = $("#gMessagesTab > .main > .content .rows[messages]");
		var lastMes = JSON.parse(mes.last().attr('messages'));
		if (tab.attr('handling-sending') != "true" && tab.attr('handling-view-get') != "true" && (lastMes['author']['type'] == "<?php print $g_user['mode']['type']; ?>" && lastMes['author']['id'] == "<?php print $g_user['mode']['id']; ?>")) {
			tab.attr('handling-view-get', 'true');
			var data = {'token': '<?php print $g_client['token']["action"]['messages']; ?>', 'port': 'messages', 'type': 'private', 'local': 'none', 'manage': 'views', 'action': 'get', 'tab': conversation['id']};
			console.log('getview');
			$.ajax({
				url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
				type: 'POST',
				data: data,
				dataType: 'json',
				success: function(data) {
					if (data['return'] == true) {
						if (data['value'] != null) {
							var code = "<div class='rows' seen> <span class='_tt-bk e' title='<small>"+data['value']+"</small>'><i></i> <?php print $_language->text('seen', 'ucfirst', false); ?></span> </div>";
							var seen = $("#gMessagesTab > .main > .content .rows[seen]");
							var mesInfo = JSON.parse(mes.last().attr('messages'));
							if (seen.length == 0) {
								mes.last().after(code);
								setupTooltip();
								if ($.cookie("MesOpt_AutoScroll") != undefined && $.cookie("MesOpt_AutoScroll") == "true") {
									var boxData = $("#gMessagesTab > .main > .content .data[conversation]");
									boxData.scrollTop(boxData.height() * 2);
								}else {
									popupNotification ({
										'type': 1, 
										'title': '<?php print $_language->text('notification', 'ucfirst', false); ?>', 
										'description': data['value'],
										'pin': false,
										'callback': function () {
											var popupThis = $(this);
											var conversation = $("#gMessagesTab > .main > .content .data[conversation]");
											conversation.animate({
												'scrollTop': conversation.height() * 2
											}, function () {
												popupThis.find("[close]").click();
											});
										}
									});
								}
							}
						}
					}else {
						//.
					}
				}
			}).done(function(){
				setTimeout(function(){
					tab.attr('handling-view-get', 'false');
				},100);
			});
		}
	}
	setTimeout(messages_viewsGet,2500);
}
function messages_viewsAction () {
	messages_viewsAdd();
	messages_viewsGet();
}
function messages_typingAdd () {
	var conversation = JSON.parse($("#gMessagesTab > .main .data[conversation]").attr('conversation'));
	var tab = $("#gMessagesTab");
	var textarea = $("#gMessagesTab > .main > .type > .input > textarea");
	textarea.attr('typing','false').keyup(function(){
		var textarea = $(this);
		if (conversation != undefined && typeof conversation == 'object' && textarea.attr('typing') != "true" && textarea.val() != "") {
			if (textarea.attr('handling-add') != "true") {
				textarea.attr('handling-add','true');
				var data = {'token': '<?php print $g_client['token']["action"]['messages']; ?>', 'port': 'messages', 'type': 'private', 'local': 'none', 'manage': 'typing', 'action': 'add', 'tab': conversation['id']};
				var send = true;
				var type = 1;
				console.log('typing-adding');
			}else {
				var send = false;
			}
		}else if (conversation != undefined && typeof conversation == 'object' && textarea.attr('typing') == "true" && textarea.val() == "") {
			if (textarea.attr('handling-remove') != "true") {
				textarea.attr('handling-remove','true');
				var data = {'token': '<?php print $g_client['token']["action"]['messages']; ?>', 'port': 'messages', 'type': 'private', 'local': 'none', 'manage': 'typing', 'action': 'remove', 'tab': conversation['id']};
				var send = true;
				var type = 2;
				console.log('typing-removing');
			}else {
				var send = false;
			}
		}
		if (send != undefined && send == true && type != undefined) {
			$.ajax({
				url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
				type: 'POST',
				data: data,
				dataType: 'json',
				success: function(data) {
					console.log(data);
					if (data['return'] == true) {
						if (type == 1) {
							textarea.attr('typing','true');
						}else if (type == 2) {
							textarea.attr('typing','false');
						}
					}
				}
			}).done(function(){
				if (type == 1) {
					setTimeout(function(){
						console.log('typing-added');
						textarea.attr('handling-add','false');
					},100);
				}else if (type == 2) {
					setTimeout(function(){
						console.log('typing-removed');
						textarea.attr('handling-remove','false');
					},100);
				}
			});	
		}
	});
}
function messages_typingGet () {
	var conversation = JSON.parse($("#gMessagesTab > .main .data[conversation]").attr('conversation'));
	var tab = $("#gMessagesTab");
	if (conversation != undefined && typeof conversation == 'object') {
		if (tab.attr('handling-typing') != "true") {
			tab.attr('handling-typing', 'true');
			var data = {'token': '<?php print $g_client['token']["action"]['messages']; ?>', 'port': 'messages', 'type': 'private', 'local': 'none', 'manage': 'typing', 'action': 'get', 'tab': conversation['id']};
			console.log('gettyping');
			$.ajax({
				url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
				type: 'POST',
				data: data,
				dataType: 'json',
				success: function(data) {
					if (data['return'] == true) {
						if (data['data'] != undefined && Object.keys(data['data']).length > 0) {
							var mes = $("#gMessagesTab > .main > .content .rows[messages]");
							for (var i in data['data']) {
								var rows = data['data'][i];
								mes.each(function(){
									var mes = $(this);
									var messages = JSON.parse(mes.attr('messages'));
									if (messages['type'] == "typing" && messages['author']['type'] == rows['author']['type'] && messages['author']['id'] == rows['author']['id']) {
										mes.addClass('updated');
										delete data['data'][i];
									}
								});
							}
							var mes = $("#gMessagesTab > .main > .content .rows[messages]");
							mes.each(function(){
								var mes = $(this);
								var messages = JSON.parse(mes.attr('messages'));
								if (messages['type'] == "typing" && !mes.hasClass('updated')) {
									mes.remove();
								}
							});
							if (data['data'][i] != null && Object.keys(data['data'][i]).length > 0) {
								var conversation = $("#gMessagesTab > .main .data[conversation]");
								var mes = $("#gMessagesTab > .main > .content .rows[messages]");
								for (var i in data['data']) {
									var rows = data['data'][i];
									rows['info'] = {"type": "typing", "author": {"type": rows['author']['type'], "id": rows['author']['id']}};
									var code = " <div class='rows guy _n' messages='"+JSON.stringify(rows['info'])+"'> <div class='author'> <a href='"+rows['author']['link']+"'><img src='"+rows['author']['avatar']+"'></a> </div> <div class='context _tt-bk w' title='<?php print $_language->text('typing', 'ucfirst', false); ?>...'> <i class='arrow'></i> <span><img icon='tying' src='<?php print $_tool->links('photos/raw/static/loading_o_s1_c777.gif'); ?>'></span> </div> </div>";
									conversation.append(code);
									$("#gMessagesTab > .main > .content .rows._n[messages]").removeClass('_n').hide().fadeIn();
									setupTooltip();
								}
							}
							if ($.cookie("MesOpt_AutoScroll") != undefined && $.cookie("MesOpt_AutoScroll") == "true") {
								var boxData = $("#gMessagesTab > .main > .content .data[conversation]");
								boxData.scrollTop(boxData.height() * 2);
							}
						}else {
							var mes = $("#gMessagesTab > .main > .content .rows[messages]");
							mes.each(function(){
								var mes = $(this);
								var messages = JSON.parse(mes.attr('messages'));
								if (messages['type'] == "typing") {
									mes.fadeOut(function(){
										$(this).remove();
									});
								}
							});
						}
					}
				}
			}).done(function(){
				setTimeout(function(){
					tab.attr('handling-typing', 'false');
				},100);
			});
		}
	}
	setTimeout(messages_typingGet,1000);
}
function messages_typingAction () {
	messages_typingAdd();
	messages_typingGet();
}
$(document).ready(function(){
	messages_scrollBar();
	messages_autosize();
	messages_optCheckbox();
	messages_dataAction();
	messages_callGet();
	messages_oldGet();
	messages_viewsAction();
	messages_typingAction();
});