function PhotosEditorPopup (object) {
	var popup = $("#PhotosEditorPopup");
	var lengthPopup = popup.length;
	if (lengthPopup === 0) {
		var imgDefault = ' <div class="imgDefault imgDiv" default name="'+object['default']['name']+'"> <img src="'+object['default']['link']+'"> </div> ';
		var imgProcess = ' <div class="imgProcess imgDiv" testing name="'+object['preview']['name']+'"> <img src="'+object['preview']['link']+'"> </div> ';
		var toolbar_filter = ' <div class="box" type="filter"> <div class="list"> <div class="rows demo" filter="1"> <i class="fa"> </i> </div> <div class="rows demo" filter="2"> <i class="fa"> </i> </div> <div class="rows demo" filter="3"> <i class="fa"> </i> </div> <div class="rows demo" filter="4"> <i class="fa"> </i> </div> <div class="rows demo" filter="5"> <i class="fa"> </i> </div> <div class="rows demo" filter="6"> <i class="fa"> </i> </div> <div class="rows demo" filter="7"> <i class="fa"> </i> </div> <div class="rows demo" filter="8"> <i class="fa"> </i> </div> </div> </div> ';
		var toolbar_brightness = ' <div class="box" type="brightness"> <div class="options"> <div class="slider" brightness></div> </div> <div class="text"> <span><?php print $_language->text('custom_brightness', 'ucfirst'); ?>: </span> <span class="value">0</span> </div> </div> ';
		var toolbar_contrast = ' <div class="box" type="contrast"> <div class="options"> <div class="slider" contrast></div> </div> <div class="text"> <span><?php print $_language->text('custom_contrast', 'ucfirst'); ?>: </span> <span class="value">0</span> </div> </div> ';
		var toolbar_rotate = ' <div class="box" type="rotate"> <div class="button" rotate="-90"> <i class="fa fa-rotate-left"></i> <br> <span><?php print $_language->text('rotate_left', 'ucfirst'); ?></span> </div> <div class="button" rotate="+90"> <i class="fa fa-rotate-right"></i> <br> <span><?php print $_language->text('rotate_right', 'ucfirst'); ?></span> </div> </div> ';
		var toolbar = toolbar_filter + toolbar_brightness + toolbar_contrast + toolbar_rotate;
		var popupCode = '<div id="PhotosEditorPopup" secret="'+object['preview']['secret']+'"> <div class="wrapFilter"> </div> <div class="boxContent"> <div class="header"> <span><?php print $_language->text('photos_editor', 'ucfirst'); ?></span> <i class="fa fa-times" close> </i> </div> <div class="body"> <div class="preview" preview>'+imgDefault+imgProcess+'</div> <div class="toolbar" toolbar> <div class="title"> <div type="filter"> <span><?php print $_language->text('filters', 'ucfirst'); ?></span> </div> <div type="brightness"> <span><?php print $_language->text('brightness', 'ucfirst'); ?></span> </div> <div type="contrast"> <span><?php print $_language->text('contrast', 'ucfirst'); ?></span> </div> <div type="rotate"> <span><?php print $_language->text('rotate', 'ucfirst'); ?></span> </div> </div> '+toolbar+' </div> </div> <div class="footer"> <div class="copyright"> <span> <?php print $_parameter->get('PhotosEditorPopup_footer_text'); ?> </span> </div> </div> </div> </div>';
		$("body").append(popupCode);
		var w = $(window);
		var popup = $("#PhotosEditorPopup");
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
		close.bind('click', function(){
			var popup = $("#PhotosEditorPopup");
			popup.attr("exit", "true");
			if (popup.attr('change') == 'true') {
				popupAlert({
					'title': '<?php print $_language->text('photos_editor', 'ucfirst', false); ?>', 
					'content': '<?php print $_language->text('question_photoEditor_close', 'ucfirst', false); ?>',
					'escActive': true,
					'actionTrue': '<?php print $_language->text('apply', 'ucfirst', false); ?>',
					'callbackTrue': function () { 
						var options = {
							'type': 'action',
							'set': 'apply'
						};
						settings(options);
						popup.fadeOut(function(){
							$("body").css('overflow-y','auto');
							popup.remove();
						});
					},
					'actionFalse': '<?php print $_language->text('cancel', 'ucfirst', false); ?>', 
					'callbackFalse': function () { 
						var options = {
							'type': 'action',
							'set': 'cancel'
						};
						settings(options);
						popup.fadeOut(function(){
							$("body").css('overflow-y','auto');
							popup.remove();
						});
					}
				});
			}else {
				popup.fadeOut(function(){
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
		var popup = $("#PhotosEditorPopup");
		var button = popup.find(".toolbar").find(".title").children("div");
		var box = popup.find(".toolbar").find(".box");
		box.hide();
		button.bind('click', function(){
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
		var popup = $("#PhotosEditorPopup");
		var toolbar = popup.find("[toolbar]");
		var box = toolbar.find("[type][active='true']");
		if (box.attr('type') == 'filter') {
			box.find("[filter]").bind('click', function(){
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
			box.find("[rotate]").bind('click', function(){
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
		var popup = $("#PhotosEditorPopup");
		var filter = popup.find(".toolbar").find(".box[type='filter']");
		filter.find("[filter]").removeClass('active');
		var brightness = popup.find(".toolbar").find(".box[type='brightness']");
		brightness.find("[brightness]").attr('brightness', 0).slider({value: 0});
		var rotate = popup.find(".toolbar").find(".box[type='rotate']");
		rotate.find("[rotate]").removeClass('active');
	}
	function addButton () {
		var button = '<div class="buttonAction" action> <div class="apply _tt-we e" title="<?php print $_language->text('apply', 'ucfirst'); ?>" button="apply"> <i class="fa"> </i> </div> <div class="cancel  _tt-we e" title="<?php print $_language->text('cancel', 'ucfirst'); ?>" button="cancel"> <i class="fa"> </i> </div> </div>';
		return button;
	}
	function actionButton () {
		var popup = $("#PhotosEditorPopup");
		var button = popup.find("[preview]").children("[action]").children("[button]");
		button.bind('click', function(){
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
		var popup = $("#PhotosEditorPopup");
		var loading = popup.find("[preview]").find("[loading]");
		if(loading.length === 0 && type == 'show'){
			var code = '<div class="loading" loading> <img src="<?php print $_tool->links('photos/raw/static/loading_w_s1_c777.gif'); ?>"> </div>';
			popup.find("[preview]").append(code);
			var loading = popup.find("[preview]").find("[loading]");
			loading.hide().fadeIn();
		}else if(loading.length > 0 && type == 'show'){
			loading.fadeIn();
		}else if(loading.length > 0 && type == 'hide'){
			loading.fadeOut();
		}
	}
	function settings (object) {
		var popup = $("#PhotosEditorPopup");
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
				if(object['layer'] == 'filter' || object['layer'] == 'brightness' || object['layer'] == 'contrast' || object['layer'] == 'rotate'){
					data['layer'] = object['layer'];
					data['value'] = object['value'];
				}
				loading('show');
				testing.children('img').addClass('blur');
				$.ajax({
					url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
					type: 'POST',
					data: data,
					dataType: 'json',
					success: function(data) {
						console.log(data);
						if (data['return'] == true) {
							testing.children('img').reloadPhotos();
							var preview = popup.children(".boxContent").children(".body").children("[preview]");
							if (preview.find('[action]').length === 0){
								preview.append(addButton());
								actionButton();
								setupTooltip();
							}
						}
					}
				}).done(function(){
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
					url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
					type: 'POST',
					data: data,
					dataType: 'json',
					success: function(data) {
						console.log(data);
						if (data['return'] == true) {
							popup.removeAttr('change');
							testing.children('img').reloadPhotos();
							idefault.children('img').reloadPhotos();
							var preview = $("[photos-preview][file]");
							preview.each(function(){
								var preview = $(this);
								var fileInfo = JSON.parse(preview.attr('file'));
								if (fileInfo['secret'] == secret) {
									preview.find("[img]").reloadPhotos({type: 'bg'});
								}
							});
							var preview = popup.children(".boxContent").children(".body").children("[preview]");
							if (preview.find('[action]').length > 0){
								preview.find('[action]').children("div").mouseout();
								preview.find('[action]').fadeOut(function(){
									$(this).remove();
								});
							}
						}
					}
				}).done(function(){
					popup.attr('handing','false');
					loading('hide');
					resetValue();
				});
			}
		}
	}
}
function editor_autosize () {
	$("#gEditor .ip_as").autosize();
}
function editor_pushAddons (callback) {
	var editor = $("#gEditor");
	var button = editor.find("[editor-push]");
	button.bind('click', function(){
		var toggle = false;
		var button = $(this);
		var push = button.attr('editor-push');
		var div = editor.find("div[content]");
		if(push == 'mood'){
			var input = div.children("div[push='mood']");
			if(input.length === 0){
				div.children("div:last").after('<div class="push" push="mood" value="true"> <input class="ip_s1 ip_as" type="text" placeholder="<?php print $_language->text('what_do_you_doing', 'ucfirst'); ?>" input /> </div>');
			}else {
				input.slideToggle();
				var toggle = true;
			}
			var input = div.children("div[push='mood']");
			input.children("input").select();
			editor_tagMood();
		}else if(push == 'usertag'){
			var input = div.children("div[push='usertag']");
			if(input.length === 0){
				div.children("div:last").after('<div class="push" push="usertag" value="true"> <input class="ip_s1 ip_as" type="text" placeholder="<?php print $_language->text('who_with_you', 'ucfirst'); ?>" input /> </div>');
			}else {
				input.slideToggle();
				var toggle = true;
			}
			var input = div.children("div[push='usertag']");
			input.children("input").select();
			editor_tagFriends();
		}else if(push == 'places'){
			var input = div.children("div[push='places']");
			if(input.length === 0){
				div.children("div:last").after('<div class="push" push="places" value="true"> <input class="ip_s1 ip_as" type="text" placeholder="<?php print $_language->text('where_are_you', 'ucfirst'); ?>" input /> </div>');
			}else {
				input.slideToggle();
				var toggle = true;
			}
			var input = div.children("div[push='places']");
			input.children("input").select();
			editor_tagPlaces();
		}
		if(toggle == true && input.attr('value') == 'true'){
			input.attr('value', 'false');
		}else {
			input.attr('value', 'true');
		}
	});
}
function editor_tagMood (selector) {
	if (selector == undefined) {
		var editor = $("#gEditor");
		var div = editor.find("div[content]");
		var input = div.children("div[push='mood']").children("input[input]");
	}else {
		var input = $(selector);
	}
	input.AutoComplete({'path': 'mood', 'from': 'all', 'output': true, 'multiple': false});
}
function editor_tagFriends (selector) {
	if (selector == undefined) {
		var editor = $("#gEditor");
		var div = editor.find("div[content]");
		var input = div.children("div[push='usertag']").children("input[input]");
	}else {
		var input = $(selector);
	}
	input.AutoComplete({'path': 'info', 'from': 'friends', 'output': true, 'multiple': true});
}
function editor_tagPlaces (selector) {
	if (selector == undefined) {
		var editor = $("#gEditor");
		var div = editor.find("div[content]");
		var input = div.children("div[push='places']").children("input[input]");
	}else {
		var input = $(selector);
	}
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
							var img = '<?php print $_tool->links("maps/raw/places/thumbnail/"); ?>title='+img+'&size=100&format=gif';
							var preview = '<?php print $_tool->links("maps/raw/places/staticmap/"); ?>location='+location+'&zoom=15&size=300x300&maptype=roadmap&markers=color:red%7C'+location+'&format=gif';
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
	}, 500);
}
function editor_mediaUpload (object) {
    var editor = $("#gEditor");
    if (object['format'] == 'photos' && object['type'] == 'preview') {
        editor.attr('handling-preview', 'true');
        var upload = $("#gEditor > .box > .body[content] > [upload][preview][photos]");
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
                var code = " <div class='preview' photos-preview file='" + JSON.stringify(fileInfo) + "'> <span class='_tt s' title='<small><?php print $_language->text('tag_photos', 'ucfirst'); ?></small>' tag></span> <span class='_tt s' title='<small><?php print $_language->text('edit_photos', 'ucfirst'); ?></small>' edit></span> <span class='_tt s' title='<small><?php print $_language->text('click_to_close', 'ucfirst'); ?></small>' close></span> <div style='background-image: url(" + rows['link'] + ");' img></div> <div class='filter'></div> </div> ";
                upload.find("[photos-add]").first().before(code);
                var li = upload.find("[photos-preview][file='" + JSON.stringify() + "']");
                li.hide().show();
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
        imgPreview.find("[close]").bind('click', function() {
            var file = JSON.parse($(this).parents("[photos-preview]").attr("file"));
            previewRemove('photos', [file]);
        });
        imgPreview.find("[tag]").bind('click', function() {
        	var img = $(this);
            var file = JSON.parse(img.parents("[photos-preview]").attr("file"));
           	if (img.attr('handling-tag') != "true" && file['secret'] !== undefined && file['name'] !== undefined) {
           		img.attr('handling-tag', 'true');
            	var data = { 'token': '<?php print $g_client['token']['action']['photos']; ?>', 'port': 'photos', 'type': 'analysis', 'action': 'getFaces', 'secret': file['secret'], 'name': file['name']};
                $.ajax({
                    url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
                    type: 'POST',
                    data: data,
                    dataType: 'json',
                    success: function(data) {
                        if (data['return'] !== undefined && data['return'] == true) {
                            console.log(data);
                        }else {
                        	//.
                        }
                    }
                }).done(function(){
                    img.removeAttr('handling-tag');
               	});
           	}
        });
        imgPreview.find("[edit]").bind('click', function() {
            var file = JSON.parse($(this).parents("[photos-preview]").attr("file"));
            var secret = file['secret'];
            var name = file['name'];
            previewDemo('photos', secret, name);
        });
        editor.removeAttr('handling-preview');
    }else if (object['format'] == 'music' && object['type'] == 'preview') {
        editor.attr('handling-preview', 'true');
        var upload = $("#gEditor > .box > .body[content] > [upload][preview][music]");
        for (var i = 0; i < 1; i++) {
            var rows = object['data'];
            var fileInfo = { 'type': rows['type'], 'local': rows['local'], 'verify': rows['verify'], 'secret': rows['secret'], 'name': rows['name'], 'mime': rows['mine'], 'link': rows['link']};
            var demo = upload.find("[music-preview]");
            var playerID = "demo_musicPlayer_" + fileInfo['secret'];
            var playerCode = " <audio id='" + playerID + "' class='gplayer-skin video' controls preload='auto' width='100%' height='275' data-setup='{}'> <source src='" + rows['link'] + "' type='" + rows['mime'] + "'> </audio> ";
            demo.attr('file', JSON.stringify(fileInfo)).html('').html(playerCode);
            setTimeout(function() {
                var options = {
                    'controls': true,
                    'autoplay': false,
                    'preload': 'auto',
                    'techOrder': ['html5', 'flash', 'silverlight']
                };
                if ($("#" + playerID).length > 0) {
                    var demo_musicPlayerThis = gplayer(playerID, options);
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
                    if ($(this).attr('file') !== undefined && $(this).attr('file') != null && typeof JSON.parse($(this).attr('file')) == "object" && $(this).children("[id]").length > 0) {
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
    }else if (object['format'] == 'videos' && object['type'] == 'preview') {
        editor.attr('handling-preview', 'true');
        var upload = $("#gEditor > .box > .body[content] > [upload][preview][videos]");
        for (var i = 0; i < 1; i++) {
            var rows = object['data'];
            var fileInfo = { 'type': rows['type'], 'local': rows['local'], 'verify': rows['verify'], 'secret': rows['secret'], 'name': rows['name'], 'mime': rows['mine'], 'link': rows['link'], 'thumbnail': rows['thumbnail'] };
            var demo = upload.find("[videos-preview]");
            var playerID = "demo_videosPlayerThis_" + fileInfo['secret'];
            var playerCode = " <video id='" + playerID + "' class='gplayer-skin video' controls preload='auto' width='100%' height='275' data-setup='{}'> <source src='" + rows['link'] + "' type='" + rows['mime'] + "'> </video> ";
            demo.attr('file', JSON.stringify(fileInfo)).html('').html(playerCode);
            setTimeout(function() {
                var options = {
					'controls': true,
					'autoplay': false,
					'preload': 'auto',
					'poster': fileInfo['thumbnail'],
					'techOrder': ['html5', 'flash', 'silverlight'],
				};
                console.log(fileInfo['thumbnail']);
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
                    if ($(this).attr('file') !== undefined && $(this).attr('file') != null && typeof JSON.parse($(this).attr('file')) == "object" && $(this).children("[id]").length > 0) {
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
    }else if (object['format'] == 'cited' && object['type'] == 'preview') {
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
        if (format == 'photos') {
            var img = $('[photos-preview][secret="' + secret + '"][name="' + name + '"]');
            var handing = img.attr('handing');
            if (handing != 'true') {
            	img.attr('handing', 'true');
                var data = { 'token': '<?php print $g_client['token']['action']['photos']; ?>', 'port': 'photos', 'type': 'cache', 'action': 'copy', 'secret': secret, 'name': name};
                $.ajax({
                    url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
                    type: 'POST',
                    data: data,
                    dataType: 'json',
                    success: function(data) {
                        if (data['return'] !== undefined && data['return'] == true) {
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
                            PhotosEditorPopup(options);
                        }
                    }
                }).done(function(){
                    img.removeAttr('handing');
                });
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
                	if (file !== undefined && file != null && !inArray(file, key)) {
                   		key.push(file);
                	}
                }
            });
            if (Object.keys(key).length > 0) {
                var data = { 'token': '<?php print $g_client['token']['action']['photos']; ?>', 'port': 'photos', 'type': 'cache', 'action': 'push', 'file': key};
                $.ajax({
                    url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
                    type: 'POST',
                    data: data,
                    dataType: 'json',
                    success: function(data) {
                        console.log(data);
                        if (data['return'] !== undefined && data['return'] == true) {
                            //.
                        } else {
                            //.
                        }
                    }
                }).done(function(){
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
                	if (file !== undefined && file != null && !inArray(file, key)) {
                    	key.push(file);
					}
				}
            });
            if (Object.keys(key).length > 0) {
            	var data = { 'token': '<?php print $g_client['token']['action']['videos']; ?>', 'port': 'videos', 'type': 'cache', 'action': 'push', 'file': key };
                $.ajax({
                    url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
                    type: 'POST',
                    data: data,
                    dataType: 'json',
                    success: function(data) {
                        console.log(data);
                        if (data['return'] !== undefined && data['return'] == true) {
                            //.
                        }else {
                            //.
                        }
                    }
                }).done(function(){
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
	                if (file !== undefined && file != null && !inArray(file, key)) {
	                    key.push(file);
	                }
                }
            });
            if (Object.keys(key).length > 0) {
                var data = { 'token': '<?php print $g_client['token']['action']['music']; ?>', 'port': 'music', 'type': 'cache', 'action': 'push', 'file': key };
                $.ajax({
                    url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
                    type: 'POST',
                    data: data,
                    dataType: 'json',
                    success: function(data) {
                        console.log(data);
                        if (data['return'] !== undefined && data['return'] == true) {
                            //.
                        } else {
                            //.
                        }
                    }
                }).done(function(){
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
            }, <?php print $_parameter->get('media_cache_time_push_ms'); ?> );
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
                    if (buttonAddSelect.attr('handling') != 'true') {
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
            if (format == 'photos') {
            	console.log(file);
                var upload = $("#gEditor > .box > .body[content] > [upload][preview][photos]");
                for (var i in file) {
                    var img = upload.find("[photos-preview][file='" + JSON.stringify(file[i]) + "']");
                    if (img.attr('handing') != 'true') {
                        img.attr('handing', 'true');
                    } else {
                        delete file[i];
                    }
                }
                console.log(file);
                if (Object.keys(file).length > 0) {
                    var data = { 'port': 'photos', 'type': 'cache', 'action': 'delete', 'file': file, 'token': '<?php print $g_client['token']['action']['photos']; ?>' };
                    $.ajax({
                        url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
                        type: 'POST',
                        data: data,
                        dataType: 'json',
                        success: function(data) {
                            if (data['return'] == true) {
                                if (data['data'] != null && typeof data['data'] == 'object' && Object.keys(data['data']).length > 0) {
                                    for (var i in data['data']) {
                                        var thisData = data['data'][i];
                                        if (thisData['return'] == true) {
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
                            } else {
                                //.
                            }
                        }
                    }).done(function() {
                        for (var i in file) {
                            var img = upload.find("[photos-preview][file]");
                            img.each(function() {
                                var img = $(this);
                                var imgInfo = JSON.parse(img.attr('file'));
                                if (file[i]['type'] == imgInfo['type'] && file[i]['local'] == imgInfo['local'] && file[i]['secret'] == imgInfo['secret'] && file[i]['name'] == imgInfo['name']) {
                                    img.attr('handing', 'false');
                                    img.find("[close]").mouseout();
                                }
                            });
                        }
                    });
                }
            } else if (format == 'music') {
                var upload = $("#gEditor > .box > .body[content] > [upload][preview][music]");
                for (var i in file) {
                    var musik = upload.find("[music-preview][file='" + JSON.stringify(file[i]) + "']");
                    if (musik.attr('handing') != 'true') {
                        musik.attr('handing', 'true');
                    } else {
                        delete file[i];
                    }
                }
                if (Object.keys(file).length > 0) {
                    var data = { 'port': 'music', 'type': 'cache', 'action': 'delete', 'file': file, 'token': '<?php print $g_client['token']['action']['music']; ?>'};
                    $.ajax({
                        url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
                        type: 'POST',
                        data: data,
                        dataType: 'json',
                        success: function(data) {
                            console.log(data);
                            if (data['return'] == true) {
                                if (data['data'] != null && typeof data['data'] == 'object' && Object.keys(data['data']).length > 0) {
                                    for (var i in data['data']) {
                                        var thisData = data['data'][i];
                                        if (thisData['return'] == true) {
                                            upload.find("[music-preview][file]").each(function() {
                                                var musikThis = $(this);
                                                var musikInfo = JSON.parse(musikThis.attr('file'));
                                                if (thisData['data']['type'] == musikInfo['type'] && thisData['data']['local'] == musikInfo['local'] && thisData['data']['secret'] == musikInfo['secret'] && thisData['data']['name'] == musikInfo['name']) {
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
                                                                if (buttonAddSelect.attr('handling') != 'true') {
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
                                }
                            } else {
                                //.
                            }
                        },
                        error: function(request, status, error) {
                            console.log(request.responseText);
                        }
                    }).done(function() {
                        for (var i in file) {
                            var musik = upload.find("[music-preview][file]");
                            musik.each(function() {
                                var musik = $(this);
                                var musikInfo = JSON.parse(musik.attr('file'));
                                if (file[i]['type'] == musikInfo['type'] && file[i]['local'] == musikInfo['local'] && file[i]['secret'] == musikInfo['secret'] && file[i]['name'] == musikInfo['name']) {
                                    musik.attr('handing', 'false');
                                    musik.find("[close]").mouseout();
                                }
                            });
                        }
                    });
                }
            } else if (format == 'videos') {
                var upload = $("#gEditor > .box > .body[content] > [upload][preview][videos]");
                for (var i in file) {
                    var vio = upload.find("[videos-preview][file='" + JSON.stringify(file[i]) + "']");
                    if (vio.attr('handing') != 'true') {
                        vio.attr('handing', 'true');
                    } else {
                        delete file[i];
                    }
                }
                if (Object.keys(file).length > 0) {
                    var data = { 'port': 'videos', 'type': 'cache', 'action': 'delete', 'file': file, 'token': '<?php print $g_client['token']['action']['videos']; ?>'};
                    $.ajax({
                        url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
                        type: 'POST',
                        data: data,
                        dataType: 'json',
                        success: function(data) {
                            console.log(data);
                            if (data['return'] == true) {
                                if (data['data'] != null && typeof data['data'] == 'object' && Object.keys(data['data']).length > 0) {
                                    for (var i in data['data']) {
                                        var thisData = data['data'][i];
                                        if (thisData['return'] == true) {
                                            upload.find("[videos-preview][file]").each(function() {
                                                var vioThis = $(this);
                                                var vioInfo = JSON.parse(vioThis.attr('file'));
                                                if (thisData['data']['type'] == vioInfo['type'] && thisData['data']['local'] == vioInfo['local'] && thisData['data']['secret'] == vioInfo['secret'] && thisData['data']['name'] == vioInfo['name']) {
                                                    vioThis.hide(250, function() {
                                                        $(this).remove();
                                                        if (upload.children("[videos-preview]").length === 0) {
                                                            upload.children("[button]").children("[videos-remove],[videos-edit]").hide('250', function() {
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
                                                                if (buttonAddSelect.attr('handling') != 'true') {
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
                                            });
                                        }
                                    }
                                }
                            } else {
                                //.
                            }
                        },
                        error: function(request, status, error) {
                            console.log(request.responseText);
                        }
                    }).done(function() {
                        for (var i in file) {
                            var vio = upload.find("[videos-preview][file]");
                            vio.each(function() {
                                var vio = $(this);
                                var vioInfo = JSON.parse(vio.attr('file'));
                                if (file[i]['type'] == vioInfo['type'] && file[i]['local'] == vioInfo['local'] && file[i]['secret'] == vioInfo['secret'] && file[i]['name'] == vioInfo['name']) {
                                    vio.attr('handing', 'false');
                                    vio.find("[close]").mouseout();
                                }
                            });
                        }
                    });
                }
            }else if (format == 'cited') {
                var upload = $("#gEditor > .box > .body[content] > [upload][preview][cited]");
                var fileObj = {};
                for (var i in file) {
                    var cited = upload.find("[cited-preview][name='" + file[i] + "']");
                    if (cited.attr('handing') != 'true') {
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
                        url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
                        type: 'POST',
                        data: data,
                        dataType: 'json',
                        success: function(data) {
                            console.log(data);
                            if (data['return'] != undefined && data['return'] == true) {
                            	var del = 0;
                            	for (var i in data['data']) {
                            		if (del > 0) {
                            			return;
                            		}
                            		if (data['data'][i]['return'] != undefined && data['data'][i]['return'] == true) {
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
										if (buttonAddSelect.attr('handling') != 'true') {
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
function editor_mediaPreview () {
	var editor = $("#gEditor");
	if(editor.attr('type') == 'photos'){
		editor.attr('handling-preview','true');
		var form = editor.find("[content]").find("[input][classify='photos']").find("[form]");
		var process = editor.find("[content]").find("[input][classify='photos']").find("[process]");
		var data = form.serializeArray();
		data.push(
			{'name': 'port', 'value': 'photos'},
			{'name': 'type', 'value': 'cache'},
			{'name': 'action', 'value': 'add'},
			{'name': 'token', 'value': '<?php print $g_client['token']['action']['photos']; ?>'}
		);
		form.ajaxForm({
			url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			type: 'POST',
			data: data,
			dataType: 'json',
			beforeSend: function() {
			    
			},
			uploadProgress: function(event, position, total, percentComplete) {
				if(process.css('display') == 'none'){
					process.slideDown();
				}
				process.children("div").width(percentComplete+'%');
				if(percentComplete == 100){
					process.slideUp(function(){
						process.children("div").width(0);
					});
					editor.find("div[content]").children("[input][classify='photos']").children("[form][data='photos']").children("input").val('');
				}
			    console.log(percentComplete);
			},
			success: function(data) {
			    console.log(data);
			    if(data['return'] !== undefined && data['return'] == true && data['data'] !== null && Object.keys(data['data']).length > 0){
			    	var objects = {
			    		'format': 'photos', 
			    		'type': 'preview', 
			    		'data': data['data']
			    	};
				    form.prevAll("[button]").slideUp(function(){
			    		$(this).remove();
			    	});
				    form.find('input').files = '';
					var upload = editor.find("[upload][preview][photos]");
					if(upload.length === 0){
						var previewBox = '<div class="upload photos" upload preview photos> <div class="list"> <div class="preview add upload action" photos-add upload><i></i></div> <div class="preview add select action" photos-add select><i></i></div> </div> </div>';
						editor.find("div[content]").children("[input][classify='photos']").after(previewBox);
						var upload = editor.find("div[content]").find("[upload][preview][photos]");
						upload.hide().slideDown();
						var buttonAddUpload = upload.find("[photos-add][upload]");
						buttonAddUpload.bind('click', function(){
							editor.find("[input][classify='photos']").find("[form][data='photos']").find("input").click();
						});
						var buttonAddSelect = upload.find("[photos-add][select]");
						buttonAddSelect.bind('click', function(){
							var buttonAddSelect = $(this);
							if (buttonAddSelect.attr('handling') != 'true') {
								buttonAddSelect.attr('handling', 'true');
								editor_selectPhotos();
								setTimeout(function(){
									buttonAddSelect.attr('handling', 'false');
								},250);
							}
						});
						setupTooltip();
					}
					editor.attr('handling-preview','false');
					editor_mediaUpload(objects);
			    }
			}
		});
	}else if (editor.attr('type') == 'music') {
		editor.attr('handling-preview','true');
		var form = editor.find("[content]").find("[input][classify='music']").find("[form]");
		var process = editor.find("[content]").find("[input][classify='music']").find("[process]");
		var data = form.serializeArray();
		data.push(
			{'name': 'port', 'value': 'music'},
			{'name': 'type', 'value': 'cache'},
			{'name': 'action', 'value': 'add'},
			{'name': 'token', 'value': '<?php print $g_client['token']['action']['music']; ?>'}
		);
		form.ajaxForm({
			url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			type: 'POST',
			data: data,
			dataType: 'json',
			beforeSend: function() {
			    
			},
			uploadProgress: function(event, position, total, percentComplete) {
				if(process.css('display') == 'none'){
					process.slideDown();
				}
				process.children("div").width(percentComplete+'%');
				if(percentComplete == 100){
					process.slideUp(function(){
						process.children("div").width(0);
					});
					editor.find("div[content]").children("[input][classify='music']").children("[form][data='music']").children("input").val('');
				}
			    console.log(percentComplete);
			},
			success: function(data) {
			    console.log(data);
			    if (data['return'] !== undefined && data['data'] !== null && data['return'] == true && Object.keys(data['data']).length > 0){
			    	var show = 0;
			    	for (var i in data['data']) {
			    		if (show > 0) {
			    			return;
			    		}
			    		var rows = data['data'][i];
				    	if (rows['return'] != undefined && rows['return'] == false) {
				    		if (rows['reason'] != undefined) {

				    		}else {
				    		
				    		}
				    	}else {
					    	var object = {
					    		'format': 'music', 
					    		'type': 'preview', 
					    		'data': rows
					    	};
					    	form.prevAll("[button]").slideUp(function(){
					    		$(this).remove();
					    	});
					    	form.find('input').files = '';
							var upload = editor.find("[upload][preview][music]");
							if(upload.length === 0){
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
							editor.attr('handling-preview','false');
							editor_mediaUpload(object);
							show++;
				    	}
			    	}
			    }
			}
		});
	}else if (editor.attr('type') == 'videos') {
		editor.attr('handling-preview','true');
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
			url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			type: 'POST',
			data: data,
			dataType: 'json',
			beforeSend: function() {
			    
			},
			uploadProgress: function(event, position, total, percentComplete) {
				if(process.css('display') == 'none'){
					process.slideDown();
				}
				process.children("div").width(percentComplete+'%');
				if(percentComplete == 100){
					process.slideUp(function(){
						process.children("div").width(0);
					});
					editor.find("div[content]").children("[input][classify='videos']").children("[form][data='videos']").children("input").val('');
				}
			    console.log(percentComplete);
			},
			success: function(data) {
			    console.log(data);
			    if (data['return'] !== undefined && data['data'] !== null && data['return'] == true && Object.keys(data['data']).length > 0){
			    	var show = 0;
			    	for (var i in data['data']) {
			    		if (show > 0) {
			    			return;
			    		}
			    		var rows = data['data'][i];
				    	if (rows['return'] != undefined && rows['return'] == false) {
				    		if (rows['reason'] != undefined) {

				    		}else {
				    		
				    		}
				    	}else {
					    	var object = {
					    		'format': 'videos', 
					    		'type': 'preview', 
					    		'data': rows
					    	};
					    	form.prevAll("[button]").slideUp(function(){
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
							editor.attr('handling-preview','false');
							editor_mediaUpload(object);
							show++;
				    	}
			    	}
			    }
			}
		});
	}else if (editor.attr('type') == 'cited') {
		editor.attr('handling-preview','true');
		var form = editor.find("[content]").find("[input][classify='cited']").find("[form]");
		var process = editor.find("[content]").find("[input][classify='cited']").find("[process]");
		var data = form.serializeArray();
		data.push(
			{'name': 'port', 'value': 'photos'},
			{'name': 'type', 'value': 'cache'},
			{'name': 'action', 'value': 'add'},
			{'name': 'token', 'value': '<?php print $g_client['token']['action']['photos']; ?>'},
			{'name': 'resize', 'value': [<?php print $_parameter->get('cited_photosSize_length'); ?>]}
		);
		form.ajaxForm({
			url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			type: 'POST',
			data: data,
			dataType: 'json',
			beforeSend: function() {
			    
			},
			uploadProgress: function(event, position, total, percentComplete) {
				if(process.css('display') == 'none'){
					process.slideDown();
				}
				process.children("div").width(percentComplete+'%');
				if(percentComplete == 100){
					process.slideUp(function(){
						process.children("div").width(0);
					});
					editor.find("div[content]").children("[input][classify='cited']").children("[form][data='cited']").children("input").val('');
				}
			    console.log(percentComplete);
			},
			success: function(data) {
			    console.log(data);
			    if (data['return'] !== undefined && data['data'] !== null && data['return'] == true && Object.keys(data['data']).length > 0){
			    	var object = {
			    		'format': 'cited', 
			    		'type': 'preview', 
			    		'data': data['data']
			    	};
			    	var upload = editor.find("[upload][preview][cited]");
			    	form.prevAll("[button]").slideUp(250, function(){
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
function editor_selectPhotos () {
	var ExOptions = {
		"port": "photos",
		"data": {
			"type": "cache",
			"callback": function () {
				var keyEvent = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>);
				var Ex = $("#ExplorerPopup");
				Ex.attr("keyEvent", keyEvent);
				function checkKeyEvent (k) {
					var Ex = $("#ExplorerPopup");
					var gK = Ex.attr("keyEvent");
					if (gK == k) {
						return true;
					}else {
						return false;
					}
				}
				var rows = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file]");
				rows.each(function(){
					var rows = $(this);
					rows.bind('click', function(){
						var thisRows = $(this);
						var thisFile = JSON.parse(rows.attr('file'));
						if (thisRows.attr('file-selected') != 'true') {
							thisRows.attr('file-selected', 'true');
						}else {
							thisRows.attr('file-selected', 'false');
						}
					});
				});
				var fileUsing = [];
				var filePreview = $("#gEditor > .box > .body[content] > .upload.photos .list [photos-preview][file]");
				filePreview.each(function(){
					var filePreview = $(this);
					fileUsing.push(JSON.parse(filePreview.attr('file')));
				});
				var fileCache = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file]");
				fileCache.each(function(){
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
				$(document).ready(function(){
					$(document).keypress(function(e){ 
					    var keyCode = (e.keyCode ? e.keyCode : e.which);   
					    if (keyCode == 13 && checkKeyEvent(keyEvent) == true) {
							var editor = $("#gEditor");
							var form = editor.find("[content]").find("[input][classify='photos']").find("[form]");
							var closeButton = $("#ExplorerPopup > .boxContent > .header [close]");
							form.prevAll("[button]").slideUp(function(){
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
								buttonAddUpload.bind('click', function(){
									editor.find("[input][classify='photos']").find("[form][data='photos']").find("input").click();
								});
								var buttonAddSelect = upload.find("[photos-add][select]");
								buttonAddSelect.bind('click', function(){
									var buttonAddSelect = $(this);
									if (buttonAddSelect.attr('handling') != 'true') {
										buttonAddSelect.attr('handling', 'true');
										editor_selectPhotos();
										setTimeout(function(){
											buttonAddSelect.removeAttr('handling');
										},250);
									}
								});
								setupTooltip();
							}
							var data = [];
							var rows = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file][file-selected='true']");
							rows.each(function(){
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
function editor_selectMusic () {
	var ExOptions = {
		"port": "music",
		"data": {
			"type": "cache",
			"callback": function() {
				var keyEvent = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>);
				var Ex = $("#ExplorerPopup");
				Ex.attr("keyEvent", keyEvent);
				function checkKeyEvent (k) {
					var Ex = $("#ExplorerPopup");
					var gK = Ex.attr("keyEvent");
					if (gK == k) {
						return true;
					}else {
						return false;
					}
				}
				var rows = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file]");
				rows.each(function(){
					var rows = $(this);
					rows.bind('click', function(){
						var thisRows = $(this);
						var thisFile = JSON.parse(thisRows.attr('file'));
						if (thisRows.attr('file-selected') != 'true') {
							$("#ExplorerPopup > .boxContent > .body .grid > .rows[file]").attr('file-selected', 'false');
							thisRows.attr('file-selected', 'true');
						}else {
							thisRows.attr('file-selected', 'false');
						}
					});
				});
				var fileUsing = [];
				var filePreview = $("#gEditor > .box > .body[content] > .upload.music .list [music-preview][file]");
				filePreview.each(function(){
					var filePreview = $(this);
					fileUsing.push(JSON.parse(filePreview.attr('file')));
				});
				var fileCache = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file]");
				fileCache.each(function(){
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
				$(document).ready(function(){
					$(document).keypress(function(e){ 
						var keyCode = (e.keyCode ? e.keyCode : e.which);   
					    if (keyCode == 13 && checkKeyEvent(keyEvent) == true) {
							var editor = $("#gEditor");
							var form = editor.find("[content]").find("[input][classify='music']").find("[form]");
							var closeButton = $("#ExplorerPopup > .boxContent > .header [close]");
							var data = [];
							var rows = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file][file-selected='true']");
							rows.each(function(){
								data.push(JSON.parse($(this).attr('file')));
								return false;
							});
							var object = {
					    		'format': 'music', 
					    		'type': 'preview', 
					    		'data': data[0]
					    	};
					    	form.prevAll("[button]").slideUp(function(){
					    		$(this).remove();
					    	});
					    	form.find('input').files = '';
							var upload = editor.find("[upload][preview][music]");
							if(upload.length === 0){
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
function editor_selectVideos () {
	var ExOptions = {
		"port": "videos",
		"data": {
			"type": "cache",
			"callback": function() {
				var keyEvent = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>);
				var Ex = $("#ExplorerPopup");
				Ex.attr("keyEvent", keyEvent);
				function checkKeyEvent (k) {
					var Ex = $("#ExplorerPopup");
					var gK = Ex.attr("keyEvent");
					if (gK == k) {
						return true;
					}else {
						return false;
					}
				}
				var rows = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file]");
				rows.each(function(){
					var rows = $(this);
					rows.bind('click', function(){
						var thisRows = $(this);
						var thisFile = JSON.parse(thisRows.attr('file'));
						if (thisRows.attr('file-selected') != 'true') {
							$("#ExplorerPopup > .boxContent > .body .grid > .rows[file]").attr('file-selected', 'false');
							thisRows.attr('file-selected', 'true');
						}else {
							thisRows.attr('file-selected', 'false');
						}
					});
				});
				var fileUsing = [];
				var filePreview = $("#gEditor > .box > .body[content] > .upload.videos .list [videos-preview][file]");
				filePreview.each(function(){
					var filePreview = $(this);
					fileUsing.push(JSON.parse(filePreview.attr('file')));
				});
				var fileCache = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file]");
				fileCache.each(function(){
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
				$(document).ready(function(){
					$(document).keypress(function(e){
					    var keyCode = (e.keyCode ? e.keyCode : e.which);   
					    if (keyCode == 13 && checkKeyEvent(keyEvent) == true) {
							var editor = $("#gEditor");
							var form = editor.find("[content]").find("[input][classify='videos']").find("[form]");
							var closeButton = $("#ExplorerPopup > .boxContent > .header [close]");
							var data = [];
							var rows = $("#ExplorerPopup > .boxContent > .body .grid > .rows[file][file-selected='true']");
							rows.each(function(){
								data.push(JSON.parse($(this).attr('file')));
								return false;
							});
							var object = {
					    		'format': 'videos', 
					    		'type': 'preview', 
					    		'data': data[0]
					    	};
					    	form.prevAll("[button]").slideUp(function(){
					    		$(this).remove();
					    	});
					    	form.find('input').files = '';
							var upload = editor.find("[upload][preview][videos]");
							if(upload.length === 0){
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
function editor_selectPhotosCited () {
	popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('addons_updating','ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
	return false;
}
function editor_action () {
	var setup_inputPhotos = 0;
	var setup_inputMusic = 0;
	var setup_inputVideos = 0;
	var setup_inputCited = 0;
	var editor = $("#gEditor");
	var arrow = editor.children(".title").children("[arrow]");
	var buttonChooseType = editor.children(".title").children(".list").children(".rows[type]");
	buttonChooseType.bind('click', function(){
		buttonChooseType.removeClass('active');
		var editor = $("#gEditor");
		var button = $(this);
		var statusTypeOld = editor.attr('type');
		var statusType = button.attr('type');
		var contentBox = editor.find("[content]");
		var boxMediaOtherOld = contentBox.children("[input][classify][show='true']").attr('classify');
		var boxMediaOther = contentBox.find("[input][classify]");
		if (statusType != boxMediaOtherOld && (statusType == 'status' || statusType == 'photos' || statusType == 'music' || statusType == 'videos' || statusType == 'cited')) {
			var boxMediaLinkPreview = contentBox.children("[upload][preview][link]");
			if (statusType != 'status' && boxMediaLinkPreview.length > 0) {
				boxMediaLinkPreview.attr('show','false').hide(function(){
					$(this).html('');
				});
			}
			var boxMediaPhotosPreview = contentBox.children("[upload][preview][photos]");
			if (statusType != 'photos' && boxMediaPhotosPreview.length > 0) {
				boxMediaPhotosPreview.attr('show','false').hide(function(){
					boxMediaPhotosPreview.find("[photos-preview][file], [photos-remove]").each(function(){
						$(this).hide(function(){
							$(this).remove();
						});
					});
				});
			}
			var boxMediaVideosPreview = contentBox.children("[upload][preview][videos]");
			if (statusType != 'videos' && boxMediaVideosPreview.length > 0) {
				var demo_videosPlayerThisID = boxMediaVideosPreview.find("[videos-preview][file]").children("[id]:first").attr('id');
				if ($("#" + demo_videosPlayerThisID).length > 0) {
					var demo_videosPlayerThis = gplayer(demo_videosPlayerThisID);
					demo_videosPlayerThis.ready(function(){
						demo_videosPlayerThis.pause();
						setTimeout(function() {
							demo_videosPlayerThis.dispose();
							$("#" + demo_videosPlayerThisID).remove();
							boxMediaVideosPreview.find("[videos-preview][file]").remove();
						},0);
					});
				}
				boxMediaVideosPreview.attr('show','false').hide(function(){
					var buttonAddUpload = ' <div class="add upload action w2" videos-add upload> <span><?php print $_language->text('upload_videos', 'ucfirst'); ?></span><br><i></i> </div> <div class="add select action w2" videos-add select> <span><?php print $_language->text('select_videos', 'ucfirst'); ?></span><br><i></i> </div> ';
					boxMediaVideosPreview.children("[button]").html(buttonAddUpload);
					var buttonAddUpload = boxMediaVideosPreview.children("[button]").children("[videos-add][upload]");
					buttonAddUpload.hide().slideDown();
					buttonAddUpload.bind('click', function(){
						editor.find("[input][classify='videos']").find("[form][data='videos']").find("input").click();
					});
					var buttonAddSelect = boxMediaVideosPreview.children("[button]").children("[videos-add][select]");
					buttonAddSelect.bind('click', function(){
						var buttonAddSelect = $(this);
						if (buttonAddSelect.attr('handling') != 'true') {
							buttonAddSelect.attr('handling', 'true');
							editor_selectVideos();
							setTimeout(function(){
								buttonAddSelect.removeAttr('handling');
							},250);
						}
					});
				});
			}
			var boxMediaMusicPreview = contentBox.children("[upload][preview][music]");
			if (statusType != 'music' && boxMediaMusicPreview.length > 0) {
				var demo_musicPlayerThisID = boxMediaMusicPreview.find("[music-preview][file]").children("[id]:first").attr('id');
				if ($("#" + demo_musicPlayerThisID).length > 0) {
					var demo_musicPlayerThis = gplayer(demo_musicPlayerThisID);
					demo_musicPlayerThis.ready(function(){
						demo_musicPlayerThis.pause();
						setTimeout(function() {
							demo_musicPlayerThis.dispose();
							$("#" + demo_musicPlayerThisID).remove();
							boxMediaMusicPreview.find("[music-preview][file]").remove();
						},0);
					});
				}
				boxMediaMusicPreview.attr('show','false').hide(function(){
					var buttonAddUpload = ' <div class="add upload action w2" music-add upload> <span><?php print $_language->text('upload_music', 'ucfirst'); ?></span><br><i></i> </div> <div class="add select action w2" music-add select> <span><?php print $_language->text('select_music', 'ucfirst'); ?></span><br><i></i> </div> ';
					boxMediaMusicPreview.children("[button]").html(buttonAddUpload);
					var buttonAddUpload = boxMediaMusicPreview.children("[button]").children("[music-add][upload]");
					buttonAddUpload.hide().slideDown();
					buttonAddUpload.bind('click', function(){
						editor.find("[input][classify='music']").find("[form][data='music']").find("input").click();
					});
					var buttonAddSelect = boxMediaMusicPreview.children("[button]").children("[music-add][select]");
					buttonAddSelect.bind('click', function(){
						var buttonAddSelect = $(this);
						if (buttonAddSelect.attr('handling') != 'true') {
							buttonAddSelect.attr('handling', 'true');
							editor_selectMusic();
							setTimeout(function(){
								buttonAddSelect.removeAttr('handling');
							},250);
						}
					});
				});
			}
			var boxMediaCitedPreview = contentBox.children("[upload][preview][cited]");
			if (statusType != 'cited' && boxMediaCitedPreview.length > 0) {
				var upload = editor.find("[upload][preview][cited]");
				var cited = editor.find("[cited]");
				var cited_author = editor.find("[cited]").find("[author]");
				var cited_quote = editor.find("[cited]").find("[quote]");
				cited_author.children("[value]").val('');
				cited_quote.children("[value]").val('');
				boxMediaCitedPreview.attr('show','false').hide(function(){
					$(this).find("[photos-remove]").click();
				});
			}
			var boxMedia = contentBox.find("[input][classify='"+statusType+"']");
			if (statusType == 'status') {
				var uploadPreview = contentBox.children("[upload][preview][link]");
				var textarea = contentBox.find("[status]").find("textarea");
				uploadPreview.attr("show", "true");
				textarea.donetyping(function(){
					var content = $(this).val();
					var regexpURL = new RegExp(/((http|https|ftp|ftps):\/\/?(www)?\.?(([\S]+)\.([a-zA-Z]+)\/?([^\s]+))?)/);
					if (regexpURL.test(content) == true) {
						var url = (content.match(regexpURL)[0]).toString();
						if (textarea.attr("handing-link") != "true") {
							textarea.attr("handing-link", "true");
							$.ajax({
								url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
								type: 'POST',
								data: {'port': 'sites', 'token': '<?php print $g_client['token']['action']['sites']; ?>', 'type': 'get', 'url': url},
								dataType: 'json',
								success: function(data) {
									var editor = $("#gEditor");
									var content = editor.find("[content]");
									var uploadPreview = contentBox.children("[upload][preview][link]");
									if (data['return'] == true) {
										if (uploadPreview.length === 0) {
											var code = '<div class="upload link" upload preview link show="true"></div>';
											contentBox.find("[status]").after(code);
											var uploadPreview = contentBox.children("[upload][preview][link]");
										}
										if (data['data']['thumbnail'] != null) {
											var code_thumbnail = ' <div style="background-image: url('+data['data']['thumbnail']+');"></div> ';
										}else {
											var code_thumbnail = '';
										}
										var code = '<div class="demo" tag="link" tag-path="'+data['data']['path']+'"> <div class="thumbnail"> '+code_thumbnail+' <i class="fa fa-times close"></i> </div> <div class="info"> <div class="title rows nowrap"> <span>'+data['data']['title']+'</span> </div> <div class="description rows"> <span>'+data['data']['description']+'</span> </div> <div class="from rows"> <span>'+data['data']['host']+'</span> </div> </div> </div>';
										uploadPreview.attr("show", "true").html(code).hide().stop(true, true).fadeIn();
										uploadPreview.children(".demo[tag]").children(".thumbnail").children(".close").bind('click', function(){
											$(this).parents(".demo[tag]").fadeOut(function(){
												uploadPreview.attr('show','false').remove();
											});
										});
									}
								}
							}).done(function(){
								setTimeout(function(){
									textarea.removeAttr("handing-link");
								}, 100);
							});
						}
					}
				}, 500);
			}else if (statusType == 'photos') {
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
				scrapbook_name.find("[value]").bind('keyup',function(){
					var val = $(this).val();
					if (val != '') {
						scrapbook.attr('get','true');
						scrapbook_places.slideDown();
						scrapbook_description.slideDown();
					}else {
						scrapbook.attr('get','false');
						scrapbook_places.slideUp();
						scrapbook_description.slideUp();
					}
				});
				if (setup_inputPhotos === 0) {
					scrapbook_name.find("[value]").AutoComplete({'path': 'media', 'from': 'scrapbook', 'output': true, 'multiple': false});
					uploadButtonUpload.bind('click', function(){
						uploadFormInput.click();
					});
					uploadButtonSelect.bind('click', function(){
						var uploadButtonSelect = $(this);
						if (uploadButtonSelect.attr('handling') != 'true') {
							uploadButtonSelect.attr('handling', 'true');
							editor_selectPhotos();
							setTimeout(function(){
								uploadButtonSelect.attr('handling', 'false');
							},250);
						}
					});
					uploadFormInput.change(function(){
						if($(this).val() != ''){
							editor_mediaPreview();
							uploadForm.submit();
						}
					});
					setup_inputPhotos++;
				}
				if (uploadPreview.length > 0) {
					uploadPreview.slideDown();
				}
			}else if (statusType == 'music') {
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
				info_name.find("[value]").bind('keyup',function(){
					var val = $(this).val();
					if (val != '') {
						info.attr('get','true');
						info_singer.slideDown();
						info_album.slideDown();
						info_tags.slideDown();
						info_description.slideDown();
					}else {
						info.attr('get','false');
						info_singer.slideUp();
						info_album.slideUp();
						info_tags.slideUp();
						info_description.slideUp();
					}
				});
				if (setup_inputMusic === 0) {
					info_album.find("[value]").AutoComplete({'path': 'media', 'from': 'album', 'output': true, 'multiple': false});
					uploadButtonUpload.bind('click', function(){
						uploadFormInput.click();
					});
					uploadButtonSelect.bind('click', function(){
						var uploadButtonSelect = $(this);
						if (uploadButtonSelect.attr('handling') != 'true') {
							uploadButtonSelect.attr('handling', 'true');
							editor_selectMusic();
							setTimeout(function(){
								uploadButtonSelect.removeAttr('handling');
							},250);
						}
					});
					uploadFormInput.change(function(){
						if($(this).val() != ''){
							editor_mediaPreview();
							uploadForm.submit();
						}
					});
					setup_inputMusic++;
				}
				if (uploadPreview.length > 0) {
					uploadPreview.slideDown();
				}
			}else if (statusType == 'videos') {
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
				info_name.find("[value]").bind('keyup',function(){
					var val = $(this).val();
					if (val != '') {
						info.attr('get','true');
						info_playlist.slideDown();
						info_tags.slideDown();
						info_description.slideDown();
					}else {
						info.attr('get','false');
						info_playlist.slideUp();
						info_tags.slideUp();
						info_description.slideUp();
					}
				});
				if (setup_inputVideos === 0) {
					info_playlist.find("[value]").AutoComplete({'path': 'media', 'from': 'playlist', 'output': true, 'multiple': false});
					uploadButtonUpload.bind('click', function(){
						uploadFormInput.click();
					});
					uploadButtonSelect.bind('click', function(){
						var uploadButtonSelect = $(this);
						if (uploadButtonSelect.attr('handling') != 'true') {
							uploadButtonSelect.attr('handling', 'true');
							editor_selectVideos();
							setTimeout(function(){
								uploadButtonSelect.removeAttr('handling');
							},250);
						}
					});
					uploadFormInput.change(function(){
						if($(this).val() != ''){
							editor_mediaPreview();
							uploadForm.submit();
						}
					});
					setup_inputVideos++;
				}
				if (uploadPreview.length > 0) {
					uploadPreview.slideDown();
				}
			}else if (statusType == 'cited') {
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
				var cited_author = editor.find("[cited]").find("[author]");
				var cited_quote = editor.find("[cited]").find("[quote]");
				if(upload.length === 0){
					var previewBox = '<div class="upload cited" upload preview cited> <div class="tab" cited-preview> <div class="quote" quote><span></span></div> <div class="author" author><span></span></div> </div> </div>';
					editor.find("div[content]").children("[input][classify='cited']").after(previewBox);
					var upload = editor.find("div[content]").find("[upload][preview][cited]");
					upload.hide().slideDown();
				}
				cited_author.find("[value]").bind('keyup',function(){
					var val = $(this).val();
					if (val != '') {
						info.attr('get', 'true');
					}else {
						info.attr('get', 'false');
					}
					upload.children("[cited-preview]").children("[author]").children("span").html(val);
				});
				cited_quote.find("[value]").bind('keyup',function(){
					var val = $(this).val();
					if (val != '') {
						info.attr('get', 'true');
					}else {
						info.attr('get', 'false');
					}
					upload.children("[cited-preview]").children("[quote]").children("span").html(val.replace('\n','<br>'));
				});
				if (setup_inputCited === 0) {
					uploadButtonUpload.bind('click', function(){
						uploadFormInput.click();
					});
					uploadButtonSelect.bind('click', function(){
						var uploadButtonSelect = $(this);
						if (uploadButtonSelect.attr('handling') != 'true') {
							uploadButtonSelect.attr('handling', 'true');
							editor_selectPhotosCited();
							setTimeout(function(){
								uploadButtonSelect.attr('handling', 'false');
							},250);
						}
					});
					uploadFormInput.change(function(){
						if($(this).val() != ''){
							editor_mediaPreview();
							uploadForm.submit();
						}
					});
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
		}else if (statusType == 'post') {
			var type = editor.attr('type');
			var content = contentBox.find("[status]").children("textarea").val();
			var link = false;
			if (type == 'status') {
				var data = '';
				var linkPreview = contentBox.find("[upload][preview][link]");
				if (linkPreview.length > 0) {
					console.log(linkPreview.attr('show'));
					if (linkPreview.attr('show') == 'true') {
						var link = {'path': linkPreview.children("[tag]").attr('tag-path')};
					}
				}
			}else if (type == 'photos') {
				var input = contentBox.find("[input][classify='photos']");
				var upload = contentBox.find("[upload][preview][photos]");
				var scrapbook = input.find("[scrapbook]");
				if (scrapbook.attr("get") == "true") {
					var name = scrapbook.find("[name]");
					if (name.find("[tag]").length > 0) {
						var name = {
							'token': name.find("[tag]").attr('tag-token')
						};
					}else {
						var name = name.find("input").val();
					}
					var places = scrapbook.find("[places]");
					if (places.find("[tag]").length > 0) {
						var tag = places.find("[tag]");
						var places = {'value': true, 'places': tag.attr('tag-address'), 'location': tag.attr('tag-location')};
					}else {
						var places = '';
					}
					var description = scrapbook.find("[description]");
					if (description.find("textarea").length > 0) {
						var description = description.find("textarea").val();
					}
					var scrapbook_value = true;
					var scrapbook_data = {
						'name': name,
						'places': places,
						'description': description
					};
				}else {
					var scrapbook_value = false;
					var scrapbook_data = "";
				}
				var scrapbook = {
					'value': scrapbook_value,
					'data': scrapbook_data
				};
				var file = [];
				var preview = upload.find("[photos-preview][file]");
				preview.each(function(i){
					var preview = $(this);
					file.push(JSON.parse(preview.attr('file')));
				});
				var media = {
					'scrapbook': scrapbook,
					'file': file
				};
			}else if (type == 'music') {
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
					if (album.find("[tag]").length > 0) {
						var album = {
							'token': album.find("[tag]").attr('tag-token')
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
				preview.each(function(i){
					var preview = $(this);
					file.push(JSON.parse(preview.attr('file')));
				});
				var media = {
					'info': info,
					'file': file
				};
			}else if (type == 'videos') {
				var input = contentBox.find("[input][classify='videos']");
				var upload = contentBox.find("[upload][preview][videos]");
				var info = input.find("[info]");
				if (info.attr("get") == "true") {
					var name = info.find("[name]");
					if (name.find("[value]").length > 0) {
						var name = name.find("[value]").val();
					}
					var playlist = info.find("[playlist]");
					if (playlist.find("[tag]").length > 0) {
						var playlist = {
							'token': playlist.find("[tag]").attr('tag-token')
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
				preview.each(function(i){
					var preview = $(this);
					file.push(JSON.parse(preview.attr('file')));
				});
				var media = {
					'info': info,
					'file': file
				};
			}else if (type == 'cited') {
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
				preview.each(function(i){
					var preview = $(this);
					file.push(JSON.parse(preview.attr('file')));
				});
				var media = {
					'info': info,
					'file': file
				};
			}
			var nav_mood = contentBox.find("[push='mood']");
			if(nav_mood.attr('value') == 'true'){
				var push_mood = nav_mood.children("[tag]");
				var mood = {
					'type': null,
					'code': null,
					'text': null
				};
				mood.type = push_mood.attr('tag-type');
				mood.code = push_mood.attr('tag-code');
				mood.text = push_mood.attr('tag-text');
			}else {
				var mood = false;
			}
			var nav_usertag = contentBox.find("[push='usertag']");
			if(nav_usertag.attr('value') == 'true'){
				var push_usertag = nav_usertag.children("[tag]");
				var usertag = [];
				push_usertag.each(function(i){
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
			if(nav_places.attr('value') == 'true'){
				var push_places = nav_places.children("[tag]");
				var places = {
					'address': null,
					'code': null
				};
				places['address'] = push_places.attr('tag-address');
				places['code'] = push_places.attr('tag-code');
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
			var data = {
				'type': type,
				'content': content,
				'media': media,
				'push': push
			};
			console.log(data);
			var removeMedia = false;
			if (data['type'] == "music" || data['type'] == "videos") {
				if (data['media']['info']['value'] !== undefined && data['media']['info']['value'] !== false) {
					var mediaPlayer_demoID = upload.find("[file]:first").children("[id][data-setup]:first").attr('id');
					if ($("#" + mediaPlayer_demoID).length > 0) {
						var mediaPlayer_demo = gplayer(mediaPlayer_demoID);
						mediaPlayer_demo.ready(function(){
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
function editor_upload (object) {
	var error = false;
	var editor = $("#gEditor");
	var data = {
		'port': 'status',
		'token': '<?php print $g_client['token']['action']['status']; ?>',
		'action': 'upload',
		'data': object['data']
	};
	if (editor.attr('handling-preview') == 'true') {
		popupNotification ({type: 2, title: '<?php print $_language->text("error", "ucfirst"); ?>', description: transferError('ERROR#FEEDS_013')+'.', from: '<?php print $_language->text("system", "ucfirst"); ?>', timeout: '<?php print $_parameter->get("notification_error_timeout"); ?>'});
		var error = true;
	}else if (object['data']['type'] == "status" && object['data']['content'] == '') {
		popupNotification ({type: 2, title: '<?php print $_language->text("error", "ucfirst"); ?>', description: transferError('ERROR#FEEDS_010')+'.', from: '<?php print $_language->text("system", "ucfirst"); ?>', timeout: '<?php print $_parameter->get("notification_error_timeout"); ?>'});
		var error = true;
	}else if (object['data']['type'] == "music" && object['data']['media']['info']['value'] == false) {
		popupNotification ({type: 2, title: '<?php print $_language->text("error", "ucfirst"); ?>', description: transferError('ERROR#FEEDS_011')+'.', from: '<?php print $_language->text("system", "ucfirst"); ?>', timeout: '<?php print $_parameter->get("notification_error_timeout"); ?>'});
		var error = true;
	}else if (object['data']['type'] == "videos" && object['data']['media']['info']['value'] == false) {
		popupNotification ({type: 2, title: '<?php print $_language->text("error", "ucfirst"); ?>', description: transferError('ERROR#FEEDS_011')+'.', from: '<?php print $_language->text("system", "ucfirst"); ?>', timeout: '<?php print $_parameter->get("notification_error_timeout"); ?>'});
		var error = true;
	}
	if (error != true && editor.attr('handing') != true) {
		var process = $("#gEditor > .box > .process");
		var content = $("#gEditor > .box > .body, #gEditor > .box > .footer");
		editor.attr('handing', 'true');
		process.slideDown();
		content.slideUp();
		$.ajax({
			url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			type: 'POST',
			data: data,
			dataType: 'json',
			success: function(data) {
				if (data['return'] !== undefined && data['return'] == true) {
					popupNotification ({type: 1, title: '<?php print $_language->text('notification', 'ucfirst'); ?>', description: '<?php print $_language->text('status_has_been_posted','ucfirst'); ?>. <br /> <?php print $_language->text('pull_up_for_updates','ucfirst'); ?>.', from: '<?php print $_language->text('system', 'ucfirst'); ?>', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
					editor_resetForm();
				}else if (data['return'] !== undefined && data['return'] == false) {
					if (data['reason'] !== undefined) {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
					}
				}else {
					popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
				}
			}
		}).done(function(){
			setTimeout(function(){
				process.slideUp();
				content.slideDown();
				editor.removeAttr('handing');
			},100);
		});
	}
}
function editor_resetForm () {
	var editor = $("#gEditor");
	var contentBox = editor.find("[content]");
	if (editor.attr('type') == "music" || editor.attr('type') == "videos") {
		var upload = contentBox.find("[upload][preview]["+editor.attr('type')+"]");
		upload.find("["+editor.attr('type')+"-preview]").removeAttr('file');
		upload.find("["+editor.attr('type')+"-remove]").removeAttr('file').click();
		var mediaPlayer_demoID = upload.find("[file]:first").children("[id]:first").attr('id');
		if ($("#" + mediaPlayer_demoID).length > 0) {
			var mediaPlayer_demo = gplayer(mediaPlayer_demoID);
			mediaPlayer_demo.ready(function(){
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
	var tags = editor.find("[tag]");
	tags.find("[tag-close]").click();
	contentBox.find("[push]").attr('value', 'false').children().val('').parent().slideUp();
	contentBox.children("[upload][preview][link]").attr('show','false').slideUp(function(){
		$(this).html('');
	});
	$("#gEditor > .title > .list > .rows[type='status']").click();
}
$(document).ready(function(){
	editor_action();
	editor_autosize();
	editor_pushAddons();
	editor_resetForm();
});