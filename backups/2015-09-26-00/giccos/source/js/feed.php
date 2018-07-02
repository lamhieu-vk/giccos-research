var setupFeed = function (cb) {
	if (typeof cb !== "function") {
		return false;
	}
	var setFeedStatus = function (value) {
		_dataCache.add('client_mediaplayer_ready', value);
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
	if (_dataCache.exists('client_mediaplayer_ready') === true)  {
		allowValue = _dataCache.get('client_mediaplayer_ready');
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