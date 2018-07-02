var PhotosEditorPopup = function (object) {
	var randkey = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>);
	var popup = $("#PhotosEditorPopup");
	var lengthPopup = popup.length;
	if (lengthPopup === 0) {
		var imgDefault = ' <div class="imgDefault imgDiv" default name="'+object['default']['name']+'"> <img src="'+object['default']['link']+'"> </div> ';
		var imgProcess = ' <div class="imgProcess imgDiv" testing name="'+object['preview']['name']+'"> <img src="'+object['preview']['link']+'"> </div> ';
		var toolbar_filter = ' <div class="box" type="filter"> <div class="list"> <div class="rows demo" filter="1"> <i> </i> </div> <div class="rows demo" filter="2"> <i> </i> </div> <div class="rows demo" filter="3"> <i> </i> </div> <div class="rows demo" filter="4"> <i> </i> </div> <div class="rows demo" filter="5"> <i> </i> </div> <div class="rows demo" filter="6"> <i> </i> </div> <div class="rows demo" filter="7"> <i> </i> </div> <div class="rows demo" filter="8"> <i> </i> </div> </div> </div> ';
		var toolbar_brightness = ' <div class="box" type="brightness"> <div class="options"> <div class="slider" brightness></div> </div> <div class="text"> <span><?php print $_language->text('custom_brightness', 'ucfirst'); ?>: </span> <span class="value">0</span> </div> </div> ';
		var toolbar_contrast = ' <div class="box" type="contrast"> <div class="options"> <div class="slider" contrast></div> </div> <div class="text"> <span><?php print $_language->text('custom_contrast', 'ucfirst'); ?>: </span> <span class="value">0</span> </div> </div> ';
		var toolbar_rotate = ' <div class="box" type="rotate"> <div class="button" rotate="-90"> <i class="fa fa-rotate-left"></i> <br> <span><?php print $_language->text('rotate_left', 'ucfirst'); ?></span> </div> <div class="button" rotate="+90"> <i class="fa fa-rotate-right"></i> <br> <span><?php print $_language->text('rotate_right', 'ucfirst'); ?></span> </div> </div> ';
		var toolbar = toolbar_filter + toolbar_brightness + toolbar_contrast + toolbar_rotate;
		var popupCode = '<div id="PhotosEditorPopup" randkey="'+randkey+'" secret="'+object['preview']['secret']+'"> <div class="wrapFilter"> </div> <div class="boxContent"> <div class="header"> <span><?php print $_language->text('photos_editor', 'ucfirst'); ?></span> <i close> </i> </div> <div class="body"> <div class="preview" preview>'+imgDefault+imgProcess+'</div> <div class="toolbar" toolbar> <div class="title"> <div type="filter"> <span><?php print $_language->text('filters', 'ucfirst'); ?></span> </div> <div type="brightness"> <span><?php print $_language->text('brightness', 'ucfirst'); ?></span> </div> <div type="contrast"> <span><?php print $_language->text('contrast', 'ucfirst'); ?></span> </div> <div type="rotate"> <span><?php print $_language->text('rotate', 'ucfirst'); ?></span> </div> </div> '+toolbar+' </div> </div> <div class="footer"> <div class="copyright"> <span> <?php print $_language->text('PhotosEditorPopup_footer_text'); ?> </span> </div> </div> </div> </div>';
		$("body").append(popupCode);
		var w = $(window);
		var popup = $("#PhotosEditorPopup[randkey='"+randkey+"']");
		var boxContent = popup.children(".boxContent");
		var header = boxContent.children(".header");
		var body = boxContent.children(".body");
		var footer = boxContent.children(".footer");
		boxContent.boxPosition({position: 'center', resize: true});
		var imgDefault = body.find("[default]");
		var imgTesting = body.find("[testing]");
		// var buttonAction = body.find("[action]");
		imgDefault.hide();
		$("body").css('overflow-y','hidden');
		popup.hide().fadeIn();
		var close = popup.find("[close]");
		close.bind('click', function() {
			var popup = $("#PhotosEditorPopup[randkey='"+randkey+"']");
			popup.attr("exit", "true");
			if (popup.attr('change') == "true") {
				popupAlert({
					'title': '<?php print $_language->text('photos_editor', 'ucfirst'); ?>', 
					'content': '<?php print $_language->text('question_photosEditor_close', 'ucfirst'); ?>',
					'escActive': true,
					'actionTrue': '<?php print $_language->text('apply', 'ucfirst'); ?>',
					'callbackTrue': function () { 
						var options = {
							'type': 'action',
							'set': 'apply'
						};
						settings(options);
						popup.fadeOut(function() {
							$("body").css('overflow-y','auto');
							popup.remove();
						});
					},
					'actionFalse': '<?php print $_language->text('cancel', 'ucfirst'); ?>', 
					'callbackFalse': function () { 
						var options = {
							'type': 'action',
							'set': 'cancel'
						};
						settings(options);
						popup.fadeOut(function() {
							$("body").css('overflow-y','auto');
							popup.remove();
						});
					}
				});
			}else {
				popup.fadeOut(function() {
					$("body").css('overflow-y','auto');
					popup.remove();
				});
			}
		});
		$(document).bind('keyup',function(e) {
			var keycode = (e.keyCode ? e.keyCode : e.which);
			if (keycode == '27' && popup.length > 0 && popup.attr('exit') != "true") {
				close.click();
			}
		});
		toogleBox();
		action();
		setupTooltip();
	}
	function toogleBox () {
		var popup = $("#PhotosEditorPopup[randkey='"+randkey+"']");
		var button = popup.find(".toolbar").find(".title").children("div");
		var box = popup.find(".toolbar").find(".box");
		box.hide();
		button.bind('click', function() {
			button.removeClass('active');
			$(this).addClass('active');
			var type = $(this).attr("type");
			var boxNow = popup.find(".toolbar").find(".box[active='true']").attr('type');
			if (boxNow != type) {
				popup.find(".toolbar").find(".box").attr('active', 'false').slideUp();
				popup.find(".toolbar").find(".box[type='"+type+"']").stop(true, true).slideDown().attr('active', 'true');
				action();
			}
		});
		button.first().click();
	}
	function action () {
		var popup = $("#PhotosEditorPopup[randkey='"+randkey+"']");
		var toolbar = popup.find("[toolbar]");
		var box = toolbar.find("[type][active='true']");
		if (box.attr('type') == 'filter') {
			box.find("[filter]").bind('click', function() {
				var filter = $(this);
				var value = filter.attr('filter');
				var options = {
					'type': 'effect',
					'layer': 'filter',
					'value': value
				};
				settings(options);
				box.find("[filter]").removeClass('active');
				filter.addClass('active');
			});
		}else if (box.attr('type') == 'brightness') {
			var brightness = popup.find(".toolbar").find(".box[type='brightness']");
			//brightness.find('.text').find('.value').text('0');
			//brightness.find("[brightness]").attr('brightness', 0).slider({
			brightness.find("[brightness]").slider({
				min: -25,
		    	max: 25,
		    	step: 1,
		    	//value: 0,
		    	start: function (event, ui) {
		    		var val = $(this).slider("option", "value");
		    		brightness.find("[brightness]").attr('brightness', val);
		    	},
		    	slide: function (event, ui) {
		    		var Slideval = $(this).slider("option", "value");
		    		brightness.find('.text').find('.value').text(Slideval);
		    	},
		    	stop: function (event, ui) {
		    		var Oldval = brightness.find("[brightness]").attr('brightness');
		    		var val = $(this).slider("option", "value");
		    		brightness.find('.text').find('.value').text(val);
		    		if (Oldval != val && val != 0) {
		    			var options = {
							'type': 'effect',
							'layer': 'brightness',
							'value': val
						};
						settings(options);
		    		}
		    	}
			});
		}else if (box.attr('type') == 'contrast') {
			var contrast = popup.find(".toolbar").find(".box[type='contrast']");
			//contrast.find('.text').find('.value').text('0');
			//contrast.find("[contrast]").attr('contrast', 0).slider({
			contrast.find("[contrast]").slider({
				min: 0,
		    	max: 25,
		    	step: 1,
		    	//value: 0,
		    	start: function (event, ui) {
		    		var val = $(this).slider("option", "value");
		    		contrast.find("[contrast]").attr('contrast', val);
		    	},
		    	slide: function (event, ui) {
		    		var Slideval = $(this).slider("option", "value");
		    		contrast.find('.text').find('.value').text(Slideval);
		    	},
		    	stop: function (event, ui) {
		    		var Oldval = contrast.find("[contrast]").attr('contrast');
		    		var val = $(this).slider("option", "value");
		    		contrast.find('.text').find('.value').text(val);
		    		if (Oldval != val && val != 0) {
		    			var options = {
							'type': 'effect',
							'layer': 'contrast',
							'value': val
						};
						settings(options);
		    		}
		    	}
			});
		}else if (box.attr('type') == 'rotate') {
			box.find("[rotate]").bind('click', function() {
				var rotate = $(this);
				var value = rotate.attr('rotate');
				var options = {
					'type': 'effect',
					'layer': 'rotate',
					'value': value
				};
				settings(options);
				rotate.addClass('active');
			});
		}
	}
	function resetValue () {
		var popup = $("#PhotosEditorPopup[randkey='"+randkey+"']");
		var filter = popup.find(".toolbar").find(".box[type='filter']");
		filter.find("[filter]").removeClass('active');
		var brightness = popup.find(".toolbar").find(".box[type='brightness']");
		brightness.find("[brightness]").attr('brightness', 0).slider({value: 0});
		var rotate = popup.find(".toolbar").find(".box[type='rotate']");
		rotate.find("[rotate]").removeClass('active');
	}
	function addButton () {
		var button = '<div class="buttonAction" action> <div class="apply _tt-we e" title="<?php print $_language->text('apply', 'ucfirst'); ?>" button="apply"> <i> </i> </div> <div class="cancel  _tt-we e" title="<?php print $_language->text('cancel', 'ucfirst'); ?>" button="cancel"> <i> </i> </div> </div>';
		return button;
	}
	function actionButton () {
		var popup = $("#PhotosEditorPopup[randkey='"+randkey+"']");
		var button = popup.find("[preview]").children("[action]").children("[button]");
		button.bind('click', function() {
			var button = $(this);
			var options = {
				'type': 'action',
				'set': button.attr('button')
			};
			settings(options);
		});
		//popup.attr('alert-exit','true');
	}
	function loading (type) {
		var popup = $("#PhotosEditorPopup[randkey='"+randkey+"']");
		var loading = popup.find("[preview]").find("[loading]");
		if (loading.length === 0 && type == 'show') {
			var code = '<div class="loading" loading> <img src="<?php print $_tool->links('photos/raw/static/loading_w_s1_c777.gif'); ?>"> </div>';
			popup.find("[preview]").append(code);
			var loading = popup.find("[preview]").find("[loading]");
			loading.hide().fadeIn();
		}else if (loading.length > 0 && type == 'show') {
			loading.fadeIn();
		}else if (loading.length > 0 && type == 'hide') {
			loading.fadeOut();
		}
	}
	function settings (object) {
		var popup = $("#PhotosEditorPopup[randkey='"+randkey+"']");
		var secret = popup.attr('secret');
		var action = popup.find("[preview]").children("[action]");
		popup.attr('change', 'true');
		if (object['type'] == "effect" && object['layer'] != "") {
			var handing = popup.attr('handing');
			if (handing != "true") {
				popup.attr('handing','true');
				var testing = popup.find("[preview]").find("[testing]");
				var name = testing.attr('name');
				var data = {
					'port': 'photos',
					'type': 'editor',
					'action': 'preview',
					'name': name,
					'options': 'effect',
					'token': '<?php print $g_client['token']['action']['photos']; ?>'
				};
				if (object['layer'] == 'filter' || object['layer'] == 'brightness' || object['layer'] == 'contrast' || object['layer'] == 'rotate') {
					data['layer'] = object['layer'];
					data['value'] = object['value'];
				}
				loading('show');
				testing.children('img').addClass('blur');
				$.ajax({
					url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
					type: "POST",
					data: data,
					dataType: "json",
					success: function(data) {
						console.log(data);
						if (data['return'] === true) {
							testing.children('img').reloadPhotos();
							var preview = popup.children(".boxContent").children(".body").children("[preview]");
							if (preview.find('[action]').length === 0) {
								preview.append(addButton());
								actionButton();
								setupTooltip();
							}
						}
					}
				}).done(function() {
					popup.attr('handing','false');
					loading('hide');
					testing.children('img').removeClass('blur');
				});
			}
		}else if (object['type'] == "action") {
			var handing = popup.attr('handing');
			if (handing != "true") {
				popup.attr('handing','true');
				var set = object['set'];
				var testing = popup.find("[preview]").find("[testing]");
				var idefault = popup.find("[preview]").find("[default]");
				var name = testing.attr('name');
				var data = {'token': '<?php print $g_client['token']['action']['photos']; ?>', 'port': 'photos', 'type': 'editor', 'action': 'preview', 'name': name, 'options': 'action', 'set': set};
				loading('show');
				$.ajax({
					url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
					type: "POST",
					data: data,
					dataType: "json",
					success: function(data) {
						console.log(data);
						if (data['return'] === true) {
							popup.removeAttr('change');
							testing.children('img').reloadPhotos();
							idefault.children('img').reloadPhotos();
							var preview = $("[photos-preview][file]");
							preview.each(function() {
								var preview = $(this);
								var fileInfo = JSON.parse(preview.attr('file'));
								if (fileInfo['secret'] == secret) {
									preview.find("[img]").reloadPhotos({type: 'bg'});
								}
							});
							var preview = popup.children(".boxContent").children(".body").children("[preview]");
							if (preview.find('[action]').length > 0) {
								preview.find('[action]').children("div").mouseout();
								preview.find('[action]').fadeOut(function() {
									$(this).remove();
								});
							}
						}
					}
				}).done(function() {
					popup.attr('handing','false');
					loading('hide');
					resetValue();
				});
			}
		}
	}
}
var PhotosTagPopup = function (object) {
	console.log(object);
	if (isset(object['randkey'])) {
		var randkey = object['randkey'];
	}else {
		var randkey = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>);
	}
	if (isset(object['data'])) {
		if (isset(object['data']['faces']) && typeof object['data']['faces'] == "object" && countArr(object['data']['faces']) > 0) {
			var tagbarActive = true;
		}else {
			var tagbarActive = false;
		}
		if (isset(object['data']['image'])) {
			if (tagbarActive == false) {
				var imageClassHeight = "600px";
				var imageImgClassHeight = "570px";
				var imageImgClassWidth = "375px";
			}else {
				var imageClassHeight = "480px";
				var imageImgClassHeight = "450px";
				var imageImgClassWidth = "375px";
			}
			var imgTag = " <div class='image' display='"+object['data']['image']['display']+"' info='"+JSON.stringify(object['data']['image'])+"' style='height:"+imageClassHeight+"'> <img class='img' src='"+object['data']['image']['link']+"' style='max-height:"+imageImgClassHeight+";max-width:"+imageImgClassWidth+"'> </div> <div class='tags'> <div class='wrapper' style='max-height:"+imageImgClassHeight+";max-width:"+imageImgClassWidth+"'> </div> </div> ";
		}else {
			return false;
		}
	}else {
		return false;
	}
	if (isset(tagbarActive) && tagbarActive == true) {
		var rowsFaceThumbnailCode = "";
		for (var i in object['data']['faces']) {
			var thisFace = object['data']['faces'][i];
			var tagClass = "tag_"+thisFace['photos']+"_"+thisFace['faces'];
			var rowsFaceThumbnailCode = rowsFaceThumbnailCode + " <div class='rows faceThumbnail "+tagClass+"' tag-name='"+tagClass+"' info='"+JSON.stringify(thisFace)+"'> <div class='img' style='background-image: url("+thisFace['thumbnail']+");'> <i></i> </div> </div> ";
		}
		var tagbar = ' <div class="tagbar" tagbar> <div class="title"> <div> <span><?php print $_language->text('who_is_it', 'ucfirst'); ?></span> </div> </div> <div class="box"> '+rowsFaceThumbnailCode+' </div> </div> ';
	}else {
		var tagbar = '';
	}
	var popupCode = '<div id="PhotosTagPopup" randkey="'+randkey+'"> <div class="wrapFilter"> </div> <div class="boxContent"> <div class="header"> <span><?php print $_language->text('photos_tag', 'ucfirst'); ?></span> <i close> </i> </div> <div class="body"> <div class="preview" preview>'+imgTag+'</div> '+tagbar+' </div> <div class="footer"> <div class="copyright"> <span> <?php print $_language->text('PhotosTagPopup_footer_text'); ?> </span> </div> </div> </div> </div>';
	var allPopup = $("#PhotosTagPopup");
	if (allPopup.length == 0) {
		$("body").append(popupCode);
		$(document).ready(function() {
			$("body").css({'overflow-y': 'hidden'})
		},100);
	}else {
		return;
	}
	var popup = $("#PhotosTagPopup[randkey='"+randkey+"']"),
		boxContent = popup.children(".boxContent"),
		header = boxContent.children(".header"),
		body = boxContent.children(".body"),
		footer = boxContent.children(".footer");
	popup.hide().fadeIn();
	var imageBox = body.children(".preview").children(".image");
	var tagsBox = body.children(".preview").children(".tags");
	var boxTagbar = body.children(".tagbar").children(".box");
	tagsBox.children(".wrapper").css({'margin-top': imageBox.find(".img").css('margin-top'), 'height': imageBox.find(".img").height(), 'width': imageBox.find(".img").width()});
	if (tagbarActive == true && tagbar != "") {
		var wrapperTag = tagsBox.children(".wrapper");
		var imgHeight = imageBox.find(".img").height();
		var imgWidth = imageBox.find(".img").width();
		if (isset(object['data']['faces'])) {
			pushTagFaces(object['data']['faces']);
		}
	}
	function pushTagFaces (faces) {
		for (var i in faces) {
			var thisFace = faces[i],
				tagClass = "tag_"+thisFace['photos']+"_"+thisFace['faces'],
				tagHeight = imgHeight / thisFace['ratio']['height'],
				tagWidth = imgWidth / thisFace['ratio']['width'],
				positionX = thisFace['position']['x'],
				positionY = thisFace['position']['y'];
			var codeTag = " <div class='thisTag faces "+tagClass+"' tag-name='"+tagClass+"' tag-height='"+tagHeight+"' tag-width='"+tagWidth+"' ratio-height='"+thisFace['ratio']['height']+"' ratio-width='"+thisFace['ratio']['width']+"' position-x='"+positionX+"' position-y='"+positionY+"' info='"+JSON.stringify(thisFace)+"'></div> ";
			wrapperTag.append(codeTag);
			var thisTag = wrapperTag.find(".thisTag."+tagClass);
			thisTag.css({'top': positionY / (thisFace['size']['height'] / tagHeight)+'px', 'left': positionX / (thisFace['size']['width'] / tagWidth)+'px', 'height': tagHeight+'px', 'width': tagWidth+'px'});
			if (thisFace['guy.type'] === null || thisFace['guy.id'] === null || thisFace['guy.name'] === null) {
				var codeTagName = "";
			}else {
				pushTypeName();
				thisTag.click();
				var typeNameThis = wrapperTag.find(".thisTypeName[tag-for='"+tagClass+"']");
				typeNameThis.html("<span class='tagFriends' tag-obj tag-rows='"+JSON.stringify({'type': thisFace['guy.type'], 'id': thisFace['guy.id']})+"' tag-type='"+thisFace['guy.type']+"' tag-id='"+thisFace['guy.id']+"'> "+thisFace['guy.name']+" <i class='close'></i> </span>");
				typeNameThis.find("[tag-obj] .close").bind('click', function() {
					typeNameThis.html("<input class='ip_s1 ip_as' type='text' placeholder='<?php print $_language->text('who_is_it', 'ucfirst'); ?>' input>");
					var callbackFunc = function (action, input) {
						if (action == "add") {
							var info = JSON.parse(thisTag.attr('info'));
							info['guy'] = {
								'type': input.attr('info-type'),
								'id': input.attr('info-id')
							};
							console.log(info);
							updateTag(info);
						}else if (action == "remove") {
							var info = JSON.parse(thisTag.attr('info'));
							info['guy'] = {
								'type': null,
								'id': null
							};
							console.log(info);
							updateTag(info);
						}
					}
					typeNameThis.children("[input]").donetyping(function () {
						if ($(this).val() !== null && $(this).val() != "" && $(this).val().match(/([a-zA-Z0-9])/ig)) {
							requestFind($(this));
						}
					}, 750);
				});
			}
			console.log(thisFace);
		}
	}
	function requestFind (input) {
		if (!isset(input)) {
			return false;
		}
		if (input.attr('handling-find') == "true") {
			return false;
		}
		input.attr('handling-find', 'true');
		var doneRequestFunc = function () {
			input.removeAttr('handling-find');
		};
		var data = {'port': 'user', 'type': 'autocomplete', 'path': 'info', 'from': 'friends', 'value': input.val()};
		$.ajax({
			url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
			type: "POST",
			dataType: "json",
			data: data,
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			success: function (data) {
				console.log(data);
				if (isset(data['return']) && data['return'] === true) {
					input.attr('val', input.val());
					if (isset(data['data']) && countArr(data['data']) > 0) {
						if (isset(data['data']['user'])) {
							var friendsFounedArr = [];
							friendsObjLoop: for (var i in data['data']['user']) {
								var thisGuy = data['data']['user'][i];
								if (!isset(thisGuy['avatar']) || !isset(thisGuy['cover']) || !isset(thisGuy['id']) || !isset(thisGuy['name']) || !isset(thisGuy['tag'])) {
									continue friendsObjLoop;
								}
								friendsFounedArr[countArr(friendsFounedArr)] = {'class': 'tagFriends', 'thumbnail': thisGuy['avatar'], 'text': thisGuy['name'], 'tip': thisGuy['tag'], 'tag': {'type': 'user', 'id': thisGuy['tag']}}
							}
							var boxSuggestOptions = {
								'multiple': false,
								'output': true,
								'title': '<?php print $_language->text('you_may_find', 'ucfirst'); ?>',
								'content': {
									'<?php print $_language->text('user', 'ucfirst'); ?>': friendsFounedArr
								}
							};
							boxSuggest(input, boxSuggestOptions);
						}
					}
					setTimeout(function() {
						input.removeAttr('val');
					}, 1000);
				}else {
					//.
				}
			}
		}).fail(doneRequestFunc).done(doneRequestFunc);
	}
	function pushTypeName () {
		var rows = boxTagbar.children(".rows[tag-name]");
		var wrapper = tagsBox.children(".wrapper");
		var thisTag = wrapper.find(".thisTag");
		var actionWhenClick = function() {
			var wrapper = tagsBox.children(".wrapper");
			var tagName = $(this).attr('tag-name');
			var thisTag = wrapper.find(".thisTag[tag-name='"+tagName+"']");
			var typeNameThis = wrapper.find(".thisTypeName[tag-for='"+tagName+"']");
			if (thisTag.attr('handling-typing') != "true") {
				if (typeNameThis.length == 0) {
					var codeTypeName = " <div class='thisTypeName' tag-for='"+tagName+"'> <input class='ip_s1 ip_as' type='text' placeholder='<?php print $_language->text('who_is_it', 'ucfirst'); ?>' input> </div> ";
					wrapper.append(codeTypeName);
					thisTag.attr('handling-typing', 'true').addClass('active');
					boxTagbar.children("[tag-name='"+tagName+"']").addClass('active');
					var thisNameType = wrapper.find(".thisTypeName[tag-for='"+tagName+"']");
					console.log(thisTag.position());
					thisNameType.css({'top': thisTag.position()['top'] + thisTag.height() + 10 +'px', 'left': thisTag.position()['left'] + (thisTag.width() - thisNameType.innerWidth()) / 2 +'px'}).hide().fadeIn();
					var callbackFunc = function (action, input) {
						if (action == "add") {
							var info = JSON.parse(thisTag.attr('info'));
							info['guy'] = {
								'type': input.attr('info-type'),
								'id': input.attr('info-id')
							};
							console.log(info);
							updateTag(info);
						}else if (action == "remove") {
							var info = JSON.parse(thisTag.attr('info'));
							info['guy'] = {
								'type': null,
								'id': null
							};
							console.log(info);
							updateTag(info);
						}
					}
					thisNameType.children("[input]").donetyping(function () {
						if ($(this).val() !== null && $(this).val() != "" && $(this).val().match(/([a-zA-Z0-9])/ig)) {
							requestFind($(this));
						}
					}, 750);
					setTimeout(function() {
						thisNameType.bind('click', function() {
							return false;
						});
						thisTag.bind('click', function() {
							return false;
						});
						boxTagbar.children("[tag-name='"+tagName+"']").bind('click', function() {
							return false;
						});
						$(document).bind('click', function() {
							thisNameType.fadeOut();
							thisTag.removeClass('active');
							boxTagbar.children("[tag-name='"+tagName+"']").removeClass('active');
						});
						thisTag.removeAttr('handling-typing');
					},100);
				}else {
					thisTag.addClass('active');
					boxTagbar.children("[tag-name='"+tagName+"']").addClass('active');
					wrapper.find(".thisTypeName[tag-for='"+tagName+"']").fadeIn();
				}
			}
		}
		thisTag.bind('click', actionWhenClick);
		rows.bind('click', actionWhenClick);
	}
	pushTypeName();
	var updateTag = function (object) {
		if (object['display'] == undefined || object['display'] == null) {
			return false;
		}
		if ((object['guy']['type'] == undefined || object['guy']['id'] == undefined) && object['guy']['type'] !== null && object['guy']['id'] !== null) {
			return false;
		}else {
			var guy = {'type': object['guy']['type'], 'id': object['guy']['id']};
			console.log(guy);
		}
		if (popup.attr('handling-tag-update-'+object['display']) != "true") {
			var doneRequest = function () {
				setTimeout(function() {
					popup.removeAttr('handling-tag-update-'+object['display']);
				},100);
			}
			popup.attr('handling-tag-update-'+object['display'], 'true');
			var tag = {'label': 'display', 'value': object['display']};
			var data = { 'token': '<?php print $g_client['token']['action']['photos']; ?>', 'port': 'photos', 'type': 'faces', 'action': 'update', 'tag': tag, 'guy': guy};
		    var requestAction = $.ajax({
		        url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
		        type: "POST",
		        data: data,
		        dataType: "json",
		        success: function(data) {
		        	console.log(data);
		        	if (isset(data['return']) && data['return'] === true) {
		        		//.
		        	}else {
		        		//.
		        	}
		        }
		    }).done(doneRequest).fail(doneRequest);
	    }
	}
	boxContent.boxPosition({position: 'center', resize: true});
	var close = popup.find("[close]");
	close.bind('click', function() {
		popupAlert({
			'title': '<?php print $_language->text('photos_tag', 'ucfirst'); ?>', 
			'content': '<?php print $_language->text('question_photosTag_close', 'ucfirst'); ?>',
			'escActive': true,
			'actionTrue': '<?php print $_language->text('confirm', 'ucfirst'); ?>',
			'callbackTrue': function () { 
				popup.fadeOut(function() {
					$("body").css('overflow-y','auto');
					popup.remove();
				});
			},
			'actionFalse': '<?php print $_language->text('cancel', 'ucfirst'); ?>',
			'callbackFalse': false
		});
	});
	$(document).bind('keyup',function(e) {
		var keycode = (e.keyCode ? e.keyCode : e.which);
		if (keycode == '27' && popup.length > 0 && popup.attr('exit') != "true") {
			close.click();
		}
	});
}
var editor_autosize = function () {
	autosize($("#gEditor .ip_as"));
}
var editor_pushAddons = function (callback) {
	var editor = $("#gEditor");
	var button = editor.find("[editor-push]");
	button.bind('click', function() {
		var toggle = false;
		var button = $(this);
		var push = button.attr('editor-push');
		var div = editor.find("div[content]");
		if (push == "mood") {
			var input = div.children("div[push='mood']");
			if (input.length === 0) {
				div.children("div:last").after('<div class="push" push="mood" value="true"> <input class="ip_s1 ip_as" type="text" placeholder="<?php print $_language->text('what_do_you_doing', 'ucfirst'); ?>" input /> </div>');
			}else {
				input.slideToggle();
				var toggle = true;
			}
			var input = div.children("div[push='mood']");
			input.children("input").select();
			editor_tagMood();
		}else if (push == "usertag") {
			var input = div.children("div[push='usertag']");
			if (input.length === 0) {
				div.children("div:last").after('<div class="push" push="usertag" value="true"> <input class="ip_s1 ip_as" type="text" placeholder="<?php print $_language->text('who_with_you', 'ucfirst'); ?>" input /> </div>');
			}else {
				input.slideToggle();
				var toggle = true;
			}
			var input = div.children("div[push='usertag']");
			input.children("input").select();
			editor_tagFriends();
		}else if (push == "places") {
			var input = div.children("div[push='places']");
			if (input.length === 0) {
				div.children("div:last").after('<div class="push" push="places" value="true"> <input class="ip_s1 ip_as" type="text" placeholder="<?php print $_language->text('where_are_you', 'ucfirst'); ?>" input /> </div>');
			}else {
				input.slideToggle();
				var toggle = true;
			}
			var input = div.children("div[push='places']");
			input.children("input").select();
			editor_tagPlaces();
		}else if (push == "private") {
			return;
		}else {
			return false;
		}
		if (toggle == true && input.attr('value') == "true") {
			input.attr('value', 'false');
		}else {
			input.attr('value', 'true');
		}
	});
}
var editor_tagMood = function (selector) {
	var editor = $("#gEditor"),
		content = editor.find("div[content]"),
		input = content.children("div[push='mood']").children("input[input]");
	input.donetyping(function () {
		if (input.val() !== null && input.val() != "" && input.val().match(/([a-zA-Z0-9])/ig)) {
			requestFind(input);
		}
	}, 750);
	function requestFind (input) {
		if (!isset(input)) {
			return false;
		}
		if (input.attr('handling-find') == "true") {
			return false;
		}
		input.attr('handling-find', 'true');
		var doneRequestFunc = function () {
			input.removeAttr('handling-find');
		};
		var data = {'port': 'user', 'token': '<?php print $g_client['token']['action']['user']; ?>', 'type': 'autocomplete', 'path': 'mood', 'from': 'all', 'value': input.val()};
		$.ajax({
			url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
			type: "POST",
			dataType: "json",
			data: data,
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			success: function (data) {
				console.log(data);
				if (isset(data['return']) && data['return'] === true) {
					input.attr('val', input.val());
					if (isset(data['data']) && countArr(data['data']) > 0) {
						var optionsContent = {};
						moodTypeLoop: for (var t in data['data']) {
							var thisMoodType = data['data'][t];
							var moodFoundedArr = [];
							thisMoodObjLoop: for (var i in thisMoodType) {
								var thisMood = thisMoodType[i];
								if (!isset(thisMood['type']) || !isset(thisMood['text']) || !isset(thisMood['code'])) {
									continue thisMoodObjLoop;
								}
								moodFoundedArr[countArr(moodFoundedArr)] = {'class': 'tagMood', 'text': thisMood['text'], 'tip': thisMood['code'], 'tag': {'type': thisMood['text'], 'text': thisMood['text'], 'code': thisMood['code']}};
							}
							optionsContent[t.ucfirst()] = moodFoundedArr;
							var moodFoundedArr = null;
						}
						if (isset(optionsContent)) {
							var boxSuggestOptions = {
								'multiple': false,
								'output': true,
								'title': '<?php print $_language->text('you_may_find', 'ucfirst'); ?>',
								'content': optionsContent
							};
							boxSuggest(input, boxSuggestOptions);
						}
					}
					setTimeout(function() {
						input.removeAttr('val');
					}, 1000);
				}else {
					//.
				}
			}
		}).fail(doneRequestFunc).done(doneRequestFunc);
	}
}
var editor_tagFriends = function (selector) {
	var editor = $("#gEditor"),
		content = editor.find("div[content]"),
		input = content.children("div[push='usertag']").children("input[input]");
	input.donetyping(function () {
		if (input.val() !== null && input.val() != "" && input.val().match(/([a-zA-Z0-9])/ig)) {
			requestFind(input);
		}
	}, 750);
	function requestFind (input) {
		if (!isset(input)) {
			return false;
		}
		if (input.attr('handling-find') == "true") {
			return false;
		}
		input.attr('handling-find', 'true');
		var doneRequestFunc = function () {
			input.removeAttr('handling-find');
		};
		var data = {'port': 'user', 'token': '<?php print $g_client['token']['action']['user']; ?>', 'type': 'autocomplete', 'path': 'info', 'from': 'friends', 'value': input.val()};
		$.ajax({
			url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
			type: "POST",
			dataType: "json",
			data: data,
			contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
			success: function (data) {
				console.log(data);
				if (isset(data['return']) && data['return'] === true) {
					input.attr('val', input.val());
					if (isset(data['data']) && countArr(data['data']) > 0) {
						if (isset(data['data']['user'])) {
							var friendsFounedArr = [];
							friendsObjLoop: for (var i in data['data']['user']) {
								var thisGuy = data['data']['user'][i];
								if (!isset(thisGuy['avatar']) || !isset(thisGuy['name']) || !isset(thisGuy['tag']) || !isset(thisGuy['type']) || !isset(thisGuy['id'])) {
									continue friendsObjLoop;
								}
								friendsFounedArr[countArr(friendsFounedArr)] = {'class': 'tagFriends', 'thumbnail': thisGuy['avatar'], 'text': thisGuy['name'], 'tip': thisGuy['tag'], 'tag': {'type': thisGuy['type'], 'id': thisGuy['id']}}
							}
							var boxSuggestOptions = {
								'multiple': true,
								'output': true,
								'title': '<?php print $_language->text('you_may_find', 'ucfirst'); ?>',
								'content': {
									'<?php print $_language->text('user', 'ucfirst'); ?>': friendsFounedArr
								}
							};
							boxSuggest(input, boxSuggestOptions);
						}
					}
					setTimeout(function() {
						input.removeAttr('val');
					}, 1000);
				}else {
					//.
				}
			}
		}).fail(doneRequestFunc).done(doneRequestFunc);
	}
}
var editor_tagPlaces = function (selector) {
	var editor = $("#gEditor"),
		content = editor.find("div[content]"),
		input = content.children("div[push='places']").children("input[input]");
	input.donetyping(function () {
		if (input.val() !== null && input.val() != "" && input.val().match(/([a-zA-Z0-9])/ig)) {
			requestFind(input);
		}
	}, 750);
	function requestFind (input) {
		if (!isset(input)) {
			return false;
		}
		if (input.attr('handling-find') == "true") {
			return false;
		}
		input.attr('handling-find', 'true');
		var doneRequestFunc = function () {
			input.removeAttr('handling-find');
		};
		var address = input.val();
		var data = {'port': 'maps', 'type': 'places', 'action': 'search', 'keywords': address, 'query': {'by': 'text', 'output': 'json', 'address': address}};
		$.ajax({
			url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
			type: "POST",
			data: data,
			dataType: "json",
			success: function(data) {
				if (isset(data['return']) && data['return'] === true) {
					input.attr('val', input.val());
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
					setTimeout(function() {
						input.removeAttr('val');
					}, 1000);
				}else {
					//.
				}
			}
		}).fail(doneRequestFunc).done(doneRequestFunc);
	}
}
var editor_mediaUpload = function (object) {
	if (!isset(object) || !isset(object['format']) || !isset(object['type'])) {
		return false;
	}
    var editor = $("#gEditor");
    if (object['format'] == "photos" && object['type'] == "preview") {
        editor.attr('handling-preview', 'true');
        var upload = editor.find(".box > .body[content] > [upload][preview][photos]");
        for (var i in object['data']) {
            var rows = object['data'][i];
            var count = 0;
            var li = upload.find("[photos-preview][file]");
            li.each(function() {
                var li = $(this);
                var fileInfo = JSON.parse(li.attr('file'));
                if (fileInfo['type'] == rows['type'] && fileInfo['local'] == rows['local'] && fileInfo['secret'] == rows['secret'] && fileInfo['name'] == rows['name']) {
                    count++;
                }
            });
            if (count === 0) {
                var fileInfo = {
                    'type': rows['type'],
                    'local': rows['local'],
                    'verify': rows['verify'],
                    'secret': rows['secret'],
                    'name': rows['name'],
                    'mime': rows['mine'],
                    'link': rows['link']
                };
                var code = " <div class='preview' photos-preview file='" + JSON.stringify(fileInfo) + "'> <span class='_tt s' title='<small><?php print $_language->text('tag_photos', 'ucfirst'); ?></small>' tag></span> <span class='_tt s' title='<small><?php print $_language->text('edit_photos', 'ucfirst'); ?></small>' edit></span> <span class='_tt s' title='<small><?php print $_language->text('remove_from_list', 'ucfirst'); ?></small>' remove></span> <span class='_tt s' title='<small><?php print $_language->text('remove_photos', 'ucfirst'); ?></small>' close></span> <div style='background-image: url(" + rows['link'] + ");' img></div> <div class='filter'></div> </div> ";
                var thisPreview = upload.find("[photos-uploading][photos-name='"+rows['nameraw']+"']");
                if (thisPreview.length === 0) {
                	upload.find("[photos-add]").first().before(code);
                }else {
                	thisPreview.replaceWith(code);
                }
                var li = upload.find("[photos-preview][file='" + JSON.stringify() + "']");
                li.hide().fadeIn();
            }
        }
        if (upload.find("[photos-remove]").length === 0) {
            var buttonRemove = ' <div class="preview remove action" photos-remove remove><i></i></div> ';
            upload.find("[photos-add]").last().after(buttonRemove);
            var buttonRemove = upload.find("[photos-remove]");
            buttonRemove.hide().show('normal');
            buttonRemove.bind('click', function() {
                var file = [];
                upload.find("[photos-preview]").each(function() {
                    var fileInfo = JSON.parse($(this).attr('file'));
                    file.push(fileInfo);
                });
                if (Object.keys(file).length > 0) {
                    previewRemove('photos', file);
                }else {
                    previewRemove('photos', 0);
                }
            });
        }
        setupTooltip();
        var upload = $("#gEditor > .box > .body[content] > [upload][preview][photos]");
        var imgPreview = upload.find("[photos-preview]");
        imgPreview.find("[remove]").bind('click', function() {
        	$(this).mouseout();
            $(this).parents("[photos-preview]").hide(function() {
            	$(this).remove();
            });
        });
        imgPreview.find("[close]").bind('click', function() {
            var file = JSON.parse($(this).parents("[photos-preview]").attr("file"));
            previewRemove('photos', [file]);
        });
        imgPreview.find("[tag]").bind('click', function() {
        	var img = $(this);
            var file = JSON.parse(img.parents("[photos-preview]").attr("file"));
           	if (img.attr('handling-tag') != "true" && isset(file['secret']) && isset(file['name'])) {
           		img.attr('handling-tag', 'true');
           		var keyEventLoad = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>);
           		var doneRequest = function () {
           			wrapperLoad(keyEventLoad, false);
                    img.removeAttr('handling-tag');
           		};
           		var filePhotos = {'local': 'cache', 'label': 'secret', 'value': file['secret']};
            	var data = { 'token': '<?php print $g_client['token']['action']['photos']; ?>', 'port': 'photos', 'type': 'faces', 'action': 'add', 'photos': filePhotos};
                var requestAction = $.ajax({
                    url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
                    type: "POST",
                    data: data,
                    dataType: "json",
                    success: function(data) {
	                    if (isset(data['return']) && data['return'] === true) {
	                       	console.log(data);
	                        var onPopup = true;
	                        if (data['image'] !== undefined && typeof data['image'] == "object" && Object.keys(data['image']).length > 0) {
	                        	var imageTags = data['image'];
	                        }else {
	                           	var onPopup = false;
	                        }
	                        if (data['faces'] !== undefined && typeof data['faces'] == "object" && Object.keys(data['faces']).length > 0) {
	                            var facesTags = data['faces'];
	                        }else {
	                            var facesTags = null;
	                        }
	                        if (isset(onPopup) && onPopup == true) {
		                        var popupOptions = {
									'randkey': randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>),
									'data': {
										'image': imageTags,
										'faces': facesTags
									}
								};
								setTimeout(function() {
									PhotosTagPopup(popupOptions);
								}, 100);
	                        }
	                    }else {
	                        //.
	                    }
                    }
                }).done(doneRequest).fail(doneRequest);
               	var callbackFunc = function () {
               		requestAction.abort();
               	}
               	wrapperLoad(keyEventLoad, true, 0, callbackFunc);
           	}
        });
        imgPreview.find("[edit]").bind('click', function() {
            var file = JSON.parse($(this).parents("[photos-preview]").attr("file"));
            var secret = file['secret'];
            var name = file['name'];
            previewDemo('photos', secret, name);
        });
        editor.removeAttr('handling-preview');
    }else if (object['format'] == "music" && object['type'] == "preview") {
        editor.attr('handling-preview', 'true');
        var upload = $("#gEditor > .box > .body[content] > [upload][preview][music]");
        for (var i = 0; i < 1; i++) {
            var rows = object['data'];
            var fileInfo = { 'type': rows['type'], 'local': rows['local'], 'verify': rows['verify'], 'secret': rows['secret'], 'name': rows['name'], 'mime': rows['mine'], 'link': rows['link']};
            var demo = upload.find("[music-preview]");
            var playerID = "demo_musicPlayer_" + fileInfo['secret'];
            var playerCode = " <audio id='" + playerID + "' class='gplayer-skin v-simple audio' controls preload='auto' width='100%' height='50' data-setup='{}'> <source src='" + rows['link'] + "' type='" + rows['mime'] + "'> </audio> ";
            demo.attr('file', JSON.stringify(fileInfo)).html('').html(playerCode);
            setTimeout(function() {
            	if (!isset(rows['thumbnai'])) { 
            		var thumbnailUrl = "<?php print $_tool->links('photos/raw/static/music-cover-notfound.jpg'); ?>";
            	}else {
            		var thumbnailUrl = rows['thumbnai'];
            	}
                var options = {
                	'poster': thumbnailUrl
                };
                if ($("#" + playerID).length > 0) {
                    var demo_musicPlayerThis = gplayer(playerID, options, function () {
                    	var thisPlayer = this;
                    	thisPlayer.play();
                    	thisPlayer.on('loadeddata', function () {
                    		thisPlayer.pause();
                    	});
                    });
                    var close = upload.children("[button]").children("[music-remove]");
                    close.bind('click', function() {
                        if ($("#" + playerID).length > 0) {
                            demo_musicPlayerThis.ready(function() {
                                demo_musicPlayerThis.pause();
                                setTimeout(function() {
                                    demo_musicPlayerThis.dispose();
                                }, 0);
                            });
                        }
                    });
                }
                editor.removeAttr('handling-preview');
            }, 10);
        }
        if (upload.find("[music-remove]").length === 0) {
            var buttonEditor = ' <div class="edit action" music-edit> <i class="fa fa-sliders"></i> <br> <span><?php print $_language->text("edit_music", "ucfirst"); ?></span> </div> ';
            var buttonEditor = '';
            var buttonRemove = ' <div class="remove action" music-remove> <i class="fa fa-times"></i> <br> <span><?php print $_language->text("click_to_close", "ucfirst"); ?></span> </div> ';
            var button = '<div class="button" button> ' + buttonEditor + buttonRemove + ' </div>';
            upload.find("[music-preview]").before(button);
            var buttonRemove = upload.find("[music-remove]");
            buttonRemove.hide().show('normal');
            buttonRemove.bind('click', function() {
                var file = [];
                upload.find("[music-preview][file]").each(function() {
                    if ($(this).attr('file') !== undefined && $(this).attr('file') !== null && typeof JSON.parse($(this).attr('file')) == "object" && $(this).children("[id]").length > 0) {
                        var fileInfo = JSON.parse($(this).attr('file'));
                        file.push(fileInfo);
                    }
                });
                if (Object.keys(file).length > 0) {
                    previewRemove('music', file);
                } else {
                    previewRemove('music', 0);
                }
            });
        }
    }else if (object['format'] == "videos" && object['type'] == "preview") {
        editor.attr('handling-preview', 'true');
        var upload = $("#gEditor > .box > .body[content] > [upload][preview][videos]");
        for (var i = 0; i < 1; i++) {
            var rows = object['data'];
            var fileInfo = { 'type': rows['type'], 'local': rows['local'], 'verify': rows['verify'], 'secret': rows['secret'], 'name': rows['name'], 'mime': rows['mine'], 'link': rows['link'], 'thumbnail': rows['thumbnail'] };
            var demo = upload.find("[videos-preview]");
            var playerID = "demo_videosPlayerThis_" + fileInfo['secret'];
            var playerCode = " <video id='" + playerID + "' class='gplayer-skin v-simple video' controls preload='auto' width='100%' height='275' data-setup='{}'> <source src='" + rows['link'] + "' type='" + rows['mime'] + "'> </video> ";
            demo.attr('file', JSON.stringify(fileInfo)).html('').html(playerCode);
            setTimeout(function() {
                var options = {
					'poster': fileInfo['thumbnail']
				};
                if ($("#" + playerID).length > 0) {
                    var demo_videosPlayerThis = gplayer(playerID, options);
                    var close = upload.children("[button]").children("[videos-remove]");
                    close.bind('click', function() {
                        if ($("#" + playerID).length > 0) {
                            demo_videosPlayerThis.ready(function() {
                                demo_videosPlayerThis.pause();
                                setTimeout(function() {
                                    demo_videosPlayerThis.dispose();
                                }, 0);
                            });
                        }
                    });
                }
                editor.removeAttr('handling-preview');
            }, 10);
        }
        if (upload.find("[videos-remove]").length === 0) {
            var buttonEditor = ' <div class="edit action" videos-edit> <i class="fa fa-sliders"></i> <br> <span><?php print $_language->text("edit_videos", "ucfirst"); ?></span> </div> ';
            var buttonEditor = '';
            var buttonRemove = ' <div class="remove action" videos-remove> <i class="fa fa-times"></i> <br> <span><?php print $_language->text("click_to_close", "ucfirst"); ?></span> </div> ';
            var button = '<div class="button" button> ' + buttonEditor + buttonRemove + ' </div>';
            upload.find("[videos-preview]").before(button);
            var buttonRemove = upload.find("[videos-remove]");
            buttonRemove.hide().show('normal');
            buttonRemove.bind('click', function() {
                var file = [];
                upload.find("[videos-preview][file]").each(function() {
                    if ($(this).attr('file') !== undefined && $(this).attr('file') !== null && typeof JSON.parse($(this).attr('file')) == "object" && $(this).children("[id]").length > 0) {
                        var fileInfo = JSON.parse($(this).attr('file'));
                        file.push(fileInfo);
                    }
                });
                if (Object.keys(file).length > 0) {
                    previewRemove('videos', file);
                } else {
                    previewRemove('videos', 0);
                }
            });
        }
    }else if (object['format'] == "cited" && object['type'] == "preview") {
        editor.attr('handling-preview', 'true');
        var upload = $("#gEditor > .box > .body[content] > [upload][preview][cited]");
        if (upload.find("[photos-remove]").length === 0) {
            var buttonRemove = ' <div class="remove action" photos-remove> <i class="fa fa-times"></i> <br> <span><?php print $_language->text("click_to_close", "ucfirst"); ?></span> </div> ';
            var button = '<div class="button" button> ' + buttonRemove + ' </div>';
            upload.find("[cited-preview]").before(button);
            var buttonRemove = upload.find("[photos-remove]");
            buttonRemove.hide().show('normal');
            buttonRemove.bind('click', function() {
                var name = [];
                upload.find("[cited-preview]").each(function() {
                    name.push($(this).attr('name'));
                });
                if (Object.keys(name).length > 0) {
                	console.log(name);
                    previewRemove('cited', name);
                }else {
                    previewRemove('cited', 0);
                }
            });
        }
        for (var i in object['data']) {
            var rows = object['data'][i];
            var demo = upload.find("[cited-preview]");
            demo.attr('file', JSON.stringify({'secret': rows['secret'], 'name': rows['name']})).attr('secret', rows['secret']).attr('name', rows['name']).css('background-image', 'url(' + rows['link'] + ')');
        }
        editor.removeAttr('handling-preview');
    }
    function previewDemo(format, secret, name) {
        if (format == "photos") {
            var img = $('[photos-preview][secret="' + secret + '"][name="' + name + '"]');
            var handing = img.attr('handing');
            if (handing != "true") {
            	img.attr('handing', 'true');
            	var keyEventLoad = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>);
            	var doneRequest = function () {
           			wrapperLoad(keyEventLoad, false);
                    img.removeAttr('handling');
           		};
                var data = { 'token': '<?php print $g_client['token']['action']['photos']; ?>', 'port': 'photos', 'type': 'cache', 'action': 'copy', 'secret': secret, 'name': name};
                var requestAction = $.ajax({
                    url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
                    type: "POST",
                    data: data,
                    dataType: "json",
                    success: function(data) {
                        if (isset(data['return']) && data['return'] === true) {
                            var options = {
                                'default': {
                                    'secret': data['data']['original']['secret'],
                                    'name': data['data']['original']['name'],
                                    'nameraw': data['data']['original']['nameraw'],
                                    'link': data['data']['original']['link'],
                                    'mime': data['data']['original']['mime']
                                },
                                'preview': {
                                    'secret': data['data']['copy']['secret'],
                                    'name': data['data']['copy']['name'],
                                    'nameraw': data['data']['copy']['nameraw'],
                                    'link': data['data']['copy']['link'],
                                    'mime': data['data']['copy']['mime']
                                }
                            };
                            setTimeout(function() {
                            	PhotosEditorPopup(options);
                            },100);
                        }
                    }
                }).done(doneRequest).fail(doneRequest);
                var callbackFunc = function () {
               		requestAction.abort();
               	}
               	wrapperLoad(keyEventLoad, true, 0, callbackFunc);
            }
        }
    }
    function previewPush() {
        function photos () {
            var key = [];
            $("[photos-preview][file]").each(function() {
                var img = $(this);
                if (img.attr('handling-push') != "true") {
                	img.attr('handling-push', 'true');
                	var file = JSON.parse(img.attr("file"));
                	if (file !== undefined && file !== null && !inArray(file, key)) {
                   		key.push(file);
                	}
                }
            });
            if (Object.keys(key).length > 0) {
                var data = { 'token': '<?php print $g_client['token']['action']['photos']; ?>', 'port': 'photos', 'type': 'cache', 'action': 'push', 'file': key};
                $.ajax({
                    url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
                    type: "POST",
                    data: data,
                    dataType: "json",
                    success: function(data) {
                        console.log(data);
                        if (isset(data['return']) && data['return'] === true) {
                            //.
                        } else {
                            //.
                        }
                    }
                }).done(function() {
                	$("[photos-preview][file]").each(function() {
		                var img = $(this);
		                var file = JSON.parse(img.attr("file"));
			            if (inArray(file, key)) {
			            	img.removeAttr('handling-push');
			            }
		            });
                });
            }
        }
        photos();
        function videos() {
            var key = [];
            $("[videos-preview][file]").each(function() {
                var vio = $(this);
                if (vio.attr('handling-push') != "true") {
                	vio.attr('handling-push', 'true');
                	var file = JSON.parse(vio.attr("file"));
                	if (file !== undefined && file !== null && !inArray(file, key)) {
                    	key.push(file);
					}
				}
            });
            if (Object.keys(key).length > 0) {
            	var data = { 'token': '<?php print $g_client['token']['action']['videos']; ?>', 'port': 'videos', 'type': 'cache', 'action': 'push', 'file': key };
                $.ajax({
                    url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
                    type: "POST",
                    data: data,
                    dataType: "json",
                    success: function(data) {
                        console.log(data);
                        if (isset(data['return']) && data['return'] === true) {
                            //.
                        }else {
                            //.
                        }
                    }
                }).done(function() {
                	$("[videos-preview][file]").each(function() {
		                var vio = $(this);
		                var file = JSON.parse(vio.attr("file"));
			            if (inArray(file, key)) {
			            	vio.removeAttr('handling-push');
			            }
		            });
                });
            }
        }
        videos();
        function music() {
            var key = [];
            $("[music-preview][file]").each(function() {
                var musik = $(this);
                if (musik.attr('handling-push') != "true") {
                	musik.attr('handling-push', 'true');
	                var file = JSON.parse(musik.attr("file"));
	                if (file !== undefined && file !== null && !inArray(file, key)) {
	                    key.push(file);
	                }
                }
            });
            if (Object.keys(key).length > 0) {
                var data = { 'token': '<?php print $g_client['token']['action']['music']; ?>', 'port': 'music', 'type': 'cache', 'action': 'push', 'file': key };
                $.ajax({
                    url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
                    type: "POST",
                    data: data,
                    dataType: "json",
                    success: function(data) {
                        console.log(data);
                        if (isset(data['return']) && data['return'] === true) {
                            //.
                        } else {
                            //.
                        }
                    }
                }).done(function() {
                	$("[music-preview][file]").each(function() {
		                var musik = $(this);
		                var file = JSON.parse(musik.attr("file"));
			            if (inArray(file, key)) {
			            	musik.removeAttr('handling-push');
			            }
		            });
                });
            }
        }
        music();
        $(document).ready(function() {
            setTimeout(function() {
                previewPush();
            }, <?php print $_parameter->get('media_cache_time_push_ms'); ?>);
        });
    }
    previewPush();
    function previewRemove (format, file) {
        var editor = $("#gEditor");
        if (file === 0) {
            if (format == "music" || format == "videos") {
                var upload = editor.find(".body[content] > [upload][preview][" + format + "]");
                upload.find("[button]").children("[" + format + "-remove],[" + format + "-edit]").hide('250', function() {
                    $(this).remove();
                });
                if (format == "music") {
                    var buttonAdd = ' <div class="add upload action w2" "+format+"-add upload> <span><?php print $_language->text('select_music', 'ucfirst'); ?></span><br><i></i> </div> <div class="add select action w2" "+format+"-add select> <span><?php print $_language->text('select_music', 'ucfirst'); ?></span><br><i></i> </div> ';
                } else if (format == "videos") {
                    var buttonAdd = ' <div class="add upload action w2" "+format+"-add upload> <span><?php print $_language->text('upload_videos', 'ucfirst'); ?></span><br><i></i> </div> <div class="add select action w2" "+format+"-add select> <span><?php print $_language->text('select_videos', 'ucfirst'); ?></span><br><i></i> </div> ';
                }
                upload.children("[button]").append(buttonAdd);
                var buttonAddUpload = upload.children("[button]").children("[" + format + "-add][upload]");
                buttonAddUpload.hide().slideDown();
                buttonAddUpload.bind('click', function() {
                    editor.find("[input][classify='" + format + "']").find("[form][data='" + format + "']").find("input").click();
                });
                var buttonAddSelect = upload.children("[button]").children("[" + format + "-add][select]");
                buttonAddSelect.bind('click', function() {
                    var buttonAddSelect = $(this);
                    if (buttonAddSelect.attr('handling') != "true") {
                        buttonAddSelect.attr('handling', 'true');
                        editor_selectVideos();
                        setTimeout(function() {
                            buttonAddSelect.removeAttr('handling');
                        }, 250);
                    }
                });
            }else {
                //.
            }
        }else {
            if (format == "photos") {
            	console.log(file);
                var upload = $("#gEditor > .box > .body[content] > [upload][preview][photos]");
                for (var i in file) {
                    var img = upload.find("[photos-preview][file='" + JSON.stringify(file[i]) + "']");
                    if (img.attr('handing-delete') != "true") {
                        img.attr('handing-delete', 'true');
                    } else {
                        delete file[i];
                    }
                }
                console.log(file);
                if (Object.keys(file).length > 0) {
                	var doneRequestFunc = function() {
                        for (var i in file) {
                            var img = upload.find("[photos-preview][file]");
                            img.each(function() {
                                var img = $(this);
                                var imgInfo = JSON.parse(img.attr('file'));
                                if (file[i]['type'] == imgInfo['type'] && file[i]['local'] == imgInfo['local'] && file[i]['secret'] == imgInfo['secret'] && file[i]['name'] == imgInfo['name']) {
                                    img.removeAttr('handing-delete').find("[close]").mouseout();
                                }
                            });
                        }
                    };
                    var data = { 'port': 'photos', 'type': 'cache', 'action': 'delete', 'file': file, 'token': '<?php print $g_client['token']['action']['photos']; ?>' };
                    $.ajax({
                        url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
                        type: "POST",
                        data: data,
                        dataType: "json",
                        success: function(data) {
                            if (isset(data['return']) && data['return'] === true) {
                                if (isset(data['data']) && typeof data['data'] == "object" && Object.keys(data['data']).length > 0) {
                                    for (var i in data['data']) {
                                        var thisData = data['data'][i];
                                        if (isset(thisData['return']) && thisData['return'] === true) {
                                        	thisData['data'] = thisData['file'];
                                        	if (isset(thisData['data']) && typeof thisData['data'] == "object" && Object.keys(thisData['data']).length > 0) {
                                        		upload.find("[photos-preview][file]").each(function() {
			                                        var imgThis = $(this);
			                                        var imgInfo = JSON.parse(imgThis.attr('file'));
			                                        if (thisData['data']['type'] == imgInfo['type'] && thisData['data']['local'] == imgInfo['local'] && thisData['data']['secret'] == imgInfo['secret'] && thisData['data']['name'] == imgInfo['name']) {
			                                            imgThis.hide(250, function() {
			                                                $(this).remove();
			                                                if (upload.find("[photos-preview]").length === 0) {
			                                                    upload.find("[photos-remove]").hide(250, function() {
			                                                        $(this).remove();
			                                                    });
			                                                }
			                                            });
			                                        }
			                                    });
                                        	}
                                        }
                                    }
                                }else if (isset(data['data']) && (data['data'] === null || Object.keys(data['data']).length === 0)) {
							    	popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('file_upload_failed', 'ucfirst'); ?>, <?php print $_language->text('please_try_agian', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
							    }
                            }else {
                                //.
                            }
                        }
                    }).fail(doneRequestFunc).done(doneRequestFunc);
                }
            }else if (format == "music") {
                var upload = $("#gEditor > .box > .body[content] > [upload][preview][music]");
                for (var i in file) {
                    var musik = upload.find("[music-preview][file='" + JSON.stringify(file[i]) + "']");
                    if (musik.attr('handing') != "true") {
                        musik.attr('handing', 'true');
                    } else {
                        delete file[i];
                    }
                }
                if (Object.keys(file).length > 0) {
                	var doneRequestFunc = function() {
                        for (var i in file) {
                            var musik = upload.find("[music-preview][file]");
                            musik.each(function() {
                                var musik = $(this);
                                var musikInfo = JSON.parse(musik.attr('file'));
                                if (file[i]['type'] == musikInfo['type'] && file[i]['local'] == musikInfo['local'] && file[i]['secret'] == musikInfo['secret'] && file[i]['name'] == musikInfo['name']) {
                                    musik.removeAttr('handing-delete').find("[close]").mouseout();
                                }
                            });
                        }
                    };
                    var data = { 'port': 'music', 'type': 'cache', 'action': 'delete', 'file': file, 'token': '<?php print $g_client['token']['action']['music']; ?>'};
                    $.ajax({
                        url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
                        type: "POST",
                        data: data,
                        dataType: "json",
                        success: function(data) {
                            console.log(data);
                            if (isset(data['return']) && data['return'] === true) {
                            	if (isset(data['data']) && typeof data['data'] == "object" && countArr(data['data']) > 0) {
                                    for (var i in data['data']) {
                                        var thisData = data['data'][i];
                                        if (isset(thisData['return']) && thisData['return'] === true && isset(thisData['file'])) {
                                          	upload.find("[music-preview][file]").each(function() {
                                                var musikThis = $(this);
                                                var musikInfo = JSON.parse(musikThis.attr('file'));
                                                if (isset(thisData['file']['type']) && thisData['file']['type'] == musikInfo['type'] && isset(thisData['file']['local']) && thisData['file']['local'] == musikInfo['local'] && isset(thisData['file']['secret']) && thisData['file']['secret'] == musikInfo['secret'] && isset(thisData['file']['name']) && thisData['file']['name'] == musikInfo['name']) {
                                                    musikThis.hide(250, function() {
                                                        $(this).remove();
                                                        if (upload.children("[music-preview]").length === 0) {
                                                            upload.children("[button]").children("[music-remove],[music-edit]").hide('250', function() {
                                                                $(this).remove();
                                                            });
                                                            var buttonAddUpload = ' <div class="add upload action w2" music-add upload> <span><?php print $_language->text('upload_music', 'ucfirst'); ?></span><br><i></i> </div> <div class="add select action w2" music-add select> <span><?php print $_language->text('select_music', 'ucfirst'); ?></span><br><i></i> </div> ';
                                                            upload.children("[button]").append(buttonAddUpload);
                                                            var buttonAddUpload = upload.children("[button]").children("[music-add][upload]");
                                                            buttonAddUpload.hide().slideDown();
                                                            buttonAddUpload.bind('click', function() {
                                                                editor.find("[input][classify='music']").find("[form][data='music']").find("input").click();
                                                            });
                                                            var buttonAddSelect = upload.children("[button]").children("[music-add][select]");
                                                            buttonAddSelect.bind('click', function() {
                                                                var buttonAddSelect = $(this);
                                                                if (buttonAddSelect.attr('handling') != "true") {
                                                                    buttonAddSelect.attr('handling', 'true');
                                                                    editor_selectMusic();
                                                                    setTimeout(function() {
                                                                        buttonAddSelect.removeAttr('handling');
                                                                    }, 250);
                                                                }
                                                            });
                                                        }
                                                    });
                                                }
                                            });
                                        }
                                    }
                                }else if (isset(data['data']) && (data['data'] === null || countArr(data['data']) === 0)) {
							    	popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('file_upload_failed', 'ucfirst'); ?>, <?php print $_language->text('please_try_agian', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
							    }
                            }else {
                                //.
                            }
                        }
                    }).fail(doneRequestFunc).done(doneRequestFunc);
                }
            }else if (format == "videos") {
                var upload = $("#gEditor > .box > .body[content] > [upload][preview][videos]");
                for (var i in file) {
                    var vio = upload.find("[videos-preview][file='" + JSON.stringify(file[i]) + "']");
                    if (vio.attr('handing') != "true") {
                        vio.attr('handing', 'true');
                    } else {
                        delete file[i];
                    }
                }
                if (Object.keys(file).length > 0) {
                	var doneRequestFunc = function() {
                        for (var i in file) {
                            var vio = upload.find("[videos-preview][file]");
                            vio.each(function() {
                                var vio = $(this);
                                var vioInfo = JSON.parse(vio.attr('file'));
                                if (file[i]['type'] == vioInfo['type'] && file[i]['local'] == vioInfo['local'] && file[i]['secret'] == vioInfo['secret'] && file[i]['name'] == vioInfo['name']) {
                                    vio.removeAttr('handing-delete').find("[close]").mouseout();
                                }
                            });
                        }
                    };
                    var data = { 'port': 'videos', 'type': 'cache', 'action': 'delete', 'file': file, 'token': '<?php print $g_client['token']['action']['videos']; ?>'};
                    $.ajax({
                        url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
                        type: "POST",
                        data: data,
                        dataType: "json",
                        success: function(data) {
                            console.log(data);
                            if (isset(data['return']) &&  data['return'] === true) {
                                if (isset(data['data']) && typeof data['data'] == "object" && countArr(data['data']) > 0) {
                                    for (var i in data['data']) {
                                        var thisData = data['data'][i];
                                        if (isset(thisData['return']) && thisData['return'] === true) {
                                            upload.find("[videos-preview][file]").each(function() {
                                                var vioThis = $(this);
                                                var vioInfo = JSON.parse(vioThis.attr('file'));
                                                if (isset(thisData['return']) && thisData['return'] == true && isset(thisData['file'])) {
	                                                if (isset(thisData['file']['type']) && thisData['file']['type'] == vioInfo['type'] && isset(thisData['file']['local']) && thisData['file']['local'] == vioInfo['local'] && isset(thisData['file']['secret']) && thisData['file']['secret'] == vioInfo['secret'] && isset(thisData['file']['name']) && thisData['file']['name'] == vioInfo['name']) {
	                                                    vioThis.hide(250, function() {
	                                                        $(this).remove();
	                                                        if (upload.children("[videos-preview]").length === 0) {
	                                                            upload.children("[button]").children("[videos-remove], [videos-edit]").hide('250', function() {
	                                                                $(this).remove();
	                                                            });
	                                                            var buttonAddUpload = ' <div class="add upload action w2" videos-add upload> <span><?php print $_language->text('upload_videos', 'ucfirst'); ?></span><br><i></i> </div> <div class="add select action w2" videos-add select> <span><?php print $_language->text('select_videos', 'ucfirst'); ?></span><br><i></i> </div> ';
	                                                            upload.children("[button]").append(buttonAddUpload);
	                                                            var buttonAddUpload = upload.children("[button]").children("[videos-add][upload]");
	                                                            buttonAddUpload.hide().slideDown();
	                                                            buttonAddUpload.bind('click', function() {
	                                                                editor.find("[input][classify='videos']").find("[form][data='videos']").find("input").click();
	                                                            });
	                                                            var buttonAddSelect = upload.children("[button]").children("[videos-add][select]");
	                                                            buttonAddSelect.bind('click', function() {
	                                                                var buttonAddSelect = $(this);
	                                                                if (buttonAddSelect.attr('handling') != "true") {
	                                                                    buttonAddSelect.attr('handling', 'true');
	                                                                    editor_selectVideos();
	                                                                    setTimeout(function() {
	                                                                        buttonAddSelect.removeAttr('handling');
	                                                                    }, 250);
	                                                                }
	                                                            });
	                                                        }
	                                                    });
	                                                }
                                                }
                                            });
                                        }
                                    }
                                }else if (isset(data['data']) && (data['data'] === null || countArr(data['data']) === 0)) {
							    	popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('file_upload_failed', 'ucfirst'); ?>, <?php print $_language->text('please_try_agian', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
							    }
                            }else {
                                //.
                            }
                        }
                    }).done(doneRequestFunc);
                }
            }else if (format == "cited") {
                var upload = $("#gEditor > .box > .body[content] > [upload][preview][cited]");
                var fileObj = {};
                for (var i in file) {
                    var cited = upload.find("[cited-preview][name='" + file[i] + "']");
                    if (cited.attr('handing') != "true") {
                        cited.attr('handing', 'true');
                        fileObj[Object.keys(fileObj).length] = {'name': file[i], 'verify': true};
                    }else {
                        delete file[i];
                    }
                }
                if (Object.keys(fileObj).length > 0) {
                    var data = {
                        'port': 'photos',
                        'type': 'cache',
                        'action': 'delete',
                        'file': fileObj,
                        'token': '<?php print $g_client['token']['action']['photos']; ?>'
                    };
                    $.ajax({
                        url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
                        type: "POST",
                        data: data,
                        dataType: "json",
                        success: function(data) {
                            console.log(data);
                            if (isset(data['return']) && data['return'] === true) {
                            	var del = 0;
                            	for (var i in data['data']) {
                            		if (del > 0) {
                            			return;
                            		}
                            		if (isset(data['data'][i]['return']) && data['data'][i]['return'] == true) {
                            			del++;
                            		}
                            	}
                                if (del > 0) {
	                                var cited = upload.find("[cited-preview][file]");
	                                cited.removeAttr('secret').removeAttr('name').removeAttr('handing').css('background-image', '').removeAttr('style');
	                                upload.children("[button]").children("[photos-remove]").hide('250', function() {
	                                    $(this).remove();
	                                });
	                                var buttonAddUpload = ' <div class="add upload action w2" photos-add upload> <span><?php print $_language->text('upload_photos', 'ucfirst'); ?></span><br><i></i> </div> <div class="add select action w2" photos-add select> <span><?php print $_language->text('select_photos', 'ucfirst'); ?></span><br><i></i> </div> ';
	                                upload.children("[button]").append(buttonAddUpload);
	                                var buttonAddUpload = upload.children("[button]").children("[photos-add]");
	                                buttonAddUpload.hide().slideDown();
	                                buttonAddUpload.bind('click', function() {
	                                    editor.find("[input][classify='cited']").find("[form][data='cited']").find("input").click();
	                                });
	                                var buttonAddSelect = upload.children("[button]").children("[photos-add][select]");
									buttonAddSelect.bind('click', function() {
									var buttonAddSelect = $(this);
										if (buttonAddSelect.attr('handling') != "true") {
											buttonAddSelect.attr('handling', 'true');
											editor_selectPhotosCited();
											setTimeout(function() {
												buttonAddSelect.removeAttr('handling');
											}, 250);
										}
									});
                                }
                            }else {
                                //.
                            }
                        }
                    });
                }
            }
        }
    }
}
var editor_mediaPreview = function () {
	var editor = $("#gEditor"),
		contentBox = editor.find("[content]");
	if (editor.attr('type') == "photos") {
		var input = contentBox.children("[input][classify='photos']"),
			uploadForm = input.find("[form][data='photos']"),
			uploadFormInput = uploadForm.children("input"),
			uploadButtonUpload = input.find("[button][upload]"),
			uploadButtonSelect = input.find("[button][select]"),
			uploadPreview = contentBox.children("[upload][preview][photos]");
		uploadButtonUpload.bind('click', function() {
			var uploadButtonUpload = $(this);
			if (uploadButtonUpload.attr('handling-click') != "true") {
				uploadButtonUpload.attr('handling-click', 'true');
				uploadFormInput.click();
				setTimeout(function() {
					uploadButtonUpload.attr('handling-click', 'false');
				}, 250);
			}
		});
		uploadButtonSelect.bind('click', function() {
			var uploadButtonSelect = $(this);
			if (uploadButtonSelect.attr('handling-click') != "true") {
				uploadButtonSelect.attr('handling-click', 'true');
				editor_selectPhotos();
				setTimeout(function() {
					uploadButtonSelect.attr('handling-click', 'false');
				}, 250);
			}
		});
		uploadFormInput.change(function(e) {
			if ($(this).val() != "") {
				uploadMediaPreview();
				uploadForm.submit();
			}
		});
		var uploadMediaPreview = function () {
			if (editor.attr('handling-preview') == "true") {
				//.
				return false;
			}
			editor.attr('handling-preview','true');
			var form = editor.find("[content]").find("[input][classify='photos']").find("[form]");
			var process = editor.find("[content]").find("[input][classify='photos']").find("[process]");
			var fileObj = form.find("input[type='file']")[0].files;
			var fileCount = fileObj.length;
			//.
			form.prevAll("[button]").slideUp(function() {
				$(this).remove();
		    });
			var upload = editor.find("[upload][preview][photos]");
			if (upload.length === 0) {
				var previewBox = '<div class="upload photos" upload preview photos> <div class="list"> <div class="preview add upload action" photos-add upload><i></i></div> <div class="preview add select action" photos-add select><i></i></div> </div> </div>';
				editor.find("div[content]").children("[input][classify='photos']").after(previewBox);
				var upload = editor.find("div[content]").find("[upload][preview][photos]");
				upload.hide().slideDown();
				var buttonAddUpload = upload.find("[photos-add][upload]");
				buttonAddUpload.bind('click', function() {
					editor.find("[input][classify='photos']").find("[form][data='photos']").find("input").click();
				});
				var buttonAddSelect = upload.find("[photos-add][select]");
				buttonAddSelect.bind('click', function() {
					var buttonAddSelect = $(this);
					if (buttonAddSelect.attr('handling-select') != "true") {
						buttonAddSelect.attr('handling-select', 'true');
						editor_selectPhotos();
						setTimeout(function() {
							buttonAddSelect.removeAttr('handling-select');
						}, 250);
					}
				});
				setupTooltip();
			}
			//.
			var urlRequest = "<?php print $_tool->links("source/ajax/action.ajax"); ?>".replace(/^(([\S]+)?<?php print $_parameter->get('regex_domain'); ?>)\//i, "");
			uploadForm.on("submit", function(e) {
			    stopEvent(e);
			});
			var requestUploadFunc = function (files) {
				var fileCount = countArr(files);
				var thisCount = fileCount - 1
				var key = randomKeyString(10);
				var data = new FormData();
				var code = " <div class='preview uploading' photos-uploading='"+key+"' photos-name='"+files[thisCount]['name']+"'> <div uploading> <div class='navProcess-buffering'></div> </div> <div class='filter'></div> </div> ";
				var upload = editor.find("[upload][preview][photos]");
		        upload.find("[photos-add]").first().before(code);
		        var FR = new FileReader();
				FR.onload = function(e) {
					console.log(e);
					var url = e.target.result;
					var thisPreview = upload.find("[photos-uploading='"+key+"']");
					thisPreview.append("<div style='background-image: url("+url+");' img></div>");
				};
				FR.readAsDataURL(files[thisCount]);
				files[thisCount]['secret'] = key;
				console.log(files[thisCount]);
				data.append('port', 'photos');
				data.append('type', 'cache');
				data.append('action', 'add');
				data.append('token', '<?php print $g_client['token']['action']['photos']; ?>');
				data.append('secret', key);
				data.append('file[]', files[thisCount]);
				console.log(data);
				var requestUpload = $.ajax({
					url: urlRequest,
					type: "POST",
					data: data,
					dataType: "json",
					processData: false,
					contentType: false,
					success: function (data) {
						console.log(data);
						if (isset(data['return']) && data['return'] === true && isset(data['data']) && countArr(data['data']) > 0) {
							for (var i in data['data']) {
								if (isset(data['data'][i]['return']) && data['data'][i]['return'] === false) {
									//.
									var fileSecret = data['data'][i]['secret'];
									if (isset(data['data'][i]['secret']) && typeof data['data'][i]['secret'] === "string") {
										popupNotification ({type: 'error', title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('file_upload_failed', 'ucfirst'); ?>, <?php print $_language->text('please_try_agian', 'ucfirst'); ?>.", timeout: 4000, audio: true, global: true});
										upload.find("[photos-uploading='"+fileSecret+"']").addClass('error');
										setTimeout(function () {
											upload.find("[photos-uploading='"+fileSecret+"']").fadeOut('slow', function(){
											 	$(this).remove();
											});
										}, 1000);
									}
									delete data['data'][i];
								}
							}
							if (countArr(data['data']) > 0) {
								var objects = {
						    		'format': 'photos', 
						    		'type': 'preview', 
						    		'data': data['data']
						    	};
						    	editor_mediaUpload(objects);
						    	//.
						    	for (var i in data['data']) {
						    		var file = data['data'][i];
					            	var data = {'token': '<?php print $g_client['token']['action']['photos']; ?>', 'port': 'photos', 'type': 'faces', 'action': 'add', 'photos': {'local': 'cache', 'label': 'secret', 'value': file['secret']}};
					                var requestAction = $.ajax({
					                    url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
					                    type: "POST",
					                    data: data,
					                    dataType: "json",
					                    success: function(data) {
					                    	//.
					                    }
					                });
						    	}
							}
					    }
				    }
				});
				delete files[thisCount];
				form.find("input[type='file']").files = '';
				if (thisCount > 0) {
					requestUploadFunc(files);
				}
			}
			var fileSelected = [];
			for (var i = 0; i < fileCount; i++) {
				fileSelected[i] = fileObj[i];
			}
			requestUploadFunc(fileSelected);
			//.
			setTimeout(function() {
				editor.removeAttr('handling-preview');
				form.find("input[type='file']").files = '';
			}, 250);
		}
	}else if (editor.attr('type') == "music") {
		var input = contentBox.children("[input][classify='music']"),
			uploadForm = input.find("[form][data='music']"),
			uploadFormInput = uploadForm.children("input"),
			uploadButtonUpload = input.find("[button][upload]"),
			uploadButtonSelect = input.find("[button][select]"),
			uploadPreview = contentBox.children("[upload][preview][music]");
		uploadButtonUpload.bind('click', function() {
		var uploadButtonUpload = $(this);
			if (uploadButtonUpload.attr('handling-click') != "true") {
				uploadButtonUpload.attr('handling-click', 'true');
				uploadFormInput.click();
				setTimeout(function() {
					uploadButtonUpload.attr('handling-click', 'false');
				}, 250);
			}
		});
		uploadButtonSelect.bind('click', function() {
			var uploadButtonSelect = $(this);
			if (uploadButtonSelect.attr('handling-click') != "true") {
				uploadButtonSelect.attr('handling-click', 'true');
				editor_selectMusic();
				setTimeout(function() {
					uploadButtonSelect.removeAttr('handling-click');
				},250);
			}
		});
		uploadFormInput.change(function() {
			if ($(this).val() != "") {
				uploadMediaPreview();
				uploadForm.submit();
			}
		});
		var uploadMediaPreview = function () {
			if (editor.attr('handling-preview') == "true") {
				//.
				return false;
			}
			editor.attr('handling-preview', 'true');
			var form = editor.find("[content]").find("[input][classify='music']").find("[form]");
			var process = editor.find("[content]").find("[input][classify='music']").find("[process]");
			//.
			form.prevAll("[button]").slideUp(function() {
				$(this).remove();
			});
			var upload = editor.find("[upload][preview][music]");
			if (upload.length === 0) {
				var previewBox = '<div class="upload music" upload preview music> <div class="player" music-preview></div> </div>';
				editor.find("div[content]").children("[input][classify='music']").after(previewBox);
				var upload = editor.find("div[content]").find("[upload][preview][music]");
				upload.hide().slideDown();
			}else {
				var preview = upload.children("[music-preview]");
				if (preview.length === 0) {
					upload.append('<div class="player" music-preview></div>');
				}else {
					preview.html('');
				}
			}
			//.
			var data = form.serializeArray();
			data.push(
				{'name': 'port', 'value': 'music'},
				{'name': 'type', 'value': 'cache'},
				{'name': 'action', 'value': 'add'},
				{'name': 'token', 'value': '<?php print $g_client['token']['action']['music']; ?>'}
			);
			form.ajaxForm({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				data: data,
				dataType: "json",
				beforeSend: function() {
				    
				},
				uploadProgress: function(event, position, total, percentComplete) {
					if (process.css('display') == "none") {
						process.slideDown();
					}
					process.children("div").width(percentComplete+'%');
					if (percentComplete == 100) {
						process.slideUp(function() {
							process.children("div").width(0);
						});
						editor.find("div[content]").children("[input][classify='music']").children("[form][data='music']").children("input").val('');
					}
				    console.log(percentComplete);
				},
				success: function(data) {
				    console.log(data);
				    if (isset(data['return']) && data['return'] === true && isset(data['data']) && countArr(data['data']) > 0) {
				    	var show = 0;
				    	for (var i in data['data']) {
				    		if (show > 0) {
				    			return;
				    		}
				    		var rows = data['data'][i];
					    	if (isset(rows['return']) && rows['return'] === false) {
					    		if (isset(rows['reason'])) {

					    		}else {
					    		
					    		}
					    	}else {
					    		form.find('input').files = '';
						    	var object = {
						    		'format': 'music', 
						    		'type': 'preview', 
						    		'data': rows
						    	};
								upload.children("[button]").remove();
								console.log(object);
								editor_mediaUpload(object);
								show++;
					    	}
				    	}
				    }else if (isset(data['return']) && data['return'] === true && (data['data'] === null || Object.keys(data['data']).length === 0)) {
				    	popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('file_upload_failed', 'ucfirst'); ?>, <?php print $_language->text('please_try_agian', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
				    }
				}
			});
			//.
			setTimeout(function() {
				editor.removeAttr('handling-preview');
				form.find("input[type='file']").files = '';
			}, 250);
		}
	}else if (editor.attr('type') == "videos") {
		var input = contentBox.children("[input][classify='videos']"),
			uploadForm = input.find("[form][data='videos']"),
			uploadFormInput = uploadForm.children("input"),
			uploadButtonUpload = input.find("[button][upload]"),
			uploadButtonSelect = input.find("[button][select]"),
			uploadPreview = contentBox.children("[upload][preview][videos]");
		uploadButtonUpload.bind('click', function() {
		var uploadButtonUpload = $(this);
			if (uploadButtonUpload.attr('handling-click') != "true") {
				uploadButtonUpload.attr('handling-click', 'true');
				uploadFormInput.click();
				setTimeout(function() {
					uploadButtonUpload.attr('handling-click', 'false');
				}, 250);
			}
		});
		uploadButtonSelect.bind('click', function() {
			var uploadButtonSelect = $(this);
			if (uploadButtonSelect.attr('handling-click') != "true") {
				uploadButtonSelect.attr('handling-click', 'true');
				editor_selectVideos();
				setTimeout(function() {
					uploadButtonSelect.removeAttr('handling-click');
				},250);
			}
		});
		uploadFormInput.change(function() {
			if ($(this).val() != "") {
				uploadMediaPreview();
				uploadForm.submit();
			}
		});
		var uploadMediaPreview = function () {
			if (editor.attr('handling-preview') == "true") {
				//.
				return false;
			}
			editor.attr('handling-preview', 'true');
			var form = editor.find("[content]").find("[input][classify='videos']").find("[form]");
			var process = editor.find("[content]").find("[input][classify='videos']").find("[process]");
			//.
			form.prevAll("[button]").slideUp(function() {
				$(this).remove();
			});
			var upload = editor.find("[upload][preview][videos]");
			if (upload.length === 0) {
				var previewBox = '<div class="upload videos" upload preview videos> <div class="player" videos-preview></div> </div>';
				editor.find("div[content]").children("[input][classify='videos']").after(previewBox);
				var upload = editor.find("div[content]").find("[upload][preview][videos]");
				upload.hide().slideDown();
			}else {
				var preview = upload.children("[videos-preview]");
				if (preview.length === 0) {
					upload.append('<div class="player" videos-preview></div>');
				}else {
					preview.html('');
				}
			}
			//.
			var data = form.serializeArray();
			data.push(
				{'name': 'port', 'value': 'videos'},
				{'name': 'type', 'value': 'cache'},
				{'name': 'action', 'value': 'add'},
				{'name': 'token', 'value': '<?php print $g_client['token']['action']['videos']; ?>'}
			);
			form.ajaxForm({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				data: data,
				dataType: "json",
				beforeSend: function() {
				    
				},
				uploadProgress: function(event, position, total, percentComplete) {
					if (process.css('display') == "none") {
						process.slideDown();
					}
					process.children("div").width(percentComplete+'%');
					if (percentComplete == 100) {
						process.slideUp(function() {
							process.children("div").width(0);
						});
						editor.find("div[content]").children("[input][classify='videos']").children("[form][data='videos']").children("input").val('');
					}
				    console.log(percentComplete);
				},
				success: function(data) {
				    console.log(data);
				    if (isset(data['return']) && data['return'] === true && isset(data['data']) && countArr(data['data']) > 0) {
				    	var show = 0;
				    	for (var i in data['data']) {
				    		if (show > 0) {
				    			return;
				    		}
				    		var rows = data['data'][i];
					    	if (isset(rows['return']) && rows['return'] === false) {
					    		if (isset(rows['reason'])) {

					    		}else {
					    		
					    		}
					    	}else {
					    		form.find('input').files = '';
						    	var object = {
						    		'format': 'videos', 
						    		'type': 'preview', 
						    		'data': rows
						    	};
								upload.children("[button]").remove();
								console.log(object);
								editor_mediaUpload(object);
								show++;
					    	}
				    	}
				    }else if (isset(data['return']) && data['return'] === true && (data['data'] === null || Object.keys(data['data']).length === 0)) {
				    	popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('file_upload_failed', 'ucfirst'); ?>, <?php print $_language->text('please_try_agian', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
				    }
				}
			});
			//.
			setTimeout(function() {
				editor.removeAttr('handling-preview');
				form.find("input[type='file']").files = '';
			}, 250);
		}
		/*
		var uploadMediaPreview = function () {
			if (editor.attr('handling-preview') == "true") {
				//.
				return false;
			}
			//.
			form.prevAll("[button]").slideUp(function() {
				$(this).remove();
			});
			var upload = editor.find("[upload][preview][videos]");
			if (upload.length === 0) {
				var previewBox = '<div class="upload videos" upload preview videos> <div class="player" videos-preview></div> </div>';
				editor.find("div[content]").children("[input][classify='videos']").after(previewBox);
				var upload = editor.find("div[content]").find("[upload][preview][videos]");
				upload.hide().slideDown();
			}else {
				var preview = upload.children("[videos-preview]");
				if (preview.length === 0) {
					upload.append('<div class="player" videos-preview></div>');
				}else {
					preview.html('');
				}
			}
			//.
			var form = editor.find("[content]").find("[input][classify='videos']").find("[form]");
			var process = editor.find("[content]").find("[input][classify='videos']").find("[process]");
			var data = form.serializeArray();
			data.push(
				{'name': 'port', 'value': 'videos'},
				{'name': 'type', 'value': 'cache'},
				{'name': 'action', 'value': 'add'},
				{'name': 'token', 'value': '<?php print $g_client['token']['action']['videos']; ?>'}
			);
			form.ajaxForm({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				data: data,
				dataType: "json",
				beforeSend: function() {
				    
				},
				uploadProgress: function(event, position, total, percentComplete) {
					if (process.css('display') == "none") {
						process.slideDown();
					}
					process.children("div").width(percentComplete+'%');
					if (percentComplete == 100) {
						process.slideUp(function() {
							process.children("div").width(0);
						});
						editor.find("div[content]").children("[input][classify='videos']").children("[form][data='videos']").children("input").val('');
					}
				    console.log(percentComplete);
				},
				success: function(data) {
				    console.log(data);
				    if (isset(data['return']) && data['data'] !== null && data['return'] === true && Object.keys(data['data']).length > 0) {
				    	var show = 0;
				    	for (var i in data['data']) {
				    		if (show > 0) {
				    			return;
				    		}
				    		var rows = data['data'][i];
					    	if (isset(rows['return']) && rows['return'] === false) {
					    		if (isset(rows['reason'])) {

					    		}else {
					    		
					    		}
					    	}else {
						    	var object = {
						    		'format': 'videos', 
						    		'type': 'preview', 
						    		'data': rows
						    	};
						    	form.find('input').files = '';
								upload.children("[button]").remove();
								console.log(object);
								editor_mediaUpload(object);
								show++;
					    	}
				    	}
				    }else if (isset(data['return']) && data['return'] === true && (data['data'] === null || Object.keys(data['data']).length === 0)) {
				    	popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('file_upload_failed', 'ucfirst'); ?>, <?php print $_language->text('please_try_agian', 'strtolower'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
				    }
				}
			});
			//.
			editor.removeAttr('handling-preview');
		}
		*/
	}else if (editor.attr('type') == "cited") {
		uploadButtonUpload.bind('click', function() {
			var uploadButtonUpload = $(this);
			if (uploadButtonUpload.attr('handling-click') != "true") {
				uploadButtonUpload.attr('handling-click', 'true');
				uploadFormInput.click();
				setTimeout(function() {
					uploadButtonUpload.attr('handling-click', 'false');
				}, 250);
			}
		});
		uploadButtonSelect.bind('click', function() {
			var uploadButtonSelect = $(this);
			if (uploadButtonSelect.attr('handling-click') != "true") {
				uploadButtonSelect.attr('handling-click', 'true');
				editor_selectPhotosCited();
				setTimeout(function() {
					uploadButtonSelect.removeAttr('handling-click');
				},250);
			}
		});
		uploadFormInput.change(function() {
			if ($(this).val() != "") {
				uploadMediaPreview();
				uploadForm.submit();
			}
		});
		var uploadMediaPreview = function () {
			editor.attr('handling-preview','true');
			var form = editor.find("[content]").find("[input][classify='cited']").find("[form]");
			var process = editor.find("[content]").find("[input][classify='cited']").find("[process]");
			var data = form.serializeArray();
			data.push(
				{'name': 'token', 'value': '<?php print $g_client['token']['action']['photos']; ?>'},
				{'name': 'port', 'value': 'photos'},
				{'name': 'type', 'value': 'cache'},
				{'name': 'action', 'value': 'add'}
			);
			form.ajaxForm({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				data: data,
				dataType: "json",
				beforeSend: function() {
				},
				uploadProgress: function(event, position, total, percentComplete) {
					if (process.css('display') == "none") {
						process.slideDown();
					}
					process.children("div").width(percentComplete+'%');
					if (percentComplete == 100) {
						process.slideUp(function() {
							process.children("div").width(0);
						});
						editor.find("div[content]").children("[input][classify='cited']").children("[form][data='cited']").children("input").val('');
					}
				    console.log(percentComplete);
				},
				success: function(data) {
				    console.log(data);
				    if (isset(data['return']) && data['data'] !== null && data['return'] === true && Object.keys(data['data']).length > 0) {
				    	var object = {
				    		'format': 'cited', 
				    		'type': 'preview', 
				    		'data': data['data']
				    	};
				    	var upload = editor.find("[upload][preview][cited]");
				    	form.prevAll("[button]").slideUp(250, function() {
				    		$(this).remove();
				    	});
				    	form.find('input').files = '';
						upload.children("[button]").remove();
						console.log(object);
						editor.attr('handling-preview','false');
						editor_mediaUpload(object);
				    }
				}
			});
		}
	}
}
var editor_selectPhotos = function () {
	var randkey = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>);
	var ExOptions = {
		"randkey": randkey,
		"port": "photos",
		"data": {
			"type": "cache",
			"callback": function () {
				function checkKeyEvent (k) {
					var Ex = $("#ExplorerPopup");
					var gK = Ex.attr("randkey");
					if (gK == k) {
						return true;
					}else {
						return false;
					}
				}
				var Ex = $("#ExplorerPopup");
				var rows = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file]");
				rows.each(function() {
					var rows = $(this);
					rows.bind('click', function() {
						var thisRows = $(this);
						var thisFile = JSON.parse(rows.attr('file'));
						if (thisRows.attr('file-selected') != "true") {
							thisRows.attr('file-selected', 'true');
						}else {
							thisRows.removeAttr('file-selected');
						}
					});
				});
				var fileUsing = [];
				var filePreview = $("#gEditor > .box > .body[content] > .upload.photos .list [photos-preview][file]");
				filePreview.each(function() {
					var filePreview = $(this);
					fileUsing.push(JSON.parse(filePreview.attr('file')));
				});
				var fileCache = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file]");
				fileCache.each(function() {
					var fileCache = $(this);
					var fileCacheInfo = JSON.parse(fileCache.attr('file'));
					var count = 0;
					for (var i in fileUsing) {
						var thisFileUsing = fileUsing[i];
						if (fileCacheInfo['type'] == thisFileUsing['type'] && fileCacheInfo['local'] == thisFileUsing['local'] && fileCacheInfo['secret'] == thisFileUsing['secret'] && fileCacheInfo['name'] == thisFileUsing['name']) {
							count++;
						}
					}
					if (count > 0) {
						fileCache.attr('file-using', 'true');
					}
				});
				$(document).ready(function() {
					$(document).keypress(function(e) { 
					    var keyCode = (e.keyCode ? e.keyCode : e.which);   
					    if (keyCode == 13 && checkKeyEvent(randkey) == true) {
							var editor = $("#gEditor");
							var form = editor.find("[content]").find("[input][classify='photos']").find("[form]");
							var closeButton = $("#ExplorerPopup > .boxContent > .header [close]");
							form.prevAll("[button]").slideUp(function() {
							    $(this).remove();
							});
							form.find('input').files = '';
							var upload = editor.find("[upload][preview][photos]");
							if (upload.length === 0) {
								var previewBox = '<div class="upload photos" upload preview photos> <div class="list"> <div class="preview add upload action" photos-add upload><i></i></div> <div class="preview add select action" photos-add select><i></i></div> </div> </div>';
								editor.find("div[content]").children("[input][classify='photos']").after(previewBox);
								var upload = editor.find("div[content]").find("[upload][preview][photos]");
								upload.hide().slideDown();
								var buttonAddUpload = upload.find("[photos-add][upload]");
								buttonAddUpload.bind('click', function() {
									editor.find("[input][classify='photos']").find("[form][data='photos']").find("input").click();
								});
								var buttonAddSelect = upload.find("[photos-add][select]");
								buttonAddSelect.bind('click', function() {
									var buttonAddSelect = $(this);
									if (buttonAddSelect.attr('handling') != "true") {
										buttonAddSelect.attr('handling', 'true');
										editor_selectPhotos();
										setTimeout(function() {
											buttonAddSelect.removeAttr('handling');
										},250);
									}
								});
								setupTooltip();
							}
							var data = [];
							var rows = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file][file-selected='true']");
							rows.each(function() {
								data.push(JSON.parse($(this).attr('file')));
							});
							var object = {
								'format': 'photos', 
								'type': 'preview', 
								'data': data
							};
							editor_mediaUpload(object);
							closeButton.click();
						}
					});
				});
			}
		}
	};
	ExplorerPopup(ExOptions);
}
var editor_selectMusic = function () {
	var randkey = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>);
	var ExOptions = {
		"randkey": randkey,
		"port": "music",
		"data": {
			"type": "cache",
			"callback": function () {
				function checkKeyEvent (k) {
					var Ex = $("#ExplorerPopup");
					var gK = Ex.attr("randkey");
					if (gK == k) {
						return true;
					}else {
						return false;
					}
				}
				var Ex = $("#ExplorerPopup");
				var rows = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file]");
				rows.each(function() {
					var rows = $(this);
					rows.bind('click', function() {
						var thisRows = $(this);
						var thisFile = JSON.parse(thisRows.attr('file'));
						if (thisRows.attr('file-selected') != "true") {
							$("#ExplorerPopup > .boxContent > .body .grid > .rows[file]").attr('file-selected', 'false');
							thisRows.attr('file-selected', 'true');
						}else {
							thisRows.removeAttr('file-selected');
						}
					});
				});
				var fileUsing = [];
				var filePreview = $("#gEditor > .box > .body[content] > .upload.music .list [music-preview][file]");
				filePreview.each(function() {
					var filePreview = $(this);
					fileUsing.push(JSON.parse(filePreview.attr('file')));
				});
				var fileCache = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file]");
				fileCache.each(function() {
					var fileCache = $(this);
					var fileCacheInfo = JSON.parse(fileCache.attr('file'));
					var count = 0;
					for (var i in fileUsing) {
						var thisFileUsing = fileUsing[i];
						if (fileCacheInfo['type'] == thisFileUsing['type'] && fileCacheInfo['local'] == thisFileUsing['local'] && fileCacheInfo['secret'] == thisFileUsing['secret'] && fileCacheInfo['name'] == thisFileUsing['name']) {
							count++;
						}
					}
					if (count > 0) {
						fileCache.attr('file-using', 'true');
					}
				});
				$(document).ready(function() {
					$(document).keypress(function(e) { 
						var keyCode = (e.keyCode ? e.keyCode : e.which);   
					    if (keyCode == 13 && checkKeyEvent(randkey) == true) {
							var editor = $("#gEditor");
							var form = editor.find("[content]").find("[input][classify='music']").find("[form]");
							var closeButton = $("#ExplorerPopup > .boxContent > .header [close]");
							var data = [];
							var rows = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file][file-selected='true']");
							rows.each(function() {
								data.push(JSON.parse($(this).attr('file')));
								return false;
							});
							var object = {
					    		'format': 'music', 
					    		'type': 'preview', 
					    		'data': data[0]
					    	};
					    	form.prevAll("[button]").slideUp(function() {
					    		$(this).remove();
					    	});
					    	form.find('input').files = '';
							var upload = editor.find("[upload][preview][music]");
							if (upload.length === 0) {
								var previewBox = '<div class="upload music" upload preview music> <div class="player" music-preview></div> </div>';
								editor.find("div[content]").children("[input][classify='music']").after(previewBox);
								var upload = editor.find("div[content]").find("[upload][preview][music]");
								upload.hide().slideDown();
							}else {
								var preview = upload.children("[music-preview]");
								if (preview.length === 0) {
									upload.append('<div class="player" music-preview></div>');
								}else {
									preview.html('');
								}
							}
							upload.children("[button]").remove();
							console.log(object);
							editor_mediaUpload(object);
							closeButton.click();
						}
					});
				});
			}
		}
	};
	ExplorerPopup(ExOptions);
}
var editor_selectVideos = function () {
	var randkey = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>);
	var ExOptions = {
		"randkey": randkey,
		"port": "videos",
		"data": {
			"type": "cache",
			"callback": function () {
				function checkKeyEvent (k) {
					var Ex = $("#ExplorerPopup");
					var gK = Ex.attr("randkey");
					if (gK == k) {
						return true;
					}else {
						return false;
					}
				}
				var Ex = $("#ExplorerPopup");
				var rows = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file]");
				rows.each(function() {
					var rows = $(this);
					rows.bind('click', function() {
						var thisRows = $(this);
						var thisFile = JSON.parse(thisRows.attr('file'));
						if (thisRows.attr('file-selected') != "true") {
							$("#ExplorerPopup > .boxContent > .body .grid > .rows[file]").attr('file-selected', 'false');
							thisRows.attr('file-selected', 'true');
						}else {
							thisRows.removeAttr('file-selected');
						}
					});
				});
				var fileUsing = [];
				var filePreview = $("#gEditor > .box > .body[content] > .upload.videos .list [videos-preview][file]");
				filePreview.each(function() {
					var filePreview = $(this);
					fileUsing.push(JSON.parse(filePreview.attr('file')));
				});
				var fileCache = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file]");
				fileCache.each(function() {
					var fileCache = $(this);
					var fileCacheInfo = JSON.parse(fileCache.attr('file'));
					var count = 0;
					for (var i in fileUsing) {
						var thisFileUsing = fileUsing[i];
						if (fileCacheInfo['type'] == thisFileUsing['type'] && fileCacheInfo['local'] == thisFileUsing['local'] && fileCacheInfo['secret'] == thisFileUsing['secret'] && fileCacheInfo['name'] == thisFileUsing['name']) {
							count++;
						}
					}
					if (count > 0) {
						fileCache.attr('file-using', 'true');
					}
				});
				$(document).ready(function() {
					$(document).keypress(function(e) {
					    var keyCode = (e.keyCode ? e.keyCode : e.which);   
					    if (keyCode == 13 && checkKeyEvent(randkey) == true) {
							var editor = $("#gEditor");
							var form = editor.find("[content]").find("[input][classify='videos']").find("[form]");
							var closeButton = $("#ExplorerPopup > .boxContent > .header [close]");
							var data = [];
							var rows = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file][file-selected='true']");
							rows.each(function() {
								data.push(JSON.parse($(this).attr('file')));
								return false;
							});
							var object = {
					    		'format': 'videos', 
					    		'type': 'preview', 
					    		'data': data[0]
					    	};
					    	form.prevAll("[button]").slideUp(function() {
					    		$(this).remove();
					    	});
					    	form.find('input').files = '';
							var upload = editor.find("[upload][preview][videos]");
							if (upload.length === 0) {
								var previewBox = '<div class="upload videos" upload preview videos> <div class="player" videos-preview></div> </div>';
								editor.find("div[content]").children("[input][classify='videos']").after(previewBox);
								var upload = editor.find("div[content]").find("[upload][preview][videos]");
								upload.hide().slideDown();
							}else {
								var preview = upload.children("[videos-preview]");
								if (preview.length === 0) {
									upload.append('<div class="player" videos-preview></div>');
								}else {
									preview.html('');
								}
							}
							upload.children("[button]").remove();
							console.log(object);
							editor_mediaUpload(object);
							closeButton.click();
						}
					});
				});
			}
		}
	};
	ExplorerPopup(ExOptions);
}
var editor_selectPhotosCited = function () {
	popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('addons_updating','ucfirst'); ?>'});
	return false;
}
var editor_action = function () {
	var setup_inputPhotos = 0,
		setup_inputMusic = 0,
		setup_inputVideos = 0,
		setup_inputCited = 0;
	var editor = $("#gEditor"),
		arrow = editor.children(".title").children("[arrow]"),
		buttonChooseType = editor.children(".title").children(".list").children(".rows[type]");
	buttonChooseType.bind('click', function() {
		buttonChooseType.removeClass('active');
		var editor = $("#gEditor");
		var button = $(this);
		var statusTypeOld = editor.attr('type');
		var statusType = button.attr('type');
		var contentBox = editor.find("[content]");
		var boxMediaOtherOld = contentBox.children("[input][classify][show='true']").attr('classify');
		var boxMediaOther = contentBox.find("[input][classify]");
		if (statusType != boxMediaOtherOld && (statusType == "status" || statusType == "photos" || statusType == "music" || statusType == "videos" || statusType == "cited")) {
			var boxMediaLinkPreview = contentBox.children("[upload][preview][link]");
			if (statusType != "status" && boxMediaLinkPreview.length > 0) {
				boxMediaLinkPreview.attr('show','false').hide(function() {
					$(this).html('');
				});
			}
			var boxMediaPhotosPreview = contentBox.children("[upload][preview][photos]");
			if (statusType != 'photos' && boxMediaPhotosPreview.length > 0) {
				boxMediaPhotosPreview.attr('show','false').hide(function() {
					boxMediaPhotosPreview.find("[photos-preview][file], [photos-remove]").each(function() {
						$(this).hide(function() {
							$(this).remove();
						});
					});
				});
			}
			var boxMediaVideosPreview = contentBox.children("[upload][preview][videos]");
			if (statusType != "videos" && boxMediaVideosPreview.length > 0) {
				var demo_videosPlayerThisID = boxMediaVideosPreview.find("[videos-preview][file]").children("[id]:first").attr('id');
				if ($("#" + demo_videosPlayerThisID).length > 0) {
					var demo_videosPlayerThis = gplayer(demo_videosPlayerThisID);
					demo_videosPlayerThis.ready(function() {
						demo_videosPlayerThis.pause();
						setTimeout(function() {
							demo_videosPlayerThis.dispose();
							$("#" + demo_videosPlayerThisID).remove();
							boxMediaVideosPreview.find("[videos-preview][file]").remove();
						},0);
					});
				}
				boxMediaVideosPreview.attr('show','false').hide(function() {
					var buttonAddUpload = ' <div class="add upload action w2" videos-add upload> <span><?php print $_language->text('upload_videos', 'ucfirst'); ?></span><br><i></i> </div> <div class="add select action w2" videos-add select> <span><?php print $_language->text('select_videos', 'ucfirst'); ?></span><br><i></i> </div> ';
					boxMediaVideosPreview.children("[button]").html(buttonAddUpload);
					var buttonAddUpload = boxMediaVideosPreview.children("[button]").children("[videos-add][upload]");
					buttonAddUpload.hide().slideDown();
					buttonAddUpload.bind('click', function() {
						editor.find("[input][classify='videos']").find("[form][data='videos']").find("input").click();
					});
					var buttonAddSelect = boxMediaVideosPreview.children("[button]").children("[videos-add][select]");
					buttonAddSelect.bind('click', function() {
						var buttonAddSelect = $(this);
						if (buttonAddSelect.attr('handling') != "true") {
							buttonAddSelect.attr('handling', 'true');
							editor_selectVideos();
							setTimeout(function() {
								buttonAddSelect.removeAttr('handling');
							},250);
						}
					});
				});
			}
			var boxMediaMusicPreview = contentBox.children("[upload][preview][music]");
			if (statusType != "music" && boxMediaMusicPreview.length > 0) {
				var demo_musicPlayerThisID = boxMediaMusicPreview.find("[music-preview][file]").children("[id]:first").attr('id');
				if ($("#" + demo_musicPlayerThisID).length > 0) {
					var demo_musicPlayerThis = gplayer(demo_musicPlayerThisID);
					demo_musicPlayerThis.ready(function() {
						demo_musicPlayerThis.pause();
						setTimeout(function() {
							demo_musicPlayerThis.dispose();
							$("#" + demo_musicPlayerThisID).remove();
							boxMediaMusicPreview.find("[music-preview][file]").remove();
						},0);
					});
				}
				boxMediaMusicPreview.attr('show','false').hide(function() {
					var buttonAddUpload = ' <div class="add upload action w2" music-add upload> <span><?php print $_language->text('upload_music', 'ucfirst'); ?></span><br><i></i> </div> <div class="add select action w2" music-add select> <span><?php print $_language->text('select_music', 'ucfirst'); ?></span><br><i></i> </div> ';
					boxMediaMusicPreview.children("[button]").html(buttonAddUpload);
					var buttonAddUpload = boxMediaMusicPreview.children("[button]").children("[music-add][upload]");
					buttonAddUpload.hide().slideDown();
					buttonAddUpload.bind('click', function() {
						editor.find("[input][classify='music']").find("[form][data='music']").find("input").click();
					});
					var buttonAddSelect = boxMediaMusicPreview.children("[button]").children("[music-add][select]");
					buttonAddSelect.bind('click', function() {
						var buttonAddSelect = $(this);
						if (buttonAddSelect.attr('handling') != "true") {
							buttonAddSelect.attr('handling', 'true');
							editor_selectMusic();
							setTimeout(function() {
								buttonAddSelect.removeAttr('handling');
							},250);
						}
					});
				});
			}
			var boxMediaCitedPreview = contentBox.children("[upload][preview][cited]");
			if (statusType != "cited" && boxMediaCitedPreview.length > 0) {
				var upload = editor.find("[upload][preview][cited]");
				var cited = editor.find("[cited]");
				var citedAuthor = editor.find("[cited]").find("[author]");
				var citedQuote = editor.find("[cited]").find("[quote]");
				citedAuthor.children("[value]").val('');
				citedQuote.children("[value]").val('');
				boxMediaCitedPreview.attr('show','false').hide(function() {
					$(this).find("[photos-remove]").click();
				});
			}
			var boxMedia = contentBox.find("[input][classify='"+statusType+"']");
			if (statusType == "status") {
				var uploadPreview = contentBox.children("[upload][preview][link]");
				var textarea = contentBox.find("[status]").find("textarea");
				uploadPreview.attr("show", "true");
				textarea.donetyping(function() {
					var content = $(this).val();
					var regexpURL = new RegExp(<?php print $_parameter->get('regex_sites_url_fstring'); ?>);
					console.log(regexpURL.test(content));
					if (regexpURL.test(content) == true) {
						var url = (content.match(regexpURL)[0]).toString();
						var removeUrlList = textarea.attr('disabled-url-list');
						if (isset(removeUrlList) && typeof removeUrlList == "string" && typeof JSON.parse(removeUrlList) == "object") {
							var removeUrlList = JSON.parse(removeUrlList);
							if (countArr(removeUrlList) > 0) {
								for (var i in removeUrlList) {
									if (removeUrlList[i] == url) {
										return false;
									}
								}
							}
						}
						console.log('url');
						if (textarea.attr('handing-link') != "true") {
							textarea.attr('handing-link', "true");
							$.ajax({
								url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
								type: "POST",
								data: {'port': 'sites', 'type': 'info', 'action': 'extract', 'url': url},
								dataType: "json",
								success: function(data) {
									var content = editor.find("[content]");
									var uploadPreview = contentBox.children("[upload][preview][link]");
									if (isset(data['return']) && data['return'] === true && isset(data['data']) && typeof data['data'] == "object") {
										if (uploadPreview.length === 0) {
											var code = '<div class="upload link" upload preview link show="true"></div>';
											contentBox.find("[status]").after(code);
											var uploadPreview = contentBox.children("[upload][preview][link]");
										}
										if (isset(data['data']['thumbnail']) && typeof data['data']['thumbnail'] == "string") {
											var code_thumbnail = ' <div style="background-image: url('+data['data']['thumbnail']+');"></div> ';
										}else {
											var code_thumbnail = '';
										}
										var code = "<div class='demo' tag='link' tag-info='"+JSON.stringify(data['data'])+"' tag-display='"+data['data']['display']+"' tag-url='"+data['data']['url']+"'> <div class='thumbnail'> "+code_thumbnail+" <i class='close'></i> </div> <div class='info'> <div class='header rows nowrap'> <span>"+data['data']['title']+"</span> </div> <div class='body rows'> <span>"+data['data']['description']+"</span> </div> <div class='footer rows'> <span>"+data['data']['host']+"</span> </div> </div> </div>";
										uploadPreview.attr('show', 'true').html(code).hide().stop(true, true).fadeIn();
										uploadPreview.children(".demo[tag]").children(".thumbnail").children(".close").bind('click', function() {
											$(this).parents(".demo[tag]").fadeOut(function() {
												uploadPreview.attr('show', 'false').remove();
												var removeUrlList = textarea.attr('disabled-url-list');
												if (isset(removeUrlList) && typeof removeUrlList == "string" && typeof JSON.parse(removeUrlList) == "object") {
													var removeUrlList = JSON.parse(removeUrlList);
													removeUrlList[countArr(removeUrlList)] = url;
												}else {
													var removeUrlList = [];
													removeUrlList[0] = url;
												}
												textarea.attr('disabled-url-list', JSON.stringify(removeUrlList));
											});
										});
									}
								}
							}).fail(function() {
								setTimeout(function() {
									textarea.removeAttr('handing-link');
								}, 100);
							}).done(function() {
								setTimeout(function() {
									textarea.removeAttr('handing-link');
								}, 100);
							});
						}
					}
				}, 500);
			}else if (statusType == "photos") {
				var input = contentBox.children("[input][classify='photos']");
				var uploadForm = input.find("[form][data='photos']");
				var uploadFormInput = uploadForm.children("input");
				var uploadButtonUpload = input.find("[button][upload]");
				var uploadButtonSelect = input.find("[button][select]");
				var uploadPreview = contentBox.children("[upload][preview][photos]");
				var scrapbook = input.find("[scrapbook]");
				var scrapbook_name = editor.find("[scrapbook]").find("[name]");
				var scrapbook_places = editor.find("[scrapbook]").find("[places]");
				var scrapbook_description = editor.find("[scrapbook]").find("[description]");
				editor_tagPlaces(scrapbook_places.find("[value]"));
				scrapbook_places.hide();
				scrapbook_description.hide();
				scrapbook_name.find("[value]").bind('keyup',function() {
					var val = $(this).val();
					if (val != "") {
						scrapbook.attr('get','true');
						scrapbook_places.stop(true, true).slideDown();
						scrapbook_description.stop(true, true).slideDown();
					}else {
						scrapbook.attr('get','false');
						scrapbook_places.stop(true, true).slideUp();
						scrapbook_description.stop(true, true).slideUp();
					}
				});
				if (setup_inputPhotos === 0) {
					var requestScrapbookFind = function (input) {
						if (!isset(input)) {
							return false;
						}
						if (input.attr('handling-find') == "true") {
							return false;
						}
						input.attr('handling-find', 'true');
						var doneRequestFunc = function () {
							input.removeAttr('handling-find');
						};
						var data = {'port': 'user', 'token': '<?php print $g_client['token']['action']['user']; ?>', 'type': 'autocomplete', 'path': 'media', 'from': 'scrapbook', 'value': input.val()};
						$.ajax({
							url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
							type: "POST",
							dataType: "json",
							data: data,
							contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
							success: function (data) {
								console.log(data);
								if (isset(data['return']) && data['return'] === true) {
									input.attr('val', input.val());
									if (isset(data['data']) && countArr(data['data']) > 0) {
										if (isset(data['data']['scrapbook'])) {
											var founedArr = [];
											ObjLoop: for (var i in data['data']['scrapbook']) {
												var thisObj = data['data']['scrapbook'][i];
												if (!isset(thisObj['type']) || !isset(thisObj['name']) || !isset(thisObj['time']) || !isset(thisObj['display'])) {
													continue ObjLoop;
												}
												founedArr[countArr(founedArr)] = {'class': 'tagScrapbook', 'text': thisObj['name'], 'tip': agoDatetime(thisObj['time'], 'ago'), 'tag': {'type': thisObj['type'], 'display': thisObj['display']}};
												if (isset(thisObj['thumbnail'])) {
													founedArr[countArr(founedArr - 1)]['thumbnail'] = thisObj['thumbnail'];
												}
											}
											var boxSuggestOptions = {
												'multiple': false,
												'output': true,
												'title': '<?php print $_language->text('you_may_find', 'ucfirst'); ?>',
												'content': {
													'<?php print $_language->text('scrapbook', 'ucfirst'); ?>': founedArr
												}
											};
											boxSuggest(input, boxSuggestOptions);
										}
									}
									setTimeout(function() {
										input.removeAttr('val');
									}, 1000);
								}else {
									//.
								}
							}
						}).fail(doneRequestFunc).done(doneRequestFunc);
					}
					scrapbook_name.find("[value]").donetyping(function () {
						if ($(this).val() !== null && $(this).val() != "" && $(this).val().match(/([a-zA-Z0-9])/ig)) {
							requestScrapbookFind($(this));
						}
					}, 500);
					setup_inputPhotos++;
				}
				if (uploadPreview.length > 0) {
					uploadPreview.slideDown();
				}
			}else if (statusType == "music") {
				var input = contentBox.children("[input][classify='music']");
				var uploadForm = input.find("[form][data='music']");
				var uploadFormInput = uploadForm.children("input");
				var uploadButtonUpload = input.find("[button][upload]");
				var uploadButtonSelect = input.find("[button][select]");
				var uploadPreview = contentBox.children("[upload][preview][music]");
				var info = input.find("[info]");
				var info_name = info.find("[name]");
				var info_singer = info.find("[singer]");
				var info_album = info.find("[album]");
				var info_tags = info.find("[tags]");
				var info_description = info.find("[description]");
				info_album.hide();
				info_singer.hide();
				info_tags.hide();
				info_description.hide();
				info_name.find("[value]").bind('keyup',function() {
					var val = $(this).val();
					if (val != "") {
						info.attr('get','true');
						info_singer.stop(true, true).slideDown();
						info_album.stop(true, true).slideDown();
						info_tags.stop(true, true).slideDown();
						info_description.stop(true, true).slideDown();
					}else {
						info.attr('get','false');
						info_singer.stop(true, true).slideUp();
						info_album.stop(true, true).slideUp();
						info_tags.stop(true, true).slideUp();
						info_description.stop(true, true).slideUp();
					}
				});
				if (setup_inputMusic === 0) {
					var requestAlbumFind = function (input) {
						if (!isset(input)) {
							return false;
						}
						if (input.attr('handling-find') == "true") {
							return false;
						}
						input.attr('handling-find', 'true');
						var doneRequestFunc = function () {
							input.removeAttr('handling-find');
						};
						var data = {'port': 'user', 'token': '<?php print $g_client['token']['action']['user']; ?>', 'type': 'autocomplete', 'path': 'media', 'from': 'album', 'value': input.val()};
						$.ajax({
							url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
							type: "POST",
							dataType: "json",
							data: data,
							contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
							success: function (data) {
								console.log(data);
								if (isset(data['return']) && data['return'] === true) {
									input.attr('val', input.val());
									if (isset(data['data']) && countArr(data['data']) > 0) {
										if (isset(data['data']['album'])) {
											var founedArr = [];
											ObjLoop: for (var i in data['data']['album']) {
												var thisObj = data['data']['album'][i];
												if (!isset(thisObj['type']) || !isset(thisObj['name']) || !isset(thisObj['time']) || !isset(thisObj['display'])) {
													continue ObjLoop;
												}
												founedArr[countArr(founedArr)] = {'class': 'tagAlbum', 'text': thisObj['name'], 'tip': agoDatetime(thisObj['time'], 'ago'), 'tag': {'type': thisObj['type'], 'display': thisObj['display']}};
												if (isset(thisObj['thumbnail'])) {
													founedArr[countArr(founedArr - 1)]['thumbnail'] = thisObj['thumbnail'];
												}
											}
											var boxSuggestOptions = {
												'multiple': false,
												'output': true,
												'title': '<?php print $_language->text('you_may_find', 'ucfirst'); ?>',
												'content': {
													'<?php print $_language->text('album', 'ucfirst'); ?>': founedArr
												}
											};
											boxSuggest(input, boxSuggestOptions);
										}
									}
									setTimeout(function() {
										input.removeAttr('val');
									}, 1000);
								}else {
									//.
								}
							}
						}).fail(doneRequestFunc).done(doneRequestFunc);
					}
					info_album.find("[value]").donetyping(function () {
						if ($(this).val() !== null && $(this).val() != "" && $(this).val().match(/([a-zA-Z0-9])/ig)) {
							requestAlbumFind($(this));
						}
					}, 500);
					setup_inputMusic++;
				}
				if (uploadPreview.length > 0) {
					uploadPreview.slideDown();
				}
			}else if (statusType == "videos") {
				var input = contentBox.children("[input][classify='videos']");
				var uploadForm = input.find("[form][data='videos']");
				var uploadFormInput = uploadForm.children("input");
				var uploadButtonUpload = input.find("[button][upload]");
				var uploadButtonSelect = input.find("[button][select]");
				var uploadPreview = contentBox.children("[upload][preview][videos]");
				var info = input.find("[info]");
				var info_name = info.find("[name]");
				var info_playlist = info.find("[playlist]");
				var info_tags = info.find("[tags]");
				var info_description = info.find("[description]");
				info_playlist.hide();
				info_tags.hide();
				info_description.hide();
				info_name.find("[value]").bind('keyup',function() {
					var val = $(this).val();
					if (val != "") {
						info.attr('get','true');
						info_playlist.stop(true, true).slideDown();
						info_tags.stop(true, true).slideDown();
						info_description.stop(true, true).slideDown();
					}else {
						info.attr('get','false');
						info_playlist.stop(true, true).slideUp();
						info_tags.stop(true, true).slideUp();
						info_description.stop(true, true).slideUp();
					}
				});
				if (setup_inputVideos === 0) {
					var requestPlaylistFind = function (input) {
						if (!isset(input)) {
							return false;
						}
						if (input.attr('handling-find') == "true") {
							return false;
						}
						input.attr('handling-find', 'true');
						var doneRequestFunc = function () {
							input.removeAttr('handling-find');
						};
						var data = {'port': 'user', 'type': 'autocomplete', 'path': 'media', 'from': 'playlist', 'value': input.val()};
						$.ajax({
							url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
							type: "POST",
							dataType: "json",
							data: data,
							contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
							success: function (data) {
								console.log(data);
								if (isset(data['return']) && data['return'] === true) {
									input.attr('val', input.val());
									if (isset(data['data']) && countArr(data['data']) > 0) {
										if (isset(data['data']['playlist'])) {
											var founedArr = [];
											ObjLoop: for (var i in data['data']['playlist']) {
												var thisObj = data['data']['playlist'][i];
												if (!isset(thisObj['type']) || !isset(thisObj['name']) || !isset(thisObj['time']) || !isset(thisObj['display'])) {
													continue ObjLoop;
												}
												countThis = countArr(founedArr);
												founedArr[countThis] = {'class': 'tagPlaylist', 'text': thisObj['name'], 'tip': agoDatetime(thisObj['time'], 'ago'), 'tag': {'type': thisObj['type'], 'display': thisObj['display']}};
												if (isset(thisObj['thumbnail'])) {
													founedArr[countThis]['thumbnail'] = thisObj['thumbnail'];
												}
											}
											var boxSuggestOptions = {
												'multiple': false,
												'output': true,
												'title': '<?php print $_language->text('you_may_find', 'ucfirst'); ?>',
												'content': {
													'<?php print $_language->text('playlist', 'ucfirst'); ?>': founedArr
												}
											};
											boxSuggest(input, boxSuggestOptions);
										}
									}
									setTimeout(function() {
										input.removeAttr('val');
									}, 1000);
								}else {
									//.
								}
							}
						}).fail(doneRequestFunc).done(doneRequestFunc);
					}
					info_playlist.find("[value]").donetyping(function () {
						if ($(this).val() !== null && $(this).val() != "" && $(this).val().match(/([a-zA-Z0-9])/ig)) {
							requestPlaylistFind($(this));
						}
					}, 500);
					setup_inputVideos++;
				}
				if (uploadPreview.length > 0) {
					uploadPreview.slideDown();
				}
			}else if (statusType == "cited") {
				function readImageDemo (input) {
				    if (input.files && input.files[0] ) {
				        var FR = new FileReader();
				        FR.onload = function(e) {
				        	var url = e.target.result;
				        	upload.children("[cited-preview]").css('background-image','url('+url+')');
				        };
				        FR.readAsDataURL(input.files[0]);
				    }
				}
				var input = contentBox.children("[input][classify='cited']");
				var uploadForm = input.find("[form][data='cited']");
				var uploadFormInput = uploadForm.children("input");
				var uploadButtonUpload = input.find("[button][upload]");
				var uploadButtonSelect = input.find("[button][select]");
				var uploadPreview = contentBox.children("[upload][preview][cited]");
				var upload = editor.find("[upload][preview][cited]");
				var info = input.find("[info]");
				var cited = editor.find("[cited]");
				var citedAuthor = editor.find("[cited]").find("[author]");
				var citedQuote = editor.find("[cited]").find("[quote]");
				if (upload.length === 0) {
					var previewBox = '<div class="upload cited" upload preview cited> <div class="tab" cited-preview> <div class="quote" quote><span></span></div> <div class="author" author><span></span></div> </div> </div>';
					editor.find("div[content]").children("[input][classify='cited']").after(previewBox);
					var upload = editor.find("div[content]").find("[upload][preview][cited]");
					upload.hide().slideDown();
				}
				citedAuthor.find("[value]").bind('keyup',function() {
					var val = $(this).val();
					if (val != "") {
						info.attr('get', 'true');
					}else {
						info.attr('get', 'false');
					}
					upload.children("[cited-preview]").children("[author]").children("span").html(val);
				});
				citedQuote.find("[value]").bind('keyup', function() {
					var val = $(this).val();
					if (val != "") {
						info.attr('get', 'true');
					}else {
						info.attr('get', 'false');
					}
					upload.children("[cited-preview]").children("[quote]").children("span").html(val.replace(/(\n)/ig,'<br>'));
				});
				if (setup_inputCited === 0) {
					setup_inputCited++;
				}
				if (uploadPreview.length > 0) {
					uploadPreview.slideDown();
				}
			}
			boxMediaOther.slideUp().attr('show','false');
			boxMedia.slideDown().attr('show','true');
			editor.attr('type', statusType);
			arrow.attr('arrow', statusType);
			button.addClass('active');
			editor_mediaPreview();
		}else if (statusType == "post") {
			var feed = $("#gFeeds[feed]");
			var type = editor.attr('type');
			var content = contentBox.find("[status]").children("textarea").val();
			var link = false;
			
			if (type == "status") {
				var data = '';
				var linkPreview = contentBox.find("[upload][preview][link]");
				if (linkPreview.length > 0) {
					console.log(linkPreview.attr('show'));
					if (linkPreview.attr('show') == "true") {
						var link = {
							'display': linkPreview.children("[tag]").attr('tag-display'),
							'url': linkPreview.children("[tag]").attr('tag-url')
						};
					}
				}
			}else if (type == "photos") {
				var input = contentBox.find("[input][classify='photos']");
				var upload = contentBox.find("[upload][preview][photos]");
				var scrapbook = input.find("[scrapbook]");
				if (scrapbook.attr("get") == "true") {
					var name = scrapbook.find("[name]");
					if (name.find("[tag-display]").length > 0) {
						var name = {
							'display': name.find("[tag-display]").attr('tag-display')
						};
					}else {
						var name = name.find("input").val();
					}
					var places = scrapbook.find("[places]");
					if (places.find("[tag]").length > 0) {
						var tag = places.find("[tag]");
						var places = {
							'value': true, 
							'display': tag.attr('tag-display'), 
							'address': tag.attr('tag-address'), 
							'location': tag.attr('tag-location')
						};
					}else {
						var places = '';
					}
					var description = scrapbook.find("[description]");
					if (description.find("textarea").length > 0) {
						var description = description.find("textarea").val();
					}
					var scrapbookValue = true;
					var scrapbookData = {
						'name': name,
						'places': places,
						'description': description
					};
				}else {
					var scrapbookValue = false;
					var scrapbookData = "";
				}
				var scrapbook = {
					'value': scrapbookValue,
					'data': scrapbookData
				};
				var file = [];
				var preview = upload.find("[photos-preview][file]");
				preview.each(function(i) {
					var preview = $(this);
					file.push(JSON.parse(preview.attr('file')));
				});
				var media = {
					'scrapbook': scrapbook,
					'file': file
				};
			}else if (type == "music") {
				var input = contentBox.find("[input][classify='music']");
				var upload = contentBox.find("[upload][preview][music]");
				var info = input.find("[info]");
				if (info.attr("get") == "true") {
					var name = info.find("[name]");
					if (name.find("[value]").length > 0) {
						var name = name.find("[value]").val();
					}
					var singer = info.find("[singer]");
					if (singer.find("[value]").length > 0) {
						var singer = singer.find("[value]").val();
					}
					var album = info.find("[album]");
					if (album.find("[tag-display]").length > 0) {
						var album = {
							'display': album.find("[tag-display]").attr('tag-display')
						};
					}else {
						var album = album.find("input").val();
					}
					var tags = info.find("[tags]");
					if (tags.find("[value]").length > 0) {
						var tags = tags.find("[value]").val();
					}
					var description = info.find("[description]");
					if (description.find("[value]").length > 0) {
						var description = description.find("[value]").val();
					}
					var info_value = true;
					var info_data = {
						'name': name,
						'singer': singer,
						'album': album,
						'tags': tags,
						'description': description
					};
				}else {
					var info_value = false;
					var info_data = "";
				}
				var info = {
					'value': info_value,
					'data': info_data
				};
				var file = [];
				var preview = upload.find("[music-preview][file]");
				preview.each(function(i) {
					var preview = $(this);
					file.push(JSON.parse(preview.attr('file')));
				});
				var media = {
					'info': info,
					'file': file
				};
			}else if (type == "videos") {
				var input = contentBox.find("[input][classify='videos']");
				var upload = contentBox.find("[upload][preview][videos]");
				var info = input.find("[info]");
				if (info.attr("get") == "true") {
					var name = info.find("[name]");
					if (name.find("[value]").length > 0) {
						var name = name.find("[value]").val();
					}
					var playlist = info.find("[playlist]");
					if (playlist.find("[tag-display]").length > 0) {
						var playlist = {
							'display': playlist.find("[tag-display]").attr('tag-display')
						};
					}else {
						var playlist = playlist.find("input").val();
					}
					var tags = info.find("[tags]");
					if (tags.find("[value]").length > 0) {
						var tags = tags.find("[value]").val();
					}
					var description = info.find("[description]");
					if (description.find("[value]").length > 0) {
						var description = description.find("[value]").val();
					}
					var info_value = true;
					var info_data = {
						'name': name,
						'playlist': playlist,
						'tags': tags,
						'description': description
					};
				}else {
					var info_value = false;
					var info_data = "";
				}
				var info = {
					'value': info_value,
					'data': info_data
				};
				var file = [];
				var preview = upload.find("[videos-preview][file]");
				preview.each(function(i) {
					var preview = $(this);
					file.push(JSON.parse(preview.attr('file')));
				});
				var media = {
					'info': info,
					'file': file
				};
			}else if (type == "cited") {
				var input = contentBox.find("[input][classify='cited']");
				var upload = contentBox.find("[upload][preview][cited]");
				var info = input.find("[info]");
				if (info.attr("get") == "true") {
					var author = info.find("[author]");
					if (author.find("[value]").length > 0) {
						var author = author.find("[value]").val();
					}
					var quote = info.find("[quote]");
					if (quote.find("[value]").length > 0) {
						var quote = quote.find("[value]").val();
					}
					var info_value = true;
					var info_data = {
						'author': author,
						'quote': quote
					};
				}else {
					var info_value = false;
					var info_data = "";
				}
				var info = {
					'value': info_value,
					'data': info_data
				};
				var file = [];
				var preview = upload.find("[cited-preview][file]");
				preview.each(function(i) {
					var preview = $(this);
					file.push(JSON.parse(preview.attr('file')));
				});
				var media = {
					'info': info,
					'file': file
				};
			}
			var nav_mood = contentBox.find("[push='mood']");
			if (nav_mood.attr('value') == "true") {
				var push_mood = nav_mood.children("[tag-code]");
				if (push_mood.length === 0) {
					var mood = {
						'text': nav_mood.children("input").val()
					};
				}else {
					var mood = {
						'code': push_mood.attr('tag-code')
					};
				}
			}else {
				var mood = false;
			}
			var nav_usertag = contentBox.find("[push='usertag']");
			if (nav_usertag.attr('value') == "true") {
				var push_usertag = nav_usertag.children("[tag]");
				var usertag = [];
				push_usertag.each(function(i) {
					usertag[i] = {
						'type': null,
						'id': null
					}
					usertag[i]['type'] = $(this).attr('tag-type');
					usertag[i]['id'] = $(this).attr('tag-id');
				});
			}else {
				var usertag = false;
			}
			var nav_places = contentBox.find("[push='places']");
			if (nav_places.attr('value') == "true") {
				var push_places = nav_places.children("[tag-display][tag-address]");
				var places = {
					'display': null,
					'address': null
				};
				places['display'] = push_places.attr('tag-display');
				places['address'] = push_places.attr('tag-address');
			}else {
				var places = false;
			}
			var share = false;
			var push = {
				'mood': mood,
				'usertag': usertag,
				'places': places,
				'link': link,
				'share': share
			}
			var private = {};
			var buttonPrivate = $("#gEditor > .box > .footer > .push > .button.private");
			private['view'] = buttonPrivate.children(".view[private]").attr('private');
			private['comment'] = buttonPrivate.children(".comment[private]").attr('private');
			private['share'] = buttonPrivate.children(".share[private]").attr('private');
			for (var x in private) {
				if (!isset(private[x]) || !inArray(private[x], [1, 2, 3, 4])) {
					private[x] = 3;
				}
			}
			var data = {
				'type': type,
				'content': content,
				'media': media,
				'push': push,
				'private': private
			};
			//.
			if (isset(feed.attr('feed')) && typeof feed.attr('feed') == "string" && typeof JSON.parse(feed.attr('feed')) == "object") {
				var feed = JSON.parse(feed.attr('feed'));
				if (isset(feed['port'])) {
					if (isset(feed['port']['type']) && isset(feed['port']['require']) && typeof feed['port']['type'] == "string") {
						if (feed['port']['type'] == "hashtag" || feed['port']['type'] == "tags") {
							if (typeof feed['port']['require'] == "object") {
								var hashtagAllowObj = [];
								for (var i in feed['port']['require']) {
									if (isset(feed['port']['require'][i][0]) && !isset(feed['port']['require'][i][1])) {
										hashtagAllowObj[countArr(hashtagAllowObj)] = feed['port']['require'][i][0];
									}
								}
								var allowPush = 0;
								var tagsFounded = data['content'].match(/(^|\s)?\#([a-zA-Z0-9\_]+)($|\s)?/ig);
								if (isset(tagsFounded)) {
									for (var x in tagsFounded) {
										tagsFounded[x] = tagsFounded[x].replace(" ", "").replace("#", "");
										for (var y in hashtagAllowObj) {
											if (tagsFounded[x].toString().toLowerCase() == hashtagAllowObj[y].toString().toLowerCase()) {
												allowPush++;
											}
										}
									}
								}
								if (allowPush === 0) {
									var contentPushed = 0;
									for (var s in hashtagAllowObj) {
										if (contentPushed === 0 && !data['content'].match(/(\n)$/) && data['content'].match(/^(\S+)/)) {
											data['content'] = data['content'] + "\n#" + hashtagAllowObj[s];
										}else {
											if (!data['content'].match(/([^\s])$/)) {
												data['content'] = data['content'] + "#" + hashtagAllowObj[s];
											}else {
												data['content'] = data['content'] + " #" + hashtagAllowObj[s];
											}
										}
										contentPushed++;
									}
								}
							}else {
								//.
							}
						}else if (feed['port']['type'] == "nearby" || feed['port']['type'] == "places") {
							if (typeof feed['port']['require'] == "object") {
								if (feed['port']['require']['label'] == "id" && isset(feed['port']['require']['value'])) {
									data['push']['places'] = {};
									data['push']['places']['id'] = feed['port']['require']['value'];
								}else if (feed['port']['require']['label'] == "display" && isset(feed['port']['require']['value'])) {
									data['push']['places'] = {};
									data['push']['places']['display'] = feed['port']['require']['value'];
								}else if (feed['port']['require']['label'] == "address" && isset(feed['port']['require']['value'])) {
									data['push']['places'] = {};
									data['push']['places']['address'] = feed['port']['require']['value'];
								}
							}else {
								//.
							}
						}else {
							//.
						}
					}
				}
			}
			//.
			console.log(data);
			var removeMedia = false;
			if (data['type'] == "music" || data['type'] == "videos") {
				if (data['media']['info']['value'] !== undefined && data['media']['info']['value'] !== false) {
					var mediaPlayer_demoID = upload.find("[file]:first").children("[id][data-setup]:first").attr('id');
					if ($("#" + mediaPlayer_demoID).length > 0) {
						var mediaPlayer_demo = gplayer(mediaPlayer_demoID);
						mediaPlayer_demo.ready(function() {
							mediaPlayer_demo.pause();
							setTimeout(function() {
								mediaPlayer_demo.dispose();
							},0);
						});
					}
				}
			}
			editor_upload({'data': data});
		}
	});
}
var editor_upload = function (object) {
	var error = false,
		editor = $("#gEditor"),
		data = {
		'port': 'feed',
		'type': 'status',
		'action': 'add',
		'obj': object['data']
	};
	if (editor.attr('handling-preview') == "true") {
		popupNotification ({type: 4, title: '<?php print $_language->text("error", "ucfirst"); ?>', description: transferError('ERROR#FEEDS_013')+'.', timeout: '<?php print $_parameter->get("notifyPopup_timeout"); ?>'});
		var error = true;
	}else if (object['data']['type'] == "status" && (!isset(object['data']['content']) || object['data']['content'] === "")) {
		popupNotification ({type: 4, title: '<?php print $_language->text("error", "ucfirst"); ?>', description: transferError('ERROR#FEEDS_010')+'.', timeout: '<?php print $_parameter->get("notifyPopup_timeout"); ?>'});
		var error = true;
	}else if (object['data']['type'] == "music" && object['data']['media']['info']['value'] === false) {
		popupNotification ({type: 4, title: '<?php print $_language->text("error", "ucfirst"); ?>', description: transferError('ERROR#FEEDS_011')+'.', timeout: '<?php print $_parameter->get("notifyPopup_timeout"); ?>'});
		var error = true;
	}else if (object['data']['type'] == "videos" && object['data']['media']['info']['value'] === false) {
		popupNotification ({type: 4, title: '<?php print $_language->text("error", "ucfirst"); ?>', description: transferError('ERROR#FEEDS_011')+'.', timeout: '<?php print $_parameter->get("notifyPopup_timeout"); ?>'});
		var error = true;
	}
	if (error !== true && editor.attr('handing-upload') !== "true") {
		var doneRequestFunc = function () {
			setTimeout(function() {
				process.slideUp();
				content.slideDown();
				editor.removeAttr('handing-upload');
			},100);
		};
		var process = $("#gEditor > .box > .process");
		var content = $("#gEditor > .box > .body, #gEditor > .box > .footer");
		editor.attr('handing-upload', 'true');
		process.slideDown();
		content.slideUp();
		$.ajax({
			url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
			type: "POST",
			data: data,
			dataType: "json",
			success: function(data) {
				if (isset(data['return']) && data['return'] === true) {
					popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('status_has_been_posted','ucfirst'); ?>. <br /> <?php print $_language->text('pull_up_for_updates','ucfirst'); ?>.', global: true, audio: true});
					editor_resetForm();
				}else if (isset(data['return']) && data['return'] === false) {
					if (isset(data['reason'])) {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: ''});
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: ''});
					}
				}else {
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: ''});
				}
			}
		}).fail(doneRequestFunc).done(doneRequestFunc);
	}
}
var editor_changePrivate = function () {
	var buttonPrivate = $("#gEditor > .box > .footer > .push > .button.private");
	var privateView = buttonPrivate.children(".view").attr('private');
	if (!isset(privateView) || typeof privateView !== "number") {
		var privateView = 3;
	}
	var privateComment = buttonPrivate.children(".comment").attr('private');
	if (!isset(privateComment) || typeof privateComment !== "number") {
		var privateComment = 3;
	}
	var privateShare = buttonPrivate.children(".share").attr('private');
	if (!isset(privateShare) || typeof privateShare !== "number") {
		var privateShare = 3;
	}
	buttonPrivate.children(".view").choosePrivate({'type': 'status', 'id': privateView});
	buttonPrivate.children(".comment").choosePrivate({'type': 'status', 'id': privateComment});
	buttonPrivate.children(".share").choosePrivate({'type': 'status', 'id': privateShare});
	var rowsChoose = buttonPrivate.find(".choosePrivate .list > .rows");
	var savePrivateSettings = function (object) {
		if (!isset(object) || !isset(object['type']) || !isset(object['private'])) {
			return false;
		}
		if (!inArray(object['type'], ["view", "comment", "share"]) || !inArray(object['private'], [1, 2, 3, 4])) {
			return false;
		}
		var data = {'port': 'user', 'type': 'info', 'action': 'update', 'rows': [{'label': 'private->status->' + object['type'], 'value': object['private']}]};
		$.ajax({
			url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
			type: "POST",
			dataType: "json",
			data: data,
			success: function (data) {
				if (isset(data['return']) && data['return'] == true) {
					popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('information_has_been_updated','ucfirst'); ?>.'});
				}
			}
		});
	};
	rowsChoose.bind('click', function () {
		var rowsThis = $(this);
		var buttonPrivateThis = rowsThis.parents("[choose-private]").parent("[private]");
		var selectedPrivate = buttonPrivateThis.find(".selected").children("[private]");
		if (isset(selectedPrivate.attr('private')) && typeof selectedPrivate.attr('private') == "string" && typeof JSON.parse(selectedPrivate.attr('private')) == "object") {
			var selectedPrivate = JSON.parse(selectedPrivate.attr('private'));
			buttonPrivateThis.attr('private', selectedPrivate['type']);
			if (buttonPrivateThis.hasClass('view')) {
				var privateType = "view";
			}else if (buttonPrivateThis.hasClass('comment')) {
				var privateType = "comment";
			}else if (buttonPrivateThis.hasClass('share')) {
				var privateType = "share";
			}else {
				return false;
			}
			savePrivateSettings({'type': privateType, 'private': selectedPrivate['type']});
		}else {
			//.
		}
	});
}
var editor_resetForm = function () {
	var editor = $("#gEditor"),
		editorType = editor.attr('type'),
		contentBox = editor.find("[content]");
	if (isset(editorType) && (editorType == "music" || editorType == "videos")) {
		contentBox = editor.find("[content]");
		var upload = contentBox.find("[upload][preview]["+editorType+"]");
		upload.find("["+editorType+"-preview]").removeAttr('file');
		upload.find("["+editorType+"-remove]").removeAttr('file').click();
		var mediaPlayer_demoID = upload.find("[file]:first").children("[id]:first").attr('id');
		if ($("#" + mediaPlayer_demoID).length > 0) {
			var mediaPlayer_demo = gplayer(mediaPlayer_demoID);
			mediaPlayer_demo.ready(function() {
				mediaPlayer_demo.pause();
				setTimeout(function() {
					mediaPlayer_demo.dispose();
				},0);
			});
		}
	}
	var input = editor.find("input");
	input.val('');
	var textarea = editor.find("textarea");
	textarea.val('');
	var file = editor.find("input[type='file']");
	file.files = '';
	var tags = editor.find("[tag-obj]");
	tags.find(".close").click();
	contentBox.find("[push]").attr('value', 'false').children().val('').parent().slideUp();
	contentBox.children("[upload][preview][link]").attr('show','false').slideUp(function() {
		$(this).html('');
	});
	$("#gEditor > .title > .list > .rows[type='status']").click();
}
$(document).ready(function() {
	editor_action();
	editor_autosize();
	editor_pushAddons();
	editor_resetForm();
	editor_changePrivate();
});