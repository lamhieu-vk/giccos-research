/*
	cache: { // session
		push: function (key, data, timeout, cb) {
			key = _is.string(key) ? md5(key) : null;
			timenow = Math.floor(Date.now() / 1000);
			timeout = _is.number(timeout) ? timeout : (60 * 5) * 1000;
			data = _is.exists(data) ? data : null;
			var cb = _is.function(cb) ? cb : function () {};
			if (!_is.exists(key)) {
				cb(false);
				return false;
			}else {
				var ajaxRequestCached = {};
				if (_session.exists('client_ajaxrequest_sessiond')) {
					var ajaxRequestCached = _is.array(_session.get('client_ajaxrequest_sessiond')) ? _session.get('client_ajaxrequest_sessiond') : {};
				}
				ajaxRequestCached[key] = {timeout: (timenow + timeout), data: data};
				_session.set('client_ajaxrequest_sessiond', ajaxRequestCached);
				cb(true);
				return true;
			}
		},
		get: function (key, cb) {
			key = _is.string(key) ? md5(key) : null;
			var cb = _is.function(cb) ? cb : function () {};
			if (!_is.exists(key)) {
				cb(false);
				return false;
			}else {
				var ajaxRequestCached = {};
				if (_session.exists('client_ajaxrequest_sessiond')) {
					var ajaxRequestCached = _is.array(_session.get('client_ajaxrequest_sessiond')) ? _session.get('client_ajaxrequest_sessiond') : {};
				}
				if (!_is.exists(ajaxRequestCached, ajaxRequestCached[key])) {
					cb(false);
					return false;
				}else {
					cb(ajaxRequestCached[key]['data']);
					return ajaxRequestCached[key]['data'];
				}
			}
		},
		exists: function (key, cb) {
			key = _is.string(key) ? md5(key) : null;
			var cb = _is.function(cb) ? cb : function () {};
			if (!_is.exists(key)) {
				cb(false);
				return false;
			}else {
				var ajaxRequestCached = {};
				if (_session.exists('client_ajaxrequest_sessiond')) {
					var ajaxRequestCached = _is.array(_session.get('client_ajaxrequest_sessiond')) ? _session.get('client_ajaxrequest_sessiond') : {};
				}
				if (!_is.exists(ajaxRequestCached, ajaxRequestCached[key])) {
					cb(false);
					return false;
				}else {
					cb(true);
					return true;
				}
			}
		},
		clean: function (cb) {
			timenow = Math.floor(Date.now() / 1000);
			var cb = _is.function(cb) ? cb : function () {};
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
			cb(true);
			return true;
		}
	},
	*/