
# Video Player v7
[back](./index.html)

## Video Player CTAs and Modal

<div class="video-cta-example">
<button class="button--secondary button--video js-video-play7r-cta"
  data-target=".video-play7r-sandbox" 
  data-video-id="6320977613112"
  data-asset-id="80972"
  data-asset-title="Yellowjackets Season 2 Official Trailer"
  data-asset-type="trl"
  data-asset-creation-date="2023-02-22"
  data-player-name="sho.com v7 dev and qa"
>Watch S2 Trailer</button>

<button class="button--secondary button--video js-video-play7r-cta"
  data-target=".video-play7r-sandbox" 
  data-video-id="6321516923112"
  data-asset-id="80972"
  data-asset-title="Yellowjackets Season 2 Official Trailer"
  data-asset-type="trl"
  data-asset-creation-date="2023-02-22"
  data-player-name="sho.com v7 dev and qa"
>Watch S1 Recap</button>

<button class="button--secondary button--video js-video-play7r-cta" data-mode="modal" 
  data-video-id="6324488853112"
  data-asset-id="80972"
  data-asset-title="Waco: The Aftermath Official Trailer"
  data-asset-type="trl"
  data-asset-creation-date="2023-02-22"
  data-poster="https://www.sho.com/site/image-bin/images/1042640_1_0/1042640_1_0_trl01_1280x640.jpg"
  data-player-name="sho.com v7 dev and qa"
>Watch in Modal</button><!-- 1280x720 poster has right aspect -->

<button class="button--outline-white js-video-play7r-cta" data-mode="destroy"
>Remove Player</button>
</div>

<a class="refresh-hero__cta  button--primary button--link" href="#/stream/series/1033985/int-yourhonor-20754" data-track="" data-label="stream link:Stream Now" data-location="cta">Stream Now</a>
</div>


## Configuration
There are two data attributes on the call-to-action that can configure the playback:


```
<button class="button--secondary button--video js-video-play7r-cta"
  data-el=".video-play7r-sandbox" 
  data-video-id="6321516923112"
>Watch S1 Recap</button>
```

- data-video-id is the bc id of the video
- data-el is a selector for where to draw the player


<div class="video-play7r-sandbox"></div>

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