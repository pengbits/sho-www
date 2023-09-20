
# Video Player v7
[back](./index.html)

## Modal (Fullscreen) with Background Video In Page

Debugging potential conflicts with the legacy background-video component

 <section class="refresh-hero " data-context="hero">
 <section class="section-header--hero">
  <h2 class="section-header--hero__inner"></h2>
</section>

<div class="refresh-hero__image">
  <video id="video-player-6321990144112" 
    class="video-background video-background--bcplayer js-video-background"
    style="position:absolute;" 
    data-account="63128" 
    data-player="NzCF8EByd" 
    data-embed="default" 
    data-video-id="6321990144112"
    data-age-gate="0" 
    data-full-episode="false" 
    controls="false" 
    loop 
    autoplay 
    muted 
    playsinline
    poster="https://www.sho.com/site/image-bin/images/1034344_2_0/1034344_2_0_01h_1920x1080.jpg">
  </video>
</div>

<div class="refresh-hero__inner">
<div class="refresh-hero__body__container"> 
<div class="refresh-hero__body"> 
  <div class="refresh-hero__attribution">Showtime Original</div>
  <div class="refresh-hero__headline__container">
    <img class="refresh-hero__headline__container__image" src="https://www.sho.com/assets/images/series/logos/1034344_200x200.png"  alt="Yellowjackets">
  </div>

  <div class="refresh-hero__descriptor">2021 &bull; 2 Seasons &bull; Drama</div>
</div>
</div>
</div>
</section>

<div class="video-cta-example">
<button class="button--secondary button--video js-video-play7r-cta" 
  data-mode="modal" 
  data-fullscreen="true"
  data-asset-id="81437"
  data-video-id="6326264648112"
  data-asset-title="The Fabelmans Trailer"
  data-asset-type="trl"
  data-asset-creation-date="2023-04-26"
  data-poster="https://www.sho.com/site/image-bin/images/0_0_3509456/0_0_3509456_01h_1280x640.jpg"
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
  data-video-id="6324488853112"
  data-asset-id="80972"
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