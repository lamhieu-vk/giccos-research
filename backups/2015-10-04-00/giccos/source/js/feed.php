var setupFeed = function (cb) {
	if (typeof cb !== "function") {
		return false;
	}
	var setFeedStatus = function (value) {
		_g['cache'].add('client_feed_ready', value);
		cb(value);
	};
	setupFeedJs = loadFileSource('js', {'src': '<?php print $_tool->links("source/js/templates/feed.js"); ?>'});
	setupFeedCss = loadFileSource('css', {'src': '<?php print $_tool->links("source/css/templates/feed.css"); ?>'});
	if (setupFeedJs === true && setupFeedCss === true) {
		setFeedStatus(true);
	}else {
		setFeedStatus(false);
	}
};
var isFeedReady = function (cb) {
	if (typeof cb !== "function") {
		return false;
	}
	var allowValue;
	if (_g['cache'].exists('client_feed_ready') === true)  {
		allowValue = _g['cache'].get('client_feed_ready');
		cb(allowValue);
	}else {
		var cbSetupFunc = function (value) {
			allowValue = value;
			cb(allowValue);
		};
		setupRequest = setupFeed(cbSetupFunc);
	}
};
var callbackAllFunc = function () {
	var feedReadyFunc = function (x) {
		console.log('feed - enable: ' + x);
	}
	isFeedReady(feedReadyFunc);	
};
$(document).ready(callbackAllFunc);