var setupFeed = function (cb) {
	if (typeof cb !== "function") {
		return false;
	}
	setFeedStatus = function (value) {
		_g['session'].add('client_feed_ready', value);
		cb(value);
	};
	_g['source'].load({'type': 'js', 'src': '<?php print $_tool->links("source/js/templates/feed.js"); ?>'}, function (loadedJS) {

	});
	_g['source'].load({'type': 'css', 'src': '<?php print $_tool->links("source/css/templates/feed.css"); ?>'}, function (loadedCSS) {
	
	});
	setFeedStatus(true);
};
var isFeedReady = function (cb) {
	if (typeof cb !== "function") {
		return false;
	}
	if (_g['session'].exists('client_feed_ready') === true)  {
		returnValue = _g['session'].get('client_feed_ready');
		cb(returnValue);
	}else {
		setupFeed(function (returnValue) {
			cb(returnValue);
		});
	}
};
var callbackAllFunc = function () {
	feedReadyFunc = function (x) {
		console.log('feed - enable: ' + x);
	}
	isFeedReady(feedReadyFunc);
};
$(document).ready(callbackAllFunc);