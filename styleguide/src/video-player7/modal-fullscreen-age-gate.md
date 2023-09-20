
# Video Player v7
[back](./index.html)

## Modal Fullscreen with Age-Gate

<div class="video-cta-example">
<button class="button--secondary button--video js-video-play7r-cta"
  data-age-gate="18" 
  data-mode="modal"
  data-fullscreen="true"
  data-poster="https://www.sho.com/site/image-bin/images/1031103_1_3406304/1031103_1_3406304_ful02_1280x640.jpg"
  data-video-id="5715288914001"
  data-asset-id="59676"
  data-asset-title="The Affair Series Premiere TVMA"
  data-asset-type="ful"
  data-asset-creation-date="2018-01-04"
>Watch Series Premiere</button><!-- 1280x720 poster has right aspect -->
</div>

## Configuration
There are several data attributes on the call-to-action that can configure the playback:
- data-video-id is the bc id of the video
- data-modal is the trigger for the modal behavior
- data-fullscreen="true" is the option to attempt fullscreen when playback starts
- data-age-gate is the age in years required to play the video
- data-poster is the url of the placeholder image (1280x720)

```
<button class="button--secondary button--video js-video-play7r-cta"
  data-age-gate="18" 
  data-mode="modal"
  data-fullscreen="true"
  data-asset-title="The Affair Series Premiere TVMAr="
  data-asset-type="ful"
  data-asset-creation-date="2018-01-04"
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