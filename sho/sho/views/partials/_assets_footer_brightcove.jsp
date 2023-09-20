{{!-- 
  _assets_footer_brightcove.jsp
  extracted from _assets_footer in order to make brightcove account and player ids customizable at the page-level 
  (initially for shoplace, which makes uses of both shoplace and sho.com brightcove players), and expanded in order to load the brightcove library asyncronously.
  
  the javascript below is responsible for firing a public event when the brightcove library has loaded,
  listening for this event is a requirement for any components that want to make use of the bc/videojs apis. (ie video-player, background-video components).
  technically, the event signifies not just the bc library, but the ima3 (preroll) plugin's readiness, but we have bundled them together for convenience.

  we also remove the autoplay attribute from the native video markup before doing anything else, if we deem the user device to be an ipad. 
  fyi a simple check against /iPad/ won't work in ios13+, due to changes in the user-agent string returned.

  consider expanding this to safari on desktop, since it suffers the same immediately-paused-player problem stemming from safari's supression of autoplay,
  assuming doing so doesn't somehow break preroll.

  UPDATE
  this stopped working with the port to webpack perhaps because due to some micro timing change, the js startup code was listening for the bc ready event after it had fired
  fixed by adding a safeguard where we set a flag after first time bc ready is fired, so js code late to the party can still interrogate the flag and init the player components.
  while it's not neccessarily related, also took the opportuntity to enforce unique player id attrs are set in dom and therefor in js layer

  TODO
  ideally we would not even draw the brightcove script tag more than once, which is an argument for moving even that request into the same kind of dynamic dom append strategy as the ima add-on...
--}}  
<script type="text/javascript">
  if(navigator.userAgent.match(/iPad/) || (navigator.platform === 'MacIntel' && navigator.maxTouchPoints > 1)){
    var els = document.getElementsByClassName('video-js'); // can't use id attribute as its no longer static, plus there might be more than one player in the page
    [].forEach.call(els, function(el){ el.removeAttribute('autoplay') })
  }
</script>
<script id="brightcove-lib-js" onload="onBrightcoveScriptReady()" src="//players.brightcove.net/63128/NzCF8EByd_default/index.min.js" async></script>
<script type="text/javascript">
  window.onBrightcoveScriptReady = function () {
    if(window.brightcove_loaded) return

    window.brightcove_loaded = true
    var event = new Event('brightcove:script-ready')
    event.initEvent('brightcove:script-ready', true, true);

    var bclib = document.getElementById('brightcove-lib-js'),
    js        = document.createElement('script');
    js.id     = 'brightcove-ima-js';
    js.src    = "//players.brightcove.net/videojs-ima3/2/videojs.ima3.min.js";
    js.onload = function(){
      console.log('|assets_footer| brightcove lib + ima3 plugin ready')
      document.dispatchEvent(event)
    };
    bclib.parentNode.insertBefore(js, bclib);
  }
</script>
