# Video Player v7
[back](./index.html)

## Placeholder Element 

A custom placeholder element that represents the video is drawn into the page, and immediately converted into a video-js tag and decorated/initialized into a player. Autoplay success is improved by setting muted to true, but not guaranteed.

_This approach suffers from the started-and-then-stopped problem on ios_

<section class="video-play7r-example">
<div class="video-play7r js-video-play7r"
  data-defer="false"
  data-autoplay="true"
  data-video-id="6320977613112"
  data-asset-id="80972"
  data-asset-title="Yellowjackets Season 2 Official Trailer"
  data-asset-type="trl"
  data-asset-creation-date="2023-02-22"
>
  <img class="video-play7r__poster" src="https://www.sho.com/assets/images/video/player/FPO/yellowjackets-bc-poster.jpg" />
</div>
</section>



<style>
video-js.video-js.vjs-fluid:not(.vjs-audio-only-mode) {
  padding-top: 56.25%;
}
</style>
