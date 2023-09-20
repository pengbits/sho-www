{{#primaryVideo}}
<div class="section js-video-player {{$video_player_classname}}{{/video_player_classname}}">
  <div class="video-player__video">
    <div class="video-player__video__inner">
      <video
        id="video-player"  
        class="video-playr__video__embed video-js" 
        style="position:absolute; top:0; bottom:0; right:0; left:0; width:100%; height:100%;" 
        data-player-name="{{$player_name}}sho.com{{/player_name}}"
        data-account="{{$bc_account}}63128{{/bc_account}}"
        data-player="{{$bc_player}}NzCF8EByd{{/bc_player}}" 
        data-asset-id="{{id}}"
        data-asset-title="{{title}}"
        data-asset-type="{{typeCode}}"
        data-asset-creation-date="{{creationDate}}"
        data-embed="default" 
        data-video-id="{{vendorId}}"
        data-age-gate="{{ageGate}}"
        data-embed="default" 
        {{#image}}poster="{{fullPath}}"{{/image}}
        controls>
      </video> 
      <div class="video-playr__error-message"></div>
      <div class="video-playr__age-gate-container"></div>
    </div>
  </div>
  <h3 class="video-player__title">{{{title}}}</h3>
  <p class="video-player__desc">{{{description}}}</p>
</div>
{{/primaryVideo}}