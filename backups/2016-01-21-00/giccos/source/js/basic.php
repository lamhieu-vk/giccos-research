// md5
!function(a){"use strict";function b(a,b){var c=(65535&a)+(65535&b),d=(a>>16)+(b>>16)+(c>>16);return d<<16|65535&c}function c(a,b){return a<<b|a>>>32-b}function d(a,d,e,f,g,h){return b(c(b(b(d,a),b(f,h)),g),e)}function e(a,b,c,e,f,g,h){return d(b&c|~b&e,a,b,f,g,h)}function f(a,b,c,e,f,g,h){return d(b&e|c&~e,a,b,f,g,h)}function g(a,b,c,e,f,g,h){return d(b^c^e,a,b,f,g,h)}function h(a,b,c,e,f,g,h){return d(c^(b|~e),a,b,f,g,h)}function i(a,c){a[c>>5]|=128<<c%32,a[(c+64>>>9<<4)+14]=c;var d,i,j,k,l,m=1732584193,n=-271733879,o=-1732584194,p=271733878;for(d=0;d<a.length;d+=16)i=m,j=n,k=o,l=p,m=e(m,n,o,p,a[d],7,-680876936),p=e(p,m,n,o,a[d+1],12,-389564586),o=e(o,p,m,n,a[d+2],17,606105819),n=e(n,o,p,m,a[d+3],22,-1044525330),m=e(m,n,o,p,a[d+4],7,-176418897),p=e(p,m,n,o,a[d+5],12,1200080426),o=e(o,p,m,n,a[d+6],17,-1473231341),n=e(n,o,p,m,a[d+7],22,-45705983),m=e(m,n,o,p,a[d+8],7,1770035416),p=e(p,m,n,o,a[d+9],12,-1958414417),o=e(o,p,m,n,a[d+10],17,-42063),n=e(n,o,p,m,a[d+11],22,-1990404162),m=e(m,n,o,p,a[d+12],7,1804603682),p=e(p,m,n,o,a[d+13],12,-40341101),o=e(o,p,m,n,a[d+14],17,-1502002290),n=e(n,o,p,m,a[d+15],22,1236535329),m=f(m,n,o,p,a[d+1],5,-165796510),p=f(p,m,n,o,a[d+6],9,-1069501632),o=f(o,p,m,n,a[d+11],14,643717713),n=f(n,o,p,m,a[d],20,-373897302),m=f(m,n,o,p,a[d+5],5,-701558691),p=f(p,m,n,o,a[d+10],9,38016083),o=f(o,p,m,n,a[d+15],14,-660478335),n=f(n,o,p,m,a[d+4],20,-405537848),m=f(m,n,o,p,a[d+9],5,568446438),p=f(p,m,n,o,a[d+14],9,-1019803690),o=f(o,p,m,n,a[d+3],14,-187363961),n=f(n,o,p,m,a[d+8],20,1163531501),m=f(m,n,o,p,a[d+13],5,-1444681467),p=f(p,m,n,o,a[d+2],9,-51403784),o=f(o,p,m,n,a[d+7],14,1735328473),n=f(n,o,p,m,a[d+12],20,-1926607734),m=g(m,n,o,p,a[d+5],4,-378558),p=g(p,m,n,o,a[d+8],11,-2022574463),o=g(o,p,m,n,a[d+11],16,1839030562),n=g(n,o,p,m,a[d+14],23,-35309556),m=g(m,n,o,p,a[d+1],4,-1530992060),p=g(p,m,n,o,a[d+4],11,1272893353),o=g(o,p,m,n,a[d+7],16,-155497632),n=g(n,o,p,m,a[d+10],23,-1094730640),m=g(m,n,o,p,a[d+13],4,681279174),p=g(p,m,n,o,a[d],11,-358537222),o=g(o,p,m,n,a[d+3],16,-722521979),n=g(n,o,p,m,a[d+6],23,76029189),m=g(m,n,o,p,a[d+9],4,-640364487),p=g(p,m,n,o,a[d+12],11,-421815835),o=g(o,p,m,n,a[d+15],16,530742520),n=g(n,o,p,m,a[d+2],23,-995338651),m=h(m,n,o,p,a[d],6,-198630844),p=h(p,m,n,o,a[d+7],10,1126891415),o=h(o,p,m,n,a[d+14],15,-1416354905),n=h(n,o,p,m,a[d+5],21,-57434055),m=h(m,n,o,p,a[d+12],6,1700485571),p=h(p,m,n,o,a[d+3],10,-1894986606),o=h(o,p,m,n,a[d+10],15,-1051523),n=h(n,o,p,m,a[d+1],21,-2054922799),m=h(m,n,o,p,a[d+8],6,1873313359),p=h(p,m,n,o,a[d+15],10,-30611744),o=h(o,p,m,n,a[d+6],15,-1560198380),n=h(n,o,p,m,a[d+13],21,1309151649),m=h(m,n,o,p,a[d+4],6,-145523070),p=h(p,m,n,o,a[d+11],10,-1120210379),o=h(o,p,m,n,a[d+2],15,718787259),n=h(n,o,p,m,a[d+9],21,-343485551),m=b(m,i),n=b(n,j),o=b(o,k),p=b(p,l);return[m,n,o,p]}function j(a){var b,c="";for(b=0;b<32*a.length;b+=8)c+=String.fromCharCode(a[b>>5]>>>b%32&255);return c}function k(a){var b,c=[];for(c[(a.length>>2)-1]=void 0,b=0;b<c.length;b+=1)c[b]=0;for(b=0;b<8*a.length;b+=8)c[b>>5]|=(255&a.charCodeAt(b/8))<<b%32;return c}function l(a){return j(i(k(a),8*a.length))}function m(a,b){var c,d,e=k(a),f=[],g=[];for(f[15]=g[15]=void 0,e.length>16&&(e=i(e,8*a.length)),c=0;16>c;c+=1)f[c]=909522486^e[c],g[c]=1549556828^e[c];return d=i(f.concat(k(b)),512+8*b.length),j(i(g.concat(d),640))}function n(a){var b,c,d="0123456789abcdef",e="";for(c=0;c<a.length;c+=1)b=a.charCodeAt(c),e+=d.charAt(b>>>4&15)+d.charAt(15&b);return e}function o(a){return unescape(encodeURIComponent(a))}function p(a){return l(o(a))}function q(a){return n(p(a))}function r(a,b){return m(o(a),o(b))}function s(a,b){return n(r(a,b))}function t(a,b,c){return b?c?r(b,a):s(b,a):c?p(a):q(a)}"function"==typeof define&&define.amd?define(function(){return t}):a.md5=t}(this);
//.
var _g = {};
_g.tool = {
	supported: {
		html5: function () {
			return (document.createElement("canvas").getContext) ? true : false
		},
		notification: function () {
			if (_is.exists(window['Notification'])) {
				return true;
			}else {
				return false;
			}
		},
		websocket: function () {
			if (_is.exists(window['WebSocket'])) {
				return true;
			}else {
				return false;
			}
		}
	},
	is: {
		var: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (_array.exists(typeof args[i], ['undefined'])) {
					var value = false;
					break;
				}
			}
			return value;
		},
		null: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (typeof args[i] != 'undefined' && args[i] != undefined && args[i] != null) {
					var value = false;
					break;
				}
			}
			return value;
		},
		empty: function () {
			var args = arguments,
				value = false;
			loopArgs: for (var i = 0; i < args.length; i++) {
				loopObject: for (var key in args[i]) {
					if ((args[i]).hasOwnProperty(key)) {
						var value = true;
						break loopObject;
					}
				}
			}
			return value;
		},
		exists: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (_g.tool.is.null(args[i]) || !(new RegExp(/^([\S\s]+)$/).test(args[i]))) {
					var value = false;
					break;
				}
			}
			return value;
		},
		selector: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (!_g.tool.is.var(args[i]) || !_g.tool.is.array(args[i])) {
					var value = false;
					break;
				}
			}
			return value;
		},
		element: function () {
			return _g.tool.is.selector(args);
		},
		string: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (!_g.tool.is.exists(args[i]) || typeof args[i] !== 'string') {
					var value = false;
					break;
				}
			}
			return value;
		},
		array: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (!_g.tool.is.exists(args[i]) || typeof args[i] !== 'object') {
					var value = false;
					return;
				}
			}
			return value;
		},
		object: function () {
			return _g.tool.is.array();
		},
		file: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (typeof args[i] !== 'object') {
					var value = false;
					return;
				}
			}
			return value;
		},
		number: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (!_g.tool.is.exists(args[i]) || (typeof args[i] !== 'number' && !new RegExp(/^([0-9]+)$/).test(args[i]))) {
					var value = false;
					break;
				}
			}
			return value;
		},
		bool: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (!_g.tool.is.exists(args[i]) || typeof args[i] !== 'boolean') {
					var value = false;
					break;
				}
			}
			return value;
		},
		function: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (!_g.tool.is.exists(args[i]) || typeof args[i] !== 'function') {
					var value = false;
					break;
				}
			}
			return value;
		},
		NaN: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (!_g.tool.is.exists(args[i]) || !isNaN(args[i])) {
					var value = false;
					break;
				}
			}
			return value;
		},
		json: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (!_g.tool.is.exists(args[i])) {
					var value = false;
					break;
				}else {
					try {
						JSON.parse(args[i]);
					} catch (e) {
						var value = false;
						break;
					}
				}
			}
			return value;
		},
		html: function () {
			var args = arguments,
				value = true;
			for (var i = 0; i < args.length; i++) {
				if (!_g.tool.is.exists(args[i]) || new RegExp(!/<[a-z][\s\S]*>/i).test(args[i])) {
					var value = false;
					break;
				}
			}
			return value;
		}
	},
	clipboard: {
		copy: null,
		paste: null
	},
	function: {
		uncomment: function (fn, callback) {
			var fn = _is.function(fn) ? fn : null,
				callback = _is.function(callback) ? callback : function () {};
			fn = fn.toString().split(/\/\*\n|\n\*\//g).slice(1,-1).join();
			callback(fn);
			return fn;
		}
	},
	document: {
		pagehidden: function () {
			return (document.hidden||document.msHidden||document.webkitHidden||document.mozHidden)
		},
		visibilitychange: function (callback) {
			var callback = _is.function(callback) ? callback : function () {};
			document.addEventListener('visibilitychange', callback);
		},
		eventstop: function () {
			for (var i = 0; i < arguments.length; i++) {
				(arguments[i]).stopPropagation();
				(arguments[i]).preventDefault();
			}
			return true;
		}
	},
	selector: {
		is: function (selector) {
			return _g.tool.is.selector(selector);
		},
		count: function (selector) {
			if (_g.tool.is.selector(selector) && _g.tool.is.exists(selector.length)) {
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
		},
		each: function (selector, func, callback) {
			var selector = _g.tool.is.selector(selector) ? selector : null,
				func = _g.tool.is.function(func) ? func : function () {},
				callback = _g.tool.is.function(callback) ? callback : function () {};
			if (_selector.exists(selector)) {
				/*
				for (i = 0; i < _g.tool.selector.count(selector); i++) {
					func(selector[i], i);
				}
				*/
				Array.prototype.forEach.call(selector.length ? selector : [selector], function (selectorElem, index) {
					func(selectorElem, index);
				});
				callback(true);
				return true;
			}else {
				callback(false);
				return false;
			}
		},
		cache: {
			set: function (selector, name, data, callback) {
				var selector = _g.tool.is.selector(selector) ? selector : null,
					name = _g.tool.is.exists(name) ? name : null,
					data = _g.tool.is.exists(data) ? data : null,
					callback = _g.tool.is.function(callback) ? callback : function () {};
				// var selector = $(selector);
				if (_selector.exists(selector) || _selector.exists($(selector))) {
					var isMade = false;
					_g.tool.selector.each(selector, function (selectorElem, selectorId) {
						if (!_g.tool.is.var(selector[selectorId]['_storage'])) selector[selectorId]['_storage'] = {};
						selector[selectorId]['_storage'][name] = data;
						var isMade = true;
					});
					callback(isMade);
					return true;
				}else {
					callback(false);
					return false;
				}
			},
			get: function (selector, name, callback) {
				var selector = _g.tool.is.selector(selector) ? selector : null,
					name = _g.tool.is.exists(name) ? name : null,
					data = _g.tool.is.exists(data) ? data : null,
					callback = _g.tool.is.function(callback) ? callback : function () {};
				// var selector = $(selector);
				if (_selector.exists(selector) || _selector.exists($(selector))) {
					var dataObj = {};
					_g.tool.selector.each(selector, function (selectorElem, selectorId) {
						if (!_g.tool.is.var(selector[selectorId]['_storage'])) selector[selectorId]['_storage'] = {};
						dataObj[selectorId] = _g.tool.is.exists(selector[selectorId]['_storage'][name]) ? selector[selectorId]['_storage'][name] : null;
					});
					callback(dataObj);
					return dataObj;
				}else {
					callback(false);
					return false;
				}
			},
			exists: function (selector, name, callback) {
				var selector = _g.tool.is.selector(selector) ? selector : null,
					name = _g.tool.is.exists(name) ? name : null,
					callback = _g.tool.is.function(callback) ? callback : function () {};
				if (_selector.exists(selector) || _selector.exists($(selector))) {
					var dataCount = 0;
					_g.tool.selector.each(selector, function (selectorElem, selectorId) {
						if (_g.tool.is.var(selector[selectorId]['_storage'])) dataCount++;
					});
					if (dataCount > 0) {
						callback(true);
						return true;
					}else {
						callback(false);
						return false;
					}
				}else {
					callback(false);
					return false;
				}
			},
			push: function (selector, name, data, callback) {
				var selector = _g.tool.is.selector(selector) ? selector : null,
					name = _g.tool.is.exists(name) ? name : null,
					data = _g.tool.is.exists(data) ? data : null,
					callback = _g.tool.is.function(callback) ? callback : function () {};
				if (_selector.exists(selector)) {
					_g.tool.selector.each(selector, function (selectorElem, selectorId) {
						var dataCache = {};
						if (_g.tool.is.exists(selectorElem[name])) {
							var dataCache = selectorElem[name];
						}
						if (_g.tool.is.array(dataCache) && _g.tool.is.array(data)) {
							for (var x in data) {
								dataCache[x] = data[x];
							}
						}else if (_g.tool.is.array(dataCache) && !_g.tool.is.array(data)) {
							dataCache[_g.tool.array.count(cacheData)] = data;
						}else if (_g.tool.is.exists(dataCache)) {
							dataCache += data;
						}
						if (!_g.tool.is.var(selector[selectorId]['_storage'])) selector[selectorId]['_storage'] = {};
						selector[selectorId]['_storage'][name] = dataCache;
					});
					callback(true);
					return true;
				}else {
					callback(false);
					return false;
				}
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
	blob: {
		geturl: function (blob, callback) {
			var callback = _is.function(callback) ? callback : function () {};
			urlBlob = URL.createObjectURL(blob);
			callback(urlBlob);
			return urlBlob;
		},
		tofile: function (blob, filename, callback) {
			var callback = _is.function(callback) ? callback : function () {};
			var file = blob;
			file.lastModified = new Date().getTime();
			file.lastModifiedDate = new Date();
			file.name = filename;
			callback(file);
			return file;
		},
		fromurl: function (dataURL, callback) {
			var callback = _is.function(callback) ? callback : function () {};
			var BASE64_MARKER = ';base64,';
			if (dataURL.indexOf(BASE64_MARKER) == -1) {
				var parts = dataURL.split(','),
					contentType = parts[0].split(':')[1],
					raw = decodeURIComponent(parts[1]);
		        return new Blob([raw], {type: contentType});
		    }
		    var parts = dataURL.split(BASE64_MARKER),
		    	contentType = parts[0].split(':')[1],
		    	raw = window.atob(parts[1]),
		    	rawLength = raw.length,
		    	uInt8Array = new Uint8Array(rawLength);
		    for (var i = 0; i < rawLength; ++i) {
		    	uInt8Array[i] = raw.charCodeAt(i);
		    }
		    thisBlob = new Blob([uInt8Array], {type: contentType});
		    callback(thisBlob);
		    return thisBlob;
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
		},
		hashcode: function(str) {
			var hash = 0, i, chr, len;
			if (str.length == 0) return hash;
			for (i = 0, len = str.length; i < len; i++) {
				chr   = str.charCodeAt(i);
				hash  = ((hash << 5) - hash) + chr;
				hash |= 0;
			}
			return hash;
		},
		random: function (r) {
			var t = parseInt(r),
				a = Math.round(Math.pow(36,t+1)-Math.random()*Math.pow(36,t)).toString(36).slice(1);
			return a;
		},
		hex: {
			bytes: function (hex_str) {
			  	var count = 0, hexArr, hexData = [], hexLenght, i;
				if (hex_str.trim() == "") {
				  	return [];
				}
				// Check for invalid hex characters.
				if (/[^0-9a-fA-F\s]/.test(hex_str)) {
				    return false;
				}
				hexArr = hex_str.split(/([0-9a-fA-F]+)/g);
				hexLenght = hexArr.length;
				for (i = 0; i < hexLenght; ++i) {
				    if (hexArr[i].trim() == "") {
				      	continue;
				    }
				    hexData[count++] = parseInt(hexArr[i], 16);
				}
			  	return hexData;
			},
			decode: function (s) {
				var bytes = this.bytes(s);
				var res = "";
				for (var i = 0 ; i < bytes.length ; i+=2) {
					res += String.fromCharCode(bytes[i] | (bytes[i+1] << 8));
				}
				return res;
			},
			encode: function (s) {
				var bytes = [];
				for (var i = 0 ; i < s.length ; i++) {
				    var value = s.charCodeAt(i);
				    bytes.push(value & 255);
				    bytes.push((value>>8) & 255);
				}
				return this.formated(bytes);
			},
			formated: function (bytes) {
				var hex_str = "", i, len, tmp_hex;
				if (!_g.tool.is.array(bytes)) {
					return false;
				}
				len = bytes.length;
				for (i = 0; i < len; ++i) {
				    if (bytes[i] < 0) {
				      	bytes[i] = bytes[i] + 256;
				    }
				    if (bytes[i] == undefined) {
				      	alert("Boom " + i);
				      	bytes[i] = 0;
				    }
				    tmp_hex = bytes[i].toString(16);
				    // Add leading zero.
				    if (tmp_hex.length == 1) {
				    	tmp_hex = "0" + tmp_hex;
				    }
				    if ((i + 1) % 16 === 0) {
				     	tmp_hex += "\n";
				    }else {
				      	tmp_hex += " ";
				    }
				    hex_str += tmp_hex;
				}
				return hex_str.trim();
			}
		},
		base64: {
			key: "CDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
			utf16compress: function (input) {
			    var output = [],
			        i,c,
			        current,
			        status = 0;
			    input = this.compress(input);
			    for (i=0 ; i < input.length; i++) {
			      c = input.charCodeAt(i);
			      switch (status++) {
			        case 0:
			          output.push(String.fromCharCode((c >> 1)+32));
			          current = (c & 1) << 14;
			          break;
			        case 1:
			          output.push(String.fromCharCode((current + (c >> 2))+32));
			          current = (c & 3) << 13;
			          break;
			        case 2:
			          output.push(String.fromCharCode((current + (c >> 3))+32));
			          current = (c & 7) << 12;
			          break;
			        case 3:
			          output.push(String.fromCharCode((current + (c >> 4))+32));
			          current = (c & 15) << 11;
			          break;
			        case 4:
			          output.push(String.fromCharCode((current + (c >> 5))+32));
			          current = (c & 31) << 10;
			          break;
			        case 5:
			          output.push(String.fromCharCode((current + (c >> 6))+32));
			          current = (c & 63) << 9;
			          break;
			        case 6:
			          output.push(String.fromCharCode((current + (c >> 7))+32));
			          current = (c & 127) << 8;
			          break;
			        case 7:
			          output.push(String.fromCharCode((current + (c >> 8))+32));
			          current = (c & 255) << 7;
			          break;
			        case 8:
			          output.push(String.fromCharCode((current + (c >> 9))+32));
			          current = (c & 511) << 6;
			          break;
			        case 9:
			          output.push(String.fromCharCode((current + (c >> 10))+32));
			          current = (c & 1023) << 5;
			          break;
			        case 10:
			          output.push(String.fromCharCode((current + (c >> 11))+32));
			          current = (c & 2047) << 4;
			          break;
			        case 11:
			          output.push(String.fromCharCode((current + (c >> 12))+32));
			          current = (c & 4095) << 3;
			          break;
			        case 12:
			          output.push(String.fromCharCode((current + (c >> 13))+32));
			          current = (c & 8191) << 2;
			          break;
			        case 13:
			          output.push(String.fromCharCode((current + (c >> 14))+32));
			          current = (c & 16383) << 1;
			          break;
			        case 14:
			          output.push(String.fromCharCode((current + (c >> 15))+32, (c & 32767)+32));
			          status = 0;
			          break;
			      }
			    }
			    output.push(String.fromCharCode(current + 32));
			    return output.join('');
			},
			utf16decompress: function (input) {
			    var output = [],
			        current,c,
			        status=0,
			        i = 0;
			    while (i < input.length) {
			      c = input.charCodeAt(i) - 32;
			      switch (status++) {
			        case 0:
			          current = c << 1;
			          break;
			        case 1:
			          output.push(String.fromCharCode(current | (c >> 14)));
			          current = (c&16383) << 2;
			          break;
			        case 2:
			          output.push(String.fromCharCode(current | (c >> 13)));
			          current = (c&8191) << 3;
			          break;
			        case 3:
			          output.push(String.fromCharCode(current | (c >> 12)));
			          current = (c&4095) << 4;
			          break;
			        case 4:
			          output.push(String.fromCharCode(current | (c >> 11)));
			          current = (c&2047) << 5;
			          break;
			        case 5:
			          output.push(String.fromCharCode(current | (c >> 10)));
			          current = (c&1023) << 6;
			          break;
			        case 6:
			          output.push(String.fromCharCode(current | (c >> 9)));
			          current = (c&511) << 7;
			          break;
			        case 7:
			          output.push(String.fromCharCode(current | (c >> 8)));
			          current = (c&255) << 8;
			          break;
			        case 8:
			          output.push(String.fromCharCode(current | (c >> 7)));
			          current = (c&127) << 9;
			          break;
			        case 9:
			          output.push(String.fromCharCode(current | (c >> 6)));
			          current = (c&63) << 10;
			          break;
			        case 10:
			          output.push(String.fromCharCode(current | (c >> 5)));
			          current = (c&31) << 11;
			          break;
			        case 11:
			          output.push(String.fromCharCode(current | (c >> 4)));
			          current = (c&15) << 12;
			          break;
			        case 12:
			          output.push(String.fromCharCode(current | (c >> 3)));
			          current = (c&7) << 13;
			          break;
			        case 13:
			          output.push(String.fromCharCode(current | (c >> 2)));
			          current = (c&3) << 14;
			          break;
			        case 14:
			          output.push(String.fromCharCode(current | (c >> 1)));
			          current = (c&1) << 15;
			          break;
			        case 15:
			          output.push(String.fromCharCode(current | c));
			          status=0;
			          break;
			      }
			      i++;
			    }
			    return this.decompress(output.join(''));
			    //return output;
			},
			decompress : function (input) {
			    var output = [];
			    var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
			    var i = 1;
			    var odd = input.charCodeAt(0) >> 8;
			    while (i < input.length*2 && (i < input.length*2-1 || odd==0)) {
			      if (i%2==0) {
			        chr1 = input.charCodeAt(i/2) >> 8;
			        chr2 = input.charCodeAt(i/2) & 255;
			        if (i/2+1 < input.length) 
			          chr3 = input.charCodeAt(i/2+1) >> 8;
			        else 
			          chr3 = NaN;
			      } else {
			        chr1 = input.charCodeAt((i-1)/2) & 255;
			        if ((i+1)/2 < input.length) {
			          chr2 = input.charCodeAt((i+1)/2) >> 8;
			          chr3 = input.charCodeAt((i+1)/2) & 255;
			        } else 
			          chr2=chr3=NaN;
			      }
			      i+=3;
			      enc1 = chr1 >> 2;
			      enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
			      enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
			      enc4 = chr3 & 63;
			      if (isNaN(chr2) || (i==input.length*2+1 && odd)) {
			        enc3 = enc4 = 64;
			      } else if (isNaN(chr3) || (i==input.length*2 && odd)) {
			        enc4 = 64;
			      }
			      output.push(this.key.charAt(enc1));
			      output.push(this.key.charAt(enc2));
			      output.push(this.key.charAt(enc3));
			      output.push(this.key.charAt(enc4));
			    }
			  	return output.join('');
			 },
			 compress : function (input) {
			    var output = [],
			        ol = 1, 
			        output_,
			        chr1, chr2, chr3,
			        enc1, enc2, enc3, enc4,
			        i = 0, flush=false;
			    input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
			    while (i < input.length) {
			      enc1 = this.key.indexOf(input.charAt(i++));
			      enc2 = this.key.indexOf(input.charAt(i++));
			      enc3 = this.key.indexOf(input.charAt(i++));
			      enc4 = this.key.indexOf(input.charAt(i++));
			      chr1 = (enc1 << 2) | (enc2 >> 4);
			      chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
			      chr3 = ((enc3 & 3) << 6) | enc4;
			      if (ol%2==0) {
			        output_ = chr1 << 8;
			        flush = true;
			        if (enc3 != 64) {
			          output.push(String.fromCharCode(output_ | chr2));
			          flush = false;
			        }
			        if (enc4 != 64) {
			          output_ = chr3 << 8;
			          flush = true;
			        }
			      }else {
			        output.push(String.fromCharCode(output_ | chr1));
			        flush = false;
			        if (enc3 != 64) {
			          output_ = chr2 << 8;
			          flush = true;
			        }
			        if (enc4 != 64) {
			          output.push(String.fromCharCode(output_ | chr3));
			          flush = false;
			        }
			      }
			      ol+=3;
			    }
			    if (flush) {
			      output.push(String.fromCharCode(output_));
			      output = output.join('');
			      output = String.fromCharCode(output.charCodeAt(0)|256) + output.substring(1);
			    } else {
			      output = output.join('');
			    }
			    return output;
			}
		},
		lz: {
			basevalue: function (alphabet, character) {
			  	if (!baseReverseDic[alphabet]) {
				    baseReverseDic[alphabet] = {};
				    for (var i=0 ; i < alphabet.length; i++) {
				      baseReverseDic[alphabet][alphabet.charAt(i)] = i;
				    }
			  	}
			  	return baseReverseDic[alphabet][character];
			},
			base64: {
				key: "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
				compress: function (input) {
				    if (input == null) {
				    	return "";
				    }
				    var res = this._.compress(input, 6, function(a) {
				    	return this.key.base64.charAt(a);
				    });
				    switch (res.length % 4) { // To produce valid Base64
					    default: // When could this happen ?
					    case 0 : return res;
					    case 1 : return res+"===";
					    case 2 : return res+"==";
					    case 3 : return res+"=";
				    }
				},
				decompress: function (input) {
				    if (input == null) {
				    	return "";
				    }
				    if (input == "") {
				    	return null;
				    }
				    return this._.decompress(input.length, 32, function(index) { 
				    	return this.basevalue(keyStrBase64, input.charAt(index)); 
				    });
				}
			},
			utf16: {
				compress: function (input) {
				    if (input == null) {
				    	return "";
				    }
				    return this._.compress(input, 15, function (a) {
				    	return String.fromCharCode(a+32);
				    }) + " ";
				},
				decompress: function (compressed) {
				    if (compressed == null) { 
				    	return "";
				   	}
				    if (compressed == "") {
				    	return null;
				    }
				    return this._.decompress(compressed.length, 16384, function(index) { 
				    	return compressed.charCodeAt(index) - 32; 
				    });
				}
			},
			u8a: { // Unit8Array
				compress: function (uncompressed) {
				    var compressed = this.compress(uncompressed);
				    var buf = new Uint8Array(compressed.length * 2); // 2 bytes per character
				    for (var i=0, totalLength = compressed.length; i < totalLength; i++) {
				      	var current_value = compressed.charCodeAt(i);
				      	buf[i*2] = current_value >>> 8;
				      	buf[i*2+1] = current_value % 256;
				    }
				    return buf;
				},
				decompress: function (compressed) {
				    if (compressed == null || compressed == undefined) {
				        return this.decompress(compressed);
				    }else {
				        var buf=new Array(compressed.length/2); // 2 bytes per character
				        for (var i=0, totalLength = buf.length; i < totalLength; i++) {
				          	buf[i]=compressed[i*2]*256+compressed[i*2+1];
				        }
				        var result = [];
				        buf.forEach(function (c) {
				          	result.push(String.fromCharCode(c));
				        });
				        return this.decompress(result.join(''));
				    }
				}
			},
			euc: { // EncodedURIComponent
				compress: function (input) {
				    if (input == null) {
				    	return "";
				    }
				    return this._.compress(input, 6, function (a) {
				    	return keyStrUriSafe.charAt(a);
				    });
				},
				decompress: function (input) {
				    if (input == null) { 
				    	return "";
				    }
				    if (input == "") {
				    	return null;
				    }
				    input = input.replace(/ /g, "+");
				    return this._.decompress(input.length, 32, function(index) { 
				    	return getBaseValue(keyStrUriSafe, input.charAt(index));
				    });
				}
			},
			_: {
				compress: function (uncompressed, bitsPerChar, getCharFromInt) {
				    if (uncompressed == null) {
				    	return "";
				    }
				    var i, value,
				        context_dictionary= {},
				        context_dictionaryToCreate= {},
				        context_c="",
				        context_wc="",
				        context_w="",
				        context_enlargeIn= 2, // Compensate for the first entry which should not count
				        context_dictSize= 3,
				        context_numBits= 2,
				        context_data=[],
				        context_data_val=0,
				        context_data_position=0,
				        ii;
				    for (ii = 0; ii < uncompressed.length; ii += 1) {
					    context_c = uncompressed.charAt(ii);
					    if (!Object.prototype.hasOwnProperty.call(context_dictionary,context_c)) {
					        context_dictionary[context_c] = context_dictSize++;
					        context_dictionaryToCreate[context_c] = true;
					    }
					    context_wc = context_w + context_c;
					    if (Object.prototype.hasOwnProperty.call(context_dictionary,context_wc)) {
					        context_w = context_wc;
					    }else {
					        if (Object.prototype.hasOwnProperty.call(context_dictionaryToCreate,context_w)) {
					          	if (context_w.charCodeAt(0) < 256) {
					            	for (i = 0 ; i < context_numBits; i++) {
					              		context_data_val = (context_data_val << 1);
					              		if (context_data_position == bitsPerChar-1) {
					                		context_data_position = 0;
					                		context_data.push(getCharFromInt(context_data_val));
					                		context_data_val = 0;
					             		}else {
					                		context_data_position++;
					             		}
					           		}
						            value = context_w.charCodeAt(0);
						            for (i=0 ; i < 8 ; i++) {
						            	context_data_val = (context_data_val << 1) | (value&1);
						              		if (context_data_position == bitsPerChar-1) {
								                context_data_position = 0;
								                context_data.push(getCharFromInt(context_data_val));
								                context_data_val = 0;
						              		} else {
						                		context_data_position++;
						              		}
						              	value = value >> 1;
						            }
						        }else {
						            value = 1;
						            for (i=0 ; i < context_numBits ; i++) {
							            context_data_val = (context_data_val << 1) | value;
							            if (context_data_position ==bitsPerChar-1) {
							                context_data_position = 0;
							                context_data.push(getCharFromInt(context_data_val));
							                context_data_val = 0;
							            }else {
							                context_data_position++;
							            }
							            value = 0;
						            }
						            value = context_w.charCodeAt(0);
						            for (i=0 ; i < 16 ; i++) {
							            context_data_val = (context_data_val << 1) | (value&1);
							            if (context_data_position == bitsPerChar-1) {
							                context_data_position = 0;
							                context_data.push(getCharFromInt(context_data_val));
							                context_data_val = 0;
							            }else {
							                context_data_position++;
							            }
							            value = value >> 1;
						            }
						        }
						        context_enlargeIn--;
						        if (context_enlargeIn == 0) {
						            context_enlargeIn = Math.pow(2, context_numBits);
						            context_numBits++;
						        }
						        delete context_dictionaryToCreate[context_w];
					        }else {
						        value = context_dictionary[context_w];
						        for (i=0 ; i < context_numBits ; i++) {
						            context_data_val = (context_data_val << 1) | (value&1);
						            if (context_data_position == bitsPerChar-1) {
							            context_data_position = 0;
							            context_data.push(getCharFromInt(context_data_val));
							            context_data_val = 0;
						            }else {
						              	context_data_position++;
						            }
						            value = value >> 1;
						        }
					        }
					        context_enlargeIn--;
					        if (context_enlargeIn == 0) {
						        context_enlargeIn = Math.pow(2, context_numBits);
						        context_numBits++;
					        }
					        // Add wc to the dictionary.
					        context_dictionary[context_wc] = context_dictSize++;
					        context_w = String(context_c);
					    }
				    }
				    // Output the code for w.
				    if (context_w !== "") {
				      	if (Object.prototype.hasOwnProperty.call(context_dictionaryToCreate,context_w)) {
				        	if (context_w.charCodeAt(0) < 256) {
					        for (i=0 ; i < context_numBits ; i++) {
					            context_data_val = (context_data_val << 1);
					            if (context_data_position == bitsPerChar-1) {
						            context_data_position = 0;
						            context_data.push(getCharFromInt(context_data_val));
						            context_data_val = 0;
					            }else {
					              	context_data_position++;
					            }
					        }
					        value = context_w.charCodeAt(0);
					        for (i=0 ; i < 8 ; i++) {
					            context_data_val = (context_data_val << 1) | (value&1);
					            if (context_data_position == bitsPerChar-1) {
						            context_data_position = 0;
						            context_data.push(getCharFromInt(context_data_val));
						            context_data_val = 0;
					            }else {
					              	context_data_position++;
					            }
					            value = value >> 1;
					        }
				        }else {
					        value = 1;
					        for (i=0 ; i < context_numBits ; i++) {
					            context_data_val = (context_data_val << 1) | value;
					            if (context_data_position == bitsPerChar-1) {
					              	context_data_position = 0;
					              	context_data.push(getCharFromInt(context_data_val));
					              	context_data_val = 0;
					            }else {
					              	context_data_position++;
					            }
					            value = 0;
					        }
					        value = context_w.charCodeAt(0);
					        for (i=0 ; i < 16 ; i++) {
					            context_data_val = (context_data_val << 1) | (value&1);
					            if (context_data_position == bitsPerChar-1) {
						            context_data_position = 0;
						            context_data.push(getCharFromInt(context_data_val));
						            context_data_val = 0;
					            }else {
					              	context_data_position++;
					            }
					            value = value >> 1;
					        }
				        }
				        context_enlargeIn--;
				        if (context_enlargeIn == 0) {
				          	context_enlargeIn = Math.pow(2, context_numBits);
				          	context_numBits++;
				        }
				        delete context_dictionaryToCreate[context_w];
				    }else {
				        value = context_dictionary[context_w];
				        for (i=0 ; i < context_numBits ; i++) {
					        context_data_val = (context_data_val << 1) | (value&1);
					        if (context_data_position == bitsPerChar-1) {
					            context_data_position = 0;
					            context_data.push(getCharFromInt(context_data_val));
					            context_data_val = 0;
					        }else {
					            context_data_position++;
					        }
					        value = value >> 1;
				        }
				    }
				    context_enlargeIn--;
				    if (context_enlargeIn == 0) {
					    context_enlargeIn = Math.pow(2, context_numBits);
					    context_numBits++;
				    }
					}
				    // Mark the end of the stream
				    value = 2;
				    for (i=0 ; i < context_numBits ; i++) {
					    context_data_val = (context_data_val << 1) | (value&1);
					    if (context_data_position == bitsPerChar-1) {
					        context_data_position = 0;
					        context_data.push(getCharFromInt(context_data_val));
					        context_data_val = 0;
					    }else {
					        context_data_position++;
					    }
					    value = value >> 1;
				    }
				    // Flush the last char
				    while (true) {
					    context_data_val = (context_data_val << 1);
					    if (context_data_position == bitsPerChar-1) {
					       	context_data.push(getCharFromInt(context_data_val));
					        break;
					    }else {
					    	context_data_position++;
					    }
				    }
				    return context_data.join('');
				},
				decompress: function (length, resetValue, getNextValue) {
				    var dictionary = [],
				        next,
				        enlargeIn = 4,
				        dictSize = 4,
				        numBits = 3,
				        entry = "",
				        result = [],
				        i,
				        w,
				        bits, resb, maxpower, power,
				        c,
				        data = {val: getNextValue(0), position: resetValue, index: 1 };
				    for (i = 0; i < 3; i += 1) {
				      dictionary[i] = i;
				    }
				    bits = 0;
				    maxpower = Math.pow(2,2);
				    power=1;
				    while (power!=maxpower) {
					    resb = data.val & data.position;
					    data.position >>= 1;
					    if (data.position == 0) {
						    data.position = resetValue;
						    data.val = getNextValue(data.index++);
					    }
					    bits |= (resb>0 ? 1 : 0) * power;
					    power <<= 1;
				    }
				    switch (next = bits) {
					    case 0:
					        bits = 0;
					        maxpower = Math.pow(2,8);
					        power=1;
					        while (power!=maxpower) {
					            resb = data.val & data.position;
					            data.position >>= 1;
					            if (data.position == 0) {
						            data.position = resetValue;
						            data.val = getNextValue(data.index++);
					            }
					            bits |= (resb>0 ? 1 : 0) * power;
					            power <<= 1;
					        }
					        c = String.fromCharCode(bits);
					        break;
					    case 1:
					        bits = 0;
					        maxpower = Math.pow(2,16);
					        power=1;
					        while (power!=maxpower) {
					            resb = data.val & data.position;
					            data.position >>= 1;
					            if (data.position == 0) {
						            data.position = resetValue;
						            data.val = getNextValue(data.index++);
					            }
					            bits |= (resb>0 ? 1 : 0) * power;
					            power <<= 1;
					         }
					        c = String.fromCharCode(bits);
					        break;
					    case 2:
					    	return "";
				    }
				    dictionary[3] = c;
				    w = c;
				    result.push(c);
				    while (true) {
					    if (data.index > length) {
					        return "";
					    }
					    bits = 0;
					    maxpower = Math.pow(2,numBits);
					    power=1;
					    while (power!=maxpower) {
					        resb = data.val & data.position;
					        data.position >>= 1;
					        if (data.position == 0) {
						        data.position = resetValue;
						        data.val = getNextValue(data.index++);
					        }
					        bits |= (resb>0 ? 1 : 0) * power;
					        power <<= 1;
					    }
					    switch (c = bits) {
					        case 0:
						        bits = 0;
						        maxpower = Math.pow(2,8);
						        power=1;
						        while (power!=maxpower) {
						            resb = data.val & data.position;
						            data.position >>= 1;
						            if (data.position == 0) {
							            data.position = resetValue;
							            data.val = getNextValue(data.index++);
						            }
						            bits |= (resb>0 ? 1 : 0) * power;
						            power <<= 1;
						        }
						        dictionary[dictSize++] = String.fromCharCode(bits);
						        c = dictSize-1;
						        enlargeIn--;
						        break;
					        case 1:
						        bits = 0;
						        maxpower = Math.pow(2, 16);
						        power=1;
						        while (power!=maxpower) {
						            resb = data.val & data.position;
						            data.position >>= 1;
						            if (data.position == 0) {
							            data.position = resetValue;
							            data.val = getNextValue(data.index++);
						            }
						            bits |= (resb>0 ? 1 : 0) * power;
						            power <<= 1;
						        }
						        dictionary[dictSize++] = String.fromCharCode(bits);
						        c = dictSize-1;
						        enlargeIn--;
						        break;
					        case 2:
					        	return result.join('');
					    }
					    if (enlargeIn == 0) {
					        enlargeIn = Math.pow(2, numBits);
					        numBits++;
					    }
					    if (dictionary[c]) {
					        entry = dictionary[c];
					    }else {
					        if (c === dictSize) {
					          entry = w + w.charAt(0);
					        } else {
					          return null;
					        }
					     }
					    result.push(entry);
					    // Add w+entry[0] to the dictionary.
					    dictionary[dictSize++] = w + entry.charAt(0);
					    enlargeIn--;
					    w = entry;
					    if (enlargeIn == 0) {
						    enlargeIn = Math.pow(2, numBits);
						    numBits++;
					    }
					}
				}
			},
			compress: function (uncompressed) {
			    return this._.compress(uncompressed, 16, function (a) {
			    	return String.fromCharCode(a);
			    });
			},
			decompress: function (compressed) {
			   	if (compressed == null) {
			   		return "";
			   	}
			    if (compressed == "") {
			    	return null;
			    }
			    return this._.decompress(compressed.length, 32768, function(index) { 
			    	return compressed.charCodeAt(index);
			    });
			}
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
		},
		sort: {
			default: function (arr, type, caseSensitive, callback) {
				var callback = _g.tool.is.function(callback) ? callback : function() {};
				if (_g.tool.is.array(arr)) {
					var dataArr = [],
						dataObj = {};
					for (var key in arr) {
						if (arr.hasOwnProperty(key)) {
							if (!caseSensitive) {
								key = (key['toLowerCase'] ? key.toLowerCase() : key);
							}
							dataArr.push(key);
						}
					}
					if (_g.tool.is.function(type)) {
						dataArr.sort(type);
					}else if (type === "value") {
						dataArr.sort(function(a,b) {
							var x = arr[a];
							var y = arr[b];
							if (!caseSensitive) {
								x = (x['toLowerCase'] ? x.toLowerCase() : x);
								y = (y['toLowerCase'] ? y.toLowerCase() : y);
							}
							return ((x < y) ? -1 : ((x > y) ? 1 : 0));
						});
					}else {
						dataArr.sort();
					}
					for (var i=0; i < dataArr.length; i++) {
						dataObj[dataArr[i]] = arr[dataArr[i]];
					}
					callback(dataObj);
				    return dataObj;
				}else {
					return arr;
				}
			},
			key: function (arr, key, callback) {
				var callback = _g.tool.is.function(callback) ? callback : function() {};
				if (_g.tool.is.array(arr) && _g.tool.is.exists(key)) {
					arr.sort(function(a, b){
				        if(a[key] < b[key]){
				            return -1;
				        }else if(a[key] > b[key]){
				            return 1;
				        }
				        return 0;
				    });
				    callback(arr);
				    return arr;
				}else {
					return arr;
				}
			}
		}
	},
	parse: {
		bool: function (val) {
			return (_g.tool.array.exists(val, ['1', 1, 'true', true]) ? true : false);
		},
		number: {
			int: function (number) {
				return parseInt(number);
			}
		},
		time: function (text) {
			text = _g.tool.is.var(text) ? text : "";
			matchFormatDatetime = text.match(/(\{format_datetime\:([0-9]+)\})/gi);
			matchFormatDatetip = text.match(/(\{format_datetip\:([0-9]+)\})/gi);
			if (_g.tool.is.exists(matchFormatDatetime)) {
				for (i in matchFormatDatetime) {
					matchFormatDatetime[i] = String(matchFormatDatetime[i]);
					shortLength = new RegExp(/(\_)/).test(matchFormatDatetime[i]) ? true : false;
					timestampThis = Number(matchFormatDatetime[i].match(/format_date\:([0-9]+)/)[2]);
					text.replace(matchFormatDatetime[i], _g.tool.parse.datetime(timestampThis, shortLength));
				}
			}
			if (_g.tool.is.exists(matchFormatDatetip)) {
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
			var type = _g.tool.is.var(type) && _is.string(type) ? type : null,
				timestamp = _g.tool.is.var(timestamp) && _is.number(timestamp) ? timestamp : null;
			if (!_g.tool.is.exists(type, timestamp)) {
				var date = "";
			}else {
				var timestamp = new RegExp(/^([0-9]{13,14})$/).test(timestamp) ? timestamp : Math.floor(timestamp * 1000);
			}
			var dateTime = new Date(timestamp),
				dateSecond = String(dateTime.getSeconds()),
				dateSecond = String(dateSecond < 10 ? '0' + dateSecond : dateSecond),
				dateMinute = String(dateTime.getMinutes()),
				dateMinute = String(dateMinute < 10 ? '0' + dateMinute : dateMinute),
				dateHour = String(dateTime.getHours()),
				dateHour = String(dateHour < 10 ? '0' + dateHour : dateHour),
				dateDay = String(dateTime.getDate()),
				dateDay = String(dateDay < 10 ? '0' + dateDay : dateDay),
				dateWeek = String(dateTime.getDay()),
				dateWeek = String(dateWeek + 1),
				dateMonth = String(dateTime.getMonth()),
				dateMonth = String(dateMonth + 1),
				dateYear = String(dateTime.getFullYear());
			//.
			var date = type,
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
			var timestamp = _g.tool.is.number(timestamp) ? timestamp : null;
			if (!_g.tool.is.exists(timestamp)) {
				return "";
			}else {
				var timestamp = new RegExp(/^([0-9]{13,14})$/).test(timestamp) ? Math.floor(timestamp / 1000) : timestamp;
			}
			var now = Math.floor(Date.now() / 1000),
				difference = Math.abs(now - timestamp),
				dateYear = Math.round(difference / 29030400);
			if (dateYear > 0) {
				var dateText = _g.tool.format_date('H:i, d/n/Y', timestamp);
			}else {
				var dateText = _g.tool.format_date('H:i, d/n', timestamp);
			}
			return dateText;
		},
		datetime: function (timestamp, length) {
			var timestamp = _g.tool.is.number(timestamp) ? timestamp : null,
				length = _g.tool.is.bool(length) ? length : false;
			if (!_g.tool.is.exists(timestamp)) {
				return "";
			}else {
				var timestamp = new RegExp(/^([0-9]{13,14})$/).test(timestamp) ? Math.floor(timestamp / 1000) : timestamp;
			}
			var now = Math.floor(Date.now() / 1000),
				difference = now - timestamp;
			if (difference < 0) {
				var type = "future",
					difference = Math.abs(difference);
			}else {
				var type = "past";
			}
			var dateSecond = difference,
				dateMin = Math.round(difference / 60),
				dateHour = Math.round(difference / 3600),
				dateDay = Math.round(difference / 86400), 
				dateWeek = Math.round(difference / 604800),
				dateMonth = Math.round(difference / 2419200),
				dateYear = Math.round(difference / 29030400);
			if (length) {
				var dateSpace = "";
			}else {
				var dateSpace = " ";
			}
			var dateSpace = " ";
			if (dateSecond < 60) {
				if (length) {
					var dateText = "<?php print $_language->text('a_few_seconds', 'strtolower', true); ?>";
				}else {
					var dateText = "<?php print $_language->text('a_few_seconds', 'strtolower', false); ?>";
				}
			}else if (dateMin < 60) {
				var dateText = dateMin+dateSpace;
				if (length) {
					dateText += type == "future" ? "<?php print $_language->text('minutes_left', 'strtolower', true); ?>" : "<?php print $_language->text('minutes_ago', 'strtolower', true); ?>"; 
				}else {
					dateText += type == "future" ? "<?php print $_language->text('minutes_left', 'strtolower', false); ?>" : "<?php print $_language->text('minutes_ago', 'strtolower', false); ?>"; 
				}
			}else if (dateHour < 24) {
				var dateText = dateHour+dateSpace;
				if (length) {
					dateText += type == "future" ? "<?php print $_language->text('hours_left', 'strtolower', true); ?>" : "<?php print $_language->text('hours_ago', 'strtolower', true); ?>"; 
				}else {
					dateText += type == "future" ? "<?php print $_language->text('hours_left', 'strtolower', false); ?>" : "<?php print $_language->text('hours_ago', 'strtolower', false); ?>"; 
				}
			}else if (dateDay < 7 || (dateWeek >= 4 && dateDay < 30)) {
				var dateText = dateDay+dateSpace;
				if (dateDay == 1) {
					var dateText = _g.tool.format_date('H:i', timestamp)+', ';
					if (length) {
						dateText += type == "future" ? "<?php print $_language->text('tomorrow', 'strtolower', true); ?>" : "<?php print $_language->text('yesterday', 'strtolower', true); ?>"; 
					}else {
						dateText += type == "future" ? "<?php print $_language->text('tomorrow', 'strtolower', false); ?>" : "<?php print $_language->text('yesterday', 'strtolower', false); ?>"; 
					}
				}else {
					var dateText = dateDay+dateSpace;
					if (length) {
						dateText += type == "future" ? "<?php print $_language->text('days_left', 'strtolower', true); ?>" : "<?php print $_language->text('days_ago', 'strtolower', true); ?>"; 
					}else {
						dateText += type == "future" ? "<?php print $_language->text('days_left', 'strtolower', false); ?>" : "<?php print $_language->text('days_ago', 'strtolower', false); ?>"; 
					}
				}
			}else if (dateWeek < 4) {
				var dateText = dateWeek+dateSpace;
				if (length) {
					dateText += type == "future" ? "<?php print $_language->text('weeks_left', 'strtolower', true); ?>" : "<?php print $_language->text('weeks_ago', 'strtolower', true); ?>"; 
				}else {
					dateText += type == "future" ? "<?php print $_language->text('weeks_left', 'strtolower', false); ?>" : "<?php print $_language->text('weeks_ago', 'strtolower', false); ?>"; 
				}
			}else if (dateMonth < 12) {
				var dateText = dateMonth+dateSpace;
				if (length) {
					dateText += type == "future" ? "<?php print $_language->text('months_left', 'strtolower', true); ?>" : "<?php print $_language->text('months_ago', 'strtolower', true); ?>"; 
				}else {
					dateText += type == "future" ? "<?php print $_language->text('months_left', 'strtolower', false); ?>" : "<?php print $_language->text('months_ago', 'strtolower', false); ?>"; 
				}
			}else {
				var dateText = dateYear+dateSpace;
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
		autosize: {
			set: function (selector, options, callback) {
				var selector = _is.selector(selector) ? selector : null,
					options = _is.array(options) ? options : {},
					callback = _is.function(callback) ? callback : function () {};
				var timeDelay = _g.tool.is.number(options['delay']) ? options['delay'] : 0,
					atShift = _g.tool.is.bool(options['shift']) ? options['shift'] : false,
					isReset = _g.tool.is.bool(options['reset']) ? options['reset'] : false;
				if (!_g.tool.is.exists(selector)) {
					callback(false);
					return false;
				}
				var set = typeof Set === 'function' ? new Set() : (function () {
					var list = [];
					return {
						has: function has(key) {
							return Boolean(list.indexOf(key) > -1);
						},
						add: function add(key) {
							list.push(key);
						},
						'delete': function _delete(key) {
							list.splice(list.indexOf(key), 1);
						}
					};
				})();
				var assign = function (selectorElem) {
					var _ref = arguments[1] === undefined ? {} : arguments[1];
					var _ref$setOverflowX = _ref.setOverflowX;
					var setOverflowX = _ref$setOverflowX === undefined ? true : _ref$setOverflowX;
					var _ref$setOverflowY = _ref.setOverflowY;
					var setOverflowY = _ref$setOverflowY === undefined ? true : _ref$setOverflowY;
					if (!selectorElem || !selectorElem.nodeName || selectorElem.nodeName !== 'TEXTAREA' || set.has(selectorElem)) return;
					var heightOffset = null;
					var overflowY = null;
					var clientWidth = selectorElem.clientWidth;
					function init() {
						var style = window.getComputedStyle(selectorElem, null);
						overflowY = style.overflowY;
						if (style.resize === 'vertical') {
							selectorElem.style.resize = 'none';
						}else if (style.resize === 'both') {
							selectorElem.style.resize = 'horizonselectorEleml';
						}
						if (style.boxSizing === 'content-box') {
							heightOffset = -(parseFloat(style.paddingTop) + parseFloat(style.paddingBottom));
						} else {
							heightOffset = parseFloat(style.borderTopWidth) + parseFloat(style.borderBottomWidth);
						}
						if (isNaN(heightOffset)) {
							heightOffset = 0;
						}
						update();
					}
					function changeOverflow(value) {
						{
							var width = selectorElem.style.width;
							selectorElem.style.width = '0px';
							selectorElem.offsetWidth;
							selectorElem.style.width = width;
						}
						overflowY = value;
						if (setOverflowY) {
							selectorElem.style.overflowY = value;
						}
						resize();
					}
					function resize() {
						var htmlTop = window.pageYOffset,
							bodyTop = document.body.scrollTop,
							style = window.getComputedStyle(selectorElem, null),
							originalHeight = style.height,
							firstRow = false;
						if (!_g.tool.is.var(selectorElem.style.originalWhiteSpace)) selectorElem.style.originalWhiteSpace = selectorElem.style.whiteSpace;
						if (!_g.tool.is.var(selectorElem.style.originalWordBreak)) selectorElem.style.originalWordBreak = selectorElem.style.wordBreak;
						selectorElem.style.originalHeight = originalHeight;
						selectorElem.style.height = 'auto';
						var endHeight = selectorElem.scrollHeight + heightOffset;
						if (selectorElem.scrollHeight === 0) {
							selectorElem.style.height = originalHeight;
							return;
						}
						if (selectorElem['value'].split(/\r*\n/g)['length'] == 1) {
							if ((new RegExp(/(^([\s]+)$)/ig).test(selectorElem['value']) || parseInt(style['height']) - (parseInt(style['lineHeight']) * selectorElem['value'].split(/\r*\n/g)['length']) > 0)) {
								selectorElem.style.whiteSpace = 'nowrap';
								selectorElem.style.wordBreak = 'break-word';
								endHeight = parseFloat(style['height']) - parseFloat(style['lineHeight']).toFixed(2);
							}
						}else if (selectorElem['value'].split(/\r*\n/g)['length'] > 1) {
							selectorElem.style.whiteSpace = selectorElem.style.originalWhiteSpace;
							selectorElem.style.wordBreak = selectorElem.style.originalWordBreak;
						}
						selectorElem.style.height = endHeight + 'px';
						clientWidth = selectorElem.clientWidth;
						document.documentElement.scrollTop = htmlTop;
						document.body.scrollTop = bodyTop;
					}
					function update (event) {
						var event = _g.tool.is.array(event) ? event : {},
							selectorElemHeight = selectorElem.style.height;
						if (!(atShift && event.shiftKey)) {
							if ((event.keyCode ? event.keyCode : event.which) == 8) {
								//.
							}else {
								return;
							}
						}
						resize();
						var style = window.getComputedStyle(selectorElem, null);
						if (style.height !== selectorElem.style.height) {
							if (overflowY !== 'visible') {
								changeOverflow('visible');
							}
						}else {
							if (overflowY !== 'hidden') {
								changeOverflow('hidden');
							}
						}
						if (selectorElemHeight !== selectorElem.style.height) {
							var evt = document.createEvent('Event');
							evt.initEvent('autosize:resized', true, false);
							selectorElem.dispatchEvent(evt);
						}
					}
					var pageResize = function pageResize() {
						if (selectorElem.clientWidth !== clientWidth) {
							update();
						}
					};
					var destroy = (function (style) {
						window.removeEventListener('resize', pageResize, false);
						selectorElem.removeEventListener('input', update, false);
						selectorElem.removeEventListener('keyup', update, false);
						selectorElem.removeEventListener('autosize:destroy', destroy, false);
						selectorElem.removeEventListener('autosize:update', update, false);
						set['delete'](selectorElem);
						Object.keys(style).forEach(function (key) {
							selectorElem.style[key] = style[key];
						});
					}).bind(selectorElem, {
						height: selectorElem.style.height,
						resize: selectorElem.style.resize,
						overflowY: selectorElem.style.overflowY,
						overflowX: selectorElem.style.overflowX,
						wordWrap: selectorElem.style.wordWrap
					});
					_g.tool.textarea.autosize.clear(selectorElem);
					if ('onpropertychange' in selectorElem && 'oninput' in selectorElem) {
						selectorElem.addEventListener('keyup', update, false);
					}
					window.addEventListener('keyup', update, false);
					window.addEventListener('resize', update, false);
					selectorElem.addEventListener('input', update, false);
					_g.tool.textarea.autosize.update(selectorElem);
					set.add(selectorElem);
					if (setOverflowX) {
						selectorElem.style.overflowX = 'hidden';
						selectorElem.style.wordWrap = 'break-word';
					}
					init();
				};
				Array.prototype.forEach.call(selector.length ? selector : [selector], function (selectorElem) {
					return assign(selectorElem);
				});
				callback(selector);
				return selector;
			},
			clear: function (selector, callback) {
				var selector = _is.selector(selector) ? selector : null,
					callback = _is.function(callback) ? callback : function () {};
				if (!_g.tool.is.exists(selector)) {
					callback(false);
					return false;
				}
				function destroy(selectorElem) {
					if (!(selectorElem && selectorElem.nodeName && selectorElem.nodeName === 'TEXTAREA')) return;
					var evt = document.createEvent('Event');
					evt.initEvent('autosize:destroy', true, false);
					selectorElem.dispatchEvent(evt);
				}
				Array.prototype.forEach.call(selector.length ? selector : [selector], function (selectorElem) {
					return destroy(selectorElem);
				});
				callback(selector);
				return selector;
			},
			update: function (selector, callback) {
				var selector = _is.selector(selector) ? selector : null,
					callback = _is.function(callback) ? callback : function () {};
				if (!_g.tool.is.exists(selector)) {
					callback(false);
					return false;
				}
				var update = function (selectorElem) {
					if (!(selectorElem && selectorElem.nodeName && selectorElem.nodeName === 'TEXTAREA')) return;
					var evt = document.createEvent('Event');
					evt.initEvent('autosize:update', true, false);
					selectorElem.dispatchEvent(evt);
				}
				Array.prototype.forEach.call(selector.length ? selector : [selector], function (selectorElem) {
					return update(selectorElem);
				});
				callback(selector);
				return selector;
			}
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
	_base64 = _g.tool.base64,
	_array = _g.tool.array,
	_object = _g.tool.array,
	_format = _g.tool.parse,
	_parse = _g.tool.parse,
	_string = _g.tool.string,
	_document = _g.tool.document,
	_textarea = _g.tool.textarea,
	_input = _g.tool.textarea,
	_blob = _g.tool.blob,
	_json = _g.tool.json,
	_clipboard = _g.tool.clipboard;
_g.cookie = {
	remove: function (name, path) {
		return _g.cookie.write(name, null, 0, path);
	},
	create: function(name, value, time, path) {
		return _g.cookie.write(name, value, time, path);
	},
	write: function(name, value, time, path) {
	    var expires;
	    if (time) {
	        var date = new Date();
	        date.setTime(date.getTime() + (time * 1000));
	        expires = "; expires=" + date.toGMTString();
	    }else {
	        expires = "";
	    }
	    if (path) {
	    	//.
	    }else {
	    	path = "<?php print $_parameter->get('cookie_host_path'); ?>";
	    }
	    return document.cookie = name + "=" + value + expires + "; path=" + path;
	},
	get: function (name) {
		return _g.cookie.read(name);
	},
	read: function (name) {
	    if (document.cookie.length > 0) {
	    	var c_start = document.cookie.indexOf(name + "=");
	    	if (c_start != -1) {
	    		var c_start = c_start + name.length + 1;
	    		var c_end = document.cookie.indexOf(";", c_start);
	    		if (c_end == -1) {
	    			c_end = document.cookie.length;
	    		}
	    		return unescape(document.cookie.substring(c_start, c_end));
	        }
	    }
	    return undefined;
	}
};
var _cookie = _g.cookie;
_g.session = {
	key: function () {
		if (_is.var(_cookie.read("gCID")) && typeof _cookie.read("gCID") === "string") {
			if (typeof window[(_cookie.read("gCID")).toString()] === "undefined") {
				window[(_cookie.read("gCID")).toString()] = _string.random(20);
			}
			var dataCacheHash = window[(_cookie.read("gCID")).toString()]; //. (_cookie.read("gCID")).toString();
		}else {
			var dataCacheHash = "__gCache";
		}
		return dataCacheHash;
	},
	enable: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		callback(true);
		return true;
	},
	ready: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (_g.session.exists('client_session_ready') === true)  {
			callback(_g.session.get('client_session_ready'));
		}else {
			var callbackSetupFunc = function (value) {
				callback(value);
			};
			_g.session.setup(callbackSetupFunc);
		}
	},
	setup: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var setCacheStatus = function (value) {
			_g.session.add('client_session_ready', value);
			callback(value);
		};
		_g.session.enable(function (returnValue) {
			setCacheStatus(returnValue);
		});
	},
	show: function () {
		var objectCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			var objectCache = window[dataCacheHash];
		}
		console.log(objectCache);
	},
	exists: function (name) {
		var dataCacheHash = _g.session.key();
		var objectCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			var objectCache = window[dataCacheHash];
		}
		var added = 0;
		loopData: for (cacheName in objectCache) {
			var cacheData = objectCache[cacheName];
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
		var dataCacheHash = _g.session.key();
		var objectCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			var objectCache = window[dataCacheHash];
		}
		var added = 0;
		loopData: for (cacheName in objectCache) {
			var cacheData = objectCache[cacheName];
			if (_is.var(cacheName) && cacheName == name) {
				added++;
				break loopData;
			}
		}
		if (added === 0) {
			objectCache[name] = null;
		}
		return true;
	},
	add: function (name, data) {
		return _g.session.set(name, data);
	},
	set: function (name, data) {
		var dataCacheHash = _g.session.key();
		var objectCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			var objectCache = window[dataCacheHash];
		}
		var added = 0;
		loopData: for (cacheName in objectCache) {
			var cacheData = objectCache[cacheName];
			if (_is.var(cacheName) && _is.var(cacheData) && cacheName == name) {
				objectCache[name] = data;
				added++;
				break loopData;
			}
		}
		if (added === 0) {
			objectCache[name] = data;
		}
		window[dataCacheHash] = objectCache;
		return true;
	},
	push: function (name, data) {
		var dataCacheHash = _g.session.key();
		var objectCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			var objectCache = window[dataCacheHash];
		}
		loopData: for (cacheName in objectCache) {
			var cacheData = objectCache[cacheName];
			if (_is.var(cacheName) && _is.var(cacheData) && cacheName == name) {
				if (_is.array(cacheData) && _is.array(data)) {
					for (x in data) {
						cacheData[x] = data[x];
					}
					window[dataCacheHash][cacheName] = cacheData;
				}else if (_is.array(cacheData) && !_is.array(data)) {
					cacheData[_array.count(cacheData)] = data;
					window[dataCacheHash][cacheName] = cacheData;
				}else if (_is.exists(cacheData)) {
					cacheData += data;
					window[dataCacheHash][cacheName] = cacheData;
				}
				break loopData;
			}
		}
		return true;
	},
	get: function (name) {
		var dataCacheHash = _g.session.key();
		var objectCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			var objectCache = window[dataCacheHash];
		}
		var tCache = null;
		loopData: for (cacheName in objectCache) {
			var cacheData = objectCache[cacheName];
			if (_is.var(cacheName) && _is.var(cacheData) && cacheName == name) {
				var tCache = cacheData;
				break loopData;
			}
		}
		return tCache;
	},
	remove: function (name) {
		var dataCacheHash = _g.session.key();
		var objectCache = {};
		if (_is.var(window) && _is.var(window[dataCacheHash])) {
			var objectCache = window[dataCacheHash];
		}
		var found = 0;
		loopData: for (cacheName in objectCache) {
			var cacheData = objectCache[cacheName];
			if (_is.var(cacheName) && cacheName == name) {
				delete objectCache[cacheName];
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
		if (_is.string(_cookie.read("gCID"))) {
			dataCacheHash = (_cookie.read("gCID")).toString();
		}else {
			dataCacheHash = "__gCache";
		}
		return dataCacheHash;
	},
	enable: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (_is.var(localStorage)) {
			callback(true);
			return true;
		}else {
			callback(false);
			return false;
		}
	},
	ready: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (_g.session.exists('client_cache_ready') === true)  {
			callback(_g.session.get('client_cache_ready'));
		}else {
			var callbackSetupFunc = function (value) {
				callback(value);
			};
			_g.cache.setup(callbackSetupFunc);
		}
	},
	parse: {
		encode: function (data, callback) {
			data = _is.exists(data) ? data : null;
			var callback = _is.function(callback) ? callback : function () {};
			data = _json.encode(data);
			callback(data);
			return data;
		},
		decode: function (data, callback) {
			data = _is.exists(data) ? data : null;
			var callback = _is.function(callback) ? callback : function () {};
			data = _json.decode(data);
			callback(data);
			return data;
		}
	},
	data: {
		open: function (callback) {
			var callback = _is.function(callback) ? callback : function () {};
			dataCacheHash = _g.cache.key();
			objectCache = _g.cache.parse.decode(localStorage[dataCacheHash]);
			if (!_is.array(objectCache)) {
				objectCache = {};
			}
			_g.cache.data.clean();
			callback(objectCache);
			return objectCache;
		},
		close: function (data, callback) {
			data = _is.array(data) ? data : {};
			var callback = _is.function(callback) ? callback : function () {};
			dataCacheHash = _g.cache.key();
			localStorage[dataCacheHash] = _g.cache.parse.encode(data);
			callback(true);
			return true;
		},
		clean: function (callback) {
			var callback = _is.function(callback) ? callback : function () {};
			dataCacheHash = _g.cache.key();
			for (dataCacheLabel in localStorage) {
				dataCacheValue = localStorage[dataCacheLabel];
				if (dataCacheLabel != dataCacheHash) {
					delete localStorage[dataCacheLabel];
				}
			}
			callback(true);
			return true;
		},
	},
	setup: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var setCacheStatus = function (value) {
			_g.session.add('client_cache_ready', value);
			callback(value);
		};
		_g.cache.enable(function (returnValue) {
			setCacheStatus(returnValue);
		});
	},
	exists: function (name, callback) {
		var callback = _is.function(callback) ? callback : function () {};
		_g.cache.data.open(function (objectCache) {
			added = 0;
			loopData: for (cacheName in objectCache) {
				cacheData = objectCache[cacheName];
				if (_is.var(cacheName) && cacheName == name) {
					added++;
					break loopData;
				}
			}
			if (added === 0) {
				callback(false);
				return false;
			}else {
				callback(true);
				return true;
			}
		});
	},
	remove: function (name, callback) {
		var callback = _is.function(callback) ? callback : function () {};
		_g.cache.data.open(function (objectCache) {
			objectCache = null;
			_g.cache.data.close(objectCache);
			callback(true);
			return true;
		});
	},
	new: function (name, callback) {
		var callback = _is.function(callback) ? callback : function () {};
		_g.cache.data.open(function (objectCache) {
			added = 0;
			loopData: for (cacheName in objectCache) {
				cacheData = objectCache[cacheName];
				if (_is.var(cacheName) && cacheName == name) {
					added++;
					break loopData;
				}
			}
			if (added === 0) {
				objectCache[name] = null;
			}
			_g.cache.data.close(objectCache);
			callback(true);
			return true;
		});
	},
	add: function (name, data, callback) {
		return _g.cache.set(name, data, callback);
	},
	set: function (name, data, callback) {
		var callback = _is.function(callback) ? callback : function () {};
		_g.cache.data.open(function (objectCache) {
			added = 0;
			loopData: for (cacheName in objectCache) {
				cacheData = objectCache[cacheName];
				if (_is.var(cacheName) && _is.var(cacheData) && cacheName == name) {
					objectCache[name] = data;
					added++;
					break loopData;
				}
			}
			if (added === 0) {
				objectCache[name] = data;
			}
			_g.cache.data.close(objectCache);
			callback(true);
			return true;
		});
	},
	push: function (name, data, callback) {
		var callback = _is.function(callback) ? callback : function () {};
		_g.cache.data.open(function (objectCache) {
			loopData: for (cacheName in objectCache) {
				cacheData = objectCache[cacheName];
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
			_g.cache.data.close(objectCache);
			callback(true);
			return true;
		});
	},
	get: function (name, callback) {
		var callback = _is.function(callback) ? callback : function () {};
		_g.cache.data.open(function (objectCache) {
			tCache = null;
			loopData: for (cacheName in objectCache) {
				cacheData = objectCache[cacheName];
				if (_is.var(cacheName) && _is.var(cacheData) && cacheName == name) {
					tCache = cacheData;
					break loopData;
				}
			}
			_g.cache.data.close(objectCache);
			callback(tCache);
			return tCache;
		});
	},
	remove: function (name, callback) {
		var callback = _is.function(callback) ? callback : function () {};
		_g.cache.data.open(function (objectCache) {
			found = 0;
			loopData: for (cacheName in objectCache) {
				cacheData = objectCache[cacheName];
				if (_is.var(cacheName) && cacheName == name) {
					delete objectCache[cacheName];
					delete localStorage[dataCacheHash][cacheName];
					found++;
					break loopData;
				}
			}
			_g.cache.data.close(objectCache);
			if (found === 0) {
				callback(false);
				return false;
			}else {
				callback(true);
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
_g.global = {
	append: function () {
		$(document).ready(function () {
			var global = document.querySelectorAll("#g-global");
			if (_selector.count(global) === 0) {
				$("body").append("<div id='g-global'></div>");
			}
			});
		return true;
	},
	ready: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (_g.session.exists('client_global_ready') === true)  {
			callback(_g.session.get('client_global_ready'));
		}else {
			_g.global.setup(function (value) {
				callback(_g.global.append());
			});
		}
	},
	setup: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var fnGlobalStatus = function (value) {
			_g.session.add('client_global_ready', value);
			callback(value);
		};
		fnGlobalStatus(_g.global.append());
	},
	add: function (code, callback) {
		var code = _is.string(code) ? code : "";
		var callback = _is.function(callback) ? callback : function () {};
		_g.global.append();
		var global = $("#g-global");
		global.append(code);
		callback(true);
		return true;
	},
	exists: function (selector, callback) {
		var selector = _is.string(selector) ? selector : "";
		var callback = _is.function(callback) ? callback : function () {};
		if (selector == "") {
			callback(false);
			return false;
		}
		_g.global.append();
		var global = $("#g-global");
		if (_selector.count(global.find($(selector))) == 0) {
			callback(false);
			return false;
		}else {
			callback(true);
			return true;
		}
	},
	autoload: function () {
		_g.global.ready(function (x) {
			console.log('global - enable: ' + x);
		});
	}
};
var _tool = _g.tool;
var _global = _g.global;
_g.global.autoload();
_g.source = {
	append: function () {
		var source = $("#g-source");
		if (_selector.count(source) === 0) {
			$("body").append("<div id='g-source'></div>");
		}
		return true;
	},
	ready: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (_g.session.exists('client_source_ready') === true)  {
			callback(_g.session.get('client_source_ready'));
		}else {
			_g.source.setup(function (value) {
				callback(_g.source.append());
			});
		}
	},
	setup: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var fnSourceStatus = function (value) {
			_g.session.add('client_source_ready', value);
			callback(value);
		};
		fnSourceStatus(_g.source.append());
	},
	list: {
		add: function (object, callback) {
			var object = _is.array(object) ? object : {},
				callback = _is.function(callback) ? callback : function () {};
			var fileType = _is.string(object['type']) ? object['type'] : null,
				fileUrl = _is.string(object['url']) ? object['url'] : null,
				fileContent = _is.string(object['content']) ? object['content'] : null,
				fileHash = md5(fileContent);
			var listObj = {};
			if (_session.exists('client_source_list')) {
				var listObj = _session.get('client_source_list');
			}
			var isFouned = 0;
			for (var sourceHash in listObj) {
				var sourceFile = listObj[sourceHash];
				if (sourceHash == fileHash) {
					isFouned++;
				}else if (sourceFile['type'] == fileType && sourceFile['url'] == fileUrl) {
					isFouned++;
				}else if (sourceFile['type'] == fileType && sourceFile['content'] == fileContent) {
					isFouned++;
				}
			}
			if (isFouned === 0) {
				listObj[fileHash] = {'type': fileType, 'url': fileUrl, 'content': fileContent};
				_session.set('client_source_list', listObj);
			}
			callback(true);
			return true;
		},
		get: function (callback) {
			var callback = _is.function(callback) ? callback : function () {};
			//.
			var listObj = {};
			if (_session.exists('client_source_list')) {
				var listObj = _session.get('client_source_list');
			}
			callback(listObj);
			return listObj;
		}
	},
	push: function (object, callback) {
		var object = _is.array(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};
		var fileType = _is.string(object['type']) ? object['type'] : null,
			fileUrl = _is.string(object['url']) ? object['url'] : null,
			fileContent = _is.string(object['content']) ? object['content'] : null,
			fileCache = _is.bool(object['cache']) ? object['cache'] : true,
			fileHash = md5(fileContent);
		return _g.source.list.get(function (sourceList) {
			for (var sourceHash in sourceList) {
				var sourceFile = sourceList[sourceHash];
				if (sourceHash == fileHash) {
					callback(true);
					return true;
				}else if (sourceFile['type'] == fileType && sourceFile['url'] == fileUrl) {
					callback(true);
					return true;
				}else if (sourceFile['type'] == fileType && sourceFile['content'] == fileContent) {
					callback(true);
					return true;
				}
			}
			_g.source.append();
			var source = $("#g-source"),
				fileKey = _string.random(10);
			if (_array.exists(fileType, ['css'])) {
				source.append("<style type='text/css' rel='stylesheet' source-key='"+fileKey+"'>"+(fileContent)+"</style>");
			}else if (_array.exists(fileType, ['js'])) {
				source.append("<script type='text/javascript' source-key='"+fileKey+"'>"+(fileContent)+"</script>");
				// eval(fileContent);
			}
			var fileElem = source.children("[source-key='"+fileKey+"']");
			fileElem.removeAttr('source-key');
			if (fileCache) {
				return _g.source.list.add({
					'type': fileType,
					'url': fileUrl,
					'content': fileContent
				}, function (isAdded) {
					callback(isAdded);
					return isAdded;
				});
			}else {
				return true;
			}
		});
	},
	add: function (object, callback) {
		var object = _is.array(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};
		var fileType = _is.string(object['type']) ? object['type'] : null,
			fileContent = _is.string(object['content']) ? object['content'] : null,
			fileCache = _is.bool(object['cache']) ? object['cache'] : true;
		if (!_session.exists('source_add_list')) {
			_session.set('source_add_list', {});
		}
		var fileArr = {};
		fileArr[fileContent] = fileType;
		_session.push('source_add_list', fileArr);
		return _g.source.list.get(function (sourceList) {
			for (var sourceHash in sourceList) {
				var sourceFile = sourceList[sourceHash];
				if (fileCache && sourceFile['type'] == fileType && (sourceFile['url'] == fileContent || sourceFile['content'] == fileContent)) {
					callback(true);
					return true;
				}
			}
			if (new RegExp(<?php print $_parameter->get('regex_url_giccos_domain'); ?>).test(fileContent) || new RegExp(<?php print $_parameter->get('regex_url_all'); ?>).test(fileContent)) {
				var requestSource = _xhr.use({
					'type': 'GET',
					'url': fileContent,
					'datatype': 'text',
					'cache': false,
					'done': function (fileData) {
						if (_is.string(fileData)) {
							return _g.source.push({'type': fileType, 'url': fileContent, 'content': fileData, 'cache': fileCache}, function (isPushed) {
								callback(isPushed);
								return isPushed;
							});
						}else {
							callback(false);
							return false;
						}
					}
				});
			}else {
				return _g.source.push({'type': fileType, 'content': fileContent, 'cache': fileCache}, function (isPushed) {
					callback(isPushed);
					return isPushed;
				});
			}
		});
	},
	each: function (object, callback) {
		var object = _is.array(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};
		var fileJsAll = $("script"),
			fileCssAll = $("link, style");
		fileJsAll.each(function () {
			var fileJsElem = $(this);
			if (!_array.exists(fileJsElem.attr('source-ready'), ['true'])) {
				var fileJsElemType = "js",
					fileJsElemCache = _is.exists(fileJsElem.attr('cache')) ? fileJsElem.attr('cache') : null,
					fileJsElemUrl = _is.exists(fileJsElem.attr('src')) ? fileJsElem.attr('src') : null,
					fileJsElemContent = _is.exists(fileJsElem.html()) ? fileJsElem.html() : null;
				if (fileJsElemCache == 'false') return;
				_g.source.list.add({'type': fileJsElemType, 'url': fileJsElemUrl, 'content': fileJsElemContent});
				fileJsElem.attr('source-ready', 'true');
			}
		});
		fileCssAll.each(function () {
			var fileCssElem = $(this);
			if (!_array.exists(fileCssElem.attr('source-ready'), ['true'])) {
				var fileCssElemType = "js",
					fileCssElemUrl = _is.exists(fileCssElem.attr('href')) ? fileCssElem.attr('href') : null,
					fileCssElemContent = _is.exists(fileCssElem.html()) ? fileCssElem.html() : null;
				_g.source.list.add({'type': fileCssElemType, 'url': fileCssElemUrl, 'content': fileCssElemContent});
				fileCssElem.attr('source-ready', 'true');
			}
		});
	},
	autoload: function () {
		_g.source.ready(function (isEnabled) {
			console.log('source - enable: ' + isEnabled);
			if (isEnabled) {
				_g.source.each();
			}
		});
	}
};
var _source = _g.source;
_source.autoload();
_g.privacy = {
	object: function (value, callback) {
		if (!_is.exists(value)) {
			return false;
		}else {
			var callback = _is.function(callback) ? callback : function () {};
		}
		var object = {text: "", value: ""},
			value = _g.tool.string.lowercase(value);
		if (_array.exists(value, ['private'])) {
			var object = {
				text: "<?php print $_language->text('private', 'strtolower'); ?>",
				value: "private"
			};
		}else if (_array.exists(value, ['friend', 'friends'])) {
			var object = {
				text: "<?php print $_language->text('friends', 'strtolower'); ?>",
				value: "friends"
			};
		}else if (_array.exists(value, ['allfriend', 'allfriends'])) {
			var object = {
				text: "<?php print $_language->text('all_friends', 'strtolower'); ?>",
				value: "allfriends"
			};
		}else if (_array.exists(value, ['public', 'everybody'])) {
			var object = {
				text: "<?php print $_language->text('public', 'strtolower'); ?>",
				value: "public"
			};
		}
		callback(object);
		return object;
	},
	append: function (selector, object, callback)	 {
		if (!_is.array(selector) || !_is.array(object)) {
			return false;
		}else {
			var callback = _is.function(callback) ? callback : function () {};
		}
		type = _is.var(object['type']) && _is.string(object['type']) && _array.exists(object['type'], ['replace', 'append', 'html']) ? object['type'] : "append";
		if (!_is.var(selector['length']) || selector['length'] === 0) {
			callback(false);
			return false;
		}else if (type == null) {
			callback(false);
			return false;
		}
		var privacyKey = _string.random(10),
			privacyClass = _is.var(object['classname']) && _is.string(object['classname']) ? object['classname'] : "",
			privacyValue = _is.var(object['value']) && (_is.string(object['value']) || _is.number(object['value'])) ? object['value'] : "",
			privacyList = _is.var(object['list']) && _is.array(object['list']) ? object['list'] : {},
			privacyAttr = _is.var(object['attr']) && _is.array(object['attr']) ? object['attr'] : [],
			privacyThumbnail = _is.var(object['thumbnail']) && _is.string(object['thumbnail']) ? object['thumbnail'] : "",
			privacyIcon = _is.var(object['icon']) && _is.string(object['icon']) ? object['icon'] : "",
			privacyText = _is.var(object['text']) && _is.string(object['text']) ? object['text'] : "",
			privacyCode = "<div class='g-privacy-button' privacy-key='"+privacyKey+"' privacy-class='"+privacyClass+"' privacy-thumbnail='"+privacyThumbnail+"' privacy-icon='"+privacyIcon+"' privacy-text='"+privacyText+"' privacy-value='"+privacyValue+"'> <div class='main'></div> <div class='list'></div> </div>";
		if (type == "replace") {
			selector.replaceWith(privacyCode);
		}else if (type == "append") {
			selector.append(privacyCode);
		}else if (type == "html") {
			selector.html(privacyCode);
		}
		var tabElem = $(".g-privacy-button[privacy-key='"+privacyKey+"']");
		var fnTabChange = function (object, callback) {
			callback = _is.function (callback) ? callback : function () {};
			var privacyClass = _is.var(object['classname']) && _is.string(object['classname']) ? object['classname'] : "";
			var privacyValue = _is.var(object['value']) && (_is.string(object['value']) || _is.number(object['value'])) ? object['value'] : "";
			var privacyThumbnail = _is.var(object['thumbnail']) && _is.string(object['thumbnail']) ? object['thumbnail'] : "";
			var privacyIcon = _is.var(object['icon']) && _is.string(object['icon']) ? object['icon'] : "";
			var privacyText = _is.var(object['text']) && _is.string(object['text']) ? object['text'] : "";
			if (privacyClass !== "") {
				tabElem.addClass(privacyClass);
			}
			if (tabElem.children(".main")['length'] === 0) {
				tabElem.append("<div class'main clearfix'></div>");
			}
			tabElem.children(".main").html("");
			if (privacyThumbnail !== "") {
				tabElem.children(".main").append("<div class='thumbnail row' style='background-image: url("+privacyThumbnail+");'></div>");
			}
			if (privacyIcon === "") {
				tabElem.children(".main").append("<div class='icon row'> <div class='i'></div> </div>");
			}
			if (privacyText !== "") {
				tabElem.children(".main").append("<div class='context row'> <span class='text'>"+privacyText+"</span> </div>");
			}
			tabElem.attr('privacy-class', privacyClass).attr('privacy-thumbnail', privacyThumbnail).attr('privacy-icon', privacyIcon).attr('privacy-text', privacyText).attr('privacy-value', privacyValue);
			callback();
		};
		fnTabChange({
			classname: privacyClass,
			value: privacyValue,
			thumbnail: privacyThumbnail,
			icon: privacyIcon,
			text: privacyText
		});
		if (tabElem.children(".list")['length'] === 0) {
			tabElem.append("<div class'list'></div>");
		}
		if (_is.var(privacyList) && _array.count(privacyList) > 0) {
			if (tabElem.children(".list").children(".main").length === 0) {
				tabElem.children(".list").html("<div class='main'></div>");
			}
			for (listLabel in privacyList) {
				listValue = privacyList[listLabel];
				listRowKey = _string.random(10);
				listRowClass = _is.var(listValue['classname']) && _is.string(listValue['classname']) ? listValue['classname'] : "";
				listRowValue = _is.var(listValue['value']) && (_is.string(listValue['value']) || _is.number(listValue['value'])) ? listValue['value'] : "";
				listRowThumbnail = _is.var(listValue['thumbnail']) && _is.string(listValue['thumbnail']) ? listValue['thumbnail'] : "";
				listRowIcon = _is.var(listValue['icon']) && _is.string(listValue['icon']) ? listValue['icon'] : "";
				listRowText = _is.var(listValue['text']) && _is.string(listValue['text']) ? listValue['text'] : "";
				listRowCallback = _is.var(listValue['callback']) && is_function (listValue['callback']) ? listValue['callback'] : function () {};
				//.
				tabElem.children(".list").children(".main").append("<div class='li clearfix nowrap' privacy-choice-key='"+listRowKey+"' privacy-choice-class='"+listRowClass+"' privacy-choice-thumbnail='"+listRowThumbnail+"' privacy-choice-icon='"+listRowIcon+"' privacy-choice-text='"+listRowText+"' privacy-choice-value='"+listRowValue+"'></div>");
				var listRowElem = tabElem.children(".list").children(".main").children(".li[privacy-choice-key='"+listRowKey+"']");
				if (listRowClass !== "") {
					listRowElem.addClass(listRowClass);
				}
				if (listRowThumbnail !== "") {
					listRowElem.append("<div class='thumbnail row' style='background-image: url("+listRowThumbnail+");'></div>");
				}
				if (listRowIcon === "") {
					listRowElem.append("<div class='icon row'> <div class='i'></div> </div>");
				}
				if (listRowText !== "") {
					listRowElem.append("<div class='context row'> <span class='text'>"+listRowText+"</span> </div>");
				}
				if (_is.number(listRowValue)) {
					
				}else if (new RegExp(/^([a-zA-Z0-9]{32,40})$/).test(listRowValue)) {
					
				}else if (_array.exists(listRowValue, ['privacy', 'private'])) {
					listRowValue = "private";
				}else if (_array.exists(listRowValue, ['friend', 'friends'])) {
					listRowValue = "friends";
				}else if (_array.exists(listRowValue, ['allfriend', 'allfriends'])) {
					listRowValue = "allfriends";
				}else if (_array.exists(listRowValue, ['public', 'everybody'])) {
					listRowValue = "public";
				}else if (_array.exists(listRowValue, ['family'])) {
					listRowValue = "family";
				}else {
					//.
				}
				listRowElem.removeAttr('privacy-choice-key');
				listRowCallback(listRowElem, tabElem);
			}
		}else {
			tabElem.children(".list").html("<div class='null'> <div class='context'> <span class='text'>no selection</span> </div> </div>");
		}
		var fnTabListChoose = function () {
			tabElem.children(".list").children(".main").children(".li").bind('click', function () {
				listRowElem = $(this);
				fnTabChange({
					classname: listRowElem.attr('privacy-choice-class'),
					value: listRowElem.attr('privacy-choice-value'),
					thumbnail: listRowElem.attr('privacy-choice-thumbnail'),
					icon: listRowElem.attr('privacy-choice-icon'),
					text: listRowElem.attr('privacy-choice-text')
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
			_document.eventstop(e);
			return false;
		}
		for (attrLabel in privacyAttr) {
			attrValue = privacyAttr[attrLabel];
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
var _privacy = _g.privacy;
_g.player = {
	use: function (id, options, player, callback) {
		var id = _is.sting(id) ? id : null;
		var options = _is.array(options) ? options : null;
		var player = _is.function(player) ? player : function () {};
		var callback = _is.function(callback) ? callback : function () {};
		//.
		if (id == null || options == null) {
			return false;
		}
		_g.player.exists(function (returnValue) {
			if (returnValue) {
				player(gplayer(id, options, callback));
			}else if (!returnValue) {
				console.log('player not ready, will try agian');
				var usePlayerLoop = function (c) {
					if (!_is.number(c)) {
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
	exists: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (!_is.function(gplayer)) {
			callback(true);
			return true;
		}else {
			callback(false);
			return false;
		}
	},
	setup: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var setPlayerStatus = function (value) {
			_g.session.add('client_player_ready', value);
			callback(value);
		};
		_source.add({
			'type': 'js',
			'content': '<?php print $_tool->links("source/js/template/mediaplayer.js"); ?>'
		});
		_source.add({
			'type': 'css',
			'content': '<?php print $_tool->links("source/css/template/mediaplayer.css"); ?>'
		});
		setPlayerStatus(true);
	},
	ready: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (_g.session.exists('client_player_ready') === true)  {
			var returnValue = _g.session.get('client_player_ready');
			callback(returnValue);
		}else {
			_g.player.setup(function (returnValue) {
				callback(returnValue);
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
	setup: function (callback) {
		var setRecorderStats = function (value) {
			_g.session.add('client_recorder_ready', value);
			callback(value);
		};
		navigator = window.navigator;
	  	navigator.getUserMedia = (navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.msGetUserMedia);
	  	navigator.getUserMedia({audio : true, video: true}, function () {
			_source.add({
				'type': 'js',
				'content': '<?php print $_tool->links("source/js/template/recorder.js"); ?>'
			});
	  	}, function () {
	  		setRecorderStats(false);
	  	});
	},
	ready: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (_g.session.exists('client_recorder_ready') === true)  {
			var allowValue = _g.session.get('client_recorder_ready');
			callback(allowValue);
		}else {
			var callbackSetupFunc = function (value) {
				allowValue = value;
				callback(allowValue);
			};
			_g.recorder.setup(callbackSetupFunc);
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
_g.viewer = {};
var _viewer = _g.viewer;
_g.ajaxrequest = {
	use: function (object, callback) {
		if (!_is.array(object)) {
			return false;
		}
		var callback = _is.function (callback) ? callback : function () {};
		var requestType = _is.string(object['type']) ? object['type'] : 'POST',
			requestURL = _is.string(object['url']) ? object['url'] : '',
			requestUsername = _is.string(object['username']) || _is.number(object['username']) ? object['username'] : null,
			requestPassword = _is.string(object['password']) || _is.number(object['password']) ? object['password'] : null;
			requestAsync = _is.bool(object['async']) ? object['async'] : true,
			requestCache = _is.bool(object['cache']) ? object['cache'] : false,
			requestTimecache = _is.number(object['timecache']) ? object['timecache'] * 1000 : (60 * 5) * 1000,
			requestHeaders = _is.array(object['headers']) ? object['headers'] : {},
			requestDataProcess = _is.bool(object['dataprocess']) ? object['dataprocess'] : true,
			requestCompress = _is.bool(object['compress']) ? object['compress'] : true,
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
			requestRandkey = _string.random(10),
			requestVerify = "<?php if (isset($_tool->captcha()['action']['xhr']['object']) && is_string($_tool->captcha()['action']['xhr']['object'])) print $_tool->captcha()['action']['xhr']['object']; else print "ObjRequest"; ?>",
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
			if (_string.lowercase(label) == ("Content-Type").toLowerCase) {
				hasContentType++;
			}
		}
		var isGetFile = true;
		if (new RegExp(/(\.(ajax))$/i).test(requestURL)) {
			var isGetFile = false;
		}
		if (hasContentType === 0 && !isGetFile && requestDataProcess && _is.exists(requestData) && (!_is.string(requestData) && !_is.number(requestData))) {
			requestHeaders['content-type'] = "application/x-www-form-urlencoded";
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
		if (requestCompress) {
			requestHeaders['compress'] = true;
		}
		headersLoop: for (var headerType in requestHeaders) {
			requestAjax.setRequestHeader(_string.ucwords(headerType), requestHeaders[headerType]);
		}
		if (new RegExp("<?php print $_tool->links("source/ajax/action.ajax"); ?>".replace(<?php print $_parameter->get('regex_url_giccos_domain'); ?>, ""), "ig").test(requestURL) === true) {
			requestAjax.setRequestHeader("Token", "<?php print $_tool->captcha()['action']['xhr']['token']; ?>");
			_cookie.create("gXHR_"+requestRandkey, "<?php if (isset($_tool->captcha()['action']['xhr']['cookie']) && is_string($_tool->captcha()['action']['xhr']['cookie'])) print $_tool->captcha()['action']['xhr']['cookie']; else print "CookieRequest"; ?>", <?php print $_parameter->get('xhr_cookie_timeout'); ?> * 1000);
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
	abort: function (request, callback) {
		var request = _is.array(request) ? request : {},
			callback = _is.function(callback) ? callback : function () {};
		try {
			request.abort();
			callback(true);
			return true;
		} catch (e) {
			callback(false);
			return false;
		}
	},
	cache: { // local
		push: function (key, data, timeout, callback) {
			var key = _is.string(key) ? md5(key) : null,
				timenow = Math.floor(Date.now() / 1000),
				timeout = _is.number(timeout) ? timeout : (60 * 5) * 1000,
				data = _is.exists(data) ? data : null,
				callback = _is.function(callback) ? callback : function () {};
			if (!_is.exists(key)) {
				callback(false);
				return false;
			}else {
				var fnCachePush = function (arrCached, callback) {
					var callback = _is.function(callback) ? callback : function () {};
					arrCached[key] = {timeout: (timenow + timeout), data: data};
					_cache.set('client_ajaxrequest_cached', arrCached);
					callback(true);
					return true;
				};
				var ajaxRequestCached = {};
				_cache.exists('client_ajaxrequest_cached', function (isCached) {				
					if (isCached) {
						_cache.get('client_ajaxrequest_cached', function (dataCached) {
							var ajaxRequestCached = _is.array(dataCached) ? dataCached : {};
							return fnCachePush(ajaxRequestCached, callback);
						});
					}else {
						return fnCachePush(ajaxRequestCached, callback);
					}
				});
			}
		},
		get: function (key, callback) {
			var key = _is.string(key) ? md5(key) : null,
				callback = _is.function(callback) ? callback : function () {};
			if (!_is.exists(key)) {
				callback(false);
				return false;
			}else {
				var fnCacheGet = function (arrCached, callback) {
					var callback = _is.function(callback) ? callback : function () {};
					if (!_is.exists(arrCached, arrCached[key])) {
						callback(false);
						return false;
					}else {
						callback(arrCached[key]['data']);
						return arrCached[key]['data'];
					}
				};
				var ajaxRequestCached = {};
				_cache.exists('client_ajaxrequest_cached', function (isCached) {				
					if (isCached) {
						_cache.get('client_ajaxrequest_cached', function (dataCached) {
							var ajaxRequestCached = _is.array(dataCached) ? dataCached : {};
							return fnCacheGet(ajaxRequestCached, callback);
						});
					}else {
						return fnCacheGet(ajaxRequestCached, callback);
					}
				});
			}
		},
		exists: function (key, callback) {
			var key = _is.string(key) ? md5(key) : null,
				callback = _is.function(callback) ? callback : function () {};
			if (!_is.exists(key)) {
				callback(false);
				return false;
			}else {
				var fnCacheExists = function(arrCached, callback) {
					var callback = _is.function(callback) ? callback : function () {};
					if (!_is.exists(arrCached, arrCached[key])) {
						callback(false);
						return false;
					}else {
						callback(true);
						return true;
					}
				};
				var ajaxRequestCached = {};
				_cache.exists('client_ajaxrequest_cached', function (isCached) {				
					if (isCached) {
						_cache.get('client_ajaxrequest_cached', function (dataCached) {
							var ajaxRequestCached = _is.array(dataCached) ? dataCached : {};
							return fnCacheExists(ajaxRequestCached, callback);
						});
					}else {
						return fnCacheExists(ajaxRequestCached, callback);
					}
				});
			}
		},
		clean: function (callback) {
			var timenow = Math.floor(Date.now() / 1000),
				callback = _is.function(callback) ? callback : function () {};
			var fnCacheClean = function(arrCached, callback) {
				var callback = _is.function(callback) ? callback : function () {};
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
				callback(true);
				return true;
			};
			var ajaxRequestCached = {};
			_cache.exists('client_ajaxrequest_cached', function (isCached) {				
				if (isCached) {
					_cache.get('client_ajaxrequest_cached', function (dataCached) {
						var ajaxRequestCached = _is.array(dataCached) ? dataCached : {};
						return fnCacheClean(ajaxRequestCached, callback);
					});
				}else {
					return fnCacheClean(ajaxRequestCached, callback);
				}
			});
		}
	},
	/*
	cache: { // session
		push: function (key, data, timeout, callback) {
			key = _is.string(key) ? md5(key) : null;
			timenow = Math.floor(Date.now() / 1000);
			timeout = _is.number(timeout) ? timeout : (60 * 5) * 1000;
			data = _is.exists(data) ? data : null;
			var callback = _is.function(callback) ? callback : function () {};
			if (!_is.exists(key)) {
				callback(false);
				return false;
			}else {
				var ajaxRequestCached = {};
				if (_session.exists('client_ajaxrequest_sessiond')) {
					var ajaxRequestCached = _is.array(_session.get('client_ajaxrequest_sessiond')) ? _session.get('client_ajaxrequest_sessiond') : {};
				}
				ajaxRequestCached[key] = {timeout: (timenow + timeout), data: data};
				_session.set('client_ajaxrequest_sessiond', ajaxRequestCached);
				callback(true);
				return true;
			}
		},
		get: function (key, callback) {
			key = _is.string(key) ? md5(key) : null;
			var callback = _is.function(callback) ? callback : function () {};
			if (!_is.exists(key)) {
				callback(false);
				return false;
			}else {
				var ajaxRequestCached = {};
				if (_session.exists('client_ajaxrequest_sessiond')) {
					var ajaxRequestCached = _is.array(_session.get('client_ajaxrequest_sessiond')) ? _session.get('client_ajaxrequest_sessiond') : {};
				}
				if (!_is.exists(ajaxRequestCached, ajaxRequestCached[key])) {
					callback(false);
					return false;
				}else {
					callback(ajaxRequestCached[key]['data']);
					return ajaxRequestCached[key]['data'];
				}
			}
		},
		exists: function (key, callback) {
			key = _is.string(key) ? md5(key) : null;
			var callback = _is.function(callback) ? callback : function () {};
			if (!_is.exists(key)) {
				callback(false);
				return false;
			}else {
				var ajaxRequestCached = {};
				if (_session.exists('client_ajaxrequest_sessiond')) {
					var ajaxRequestCached = _is.array(_session.get('client_ajaxrequest_sessiond')) ? _session.get('client_ajaxrequest_sessiond') : {};
				}
				if (!_is.exists(ajaxRequestCached, ajaxRequestCached[key])) {
					callback(false);
					return false;
				}else {
					callback(true);
					return true;
				}
			}
		},
		clean: function (callback) {
			timenow = Math.floor(Date.now() / 1000);
			var callback = _is.function(callback) ? callback : function () {};
			var ajaxRequestCached = {};
			if (_session.exists('client_ajaxrequest_sessiond')) {
				var ajaxRequestCached = _is.array(_session.get('client_ajaxrequest_sessiond')) ? _session.get('client_ajaxrequest_sessiond') : {};
			}
			for (var key in ajaxRequestCached) {
				if (_is.exists(ajaxRequestCached[key])) {
					if (_is.number(ajaxRequestCached[key]['timeout'])) {
						if (ajaxRequestCached[key]['timeout'] < timenow) {
							delete ajaxRequestCached[key];
						}
					}else {
						delete ajaxRequestCached[key];
					}
				}
			}
			_session.set('client_ajaxrequest_sessiond', ajaxRequestCached);
			callback(true);
			return true;
		}
	},
	*/
	state: function (request, code, callback) {
		if (!_is.array(request)) {
			return false;
		}
		var callback = _is.function(callback) ? callback : function () {};
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
						callback(requestReturn, requestResponse, requestReady);
					}
				});
			});
			return true;
		} catch (e) {
			return false;
		}
	},
	done: function (request, callback) {
		if (!_is.array(request)) {
			return false;
		}
		var callback = _is.function(callback) ? callback : function () {};
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
						callback(requestReturn, requestResponse, requestReady);
					}
				});
			});
			return true;
		} catch (e) {
			return false;
		}
	},
	send: function (request, timeout, data, callback) {
		if (!_is.array(request)) {
			return false;
		}
		var callback = _is.function(callback) ? callback : function () {};
		try {
			setTimeout(function () {
				request.send(_is.exists(data) ? data : null);
				callback(request, {'return': true});
			}, timeout);
			return true;
		} catch (e) {
			callback(request, {'return': false});
			return false;
		}
	},
	id: function (key) {
		//.
	},
	create: function () {
		var objectXHR = false;
		if (window.XMLHttpRequest) {
			var objectXHR = new XMLHttpRequest();
		}else if (window.ActiveXObject) {
			try {
				var objectXHR = new ActiveXObject("Msxml2.XMLHTTP.6.0");
			} catch (e) {
				try{
					var objectXHR = new ActiveXObject("Msxml2.XMLHTTP.3.0");
				} catch (e) {
					//.
				}
			}
		}
		return objectXHR;
	},
	responseparse: function (data, callback) {
		data = _is.var(data) ? data : null;
		callback = _is.function(callback) ? callback : function () {};

	},
	dataparse: function (data, local) {
		local = _is.var(local) ? local : true;
		if (local && _array.count(data) > 0) {
			var dataCaching = {};
			dataLoop: for (var label in data) {
				if (_array.exists(label, ["port", "token"])) {
					dataCaching['#' + label] = data[label];
					delete data[label];
				}else {
					dataCaching[label] = data[label];
					delete data[label];
				}
			}
			var data = dataCaching;
			var dataCaching = undefined;
			if (typeof data['#token'] === "undefined" && typeof data['#port'] !== "undefined") {
				<?php
				if (isset($_tool->captcha()['action'])) {
					$listReplaceToken = null;
					$captchaListArr = $_tool->captcha()['action'];
					if (isset($captchaListArr['xhr'])) {
						unset($captchaListArr['xhr']);
					}
					foreach ($captchaListArr as $captchaLabel => $captchaValue) {
						if (!in_array($captchaLabel, ["key"])) {
							if ($listReplaceToken == null) {
								$listReplaceToken .= "if (_is.string(data['#port']) && data['#port'] == '".$captchaLabel."') { data['#token'] = '".$captchaValue."';  }";
							}else {
								$listReplaceToken .= "else if (_is.string(data['#port']) && data['#port'] == '".$captchaLabel."') { data['#token'] = '".$captchaValue."';  }";
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
	serialize: function (object, prefix) {
		var str = [];
		for (var p in object) {
			if (object.hasOwnProperty(p)) {
				var k = prefix ? prefix + "[" + p + "]" : p, v = object[p];
				str.push(typeof v == "object" ? _g.ajaxrequest.serialize(v, k) : encodeURIComponent(k) + "=" + encodeURIComponent(v));
		    }
		}
		return str.join("&");
	},
	responseparse: function (type, data) {
		if (data == null) {
			return null;
		}
		if (type == "json" && isJSON(data)) {
			data = JSON.parse(data);
		}else if (type == "text") {
			data = data.toString();
		}
		return data;
	},
	statechange: function (request, callback) {
		if (!_is.array(request)) {
			return false;
		}
		var callback = _is.function(callback) ? callback : function () {};
		request.onreadystatechange = callback;
		return request;
	},
	ready: function (request, callback) {
		if (!_is.array(request)) {
			return false;
		}
		callback = _is.function(callback) ? callback : null;
		requestState = request.readyState ? request.readyState : false;
		requestStatus = request.status ? request.status : false;
		if (_is.function(callback)) {
			callback({'state': requestState, 'status': requestStatus});
		}
		return {'state': requestState, 'status': requestStatus};
	},
	response: function (request, type, callback) {
		if (!_is.array(request)) {
			return false;
		}
		type = typeof type === "string" ? type : null;
		callback = _is.function(callback) ? callback : null;
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
			if (_array.exists(responseObj['type'], ['', 'document'])) {
				responseObj['text'] = _is.exists(request.responseText) ? request.responseText : null;
				responseObj['xml'] = _is.exists(request.responseXML) ? request.responseXML : null;
			}else {
				responseObj['text'] = responseObj['xml'] = null;
			}
		}
		if (_is.function(callback)) {
			callback(responseObj);
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
		if (type == null || fn == null) {
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
		if (type == null || fn == null) {
			return false;
		}
		return request.addEventListener(type, fn, sync);
	}
};
_g.xhr = _g.ajaxrequest;
var _ajaxrequest = _g.ajaxrequest;
var _xhr = _g.xhr;
_g.trash = {
	use: function (elem, callback) {
		var elem = _is.selector(elem) ? elem : {},
			callback = _is.function(callback) ? callback : function (elem) {};
		//.

	},
	cancel: function (elem, callback) {
		var elem = _is.selector(elem) ? elem : {},
			callback = _is.function(callback) ? callback : function (elem) {};
		//.

	},
	undo: function (elem, callback) {
		var elem = _is.selector(elem) ? elem : {},
			callback = _is.function(callback) ? callback : function (elem) {};
		//.
	},
};
var _trash = _g.trash;
_g.tooltip = {
	arrow: function (selector, tooltip, object, callback) {
		var selector = _is.selector(selector) ? selector : null,
			tooltip = _is.selector(tooltip)? tooltip : null,
			object = _is.object(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};
		//.
		var tooltipArrow = _is.string(object['arrow']) && _array.exists(object['arrow'], ["e", "w", "s", "n"]) ? object['arrow'] : "",
			tooltipSpace = 10,
			tooltipPadding = 10;
		if (!_is.selector(selector) || _selector.count(selector) === 0 || !_is.selector(tooltip) || _selector.count(tooltip) === 0) {
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
			/*
			tooltip.find(".body > .main").css({
				'max-height': tooltipMaxHeight + 'px',
				'max-width': tooltipMaxWidth + 'px'
			});
			*/
			var fnResizeTemplates = function (reset) {
				var tooltipHeight = tooltip.width('auto').innerHeight(),
					tooltipWidth = tooltip.height('auto').innerWidth();
				if (_array.exists(tooltipArrow, ["e", "east"]) || _array.exists(tooltipArrow, ["w", "west"])) {
					var arrowHeight = 12,
						arrowWidth = 6;
				}else if (_array.exists(tooltipArrow, ["s", "south"]) || _array.exists(tooltipArrow, ["n", "north"])) {
					var arrowHeight = 6,
						arrowWidth = 12;
				}
				//.
				tooltip.attr('tooltip-arrow', tooltipArrow);
				if (_array.exists(tooltipArrow, ["e", "east"])) {
					tooltip.css({
						'top': (selectorOffset['top'] + (selectorHeight - tooltipHeight) / 2) + 'px',
						'left': (selectorOffset['left'] + selectorWidth + tooltipSpace) + 'px'
					});
					tooltip.children(".arrow").css({
						'margin-top': ((tooltipHeight - arrowHeight) / 2) + 'px',
						'margin-left': (0 - arrowWidth) + 'px'
					});
				}else if (_array.exists(tooltipArrow, ["w", "west"])) {
					tooltip.css({
						'top': (selectorOffset['top'] + (selectorHeight - tooltipHeight) / 2) + 'px',
						'left': (selectorOffset['left'] - tooltipWidth - tooltipSpace) + 'px'
					});
					tooltip.children(".arrow").css({
						'margin-top': ((tooltipHeight - arrowHeight) / 2) + 'px',
						'margin-left': (tooltipWidth + 1) + 'px'
					});
				}else if (_array.exists(tooltipArrow, ["s", "south"])) {
					tooltip.css({
						'top': (selectorOffset['top'] - tooltipHeight - tooltipSpace) + 'px',
						'left': (selectorOffset['left'] + (selectorWidth - tooltipWidth) / 2) + 'px'
					});
					tooltip.children(".arrow").css({
						'margin-top': (tooltipHeight + 1) + 'px',
						'margin-left': ((tooltipWidth - arrowWidth) / 2) + 'px'
					});
				}else if (_array.exists(tooltipArrow, ["n", "north"])) {
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
				callback(selector, tooltip);
			});
			fnResizeTemplates();
			return true;
		}
	},
	set: function (elem, object, callback)	 {
		var elem = _is.selector(elem) ? elem : {},
			object = _is.object(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};
		if (_selector.count(elem) === 0) {
			callback(false, null, elem);
			return false;
		}else {
			var tooltipKey = _string.random(10),
				tooltipClass = _is.string(object['classname']) ? object['classname'] : "",
				tooltipArrow = _is.string(object['arrow']) && _array.exists(object['arrow'], ["e", "w", "s", "n"]) ? object['arrow'] : "",
				tooltipAction = _is.string(object['action']) && _array.exists(object['action'], ["hover", "click", "dblclick"]) ? object['action'] : "",
				tooltipContent = _is.string(object['content']) ? object['content'] : "",
				tooltipOnce = _is.bool(object['once']) ? object['once'] : true;
			if (!_is.exists(tooltipAction, tooltipArrow)) {
				ccallback(false, null, elem);
				return false;
			}
			if (!_global.exists("#g-tooltip")) {
				_global.add("<div id='g-tooltip'><div class='content'></div></div>");
			}
			var tooltipTab = $("#g-tooltip"),
				tooltipElem = tooltipTab.find(".li[tooltip-key='"+tooltipKey+"']");
			if (_g.tool.selector.exists(tooltipElem)) {
				callback(false, tooltipElem, elem);
				return true;
			}
			var tooltipCode = "<div class='li card hide' tooltip-key='"+tooltipKey+"'> <div class='arrow'></div> <div class='body'> <div class='main'> "+tooltipContent+" </div> </div> </div>";
			if (_selector.count(tooltipTab.children(".content").children(".li")) === 0) {
				tooltipTab.children(".content").append(tooltipCode);
			}else {
				tooltipTab.children(".content").children(".li").first().before(tooltipCode);
			}
			var tooltipElem = tooltipTab.find(".li[tooltip-key='"+tooltipKey+"']");
			var fnTooltipResize = function () {
				_g.tooltip.arrow(elem, tooltipElem, {arrow: tooltipArrow});
			};
			if (tooltipClass !== "") {
				tooltipElem.addClass(tooltipClass);
			}
			if (!_is.exists(tooltipArrow)) {
				callback(false, null, null);
				return false;
			}
			if (tooltipOnce) {
				_selector.cache.get(elem, 'tooltip', function (elemTooltip) {
					var elemTooltip = _is.array(elemTooltip) && _is.array(elemTooltip[0]) ? elemTooltip[0] : [];
					for (var i in elemTooltip) {
						_tooltip.close(elemTooltip[i]);
						delete elemTooltip[i];
					}
				});
				_selector.cache.get(elem, 'tooltip', function (elemTooltip) {
					var elemTooltip = _is.array(elemTooltip[0]) ? elemTooltip[0] : [];
					elemTooltip[_array.count(elemTooltip)] = tooltipElem;
					_selector.cache.set(elem, 'tooltip', elemTooltip);
				});
			}
			tooltipElem.stop(true, true).hide().hide(fnTooltipResize).removeClass('hide');
			if (_is.string(elem.attr('title'))) _selector.cache.set(elem, 'title', elem.attr('title'));
			if (_array.exists(tooltipAction, ["hover", "mouseover"])) {
				elem.bind('mouseover', function (e) {
					setTimeout(fnTooltipResize, 0);
					if (_is.string(elem.attr('title'))) elem.removeAttr('title');
					tooltipElem.stop(true, false).fadeIn(500);
					return _document.eventstop(e);
				});
				tooltipElem.bind('mouseover', function (e) {
					return _document.eventstop(e);
				});
				$(document).bind('mouseover', function (e) {
					tooltipElem.stop(true, false).fadeOut(500);
					if (_is.string(elem.attr('title'))) _selector.cache.get(elem, 'title', function (elemTitle) { elem.attr('title', elemTitle[0]); });
				});
			}else if (_array.exists(tooltipAction, ["click"])) {
				elem.bind('click', function (e) {
					setTimeout(fnTooltipResize, 0);
					if (_is.string(elem.attr('title'))) elem.removeAttr('title');
					tooltipElem.stop(true, false).fadeIn(500);
					return _document.eventstop(e);
				});
				tooltipElem.bind('click', function (e) {
					return _document.eventstop(e);
				});
				$(document).bind('click', function (e) {
					tooltipElem.stop(true, false).fadeOut(500);
					if (_is.string(elem.attr('title'))) _selector.cache.get(elem, 'title', function (elemTitle) { elem.attr('title', elemTitle[0]); });
				});
			}else if (_array.exists(tooltipAction, ["dblclick"])) {
				elem.bind('dblclick', function (e) {
					setTimeout(fnTooltipResize, 0);
					if (_is.string(elem.attr('title'))) elem.removeAttr('title');
					tooltipElem.stop(true, false).fadeIn(500);
					return _document.eventstop(e);
				});
				tooltipElem.bind('dblclick', function (e) {
					return _document.eventstop(e);
				});
				$(document).bind('dblclick', function (e) {
					tooltipElem.stop(true, false).fadeOut(500);
					if (_is.string(elem.attr('title'))) _selector.cache.get(elem, 'title', function (elemTitle) { elem.attr('title', elemTitle[0]); });
				});
			}
			$(window).bind('resize', fnTooltipResize, 500);
			callback(true, tooltipElem, elem);
			return true;
		}
	},
	close: function (tooltip, callback) {
		var tooltip = _is.selector(tooltip) ? tooltip : null,
			callback = _is.function(callback) ? callback : function () {};
		//.
		if (_selector.count(tooltip) > 0) {
			tooltip.remove();
			callback(true);
			return true;
		}else {
			callback(false);
			return false;
		}
	},
	each: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
	},
	enable: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		callback(true);
		return true;
	},
	ready: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (_g.session.exists('client_tooltip_ready') === true)  {
			callback(_g.session.get('client_tooltip_ready'));
		}else {
			var callbackSetupFunc = function (value) {
				callback(value);
			};
			_g.tooltip.setup(callbackSetupFunc);
		}
	},
	setup: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var setTooltipStatus = function (value) {
			_g.session.add('client_tooltip_ready', value);
			callback(value);
		};
		_g.tooltip.enable(function (returnValue) {
			setTooltipStatus(returnValue);
		});
	},
	autoload: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		_g.tooltip.ready(function (isEnabled) {
			console.log('tooltip - enable: ' + isEnabled);
			if (isEnabled) {
				_g.tooltip.each();
				callback();
			}
		});
	}
};
var _tooltip = _g.tooltip;
_tooltip.autoload();
_g.listchoose = {
	append: function (selector, object, callback) {
		var selector = _is.selector(selector) ? selector : null,
			object = _is.array(object) ? object : null,
			callback = _is.function(callback) ? callback : function () {},
			listKey = _string.random(10),
			listClass = _is.string(object['classname']) ? object['classname'] : null,
			listAttr = _is.object(object['attr']) ? object['attr'] : [],
			listTitle = _is.string(object['title']) || _is.number(object['title']) ? object['title'] : null,
			listContent = _is.object(object['content']) ? object['content'] : null,
			listNote = _is.string(object['note']) || _is.number(object['note']) ? object['note'] : null;
		if (!_selector.exists(selector)) {
			callback(false);
		}else {
			var fnListChooseSetup = function () {
				if (!_global.exists("#g-listchoose")) {
					_global.add("<div id='g-listchoose'><div class='listchoose-content'></div></div>");
				}
			};
			var fnListChooseAppend = function (code) {
				fnListChooseSetup();
				$("#g-listchoose > .listchoose-content").append(code);
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
						tabKey = _string.random(10),
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
							rowKey = _string.random(10),
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
			tagKey = _string.random(10),
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
		popupKey = _string.random(10);
		popupClass = _is.string(object['classname']) ? object['classname'] : "";
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
			popupKey = _string.random(10),
			popupClass = _is.string(object['classname']) ? object['classname'] :null,
			popupTitle = _is.string(object['title']) ? object['title'] : null,
			popupContent = _is.string(object['content']) ? object['content'] : null,
			popupNote = _is.string(object['note']) ? object['note'] : null,
			popupClose = _is.bool(object['close']) ? object['close'] : true,
			popupBind = _is.array(object['bind']) ? object['bind'] : {};
			popupCode = "<div class='li' popup-key='"+popupKey+"'> <div class='container'> <div class='header'> <div class='title'> <span class='text'>"+(_is.exists(popupTitle) ? popupTitle : "")+"</span> </div> <div class='action'> <div class='close'></div> </div> </div> <div class='body'> <div class='main "+popupClass+"'> "+(_is.exists(popupContent) ? popupContent : "")+" </div> </div> <div class='footer'> <div class='note'> <span class='text'>"+(_is.exists(popupNote) ? popupNote : "")+"</span> </div> </div> </div> </div>";
		if (!_global.exists("#g-popup")) {
			_global.add("<div id='g-popup'><div class='content'></div></div>");
		}
		var popupTab = $("#g-popup");
		popupTab.children(".content").append(popupCode);
		var popupElem = popupTab.children(".content").children(".li[popup-key='"+popupKey+"']");
		var fnPopupOverflowDisable = function () {
			if (!$("body").hasClass('scroll-disable')) {
				$("body").addClass('scroll-disable');
			}
		};
		if (!popupClose) {
			popupElem.find(".container > .header > .action .close").remove();
		}else {
			popupElem.find(".container > .header > .action .close").bind('click', function () {
				_g.popup.close(popupElem);
			});
			$(document).bind('keyup', function (e) {
				if ((e.keyCode ? e.keyCode : e.which) == 27) {
					_popup.close(popupElem);
				}
			});
		}
		for (var i in popupBind) {
			var popupBindObj = popupBind[i];
			if (_is.exists(popupBindObj['type'], popupBindObj['callback'])) {
				_g.popup.bind.add(popupElem, popupBindObj['type'], popupBindObj['callback']);
			}
		}
		if (_is.exists(popupClass)) {
			popupElem.addClass(popupClass);
		}
		if (!_is.exists(popupNote)) {
			popupElem.addClass('not-note');
		}
		popupElem.fadeOut(0, function () {
			var popupContainer = popupElem.children(".container");
		}).fadeIn(function () {
			fnPopupOverflowDisable();
			var popupContainer = popupElem.children(".container");
		}).removeAttr('popup-key');
		callback(popupElem);
	},
	bind: {
		add: function (popupElem, bindType, callback) {
			var popupElem = _is.selector(popupElem) ? popupElem : null,
				bindType = _is.string(bindType) ? bindType : null,
				callback = _is.function(callback) ? callback : function () {};
			if (!_is.exists(popupElem) || !_selector.exists(popupElem)) {
				callback(false);
				return false;
			}else if (_array.exists(bindType, ['close'])) {
				callback(false);
				return false;
			}
			_selector.cache.get(popupElem, 'bind', function (returnObj) {
				var returnObj = returnObj[0];
				returnObj['close'] = _is.array(returnObj['close']) ? returnObj['close'] : [];
				returnObj['close'][_array.count(returnObj['close'])] = callback;
				_selector.cache.set(popupElem, 'bind', returnObj);
			});
			return true;
		}
	},
	alert: {
		add: function (popupElem, object, callback) {
			var popupElem = _is.selector(popupElem) ? popupElem : null,
				object = _is.array(object) ? object : {},
				callback = _is.function(callback) ? callback : function () {};
			if (!_is.exists(popupElem) || !_selector.exists(popupElem)) {
				callback(false);
				return false;
			}
			object['title'] = _is.string(object['title']) ? object['title'] : "alert";
			object['content'] = _is.string(object['content']) ? object['content'] : "Do you want close this popup ?<br>Maybe have something was not completed !";
			popupElem['alert'] = {'title': object['title'], 'content': object['content']};
			callback(true);
			return true;
		},
		remove: function (popupElem, callback) {
			var popupElem = _is.selector(popupElem) ? popupElem : null,
				callback = _is.function(callback) ? callback : function () {};
			if (!_is.exists(popupElem) || !_selector.exists(popupElem)) {
				callback(false);
				return false;
			}
			if (_is.exists(popupElem['alert'])) {
				delete popupElem['alert'];
			}
			callback(true);
			return true;
		}
	},
	close: function (popupElem, callback) {
		var popupElem = _is.selector(popupElem) ? popupElem : {},
			callback = _is.function(callback) ? callback : function () {};
		//.
		if (_selector.count(popupElem) > 0) {
			var fnPopupCloseAction = function () {
				return _selector.cache.get(popupElem, 'bind', function (returnObj) {
					var returnObj = returnObj[0];
					if (_is.array(returnObj) && _is.array(returnObj['close'])) {
						for (var i in returnObj['close']) {
							if (_is.function(returnObj['close'][i])) {
								returnObj['close'][i](popupElem);
								delete returnObj['close'][i];
							}
						}
					}
					_g.popup.remove(popupElem);
				});
			};
			if (_is.array(popupElem['alert'])) {
				var popupAlert = popupElem['alert'];
				_g.popup.add({
					'classname': 'popup-alert',
					'title': _is.exists(popupAlert, popupAlert['title']) ? popupAlert['title'] : null,
					'content': _is.exists(popupAlert, popupAlert['content']) ? "<div class='description'>"+popupAlert['content']+"</div><div class='action'><div class='confirm button _button'>yes</div><div class='cancel button _button'>no</div></div>" : null
				}, function (popupCloseElem) {
					var alertButtonAll = popupCloseElem.find(".container > .body > .main > .action > .button");
					alertButtonAll.bind('click', function () {
						var alertButtonElem = $(this);
						if (alertButtonElem.hasClass('confirm')) {
							_g.popup.close(popupCloseElem);
							fnPopupCloseAction();
						}else {
							_g.popup.close(popupCloseElem);
						}
					});
				});
				return;
			}else {
				fnPopupCloseAction();
			}
		}else {
			callback({'return': true, 'exists': false, 'removed': false});
		}
		return true;
	},
	remove: function (elem, callback) {
		var elem = _is.selector(elem) ? elem : {},
			callback = _is.function(callback) ? callback : function () {};
		//.
		if (_selector.count(elem) > 0) {
			elem.fadeOut(750, function () {
				$(this).remove();
				$("body").removeClass('scroll-disable');
				callback({'return': true, 'exists': true, 'removed': true});
			});
		}else {
			callback({'return': true, 'exists': false, 'removed': false});
		}
		return true;
	}
};
var _popup = _g.popup;
_g.notification = {
	add: function (object, callback) {
		var object = _is.object(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};
		//.
		var notificationKey = _string.random(10),
			notificationClass = _is.string(object['classname']) ? object['classname'] : "",
			notificationType = _is.string(object['type']) ? object['type'] : "none",
			notificationTitleText = typeof object['title'] === "object" && typeof object['title']['text'] === "string" ? object['title']['text'] : "",
			notificationTitleLink = typeof object['title'] === "object" && typeof object['title']['link'] === "string" ? object['title']['link'] : "",
			notificationTitleTarget = typeof object['title'] === "object" && typeof object['title']['target'] === "string" ? object['title']['target'] : "",
			notificationContent = _is.string(object['content']) ? object['content'] : "",
			notificationNoteText = typeof object['note'] === "object" && typeof object['note']['text'] === "string" ? object['note']['text'] : "",
			notificationNoteLink = typeof object['note'] === "object" && typeof object['note']['link'] === "string" ? object['note']['link'] : "",
			notificationNoteTarget = typeof object['note'] === "object" && typeof object['note']['target'] === "string" ? object['note']['target'] : "",
			notificationClose = typeof object['close'] === "boolean" ? object['close'] : true,
			notificationCollapse = typeof object['collapse'] == "boolean" ? object['collapse'] : false,
			notificationTimeout = typeof object['timeout'] == "number" ? object['timeout'] : 0,
			notificationCode = "<div class='li _card' notification-key='"+notificationKey+"'> <div class='header'> <div class='action'> <div class='icon close'></div> </div> <div class='title'> <a class='text'>"+notificationTitleText+"</a> </div> </div> <div class='body'> <div class='main'> "+notificationContent+" </div> </div> <div class='footer'> <div class='note'> <a class='text'>"+notificationNoteText+"</a> </div> </div> </div>";
		if (!_global.exists("#g-notification")) {
			_global.add("<div id='g-notification'><div class='content'></div></div>");
		}
		var notificationTab = $("#g-notification");
		if (_selector.count(notificationTab.children(".content").children(".li")) === 0) {
			notificationTab.children(".content").append(notificationCode);
		}else {
			notificationTab.children(".content").children(".li").first().before(notificationCode);
		}
		var notificationElem = notificationTab.children(".content").children(".li[notification-key='"+notificationKey+"']");
		var fnNotificationCloseAction = function () {
			_g.notification.close(notificationElem);
		};
		var fnNotificationCloseAlert = function () {
			fnNotificationCloseAction();
		};
		if (_is.exists(notificationType)) {
			notificationElem.addClass(notificationType);
		}
		if (_is.exists(notificationClass)) {
			notificationElem.addClass(notificationClass);
		}
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
		notificationElem.hide().slideDown(750).removeAttr('notification-key');
		callback(notificationElem);
	},
	close: function (notificationElem, callback) {
		var notificationElem = _is.selector(notificationElem) ? notificationElem : {},
			callback = _is.function(callback) ? callback : function () {};
		//.
		if (_selector.count(notificationElem) > 0) {
			notificationElem.slideUp(500, function () {
				_selector.cache.get(notificationElem, 'bind', function (returnObj) {
					var returnObj = _is.array(returnObj[0]) ? returnObj[0] : {};
					for (var bindId in returnObj) {
						if (_is.exists(returnObj[bindId]['type']) && returnObj[bindId]['type'] == "close") {
							if (_is.exists(returnObj[bindId]['func'])) {
								returnObj[bindId]['func'](notificationElem);
							}
						}
					}
				});
				notificationElem.remove();
				callback({'return': true, 'exists': true, 'removed': true});
			});
		}else {
			callback({'return': true, 'exists': false, 'removed': false});
		}
		return true;
	},
	bind: {
		add: function (notificationElem, bindType, callback) {
			var notificationElem = _is.selector(notificationElem) ? notificationElem : null,
				bindType = _is.string(bindType) ? bindType : null,
				callback = _is.function(callback) ? callback : function () {};
			if (_selector.count(notificationElem) == 0) {
				callback(false);
				return false;
			}
			_selector.cache.get(notificationElem, 'bind', function (returnObj) {
				var returnObj = _is.array(returnObj[0]) ? returnObj[0] : {};
				returnObj[_array.count(returnObj)] = {'type': bindType, 'func': callback};
				_selector.cache.set(notificationElem, 'bind', returnObj);
			});
			return true;
		},
		remove: function (notificationElem, bindType, callback) {
			var notificationElem = _is.selector(notificationElem) ? notificationElem : null,
				bindType = _is.string(bindType) ? bindType : null,
				callback = _is.function(callback) ? callback : null;
			if (_selector.count(notificationElem) == 0) {
				callback(false);
				return false;
			}
			_selector.cache.get(notificationElem, 'bind', function (returnObj) {
				var returnObj = _is.array(returnObj[0]) ? returnObj[0] : {};
				for (var bindId in returnObj) {
					if (_is.exists(returnObj[bindId]['type']) && returnObj[bindId]['type'] == bindType) {
						if (!_is.exists(callback)) {
							delete returnObj[bindId];
						}else {
							//.
						}
					}
				}
				returnObj[_array.count(returnObj)] = {'type': bindType, 'func': callback};
				_selector.cache.set(notificationElem, 'bind', returnObj);
			});
			return true;
		}
	}
};
var _notification = _g.notification;
_g.image = {
	stream: {
		card: {
			codeparse: function (object, options, callback) {
				var object = _is.array(object) ? object : {},
					options = _is.array(options) ? options : {},
					callback = _is.function(callback) ? callback : function () {};
				//.
				// console.log(object, options);
				var streamCardKey = _string.random(10),
					streamCardId = _is.string(object['id']) || _is.number(object['id']) ? object['id'] : null,
					streamCardNoteGuy = _is.exists(object['note']) && _is.exists(object['note']['guy']) ? object['note']['guy'] : {},
					streamCardNoteAction = _is.exists(object['note']) && _is.exists(object['note']['action']) ? object['note']['action'] : null,
					streamCardOptions = _is.array(object['options']) ? object['options'] : {},
					streamCardDisplay = _is.string(object['display']) ? object['display'] : null,
					streamCardDate = _is.exists(object['date']) ? object['date'] : null,
					streamCardEdited = _is.exists(object['edited']) ? object['edited'] : null,
					streamCardKeep = _is.exists(object['keep']) ? _parse.bool(object['keep']) : null,
					streamCardMultiple = _is.exists(object['multiple']) ? _parse.bool(object['multiple']) : null,
					streamCardCompress = _is.exists(object['compress']) ? _parse.bool(object['compress']) : null,
					streamCardStrip = _is.exists(object['strip']) ? _parse.bool(object['strip']) : null,
					streamCardCopyright = _is.exists(object['copyright']) ? object['copyright'] : null,
					streamCardMime = _is.exists(object['mime']) ? object['mime'] : null,
					streamCardNameraw = _is.exists(object['nameraw']) ? object['nameraw'] : null,
					streamCardDescription = _is.exists(object['description']) ? object['description'] : null,
					streamCardFile = _is.array(object['file']) ? object['file'] : {},
					streamCardTag = _is.array(object['tag']) ? object['tag'] : [],
					streamCardColor = _is.array(object['color']) ? object['color'] : [],
					streamCardScrapbook = _is.array(object['scrapbook']) ? object['scrapbook'] : {},
					streamCardAuthor = _is.array(object['author']) ? object['author'] : {},
					streamCardPrivate = _is.array(object['privacy']) ? object['privacy'] : {},
					streamCardDimension = _is.array(object['dimension']) ? object['dimension'] : {},
					streamCardFavorite = _is.array(object['favorite']) ? object['favorite'] : {},
					streamCardComment = _is.array(object['comment']) ? object['comment'] : null,
					streamCardLink = _is.string(object['link']) ? object['link'] : null,
					streamCardCode = "<div stream-card-key='"+streamCardKey+"' stream-card-id='"+streamCardId+"'></div>";
				var streamOptionsClass = _is.string(options['classname']) ? options['classname'] : null,
					streamOptionsAttr = _is.array(options['attr']) ? options['attr'] : {};
				for (var typePrivate in streamCardPrivate) {
					streamCardPrivate[typePrivate] = _privacy.object(streamCardPrivate[typePrivate]);
				}
				var streamCardElem = $(streamCardCode);
				if (_is.exists(streamOptionsClass)) {
					streamCardElem.addClass(streamOptionsClass);
				}
				if (_is.array(streamOptionsAttr) && _array.count(streamOptionsAttr) > 0) {
					for (var attrId in streamOptionsAttr) {
						streamCardElem.attr(attrId, streamOptionsAttr[attrId]);
					}
				}
				streamCardElem.attr('stream-card-info', _json.encode({'id': streamCardId, 'display': streamCardDisplay}));
				streamCardElem.append("<div class='box author clearfix'><div class='thumbnail'><a href='"+(_is.exists(streamCardAuthor['link']) ? streamCardAuthor['link'] : '')+"'><div class='img' style='background-image: url("+(_is.exists(streamCardAuthor['avatar']) ? streamCardAuthor['avatar'] : '')+");'></div></a></div><div class='context'><div class='name nowrap'><a class='text' href='"+(_is.exists(streamCardAuthor['link']) ? streamCardAuthor['link'] : '')+"'>"+(_is.exists(streamCardAuthor['name']) ? streamCardAuthor['name'] : '')+"</a></div><div class='tag nowrap'><a class='text' href='"+(_is.exists(streamCardAuthor['link']) ? streamCardAuthor['link'] : '')+"'>"+(_is.exists(streamCardAuthor['tag']) ? streamCardAuthor['tag'] : '')+"</a></div></div></div>");
				streamCardElem.append("<div class='box information clearfix'></div>");
				streamCardElem.append("<div class='box context clearfix'><span class='text'></div>");
				streamCardElem.append("<div class='box media clearfix'><div class='image clearfix'></div></div>");
				streamCardElem.append("<div class='box action clearfix'></div>");
				streamCardElem.append("<div class='box comment clearfix'><div class='context null'><span class='text'>comment has not yet been taken</span></div></div>");
				var cardAuthorElem = streamCardElem.children(".author"),
					cardInformationElem = streamCardElem.children(".information"),
					cardContextElem = streamCardElem.children(".context"),
					cardMediaElem = streamCardElem.children(".media"),
					cardActionElem = streamCardElem.children(".action"),
					cardCommentElem = streamCardElem.children(".comment");
				cardAuthorElem.append("<div class='options'><div class='nav'><div class='icon'></div></div><div class='list'></div></div>");
				_array.sort.default(streamCardOptions);
				for (var optionsType in streamCardOptions) {
					var optionsArr = streamCardOptions[optionsType];
					var optionsArr = _array.sort.default(optionsArr);
					var listOptionsElem = cardAuthorElem.children(".options").children(".list");
					if (optionsType == "author") {
						var listOptionsName = "author";
					}else if (optionsType == "image") {
						var listOptionsName = "image";
					}else {
						var listOptionsName = '';
					}
					if (_selector.count(listOptionsElem.children("."+optionsType)) == 0) listOptionsElem.append("<div class='box "+optionsType+"'><div class='navbar'><span class='text'>"+listOptionsName+"</span></div><div class='main'></div></div>");
					var thisListOptionsElem = listOptionsElem.children("."+optionsType);
					for (var labelOptionsType in optionsArr) {
						var valueOption = optionsArr[labelOptionsType];
						if (optionsType == "author") {
							if (_array.exists(labelOptionsType, ['link'])) {
								thisListOptionsElem.children(".main").append("<div class='li "+labelOptionsType+"'><a href='"+(_is.exists(streamCardAuthor['link']) ? streamCardAuthor['link'] : '')+"' target='_blank'><div class='icon'></div><div class='text'>to author's page</div></a></div>");
							}else if (_array.exists(labelOptionsType, ['block'])) {
								thisListOptionsElem.children(".main").append("<div class='li "+labelOptionsType+"'><div class='icon'></div><div class='text'>block all images</div></div>");
								var liListOptionsElem = thisListOptionsElem.children(".main").children(".li."+labelOptionsType);
								liListOptionsElem.bind('click', function (e) {
									_document.eventstop(e);
									if (liListOptionsElem.attr('handling-request') == "true") {
										return;
									}else {
										liListOptionsElem.attr('handling-request', 'true');
									}
									_g.image.stream.action.block.add({'type': streamCardAuthor['type'], 'id': streamCardAuthor['id']}, function (returnObj) {
										liListOptionsElem.removeAttr('handling-request');
										if (_is.exists(returnObj) && _is.exists(returnObj['return']) && returnObj['return']) {
											if (_is.exists(returnObj['added']) && returnObj['added']) {
												_notification.add({
													classname: "image-action-preview",
													type: "image",
													title: {
														text: "successful request"
													},
													content: "you was blocked this person, <a class='undo text'>you want undo?</a>",
													timeout: 6000,
													close: true
												}, function (notificationElem) {
													_notification.bind.add(notificationElem, 'close', function () {
														streamCardElem.remove();
													});
													notificationElem.find(".undo").bind('click', function () {
														_notification.bind.remove(notificationElem, 'close');
														_notification.close(notificationElem);
														streamCardElem.slideDown(function () {
															_g.image.stream.action.block.remove({'type': streamCardAuthor['type'], 'id': streamCardAuthor['id']}, function (returnObj) {
																if (_is.exists(returnObj) && _is.exists(returnObj['return']) && returnObj['return']) {
																	if (_is.exists(returnObj['removed']) && returnObj['removed']) {
																		_notification.add({
																			classname: "image-action-preview",
																			type: "image",
																			title: {
																				text: "successful request"
																			},
																			content: "you was removed this person from blocked list!",
																			timeout: 3000,
																			close: true
																		}, function (notificationElem) {
																			notificationElem.bind('click', function () {
																				if (!$("body").hasClass('scroll-disable') || !$("body").hasClass('scroll-disable-y')) {
																					$("body").animate({
																						scrollTop: (streamCardElem.offset()['top'] - 100) + 'px'
																					});
																				}
																				streamCardElem.addClass('highlight');
																				setTimeout(function () {
																					streamCardElem.removeClass('highlight');
																				}, 3000);
																				$(this).unbind('click', arguments.callee);
																			});
																		});
																	}
																}else {
																	//.
																}
															});
														});
													});
													streamCardElem.slideUp();
												});
											}
										}else if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['reason']) && !returnObj['return']) {
											//.
										}else {
											//.
										}
									});
								});
							}
						}else if (optionsType == "id" || optionsType == "image") {
							if (_array.exists(labelOptionsType, ['link'])) {
								thisListOptionsElem.children(".main").append("<div class='li "+labelOptionsType+"'><a href='"+(_is.exists(streamCardLink) ? streamCardLink : '')+"' target='_blank'><div class='icon'></div><div class='text'>to post's page</div></a></div>");
							}else if (_array.exists(labelOptionsType, ['hide'])) {
								thisListOptionsElem.children(".main").append("<div class='li "+labelOptionsType+"'><div class='icon'></div><div class='text'>hide this post</div></div>");
								var liListOptionsElem = thisListOptionsElem.children(".main").children(".li."+labelOptionsType);
								liListOptionsElem.bind('click', function (e) {
									_document.eventstop(e);
									if (liListOptionsElem.attr('handling-request') == "true") {
										return;
									}else {
										liListOptionsElem.attr('handling-request', 'true');
									}
									_g.image.stream.action.hide.add({'type': 'id', 'id': streamCardId}, function (returnObj) {
										liListOptionsElem.removeAttr('handling-request');
										if (_is.exists(returnObj) && _is.exists(returnObj['return']) && returnObj['return']) {
											if (_is.exists(returnObj['added']) && returnObj['added']) {
												_notification.add({
													classname: "image-action-preview",
													type: "image",
													title: {
														text: "successful request"
													},
													content: "you was hided image successful, <a class='undo text'>you want undo?</a>",
													timeout: 6000,
													close: true
												}, function (notificationElem) {
													_notification.bind.add(notificationElem, 'close', function () {
														streamCardElem.remove();
													});
													notificationElem.find(".undo").bind('click', function () {
														_notification.bind.remove(notificationElem, 'close');
														_notification.close(notificationElem);
														streamCardElem.slideDown(function () {
															_g.image.stream.action.hide.remove({'type': 'id', 'id': streamCardId}, function (returnObj) {
																if (_is.exists(returnObj) && _is.exists(returnObj['return']) && returnObj['return']) {
																	if (_is.exists(returnObj['removed']) && returnObj['removed']) {
																		_notification.add({
																			classname: "image-action-preview",
																			type: "image",
																			title: {
																				text: "successful request"
																			},
																			content: "you was removed from list image hide successful!",
																			timeout: 3000,
																			close: true
																		}, function (notificationElem) {
																			notificationElem.bind('click', function () {
																				if (!$("body").hasClass('scroll-disable') || !$("body").hasClass('scroll-disable-y')) {
																					$("body").animate({
																						scrollTop: (streamCardElem.offset()['top'] - 100) + 'px'
																					});
																				}
																				streamCardElem.addClass('highlight');
																				setTimeout(function () {
																					streamCardElem.removeClass('highlight');
																				}, 3000);
																				$(this).unbind('click', arguments.callee);
																			});
																		});
																	}
																}else {
																	//.
																}
															});
														});
													});
													streamCardElem.slideUp();
												});
											}
										}else if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['reason']) && !returnObj['return']) {
											//.
										}else {
											//.
										}
									});
								});
							}else if (_array.exists(labelOptionsType, ['delete'])) {
								thisListOptionsElem.children(".main").append("<div class='li "+labelOptionsType+"'><div class='icon'></div><div class='text'>delete this post</div></div>");
								var liListOptionsElem = thisListOptionsElem.children(".main").children(".li."+labelOptionsType);
								liListOptionsElem.bind('click', function (e) {
									_document.eventstop(e);
									if (liListOptionsElem.attr('handling-request') == "true") {
										return;
									}else {
										liListOptionsElem.attr('handling-request', 'true');
									}
									_g.image.stream.action.delete.add({'type': 'id', 'id': streamCardId}, function (returnObj) {
										liListOptionsElem.removeAttr('handling-request');
										if (_is.exists(returnObj) && _is.exists(returnObj['return']) && returnObj['return']) {
											if (_is.exists(returnObj['added']) && returnObj['added']) {
												_notification.add({
													classname: "image-action-preview",
													type: "image",
													title: {
														text: "successful request"
													},
													content: "you was deleted this image, <a class='undo text'>you want undo?</a>",
													timeout: 600000,
													close: true
												}, function (notificationElem) {
													_notification.bind.add(notificationElem, 'close', function () {
														streamCardElem.remove();
													});
													notificationElem.find(".undo").bind('click', function () {
														_notification.bind.remove(notificationElem, 'close');
														_notification.close(notificationElem);
														streamCardElem.slideDown(function () {
															_g.image.stream.action.delete.remove({'type': 'id', 'id': streamCardId}, function (returnObj) {
																if (_is.exists(returnObj) && _is.exists(returnObj['return']) && returnObj['return']) {
																	if (_is.exists(returnObj['removed']) && returnObj['removed']) {
																		_notification.add({
																			classname: "image-action-preview",
																			type: "image",
																			title: {
																				text: "successful request"
																			},
																			content: "you was removed this image from deleted list!",
																			timeout: 3000,
																			close: true
																		}, function (notificationElem) {
																			notificationElem.bind('click', function () {
																				if (!$("body").hasClass('scroll-disable') || !$("body").hasClass('scroll-disable-y')) {
																					$("body").animate({
																						scrollTop: (streamCardElem.offset()['top'] - 100) + 'px'
																					});
																				}
																				streamCardElem.addClass('highlight');
																				setTimeout(function () {
																					streamCardElem.removeClass('highlight');
																				}, 3000);
																				$(this).unbind('click', arguments.callee);
																			});
																		});
																	}
																}else {
																	//.
																}
															});
														});
													});
													streamCardElem.slideUp();
												});
											}
										}else if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['reason']) && !returnObj['return']) {
											//.
										}else {
											//.
										}
									});
								});
							}
						}
					}
				}
				cardAuthorElem.children(".options").children(".list").hide().bind('mouseleave', function (e) {
					$(this).fadeOut(250);
				});
				cardAuthorElem.children(".options").children(".nav").bind('click', function () {
					cardAuthorElem.children(".options").children(".list").stop(true, false).fadeIn(500);
				});
				//_g.image.stream.action.comment.add({content: inputTypeCommentValue}, {'type': 'comment', 'id': commentCardId}, function (returnObj) {
				if (_is.exists(streamCardDate) && new RegExp(/^([0-9]{9,11})$/).test(streamCardDate)) cardInformationElem.append("<div class='li date' title='"+(_is.exists(streamCardDate) ? _parse.datetip(streamCardDate) : '-')+"'><div class='icon'></div><div class='text'>"+(_is.exists(streamCardDate) ? _parse.datetime(streamCardDate) : '-')+"</div></div>"); _tooltip.set(cardInformationElem.children(".date"), {arrow: "s", action: "hover", content: (_is.exists(streamCardDate) ? _parse.datetip(streamCardDate) : '-')});
				if (_is.exists(streamCardEdited) && new RegExp(/^([0-9]{9,11})$/).test(streamCardEdited)) cardInformationElem.append("<div class='li edited' title='"+(_is.exists(streamCardEdited) ? _parse.datetip(streamCardEdited) : '-')+"'><div class='icon'></div><div class='text'>"+(_is.exists(streamCardEdited) ? _parse.datetime(streamCardEdited) : '-')+"</div></div>"); _tooltip.set(cardInformationElem.children(".edited"), {arrow: "s", action: "hover", content: (_is.exists(streamCardEdited) ? _parse.datetip(streamCardEdited) : '-')});
				if (_is.exists(streamCardPrivate) && _is.exists(streamCardPrivate['view'])) cardInformationElem.append("<div class='li privacy view'><div class='icon'></div><div class='text'>"+(_is.exists(streamCardPrivate['view']) && _is.exists(streamCardPrivate['view']['text']) ? streamCardPrivate['view']['text'] : '-')+"</div></div>");
				if (_is.exists(streamCardPrivate) && _is.exists(streamCardPrivate['comment'])) cardInformationElem.append("<div class='li privacy comment'><div class='icon'></div><div class='text'>"+(_is.exists(streamCardPrivate['comment']) && _is.exists(streamCardPrivate['comment']['text']) ? streamCardPrivate['comment']['text'] : '-')+"</div></div>");
				if (_is.exists(streamCardPrivate) && _is.exists(streamCardPrivate['share'])) cardInformationElem.append("<div class='li privacy share'><div class='icon'></div><div class='text'>"+(_is.exists(streamCardPrivate['share']) && _is.exists(streamCardPrivate['share']['text']) ? streamCardPrivate['share']['text'] : '-')+"</div></div>");
				if (_is.exists(streamCardScrapbook) && _is.exists(streamCardScrapbook['name'])) cardInformationElem.append("<div class='li scrapbook'><div class='icon'></div><div class='text'>"+(_is.exists(streamCardScrapbook['name']) ? streamCardScrapbook['name'] : '-')+"</div></div>");
				if (_is.exists(streamCardDimension) && _is.exists(streamCardDimension['width']) && _is.exists(streamCardDimension['height'])) cardInformationElem.append("<div class='li dimension'><div class='icon'></div><div class='text'>"+(_is.exists(streamCardDimension['width']) && _is.exists(streamCardDimension['height']) ? streamCardDimension['width']+'x'+streamCardDimension['height'] : '-')+"</div></div>");
				if (_is.exists(streamCardDescription)) cardContextElem.removeClass('hide').children(".text").html(streamCardDescription); else cardContextElem.addClass('hide');
				cardMediaElem.children(".image").html("<div class='preview clearfix'><img class='img' src='"+(_is.array(streamCardFile['medium']) && _is.string(streamCardFile['medium']['url']) ? streamCardFile['medium']['url'] : (_is.array(streamCardFile['thumbnail']) && _is.string(streamCardFile['thumbnail']['url']) ? streamCardFile['thumbnail']['url'] : null))+"' alt='"+(_is.exists(streamCardNameraw) ? 'image: ' + streamCardNameraw : '-')+"'></div>");
				if (_is.exists(streamCardNameraw) && new RegExp(/^([^\s]+)$/i).test(streamCardNameraw)) cardMediaElem.children(".image").children(".preview").append("<div class='context clearfix'><span class='text'>"+(_is.exists(streamCardNameraw) ? streamCardNameraw : '-')+"</span></div>");
				if (_is.array(streamCardColor) && _array.count(streamCardColor) > 0) {
					var colorCount = 0;
					for (var colorId in streamCardColor) {
						if (colorCount > 10) {
							break;
						}
						if (_selector.count(cardMediaElem.children(".image").find(".preview > .colorlist")) === 0) cardMediaElem.children(".image").children(".preview").append("<div class='colorlist'></div>");
						if (_is.exists(streamCardColor[colorId]) && new RegExp(/^(\#([a-zA-Z0-9]{6}))$/i).test(streamCardColor[colorId])) cardMediaElem.children(".image").find(".preview > .colorlist").append("<div class='li' title='"+(streamCardColor[colorId])+"' style='background-color: "+(streamCardColor[colorId])+";'></div>"); colorCount++;
					}
					if (colorCount > 0) {
						cardMediaElem.children(".image").find(".preview > .colorlist > .li").each(function () {
							var colorCodeElem = $(this);
							if (_is.exists(colorCodeElem.attr('title')) && new RegExp(/^(\#([a-zA-Z0-9]{6}))$/i).test(colorCodeElem.attr('title'))) _tooltip.set(colorCodeElem, {arrow: "s", action: "hover", content: colorCodeElem.attr('title') });
						});
					}
				}
				cardActionElem.append("<div class='button favorite' action-favorite-button><div class='icon' action-favorite-request></div><span class='text' action-favorite-stats>"+(_is.exists(streamCardFavorite) && _is.exists(streamCardFavorite['count']) ? streamCardFavorite['count'] : '-')+"</span></div>");
				cardActionElem.append("<div class='button comment' action-comment-button><div class='icon' action-comment-request></div><span class='text' action-comment-stats>"+(_is.exists(streamCardComment) && _is.exists(streamCardComment['count']) ? streamCardComment['count'] : '-')+"</span></div>");
				if (_is.exists(streamCardFavorite) && _is.exists(streamCardFavorite['allow']) && streamCardFavorite['allow']) {
					if (_is.exists(streamCardFavorite) && _is.exists(streamCardFavorite['exists']) && streamCardFavorite['exists']) {
						cardActionElem.children("[action-favorite-button]").attr('action-favorite-exists', 'true');
						_selector.cache.set(cardActionElem.children("[action-favorite-button]").children(".icon"), '_action_faovrite_exists', true);
					}else {
						cardActionElem.children("[action-favorite-button]").attr('action-favorite-exists', 'false');
						_selector.cache.set(cardActionElem.children("[action-favorite-button]").children(".icon"), '_action_faovrite_exists', false);
					}
					_selector.cache.set(cardActionElem.children("[action-favorite-button]").children(".icon"), '_action_faovrite_disabled', false);
					_g.image.stream.action.favorite(cardActionElem.children("[action-favorite-button]").children(".icon"), 'click', {'type': 'id', 'id': streamCardId}, true, function (actionSuccess, favoriteValue) {
						if (actionSuccess) {
							_g.image.stream.action.stats({'type': 'id', 'id': streamCardId}, function (returnObj) {
								if (_is.array(returnObj) && _is.bool(returnObj['return']) && _is.array(returnObj['data']) && returnObj['return']) {
									_g.image.stream.card.stats(streamCardElem, returnObj['data']);
								}
							});
							cardActionElem.children("[action-favorite-button]").children(".icon").stop(true, true).fadeOut().fadeIn();
							cardActionElem.children("[action-favorite-button]").attr('action-favorite-exists', (favoriteValue == true ? 'true' : 'false')).mouseleave();
							_selector.cache.set(cardActionElem.children("[action-favorite-button]").children(".icon"), '_action_faovrite_exists', (favoriteValue == true ? true : false));
							_notification.add({
								type: "image",
								title: {
									text: "successful request"
								},
								content: "you was " +(favoriteValue == true ? "favorited" : "unfavorited")+ " this image!",
								timeout: 3000,
								close: true
							}, function (notificationElem) {
								notificationElem.bind('click', function () {
									if (!$("body").hasClass('scroll-disable') || !$("body").hasClass('scroll-disable-y')) {
										$("body").animate({
											scrollTop: (streamCardElem.offset()['top'] - 100) + 'px'
										});
									}
									streamCardElem.addClass('highlight');
									setTimeout(function () {
										streamCardElem.removeClass('highlight');
									}, 3000);
									$(this).unbind('click', arguments.callee);
								});
							});
						}
					});
				}else {
					cardActionElem.children("[action-favorite-button]").addClass('action-favorite-disabled', 'true');
					_selector.cache.set(cardActionElem.children("[action-favorite-button]").children(".icon"), '_action_faovrite_disabled', true);
				}
				if (_is.exists(streamCardComment) && _is.exists(streamCardComment['allow']) && streamCardComment['allow']) {
					// if (_selector.count(cardCommentElem.children(".context.null")) > 0) cardCommentElem.children(".context.null").remove();
					if (_selector.count(cardCommentElem.children(".type")) == 0) {
						var typeCommentCode = "<div class='type tab clearfix' action-comment-type><div class='row type clearfix'><div class='box extra'><div class='thumbnail'><a href='<?php if (isset($userObject['link'])) print $userObject['link']; ?>'><div class='img' style='background-image: url(<?php if (isset($userObject['avatar'])) print $userObject['avatar']; ?>);'></div></a></div><div class='options'></div></div><div class='box main'><div class='arrow'></div><div class='header clearfix'><div class='author context'><a class='name text' href='<?php if (isset($userObject['link'])) print $userObject['link']; ?>'><?php if (isset($userObject['name'])) print $userObject['name']; ?></a><a class='tag text' href='<?php if (isset($userObject['link'])) print $userObject['link']; ?>'><?php if (isset($userObject['tag'])) print $userObject['tag']; ?></a></div></div><div class='body'><div class='textarea'><textarea class='input' type='text' placeholder='<?php print $_language->text('write_a_comment', 'strtolower'); ?>'></textarea></div></div></div></div></div>";
						if (_selector.count(cardCommentElem.children()) == 0) {
							cardCommentElem.append(typeCommentCode);
						}else {
							cardCommentElem.children().first().before(typeCommentCode);
						}
						_textarea.autosize.set(cardCommentElem.children(".type").children(".row").find(".box.main > .body > .textarea > .input"), {'shift': true});
						cardCommentElem.children(".type").children(".row").find(".box.main > .body > .textarea > .input").bind('keyup', function (e) {
							var inputTypeCommentElem = $(this);
							if ((e.keyCode ? e.keyCode : e.which) == 13) {
								if (e.shiftKey) return;
								if (new RegExp(/^([\s\n]+)$/).test(inputTypeCommentElem.val())) {
									if (inputTypeCommentElem.attr('notify-error-waiting') == "true") {
										inputTypeCommentElem.val('');
										return false;
									}
									inputTypeCommentElem.attr('notify-error-waiting', 'true');
									_notification.add({
										type: "error",
										title: {
											text: "comment was error"
										},
										content: "comment was not posted, content is empty!",
										timeout: 3000,
										close: true
									});
									inputTypeCommentElem.val('');
									setTimeout(function () {
										inputTypeCommentElem.removeAttr('notify-error-waiting');
									}, 2750);
								}else {
									if (inputTypeCommentElem.attr('handling-send') == 'true') {
										if (inputTypeCommentElem.attr('notify-error-sending') == "true") {
											return false;
										}
										inputTypeCommentElem.attr('notify-error-sending', 'true');
										_notification.add({
											type: "warning",
											title: {
												text: "comment is sending"
											},
											content: "comment was posting, please wait!",
											timeout: 3000,
											close: true
										});
										setTimeout(function () {
											inputTypeCommentElem.removeAttr('notify-error-sending');
										}, 2750);
										return;
									}else {
										var inputTypeCommentValue = inputTypeCommentElem.val();
										inputTypeCommentElem.val('comment is sending').attr('handling-send', 'true').attr('disabled', 'true');
									}
									_g.image.stream.action.comment.add({content: inputTypeCommentValue}, {'type': 'id', 'id': streamCardId}, function (returnObj) {
										inputTypeCommentElem.fadeOut().val('').removeAttr('handling-send').removeAttr('disabled').fadeIn().focus();
										if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.array(returnObj['data']) && returnObj['return']) {
											if (!_is.exists(returnObj['data']['id'])) return;
											_g.image.stream.action.comment.fetch({'label': 'id', 'value': returnObj['data']['id']}, function (returnObj) {
												_g.image.stream.action.stats({'type': 'id', 'id': streamCardId}, function (returnObj) {
													if (_is.array(returnObj) && _is.bool(returnObj['return']) && _is.array(returnObj['data']) && returnObj['return']) {
														_g.image.stream.comment.stats(streamCardElem, returnObj['data']);
													}
												});
												if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.array(returnObj['data']) && returnObj['return']) {
													_notification.add({
														type: "notification",
														title: {
															text: "comment was posted"
														},
														content: "comment was success posted!",
														timeout: 3000,
														close: true
													}, function (notificationElem) {
														_g.image.stream.comment.codeparse(returnObj['data'][0], 
														{
															'classname': 'row clearfix',
															'reply': true
														}, function (commentCardCode) {
															if (!_is.html(commentCardCode)) {
																return;
															}
															if (_selector.count(cardCommentElem.children(".context.null")) > 0) cardCommentElem.children(".context.null").remove();
															if (_selector.count(cardCommentElem.children(".list")) == 0) cardCommentElem.append("<div class='list tab clearfix' action-comment-list></div>");
															if (_selector.count(cardCommentElem.children(".list").children(".row")) > 0) {
																cardCommentElem.children(".list").children(".row").first().before(commentCardCode.hide()); 
															}else {
																cardCommentElem.children(".list").append(commentCardCode.hide());
															}
															commentCardCode.slideDown(500);
															notificationElem.bind('click', function () {
																if (!$("body").hasClass('scroll-disable') || !$("body").hasClass('scroll-disable-y')) {
																	$("body").animate({
																		scrollTop: (commentCardCode.offset()['top'] - 100) + 'px'
																	});
																}
																commentCardCode.addClass('highlight');
																setTimeout(function () {
																	commentCardCode.removeClass('highlight');
																}, 3000);
																$(this).unbind('click', arguments.callee);
															});
														});
													});
												}
											});
										}
									});
								}
							}
						});
						cardCommentElem.children(".tab.type").hide();
						cardActionElem.children(".comment").children(".icon").bind('click', function () {
							cardCommentElem.children(".tab.type").slideDown(function () {
								cardCommentElem.children(".type").children(".row").find(".box.main > .body > .textarea > .input").focus();
							});
							$(this).unbind('click', arguments.callee);
						});
					}
				}else {
					cardActionElem.children(".comment").addClass('action-comment-disabled', 'true');
				}
				if (_is.array(streamCardComment) && _is.array(streamCardComment['data']) && _array.count(streamCardComment['data']) > 0) {
					for (var commentDataId in streamCardComment['data']) {
						_g.image.stream.comment.codeparse(streamCardComment['data'][commentDataId], 
						{
							'classname': 'row clearfix',
							'reply': true
						}, function (commentCardCode) {
							if (!_is.html(commentCardCode)) {
								return;
							}
							if (_selector.count(cardCommentElem.children(".context.null")) > 0) cardCommentElem.children(".context.null").remove();
							if (_selector.count(cardCommentElem.children(".list")) == 0) cardCommentElem.append("<div class='list tab clearfix' action-comment-list></div>");
							cardCommentElem.children(".list").append(commentCardCode);
						});
					}
				}
				callback(streamCardElem, streamCardId);
				return streamCardElem;
			},
			add: function (object, callback) {
				var object = _is.array(object) ? object : {},
					callback = _is.function(callback) ? callback : function () {};
				//.
				_g.image.stream.card.codeparse(object, 
				{
					'classname': 'stream-li clearfix _card'
				}, function (streamCardCode, streamCardId) {
					var sliceStreamElem = $(".stream-slice[stream-slice-float]"),
						sliceStreamLeftElem = $(".stream-slice[stream-slice-float='left']"),
						sliceStreamRightElem = $(".stream-slice[stream-slice-float='right']");
					if (streamCardId % 2 === 1) {
						if (_selector.count(sliceStreamLeftElem.children(".stream-li")) == 0) {
							sliceStreamLeftElem.append(streamCardCode);
						}else {
							sliceStreamLeftElem.children(".stream-li").first().before(streamCardCode);
						}
					}else {
						if (_selector.count(sliceStreamRightElem.children(".stream-li")) == 0) {
							sliceStreamRightElem.append(streamCardCode);
						}else {
							sliceStreamRightElem.children(".stream-li").first().before(streamCardCode);
						}
					}
					_ajaxify.each();
				});
			},
			stats: function (commentCardElem, statsObj, callback) {
				var commentCardElem = _is.selector(commentCardElem) ? commentCardElem : null,
					statsObj = _is.array(statsObj) ? statsObj : {},
					callback = _is.function(callback) ? callback : function () {};
				//.
				console.log(commentCardElem, statsObj);
				if (_is.null(commentCardElem)) {
					callback(false);
					return false;
				}
				if (_is.exists(statsObj['favorite']) && statsObj['favorite'] != commentCardElem.children(".action").children("[action-favorite-stats]").text()) streamCardElem.children(".action").children("[action-favorite-stats]").stop(true, true).fadeOut(250).text(statsObj['favorite']).fadeIn(500);
				if (_is.exists(statsObj['comment']) && statsObj['comment'] != commentCardElem.children(".action").children("[action-comment-stats]").text()) streamCardElem.children(".action").children("[action-comment-stats]").stop(true, true).fadeOut(250).text(statsObj['comment']).fadeIn(500);
				callback(true);
				return true;
			}
		},
		action: {
			stats: function (cardObj, callback) {
				var cardObj = _is.array(cardObj) ? cardObj : {}.
					callback = _is.function(callback) ? callback : function () {};
				if (!_is.string(cardObj['type']) || !_is.string(cardObj['id'])) {
					return false;
				}
				var fnStatsRequest = function (object, callback) {
					var object = _is.array(object) ? object : {},
						callback = _is.function(callback) ? callback : function () {};
					var insideType = _is.string(object['type']) ? object['type'] : null,
						insideId = _is.number(object['id']) ? object['id'] : null;
					var data = {
						"port": "image", 
						"type": "stats",
						"inside": {
							"type": insideType, 
							"id": insideId
						}
					};
					var requestStatsAction = _xhr.use({
						type: "POST",
						url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
						data: data,
						datatype: "json",
						done: callback
					});
					if (requestStatsAction) {
						var requestStatsAction = undefined;
					}
				};
				fnStatsRequest({'type': cardObj['type'], 'id': cardObj['id']}, callback);
			},
			delete: {
				add: function (cardObj, callback) {
					var cardObj = _is.array(cardObj) ? cardObj : {},
						callback = _is.function(callback) ? callback : function () {};
					var fnAddDeleteRequest = function (object, callback) {
						var object = _is.array(object) ? object : {},
							callback = _is.function(callback) ? callback : function () {};
						var insideType = _is.string(object['type']) ? object['type'] : null,
							insideId = _is.number(object['id']) ? object['id'] : null;
						var data = {
							"port": "image", 
							"type": "delete",
							"action": "add",
							"inside": {
								"type": insideType,
								"id": insideId
							}
						};
						var requestAddDeleteAction = _xhr.use({
							type: "POST",
							url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
							data: data,
							datatype: "json",
							done: callback
						});
						if (requestAddDeleteAction) {
							var requestAddDeleteAction = undefined;
						}
					};
					fnAddDeleteRequest({'type': cardObj['type'], 'id': cardObj['id']}, callback);
				},
				remove: function (cardObj, callback) {
					var cardObj = _is.array(cardObj) ? cardObj : {},
						callback = _is.function(callback) ? callback : function () {};
					var fnRemoveDeleteRequest = function (object, callback) {
						var object = _is.array(object) ? object : {},
							callback = _is.function(callback) ? callback : function () {};
						var insideType = _is.string(object['type']) ? object['type'] : null,
							insideId = _is.number(object['id']) ? object['id'] : null;
						var data = {
							"port": "image", 
							"type": "delete",
							"action": "remove",
							"inside": {
								"type": insideType,
								"id": insideId
							}
						};
						var requestRemoveDeleteAction = _xhr.use({
							type: "POST",
							url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
							data: data,
							datatype: "json",
							done: callback
						});
						if (requestRemoveDeleteAction) {
							var requestRemoveDeleteAction = undefined;
						}
					};
					fnRemoveDeleteRequest({'type': cardObj['type'], 'id': cardObj['id']}, callback);
				}
			},				
			hide: {
				add: function (cardObj, callback) {
					var cardObj = _is.array(cardObj) ? cardObj : {},
						callback = _is.function(callback) ? callback : function () {};
					var fnAddHideRequest = function (object, callback) {
						var object = _is.array(object) ? object : {},
							callback = _is.function(callback) ? callback : function () {};
						var insideType = _is.string(object['type']) ? object['type'] : null,
							insideId = _is.number(object['id']) ? object['id'] : null;
						var data = {
							"port": "image", 
							"type": "hide",
							"action": "add",
							"inside": {
								"type": insideType,
								"id": insideId
							}
						};
						var requestAddHideAction = _xhr.use({
							type: "POST",
							url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
							data: data,
							datatype: "json",
							done: callback
						});
						if (requestAddHideAction) {
							var requestAddHideAction = undefined;
						}
					};
					fnAddHideRequest({'type': cardObj['type'], 'id': cardObj['id']}, callback);
				},
				remove: function (cardObj, callback) {
					var cardObj = _is.array(cardObj) ? cardObj : {},
						callback = _is.function(callback) ? callback : function () {};
					var fnRemoveHideRequest = function (object, callback) {
						var object = _is.array(object) ? object : {},
							callback = _is.function(callback) ? callback : function () {};
						var insideType = _is.string(object['type']) ? object['type'] : null,
							insideId = _is.number(object['id']) ? object['id'] : null;
						var data = {
							"port": "image", 
							"type": "hide",
							"action": "remove",
							"inside": {
								"type": insideType,
								"id": insideId
							}
						};
						var requestRemoveHideAction = _xhr.use({
							type: "POST",
							url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
							data: data,
							datatype: "json",
							done: callback
						});
						if (requestRemoveHideAction) {
							var requestRemoveHideAction = undefined;
						}
					};
					fnRemoveHideRequest({'type': cardObj['type'], 'id': cardObj['id']}, callback);
				}
			},
			block: {
				add: function (cardObj, callback) {
					var cardObj = _is.array(cardObj) ? cardObj : {},
						callback = _is.function(callback) ? callback : function () {};
					var fnAddBlockRequest = function (object, callback) {
						var object = _is.array(object) ? object : {},
							callback = _is.function(callback) ? callback : function () {};
						var guyType = _is.string(object['type']) ? object['type'] : null,
							guyId = _is.number(object['id']) ? object['id'] : null;
						var data = {
							"port": "image", 
							"type": "block",
							"action": "add",
							"guy": {
								"type": guyType,
								"id": guyId
							}
						};
						var requestAddBlockAction = _xhr.use({
							type: "POST",
							url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
							data: data,
							datatype: "json",
							done: callback
						});
						if (requestAddBlockAction) {
							var requestAddBlockAction = undefined;
						}
					};
					fnAddBlockRequest({'type': cardObj['type'], 'id': cardObj['id']}, callback);
				},
				remove: function (cardObj, callback) {
					var cardObj = _is.array(cardObj) ? cardObj : {},
						callback = _is.function(callback) ? callback : function () {};
					var fnRemoveBlockRequest = function (object, callback) {
						var object = _is.array(object) ? object : {},
							callback = _is.function(callback) ? callback : function () {};
						var guyType = _is.string(object['type']) ? object['type'] : null,
							guyId = _is.number(object['id']) ? object['id'] : null;
						var data = {
							"port": "image", 
							"type": "block",
							"action": "remove",
							"guy": {
								"type": guyType,
								"id": guyId
							}
						};
						var requestRemoveBlockAction = _xhr.use({
							type: "POST",
							url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
							data: data,
							datatype: "json",
							done: callback
						});
						if (requestRemoveBlockAction) {
							var requestRemoveBlockAction = undefined;
						}
					};
					fnRemoveBlockRequest({'type': cardObj['type'], 'id': cardObj['id']}, callback);
				}
			},
			comment: {
				add: function (dataObj, cardObj, callback) {
					var dataObj = _is.array(dataObj) ? dataObj : {},
						cardObj = _is.array(cardObj) ? cardObj : {},
						callback = _is.function(callback) ? callback : function () {};
					var fnCommentRequest = function (object, callback) {
						var object = _is.array(object) ? object : {},
							callback = _is.function(callback) ? callback : function () {};
						var insideType = _is.string(object['type']) ? object['type'] : null,
							insideId = _is.number(object['id']) ? object['id'] : null,
							content = _is.exists(object['content']) ? object['content'] : null;
						var data = {
							"port": "image", 
							"type": "comment", 
							"inside": {
								"type": insideType, 
								"id": insideId
							}, 
							"action": "add",
							"content": content
						};
						var requestCommentAction = _xhr.use({
							type: "POST",
							url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
							data: data,
							datatype: "json",
							done: callback
						});
						if (requestCommentAction) {
							var requestCommentAction = undefined;
						}
					};
					fnCommentRequest({'type': cardObj['type'], 'id': cardObj['id'], 'content': dataObj['content']}, callback);
				},
				fetch: function (commentObj, callback) {
					var commentObj = _is.array(commentObj) ? commentObj : {},
						callback = _is.function(callback) ? callback : function () {};
					var fnCommentRequest = function (object, callback) {
						var object = _is.array(object) ? object : {},
							callback = _is.function(callback) ? callback : function () {};
						var commentLabel = _is.exists(object['label']) ? object['label'] : null,
							commentValue = _is.exists(object['value']) ? object['value'] : null;
						var data = {
							"port": "image", 
							"type": "comment", 
							"action": "fetch",
							"label": commentLabel, 
							"value": commentValue
						};
						var requestCommentAction = _xhr.use({
							type: "POST",
							url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
							data: data,
							datatype: "json",
							done: callback
						});
						if (requestCommentAction) {
							var requestCommentAction = undefined;
						}
					};
					fnCommentRequest({'label': commentObj['label'], 'value': commentObj['value']}, callback);
				}
			},
			favorite: function (buttonElem, bindAction, cardObj, isToggle, callback) {
				var buttonElem = _is.selector(buttonElem) ? buttonElem : null,
					bindAction = _is.string(bindAction) && _array.exists(bindAction, ['click']) ? bindAction : 'click',
					cardObj = _is.array(cardObj) ? cardObj : {},
					isToggle = _is.bool(isToggle) ? isToggle : false,
					callback = _is.function(callback) ? callback : function () {};
				if (_selector.count(buttonElem) > 0) {
					if (!_is.string(cardObj['type']) || !_is.string(cardObj['id'])) {
						return false;
					}
					var fnFavoriteRequest = function (object, callback) {
						var object = _is.array(object) ? object : {},
							callback = _is.function(callback) ? callback : function () {};
						var insideType = _is.string(object['type']) ? object['type'] : null,
							insideId = _is.number(object['id']) ? object['id'] : null,
							typeAction = _is.string(object['action']) && _array.exists(object['action'], ['add', 'remove']) ? object['action'] : null;
						var data = {
							"port": "image", 
							"type": "favorite", 
							"inside": {
								"type": insideType, 
								"id": insideId
							}, 
							"action": typeAction
						};
						var requestFavoriteAction = _xhr.use({
							type: "POST",
							url: "<?php print $_tool->links("source/ajax/action.ajax"); ?>",
							data: data,
							datatype: "json",
							done: callback
						});
						if (requestFavoriteAction) {
							var requestFavoriteAction = undefined;
						}
					};
					var fnFavoriteAction = function (event) {
						if (buttonElem.removeAttr('action-favorite-handling') == 'true') {
							return;
						}else {
							buttonElem.removeAttr('action-favorite-handling', 'true');
						}
						var cbFavoriteRequest = function (returnObj) {
							if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['value']) && returnObj['return']) {
								_selector.cache.set(buttonElem, '_action_faovrite_exists', returnObj['value']);
								callback(true, returnObj['value']);
							}else if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['reason']) && !returnObj['return']) {
								console.log('#error');
								callback(false, null);
							}else {
								console.log('#error');
								callback(false, null);
							}
						};
						var objFavoriteRequest = {};
						objFavoriteRequest['type'] = cardObj['type'];
						objFavoriteRequest['id'] = cardObj['id'];
						_selector.cache.get(buttonElem, '_action_faovrite_exists', function (isExistsArr) {
							var isExists = isExistsArr[0];
							if (isExists) {
								objFavoriteRequest['action'] = "remove";
							}else {
								objFavoriteRequest['action'] = "add";
							}
							fnFavoriteRequest(objFavoriteRequest, cbFavoriteRequest);
							console.log(buttonElem, bindAction, cardObj, isToggle);
							setTimeout(function () { 
								buttonElem.removeAttr('action-favorite-handling');
							}, 100);
						});
						if (!isToggle) {
							buttonElem.unbind(bindAction, arguments.callee);
						}
					};
					_selector.cache.get(buttonElem, '_action_faovrite_disabled', function (isDisabledArr) {
						var isDisabled = isDisabledArr[0];
						if (!isDisabled) {
							buttonElem.bind(bindAction, fnFavoriteAction);
						}
					});
				}else {
					return false;
				}
			}
		},
		id: {
			get: null,
			remove: null,
			edit: null, // _g.image->infoeditor
			favorite: null,
			report: null
		},
		comment: {
			codeparse: function (object, options, callback) {
				var object = _is.array(object) ? object : {},
					options = _is.array(options) ? options : {},
					callback = _is.function(callback) ? callback : function () {};
				//.
				console.log(object, options);
				var commentCardKey = _string.random(10),
					commentCardId = _is.string(object['id']) || _is.number(object['id']) ? object['id'] : null,
					commentCardDisplay = _is.string(object['display']) ? object['display'] : null,
					commentCardInside = _is.array(object['inside']) ? object['inside'] : null,
					commentCardAuthor = _is.array(object['author']) ? object['author'] : null,
					commentCardDate = _is.number(object['date']) ? object['date'] : null,
					commentCardFavorite = _is.array(object['favorite']) ? object['favorite'] : null,
					commentCardReply = _is.array(object['comment']) ? object['comment'] : null,
					commentCardContent = _is.string(object['content']) || _is.number(object['content']) ? object['content'] : null,
					commentCardCode = "<div></div>";
				var commentOptionsClass = _is.string(options['classname']) ? options['classname'] : null,
					commentOptionsAttr = _is.array(options['attr']) ? options['attr'] : {};
					commentOptionsReply = _is.bool(options['reply']) ? options['reply'] : false;
				var commentCardElem = $(commentCardCode);
				console.log(commentCardReply);
				if (_is.exists(commentOptionsClass)) {
					commentCardElem.addClass(commentOptionsClass);
				}
				if (_is.array(commentOptionsAttr) && _array.count(commentOptionsAttr) > 0) {
					for (var attrId in commentOptionsAttr) {
						commentCardElem.attr(attrId, commentOptionsAttr[attrId]);
					}
				}
				commentCardElem.attr('comment-card-info', _json.encode({'id': commentCardId, 'display': commentCardDisplay}));
				commentCardElem.append("<div class='box extra'></div>");
				commentCardElem.append("<div class='box main'></div>");
				var cardExtraElem = commentCardElem.children(".extra"),
					cardMainElem = commentCardElem.children(".main");
				cardExtraElem.append("<div class='thumbnail'><a href='"+(_is.exists(commentCardAuthor['link']) ? commentCardAuthor['link'] : '')+"'><div class='img' style='background-image: url("+(_is.exists(commentCardAuthor['avatar']) ? commentCardAuthor['avatar'] : '')+");'></div></a></div>");
				cardExtraElem.append("<div class='options'></div>");
				cardMainElem.append("<div class='arrow'></div>");
				cardMainElem.append("<div class='header clearfix'></div>");
				cardMainElem.append("<div class='body'></div>");
				cardMainElem.append("<div class='footer'></div>");
				cardMainElem.append("<div class='reply'></div>");
				cardMainElem.append("<div class='options'></div>");
				cardMainElem.children(".header").append("<div class='author context'><a class='name text' href='"+(_is.exists(commentCardAuthor) && _is.exists(commentCardAuthor['link']) ? commentCardAuthor['link'] : '#')+"'>"+(_is.exists(commentCardAuthor) && _is.exists(commentCardAuthor['name']) ? commentCardAuthor['name'] : 'undefined')+"</a><a class='tag text' href='"+(_is.exists(commentCardAuthor) && _is.exists(commentCardAuthor['link']) ? commentCardAuthor['link'] : '#')+"'>"+(_is.exists(commentCardAuthor) && _is.exists(commentCardAuthor['tag']) ? commentCardAuthor['tag'] : 'undefined')+"</a></div>");
				if (_is.exists(commentCardDate)) cardMainElem.children(".header").append("<div class='date time context'><span class='text'>"+(_is.exists(commentCardDate) ? _parse.datetime(commentCardDate, true) : null)+"</span></div>");
				cardMainElem.children(".body").append("<div class='context'><span class='text'>"+(_is.exists(commentCardContent) ? commentCardContent : null)+"</span></div>");
				cardMainElem.children(".footer").append("<div class='action'></div>");
				cardMainElem.children(".footer").children(".action").append("<div class='button favorite' action-favorite-button><div class='icon' action-favorite-request></div><span class='text' action-favorite-stats>"+(_is.exists(commentCardFavorite) && _is.exists(commentCardFavorite['count']) ? commentCardFavorite['count'] : '-')+"</span></div>");
				cardMainElem.children(".footer").children(".action").append("<div class='button reply' action-comment-button><div class='icon' action-comment-request></div><span class='text' action-comment-stats>"+(_is.exists(commentCardReply) && _is.exists(commentCardReply['count']) ? commentCardReply['count'] : '-')+"</span></div>");
				if (_is.exists(commentCardFavorite) && _is.exists(commentCardFavorite['allow']) && commentCardFavorite['allow']) {
					if (_is.exists(commentCardFavorite) && _is.exists(commentCardFavorite['exists']) && commentCardFavorite['exists']) {
						cardMainElem.children(".footer").children(".action").children("[action-favorite-button]").attr('action-favorite-exists', 'true');
						_selector.cache.set(cardMainElem.children(".footer").children(".action").children("[action-favorite-button]").children(".icon"), '_action_faovrite_exists', true);
					}else {
						cardMainElem.children(".footer").children(".action").children("[action-favorite-button]").attr('action-favorite-exists', 'false');
						_selector.cache.set(cardMainElem.children(".footer").children(".action").children("[action-favorite-button]").children(".icon"), '_action_faovrite_exists', false);
					}
					_g.image.stream.action.favorite(cardMainElem.find(".footer > .action > .button.favorite > .icon"), 'click', {'type': 'comment', 'id': commentCardId}, true, function (actionSuccess, favoriteValue) {
						if (actionSuccess) {
							_g.image.stream.action.stats({'type': 'comment', 'id': commentCardId}, function (returnObj) {
								if (_is.array(returnObj) && _is.bool(returnObj['return']) && _is.array(returnObj['data']) && returnObj['return']) {
									_g.image.stream.comment.stats(commentCardElem, returnObj['data']);
								}
							});
							cardMainElem.children(".footer").children(".action").children("[action-favorite-button]").children(".icon").stop(true, true).fadeOut().fadeIn();
							cardMainElem.children(".footer").children(".action").children("[action-favorite-button]").attr('action-favorite-exists', (favoriteValue == true ? 'true' : 'false')).mouseleave();
							_notification.add({
								type: "image",
								title: {
									text: "successful request"
								},
								content: "you was " +(favoriteValue == true ? "favorited" : "unfavorited")+ " this comment!",
								timeout: 3000,
								close: true
							}, function (notificationElem) {
								notificationElem.bind('click', function () {
									if (!$("body").hasClass('scroll-disable') || !$("body").hasClass('scroll-disable-y')) {
										$("body").animate({
											scrollTop: (commentCardElem.offset()['top'] - 100) + 'px'
										});
									}
									commentCardElem.addClass('highlight');
									setTimeout(function () {
										commentCardElem.removeClass('highlight');
									}, 3000);
									$(this).unbind('click', arguments.callee);
								});
							});
						}
					});
				}else {
					cardMainElem.children(".footer").children(".action").children("[action-favorite-button]").addClass('action-favorite-disabled', 'true');
				}
				if (commentOptionsReply && _is.exists(commentCardReply) && _is.exists(commentCardReply['allow']) && commentCardReply['allow']) {
					if (_selector.count(cardMainElem.children(".reply").children(".type")) == 0) {
						var typeReplyCode = "<div class='type tab clearfix' action-comment-type><div class='row type reply clearfix'><div class='box extra'><div class='thumbnail'><a href='<?php if (isset($userObject['link'])) print $userObject['link']; ?>'><div class='img' style='background-image: url(<?php if (isset($userObject['avatar'])) print $userObject['avatar']; ?>);'></div></a></div><div class='options'></div></div><div class='box main'><div class='arrow'></div><div class='header clearfix'><div class='author context'><a class='name text' href='<?php if (isset($userObject['link'])) print $userObject['link']; ?>'><?php if (isset($userObject['name'])) print $userObject['name']; ?></a><a class='tag text' href='<?php if (isset($userObject['link'])) print $userObject['link']; ?>'><?php if (isset($userObject['tag'])) print $userObject['tag']; ?></a></div></div><div class='body'><div class='textarea'><textarea class='input' type='text' placeholder='<?php print $_language->text('write_a_comment', 'strtolower'); ?>'></textarea></div></div></div></div></div>";
						if (_selector.count(cardMainElem.children(".reply").children()) == 0) {
							cardMainElem.children(".reply").append(typeReplyCode);
						}else {
							cardMainElem.children(".reply").children().first().before(typeReplyCode);
						}
						_textarea.autosize.set(cardMainElem.children(".reply").children(".type").find(".box.main > .body > .textarea > .input"), {'shift': true});
						cardMainElem.children(".reply").children(".type").find(".box.main > .body > .textarea > .input").bind('keyup', function (e) {
							var inputTypeReplyElem = $(this);
							if ((e.keyCode ? e.keyCode : e.which) == 13) {
								if (e.shiftKey) return;
								if (new RegExp(/^([\s\n]+)$/).test(inputTypeReplyElem.val())) {
									if (inputTypeReplyElem.attr('notify-error-waiting') == "true") {
										inputTypeReplyElem.val('');
										return false;
									}
									inputTypeReplyElem.attr('notify-error-waiting', 'true');
									_notification.add({
										type: "error",
										title: {
											text: "comment was error"
										},
										content: "comment was not posted, content is empty!",
										timeout: 3000,
										close: true
									});
									inputTypeReplyElem.val('');
									setTimeout(function () {
										inputTypeReplyElem.removeAttr('notify-error-waiting');
									}, 2750);
								}else {
									if (inputTypeReplyElem.attr('handling-send') == 'true') {
										if (inputTypeReplyElem.attr('notify-error-sending') == "true") {
											return false;
										}
										inputTypeReplyElem.attr('notify-error-sending', 'true');
										_notification.add({
											type: "warning",
											title: {
												text: "comment is sending"
											},
											content: "comment was posting, please wait!",
											timeout: 3000,
											close: true
										});
										setTimeout(function () {
											inputTypeReplyElem.removeAttr('notify-error-sending');
										}, 2750);
										return;
									}else {
										var inputTypeCommentValue = inputTypeReplyElem.val();
										inputTypeReplyElem.val('comment is sending').attr('handling-send', 'true').attr('disabled', 'true');
									}
									_g.image.stream.action.comment.add({content: inputTypeCommentValue}, {'type': 'comment', 'id': commentCardId}, function (returnObj) {
										inputTypeReplyElem.fadeOut().val('').removeAttr('handling-send').removeAttr('disabled').fadeIn().focus();
										if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.array(returnObj['data']) && returnObj['return']) {
											if (!_is.exists(returnObj['data']['id'])) return;
											_g.image.stream.action.comment.fetch({'label': 'id', 'value': returnObj['data']['id']}, function (returnObj) {
												_g.image.stream.action.stats({'type': 'comment', 'id': commentCardId}, function (returnObj) {
													if (_is.array(returnObj) && _is.bool(returnObj['return']) && _is.array(returnObj['data']) && returnObj['return']) {
														console.log(commentCardElem);
														_g.image.stream.comment.stats(commentCardElem, returnObj['data']);
													}
												});
												if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.array(returnObj['data']) && returnObj['return']) {
													_notification.add({
														type: "notification",
														title: {
															text: "comment was posted"
														},
														content: "comment was success posted!",
														timeout: 3000,
														close: true
													}, function (notificationElem) {
														_g.image.stream.comment.codeparse(returnObj['data'][0], 
														{
															'classname': 'row reply clearfix'
														}, function (replyCardCode) {
															if (!_is.html(replyCardCode)) {
																return;
															}
															if (_selector.count(cardMainElem.children(".reply").children(".context.null")) > 0) cardMainElem.children(".reply").children(".context.null").remove();
															if (_selector.count(cardMainElem.children(".reply").children(".list")) == 0) cardMainElem.children(".reply").append("<div class='list tab clearfix' action-comment-list></div>");
															if (_selector.count(cardMainElem.children(".reply").children(".list").children(".row")) > 0) {
																cardMainElem.children(".reply").children(".list").children(".row").first().before(replyCardCode.hide()); 
															}else {
																cardMainElem.children(".reply").children(".list").append(replyCardCode.hide());
															}
															replyCardCode.slideDown(500);
															notificationElem.bind('click', function () {
																if (!$("body").hasClass('scroll-disable') || !$("body").hasClass('scroll-disable-y')) {
																	$("body").animate({
																		scrollTop: (replyCardCode.offset()['top'] - 100) + 'px'
																	});
																}
																replyCardCode.addClass('highlight');
																setTimeout(function () {
																	replyCardCode.removeClass('highlight');
																}, 3000);
																$(this).unbind('click', arguments.callee);
															});
														});
													});
												}
											});
										}
									});
								}
							}
						});
						cardMainElem.children(".reply").children(".type").hide();
						cardMainElem.find(".footer > .action").find("[action-comment-request]").bind('click', function () {
							cardMainElem.children(".reply").children(".type").slideDown(function () {
								cardMainElem.children(".reply").children(".type").find(".box.main > .body > .textarea > .input").focus();
							});
							$(this).unbind('click', arguments.callee);
						});
					}
					if (_is.array(commentCardReply) && _is.array(commentCardReply['data']) && _array.count(commentCardReply['data']) > 0) {
						for (var replyDataId in commentCardReply['data']) {
							_g.image.stream.comment.codeparse(commentCardReply['data'][replyDataId], 
							{
								'classname': 'row reply clearfix',
								'reply': false
							}, function (replyCardCode) {
								if (!_is.html(replyCardCode)) {
									return;
								}
								if (_selector.count(cardMainElem.children(".reply").children(".context.null")) > 0) cardMainElem.children(".reply").children(".context.null").remove();
								if (_selector.count(cardMainElem.children(".reply").children(".list")) == 0) cardMainElem.children(".reply").append("<div class='list tab clearfix' action-comment-list></div>");
								cardMainElem.children(".reply").children(".list").append(replyCardCode);
							});
						}
					}
				}
				callback(commentCardElem);
				return commentCardElem;
			},
			stats: function (commentCardElem, statsObj, callback) {
				var commentCardElem = _is.selector(commentCardElem) ? commentCardElem : null,
					statsObj = _is.array(statsObj) ? statsObj : {},
					callback = _is.function(callback) ? callback : function () {};
				//.
				if (_is.null(commentCardElem)) {
					callback(false);
					return false;
				}
				if (_is.exists(statsObj['favorite']) && statsObj['favorite'] != commentCardElem.children(".main").children(".footer").children(".action").children("[action-favorite-button]").children("[action-favorite-stats]").text()) commentCardElem.children(".main").children(".footer").children(".action").children("[action-favorite-button]").children("[action-favorite-stats]").stop(true, true).fadeOut(250).text(statsObj['favorite']).fadeIn(500);
				if (_is.exists(statsObj['comment']) && statsObj['comment'] != commentCardElem.children(".main").children(".footer").children(".action").children("[action-comment-button]").children("[action-comment-stats]").text()) commentCardElem.children(".main").children(".footer").children(".action").children("[action-comment-button]").children("[action-comment-stats]").stop(true, true).fadeOut(250).text(statsObj['comment']).fadeIn(500);
				callback(true);
				return true;
			},
			add: null,
			remove: null,
			edit: null,
			favorite: null,
			reply: null,
			report: null
		}
	},
	upload: function (file, callback, upload) {
		var file = _is.file(file) ? file : null,
			callback = _is.function(callback) ? callback : function () {},
			upload = typeof upload === 'object' ? upload : {};
		if (_is.null(file)) {
			console.log('sd', file, _is.file(file))
			callback({'return': false, 'reason': ''});
			return false;
		}
		if (_is.var(file) && _is.var(file['append']) && _is.function(file['append'])) {
			var data = file;
		}else {
			var data = new FormData();
			data.append('#port', 'image');
			data.append('#token', '<?php print $_tool->captcha()['action']['image']; ?>');
			data.append('type', 'id');
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
	listchoose: {
		open: function (object, callback) {
			var object = _is.array(object) ? object : {},
				callback = _is.function(callback) ? callback : function () {};
			var listRow = _is.array(object['row']) ? object['row'] : null,
				listDefault = _is.string(object['default']) ? object['default'] : null,
				listLimit = _is.number(object['limit']) ? object['limit'] : null,
				listOrder = _is.string(object['order']) ? object['order'] : null;
			if (!_is.exists(listRow)) {
				callback({'return': false, 'reason': ''});
				return false;
			}else if (!_is.exists(listDefault)) {
				for (var i in listRow) {
					var listDefault = listRow[i];
				}
			}else if (!_array.exists('cache', listRow) && !_array.exists('drive', listRow)) {
				callback({'return': false, 'reason': ''});
				return false;
			}else if (!_array.exists(listDefault, listRow)) {
				callback({'return': false, 'reason': ''});
				return false;
			}
			return _g.popup.add({
				classname: "image-list-choose",
				title: "image - list",
				content: "<div class='navbar'><div class='row cache'><span class='text'>cache</span></div><div class='row drive'><span class='text'>drive</span></div></div> <div class='content'> <div class='list'><div class='box cache clearfix'></div><div class='box drive clearfix'></div></div> </div>",
				// content: "<div class='null'> <!--<div class='icon'></div>--> <div class='progress'> <div class='navload'></div> </div> <span class='text'>data information loading...</span> </div>",
				note: "secure by giccos",
				close: true
			}, function (popupElem) {
				return _g.notification.add({
					type: "image",
					title: {
						text: "image list is being getting"
					},
					content: "Image list is being getting, please wait.",
					timeout: 4000,
					close: true
				}, function (notificationTab) {
					if (!_array.exists('cache', listRow)) {
						popupElem.find(".main.image-list-choose > .navbar > .row.cache").remove();
						popupElem.find(".main.image-list-choose > .content > .list > .box.cache").remove();
					}
					if (!_array.exists('drive', listRow)) {
						popupElem.find(".main.image-list-choose > .navbar > .row.drive").remove();
						popupElem.find(".main.image-list-choose > .content > .list > .box.drive").remove();
					}
					var fnAppendBoxList = function (local, type, object, callback) {
						var local = _is.string(local) ? local : null,
							type = _is.string(type) && _array.exists(type, ['before', 'after']) ? type : null,
							object = _is.array(object) ? object : {},
							callback = _is.function(callback) ? callback : function () {};
						if (!_is.exists(type)) {
							callback(false);
							return false;
						}else if (!_is.exists(type)) {
							callback(false);
							return false;
						}
						var navListActiveAll = popupElem.find(".main.image-list-choose > .navbar > .row"),
							navListActiveElem = popupElem.find(".main.image-list-choose > .navbar > .row."+local),
							boxListActiveAll = popupElem.find(".main.image-list-choose > .content > .list > .box"),
							boxListActiveElem = popupElem.find(".main.image-list-choose > .content > .list > .box."+local);
						var boxPreviewKey = _string.random(10),
							boxPreviewCode = "<div class='li' box-preview-key='"+boxPreviewKey+"'> <div class='thumbnail' style='background-image: url("+(object['file']['thumbnail']['url'])+");'></div> <div class='info'></div> </div>";
						if (_selector.count(boxListActiveElem.children(".li")) === 0) {
							boxListActiveElem.append(boxPreviewCode);
						}else {
							if (_array.exists(type, ['before'])) {
								boxListActiveElem.children(".li").first().before(boxPreviewCode);
							}else if (_array.exists(type, ['after'])) {
								boxListActiveElem.children(".li").last().after(boxPreviewCode);
							}
						}
						var boxPreviewElem = boxListActiveElem.children("[box-preview-key='"+boxPreviewKey+"']");
						_selector.cache.set(boxPreviewElem, '_object', object);
						boxPreviewElem.attr('box-preview-display', object['display']);
						boxPreviewElem.append("<div class='selected'> <div class='conicon'><div class='icon'></div></div> </div>");
						boxPreviewElem.append("<div class='more'> <div class='conicon'><div class='icon'></div></div> </div>");
						boxPreviewElem.children(".more").bind('click', function (e) {
							var buttonMoreElem = $(this);
							if (!_is.exists(buttonMoreElem.attr('bind-click-handling'))) {
								buttonMoreElem.attr('bind-click-handling', 'true');
								_notification.add({
									classname: "image-information-preview",
									type: "image",
									title: {
										text: "information"
									},
									content: "<div class='table'> <div class='row'><div class='label'>name</div> <div class='value'>"+(object['nameraw'])+"</div></div> <div class='row'><div class='label'>date</div> <div class='value'>"+(_parse.datetime(object['date'], true))+"</div></div> <div class='row'><div class='label'>display</div> <div class='value'>"+(object['display'])+"</div></div> <div class='row'><div class='label'>expires</div> <div class='value'>"+(_array.exists(object['expires'], [0]) ? "no limit" : _parse.datetime(object['expires']))+"</div></div> <div class='row'><div class='label'>mime</div> <div class='value'>"+(object['mime'])+"</div></div> <div class='row'><div class='label'>dimension</div> <div class='value'>"+((object['dimension.width'])+"x"+(object['dimension.height']))+"</div></div> </div>",
									timeout: 5000,
									close: true,
									collapse: true
								}, function (notificationElem) {
									notificationElem.children(".body").children(".main").css({'max-height': '77px'}).bind('mouseover', function () {
										notificationElem.children(".body").children(".main").css({'max-height': '100%'});
									});
									buttonMoreElem.bind('click', function () {
										_notification.close(notificationElem);
									});
								});
								setTimeout(function () {
									buttonMoreElem.removeAttr('bind-click-handling');
								}, 750);
								_document.eventstop(e);
								return false;
							}
						});
						boxPreviewElem.children(".info").append("<div class='name context nowrap'> <span class='text'>"+(object['nameraw'])+"</span> </div>");
						boxPreviewElem.attr('box-preview-choose', '').removeAttr('box-preview-key');
						callback(true);
						return true;
					};
					var fnEachBoxList = function (local, object, callback) {
						var local = _is.string(local) ? local : null,
							object = _is.array(object) ? object : {},
							callback = _is.function(callback) ? callback : function () {};
						if (!_is.exists(local)) {
							callback(false);
							return false;
						}
						var navListActiveAll = popupElem.find(".main.image-list-choose > .navbar > .row"),
							navListActiveElem = popupElem.find(".main.image-list-choose > .navbar > .row."+local),
							boxListActiveAll = popupElem.find(".main.image-list-choose > .content > .list > .box"),
							boxListActiveElem = popupElem.find(".main.image-list-choose > .content > .list > .box."+local);
						for (var i in object) {
							fnAppendBoxList(local, 'after', object[i]);
						}
						if (_array.count(object) > 0) {
							_selector.cache.get(popupElem, 'bind', function (elemBindObj) {
								var elemBindObj = _is.array(elemBindObj) ? elemBindObj[0] : {};
								for (var i in elemBindObj) {
									_g.image.listchoose.bind(popupElem, elemBindObj[i]['type'], elemBindObj[i]['func'], function () {}, false);
								}
							});
						}
						callback(true);
						return true;
					};
					var fnGetBoxList = function (object, callback) {
						var object = _is.array(object) ? object : {},
							callback = _is.function(callback) ? callback : function () {};
						var listLocal = _is.string(object['local']) ? object['local'] : null,
							listLimit = _is.number(object['limit']) ? object['limit'] : null,
							listOrder = _is.string(object['order']) ? object['order'] : null;
						if (!_is.exists(listLocal)) {
							callback(false);
							return false;
						}
						var navListActiveAll = popupElem.find(".main.image-list-choose > .navbar > .row"),
							navListActiveElem = popupElem.find(".main.image-list-choose > .navbar > .row."+listLocal),
							boxListActiveAll = popupElem.find(".main.image-list-choose > .content > .list > .box"),
							boxListActiveElem = popupElem.find(".main.image-list-choose > .content > .list > .box."+listLocal);
						navListActiveAll.removeClass('active null');
						navListActiveElem.addClass('active');
						boxListActiveAll.removeClass('active null').slideUp();
						boxListActiveElem.stop(true, true).fadeIn(function () {
							boxListActiveElem.addClass('active').html("<div class='null'><div class='progress'><div class='navload'></div></div></div>");
						});
						_g.image.listget({'row': ['file', 'id', 'display', 'expires', 'date', 'scrapbook.id', 'mime', 'size', 'nameraw', 'description', 'dimension.height', 'dimension.width'], 'local': listLocal, 'limit': listLimit, 'order': listOrder}, function (returnObj) {
							_g.notification.close(notificationTab);
							boxListActiveElem.fadeOut(function() {
								boxListActiveElem.fadeIn();
							});
							if (_is.exists(returnObj, returnObj['return'], returnObj['data']) && returnObj['return']) {
								boxListActiveElem.stop(true, true).html('');
								if (_array.count(returnObj['data']) === 0) {
									navListActiveElem.addClass('null');
									boxListActiveElem.html("<div class='null'> <div class='icon'></div><div class='text'>no data in list</div> </div>");
								}else {
									boxListActiveElem.html('');
									fnEachBoxList(listLocal, returnObj['data']);
								}
								callback(popupElem);
								return popupElem;
							}else if (_is.exists(returnObj, returnObj['return'], returnObj['reason']) && !returnObj['return']) {
								_popup.close(popupElem);
								console.log('error: #');
								callback(false);
								return false;
							}else {
								_popup.close(popupElem);
								console.log('error: #');
								callback(false);
								return false;
							}
						});	
					};
					var navListActiveAll = popupElem.find(".main.image-list-choose > .navbar > .row"),
						navListActiveElem = popupElem.find(".main.image-list-choose > .navbar > .row."+listDefault),
						boxListActiveAll = popupElem.find(".main.image-list-choose > .content > .list > .box"),
						boxListActiveElem = popupElem.find(".main.image-list-choose > .content > .list > .box."+listDefault);
					fnGetBoxList({'local': listDefault, 'order': listOrder, 'limit': listLimit});
					navListActiveAll.bind('click', function (e) {
						var navListActiveElem = $(this);
						if (navListActiveElem.hasClass('disabled')) {
							_document.eventstop(e);
							return;
						}
						if (navListActiveElem.hasClass('active')) {
							if (!navListActiveElem.hasClass('null')) {
								_document.eventstop(e);
								return;
							}
						}
						if (navListActiveElem.hasClass('cache')) {
							fnGetBoxList({'local': 'cache', 'order': listOrder, 'limit': listLimit});
						}else if (navListActiveElem.hasClass('drive')) {
							fnGetBoxList({'local': 'drive', 'order': listOrder, 'limit': listLimit});
						}
					});
					callback(popupElem);
					return true;
				});
			});
		},
		bind: function (elem, type, func, callback, global) {
			var elem = _is.selector(elem) ? elem : {},
				type = _is.string(type) ? type : null,
				func = _is.function(func) ? func : function () {},
				callback = _is.function(callback) ? callback : function () {},
				global = _is.bool(global) ? global : true;
			if (_selector.count(elem) === 0) {
				callback(false);
				return false;
			}else if (!_array.exists(type, ['choose', 'each', 'hover', 'mouseover', 'mouseleave', 'dblcick'])) {
				callback(false);
				return false;
			}
			if (global) {
				var bindObj = {};
				bindObj[_string.random(10)] = {'type': type, 'func': func};
				_selector.cache.push(elem, 'bind', bindObj);
			}
			if (_array.exists(type, ['choose'])) {
				var fnBindChoose = function () {
					elem.find(".content > .list > .box > .li[box-preview-choose]").not("[box-preview-disabled], .selected").bind('click', function () {
						var boxPreviewElem = $(this);
						if (_is.exists(boxPreviewElem.attr('handling-choose')) || _is.exists(boxPreviewElem.attr('box-preview-disabled')) || boxPreviewElem.hasClass('selected')) {
							return;
						}else {
							boxPreviewElem.attr('handling-choose', 'true');
							setTimeout(function () {
								boxPreviewElem.removeAttr('handling-choose');
							}, 750);
						}
						_selector.cache.get(boxPreviewElem, '_object', function (returnObj) {
							func(returnObj[0], boxPreviewElem);
						});
					});
				};
				if (_selector.count(elem.find(".content > .list > .box > .li[box-preview-choose]")) == 0) {
					setTimeout(fnBindChoose, 750);
				}else {
					fnBindChoose();
				}
			}else if (_array.exists(type, ['each'])) {
				_selector.each(elem.find(".content > .list > .box > .li[box-preview-choose]"), function (boxPreviewElem, boxPreviewElemId) {
					func(boxPreviewElem, boxPreviewElemId);
				});
			}else {
				elem.find(".content > .list > .box > .li[box-preview-choose]").not("[box-preview-disabled]").bind(type, function (e) {
					var boxPreviewElem = $(this);
					if (_is.exists(boxPreviewElem.attr('handling-choose')) || _is.exists(boxPreviewElem.attr('box-preview-disabled'))) {
						return;
					}else {
						boxPreviewElem.attr('handling-'+type, 'true');
						setTimeout(function () {
							boxPreviewElem.removeAttr('handling-'+type);
						}, 250);
					}
					func(boxPreviewElem, e);
				});
			}
			callback(true);
			return true;
		},
		close: function (elem, callback) {
			var elem = _is.selector(elem) ? elem : {},
				callback = _is.function(callback) ? callback : function () {};
			//.
			if (_selector.count(elem) > 0) {
				_popup.close(elem, function () {
					callback({'return': true, 'exists': true, 'removed': true});
				});
			}else {
				callback({'return': true, 'exists': false, 'removed': false});
			}
			return true;
		}
	},
	listget: function (object, callback) {
		var object= _is.array(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};
		var listRow = _is.array(object['row']) ? object['row'] : [],
			listLocal = _is.string(object['local']) ? object['local'] : null,
			listLimit = _is.number(object['limit']) ? object['limit'] : null,
			listOrder = _is.string(object['order']) ? object['order'] : null;
		if (!_is.exists(listRow)) {
			callback({'return': false, 'reason': ''});
			return false;
		}else if (!_is.exists(listLocal)) {
			callback({'return': false, 'reason': ''});
			return false;
		}else if (!_array.exists(listLocal, ['cache', 'drive'])) {
			callback({'return': false, 'reason': ''});
			return false;
		}else if (!_is.exists(listLimit)) {
			callback({'return': false, 'reason': ''});
			return false;
		}else if (!_is.exists(listOrder)) {
			callback({'return': false, 'reason': ''});
			return false;
		}else if (!_array.exists(_string.lowercase(listOrder), ['desc', 'asc'])) {
			callback({'return': false, 'reason': ''});
			return false;
		} 
		var data = {
			'#port': 'image',
			'type': 'id',
			'action': 'list',
			'row': listRow,
			'local': listLocal,
			'limit': listLimit,
			'order': listOrder
		};
		var listGetAction = _g.xhr.use({
			type: 'POST',
			url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			data: data,
			datatype: 'json',
			done: function (data) {
				var data = _is.array(data) ? data : {};
				callback(data);
			},
			error: function () {
				callback({'return': false, 'reason': ''});
			}
		});
		if (listGetAction) {
			var listGetAction = undefined;
			var data = undefined;
		}
	},
	infoeditor : function (object, callback) {
		if (!_is.array(object)) {
			return false;
		}else {
			var callback = _is.function(callback) ? callback : function () {};
		}
		var imageLabel = _is.var(object['label']) && _is.string(object['label']) ? object['label'] : "",
			imageValue = _is.var(object['value']) && _is.string(object['value']) ? object['value'] : "";
		if (!_array.exists(imageLabel, ['id', 'display'])) {
			callback({'return': false, 'reason': ''});
			return false;
		}else if (!_is.exists(imageValue)) {
			callback({'return': false, 'reason': ''});
			return false;
		}
		_g.popup.add({
			classname: "image-info-input",
			title: "image - information",
			content: "<div class='null'> <!--<div class='icon'></div>--> <div class='progress'> <div class='navload'></div> </div> <span class='text'>data information loading...</span> </div>",
			note: "file "+imageLabel+": " + imageValue,
			close: true
		}, function (popupElem) {
			var mainImageInfo = popupElem.find(".main");
			_g.notification.add({
				type: "image",
				title: {
					text: "information is being getting"
				},
				content: "Information is being getting, please wait. <br> File "+imageLabel+": "+imageValue+".",
				timeout: 4000,
				close: true
			}, function (notificationTab) {
				_g.image.infoget({'row': ['*'], 'label': imageLabel, 'value': imageValue}, function (returnObj) {
					_g.notification.close(notificationTab);
					if (_is.exists(returnObj, returnObj['return'], returnObj['data']) && returnObj['return']) {
						var imageInfoObj = returnObj['data'][0];
						var fnSetFormInfo = function (object, callback) {
							var object = _is.array(object) ? object : {},
								callback = _is.function (callback) ? callback : function () {};
							//.
							var tabFixedLocal = "<div class='row local'> <div class='label'><span class='text'>local</span></div> <div class='value'>-</div> </div>",
								tabFixedMime = "<div class='row mime'> <div class='label'><span class='text'>mime</span></div> <div class='value'>-</div> </div>",
								tabFixedExpires = "<div class='row expires'> <div class='label'><span class='text'>expires</span></div> <div class='value'>-</div> </div>",
								tabPrivateView = "<div class='row privacy_view' info-label='privacy-view'> <div class='label'><span class='text'>view</span></div> <div class='value'>-</div> </div>",
								tabPrivateComment = "<div class='row privacy_comment' info-label='privacy-comment'> <div class='label'><span class='text'>comment</span></div> <div class='value'>-</div> </div>",
								tabPrivateShare = "<div class='row privacy_share' info-label='privacy-share'> <div class='label'><span class='text'>share</span></div> <div class='value'>-</div> </div>",
								tabPrivateExif = "<div class='row privacy_exif' info-label='privacy-exif'> <div class='label'><span class='text'>exif</span></div> <div class='value'>-</div> </div>",
								tabPrivateCopyright = "<div class='row copyright'> <div class='label'><span class='text'>copyright</span></div> <div class='value'>-</div> </div>",
								tabInfoName = "<div class='row name' info-label='name'> <div class='label'><span class='text'>name</span></div> <div class='value'><input class='input' type='text' placeholder='name of image'></div> </div>",
								tabInfoDescription = "<div class='row description' info-label='description'> <div class='label'><span class='text'>description</span></div> <div class='value'><textarea class='input' type='text' placeholder='descriptions of image'></textarea></div> </div>",
								tabInfoLocation = "<div class='row location' info-label='location'> <div class='label'><span class='text'>location</span></div> <div class='value'><input class='input' type='text' placeholder='location name created image'></div> </div>",
								tabInfoTag = "<div class='row tag' info-label='tag'> <div class='label'><span class='text'>tag</span></div> <div class='value'><textarea class='input' type='text' placeholder='tags of image (separated by space)'></textarea></div> </div>",
								tabOptionMultiple = "<div class='row multiple'> <div class='label'><span class='text'>multiple</span></div> <div class='value'>-</div> </div>",
								tabOptionKeep = "<div class='row keep'> <div class='label'><span class='text'>keep</span></div> <div class='value'>-</div> </div>",
								tabActionCancel = "<div class='row inline cancel'> <div class='value'><div class='button submit _button'>cancel</div></div> </div>",
								tabActionSave = "<div class='row inline save'> <div class='value'><div class='button submit _button'>save</div></div> </div>";
							//.
							mainImageInfo.html("<div class='tab fixed'> <div class='title'><span class='text'>fixed</span></div> <div class='content'>"+tabFixedLocal+tabFixedMime+tabFixedExpires+"</div> </div>  <div class='tab privacy'> <div class='title'><span class='text'>privacy</span></div> <div class='content'>"+tabPrivateView+tabPrivateComment+tabPrivateShare+tabPrivateExif+tabPrivateCopyright+"</div> </div> <div class='tab info'> <div class='title'><span class='text'>information</span></div> <div class='content'>"+tabInfoName+tabInfoDescription+tabInfoLocation+tabInfoTag+"</div> </div> <div class='tab option'> <div class='title'><span class='text'>options</span></div> <div class='content'>"+tabOptionMultiple+tabOptionKeep+"</div> </div> <div class='tab action'> <!--<div class='title'><span class='text'>action</span></div>--> <div class='content'>"+tabActionSave+tabActionCancel+"</div> </div>");
							//.
							if (_is.string(object['local']) && object['local'] !== "") {
								mainImageInfo.find(".tab .row.local").children(".value").fadeOut(function () {
									$(this).html("<span class='text'>"+object['local']+"</span>").fadeIn();
								});
							}
							if (_is.string(object['mime']) && object['mime'] !== "") {
								mainImageInfo.find(".tab .row.mime").children(".value").fadeOut(function () {
									$(this).html("<span class='text'>"+object['mime']+"</span>").fadeIn();
								});
							}
							if (_is.exists(object['expires'])) {
								object['expires'] = Number(object['expires']);
							}
							if (_is.number(object['expires']) && object['expires'] !== "") {
								mainImageInfo.find(".tab .row.expires").children(".value").fadeOut(function () {
									$(this).html("<span class='text'>"+(object['expires'] === 0 ? "saved to cache" : _g.tool.parse_datetime(object['expires']))+"</span>").fadeIn();
								});
							}
							var privacyListAllow = [
								{ value: 'private', text: '<?php print $_language->text('private'); ?>' },
								{ value: 'friends', text: '<?php print $_language->text('friends'); ?>' },
								{ value: 'allfriends', text: '<?php print $_language->text('all_friends'); ?>' },
								{ value: 'public', text: '<?php print $_language->text('public'); ?>' }
							];
							var copyrightListAllow = [
								{
									value: '',
									text: ''
								},
								{
									value: '',
									text: ''
								},
								{
									value: '',
									text: ''
								},
								{
									value: '',
									text: ''
								}
							];
							object['privacy']['view'] = object['privacy']['comment'] = object['privacy']['share'] = object['privacy']['exif'] = "private";
							if (_is.exists(object['privacy']['view']) && object['privacy']['view'] !== "") {
								mainImageInfo.find(".tab .row.privacy_view").children(".value").fadeOut(function () {
									var rowPrivateViewElem = $(this),
										objectPrivateView = _privacy.object(object['privacy.view']);
									_privacy.append(rowPrivateViewElem, {
										type: 'replace',
										classname: 'value',
										attr: [{'label': 'info-value', 'value': ''}],
										value: (_is.exists(objectPrivateView) && _is.exists(objectPrivateView['value']) ? objectPrivateView['value'] : ""),
										text: (_is.exists(objectPrivateView) && _is.exists(objectPrivateView['text']) ? objectPrivateView['text'] : ""),
										list: privacyListAllow
									});
								}).fadeIn();
							}
							if (_is.exists(object['privacy']['comment']) && object['privacy']['comment'] !== "") {
								mainImageInfo.find(".tab .row.privacy_comment").children(".value").fadeOut(function () {
									var rowPrivateViewElem = $(this),
										objectPrivateView = _privacy.object(object['privacy.comment']);
									_privacy.append(rowPrivateViewElem, {
										type: 'replace',
										classname: 'value',
										attr: [{'label': 'info-value', 'value': ''}],
										value: (_is.exists(objectPrivateView) && _is.exists(objectPrivateView['value']) ? objectPrivateView['value'] : ""),
										text: (_is.exists(objectPrivateView) && _is.exists(objectPrivateView['text']) ? objectPrivateView['text'] : ""),
										list: privacyListAllow
									});
								}).fadeIn();
							}
							if (_is.exists(object['privacy']['share']) && object['privacy']['share'] !== "") {
								mainImageInfo.find(".tab .row.privacy_share").children(".value").fadeOut(function () {
									var rowPrivateViewElem = $(this),
										objectPrivateView = _privacy.object(object['privacy.share']);
									_privacy.append(rowPrivateViewElem, {
										type: 'replace',
										classname: 'value',
										attr: [{'label': 'info-value', 'value': ''}],
										value: (_is.exists(objectPrivateView) && _is.exists(objectPrivateView['value']) ? objectPrivateView['value'] : ""),
										text: (_is.exists(objectPrivateView) && _is.exists(objectPrivateView['text']) ? objectPrivateView['text'] : ""),
										list: privacyListAllow
									});
								}).fadeIn();
							}
							if (_is.exists(object['privacy']['exif']) && object['privacy']['exif'] !== "") {
								mainImageInfo.find(".tab .row.privacy_exif").children(".value").fadeOut(function () {
									var rowPrivateViewElem = $(this),
										objectPrivateView = _privacy.object(object['privacy.exif']);
									_privacy.append(rowPrivateViewElem, {
										type: 'replace',
										classname: 'value',
										attr: [{'label': 'info-value', 'value': ''}],
										value: (_is.exists(objectPrivateView) && _is.exists(objectPrivateView['value']) ? objectPrivateView['value'] : ""),
										text: (_is.exists(objectPrivateView) && _is.exists(objectPrivateView['text']) ? objectPrivateView['text'] : ""),
										list: privacyListAllow
									});
								}).fadeIn();
							}
							if (_is.string(object['nameraw']) && object['nameraw'] !== "") {
								mainImageInfo.find(".tab .row.name").children(".value").fadeOut(function () {
									$(this).children(".input").val(object['nameraw']);
								}).fadeIn();
							}
							if (_is.string(object['description']) && object['description'] !== "") {
								mainImageInfo.find(".tab .row.description").children(".value").fadeOut(function () {
									$(this).children(".input").val(object['description']);
								}).fadeIn();
							}
							_textarea.autosize.set(mainImageInfo.find(".tab .row.description > .value > .input"));
							if (_is.exists(object['location']) && object['location'] !== "") {
								if (_is.number(object['location']) || new RegExp(/^([0-9]+)$/).test(object['location'])) {
									//.
								}else if (_is.string(object['location'])) {
									mainImageInfo.find(".tab .row.location").children(".value").fadeOut(function () {
										$(this).children(".input").val(object['location']);
									}).fadeIn();
								}
							}
							mainImageInfo.find(".tab .row.location").children(".value").children(".input").bind('keyup', function () {
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
							if (_is.string(object['tag']) && object['tag'] !== "") {
								mainImageInfo.find(".tab .row.tag").children(".value").fadeOut(function () {
									$(this).children(".input").val(object['tag']);
								}).fadeIn();
							}
							if (_is.string(object['multiple']) && object['multiple'] !== "") {
								mainImageInfo.find(".tab .row.multiple").children(".value").fadeOut(function () {
									$(this).attr('value', (_array.exists(object['multiple'], [1, '1', true, 'true'])) ? "yes" : "no").html("<div class='icon'></div>");
									_g.tooltip.set($(this).children(".icon"), {
										arrow: "e",
										action: "hover",
										content: (_array.exists(object['multiple'], [1, '1', true, 'true'])) ? "created multiple size different images" : "not create another image"
									});
								}).fadeIn();
							}
							if (_is.string(object['keep']) && object['keep'] !== "") {
								mainImageInfo.find(".tab .row.keep").children(".value").fadeOut(function () {
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
							var callback = _is.function (callback) ? callback : function () {},
								object = {};
							mainImageInfo.find(".tab .row[info-label]").each(function () {
								var rowInfoElem = $(this),
									rowInfoLabel = _is.exists(rowInfoElem.attr('info-label')) ? rowInfoElem.attr('info-label') : null;
								if (_array.exists(rowInfoLabel, ['name', 'description', 'tag'])) {
									rowInfoValue = rowInfoElem.children(".value").children(".input").val();
									object[rowInfoLabel] = rowInfoValue;
								}else if (_array.exists(rowInfoLabel, ['location'])) {
									if (_is.exists(rowInfoElem.children(".value").children(".input").attr('disabled'))) {
										rowInfoValue = "xx";
									}else {
										rowInfoValue = rowInfoElem.children(".value").children(".input").val();
									}
									object[rowInfoLabel] = rowInfoValue;
								}else if (_array.exists(rowInfoLabel, ['privacy-view', 'privacy-comment', 'privacy-share', 'privacy-exif'])) {
									rowInfoValue = rowInfoElem.children(".value[privacy-value]").attr('privacy-value');
									rowInfoValue = _is.string(rowInfoValue) ? rowInfoValue : null;
									if (_is.exists(rowInfoValue)) {
										object[rowInfoLabel] = rowInfoValue;
									}
								}
							});
							//.
							callback(object);
							return object;
						};
						var fnInfoUpdate = function (object, callback) {
							var object = _is.array(object) ? object : {},
								callback = _is.function(callback) ? callback : function () {};
							var data = {
								port: 'image',
								type: 'id',
								action: 'update',
								row: {},
								label: null,
								value: null
							};
							data['row'] = _is.array(object['row']) ? object['row'] : {};
							data['label'] = _is.string(object['label']) ? object['label'] : null;
							data['value'] = _is.string(object['value']) || _is.number(object['value']) ? object['value'] : null;
							var infoUpdateAction = _xhr.use({
								type: 'POST',
								url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
								data: data,
								datatype: 'json',
								done: function (returnObj) {
									if (_is.exists(returnObj, returnObj['return'], returnObj['data']) && returnObj['return']) {
										callback({'return': true, 'data': returnObj['data']});
									}else if (_is.exists(returnObj, returnObj['return'], returnObj['reason']) && !returnObj['return']) {
										console.log('error: #');
										callback({'return': false, 'reason': returnObj['reason']});
									}else {
										console.log('error: #');
										callback({'return': false, 'reason': ''});
									}
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
						/*
						_popup.alert.add(popupElem, {}, function (x) {
							console.log(x);
						});
						*/
						var fnUpdateForm = function (object, callback) {
							var object = _is.array(object) ? object : {},
								callback = _is.function(callback) ? callback : function () {};
							for (var label in object) {
								var value = object[label];
								if (_array.exists(label, ['name', 'description', 'tag'])) {
									var imageRowElem = mainImageInfo.find(".tab .row[info-label='"+label+"']").children(".value");
									imageRowElem.fadeOut(function () {
										imageRowElem.children(".input").val(value);
									}).fadeIn();
								}else if (_array.exists(label, ['location'])) {
									if (_is.number(object[label]) || new RegExp(/^([0-9]+)$/).test(object[label])) {
										//.
									}else if (_is.string(object[label])) {
										var imageRowElem = mainImageInfo.find(".tab .row[info-label='"+label+"']").children(".value");
										imageRowElem.fadeOut(function () {
											imageRowElem.children(".input").val(value);
										}).fadeIn();
									}
								}
							}
							callback();
						};
						var fnConfigForm = function (object) {
							var object = _is.array(object) ? object : {};
							fnSetFormInfo(object, function (mainImageInfo) {
								mainImageInfo.find(".tab.action .row.cancel").find(".value > .submit").bind('click', function (e) {
									if (mainImageInfo.attr('information-changed') == "true") {
										_document.eventstop(e);
										return;
									}
									_popup.close(popupElem);
								});
								mainImageInfo.find(".tab.action .row.save").find(".value > .submit").bind('click', function () {
									var infoUpdateDone = function (returnObj) {
										if (_is.exists(returnObj, returnObj['return'], returnObj['data']) && returnObj['return']) {
											_g.notification.add({
												type: "image",
												title: {
													text: "information has updated"
												},
												content: "Information this image has updated.",
												timeout: 3000,
												close: true
											});
											fnUpdateForm(returnObj['data']['updated']);
										}else if (_is.exists(returnObj, returnObj['return'], returnObj['reason']) && !returnObj['return']) {
											//.
										}else {
											//.
										}
									};
									fnInfoEach(function (infoRowObj) {
										if (_is.number(imageInfoObj['id']) || _is.string(imageInfoObj['id'])) {
											fnInfoUpdate({'label': 'id', 'value': imageInfoObj['id'], 'row': infoRowObj}, infoUpdateDone);
										}else if (_is.string(imageInfoObj['display'])) {
											fnInfoUpdate({'label': 'display', 'value': imageInfoObj['display'], 'row': infoRowObj}, infoUpdateDone);
										}else {
											//.
										}
									});
								});
								mainImageInfo.css({'max-height': ($(window).height() / 10 * 7) + 'px'});
							});
						};
						mainImageInfo.fadeOut(function () {
							fnConfigForm(imageInfoObj);
						}).fadeIn();
					}else if (_is.exists(returnObj) && _is.exists(returnObj['return']) && _is.exists(returnObj['reason']) && !returnObj['return']) {
						_popup.close(popupElem);
						console.log('error: #');
					}else {
						_popup.close(popupElem);
						console.log('error: #');
					}
				});
			});
		});
	},
	infoget: function (object, callback) {
		if (!_is.array(object)) {
			return false;
		}else {
			var callback = _is.function(callback) ? callback : function () {};
		}
		var imageRow = _is.var(object['row']) && _is.array(object['row']) ? object['row'] : [],
			imageLabel = _is.var(object['label']) && _is.string(object['label']) ? object['label'] : "",
			imageValue = _is.var(object['value']) && _is.string(object['value']) ? object['value'] : "";
		if (_array.count(imageRow) === 0) {
			callback({'return': false, 'reason': ''});
			return false;
		}else if (!_is.exists(imageLabel)) {
			callback({'return': false, 'reason': ''});
			return false;
		}else if (!_is.exists(imageValue)) {
			callback({'return': false, 'reason': ''});
			return false;
		}
		var data = {
			'#port': 'image',
			'type': 'id',
			'action': 'get',
			'row': imageRow,
			'label': imageLabel,
			'value': imageValue
		};
		var imageGetAction = _g.xhr.use({
			type: 'POST',
			url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			data: data,
			datatype: 'json',
			upload: {},
			done: function (data) {
				var data = _is.array(data) ? data : {};
				callback(data);
			},
			error: function () {
				callback({'return': false, 'reason': ''});
			}
		});
		if (imageGetAction) {
			var imageGetAction = undefined;
			var data = undefined;
		}
	},
	post: function (object, callback) {
		if (!_is.array(object)) {
			return false;
		}else {
			var callback = _is.function(callback) ? callback : function () {};
		}
		var imageLabel = _is.var(object['label']) && _is.string(object['label']) ? object['label'] : "",
			imageValue = _is.var(object['value']) && _is.string(object['value']) ? object['value'] : "";
		if (!_is.exists(imageLabel) || !_array.exists(imageLabel, ['id', 'display'])) {
			callback({'return': false, 'reason': ''});
			return false;
		}else if (!_is.exists(imageValue)) {
			callback({'return': false, 'reason': ''});
			return false;
		}
		var data = {
			'#port': 'image',
			'type': 'id',
			'action': 'post',
			'label': imageLabel,
			'value': imageValue
		};
		var imagePostAction = _g.xhr.use({
			type: 'POST',
			url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			data: data,
			datatype: 'json',
			upload: {},
			done: function (data) {
				var data = _is.array(data) ? data : {};
				callback(data);
			},
			error: function () {
				callback({'return': false, 'reason': ''});
			}
		});
		if (imagePostAction) {
			var imagePostAction = undefined;
			var data = undefined;
		}
	},
	delete: function (display, callback) {

	}
};
var _image = _g.image;
_g.ajaxify = {
	ready: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (_g.session.exists('client_ajaxify_ready') === true)  {
			callback(_g.session.get('client_ajaxify_ready'));
		}else {
			$(document).ready(function () {
				var callbackSetupFunc = function (value) {
					callback(value);
				};
				_g.ajaxify.setup(callbackSetupFunc);
			});
		}
	},
	setup: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var setAjaxifyStatus = function (value) {
			_g.session.add('client_ajaxify_ready', value);
			callback(value);
		};
		_g.ajaxify.each();
		setAjaxifyStatus(true);
	},
	gender: function (object, callback) {
		var object = _is.array(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};

	},
	request: function (object, callback) {
		var object = _is.array(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};
		var type = _is.string(object['type']) ? object['type'] : null,
			url = _is.string(object['url']) ? object['url'] : null;
		if (!_is.exists(type)) {
			callback(false);
			return false;
		}else if (!_is.exists(type)) {
			callback(false);
			return false;
		}else if (_array.exists(type, ['giccos']) && !(new RegExp(<?php print $_parameter->get('regex_url_giccos_domain'); ?>)).test(url)) {
			callback(false);
			return false;
		}
		var requestKey = _string.random(10);
		var fnRequestDone = function (returnObj) {
			callback(returnObj);
			return returnObj;
		};
		var fnRequestError = function () {
			//.
		};
		var fnRequestAbort = function () {
			//.
		};
		var requestXhrHandling = {};
		if (_session.exists('client_ajaxify_handling')) {
			var requestXhrHandling = _session.get('client_ajaxify_handling');
		}
		for (var i in requestXhrHandling) {
			if (_is.exists(requestXhrHandling[i], requestXhrHandling[i]['ajaxify']['url']) && requestXhrHandling[i]['ajaxify']['url'] == url) {
				callback(true);
				return true;
			}
			_xhr.abort(requestXhrHandling[i], function (isAborted) {
				delete requestXhrHandling[i];
			});
		}
		var requestXhrAction = _xhr.use({
			type: 'POST',
			url: '<?php print $_tool->links("source/ajax/action.ajax"); ?>',
			data: {'port': 'ajaxify', 'type': type, 'action': 'get', url: url},
			datatype: 'json',
			done: fnRequestDone,
			error: fnRequestError,
			abort: fnRequestAbort
		}, function (requestAction) {
			setTimeout(function () {
				var requestXhrHandling = {};
				if (_session.exists('client_ajaxify_handling')) {
					var requestXhrHandling = _session.get('client_ajaxify_handling');
				}
				if (_is.exists(requestXhrHandling[requestKey])) {
					delete requestXhrHandling[requestKey];
				}
				_session.set('client_ajaxify_handling', requestXhrHandling);
			}, 250);
		});
		requestXhrAction['ajaxify'] = {
			'url': url
		};
		requestXhrHandling[requestKey] = requestXhrAction;
		_session.set('client_ajaxify_handling', requestXhrHandling);
		var requestXhrHandling = undefined;
		var requestXhrAction = undefined;
	},
	each: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		$("[href]").each(function () {
			var buttonElem = $(this);
			if (_array.exists(buttonElem.attr('ajaxify-ready'), ['true'])) {
				return;
			}else {
				if (_array.exists(buttonElem.attr('ajaxify-handling'), ['true'])) {
					return;
				}
				buttonElem.attr('ajaxify-handling', 'true');
			}
			var buttonLink = buttonElem.attr('href'),
				buttonHost = "giccos";
			if (!_is.exists(buttonLink) || !(new RegExp(<?php print $_parameter->get('regex_url_giccos_domain'); ?>)).test(buttonLink)) {
				buttonElem.removeAttr('ajaxify-handling');
				return;
			}
			buttonElem.bind('click', function (e) {
				var buttonElem = $(this);
				if (buttonElem.attr('ajaxify-direct-handling') != "true") {
					buttonElem.attr('ajaxify-direct-handling', 'true');
				}
				if (!_array.exists(buttonElem.attr('ajaxify-disabled'), ['true'])) {
					_document.eventstop(e);
					_g.window.ready(function (isEnabled) {
						if (isEnabled) {
							return _window.direct({
								'host': buttonHost,
								"local": null,
								'url': buttonLink,
								"background": false
							}, function (windowTabElem) {
								callback(windowTabElem);
							});
						}else {
							console.log('x');
							// _ajaxify.direct(buttonLink);
						}
					});
				}
				buttonElem.removeAttr('ajaxify-direct-handling');
			});
			buttonElem.attr('ajaxify-ready', 'true');
			buttonElem.removeAttr('ajaxify-handling');
		});
		callback();
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
	autoload: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		_g.ajaxify.ready(function (isEnabled) {
			console.log('ajaxify - enable: ' + isEnabled);
			if (isEnabled) {
				_g.ajaxify.each();
				callback();
			}
		});
	}
};
var _ajaxify = _g.ajaxify;
_ajaxify.autoload();
_g.window = {
	enable: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		callback(true);
		return true;
	},
	setup: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var setWindowStatus = function (value) {
			_g.session.add('client_window_ready', value);
			callback(value);
		};
		_g.window.enable(function (returnValue) {
			setWindowStatus(returnValue);
		});
	},
	ready: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		if (_g.session.exists('client_window_ready') === true)  {
			callback(_g.session.get('client_window_ready'));
		}else {
			$(window).ready(function () {
				var callbackSetupFunc = function (value) {
					callback(value);
				};
				_g.window.setup(callbackSetupFunc);
			});
		}
	},
	direct: function (object, callback) {
		var object = _is.array(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};
		var windowHost = _is.string(object['host']) ? object['host'] : null,
			windowUrl = _is.string(object['url']) ? object['url'] : null,
			windowBackground = _is.bool(object['background']) ? object['background'] : false;
		if (!_is.exists(windowHost) || !_is.bool(windowBackground)) {
			callback(false);
			return false;
		}else if (!_is.exists(windowUrl) || !(new RegExp(<?php print $_parameter->get('regex_url_giccos_domain'); ?>)).test(windowUrl)) {
			callback(false);
			return false;
		}
		var windowTabAll = _g.window.list();
		for (var i in windowTabAll) {
			var windowTabElem = windowTabAll[i];
			windowTabElemUrl = windowTabElem.attr('window-tab-url');
			if (windowTabElemUrl == windowUrl) {
				_window.switch(windowTabElem);
				callback(windowTabElem);
				return true;
			}
		}
		return _g.window.ready(function (isEnabled) {
			if (isEnabled) {
				//.
			}
			return _g.ajaxify.request({'type': windowHost, 'url': windowUrl}, function (returnObj) {
				if (returnObj === true) {
					//.
					callback(true);
					return true;
				}else if (_is.exists(returnObj, returnObj['return'], returnObj['data']) && returnObj['return']) {
					return _window.add({
						'document': _is.array(returnObj['data']['document']) ? returnObj['data']['document'] : {},
						'local': _is.string(returnObj['data']['local']) ? returnObj['data']['local'] : null,
						'title': _is.string(returnObj['data']['title']) ? returnObj['data']['title'] : null,
						'url': _is.string(returnObj['data']['url']) ? returnObj['data']['url'] : null,
						'content': _is.string(returnObj['data']['content']) ? returnObj['data']['content'] : null,
						'include': _is.array(returnObj['data']['include']) ? returnObj['data']['include'] : {},
						'background': windowBackground,
						'replace': true
					}, function (windowTabElem) {
						var notifyOptions = {
							type: "window",
							timeout: 3000,
							close: true,
							collapse: true
						};
						if (!windowBackground) {
							notifyOptions['title'] = {},
							notifyOptions['title']['text'] = "open & switch new tab",
							notifyOptions['content'] = "you just open new tab and switch to this tab";
						}else {
							notifyOptions['title'] = {},
							notifyOptions['title']['text'] = "open new tab",
							notifyOptions['content'] = "you just open new tab, it's open in background";
						}
						_notification.add(notifyOptions);
						callback(windowTabElem);
						return true;
					});
				}else if (_is.exists(returnObj, returnObj['return'], returnObj['reason']) && !returnObj['return']) {
					console.log(returnObj['reason']);
					callback(false);
					return false;
				}else {
					console.log('#error');
					callback(false);
					return false;
				}
			});
		});
	},
	button: {
		setup: function (callback) {
			var callback = _is.function(callback) ? callback : function () {};
			if (!_global.exists("#g-window")) {
				_global.add("<div id='g-window'><div class='content'></div></div>");
				_g.window.button.resize();
			}
			var window = $("#g-window"),
				navbar = $("#g-navbar"),
				sidebar = $("#g-sidebar");
			if (_selector.count(window.children(".content").children(".li[window-button-more]")) === 0) {
				var buttonMoreCode = "<div class='li _card more options' window-button-more> <div class='main'> <div class='conicon'><div class='icon'></div></div> </div> </div>";				if (_selector.count(window.children(".content").children(".li")) === 0) {
					window.children(".content").append(buttonMoreCode);
				}else {
					window.children(".content").children(".li").first().before(buttonMoreCode);
				}
				var tabMoreElem = window.children(".content").children("[window-button-more]");
				tabMoreElem.bind('click', function () {
					window.toggleClass('choosing');
					if (window.hasClass('choosing')) {
						window.css({
							'margin-top': (navbar.height() + 2) + 'px',
							'width': ($(document).width() - sidebar.width() - 2) + 'px',
							'height': ($(document).height() - navbar.height() - 2) + 'px'
						});
					}else {
						window.css({
							'margin-top': 'auto',
							'width': 'auto',
							'height': 'auto'
						});
					}
				});
			}
			if (_selector.count(window.children(".content").children(".li[window-button-add]")) === 0) {
				var buttonAddCode = "<div class='li _card add options' window-button-add> <div class='main'> <div class='conicon'><div class='icon'></div></div> </div> </div>";
				if (_selector.count(window.children(".content").children(".li.more")) === 0) {
					if (_selector.count(window.children(".content").children(".li")) === 0) {
						window.children(".content").append(buttonAddCode);
					}else {
						window.children(".content").children(".li").first().before(buttonAddCode);
					}
				}else {
					window.children(".content").children(".li.more").after(buttonAddCode);
				}
				var fnWindowUrlCheck = function (url) {
					if (!_is.string(url)) {
						return false;
					}
					return (new RegExp(<?php print $_parameter->get('regex_url_giccos_domain'); ?>).test(url));
				};
				var tabAddElem = window.children(".content").children("[window-button-add]");
				tabAddElem.bind('click', function () {
					_g.popup.add({
						classname: "window-new-tab",
						title: "open new tab",
						content: "<div class='input'> <div><label>type link tab</label></div> <div><input input-giccos-url type='text' placeholder='link new tab'></div> </div>",
						note: "power by giccos",
						close: true
					}, function (popupElem) {
						var urlInputWindowTab = popupElem.find(".main input[input-giccos-url]");
						urlInputWindowTab.bind('keyup', function () {
							var urlWindowTab = urlInputWindowTab.val();
							if (!fnWindowUrlCheck(urlWindowTab)) {
								//.
							}else {
								urlInputWindowTab.attr('disabled', '');
								_popup.close(popupElem);
								return _window.direct({
									"host": "giccos",
									"local": null,
									"url": urlWindowTab,
									"background": false
								});
							}
						}, 1750);
						urlInputWindowTab.bind('keyup', function (e) {
							if ((e.keyCode ? e.keyCode : e.which) == 13) {
								var urlWindowTab = urlInputWindowTab.val();
								if (!fnWindowUrlCheck(urlWindowTab)) {
									//.
								}else {
									urlInputWindowTab.attr('disabled', '');
									_popup.close(popupElem);
									return _window.direct({
										"host": "giccos",
										"local": null,
										"url": urlWindowTab,
										"background": false
									});
								}
							}
						}, 10);
						urlInputWindowTab.focus();
					});
				});
			}
			callback(true);
			return true;
		},
		collapse: function (callback) {
			var callback = _is.function(callback) ? callback : function () {};
			var window = $("#g-window"),
				tabButton = window.children(".content").children(".li[window-button]"),
				count = 0;
			tabButton.hide();
			tabButton.each(function () {
				if (count > 4) {
					return;
				}
				var buttonElem = $(this);
				buttonElem.fadeIn();
			});
		},
		tab: function (windowTabElem, callback) {
			var windowTabElem = _is.selector(windowTabElem) ? windowTabElem : null,
				callback = _is.function(callback) ? callback : function () {};
			if (!_is.selector(windowTabElem)) {
				callback(false);
				return false;
			}
			var windowLocal = _is.string(windowTabElem.attr('window-tab-local')) ? windowTabElem.attr('window-tab-local') : null;
			if (!_is.exists(windowLocal)) {
				callback(false);
				return false;
			}
			return _g.window.exists({'local': windowLocal}, function (isExists, windowTabElem) {
				if (isExists) {
					return _selector.cache.get(windowTabElem, 'button', function (returnObj) {
						var windowButtonElem = _is.selector(returnObj[0]) ? returnObj[0] : null;
						callback(windowButtonElem);
						return windowButtonElem;
					});
				}else {
					callback(false);
					return false;
				}
			});
		},
		bind: function (elem, type, func, callback) {
			var elem = _is.selector(elem) ? elem : {},
				type = _is.string(type) ? type : null,
				func = _is.function(func) ? func : function () {},
				callback = _is.function(callback) ? callback : function () {};
			if (_selector.count(elem) === 0) {
				callback(false);
				return false;
			}else if (!_array.exists(type, ['hover', 'mouseover', 'mouseleave', 'dblcick', 'active', 'inactive'])) {
				callback(false);
				return false;
			}
			if (_array.exists(type, ['active', 'inactive'])) {
				var window = $("#g-window"),
					tabButton = window.children(".content").children(".li");
				tabButton.bind('click', function () {
					var buttonElem = $(this);
					if (buttonElem === elem && type == "acitve") {
						func(buttonElem);
					}else if (buttonElem !== elem && type == "inacitve") {
						func(buttonElem);
					}
				});
			}else {
				elem.bind(type, func);
			}
			callback(true);
			return true;
		},
		active: function (elem, callback) {
			var elem = _is.selector(elem) ? elem : {},
				callback = _is.function(callback) ? callback : function () {};
			if (_is.exists(elem.attr('window-button-local'))) {
				var windowLocal = elem.attr('window-button-local');
			}else if (_is.exists(elem.attr('window-tab-local'))) {
				var windowLocal = elem.attr('window-tab-local');
			}else {
				callback(false);
				return false;
			}
			var html = $("html"),
				title = $("title"),
				windowTabAll = $("[window-tab-local]"),
				windowTabElem = $("[window-tab-local='"+windowLocal+"']"),
				tabButtonAll = $("[window-button-local]"),
				tabButtonElem = $("[window-button-local='"+windowLocal+"']");
			if (_selector.count(windowTabElem) === 0 ) {
				_g.notification.add({
					type: "window",
					title: {
						text: "Window is not found"
					},
					content: "Window is not found, maby it closed.",
					timeout: 3000,
					close: true
				});
				_g.window.button.remove(elem);
				callback(false);
				return false;
			}
			var windowConfig = {};
			if (_session.exists('client_window_config')) {
				var windowConfig = _session.get('client_window_config');
			}
			if (windowConfig['living'] == windowLocal) {
				callback(windowTabElem);
				return windowTabElem;
			}
			windowTabAll.stop(true, true).hide();
			title.text(_is.exists(windowTabElem.attr('window-tab-title')) ? windowTabElem.attr('window-tab-title') : windowTabElem.attr('window-tab-local'));
			windowTabElem.stop(true, true).fadeIn(750).attr('window-tab-disabled', 'false').attr('window-tab-active', 'true').click();
			tabButtonAll.removeClass('active').attr('window-button-active', 'false');
			tabButtonElem.addClass('active').attr('window-button-active', 'true');
			if (_selector.count(tabButtonAll) > 1) {
				tabButtonElem.insertBefore(tabButtonAll.first());
			}
			var windowDocumentOld = html.attrAll();
			for (var documentLabel in windowDocumentOld) {
				html.removeAttr(documentLabel);
			}
			var windowUrl = _is.exists(windowTabElem.attr('window-tab-url')) ? windowTabElem.attr('window-tab-url') : null;
			if (_is.exists(windowUrl)) {
				history.replaceState({}, title.text(), windowUrl);
				// history.pushState(state, title, url);
			}
			var windowDocument = _is.exists(windowTabElem.attr('window-tab-document')) ? _json.decode(windowTabElem.attr('window-tab-document')) : {'id': 'giccos'};
			for (var documentLabel in windowDocument) {
				html.attr(documentLabel, windowDocument[documentLabel]);
			}
			windowConfig['living'] = windowLocal;
			_session.set('client_window_config', windowConfig);
			callback(windowTabElem);
			return windowTabElem;
		},
		remove: function (elem, callback) {
			var elem = _is.selector(elem) ? elem : {},
				callback = _is.function(callback) ? callback : function () {};
			elem.fadeOut(function () {
				elem.remove();
			});
			callback(true);
			return true;
		},
		add: function (object, callback) {
			var object = _is.array(object) ? object : {},
				callback = _is.function(callback) ? callback : function () {};
			_g.window.button.setup();
			var page = $("#g-page"),
				main = page.children("#g-main");
			var windowKey = _string.random(10),
				windowLocal = _is.exists(object['local']) ? object['local'] : null,
				windowTitle = _is.exists(object['title']) ? object['title'] : null,
				windowDisabled = _is.exists(object['disabled']) ? object['disabled'] : null,
				windowCode = "<div class='li _card' window-button window-button-key='"+windowKey+"'> <div class='main'> <div class='conicon'><div class='icon'></div></div> <div class='context nowrap'> <span class='text'>"+(_is.string(windowTitle) ? windowTitle : windowLocal)+"</span> </div> </div> <div class='options'></div> </div>";
			var windowTabAll = main.children("[window-tab-local]"),
				windowTabElem = main.children("[window-tab-local='"+windowLocal+"']");
			if (!_is.exists(windowLocal)) {
				callback(false);
				return false;
			}else {
				var window = $("#g-window"),
					tabButton = window.children(".content").children("[window-button][window-button-key='"+windowKey+"']");
				if (_selector.count(tabButton) > 0) {
					tabButton.remove();
				}
			}
			var window = $("#g-window");
			if (_selector.count(window.children(".content").children(".li.active")) === 0) {
				if (_selector.count(window.children(".content").children(".li.options") == 0)) {
					window.children(".content").children(".li").first().after(windowCode);
				}else {
					window.children(".content").children(".li.options").last().after(windowCode);
				}
			}else {
				window.children(".content").children(".li[window-button-active='true']").after(windowCode);
			}
			var tabButton = window.children(".content").children("[window-button][window-button-key='"+windowKey+"']");
			tabButton.attr('window-button-local', windowLocal).bind('click', function () {
				_g.window.button.active(tabButton);
				if (window.hasClass('choosing')) {
					var tabMore = window.children(".content").children("[window-button-more]");
					tabMore.click();
				}
			}).removeAttr('window-key').find(".main > .conicon").bind('click', function (e) {
				_document.eventstop(e);
				if (windowLocal == "blank") {
					if (_array.count(_window.list()) == 1) {
						_notification.add({
							type: "window",
							title: {
								text: "window was't closed"
							},
							content: "this window was't closed, not have a other tab.",
							timeout: 3000,
							close: true,
							collapse: true
						});
						return false;
					}
				}
				_g.window.close(main.children("[window-tab-local='"+windowLocal+"']"), function (isDeleted) {
					if (!isDeleted) {
						_notification.add({
							type: "window",
							title: {
								text: "window was't closed"
							},
							content: "this window was't closed, please try agian.",
							timeout: 3000,
							close: true,
							collapse: true
						});
						console.log('#error: can not close window');
						return false;
					}
					tabButton.next().click();
					_notification.add({
						type: "window",
						title: {
							text: "window was closed"
						},
						content: "this window was closed and removed data.",
						timeout: 3000,
						close: true,
						collapse: true
					});
					console.log('#notify: closed window');
					setTimeout(function () {
						if (!_window.current() || _array.count(_window.list()) == 0) {
							return _window.direct({
								"host": "giccos",
								"local": null,
								"url": "<?php print $_tool->links('blank'); ?>",
								"background": false
							});
						}
					}, 750);
					/*
					windowOldTitle = title.text();
					windowOldUrl = (window.location.protocol + '//' + window.location.host + window.location.pathname);
					history.pushState({}, windowTitle, windowUrl);
					if (windowBackground) {
						history.replaceState({}, windowOldTitle, windowOldUrl);
					}
					*/
					return true;
				});
				return;
			});
			_tooltip.set(tabButton, {
				arrow: "s",
				action: "hover",
				content: (_is.string(windowTitle) ? (windowTitle + ' | ' + windowLocal) : windowLocal)
			});
			_selector.cache.set(windowTabElem, 'button', tabButton);
			_g.window.button.collapse();
			callback(tabButton);
			return tabButton;
		},
		resize: function () {
			var page = $("#g-page"),
				navbar = page.children("#g-navbar"),
				main = page.children("#g-main"),
				sidebar = page.children("#g-sidebar"),
				window = $("#g-window");
			var fnTemplateResize = function () {
				window.children(".content").css({
					'margin-left': (main.css('margin-left')),
					'margin-right': (main.css('margin-right')),
					'max-width': (main.css('width'))
				});
			};
			$(window).bind('resize', fnTemplateResize, 250);
			$(document).ready(function () {
				fnTemplateResize();
				for (i = 1; i <= 10; i++) {
					setTimeout(fnTemplateResize, i * 100);
				}
			});
		},
		list: function (callback) {
			var callback = _is.function(callback) ? callback : function () {};
			var listObj = {},
				tabButtonAll = $("[window-button-local]");
			tabButtonAll.each(function () {
				var tabButtonElem = $(this);
				listObj[_array.count(listObj)] = tabButtonElem;
			});
			callback(listObj);
			return listObj;
		},
		current: function (callback) {
			var callback = _is.function(callback) ? callback : function () {};
			var tabButtonAll = _g.window.button.list(),
				tabButtonCurrent = null;
			var windowConfig = {};
			if (_session.exists('client_window_config')) {
				var windowConfig = _session.get('client_window_config');
			}
			var tabButtonCurrentLocal = _is.exists(windowConfig['living']) ? windowConfig['living'] : null;
			for (var i in tabButtonAll) {
				var tabButtonElem = tabButtonAll[i];
				tabButtonElemLocal = tabButtonElem.attr('window-button-local');
				if (_is.exists(tabButtonCurrentLocal)) {
					if (tabButtonElemLocal == tabButtonCurrentLocal) {
						var tabButtonCurrent = tabButtonElem;
					}
				}else {
					if (_array.exists(tabButtonElem.attr('window-button-active'), ['true'])) {
						var tabButtonCurrent = tabButtonElem;
					}
				}
			}
			callback(tabButtonCurrent);
			return tabButtonCurrent;
		}
	},
	current: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var windowTabAll = _g.window.list(),
			windowTabCurrent = null;
		var windowConfig = {};
		if (_session.exists('client_window_config')) {
			var windowConfig = _session.get('client_window_config');
		}
		var windowTabCurrentLocal = _is.exists(windowConfig['living']) ? windowConfig['living'] : null;
		for (var i in windowTabAll) {
			var windowTabElem = windowTabAll[i];
			windowTabElemLocal = windowTabElem.attr('window-tab-local');
			if (_is.exists(windowTabCurrentLocal)) {
				if (windowTabElemLocal == windowTabCurrentLocal) {
					var windowTabCurrent = windowTabElem;
				}
			}else {
				if (_array.exists(windowTabElem.attr('window-tab-active'), ['true'])) {
					var windowTabCurrent = windowTabElem;
				}
			}
		}
		return _selector.cache.get(windowTabCurrent, 'button', function (returnObj) {
			var windowButtonCurrent = returnObj[0];
			callback(windowTabCurrent, windowButtonCurrent);
			return windowTabCurrent;
		});
	},
	close: function (tab, callback) {
		var tab = _is.array(tab) ? tab : {},
			callback = _is.function(callback) ? callback : function () {};
		var windowConfig = {};
		if (_session.exists('client_window_config')) {
			var windowConfig = _session.get('client_window_config');
		}
		windowCurrentLocal = _is.exists(windowConfig['living']) ? windowConfig['living'] : null;
		var windowTabElem = tab;
		windowTabLocal = windowTabElem.attr('window-tab-local');
		if (windowCurrentLocal == windowTabLocal) {
			$("title").text('');
			windowConfig['living'] = null;
			_session.set('client_window_config', windowConfig);
		}
		windowTabElem.fadeOut(function () {
			windowTabElem.remove();
		});
		var tabButtonAll = _g.window.button.list();
		for (var i in tabButtonAll) {
			var tabButtonElem = tabButtonAll[i];
			tabButtonElemLocal = tabButtonElem.attr('window-button-local');
			if (tabButtonElemLocal == windowTabLocal) {
				_g.window.button.remove(tabButtonElem);
			}
		}
		callback(true);
		return true;
	},
	exists: function (object, callback) {
		var object = _is.array(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};
		var windowLocal = _is.string(object['local']) ? object['local'] : null;
		//.
		if (!_is.exists(windowLocal)) {
			callback(false);
			return false;
		}
		var page = $("#g-page"),
			main = page.children("#g-main");
		var windowTabAll = main.children("[window-tab-local]"),
			windowTabElem = main.children("[window-tab-local='"+windowLocal+"']");
		if (_selector.count(windowTabElem) === 0) {
			callback(false, null, 0);
			return false;
		}else {
			callback(true, windowTabElem, _selector.count(windowTabElem));
			return true;
		}
	},
	switch: function (windowTabElem, callback) {
		var windowTabElem = _is.selector(windowTabElem) ? windowTabElem : {},
			callback = _is.function(callback) ? callback : function () {};
		if (!_is.selector(windowTabElem)) {
			callback(false);
			return false;
		}
		return _g.window.button.tab(windowTabElem, function (windowButtonElem) {
			windowButtonElem.click();
			callback(windowTabElem);
			return true;
		});
	},
	add: function (object, callback) {
		var object = _is.array(object) ? object : {},
			callback = _is.function(callback) ? callback : function () {};
		var windowKey = _string.random(10),
			windowReplace = _is.bool(object['replace']) ? object['replace'] : false,
			windowDocument = _is.array(object['document']) ? object['document'] : {},
			windowClass = _is.exists(object['classname']) ? object['classname'] : null,
			windowLocal = _is.exists(object['local']) ? object['local'] : null,
			windowUrl = _is.exists(object['url']) ? object['url'] : null,
			windowTitle = _is.exists(object['title']) ? object['title'] : null,
			windowDisabled = _is.exists(object['disabled ']) ? object['disabled'] : false,
			windowBackground = _is.exists(object['background']) ? object['background'] : false,
			windowContent = _is.exists(object['content']) ? object['content'] : null,
			windowInclude = _is.array(object['include']) ? object['include'] : {},
			windowCode = "<div class='window' window-tab-key='"+windowKey+"'></div>";
		//. setup
		if (!_is.exists(windowLocal, windowTitle)) {
			callback(false);
			return false;
		}
		var html = $("html"),
			title = $("title"),
			page = $("#g-page"),
			main = page.children("#g-main");
		main.append(windowCode);
		var windowTabAll = main.children("[window-tab-local]"),
			windowTabElem = main.children("[window-tab-key='"+windowKey+"']");
		var fnAddWindowTab = function () {
			windowTabElem.hide().attr('window-tab-local', windowLocal).attr('window-tab-url', windowUrl).attr('window-tab-title', windowTitle).attr('window-tab-disabled', windowDisabled).attr('window-tab-document', _json.encode(windowDocument));
			if (_is.exists(windowClass)) {
				windowTabElem.addClass(windowClass);
			}
			if (!windowBackground) {
				windowTabAll.fadeOut(750);
			}
			if (new RegExp(<?php print $_parameter->get('regex_url_giccos_domain'); ?>).test(windowContent)) {
				//.
			}else {
				windowTabElem.html(windowContent);
			}
			if (_is.array(windowInclude['js']) && _array.count(windowInclude['js']) > 0) {
				loopIncludeJs: for (var jsId in windowInclude['js']) {
					var includeJsObj = windowInclude['js'][jsId],
						jsSourceContent = _is.string(includeJsObj['content']) ? includeJsObj['content'] : (_is.string(includeJsObj['src']) ? includeJsObj['src'] : null),
						jsSourceCache = _is.bool(includeJsObj['cache']) ? includeJsObj['cache'] : true;
					if (_is.exists(jsSourceContent)) {
						_source.add({'type': 'js', 'content': jsSourceContent, 'cache': jsSourceCache});
					}
				}
			}
			if (_is.array(windowInclude['css']) && _array.count(windowInclude['css']) > 0) {
				loopIncludeCss: for (var cssId in windowInclude['css']) {
					var includeCssObj = windowInclude['css'][cssId],
						cssSourceContent = _is.string(includeCssObj['content']) ? includeCssObj['content'] : (_is.string(includeCssObj['src']) ? includeCssObj['src'] : null);
					if (_is.exists(cssSourceContent)) {
						_source.add({'type': 'css', 'content': cssSourceContent});
					}
				}
			}
			windowOldTitle = title.text();
			windowOldUrl = (window.location.protocol + '//' + window.location.host + window.location.pathname);
			history.pushState({}, windowTitle, windowUrl);
			if (windowBackground) {
				history.replaceState({}, windowOldTitle, windowOldUrl);
			}
			return _g.window.button.add({
				local: windowLocal,
				title: windowTitle,
				disabled: windowDisabled
			}, function (tabButton) {
				if (!windowBackground) {
					tabButton.click();
				}
				windowTabElem.removeAttr('window-key');
				_ajaxify.each();
				callback(windowTabElem, tabButton);
				return windowTabElem;
			});
		};
		_window.exists({'local': windowLocal}, function (isExists, windowTabElem) {
			if (isExists && windowReplace) {
				_window.close(windowTabElem, function (isDeleted) {
					if (!isDeleted) {
						callback(false);
						return false;
					}
					fnAddWindowTab();
				});
			}else if (isExists && !windowReplace) {
				callback(false);
				return false;
			}else {
				fnAddWindowTab();
			}
		});
	},
	append: function (object, callback) {
		return _g.window.add(object, callback);
	},
	new: function (object, callback) {
		return _g.window.add(object, callback);
	},
	each: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var main = $("#g-main"),
			windowTab = main.children("[window-tab-local]"),
			object = {};
		windowTab.each(function () {
			var windowTabElem = $(this);
			var windowObj = {};
			windowObj['local'] = windowTabElem.attr('window-tab-local') ? windowTabElem.attr('window-tab-local') : null;
			windowObj['title'] = windowTabElem.attr('window-tab-title') ? windowTabElem.attr('window-tab-title') : null;
			windowObj['disabled'] = windowTabElem.attr('window-tab-disabled') ? windowTabElem.attr('window-tab-disabled') : false;
			if (_is.exists(windowObj, windowObj['local'])) {
				object[windowObj['local']] = windowObj;
			}
		});
		for (var local in object) {
			_g.window.button.add(object[local]);
		}
		var windowConfig = {};
		if (_session.exists('client_window_config')) {
			var windowConfig = _session.get('client_window_config');
		}
		windowConfig['living'] = _is.exists(windowConfig['living']) ? windowConfig['living'] : null;
		if (!_is.exists(windowConfig['living'])) {
			_g.window.button.list(function (buttonListSelector) {
				if (_is.selector(buttonListSelector[0])) (buttonListSelector[0]).click();
			});
		}
	},
	list: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		var listObj = {},
			windowTabAll = $("[window-tab-local]");
		windowTabAll.each(function () {
			var windowTabElem = $(this);
			listObj[_array.count(listObj)] = windowTabElem;
		});
		callback(listObj);
		return listObj;
	},
	autoload: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		_g.window.ready(function (isEnabled) {
			console.log('window - enable: ' + isEnabled);
			if (isEnabled) {
				setTimeout(function () {
					_g.window.each();
				}, 100);
				callback();
			}
		});
	}
};
var _window = _g.window;
_window.autoload();
_g.main = {
	resize: function () {
		var page = $("#g-page"),
			navbar = page.children("#g-navbar"),
			main = page.children("#g-main"),
			sidebar = page.children("#g-sidebar");
		var fnTemplateResize = function () {
			main.css({
				// 'width': ($(window).width() - 330 > 900 ? $(window).width() - 330 : 900) + 'px'
				'width': (($(window).width() > 1000 ? $(window).width() : 1000) - 330) + 'px'
			}).css({
				'margin-left': (($(window).width() - sidebar.width() - main.width()) / 2) + 'px',
				'margin-right': (($(window).width() - sidebar.width() - main.width()) / 2) + 'px'
			});
			navbar.children(".content").css({
				'margin-left': (main.css('margin-left')),
				'margin-right': (main.css('margin-right')),
				'width': (main.css('width'))
			});
			/*
			sidebar.css({
				'width': ($(window).width() / 10 * 2 > 230 ? 230 : ($(window).width() / 10 * 2 < 130 ? 130 : $(window).width() / 10 * 2)) + 'px'
			});
			*/
		};
		$(window).bind('resize', fnTemplateResize, 500);
		$(window).bind('resize', fnTemplateResize, 1000);
		$(document).ready(function () {
			fnTemplateResize();
			for (i = 1; i <= 10; i++) {
				setTimeout(fnTemplateResize, i * 100);
			}
		});
	},
	autoload: function (callback) {
		var callback = _is.function(callback) ? callback : function () {};
		$(document).ready(function() {
			_g.main.resize();
			callback();
		});
	}
};
var _main = _g.main;
_main.autoload();