
// ------------------------------------------------------------------------
// ga base function

var _gaq = _gaq || [];

var _pzt =_pzt||{}; 
_pzt.siteid="5c082218cf08b1e31d7e6982b3606d07"; 
_pzt.events = [];

function ga_track_event(cate, action, label, value) {
	label = label || "";
	value = value || 0;
	_gaq.push(['_trackEvent', cate, action, label, value])
}

function ga_is_login() {
	return document.cookie.indexOf("ClubAuth") != -1;
}

function ga_mark_hj_login() {
	if (ga_is_login()) {
		_gaq.push(["t2._setCustomVar", 4, "visit_type", "1", 2]);
	} else {
		_gaq.push(["t2._setCustomVar", 4, "visit_type", "0", 2]);
	}
}

function ga_mark_site_login() {
	if (ga_is_login()) {
		_gaq.push(["_setCustomVar", 4, "visit_type", "1", 2]);
	} else {
		_gaq.push(["_setCustomVar", 4, "visit_type", "0", 2]);
	}
}

function ga_cookie_exist(name) {
	return ga_read_cookie(name) != null;
}

function ga_read_cookie(c) {
	for (var c = c + "=", d = document.cookie.split(";"), b = 0; d.length > b; b++) {
		for (var a = d[b];
		" " == a.charAt(0); ) a = a.substring(1, a.length);
		if (0 == a.indexOf(c)) return decodeURIComponent(a.substring(c.length, a.length))
	}
	return null
}

function ga_load_js(src) {
	var sc = document.createElement('script');
	sc.type = 'text/javascript';
	sc.async = true;
	sc.src = src; 
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(sc, s);
}

function ga_track(name, code, beforeSiteTrack, config) {

    _gaq.push(
	    ['_setAccount', code],
	    ['_addOrganic', 'baidu', 'word'],
	    ['_addOrganic', 'so.360.cn', 'q'],
	    ['_addOrganic', 'sogou', 'query'],
	    ['_addOrganic', 'soso', 'w'],
	    ['_addOrganic', 'gougou', 'search'],
	    ['_addOrganic', 'youdao', 'q']
    );

    if (beforeSiteTrack) {
        beforeSiteTrack();
    }

	ga_mark_site_login();
    
    var config = config || {allowHash: false};

	if (config.allowHash) {
		var url = location.pathname + location.search + location.hash;
		_gaq.push(['_trackPageview', url]);
	} else {
    	_gaq.push(['_trackPageview']);
	}

    if (/\.hujiang\.com$/i.test(location.hostname)) {
        _gaq.push(
	        ['t2._setAccount', 'UA-33308821-1'],
	        ['t2._addOrganic', 'baidu', 'word'],
	        ['t2._addOrganic', 'so.360.cn', 'q'],
	        ['t2._addOrganic', 'sogou', 'query'],
	        ['t2._addOrganic', 'soso', 'w'],
	        ['t2._addOrganic', 'gougou', 'search'],
	        ['t2._addOrganic', 'youdao', 'q'],
	        ['t2._setDomainName', '.hujiang.com'],
	        ['t2._addIgnoredRef', 'hujiang.com'],
            ['t2._addIgnoredRef', 'hjenglish.com'],
            ['t2._addIgnoredRef', 'yeshj.com']
        );
		ga_mark_hj_login();

		if (config.allowHash) {
			var url = location.pathname + location.search + location.hash;
			_gaq.push(['t2._trackPageview', url]);
		} else {
	    	_gaq.push(['t2._trackPageview']);
		}        
    } else {
        setTimeout(function () {
            var ref = document.referrer || "empty";
            var url = location.pathname + location.search;
            var e = document.createElement("iframe");
            e.src = "http://pass.hujiang.com/uc/hujiang_track.html?url=" + encodeURIComponent(url) + "&host=" + location.hostname + "&ref=" + encodeURIComponent(ref) + "&r=" + new Date().getTime();
            e.height = "0";
            e.width = "0";
            e.style.display = "none";
            e.style.visibility = "hidden";
            document.body.appendChild(e);
        }, 2000);
    }

    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = 'http://common.hjfile.cn/analytics/google/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
}

function ga_check_channel() {
    if (location.hostname.indexOf(".hujiang.com") != -1) {

        if (location.search.indexOf("sem_source=sem_baidu") != -1 || ga_read_cookie("channel_source") == "sem_baidu") {
            ga_load_js("http://common.hjfile.cn/analytics/channel/pz.js");
        }

		if (ga_cookie_exist("channel_source") ||
			location.search.indexOf("sem_source=") != -1 || 
			location.search.indexOf("pp_source=") != -1 ) {

			var common_host = "common.hjfile.cn";
			if (location.hostname.indexOf("dev.") != -1) {
				common_host = "dev.common.hjfile.cn";
			}
			ga_load_js("http://" + common_host + "/analytics/channel/channel.js");
		}
	}
}

ga_check_channel();

// ------------------------------------------------------------------------


//#begin
ga_track("other_pass_2012", "UA-27726167-3", function () {
	_gaq.push(['_setSiteSpeedSampleRate', 100]);
});
//#end

//#ga_js_load_finish#