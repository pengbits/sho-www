---
name: Video Player Simple
collection: components
---

# Video Player Simple
simple embed-style video player that supports 'scroll-to-start'. (the player starts when scrolled into frame, and stops when scrolled out of view).
```
<div class="video-player-simple js-video-player-simple" data-scroll-to-start="true">
<div class="video-player-simple__inner">
  <video
    id="video-player-6314738802112"
    class="video-player-simple__embed video-js"
    style="position:absolute; top:0; bottom:0; right:0; left:0; width:100%; height:100%;"
    data-account="63128"
    data-player="NzCF8EByd"
    data-embed="default"
    data-video-id="6314738802112"
    data-age-gate="0"
    data-full-episode="false"
    controls
    muted 
    playsinline 
    poster="https://www.sho.com/site/image-bin/images/3_2022_0/3_2022_0_pro04_1280x640.jpg">
  </video>
</div>
</div>  
```

<p class="spacer"></p>
<p class="spacer">blah blah </p>
<p class="spacer">blah blah blah</p>
<div class="video-player-simple js-video-player-simple" data-scroll-to-start="true">
  <div class="video-player-simple__inner">
    <video
      id="video-player-6314738802112"
      class="video-player-simple__embed video-js"
      style="position:absolute; top:0; bottom:0; right:0; left:0; width:100%; height:100%;"
      data-account="63128"
      data-player="NzCF8EByd"
      data-embed="default"
      data-video-id="6314738802112"
      data-age-gate="0"
      data-full-episode="false"
      controls
      muted 
      playsinline 
      poster="https://www.sho.com/site/image-bin/images/3_2022_0/3_2022_0_pro04_1280x640.jpg">
    </video>
  </div>
</div>  
<p class="spacer">blah blah blah</p>
<p class="spacer">blah blah </p>
<p class="spacer">blah blah blah</p>
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

<style type="text/css">
  .site-sidebar,
  .site-sidebar-toggle {
    display: none;
  }
  
  .simplified-global-navigation {
    position: absolute;
    top: 0;
    z-index: 9999;
  }
  
  .site-main {
    padding: 0;
  }
  
  .site-content {
    max-width: none;
  }
  .spacer {
    height:800px;
    background-color:#000;
  }
</style>