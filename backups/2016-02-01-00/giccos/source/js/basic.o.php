_g = {};
_g.tool = {
	is: {
		var: function () {
			var vr = true;
			for (var i = 0; i < arguments.length; i++) {
				if (inArray(typeof arguments[i], ['undefined'])) {
					vr = false;
					break;
				}
			}
			return vr;
		},
		null: function () {
			var vr = false;
			for (var i = 0; i < arguments.length; i++) {
				if (!_g.tool.is.var(arguments[i]) && arguments[i] === undefined || arguments[i] === null) {
					var vr = true;
					break;
				}
			}
			return vr;
		},
		exists: function () {
			var vr = true;
			for (var i = 0; i < arguments.length; i++) {
				if (inArray(typeof arguments[i], ['undefined', 'null']) || arguments[i] === undefined || arguments[i] === null) {
					var vr = false;
					break;
				}
			}
			return vr;
		},
		selector: function () {
			var vr = true;
			for (var i = 0; i < arguments.length; i++) {
				if (!_g.tool.is.exists(arguments[i]) || !_g.tool.is.array(arguments[i])) {
					var vr = false;
					break;
				}
			}
			return vr;
		},
		element: function () {
			return _g.tool.is.selector(arguments);
		},
		string: function () {
			var vr = true;
			for (var i = 0; i < arguments.length; i++) {
				if (!_g.tool.is.exists(arguments[i]) || typeof arguments[i] !== 'string') {
					var vr = false;
					break;
				}
			}
			return vr;
		},
		array: function () {
			var vr = true;
			for (var i = 0; i < arguments.length; i++) {
				if (!_g.tool.is.exists(arguments[i]) || typeof arguments[i] !== 'object') {
					var vr = false;
					break;
				}
			}
			return vr;
		},
		object: function () {
			return _g.tool.is.array(arguments);
		},
		number: function () {
			var vr = true;
			for (var i = 0; i < arguments.length; i++) {
				if (!_g.tool.is.exists(arguments[i]) || typeof arguments[i] !== 'number') {
					var vr = false;
					break;
				}
			}
			return vr;
		},
		bool: function () {
			var vr = true;
			for (var i = 0; i < arguments.length; i++) {
				if (!_g.tool.is.exists(arguments[i]) || typeof arguments[i] !== 'boolean') {
					var vr = false;
					break;
				}
			}
			return vr;
		},
		function: function () {
			var vr = true;
			for (var i = 0; i < arguments.length; i++) {
				if (!_g.tool.is.exists(arguments[i]) || typeof arguments[i] !== 'function') {
					var vr = false;
					break;
				}
			}
			return vr;
		},
		NaN: function () {
			var vr = true;
			for (var i = 0; i < arguments.length; i++) {
				if (!_g.tool.is.exists(arguments[i]) || !isNaN(arguments[i])) {
					var vr = false;
					break;
				}
			}
			return vr;
		},
	},
	selector: {
		is: function (selector) {
			return _g.tool.is.selector(selector);
		},
		count: function (selector) {
			if (_g.tool.is.selector(selector)) {
				return selector.length;
			}else {
				return 0;
			}
		},
		exists: function (selector) {
			if (_g.tool.selector.count(selector) > 0) {
				return true;
			}else {
				return false;
			}
		}
	},
	json: {
		encode: function (data, verify) {
			data = _g.tool.is.var(data) ? data : null;
			// verify = _g.tool.is.bool(verify) ? verify : true;
			return JSON.stringify(data);
		},
		decode: function (data, verify) {
			data = _g.tool.is.string(data) ? data : null;
			// verify = _g.tool.is.bool(verify) ? verify : true;
			return JSON.parse(data);
		}
	},
	string: {
		lowercase: function (str) {
			return str.toLowerCase();
		},
		uppercase: function (str) {
			return str.toUpperCase();
		},
		ucwords: function (str) {
			str = str.toLowerCase();
			return str.replace(/(^([a-zA-Z\p{M}]))|([ -][a-zA-Z\p{M}])/g, function ($1) {
				return $1.toUpperCase()
			});
		},
		ucfirst: function (str) {
			return str.charAt(0).toUpperCase() + str.slice(1);
		}
	},
	array: {
		count: function (arr) {
			if (_g.tool.is.array(arr)) {
				return Object.keys(arr).length;
			}
			return 0;
		},
		exists: function (needle, haystack) {
			var length = haystack.length;
		    for (var i = 0; i < length; i++) {
		        if (typeof haystack[i] == 'object') {
		            if (arrayCompare(haystack[i], needle)) {
		            	return true;
		            }
		        }else {
		            if (haystack[i] == needle) {
		            	return true;
		            }
		        }
		    }
		    return false;
		}
	},
	parse: {
		number: {
			int: function (number) {
				return parseInt(number);
			}
		},
		time: function (text) {
			text = _g.tool.is.var(text) ? text : "";
			matchFormatDatetime = text.match(/(\{format_datetime\:([0-9]+)\})/gi);
			matchFormatDatetip = text.match(/(\{format_datetip\:([0-9]+)\})/gi);
			if (matchFormatDatetime !== null) {
				for (i in matchFormatDatetime) {
					matchFormatDatetime[i] = String(matchFormatDatetime[i]);
					shortLength = new RegExp(/(\_)/).test(matchFormatDatetime[i]) ? true : false;
					timestampThis = Number(matchFormatDatetime[i].match(/format_date\:([0-9]+)/)[2]);
					text.replace(matchFormatDatetime[i], _g.tool.parse.datetime(timestampThis, shortLength));
				}
			}
			if (matchFormatDatetip !== null) {
				for (i in matchFormatDatetip) {
					matchFormatDatetip[i] = String(matchFormatDatetip[i]);
					timestampThis = Number(matchFormatDatetip[i].match(/format_date\:([0-9]+)/)[2]);
					text.replace(matchFormatDatetip[i], _g.tool.parse.datetip(timestampThis));
				}
			}
			return text;
		},
		content: function (text) {
			text = _g.tool.is.var(text) ? text : "";
			text = _g.tool.parse_time(text);
			return text;
		},
		bytes: function (bytes, decimals, prefix) {
			if (bytes == 0) {
				return ('0 Bytes').toLowerCase();
			}
			prefix = _g.tool.is.bool(prefix) ? prefix : true;
			if (prefix) {
				k = 1024;
				sizes = ['Bytes', 'KiB', 'MiB', 'GiB', 'TiB', 'PiB', 'EiB', 'ZiB', 'YiB'];
			}else {
				k = 1000;
				sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
			}
			dm = typeof decimals === 'number' ? decimals : 3;
			i = Math.floor(Math.log(bytes) / Math.log(k));
			return ((bytes / Math.pow(k, i)).toPrecision(dm) + ' ' + sizes[i]);
		},
		datetext: function (type, timestamp) {
			type = _g.tool.is.var(type) && is_string(type) ? type : null;
			timestamp = _g.tool.is.var(timestamp) && is_number(timestamp) ? timestamp : null;
			if (type === null || timestamp === null) {
				date = "";
			}else {
				timestamp = new RegExp(/^([0-9]{13,14})$/).test(timestamp) ? timestamp : Math.floor(timestamp * 1000);
			}
			dateTime = new Date(timestamp);
			dateSecond = dateTime.getSeconds(),
			dateSecond = dateSecond < 10 ? '0' + dateSecond : dateSecond,
			dateMinute = dateTime.getMinutes(),
			dateMinute = dateMinute < 10 ? '0' + dateMinute : dateMinute,
			dateHour = dateTime.getHours(),
			dateHour = dateHour < 10 ? '0' + dateHour : dateHour,
			dateDay = dateTime.getDate(),
			dateDay = dateDay < 10 ? '0' + dateDay : dateDay,
			dateWeek = dateTime.getDay(),
			dateWeek = dateWeek + 1,
			dateMonth = dateTime.getMonth(),
			dateMonth = dateMonth + 1,
			dateYear = dateTime.getFullYear();
			//.
			date = type,
			date = date.replace("s", dateSecond),
			date = date.replace("i", dateMinute),
			date = date.replace("H", dateHour),
			date = date.replace("h", Number(dateHour) % 12),
			date = date.replace("G", Number(dateHour) < 10 ? dateHour.replace("0", "") : dateHour),
			date = date.replace("g", Number(Number(dateHour) % 12) < 10 ? String(Number(dateHour) % 12).replace("0", "") : dateHour),
			date = date.replace("d", dateDay),
			date = date.replace("j", Number(dateDay) < 10 ? dateDay.replace("0", "") : dateDay),
			date = date.replace("m", dateMonth),
			date = date.replace("n", Number(dateMonth) < 10 ? dateMonth.replace("0", "") : dateMonth),
			date = date.replace("Y", dateYear),
			date = date.replace("y", Number(dateYear) % 100);
			return date;
		},
		datetip: function (timestamp) {
			timestamp = _g.tool.is.var(timestamp) && is_number(timestamp) ? timestamp : null;
			if (timestamp === null) {
				return "";
			}else {
				timestamp = new RegExp(/^([0-9]{13,14})$/).test(timestamp) ? Math.floor(timestamp / 1000) : timestamp;
			}
			now = Math.floor(Date.now() / 1000);
			difference = abs(now - timestamp);
			dateYear = Math.round(difference / 29030400);
			if (dateYear > 0) {
				dateText = _g.tool.format_date('H:i, d/n/Y', timestamp);
			}else {
				dateText = _g.tool.format_date('H:i, d/n', timestamp);
			}
			return dateText;
		},
		datetime: function (timestamp, length) {
			timestamp = _g.tool.is.var(timestamp) && is_number(timestamp) ? timestamp : null;
			length = _g.tool.is.var(length) && is_bool(length) ? length : false;
			if (timestamp === null) {
				return "";
			}else {
				timestamp = new RegExp(/^([0-9]{13,14})$/).test(timestamp) ? Math.floor(timestamp / 1000) : timestamp;
			}
			now = Math.floor(Date.now() / 1000);
			difference = now - timestamp;
			if (difference < 0) {
				type = "future";
				difference = abs(difference);
			}else {
				type = "past";
			}
			dateSecond = difference; 
			dateMin = Math.round(difference / 60);
			dateHour = Math.round(difference / 3600); 
			dateDay = Math.round(difference / 86400); 
			dateWeek = Math.round(difference / 604800); 
			dateMonth = Math.round(difference / 2419200); 
			dateYear = Math.round(difference / 29030400);
			if (length) {
				dateSpace = "";
			}else {
				dateSpace = " ";
			}
			if (dateSecond < 60) {
				if (length) {
					dateText = "<?php print $_language->text('a_few_seconds', 'strtolower', true); ?>";
				}else {
					dateText = "<?php print $_language->text('a_few_seconds', 'strtolower', false); ?>";
				}
			}else if (dateMin < 60) {
				dateText = dateMin+dateSpace;
				if (length) {
					dateText += type == "future" ? "<?php print $_language->text('minutes_left', 'strtolower', true); ?>" : "<?php print $_language->text('minutes_ago', 'strtolower', true); ?>"; 
				}else {
					dateText += type == "future" ? "<?php print $_language->text('minutes_left', 'strtolower', false); ?>" : "<?php print $_language->text('minutes_ago', 'strtolower', false); ?>"; 
				}
			}else if (dateHour < 24) {
				dateText = dateHour+dateSpace;
				if (length) {
					dateText += type == "future" ? "<?php print $_language->text('hours_left', 'strtolower', true); ?>" : "<?php print $_language->text('hours_ago', 'strtolower', true); ?>"; 
				}else {
					dateText += type == "future" ? "<?php print $_language->text('hours_left', 'strtolower', false); ?>" : "<?php print $_language->text('hours_ago', 'strtolower', false); ?>"; 
				}
			}else if (dateDay < 7 || (dateWeek >= 4 && dateDay < 30)) {
				dateText = dateDay+dateSpace;
				if (dateDay == 1) {
					dateText = _g.tool.format_date('H:i', timestamp)+', ';
					if (length) {
						dateText += type == "future" ? "<?php print $_language->text('tomorrow', 'strtolower', true); ?>" : "<?php print $_language->text('yesterday', 'strtolower', true); ?>"; 
					}else {
						dateText += type == "future" ? "<?php print $_language->text('tomorrow', 'strtolower', false); ?>" : "<?php print $_language->text('yesterday', 'strtolower', false); ?>"; 
					}
				}else {
					dateText = dateDay+dateSpace;
					if (length) {
						dateText += type == "future" ? "<?php print $_language->text('days_left', 'strtolower', true); ?>" : "<?php print $_language->text('days_ago', 'strtolower', true); ?>"; 
					}else {
						dateText += type == "future" ? "<?php print $_language->text('days_left', 'strtolower', false); ?>" : "<?php print $_language->text('days_ago', 'strtolower', false); ?>"; 
					}
				}
			}else if (dateWeek < 4) {
				dateText = dateWeek+dateSpace;
				if (length) {
					dateText += type == "future" ? "<?php print $_language->text('weeks_left', 'strtolower', true); ?>" : "<?php print $_language->text('weeks_ago', 'strtolower', true); ?>"; 
				}else {
					dateText += type == "future" ? "<?php print $_language->text('weeks_left', 'strtolower', false); ?>" : "<?php print $_language->text('weeks_ago', 'strtolower', false); ?>"; 
				}
			}else if (dateMonth < 12) {
				dateText = dateMonth+dateSpace;
				if (length) {
					dateText += type == "future" ? "<?php print $_language->text('months_left', 'strtolower', true); ?>" : "<?php print $_language->text('months_ago', 'strtolower', true); ?>"; 
				}else {
					dateText += type == "future" ? "<?php print $_language->text('months_left', 'strtolower', false); ?>" : "<?php print $_language->text('months_ago', 'strtolower', false); ?>"; 
				}
			}else {
				dateText = dateYear+dateSpace;
				if (length) {
					dateText += type == "future" ? "<?php print $_language->text('years_left', 'strtolower', true); ?>" : "<?php print $_language->text('years_ago', 'strtolower', true); ?>"; 
				}else {
					dateText += type == "future" ? "<?php print $_language->text('years_left', 'strtolower', false); ?>" : "<?php print $_language->text('years_ago', 'strtolower', false); ?>"; 
				}
			}
			return dateText;
		}
	},
	textarea: {
		autosize: function (selector, options) {
			var selector = _g.tool.is.selector(selector) ? selector : null,
				options = _g.tool.is.array(options) ? options : {};
				options.delay = _g.tool.is.number(options.delay) ? options.delay : 0,
				options.shift = _g.tool.is.bool(options.shift) ? options.shift : false,
				options.reset = _g.tool.is.bool(options.reset) ? options.reset : false;
			if (selector === null) {
				return;
			}
			selector.each(function () {
				var selectorThis = this;
				if (options.reset === true) {
					var minHeight = selectorThis.getAttribute('autosize-default-height');
					selectorThis.value = "";
					selectorThis.style.height = minHeight + 'px';
					return;
				}
				if (selectorThis.getAttribute('autosize') == "enabled") {
					return;
				}else {
					var selectorStyle = window.getComputedStyle(selectorThis, null);
					sizeDefaultHeight = parseInt(selectorStyle.height);
					if (typeof sizeDefaultHeight !== "number" || _g.tool.is.NaN(sizeDefaultHeight)) {
						sizeDefaultHeight = 18 * 2;
					}
					//.
					selectorThis.setAttribute('autosize', 'enabled');
					selectorThis.setAttribute('autosize-default-height', sizeDefaultHeight);
				}
				if (!isset(selectorThis.localName) || !inArray(selectorThis.localName, ['textarea'])) {
					return;
				}else {
					var fnInputAction = function (selector, event) {
						if (selector.getAttribute('autosize-keypress') != "true") {
							selector.setAttribute('autosize-keypress', 'true');
						}else {
							return;
						}
						if (typeof event === "undefined") {
							var keyCode = 0;
						}else {
							var keyCode = event.keyCode ? event.keyCode : event.charCode;
						}
						if (isset(selector.getAttribute('autosize-rows')) && typeof selector.getAttribute('autosize-rows') == "number") {
							var rows = selector.getAttribute('autosize-rows');
						}else {
							var rows = 0;
						}
						selectorStyle = window.getComputedStyle(selector, null);
						if (selector.getAttribute('autosize-style') === undefined || selector.getAttribute('autosize-style') === null) {
							cacheStyle = {
								'height': selectorStyle.height,
								'width': selectorStyle.width,
								'resize': selectorStyle.resize,
								'overflowY': selectorStyle.overflowY,
								'overflowX': selectorStyle.overflowX,
								'whiteSpace': selectorStyle.whiteSpace,
								'wordBreak': selectorStyle.wordBreak
							};
							selector.setAttribute('autosize-style', JSON.stringify(cacheStyle));
						}else {
							cacheStyle = selector.getAttribute('autosize-style');
							if (typeof cacheStyle === "string" && typeof JSON.parse(cacheStyle) === "object") {
								cacheStyle = JSON.parse(cacheStyle);
							}else {
								cacheStyle = {};
							}
						}
						selector.style.height = "auto";
						selector.style.resize = "none";
						selector.style.overflowY = "hidden";
						selector.style.overflowX = "hidden";
						newHeight = selector.scrollHeight;
						minHeight = selector.getAttribute('autosize-default-height');
						//.
						if (selector.value.split(/\r*\n/g).length == 1 && (new RegExp(/(^([\s]+)$)/ig).test(selector.value) || parseInt(selectorStyle.height) - (parseInt(selectorStyle.lineHeight) * selector.value.split(/\r*\n/g).length) > 0)) {
							selector.style.whiteSpace = "nowrap";
							selector.style.wordBreak = "break-word";
							newHeight = parseFloat(selectorStyle.height) - parseFloat(selectorStyle.lineHeight).toFixed(2);
						}else {
							if (typeof cacheStyle.whiteSpace !== "undefined") {
								selector.style.whiteSpace = cacheStyle.whiteSpace;
							}
							if (typeof cacheStyle.whiteSpace !== "undefined") {
								selector.style.wordBreak = cacheStyle.wordBreak;
							}
						}
						if (minHeight > newHeight) {
							newHeight = minHeight;
						}
						selector.style.height = newHeight + 'px';
						setTimeout(function () {
							selector.removeAttribute('autosize-keypress');
						}, 100);
					};
				}
				var fnInputPress = function (event) {
					var keyCode = event.keyCode? event.keyCode : event.charCode;
					if (options.shift === true && options.shift != event.shiftKey && keyCode != 8) {
						//. return false;
					}
					selector = this;
					if (selector.getAttribute('autosize') != "enabled") {
						return false;
					}
					if (options.delay === 0 || typeof options.delay !== "number") {
						fnInputAction(selector, event);
					}else {
						setTimeout(function () {
							fnInputAction(selector, event);
						}, options.delay);
					}
				};
				selectorThis.addEventListener("keyup", fnInputPress);
				fnInputAction(selectorThis);
			});
		}
	},
	autoload: function () {
		_g.tool.format = _g.tool.parse,
		_g.tool.parse_time = _g.tool.parse.time,
		_g.tool.parse_content = _g.tool.parse.content,
		_g.tool.format_date = _g.tool.parse.datetext,
		_g.tool.format_datetext = _g.tool.parse.datetext,
		_g.tool.format_datetip = _g.tool.parse.datetip,
		_g.tool.format_datetime = _g.tool.parse.datetime,
		_g.tool.format_bytes = _g.tool.parse.bytes;
		//.
	}
};
_g.tool.autoload();
var _is = _g.tool.is,
	_check = _g.tool.check,
	_selector = _g.tool.selector,
	_element = _g.tool.selector,
	_array = _g.tool.array,
	_object = _g.tool.array,
	_format = _g.tool.parse,
	_parse = _g.tool.parse,
	_string = _g.tool.string,
	_textarea = _g.tool.textarea,
	_input = _g.tool.textarea,
	_json = _g.tool.json;
