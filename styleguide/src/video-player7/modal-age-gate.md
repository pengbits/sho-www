
# Video Player v7
[back](./index.html)

## Modal Playback with Age-Gate

<div class="video-cta-example">
<button class="button--secondary button--video js-video-play7r-cta"
  data-age-gate="18" 
  data-mode="modal"
  data-poster="https://www.sho.com/site/image-bin/images/1034344_2_0/1034344_2_0_trl01_1280x640.jpg"
  data-video-id="6320977613112"
  data-asset-id="80972"
  data-asset-title="Yellowjackets Season 2 Official Trailer"
  data-asset-type="trl"
  data-asset-creation-date="2023-02-22"
  data-player-name="sho.com v7 dev and qa"
>Watch S2 Trailer</button><!-- 1280x720 poster has right aspect -->
</div>

## Configuration
There are several data attributes on the call-to-action that can configure the playback:
- data-video-id is the bc id of the video
- data-modal is the trigger for the modal behavior
- data-age-gate is the age in years required to play the video
- data-poster is the url of the placeholder image (1280x720)

```
<button class="button--secondary button--video js-video-play7r-cta"
  data-age-gate="18" 
  data-mode="modal"
  data-poster="https://www.sho.com/site/image-bin/images/1034344_2_0/1034344_2_0_trl01_1280x640.jpg"
  data-video-id="6320977613112"
>Watch S2 Trailer</button>
```



<style type="text/css">
.video-cta-example {
  margin-bottom:25px
}

.button--secondary, .button--outline-white {
  margin-bottom:10px;
}
</style>