var consoleWarning = function () {
	console.log("%c%s","color: #555; font: bold 20px/1.2em 'Helvetica Neue', 'HelveticaNeue', Helvetica, Arial, sans-serif","<?php print htmlspecialchars($_language->text('console.warning_text_from', 'ucfirst', false).':');  ?>");
	console.log("%c%s","color: #555; font: normal 16px/1.2em 'Helvetica Neue', 'HelveticaNeue', Helvetica, Arial, sans-serif","<?php print htmlspecialchars($_language->text('console.warning_text', 'ucfirst', false).'.');  ?>");
	console.log("%c%s","color: #555; font: normal 16px/1.2em 'Helvetica Neue', 'HelveticaNeue', Helvetica, Arial, sans-serif","<?php print htmlspecialchars($_language->text('console.warning_text_contact', 'ucfirst', false).'.');  ?>");
}
consoleWarning();
var resizeTemplates = function () {
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
var navProgress = function () {
	$({property: 0}).animate({property: 100}, {
	    duration: 4000,
	    step: function() {
	    	 // Action loading complete.
	    	var _percent = Math.round(this.property);
	        if (_percent < 100) {
	       		// Loading.
	        }else if (_percent == 100) {
	        	// Loaded.
	        }
	    },
	    complete: function() {
	        // Action when complete.
	    }
	});
}
var setupTooltip = function () {
	$(".tooltip, ._tt, ._tt-bk, ._tt-we, ._tt-be, ._tt-dbl").each(function() {
		var selector = $(this);
		if (selector.hasClass('_tt-bk')) {
		    var style = 'bk';
		}else if (selector.hasClass('_tt-we')) {
		    var style = 'we';
		}else if (selector.hasClass('_tt-be')) {
		    var style = 'be';
		}
		if (selector.hasClass('nw')) {
		    var gravity = 'nw';
		}else if (selector.hasClass('n')) {
		    var gravity = 'n';
		}else if (selector.hasClass('ne')) {
		    var gravity = 'ne';
		}else if (selector.hasClass('w')) {
		    var gravity = 'w';
		}else if (selector.hasClass('e')) {
		    var gravity = 'e';
		}else if (selector.hasClass('sw')) {
		    var gravity = 'sw';
		}else if (selector.hasClass('s')) {
		    var gravity = 's';
		}else if (selector.hasClass('se')) {
		    var gravity = 'se';
		}
		if (selector.hasClass('_tt-dbl')) {
			var data = selector.attr('dblclick');
			if (isset(data)) {
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
var setupDrag = function () {
	$(".b-drag, ._drag, .boxDrag").each(function() {
		var selector = $(this);
		if (selector.attr('drag-added') != "true") {
			selector.attr('drag-added', 'true');
			selector.drag();
		}
	});
}
var setupEffect = function () {
	// $(".boxGrid").callEffect();
}
var setupTimestamp = function () {
	setTimeout(function() {
		$("[time], [time-tip], [time-ago]").each(function() {
			$(this).reloadTime();
		});
		setupTimestamp();
	}, 1000);
}
var popupAlert = function (object) {
	if (isset(object['title'])) {
		var textTitle = object['title'];
	}else {
		var textTitle = '<?php print $_language->text('notification', 'ucfirst'); ?>';
	}
	if (isset(object['content'])) {
		if (!isHTML(object['content'])) {
			var textContent = '<span>' + object['content'] + '</span>';
		}else {
			var textContent = object['content'];
		}
	}else {
		var textContent = "";
	}
	if (isset(object['actionTrue'])) {
		var textActionTrue = object['actionTrue'];
	}else {
		var textActionTrue = '<?php print $_language->text('confirm', 'ucfirst'); ?>';
	}
	if (isset(object['actionFalse'])) {
		var textActionFalse = object['actionFalse'];
	}else {
		var textActionFalse = '<?php print $_language->text('cancel', 'ucfirst'); ?>';
	}
	if (!isset(object['enterActive']) || object['enterActive'] === true) {
		var enterActive = true;
	}else {
		var enterActive = false;
	}
	if (!isset(object['escActive']) || object['escActive'] === true) {
		var escActive = true;
	}else {
		var escActive = false;
	}
	var title = '<div class="title nowrap"> <span>'+textTitle+'</span> <i class="close"></i> </div>';
	var content = '<div class="main"> <div class="content"> '+textContent+' </div> </div>';
	var options = '<div class="options"> <div class="button true _bn_c-we"> <span>'+textActionTrue+'</span> </div> <div class="button false _bn_c-we"> <span>'+textActionFalse+'</span> </div> </div>';
	var code = "<div id='popupAlert'><div class='box'>" + title + " " + content + " " + options + "</div></div>";
	var tab = $("#popupAlert");
	var body = $("body");
	if (tab.length > 0) {
		tab.remove();
	}
	body.append(code);
	var tab = $("#popupAlert");
	var overflowOld = body.css('overflow-y');
	body.css('overflow-y', 'hidden');
	tab.children(".box").boxPosition({'position': 'center', 'resize': true});
	if (isset(object['callbackTrue']) && typeof object['callbackTrue'] == "function") {
		tab.find(".box > .options > .true").bind('click', object['callbackTrue']);
		if (enterActive === true) {
			$(document).bind('keypress', function(e) {
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
	$("#popupAlert > .box > .title > .close").bind('click', function() {
		tab.find(".box > .options > .button.false").click();
	});
	var closeActionDefault = true;
	if (object['callbackFalse'] != null && typeof object['callbackFalse'] == 'function') {
		tab.find(".box > .options > .false").bind('click', object['callbackFalse']);
	}else if (object['callbackFalse'] != null && typeof object['callbackFalse'] == 'boolean') {
		if (object['callbackFalse'] === false) {
			tab.find(".box > .options > .button").bind('click', function() {
				tab.fadeOut(function() {
					$(this).remove();
				});
			});
			var closeActionDefault = false;
		}
	}
	if (closeActionDefault === true) {
		tab.find(".box > .options > .button").bind('click', function() {
			tab.fadeOut(function() {
				$(this).remove();
			});
			body.css("overflow-y", overflowOld);
		});
	}
}
var pushInfoEr = function () {
	$("[href]").each(function() {
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
		}
	});
}
var readInfo = function () {
	
}
var browserNotification = function (object) {
	if (!isset(object)) {
		return false;
	}
	if (isset(object['tab']) && typeof object['tab'] == "object") {
		var giccos = $("#giccos");
		var title = $("title");
		if (giccos.attr('handling-notify-tab') != "true") {
			giccos.attr('handling-notify-tab', 'true');
			var oldTitle = title.text();
			var newTitle = (isset(object['tab']['title']) && typeof object['tab']['title'] == "string") ? object['tab']['title'].replace(/(&nbsp;|<([^>]+)>)/ig, "") : "";
			var timeoutTitle = (isset(object['tab']['timeout']) && typeof object['tab']['timeout'] == "number") ? object['tab']['timeout'] : 1000;
			title.text(newTitle);
			setTimeout(function () {
				giccos.removeAttr('handling-notify-tab');
				title.text(oldTitle);
			}, timeoutTitle);
			var configTab = true;
		}else {
			if (isset(object['tab']['important']) && object['tab']['important'] === true) {
				setTimeout(function () {
					browserNotification(object);
				}, 500);
			}else {
				//.
			}
		}
	}
	if ((isset(object['joint']) && (object['joint'] === true && isset(configTab) && configTab === true)) || ((isset(object['joint']) && object['joint'] === false) || !isset(object['joint']))) {
		var audioAllow = true;
	}else {
		var audioAllow = false;
	}
	if (isset(object['audio']) && typeof object['audio'] == "object" && isset(audioAllow) && audioAllow == true) {
		var giccos = $("#giccos");
		if (giccos.attr('handling-notify-audio') != "true") {
			giccos.attr('handling-notify-audio', 'true');
			var audioLoaded = $("#gSource").children("#audioLoaded");
			var audioName = (isset(object['audio']['name']) && typeof object['audio']['name'] == "string") ? object['audio']['name'] : "snap";
			var audioVolume = (isset(object['audio']['volume']) && typeof object['audio']['volume'] == "number") ? object['audio']['volume'] : 0.75;
			if (audioLoaded.length === 0 || audioLoaded.children("." + audioName).length === 0) {
				//.
			}else {
				audioLoaded.children("." + audioName)[0].volume = audioVolume;
				audioLoaded.children("." + audioName)[0].play();
			}
			giccos.removeAttr('handling-notify-audio');
		}else {
			//.
		}
	}
};
var setupAudioNotification = function () {
	var gSource = $("#gSource");
	if (gSource.length === 0) {
		$("body").append('<div id="gSource"></div>');
	}
	var audioLoaded = gSource.children("#audioLoaded");
	if (audioLoaded.length === 0) {
		gSource.append('<div id="audioLoaded"></div>');
		var audioLoaded = gSource.children("#audioLoaded");
	}
	var audioObj = {
		'snap': {
			'ogg': '<?php print $_tool->links('storage/static/ogg/notify.snap.ogg'); ?>',
			'acc': '<?php print $_tool->links('storage/static/acc/notify.snap.acc'); ?>',
			'mp3': '<?php print $_tool->links('storage/static/mp3/notify.snap.mp3'); ?>'
		},
		'water_droplet': {
			'ogg': '<?php print $_tool->links('storage/static/ogg/notify.water_droplet.ogg'); ?>',
			'acc': '<?php print $_tool->links('storage/static/acc/notify.water_droplet.acc'); ?>',
			'mp3': '<?php print $_tool->links('storage/static/mp3/notify.water_droplet.mp3'); ?>'
		},
		'glass': {
			'ogg': '<?php print $_tool->links('storage/static/ogg/notify.glass.ogg'); ?>',
			'acc': '<?php print $_tool->links('storage/static/acc/notify.glass.acc'); ?>',
			'mp3': '<?php print $_tool->links('storage/static/mp3/notify.glass.mp3'); ?>'
		},
		'tiny_button': {
			'ogg': '<?php print $_tool->links('storage/static/ogg/notify.tiny_button.ogg'); ?>',
			'acc': '<?php print $_tool->links('storage/static/acc/notify.tiny_button.acc'); ?>',
			'mp3': '<?php print $_tool->links('storage/static/mp3/notify.tiny_button.mp3'); ?>'
		}
	};
	audioListLoop: for (var name in audioObj) {
		if (audioLoaded.children("." + name).length === 0) {
			var audioSource = {};
			if (isset(audioObj[name]['ogg']) && typeof audioObj[name]['ogg'] == "string") {
				audioSource['ogg'] = '<source src="'+audioObj[name]['ogg']+'" type="audio/ogg">';
			}else {
				audioSource['ogg'] = '';
			}
			if (isset(audioObj[name]['acc']) && typeof audioObj[name]['acc'] == "string") {
				audioSource['acc'] = '<source src="'+audioObj[name]['acc']+'" type="audio/acc">';
			}else {
				audioSource['acc'] = '';
			}
			if (isset(audioObj[name]['mp3']) && typeof audioObj[name]['mp3'] == "string") {
				audioSource['mp3'] = '<source src="'+audioObj[name]['mp3']+'" type="audio/mp3">';
			}else {
				audioSource['mp3'] = '';
			}
			audioLoaded.append('<audio class="'+name+'">'+audioSource['ogg']+audioSource['acc']+audioSource['mp3']+'</audio>');
			audioLoaded.children("." + name)[0].volume = 0.75;
		}
	}
	//audioLoaded.children(".water_droplet")[0].play();
	console.log('audio notification loaded.');
};
var popupNotification = function (object) {
	if (!isset(object)) {
		return false;
	}else {
		if (typeof object == "string" && typeof JSON.parse(object) == "object") {
			var object = JSON.parse(object);
		}
	}	
	if (!isset(object['type']) || (typeof object['type'] !== "string" && typeof object['type'] !== "number") || !isset(object['description']) || (typeof object['description'] !== "string" && typeof object['description'] !== "object")) {
		return false;
	}else {
		if (!isset(object['audio']) || object['audio'] === false) {
			useAudio = false;
		}else {
			useAudio = object['audio'];
		}
		if (!isset(object['global']) || object['global'] === false) {
			useGlobal = false;
		}else {
			useGlobal = object['global'];
		}
	}
	if (inArray(object['type'], ["1", "notify", "notification"])) {
		var tipText = "<?php print $_language->text('notification', 'ucfirst'); ?>";
		var tipClass = "t_notify";
		if (isset(useAudio) && useAudio === true) {
			useAudio = "water_droplet";
		}
	}else if (inArray(object['type'], ["2", "error"])) {
		var tipText = "<?php print $_language->text('error', 'ucfirst'); ?>";
		var tipClass = "t_error";
		if (isset(useAudio) && useAudio === true) {
			useAudio = "tiny_button";
		}
	}else if (inArray(object['type'], ["3", "news", "new"])) {
		var tipText = "<?php print $_language->text('news', 'ucfirst'); ?>";
		var tipClass = "t_news";
		if (isset(useAudio) && useAudio === true) {
			useAudio = "snap";
		}
	}else if (inArray(object['type'], ["4", "warning"])) {
		var tipText = "<?php print $_language->text('warning', 'ucfirst'); ?>";
		var tipClass = "t_warning";
		if (isset(useAudio) && useAudio === true) {
			useAudio = "glass";
		}
	}else {
		var tipText = "";
		var tipClass = "t_none";
	}
	var codeTitle = (isset(object['title']) && typeof object['title'] === "string") ? '<div class="title nowrap"> <i class="'+tipClass+' _tt-bk e" close title="<span><?php print $_language->text('click_to_close', 'ucfirst'); ?></span>"></i> <span>'+object['title']+'</span></div>' : '';
	if (isset(object['description']) && typeof object['description'] === "object") {
		if (isset(object['description']['type']) && typeof object['description']['type'] === "string" && inArray(object['description']['type'], ["info::places"])) {
			if (isset(object['description']['data']) && typeof object['description']['data'] === "object") {
				var codeDescriptionHeaderType = '<span><?php print $_language->text('name', 'ucfirst'); ?>: </span>';
				var codeDescriptionHeaderName = (isset(object['description']['data']['name']) && typeof object['description']['data']['name'] === "string") ? '<span>' + object['description']['data']['name'].ucfirst() + '</span>' : '';
				var codeDescriptionBodyAddress = (isset(object['description']['data']['address']) && typeof object['description']['data']['address'] === "string") ? '<br> <span><?php print $_language->text('from', 'ucfirst'); ?>: '+object['description']['data']['address'] + '</span>' : '';
				var codeDescriptionBodyAddress = (isset(object['description']['data']['location']) && typeof object['description']['data']['location'] === "string") ? codeDescriptionBodyAddress + '<br> <span><?php print $_language->text('location', 'ucfirst'); ?>: '+object['description']['data']['location'] + '</span>' : codeDescriptionBodyAddress;
				var codeDescriptionBodyDescription = (isset(object['description']['data']['description']) && typeof object['description']['data']['description'] === "string") ? '<br> <span><?php print $_language->text('description', 'ucfirst'); ?>: '+object['description']['data']['description'] + '</span>' : '<br> <span><?php print $_language->text('not_found_info_places', 'ucfirst'); ?></span>';
				var codeDescriptionFooterThumbnail = (isset(object['description']['data']['thumbnail']) && typeof object['description']['data']['thumbnail'] === "string") ? '<div class="bg_img" style="background-image:url('+object['description']['data']['thumbnail']+')"></div>' : '';
				var codeDescription = '<div class="description"><span>'+codeDescriptionHeaderType+codeDescriptionHeaderName+codeDescriptionBodyAddress+codeDescriptionBodyDescription+codeDescriptionFooterThumbnail+'</span></div>';
				var descriptionText = "";
			}else {
				//.
			}
		}else {
			//.
		}
	}else if (isset(object['description']) && typeof object['description'] === "string") {
		var descriptionText = object['description'];
		var codeDescription = '<div class="description"><span>'+object['description']+'</span></div>';
	}else {
		return false;
	}
	var codeFrom = (isset(object['from']) && typeof object['from'] === "string") ? '<div class="from nowrap"><span><?php print $_language->text('from', 'strtolower'); ?>: '+object['from']+'</span></div>' : '';
	if (isset(object['pin']) && object['pin'] === true) {
		var pinClass = "pin";
	}else {
		var pinClass = "";
	}
	var codeTab = '<div class="tab _h '+pinClass+'">'+codeTitle+codeDescription+codeFrom+'</div>';
	var box = $("#popupNotification");
	if (box.length === 0) {
		var randkey = randomKeyString(<?php print $_parameter->get('notifyPopup_length_randKeyEvent'); ?>);
		var box = '<div id="popupNotification" randkey="'+randkey+'"></div>';
		$("body").append(box);
	}
	var box = $("#popupNotification[randkey='"+randkey+"']");
	var tab = $("#popupNotification > .tab");
	if (tab.length === 0) {
		box.append(codeTab);
	}else {
		tab.first().before(codeTab);
	}
	$("#popupNotification > .tab._h").hide();
	var tab = $("#popupNotification > .tab");
	tab.each(function() {
		var tabThis = $(this);
		if (tabThis.hasClass("_h")) {
			tabThis.removeClass("_h").slideDown('slow', function() {
				tabThis.drag();
				if (isset(object['callback']) && typeof object['callback'] == "function") {
					tabThis.addClass("cr-pointer").bind('click', object['callback']);
					tabThis.addClass("cr-pointer").bind('click', function () {
						tabThis.find("[close]").click();
					});
					tabThis.find("[close]").bind('click', function () {
						return false;
					});
				}
				if (!tabThis.hasClass('pin')) {
					var tabTimeout = (isset(object['timeout']) && (typeof object['timeout'] === "number" || typeof object['timeout'] === "string")) ? object['timeout'] : 3000;
					setTimeout(function() {
						tabThis.fadeOut(function () {
							tabThis.remove();
							if ($("#popupNotification > .tab").length === 0) {
								$("#popupNotification").remove();
							}
						});
					}, tabTimeout);
				}
			});
		}
		tabThis.find("[close]").bind('click', function() {
			$(this).mouseout();
			tabThis.fadeOut(function() {
				$(this).remove();
				if ($("#popupNotification > .tab").length === 0) {
					$("#popupNotification").remove();
				}
			});
		});
	});
	if (tab.length > <?php print $_parameter->get("notifyPopup_count_limit"); ?>) {
		tab.not(".pin").each(function(i) {
			var tabThis = $(this);
			i = i++;
			if (i > <?php print $_parameter->get("notifyPopup_count_limit"); ?>) {
				tabThis.fadeOut(function() {
					tabThis.remove();
				});
			}
		});
	}
	if ((isset(useGlobal) && useGlobal !== false) || (isset(useAudio) && useAudio !== false)) {
		var browserNotifyObj = {};
		if (useGlobal === true && isset(descriptionText) && typeof descriptionText === "string") {
			var tabTimeout = (isset(object['timeout']) && (typeof object['timeout'] === "number" || typeof object['timeout'] === "string") && object['timeout'] / 2 > 1500) ? object['timeout'] / 2 : 2000;
			browserNotifyObj['tab'] = {
				'title': tipText + ' - ' + descriptionText.ucfirst(),
				'timeout': tabTimeout
			};
		}
		if (useAudio !== false) {
			browserNotifyObj['audio'] = {
				'name': useAudio
			};
		}
		browserNotification(browserNotifyObj);
	}
	setupTooltip();
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
var boxSuggest = function (input, object) {
	var randkey = randomKeyString(<?php print $_parameter->get('boxSuggest_length_randKeyEvent'); ?>);
	if (!isset(input) || !isset(object)) {
		return false;
	}else {
		if (isset(input.attr('boxSuggest'))) {
			var randkey = input.attr('boxSuggest');
		}
	}
	var boxSuggestCode = {};
	if (!isset(object['output'])) {
		object['output'] = false;
	}
	if (!isset(object['multiple'])) {
		object['multiple'] = false;
	}
	//.
	var optionsOutput = object['output'];
	var optionsMultiple = object['multiple'];
	//.
	if (!isset(object['content']) || countArr(object['content']) === 0) {
		var isNull = true;
		boxSuggestCode = "<div class='body null'> <span><?php print $_language->text('not_found', 'ucfirst'); ?></span> </div>";
	}else {
		var boxSuggestCode = "";
		if (isset(object['title'])) {
			boxSuggestCode = boxSuggestCode + "<div class='header'> <span>"+object['title']+"</span> </div>";
		}
		boxSuggestCode = boxSuggestCode + "<div class='body'> <div class='list'>";
		contentLoop: for (var typename in object['content']) {
			var thisContent = object['content'][typename];
			boxSuggestCode = boxSuggestCode + "<div class='box'>";
			boxSuggestCode = boxSuggestCode + "<div class='navbar'> <span>"+typename+"</span> </div>";
			if (isset(thisContent) && typeof thisContent == "object" && countArr(thisContent) > 0) {
				var tagSelected = $("[tag-obj='"+randkey+"']");
				tagSelected.each(function() {
					var tagSelectedThis = $(this);
					if (isset(tagSelected.attr('tag-rows')) && typeof tagSelected.attr('tag-rows') == "string" && typeof JSON.parse(tagSelected.attr('tag-rows')) == "object") {
						var tagSelectedRow = JSON.parse(tagSelected.attr('tag-rows'));
						for (var orRowT in thisContent) {
							if (isset(thisContent[orRowT]['tag']) && countArr(thisContent[orRowT]['tag']) > 0) {
								if (compareArr(thisContent[orRowT]['tag'], tagSelectedRow)) {
									delete thisContent[orRowT];
								}
							}
						}
					}else {
						return;
					}
				});
				var countAdded = 0;
				rowsLopp: for (var orRow in thisContent) {
					var thisRow = thisContent[orRow];
					if (isset(thisRow['class']) && typeof thisRow['class'] == "string") {
						thisRow['class'] = thisRow['class'];
						// var codeClass = " " + thisRow['class'];
						var codeClass = "";
					}else {
						thisRow['class'] = "";
						var codeClass = "";
					}
					if (isset(thisRow['thumbnail'])) {
						var codeCacheThumbnail = "<div class='thumbnail'> <div class='img' style='background-image: url("+thisRow['thumbnail']+");'></div> </div>";
					}else {
						var codeCacheThumbnail = "";
					}
					if (isset(thisRow['tag']) && countArr(thisRow['tag']) > 0) {
						var codeCacheTag = "";
						contentTagLoop: for (var tagLabel in thisRow['tag']) {
							var tagValue = thisRow['tag'][tagLabel];
							if (isset(tagValue) && inArr(typeof tagValue, ["string", "number", "boolean"])) {
								if (codeCacheTag == "") codeCacheTag = codeCacheTag + "tag-"+tagLabel+"='"+tagValue+"'";
								else codeCacheTag = codeCacheTag + " tag-"+tagLabel+"='"+tagValue+"'";
							}else {
								continue contentTagLoop;
							}
						}
					}else {
						continue rowsLopp;
					}
					boxSuggestCode = boxSuggestCode + "<div class='rows"+codeClass+"' tag-rows='"+JSON.stringify(thisRow['tag'])+"' "+codeCacheTag+" tag-class='"+thisRow['class']+"' tag-text='"+thisRow['text']+"' tag-tip='"+thisRow['tip']+"'> "+codeCacheThumbnail+" <div class='context'> <div class='text'> <span>"+thisRow['text']+"</span> </div> <div class='tip'> <span>"+thisRow['tip']+"</span> </div> </div> </div>";
					countAdded++;
				}
				if (countAdded === 0) {
					var isNull = true;
					boxSuggestCode = boxSuggestCode + "<div class='rows null'> <span><?php print $_language->text('not_found', 'ucfirst'); ?></span> </div>";
				}
			}else {
				var isNull = true;
				boxSuggestCode = boxSuggestCode + "<div class='rows null'> <span><?php print $_language->text('not_found', 'ucfirst'); ?></span> </div>";
			}
			boxSuggestCode = boxSuggestCode + "</div>";
		}
		boxSuggestCode = boxSuggestCode + "</div> </div>";
	}
	boxSuggestCode = "<div id='boxSuggest' class='' randkey='"+randkey+"'> "+boxSuggestCode+" </div>";
	$("#boxSuggest").fadeOut(function(){
		$(this).remove();
	});
	input.attr('boxSuggest', randkey).after(boxSuggestCode);
	var boxSuggestPopup = $("#boxSuggest[randkey='"+randkey+"']");
	if (boxSuggestPopup.find(".body > .list").height() > 250) {
		boxSuggestPopup.find(".body > .list").barScroll({
			height: "250px",
			size: "2px",
			railOpacity: 0.4,
			color: "#777",
			alwaysVisible: true
		});
	}
	boxSuggestPopup.hide().fadeIn();
	if (isset(isNull) && isNull === true) {
		boxSuggestPopup.find(".footer").slideUp(function(){
			$(this).remove();
		});
	}
	var rowsTagSelectFunc = function () {
		if (boxSuggestPopup.attr('handling-tag-adding') == "true") {
			return false;
		}else {
			boxSuggestPopup.attr('handling-tag-adding', 'true');
		}
		if (!isset(optionsMultiple)) {
			boxSuggestPopup.removeAttr('handling-tag-adding');
			return false;
		}
		if (!isset(optionsOutput) || !optionsOutput) {
			boxSuggestPopup.removeAttr('handling-tag-adding');
			return false;
		}
		var rowThis = $(this),
			rowTag = rowThis.attr('tag-rows'),
			rowClass = rowThis.attr('tag-class');
		if (isset(rowTag) && typeof rowTag == "string" && typeof JSON.parse(rowTag) == "object") {
			var rowTag = JSON.parse(rowTag);
		}else {
			boxSuggestPopup.removeAttr('handling-tag-adding');
			return false;
		}
		if (!isset(rowClass) || typeof rowClass != "string") {
			var rowClass = "";
		}
		var codeCacheTag = "";
		contentTagLoop: for (var tagLabel in rowTag) {
			var tagValue = rowTag[tagLabel];
			if (isset(tagValue) && inArr(typeof tagValue, ["string", "number", "boolean"])) {
				if (codeCacheTag == "") codeCacheTag = codeCacheTag + "tag-"+tagLabel+"='"+tagValue+"'";
				else codeCacheTag = codeCacheTag + " tag-"+tagLabel+"='"+tagValue+"'";
			}else {
				continue contentTagLoop;
			}
		}
		var tagFouned = 0;
		var tagSelected = $("[tag-obj='"+randkey+"']");
		tagSelected.each(function() {
			var tagSelectedThis = $(this);
			if (isset(tagSelectedThis.attr('tag-rows')) && typeof tagSelectedThis.attr('tag-rows') == "string" && typeof JSON.parse(tagSelectedThis.attr('tag-rows')) == "object") {
				var tagSelectedRow = JSON.parse(tagSelectedThis.attr('tag-rows'));
				if (compareArr(rowTag, tagSelectedRow)) {
					tagFouned++;
					return;
				}
			}
		});
		if (tagFouned > 0 && optionsMultiple == true) {
			boxSuggestPopup.removeAttr('handling-tag-adding');
			return false;
		}
		var randKeyTag = randomKeyString(6);
		var codeTag = "<span class='"+rowClass+"' tag-key='"+randKeyTag+"' tag-obj='"+randkey+"' tag-rows='"+JSON.stringify(rowTag)+"' "+codeCacheTag+"> "+rowThis.attr('tag-text')+" <i class='close'></i> </span>";
		var tagRowAll = $("[tag-obj='"+randkey+"']");
		if (!optionsMultiple) {
			tagRowAll.fadeOut(function(){
				$(this).remove();
			});
			input.hide().addClass('input-disabled').attr('disabled', 'disabled');
			boxSuggestPopup.hide(function(){
				$(this).remove();
			});
		}
		input.before(codeTag);
		var tagRowThis = $("[tag-key='"+randKeyTag+"'][tag-obj='"+randkey+"']");
		tagRowThis.removeAttr('tag-key').hide().fadeIn();
		tagRowThis.find(".close").bind('click', rowsTagRemoveFunc);
		boxSuggestPopup.removeAttr('handling-tag-adding');
	};
	var rowsTagRemoveFunc = function () {
		if (!isset(optionsMultiple)) {
			return false;
		}
		if (!isset(optionsOutput) || !optionsOutput) {
			return false;
		}
		if (isset($(this).attr('tag-obj')) && isset($(this).attr('tag-rows'))) {
			var rowThis = $(this);
		}else {
			var rowThis = $(this).parents("[tag-obj][tag-rows]");
		}
		var rowTag = rowThis.attr('tag-rows');
		if (isset(rowTag) && typeof rowTag == "string" && typeof JSON.parse(rowTag) == "object") {
			var rowTag = JSON.parse(rowTag);
		}else {
			return false;
		}
		rowThis.fadeOut(function(){
			$(this).remove();
			if (optionsMultiple == true) {
				var showInput = false;
			}else {
				var showInput = true;
			}
			if (showInput == true) {
				input.removeClass('input-disabled').removeAttr('disabled').fadeIn();
			}
		});
	};
	var rowsTagHoverFunc = function () {
		boxSuggestPopup.find(".body .box > .rows[tag-rows][selected]").removeAttr('selected');
		var rowThis = $(this);
		rowThis.attr('selected', 'selected');
		var rowTag = rowThis.attr('tag-rows');
		if (isset(rowTag) && typeof rowTag == "string" && typeof JSON.parse(rowTag) == "object") {
			var rowTag = JSON.parse(rowTag);
			if (isset(rowTag['preview']) && isset(rowTag['preview']['type']) && isset(rowTag['preview']['url'])) {
				if (boxSuggestPopup.find(".footer").length === 0) {
					boxSuggestPopup.children(".body").after("<div class='footer'></div>");
				}
				var previewBox = boxSuggestPopup.find(".footer").children(".preview");
				if (previewBox.length == 0) {
					boxSuggestPopup.find(".footer").append("<div class='preview'></div>");
					var previewBox = boxSuggestPopup.find(".footer").children(".preview");
				}
				if (rowTag['preview']['type'] == "image") {
					previewBox.html("<div class='img' style='background-image: url("+rowTag['preview']['url']+");'></div>");
				}
			}
		}else {
			return false;
		}
	};
	var rowsTag = boxSuggestPopup.find(".body .box > .rows[tag-rows]");
	rowsTag.bind('click', rowsTagSelectFunc);
	rowsTag.bind('mouseover', rowsTagHoverFunc);
	rowsTag.first().mouseover();
	$(document).bind('keyup', function(e) {
		var keycode = (e.keyCode ? e.keyCode : e.which);
		if (keycode == 13 && boxSuggestPopup.find(".body .box > .rows[tag-rows][selected='selected']").length > 0) {
			boxSuggestPopup.find(".body .box > .rows[tag-rows][selected='selected']").click();
		}
	});
	$(document).bind('click', function () {
		boxSuggestPopup.fadeOut(function(){
			$(this).remove();
		});
	});
	boxSuggestPopup.bind('click', function (e) {
		stopEvent(e);
		return false;
	});
};
/*
var xx = {
	'multiple': false,
	'output': true,
	'type': '',
	'title': 'Text title',
	'content': {
		'Text navbar xx first': [
			{
				// 'thumbnail': '',
				'tag': {
					'labelFirst': 'valueFirst',
					'labelSecond': 'valueSecond'
				},
				'text': 'Text content',
				'tip': 'Tip content'
			},
			{
				'thumbnail': 'http://localhost/giccos/photos/raw/static/user-avatar-small.jpg',
				'tag': {
					'labelFirst': 'valueFirst',
					'labelSecond': 'valueSecond'
				},
				'text': 'Text content',
				'tip': 'Tip content'
			}
		],
		'Text navbar first': [
			{
				// 'thumbnail': '',
				'tag': {
					'labelFirst': 'valueFirst',
					'labelSecond': 'valueSecond'
				},
				'text': 'Text content',
				'tip': 'Tip content'
			},
			{
				'thumbnail': 'http://localhost/giccos/photos/raw/static/user-avatar-small.jpg',
				'tag': {
					'labelFirst': 'valueFirst',
					'labelSecond': 'valueSecond'
				},
				'text': 'Text content',
				'tip': 'Tip content'
			}
		],
		'Text navbar second': [
			{
			// 'thumbnail': '',
			'tag': {
				'labelFirst': 'valueFirst',
				'labelSecond': 'valueSecond'
			},
			'text': 'Text content',
			'tip': 'Tip content'
			}
		]
	}
};
boxSuggest($("#gboxAsk > .box > .content > .rows input"), xx);
*/
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
	if (error[id] === undefined || error[id] === null) {
		var text = '<?php print $_language->text("not_identified", "ucfirst"); ?>';
	}else {
		var text = error[id];
	}
	return text;
}
var loadScript = function(filename, filetype) {
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
var callUpdate = function () {
	var reloadFunc = function() {
		setTimeout(function() {
			callUpdate();
		}, 60000 / 10);
	};
	$.ajax({
		url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
		type: "GET",
		data: {'port': 'user', 'type': 'reload'},
		dataType: "json",
		contentType: "<?php print $_parameter->get('contentType_urlencoded.utf8'); ?>",
		success: function (data) {
			if (isset(data['return']) && data['return'] === true) {
				//.
			}else {
				//.
			}
		}
	}).fail(reloadFunc).done(reloadFunc);
}
var ExplorerPopup = function (object) {
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
		var code = ' <div id="ExplorerPopup" randkey="'+randkey+'"> <div class="boxContent"> <div class="header"> <span>'+titleText+'</span> <i close> </i> </div>  <div class="body"> <div class="nav"> <div class="list"> <div class="rows active" type="cache"> <span><?php print $_language->text('explorer.rows_cache', 'ucfirst'); ?></span> </div> <div class="rows" type="sync"> <span><?php print $_language->text('explorer.rows_sync', 'ucfirst'); ?></span> </div> </div> <div class="arrow"></div> </div> <div class="data"> <div class="main"> </div> </div> </div> <div class="footer"> <div class="copyright"> <span> <?php print $_language->text('Explorer_footer_text'); ?> </span> </div> </div> </div> </div> ';
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
		distance: "6px",
		alwaysVisible: true
	});
	if (!isset(object['data']) || typeof object['data'] != "object") {
		return false;
	}
	if (isset(object['data']['callback']) && typeof object['data']['callback'] == "function") {
		//.
	}
	var tab = $("#ExplorerPopup[randkey='"+randkey+"']");
	var boxContent = tab.children(".boxContent");
	var listType = boxContent.find(".body > .nav > .list");
	var closeButton = tab.find(".header [close]");
	closeButton.bind('click', function() {
		tab.fadeOut(function() {
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
		listType.children("[type]").bind('click', function() {
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
	if (isset(object['data']['type'])) {
		listType.children("[type]").each(function() {
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
				setTimeout(function() {
					tab.removeAttr("handling-data");
				}, 100);
				boxContent.find(".body > .data .waiting_setup_data").slideUp(function() {
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
				if (isset(fileInfo['time'])) {
					if (fileInfo['time'] === 0) {
						c_['nav']['time'] = " <div class='time'> <i></i> <span><?php print $_language->text('undefined', 'ucfirst'); ?></span> </div> ";
					}else {
						c_['nav']['time'] = " <div class='time'> <i></i> <span time-ago='"+fileInfo['time']+"'>"+agoDatetime(fileInfo['time'], 'ago')+"</span> </div> ";
					}
				}else {
					c_['nav']['time'] = "";
				}
				if (isset(fileInfo['close'])) {
					c_['nav']['close'] = "";
				}else {
					c_['nav']['close'] = "";
				}
				if (isset(fileInfo['nameraw'])) {
					fileInfo['nameraw'] = HTMLEncode(fileInfo['nameraw']);
					c_['info']['nameraw'] = " <div class='rows nameraw'> <i></i> <div>"+fileInfo['nameraw']+"</div> </div> ";
				}else {
					c_['info']['nameraw'] = "";
				}
				if (isset(fileInfo['mime'])) {
					c_['info']['mime'] = " <div class='rows mime'> <i></i> <div>"+fileInfo['mime']+"</div> </div> ";
				}else {
					c_['info']['mime'] = "";
				}
				if (isset(fileInfo['size'])) {
					c_['info']['size'] = " <div class='rows size'> <i></i> <div>"+fileInfo['size']+"</div> </div> ";
				}else {
					c_['info']['size'] = "";
				}
				if (isset(fileInfo['verify'])) {
					if (fileInfo['verify'] === true) {
						c_['info']['clean'] = 'none';
					}else {
						c_['info']['clean'] = 'auto';
					}
					c_['info']['clean'] = " <div class='rows clean'> <i></i> <div>"+c_['info']['clean']+"</div> </div> ";
				}else {
					c_['info']['clean'] = "";
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
					rows.each(function() {
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
				if (isset(fileInfo['time'])) {
					if (fileInfo['time'] === 0) {
						c_['nav']['time'] = " <div class='time'> <i></i> <span><?php print $_language->text('undefined', 'ucfirst'); ?></span> </div> ";
					}else {
						c_['nav']['time'] = " <div class='time'> <i></i> <span time-ago='"+fileInfo['time']+"'>"+agoDatetime(fileInfo['time'], 'ago')+"</span> </div> ";
					}
				}else {
					c_['nav']['time'] = "";
				}
				if (isset(fileInfo['close'])) {
					c_['nav']['close'] = "";
				}else {
					c_['nav']['close'] = "";
				}
				if (isset(fileInfo['nameraw'])) {
					fileInfo['nameraw'] = HTMLEncode(fileInfo['nameraw']);
					c_['info']['nameraw'] = " <div class='rows nameraw'> <i></i> <div>"+fileInfo['nameraw']+"</div> </div> ";
				}else {
					c_['info']['nameraw'] = "";
				}
				if (isset(fileInfo['mime'])) {
					c_['info']['mime'] = " <div class='rows mime'> <i></i> <div>"+fileInfo['mime']+"</div> </div> ";
				}else {
					c_['info']['mime'] = "";
				}
				if (isset(fileInfo['duration'])) {
					c_['info']['time'] = " <div class='rows time'> <i></i> <div>"+fileInfo['duration']+"</div> </div> ";
					c_['nav']['duration'] = " <div class='nav duration'> <div>"+fileInfo['duration']+"</div> </div> ";
				}else {
					c_['info']['time'] = "";
					c_['nav']['duration'] = "";
				}
				if (isset(fileInfo['size'])) {
					c_['info']['size'] = " <div class='rows size'> <i></i> <div>"+fileInfo['size']+"</div> </div> ";
				}else {
					c_['info']['size'] = "";
				}
				if (!isset(fileInfo['thumbnail'])) {
					fileInfo['thumbnail'] = "<?php print $_tool->links('photos/raw/static/music-cover-notfound.jpg'); ?>";
				}
				if (isset(fileInfo['verify'])) {
					if (fileInfo['verify'] === true) {
						c_['info']['clean'] = 'none';
					}else {
						c_['info']['clean'] = 'auto';
					}
					c_['info']['clean'] = " <div class='rows clean'> <i></i> <div>"+c_['info']['clean']+"</div> </div> ";
				}else {
					c_['info']['clean'] = "";
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
					rows.each(function() {
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
				if (isset(fileInfo['time'])) {
					if (fileInfo['time'] === 0) {
						c_['nav']['time'] = " <div class='time'> <i></i> <span><?php print $_language->text('undefined', 'ucfirst'); ?></span> </div> ";
					}else {
						c_['nav']['time'] = " <div class='time'> <i></i> <span time-ago='"+fileInfo['time']+"'>"+agoDatetime(fileInfo['time'], 'ago')+"</span> </div> ";
					}
				}else {
					c_['nav']['time'] = "";
				}
				if (isset(fileInfo['close'])) {
					c_['nav']['close'] = "";
				}else {
					c_['nav']['close'] = "";
				}
				if (isset(fileInfo['nameraw'])) {
					fileInfo['nameraw'] = HTMLEncode(fileInfo['nameraw']);
					c_['info']['nameraw'] = " <div class='rows nameraw'> <i></i> <div>"+fileInfo['nameraw']+"</div> </div> ";
				}else {
					c_['info']['nameraw'] = "";
				}
				if (isset(fileInfo['mime'])) {
					c_['info']['mime'] = " <div class='rows mime'> <i></i> <div>"+fileInfo['mime']+"</div> </div> ";
				}else {
					c_['info']['mime'] = "";
				}
				if (isset(fileInfo['duration'])) {
					c_['info']['time'] = " <div class='rows time'> <i></i> <div>"+fileInfo['duration']+"</div> </div> ";
					c_['nav']['duration'] = " <div class='nav duration'> <div>"+fileInfo['duration']+"</div> </div> ";
				}else {
					c_['info']['time'] = "";
					c_['nav']['duration'] = "";
				}
				if (isset(fileInfo['size'])) {
					c_['info']['size'] = " <div class='rows size'> <i></i> <div>"+fileInfo['size']+"</div> </div> ";
				}else {
					c_['info']['size'] = "";
				}
				if (isset(fileInfo['verify'])) {
					if (fileInfo['verify'] === true) {
						c_['info']['clean'] = "none";
					}else {
						c_['info']['clean'] = "auto";
					}
					c_['info']['clean'] = " <div class='rows clean'> <i></i> <div>"+c_['info']['clean']+"</div> </div> ";
				}else {
					c_['info']['clean'] = "";
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
					rows.each(function() {
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
var setupDirect = function () {
	$("[direct]").each(function (i) {
		var direct = $(this);
		var directAttr = direct.attr('direct');
		if (isset(direct.attr('direct-active')) && direct.attr('direct-active') == "true") {
			//.
			return false;
		}
		if (isset(directAttr) && typeof directAttr == "string") {
			if (isset(JSON.parse(directAttr)) && typeof JSON.parse(directAttr) == "object") {
				var directObj = JSON.parse(directAttr);
				if (!isset(directObj['by']) || !isset(directObj['link'])) {
					//.
					return false;
				}else {
					if (typeof directObj['by'] != "string" || !inArray(directObj['by'], ["click", "dblclick", "mouseover", "mouseout", "mouseleave"])) {
						//.
						return false;
					}else if (typeof directObj['link'] != "string" || !new RegExp(<?php print $_parameter->get('regex_url'); ?>).test(directObj['link'])) {
						//.
						return false;
					}else if (typeof directObj['target'] != "string" || !inArray(directObj['target'], ["_blank"])) {
						//.
						return false;
					}else {
						direct.attr('direct-active', 'true');
					}
					var directFunc = function (e) {
						if (isset(direct.attr('direct-disabled')) || direct.attr('direct-handling') == "true") {
							return false;
						}
						direct.attr('direct-handling', 'true');
						if (isset(directObj['target'])) {
							window.open(directObj['link'], directObj['target']);
						}else {
							window.location.href = directObj['link'];
						}
						setTimeout(function () {
							direct.removeAttr('direct-handling');
						});
					};
					direct.bind(directObj['by'], directFunc);
				}
			}else {
				//.
			}
		}else {
			//.
		}
	});
	/*
	$("[direct]").bind("click dblclick mouseenter", function(e) {
		var direct = $(this);
		if (direct.attr('direct-disabled') == "true") {
			return false;
		}
		if (direct.attr('directing') != "true") {
			direct.attr('directing', 'true');
		}else {
			return false;
		}
		if (!isset(direct.attr('direct')) || typeof direct.attr('direct') != "string" || typeof JSON.parse(direct.attr('direct')) != "object") {
			return false;
		}
		var info = JSON.parse(direct.attr('direct'));
		if (isset(info['to'])) {
			var link = info['to'];
		}else if (isset(info['link'])) {
			var link = info['link'];
		}else {
			return false;
		}
		if (isset(info['by']) && e.type == info['by'] && (info['by'] == "click" || info['by'] == "dblclick" || info['by'] == "mouseenter")) {
			stopEvent(e);
			if (isset(info['target'])) {
				window.open(link, info['target']);
			}else {
				window.location.href = link;
			}
			setTimeout(function() {
				direct.removeAttr('directing');
			}, 100);
		}else {
			direct.removeAttr('directing');
			return false;
		}
	});
	$("[href], [direct]").bind('click', function(e) {
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
				type: "GET",
				dataType: "json",
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				data: {'token': '<?php print $g_client['token']['action']['ajaxify']; ?>', 'port': 'ajaxify', 'url': url},
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					if (isset(data['return']) && data['return'] === true) {
						if (isset(data['direct']) && data['direct'] === true) {
							window.location.href = url;
						}else {
							reloadMain(data['data']);
						}
					}
				}
		    }).done(function() {
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
		$("html").hide(function() {
			$(document).ready(function() {
				for (var i in script) {
					// getScriptPush(script[i]);
				}
				$("html").hide().show(function() {
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
		scriptLoaded.children("div").each(function() {
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
		$("script").each(function() {
			var script = $(this);
			var src = $(this).attr('src');
			var count = 0;
			scriptLoaded.children("div").each(function() {
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
	$(document).ready(function() {
		getScriptLoaded();
	});
}
function wrapperLoad (randkey, action, timeout, callback) {
	if (!isset(randkey) || randkey === null) {
		var randkey = randomKeyString(<?php print $_parameter->get('explorer_length_randKeyEvent'); ?>);
	}
	if (typeof action == "boolean" && action === true) {
		var codeWrapper = " <div id='wrapperLoading' randkey='"+randkey+"'> <div class='close'></div> <div class='loading'></div> </div> ";
		$("body").css("overflow-y", "hidden").append(codeWrapper);
		var thisWrapper = $("#wrapperLoading[randkey='"+randkey+"']"),
			close = thisWrapper.find(".close");
		if (isset(callback) && typeof callback == "function") {
			close.bind('click', callback);
		}
		var closeFunc = function () {
			$("body").css({'overflow-y': 'auto'});
			thisWrapper.fadeOut(function() {
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
			setTimeout(function() {
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
	var positionMessagesPopup = function (popup, object) {
		if (!isset(popup) || !isset(object['display'])) {
			return false;
		}
		var popupDisplay = object['display'];
		var limitTimeout = 3000;
		var getPositionPopup = function () {
			var getPositionFunc = function () {
				if (popup.length === 0) {
					return false;
				}else {
					if (popup.attr('handling-position-get') != "true" && popup.attr('handling-position-set') != "true") {
						popup.attr('handling-position-get', 'true');
						var codeDisplay = popupDisplay;
						var postionObj = getCookie("gMessagesTabPos");
						if (isset(postionObj) && typeof postionObj == "string" && typeof JSON.parse(postionObj) == "object") {
							postionObj = JSON.parse(postionObj);
							objLoop: for (var key in postionObj) {
								if (isset(postionObj[key]['removed'])) {
									if (postionObj[key]['removed'] + <?php print $_parameter->get('messages_postion_timeout'); ?> < Math.round(new Date() / 1000)) {
										delete postionObj[key];
									}
									continue objLoop;
								}
								if (key == codeDisplay) {
									var popupOffset = {
										'hide': postionObj[key]['hide'],
										'top': Math.round(postionObj[key]['top']),
										'left': Math.round(postionObj[key]['left'])
									};
									var isFounded = true;
									break objLoop;
								}
							}
						}
						if (!isset(isFounded) || isFounded !== true) {
							popup.removeAttr('handling-position-get');
							return false;
						}
						var popupOffsetNow = popup.offset();
						var popupOffsetNow = {
							'top': Math.round(popupOffsetNow['top']),
							'left': Math.round(popupOffsetNow['left'])
						};
						var windowSize = {
							'height': $(window).height(), 
							'width': $(window).width()
						};
						if (!isset(popupOffset['top']) || popupOffset['top'] < 0 || popupOffset['top'] > windowSize['height'] - popup.height()) {
							if (popupOffset['top'] < 0) {
								popupOffset['top'] = 10;
							}else if (popupOffset['top'] > windowSize['height'] - popup.height()) {
								popupOffset['top'] = windowSize['height'] - popup.height() - 10;
							}else {
								popupOffset['top'] = (windowSize['height'] - popup.height()) / 2;
							}
						}
						if (!isset(popupOffset['left']) || popupOffset['left'] < 0 || popupOffset['left'] > windowSize['width'] - popup.width()) {
							if (popupOffset['left'] < 0) {
								popupOffset['left'] = 10;
							}else if (popupOffset['left'] > windowSize['width'] - popup.width()) {
								popupOffset['left'] = windowSize['width'] - popup.width() - 10;
							}else {
								popupOffset['left'] = (windowSize['width'] - popup.width()) / 2;
							}
						}
						popup.animate({
							'top': popupOffset['top'] + 'px',
							'left': popupOffset['left'] + 'px'
						}, function () {
							if (popupOffsetNow['top'] != popupOffset['top'] && popupOffsetNow['left'] != popupOffset['left']) {
								if (isset(popupOffset['hide']) && popupOffset['hide'] === true) {
									popup.children(".title").dblclick();
								}
								setTimeout(function () {
									popup.hide().fadeIn();
								}, 100);
							}
							popup.removeAttr('handling-position-get');
						});
					}else {
						return false;
					}
				}
			};
			var autoLoopFunc = function () {
				setTimeout(function () {
					getPositionFunc();
					setTimeout(autoLoopFunc, limitTimeout);
				}, limitTimeout);
			};
			autoLoopFunc();
		};
		var setPositionPopup = function () {
			var setPostionFunc = function () {
				if (popup.length === 0) {
					return false;
				}else {
					if (popup.attr('handling-position-set') != "true") {
						popup.attr('handling-position-set', 'true');
						var popupOffset = popup.offset();
						var windowSize = {
							'height': $(window).height(), 
							'width': $(window).width()
						};
						if (!isset(popupOffset['top']) || popupOffset['top'] < 0 || popupOffset['top'] > windowSize['height'] - popup.height()) {
							if (popupOffset['top'] < 0) {
								popupOffset['top'] = 10;
							}else if (popupOffset['top'] > windowSize['height'] - popup.height()) {
								popupOffset['top'] = windowSize['height'] - popup.height() - 10;
							}else {
								popupOffset['top'] = (windowSize['height'] - popup.height()) / 2;
							}
						}
						if (!isset(popupOffset['left']) || popupOffset['left'] < 0 || popupOffset['left'] > windowSize['width'] - popup.width()) {
							if (popupOffset['left'] < 0) {
								popupOffset['left'] = 10;
							}else if (popupOffset['left'] > windowSize['width'] - popup.width()) {
								popupOffset['left'] = windowSize['width'] - popup.width() - 10;
							}else {
								popupOffset['left'] = (windowSize['width'] - popup.width()) / 2;
							}
						}
						popup.animate({
							'top': Math.round(popupOffset['top']) + 'px',
							'left': Math.round(popupOffset['left']) + 'px'
						});
						if (popup.hasClass('active')) {
							var isHide = false;
						}else {
							var isHide = true;
						}
						var codeDisplay = popupDisplay;
						var postionObj = getCookie("gMessagesTabPos");
						if (isset(postionObj) && typeof postionObj == "string" && typeof JSON.parse(postionObj) == "object") {
							postionObj = JSON.parse(postionObj);
							objLoop: for (var key in postionObj) {
								if (isset(postionObj[key]['removed'])) {
									if (postionObj[key]['removed'] + <?php print $_parameter->get('messages_postion_timeout'); ?> < Math.round(new Date() / 1000)) {
										delete postionObj[key];
									}
									continue objLoop;
								}
								if (key == codeDisplay) {
									postionObj[key] = {
										'time': Math.round(new Date() / 1000),
										'hide': isHide,
										'top': Math.round(popupOffset['top']), 
										'left': Math.round(popupOffset['left'])
									};
									var isPushed = true;
									break objLoop;
								}else {
									if (isset(postionObj[key]['time']) && isset(postionObj[key]['top']) && isset(postionObj[key]['left'])) {
										if (postionObj[key]['time'] + <?php print $_parameter->get('messages_postion_timeout'); ?> < Math.round(new Date() / 1000)) {
											delete postionObj[key];
										}
									}else {
										delete postionObj[key];
									}
									continue objLoop;
								}
							}
						}else {
							postionObj = {};
						}
						if (!isset(isPushed)) {
							postionObj[codeDisplay] = {
								'time': Math.round(new Date() / 1000),
								'hide': isHide,
								'top': Math.round(popupOffset['top']), 
								'left': Math.round(popupOffset['left'])
							};
							var isPushed = true;
						}
						console.log('x');
						writeCookie("gMessagesTabPos", JSON.stringify(postionObj), 604800);
						popup.removeAttr('handling-position-set');
					}else {
						return false;
					}
				}
			};
			var removePostionFunc = function () {
				if (1 + 1 == 3) {
					return false;
				}else {
					if (popup.attr('handling-position-remove') != "true") {
						popup.attr('handling-position-remove', 'true');
						var codeDisplay = popupDisplay;
						var postionObj = getCookie("gMessagesTabPos");
						if (isset(postionObj) && typeof postionObj == "string" && typeof JSON.parse(postionObj) == "object") {
							postionObj = JSON.parse(postionObj);
							objLoop: for (var key in postionObj) {
								if (key == codeDisplay) {
									postionObj[key] = {
										'removed': Math.round(new Date() / 1000)
									};
									break objLoop;
								}
							}
							writeCookie("gMessagesTabPos", JSON.stringify(postionObj), 604800);
						}
						popup.removeAttr('handling-position-remove');
					}else {
						return false;
					}
				}
			};
			setTimeout(function () {
				popup.on("dragstop", setPostionFunc);
				popup.children(".title, .thumbnail").bind("dblclick", setPostionFunc);
				popup.children(".title").find(".options").find(".close").bind("click", removePostionFunc);
			}, 250);
			var autoSetPostionFunc = function () {
				setTimeout(function () {
					setPostionFunc();
					setTimeout(function () {
						autoSetPostionFunc();
					}, 1000);
				}, 604800 / 3);
			};
		};
		getPositionPopup();
		setPositionPopup();
	};
	var actionMessagesPopup = function (popup, object) {
		if (!isset(popup) || popup.length === 0 || !isset(object['display'])) {
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
			var doneRequestFunc = function() {
				popup.removeAttr('handling-get-info');
			};
			popup.attr('handling-get-info', 'true');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'tab', 'action': 'get', 'label': 'display', 'value': messagesTabDisplay, 'limit': '1'};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					if (isset(data['return']) && isset(data['tab']) && data['return'] === true && typeof data['tab'] == "object") {
						if (countArr(data['tab']) === 0) {
							popup.fadeOut(function() {
								$(this).remove();
							});
							popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('messages_not_exist_maybe_has_deleted', 'ucfirst'); ?>.'});
						}else {
							var dataInfoPopup = data['tab'][0];
							var displayMessagesPopup = dataInfoPopup['display'];
							var messagesTabThis = $(".messagesTab[display='"+displayMessagesPopup+"']");
							popup.find(".title").find(".name").find("span").text(dataInfoPopup['name']);
							//.
							if (isset(dataInfoPopup['status'])) {
								var dataInfoPopupStatus = dataInfoPopup['status'];
								delete dataInfoPopup['status'];
							}
							if (isset(dataInfoPopup['options'])) {
								var dataInfoPopupOptios = dataInfoPopup['options'];
								delete dataInfoPopup['options'];
							}
							if (isset(dataInfoPopup['members'])) {
								var dataInfoPopupMembers = dataInfoPopup['members'];
								delete dataInfoPopup['members'];
							}
							popup.attr('tab', JSON.stringify(dataInfoPopup));
							dataInfoPopup['status'] = dataInfoPopupStatus;
							dataInfoPopup['options'] = dataInfoPopupOptios;
							dataInfoPopup['members'] = dataInfoPopupMembers;
							console.log(dataInfoPopup);
							//.
							if (isset(dataInfoPopup['status']['seen']) && dataInfoPopup['status']['seen'] === true) {
								popup.attr('views', 'added');
							}
							if (isset(dataInfoPopup['status']['typing']) && dataInfoPopup['status']['typing'] === true) {
								popup.attr('typing', 'added');
								actionTypingMessagesPopup('remove', {'tab': dataInfoPopup['id']});
							}
							if (isset(dataInfoPopup['members'])) {
								if (isset(dataInfoPopup['members']['list']) && countArr(dataInfoPopup['members']['list']) > 0) {
									if (countArr(dataInfoPopup['members']['list']) == 4) {
										var thumbClass = "fo";
									}else if (countArr(dataInfoPopup['members']['list']) == 3) {
										var thumbClass = "th";
									}else if (countArr(dataInfoPopup['members']['list']) == 2) {
										var thumbClass = "tw";
									}else if (countArr(dataInfoPopup['members']['list']) == 1) {
										var thumbClass = "on";
									}else {
										var thumbClass = "";
									}
									popup.children(".title").before("<div class='thumbnail'> <div class='box "+thumbClass+"'> </div> </div>");
									for (var i in dataInfoPopup['members']['list']) {
										var membersThis = dataInfoPopup['members']['list'][i];
										popup.children(".thumbnail").children(".box").append("<div class='img' style='background-image: url("+membersThis['avatar']+");'></div>");
									}
									headsMessagesPopup({'tab': dataInfoPopup['id']});
								}
							}
							//.
							settingsMessagesPopup({'tab': dataInfoPopup['id'], 'info': dataInfoPopup, 'options': dataInfoPopup['options']});
							getLastMessagesPopup({'tab': dataInfoPopup['id']});
							typeMessagesPopup({'tab': dataInfoPopup['id']});
							viewsMessagesPopup({'tab': dataInfoPopup['id']});
							popup.find(".content").scroll(function() {
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
					}else if (isset(data['return']) && data['return'] === false) {
						popup.remove();
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		};
		var existsMessagesPopup = function (object) {
			if (!isset(object)|| !isset(object['tab'])) {
				return false;
			}
			var tabId = object['tab'];
			var isFounded = 0;
			$(".messagesTab[display][tab]").each(function(){
				var tabInfo = $(this).attr('tab');
				if (isset(tabInfo) && typeof tabInfo == "string" && typeof JSON.parse(tabInfo) == "object") {
					var tabInfo = JSON.parse(tabInfo);
					if (isset(tabInfo['id']) && tabInfo['id'] == tabId) {
						isFounded++;
					}
				}
			});
			if (isFounded === 0) {
				return false;
			}else {
				return true;
			}
		};
		var headsMessagesPopup = function (object) {
			if (!isset(object)|| !isset(object['tab'])) {
				return false;
			}
			var tabId = object['tab'];
			var messagesTabOpenFunc = function () {
				popup.children(".title").nextAll().slideDown(125, function () {
					setTimeout(function() {
						// popup.children(".content").find(".list").barScroll({'scrollTo': popup.find(".content .list").prop('scrollHeight')+'px'});
					},125);
				});
				popup.removeClass('inactive').addClass('active');
			};
			var messagesTabCloseFunc = function () {
				popup.children(".title").nextAll().slideUp(250);
				popup.removeClass('active').addClass('inactive');
			};
			popup.addClass('heads').children(".thumbnail").bind("dblclick", function() {
				if (!popup.hasClass('active')) {
					messagesTabOpenFunc();
				}else {
					messagesTabCloseFunc();
				}
			});
		};
		var settingsMessagesPopup = function (object) {
			if (!isset(object)|| !isset(object['tab']) || !existsMessagesPopup(object) || !isset(object['info']) || !isset(object['options'])) {
				return false;
			}
			var tabId = object['tab'];
			var actionSettingMessages = function () {
				var actionSettingsLanguage = function () {
					var popupSettingsLanguage = function (language) {
						$("#actionSettingMessages").remove();
						var randkey = randomKeyString(10);
						var codePopup = "<div id='actionSettingMessages' randkey='"+randkey+"'> <div class='box'> <div class='title'> <span><?php print $_language->text('language_settings', 'ucfirst'); ?></span> <i class='close'></i> </div> <div class='main'> <div class='content'> <div class='rows description'> <span><?php print $_language->text('choose_language', 'ucfirst'); ?></span> </div> <div class='rows input'> </div> </div> <div class='options'> <div class='rows'> <button class='button _bn_c-we' type='button'><?php print $_language->text('confirm', 'ucfirst'); ?></button> </div> </div> </div> </div> </div>";
						$("body").append(codePopup);
						var overflowCSS = $("body").css('overflow-y');
						$("body").css({'overflow-y': 'hidden'});
						var settingsPopup = $("#actionSettingMessages[randkey='"+randkey+"']");
						settingsPopup.children(".box").boxPosition({position: "center", resize: true});
						settingsPopup.children(".box").find(".title .close").bind('click', function () {
							settingsPopup.fadeOut(function(){
								$(this).remove();
								$("body").css({'overflow-y': overflowCSS});
							});
						});
						settingsPopup.children(".box").find(".main > .content > .rows.input").html("<input class='input' type='text ip_s1' placeholder='<?php print $_language->text('language_name', 'upperlower'); ?>'>");
						var languageList = objLanguageList("supported");
						var languageInput = settingsPopup.children(".box").find(".main > .content > .rows.input").children(".input");
						var inputTypeFunc = function (e) {
							// disabledEventPropagation(e);
							inputVal = languageInput.val();
							if (inputVal != "") {
								langFoundedArr = [];
								languageLoop: for (var i in languageList) {
									var thisLanguage = languageList[i];
									if (!isset(thisLanguage['code']) || !isset(thisLanguage['name']) || !isset(thisLanguage['country']) || !isset(thisLanguage['country']['name']) || !isset(thisLanguage['country']['code'])) {
										continue languageLoop;
									}else {
										if (thisLanguage['code'] == inputVal || thisLanguage['name'].match(new RegExp(inputVal, "ig")) || thisLanguage['country']['code'] == inputVal || thisLanguage['country']['name'].match(new RegExp(inputVal, "ig"))) {
											langFoundedArr[countArr(langFoundedArr)] = {'class': 'tagLanguage', 'text': thisLanguage['name'], 'tip': thisLanguage['code'], 'tag': {'language': thisLanguage['code']}};
										}
									}
								}
								var boxSuggestOptions = {
									'multiple': false,
									'output': true,
									'title': '<?php print $_language->text('language', 'ucfirst'); ?>',
									'content': {
										'<?php print $_language->text('you_may_need', 'ucfirst'); ?>': langFoundedArr
									}
								};
								boxSuggest(languageInput, boxSuggestOptions);
								//. console.log(searchObj(languageInput.val(), languageList));
							}
						};
						languageInput.bind('keyup', inputTypeFunc);
						if (language != "0" || language !== 0) {
							console.log(languageList);
							languageLoop: for (var i in languageList) {
								if (isset(languageList[i]['code']) && languageList[i]['code'] == language) {
									var codeLanguageTag = "<span class='tagLanguage' tag-obj tag-rows='"+JSON.stringify({'language': languageList[i]['code']})+"' tag-language='"+languageList[i]['code']+"'> "+languageList[i]['name']+" <i class='close'></i> </span>";
									break languageLoop;
								}else {
									continue languageLoop;
								}
							}
							if (isset(codeLanguageTag)) {
								languageInput.hide().before(codeLanguageTag);
								languageInput.prev(".tagLanguage").find(".close").bind('click', function(){
									$(this).parents(".tagLanguage").callEffect({
										mode: 1,
										type: "hide", 
										effect: "slide",
										complete: function () {
											$(this).remove();
											languageInput.fadeIn();
										}
									});
								});
							}
						}
						var changeLanguageRequest = function () {
							if (languageInput.prev(".tagLanguage[tag-language]").length > 0) {
								var tagLanguage = languageInput.prev(".tagLanguage[tag-language]").first().attr('tag-language');
							}else {
								var tagLanguage = "0";
							}
							if (tagLanguage == language) {
								settingsPopup.children(".box").find(".title .close").click();
								return false;
							}
							var failRequestFunc = function () {
								popupNotification ({type: 2, title: "<?php print $_language->text('error', 'ucfirst'); ?>", description: "<?php print $_language->text('error_when_update', 'ucfirst'); ?>, <?php print $_language->text('please_try_agian', 'strtolower'); ?>."});
							};
							var doneRequestFunc = function () {
								popupNotification ({type: 1, title: "<?php print $_language->text('notification', 'ucfirst'); ?>", description: "<?php print $_language->text('updates_successful', 'ucfirst'); ?>."});
								settingsPopup.children(".box").find(".title .close").click();
							};
							var data = {'port': 'messages', 'type': 'private', 'manage': 'members', 'action': 'change', 'id': tabId, 'label': 'translate', 'value': tagLanguage, 'guy': {'type': 'mode', 'id': 'auto'}};
							$.ajax({
								url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
								type: "GET",
								dataType: "json",
								data: data,
								contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
								success: function (data) {
									console.log(data);
									if (isset(data['return']) && data['return'] === true) {
										doneRequestFunc();
										messagesTabThis.find(".content").find(".list").html("");
										getLastMessagesPopup({'tab': tabId});
										popupNotification ({type: 1, title: "<?php print $_language->text('notification', 'ucfirst'); ?>", description: "<?php print $_language->text('please_wait_reload_message', 'ucfirst'); ?>."});
									}
								}
							}).fail(failRequestFunc);
						};
						settingsPopup.children(".box").find(".main > .options > .rows .button").bind('click', changeLanguageRequest);
					};
					var doneRequestFunc = function () {

					};
					var data = {'port': 'messages', 'type': 'private', 'manage': 'members', 'action': 'get', 'id': tabId, 'rows': ['translate'], 'guy': {'type': 'mode', 'id': 'auto'}, 'limit': 1};
					$.ajax({
						url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
						type: "GET",
						dataType: "json",
						data: data,
						contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
						success: function (data) {
							console.log(data);
							if (isset(data['return']) && isset(data['count']) && isset(data['data']) && data['return'] === true) {
								if (data['count'] > 0) {
									dataLoop: for (var i in data['data']) {
										if (isset(data['data'][i]['translate'])) {
											popupSettingsLanguage(data['data'][i]['translate']);
											break dataLoop;
										}
									}
								}
							}
						}
					}).fail(doneRequestFunc).done(doneRequestFunc);
				};
				var actionSettingsName = function () {
					var popupSettingsName = function (name) {
						$("#actionSettingMessages").remove();
						var randkey = randomKeyString(10);
						var codePopup = "<div id='actionSettingMessages' randkey='"+randkey+"'> <div class='box'> <div class='title'> <span><?php print $_language->text('rename', 'ucfirst'); ?></span> <i class='close'></i> </div> <div class='main'> <div class='content'> <div class='rows description'> <span><?php print $_language->text('type_new_name', 'ucfirst'); ?></span> </div> <div class='rows input'> </div> </div> <div class='options'> <div class='rows'> <button class='button _bn_c-we' type='button'><?php print $_language->text('confirm', 'ucfirst'); ?></button> </div> </div> </div> </div> </div>";
						$("body").append(codePopup);
						var overflowCSS = $("body").css('overflow-y');
						$("body").css({'overflow-y': 'hidden'});
						var settingsPopup = $("#actionSettingMessages[randkey='"+randkey+"']");
						settingsPopup.children(".box").boxPosition({position: "center", resize: true});
						settingsPopup.children(".box").find(".title .close").bind('click', function () {
							settingsPopup.fadeOut(function(){
								$(this).remove();
								$("body").css({'overflow-y': overflowCSS});
							});
						});
						settingsPopup.children(".box").find(".main > .content > .rows.input").html("<input class='input' type='text ip_s1' placeholder='<?php print $_language->text('new_name', 'upperlower'); ?>'>");
						var nameInput = settingsPopup.children(".box").find(".main > .content > .rows.input").children(".input");
						nameInput.val(name);
						var changeNameRequest = function () {
							var newName = nameInput.val();
							if (!isset(newName) || newName === null || newName == "") {
								//. var newName = "0";
							}
							var failRequestFunc = function () {
								popupNotification ({type: 2, title: "<?php print $_language->text('error', 'ucfirst'); ?>", description: "<?php print $_language->text('error_when_update', 'ucfirst'); ?>, <?php print $_language->text('please_try_agian', 'strtolower'); ?>."});
							};
							var doneRequestFunc = function () {
								popupNotification ({type: 1, title: "<?php print $_language->text('notification', 'ucfirst'); ?>", description: "<?php print $_language->text('updates_successful', 'ucfirst'); ?>."});
								settingsPopup.children(".box").find(".title .close").click();
							};
							var data = {'port': 'messages', 'type': 'private', 'manage': 'tab', 'action': 'change', 'id': tabId, 'label': 'name', 'value': newName, 'guy': {'type': 'mode', 'id': 'auto'}};
							$.ajax({
								url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
								type: "GET",
								dataType: "json",
								data: data,
								contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
								success: function (data) {
									console.log(data);
									if (isset(data['return']) && data['return'] === true) {
										doneRequestFunc();
										$.ajax({
											url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
											type: "GET",
											dataType: "json",
											data: {'port': 'messages', 'type': 'private', 'manage': 'tab', 'action': 'get', 'label': 'id', 'value': tabId, 'rows': ['name'], 'guy': {'type': 'mode', 'id': 'auto'}, 'limit': 1},
											contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
											success: function (data) {
												if (isset(data['return']) && isset(data['count']) && isset(data['tab']) && data['return'] === true) {
													if (data['count'] > 0) {
														dataLoop: for (var i in data['tab']) {
															if (isset(data['tab'][i]['name'])) {
																popup.find(".title > .name  span").text(data['tab'][i]['name']);
																break dataLoop;
															}
														}
													}
												}
											}
										});
									}
								}
							}).fail(failRequestFunc);
						};
						settingsPopup.children(".box").find(".main > .options > .rows .button").bind('click', changeNameRequest);
					};
					var doneRequestFunc = function () {

					};
					var data = {'port': 'messages', 'type': 'private', 'manage': 'tab', 'action': 'get', 'label': 'id', 'value': tabId, 'rows': ['nameraw'], 'guy': {'type': 'mode', 'id': 'auto'}, 'limit': 1};
					$.ajax({
						url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
						type: "GET",
						dataType: "json",
						data: data,
						contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
						success: function (data) {
							if (isset(data['return']) && isset(data['count']) && isset(data['tab']) && data['return'] === true) {
								if (data['count'] > 0) {
									dataLoop: for (var i in data['tab']) {
										if (isset(data['tab'][i]['nameraw'])) {
											popupSettingsName(data['tab'][i]['nameraw']);
											break dataLoop;
										}
									}
								}
							}
						}
					}).fail(doneRequestFunc).done(doneRequestFunc);
				};
				var actionSettingsRow = function (e) {
					var rowThis = $(this),
						rowLabel = rowThis.attr('settings-label');
					if (!isset(rowLabel) || rowLabel === null) {
						return false;
					}
					if (inArr(rowLabel, ["link", "language", "rename"])) {
						popup.find(".title > .options > .settings > .icon").click();
					}
					if (rowLabel == "link") {
						//.
					}else if (rowLabel == "language") {
						actionSettingsLanguage();
					}else if (rowLabel == "rename") {
						actionSettingsName();
					}else {
						stopEvent(e);
						return false;
					}
				};
				var settingsRow = popup.find(".title > .options > .settings > .tab > .rows[settings-label]");
				settingsRow.bind('click', actionSettingsRow);
				popup.find(".title > .options > .settings > .icon").nextAll().hide();
				popup.find(".title > .options > .settings > .icon").click(function() {
					$(this).nextAll().fadeToggle();
				});
			};
			var info = object['info'];
			popup.find(".title > .options > .settings > .tab").remove();
			popup.find(".title > .options > .settings").append("<div class='tab'> </div>");
			for (var label in object['options']) {
				var value = object['options'][label];
				if (label == "rename" && value === true) {
					var codeRow = "<div class='rows rename' settings-label='rename'> <span><?php print $_language->text('rename', 'ucfirst'); ?></span> </div>";
				}else if (label == "link" && value === true) {
					if (isset(info['link'])) {
						var codeRow = "<div class='rows link' settings-label='link' direct='"+JSON.stringify({'by': 'click', 'link': info['link'], 'target': '_blank'})+"'> <a href='"+info['link']+"' target='_blank'><?php print $_language->text('view', 'ucfirst'); ?></a> </div>";
					}
				}else if (label == "delete" && value === true) {
					var codeRow = "<div class='rows delete' settings-label='delete'> <span><?php print $_language->text('delete', 'ucfirst'); ?></span> </div>";
				}else if (label == "language" && value === true) {
					var codeRow = "<div class='rows language' settings-label='language'> <span><?php print $_language->text('language', 'ucfirst'); ?></span> </div>";
				}
				if (isset(codeRow) && codeRow !== null) {
					popup.find(".title > .options > .settings > .tab").append(codeRow);
					codeRow = null;
					if (label == "link") {
						setupDirect();
					}
				}
			}
			actionSettingMessages();
		};
		var typeMessagesPopup = function (object) {
			if (!isset(object)|| !isset(object['tab']) || !existsMessagesPopup(object)) {
				return false;
			}
			var tabId = object['tab'];
			var inputMessages = popup.find(".type > .input");
			autosize(inputMessages, {'shift': true});
			inputMessages.bind('keyup', function(e) {
				var keycode = (e.keyCode ? e.keyCode : e.which);
				if (inputMessages.val() == "" && popup.attr('typing') != "removed") {
					actionTypingMessagesPopup('remove', {'tab': tabId});
				}else if (inputMessages.val() != "" && popup.attr('typing') != "added") {
					actionTypingMessagesPopup('add', {'tab': tabId});
				}
				if (keycode == 13 && inputMessages.val() !== "") {
					if (!e.shiftKey) {
						if (new RegExp(<?php print $_parameter->get('regex_messages'); ?>).test(inputMessages.val()) === true) {
							addMessagesPopup($(this), {'tab': tabId, 'content': inputMessages.val().replace(/(\n)$/g, "")});
						}else {
							inputMessages.val('');
						}
						actionTypingMessagesPopup('remove', {'tab': tabId});
					}
				}
			});
		};
		var getTypingMessagesPopup = function (object, loop) {
			if (!isset(loop)) {
				var loop = false;
			}
			if (!isset(object)|| !isset(object['tab']) || !existsMessagesPopup(object)) {
				return false;
			}
			var tabId = object['tab'];
			var doneRequestFunc = function () {
				if (isset(loop) && loop === true) {
					setTimeout(function() {
						getTypingMessagesPopup(object, true);
					},<?php print $_parameter->get('messages_typing_timeout'); ?>);
				}
				popup.removeAttr('handling-get-typing');
			};
			if (popup.attr('handling-get-typing') == "true") {
				doneRequestFunc();
				return false;
			}
			popup.attr('handling-get-typing', 'true');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'typing', 'action': 'get', 'id': tabId};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					if (isset(data['return']) && data['return'] === true) {
						if (isset(data['data']['typing'])) {
							var isFounded = 0;
							for (var x in data['data']['typing']) {
								if (isset(data['data']['typing'][x]['is_author']) && data['data']['typing'][x]['is_author'] === true) {
									isFounded++;
								}
							}
							if (isFounded === 0 && countArr(data['data']['typing']) > 0) {
								popup.attr('typing', 'added');
							}else {
								popup.attr('typing', 'removed');
							}
							if (countArr(data['data']['typing']) === 0) {
								removeCodeTypingMessagesPopup();
							}else {
								for (var i in data['data']['typing']) {
									addCodeTypingMessagesPopup(data['data']['typing'][i]);
								}
							}
						}
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		};
		var addCodeTypingMessagesPopup = function (object) {
			if (!isset(object)) {
				return false;
			}
			if (isset(object['is_author'])) {
				if (!object['is_author']) {
					var pushClass = "left";
				}else {
					var pushClass = "right";
				}
			}else {
				return false;
			}
			var contentText = "<div class='typing' style='background: url(<?php print $_tool->links('photos/raw/static/messages_typing_icon_small.gif'); ?>);'></div>";
			var infoObj = {'time': object['time'], 'guy': object['guy']};
			var codeMessagesRow = "<div class='rows "+pushClass+" typing _h' typing='"+JSON.stringify(infoObj)+"'> <div class='avatar'> <a href='"+object['guy']['link']+"'><img class='img' src='"+object['guy']['avatar']+"'></a> </div> <div class='text'> <div class='infotext'> <div class='icon status _tt-bk s' title='<small>"+object['guy']['name'] +" ("+object['guy']['tag']+") - <?php print $_language->text('typing', 'strtolower'); ?></small>'></div> </div> <div class='context'> <i class='arrow'></i> <div class='maintext'> <span>"+contentText+"</span></div> </div> </div> </div>";
			var otherRow = popup.find(".content .list").find(".rows");
			if (otherRow.length === 0) {
				popup.find(".content .list").append(codeMessagesRow);
			}else if (otherRow.length > 0) {
				var allowPush = 0;
				otherRow.each(function() {
					var otherRowThis = $(this);
					if (otherRowThis.hasClass('typing')) {
						if (isset(otherRowThis.attr('typing')) && typeof JSON.parse(otherRowThis.attr('typing')) == "object") {
							var objRowThis = JSON.parse(otherRowThis.attr('typing'));
							if (objRowThis['guy']['type'] == object['guy']['type'] && objRowThis['guy']['id'] == object['guy']['id']) {
								allowPush++;
							}
						}
					}
				});
				if (allowPush === 0) {
					otherRow.last().after(codeMessagesRow);
				}
			}
			popup.find(".content .list").find(".rows.typing[typing]._h").hide();
			setTimeout(function() {
				popup.find(".content .list").find(".rows.typing[typing]._h").callEffect({
					mode: 2, 
					type: 'show', 
					effect: 'slide', 
					duration: 250,
					nextTime: 125,
					complete: function () {
						$(this).removeClass("_h");
						setupTooltip();
						messagesTabThis.find(".content .list").barScroll({'scrollTo': messagesTabThis.find(".content .list").height() * 2});
					}
				});
				popup.find(".content .list").find(".rows.typing[typing]._h").removeClass("_h");
			}, 0);
		};
		var removeCodeTypingMessagesPopup = function () {
			popup.find(".content .list").find(".rows.typing[typing]").hide();
			setTimeout(function() {
				popup.find(".content .list").find(".rows.typing[typing]").callEffect({
					mode: 2, 
					type: 'hide', 
					effect: 'slide', 
					duration: 250,
					nextTime: 125,
					complete: function () {
						$(this).remove();
					}
				});
			}, 0);
		};
		var actionTypingMessagesPopup = function (type, object) {
			console.log(!existsMessagesPopup(object));
			if (!isset(object)|| !isset(object['tab']) || !existsMessagesPopup(object)) {
				return false;
			}
			var tabId = object['tab'];
			if (popup.attr('handling-action-typing') == "true") {
				return false;
			}
			var doneRequestFunc = function () {
				popup.removeAttr('handling-action-typing');
			};
			if (type == "add") {
				popup.attr('typing', 'added');
			}else if (type == "remove") {
				popup.attr('typing', 'removed');
			}
			popup.attr('handling-action-typing', 'true');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'typing', 'action': type, 'id': tabId};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					if (isset(data['return']) && data['return'] === true) {
						//.
					}else {
						//.
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		};
		var viewsMessagesPopup = function (object) {
			if (!isset(object)|| !isset(object['tab']) || !existsMessagesPopup(object)) {
				return false;
			}
			var tabId = object['tab'];
			var actionRequestViews = function () {
				if (popup.attr('views') != "added") {
					actionViewsMessagesPopup('add', {'tab': tabId});
				}
			};
			popup.hover(function() {
				var t = setTimeout(actionRequestViews, 1000);
			    $(this).data('timeout', t);
			}, function() {
				clearTimeout($(this).data('timeout'));
			});
			popup.bind('click', actionRequestViews);
		};
		var actionViewsMessagesPopup = function (type, object) {
			if (!isset(object)|| !isset(object['tab']) || !existsMessagesPopup(object)) {
				return false;
			}
			var tabId = object['tab'];
			if (popup.attr('handling-action-views') == "true") {
				return false;
			}
			var doneRequestFunc = function () {
				if (type == "add") {
					popup.attr('views', 'added');
				}else if (type == "remove") {
					popup.attr('views', 'removed');
				}
				popup.removeAttr('handling-action-views');
			};
			var failRequestFunc = function () {
				if (type == "add") {
					popup.attr('views', 'removed');
				}else if (type == "remove") {
					popup.attr('views', 'added');
				}
				popup.removeAttr('handling-action-views');
			};
			if (type == "add") {
				popup.attr('views', 'added');
			}else if (type == "remove") {
				popup.attr('views', 'removed');
				return false;
			}
			popup.attr('handling-action-views', 'true');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'views', 'action': type, 'id': tabId};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					console.log(data);
					if (isset(data['return']) && data['return'] === true) {
						doneRequestFunc();
					}else {
						failRequestFunc();
					}
				}
			}).fail(failRequestFunc).done(doneRequestFunc);
		};
		var getViewsMessagesPopup = function (object, loop) {
			if (!isset(loop)) {
				var loop = false;
			}
			if (!isset(object)|| !isset(object['tab']) || !existsMessagesPopup(object)) {
				return false;
			}
			var tabId = object['tab'];
			var doneRequestFunc = function () {
				if (isset(loop) && loop === true) {
					setTimeout(function() {
						getViewsMessagesPopup(object, true);
					},<?php print $_parameter->get('messages_views_timeout'); ?>);
				}
				popup.removeAttr('handling-get-views');
			};
			var messagesId = popup.find(".content .list > .rows.me[messages][messages-id]").last().attr('messages-id');
			if (!isset(messagesId) || popup.attr('handling-get-views') == "true") {
				doneRequestFunc();
				return false;
			}
			popup.attr('handling-get-views', 'true');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'views', 'action': 'get', 'id': tabId, 'messages': messagesId};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					if (isset(data['return']) && data['return'] === true) {
						for (var t in data['data']) {
							for (var x in data['data'][t]) {
								if (isset(data['data'][t][x]['is_author']) && data['data'][t][x]['is_author'] === true) {
									if (t == "seen") {
										popup.attr('views', 'added');
									}else {
										popup.attr('views', 'removed');
									}
									delete data['data'][t][x];
								}
							}
						}
						if (isset(data['data']['seen'])) {
							if (countArr(data['data']['seen']) === 0) {
								removeCodeTypingMessagesPopup();
							}else {
								for (var i in data['data']['seen']) {
									if (!isset(data['data']['seen'][i]['is_author']) || !data['data']['seen'][i]['is_author']) {
										addCodeViewsMessagesPopup(data['data']['seen'][i]);
									}
								}
							}
						}
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		};
		var addCodeViewsMessagesPopup = function(object) {
			if (!isset(object)) {
				return false;
			}
			var rowsMessagesViews = popup.find(".content .list").find(".rows.views");
			if (rowsMessagesViews.length === 0) {
				var codeViewsRow = "<div class='rows views _h'> </div>";
				popup.find(".content .list").find(".rows.me[messages][messages-id]").last().after(codeViewsRow);
				var rowsMessagesViews = popup.find(".content .list").find(".rows.views");
			}
			var countFounded = 0;
			rowsMessagesViews.find(".box[views]").each(function() {
				if (typeof JSON.parse($(this).attr('views')) == "object") {
					var thisObj = JSON.parse($(this).attr('views'));
					if (isset(thisObj['guy']) && isset(thisObj['time'])) {
						if (thisObj['guy']['type'] == object['guy']['type'] && thisObj['guy']['id'] == object['guy']['id']) {
							countFounded++;
						}
					}else {
						$(this).fadeOut(function() {
							$(this).remove();
						});
					}
				}else {
					$(this).fadeOut(function() {
						$(this).remove();
					});
				}
			});
			if (countFounded > 0) {
				return false;
			}
			var randkey = randomKeyString(10);
			var reloadTimeFunc = function () {
				var boxViews = popup.find(".content .list").find(".rows.views").find(".box[views][randkey='"+randkey+"']");
				var titleCode = "<small>"+object['guy']['name']+" ("+object['guy']['tag']+") - <?php print $_language->text('seen_at', 'strtolower'); ?> "+agoDatetime(object['time'], 'ago')+"</small>";
				boxViews.attr('tooltip', titleCode);
			};
			var infoObj = {'time': object['time'], 'guy': object['guy']};
			var codeViewsBox = "<div class='box _tt-bk s _h' views='"+JSON.stringify(infoObj)+"' randkey='"+randkey+"' title='<small>"+object['guy']['name']+" ("+object['guy']['tag']+") - <?php print $_language->text('seen_at', 'strtolower'); ?> "+agoDatetime(object['time'], 'tip')+"</small>'> <img class='img' src='"+object['guy']['avatar']+"'> </div>";
			rowsMessagesViews.append(codeViewsBox);
			popup.find(".content .list").find(".rows.views").find(".box[views]").hide();
			setTimeout(function() {
				popup.find(".content .list").find(".rows.views").find(".box[views]").callEffect({
					mode: 2, 
					type: 'show', 
					effect: 'slide', 
					duration: 250,
					nextTime: 125,
					complete: function () {
						var boxViews = $(this);
						boxViews.removeClass("_h");
						setupTooltip();
						// messagesTabThis.find(".content .list").barScroll({'scrollTo': messagesTabThis.find(".content .list").height() * 2});
						boxViews.mouseover(reloadTimeFunc);
					}
				});
				popup.find(".content .list").find(".rows.views").find(".box[views]").removeClass("_h");
			}, 0);
		};
		var addMessagesPopup = function (input, object) {
			if (!isset(object)|| !isset(object['tab']) || !existsMessagesPopup(object) || !isset(object['content'])) {
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
			var doneRequestFunc = function() {
				input.val('').attr('placeholder','<?php print $_language->text('type_a_messages', 'ucfirst'); ?>').removeAttr('disabled');
				input.focus();
				popup.removeAttr('handling-send-messages');
			};
			popup.attr('handling-send-messages', 'true');
			input.val('').attr('placeholder','<?php print $_language->text('sending...', 'ucfirst'); ?>').attr('disabled','disabled');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'data', 'action': 'add', 'id': tabId, 'content': messagesContent};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					console.log(data);
					if (isset(data['return']) && data['return'] === true) {
						getNewMessagesPopup({'tab': tabId}, false);
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		};
		var getNewMessagesPopup = function (object, loop) {
			if (popup.length === 0 || !isset(object['tab']) || !existsMessagesPopup(object)) {
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
			var doneRequestFunc = function() {
				popup.removeAttr('handling-update-messages');
				if (isset(loop) && loop === true) {
					setTimeout(function() {
						getNewMessagesPopup(object, true);
					},<?php print $_parameter->get('messages_update_timeout'); ?>);
				}
			};
			if (popup.attr('handling-update-messages') == "true") {
				doneRequestFunc();
				return false;
			}
			popup.attr('handling-update-messages', 'true');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'data', 'action': 'get', 'id': tabId, 'sort': '>', 'label': 'id', 'value': messagesId, 'limit': null};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					if (isset(data['return']) && isset(data['data']) && data['return'] === true && typeof data['data'] == "object") {
						if (countArr(data['data']) > 0) {
							for (var i in data['data']) {
								pushCodeMessagesPopup('>', data['data'][i]);
							}
							setTimeout(actionViewsMessagesPopup('remove', {'tab': tabId}), 100);
							/*
							var ObjDataCache = [];
							for (var i in data['data']) {
								ObjDataCache[countArr(data['data'])] = data['data'][i];
								delete data['data'];
							}
							for (var y in ObjDataCache) {
								pushCodeMessagesPopup('>', ObjDataCache[y]);
							}
							*/
						}
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		};
		var getOldMessagesPopup = function (object) {
			if (popup.length === 0 || !isset(object['tab']) || !existsMessagesPopup(object)) {
				return false;
			}
			var tabId = object['tab'];
			var messagesId = object['id'];
			if (popup.attr('handling-get-messages') == "true" || popup.find(".content .list").find(".rows.not_found").length > 0) {
				return false;
			}
			var doneRequestFunc = function() {
				popup.find(".content .list").find(".rows.loading._h").slideUp(function() {
					$(this).remove();
				});
				popup.removeAttr('handling-get-messages');
			};
			popup.attr('handling-get-messages', 'true');
			var codeMessagesLoading = "<div class='rows not_found loading _h'> <span><?php print $_language->text('loading_old_messages', 'ucfirst'); ?></span> </div>";
			popup.find(".content .list").find(".rows[messages][messages-id]").first().before(codeMessagesLoading);
			popup.find(".content .list").find(".rows.loading._h").hide().slideDown();
			var data = {'port': 'messages', 'type': 'private', 'manage': 'data', 'action': 'get', 'id': tabId, 'sort': '<', 'label': 'id', 'value': messagesId, 'limit': '10'};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					console.log(data);
					if (isset(data['return']) && isset(data['data']) && data['return'] === true && typeof data['data'] == "object") {
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
		var getLastMessagesPopup = function (object) {
			if (popup.length === 0 || !isset(object['tab']) || !existsMessagesPopup(object)) {
				return false;
			}
			var tabId = object['tab'];
			var messagesId = object['id'];
			if (popup.attr('handling-get-messages') == "true") {
				return false;
			}
			var doneRequestFunc = function() {
				getNewMessagesPopup({'tab': tabId}, true);
				popup.removeAttr('handling-get-messages');
			};
			popup.attr('handling-get-messages', 'true');
			var data = {'port': 'messages', 'type': 'private', 'manage': 'data', 'action': 'get', 'id': tabId, 'sort': '>=<', 'limit': '10'};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				dataType: "json",
				data: data,
				contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
				success: function (data) {
					console.log(data);
					if (isset(data['return']) && isset(data['data']) && data['return'] === true && typeof data['data'] == "object") {
						if (countArr(data['data']) === 0) {
							var codeMessagesNull = "<div class='rows null'> <span><?php print $_language->text('may_say_hello', 'ucfirst'); ?>...</span> </div>";
							popup.find(".content .list").append(codeMessagesNull);
						}else {
							var ObjDataCache = [];
							for (var i in data['data']) {
								ObjDataCache[countArr(data['data'])] = data['data'][i];
								delete data['data'][i];
							}
							for (var y in ObjDataCache) {
								pushCodeMessagesPopup('>', ObjDataCache[y]);
							}
							getViewsMessagesPopup({'tab': tabId}, true);
						}
						getTypingMessagesPopup({'tab': tabId}, true);
					}
				}
			}).fail(doneRequestFunc).done(doneRequestFunc);
		};
		var pushCodeMessagesPopup = function (sort, object) {
			if (object['is_author'] === true) {
				var classFloatRow = "right me";
				var classTooltipInfo = "w";
			}else {
				var classFloatRow = "left guy";
				var classTooltipInfo = "e";
			}
			if (isset(object['content']['translated']) && object['content']['translated'] === true) {
				var codeMessagesContent = "<div class='originaltext'> <span>"+object['content']['original']+"</span> </div>";
			}else {
				var codeMessagesContent = "";
			}
			if (isset(object['location']) && isset(object['location']['text'])) {
				var codeMessagesLocation = "<div class='locationtext'> <a>"+object['location']['text']+"</a> </div>";
			}else {
				var codeMessagesLocation = "";
			}
			var infoObj = {'id': object['id'], 'time': object['time'], 'author': object['author']};
			var codeMessagesRow = "<div class='rows "+classFloatRow+" _h' messages='"+JSON.stringify(infoObj)+"' messages-id='"+object['id']+"'> <div class='avatar'> <a href='"+object['author']['link']+"'><img class='img' src='"+object['author']['avatar']+"'></a> </div> <div class='text'> <div class='infotext'> <div class='icon status _tt-bk "+classTooltipInfo+"' title='<small>"+object['author']['name'] +" ("+object['author']['tag']+") - "+agoDatetime(object['time'], 'tip')+"</small>'></div> </div> <div class='context'> <i class='arrow'></i> <div class='timetext' time='"+JSON.stringify({'stamp': object['time']})+"'> <span date-show>"+agoDatetime(object['time'], 'ago')+"</span> </div> "+codeMessagesLocation+" <div class='maintext'> <span>"+object['content']['text']+"</span> "+codeMessagesContent+" </div> </div> </div> </div>";
			var thisMessagesRow = popup.find(".content .list").find(".rows[messages][messages-id='"+object['id']+"']");
			var otherMessagesRow = popup.find(".content .list").find(".rows[messages][messages-id]");
			var nullMessagesRow = popup.find(".content .list").find(".rows.null, .rows.views");
			if (nullMessagesRow.length > 0) {
				nullMessagesRow.fadeOut(function() {
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
						var rowsMessgaesThis = $(this);
						$(this).removeClass("_h");
						setupTooltip();
						if (sort == ">=<" || sort == ">" || sort == ">=") {
							if ((sort == ">" || sort == ">=")) {
								/*
								messagesTabThis.find(".content .list").append('<div class="rows pin scrollDown"> <i class="down"></i> <span>Scroll bottom to view new messages</span> </div>');
								messagesTabThis.find(".content .list").find(".rows.scrollDown").bind('click', function(){
									messagesTabThis.find(".content").scrollTop(messagesTabThis.find(".content").prop('scrollHeight'));
								});
								messagesTabThis.find(".content").bind('scroll', function(){
									if ($(this).prop('scrollHeight') >= $(this)[0].scrollHeight + $(this).height() + $(this).scrollTop()) {
										messagesTabThis.find(".content .list").find(".rows.scrollDown").fadeOut(function(){
											$(this).remove();
										});
									}
								});
								*/
								messagesTabThis.find(".content").scrollTop(messagesTabThis.find(".content").prop('scrollHeight'));
							}else {
								messagesTabThis.find(".content").scrollTop(messagesTabThis.find(".content").prop('scrollHeight'));
							}
						}else if (sort == "<" || sort == "<=") {
							//messagesTabThis.find(".content .list").barScroll({'scrollTo': messagesTabThis.find(".content .list").scrollTop() + $(this).innerHeight() + 0 + 'px'});
						}
						rowsMessgaesThis.find(".text > .infotext > .icon.status").hover(function() {
							rowsMessgaesThis.find(".text > .context > .timetext, .text > .context > .locationtext").stop(true,true).slideDown();
						}, function () {
							rowsMessgaesThis.find(".text > .context > .timetext, .text > .context > .locationtext").stop(true,true).slideUp();
						});
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
	var messagesTabRankey = randomKeyString(<?php print $_parameter->get('messagesPopup_length_randKeyEvent'); ?>);
	var messagesTabDisplay = object['display'];
	var messagesTabThis = $(".messagesTab[display='"+messagesTabDisplay+"']");
	if (messagesTabThis.length > 0) {
		if (!messagesTabThis.hasClass('active')) {
			messagesTabThis.find(".title").dblclick();
		}
		messagesTabThis.mouseover();
		return false;
	}
	var messagesTabCode = "<div class='messagesTab' display='"+messagesTabDisplay+"' randkey='"+messagesTabRankey+"'> <div class='title'> <div class='name'> <i></i> <span></span> </div> <div class='options'> <div class='settings'><i class='icon'></i></div> <div class='close'><i class='icon'></i></div> </div> </div> <div class='content'> <div class='list'> </div> </div> <div class='type'> <textarea class='input ip_as' type='text' placeholder='<?php print $_language->text('type_a_messages', 'ucfirst'); ?>'></textarea> </div> </div>";
	$("body").append(messagesTabCode);
	var messagesTabThis = $(".messagesTab[display='"+messagesTabDisplay+"']");
	messagesTabThis.addClass('active').boxPosition({position: "center", resize: false}).draggable().hide().fadeIn();
	var messagesTabIndexFunc = function() {
		$(".messagesTab[display]").css({'z-index': 100});
		messagesTabThis.css({'z-index': 101});
		messagesTabThis.bind('mouseleave', function() {
			// messagesTabThis.css({'z-index': 100});
		});
	};
	var messagesTabOpenFunc = function () {
		messagesTabThis.children(".title").nextAll().slideDown(125, function () {
			setTimeout(function() {
				// messagesTabThis.children(".content").find(".list").barScroll({'scrollTo': messagesTabThis.find(".content .list").prop('scrollHeight')+'px'});
			},125);
		});
		messagesTabThis.removeClass('inactive').addClass('active');
	};
	var messagesTabCloseFunc = function () {
		messagesTabThis.children(".title").nextAll().slideUp(250);
		messagesTabThis.removeClass('active').addClass('inactive');
	};
	messagesTabThis.children(".title").bind('dblclick', function() {
		if (!messagesTabThis.hasClass('active')) {
			messagesTabOpenFunc();
		}else {
			messagesTabCloseFunc();
		}
	});
	messagesTabThis.children(".title").find(".options").find(".close").bind('click', function() {
		messagesTabThis.addClass('removed').fadeOut(function() {
			messagesTabThis.remove();
		});
	});
	messagesTabThis.bind('mouseover', messagesTabIndexFunc);
	/*
	messagesTabThis.find(".content > .list").barScroll({
		start: "bottom",
		height: "200px",
		size: "4px",
		color: "#999",
		railOpacity: 0.1,
		distance: 0,
		alwaysVisible: true
	});
	*/
	setupTooltip();
	positionMessagesPopup(messagesTabThis, {'display': messagesTabDisplay});
	actionMessagesPopup(messagesTabThis, {'display': messagesTabDisplay});
};
var reopenMessagesTabPrivate = function () {
	var limitTimeout = 3000;
	var checkMessagesTab = function () {
		var popupAll = $(".messagesTab[display]");
		if (1 + 1 == 3) {
			return false;
		}else {
			var tabOpenedObj = [];
			var tabHideObj = [];
			var postionObj = getCookie("gMessagesTabPos");
			if (isset(postionObj) && typeof postionObj == "string" && typeof JSON.parse(postionObj) == "object") {
				postionObj = JSON.parse(postionObj);
				objLoop: for (var key in postionObj) {
					if (isset(postionObj[key]['removed'])) {
						if (postionObj[key]['removed'] + <?php print $_parameter->get('messages_postion_timeout'); ?> < Math.round(new Date() / 1000)) {
							delete postionObj[key];
						}
						continue objLoop;
					}
					tabOpenedObj[countArr(tabOpenedObj)] = key;
				}
			}
			if (isset(tabOpenedObj) && typeof tabOpenedObj == "object" && countArr(tabOpenedObj) > 0) {
				popupAll.each(function(){
					var popupThis = $(this);
					if (isset(popupThis.attr('display')) && typeof popupThis.attr('display') == "string") {
						foundLoop: for (var i in tabOpenedObj) {
							if (tabOpenedObj[i] == popupThis.attr('display')) {
								delete tabOpenedObj[i];
								break foundLoop;
							}
						}
					}else {
						//.
					}
				});
				if (isset(tabOpenedObj) && typeof tabOpenedObj == "object" && countArr(tabOpenedObj) > 0) {
					tabOpenLoop: for (var x in tabOpenedObj) {
						console.log('open messages tab display:' + tabOpenedObj[x]);
						messagesTabPrivate({'display': tabOpenedObj[x]});
					}
				}
			}else {
				//.
			}
		}
	};
	var autoLoopFunc = function () {
		setTimeout(function () {
			checkMessagesTab();
			setTimeout(autoLoopFunc, limitTimeout);
		}, limitTimeout);
	};
	autoLoopFunc();
};
$(document).ready(function() {
	reopenMessagesTabPrivate();
});
var popupCreateMessages = function () {
	var requestCreateMessages = function () {
		var popupCreateMessagesCount = $("[messages-create-popup]").length;
		if (popupCreateMessagesCount > 0) {
			// return false;
		}
		var randkey = randomKeyString(<?php print $_parameter->get('messagesPopup_length_randKeyEvent'); ?>),
			codePopup = "<div id='popupCreateMessages' messages-create-popup randkey='"+randkey+"'> <div class='box'> <div class='title nowrap'> <span><?php print $_language->text('create_new_messages', 'ucfirst'); ?></span> <i class='close'></i> </div> <div class='main'> <div class='content name'> <input input type='text' placeholder='<?php print $_language->text('type_name_messages', 'ucfirst'); ?>'> </div> <div class='content guy'> <input input type='text' placeholder='<?php print $_language->text('send_to', 'ucfirst'); ?>'> </div> </div> <div class='options'> <div class='private'></div> <div class='action'> <div class='button true _bn_c-we'> <span><?php print $_language->text('done', 'ucfirst'); ?></span> </div> <div class='button false _bn_c-we'> <span><?php print $_language->text('cancel', 'ucfirst'); ?></span> </div> </div> </div> </div> </div>";
		$("body").append(codePopup);
		var popupCreateMessages = $("[messages-create-popup][randkey='"+randkey+"']");
		popupCreateMessages.hide().fadeIn().find(".box").boxPosition({"type": "center", "resize": true});
		var popupCreateMessagesMain = popupCreateMessages.find(".box > .main"),
			inputType = popupCreateMessagesMain.children(".content.guy").find("[input]");
		inputType.donetyping(function() {
			var inputThis = $(this);
			if (isset(inputThis.val()) && inputThis.val() !== null) {
				findMessagesGuy(inputThis, inputThis.val());
			}
		},250);
		popupCreateMessagesMain.children(".content").bind('click', function () {
			$(this).find("input").focus();
		});
		popupCreateMessages.find(".box > .title > .close").bind('click', function() {
			popupCreateMessages.find(".box > .options > .action > .button.false").click();
		});
		var actionButton = popupCreateMessages.find(".box > .options > .action > .button");
		actionButton.bind('click', function() {
			if ($(this).hasClass("true")) {
				var tagsGuy = popupCreateMessages.find(".box > .main > .content.guy").find(".tagGuy[tag-type][tag-id]");
				if (isset(tagsGuy) && tagsGuy.length > 0) {
					var guyObj = [];
					tagsGuy.each(function() {
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
				popupCreateMessages.fadeOut(function() {
					$(this).remove();
				});
			}
		});
		$(document).bind('keyup', function(e) {
			var keycode = (e.keyCode ? e.keyCode : e.which);
			if (keycode == 27 && popupCreateMessages.length > 0) {
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
					object['language'] = null;
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
				var data = {'port': 'messages', 'type': 'private', 'manage': 'tab', 'action': 'add', 'name': object['name'], 'private': object['private'], 'guy': object['guy'], 'language': object['language']};
				$.ajax({
					url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
					type: "GET",
					dataType: "json",
					data: data,
					contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
					success: function (data) {
						console.log(data);
						if (isset(data['return'], data['tab']) && data['return'] === true) {
							if (isset(data['tab']['display']) && data['tab']['display'] !== null) {
								popupCreateMessages.fadeOut(function() {
									popupCreateMessages.remove();
									messagesTabPrivate({'display': data['tab']['display']});
								});
							}
						}
					}
				}).fail(doneRequestFunc).done(doneRequestFunc);
			}
		};
		var findMessagesGuy = function (input, value) {
			if (!isset(input) || !isset(value)) {
				return false;
			}
			if (popupCreateMessages.attr('handling-guy') != "true") {
				popupCreateMessages.attr('handling-guy', 'true');
				var doneRequestFunc = function () {
					popupCreateMessages.removeAttr('handling-guy');
				};
				var data = {'port': 'messages', 'type': 'private', 'manage': 'guy', 'action': 'search', 'from': 'all', 'value': value};
				$.ajax({
					url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
					type: "GET",
					dataType: "json",
					data: data,
					contentType: "<?php print $_parameter->get("contentType_urlencoded.utf8"); ?>",
					success: function (data) {
						console.log(data);
						if (isset(data['return']) && data['return'] === true) {
							if (isset(data['results']) && countArr(data['results']) > 0) {
								var guyFounedArr = [];
								guyLoop: for (var i in data['results']) {
									var thisGuy = data['results'][i];
									if (!isset(thisGuy['avatar']) || !isset(thisGuy['name']) || !isset(thisGuy['tag']) || !isset(thisGuy['type']) || !isset(thisGuy['id'])) {
										continue guyLoop;
									}
									guyFounedArr[countArr(guyFounedArr)] = {'class': 'tagGuy', 'thumbnail': thisGuy['avatar'], 'text': thisGuy['name'], 'tip': thisGuy['tag'], 'tag': {'type': thisGuy['type'], 'id': thisGuy['id']}}
								}
								var boxSuggestOptions = {
									'multiple': true,
									'output': true,
									'title': '<?php print $_language->text('you_may_find', 'ucfirst'); ?>',
									'content': {
										'<?php print $_language->text('user', 'ucfirst'); ?>': guyFounedArr
									}
								};
								boxSuggest(input, boxSuggestOptions);
							}
						}else {
							//.
						}
					}
				}).fail(doneRequestFunc).done(doneRequestFunc);
			}
		};
	};
	requestCreateMessages();
};
var user_InfoEditor = function (object) {
	if (!isset(object) || !isset(object['id']) || !isset(object['setup'])) {
		return false;
	}
	if (typeof object['setup'] != "string" || !inArray(object['setup'], ["introduction", "about", "contact", "education", "workplaces", "places"])) {
		popupNotification ({type: 4, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('request_is_invalid', 'ucfirst'); ?>.'});
		return false;
	}
	var randkey = randomKeyString(10);
	var tab = $("#userInfoEditor");
	if (tab.length === 0) {
		var oldOverflow = $("body").css('overflow-y');
		var code = "<div id='userInfoEditor' randkey='"+randkey+"'> <div class='boxContent'> <div class='header'> <span><?php print $_language->text('edit_information', 'ucfirst'); ?></span> <i close> </i> </div>  <div class='body'> <div class='nav'> <div class='list'> <div class='rows introduction' type='introduction'> <i></i> <span><?php print $_language->text('about', 'ucfirst'); ?></span> </div> <div class='rows about' type='about'> <i></i> <span> <?php print $_language->text('about', 'ucfirst'); ?> </span> </div> <div class='rows contact' type='contact'> <i></i> <span> <?php print $_language->text('contact', 'ucfirst'); ?> </span> </div> <div class='rows education' type='education'> <i></i> <span> <?php print $_language->text('education', 'ucfirst'); ?> </span> </div> <div class='rows workplaces' type='workplaces'> <i></i> <span> <?php print $_language->text('workplaces', 'ucfirst'); ?> </span> </div> <div class='rows places' type='places'> <i></i><span> <?php print $_language->text('places', 'ucfirst'); ?> </span> </div> </div> <div class='arrow'></div> </div> <div class='data'> <div class='main'> </div> </div> </div> <div class='footer'> <div class='user text'> <span> - </span> </div> </div> </div> </div>";
		$("body").append(code);
		$("body").css('overflow-y', 'hidden');
		var tab = $("#userInfoEditor[randkey='"+randkey+"']");
		tab.hide().fadeIn();
	}
	tab.removeAttr('randkey').children(".boxContent").boxPosition({position: "center", resize: true});
	/*
	tab.children(".boxContent").find(".body > .data > .main").barScroll({
		height: "440px",
		size: "6px",
		color: "#222",
		distance: "6px",
		alwaysVisible: true
	});
	*/
	tab.children(".boxContent").find(".header [close]").bind('click', function () {
		tab.fadeOut(function(){
			$(this).remove();
			if (isset(oldOverflow)) {
				$("body").css('overflow-y', oldOverflow);
			}
		});
	});
	$(document).bind('keyup', function(e) {
		var keycode = (e.keyCode ? e.keyCode : e.which);
		if (keycode == 27 && tab.length > 0) {
			tab.children(".boxContent").find(".header [close]").click();
		}
	});
	var privateCheck = function (object) {
		if (!isset(object) || !isset(object['id']) || !isset(object['setup'])) {
			return false;
		}
		if (typeof object['id'] != "number") {
			return false;
		}
		if (tab.attr('handling-setup') != "true") {
			tab.attr('handling-setup', 'true');
			tab.children(".boxContent").find(".body > .nav").hide();
			tab.children(".boxContent").find(".body").append("<div class='loading waiting_setup_data'> <span><?php print $_language->text('loading', 'ucfirst'); ?></span> </div>");
			var doneFunc = function () {
				tab.removeAttr('handling-setup');
				tab.children(".boxContent").find(".body > .loading").fadeOut(function(){
					$(this).remove();
					tab.children(".boxContent").find(".body > .nav").slideDown();
				});
			};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				data: {'port': 'user', 'type': 'privatecheck', 'id': object['id']},
				dataType: "json",
				success: function (data) {
					if (isset(data['return']) && data['return'] === true) {
						if (isset(data['data']) && isset(data['data']['name']) && isset(data['data']['tag'])) {
							tab.children(".boxContent").find(".footer > .user span").text(data['data']['name'] + ' (' + data['data']['tag'] + ')');
							tab.children(".boxContent").find(".body > .nav > .list > .rows[type='"+object['setup']+"']").click();
						}
					}else if (isset(data['return']) && data['return'] === false) {
						tab.children(".boxContent").find(".body > .nav").remove();
						tab.children(".boxContent").find(".body").html('').append("<div class='not_allowed'> <i></i> <br> <span><?php print $_language->text('not_allowed', 'ucfirst'); ?></span> </div>");
						popupNotification ({type: 4, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('sorry_you_no_right_do_this', 'ucfirst'); ?>.'});
					}else {
						tab.children(".boxContent").find(".header [close]").click();
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('error_in_the_implementation_process', 'ucfirst'); ?>.'});
					}
				}
			}).fail(doneFunc).done(doneFunc);
		}
	};
	var pushData = function (infoObj) {
		console.log(infoObj);
		if (!isset(infoObj) || !isset(infoObj['type']) || !isset(infoObj['data'])) {
			return false;
		}
		var mainBox = tab.children(".boxContent").find(".body > .data > .main");
		mainBox.html('');
		if (infoObj['type'] == "introduction") {
			var linesIntro = "<div class='lines introduction'> <label><?php print $_language->text('introduction', 'ucfirst'); ?></label> <div><textarea class='input introduction as' type='text' placeholder='<?php print $_language->text('write_something_about_intro', 'strtolower'); ?>'></textarea></div> </div>";
			var linesQuote = "<div class='lines quote'> <label><?php print $_language->text('quote', 'ucfirst'); ?></label> <div><textarea class='input quote as' type='text' placeholder='<?php print $_language->text('write_favorite_quote', 'strtolower'); ?>'></textarea></div> </div>";
			mainBox.append(linesIntro).append(linesQuote);
			mainBox.hide().fadeIn();
			autosize(mainBox.find(".lines textarea.as"));
			if (isset(infoObj['data']['introduction']) && infoObj['data']['introduction'] !== null) {
				mainBox.find(".lines.introduction .input.introduction").val(infoObj['data']['introduction']);
			}
			if (isset(infoObj['data']['quote']) && infoObj['data']['quote'] !== null) {
				mainBox.find(".lines.quote .input.quote").val(infoObj['data']['quote']);
			}
			mainBox.find(".lines.quote .input.quote, .lines.introduction .input.introduction").donetyping(function(){
				tab.children(".boxContent").boxPosition({position: "center", resize: false});
			}, 500);
		}else if (infoObj['type'] == "about") {
			var linesUsername = "<div class='lines username'> <label><?php print $_language->text('username', 'ucfirst'); ?></label> <div><input class='input username' type='text' placeholder='<?php print $_language->text('type_username', 'strtolower'); ?>' disabled='disabled'></div> </div>";
			var linesName = "<div class='lines name'> <label><?php print $_language->text('name', 'ucfirst'); ?></label> <div><input class='input name firstname' type='text' placeholder='<?php print $_language->text('type_firstname', 'strtolower'); ?>'> <input class='input name middlename' type='text' placeholder='<?php print $_language->text('type_middlename', 'strtolower'); ?>'> <input class='input name lastname' type='text' placeholder='<?php print $_language->text('type_lastname', 'strtolower'); ?>'></div> <div><input class='input fullname' type='text' placeholder='<?php print $_language->text('fullname', 'strtolower'); ?>' disabled='disabled'> <input class='input nickname' type='text' placeholder='<?php print $_language->text('type_nickname', 'strtolower'); ?>'></div> </div>";
			var linesGender = "<div class='lines gender'> <label><?php print $_language->text('gender', 'ucfirst'); ?></label> <div> <div class='input gender'> <div class='checkbox male' value='male'> <div class='dot'><div></div></div> <div class='text'><span><?php print $_language->text('male', 'strtolower'); ?></span></div> </div> <div class='checkbox female' value='female'> <div class='dot'><div></div></div> <div class='text'><span><?php print $_language->text('female', 'strtolower'); ?></span></div> </div> </div> </div> </div>";
			var linesBirthday = "<div class='lines birthday'> <label><?php print $_language->text('birthday', 'ucfirst'); ?></label> <div> <input class='input birthday day' date-type='day' type='text' placeholder='<?php print $_language->text('type_day', 'strtolower'); ?>'> <input class='input birthday month' date-type='month' type='text' placeholder='<?php print $_language->text('type_month', 'strtolower'); ?>'> <input class='input birthday year' date-type='year' type='text' placeholder='<?php print $_language->text('type_year', 'strtolower'); ?>'> </div> </div>";
			var linesLanguage = "<div class='lines language'> <label><?php print $_language->text('language', 'ucfirst'); ?></label> <div><input class='input language' type='text' placeholder='<?php print $_language->text('type_language', 'strtolower'); ?>'></div> </div>";
			mainBox.append(linesUsername).append(linesName).append(linesGender).append(linesBirthday).append(linesLanguage);
			mainBox.hide().fadeIn();
			var previewName = function () {
				var inputFullname = mainBox.find(".lines.name .input.fullname");
				var inputFirstname = mainBox.find(".lines.name .input.firstname");
				var inputMiddlename = mainBox.find(".lines.name .input.middlename");
				var inputLastname = mainBox.find(".lines.name .input.lastname");
				var pushName = function () {
					var inputThis = $(this);
					if (inputThis.hasClass('middlename') && inputThis.val() == "") {
						return;
					}
					if ((!isset(inputThis.val().match(<?php print $_parameter->get('regex_name'); ?>g)) || inputThis.val().match(<?php print $_parameter->get('regex_name'); ?>g) === null)) {
						popupNotification ({type: 4, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('name_is_invalid', 'ucfirst'); ?>, <?php print $_language->text('at', 'upperlower'); ?>: ' + inputThis.val() + '.'});
					}else {
						if (isset(infoObj['data']['formatname'])) {
							var nameText = infoObj['data']['formatname'];
						}else {
							var nameText = "f-m-l";
						}
						var nameText = nameText.replaceAll("-", " ").replace("f", "{::f::}").replace("m", "{::m::}").replace("l", "{::l::}");
						var nameText = nameText.replace("{::f::}", inputFirstname.val()).replace("{::m::}", inputMiddlename.val()).replace("{::l::}", inputLastname.val());
						inputFullname.val(nameText);
					}
				};
				inputFirstname.donetyping(pushName, 250);
				inputMiddlename.donetyping(pushName, 250);
				inputLastname.donetyping(pushName, 250);
			};
			previewName();
			var toggleCheckboxGender = function () {
				var inputCheckbox = tab.children(".boxContent").find(".body .main > .lines.gender .input > .checkbox");
				inputCheckbox.bind('click', function(){
					var inputCheckboxThis = $(this);
					if (inputCheckboxThis.attr('handling-click') != "true" && !inputCheckboxThis.hasClass("active")) {
						inputCheckboxThis.attr('handling-click', 'true');
						inputCheckbox.removeClass("active");
						inputCheckboxThis.addClass("active");
						setTimeout(function(){
							inputCheckboxThis.removeAttr('handling-click');
						},100);
					}
				});
			};
			toggleCheckboxGender();
			var dateBirthdayType = function () {
				var linesBirthday = tab.children(".boxContent").find(".body .main > .lines.birthday"),
					inputDay = linesBirthday.find(".input.day"),
					inputMonth = linesBirthday.find(".input.month"),
					inputYear = linesBirthday.find(".input.year");
				var numberTyping = function () {
					var input = $(this),
						value = input.val();
					if (input.hasClass("day") || input.hasClass("month")) {
						var regexNumber = new RegExp(/([0-9]{1,2})/i);
						var matchs = value.match(regexNumber);
						if (isset(matchs) && matchs !== null) {
							if ((input.hasClass("day") && matchs[0] >= <?php print $_parameter->get('select_time_day_min'); ?> && matchs[0] <= <?php print $_parameter->get('select_time_day_max'); ?>) || (input.hasClass("month") && matchs[0] >= <?php print $_parameter->get('select_time_month_min'); ?> && matchs[0] <= <?php print $_parameter->get('select_time_month_max'); ?>)) {
								input.val(matchs[0]);
							}else {
								input.val('');
							}
						}else {
							input.val('');
						}
					}else if (input.hasClass("year")) {
						var regexNumber = new RegExp(/([0-9]{1,4})/i);
						var matchs = value.match(regexNumber);
						if (isset(matchs) && matchs !== null) {
							if (matchs[0].length == 4 && matchs[0] > <?php print $_parameter->get('select_time_year_min'); ?> && matchs[0] < <?php print $_parameter->get('select_time_year_max'); ?>) {
								input.val(matchs[0]);
							}else if (value.length > 4) {
								input.val(matchs[0]);
							}else if (value.length < 4) {
								//.
							}else {
								input.val('');
							}
						}else {
							input.val('');
						}
					}
				};
				inputDay.donetyping(numberTyping, 250);
				inputMonth.donetyping(numberTyping, 250);
				inputYear.donetyping(numberTyping, 250);
			};
			dateBirthdayType();
			var chooseLanguage = function (language) {
				var languageList = objLanguageList("supported");
				var languageInput = mainBox.find(".lines.language .input.language");
				var inputTypeFunc = function (e) {
					inputVal = languageInput.val();
					if (inputVal != "") {
						langFoundedArr = [];
						languageLoop: for (var i in languageList) {
							var thisLanguage = languageList[i];
							if (!isset(thisLanguage['code']) || !isset(thisLanguage['name']) || !isset(thisLanguage['country']) || !isset(thisLanguage['country']['name']) || !isset(thisLanguage['country']['code'])) {
								continue languageLoop;
							}else {
								if (thisLanguage['code'] == inputVal || thisLanguage['name'].match(new RegExp(inputVal, "ig")) || thisLanguage['country']['code'] == inputVal || thisLanguage['country']['name'].match(new RegExp(inputVal, "ig"))) {
									langFoundedArr[countArr(langFoundedArr)] = {'class': 'tagLanguage', 'text': thisLanguage['name'], 'tip': thisLanguage['code'], 'tag': {'language': thisLanguage['code']}};
								}
							}
						}
						var boxSuggestOptions = {
							'multiple': false,
							'output': true,
							'title': '<?php print $_language->text('language', 'ucfirst'); ?>',
							'content': {
								'<?php print $_language->text('you_may_need', 'ucfirst'); ?>': langFoundedArr
							}
						};
						boxSuggest(languageInput, boxSuggestOptions);
					}
				};
				languageInput.bind('keyup', inputTypeFunc);
				if (language != "0" || language !== 0) {
					languageLoop: for (var i in languageList) {
						if (isset(languageList[i]['code']) && languageList[i]['code'] == language) {
							var codeLanguageTag = "<span class='tagLanguage' tag-obj tag-rows='"+JSON.stringify({'language': languageList[i]['code']})+"' tag-language='"+languageList[i]['code']+"'> "+languageList[i]['name']+" <i class='close'></i> </span>";
							break languageLoop;
						}else {
							continue languageLoop;
						}
					}
					if (isset(codeLanguageTag)) {
						languageInput.hide().before(codeLanguageTag);
						languageInput.prev(".tagLanguage").find(".close").bind('click', function(){
							$(this).parents(".tagLanguage").callEffect({
								mode: 1,
								type: "hide", 
								effect: "slide",
								complete: function () {
									$(this).remove();
									languageInput.fadeIn();
								}
							});
						});
					}
				}
			};
			if (isset(infoObj['data']['username']) && infoObj['data']['username'] !== null) {
				mainBox.find(".lines.username .input.username").val(infoObj['data']['username']);
			}
			if (isset(infoObj['data']['fullname']) && infoObj['data']['fullname'] !== null) {
				mainBox.find(".lines.name .input.fullname").val(infoObj['data']['fullname']);
			}
			if (isset(infoObj['data']['firstname']) && infoObj['data']['firstname'] !== null) {
				mainBox.find(".lines.name .input.firstname").val(infoObj['data']['firstname']);
			}
			if (isset(infoObj['data']['middlename']) && infoObj['data']['middlename'] !== null) {
				mainBox.find(".lines.name .input.middlename").val(infoObj['data']['middlename']);
			}
			if (isset(infoObj['data']['lastname']) && infoObj['data']['lastname'] !== null) {
				mainBox.find(".lines.name .input.lastname").val(infoObj['data']['lastname']);
			}
			if (isset(infoObj['data']['nickname']) && infoObj['data']['nickname'] !== null) {
				mainBox.find(".lines.name .input.nickname").val(infoObj['data']['nickname']);
			}
			if (isset(infoObj['data']['gender']) && infoObj['data']['gender'] !== null) {
				mainBox.find(".lines.gender .input > .checkbox[value='"+infoObj['data']['gender']+"']").click();
			}
			if (isset(infoObj['data']['birthday']) && infoObj['data']['birthday'] !== null) {
				mainBox.find(".lines.birthday .input.birthday.day").val(infoObj['data']['birthday']['day']);
				mainBox.find(".lines.birthday .input.birthday.month").val(infoObj['data']['birthday']['month']);
				mainBox.find(".lines.birthday .input.birthday.year").val(infoObj['data']['birthday']['year']);
			}
			if (isset(infoObj['data']['language']) && infoObj['data']['language'] !== null) {
				chooseLanguage(infoObj['data']['language']);
			}
		}else if (infoObj['type'] == "contact") {
			var linesImportant = "<div class='lines important'> <label><?php print $_language->text('important', 'ucfirst'); ?></label> <div class='email'><input class='input email' type='text' placeholder='<?php print $_language->text('type_email', 'upperlower'); ?>'><div class='private _tt-bk s' title='<small><?php print $_language->text('change_private', 'ucfirst'); ?></small>'></div></div> <div class='phone'><input class='input phone' type='text' placeholder='<?php print $_language->text('type_phonenumber', 'upperlower'); ?>'> <div class='private _tt-bk s' title='<small><?php print $_language->text('change_private', 'ucfirst'); ?></small>'></div> </div> </div>";
			var linesPhone = "<div class='lines phone'> <label><?php print $_language->text('phone', 'ucfirst'); ?></label> <div class='add'><span class='addbutton phone'>+ <?php print $_language->text('add_a_phone_contact', 'upperlower'); ?></span></div> </div>";
			var linesEmail = "<div class='lines email'> <label><?php print $_language->text('email', 'ucfirst'); ?></label> <div class='add'><span class='addbutton email'>+ <?php print $_language->text('add_a_email_contact', 'upperlower'); ?></span></div> </div>";
			mainBox.append(linesImportant).append(linesPhone).append(linesEmail);
			mainBox.hide().fadeIn();
			var autoPostionBox = function () {
				tab.children(".boxContent").boxPosition({position: "center", resize: false});
			}
			var actionTypeInputPhone = function () {
				var addButton = mainBox.find(".lines.phone .add");
				var input = mainBox.find(".lines.phone > .textinfo > .input");
				input.bind('keyup', function (e) {
					var keycode = (e.keyCode ? e.keyCode : e.which);
					if (keycode == 8 && $(this).val() == "") {
						var textinfo = $(this).parents(".textinfo");
						if (textinfo.attr('removing') == "true") {
							textinfo.slideUp(function(){
								$(this).prev(".textinfo").children(".input").focus();
								$(this).remove();
							});
							var isDeleted = true;
						}else {
							var callbackFunc = function () {
								textinfo.slideUp(function(){
									$(this).prev(".textinfo").children(".input").focus();
									$(this).remove();
								});
								var countNull = 0;
								var input = mainBox.find(".lines.phone > .textinfo > .input");
								input.each(function () {
									if ($(this).val() == "") {
										countNull++;
									}
								});
								if (countNull === 1) {
									addButton.stop(true, true).fadeIn();
								}
							};
							textinfo.attr('removing', 'true');
							popupNotification ({type: 4, title: '<?php print $_language->text('warning', 'ucfirst'); ?>', description: '<?php print $_language->text('press _delete_button_agian_remove','ucfirst'); ?>.', timeout: 1500, callback: callbackFunc});
							setTimeout(function(){
								textinfo.removeAttr('removing');
							}, 2000);
						}
					}
					var countNull = 0;
					var input = mainBox.find(".lines.phone > .textinfo > .input");
					input.each(function () {
						if ($(this).val() == "") {
							countNull++;
						}
					});
					if (countNull === 0 || (countNull === 1 && isset(isDeleted) && isDeleted === true)) {
						addButton.stop(true, true).fadeIn();
						if (keycode == 13) {
							addButton.find(".addbutton").click();
							mainBox.find(".lines.phone > .textinfo").last().children(".input").focus();
						}
					}else {
						addButton.stop(true, true).fadeOut();
					}
				});
			};
			var addPhoneContact = function () {
				var addButton = mainBox.find(".lines.phone .add");
				addButton.find(".addbutton").unbind('click');
				addButton.find(".addbutton").bind('click', function () {
					addButton.stop(true, true).hide();
					var randkey = randomKeyString(10);
					mainBox.find(".lines.phone > .add").before('<div class="textinfo" randkey="'+randkey+'"> <input class="input phone" type="text" placeholder="<?php print $_language->text('type_phonenumber', 'upperlower'); ?>"> <div class="private" title="<small><?php print $_language->text('change_private', 'ucfirst'); ?></small>"></div></div>');
					mainBox.find(".lines.phone > [randkey='"+randkey+"']").removeAttr('randkey').hide().fadeIn().children(".private").choosePrivate({'type': 'info', 'id': thisContact['private']});
					setupTooltip();
					autoPostionBox();
					actionTypeInputPhone();
				});
			};
			var actionTypeInputEmail = function () {
				var addButton = mainBox.find(".lines.email .add");
				var input = mainBox.find(".lines.email > .textinfo > .input");
				input.bind('keyup', function (e) {
					var keycode = (e.keyCode ? e.keyCode : e.which);
					if (keycode == 8 && $(this).val() == "") {
						var textinfo = $(this).parents(".textinfo");
						if (textinfo.attr('removing') == "true") {
							textinfo.slideUp(function(){
								$(this).prev(".textinfo").children(".input").focus();
								$(this).remove();
							});
							var isDeleted = true;
						}else {
							var callbackFunc = function () {
								textinfo.slideUp(function(){
									$(this).prev(".textinfo").children(".input").focus();
									$(this).remove();
								});
								var countNull = 0;
								var input = mainBox.find(".lines.email > .textinfo > .input");
								input.each(function () {
									if ($(this).val() == "") {
										countNull++;
									}
								});
								if (countNull === 1) {
									addButton.stop(true, true).fadeIn();
								}
							};
							textinfo.attr('removing', 'true');
							popupNotification ({type: 4, title: '<?php print $_language->text('warning', 'ucfirst'); ?>', description: '<?php print $_language->text('press _delete_button_agian_remove','ucfirst'); ?>.', timeout: 1500, callback: callbackFunc});
							setTimeout(function(){
								textinfo.removeAttr('removing');
							}, 2000);
						}
					}
					var countNull = 0;
					var input = mainBox.find(".lines.email > .textinfo > .input");
					input.each(function () {
						if ($(this).val() == "") {
							countNull++;
						}
					});
					if (countNull === 0 || (countNull === 1 && isset(isDeleted) && isDeleted === true)) {
						addButton.stop(true, true).fadeIn();
						if (keycode == 13) {
							addButton.find(".addbutton").click();
							mainBox.find(".lines.email > .textinfo").last().children(".input").focus();
						}
					}else {
						addButton.stop(true, true).fadeOut();
					}
				});
			};
			var addEmailContact = function () {
				var addButton = mainBox.find(".lines.email .add");
				addButton.find(".addbutton").unbind('click');
				addButton.find(".addbutton").bind('click', function () {
					addButton.stop(true, true).hide();
					var randkey = randomKeyString(10);
					mainBox.find(".lines.email > .add").before('<div class="textinfo" randkey="'+randkey+'"> <input class="input email _tt-bk s" type="text" placeholder="<?php print $_language->text('type_email', 'upperlower'); ?>"> <div class="private" title="<small><?php print $_language->text('change_private', 'ucfirst'); ?></small>"></div></div>');
					mainBox.find(".lines.email > [randkey='"+randkey+"']").removeAttr('randkey').hide().fadeIn().children(".private").choosePrivate({'type': 'info', 'id': thisContact['private']});
					setupTooltip();
					autoPostionBox();
					actionTypeInputEmail();
				});
			};
			if (isset(infoObj['data']['email']) && infoObj['data']['email'] !== null) {
				if (isset(infoObj['data']['private.info.email'])) {
					var privateThis = infoObj['data']['private.info.email'];
				}else {
					var privateThis = 2;
				}
				mainBox.find(".lines.important .input.email").val(infoObj['data']['email']);
				mainBox.find(".lines.important > .email > .private").choosePrivate({'type': 'info', 'id': privateThis});
			}
			if (isset(infoObj['data']['phone']) && infoObj['data']['phone'] !== null) {
				if (isset(infoObj['data']['private.info.phone'])) {
					var privateThis = infoObj['data']['private.info.phone'];
				}else {
					var privateThis = 2;
				}
				mainBox.find(".lines.important .input.phone").val(infoObj['data']['phone']);
				mainBox.find(".lines.important > .phone > .private").choosePrivate({'type': 'info', 'id': privateThis});
			}
			if (isset(infoObj['data']['contact']) && countArr(infoObj['data']['contact']) > 0) {
				contactLoop: for (var i in infoObj['data']['contact']) {
					var thisContact = infoObj['data']['contact'][i];
					if (isset(thisContact['type']) && thisContact['type'] == "email") {
						if (mainBox.find(".lines.email > [contact-id='"+thisContact['id']+"']").length > 0) {
							continue contactLoop;
						}
						mainBox.find(".lines.email > .add").before('<div class="textinfo" contact-id="'+thisContact['id']+'"> <input class="input email" type="text" placeholder="<?php print $_language->text('type_email', 'upperlower'); ?>" value="'+thisContact['value']+'"> <div class="private" title="<small><?php print $_language->text('change_private', 'ucfirst'); ?></small>"></div> </div>');
						mainBox.find(".lines.email > [contact-id='"+thisContact['id']+"']").children(".private").choosePrivate({'type': 'info', 'id': thisContact['private']});
						setupTooltip();
					}else if (isset(thisContact['type']) && thisContact['type'] == "phone") {
						if (mainBox.find(".lines.phone > [contact-id='"+thisContact['id']+"']").length > 0) {
							continue contactLoop;
						}
						mainBox.find(".lines.phone > .add").before('<div class="textinfo" contact-id="'+thisContact['id']+'"> <input class="input phone" type="text" placeholder="<?php print $_language->text('type_phonenumber', 'upperlower'); ?>" value="'+thisContact['value']+'"> <div class="private" title="<small><?php print $_language->text('change_private', 'ucfirst'); ?></small>"></div></div>');
						mainBox.find(".lines.phone > [contact-id='"+thisContact['id']+"']").children(".private").choosePrivate({'type': 'info', 'id': thisContact['private']});
						setupTooltip();
					}
				}
			}
			setupTooltip();
			actionTypeInputPhone();
			addPhoneContact();
			actionTypeInputEmail();
			addEmailContact();
		}else if (infoObj['type'] == "education") {
			var linesAdd = "<div class='lines add'> <label><?php print $_language->text('education', 'ucfirst'); ?></label> <div class='add'><span class='addbutton phone'>+ <?php print $_language->text('add_a_tab', 'upperlower'); ?></span></div> </div>";
			mainBox.append(linesAdd);
			mainBox.hide().fadeIn();
			var autoPostionBox = function () {
				tab.children(".boxContent").boxPosition({position: "center", resize: false});
			};
			var typeSchoolName = function () {
				var inputName = mainBox.find(".lines.education .school > .input");
				inputName.donetyping(function () {
					if ($(this).val().replaceAll("\n", "") == "") {
						var schoolName = "-";
					}else {
						var schoolName = $(this).val().replaceAll("\n", "");
					}
					$(this).parents(".textinfo").prev("label").text(schoolName);
				}, 250);
			};
			var dateDateType = function () {
				var liTime = mainBox.find(".lines.education > .textinfo > .li.time"),
					inputDay = liTime.find(".input.day"),
					inputMonth = liTime.find(".input.month"),
					inputYear = liTime.find(".input.year");
				var numberTyping = function () {
					var input = $(this),
						value = input.val();
					if (input.hasClass("day") || input.hasClass("month")) {
						var regexNumber = new RegExp(/([0-9]{1,2})/i);
						var matchs = value.match(regexNumber);
						if (isset(matchs) && matchs !== null) {
							if ((input.hasClass("day") && matchs[0] >= <?php print $_parameter->get('select_time_day_min'); ?> && matchs[0] <= <?php print $_parameter->get('select_time_day_max'); ?>) || (input.hasClass("month") && matchs[0] >= <?php print $_parameter->get('select_time_month_min'); ?> && matchs[0] <= <?php print $_parameter->get('select_time_month_max'); ?>)) {
								input.val(matchs[0]);
							}else {
								input.val('');
							}
						}else {
							input.val('');
						}
					}else if (input.hasClass("year")) {
						var regexNumber = new RegExp(/([0-9]{1,4})/i);
						var matchs = value.match(regexNumber);
						if (isset(matchs) && matchs !== null) {
							if (matchs[0].length == 4 && matchs[0] > <?php print $_parameter->get('select_time_year_min'); ?> && matchs[0] < <?php print $_parameter->get('select_time_year_max'); ?>) {
								input.val(matchs[0]);
							}else if (value.length > 4) {
								input.val(matchs[0]);
							}else if (value.length < 4) {
								//.
							}else {
								input.val('');
							}
						}else {
							input.val('');
						}
					}
				};
				inputDay.donetyping(numberTyping, 250);
				inputMonth.donetyping(numberTyping, 250);
				inputYear.donetyping(numberTyping, 250);
			};
			var addEducationTab = function () {
				var addButton = mainBox.find(".lines.add .add");
				addButton.find(".addbutton").unbind('click');
				addButton.find(".addbutton").bind('click', function () {
					var randkey = randomKeyString(10);
					mainBox.find(".lines.add").after('<div class="lines education" randkey="'+randkey+'"> <label>-</label> <div class="textinfo"> <div class="li school"><input class="input school" type="text" placeholder="<?php print $_language->text('type_schoolname', 'upperlower'); ?>"> <div class="private" title="<small><?php print $_language->text('change_private', 'ucfirst'); ?></small>"></div></div> <div class="li special"><input class="input special" type="text" placeholder="<?php print $_language->text('type_school_specialized', 'upperlower'); ?>"></div> <div class="li description"><textarea class="input description as" type="text" placeholder="<?php print $_language->text('type_description', 'upperlower'); ?>"></textarea></div> <div class="li time"> <div class="start _tt-bk s" title="<?php print $_language->text('type_starttime', 'upperlower'); ?>"> <label><?php print $_language->text('start_time', 'ucfirst'); ?></label> <div> <input class="input day" date-type="day" type="text" placeholder="<?php print $_language->text('day', 'strtolower'); ?>"> <input class="input month" date-type="month" type="text" placeholder="<?php print $_language->text('month', 'strtolower'); ?>"> <input class="input year" date-type="year" type="text" placeholder="<?php print $_language->text('year', 'strtolower'); ?>"> </div> </div> <div class="stop _tt-bk s" title="<?php print $_language->text('type_endtime', 'upperlower'); ?> - <?php print $_language->text('not_type_if_now', 'upperlower'); ?>"> <label><?php print $_language->text('end_time', 'ucfirst'); ?></label> <div> <input class="input day" date-type="day" type="text" placeholder="<?php print $_language->text('day', 'strtolower'); ?>"> <input class="input month" date-type="month" type="text" placeholder="<?php print $_language->text('month', 'strtolower'); ?>"> <input class="input year" date-type="year" type="text" placeholder="<?php print $_language->text('year', 'strtolower'); ?>"> </div> </div> </div> </div> </div>');
					mainBox.find(".lines.education[randkey='"+randkey+"']").find(".private").choosePrivate({'type': 'info', 'id': 4});
					autosize(mainBox.find(".lines.education[randkey='"+randkey+"']").find("textarea.as"));
					mainBox.find(".lines.education[randkey='"+randkey+"']").find("textarea.as").donetyping(autoPostionBox, 500);
					mainBox.find(".lines.education[randkey='"+randkey+"']").removeAttr('randkey');
					addButton.stop(true, true).hide();
					setupTooltip();
					typeSchoolName();
					dateDateType();
					autoPostionBox();
					actionTypeInputSchool();
				});
			};
			var actionTypeInputSchool = function () {
				var addButton = mainBox.find(".lines.add .add");
				var input = mainBox.find(".lines.education > .textinfo > .li.school > .input");
				input.bind('keyup', function (e) {
					var input = $(this);
					if (input.attr('typing') == "true") {
						return;
					}else {
						input.attr('typing', 'true');
					}
					var keycode = (e.keyCode ? e.keyCode : e.which);
					if (keycode == 8 && $(this).val() == "") {
						var textinfo = $(this).parents(".textinfo");
						if (textinfo.attr('removing') == "true") {
							textinfo.parents(".lines.education").slideUp(function(){
								$(this).next(".lines.education").find(".textinfo > .li.school > .input").focus();
								$(this).remove();
								autoPostionBox();
							});
							var isDeleted = true;
						}else {
							var callbackFunc = function () {
								textinfo.parents(".lines.education").slideUp(function(){
									$(this).next(".lines.education").find(".textinfo > .li.school > .input").focus();
									$(this).remove();
									autoPostionBox();
								});
								var countNull = 0;
								var input = mainBox.find(".lines.education > .textinfo > .li.school > .input");
								input.each(function () {
									if ($(this).val() == "") {
										countNull++;
									}
								});
								if (countNull === 1) {
									addButton.stop(true, true).fadeIn();
								}
							};
							textinfo.attr('removing', 'true');
							popupNotification ({type: 4, title: '<?php print $_language->text('warning', 'ucfirst'); ?>', description: '<?php print $_language->text('press _delete_button_agian_remove','ucfirst'); ?>.', timeout: 1500, callback: callbackFunc});
							setTimeout(function(){
								textinfo.removeAttr('removing');
							}, 2000);
						}
					}else {
						var textinfo = $(this).parents(".textinfo");
						textinfo.removeAttr('removing');
					}
					var countNull = 0;
					var input = mainBox.find(".lines.education > .textinfo > .li.school > .input");
					input.each(function () {
						if ($(this).val() == "") {
							countNull++;
						}
					});
					if (countNull === 0 || (countNull === 1 && isset(isDeleted) && isDeleted === true)) {
						addButton.stop(true, true).fadeIn();
						if (keycode == 13) {
							addButton.find(".addbutton").click();
							mainBox.find(".lines.education").first().find(".textinfo > .li.school > .input").focus();
						}
					}else {
						addButton.stop(true, true).fadeOut();
					}
					setTimeout(function(){
						input.removeAttr('typing');
					});
				});
			};
			if (isset(infoObj['data']['education']) && countArr(infoObj['data']['education']) > 0) {
				educationLoop: for (var i in infoObj['data']['education']) {
					var thisEducation = infoObj['data']['education'][i];
					if (mainBox.find(".lines.education > [education-id='"+thisEducation['id']+"']").length > 0) {
						continue educationLoop;
					}
					if (!isset(thisEducation['description']) || thisEducation['description'] == null) {
						thisEducation['description'] = "";
					}
					if (!isset(thisEducation['special']) || thisEducation['special'] == null) {
						thisEducation['special'] = "";
					}
					mainBox.find(".lines.add").after('<div class="lines education" education-id="'+thisEducation['id']+'"> <label>'+thisEducation['school']+'</label> <div class="textinfo"> <div class="li school"><input class="input school" type="text" placeholder="<?php print $_language->text('type_schoolname', 'upperlower'); ?>" value="'+thisEducation['school']+'"> <div class="private" title="<small><?php print $_language->text('change_private', 'ucfirst'); ?></small>"></div></div> <div class="li special"><input class="input special" type="text" placeholder="<?php print $_language->text('type_school_specialized', 'upperlower'); ?>" value="'+thisEducation['special']+'"></div> <div class="li description"><textarea class="input description as" type="text" placeholder="<?php print $_language->text('type_description', 'upperlower'); ?>" value="'+thisEducation['description']+'"></textarea></div> <div class="li time"> <div class="start _tt-bk s" title="<?php print $_language->text('type_starttime', 'upperlower'); ?>"> <label><?php print $_language->text('start_time', 'ucfirst'); ?></label> <div> <input class="input day" date-type="day" type="text" placeholder="<?php print $_language->text('day', 'strtolower'); ?>"> <input class="input month" date-type="month" type="text" placeholder="<?php print $_language->text('month', 'strtolower'); ?>"> <input class="input year" date-type="year" type="text" placeholder="<?php print $_language->text('year', 'strtolower'); ?>"> </div> </div> <div class="stop _tt-bk s" title="<?php print $_language->text('type_endtime', 'upperlower'); ?> - <?php print $_language->text('not_type_if_now', 'upperlower'); ?>"> <label><?php print $_language->text('end_time', 'ucfirst'); ?></label> <div> <input class="input day" date-type="day" type="text" placeholder="<?php print $_language->text('day', 'strtolower'); ?>"> <input class="input month" date-type="month" type="text" placeholder="<?php print $_language->text('month', 'strtolower'); ?>"> <input class="input year" date-type="year" type="text" placeholder="<?php print $_language->text('year', 'strtolower'); ?>"> </div> </div> </div> </div> </div>');
					mainBox.find(".lines.education[education-id='"+thisEducation['id']+"']").find(".private").choosePrivate({'type': 'info', 'id': thisEducation['private']});
					autosize(mainBox.find(".lines.education[education-id='"+thisEducation['id']+"']").find("textarea.as"));
					mainBox.find(".lines.education[education-id='"+thisEducation['id']+"']").find("textarea.as").donetyping(autoPostionBox, 500);
					setupTooltip();
					typeSchoolName();
					dateDateType();
					actionTypeInputSchool();
					if (isset(thisEducation['time.start'])) {
						var date = new Date(thisEducation['time.start'] * 1000);
						var lineThis = mainBox.find(".lines.education[education-id='"+thisEducation['id']+"']");
						lineThis.find(".li.time > .start").find(".input.day").val("0" + date.getDay());
						lineThis.find(".li.time > .start").find(".input.month").val("0" + date.getMonth());
						lineThis.find(".li.time > .start").find(".input.year").val(date.getFullYear());
					}
				}
			}
			setupTooltip();
			typeSchoolName();
			addEducationTab();
			actionTypeInputSchool();
		}else if (infoObj['type'] == "workplaces") {
			var linesAdd = "<div class='lines add'> <label><?php print $_language->text('workplaces', 'ucfirst'); ?></label> <div class='add'><span class='addbutton phone'>+ <?php print $_language->text('add_a_tab', 'upperlower'); ?></span></div> </div>";
			mainBox.append(linesAdd);
			mainBox.hide().fadeIn();
			var autoPostionBox = function () {
				tab.children(".boxContent").boxPosition({position: "center", resize: false});
			};
			var typeCompanyName = function () {
				var inputName = mainBox.find(".lines.workplaces .textinfo > .li.company > .input");
				inputName.donetyping(function () {
					if ($(this).val().replaceAll("\n", "") == "") {
						var companyName = "-";
					}else {
						var companyName = $(this).val().replaceAll("\n", "");
					}
					$(this).parents(".textinfo").prev("label").text(companyName);
				}, 250);
			};
			var dateDateType = function () {
				var liTime = mainBox.find(".lines.workplaces > .textinfo > .li.time"),
					inputDay = liTime.find(".input.day"),
					inputMonth = liTime.find(".input.month"),
					inputYear = liTime.find(".input.year");
				var numberTyping = function () {
					var input = $(this),
						value = input.val();
					if (input.hasClass("day") || input.hasClass("month")) {
						var regexNumber = new RegExp(/([0-9]{1,2})/i);
						var matchs = value.match(regexNumber);
						if (isset(matchs) && matchs !== null) {
							if ((input.hasClass("day") && matchs[0] >= <?php print $_parameter->get('select_time_day_min'); ?> && matchs[0] <= <?php print $_parameter->get('select_time_day_max'); ?>) || (input.hasClass("month") && matchs[0] >= <?php print $_parameter->get('select_time_month_min'); ?> && matchs[0] <= <?php print $_parameter->get('select_time_month_max'); ?>)) {
								input.val(matchs[0]);
							}else {
								input.val('');
							}
						}else {
							input.val('');
						}
					}else if (input.hasClass("year")) {
						var regexNumber = new RegExp(/([0-9]{1,4})/i);
						var matchs = value.match(regexNumber);
						if (isset(matchs) && matchs !== null) {
							if (matchs[0].length == 4 && matchs[0] > <?php print $_parameter->get('select_time_year_min'); ?> && matchs[0] < <?php print $_parameter->get('select_time_year_max'); ?>) {
								input.val(matchs[0]);
							}else if (value.length > 4) {
								input.val(matchs[0]);
							}else if (value.length < 4) {
								//.
							}else {
								input.val('');
							}
						}else {
							input.val('');
						}
					}
				};
				inputDay.donetyping(numberTyping, 250);
				inputMonth.donetyping(numberTyping, 250);
				inputYear.donetyping(numberTyping, 250);
			};
			var addWorkplacesTab = function () {
				var addButton = mainBox.find(".lines.add .add");
				addButton.find(".addbutton").unbind('click');
				addButton.find(".addbutton").bind('click', function () {
					var randkey = randomKeyString(10);
					mainBox.find(".lines.add").after('<div class="lines workplaces" randkey="'+randkey+'"> <label>-</label> <div class="textinfo"> <div class="li company"><input class="input company" type="text" placeholder="<?php print $_language->text('type_company_name', 'upperlower'); ?>"> <div class="private" title="<small><?php print $_language->text('change_private', 'ucfirst'); ?></small>"></div></div> <div class="li work awards"><input class="input work" type="text" placeholder="<?php print $_language->text('type_company_work', 'upperlower'); ?>"> <input class="input awards" type="text" placeholder="<?php print $_language->text('type_company_awards', 'upperlower'); ?>"> </div> <div class="li address"><input class="input address as" type="text" placeholder="<?php print $_language->text('type_company_address', 'upperlower'); ?>"></div> <div class="li description"><textarea class="input description as" type="text" placeholder="<?php print $_language->text('type_description', 'upperlower'); ?>"></textarea></div> <div class="li time"> <div class="start _tt-bk s" title="<?php print $_language->text('type_starttime', 'upperlower'); ?>"> <label><?php print $_language->text('start_time', 'ucfirst'); ?></label> <div> <input class="input day" date-type="day" type="text" placeholder="<?php print $_language->text('day', 'strtolower'); ?>"> <input class="input month" date-type="month" type="text" placeholder="<?php print $_language->text('month', 'strtolower'); ?>"> <input class="input year" date-type="year" type="text" placeholder="<?php print $_language->text('year', 'strtolower'); ?>"> </div> </div> <div class="stop _tt-bk s" title="<?php print $_language->text('type_endtime', 'upperlower'); ?> - <?php print $_language->text('not_type_if_now', 'upperlower'); ?>"> <label><?php print $_language->text('end_time', 'ucfirst'); ?></label> <div> <input class="input day" date-type="day" type="text" placeholder="<?php print $_language->text('day', 'strtolower'); ?>"> <input class="input month" date-type="month" type="text" placeholder="<?php print $_language->text('month', 'strtolower'); ?>"> <input class="input year" date-type="year" type="text" placeholder="<?php print $_language->text('year', 'strtolower'); ?>"> </div> </div> </div> </div> </div>');
					mainBox.find(".lines.workplaces[randkey='"+randkey+"']").find(".private").choosePrivate({'type': 'info', 'id': 4});
					autosize(mainBox.find(".lines.workplaces[randkey='"+randkey+"']").find("textarea.as"));
					mainBox.find(".lines.workplaces[randkey='"+randkey+"']").find("textarea.as").donetyping(autoPostionBox, 500);
					mainBox.find(".lines.workplaces[randkey='"+randkey+"']").removeAttr('randkey');
					addButton.stop(true, true).hide();
					setupTooltip();
					typeCompanyName();
					dateDateType();
					autoPostionBox();
					actionTypeInputCompany();
				});
			};
			var actionTypeInputCompany = function () {
				var addButton = mainBox.find(".lines.add .add");
				var input = mainBox.find(".lines.workplaces > .textinfo > .li.company > .input");
				input.bind('keyup', function (e) {
					var input = $(this);
					if (input.attr('typing') == "true") {
						return;
					}else {
						input.attr('typing', 'true');
					}
					var keycode = (e.keyCode ? e.keyCode : e.which);
					if (keycode == 8 && $(this).val() == "") {
						var textinfo = $(this).parents(".textinfo");
						if (textinfo.attr('removing') == "true") {
							textinfo.parents(".lines.workplaces").slideUp(function(){
								$(this).next(".lines.workplaces").find(".textinfo > .li.company > .input").focus();
								$(this).remove();
								autoPostionBox();
							});
							var isDeleted = true;
						}else {
							var callbackFunc = function () {
								textinfo.parents(".lines.workplaces").slideUp(function(){
									$(this).next(".lines.workplaces").find(".textinfo > .li.company > .input").focus();
									$(this).remove();
									autoPostionBox();
								});
								var countNull = 0;
								var input = mainBox.find(".lines.workplaces > .textinfo > .li.company > .input");
								input.each(function () {
									if ($(this).val() == "") {
										countNull++;
									}
								});
								if (countNull === 1) {
									addButton.stop(true, true).fadeIn();
								}
							};
							textinfo.attr('removing', 'true');
							popupNotification ({type: 4, title: '<?php print $_language->text('warning', 'ucfirst'); ?>', description: '<?php print $_language->text('press _delete_button_agian_remove','ucfirst'); ?>.', timeout: 1500, callback: callbackFunc});
							setTimeout(function(){
								textinfo.removeAttr('removing');
							}, 2000);
						}
					}else {
						var textinfo = $(this).parents(".textinfo");
						textinfo.removeAttr('removing');
					}
					var countNull = 0;
					var input = mainBox.find(".lines.workplaces > .textinfo > .li.company > .input");
					input.each(function () {
						if ($(this).val() == "") {
							countNull++;
						}
					});
					if (countNull === 0 || (countNull === 1 && isset(isDeleted) && isDeleted === true)) {
						addButton.stop(true, true).fadeIn();
						if (keycode == 13) {
							addButton.find(".addbutton").click();
							mainBox.find(".lines.workplaces").first().find(".textinfo > .li.company > .input").focus();
						}
					}else {
						addButton.stop(true, true).fadeOut();
					}
					setTimeout(function(){
						input.removeAttr('typing');
					});
				});
			};
			if (isset(infoObj['data']['workplaces']) && countArr(infoObj['data']['workplaces']) > 0) {
				workplacesLoop: for (var i in infoObj['data']['workplaces']) {
					var thisWorkplaces = infoObj['data']['workplaces'][i];
					if (mainBox.find(".lines.workplaces > [workplaces-id='"+thisWorkplaces['id']+"']").length > 0) {
						continue workplacesLoop;
					}
					if (!isset(thisWorkplaces['work']) || thisWorkplaces['work'] === null) {
						thisWorkplaces['work'] = "";
					}
					if (!isset(thisWorkplaces['awards']) || thisWorkplaces['awards'] === null) {
						thisWorkplaces['awards'] = "";
					}
					if (!isset(thisWorkplaces['address']) || thisWorkplaces['address'] === null) {
						thisWorkplaces['address'] = "";
					}
					if (!isset(thisWorkplaces['description']) || thisWorkplaces['description'] === null) {
						thisWorkplaces['description'] = "";
					}
					mainBox.find(".lines.add").after('<div class="lines workplaces" workplaces-id="'+thisWorkplaces['id']+'"> <label>'+thisWorkplaces['company']+'</label> <div class="textinfo"> <div class="li company"><input class="input company" type="text" placeholder="<?php print $_language->text('type_company_name', 'upperlower'); ?>" value="'+thisWorkplaces['company']+'"> <div class="private" title="<small><?php print $_language->text('change_private', 'ucfirst'); ?></small>"></div></div> <div class="li work awards"><input class="input work" type="text" placeholder="<?php print $_language->text('type_company_work', 'upperlower'); ?>" value="'+thisWorkplaces['work']+'"> <input class="input awards" type="text" placeholder="<?php print $_language->text('type_company_awards', 'upperlower'); ?>" value="'+thisWorkplaces['awards']+'"> </div> <div class="li address"><input class="input address as" type="text" placeholder="<?php print $_language->text('type_company_address', 'upperlower'); ?>" value="'+thisWorkplaces['address']+'"></div> <div class="li description"><textarea class="input description as" type="text" placeholder="<?php print $_language->text('type_description', 'upperlower'); ?>" value="'+thisWorkplaces['description']+'"></textarea></div> <div class="li time"> <div class="start _tt-bk s" title="<?php print $_language->text('type_starttime', 'upperlower'); ?>"> <label><?php print $_language->text('start_time', 'ucfirst'); ?></label> <div> <input class="input day" date-type="day" type="text" placeholder="<?php print $_language->text('day', 'strtolower'); ?>"> <input class="input month" date-type="month" type="text" placeholder="<?php print $_language->text('month', 'strtolower'); ?>"> <input class="input year" date-type="year" type="text" placeholder="<?php print $_language->text('year', 'strtolower'); ?>"> </div> </div> <div class="stop _tt-bk s" title="<?php print $_language->text('type_endtime', 'upperlower'); ?> - <?php print $_language->text('not_type_if_now', 'upperlower'); ?>"> <label><?php print $_language->text('end_time', 'ucfirst'); ?></label> <div> <input class="input day" date-type="day" type="text" placeholder="<?php print $_language->text('day', 'strtolower'); ?>"> <input class="input month" date-type="month" type="text" placeholder="<?php print $_language->text('month', 'strtolower'); ?>"> <input class="input year" date-type="year" type="text" placeholder="<?php print $_language->text('year', 'strtolower'); ?>"> </div> </div> </div> </div> </div>');
					mainBox.find(".lines.workplaces[workplaces-id='"+thisWorkplaces['id']+"']").find(".private").choosePrivate({'type': 'info', 'id': thisWorkplaces['private']});
					autosize(mainBox.find(".lines.workplaces[workplaces-id='"+thisWorkplaces['id']+"']").find("textarea.as"));
					mainBox.find(".lines.workplaces[workplaces-id='"+thisWorkplaces['id']+"']").find("textarea.as").donetyping(autoPostionBox, 500);
					setupTooltip();
					typeCompanyName();
					dateDateType();
					actionTypeInputCompany();
					if (isset(thisWorkplaces['time.start'])) {
						var date = new Date(thisWorkplaces['time.start'] * 1000);
						var lineThis = mainBox.find(".lines.workplaces[workplaces-id='"+thisWorkplaces['id']+"']");
						lineThis.find(".li.time > .start").find(".input.day").val("0" + date.getDay());
						lineThis.find(".li.time > .start").find(".input.month").val("0" + date.getMonth());
						lineThis.find(".li.time > .start").find(".input.year").val(date.getFullYear());
					}
				}
			}
			setupTooltip();
			typeCompanyName();
			addWorkplacesTab();
			actionTypeInputCompany();
		}else if (infoObj['type'] == "places") {
			var linesLive = "<div class='lines live'> <label><?php print $_language->text('live', 'ucfirst'); ?></label> <div class='textinfo'> <div class='li live'><div class='private' title='<small><?php print $_language->text('change_private', 'ucfirst'); ?></small>'></div> <input class='input live value' type='text' placeholder='<?php print $_language->text('where_do_you_live', 'upperlower'); ?>'></div> <div class='li description'><textarea class='input live description as' type='text' placeholder='<?php print $_language->text('write_something_about_live', 'strtolower'); ?>'></textarea></div></div> </div>";
			var linesCountry = "<div class='lines country'> <label><?php print $_language->text('country', 'ucfirst'); ?></label> <div class='textinfo'> <div class='li country'><div class='private' title='<small><?php print $_language->text('change_private', 'ucfirst'); ?></small>'></div> <input class='input country value' type='text' placeholder='<?php print $_language->text('where_do_you_from', 'upperlower'); ?>'></div> <div class='li description'><textarea class='input country description as' type='text' placeholder='<?php print $_language->text('write_something_about_country', 'strtolower'); ?>'></textarea></div></div> </div>";
			mainBox.append(linesLive).append(linesCountry);
			mainBox.hide().fadeIn();
			autosize(mainBox.find(".lines textarea.as"));
			if (isset(infoObj['data']['live.description']) && infoObj['data']['live.description'] !== null) {
				mainBox.find(".lines.live > .textinfo > .li.description > .input.live.description").val(infoObj['data']['live.description']);
			}
			if (isset(infoObj['data']['country.description']) && infoObj['data']['country.description'] !== null) {
				mainBox.find(".lines.country > .textinfo > .li.description > .input.country.description").val(infoObj['data']['country.description']);
			}
			if (isset(infoObj['data']['private.info.live']) && infoObj['data']['private.info.live'] !== null) {
				var privateLive = infoObj['data']['private.info.live'];
			}else {
				var privateLive = 4;
			}
			if (isset(infoObj['data']['private.info.country']) && infoObj['data']['private.info.country'] !== null) {
				var privateCountry = infoObj['data']['private.info.country'];
			}else {
				var privateCountry = 4;
			}
			mainBox.find(".lines.live > .textinfo > .li.live").children(".private").choosePrivate({'type': 'info', 'id': privateLive});
			mainBox.find(".lines.country > .textinfo > .li.country").children(".private").choosePrivate({'type': 'info', 'id': privateCountry});
			mainBox.find(".lines.live .input.live.description, .lines.country .input.country.description").donetyping(function(){
				tab.children(".boxContent").boxPosition({position: "center", resize: false});
			}, 500);
			var findMapsPlaces = function () {
				var input = mainBox.find(".lines.live > .textinfo > .li.live, .lines.country > .textinfo > .li.country").children(".input");
				input.donetyping(function () {
					var input = $(this);
					if (input.val() !== null && input.val() != "" && input.val().match(/([a-zA-Z0-9])/ig)) {
						requestFind(input);
					}
				}, 750);
				var requestFind = function (input) {
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
						type: "GET",
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
				};
			};
			findMapsPlaces();
			if (isset(infoObj['data']['live']) && infoObj['data']['live'] !== null && countArr(infoObj['data']['live']) > 3) {
				var tagCode = "<span class='tagPlaces' tag-obj tag-rows='"+JSON.stringify(infoObj['data']['live'])+"' tag-type='places' tag-id='"+infoObj['data']['live']['value']+"' tag-location='"+infoObj['data']['live']['location']+"' tag-address='"+infoObj['data']['live']['address']+"' tag-name='"+infoObj['data']['live']['name']+"'>"+infoObj['data']['live']['name']+"<i class='close'></i></span>";
				var input = mainBox.find(".lines.live > .textinfo > .li.live").children(".input");
				input.attr('disabled', 'disabled').stop(true, true).hide().before(tagCode);
			}
			if (isset(infoObj['data']['country']) && infoObj['data']['country'] !== null && countArr(infoObj['data']['country']) > 3) {
				var tagCode = "<span class='tagPlaces' tag-obj tag-rows='"+JSON.stringify(infoObj['data']['country'])+"' tag-type='places' tag-id='"+infoObj['data']['country']['value']+"' tag-location='"+infoObj['data']['country']['location']+"' tag-address='"+infoObj['data']['address']+"' tag-name='"+infoObj['data']['country']['name']+"'>"+infoObj['data']['country']['name']+"<i class='close'></i></span>";
				var input = mainBox.find(".lines.country > .textinfo > .li.country").children(".input");
				input.attr('disabled', 'disabled').stop(true, true).hide().before(tagCode);
			}
			var tagButton =  mainBox.find(".lines > .textinfo > .li").find("[tag-obj]");
			tagButton.children(".close").bind('click', function () {
				var tagThis = $(this).parent("[tag-obj]");
				tagThis.fadeOut(function(){
					tagThis.next(".input").removeAttr('disabled').fadeIn();
					tagThis.remove();
				});
			});
		}else {
			return false;
		}
		var actionSaveInfo = function () {
			if (mainBox.find(".lines.verify").length === 0) {
				mainBox.find(".lines").last().after("<div class='lines verify'> <label><?php print $_language->text('verification', 'ucfirst'); ?></label> <div> <button class='button _bn_c-we'><?php print $_language->text('save', 'ucfirst'); ?></button> </div> </div>");
			}
			var actionLines = mainBox.find(".lines.verify");
			var actionButton = actionLines.find(".button");
			var requestVerifyPassword = function (object) {
				var updateInfomation = function (object) {
					console.log(object);
				};
				var requestVerifyOptions = {
					'title': '<?php print $_language->text('verify_password', 'ucfirst'); ?>', 
					'content': '<div class="passwordVerify"> <div class="lineInput"> <input class="input ip_c-we" type="password" placeholder="<?php print $_language->text('type_password_verify', 'upperlower'); ?>"> </div> </div>', 
					'actionTrue': '<?php print $_language->text('confirm', 'ucfirst'); ?>', 
					'callbackTrue': function (e) { 
						var popupThis = $(this).parents("#popupAlert");
						var passwordVerify = popupThis.find(".passwordVerify .input").val();
						var data = {'profile': object, 'password': passwordVerify};
						updateInfomation(data);
					}
				};
				popupAlert(requestVerifyOptions);
			};
			var getDataInfomation = function () {
				var mainType = mainBox.attr('type');
				if (inArray(mainType, ["introduction", "about", "contact", "education", "workplaces", "places"])) {
					var mainData = {};
					if (mainType == "introduction") {
						mainData['introduction'] = mainBox.find(".lines.introduction .input.introduction").val();
						mainData['quote'] = mainBox.find(".lines.quote .input.quote").val();
					}else if (mainType == "about") {
						mainData['firstname'] = mainBox.find(".lines.name .input.firstname").val();
						mainData['middlename'] = mainBox.find(".lines.name .input.middlename").val();
						mainData['lastname'] = mainBox.find(".lines.name .input.lastname").val();
						mainData['nickname'] = mainBox.find(".lines.name .input.nickname").val();
						mainData['gender'] = mainBox.find(".lines.gender .input.gender").children(".checkbox").attr('value');
						mainData['birthday'] = {};
						mainData['birthday']['day'] = mainBox.find(".lines.birthday .input.day").val();
						mainData['birthday']['month'] = mainBox.find(".lines.birthday .input.month").val();
						mainData['birthday']['year'] = mainBox.find(".lines.birthday .input.year").val();
						mainData['language'] = mainBox.find(".lines.language [tag-language]").attr('tag-language');
					}else if (mainType == "contact") {
						mainData['email'] = mainBox.find(".lines.important .input.email").val();
						mainData['phone'] = mainBox.find(".lines.important .input.phone").val();
						mainData['contact'] = {};
						mainData['contact']['phone'] = [];
						mainBox.find(".lines.phone .textinfo").each(function () {
							i = countArr(mainData['contact']['phone']);
							mainData['contact']['phone'][i] = {
								'value': $(this).find(".input.phone").val(),
								'private': $(this).find(".private").find(".selected").find("[private-value]").attr('private-value')
							};
							if (isset($(this).attr('contact-id'))) {
								mainData['contact']['phone'][i--]['id'] = $(this).attr('contact-id');
							}
						});
						mainData['contact']['email'] = [];
						mainBox.find(".lines.email .textinfo").each(function () {
							i = countArr(mainData['contact']['email']);
							mainData['contact']['email'][i] = {
								'value': $(this).find(".input.email").val(),
								'private': $(this).find(".private").find(".selected").find("[private-value]").attr('private-value')
							};
							if (isset($(this).attr('contact-id'))) {
								mainData['contact']['email'][i--]['id'] = $(this).attr('contact-id');
							}
						});
					}else if (mainType == "education") {
						mainData['education'] = [];
						mainBox.find(".lines.education").each(function () {
							i = countArr(mainData['education']);
							mainData['education'][i] = {
								'school': $(this).children(".textinfo").children(".li.school").children(".input.school").val(),
								'private': $(this).children(".textinfo").children(".li.school").children(".private").find(".selected").find("[private-value]").attr('private-value'),
								'special': $(this).children(".textinfo").children(".li.special").children(".input.special").val(),
								'description': $(this).children(".textinfo").children(".li.description").children(".input.description").val(),
								'time': {
									'start': {
										'day': $(this).children(".textinfo").children(".li.time").children(".start").find(".input.day").val(),
										'month': $(this).children(".textinfo").children(".li.time").children(".start").find(".input.month").val(),
										'year': $(this).children(".textinfo").children(".li.time").children(".start").find(".input.year").val()
									},
									'stop': {
										'day': $(this).children(".textinfo").children(".li.time").children(".stop").find(".input.day").val(),
										'month': $(this).children(".textinfo").children(".li.time").children(".stop").find(".input.month").val(),
										'year': $(this).children(".textinfo").children(".li.time").children(".stop").find(".input.year").val()
									}
								}
							};
							if (isset($(this).attr('education-id'))) {
								mainData['education'][i]['id'] = $(this).attr('education-id');
							}
						});
					}else if (mainType == "workplaces") {
						mainData['workplaces'] = [];
						mainBox.find(".lines.workplaces").each(function () {
							i = countArr(mainData['workplaces']);
							mainData['workplaces'][i] = {
								'company': $(this).children(".textinfo").children(".li.company").children(".input.company").val(),
								'private': $(this).children(".textinfo").children(".li.company").children(".private").find(".selected").find("[private-value]").attr('private-value'),
								'work': $(this).children(".textinfo").children(".li.work.awards").children(".input.work").val(),
								'awards': $(this).children(".textinfo").children(".li.work.awards").children(".input.awards").val(),
								'address': $(this).children(".textinfo").children(".li.address").children(".input.address").val(),
								'description': $(this).children(".textinfo").children(".li.description").children(".input.description").val(),
								'time': {
									'start': {
										'day': $(this).children(".textinfo").children(".li.time").children(".start").find(".input.day").val(),
										'month': $(this).children(".textinfo").children(".li.time").children(".start").find(".input.month").val(),
										'year': $(this).children(".textinfo").children(".li.time").children(".start").find(".input.year").val()
									},
									'stop': {
										'day': $(this).children(".textinfo").children(".li.time").children(".stop").find(".input.day").val(),
										'month': $(this).children(".textinfo").children(".li.time").children(".stop").find(".input.month").val(),
										'year': $(this).children(".textinfo").children(".li.time").children(".stop").find(".input.year").val()
									}
								}
							};
							if (isset($(this).attr('workplaces-id'))) {
								mainData['workplaces'][i]['id'] = $(this).attr('workplaces-id');
							}
						});
					}else if (mainType == "places") {
						if (mainBox.find(".lines.live").children(".textinfo").find(".input.live.value").prev("[tag-obj][tag-id]").length === 0) {
							mainData['live'] = mainBox.find(".lines.live").children(".textinfo").find(".input.live.value").val();
						}else {
							mainData['live'] = mainBox.find(".lines.live").children(".textinfo").find(".input.live.value").prev("[tag-obj][tag-id]").attr('tag-id');
						}
						mainData['live.description'] = mainBox.find(".lines.live").children(".textinfo").find(".input.live.description").val();
						if (mainBox.find(".lines.country").children(".textinfo").find(".input.country.value").prev("[tag-obj][tag-id]").length === 0) {
							mainData['country'] = mainBox.find(".lines.country").children(".textinfo").find(".input.country.value").val();
						}else {
							mainData['country'] = mainBox.find(".lines.country").children(".textinfo").find(".input.country.value").prev("[tag-obj][tag-id]").attr('tag-id');
						}
						mainData['country.description'] = mainBox.find(".lines.country").children(".textinfo").find(".input.country.description").val();
					}else {
						return false;
					}
					console.log(mainData);
					requestVerifyPassword(mainData);
				}else {
					//.
				}
			};
			actionButton.bind('click', getDataInfomation);
		};
		actionSaveInfo();
	};
	var getData = function (object) {
		if (!isset(object) || !isset(object['id']) || !isset(object['rows'])) {
			return false;
		}
		if (typeof object['id'] != "number") {
			return false;
		}
		if (tab.attr('handling-data') != "true") {
			if (object['rows'] == "introduction") {
				var rowsObj = ['introduction', 'quote'];
			}else if (object['rows'] == "about") {
				var rowsObj = ['username', 'fullname', 'firstname', 'middlename', 'lastname', 'nickname', 'formatname', 'gender', 'birthday', 'language'];
			}else if (object['rows'] == "contact") {
				var rowsObj = ['phone', 'private->info->phone', 'email', 'private->info->email', 'contact'];
			}else if (object['rows'] == "education") {
				var rowsObj = ['education'];
			}else if (object['rows'] == "workplaces") {
				var rowsObj = ['workplaces'];
			}else if (object['rows'] == "places") {
				var rowsObj = ['live.info', 'private->info->live', 'live.description', 'country.info', 'private->info->country', 'country.description'];
			}else {
				return false;
			}
			tab.attr('handling-data', 'true');
			tab.children(".boxContent").find(".body").append("<div class='loading waiting_setup_data'> <span><?php print $_language->text('loading', 'ucfirst'); ?></span> </div>");
			var doneFunc = function () {
				tab.removeAttr('handling-data');
				tab.children(".boxContent").find(".body > .loading").fadeOut(function(){
					$(this).remove();
				});
				tab.children(".boxContent").boxPosition({position: "center", resize: false});
			};
			$.ajax({
				url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
				type: "GET",
				data: {'port': 'user', 'type': 'info', 'action': 'get', 'id': object['id'], 'rows': rowsObj},
				dataType: "json",
				success: function (data) {
					if (isset(data) && isset(data['return']) && isset(data['data']) && data['return'] === true) {
						pushData({'type': object['rows'], 'data': data['data']});
					}else if (isset(data) && isset(data['reason']) && data['return'] === false) {
						popupNotification ({type: 4, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('error_in_the_implementation_process', 'ucfirst'); ?>.'});
					}else {
						popupNotification ({type: 2, title: '<?php print $_language->text('error', 'ucfirst'); ?>', description: '<?php print $_language->text('error_in_the_implementation_process', 'ucfirst'); ?>.'});
					}
				}
			}).fail(doneFunc).done(doneFunc);
		}
	};
	tab.children(".boxContent").find(".body > .nav > .list > .rows[type]").bind('click', function () {
		var rows = $(this).attr('type');
		var rowsActived = tab.children(".boxContent").find(".body > .nav > .list > .rows[type].active").attr('type');
		if (rows == rowsActived) {
			return;
		}
		tab.children(".boxContent").find(".body > .nav > .list > .rows[type]").removeClass('active');
		$(this).addClass('active');
		tab.children(".boxContent").find(".body > .nav > .arrow").attr('arrow', rows);
		if (inArray(rows, ["introduction", "about", "contact", "education", "workplaces", "places"])) {
			tab.children(".boxContent").find(".body .main").html('').attr('type', rows);
			if (rows == "introduction") {
				// tab.children(".boxContent").find(".body").height(240);
			}else if (rows == "about") {
				// tab.children(".boxContent").find(".body").height(400);
			}
			getData({'id': object['id'], 'rows': rows});
		}else {
			//.
		}
	});
	privateCheck({'id': object['id'], 'setup': object['setup']});
};
var callbackFunction = function () {
	resizeTemplates();
	setupTimestamp();
	setupTooltip();
	setupDrag();
	setupEffect();
	callUpdate();
	setupDirect();
	pushInfoEr();
}
$(document).ready(function() {
	resizeTemplates();
	setTimeout(function() {
		setupAudioNotification();
		setupTimestamp();
		setupTooltip();
		setupDrag();
		setupEffect();
		callUpdate();
		setupDirect();
		pushInfoEr();
		// messagesTabPrivate({'display': '565bee5f72d1e826e5b13ae0aa49a511'});
		var x = {'id': 15, 'setup': 'about'};
		// user_InfoEditor(x);
		/*
		var s = {
			'tab': {
				'title': 'sd'
			},
			'audio': {
				'name': 'water_droplet'
			}
		};
		browserNotification(s);
		*/
	}, <?php print $_parameter->get("call_function_timeout"); ?>);
});