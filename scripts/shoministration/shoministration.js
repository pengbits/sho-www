/**
 * Preview Bookmarklet
 * <a href="javascript:(function(){if(window.shoministration!==undefined){shoministration();}else{document.body.appendChild(document.createElement('script')).src='http://localhost:8080/www/shoministration/shoministration.js?';}})();">ShoMinistration</a>
 *
 * Expected Format:
 * https://www.sho.com/?previewDate=201202061305
 * format: yyyyMMddHHmm
 */
(function(w){
	var env;// = "http://dev.sho.com/ROOT";
	var jqUrl = "/www/shoministration/lib/jquery/jquery-1.6.1.min.js";
	var jqUIUrl = "/www/shoministration/lib/jquery/plugins/jquery-ui.min.js";
	var jqThemeUrl = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/blitzer/jquery-ui.css";
	var dateTimePickUrl = "/www/shoministration/lib/jquery/plugins/jquery-ui-timepicker-addon.js";
	var sliderAccessUrl = "/www/shoministration/lib/jquery/plugins/jquery.sliderAccess.js";
	var containerId = "shoministrator-panel";


	function includeDependencies() {
		toast(
			'/www/shoministration/shoministration.css',
			absoluteURL(jqUrl),
			function(){}, // empty callback forces toast to load dependencies syncronously
			jqUIUrl,
			function(){},
			jqThemeUrl,
			function(){},
			absoluteURL(sliderAccessUrl),
			function(){},
			absoluteURL(dateTimePickUrl),
			function(){},
			absoluteURL(dateTimePickUrl),
			function(){},
			init
		);
	}

	function absoluteURL(frag) {
		return env + frag;
	}

	function bootstrap() {
		if ( typeof w.shoministration == 'undefined' ) {
			env = window.location.protocol + "//" + window.location.host;

			drawContainer();
			if ( typeof window.toast == 'undefined' ) {
				var done = false;
				var script = document.createElement("script");
				script.src = absoluteURL("/www/shoministration/lib/pyrsmk/toast-2.1.1.min.js");
				script.onload = script.onreadystatechange = function(){
					if (!done && (!this.readyState || this.readyState == "loaded" || this.readyState == "complete")) {
						done = true;
						includeDependencies();
					}
				};
				document.getElementsByTagName("head")[0].appendChild(script);
			} else {
				includeDependencies();
			}
		}
	}

	function drawContainer() {
		var div = document.createElement('div');
	    div.id = containerId;
	    if ( document.body.firstChild ) {
			document.body.insertBefore(div, document.body.firstChild);
		} else {
			document.body.appendChild(div);
		}
		div.style.zIndex = 99999;
		div.style.position = "absolute";
		div.style.top = "10px";
		div.style.left = "10px";
		div.innerHTML = "<img src='https://www.sho.com/assets/images/lib/spinners/disk_127EB7_16x16.gif' />";
	}

	function init() {
		(w.shoministration = function(){
			var container = $("#" + containerId);

			if ( typeof initd == 'undefined' ) {
				container.animate({width: 240, height: 120}, 'fast', function() {
					container.html([
						'<h1>ShoMinistration</h1>',
						'<span class="close">&times;</span>',
						'<p class="task-group">',
						'Timewarp: <input type="text" placeholder="Pick a date and time" id="timewarp-picker" autocomplete="off"/>',
						'</p>'
					].join(""));
					$("#timewarp-picker").datetimepicker({
						closeText: "Warp",
						addSliderAccess: true,
						sliderAccessArgs: {
							touchonly: true
						},
						onClose: function(dateText, inst){
							if (dateText != "") {
								// dateText: 02/10/2012 16:47
								var dt = dateText.split(" ");
								var d = dt[0].split("/");
								var f = d[2] + d[0] + d[1] + dt[1].split(":").join("");
								var href = window.location.href;
								ref = href.replace(/[?&]previewDate=[0-9]*/g, "");
								var m = ( ref.indexOf( "?" ) != -1 ) ? "&" : "?";
								ref += ( m  + "previewDate=" + f );
								window.location.href = ref;
							};
						}
					});
					container.find('.close').bind('click', function(event) {
						container.fadeOut('slow');

						event.preventDefault();
					});
				}).draggable();
				initd = true;
			} else container.fadeIn('slow');
		})();
	}

	bootstrap();
})(window);
