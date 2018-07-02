function consoleWarning () {
	console.log("%c%s","color: #555; font: bold 20px/1.2em 'Helvetica Neue','HelveticaNeue',Helvetica,Arial,sans-serif","<?php print htmlspecialchars($_language->text('console.warning_text_from', 'ucfirst', false).':');  ?>");
	console.log("%c%s","color: #555; font: normal 16px/1.2em 'Helvetica Neue','HelveticaNeue',Helvetica,Arial,sans-serif","<?php print htmlspecialchars($_language->text('console.warning_text', 'ucfirst', false).'.');  ?>");
	console.log("%c%s","color: #555; font: normal 16px/1.2em 'Helvetica Neue','HelveticaNeue',Helvetica,Arial,sans-serif","<?php print htmlspecialchars($_language->text('console.warning_text_contact', 'ucfirst', false).'.');  ?>");
}
consoleWarning();
function resizeTemplates () {
	var setSize = function () {
		var win = $(window),
			navbar = $("#gNavbar"),
			box = $("#gBox"),
			sidebar = $("#gSidebar");
		var box_marginLeft = (win.innerWidth() - box.width() - sidebar.width() - 20) / 2;
		box.css({
			'margin-left': box_marginLeft
		});
		var sidebar_height = win.innerHeight() - navbar.innerHeight() - 25;
		var sidebar_left = box.innerWidth() + box_marginLeft;
		sidebar.css({
			'position': 'fixed',
			'left': sidebar_left,
			'height': sidebar_height
		}).children(".tab").css({
			height: (sidebar_height - 10) / 2
		});
		var navbar_width = box.width() + 230 + 10;
		navbar.children(".content").css({
			'width': navbar_width
		});
	}
	if (!$("html#giccos").hasClass("blank")) {
		$(window).bind("resizeEnd", setSize);
		setSize();
	}
}
function navProgress () {
	$({property: 0}).animate({property: 100}, {
	    duration: 4000,
	    step: function() {
	    	 // Action loading complete.
	    	var _percent = Math.round(this.property);
	        if(_percent < 100) {
	       		// Loading.
	        }else if(_percent == 100){
	        	// Loaded.
	        }
	    },
	    complete: function() {
	        // Action when complete.
	    }
	});
}
function setupTooltip () {
	$(".tooltip, ._tt, ._tt-bk, ._tt-we, ._tt-be, ._tt-dbl").each(function(){
		var selector = $(this);
		if(selector.hasClass('_tt-bk')){
		    var style = 'bk';
		}else if(selector.hasClass('_tt-we')){
		    var style = 'we';
		}else if(selector.hasClass('_tt-be')){
		    var style = 'be';
		}
		if(selector.hasClass('nw')){
		    var gravity = 'nw';
		}else if(selector.hasClass('n')){
		    var gravity = 'n';
		}else if(selector.hasClass('ne')){
		    var gravity = 'ne';
		}else if(selector.hasClass('w')){
		    var gravity = 'w';
		}else if(selector.hasClass('e')){
		    var gravity = 'e';
		}else if(selector.hasClass('sw')){
		    var gravity = 'sw';
		}else if(selector.hasClass('s')){
		    var gravity = 's';
		}else if(selector.hasClass('se')){
		    var gravity = 'se';
		}
		if(selector.hasClass('_tt-dbl')){
			var data = selector.attr('dblclick');
			if(data != undefined){
				var dblclick = JSON.parse(data);
			}else {
				var dblclick = false;
			}
		}else {
		    var dblclick = false;
		}
		selector.tooltip({
			style: style,
			gravity: gravity,
			dblclick: dblclick
		});
	});
}
function setupDragg () {
	$(".b-drag, ._drag, .boxDrag").each(function(){
		var selector = $(this);
		selector.drag();
	});
}
function setupEffect () {
	// $(".boxGrid").callEffect();
}
function setupTimestamp () {
	setTimeout(function(){
		$("[time], [time-tip], [time-ago]").each(function(){
			$(this).reloadTime();
		});
		setupTimestamp();
	}, <?php print $_parameter->get("setupTimestamp_timeout"); ?>);
}
function popupAlert (object) {
	if (object['title'] != null) {
		var textTitle = object['title'];
	}else {
		var textTitle = '<?php print $_language->text('notification', 'ucfirst'); ?>';
	}
	if (object['content'] != null) {
		var textContent = object['content'];
	}else {
		var textContent = '';
	}
	if (object['actionTrue'] != null) {
		var textActionTrue = object['actionTrue'];
	}else {
		var textActionTrue = '<?php print $_language->text('confirm', 'ucfirst'); ?>';
	}
	if (object['actionFalse'] != null) {
		var textActionFalse = object['actionFalse'];
	}else {
		var textActionFalse = '<?php print $_language->text('cancel', 'ucfirst'); ?>';
	}
	if (object['enterActive'] == undefined || object['enterActive'] == null || object['enterActive'] === true) {
		var enterActive = true;
	}else {
		var enterActive = false;
	}
	if (object['escActive'] == undefined || object['escActive'] == null || object['escActive'] === true) {
		var escActive = true;
	}else {
		var escActive = false;
	}
	var title = '<div class="title nowrap"> <span>'+textTitle+'</span> <i class="close"></i> </div>';
	var content = '<div class="main"> <div class="content"> <span>'+textContent+'</span> </div> </div>';
	var options = '<div class="options"> <div class="button true _bn_c-we"> <span>'+textActionTrue+'</span> </div> <div class="button false _bn_c-we"> <span>'+textActionFalse+'</span> </div> </div>';
	var code = '<div id="popupAlert"><div class="box">'+ title +' ' +content+ ' ' +options+ '</div></div>';
	var tab = $("#popupAlert");
	var body = $("body");
	if (tab.length > 0) {
		tab.remove();
	}
	body.append(code);
	var tab = $("#popupAlert");
	body.css('overflow-y', 'hidden');
	tab.children(".box").boxPosition({'position': 'center', 'resize': true});
	if (object['callbackTrue'] != null && typeof object['callbackTrue'] == 'function') {
		tab.find(".box > .options > .true").bind('click', object['callbackTrue']);
		if (enterActive === true) {
			$(document).bind('keypress',function(e){
				var keycode = (e.keyCode ? e.keyCode : e.which);
				if (keycode == '13' && tab.find(".box > .options > .true").length > 0) {
					tab.find(".box > .options > .true").click();
				}
			});
		}
		if (escActive === true) {
			$(document).bind('keyup',function(e) {
				var keycode = (e.keyCode ? e.keyCode : e.which);
				if (keycode == '27' && tab.find(".box > .options > .true").length > 0) {
					tab.find(".box > .options > .false").click();
				}
			});
		}
	}
	$("#popupAlert > .box > .title > .close").bind('click', function(){
		tab.find(".box > .options > .button.false").click();
	});
	var closeActionDefault = true;
	if (object['callbackFalse'] != null && typeof object['callbackFalse'] == 'function') {
		tab.find(".box > .options > .false").bind('click', object['callbackFalse']);
	}else if (object['callbackFalse'] != null && typeof object['callbackFalse'] == 'boolean') {
		if (object['callbackFalse'] === false) {
			tab.find(".box > .options > .button").bind('click', function(){
				tab.fadeOut(function(){
					$(this).remove();
				});
			});
			var closeActionDefault = false;
		}
	}
	if (closeActionDefault === true) {
		tab.find(".box > .options > .button").bind('click', function(){
			tab.fadeOut(function(){
				$(this).remove();
			});
			body.css("overflow-y", "auto");
		});
	}
}
function pushInfoEr () {
	$("[href]").each(function(){
		var a = $(this);
		var links = a.attr('href');
		var regex = new RegExp(/((http|https|ftp|ftps)(:\/\/)(www\.)?(<?php print $_parameter->get('regex_domain'); ?>)\/(wall|groups|pages)\/([a-zA-Z0-9\.\_]+)$)/i);
		if (regex.test(links)) {
			var parse = links.match(regex);
			var info = {};
			if (parse[6].toString() == "wall") {
				info['type'] = "user";
			}
			info['tag'] = parse[7].toString();
			<?php  if (isset($g_user['login']) && $g_user['login'] === true) { ?>
			if (info['tag'] == "<?php print $g_user['username']; ?>") {
				a.attr('tab-profile', JSON.stringify({'type': 'user', 'tag': '<?php print $g_user['username']; ?>', 'name': '<?php print $g_user['fullname']; ?>', 'avatar': '<?php print $g_user['avatar.medium']; ?>', 'cover': '<?php print $g_user['cover.medium']; ?>', 'link': '<?php print $g_user['link']; ?>', 'options': {'follow': false, 'friends': false, 'messages': false}}));
			}else {
				a.attr('tab-profile', JSON.stringify(info));
			}
			<?php }else { ?>
			a.attr('tab-profile', JSON.stringify(info));
			<?php } ?>
		}
	});
}
function readInfo () {
	
}
function popupNotification (object) {
	if (typeof object == "object" || typeof JSON.parse(object) == "object") {
		if (typeof object != "object") {
			var object = JSON.parse(object);
		}
		var type = object['type'],
			title = object['title'],
			description = object['description'],
			from = object['from'],
			timeout = object['timeout'],
			pin = object['pin'],
			callback = object['callback'];
	}
	if (!isset(timeout) || timeout === null) {
		var timeout = <?php print $_parameter->get("notifyPopup_timeout"); ?>;
	}
	if(pin == undefined || pin === null || pin === false){
		var pin = false;
	}else if (pin === true) {
		var pin = true;
	}
	var tip = "<span><?php print $_language->text('click_to_close', 'ucfirst'); ?></span>";
	if (type == undefined || type == 1) {
		var c_type = "<i class='_t1 _tt-bk e' close title='"+tip+"'></i>";
	}else if (type == 2) {
		var c_type = "<i class='_t2 _tt-bk e' close title='"+tip+"'></i>";
	}else if (type == 3) {
		var c_type = "<i class='_t3 _tt-bk e' close title='"+tip+"'></i>";
	}else {
		var c_type = "";
	}
	if (!isset(title) || title === null) {
		var c_title = "";
	}else {
		var c_title = "<div class='title nowrap'>"+c_type+"<span>"+title+"</span></div>";
	}
	if (!isset(description) || description === null) {
		var c_description = '';
	}else {
		if (typeof description == "object") {
			var description = description,
				description_object = true;
		}
		if (description_object === true) {
			if (description['type'] == "info::places") {
				var data = description['data'];
				if (!isset(data['type']) || data['type'] === null) {
					var type = '';
				}else {
					var type = "<span>"+data['type']+": </span>";
				}
				if (!isset(data['name']) || data['name'] === null) {
					var name = '';
				}else {
					var name = "<span>"+data['name']+".</span>";
				}
				if (!isset(data['address']) || data['address'] === null) {
					var address = '';
				}else {
					var address = "<span><?php print $_language->text('from', 'ucfirst'); ?>: "+data['address']+".</span>";
				}
				if (!isset(data['description']) || data['description'] === null) {
					var text = '';
				}else {
					var text = "<span><?php print $_language->text('description', 'ucfirst'); ?>: "+data['description']+".</span>";
				}
				if (data['thumbnail'] == undefined || data['thumbnail'] === null){
					var image = '';
				}else {
					var image = "<div class='bg_img' style='background-image:url("+data['thumbnail']+")'></div>";
				}
				if (type != '' || name != '') {
					var c_header = "<div>"+type+name+"</div>";
				}else {
					var c_header = "";
				}
				if (address != '') {
					var c_body_oe = "<div>"+address+"</div>";
				}else {
					var c_body_oe = "";
				}
				if (text != '') {
					var c_body_to = "<div>"+text+"</div>";
				}else {
					var c_body_to = "";
				}
				if(image != ''){
					var c_footer = "<div>"+image+"</div>";
				}else {
					var c_footer = "";
				}
				var description = c_header+c_body_oe+c_body_to+c_footer;
			}
		}
		var c_description = "<div class='description'><span>"+description+"</span></div>";
	}
	if (!isset(from) || from === null) {
		var c_from = '';
	}else {
		var c_from = "<div class='from nowrap'><span><?php print $_language->text("from", "strtolower"); ?> "+from+"</span></div>";
	}
	if (c_title !== null || c_description !== null || c_from !== null) {
		if (pin === true) {
			var c_pin = "pin";
		}else {
			var c_pin = "notpin";
		}
		var c = "<div class='tab _h "+c_pin+"'>"+c_title+c_description+c_from+"</div>";
		var body = $("body");
		var box = $("#popupNotification");
		if (box.length === 0) {
			var randkey = randomKeyString(<?php print $_parameter->get('notifyPopup_length_randKeyEvent'); ?>);
			var box = "<div id='popupNotification' randkey='"+randkey+"'></div>";
			body.append(box);
		}
		var box = $("#popupNotification[randkey='"+randkey+"']");
		var box_i = $("#popupNotification > .tab");
		if(box_i.length === 0){
			box.append(c);
		}else {
			box_i.first().before(c);
		}
		$("#popupNotification > .tab._h").hide();
		var popup = $("#popupNotification > .tab");
		var num = popup.length;
		setupTooltip();
		popup.each(function(){
			var popup = $(this);
			if(popup.hasClass("_h")){
				popup.removeClass("_h").slideDown('slow',function(){
					$(this).drag();
					if (isset(callback) && typeof callback == "function") {
						$(this).addClass("cr-pointer").bind('click', callback);
						$(this).find("[close]").bind('click', function(){
							return false;
						});
					}
					if (!$(this).hasClass('pin')) {
						setTimeout(function(){
							popup.fadeOut(function(){
								$(this).remove();
								var num = $("#popupNotification > .tab").length;
								if(num === 0){
									$("#popupNotification").remove();
								}
							});
						}, timeout);
					}
				});
			}
			popup.find("[close]").bind('click', function(){
				$(this).mouseout();
				popup.fadeOut(function(){
					$(this).remove();
					var tab = $("#popupNotification");
					if (tab.children(".tab").length === 0) {
						tab.remove();
					}
				});
			});
		});
		if(num > <?php print $_parameter->get("notifyPopup_count_limit"); ?>){
			popup.not(".pin").each(function(i){
				var i = i + 1;
				if(i > <?php print $_parameter->get("notifyPopup_count_limit"); ?>){
					$(this).fadeOut(function(){
						$(this).remove();
					});
				}
			});
		}
	}
}
function parseText (text) {
	return parseEmotions(parseLink(text));
}
function parseLink (text) {
	var text = text.replace(new RegExp(/((http|https|ftp|ftps):\/\/[\S*]+[\S*])/ig), "<a class='gLink' target='_blank' href='$1'>$1</a>",text);
	var text = text.replace(new RegExp(/(^|\s)@([a-zA-Z0-9\_]+)/ig), "\$1<a class='gUsertag' usertag='$2' href='<?php print $_tool->links('wall/'); ?>$2' target='_blank'>@$2</a>",text);
	var text = text.replace(new RegExp(/(^|\s)#([a-zA-Z0-9\_]+)/ig), "\$1<a class='gHashtag' hashtag='$2' href='<?php print $_tool->links('feeds/tags/'); ?>$2'>#$2</a>",text);
	return text;
}
function parseEmotions (text) {
	var emotions = {
		"(empty)": "empty",
		"(a)": "angel",
		"x(": "angry",
		"X(": "angry",
		"(bandit)": "bandit",
		"(beer)": "beer",
		":D": "laugh",
		":d": "laugh",
		":$": "blush",
		"(bow)": "bow",
		"(^)": "cake",
		"($)": "cash",
		"(clap)": "clap",
		"(cf)": "coffee",
		"B)": "cool",
		"b)": "cool",
		":<": "cry",
		"(6)": "devil",
		"(doh)": "doh",
		"(d)": "drink",
		"|(": "dull",
		"(emo)": "emo",
		"(e)": "envy",
		">:)": "grin",
			"(fail)": "facepalm",
		"(yn)": "fingers",
		"(f)": "flower",
		"(chuckle)": "chuckle",
		"(handshake)": "handshake",
		":)": "happy",
		"<3": "heart",
		"i3": "heart",
		"(22)": "hi",
		"(love)": "inlove",
		"(wm)": "wm",
		":*": "kiss",
		":x": "lipssealed",
		":3": "kate",
		"(mm)": "mmm",
		"8|": "nerd",
		"(n)": "no",
		"(party)": "party",
		":&": "puke",
		"(rofl)": "rofl",
		":(": "sad",
		"8-": "shake",
		":|": "speechless",
		":O": "surprised",
		":o": "surprised",
		":?": "think",
		"(tmi)": "tmi",
		":P": "tongueout",
		":p": "tongueout",
		"(whew)": "whew",
		";)": "wink",
		":^)": "wondering",
		":S": "worry",
		":s": "worry",
		"(w)": "waiting"
	};
	for (smiley in emotions) {
		var img = emotions[smiley];
		text = text.replaceAll(smiley, "<i emotions-key='"+smiley+"' style='background-image: url(<?php print $_tool->links("photos/raw/static/emotions/"); ?>"+img+".png)'></i>");
	}
	return text;
}
function boxSuggest (object, selector, callback) {
	var randkey = randomKeyString(<?php print $_parameter->get('boxSuggest_length_randKeyEvent'); ?>);
	if (!isset(selector)) {
		$("input, textarea").focus(function(){
			
		});
	}else {
		$("#boxSuggest").remove();
		$(selector).after(getCode(object));
		action(selector, object['output'], object['type'], object['multiple']);
		if((typeof object['content'] == 'object' && Object.keys(object['content']).length > 5) || $("#boxSuggest[randkey='"+randkey+"']").find("[box-row]").length > 5){
			scrollBar(selector);
		}
	}
	if (callback === undefined) {
		var callback = function () {

		};
	}
	close();
	function getCode (object) {
		var show = true;
		if (!isset(object['title']) || object['title'] === null) {
			var header = '';
		}else {
			var header = '<div class="header"> <span>'+object['title']+'</span> </div>';
		}
		if (!isset(object['content']) || object['content'] === null) {
			var body = '<div class="body null"> <span>Not found</span> </div>';
			var footer = '';
		}else {
			var body = '';
			var content = '';
			if (isset(object['type']) && object['type'] == 'places') {
				for (var i in object['content']) {
					var rows = object['content'][i];
					if (!isset(rows['img']) || rows['img'] === null) {
						var rows_class = ' r_oe';
						var rows_img = '';
					}else {
						var rows_class = '';
						var rows_img = '<div class="img"><div style="background-image: url('+rows['img']+');"></div></div>';
					}
					var name = rows['name'];
					var description = rows['description'];
					var code = rows['code'];
					var preview = rows['preview'];
					var content = content+' <div class="rows'+rows_class+'" map-places="'+name+'" map-code="'+code+'" map-preview="'+preview+'" box-row row-selected="false">'+rows_img+'<div class="text"> <div class="header nowrap"> <span>'+name+'</span> </div> <div class="body nowrap"> <span>'+description+'</span> </div> </div> </div>';
				}
				if (object['footer']['get'] === true && object['footer']['get'] != undefined) {
					if(object['footer']['type'] == 'preview-map'){
						var footer_push = '<div class="preview map" box-preview-map></div>';
					}else {
						var footer_push = "";
					}
					var footer = '<div class="footer"> '+footer_push+' </div>';
				}else {
					var footer = "";
				}
				if (object['name'] == undefined || object['name'] === null) {
					var push = "";
				}else {
					var push = '<div class="rows r_oe" map-places="'+object['name']+'" map-id map-preview box-row box-row-selected="false"><div class="text"> <div class="header nowrap"> <span>'+object['name']+'</span> </div> <div class="body nowrap"> <span> <?php print $_language->text('not_identified','ucfirst'); ?> </span> </div> </div> </div>';
				}
				var body = '<div class="body"> <div class="main"> '+content+push+' </div> </div>';
			}else if (isset(object['type']) && object['type'] == 'info') {
				for (var y in object['content']) {
					if (typeof object['content'][y] != "object" || object['content'][y] === null || Object.keys(object['content'][y]).length === 0) {
						delete object['content'][y];
					}
				}
				if ((typeof object['content']['users'] == "object" && object['content']['users'] !== null && Object.keys(object['content']['users']).length > 0) || (typeof object['content']['groups'] == "object" && object['content']['groups'] !== null && Object.keys(object['content']['groups']).length > 0) || (typeof object['content']['pages'] == "object" && object['content']['pages'] !== null && Object.keys(object['content']['pages']).length > 0)) {
					for (var i in object['content']) {
						if (object['content'][i] !== null && object['content'][i][0] !== null) {
							for (var x in object['content'][i]) {
								var rows = object['content'][i][x];
								var content = content + ' <div class="rows '+i+'" info-type="'+i+'" info-id="'+rows['id']+'" info-name="'+rows['name']+'" info-tag="'+rows['tag']+'" info-avatar="'+rows['avatar']+'" info-cover="'+rows['cover']+'" box-row row-selected="false"> <div class="img"> <div style="background-image: url('+rows['avatar']+');"></div> </div> <div class="text"> <div class="header nowrap"> <span>'+rows['name']+'</span> </div> <div class="body nowrap iT"> <i class="fa '+i+'"></i> <span>'+rows['tag']+'</span> </div> </div> </div>';
							}
							if (object['content'][i] !== null && Object.keys(object['content'][i]).length > 0 && i == "users") {
								var sub_title = "Users";
							}else if (object['content'][i] !== null && Object.keys(object['content'][i]).length > 0 && i == "groups") {
								var sub_title = "Groups";
							}else if (object['content'][i] !== null && Object.keys(object['content'][i]).length > 0 && i == "pages") {
								var sub_title = "Pages";
							}else {
								var sub_title = "";
							}
							if (sub_title !== null) {
								var sub_title_c = '<div class="title"> <span>'+sub_title+'</span> </div>';
							}else {
								var sub_title_c = "";
							}
						}else {
							return false;
						}
						var body = ' <div class="body"> <div class="main"> '+ sub_title_c + content +' </div> </div>';
					}
					if (object['footer']['get'] === true && object['footer']['get'] != undefined && Object.keys(object['content']).length) {
						if(object['footer']['type'] == 'preview-info'){
							var footer_push = '<div class="preview info" box-preview-info> <div class="img"> </div> <div class="text"> <div class="nowrap"> <span> </span> </div> <div class="nowrap"> <span> </span> </div> </div> </div>';
						}else {
							var footer_push = ''
						}
						var footer = '<div class="footer"> '+footer_push+' </div>';
					}else {
						var footer = '';
					}
				}else {
					var body = '<div class="body null"> <span>Not found</span> </div>';
					var footer = '';
				}
			}else if (object['type'] == 'mood') {
				if((object['content']['feels']) != null && Object.keys(object['content']['feels']).length > 0){
					for (var i in object['content']) {
						for (var x in object['content'][i]) {
							var rows = object['content'][i][x];
							var content = content+' <div class="rows '+i+'" mood-type="'+rows['type']+'" mood-code="'+rows['code']+'" mood-text="'+rows['text']+'" box-row row-selected="false"> <div class="img"> <div style="background-image: url('+rows['emoticon']+');"></div> </div> <div class="text"> <div class="header nowrap"> <span>'+rows['text']+'</span> </div> <div class="body nowrap iT"> <i class="fa '+rows['type']+'"></i> <span>'+rows['type']+'</span> </div> </div> </div>';
						}
						var body = '<div class="body"> <div class="main"> '+content+' </div> </div>';
					}
					if (object['footer']['get'] === true && object['footer']['get'] != undefined && Object.keys(object['content']).length) {
						var footer = '<div class="footer"></div>';
					}else {
						var footer = '';
					}
				}else {
					var content = '';
					var mood_type = ['feel'];
					for (var i in mood_type) {
						var text = object['keywords'];
						var type = mood_type[i];
						var content = content + '<div class="rows r_oe" mood-type="'+type+'" mood-code mood-text="'+text+'" box-row row-selected="false"> <div class="text"> <div class="header nowrap"> <span>'+text+'</span> </div> <div class="body nowrap iT"> <i class="fa '+type+'"></i> <span>'+type+'</span> </div> </div> </div>';
					}
					var body = '<div class="body"> <div class="main"> '+content+' </div> </div>';
					var footer = '';
				}
			}else if (object['type'] == 'media') {
				if(Object.keys(object['content']['scrapbook']).length > 0 || Object.keys(object['content']['album']).length > 0 || Object.keys(object['content']['playlist']).length > 0){
					for (var i in object['content']) {
						for (var x in object['content'][i]) {
							var rows = object['content'][i][x];
							var content = content+' <div class="rows '+i+'" media-type="'+rows['type']+'" media-token="'+rows['token']+'" media-thumbnail="'+rows['thumbnail']+'" media-name="'+rows['name']+'" box-row row-selected="false"> <div class="img"> <div style="background-image: url('+rows['thumbnail']+');"></div> </div> <div class="text"> <div class="header nowrap"> <span>'+rows['name']+'</span> </div> <div class="body nowrap iT"> <span>'+rows['time']['ago']+'</span> </div> </div> </div>';
						}
						var body = '<div class="body"> <div class="main"> '+content+' </div> </div>';
					}
					if (object['footer']['get'] === true && object['footer']['get'] != undefined && Object.keys(object['content']).length) {
						var footer = '<div class="footer"></div>';
					}else {
						var footer = '';
					}
				}else {
					var body = '';
					var footer = '';
					var show = false;
				}
			}
		}
		if (show === true) {
			return '<div id="boxSuggest" randkey="'+randkey+'"> '+ header + body + footer +' </div>';
		}else {
			return "";
		}
	}
	function action (selector, output, type, multiple) {
		var boxSuggest = $("#boxSuggest[randkey='"+randkey+"']");
		var li = boxSuggest.find("[box-row]");
		if (type == "places") {
			li.mouseover(function(){
				var li = $(this);
				if (li.attr('row-selected') != 'true') {
					var id = li.attr("map-id");
					var preview = boxSuggest.find("[box-preview-map]");
					var preview_img = li.attr('map-preview');
					preview.css('background-image', 'url('+preview_img+')');
					boxSuggest.find("[box-row]").attr("row-selected","false");
					li.attr("row-selected","true");
				}
			});
		}else if (type == "info") {
			li.mouseover(function(){
				var li = $(this);
				if (li.attr('row-selected') != 'true') {
					var id = li.attr("info-id");
					var name = li.attr("info-name");
					var tag = li.attr("info-tag");
					var avatar = li.attr("info-avatar");
					var cover = li.attr("info-cover");
					var preview = boxSuggest.find("[box-preview-info]");
					preview.css('background-image', 'url('+cover+')');
					preview.children('div.img').css('background-image', 'url('+avatar+')');
					preview.children('div.text').children('div:first').children('span').text(name);
					preview.children('div.text').children('div:last').children('span').text(tag);
					boxSuggest.find("[box-row]").attr("row-selected","false");
					li.attr("row-selected","true");
				}
			});
		}else if (type == 'mood') {
			li.mouseover(function(){
				var li = $(this);
				if (li.attr('row-selected') != 'true') {
					boxSuggest.find("[box-row]").attr("row-selected","false");
					li.attr("row-selected","true");
				}
			});
		}else if (type == 'media') {
			li.mouseover(function(){
				var li = $(this);
				if (li.attr('row-selected') != 'true') {
					boxSuggest.find("[box-row]").attr("row-selected","false");
					li.attr("row-selected","true");
				}
			});
		}
		li.bind('click', function(){
			var boxSuggest = $("#boxSuggest[randkey='"+randkey+"']");
			if (output === true && boxSuggest.length > 0) {
				callback("add", boxSuggest.find("[box-row][row-selected='true']"));
				select(type, selector, multiple, output);
			}
		});
		$(selector).bind('keypress', function(e){
			var keycode = (e.keyCode ? e.keyCode : e.which);
			var boxSuggest = $("#boxSuggest[randkey='"+randkey+"']");
		    if (output === true && keycode == 13 && boxSuggest.length > 0) {
		    	callback("add", boxSuggest.find("[box-row][row-selected='true']"));
		       	select(type, $(this), multiple, output);
		    }
		});
		li.first().mouseover();
		function select (type, input, multiple, output) {
			var editor = $("#gEditor");
			var boxSuggest = $("#boxSuggest[randkey='"+randkey+"']");
			var input = $(input);
		    var parent = input.parent();
		    var brTrue = boxSuggest.find("[box-row][row-selected='true']");
		    var textarea = editor.find("[editor-box-textarea]");
		    if (type == 'places') {
		       	var code = brTrue.attr("map-code");
		        var places = brTrue.attr("map-places");
		        var tag_code = '<span class="tag" tag="places" tag tag-address="'+places+'" tag-code="'+code+'"><a tag-name>'+places+'</a><i tag-close></i></span>';
		        var tag = parent.find("span.tag[tag][tag-address='"+places+"'][tag-id='"+id+"']");
		        if (tag.length > 0) {
		        	popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('it_is_tagged', 'ucfirst'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		        }
		        if(multiple === true && tag.length === 0){
				    input.before(tag_code);
				    boxSuggest.remove();
		        }else if (multiple === false && tag.length === 0) {
		        	var code = selector[0];
				    input.before(tag_code).remove();
				    boxSuggest.remove();
		        }
			    var tag = parent.find("span.tag[tag]");
			    if(multiple === true){
			    	var inputW = input.width();
				    var tagW = tag.innerWidth();
				    input.val('');
					//input.val('').css('width',(inputW - tagW)+'px');
			    }
			    tag.find("[tag-close]").bind('click', function(){
			        var button = $(this);
			        var tag = button.parents("span.tag[tag]");
			        if(multiple === true){
					    input.css('width',(textarea.innerWidth())+'px');
			        }else {
			        	tag.after(code);
			        	//editor_tagPlaces(selector);
			        }
			        tag.remove();
			    });
		    }else if (type == 'info') {
		    	var type = brTrue.attr("info-type");
		        var id = brTrue.attr("info-id");
		        var name = brTrue.attr("info-name");
		        var tag_code = '<span class="tag" tag="info" tag-type="'+type+'" tag-id="'+id+'"><a tag-name>'+name+'</a><i tag-close></i></span>';
		        var tag = parent.find("span.tag[tag][tag-type='"+type+"'][tag-id='"+id+"']");
		        if (tag.length > 0) {
		        	popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('it_is_tagged', 'ucfirst'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		        }
		        if(multiple === true && tag.length === 0){
				    input.before(tag_code);
				    boxSuggest.remove();
		        }else if (multiple === false && tag.length === 0) {
		        	var code = selector[0];
				    input.before(tag_code).remove();
				    boxSuggest.remove();
		        }
		        var tag = parent.find("span.tag[tag]");
		        if(multiple === true){
			    	var inputW = input.width();
				    var tagW = tag.innerWidth();
				    input.val('');
					// input.val('').css('width',(inputW - tagW)+'px');
			    }
			    tag.find("[tag-close]").bind('click', function(){
			        var button = $(this);
			        var tag = button.parents("span.tag[tag]");
			        if(multiple === true){
					    input.css('width',(textarea.innerWidth())+'px');
			        }else {
			        	tag.after(code);
			        	$(selector).AutoComplete({'path': 'info', 'from': type, 'output': output, 'multiple': multiple, 'callback': callback});
			        	callback("remove", boxSuggest.find("[box-row][row-selected='true']"));
			        }
			        tag.remove();
			    });
		    }else if (type == 'mood') {
		    	var type = brTrue.attr("mood-type");
		        var code = brTrue.attr("mood-code");
		        var text = brTrue.attr("mood-text");
		        var tag_code = '<span class="tag" tag="mood" tag-type="'+type+'" tag-code="'+code+'" tag-text="'+text+'"><a tag-name>'+text+'</a><i tag-close></i></span>';
		        var tag = parent.find("span.tag[tag][tag-type='"+type+"'][tag-id='"+id+"']");
		        if (tag.length > 0) {
		        	popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('it_is_tagged', 'ucfirst'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		        }
		        if(multiple === true && tag.length === 0){
				    input.before(tag_code);
				    boxSuggest.remove();
		        }else if (multiple === false && tag.length === 0) {
		        	var code = selector[0];
				    input.before(tag_code).remove();
				    boxSuggest.remove();
		        }
		        var tag = parent.find("span.tag[tag]");
		        if(multiple === true){
			    	var inputW = input.width();
				    var tagW = tag.innerWidth();
				    input.val('');
					// input.val('').css('width',(inputW - tagW)+'px');
			    }
			    tag.find("[tag-close]").bind('click', function(){
			        var button = $(this);
			        var tag = button.parents("span.tag[tag]");
			        if(multiple === true){
					    input.css('width',(textarea.innerWidth())+'px');
			        }else {
			        	tag.after(code);
			        	//editor_tagMood(selector);
			        }
			        tag.remove();
			    });
		    }else if (type == 'media') {
		    	var type = brTrue.attr("media-type");
		        var token = brTrue.attr("media-token");
		        var thumbnail = brTrue.attr("media-thumbnail");
		        var name = brTrue.attr("media-name");
		        var tag_code = '<span class="tag" tag="media" tag-type="'+type+'" tag-token="'+token+'" tag-thumbnail="'+thumbnail+'" tag-name="'+name+'"><a tag-name>'+name+'</a><i tag-close></i></span>';
		        var tag = parent.find("span.tag[tag][tag-type='"+type+"'][tag-id='"+id+"']");
		        if (tag.length > 0) {
		        	popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: "<?php print $_language->text('it_is_tagged', 'ucfirst'); ?>.", timeout: '<?php print $_parameter->get('notifyPopup_timeout'); ?>'});
		        }
		        if(multiple === true && tag.length === 0){
				    input.before(tag_code);
				    boxSuggest.remove();
		        }else if (multiple === false && tag.length === 0) {
		        	var code = selector[0];
				    input.before(tag_code).remove();
				    boxSuggest.remove();
		        }
		        var tag = parent.find("span.tag[tag]");
		        if(multiple === true){
			    	var inputW = input.width();
				    var tagW = tag.innerWidth();
				    input.val('');
					//input.val('').css('width',(inputW - tagW)+'px');
			    }
			    tag.find("[tag-close]").bind('click', function(){
			        var button = $(this);
			        var tag = button.parents("span.tag[tag]");
			        if(multiple === true){
					    input.css('width',(textarea.innerWidth())+'px');
			        }else {
			        	tag.after(code);
			        	$(selector).AutoComplete({'path': 'media', 'from': type, 'output': output, 'multiple': multiple, 'callback': callback});
			        	callback("remove", boxSuggest.find("[box-row][row-selected='true']"));
			        }
			        tag.remove();
			    });
		    }
		}
	}
	function scrollBar (selector) {
		$("#boxSuggest > .body > .main").barScroll({height: 'auto', size: '5px', railOpacity: 0.5});
	}
	function close () {
		$(document).bind('click', function(){
			var boxSuggest = $("#boxSuggest[randkey='"+randkey+"']");
			$(document).bind('click', function(){
				boxSuggest.remove();
			});
			boxSuggest.bind('click', function(){
				return false;
			});
		});
	}
}
function transferError (id) {
	var error = {
		"ERROR#USER_000": "<?php print $_language->text('transmission_error', 'ucfirst'); ?>",
		"ERROR#USER_001": "<?php print $_language->text('username_is_invalid', 'ucfirst'); ?>",
		"ERROR#USER_002": "<?php print $_language->text('password_is_invalid', 'ucfirst'); ?>",
		"ERROR#USER_003": "<?php print $_language->text('username_is_not_found', 'ucfirst'); ?>",
		"ERROR#USER_004": "<?php print $_language->text('password_is_incorrect', 'ucfirst'); ?>",
		"ERROR#USER_005": "<?php print $_language->text('remember_return_is_invalid', 'ucfirst'); ?>",
		"ERROR#USER_006": "<?php print $_language->text('username_is_already_exists', 'ucfirst'); ?>",
		"ERROR#USER_007": "<?php print $_language->text('email_is_already_exists', 'ucfirst'); ?>",
		"ERROR#USER_008": "<?php print $_language->text('repeat_password_is_not_coincide', 'ucfirst'); ?>",
		"ERROR#USER_009": "<?php print $_language->text('phone_is_invalid', 'ucfirst'); ?>",
		"ERROR#USER_010": "<?php print $_language->text('name_is_invalid', 'ucfirst'); ?>",
		"ERROR#USER_011": "<?php print $_language->text('gender_is_invalid', 'ucfirst'); ?>",
		"ERROR#USER_012": "<?php print $_language->text('birthday_is_invalid', 'ucfirst'); ?>",
		"ERROR#USER_013": "<?php print $_language->text('agree_return_is_invalid', 'ucfirst'); ?>",
		"ERROR#USER_014": "<?php print $_language->text('agree_is_not_check', 'ucfirst'); ?>",
		"ERROR#USER_015": "<?php print $_language->text('email_is_invalid', 'ucfirst'); ?>",
		"ERROR#FEEDS_001": "<?php print $_language->text('status_id_is_invalid', 'ucfirst'); ?>",
		"ERROR#FEEDS_002": "<?php print $_language->text('action_is_invalid', 'ucfirst'); ?>",
		"ERROR#FEEDS_003": "<?php print $_language->text('user_is_not_found', 'ucfirst'); ?>",
		"ERROR#FEEDS_004": "<?php print $_language->text('status_is_not_found', 'ucfirst'); ?>",
		"ERROR#FEEDS_005": "<?php print $_language->text('action_have_been_implemented', 'ucfirst'); ?>",
		"ERROR#FEEDS_006": "<?php print $_language->text('action_is_not_allowed', 'ucfirst'); ?>",
		"ERROR#FEEDS_007": "<?php print $_language->text('error_in_the_implementation_process', 'ucfirst'); ?>",
		"ERROR#FEEDS_008": "<?php print $_language->text('action_is_being_carried_out', 'ucfirst'); ?>",
		"ERROR#FEEDS_009": "<?php print $_language->text('comment_id_is_invalid', 'ucfirst'); ?>",
		"ERROR#FEEDS_010": "<?php print $_language->text('editor_missing_content', 'ucfirst'); ?>",
		"ERROR#FEEDS_011": "<?php print $_language->text('media_file_missing_info', 'ucfirst'); ?>",
		"ERROR#FEEDS_012": "<?php print $_language->text('not_authorized_to_perform', 'ucfirst'); ?>",
		"ERROR#FEEDS_013": "<?php print $_language->text('some_action_is_not_completed', 'ucfirst'); ?>"
	}
	if(error[id] === undefined || error[id] === null){
		var text = '<?php print $_language->text("not_identified", "ucfirst"); ?>';
	}else {
		var text = error[id];
	}
	return text;
}
function loadScript(filename, filetype){
	if (filetype == "js") {
		var fileref = document.createElement('script');
		fileref.setAttribute("type", "text/javascript");
		fileref.setAttribute("src", filename);
	}else if (filetype == "css") {
		var fileref = document.createElement("link");
		fileref.setAttribute("rel", "stylesheet");
		fileref.setAttribute("type", "text/css");
		fileref.setAttribute("href", filename);
	}
	if (typeof fileref != undefined) {
		document.getElementsByTagName("head")[0].appendChild(fileref);
	}
}
function callUpdate () {
	var reloadFunc = function(){
		setTimeout(function(){
			callUpdate();
		}, <?php print $_parameter->get('updateLoop_timeout'); ?>);
	};
	$.ajax({
		url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
		type: "POST",
		data: {'port': 'user', 'token': '<?php print $g_client['token']['action']['user']; ?>', 'type': 'reload'},
		dataType: "json",
		contentType: "<?php print $_parameter->get('contentType_urlencoded.utf8'); ?>",
		success: function (data) {
			if (data['return'] != undefined && data['return'] === true) {
				//.
			}else {
				//.
			}
		}
	}).fail(reloadFunc).done(reloadFunc);
}
function ExplorerPopup (object) {
	var titleText;
	if (isset(object['randkey']) && object['randkey'] !== null) {
		var randkey = object['randkey'];
	}else {
		return false;
	}
	if (object['port'] != undefined && object['port'] != null) {
		if (object['port'] == "photos") {
			var titleText = "<?php print $_language->text('explorer', 'ucfirst')." - ".$_language->text('photos', 'ucfirst'); ?>";
		}else if (object['port'] == "music") {
			var titleText = "<?php print $_language->text('explorer', 'ucfirst')." - ".$_language->text('music', 'ucfirst'); ?>";
		}else if (object['port'] == "videos") {
			var titleText = "<?php print $_language->text('explorer', 'ucfirst')." - ".$_language->text('videos', 'ucfirst'); ?>";
		}else {
			var titleText = "<?php print $_language->text('explorer', 'ucfirst'); ?>";
		}
	}else {
		return false;
	}
	var tab = $("#ExplorerPopup");
	if (tab.length === 0) {
		var code = ' <div id="ExplorerPopup" randkey="'+randkey+'"> <div class="wrapFilter"></div> <div class="boxContent"> <div class="header"> <span>'+titleText+'</span> <i close> </i> </div>  <div class="body"> <div class="nav"> <div class="list"> <div class="rows active" type="cache"> <span>Cache</span> </div> <div class="rows" type="sync"> <span>Sync</span> </div> </div> <div class="arrow"></div> </div> <div class="data"> <div class="main"> </div> </div> </div> <div class="footer"> <div class="copyright"> <span> <?php print $_language->text('Explorer_footer_text'); ?> </span> </div> </div> </div> </div> ';
		$("body").append(code);
		$("body").css('overflow-y', 'hidden');
		var tab = $("#ExplorerPopup[randkey='"+randkey+"']");
		tab.hide().fadeIn();
	}
	$("#ExplorerPopup[randkey='"+randkey+"'] > .boxContent").boxPosition({position: "center", resize: true});
	$("#ExplorerPopup[randkey='"+randkey+"'] > .boxContent > .body > .data > .main").barScroll({
		height: "565px",
		size: "6px",
		color: "#222",
		distance: "6px"
	});
	if (object['data'] == undefined ||object['data'] == null || typeof object['data'] != "object") {
		return false;
	}
	if (object['data']['callback'] != undefined && object['data']['callback'] != null) {
		//.
	}
	var tab = $("#ExplorerPopup[randkey='"+randkey+"']");
	var boxContent = tab.children(".boxContent");
	var listType = boxContent.find(".body > .nav > .list");
	var closeButton = tab.find(".header [close]");
	closeButton.bind('click', function(){
		tab.fadeOut(function(){
			$(this).remove();
			$("body").css('overflow-y', 'auto');
		});
	});
	$(document).bind('keyup',function(e) {
		var keycode = (e.keyCode ? e.keyCode : e.which);
		if (keycode == '27' && tab.length > 0) {
			closeButton.click();
		}
	});
	function action () {
		var tab = $("#ExplorerPopup[randkey='"+randkey+"']");
		var boxContent = tab.children(".boxContent");
		var listType = boxContent.find(".body > .nav > .list");
		var arrowType = boxContent.find(".body > .nav > .arrow");
		listType.children("[type]").bind('click', function(){
			var thisType = $(this);
			listType.children("[type]").removeClass('active');
			thisType.addClass('active');
			arrowType.attr('arrow', thisType.attr('type'));
			var options = {"port": object['port'], "type": thisType.attr('type'), "callback": object['data']['callback']};
			loadData(options);
		});
		var navTime = boxContent.find(".body .grid > .rows > .nav.time");
		navTime.children(".close").hide();
	}
	action();
	if (object['data']['type'] != undefined && object['data']['type'] != null) {
		listType.children("[type]").each(function(){
			if ($(this).attr('type') == object['data']['type']) {
				$(this).click();
				return false;
			}
		});
	}else {
		return false;
	}
	function loadData (object) {
		if (tab.attr("handling-data") != "true") {
			tab.attr("handling-data", 'true');
			if ((object['port'] == undefined || object['port'] == null) || (object['type'] == undefined || object['type'] == null)) {
				return false;
			}else {
				boxContent.find(".body > .data .main").fadeOut(100).html('<div class="waiting_setup_data"><span><?php print $_language->text('loading_data', 'ucfirst'); ?>, <?php print $_language->text('please_wait', 'strtolower', false); ?></span></div>').fadeIn();
			}
			var doneRequestFunc = function () {
				object['callback']();
				setTimeout(function(){
					tab.removeAttr("handling-data");
				}, 100);
				boxContent.find(".body > .data .waiting_setup_data").slideUp(function(){
					$(this).remove();
				});
			};
			var configData = {'type': object['port'], 'local': object['type'], 'class': 'list'};
			var data = {'token': '<?php print $g_client['token']['action']['explorer']; ?>', 'port': 'explorer', 'type': object['port'], 'local': object['type'], 'action': 'get', 'class': 'list'};
			$.ajax({
				url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
				type: 'POST',
				data: data,
				dataType: 'json',
				success: function(dataReturn) {
					if (isset(dataReturn['return']) && dataReturn['return'] === true) {
						if (isset(dataReturn['data']) && dataReturn['data'] !== null && typeof dataReturn['data'] == "object" && isset(dataReturn['data']['file']) && dataReturn['data']['file'] !== null && typeof dataReturn['data']['file'] == "object") {
							if ($.isEmptyObject(dataReturn['data']['file']) === true) {
								boxContent.find(".body > .data .main").after('<div class="empty_data"><span><?php print $_language->text('data_storage_empty', 'ucfirst'); ?></span></div>');
							}else {
								for (var i in dataReturn['data']['file']) {
									var thisFile = dataReturn['data']['file'][i];
									pushData(configData, thisFile);
									action();
								}
							}
						}else {
							boxContent.find(".body > .data .main").append('<div class="empty_data"><span><?php print $_language->text('data_storage_empty', 'ucfirst'); ?></span></div>');
						}
					}else if (isset(dataReturn['return']) && dataReturn['return'] === false) {
						if (isset(dataReturn['reason'])) {
							popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
						}else {
							popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
						}
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		}
	}
	function pushData (config, object) {
		if ((!isset(object['link']) || object['link'] === null) || (!isset(object['mime']) || object['mime'] === null) || (!isset(object['name']) || object['name'] === null) || (!isset(object['secret']) || object['secret'] === null)) {
			return false;
		}else {
			if ((!isset(object['type']) || object['type'] === null) || (!isset(object['local']) || object['local'] === null)) {
				return false;
			}else if (config['type'] == "photos" && config['local'] == "cache") {
				var fileInfo = {'type': object['type'], 'local': object['local'], 'verify': object['verify'], 'secret': object['secret'], 'name': object['name'], 'nameraw': object['nameraw'], 'mime': object['mime'], 'size': object['size'], 'link': object['link'], 'time': object['time']};
				var c_ = {};
				c_['nav'] = {};
				c_['info'] = {};
				if (isset(fileInfo['time']) && fileInfo['time'] !== null) {
					if (fileInfo['time'] === 0) {
						c_['nav']['time'] = " <div class='time'> <i></i> <span><?php print $_language->text('undefined', 'ucfirst'); ?></span> </div> ";
					}else {
						c_['nav']['time'] = " <div class='time'> <i></i> <span time-ago='"+fileInfo['time']+"'>"+agoDatetime(fileInfo['time'], 'ago')+"</span> </div> ";
					}
				}else {
					c_['nav']['time'] = '';
				}
				if (isset(fileInfo['close']) && fileInfo['close'] !== null) {
					c_['nav']['close'] = '';
				}else {
					c_['nav']['close'] = '';
				}
				if (isset(fileInfo['nameraw']) && fileInfo['nameraw'] !== null) {
					fileInfo['nameraw'] = HTMLEncode(fileInfo['nameraw']);
					c_['info']['nameraw'] = " <div class='rows nameraw'> <i></i> <div>"+fileInfo['nameraw']+"</div> </div> ";
				}else {
					c_['info']['nameraw'] = '';
				}
				if (isset(fileInfo['mime']) && fileInfo['mime'] !== null) {
					c_['info']['mime'] = " <div class='rows mime'> <i></i> <div>"+fileInfo['mime']+"</div> </div> ";
				}else {
					c_['info']['mime'] = '';
				}
				if (isset(fileInfo['size']) && fileInfo['size'] !== null) {
					c_['info']['size'] = " <div class='rows size'> <i></i> <div>"+fileInfo['size']+"</div> </div> ";
				}else {
					c_['info']['size'] = '';
				}
				if (isset(fileInfo['verify']) && fileInfo['verify'] !== null) {
					if (fileInfo['verify'] === true) {
						c_['info']['clean'] = 'none';
					}else {
						c_['info']['clean'] = 'auto';
					}
					c_['info']['clean'] = " <div class='rows clean'> <i></i> <div>"+c_['info']['clean']+"</div> </div> ";
				}else {
					c_['info']['clean'] = '';
				}
				var codeRows = "<div class='rows cr-pointer _h' file='"+JSON.stringify(fileInfo)+"' file-selected style='background-image: url("+fileInfo['link']+")'> <i checkbox></i> <div class='box info'> <div class='nav'> <i></i> <span><?php print $_language->text('file_info', 'ucfirst'); ?></span> </div> <div class='tab'> "+c_['info']['nameraw']+" "+c_['info']['mime']+" "+c_['info']['size']+" "+c_['info']['clean']+" </div> </div> <div class='nav time'> "+c_['nav']['time']+c_['nav']['close']+" </div> </div>";
				var gird = boxContent.find(".body > .data .main > .grid");
				if (gird.length === 0) {
					boxContent.find(".body > .data .main").append('<div class="grid"></div>');
					var gird = boxContent.find(".body > .data .main > .grid");
				}
				var rows = boxContent.find(".body > .data .main > .grid > .rows[file]");
				if (rows.length === 0) {
					gird.append(codeRows);
				}else {
					var count = 0;
					rows.each(function(){
						var thisRows = $(this);
						var thisRows_file = JSON.parse(thisRows.attr('file'));
						if (thisRows_file['type'] == fileInfo['type'] && thisRows_file['local'] == fileInfo['local'] && thisRows_file['secret'] == fileInfo['secret'] && thisRows_file['name'] == fileInfo['name']) {
							count++;
						}
					});
					if (count === 0) {
						rows.first().before(codeRows);
						return false;
					}
				}
			}else if (config['type'] == "music" && config['local'] == "cache") {
				var fileInfo = {'type': object['type'], 'local': object['local'], 'verify': object['verify'], 'secret': object['secret'], 'name': object['name'], 'nameraw': object['nameraw'], 'mime': object['mime'], 'size': object['size'], 'link': object['link'], 'duration': object['duration'], 'time': object['time']};
				var c_ = {};
				c_['nav'] = {};
				c_['info'] = {};
				if (fileInfo['time'] != undefined && fileInfo['time'] != null) {
					if (fileInfo['time'] === 0) {
						c_['nav']['time'] = " <div class='time'> <i></i> <span><?php print $_language->text('undefined', 'ucfirst'); ?></span> </div> ";
					}else {
						c_['nav']['time'] = " <div class='time'> <i></i> <span time-ago='"+fileInfo['time']+"'>"+agoDatetime(fileInfo['time'], 'ago')+"</span> </div> ";
					}
				}else {
					c_['nav']['time'] = '';
				}
				if (fileInfo['close'] != undefined && fileInfo['close'] != null) {
					c_['nav']['close'] = '';
				}else {
					c_['nav']['close'] = '';
				}
				if (fileInfo['nameraw'] != undefined && fileInfo['nameraw'] != null) {
					fileInfo['nameraw'] = HTMLEncode(fileInfo['nameraw']);
					c_['info']['nameraw'] = " <div class='rows nameraw'> <i></i> <div>"+fileInfo['nameraw']+"</div> </div> ";
				}else {
					c_['info']['nameraw'] = '';
				}
				if (fileInfo['mime'] != undefined && fileInfo['mime'] != null) {
					c_['info']['mime'] = " <div class='rows mime'> <i></i> <div>"+fileInfo['mime']+"</div> </div> ";
				}else {
					c_['info']['mime'] = '';
				}
				if (fileInfo['duration'] != undefined && fileInfo['duration'] != null) {
					c_['info']['time'] = " <div class='rows time'> <i></i> <div>"+fileInfo['duration']+"</div> </div> ";
					c_['nav']['duration'] = " <div class='nav duration'> <div>"+fileInfo['duration']+"</div> </div> ";
				}else {
					c_['info']['time'] = '';
					c_['nav']['duration'] = '';
				}
				if (fileInfo['size'] != undefined && fileInfo['size'] != null) {
					c_['info']['size'] = " <div class='rows size'> <i></i> <div>"+fileInfo['size']+"</div> </div> ";
				}else {
					c_['info']['size'] = '';
				}
				if (fileInfo['verify'] != undefined && fileInfo['verify'] != null) {
					if (fileInfo['verify'] === true) {
						c_['info']['clean'] = 'none';
					}else {
						c_['info']['clean'] = 'auto';
					}
					c_['info']['clean'] = " <div class='rows clean'> <i></i> <div>"+c_['info']['clean']+"</div> </div> ";
				}else {
					c_['info']['clean'] = '';
				}
				var codeRows = "<div class='rows cr-pointer _h' file='"+JSON.stringify(fileInfo)+"' file-selected style='background-image: url("+fileInfo['thumbnail']+")'> <i checkbox></i> <div class='box info'> <div class='nav'> <i></i> <span><?php print $_language->text('file_info', 'ucfirst'); ?></span> </div> <div class='tab'> "+c_['info']['nameraw']+" "+c_['info']['mime']+" "+c_['info']['time']+" "+c_['info']['size']+" "+c_['info']['clean']+" </div> </div> <div class='nav time'> "+c_['nav']['time']+c_['nav']['close']+" </div> "+c_['nav']['duration']+" </div>";
				var gird = boxContent.find(".body > .data .main > .grid");
				if (gird.length === 0) {
					boxContent.find(".body > .data .main").append('<div class="grid"></div>');
					var gird = boxContent.find(".body > .data .main > .grid");
				}
				var rows = boxContent.find(".body > .data .main > .grid > .rows[file]");
				if (rows.length === 0) {
					gird.append(codeRows);
				}else {
					var count = 0;
					rows.each(function(){
						var thisRows = $(this);
						var thisRows_file = JSON.parse(thisRows.attr('file'));
						if (thisRows_file['type'] == fileInfo['type'] && thisRows_file['local'] == fileInfo['local'] && thisRows_file['secret'] == fileInfo['secret'] && thisRows_file['name'] == fileInfo['name']) {
							count++;
						}
					});
					if (count === 0) {
						rows.first().before(codeRows);
						return false;
					}
				}
			}else if (config['type'] == "videos" && config['local'] == "cache") {
				var fileInfo = {'type': object['type'], 'local': object['local'], 'verify': object['verify'], 'secret': object['secret'], 'name': object['name'], 'nameraw': object['nameraw'], 'mime': object['mime'], 'size': object['size'], 'link': object['link'], 'thumbnail': object['thumbnail'], 'duration': object['duration'], 'time': object['time']};
				var c_ = {};
				c_['nav'] = {};
				c_['info'] = {};
				if (fileInfo['time'] != undefined && fileInfo['time'] != null) {
					if (fileInfo['time'] === 0) {
						c_['nav']['time'] = " <div class='time'> <i></i> <span><?php print $_language->text('undefined', 'ucfirst'); ?></span> </div> ";
					}else {
						c_['nav']['time'] = " <div class='time'> <i></i> <span time-ago='"+fileInfo['time']+"'>"+agoDatetime(fileInfo['time'], 'ago')+"</span> </div> ";
					}
				}else {
					c_['nav']['time'] = '';
				}
				if (fileInfo['close'] != undefined && fileInfo['close'] != null) {
					c_['nav']['close'] = '';
				}else {
					c_['nav']['close'] = '';
				}
				if (fileInfo['nameraw'] != undefined && fileInfo['nameraw'] != null) {
					fileInfo['nameraw'] = HTMLEncode(fileInfo['nameraw']);
					c_['info']['nameraw'] = " <div class='rows nameraw'> <i></i> <div>"+fileInfo['nameraw']+"</div> </div> ";
				}else {
					c_['info']['nameraw'] = '';
				}
				if (fileInfo['mime'] != undefined && fileInfo['mime'] != null) {
					c_['info']['mime'] = " <div class='rows mime'> <i></i> <div>"+fileInfo['mime']+"</div> </div> ";
				}else {
					c_['info']['mime'] = '';
				}
				if (fileInfo['duration'] != undefined && fileInfo['duration'] != null) {
					c_['info']['time'] = " <div class='rows time'> <i></i> <div>"+fileInfo['duration']+"</div> </div> ";
					c_['nav']['duration'] = " <div class='nav duration'> <div>"+fileInfo['duration']+"</div> </div> ";
				}else {
					c_['info']['time'] = '';
					c_['nav']['duration'] = '';
				}
				if (fileInfo['size'] != undefined && fileInfo['size'] != null) {
					c_['info']['size'] = " <div class='rows size'> <i></i> <div>"+fileInfo['size']+"</div> </div> ";
				}else {
					c_['info']['size'] = '';
				}
				if (fileInfo['verify'] != undefined && fileInfo['verify'] != null) {
					if (fileInfo['verify'] === true) {
						c_['info']['clean'] = 'none';
					}else {
						c_['info']['clean'] = 'auto';
					}
					c_['info']['clean'] = " <div class='rows clean'> <i></i> <div>"+c_['info']['clean']+"</div> </div> ";
				}else {
					c_['info']['clean'] = '';
				}
				var codeRows = "<div class='rows cr-pointer _h' file='"+JSON.stringify(fileInfo)+"' file-selected style='background-image: url("+fileInfo['thumbnail']+")'> <i checkbox></i> <div class='box info'> <div class='nav'> <i></i> <span><?php print $_language->text('file_info', 'ucfirst'); ?></span> </div> <div class='tab'> "+c_['info']['nameraw']+" "+c_['info']['mime']+" "+c_['info']['time']+" "+c_['info']['size']+" "+c_['info']['clean']+" </div> </div> <div class='nav time'> "+c_['nav']['time']+c_['nav']['close']+" </div> "+c_['nav']['duration']+" </div>";
				var gird = boxContent.find(".body > .data .main > .grid");
				if (gird.length === 0) {
					boxContent.find(".body > .data .main").append('<div class="grid"></div>');
					var gird = boxContent.find(".body > .data .main > .grid");
				}
				var rows = boxContent.find(".body > .data .main > .grid > .rows[file]");
				if (rows.length === 0) {
					gird.append(codeRows);
				}else {
					var count = 0;
					rows.each(function(){
						var thisRows = $(this);
						var thisRows_file = JSON.parse(thisRows.attr('file'));
						if (thisRows_file['type'] == fileInfo['type'] && thisRows_file['local'] == fileInfo['local'] && thisRows_file['secret'] == fileInfo['secret'] && thisRows_file['name'] == fileInfo['name']) {
							count++;
						}
					});
					if (count === 0) {
						rows.first().before(codeRows);
						return false;
					}
				}
			}
			if (isset(codeRows) && codeRows !== null) {
				boxContent.find(".body > .data .main > .grid > .rows[file]._h").hide();
				setTimeout(function() {
					var rows = boxContent.find(".body > .data .main > .grid > .rows[file]._h");
					rows.callEffect({
						mode: 2, 
						type: "show", 
						effect: "fade", 
						duration: <?php print $_parameter->get("status_comment_effect_duration"); ?>, 
						nextTime: <?php print $_parameter->get("status_comment_effect_nextTime"); ?>,
						complete: function () {
							$(this).removeClass("_h");
						}
					});
					rows.removeClass("_h");
				}, <?php print $_parameter->get("status_comment_effect_show"); ?>);
			}
		}
	}
}
function direct () {
	$("[direct]").bind('click dblclick mouseenter', function(e) {
		var direct = $(this);
		if (direct.attr('directing') != 'true') {
			direct.attr('directing', 'true');
		}else {
			return false;
		}
		if (direct.attr('direct') === undefined || typeof JSON.parse(direct.attr('direct')) != "object") {
			return false;
		}
		var info = JSON.parse(direct.attr('direct'));
		var link = info['to'];
		if (info['by'] !== null && e.type == info['by'] && (info['by'] == "click" || info['by'] == "dblclick" || info['by'] == "mouseenter")) {
			e.preventDefault();
			e.stopPropagation();
			if (info['target'] != null && info['target'] != undefined) {
				window.open(link, info['target']);
			}else {
				window.location.href = link;
			}
			setTimeout(function(){
				direct.removeAttr('directing');
			}, 250);
		}else {
			direct.removeAttr('directing');
			return false;
		}
	});
	/*
	$("[href], [direct]").bind('click', function(e){
		var a = $(this);
		if (a.attr('href') != undefined && a.attr('href') != null) {
			var url = a.attr('href');
		}else if (a.attr('direct') != undefined && a.attr('direct') != null) {
			var direct = JSON.parse(a.attr('direct'));
			if (typeof direct == "object" && direct['to'] != undefined) {
				if (direct['target'] == null || direct['target'] == undefined || direct['target'] == "normal") {
					var url = direct['to'];
				}
			}
		}
	    if (url != undefined && url != null && $("#gMain").attr("handling-reload") == undefined) {
	    	disabledEventPropagation();
	    	$("#gMain").attr("handling-reload", url);
		    $.ajax({
				type: "POST",
				dataType: "json",
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				data: {'token': '<?php print $g_client['token']['action']['ajaxify']; ?>', 'port': 'ajaxify', 'url': url},
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					console.log(data);
					if (data['return'] === true) {
						if (data['direct'] === true) {
							window.location.href = url;
						}else {
							reloadMain(data['data']);
						}
					}
				}
		    }).done(function(){
		    	$("#gMain").removeAttr("handling-reload");
		    });
	    }
	});
	function reloadMain (object) {
		wrapLoading("show");
		var path = object['path'];
		var title = object['title'];
		var callback = object['callback'];
		var html = object['html'];
		var script = object['script'];
		var css = object['css'];
		$(document).mouseout();
		$("title").text("<?php print $_language->text('pages_loading.title', 'ucwords', false); ?>");
		$("head").html(html['head']);
		$("body").html(html['body']);
		// $("footer").html(html['footer']);
		$("html").hide(function(){
			$(document).ready(function(){
				for (var i in script) {
					// getScriptPush(script[i]);
				}
				$("html").hide().show(function(){
					// window["callbackFunction"];
					window.history.pushState("", title, path);
					$("title").text(title);
					wrapLoading("hide");
				});
			});
		});
	}
	function wrapLoading (type) {
		if (type == "hide") {
			
		}else if (type == "show") {

		}
	}
	*/
	function getScriptPush (object) {
		if ($("#gSource").children("#scriptLoaded").length === 0) {
			$("#gSource").children(":first").before("<div id='scriptLoaded'></div>");
		}
		var scriptLoaded = $("#gSource").children("#scriptLoaded");
		if (object['src'] != null) {
			var content = object['src'];
		}else if (object['innerHTML'] != null) {
			var content = object['innerHTML'];
		}
		var count = 0;
		scriptLoaded.children("div").each(function(){
			var isLoaded = $(this);
			if (isLoaded.text() == content) {
				count++;
			}
		});
		if (count === 0) {
			scriptLoaded.append("<div>"+content+"</div>");
			getScriptLoaded();
		}else {
			//.
		}
	}
	function getScriptLoaded () {
		if ($("#gSource").children("#scriptLoaded").length === 0) {
			$("#gSource").children(":first").before("<div id='scriptLoaded'></div>");
		}
		var scriptLoaded = $("#gSource").children("#scriptLoaded");
		$("script").each(function(){
			var script = $(this);
			var src = $(this).attr('src');
			var count = 0;
			scriptLoaded.children("div").each(function(){
				var isLoaded = $(this);
				if (isLoaded.text() == src) {
					count++;
				}
			});
			if (count === 0) {
				scriptLoaded.append("<div>"+src+"</div>");
			}
		});
	}
	$(document).ready(function(){
		getScriptLoaded();
	});
}
function wrapperLoad (randkey, action, timeout, callback) {
	if (!isset(randkey) || randkey === null) {
		var randkey = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>);
	}
	if (typeof action == "boolean" && action === true) {
		var codeWrapper = " <div id='wrapperLoading' randkey='"+randkey+"'> <div class='wrapFilter'></div> <div class='close'></div> <div class='loading'></div> </div> ";
		$("body").css("overflow-y", "hidden").append(codeWrapper);
		var thisWrapper = $("#wrapperLoading[randkey='"+randkey+"']"),
			close = thisWrapper.find(".close");
		if (isset(callback) && typeof callback == "function") {
			close.bind('click', callback);
		}
		var closeFunc = function () {
			$("body").css({'overflow-y': 'auto'});
			thisWrapper.fadeOut(function(){
				thisWrapper.remove();
			});
		}
		close.bind('click', closeFunc);
		$(document).bind('keyup', function(e) {
			var keycode = (e.keyCode ? e.keyCode : e.which);
			if (keycode == '27') {
				close.click();
			}
		});
		if (typeof timeout == "number" && timeout !== 0) {
			setTimeout(function(){
				wrapperLoad(randkey, false);
			},timeout);
		}
		return true;
	}else if (typeof action == "boolean" && action === false) {
		var thisWrapper = $("#wrapperLoading[randkey='"+randkey+"']"),
			close = thisWrapper.find(".close");
		close.click();
		if (isset(callback) && typeof callback == "function") {
			if (typeof timeout == "number" && timeout !== 0) {
				setTimeout(callback, timeout);
			}else {
				callback();
			}
		}
		return true;
	}else {
		return false;
	}
}
var messagesTabPrivate = function (object) {
	var actionPositionPopup = function (popup, object) {
		if (!isset(popup) || !isset(object['display'])) {
			return false;
		}
		var popupDisplay = object['display'];
		var getPositionPopup = function () {
			var posObj = getCookie("messagesTabPostition");
			if (isset(posObj) && posObj !== null) {
				if (isset(JSON.parse(posObj)) && typeof JSON.parse(posObj) == "object") {
					var popupPosObj = JSON.parse(posObj);
					if (Object.keys(popupPosObj).length == 2) {
						var tokenCookie = popupPosObj[0];
						var objCookie = popupPosObj[1];
						if (isset(tokenCookie) && tokenCookie == "<?php print $_client->client(); ?>") {
							if (isset(objCookie) && typeof objCookie == "object") {
								for (var i in objCookie) {
									var objCookieThis = objCookie[i];
									if (isset(objCookieThis['display']) && isset(objCookieThis['closed']) && isset(objCookieThis['offset']) && isset(objCookieThis['size'])) {
										if (objCookieThis['display'] == popupDisplay) {
											var isClosed = objCookieThis['closed'];
											var screenSize = {'height': $(window).innerHeight(), 'width': $(window).innerWidth()};
											var dataSize = objCookieThis['size'];
											var ratioSize = {'height': screenSize['height'] / dataSize['height'], 'width': screenSize['width'] / dataSize['width']};
											var dataOffset = objCookieThis['offset'];
											var tabOffset = {'x': dataOffset['x'] * ratioSize['width'], 'y': dataOffset['y'] * ratioSize['height']} //. top = y; left = x;
											if (isClosed === true || isClosed === 1) {
												popup.find(".title").dblclick();
											}
											if (tabOffset['y'] != popup.offset()['top'] && tabOffset['x'] != popup.offset()['left']) {
												popup.css({'top': tabOffset['y'], 'left': tabOffset['x']}).hide().fadeIn();
											}
										}
									}else {
										delete objCookie[i];
									}
								}
								writeCookie("messagesTabPostition", JSON.stringify([tokenCookie, objCookie]), 604800);
							}else {
								removeCookie("messagesTabPostition");
							}
						}else {
							removeCookie("messagesTabPostition");
						}
					}else {
						removeCookie("messagesTabPostition");
					}
				}else {
					removeCookie("messagesTabPostition");
				}
			}
		};
		var setPositionPopup = function () {
			var actionSetPostion = function() {
				var createObj = false;
				var dataOffset = popup.offset();
				var posObj = getCookie("messagesTabPostition");
				if (isset(posObj) && posObj !== null) {
					if (isset(JSON.parse(posObj)) && typeof JSON.parse(posObj) == "object") {
						var popupPosObj = JSON.parse(posObj);
						if (Object.keys(popupPosObj).length == 2) {
							var tokenCookie = popupPosObj[0];
							var objCookie = popupPosObj[1];
							if (isset(tokenCookie) && tokenCookie == "<?php print $_client->client(); ?>") {
								if (isset(objCookie) && typeof objCookie == "object") {
									var isFounded = 0;
									for (var i in objCookie) {
										var objCookieThis = objCookie[i];
										if (isset(objCookieThis['display'])) {
											if (objCookieThis['display'] == popupDisplay) {
												objCookie[i]['offset']['y'] = dataOffset['top'];
												objCookie[i]['offset']['x'] = dataOffset['left'];
												objCookie[i]['size']['width'] = $(window).innerWidth();
												objCookie[i]['size']['height'] = $(window).innerHeight();
												if (!popup.hasClass('active')) {
													objCookie[i]['closed'] = true;
												}else {
													objCookie[i]['closed'] = false;
												}
												isFounded++;
												break;
											}
										}else {
											delete objCookie[i];
										}
									}
									writeCookie("messagesTabPostition", JSON.stringify([tokenCookie, objCookie]), 604800);
									if (isFounded == 0) {
										var createObj = true;
									}
								}else {
									removeCookie("messagesTabPostition");
									var createObj = true;
								}
							}else {
								removeCookie("messagesTabPostition");
								var createObj = true;
							}
						}else {
							removeCookie("messagesTabPostition");
							var createObj = true;
						}
					}else {
						removeCookie("messagesTabPostition");
						var createObj = true;
					}
				}else {
					var createObj = true;
				}
				if (createObj == true) {
					if (!popup.hasClass('active')) {
						var popupClosed = true;
					}else {
						var popupClosed = false;
					}
					var tokenCookie = "<?php print $_client->client(); ?>";
					var objCookie = [{'display': popupDisplay, 'closed': popupClosed, 'offset': {'y': dataOffset['top'], 'x': dataOffset['left']}, 'size': {'height': $(window).innerHeight(), 'width': $(window).innerWidth()}}];
					writeCookie("messagesTabPostition", JSON.stringify([tokenCookie, objCookie]), 604800);
					getPositionPopup();
				}
			};
			popup.bind('dragstop', actionSetPostion);
			popup.find(".title").bind('dblclick', actionSetPostion);
			$(window).bind('resizeEnd', actionSetPostion);
		};
		var autoPositionPopup = function () {
			setTimeout(function(){
				getPositionPopup();
				setTimeout(function(){
					autoPositionPopup();
				}, 5000);
			}, 5000);
		};
		getPositionPopup();
		setPositionPopup();
		// autoPositionPopup();
	};
	var actionMessagesPopup = function (popup, object) {
		if (!isset(popup) || !isset(object['display'])) {
			//. notify error.
			return false;
		}
		var messagesTabDisplay = object['display'];
		var getInfoPopup = function (reset) {
			if (!isset(reset) || reset !== true) {
				if (popup.hasClass('configured')) {
					return false;
				}
			}
			if (popup.attr('handling-get-info') == "true") {
				return false;
			}
			var doneRequestFunc = function(){
				popup.removeAttr('handling-get-info');
			};
			popup.attr('handling-get-info', 'true');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'tab', 'action': 'get', 'rows': ['id', 'type', 'name', 'language'], 'label': 'display', 'value': messagesTabDisplay, 'limit': '1'};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					console.log(data);
					if (isset(data['return']) && isset(data['tab']) && data['return'] == true && typeof data['tab'] == "object") {
						if (countArr(data['tab']) === 0) {
							popup.fadeOut(function(){
								$(this).remove();
							});
							popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('messages_not_exist_maybe_has_deleted', 'ucfirst'); ?>.'});
						}else {
							var dataInfoPopup = data['tab'][0];
							var messagesTabThis = $(".messagesTab[display='"+dataInfoPopup['display']+"']");
							popup.attr('tab', JSON.stringify(dataInfoPopup));
							popup.find(".title").find(".name").find("span").text(dataInfoPopup['name']);
							getLastMessagesPopup({'tab': dataInfoPopup['id']});
							typeMessagesPopup({'tab': dataInfoPopup['id']});
							popup.find(".content .list").scroll(function(){
								if ($(this).scrollTop() - 0 <= 0) {
									var messagesId = popup.find(".content .list").find(".rows[messages][messages-id]").first().attr('messages-id');
									if (!isset(messagesId)) {
										//.
									}else {
										getOldMessagesPopup({'tab': dataInfoPopup['id'], 'id': messagesId});
									}
								}
							});
						}
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		};
		var typeMessagesPopup = function (object) {
			if (!isset(object['tab'])) {
				return false;
			}
			var tabId = object['tab'];
			var inputMessages = popup.find(".type > .input");
			inputMessages.bind('keyup', function(e) {
				var keycode = (e.keyCode ? e.keyCode : e.which);
				if (keycode == 13 && inputMessages.val() !== null) {
					addMessagesPopup($(this), {'tab': tabId, 'content': inputMessages.val()});
				}
			});
		};
		var addMessagesPopup = function (input, object) {
			if (!isset(object['tab']) || !isset(object['content'])) {
				return false;
			}
			var tabId = object['tab'];
			var messagesContent = object['content'];
			if (messagesContent === null) {
				return false;
			}
			if (popup.attr('handling-send-messages') == "true") {
				return false;
			}
			var doneRequestFunc = function(){
				input.val('').attr('placeholder','<?php print $_language->text('type_a_messages', 'ucfirst'); ?>').removeAttr('disabled');
				input.focus();
				popup.removeAttr('handling-send-messages');
			};
			popup.attr('handling-send-messages', 'true');
			input.val('').attr('placeholder','<?php print $_language->text('sending...', 'ucfirst'); ?>').attr('disabled','disabled');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'data', 'action': 'add', 'id': tabId, 'content': messagesContent};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					console.log(data);
					if (isset(data['return']) && data['return'] == true) {
						getNewMessagesPopup({'tab': tabId}, false);
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		};
		var getNewMessagesPopup = function (object, loop) {
			if (!isset(object['tab'])) {
				return false;
			}
			var tabId = object['tab'];
			if (isset(object['id'])) {
				var messagesId = object['id'];
			}else {
				var messagesId = popup.find(".content .list").find(".rows[messages][messages-id]").last().attr('messages-id');
				if (!isset(messagesId)) {
					var messagesId = 0;
				}
			}
			if (popup.attr('handling-update-messages') == "true") {
				if (isset(loop) && loop == true) {
					setTimeout(function(){
						getNewMessagesPopup(object, true);
					},<?php print $_parameter->get('messages_update_timeout'); ?>);
				}
				return false;
			}
			var doneRequestFunc = function(){
				popup.removeAttr('handling-update-messages');
				if (isset(loop) && loop == true) {
					setTimeout(function(){
						getNewMessagesPopup(object, true);
					},<?php print $_parameter->get('messages_update_timeout'); ?>);
				}
			};
			popup.attr('handling-update-messages', 'true');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'data', 'action': 'get', 'id': tabId, 'sort': '>', 'label': 'id', 'value': messagesId, 'limit': null};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					if (isset(data['return']) && isset(data['data']) && data['return'] == true && typeof data['data'] == "object") {
						if (countArr(data['data']) > 0) {
							for (var i in data['data']) {
								pushCodeMessagesPopup('>', data['data'][i]);
							}
						}
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		};
		var getOldMessagesPopup = function (object) {
			if (!isset(object['tab'])) {
				return false;
			}
			var tabId = object['tab'];
			var messagesId = object['id'];
			if (popup.attr('handling-get-messages') == "true" || popup.find(".content .list").find(".rows.not_found").length > 0) {
				return false;
			}
			var doneRequestFunc = function(){
				popup.removeAttr('handling-get-messages');
			};
			popup.attr('handling-get-messages', 'true');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'data', 'action': 'get', 'id': tabId, 'sort': '<', 'label': 'id', 'value': messagesId, 'limit': '10'};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					console.log(data);
					if (isset(data['return']) && isset(data['data']) && data['return'] == true && typeof data['data'] == "object") {
						if (countArr(data['data']) === 0) {
							var codeMessagesNull = "<div class='rows not_found _h'> <span><?php print $_language->text('not_found_old_messages', 'ucfirst'); ?></span> </div>";
							popup.find(".content .list").find(".rows[messages][messages-id]").first().before(codeMessagesNull);
							popup.find(".content .list").find(".rows.not_found._h").hide().slideDown();
						}else {
							for (var i in data['data']) {
								pushCodeMessagesPopup('<', data['data'][i]);
							}
						}
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		};
		getInfoPopup();
		var getLastMessagesPopup = function (object) {
			if (!isset(object['tab'])) {
				return false;
			}
			var tabId = object['tab'];
			var messagesId = object['id'];
			if (popup.attr('handling-get-messages') == "true") {
				return false;
			}
			var doneRequestFunc = function(){
				getNewMessagesPopup({'tab': tabId}, true);
				popup.removeAttr('handling-get-messages');
			};
			popup.attr('handling-get-messages', 'true');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'data', 'action': 'get', 'id': tabId, 'sort': '>=<', 'limit': '10'};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "POST",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					console.log(data);
					if (isset(data['return']) && isset(data['data']) && data['return'] == true && typeof data['data'] == "object") {
						if (countArr(data['data']) === 0) {
							var codeMessagesNull = "<div class='rows null'> <span><?php print $_language->text('may_say_hello', 'ucfirst'); ?>...</span> </div>";
							popup.find(".content .list").append(codeMessagesNull);
						}else {
							for (var i in data['data']) {
								pushCodeMessagesPopup('<', data['data'][i]);
							}
						}
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		};
		var pushCodeMessagesPopup = function (sort, object) {
			if (object['is_author'] === true) {
				var classFloatRow = "right";
			}else {
				var classFloatRow = "left";
			}
			if (object['content']['translated'] == true) {
				var codeMessagesContent = "<div class='originaltext'> <span>"+object['content']['original']+"</span> </div>";
			}else {
				var codeMessagesContent = "";
			}
			var infoObj = {'id': object['id'], 'time': object['time'], 'author': object['author']};
			var codeMessagesRow = "<div class='rows "+classFloatRow+" _h' messages='"+JSON.stringify(infoObj)+"' messages-id='"+object['id']+"'> <div class='avatar'> <a href='"+object['author']['link']+"'><img class='img' src='"+object['author']['avatar']+"'></a> </div> <div class='text'> <div class='infotext'> <div class='icon status _tt-bk s' title='<small>"+object['author']['name'] +" ("+object['author']['tag']+") - "+agoDatetime(object['time'], 'ago', false)+"</small>'></div> </div> <div class='context'> <i class='arrow'></i> <div class='maintext'> <span>"+object['content']['text']+"</span> "+codeMessagesContent+" </div> </div> </div> </div>";
			var thisMessagesRow = popup.find(".content .list").find(".rows[messages][messages-id='"+object['id']+"']");
			var otherMessagesRow = popup.find(".content .list").find(".rows[messages][messages-id]");
			var nullMessagesRow = popup.find(".content .list").find(".rows.null");
			if (nullMessagesRow.length > 0) {
				nullMessagesRow.fadeOut(function(){
					nullMessagesRow.remove();
				});
			}
			if ((sort == ">" || sort == ">=") && otherMessagesRow.length > 0 && thisMessagesRow.length === 0) {
				popup.find(".content .list").find(".rows[messages][messages-id]").last().after(codeMessagesRow);
			}else if ((sort == "<" || sort == "<=") && otherMessagesRow.length > 0 && thisMessagesRow.length === 0) {
				popup.find(".content .list").find(".rows[messages][messages-id]").first().before(codeMessagesRow);
			}else if ((sort == "==") && otherMessagesRow.length > 0 && thisMessagesRow.length === 0) {
				popup.find(".content .list").append(codeMessagesRow);
			}else if (otherMessagesRow.length === 0 && thisMessagesRow.length === 0) {
				popup.find(".content .list").append(codeMessagesRow);
			}else {
				return false;
			}
			popup.find(".content .list").find(".rows[messages][messages-id]._h").hide();
			setTimeout(function() {
				popup.find(".content .list").find(".rows[messages][messages-id]._h").callEffect({
					mode: 2, 
					type: 'show', 
					effect: 'slide', 
					duration: 250,
					nextTime: 125,
					complete: function () {
						$(this).removeClass("_h");
						setupTooltip();
					}
				});
				popup.find(".content .list").find(".rows[messages][messages-id]._h").removeClass("_h");
			}, 0);
			return true;
		};
		getInfoPopup();
	};
	console.log(object);
	if (!isset(object['display'])) {
		return false;
	}
	var messagesTabDisplay = object['display'];
	//.
	var codeRowsLeft = "<div class='rows left'> <div class='avatar'> <a><img class='img' src='http://localhost/giccos/photos/raw/static/user-avatar-small.jpg'></a> </div> <div class='text'> <div class='infotext'> <div class='icon status _tt-bk s' title='<small>Send at 12:32, 12/04</small>'></div> </div> <div class='context'> <i class='arrow'></i> <div class='maintext'> <span>content messages</span> <div class='originaltext'><span>nội dung tin nhắn</span></div> </div> </div> </div> </div>";
	var codeRowsRight = "<div class='rows right'> <div class='avatar'> <a><img class='img' src='http://localhost/giccos/photos/raw/static/user-avatar-small.jpg'></a> </div> <div class='text'> <div class='infotext'> <div class='icon status _tt-bk s' title='<small>Send at 12:32, 12/04</small>'></div> </div> <div class='context'> <i class='arrow'></i> <div class='maintext'> <span>content messages</span> </div> </div> </div> </div>";
	var codeRowsLeft = "";
	var codeRowsRight = "";
	var messagesTabCode = "<div class='messagesTab' display='"+messagesTabDisplay+"'> <div class='title'> <div class='name'> <i></i> <span>Name</span> </div> <div class='options'> <div class='close'><i class='icon'></i></div> </div> </div> <div class='content'> <div class='list'> " + codeRowsLeft + codeRowsRight + " </div> </div> <div class='type'> <textarea class='input' type='text' placeholder='<?php print $_language->text('type_a_messages', 'ucfirst'); ?>'></textarea> </div> </div>";
	$("body").append(messagesTabCode);
	var messagesTabThis = $(".messagesTab[display='"+messagesTabDisplay+"']");
	messagesTabThis.addClass('active').boxPosition({position: "center", resize: false}).draggable();
	var messagesTabIndexFunc = function(){
		$(".messagesTab[display]").css({'z-index': 100});
		messagesTabThis.css({'z-index': 101});
		messagesTabThis.bind('mouseleave', function(){
			messagesTabThis.css({'z-index': 100});
		});
	};
	var messagesTabOpenFunc = function () {
		messagesTabThis.find(".title").nextAll().slideDown(125);
		messagesTabThis.removeClass('inactive').addClass('active');
	};
	var messagesTabCloseFunc = function () {
		messagesTabThis.find(".title").nextAll().slideUp(250);
		messagesTabThis.removeClass('active').addClass('inactive');
	};
	messagesTabThis.find(".title").bind('dblclick', function(){
		if (!messagesTabThis.hasClass('active')) {
			messagesTabOpenFunc();
		}else {
			messagesTabCloseFunc();
		}
	});
	messagesTabThis.bind('click', messagesTabIndexFunc);
	messagesTabThis.find(".content > .list").barScroll({
		height: "200px",
		size: "5px",
		color: "#999",
		railOpacity: 0.1,
		distance: 0,
		alwaysVisible: true
	});
	setupTooltip();
	actionPositionPopup(messagesTabThis, {'display': messagesTabDisplay});
	actionMessagesPopup(messagesTabThis, {'display': messagesTabDisplay});
};
function callbackFunction () {
	resizeTemplates();
	setupTimestamp();
	setupTooltip();
	setupDragg();
	setupEffect();
	boxSuggest();
	callUpdate();
	direct();
	pushInfoEr();
}
$(document).ready(function(){
	resizeTemplates();
	setTimeout(function(){
		setupTimestamp();
		setupTooltip();
		setupDragg();
		setupEffect();
		boxSuggest();
		callUpdate();
		direct();
		pushInfoEr();
		messagesTabPrivate({'display': '565bee5f72d1e826e5b13ae0aa49a511'});
	}, <?php print $_parameter->get("call_function_timeout"); ?>);
});