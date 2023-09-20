{{!-- add data-scroll-to-start="true" to outer element if not relying on optly for that behavior --}}
<div class="video-player-simple js-video-player-simple">
<div class="video-player-simple__inner">
  <video id="video-player-stream-showtime" 
    class="video-player-simple__embed video-js"  
    style="margin: 0 auto; width: 100%; height:100%;" 
    data-account="63128"
    data-asset-id="{{videoId}}"
    data-asset-title="{{title}}"
    data-asset-type="{{type}}"
    data-embed="default" 
    data-age-gate="0" 
    data-player-name="sho.com" 
    data-player="NzCF8EByd" 
    data-full-episode="{{isFullEpisode}}" 
    data-video-id="{{vendorId}}"
    data-should-mute="false" 
    controls 
    muted  
    loop 
    playsinline  
    poster="{{imageUrl}}"
  >
  </video>
</div>
</div>