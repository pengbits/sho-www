{{!-- 
  ../shoplace/_assets_footer_brightcove.jsp
  extracted from _assets_footer in order to make brightcove account and player ids
  customizable at the page-level. (for shoplace, which makes uses of both shoplace and sho.com brightcove players) 
--}}  
<script type="text/javascript">
  if (navigator.userAgent.match(/iPad/) || (navigator.platform === 'MacIntel' && navigator.maxTouchPoints > 1)) {
    var el = document.getElementById('video-player')
    el && el.removeAttribute('autoplay')
  }
</script>
<script id="brightcove-lib-js" onload="onBrightcoveScriptReady()" src="//players.brightcove.net/63128/NzCF8EByd_default/index.min.js" async></script>
<script type="text/javascript">
  window.onBrightcoveScriptReady = function () {

    var event = new Event('brightcove:script-ready')
    event.initEvent('brightcove:script-ready', true, true);

    var bclib = document.getElementById('brightcove-lib-js'),
      js = document.createElement('script');
    js.id = 'brightcove-ima-js';
    js.src = "//players.brightcove.net/videojs-ima3/2/videojs.ima3.min.js";
    js.onload = function () {
      console.log('|assets_footer| brightcove lib + ima3 plugin ready')
      document.dispatchEvent(event)
    };
    bclib.parentNode.insertBefore(js, bclib);
  }
</script>