_g.global = {
	setup: function (cb) {
		var cb = _is.function(cb) ? cb : function () {};
		if (_selector.count($("body > #gGlobal")) === 0) {
			$("#gGlobal").remove();
			$("body").append("<div id='gGlobal'></div>");
		}
		cb(true);
		return true;
	},
	append: function (code, cb) {
		var cb = _is.function(cb) ? cb : function () {};
		gGolobal = $("body > #gGlobal");
		if (gGolobal['length'] === 0) {
			_g.global.setup();
		}
		if (gGolobal['length'] === 0) {
			cb(false);
		}else {
			gGolobal.append(code);
			cb(true);
		}
	},
	autoload: function () {
		$(document).ready(function () {
			_g.global.setup();
		});
	}
};
var _global = _g.global;
_g.global.autoload();
_g.session = {
	key: function () {
		if (_is.var(readCookie("gCID")) && typeof readCookie("gCID") === "string") {
			if (typeof window[(readCookie("gCID")).toString()] === "undefined") {
				window[(readCookie("gCID")).toString()] = randomKeyString(20);
			}
			dataCacheHash = window[(readCookie("gCID")).toString()]; //. (readCookie("gCID")).toString();
		}else {
			dataCacheHash = "__gCache";
		}
		return dataCacheHash;
	},
	enable: function (cb) {
		var cb = _is.function(cb) ? cb : function () {};
		cb(true);
		return true;
	},
	ready: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		if (_g.session.exists('client_session_ready') === true)  {
			cb(_g.session.get('client_session_ready'));
		}else {
			var cbSetupFunc = function (value) {
				cb(value);
			};
			_g.session.setup(cbSetupFunc);
		}
	},
	setup: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		var setCacheStatus = function (value) {
			_g.session.add('client_session_ready', value);
			cb(value);
		};
		_g.session.enable(function (returnValue) {
			setCacheStatus(returnValue);
		});
	},
	show: function () {
		objCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			objCache = window[dataCacheHash];
		}
		console.log(objCache);
	},
	exists: function (name) {
		dataCacheHash = _g.session.key();
		objCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			objCache = window[dataCacheHash];
		}
		added = 0;
		loopData: for (cacheName in objCache) {
			cacheData = objCache[cacheName];
			if (_is.var(cacheName) && cacheName == name) {
				added++;
				break loopData;
			}
		}
		if (added === 0) {
			return false;
		}else {
			return true;
		}
	},
	new: function (name) {
		dataCacheHash = _g.session.key();
		objCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			objCache = window[dataCacheHash];
		}
		added = 0;
		loopData: for (cacheName in objCache) {
			cacheData = objCache[cacheName];
			if (_is.var(cacheName) && cacheName == name) {
				added++;
				break loopData;
			}
		}
		if (added === 0) {
			objCache[name] = null;
		}
		return true;
	},
	add: function (name, data) {
		return _g.session.set(name, data);
	},
	set: function (name, data) {
		dataCacheHash = _g.session.key();
		objCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			objCache = window[dataCacheHash];
		}
		added = 0;
		loopData: for (cacheName in objCache) {
			cacheData = objCache[cacheName];
			if (_is.var(cacheName) && _is.var(cacheData) && cacheName == name) {
				objCache[name] = data;
				added++;
				break loopData;
			}
		}
		if (added === 0) {
			objCache[name] = data;
		}
		window[dataCacheHash] = objCache;
		return true;
	},
	push: function (name, data) {
		dataCacheHash = _g.session.key();
		objCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			objCache = window[dataCacheHash];
		}
		loopData: for (cacheName in objCache) {
			cacheData = objCache[cacheName];
			if (_is.var(cacheName) && _is.var(cacheData) && cacheName == name) {
				if (_is.array(cacheData)) {
					for (x in data) {
						cacheData[x] = data[x];
					}
					window[dataCacheHash][cacheName] = cacheData;
				}else if (_is.var(cacheData) && (typeof cacheData === "string" || typeof cacheData === "number")) {
					cacheData += data;
					window[dataCacheHash][cacheName] = cacheData;
				}
				break loopData;
			}
		}
		return true;
	},
	get: function (name) {
		dataCacheHash = _g.session.key();
		objCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			objCache = window[dataCacheHash];
		}
		tCache = null;
		loopData: for (cacheName in objCache) {
			cacheData = objCache[cacheName];
			if (_is.var(cacheName) && _is.var(cacheData) && cacheName == name) {
				tCache = cacheData;
				break loopData;
			}
		}
		return tCache;
	},
	remove: function (name) {
		dataCacheHash = _g.session.key();
		objCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			objCache = window[dataCacheHash];
		}
		found = 0;
		loopData: for (cacheName in objCache) {
			cacheData = objCache[cacheName];
			if (_is.var(cacheName) && cacheName == name) {
				delete objCache[cacheName];
				delete window[dataCacheHash][cacheName];
				found++;
				break loopData;
			}
		}
		if (found === 0) {
			return false;
		}else {
			return true;
		}
	},
	autoload: function () {
		_g.session.ready(function (x) {
			console.log('session - enable: ' + x);
		});
	}
};
var _session = _g.session;
_g.session.autoload();
_g.cache = {
	key: function () {
		if (_is.string(readCookie("gCID"))) {
			dataCacheHash = (readCookie("gCID")).toString();
		}else {
			dataCacheHash = "__gCache";
		}
		return dataCacheHash;
	},
	enable: function (cb) {
		var cb = _is.function(cb) ? cb : function () {};
		if (_is.var(localStorage)) {
			cb(true);
			return true;
		}else {
			cb(false);
			return false;
		}
	},
	ready: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		if (_g.session.exists('client_cache_ready') === true)  {
			cb(_g.session.get('client_cache_ready'));
		}else {
			var cbSetupFunc = function (value) {
				cb(value);
			};
			_g.session.setup(cbSetupFunc);
		}
	},
	parse: {
		encode: function (data, cb) {
			data = _is.exists(data) ? data : null;
			var cb = _is.function(cb) ? cb : function () {};
			data = _json.encode(data);
			cb(data);
			return data;
		},
		decode: function (data, cb) {
			data = _is.exists(data) ? data : null;
			var cb = _is.function(cb) ? cb : function () {};
			data = _json.decode(data);
			cb(data);
			return data;
		}
	},
	data: {
		open: function (cb) {
			var cb = _is.function(cb) ? cb : function () {};
			dataCacheHash = _g.cache.key();
			objCache = _g.cache.parse.decode(localStorage[dataCacheHash]);
			if (!_is.array(objCache)) {
				objCache = {};
			}
			cb(objCache);
			return objCache;
		},
		close: function (data, cb) {
			data = _is.array(data) ? data : {};
			var cb = _is.function(cb) ? cb : function () {};
			dataCacheHash = _g.cache.key();
			localStorage[dataCacheHash] = _g.cache.parse.encode(data);
			cb(true);
			return true;
		}
	},
	setup: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		var setCacheStatus = function (value) {
			_g.session.add('client_cache_ready', value);
			cb(value);
		};
		_g.cache.enable(function (returnValue) {
			setCacheStatus(returnValue);
		});
	},
	exists: function (name, cb) {
		var cb = _is.function(cb) ? cb : function () {};
		_g.cache.data.open(function (objCache) {
			added = 0;
			loopData: for (cacheName in objCache) {
				cacheData = objCache[cacheName];
				if (_is.var(cacheName) && cacheName == name) {
					added++;
					break loopData;
				}
			}
			if (added === 0) {
				cb(false);
				return false;
			}else {
				cb(true);
				return true;
			}
		});
	},
	remove: function (name, cb) {
		var cb = _is.function(cb) ? cb : function () {};
		_g.cache.data.open(function (objCache) {
			objCache = null;
			_g.cache.data.close(objCache);
			cb(true);
			return true;
		});
	},
	new: function (name, cb) {
		var cb = _is.function(cb) ? cb : function () {};
		_g.cache.data.open(function (objCache) {
			added = 0;
			loopData: for (cacheName in objCache) {
				cacheData = objCache[cacheName];
				if (_is.var(cacheName) && cacheName == name) {
					added++;
					break loopData;
				}
			}
			if (added === 0) {
				objCache[name] = null;
			}
			_g.cache.data.close(objCache);
			cb(true);
			return true;
		});
	},
	add: function (name, data, cb) {
		return _g.cache.set(name, data, cb);
	},
	set: function (name, data, cb) {
		var cb = _is.function(cb) ? cb : function () {};
		_g.cache.data.open(function (objCache) {
			added = 0;
			loopData: for (cacheName in objCache) {
				cacheData = objCache[cacheName];
				if (_is.var(cacheName) && _is.var(cacheData) && cacheName == name) {
					objCache[name] = data;
					added++;
					break loopData;
				}
			}
			if (added === 0) {
				objCache[name] = data;
			}
			_g.cache.data.close(objCache);
			cb(true);
			return true;
		});
	},
	push: function (name, data, cb) {
		var cb = _is.function(cb) ? cb : function () {};
		_g.cache.data.open(function (objCache) {
			loopData: for (cacheName in objCache) {
				cacheData = objCache[cacheName];
				if (_is.var(cacheName) && _is.var(cacheData) && cacheName == name) {
					if (_is.var(cacheData) && typeof cacheData === "object") {
						for (x in data) {
							cacheData[x] = data[x];
						}
						localStorage[dataCacheHash][cacheName] = cacheData;
					}else if (_is.var(cacheData) && (typeof cacheData === "string" || typeof cacheData === "number")) {
						cacheData += data;
						localStorage[dataCacheHash][cacheName] = cacheData;
					}
					break loopData;
				}
			}
			_g.cache.data.close(objCache);
			cb(true);
			return true;
		});
	},
	get: function (name, cb) {
		var cb = _is.function(cb) ? cb : function () {};
		_g.cache.data.open(function (objCache) {
			tCache = null;
			loopData: for (cacheName in objCache) {
				cacheData = objCache[cacheName];
				if (_is.var(cacheName) && _is.var(cacheData) && cacheName == name) {
					tCache = cacheData;
					break loopData;
				}
			}
			_g.cache.data.close(objCache);
			cb(tCache);
			return tCache;
		});
	},
	remove: function (name, cb) {
		var cb = _is.function(cb) ? cb : function () {};
		_g.cache.data.open(function (objCache) {
			found = 0;
			loopData: for (cacheName in objCache) {
				cacheData = objCache[cacheName];
				if (_is.var(cacheName) && cacheName == name) {
					delete objCache[cacheName];
					delete localStorage[dataCacheHash][cacheName];
					found++;
					break loopData;
				}
			}
			_g.cache.data.close(objCache);
			if (found === 0) {
				cb(false);
				return false;
			}else {
				cb(true);
				return true;
			}
		});
	},
	autoclean: function () {
		console.log('cache - clean: true');
	},
	autoload: function () {
		_g.cache.ready(function (x) {
			console.log('cache - enable: ' + x);
			if (x) {
				_g.cache.autoclean();
			}
		});
	}
};
var _cache = _g.cache;
_g.cache.autoload();
_g.source = {
	append: function () {
		if ($("body > #gSource")['length'] === 0) {
			if ($("#gSource")['length'] > 0) {
				$("#gSource").remove();
			}
			$("body").append("<div id='gSource'></div>");
		}
		return true;
	},
	ready: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		if (_g.session.exists('client_source_ready') === true)  {
			cb(_g.session.get('client_source_ready'));
		}else {
			_g.source.setup(function (value) {
				cb(_g.source.append());
			});
		}
	},
	setup: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		setSourceStatus = function (value) {
			_g.session.add('client_source_ready', value);
			cb(value);
		};
		_g.source.recheck (function () {
			setSourceStatus(_g.source.append());
		});
	},
	recheck: function (cb) {
		var cb = _is.function(cb) ? cb : function () {};
		listLoaded = {};
		if (_g.session.exists('client_source_list') === true) {
			listLoaded = _g.session.get('client_source_list');
			if (!_is.array(listLoaded)) {
				listLoaded = {};
			}
		}
		$("script[src]").each(function () {
			fileThis = $(this);
			fileType = 'js';
			if (typeof fileThis.attr('src') !== "undefined") {
				fileContent = fileThis.attr('src');
			}else {
				fileContent = (fileThis.html()).hashCode();
			}
			fileHash = md5(fileType + ' :: content - ' + fileContent);
			listLoaded[fileHash] = {'type': fileType, 'content': fileContent};
		});
		$("link[href], style").each(function () {
			fileThis = $(this);
			fileType = 'css';
			if (typeof fileThis.attr('href') !== "undefined") {
				fileContent = fileThis.attr('href');
			}else {
				fileContent = (fileThis.html()).hashCode();
			}
			fileHash = md5(fileType + ' :: content - ' + fileContent);
			listLoaded[fileHash] = {'type': fileType, 'content': fileContent};
		});
		_g.session.add('client_source_list', listLoaded);
		cb(listLoaded);
		return listLoaded;
	},
	push: function (obj, cb) {
		obj = typeof obj === "object" ? obj : {};
		var cb = _is.function(cb) ? cb : function () {};
		_g.source.append();
		sourceBox = $("#gSource");
		_g.source.recheck(function (listLoaded) {
			if (!_is.var(obj['type']) || !_is.var(obj['src']) || !_is.var(obj['data'])) {
				cb(false);
				return false;
			}else {
				obj['content'] = (obj['data']).hashCode();
				obj['hash'] = md5(obj['type'] + ' :: content - ' + obj['content']);
				listLoadedLoop: for (fileHash in listLoaded) {
					fileObj = listLoaded[fileHash];
					if (fileObj['type'] == obj['type'] && fileObj['content'] == obj['hash']) {
						cb(true);
						return true;
						break listLoadedLoop;
					}
				}
			}
			isLoaded = false;
			randkey = randomKeyString(10);
			if (obj['type'] == "js") {
				sourceBox.append("<script type='text/javascript' randkey='" + randkey + "'></script>");
				eval(obj['data']);
				isLoaded = true;
			}else if (obj['type'] == "css") {
				sourceBox.append("<style type='text/css' rel='stylesheet' randkey='" + randkey + "'></style>");
				isLoaded = true;
			}
			sourceBox.children("[randkey='" + randkey + "']").removeAttr('randkey').html(obj['data']);
			if (isLoaded) {
				listLoaded[obj['hash']] = {'type': obj['type'], 'content': obj['content']};
				_g.session.add('client_source_list', listLoaded);
				cb(true);
				return true;
			}else {
				cb(false);
				return false;
			}
		});
	},
	load: function (obj, cb) {
		obj = typeof obj === "object" ? obj : {};
		var cb = _is.function(cb) ? cb : function () {};
		if (_is.var(obj['type']) && typeof obj['type'] === "string" && _is.var(obj['src']) && typeof obj['src'] === "string") {
			requestFile = function (listLoaded) {
				_g.xhr.use({
					'type': 'GET',
					url: obj['src'],
					datatype: 'text',
					cache: true,
					done: function (fileContent) {
						if (typeof fileContent === "string") {
							_g.source.push({'type': obj['type'], 'src': obj['src'], data: fileContent}, function (returnValue) {
								cb(returnValue);
							});
						}else {
							cb(false);
							return false;
						}
					}
				});
			};
			_g.source.recheck(requestFile);
		}else {
			cb(false);
			return false;
		}
	},
	autoload: function () {
		_g.source.ready(function (x) {
			console.log('source - enable: ' + x);
		});
	}
};
var _source = _g.source;
_g.source.autoload();
_g.ticktock = {
	ready: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		if (_g.session.exists('client_ticktock_ready') === true)  {
			allowValue = _g.session.get('client_ticktock_ready');
			cb(allowValue);
			delete allowValue;
		}else {
			cbSetupFunc = function (value) {
				allowValue = value;
				cb(allowValue);
				delete allowValue;
			};
			_g.ticktock.setup(cbSetupFunc);
			delete cbSetupFunc;
		}
	},
	setup: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		setTicktockStatus = function (value) {
			_g.session.add('client_ticktock_ready', value);
			cb(value);
			delete value;
		};
		var gSource = $("#gSource");
		if (gSource['length'] === 0) {
			$("body").append('<div id="gSource"></div>');
		}
		var audioLoaded = gSource.children("#audioLoaded");
		if (audioLoaded['length'] === 0) {
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
		var ticktockList = {};
		if (_g.session.exists('client_ticktock_list') === true) {
			ticktockList = _g.session.get('client_ticktock_list');
		}
		audioListLoop: for (var name in audioObj) {
			if (typeof ticktockList[name] === "undefined") {
				audioSource = {};
				if (_is.var(audioObj[name]['ogg']) && typeof audioObj[name]['ogg'] == "string") {
					audioSource['ogg'] = new Audio(audioObj[name]['ogg']);
				}else {
					audioSource['ogg'] = '';
				}
				if (_is.var(audioObj[name]['acc']) && typeof audioObj[name]['acc'] == "string") {
					audioSource['acc'] = new Audio(audioObj[name]['acc']);
				}else {
					audioSource['acc'] = '';
				}
				if (_is.var(audioObj[name]['mp3']) && typeof audioObj[name]['mp3'] == "string") {
					audioSource['mp3'] = new Audio(audioObj[name]['mp3']);
				}else {
					audioSource['mp3'] = '';
				}
				ticktockList[name] = audioSource;
			}
		}
		_g.session.set('client_ticktock_list', ticktockList);
		setTicktockStatus(true);
		delete audioObj;
	},
	play: function (name, volume) {
		if (typeof name !== "string") {
			return false;
		}else {
			if (typeof volume !== "number") {
				volume = 0.75;
			}
		}
		var ticktockList = {}, thisPlaySound = null;
		if (_g.session.exists('client_ticktock_list') === true) {
			ticktockList = _g.session.get('client_ticktock_list');
		}
		if (typeof ticktockList[name] === "object") {
			if (typeof ticktockList[name]['mp3'] === "object") {
				thisPlaySound = ticktockList[name]['mp3'];
			}else if (typeof ticktockList[name]['ogg'] === "object") {
				thisPlaySound = ticktockList[name]['ogg'];
			}else if (typeof ticktockList[name]['acc'] === "object") {
				thisPlaySound = ticktockList[name]['acc'];
			}
		}
		if (typeof thisPlaySound === "object") {
			thisPlaySound.volume = volume;
			thisPlaySound.play();
			return true;
		}
		return false;
	},
	autoload: function () {
		$(document).ready(function () {
			_g.ticktock.ready(function (x) {
				console.log('ticktock - enable: ' + x);
			});
		});
	}
};
var _ticktock = _g.ticktock;
_g.ticktock.autoload();
_g.loader = {
	add: function (object) {
		
	},
	remove: function (object) {
		
	}
};
var _loader = _g.loader;
_g.player = {
	use: function (id, options, player, callback) {
		player = typeof player === "function" ? player : function () {};
		callback = _is.function(callback) ? callback : function () {};
		_g.player.exists(function (returnValue) {
			if (returnValue) {
				player(gplayer(id, options, callback));
			}else if (!returnValue) {
				console.log('player not ready, will try agian');
				usePlayerLoop = function (c) {
					if (typeof c === "undefined") {
						c = 0;
					}
					c++;
					_g.player.exists(function (returnValue) {
						if (returnValue) {
							player(_g.player.use(id, options, callback));
						}else {
							if (c > 100) {
								console.log('player not ready, tried several times');
								return;
							}
							setTimeout(function () {
								usePlayerLoop(c);
							}, 100);
						}
					});
				};
				usePlayerLoop();
				return;
			}else {
				console.log('player maybe has error, try agian');
				return;
			}
		})
	},
	exists: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		if (typeof gplayer === "function") {
			cb(true);
			return true;
		}else {
			cb(false);
			return false;
		}
	},
	setup: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		setPlayerStatus = function (value) {
			_g.session.add('client_player_ready', value);
			cb(value);
		};
		_g.source.load({'type': 'js', 'src': '<?php print $_tool->links("source/js/templates/mediaplayer.js"); ?>'}, function (loadedJS) {
			if (_is.var(loadedJS) && _is.var(loadedJS['return']) && loadedJS['return'] === true) {
				//.
			}else {
				//.
			}
		});
		_g.source.load({'type': 'css', 'src': '<?php print $_tool->links("source/css/templates/mediaplayer.css"); ?>'}, function (loadedCSS) {
			if (_is.var(loadedCSS) && _is.var(loadedCSS['return']) && loadedCSS['return'] === true) {
				//.
			}else {
				//.
			}
		});
		setPlayerStatus(true);
	},
	ready: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		if (_g.session.exists('client_player_ready') === true)  {
			returnValue = _g.session.get('client_player_ready');
			cb(returnValue);
		}else {
			_g.player.setup(function (returnValue) {
				cb(returnValue);
			});
		}
	},
	autoload: function () {
		$(document).ready(function () {
			_g.player.ready(function (x) {
				console.log('player - enable: ' + x);
			});
		});
	}
};
var _player = _g.player;
_g.player.autoload();
_g.recorder = {
	setup: function (cb) {
		setRecorderStats = function (value) {
			_g.session.add('client_recorder_ready', value);
			cb(value);
		};
		navigator = window.navigator;
	  	navigator.getUserMedia = (navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia);
	  	navigator.getUserMedia({audio : true, video: true}, function () {
			_g.source.load({'type': 'js', 'src': '<?php print $_tool->links("source/js/templates/recorder.js"); ?>'}, function (loadedJS) {
				if (_is.var(loadedJS) && _is.var(loadedJS['return']) && loadedJS['return'] === true) {
					setRecorderStats(true);
				}else {
					setRecorderStats(false);
				}
			});
	  	}, function () {
	  		setRecorderStats(false);
	  	});
	},
	ready: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		if (_g.session.exists('client_recorder_ready') === true)  {
			allowValue = _g.session.get('client_recorder_ready');
			cb(allowValue);
		}else {
			cbSetupFunc = function (value) {
				allowValue = value;
				cb(allowValue);
			};
			_g.recorder.setup(cbSetupFunc);
		}
	},
	autoload: function () {
		$(document).ready(function () {
			_g.recorder.ready(function (x) {
				console.log('recorder - enable: ' + x);
			});
		});
	}
};
var _recorder = _g.recorder;
_g.ajaxrequest = {
	use: function (object, callback) {
		if (!_is.array(object)) {
			return false;
		}
		var callback = _is.function (callback) ? callback : function () {},
			requestType = _is.string(object['type']) ? object['type'] : 'POST',
			requestURL = _is.string(object['url']) ? object['url'] : '',
			requestUsername = _is.string(object['username']) || _is.number(object['username']) ? object['username'] : null,
			requestPassword = _is.string(object['password']) || _is.number(object['password']) ? object['password'] : null;
			requestAsync = _is.bool(object['async']) ? object['async'] : true,
			requestCache = _is.bool(object['cache']) ? object['cache'] : false,
			requestTimecache = _is.number(object['timecache']) ? object['timecache'] * 1000 : (60 * 5) * 1000,
			requestHeaders = _is.array(object['headers']) ? object['headers'] : {},
			requestDataProcess = _is.bool(object['dataprocess']) ? object['dataprocess'] : true,
			requestDelay = _is.number(object['delay']) ? object['delay'] : 0,
			requestDataType = _is.string(object['datatype']) ? object['datatype'] : '*',
			requestData = _is.var(object['data']) ? object['data'] : null,
			requestEvent = _is.array(object['event']) ? object['event'] : {},
			requestCrossdomain = _is.bool(object['crossdomain']) ? object['crossdomain'] : false,
			requestUpload = _is.array(object['upload']) ? object['upload'] : {},
			requestProgress = _is.function(object['progress']) ? object['progress'] : function () {},
			requestError = _is.function(object['error']) ? object['error'] : function () {},
			requestAbort = _is.function(object['abort']) ? object['abort'] : function () {},
			requestTimelimit = _is.number(object['timelimit']) ? object['timelimit'] : 0,
			requestTimeout = _is.function(object['timeout']) ? object['timeout'] : function () {},
			requestLoad = _is.function(object['load']) ? object['load'] : function () {},
			requestBefore = _is.function(object['before']) ? object['before'] : function () {},
			requestAfter = _is.function(object['after']) ? object['after'] : function () {},
			requestDone = _is.function(object['done']) ? object['done'] : function () {},
			requestCallback = _is.function(object['callback']) ? object['callback'] : function () {},
			requestRandkey = randomKeyString(10),
			requestVerify = "<?php if (isset($g_client['token']['action']['key']['obj']) && is_string($g_client['token']['action']['key']['obj'])) print $g_client['token']['action']['key']['obj']; else print "ObjRequest"; ?>",
			requestAjax = _g.ajaxrequest.create(),
			requestObj = typeof requestObj === 'object' ? requestObj : {},
			requestObj[requestRandkey] = requestAjax;
		if (!_is.exists(requestAjax)) {
			callback(false);
			return false;
		}
		eventLoop: for (var eventType in requestEvent) {
			var eventFunction = requestEvent[eventType];
			if (typeof eventFunction !== "function") {
				continue eventLoop;
			}
			_g.ajaxrequest.event(requestAjax, eventType, eventFunction);
		}
		uploadLoop: for (var uploadType in requestUpload) {
			var uploadFunction = requestUpload[uploadType];
			if (typeof uploadFunction !== "function") {
				continue uploadLoop;
			}
			_g.ajaxrequest.upload(requestAjax, uploadType, uploadFunction);
		}
		if (requestTimelimit > 0) {
			requestAjax['timeout'] = requestTimelimit;
			_g.ajaxrequest.event(requestAjax, 'timeout', requestTimeout);
		}
		if (requestAjax) {
			requestAjax['cache'] = true;
		}else {
			requestAjax['cache'] = false;
		}
		_g.ajaxrequest.event(requestAjax, 'progress', requestProgress);
		_g.ajaxrequest.event(requestAjax, 'error', requestError);
		_g.ajaxrequest.event(requestAjax, 'abort', requestAbort);
		_g.ajaxrequest.event(requestAjax, 'load', requestLoad);
		_g.ajaxrequest.event(requestAjax, 'loadstart', requestBefore);
		_g.ajaxrequest.event(requestAjax, 'loadend', requestAfter);
		var hasContentType = 0;
		for (var label in requestHeaders) {
			if ((label).toLowerCase == ("Content-Type").toLowerCase) {
				hasContentType++;
			}
		}
		var isGetFile = true;
		if (new RegExp(/(\.(ajax))$/i).test(requestURL)) {
			var isGetFile = false;
		}
		if (hasContentType === 0 && !isGetFile && requestDataProcess && _is.exists(requestData) && (!_is.string(requestData) && !_is.number(requestData))) {
			requestHeaders['content-type'] = "<?php print $_parameter->get('contentType_urlencoded.utf8'); ?>";
		}
		if (requestDataProcess === true && _is.exists(requestData) && (!_is.string(requestData) && !_is.number(requestData))) {
			var requestData = _g.ajaxrequest.dataparse(requestData);
		}
		if (requestType.toLowerCase() == "get") {
			requestAjax.open(requestType, _is.string(requestData) ? requestURL + '?' + requestData : requestURL, requestAsync, requestUsername, requestPassword);
		}else {
			requestAjax.open(requestType, requestURL, requestAsync, requestUsername, requestPassword);
		}
		if (!isGetFile && !requestCrossdomain) {
			requestHeaders['X-Requested-With'] = "XMLHttpRequest";
		}
		headersLoop: for (var headerType in requestHeaders) {
			requestAjax.setRequestHeader((headerType).ucwords(), requestHeaders[headerType]);
		}
		if (new RegExp("<?php print $_tool->links("source/ajax/action.ajax"); ?>".replace(<?php print $_parameter->get('regex_sites_giccos_domain'); ?>, ""), "ig").test(requestURL) === true) {
			requestAjax.setRequestHeader("Token", "<?php print $g_client['token']['ajax']; ?>");
			createCookie("gXHR_"+requestRandkey, "<?php if (isset($g_client['token']['action']['key']['cookie']) && is_string($g_client['token']['action']['key']['cookie'])) print $g_client['token']['action']['key']['cookie']; else print "CookieRequest"; ?>", <?php print $_parameter->get('ajax_request_limit_checktime'); ?>);
			requestAjax.setRequestHeader("Randkey", requestRandkey);
		}
		if (!_array.exists(requestDataType, ['*'])) {
			requestAjax['responseType'] = requestDataType;
		}
		_g.ajaxrequest.cache.clean();
		if (requestCache) {
			var requestCacheKey = requestType + '||' + requestURL + '||' +  requestData;
			_g.ajaxrequest.cache.exists(requestCacheKey, function (isCached) {
				if (isCached) {
					return _g.ajaxrequest.cache.get(requestCacheKey, function (requestCacheData) {
						var requestCacheReturn = _is.var(requestCacheData['return']) ? requestCacheData['return'] : null,
							requestCacheResponse = _is.var(requestCacheData['response']) ? requestCacheData['response'] : null,
							requestCacheReady = _is.var(requestCacheData['ready']) ? requestCacheData['ready'] : null;
						requestDone(requestCacheReturn, requestCacheResponse, requestCacheReady);
						callback(requestAjax, {'return': true});
						return requestAjax;
					});
				}
			});
			_g.ajaxrequest.done(requestAjax, function (requestReturn, requestResponse, requestReady) {
				_g.ajaxrequest.cache.push(requestCacheKey, {'return': requestReturn, 'response': requestResponse, 'ready': requestReady}, requestTimecache);
				requestDone(requestReturn, requestResponse, requestReady);
			});
		}else {
			_g.ajaxrequest.done(requestAjax, requestDone);
		}
		_g.ajaxrequest.send(requestAjax, requestDelay, requestData, callback);
		return requestAjax;
	},
	new: function (object, callback) {
		return _g.ajaxrequest.use(object, callback);
	},
	cache: { // local
		push: function (key, data, timeout, cb) {
			var key = _is.string(key) ? md5(key) : null,
				timenow = Math.floor(Date.now() / 1000),
				timeout = _is.number(timeout) ? timeout : (60 * 5) * 1000,
				data = _is.exists(data) ? data : null,
				cb = _is.function(cb) ? cb : function () {};
			if (!_is.exists(key)) {
				cb(false);
				return false;
			}else {
				var fnCachePush = function (arrCached, cb) {
					var cb = _is.function(cb) ? cb : function () {};
					arrCached[key] = {timeout: (timenow + timeout), data: data};
					_cache.set('client_ajaxrequest_cached', arrCached);
					cb(true);
					return true;
				};
				var ajaxRequestCached = {};
				_cache.exists('client_ajaxrequest_cached', function (isCached) {				
					if (isCached) {
						_cache.get('client_ajaxrequest_cached', function (dataCached) {
							var ajaxRequestCached = _is.array(dataCached) ? dataCached : {};
							return fnCachePush(ajaxRequestCached, cb);
						});
					}else {
						return fnCachePush(ajaxRequestCached, cb);
					}
				});
			}
		},
		get: function (key, cb) {
			var key = _is.string(key) ? md5(key) : null,
				cb = _is.function(cb) ? cb : function () {};
			if (!_is.exists(key)) {
				cb(false);
				return false;
			}else {
				var fnCacheGet = function (arrCached, cb) {
					var cb = _is.function(cb) ? cb : function () {};
					if (!_is.exists(arrCached, arrCached[key])) {
						cb(false);
						return false;
					}else {
						cb(arrCached[key]['data']);
						return arrCached[key]['data'];
					}
				};
				var ajaxRequestCached = {};
				_cache.exists('client_ajaxrequest_cached', function (isCached) {				
					if (isCached) {
						_cache.get('client_ajaxrequest_cached', function (dataCached) {
							var ajaxRequestCached = _is.array(dataCached) ? dataCached : {};
							return fnCacheGet(ajaxRequestCached, cb);
						});
					}else {
						return fnCacheGet(ajaxRequestCached, cb);
					}
				});
			}
		},
		exists: function (key, cb) {
			var key = _is.string(key) ? md5(key) : null,
				cb = _is.function(cb) ? cb : function () {};
			if (!_is.exists(key)) {
				cb(false);
				return false;
			}else {
				var fnCacheExists = function(arrCached, cb) {
					var cb = _is.function(cb) ? cb : function () {};
					if (!_is.exists(arrCached, arrCached[key])) {
						cb(false);
						return false;
					}else {
						cb(true);
						return true;
					}
				};
				var ajaxRequestCached = {};
				_cache.exists('client_ajaxrequest_cached', function (isCached) {				
					if (isCached) {
						_cache.get('client_ajaxrequest_cached', function (dataCached) {
							var ajaxRequestCached = _is.array(dataCached) ? dataCached : {};
							return fnCacheExists(ajaxRequestCached, cb);
						});
					}else {
						return fnCacheExists(ajaxRequestCached, cb);
					}
				});
			}
		},
		clean: function (cb) {
			var timenow = Math.floor(Date.now() / 1000),
				cb = _is.function(cb) ? cb : function () {};
			var fnCacheClean = function(arrCached, cb) {
				var cb = _is.function(cb) ? cb : function () {};
				for (var key in arrCached) {
					if (_is.exists(arrCached[key])) {
						if (_is.number(arrCached[key]['timeout'])) {
							if (arrCached[key]['timeout'] < timenow) {
								delete arrCached[key];
							}
						}else {
							delete arrCached[key];
						}
					}
				}
				_cache.set('client_ajaxrequest_cached', arrCached);
				cb(true);
				return true;
			};
			var ajaxRequestCached = {};
			_cache.exists('client_ajaxrequest_cached', function (isCached) {				
				if (isCached) {
					_cache.get('client_ajaxrequest_cached', function (dataCached) {
						var ajaxRequestCached = _is.array(dataCached) ? dataCached : {};
						return fnCacheClean(ajaxRequestCached, cb);
					});
				}else {
					return fnCacheClean(ajaxRequestCached, cb);
				}
			});
		}
	},
	state: function (request, code, cb) {
		if (!_is.array(request)) {
			return false;
		}
		var cb = _is.function(cb) ? cb : function () {};
		try {
			_g.ajaxrequest.statechange(request, function () {
				requestReady = undefined;
				_g.ajaxrequest.ready(request, function (requestReady) {
					if (requestReady['state'] === 4 && requestReady['status'] === code) {
						requestResponse = _g.ajaxrequest.response(request);
						if (!_is.exists(request['responseType'])) {
							requestReturn = _g.ajaxrequest.responseparse(requestDataType, requestResponse['data']);
						}else {
							requestReturn = request['response'];
						}
						cb(requestReturn, requestResponse, requestReady);
					}
				});
			});
			return true;
		} catch (e) {
			return false;
		}
	},
	done: function (request, cb) {
		if (!_is.array(request)) {
			return false;
		}
		var cb = _is.function(cb) ? cb : function () {};
		try {
			_g.ajaxrequest.statechange(request, function () {
				_g.ajaxrequest.ready(request, function (requestReady) {
					if (requestReady['state'] === 4) {
						var requestResponse = _g.ajaxrequest.response(request);
						if (!_is.exists(request['responseType'])) {
							var requestReturn = _g.ajaxrequest.responseparse(requestDataType, requestResponse['data']);
						}else {
							var requestReturn = request['response'];
						}
						cb(requestReturn, requestResponse, requestReady);
					}
				});
			});
			return true;
		} catch (e) {
			return false;
		}
	},
	send: function (request, timeout, data, cb) {
		if (!_is.array(request)) {
			return false;
		}
		var cb = _is.function(cb) ? cb : function () {};
		try {
			setTimeout(function () {
				request.send(_is.exists(data) ? data : null);
				cb(request, {'return': true});
			}, timeout);
			return true;
		} catch (e) {
			cb(request, {'return': false});
			return false;
		}
	},
	id: function (key) {
		//.
	},
	create: function () {
		var objXHR = false;
		if (window.XMLHttpRequest) {
			objXHR = new XMLHttpRequest();
		}else if (window.ActiveXObject) {
			try {
				objXHR = new ActiveXObject("Msxml2.XMLHTTP.6.0");
			} catch (e) {
				try{
					objXHR = new ActiveXObject("Msxml2.XMLHTTP.3.0");
				} catch (e) {
					//.
				}
			}
		}
		return objXHR;
	},
	dataparse: function (data, local) {
		local = _is.var(local) ? local : true;
		if (local && _array.count(data) > 0) {
			dataCaching = {};
			dataLoop: for (label in data) {
				if (inArray(label.toLowerCase(), ["port", "token", "type", "action"])) {
					//. data[label] = data[label];
				}else if (inArray(label.toLowerCase(), ["obj", "objrequest"])) {
					if (typeof data[label] !== "object") {
						continue dataLoop;
					}
					for (var sub in data[label]) {
						dataCaching[sub] = data[label][sub];
					}
					delete data[label];
				}else {
					dataCaching[label] = data[label];
					delete data[label];
				}
			}
			if (countArr(dataCaching) > 0) {
				data[requestVerify] = dataCaching;
			}
			delete dataCaching;
			if (typeof data['token'] === "undefined" && typeof data['port'] !== "undefined") {
				<?php
				if (isset($g_client['token']['action'])) {
					$listReplaceToken = null;
					foreach ($g_client['token']['action'] as $key => $tokenActionThis) {
						if (!in_array($key, ["key"])) {
							if ($listReplaceToken == null) {
								$listReplaceToken .= "if (data['port'] == '".$key."') { data['token'] = '".$tokenActionThis."';  }";
							}else {
								$listReplaceToken .= "else if (data['port'] == '".$key."') { data['token'] = '".$tokenActionThis."';  }";
							}
						}
					}
					print $listReplaceToken;
				}
				?>
			}
		}
	   	return _g.ajaxrequest.serialize(data);
	},
	serialize: function (obj, prefix) {
		var str = [];
		for (var p in obj) {
			if (obj.hasOwnProperty(p)) {
				var k = prefix ? prefix + "[" + p + "]" : p, v = obj[p];
				str.push(typeof v == "object" ? _g.ajaxrequest.serialize(v, k) : encodeURIComponent(k) + "=" + encodeURIComponent(v));
		    }
		}
		return str.join("&");
	},
	responseparse: function (type, data) {
		if (data === null) {
			return null;
		}
		if (type == "json" && isJSON(data)) {
			data = JSON.parse(data);
		}else if (type == "text") {
			data = data.toString();
		}
		return data;
	},
	statechange: function (request, cb) {
		if (!_is.array(request)) {
			return false;
		}
		var cb = _is.function(cb) ? cb : function () {};
		request.onreadystatechange = cb;
		return request;
	},
	ready: function (request, cb) {
		if (!_is.array(request)) {
			return false;
		}
		cb = _is.function(cb) ? cb : null;
		requestState = request.readyState ? request.readyState : false;
		requestStatus = request.status ? request.status : false;
		if (_is.function(cb)) {
			cb({'state': requestState, 'status': requestStatus});
		}
		return {'state': requestState, 'status': requestStatus};
	},
	response: function (request, type, cb) {
		if (!_is.array(request)) {
			return false;
		}
		type = typeof type === "string" ? type : null;
		cb = _is.function(cb) ? cb : null;
		if (type == "data") {
			responseObj = request.response ? request.response : false;
		}else if (type == "text") {
			responseObj = request.responseText ? request.responseText : null;
		}else if (type == "type") {
			responseObj = request.responseType ? request.responseType : null;
		}else if (type == "url") {
			responseObj = request.responseURL ? request.responseURL : null;
		}else if (type == "xml") {
			responseObj = request.responseXML ? request.responseXML : null;
		}else {
			responseObj = {};
			responseObj['data'] = _is.exists(request.response) ? request.response : null;
			responseObj['type'] = _is.exists(typeof request.responseType) ? request.responseType : null;
			responseObj['url'] = _is.exists(request.responseURL) ? request.responseURL : null;
			if (inArray(responseObj['type'], ['', 'document'])) {
				responseObj['text'] = _is.exists(request.responseText) ? request.responseText : null;
				responseObj['xml'] = _is.exists(request.responseXML) ? request.responseXML : null;
			}else {
				responseObj['text'] = responseObj['xml'] = null;
			}
		}
		if (_is.function(cb)) {
			cb(responseObj);
		}
		return responseObj;
	},
	upload: function (request, type, fn, sync) {
		if (!_is.array(request)) {
			return false;
		}
		type = typeof type === "string" ? type : null;
		fn = typeof fn === "function" ? fn : null;
		sync = typeof sync == "boolean" ? sync : false;
		if (type === null || fn === null) {
			return false;
		}
		return request.upload.addEventListener(type, fn, sync);
	},
	event: function (request, type, fn, sync) {
		if (!_is.array(request)) {
			return false;
		}
		type = typeof type === "string" ? type : null;
		fn = typeof fn === "function" ? fn : null;
		sync = typeof sync == "boolean" ? sync : false;
		if (type === null || fn === null) {
			return false;
		}
		return request.addEventListener(type, fn, sync);
	}
};
var _xhr = _g.xhr = _ajaxrequest = _g.ajaxrequest;
_g.ajaxify = {
	each: function () {
		var fnPushBind = function () {
			$("a[href]").each(function () {
				var elemThis = $(this);
				if (!_is.exists(elemThis.attr('target')) || _is.exists(elemThis.attr('target'))) {
					if (elemThis.attr('ajaxify-ready') == "true") {
						return;
					}else {
						if (elemThis.attr('ajaxify-handing') == "true") {
							return;
						}
						elemThis.attr('ajaxify-handing', 'true');
					}
					linkUrl = elemThis.attr('href');
					if (!_is.exists(linkUrl) || !(new RegExp(<?php print $_parameter->get('regex_sites_giccos_domain'); ?>)).test(linkUrl)) {
						return;
					}
					var actionClickFunc = function (e) {
						var elemThis = $(this);
						if (elemThis.attr('ajaxify-disabled') != "true") {
							e.stopPropagation();
							e.preventDefault();
							linkUrl = elemThis.attr('href');
							_g.ajaxify.request(linkUrl, function (value) {
								if (value === true) {
									//.
								}else {
									elemThis.attr('ajaxify-disabled', 'true');
								}
							});
						}
					};
					elemThis.bind('click', actionClickFunc);
					elemThis.attr('ajaxify-ready', 'true');
					elemThis.removeAttr('ajaxify-handing');
				}
			});
		};
		fnPushBind();
	},
	ready: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		if (_g.session.exists('client_ajaxify_ready') === true)  {
			cb(_g.session.get('client_ajaxify_ready'));
		}else {
			var cbSetupFunc = function (value) {
				cb(value);
			};
			_g.ajaxify.setup(cbSetupFunc);
		}
	},
	setup: function (cb) {
		if (!_is.function(cb)) {
			return false;
		}
		var setAjaxifyStatus = function (value) {
			_g.session.add('client_ajaxify_ready', value);
			cb(value);
		};
		_g.ajaxify.each();
		setAjaxifyStatus(true);
	},
	direct: function (url, target) {
		if (!_is.var(url)) {
			return false;
		}
		if (!_is.var(target)) {
			window.location.href = url;
		}else {
			window.open(url, target);
		}
		return true;
	},
	request: function (url, cb) {
		if (!_is.var(url) || !(new RegExp(<?php print $_parameter->get('regex_sites_giccos_domain'); ?>)).test(url)) {
			return false;
		}
		var cb = _is.function(cb) ? cb : function () {};
		keyEventLoad = randomKeyString(10);
		if (_g.session.exists('client_ajaxify_request_('+url+')') === true) {
			console.log(_g.session.remove('client_ajaxify_request_('+url+')'));
			console.log(url);
			return false;
		}
		var abortRequestFunc = fnRequestError = fnRequestDone = requestAction = undefined;
		var abortRequestFunc = function () {
			_g.loader.remove({'randkey': keyEventLoad});
			_g.session.remove('client_ajaxify_request_('+url+')');
			cb(false);
		};
		var fnRequestError = function () {
			_g.loader.remove({'randkey': keyEventLoad});
			_g.session.remove('client_ajaxify_request_('+url+')');
			cb(false);
		};
		var fnRequestDone = function (returnObj) {
			wrapperLoadRemoveOps = {};
			wrapperLoadRemoveOps['randkey'] = keyEventLoad;
			if (_is.var(returnObj)) {
				if (_is.var(returnObj) && _is.var(returnObj['return']) && returnObj['return'] === true) {
					if (_is.var(returnObj['data']) && typeof returnObj['data'] === "object" && countArr(returnObj['data']) > 0) {
						returnObj['data']['url'] = _is.var(returnObj['data']['url']) && typeof returnObj['data']['url'] === "string" ? returnObj['data']['url'] : url;
						pageData = returnObj['data'];
						wrapperLoadRemoveOps['callback'] = function () {
							_g.ajaxify.reload(pageData, function (resultArr) {
								_g.ajaxify.each();
								cb(true);
							});
						};
					}else {
						wrapperLoadRemoveOps['callback'] = function () {
							//_g.ajaxify.direct(url);
							cb(false);
						};
					}
				}else if (_is.var(returnObj) && _is.var(returnObj['return']) && returnObj['return'] === false) {
					if (_is.var(returnObj['reason'])) {
						wrapperLoadRemoveOps['callback'] = function () {
							//_g.ajaxify.direct(url);
							cb(false);
						};
					}else {
						wrapperLoadRemoveOps['callback'] = function () {
							//_g.ajaxify.direct(url);
							cb(false);
						};
					}
				}else {
					wrapperLoadRemoveOps['callback'] = function () {
						//_g.ajaxify.direct(url);
						cb(false);
					};
				}
				delete returnObj;
			}
			_g.loader.remove(wrapperLoadRemoveOps);
			_g.session.remove('client_ajaxify_request_('+url+')');
		};
		requestAction = _g.ajaxrequest.use({
			type: 'POST',
			url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			data: {'port': 'ajaxify', url: url},
			datatype: 'json',
			done: fnRequestDone,
			error: fnRequestError
		}, function (requestAction) {
			_g.loader.add({'randkey': keyEventLoad, 'closeCallback': function () {
				requestAction.abort();
			}, 'close': true});
			_g.session.new('client_ajaxify_request_('+url+')');
		});
	},
	loadwrapper: function (t, cb) {
		if (!_is.var(t) || typeof t !== "boolean" || !inArray(t, [true, false])) {
			return false;
		}
		var cb = _is.function(cb) ? cb : function () {};
		keyEventLoad = "ajaxify_loadwrapper";
		if (t === true) {
			var codeWrapper = "<div id='ajaxifyLoading' randkey='"+keyEventLoad+"'> <div class='loading'> <div class='boxLoading spinner'> <div class='cube c1'></div> <div class='cube c2'></div> </div> </div> </div>";
			var oldOverflowY = $("body").css('overflow-y');
			var oldOverflowX = $("body").css('overflow-x');
			$("body").css({'overflow-x': 'hidden', 'overflow-y': 'hidden'});
			_g.global.append(codeWrapper);
			var thisWrapper = $("#ajaxifyLoading[randkey='"+keyEventLoad+"']");
			dataCaching = {'style': {'body-overflow-y': oldOverflowY, 'body-overflow-x': oldOverflowX}};
			_g.session.add((thisWrapper['selector']).toString(), dataCaching);
			thisWrapper.hide().fadeIn(500, function () {
				cb(true);
			});
		}else {
			var thisWrapper = $("#ajaxifyLoading[randkey='"+keyEventLoad+"']");
			thisWrapper.fadeOut(500, function () {
				if (_g.session.exists((thisWrapper['selector']).toString()) === true) {
					dataCaching = _g.session.get((thisWrapper['selector']).toString());
					_g.session.remove((thisWrapper['selector']).toString());
				}else {
					dataCaching = {};
				}
				var oldOverflowY = _is.var(dataCaching) && _is.var(dataCaching['style']) && _is.var(dataCaching['style']['body-overflow-y']) ? dataCaching['style']['body-overflow-y'] : "auto";
				var oldOverflowX = _is.var(dataCaching) && _is.var(dataCaching['style']) && _is.var(dataCaching['style']['body-overflow-x']) ? dataCaching['style']['body-overflow-x'] : "auto";
				$(this).remove();
				$("body").css({'overflow-y': oldOverflowY, 'overflow-x': oldOverflowX});
				cb(true);
			});
		}
		return true;
	},
	reload: function (obj, cb) {
		if (!_is.var(obj)) {
			return false;
		}
		var cb = _is.function(cb) ? cb : function () {};
		if (!_is.var(obj['box']) && typeof obj['box'] !== "string") {
			cb({'return': false});
			return false;
		}
		logsArr = {};
		logsArr['file'] = {};
		endReloadBoxFunc = function (value) {
			if (_is.var(value) && value === true) {
				setTimeout(function () {
					_g.ajaxify.each();
				}, 250);
				cb({'return': true, 'logs': logsArr});
			}
		};
		beginReloadBoxFunc = function (value) {
			if (_is.var(value) && value === true) {
				if (_is.var(obj['html']) && typeof obj['html'] === "object") {
					loopPushhtml: for (var labelHtml in obj['html']) {
						valueHtml = obj['html'][labelHtml];
						if (typeof labelHtml === "string" && labelHtml != "") {
							$("html").attr(labelHtml, valueHtml);
						}
					}
				}
				if (_is.var(obj['title']) && typeof obj['title'] === "string") {
					$("title").text(obj['title']);
				}
				reloadPageFunc = function () {
					if (_is.var(obj['include']) && typeof obj['include'] === "object") {
						if (_is.var(obj['include']['css']) && typeof obj['include']['css'] === "object") {
							loopPushCss: for (var cssKey in obj['include']['css']) {
								cssThis = obj['include']['css'][cssKey];
								if (_is.var(cssThis) && _is.var(cssThis['src']) && typeof cssThis['src'] === "string" && cssThis['src'] != "") {
									loadFileSource('css', {'src': cssThis['src']}, function (loadFileThis) {
										if (_is.var(loadFileThis) && _is.var(loadFileThis['return']) && loadFileThis['return'] === true) {
											logsArr['file'][cssThis['src']] = {'status': 'loaded', 'type': 'css'};
										}else {
											logsArr['file'][cssThis['src']] = {'status': 'failed', 'type': 'css'};
										}
									});
								}else if (_is.var(cssThis) && _is.var(cssThis['text']) && typeof cssThis['text'] === "string" && cssThis['text'] != "") {
									loadFileSource('css', {'text': cssThis['text']});
								}else {
									continue loopPushCss;
								}
							}
						}
					}
					if (_is.var(obj['include']) && typeof obj['include'] === "object") {
						if (_is.var(obj['include']['script']) && typeof obj['include']['script'] === "object") {
							loopPushScript: for (var scriptKey in obj['include']['script']) {
								scriptThis = obj['include']['script'][scriptKey];
								if (_is.var(scriptThis) && _is.var(scriptThis['src']) && typeof scriptThis['src'] === "string" && scriptThis['src'] != "") {
									loadFileSource('js', {'src': scriptThis['src']}, function (loadFileThis) {
										if (_is.var(loadFileThis) && _is.var(loadFileThis['return']) && loadFileThis['return'] === true) {
											logsArr['file'][cssThis['src']] = {'status': 'loaded', 'type': 'js'};
										}else {
											logsArr['file'][cssThis['src']] = {'status': 'failed', 'type': 'js'};
										}
									});
								}else if (_is.var(scriptThis) && _is.var(scriptThis['text']) && typeof scriptThis['text'] === "string" && scriptThis['text'] != "") {
									loadFileSource('js', {'text': scriptThis['text']});
								}else {
									continue loopPushScript;
								}
							}
						}
					}
					pageIntro = null;
					pageTitle = _is.var(obj['title']) && typeof obj['title'] === "string" ? obj['title'] : null;
					pageUrl = _is.var(obj['url']) && typeof obj['url'] === "string" ? obj['url'] : null;
					history.pushState(pageIntro, pageTitle, pageUrl);
					setTimeout(function () {
						$("#gBox").removeAttr('class').removeAttr('style').animate({'opacity': 1}, function () {
							_g.ajaxify.each();
							_g.ajaxify.loadwrapper(false, endReloadBoxFunc);
							resizeTemplates();
						});
					}, 100);
				};
				$("#gBox").animate({'opacity': 0}, function () {
					$("#gBox").html(obj['box']);
					$("#gInclude").html('');
					reloadPageFunc();
				});
			}
		}
		$("body").animate({
			'scrollTop': 0
		}, 500, function () {
			_g.ajaxify.loadwrapper(true, beginReloadBoxFunc);
		});
	},
	autoload: function () {
		$(document).ready(function () {
			_g.ajaxify.ready(function (x) {
				console.log('ajaxify - enable: ' + x);
			});
		});
	}
};
var _ajaxify = _g.ajaxify;
_g.ajaxify.autoload();
_g.trash = {
	use: function (elem, callback) {
		elem = typeof elem === "object" ? elem : {};
		callback = _is.function(callback) ? callback : function (notificationElem) {};
		//.

	},
	cancel: function (elem, callback) {
		elem = typeof elem === "object" ? elem : {};
		callback = _is.function(callback) ? callback : function (notificationElem) {};
		//.

	},
	undo: function (elem, callback) {
		elem = typeof elem === "object" ? elem : {};
		callback = _is.function(callback) ? callback : function (notificationElem) {};
		//.
	},
};
var _trash = _g.trash;
_g.private = {
	obj: function (value, callback) {
		if (!_is.exists(value)) {
			return false;
		}else {
			var callback = typeof callback === 'function' ? callback : function () {};
		}
		var obj = {text: "", value: ""},
			value = _g.tool.string.lowercase(value);
		if (_array.exists(value, ['private'])) {
			var obj = {
				text: "<?php print $_language->text('only_me', 'strtolower'); ?>",
				value: "private"
			};
		}else if (_array.exists(value, ['friend', 'friends'])) {
			var obj = {
				text: "<?php print $_language->text('friends', 'strtolower'); ?>",
				value: "friends"
			};
		}else if (_array.exists(value, ['allfriend', 'allfriends'])) {
			var obj = {
				text: "<?php print $_language->text('all_friends', 'strtolower'); ?>",
				value: "allfriends"
			};
		}else if (_array.exists(value, ['public', 'everybody'])) {
			var obj = {
				text: "<?php print $_language->text('public', 'strtolower'); ?>",
				value: "public"
			};
		}
		callback(obj);
		return obj;
	},
	append: function (selector, object, callback)	 {
		if (!_is.array(selector) || !_is.array(object)) {
			return false;
		}else {
			var callback = typeof callback === 'function' ? callback : function () {};
		}
		type = _is.var(object['type']) && is_string(object['type']) && inArray(object['type'], ['replace', 'append', 'html']) ? object['type'] : "append";
		if (!_is.var(selector['length']) || selector['length'] === 0) {
			callback(false);
			return false;
		}else if (type === null) {
			callback(false);
			return false;
		}
		var privateKey = randomKeyString(10),
			privateClass = _is.var(object['classname']) && is_string(object['classname']) ? object['classname'] : "",
			privateValue = _is.var(object['value']) && (is_string(object['value']) || is_numeric(object['value'])) ? object['value'] : "",
			privateList = _is.var(object['list']) && _is.array(object['list']) ? object['list'] : {},
			privateAttr = _is.var(object['attr']) && _is.array(object['attr']) ? object['attr'] : [],
			privateThumbnail = _is.var(object['thumbnail']) && is_string(object['thumbnail']) ? object['thumbnail'] : "",
			privateIcon = _is.var(object['icon']) && is_string(object['icon']) ? object['icon'] : "",
			privateText = _is.var(object['text']) && is_string(object['text']) ? object['text'] : "",
			privateCode = "<div class='g-private-button' private-key='"+privateKey+"' private-class='"+privateClass+"' private-thumbnail='"+privateThumbnail+"' private-icon='"+privateIcon+"' private-text='"+privateText+"' private-value='"+privateValue+"'> <div class='main'></div> <div class='list'></div> </div>";
		if (type == "replace") {
			selector.replaceWith(privateCode);
		}else if (type == "append") {
			selector.append(privateCode);
		}else if (type == "html") {
			selector.html(privateCode);
		}
		var tabElem = $(".g-private-button[private-key='"+privateKey+"']");
		var fnTabChange = function (object, callback) {
			callback = _is.function (callback) ? callback : function () {};
			var privateClass = _is.var(object['classname']) && is_string(object['classname']) ? object['classname'] : "";
			var privateValue = _is.var(object['value']) && (is_string(object['value']) || is_numeric(object['value'])) ? object['value'] : "";
			var privateThumbnail = _is.var(object['thumbnail']) && is_string(object['thumbnail']) ? object['thumbnail'] : "";
			var privateIcon = _is.var(object['icon']) && is_string(object['icon']) ? object['icon'] : "";
			var privateText = _is.var(object['text']) && is_string(object['text']) ? object['text'] : "";
			if (privateClass !== "") {
				tabElem.addClass(privateClass);
			}
			if (tabElem.children(".main")['length'] === 0) {
				tabElem.append("<div class'main clearfix'></div>");
			}
			tabElem.children(".main").html("");
			if (privateThumbnail !== "") {
				tabElem.children(".main").append("<div class='thumbnail rows' style='background-image: url("+privateThumbnail+");'></div>");
			}
			if (privateIcon === "") {
				tabElem.children(".main").append("<div class='icon rows'> <div class='i'></div> </div>");
			}
			if (privateText !== "") {
				tabElem.children(".main").append("<div class='context rows'> <span class='text'>"+privateText+"</span> </div>");
			}
			tabElem.attr('private-class', privateClass).attr('private-thumbnail', privateThumbnail).attr('private-icon', privateIcon).attr('private-text', privateText).attr('private-value', privateValue);
			callback();
		};
		fnTabChange({
			classname: privateClass,
			value: privateValue,
			thumbnail: privateThumbnail,
			icon: privateIcon,
			text: privateText
		});
		if (tabElem.children(".list")['length'] === 0) {
			tabElem.append("<div class'list'></div>");
		}
		if (_is.var(privateList) && countArr(privateList) > 0) {
			if (tabElem.children(".list").children(".main").length === 0) {
				tabElem.children(".list").html("<div class='main'></div>");
			}
			for (listLabel in privateList) {
				listValue = privateList[listLabel];
				listRowKey = randomKeyString(10);
				listRowClass = _is.var(listValue['classname']) && is_string(listValue['classname']) ? listValue['classname'] : "";
				listRowValue = _is.var(listValue['value']) && (is_string(listValue['value']) || is_numeric(listValue['value'])) ? listValue['value'] : "";
				listRowThumbnail = _is.var(listValue['thumbnail']) && is_string(listValue['thumbnail']) ? listValue['thumbnail'] : "";
				listRowIcon = _is.var(listValue['icon']) && is_string(listValue['icon']) ? listValue['icon'] : "";
				listRowText = _is.var(listValue['text']) && is_string(listValue['text']) ? listValue['text'] : "";
				listRowCallback = _is.var(listValue['callback']) && is_function (listValue['callback']) ? listValue['callback'] : function () {};
				//.
				tabElem.children(".list").children(".main").append("<div class='li clearfix nowrap' private-choice-key='"+listRowKey+"' private-choice-class='"+listRowClass+"' private-choice-thumbnail='"+listRowThumbnail+"' private-choice-icon='"+listRowIcon+"' private-choice-text='"+listRowText+"' private-choice-value='"+listRowValue+"'></div>");
				var listRowElem = tabElem.children(".list").children(".main").children(".li[private-choice-key='"+listRowKey+"']");
				if (listRowClass !== "") {
					listRowElem.addClass(listRowClass);
				}
				if (listRowThumbnail !== "") {
					listRowElem.append("<div class='thumbnail rows' style='background-image: url("+listRowThumbnail+");'></div>");
				}
				if (listRowIcon === "") {
					listRowElem.append("<div class='icon rows'> <div class='i'></div> </div>");
				}
				if (listRowText !== "") {
					listRowElem.append("<div class='context rows'> <span class='text'>"+listRowText+"</span> </div>");
				}
				if (is_number(listRowValue)) {
					
				}else if (new RegExp(/^([a-zA-Z0-9]{32,40})$/).test(listRowValue)) {
					
				}else if (inArray(listRowValue, ['private', 'private'])) {
					listRowValue = "private";
				}else if (inArray(listRowValue, ['friend', 'friends'])) {
					listRowValue = "friends";
				}else if (inArray(listRowValue, ['allfriend', 'allfriends'])) {
					listRowValue = "allfriends";
				}else if (inArray(listRowValue, ['public', 'everybody'])) {
					listRowValue = "public";
				}else if (inArray(listRowValue, ['family'])) {
					listRowValue = "family";
				}else {
					//.
				}
				listRowElem.removeAttr('private-choice-key');
				listRowCallback(listRowElem, tabElem);
			}
		}else {
			tabElem.children(".list").html("<div class='null'> <div class='context'> <span class='text'>no selection</span> </div> </div>");
		}
		var fnTabListChoose = function () {
			tabElem.children(".list").children(".main").children(".li").bind('click', function () {
				listRowElem = $(this);
				fnTabChange({
					classname: listRowElem.attr('private-choice-class'),
					value: listRowElem.attr('private-choice-value'),
					thumbnail: listRowElem.attr('private-choice-thumbnail'),
					icon: listRowElem.attr('private-choice-icon'),
					text: listRowElem.attr('private-choice-text')
				}, function () {
					tabElem.removeClass('active').children(".list").slideUp();
				});
			});
		};
		var fnToggleActive = function () {
			tabElem.toggleClass('active');
			if (tabElem.hasClass('active')) {
				tabElem.children(".list").slideDown();
			}else {
				tabElem.children(".list").slideUp();
			}
		};
		var fnDisableClick = function (e) {
			stopEvent(e);
			return false;
		}
		for (attrLabel in privateAttr) {
			attrValue = privateAttr[attrLabel];
			if (_is.array(attrValue) && _is.exists(attrValue['label']) && _is.exists(attrValue['value'])) {
				tabElem.attr(attrValue['label'], attrValue['value']);
			}
		}
		tabElem.children(".main").bind('click', fnToggleActive);
		tabElem.children(".list").hide(fnTabListChoose);
		tabElem.hide().fadeIn();
		tabElem.children().bind('click', fnDisableClick);
		$(document).bind('click', function () {
			tabElem.removeClass('active').children(".list").slideUp();
		});
		callback(tabElem);
	}
};
var _private = _g.private;
_g.notification = {
	add: function (object, callback) {
		object = _is.object(object) ? object : {};
		callback = _is.function(callback) ? callback : function () {};
		//.
		notificationKey = randomKeyString(10);
		notificationClass = typeof object['classname'] === "string" ? object['classname'] : "";
		notificationType = typeof object['type'] === "string" ? object['type'] : "none";
		notificationTitleText = typeof object['title'] === "object" && typeof object['title']['text'] === "string" ? object['title']['text'] : "";
		notificationTitleLink = typeof object['title'] === "object" && typeof object['title']['link'] === "string" ? object['title']['link'] : "";
		notificationTitleTarget = typeof object['title'] === "object" && typeof object['title']['target'] === "string" ? object['title']['target'] : "";
		notificationContent = typeof object['content'] === "string" ? object['content'] : "";
		notificationNoteText = typeof object['note'] === "object" && typeof object['note']['text'] === "string" ? object['note']['text'] : "";
		notificationNoteLink = typeof object['note'] === "object" && typeof object['note']['link'] === "string" ? object['note']['link'] : "";
		notificationNoteTarget = typeof object['note'] === "object" && typeof object['note']['target'] === "string" ? object['note']['target'] : "";
		notificationClose = typeof object['close'] === "boolean" ? object['close'] : true;
		notificationCollapse = typeof object['collapse'] == "boolean" ? object['collapse'] : false;
		notificationTimeout = typeof object['timeout'] == "number" ? object['timeout'] : 0;
		//.
		notificationCode = "<div class='notification-li card "+notificationType+" "+notificationClass+"' notification-key='"+notificationKey+"'> <div class='header'> <div class='action'> <div class='icon close'></div> </div> <div class='title'> <a class='text'>"+notificationTitleText+"</a> </div> </div> <div class='body'> <div class='main'> "+notificationContent+" </div> </div> <div class='footer'> <div class='note'> <a class='text'>"+notificationNoteText+"</a> </div> </div> </div>";
		if ($("#gGlobal > .g-notification")['length'] === 0 || $("#gGlobal > .g-notification > .notification-content")['length'] === 0) {
			$("#gGlobal > .g-notification").remove();
			$("#gGlobal").append("<div class='g-notification'> <div class='notification-content'></div> </div>");
		}
		var notificationTab = $("#gGlobal > .g-notification");
		if (notificationTab.children(".notification-content").children(".notification-li.card")['length'] === 0) {
			notificationTab.children(".notification-content").append(notificationCode);
		}else {
			notificationTab.children(".notification-content").children(".notification-li.card").first().before(notificationCode);
		}
		var notificationElem = notificationTab.find(".notification-li.card[notification-key='"+notificationKey+"']");
		var fnNotificationCloseAction = function () {
			_g.notification.close(notificationElem);
		};
		var fnNotificationCloseAlert = function () {
			fnNotificationCloseAction();
		};
		if (!notificationClose) {
			notificationElem.find(".header > .action .close").remove();
		}else {
			notificationElem.find(".header > .action .close").bind('click', fnNotificationCloseAlert);
		}
		if (!notificationCollapse) {
			//.
		}else {
			notificationElem.addClass('collapse');
			notificationElem.find(".body > .main").bind('dblclick', function () {
				notificationElem.removeClass('collapse');
			});
		}
		if (notificationTimeout === 0) {
			notificationElem.addClass('pin');
		}else {
			setTimeout(function () {
				_g.notification.close(notificationElem);
			}, notificationTimeout);
		}
		if (notificationTitleLink != "") {
			notificationElem.find(".header > .title .text").attr('href', notificationTitleLink);
			if (notificationTitleTarget != "") {
				notificationElem.find(".header > .title .text").attr('target', notificationTitleTarget);
			}
		}
		if (notificationNoteText == "") {
			notificationElem.addClass('not-note');
		}else {
			if (notificationNoteLink != "") {
				notificationElem.find(".header > .title .text").attr('href', notificationNoteLink);
				if (notificationNoteTarget != "") {
					notificationElem.find(".header > .title .text").attr('target', notificationNoteTarget);
				}
			}
		}
		notificationElemHeight = notificationElem.height();
		notificationElem.stop(true, true).show().height(0).height(notificationElemHeight).removeAttr('notification-key');
		callback(notificationElem);
	},
	close: function (notificationElem, callback) {
		notificationElem = typeof notificationElem === "object" ? notificationElem : {};
		callback = _is.function(callback) ? callback : function () {};
		//.
		if (notificationElem['length'] > 0) {
			notificationElem.height(0).fadeOut(function () {
				notificationElem.remove();
				callback();
			});
		}
	}
};
var _notification = _g.notification;
_g.image = {
	upload: function (file, callback, upload) {
		if (typeof file !== 'object') {
			return false;
		}else {
			var callback = typeof callback === 'function' ? callback : function () {};
			var upload = typeof upload === 'object' ? upload : {};
		}
		if (_is.var(file) && _is.var(file['append']) && typeof file['append'] === 'function') {
			var data = file;
		}else {
			var data = new FormData();
			data.append('port', 'image');
			data.append('token', '<?php print $g_client['token']['action']['image']; ?>');
			data.append('type', 'file');
			data.append('action', 'add');
			if (_is.exists(file[0])) {
				for (i in file) {
					data.append('image[]', file[i], file[i]['name']);
				}
			}else {
				data.append('image[]', file, file['name']);
			}
		}
		var imageUploadAction = _g.xhr.use({
			type: 'POST',
			url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			data: data,
			dataprocess: false,
			datatype: 'json',
			upload: upload,
			done: function (data) {
				data = _is.array(data) ? data : {};
				callback(data);
			},
			error: function () {
				callback({'return': false, 'reason': ''});
			}
		});
		if (imageUploadAction) {
			var imageUploadAction = undefined;
			var data = undefined;
		}
	},
	infoeditor : function (object, callback) {
		if (typeof object !== 'object') {
			return false;
		}else {
			var callback = typeof callback === 'function' ? callback : function () {};
		}
		imageLabel = _is.var(object['label']) && is_string(object['label']) ? object['label'] : "";
		imageValue = _is.var(object['value']) && is_string(object['value']) ? object['value'] : "";
		if (!inArray(imageLabel, ['id', 'display'])) {
			callback({'return': false, 'reason': ''});
		}
		_g.popup.add({
			classname: "image-info-input",
			title: "information",
			content: "<div class='null'> <!--<div class='icon'></div>--> <div class='progress'> <div class='navload'></div> </div> <span class='text'>data information loading...</span> </div>",
			note: "file "+imageLabel+": " + imageValue,
			close: true
		}, function (popupElem) {
			var mainImageInfo = popupElem.find(".main");
			//.
			_g.notification.add({
				type: "image",
				title: {
					text: "information is being getting"
				},
				content: "Information is being getting, please wait. <br> File "+imageLabel+": "+imageValue+".",
				timeout: 5000,
				close: true
			}, function (notificationTab) {
				_g['image'].get({'row': 'id', 'label': imageLabel, 'value': imageValue}, function (returnObj) {
					_g.notification.close(notificationTab);
					if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['data']) && returnObj['return']) {
						imageInfoObj = returnObj['data'][0];
						var fnInfoUpdate = function (object, callack) {
							object = _is.array(object) ? object : {};
							callback = _is.function (callback) ? callback : function () {};
							var data = {
								port: 'image',
								type: 'id',
								action: 'update',
								row: {},
								label: null,
								value: null
							};
							data.row = _is.array(object['row']) ? object['row'] : {};
							data.label = _is.string(object['label']) ? object['label'] : null;
							data.value = _is.string(object['value']) ? object['value'] : null;
							var infoUpdateAction = _g.xhr.use({
								type: 'POST',
								url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
								data: data,
								datatype: 'json',
								done: function (data) {
									data = _is.array(data) ? data : {};
									callback(data);
								},
								error: function () {
									callback({'return': false, 'reason': ''});
								}
							});
							if (infoUpdateAction) {
								var infoUpdateAction = undefined;
								var data = undefined;
							}
						};
						var fnSetFromInfo = function (object, callback) {
							object = _is.array(object) ? object : {};
							callback = _is.function (callback) ? callback : function () {};
							//.
							tabFixedLocal = "<div class='rows local'> <div class='label'><span class='text'>local</span></div> <div class='value'>-</div> </div>";
							tabFixedMime = "<div class='rows mime'> <div class='label'><span class='text'>mime</span></div> <div class='value'>-</div> </div>";
							tabFixedExpires = "<div class='rows expires'> <div class='label'><span class='text'>expires</span></div> <div class='value'>-</div> </div>";
							tabPrivateView = "<div class='rows private_view'> <div class='label'><span class='text'>view</span></div> <div class='value'>-</div> </div>";
							tabPrivateComment = "<div class='rows private_comment'> <div class='label'><span class='text'>comment</span></div> <div class='value'>-</div> </div>";
							tabPrivateShare = "<div class='rows private_share'> <div class='label'><span class='text'>share</span></div> <div class='value'>-</div> </div>";
							tabPrivateExif = "<div class='rows private_exif'> <div class='label'><span class='text'>exif</span></div> <div class='value'>-</div> </div>";
							tabPrivateCopyright = "<div class='rows copyright'> <div class='label'><span class='text'>copyright</span></div> <div class='value'>-</div> </div>";
							tabInfoName = "<div class='rows name' info-label='name'> <div class='label'><span class='text'>name</span></div> <div class='value'><input class='input' type='text' placeholder='name of image'></div> </div>";
							tabInfoDescription = "<div class='rows description' info-label='description'> <div class='label'><span class='text'>description</span></div> <div class='value'><textarea class='input' type='text' placeholder='descriptions of image'></textarea></div> </div>";
							tabInfoLocation = "<div class='rows location' info-label='location'> <div class='label'><span class='text'>location</span></div> <div class='value'><input class='input' type='text' placeholder='location name created image'></div> </div>";
							tabInfoTag = "<div class='rows tag' info-label='tag'> <div class='label'><span class='text'>tag</span></div> <div class='value'><textarea class='input' type='text' placeholder='tags of image (separated by space)'></textarea></div> </div>";
							tabOptionMultiple = "<div class='rows multiple'> <div class='label'><span class='text'>multiple</span></div> <div class='value'>-</div> </div>";
							tabOptionKeep = "<div class='rows keep'> <div class='label'><span class='text'>keep</span></div> <div class='value'>-</div> </div>";
							tabActionCancel = "<div class='rows inline cancel'> <div class='value'><div class='button submit _button'>cancel</div></div> </div>";
							tabActionSave = "<div class='rows inline save'> <div class='value'><div class='button submit _button'>save</div></div> </div>";
							//.
							mainImageInfo.html("<div class='tab fixed'> <div class='title'><span class='text'>fixed</span></div> <div class='content'>"+tabFixedLocal+tabFixedMime+tabFixedExpires+"</div> </div>  <div class='tab private'> <div class='title'><span class='text'>private</span></div> <div class='content'>"+tabPrivateView+tabPrivateComment+tabPrivateShare+tabPrivateExif+tabPrivateCopyright+"</div> </div> <div class='tab info'> <div class='title'><span class='text'>information</span></div> <div class='content'>"+tabInfoName+tabInfoDescription+tabInfoLocation+tabInfoTag+"</div> </div> <div class='tab option'> <div class='title'><span class='text'>options</span></div> <div class='content'>"+tabOptionMultiple+tabOptionKeep+"</div> </div> <div class='tab action'> <!--<div class='title'><span class='text'>action</span></div>--> <div class='content'>"+tabActionSave+tabActionCancel+"</div> </div>");
							//.
							if (_is.exists(object['local']) && is_string(object['local']) && object['local'] !== "") {
								mainImageInfo.find(".tab .rows.local").children(".value").fadeOut(function () {
									$(this).html("<span class='text'>"+object['local']+"</span>").fadeIn();
								});
							}
							if (_is.exists(object['mime']) && is_string(object['mime']) && object['mime'] !== "") {
								mainImageInfo.find(".tab .rows.mime").children(".value").fadeOut(function () {
									$(this).html("<span class='text'>"+object['mime']+"</span>").fadeIn();
								});
							}
							if (_is.exists(object['expires'])) {
								object['expires'] = Number(object['expires']);
							}
							if (_is.exists(object['expires']) && is_number(object['expires']) && object['expires'] !== "") {
								mainImageInfo.find(".tab .rows.expires").children(".value").fadeOut(function () {
									$(this).html("<span class='text'>"+(object['expires'] === 0 ? "saved to cache" : _g.tool.parse_datetime(object['expires']))+"</span>").fadeIn();
								});
							}
							privateListAllow = [
								{
									classname: '',
									value: 'private',
									text: 'private',
								},
								{
									classname: '',
									value: 'friends',
									text: 'friends',
								},
								{
									classname: '',
									value: 'allfriends',
									text: 'all friends',
								},
								{
									classname: '',
									value: 'public',
									text: 'public',
								}
							];
							object['private.view'] = object['private.comment'] = object['private.share'] = object['private.exif'] = "private";
							if (_is.exists(object['private.view']) && object['private.view'] !== "") {
								mainImageInfo.find(".tab .rows.private_view").children(".value").fadeOut(function () {
									rowPrivateViewElem = $(this);
									objPrivateView = _g.private.obj(object['private.view']);
									_g.private.append(rowPrivateViewElem, {
										type: 'replace',
										classname: 'value',
										attr: [{'label': 'info-value', 'value': ''}],
										value: (_is.exists(objPrivateView) && _is.exists(objPrivateView['value']) ? objPrivateView['value'] : ""),
										text: (_is.exists(objPrivateView) && _is.exists(objPrivateView['text']) ? objPrivateView['text'] : ""),
										list: privateListAllow
									});
								}).fadeIn();
							}
							if (_is.exists(object['private.comment']) && object['private.comment'] !== "") {
								mainImageInfo.find(".tab .rows.private_comment").children(".value").fadeOut(function () {
									rowPrivateViewElem = $(this);
									objPrivateView = _g.private.obj(object['private.comment']);
									_g.private.append(rowPrivateViewElem, {
										type: 'replace',
										classname: 'value',
										attr: [{'label': 'info-value', 'value': ''}],
										value: (_is.exists(objPrivateView) && _is.exists(objPrivateView['value']) ? objPrivateView['value'] : ""),
										text: (_is.exists(objPrivateView) && _is.exists(objPrivateView['text']) ? objPrivateView['text'] : ""),
										list: privateListAllow
									});
								}).fadeIn();
							}
							if (_is.exists(object['private.share']) && object['private.share'] !== "") {
								mainImageInfo.find(".tab .rows.private_share").children(".value").fadeOut(function () {
									rowPrivateViewElem = $(this);
									objPrivateView = _g.private.obj(object['private.share']);
									_g.private.append(rowPrivateViewElem, {
										type: 'replace',
										classname: 'value',
										attr: [{'label': 'info-value', 'value': ''}],
										value: (_is.exists(objPrivateView) && _is.exists(objPrivateView['value']) ? objPrivateView['value'] : ""),
										text: (_is.exists(objPrivateView) && _is.exists(objPrivateView['text']) ? objPrivateView['text'] : ""),
										list: privateListAllow
									});
								}).fadeIn();
							}
							if (_is.exists(object['private.exif']) && object['private.exif'] !== "") {
								mainImageInfo.find(".tab .rows.private_exif").children(".value").fadeOut(function () {
									rowPrivateViewElem = $(this);
									objPrivateView = _g.private.obj(object['private.exif']);
									_g.private.append(rowPrivateViewElem, {
										type: 'replace',
										classname: 'value',
										attr: [{'label': 'info-value', 'value': ''}],
										value: (_is.exists(objPrivateView) && _is.exists(objPrivateView['value']) ? objPrivateView['value'] : ""),
										text: (_is.exists(objPrivateView) && _is.exists(objPrivateView['text']) ? objPrivateView['text'] : ""),
										list: privateListAllow
									});
								}).fadeIn();
							}
							if (_is.exists(object['nameraw']) && is_string(object['nameraw']) && object['nameraw'] !== "") {
								mainImageInfo.find(".tab .rows.name").children(".value").fadeOut(function () {
									$(this).children(".input").val(object['nameraw']);
								}).fadeIn();
							}
							if (_is.exists(object['description']) && is_string(object['description']) && object['description'] !== "") {
								mainImageInfo.find(".tab .rows.description").children(".value").fadeOut(function () {
									$(this).children(".input").val(object['description']);
								}).fadeIn();
							}
							_textarea.autosize(mainImageInfo.find(".tab .rows.description > .value > .input"));
							if (_is.exists(object['location']) && object['location'] !== "") {
								if (is_number(object['location']) || new RegExp(/^([0-9]+)$/).test(object['location'])) {
									//.
								}else if (is_string(object['location'])) {
									mainImageInfo.find(".tab .rows.location").children(".value").fadeOut(function () {
										$(this).children(".input").val(object['location']);
									}).fadeIn();
								}
							}
							mainImageInfo.find(".tab .rows.location").children(".value").children(".input").bind('keyup', function () {
								var inputLocationElem = $(this);
								if (inputLocationElem.attr('search-keyword') == inputLocationElem.val()) {
									return;
								}
								$(this).attr('search-keyword', inputLocationElem.val());
								_maps.search({
									'type': 'place',
									'keyword': inputLocationElem.val()
								}, function (returnObj) {
									if (_is.exists(returnObj, returnObj['return'], returnObj['data']) && returnObj['return']) {
										var searchLocationObj = {};
											searchLocationObj['title'] = "Places";
											searchLocationObj['content'] = {};
											// searchLocationObj['content'][inputLocationElem.val()] = returnObj['data'];
											searchLocationObj['note'] = "Giccos Search";
										for (var i in returnObj['data']) {
											var mapsPlacesRow = returnObj['data'][i];
											searchLocationObj['content'][inputLocationElem.val()] = _is.array(searchLocationObj['content'][inputLocationElem.val()]) ? searchLocationObj['content'][inputLocationElem.val()] : [];
											searchLocationObj['content'][inputLocationElem.val()][_array.count(searchLocationObj['content'][inputLocationElem.val()])] = {
												'title': mapsPlacesRow['name'],
												'description': mapsPlacesRow['address'],
												'thumbnail': mapsPlacesRow['thumbnail']
											};
										}
										_listchoose.append(inputLocationElem, searchLocationObj);
									}else if (_is.exists(returnObj, returnObj['return'], returnObj['reason']) && !returnObj['return']) {
										//
									}else {
										//
									}
								});
							}, 500);
							if (_is.exists(object['tag']) && is_string(object['tag']) && object['tag'] !== "") {
								mainImageInfo.find(".tab .rows.tag").children(".value").fadeOut(function () {
									$(this).children(".input").val(object['tag']);
								}).fadeIn();
							}
							if (_is.exists(object['multiple']) && is_string(object['multiple']) && object['multiple'] !== "") {
								mainImageInfo.find(".tab .rows.multiple").children(".value").fadeOut(function () {
									$(this).attr('value', (_array.exists(object['multiple'], [1, '1', true, 'true'])) ? "yes" : "no").html("<div class='icon'></div>");
									_g.tooltip.set($(this).children(".icon"), {
										arrow: "e",
										action: "hover",
										content: (_array.exists(object['multiple'], [1, '1', true, 'true'])) ? "created multiple size different images" : "not create another image"
									});
								}).fadeIn();
							}
							if (_is.exists(object['keep']) && is_string(object['keep']) && object['keep'] !== "") {
								mainImageInfo.find(".tab .rows.keep").children(".value").fadeOut(function () {
									$(this).attr('value', (_array.exists(object['keep'], [1, '1', true, 'true'])) ? "yes" : "no").html("<div class='icon'></div>");
									_g.tooltip.set($(this).children(".icon"), {
										arrow: "e",
										action: "hover",
										content: (_array.exists(object['keep'], [1, '1', true, 'true'])) ? "archived original image" : "image no original copy"
									});
								}).fadeIn();
							}
							callback(mainImageInfo);
						};
						var fnInfoEach = function (callback) {
							callback = _is.function (callback) ? callback : function () {};
							obj = {};
							mainImageInfo.find(".tab .rows[info-label]").each(function () {
								var rowsInfoElem = $(this),
									rowsInfoLabel = _is.exists(rowsInfoElem.attr('info-label')) ? rowsInfoElem.attr('info-label') : null;
								if (_array.exists(rowsInfoLabel, ['name', 'description', 'tag'])) {
									rowsInfoValue = rowsInfoElem.children(".value").children(".input").val();
									obj[rowsInfoLabel] = rowsInfoValue;
								}else if (_array.exists(rowsInfoLabel, ['location'])) {
									if (_is.exists(rowsInfoElem.children(".value").children(".input").attr('disabled'))) {
										rowsInfoValue = "xx";
									}else {
										rowsInfoValue = rowsInfoElem.children(".value").children(".input").val();
									}
									obj[rowsInfoLabel] = rowsInfoValue;
								}
							});
							//.
							callback(obj);
							return obj;
						};
						mainImageInfo.fadeOut(function () {
							fnSetFromInfo(imageInfoObj, function (mainImageInfo) {
								mainImageInfo.find(".tab.action .rows.cancel").find(".value > .submit").bind('click', function (e) {
									if (mainImageInfo.attr('information-changed') == "true") {
										stopEvent(e);
										return;
									}
									_g.popup.close(popupElem);
								});
								mainImageInfo.find(".tab.action .rows.save").find(".value > .submit").bind('click', function () {
									fnInfoEach(function (xx) {
										console.log(xx);
									});
									// fnInfoUpdate({}, function () {});
								});
								mainImageInfo.css({'max-height': ($(window).height() / 10 * 7) + 'px'});
							});
						}).fadeIn();
					}else if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['reason']) && !returnObj['return']) {
						console.log('error: #');
					}
				});
			});
		});
	},
	get: function (object, callback) {
		if (typeof object !== 'object') {
			return false;
		}else {
			var callback = typeof callback === 'function' ? callback : function () {};
		}
		imageRow = _is.var(object['row']) && is_string(object['row']) ? object['row'] : "";
		imageLabel = _is.var(object['label']) && is_string(object['label']) ? object['label'] : "";
		imageValue = _is.var(object['value']) && is_string(object['value']) ? object['value'] : "";
		if (!inArray(imageRow, ["id", "raw"])) {
			callback({'return': false, 'reason': ''});
			return false;
		}
		var data = {};
		data['port'] = 'image';
		data['type'] = 'file';
		data['action'] = 'get';
		data['row'] = imageRow;
		data['label'] = imageLabel;
		data['value'] = imageValue;
		var imageGetAction = _g.xhr.use({
			type: 'POST',
			url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			data: data,
			datatype: 'json',
			upload: {},
			done: function (data) {
				data = _is.array(data) ? data : {};
				callback(data);
			},
			error: function () {
				callback({'return': false, 'reason': ''});
			}
		});
		if (imageUploadAction) {
			var imageUploadAction = undefined;
			var data = undefined;
		}
	},
	delete: function (display, callback) {

	}
};
var _image = _g.image;
_g.tooltip = {
	arrow: function (selector, tooltip, object, callback) {
		selector = typeof selector === "object" ? selector : {length: 0};
		tooltip = typeof tooltip === "object" ? tooltip : {length: 0};
		object = _is.object(object) ? object : {};
		callback = _is.function(callback) ? callback : function () {};
		//.
		tooltipArrow = typeof object['arrow'] === "string" && inArray(object['arrow'], ["e", "w", "s", "n"]) ? object['arrow'] : "";
		tooltipSpace = 10;
		tooltipPadding = 10;
		if (selector['length'] === 0 || tooltip['length'] === 0) {
			callback(false);
		}else {
			if (tooltipArrow === "") {
				callback(false);
			}
			var windowHeight = $(window).innerHeight(),
				windowWidth = $(window).innerWidth(),
				selectorOffset = selector.offset(),
				selectorHeight = selector.innerHeight(),
				selectorWidth = selector.innerWidth(),
				tooltipOffset = tooltip.offset(),
				tooltipSetHeight = 100,
				tooltipSetWidth = 250,
				tooltipMaxHeight = selectorOffset['top'] - tooltipSpace * 2 - tooltipPadding * 2,
				tooltipMaxWidth = selectorOffset['left'] - tooltipSpace * 2 - tooltipPadding * 2;
			tooltip.find(".body > .main").css({
				'max-height': tooltipMaxHeight + 'px',
				'max-width': tooltipMaxWidth + 'px'
			});
			fnResizeTemplates = function (reset) {
				reset = _is.bool(reset) ? reset : false;
				/*
				if (tooltip.attr('tooltip-resized') == "true" && !reset) {
					return false;
				}else {
					tooltip.attr('tooltip-resized', 'true');
				}
				changedArrow = false;
				if (tooltipMaxHeight < 50 && (inArray(tooltipArrow, ["s", "south"]) || inArray(tooltipArrow, ["n", "north"]))) {
					if (inArray(tooltipArrow, ["s", "south"])) {
						tooltipArrow = "n";
						changedArrow = true;
					}else if (inArray(tooltipArrow, ["n", "north"])) {
						tooltipArrow = "s";
						changedArrow = true;
					}
				}else if (tooltipMaxWidth < 100 && (inArray(tooltipArrow, ["e", "east"]) || inArray(tooltipArrow, ["w", "west"]))) {
					if (inArray(tooltipArrow, ["e", "east"])) {
						tooltipArrow = "w";
						changedArrow = true;
					}else if (inArray(tooltipArrow, ["w", "west"])) {
						tooltipArrow = "e";
						changedArrow = true;
					}
				}
				*/
				tooltipHeight = tooltip.innerHeight();
				tooltipWidth = tooltip.innerWidth();
				if (inArray(tooltipArrow, ["e", "east"]) || inArray(tooltipArrow, ["w", "west"])) {
					arrowHeight = 12;
					arrowWidth = 6;
				}else if (inArray(tooltipArrow, ["s", "south"]) || inArray(tooltipArrow, ["n", "north"])) {
					arrowHeight = 6;
					arrowWidth = 12;
				}
				//.
				tooltip.attr('tooltip-arrow', tooltipArrow);
				if (inArray(tooltipArrow, ["e", "east"])) {
					tooltip.css({
						'top': (selectorOffset['top'] + (selectorHeight - tooltipHeight) / 2) + 'px',
						'left': (selectorOffset['left'] + selectorWidth + tooltipSpace) + 'px'
					});
					tooltip.children(".arrow").css({
						'margin-top': ((tooltipHeight - arrowHeight) / 2) + 'px',
						'margin-left': (0 - arrowWidth) + 'px'
					});
				}else if (inArray(tooltipArrow, ["w", "west"])) {
					tooltip.css({
						'top': (selectorOffset['top'] + (selectorHeight - tooltipHeight) / 2) + 'px',
						'left': (selectorOffset['left'] - tooltipWidth - tooltipSpace) + 'px'
					});
					tooltip.children(".arrow").css({
						'margin-top': ((tooltipHeight - arrowHeight) / 2) + 'px',
						'margin-left': (tooltipWidth + 1) + 'px'
					});
				}else if (inArray(tooltipArrow, ["s", "south"])) {
					tooltip.css({
						'top': (selectorOffset['top'] - tooltipHeight - tooltipSpace) + 'px',
						'left': (selectorOffset['left'] + (selectorWidth - tooltipWidth) / 2) + 'px'
					});
					tooltip.children(".arrow").css({
						'margin-top': (tooltipHeight + 2) + 'px',
						'margin-left': ((tooltipWidth - arrowWidth) / 2) + 'px'
					});
				}else if (inArray(tooltipArrow, ["n", "north"])) {
					tooltip.css({
						'top': (selectorOffset['top'] + selectorHeight + tooltipSpace) + 'px',
						'left': (selectorOffset['left'] + (selectorWidth - tooltipWidth) / 2) + 'px'
					});
					tooltip.children(".arrow").css({
						'margin-top': (0 - arrowHeight) + 'px',
						'margin-left': ((tooltipWidth - arrowWidth) / 2) + 'px'
					});
				}
			};
			$(document).ready(function () {
				setTimeout(fnResizeTemplates, 100);
				setTimeout(fnResizeTemplates, 250);
				setTimeout(fnResizeTemplates, 500);
				setTimeout(fnResizeTemplates, 1000);
			});
			$(window).bind("resizeEnd", fnResizeTemplates);
			callback(selector, tooltip);
		}
	},
	set: function (elem, object, callback)	 {
		var elem = typeof elem === "object" ? elem : {},
			object = _is.object(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {},
			tooltipKey = randomKeyString(10),
			tooltipClass = typeof object['classname'] === "string" ? object['classname'] : "",
			tooltipArrow = typeof object['arrow'] === "string" && inArray(object['arrow'], ["e", "w", "s", "n"]) ? object['arrow'] : "",
			tooltipAction = typeof object['action'] === "string" && inArray(object['action'], ["hover", "click", "dblclick"]) ? object['action'] : "",
			tooltipContent = typeof object['content'] === "string" ? object['content'] : "";
		if (elem.length === 0) {
			callback(false, null);
			return false;
		}else {
			if (tooltipAction == "" || tooltipArrow == "") {
				callback(false, null);
				return false;
			}
			var fnTooltipAppend = function (callback) {
				callback = _is.function (callback) ? callback : function () {};
				//.
				if ($("#gGlobal > .g-tooltip")['length'] === 0 || $("#gGlobal > .g-tooltip > .tooltip-content")['length'] === 0) {
					$("#gGlobal > .g-tooltip").fadeOut();
					$("#gGlobal").append("<div class='g-tooltip'> <div class='tooltip-content'></div> </div>");
				}
				tooltipTab = $("#gGlobal > .g-tooltip");
				tooltipElem = tooltipTab.find(".tooltip-li.card[tooltip-key='"+tooltipKey+"']");
				if (_g.tool.selector.exists(tooltipElem)) {
					tooltipElem.remove();
				}
				tooltipCode = "<div class='tooltip-li card' tooltip-key='"+tooltipKey+"'> <div class='arrow'></div> <div class='body'> <div class='main'> "+tooltipContent+" </div> </div> </div>";
				if (tooltipTab.children(".tooltip-content").children(".g-tooltip.card")['length'] === 0) {
					tooltipTab.children(".tooltip-content").append(tooltipCode);
				}else {
					tooltipTab.children(".tooltip-content").children(".g-tooltip.card").first().before(tooltipCode);
				}
				tooltipElem = tooltipTab.find(".tooltip-li.card[tooltip-key='"+tooltipKey+"']");
				if (tooltipClass !== "") {
					tooltipElem.addClass(tooltipClass);
				}
				if (!_is.exists(tooltipArrow)) {
					callback(false);
					return false;
				}
				_g.tooltip.arrow(elem, tooltipElem, {arrow: tooltipArrow});
				tooltipElem.hide().fadeIn(250);
				callback(tooltipElem);
				return tooltipElem;
			};
			var fnTooltipRemove = function (tooltip, callback) {
				tooltip = _is.selector(tooltip) ? tooltip : null;
				callback = _is.function (callback) ? callback : function () {};
				if (tooltip === null) {
					callback(false);
					return false;
				}
				tooltip.stop(true, true).fadeOut(250, function () {
					tooltip.remove();
				});
				callback(true);
				return true;
			};
			if (tooltipAction == "hover" || tooltipAction == "mouseover") {
				elem.bind('mouseover', function (e) {
					stopEvent(e);
					fnTooltipAppend(function (tooltipElem) {
						tooltipElem.bind('mouseover', function (e) {
							stopEvent(e);
							return;
						});
						$(document).bind('mouseover', function () {
							fnTooltipRemove(tooltipElem);
						});
					});
				});
			}else if (tooltipAction == "click") {
				elem.bind('click', function (e) {
					stopEvent(e);
					fnTooltipAppend(function (tooltipElem) {
						tooltipElem.bind('click', function (e) {
							stopEvent(e);
							return;
						});
						$(document).bind('click', function () {
							fnTooltipRemove(tooltipElem);
						});
					});
				});
			}else if (tooltipAction == "dblclick") {
				elem.bind('dblclick', function (e) {
					stopEvent(e);
					fnTooltipAppend(function (tooltipElem) {
						tooltipElem.bind('dblclick', function (e) {
							stopEvent(e);
							return;
						});
						$(document).bind('dblclick', function () {
							fnTooltipRemove(tooltipElem);
						});
					});
				});
			}
			callback(true, elem);
			return true;
		}
	},
	autoload: function (callback) {
		callback = _is.function(callback) ? callback : function () {};
		//.
		$("._tooltip, ._tip, ._tt").each(function () {

		});
	}
};
var _tooltip = _g.tooltip;
_g.listchoose = {
	append: function (selector, object, callback) {
		var selector = _is.selector(selector) ? selector : null,
			object = _is.array(object) ? object : null,
			callback = _is.function(callback) ? callback : function () {},
			listKey = randomKeyString(10),
			listClass = _is.string(object['classname']) ? object['classname'] : null,
			listAttr = _is.object(object['attr']) ? object['attr'] : [],
			listTitle = _is.string(object['title']) || _is.number(object['title']) ? object['title'] : null,
			listContent = _is.object(object['content']) ? object['content'] : null,
			listNote = _is.string(object['note']) || _is.number(object['note']) ? object['note'] : null;
		if (!_selector.exists(selector)) {
			callback(false);
		}else {
			var fnListChooseSetup = function () {
				if (_selector.count($("#gGlobal > .g-listchoose")) === 0) {
					_global.setup();
					$("#gGlobal").append("<div class='g-listchoose'></div>");
				}
				if (_selector.count($("#gGlobal > .g-listchoose > .listchoose-content")) === 0) {
					$("#gGlobal > .g-listchoose").append("<div class='listchoose-content'></div>");
				}
			};
			var fnListChooseAppend = function (code) {
				fnListChooseSetup();
				$("#gGlobal > .g-listchoose > .listchoose-content").append(code);
			};
			var fnListChooseResize = function (selector, listElem) {
				listElem.css({
					'top': (selector.offset()['top'] + selector.innerHeight()),
					'left': (selector.offset()['left']) + 'px'
				}).children(".content").children(".list").css({
					'max-height': (($(window).height() - selector.offset()['top']) / 10 * 4 > 200 ? ($(window).height() - selector.offset()['top']) / 10 * 4 : 200) + 'px'
				});
			};
			var listCode = "<div class='listchoose-li' listchoose-key='"+listKey+"'></div>";
			fnListChooseAppend(listCode);
			var listElem = $(".listchoose-li[listchoose-key='"+listKey+"']");
			if (_is.exists(listClass)) {
				listElem.addClass(listClass);
			}
			for (attrLabel in listAttr) {
				attrValue = listAttr[attrLabel];
				listElem.attr(attrLabel, attrValue);
			}
			if (_is.exists(listTitle)) {
				listElem.append("<div class='title'> <div class='icon'></div> <span class='text'>"+listTitle+"</span> </div>");
			}else {
				listElem.addClass('not-title');
			}
			if (_is.exists(listContent)) {
				listElem.append("<div class='content'><div class='list'></div></div>");
				contentTabLoop: for (var labelTab in listContent) {
					var valueTab = listContent[labelTab],
						tabKey = randomKeyString(10),
						tabCode = "<div class='tab' tab-key='"+tabKey+"'></div>";
					listElem.children(".content").children(".list").append(tabCode);
					var tabElem = listElem.children(".content").children(".list").children(".tab[tab-key='"+tabKey+"']");
					if (_is.exists(labelTab) && _is.string(labelTab)) {
						tabElem.append("<div class='title'> <span class='text'>"+labelTab+"</span> </div>");
					}
					tabElem.append("<div class='main'></div>").removeAttr('tab-key');
					if (!_is.array(valueTab)) {
						continue contentTabLoop;
					}
					contentRowLoop: for (var i in valueTab) {
						var rowContent = valueTab[i],
							rowKey = randomKeyString(10),
							rowClass = _is.string(rowContent['classname']) ? rowContent['classname'] : null,
							rowAttr = _is.string(rowContent['attr']) ? rowContent['attr'] : {},
							rowThumbnail = _is.string(rowContent['thumbnail']) ? rowContent['thumbnail'] : null,
							rowTitle = _is.string(rowContent['title']) || _is.number(rowContent['title']) ? rowContent['title'] : null,
							rowDescription = _is.string(rowContent['description']) || _is.number(rowContent['description']) ? rowContent['description'] : null,
							rowCallback = _is.string(rowContent['callback']) ? rowContent['callback'] : function () {},
							rowCode = "<div class='row' row-key='"+rowKey+"'> <div class='thumbnail'></div> <div class='context'></div> </div>";
						tabElem.children(".main").append(rowCode);
						var rowElem = tabElem.children(".main").children(".row[row-key='"+rowKey+"']");
						if (_is.exists(rowClass)) {
							rowElem.addClass(rowClass);
						}
						rowAttrLoop: for (var attrLabel in rowAttr) {
							var attrValue = listAttr[attrLabel];
							rowElem.attr(attrLabel, attrValue);
						}
						if (_is.exists(rowThumbnail)) {
							rowElem.children(".thumbnail").append("<div class='img' style='background-image: url("+rowThumbnail+");'></div>");
						}
						if (_is.exists(rowTitle)) {
							rowElem.children(".context").append("<div class='title'> <span class='text'>"+rowTitle+"</span> </div>");
						}
						if (_is.exists(rowDescription)) {
							rowElem.children(".context").append("<div class='description'> <span class='text'>"+rowDescription+"</span> </div>");
						}
						rowElem.removeAttr('row-key');
						rowCallback(rowElem);
					}
				}
			}
			if (_is.exists(listNote)) {
				listElem.append("<div class='note'> <div class='icon'></div> <span class='text'>"+listNote+"</span> </div>");
			}else {
				listElem.addClass('not-note');
			}
			listElem.removeAttr('listchoose-key');
			fnListChooseResize(selector, listElem);
			$(window).on('resize', function(e) {
			    fnListChooseResize(selector, listElem);
			}, 250);
		}
	},
	close: function () {

	}
};
var _listchoose = _g.listchoose;
_g.inputtag = {
	append: function (elem, object, callback)	 {
		var elem = _is.selector(elem) ? elem : null,
			object = _is.array(object) ? object : {},
			callback = _is.function (callback) ? callback : function () {},
			tagKey = randomKeyString(10),
			tagClass = _is.string(object['classname']) ? object['classname'] : "",
			tagPosition = _is.string(object['position']) && _array.exists(object['position'], ["before", "after", "replace"]) ? object['position'] : "before",
			tagAttr = _is.array(object['attr']) ? object['attr'] : {},
			tagIcon = _is.bool(object['icon']) ? object['icon'] : false,
			tagText = _is.string(object['text']) || _is.number(object['text']) ? object['text'] : "",
			tagThumbnail = _is.string(object['thumbnail']) ? object['thumbnail'] : "",
			tagClose = _is.bool(object['close']) ? object['close'] : true,
			elemObj = typeof object['elem'] === "object" ? object['elem'] : {},
			elemClass = _is.array(elemObj['classname']) ? elemObj['classname'] : "",
			elemAttr = _is.array(elemObj['attr']) ? elemObj['attr'] : {},
			elemHide = _is.bool(elemObj['hide']) ? elemObj['hide'] : false;
		if (!_g.tool.selector.exists(elem)) {
			callback(false, false);
		}else {
			if (tagPosition === "") {
				callback(false, false);
			}
			tagCode = "<div class='inputtag' inputtag-key='"+tagKey+"'> <div class='content'></div> <div class='options'></div>  </div>";
			if (tagPosition == "before") {
				elem.before(tagCode);
			}else if (tagPosition == "after") {
				elem.before(tagCode);
			}else if (tagPosition == "replace") {
				elem.replaceWith(tagCode);
			}
			var fnTagCloseAction = function () {
				tagElem.fadeOut(500, function () {
					$(this).remove();
				});
			};
			var fnTagCloseAlert = function () {
				fnPopupCloseAction();
			};
			var tagElem = $(".inputtag[inputtag-key='"+tagKey+"']");
			if (tagClass !== "") {
				tagElem.addClass(tagClass);
			}
			if (tagAttr) {
				for (attrLabel in tagAttr) {
					tagElem.attr(attrLabel, tagAttr[attrLabel]);
				}
			}
			if (tagIcon) {
				tagElem.children(".content").append("<div class='icon'> <div class='i'></div> </div>");
			}
			if (tagThumbnail !== "") {
				tagElem.children(".content").append("<div class='thumbnail'> <div class='img' style='background-image: url("+tagThumbnail+");'> <img src='"+tagThumbnail+"'> </div> </div>");
			}
			if (tagText !== "") {
				tagElem.children(".content").append("<div class='context'> <span class='text'>"+tagText+"</span> </div>");
			}
			if (tagClose) {
				tagElem.children(".options").append("<div class='button close'> <div class='i'></div> </div>")
				tagElem.children(".options").find(".button.close").bind('click', fnPopupCloseAlert);
			}
			if (elemClass !== "") {
				elem.addClass(elemClass);
			}
			if (elemAttr) {
				for (attrLabel in elemAttr) {
					elem.attr(attrLabel, elemAttr[attrLabel]);
				}
			}
			if (elemHide) {
				elem.fadeOut();
			}
			if (elemRemove) {
				elem.fadeOut(function () {
					elem.remove();
				});
			}
			
			tagElem.removeAttr('inputtag-key');
			callback(elem, tagElem);
		}
	}
};
var _inputtag = _g.inputtag;
_g.boxsuggest = {
	search: function (object, callback)	 {
		object = _is.object(object) ? object : {};
		callback = _is.function(callback) ? callback : function () {};
		//.
		popupKey = randomKeyString(10);
		popupClass = typeof object['classname'] === "string" ? object['classname'] : "";
		popupTitle = typeof object['title'] === "string" ? object['title'] : "";
		popupNote = typeof object['note'] === "string" ? object['note'] : "";
		//.
	}
};
var _boxsuggest = _g.boxsuggest;
_g.maps = {
	search: function (object, callback) {
		var object = _is.object(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {},
			searchKeyword = _is.exists(object['keyword']) ? object['keyword'] : null,
			searchType = _is.exists(object['type']) ? _string.lowercase(object['type']) : null,
			searchKey = _string.lowercase(searchType + '||' + searchKeyword);
		if (!_is.exists(searchKeyword, searchType)) {
			callback(false);
			return false;
		}
		var searchType = _array.exists(searchType, ['place', 'places']) ? 'place': searchType;
		var fnSearchRequest = function (object, callback) {
			var object = _is.object(object) ? object : {},
				callback = _is.function(callback) ? callback : function () {},
				type = _is.string(object['type']) ? object['type'] : null,
				keyword = _is.string(object['keyword']) ? object['keyword'] : null;
			if (!_is.exists(type, keyword)) {
				callback(false);
				return false;
			}
			var data = {
				'port': 'maps',
				'type': type,
				'action': 'search',
				'keyword': keyword
			};
			var requestMapsSearch = _xhr.use({
				type: 'GET',
				url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
				// cache: true,
				data: data,
				datatype: 'json',
				done: function (returnObj) {
					callback(returnObj);
				},
				error: function () {
					callback({'return': false, 'reason': 'ss'});
				},
				abort: function () {
					callback({'return': false, 'reason': 'xx'});
				}
			});
			if (requestMapsSearch) {
				var requestMapsSearch = undefined;
			}
		};
		var cachedMapsObj = {};
		if (_session.exists('maps_search_cached')) {
			var cachedMapsObj = _session.get('maps_search_cached');
			if (!_is.array(cachedMapsObj)) {
				_session.set('maps_search_cached', {});
				var cachedMapsObj = {};
			}
		}else {
			_session.set('maps_search_cached', {});
		}
		if (_is.array(cachedMapsObj[searchKey])) {
			callback({'return': true, 'count': _array.count(cachedMapsObj[searchKey]), 'data': cachedMapsObj[searchKey]});
			return;
		}
		fnSearchRequest({'type': searchType, 'keyword': searchKeyword}, function (returnObj) {
			if (_is.exists(returnObj, returnObj['return'], returnObj['data']) && returnObj['return']) {
				pushMapsCached = {};
				pushMapsCached[searchKey] = returnObj['data'];
				_session.push('maps_search_cached', pushMapsCached[searchKey]);
				returnObj['count'] = _is.number(returnObj['count']) ? returnObj['count'] : _array.count(returnObj['data']);
				callback({'return': true, 'count': returnObj['count'], 'data': returnObj['data']});
			}else if (_is.exists(returnObj, returnObj['return'], returnObj['reason']) && !returnObj['return']) {
				callback({'return': false, 'reason': returnObj['reason']});
			}else {
				callback({'return': false, 'reason': '', 'x': returnObj});
			}
		});
		return;
	}
}
var _maps = _g.maps;
_g.popup = {
	add: function (object, callback) {
		var object = _is.object(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};
			popupKey = randomKeyString(10),
			popupClass = typeof object['classname'] === "string" ? object['classname'] : "",
			popupTitle = typeof object['title'] === "string" ? object['title'] : "",
			popupContent = typeof object['content'] === "string" ? object['content'] : "",
			popupNote = typeof object['note'] === "string" ? object['note'] : "",
			popupClose = typeof object['close'] == "boolean" ? object['close'] : true,
			popupCode = "<div class='g-popup fs "+popupClass+"' popup-key='"+popupKey+"'> <div class='container'> <div class='header'> <div class='title'> <span class='text'>"+popupTitle+"</span> </div> <div class='action'> <div class='close'></div> </div> </div> <div class='body'> <div class='main "+popupClass+"'> "+popupContent+" </div> </div> <div class='footer'> <div class='note'> <span class='text'>"+popupNote+"</span> </div> </div> </div> </div>";
		$("#gGlobal").append(popupCode);
		var popupElem = $(".g-popup[popup-key='"+popupKey+"']");
		var fnPopupCloseAction = function () {
			popupElem.fadeOut(500, function () {
				$(this).remove();
				$("body").removeClass('disable-scroll');
			});
		};
		var fnPopupCloseAlert = function () {
			fnPopupCloseAction();
		};
		var fnPopupOverflowDisable = function () {
			if (!$("body").hasClass('disable-scroll')) {
				$("body").addClass('disable-scroll');
			}
		};
		if (!popupClose) {
			popupElem.find(".container > .header > .action .close").remove();
		}else {
			popupElem.find(".container > .header > .action .close").bind('click', fnPopupCloseAlert);
		}
		popupElem.fadeOut(0, function () {
			var popupContainer = popupElem.children(".container");
		}).fadeIn(function () {
			fnPopupOverflowDisable();
			var popupContainer = popupElem.children(".container");
		}).removeAttr('popup-key');
		callback(popupElem);
	},
	close: function (popop, callback) {
		popop = typeof popop === "object" ? popop : {};
		callback = _is.function(callback) ? callback : function () {};
		//.
		if (popop['length'] > 0) {
			popop.fadeOut(500, function () {
				$(this).remove();
				$("body").removeClass('disable-scroll');
				callback();
			});
		}
	}
};
var _popup = _g.popup;