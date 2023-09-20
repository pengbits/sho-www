---
name: Video Player v7 - placeholder defer
pageTracking: "sho:styleguide:video:series:yellowjackets:trl:yellowjackets season 2 official trailer"
---

# Video Player v7
[back](./index.html)

## Placeholder Element with Defer

A custom placeholder element that represents the video is drawn into the page. On click, it is converted into a video-js tag, the brightcove js is drawn into the page and it is decorated/initialized into a player

by loading a muted player and then unmuting on success this offers a pretty seamless playback on ios (no true autoplay though)

<section class="video-play7r-example">
<div class="video-play7r js-video-play7r"
  data-defer="true"
  data-autoplay="true"
  data-video-id="6320977613112"
  data-asset-id="80972"
  data-asset-title="Yellowjackets Season 2 Official Trailer"
  data-asset-type="trl"
  data-asset-creation-date="2023-02-22"
>
  <img class="video-play7r__poster" src="https://www.sho.com/assets/images/video/play7r/ui/video-poster-clear_400x225.png"
    style="background-image:url(https://www.sho.com/site/image-bin/images/1034344_2_0/1034344_2_0_trl01_1280x640.jpg)" 
  />
  <div class="video-play7r__big-play-button" type="button" title="Play Video">
</div>
</section>

```
<div class="video-play7r js-video-play7r"
  data-defer="true"
  data-autoplay="true"
  data-video-id="6320977613112"
  data-asset-id="80972"
  data-asset-title="Yellowjackets Season 2 Official Trailer"
  data-asset-type="trl"
  data-asset-creation-date="2023-02-22"
>
  <img class="video-play7r__poster" src="https://www.sho.com/assets/images/video/play7r/ui/video-poster-clear_400x225.png"
    style="background-image:url(https://www.sho.com/site/image-bin/images/1034344_2_0/1034344_2_0_trl01_1280x640.jpg)" 
  />
  <div class="video-play7r__big-play-button" type="button" title="Play Video">
  </div>
</div>
```

<style>
.video-play7r-example {
  position:relative /* in sho.com context video-player__inner provides a relative context for absoluted inner content ie errors, age-gate*/
}

video-js.video-js.vjs-fluid:not(.vjs-audio-only-mode) {
  padding-top: 56.25%;
}
</style>
