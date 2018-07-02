function setupAjax () {
	var token = "<?php print $g_client['token']['ajax']; ?>";
	var locationWindow = window.location;
	var location = JSON.stringify({'hostname': locationWindow.host, 'port': locationWindow.port, 'protocol': locationWindow.protocol, 'pathname': locationWindow.pathname, 'href': locationWindow.href, 'hash': locationWindow.hash, 'search': locationWindow.search});
	$.ajaxSetup({
	    headers: {'Token': token, 'Location': location}
	});
}
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
	$(window).bind("resizeEnd", setSize);
	setSize();
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
		var textTitle = '<?php print $_language->text('notification', 'ucfirst', false); ?>';
	}
	if (object['content'] != null) {
		var textContent = object['content'];
	}else {
		var textContent = '';
	}
	if (object['actionTrue'] != null) {
		var textActionTrue = object['actionTrue'];
	}else {
		var textActionTrue = '<?php print $_language->text('confirm', 'ucfirst', false); ?>';
	}
	if (object['actionFalse'] != null) {
		var textActionFalse = object['actionFalse'];
	}else {
		var textActionFalse = '<?php print $_language->text('cancel', 'ucfirst', false); ?>';
	}
	if (object['enterActive'] == undefined || object['enterActive'] == null || object['enterActive'] == true) {
		var enterActive = true;
	}else {
		var enterActive = false;
	}
	if (object['escActive'] == undefined || object['escActive'] == null || object['escActive'] == true) {
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
		if (enterActive == true) {
			$(document).bind('keypress',function(e){
				var keycode = (e.keyCode ? e.keyCode : e.which);
				if (keycode == '13' && tab.find(".box > .options > .true").length > 0) {
					tab.find(".box > .options > .true").click();
				}
			});
		}
		if (escActive == true) {
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
		if (object['callbackFalse'] == false) {
			tab.find(".box > .options > .button").bind('click', function(){
				tab.fadeOut(function(){
					$(this).remove();
				});
			});
			var closeActionDefault = false;
		}
	}
	if (closeActionDefault == true) {
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
			<?php  if ($g_user['login'] == true) { ?>
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
	if(typeof object == 'object' || typeof JSON.parse(object) == 'object'){
		if(typeof object != 'object'){
			var object = JSON.parse(object);
		}
		var type = object['type'];
		var title = object['title'];
		var description = object['description'];
		var from = object['from'];
		var timeout = object['timeout'];
		var pin = object['pin'];
		var callback = object['callback'];
	}
	if(timeout == undefined || timeout == ''){
		var timeout = <?php print $_parameter->get("popupNotification_timeout"); ?>;
	}
	if(pin == undefined || pin == '' || pin == false){
		var pin = false;
	}else if (pin == true) {
		var pin = true;
	}
	var tip = "<span><?php print $_language->text('click_to_close', 'ucfirst', false); ?></span>";
	if(type == undefined || type == 1){
		var c_type = "<i class='_t1 _tt-bk e' close title='"+tip+"'></i>";
	}else if(type == 2){
		var c_type = "<i class='_t2 _tt-bk e' close title='"+tip+"'></i>";
	}else if(type == 3){
		var c_type = "<i class='_t3 _tt-bk e' close title='"+tip+"'></i>";
	}else {
		var c_type = "";
	}
	if(title == undefined || title == ''){
		var c_title = "";
	}else {
		var c_title = "<div class='title nowrap'>"+c_type+"<span>"+title+"</span></div>";
	}
	if(description == undefined || description == ''){
		var c_description = '';
	}else {
		if(typeof description == 'object'){
			var description = description;
			var description_object = true;
		}
		if(description_object == true){
			if(description['type'] == 'info::places'){
				var data = description['data'];
				if(data['type'] == undefined || data['type'] == ''){
					var type = '';
				}else {
					var type = "<span>"+data['type']+": </span>";
				}
				if(data['name'] == undefined || data['name'] == ''){
					var name = '';
				}else {
					var name = "<span>"+data['name']+".</span>";
				}
				if(data['address'] == undefined || data['address'] == ''){
					var address = '';
				}else {
					var address = "<span><?php print $_language->text('from', 'ucfirst', false); ?>: "+data['address']+".</span>";
				}
				if(data['description'] == undefined || data['description'] == ''){
					var text = '';
				}else {
					var text = "<span><?php print $_language->text('description', 'ucfirst', false); ?>: "+data['description']+".</span>";
				}
				if(data['thumbnail'] == undefined || data['thumbnail'] == ''){
					var image = '';
				}else {
					var image = "<div class='bg_img' style='background-image:url("+data['thumbnail']+")'></div>";
				}
				if(type != '' || name != ''){
					var c_header = "<div>"+type+name+"</div>";
				}else {
					var c_header = "";
				}
				if(address != ''){
					var c_body_oe = "<div>"+address+"</div>";
				}else {
					var c_body_oe = "";
				}
				if(text != ''){
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
	if(from == undefined || from == ''){
		var c_from = '';
	}else {
		var c_from = "<div class='from nowrap'><span><?php print $_language->text("from", "strtolower"); ?> "+from+"</span></div>";
	}
	if(c_title != '' || c_description != '' || c_from != ''){
		if (pin == true) {
			var c_pin = "pin";
		}else {
			var c_pin = "notpin";
		}
		var c = "<div class='tab boxGrid _h "+c_pin+"'>"+c_title+c_description+c_from+"</div>";
		var body = $("body");
		var box = $("#popupNotification");
		if(box.length == 0){
			var box = "<div id='popupNotification'></div>";
			body.append(box);
		}
		var box = $("#popupNotification");
		var box_i = $("#popupNotification > .tab");
		if(box_i.length == 0){
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
					if (callback != undefined && typeof callback == "function") {
						$(this).addClass("cr-pointer").bind('click', callback);
						$(this).find("[close]").bind('click', function(){
							return false;
						});
					}
					if (!$(this).hasClass('pin')) {
						setTimeout(function(){
							popup.slideUp('slow',function(){
								$(this).remove();
								var num = $("#popupNotification > .tab").length;
								if(num == 0){
									$("#popupNotification").remove();
								}
							});
						}, timeout);
					}
				});
			}
			popup.find("[close]").bind('click', function(){
				$(this).mouseout();
				popup.slideUp('slow',function(){
					$(this).remove();
					var tab = $("#popupNotification");
					if (tab.children(".tab").length == 0) {
						tab.remove();
					}
				});
			});
		});
		if(num > <?php print $_parameter->get("popupNotification_limit"); ?>){
			popup.not(".pin").each(function(i){
				var i = i + 1;
				if(i > <?php print $_parameter->get("popupNotification_limit"); ?>){
					$(this).slideUp('slow',function(){
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
	if(selector == undefined){
		$("input, textarea").focus(function(){
			
		});
	}else {
		$("#boxSuggest").remove();
		$(selector).after(getCode(object));
		action(selector, object['output'], object['type'], object['multiple']);
		if((typeof object['content'] == 'object' && Object.keys(object['content']).length > 5) || $("#boxSuggest").find("[box-row]").length > 5){
			scrollBar(selector);
		}
	}
	$(document).ready(callback);
	close();
	function getCode (object) {
		var show = true;
		if (object['title'] == undefined || object['title'] == '') {
			var header = '';
		}else {
			var header = '<div class="header"> <span>'+object['title']+'</span> </div>';
		}
		if (object['content'] == undefined || object['content'] == '') {
			var body = '<div class="body null"> <span>Not found</span> </div>';
			var footer = '';
		}else {
			var body = '';
			var content = '';
			if(object['type'] == 'places'){
				for (var i in object['content']) {
					var rows = object['content'][i];
					if (rows['img'] == undefined || rows['img'] == '') {
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
				if (object['footer']['get'] == true && object['footer']['get'] != undefined) {
					if(object['footer']['type'] == 'preview-map'){
						var footer_push = '<div class="preview map" box-preview-map></div>';
					}else {
						var footer_push = "";
					}
					var footer = '<div class="footer"> '+footer_push+' </div>';
				}else {
					var footer = "";
				}
				if (object['name'] == undefined || object['name'] == '') {
					var push = "";
				}else {
					var push = '<div class="rows r_oe" map-places="'+object['name']+'" map-id map-preview box-row box-row-selected="false"><div class="text"> <div class="header nowrap"> <span>'+object['name']+'</span> </div> <div class="body nowrap"> <span> <?php print $_language->text('not_identified','ucfirst'); ?> </span> </div> </div> </div>';
				}
				var body = '<div class="body"> <div class="main"> '+content+push+' </div> </div>';
			}else if (object['type'] == 'info') {
				if((object['content']['users']) != null || (object['content']['groups']) != null || (object['content']['pages']) != null){
					for (var i in object['content']) {
						if(object['content'][i] != null && object['content'][i][0] != ''){
							for (var x in object['content'][i]) {
								var rows = object['content'][i][x];
								var content = content + ' <div class="rows '+i+'" info-type="'+i+'" info-id="'+rows['id']+'" info-name="'+rows['name']+'" info-tag="'+rows['tag']+'" info-avatar="'+rows['avatar']+'" info-cover="'+rows['cover']+'" box-row row-selected="false"> <div class="img"> <div style="background-image: url('+rows['avatar']+');"></div> </div> <div class="text"> <div class="header nowrap"> <span>'+rows['name']+'</span> </div> <div class="body nowrap iT"> <i class="fa '+i+'"></i> <span>'+rows['tag']+'</span> </div> </div> </div>';
							}
							if((object['content'][i]) != null && i == 'users'){
								var sub_title = 'Users';
							}else if ((object['content'][i]) != null && i == 'groups') {
								var sub_title = 'Groups';
							}else if ((object['content'][i]) != null && i == 'pages') {
								var sub_title = 'Pages';
							}else {
								var sub_title = '';
							}
							if(sub_title != ''){
								var sub_title_c = '<div class="title"> <span>'+sub_title+'</span> </div>';
							}else {
								var sub_title_c = '';
							}
						}
						var body = ' <div class="body"> <div class="main"> '+ sub_title_c + content +' </div> </div>';
					}
					if (object['footer']['get'] == true && object['footer']['get'] != undefined && Object.keys(object['content']).length) {
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
					if (object['footer']['get'] == true && object['footer']['get'] != undefined && Object.keys(object['content']).length) {
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
					if (object['footer']['get'] == true && object['footer']['get'] != undefined && Object.keys(object['content']).length) {
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
		if (show == true) {
			var code = '<div id="boxSuggest"> '+ header + body + footer +' </div>';
			return code;
		}else {
			return "";
		}
	}
	function action (selector, output, type, multiple) {
		var boxSuggest = $("#boxSuggest");
		var li = boxSuggest.find("[box-row]");
		if (type == 'places') {
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
		}else if (type == 'info') {
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
			var boxSuggest = $("#boxSuggest");
			if(output == true && boxSuggest.length > 0){
				select(type, selector, multiple, output);
			}
		});
		$(selector).bind('keypress',function(event){
			var keycode = (event.keyCode ? event.keyCode : event.which);
			var boxSuggest = $("#boxSuggest");
		    if(output == true && keycode == '13' && boxSuggest.length > 0){
		       	select(type, $(this), multiple, output);
		    }
		});
		li.first().mouseover();
		function select (type, input, multiple, output) {
			var editor = $("#gEditor");
			var boxSuggest = $("#boxSuggest");
			var input = $(input);
		    var parent = input.parent();
		    var brTrue = boxSuggest.find("[box-row][row-selected='true']");
		    var textarea = editor.find("[editor-box-textarea]");
		    if (type == 'places') {
		       	var code = brTrue.attr("map-code");
		        var places = brTrue.attr("map-places");
		        var tag_code = '<span class="tag" tag="places" tag tag-address="'+places+'" tag-code="'+code+'"><a tag-name>'+places+'</a><i tag-close></i></span>';
		        var tag = parent.find("span.tag[tag][tag-address='"+places+"'][tag-id='"+id+"']");
		        if(multiple == true && tag.length == 0){
				    input.before(tag_code);
				    boxSuggest.remove();
		        }else if (multiple == false && tag.length == 0) {
		        	var code = selector[0];
				    input.before(tag_code).remove();
				    boxSuggest.remove();
		        }
			    var tag = parent.find("span.tag[tag]");
			    if(multiple == true){
			    	var inputW = input.width();
				    var tagW = tag.innerWidth();
				    input.val('');
					//input.val('').css('width',(inputW - tagW)+'px');
			    }
			    tag.find("[tag-close]").bind('click', function(){
			        var button = $(this);
			        var tag = button.parents("span.tag[tag]");
			        if(multiple == true){
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
		        if(multiple == true && tag.length == 0){
				    input.before(tag_code);
				    boxSuggest.remove();
		        }else if (multiple == false && tag.length == 0) {
		        	var code = selector[0];
				    input.before(tag_code).remove();
				    boxSuggest.remove();
		        }
		        var tag = parent.find("span.tag[tag]");
		        if(multiple == true){
			    	var inputW = input.width();
				    var tagW = tag.innerWidth();
				    input.val('');
					//input.val('').css('width',(inputW - tagW)+'px');
			    }
			    tag.find("[tag-close]").bind('click', function(){
			        var button = $(this);
			        var tag = button.parents("span.tag[tag]");
			        if(multiple == true){
					    input.css('width',(textarea.innerWidth())+'px');
			        }else {
			        	tag.after(code);
			        	$(selector).AutoComplete({'path': 'info', 'from': type, 'output': output, 'multiple': multiple});
			        }
			        tag.remove();
			    });
		    }else if (type == 'mood') {
		    	var type = brTrue.attr("mood-type");
		        var code = brTrue.attr("mood-code");
		        var text = brTrue.attr("mood-text");
		        var tag_code = '<span class="tag" tag="mood" tag-type="'+type+'" tag-code="'+code+'" tag-text="'+text+'"><a tag-name>'+text+'</a><i tag-close></i></span>';
		        var tag = parent.find("span.tag[tag][tag-type='"+type+"'][tag-id='"+id+"']");
		        if(multiple == true && tag.length == 0){
				    input.before(tag_code);
				    boxSuggest.remove();
		        }else if (multiple == false && tag.length == 0) {
		        	var code = selector[0];
				    input.before(tag_code).remove();
				    boxSuggest.remove();
		        }
		        var tag = parent.find("span.tag[tag]");
		        if(multiple == true){
			    	var inputW = input.width();
				    var tagW = tag.innerWidth();
				    input.val('');
					//input.val('').css('width',(inputW - tagW)+'px');
			    }
			    tag.find("[tag-close]").bind('click', function(){
			        var button = $(this);
			        var tag = button.parents("span.tag[tag]");
			        if(multiple == true){
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
		        if(multiple == true && tag.length == 0){
				    input.before(tag_code);
				    boxSuggest.remove();
		        }else if (multiple == false && tag.length == 0) {
		        	var code = selector[0];
				    input.before(tag_code).remove();
				    boxSuggest.remove();
		        }
		        var tag = parent.find("span.tag[tag]");
		        if(multiple == true){
			    	var inputW = input.width();
				    var tagW = tag.innerWidth();
				    input.val('');
					//input.val('').css('width',(inputW - tagW)+'px');
			    }
			    tag.find("[tag-close]").bind('click', function(){
			        var button = $(this);
			        var tag = button.parents("span.tag[tag]");
			        if(multiple == true){
					    input.css('width',(textarea.innerWidth())+'px');
			        }else {
			        	tag.after(code);
			        	$(selector).AutoComplete({'path': 'media', 'from': type, 'output': output, 'multiple': multiple});
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
			var boxSuggest = $("#boxSuggest");
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
		"ERROR#USER_000": "<?php print $_language->text('transmission_error', 'ucfirst', false); ?>",
		"ERROR#USER_001": "<?php print $_language->text('username_is_invalid', 'ucfirst', false); ?>",
		"ERROR#USER_002": "<?php print $_language->text('password_is_invalid', 'ucfirst', false); ?>",
		"ERROR#USER_003": "<?php print $_language->text('username_is_not_found', 'ucfirst', false); ?>",
		"ERROR#USER_004": "<?php print $_language->text('password_is_incorrect', 'ucfirst', false); ?>",
		"ERROR#USER_005": "<?php print $_language->text('remember_return_is_invalid', 'ucfirst', false); ?>",
		"ERROR#USER_006": "<?php print $_language->text('username_is_already_exists', 'ucfirst', false); ?>",
		"ERROR#USER_007": "<?php print $_language->text('email_is_already_exists', 'ucfirst', false); ?>",
		"ERROR#USER_008": "<?php print $_language->text('repeat_password_is_not_coincide', 'ucfirst', false); ?>",
		"ERROR#USER_009": "<?php print $_language->text('phone_is_invalid', 'ucfirst', false); ?>",
		"ERROR#USER_010": "<?php print $_language->text('name_is_invalid', 'ucfirst', false); ?>",
		"ERROR#USER_011": "<?php print $_language->text('gender_is_invalid', 'ucfirst', false); ?>",
		"ERROR#USER_012": "<?php print $_language->text('birthday_is_invalid', 'ucfirst', false); ?>",
		"ERROR#USER_013": "<?php print $_language->text('agree_return_is_invalid', 'ucfirst', false); ?>",
		"ERROR#USER_014": "<?php print $_language->text('agree_is_not_check', 'ucfirst', false); ?>",
		"ERROR#USER_015": "<?php print $_language->text('email_is_invalid', 'ucfirst', false); ?>",
		"ERROR#FEEDS_001": "<?php print $_language->text('status_id_is_invalid', 'ucfirst', false); ?>",
		"ERROR#FEEDS_002": "<?php print $_language->text('action_is_invalid', 'ucfirst', false); ?>",
		"ERROR#FEEDS_003": "<?php print $_language->text('user_is_not_found', 'ucfirst', false); ?>",
		"ERROR#FEEDS_004": "<?php print $_language->text('status_is_not_found', 'ucfirst', false); ?>",
		"ERROR#FEEDS_005": "<?php print $_language->text('action_have_been_implemented', 'ucfirst', false); ?>",
		"ERROR#FEEDS_006": "<?php print $_language->text('action_is_not_allowed', 'ucfirst', false); ?>",
		"ERROR#FEEDS_007": "<?php print $_language->text('error_in_the_implementation_process', 'ucfirst', false); ?>",
		"ERROR#FEEDS_008": "<?php print $_language->text('action_is_being_carried_out', 'ucfirst', false); ?>",
		"ERROR#FEEDS_009": "<?php print $_language->text('comment_id_is_invalid', 'ucfirst', false); ?>",
		"ERROR#FEEDS_010": "<?php print $_language->text('editor_missing_content', 'ucfirst', false); ?>",
		"ERROR#FEEDS_011": "<?php print $_language->text('media_file_missing_info', 'ucfirst', false); ?>",
		"ERROR#FEEDS_012": "<?php print $_language->text('not_authorized_to_perform', 'ucfirst', false); ?>",
		"ERROR#FEEDS_013": "<?php print $_language->text('some_action_is_not_completed', 'ucfirst', false); ?>"
	}
	if(error[id] === undefined || error[id] == ''){
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
	$.ajax({
		url: '<?php print $_tool->links("source/ajax/user.ajax"); ?>',
		type: 'POST',
		data: {'type': 'reload', 'token': '<?php print $g_client['token']['action']['user']; ?>'},
		dataType: 'json',
		contentType: '<?php print $_parameter->get('contentType_urlencoded.utf8'); ?>',
		error: function (jqXHR, textStatus, errorThrown) {
			console.log ("jqXHR: " + jqXHR.status + "\ntextStatus: " + textStatus + "\nerrorThrown: " + errorThrown);
		},
		success: function (data) {
			if(data['return'] == true){
				//.
			}else {
				//.
			}
		}
	}).done(function(){
		setTimeout(function(){
			callUpdate();
		}, <?php print $_parameter->get('updateLoop_timeout'); ?>);
	});
}
function ExplorerPopup (object) {
	var titleText;
	if (object['randkey'] != undefined && object['randkey'] != null) {
		var randkey = object['randkey'];
	}else {
		return false;
	}
	if (object['port'] != undefined && object['port'] != null) {
		if (object['port'] == "photos") {
			var titleText = "<?php print $_language->text('explorer', 'ucfirst', false)." - ".$_language->text('photos', 'ucfirst', false); ?>";
		}else if (object['port'] == "music") {
			var titleText = "<?php print $_language->text('explorer', 'ucfirst', false)." - ".$_language->text('music', 'ucfirst', false); ?>";
		}else if (object['port'] == "videos") {
			var titleText = "<?php print $_language->text('explorer', 'ucfirst', false)." - ".$_language->text('videos', 'ucfirst', false); ?>";
		}else {
			var titleText = "<?php print $_language->text('explorer', 'ucfirst', false); ?>";
		}
	}else {
		return false;
	}
	var tab = $("#ExplorerPopup");
	if (tab.length == 0) {
		var code = ' <div id="ExplorerPopup" randkey="'+randkey+'"> <div class="wrapFilter"></div> <div class="boxContent"> <div class="header"> <span>'+titleText+'</span> <i close> </i> </div>  <div class="body"> <div class="nav"> <div class="list"> <div class="rows active" type="cache"> <span>Cache</span> </div> <div class="rows" type="sync"> <span>Sync</span> </div> </div> <div class="arrow"></div> </div> <div class="data"> <div class="main"> </div> </div> </div> <div class="footer"> <div class="copyright"> <span> <?php print $_language->text('Explorer_footer_text'); ?> </span> </div> </div> </div> </div> ';
		$("body").append(code);
		$("body").css('overflow-y', 'hidden');
		var tab = $("#ExplorerPopup");
		tab.hide().fadeIn();
	}
	$("#ExplorerPopup > .boxContent").boxPosition({position: "center", resize: true});
	$("#ExplorerPopup > .boxContent > .body > .data > .main").barScroll({
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
	var tab = $("#ExplorerPopup");
	var boxContent = tab.children(".boxContent");
	var listType = boxContent.find(".body > .nav > .list");
	var closeButton = $("#ExplorerPopup > .boxContent > .header [close]");
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
		var tab = $("#ExplorerPopup");
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
		if (tab.attr("handling-data") != 'true'){
			tab.attr("handling-data", 'true');
			if ((object['port'] == undefined || object['port'] == null) || (object['type'] == undefined || object['type'] == null)) {
				return false;
			}else {
				boxContent.find(".body > .data .main").fadeOut(100).html('<div class="waiting_setup_data"><span><?php print $_language->text('loading_data', 'ucfirst', false); ?>, <?php print $_language->text('please_wait', 'strtolower', false); ?></span></div>').fadeIn();
			}
			var data = {'token': '<?php print $g_client['token']['action']['explorer']; ?>', 'port': 'explorer', 'from': object['port'], 'local': object['type'], 'action': 'get', 'class': 'list'};
			$.ajax({
				url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
				type: 'POST',
				data: data,
				dataType: 'json',
				success: function(dataReturn) {
					console.log(dataReturn);
					if (dataReturn['return'] !== undefined && dataReturn['return'] == true) {
						if (dataReturn['data'] !== undefined && dataReturn['data'] != null && typeof dataReturn['data'] == 'object' && dataReturn['data']['file'] != undefined && dataReturn['data']['file'] != null && typeof dataReturn['data']['file'] == 'object') {
							if ($.isEmptyObject(dataReturn['data']['file']) == true) {
								boxContent.find(".body > .data .main").after('<div class="empty_data"><span><?php print $_language->text('data_storage_empty', 'ucfirst', false); ?></span></div>');
							}else {
								for (var i in dataReturn['data']['file']) {
									var thisFile = dataReturn['data']['file'][i];
									pushData(data, thisFile);
									action();
								}
							}
						}else {
							boxContent.find(".body > .data .main").append('<div class="empty_data"><span><?php print $_language->text('data_storage_empty', 'ucfirst', false); ?></span></div>');
						}
					}else if (dataReturn['return'] !== undefined && dataReturn['return'] == false) {
						if (dataReturn['reason'] !== undefined) {
							popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
						}else {
							popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
						}
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '', timeout: '<?php print $_parameter->get('notification_text_action'); ?>'});
					}
				}
			}).done(object['callback'], function () {
				setTimeout(function(){
					tab.removeAttr("handling-data");
				}, 100);
				boxContent.find(".body > .data .waiting_setup_data").slideUp(function(){
					$(this).remove();
				});
			});
		}
	}
	function pushData (config, object) {
		if ((object['link'] == undefined || object['link'] == null) || (object['mime'] == undefined || object['mime'] == null) || (object['name'] == undefined || object['name'] == null) || (object['secret'] == undefined || object['secret'] == null)) {
			return false;
		}else {
			if ((object['type'] == undefined || object['type'] == null) || (object['local'] == undefined || object['local'] == null)) {
				return false;
			}else if (config['from'] == "photos" && config['local'] == "cache") {
				var fileInfo = {'type': object['type'], 'local': object['local'], 'verify': object['verify'], 'secret': object['secret'], 'name': object['name'], 'nameraw': object['nameraw'], 'mime': object['mime'], 'size': object['size'], 'link': object['link'], 'time': object['time']};
				var c_ = {};
				c_['nav'] = {};
				c_['info'] = {};
				if (fileInfo['time'] != undefined && fileInfo['time'] != null) {
					if (fileInfo['time'] == 0) {
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
				if (fileInfo['size'] != undefined && fileInfo['size'] != null) {
					c_['info']['size'] = " <div class='rows size'> <i></i> <div>"+fileInfo['size']+"</div> </div> ";
				}else {
					c_['info']['size'] = '';
				}
				if (fileInfo['verify'] != undefined && fileInfo['verify'] != null) {
					if (fileInfo['verify'] == true) {
						c_['info']['clean'] = 'none';
					}else {
						c_['info']['clean'] = 'auto';
					}
					c_['info']['clean'] = " <div class='rows clean'> <i></i> <div>"+c_['info']['clean']+"</div> </div> ";
				}else {
					c_['info']['clean'] = '';
				}
				var codeRows = "<div class='rows cr-pointer' file='"+JSON.stringify(fileInfo)+"' file-selected style='background-image: url("+fileInfo['link']+")'> <i checkbox></i> <div class='box info'> <div class='nav'> <i></i> <span><?php print $_language->text('file_info', 'ucfirst'); ?></span> </div> <div class='tab'> "+c_['info']['nameraw']+" "+c_['info']['mime']+" "+c_['info']['size']+" "+c_['info']['clean']+" </div> </div> <div class='nav time'> "+c_['nav']['time']+c_['nav']['close']+" </div> </div>";
				var gird = boxContent.find(".body > .data .main > .grid");
				if (gird.length == 0) {
					boxContent.find(".body > .data .main").append('<div class="grid"></div>');
					var gird = boxContent.find(".body > .data .main > .grid");
				}
				var rows = boxContent.find(".body > .data .main > .grid > .rows[file]");
				if (rows.length == 0) {
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
					if (count == 0) {
						rows.first().before(codeRows);
						return false;
					}
				}
			}else if (config['from'] == "music" && config['local'] == "cache") {
				var fileInfo = {'type': object['type'], 'local': object['local'], 'verify': object['verify'], 'secret': object['secret'], 'name': object['name'], 'nameraw': object['nameraw'], 'mime': object['mime'], 'size': object['size'], 'link': object['link'], 'duration': object['duration'], 'time': object['time']};
				var c_ = {};
				c_['nav'] = {};
				c_['info'] = {};
				if (fileInfo['time'] != undefined && fileInfo['time'] != null) {
					if (fileInfo['time'] == 0) {
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
					if (fileInfo['verify'] == true) {
						c_['info']['clean'] = 'none';
					}else {
						c_['info']['clean'] = 'auto';
					}
					c_['info']['clean'] = " <div class='rows clean'> <i></i> <div>"+c_['info']['clean']+"</div> </div> ";
				}else {
					c_['info']['clean'] = '';
				}
				var codeRows = "<div class='rows cr-pointer' file='"+JSON.stringify(fileInfo)+"' file-selected style='background-image: url("+fileInfo['thumbnail']+")'> <i checkbox></i> <div class='box info'> <div class='nav'> <i></i> <span><?php print $_language->text('file_info', 'ucfirst'); ?></span> </div> <div class='tab'> "+c_['info']['nameraw']+" "+c_['info']['mime']+" "+c_['info']['time']+" "+c_['info']['size']+" "+c_['info']['clean']+" </div> </div> <div class='nav time'> "+c_['nav']['time']+c_['nav']['close']+" </div> "+c_['nav']['duration']+" </div>";
				var gird = boxContent.find(".body > .data .main > .grid");
				if (gird.length == 0) {
					boxContent.find(".body > .data .main").append('<div class="grid"></div>');
					var gird = boxContent.find(".body > .data .main > .grid");
				}
				var rows = boxContent.find(".body > .data .main > .grid > .rows[file]");
				if (rows.length == 0) {
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
					if (count == 0) {
						rows.first().before(codeRows);
						return false;
					}
				}
			}else if (config['from'] == "videos" && config['local'] == "cache") {
				var fileInfo = {'type': object['type'], 'local': object['local'], 'verify': object['verify'], 'secret': object['secret'], 'name': object['name'], 'nameraw': object['nameraw'], 'mime': object['mime'], 'size': object['size'], 'link': object['link'], 'thumbnail': object['thumbnail'], 'duration': object['duration'], 'time': object['time']};
				var c_ = {};
				c_['nav'] = {};
				c_['info'] = {};
				if (fileInfo['time'] != undefined && fileInfo['time'] != null) {
					if (fileInfo['time'] == 0) {
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
					if (fileInfo['verify'] == true) {
						c_['info']['clean'] = 'none';
					}else {
						c_['info']['clean'] = 'auto';
					}
					c_['info']['clean'] = " <div class='rows clean'> <i></i> <div>"+c_['info']['clean']+"</div> </div> ";
				}else {
					c_['info']['clean'] = '';
				}
				var codeRows = "<div class='rows cr-pointer' file='"+JSON.stringify(fileInfo)+"' file-selected style='background-image: url("+fileInfo['thumbnail']+")'> <i checkbox></i> <div class='box info'> <div class='nav'> <i></i> <span><?php print $_language->text('file_info', 'ucfirst'); ?></span> </div> <div class='tab'> "+c_['info']['nameraw']+" "+c_['info']['mime']+" "+c_['info']['time']+" "+c_['info']['size']+" "+c_['info']['clean']+" </div> </div> <div class='nav time'> "+c_['nav']['time']+c_['nav']['close']+" </div> "+c_['nav']['duration']+" </div>";
				var gird = boxContent.find(".body > .data .main > .grid");
				if (gird.length == 0) {
					boxContent.find(".body > .data .main").append('<div class="grid"></div>');
					var gird = boxContent.find(".body > .data .main > .grid");
				}
				var rows = boxContent.find(".body > .data .main > .grid > .rows[file]");
				if (rows.length == 0) {
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
					if (count == 0) {
						rows.first().before(codeRows);
						return false;
					}
				}
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
					if (data['return'] == true) {
						if (data['direct'] == true) {
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
		if ($("#gSource").children("#scriptLoaded").length == 0) {
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
		if (count == 0) {
			scriptLoaded.append("<div>"+content+"</div>");
			getScriptLoaded();
		}else {
			//.
		}
	}
	function getScriptLoaded () {
		if ($("#gSource").children("#scriptLoaded").length == 0) {
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
			if (count == 0) {
				scriptLoaded.append("<div>"+src+"</div>");
			}
		});
	}
	$(document).ready(function(){
		getScriptLoaded();
	});
}
function changeProfile (object) {
	if (typeof object == "object") {
		if (object['type'] !== undefined && inArray(object['type'], ["users", "groups", "pages"])) {
			if (object['getBy'] !== undefined && object['getBy']['label'] !== undefined && object['getBy']['value'] !== undefined) {
				if (object['about'] !== undefined) {
					console.log("x");
				}else {
					//. Error
				}
			}else {
				//. Error
			}
		}else {
			//. Error
		}
	}else {
		//. Error
	}
}
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
	setupAjax();
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
		var betaOptions = {
			"type": "users",
			"getBy": {
				"label": "",
				"value": ""
			},
			"about": ""
		};
		changeProfile(betaOptions);
	}, <?php print $_parameter->get("call_function_timeout"); ?>);
});