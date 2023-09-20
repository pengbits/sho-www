
# Video Player v7
[back](./index.html)

## Modal with Fullscreen Request Mobile

This version renders a modal and requests fullscreen playback immediately on mobile. (Must test on ios simulator or real device).

<div class="video-cta-example">
<button class="button--secondary button--video js-video-play7r-cta" 
  data-mode="modal" 
  data-fullscreen="true"
  data-asset-id="81437"
  data-video-id="6326264648112"
  data-asset-title="The Fabelmans Trailer"
  data-asset-type="trl"
  data-asset-creation-date="2023-02-22"
  data-poster="https://www.sho.com/site/image-bin/images/1042640_1_0/1042640_1_0_trl01_1280x640.jpg"
  data-player-name="sho.com v7 dev and qa"
>Watch in Modal</button><!-- 1280x720 poster has right aspect -->

<a class="refresh-hero__cta  button--primary button--link" href="#/stream/series/1033985/int-yourhonor-20754" data-track="" data-label="stream link:Stream Now" data-location="cta">Stream Now</a>
</div>

## Configuration

To attempt fullscreen as soon as video starts, fullscreen=true to data attributes

```
<button class="button--secondary button--video js-video-play7r-cta"
  data-mode="modal" 
  data-fullscreen="true"
  data-asset-id="81437"
  data-video-id="6326264648112"
  data-asset-title="The Fabelmans Trailer"
>Watch S1 Recap</button>
```




<style type="text/css">
.video-play7r-sandbox {
  outline: purple solid 1px;
  min-height:50px;
}
.video-cta-example {
  margin-bottom:25px
}

.button--secondary, .button--outline-white {
  margin-bottom:10px;
}
</style>