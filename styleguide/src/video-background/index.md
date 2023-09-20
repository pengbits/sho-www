---
name: Video Background
collection: components
---

#  Video Background

The video background is used as a sort of moving background image, underneath html content, ie in the Hero. This is a full brightcove video player, functionally equivalent to our default video experience, but with background video styling. We will need to find a way to hide the controls or configure brightcove to omit them. This is the approach we used for video backgrounds that ran in the old order page hero.

<section class="hero hero--stream-showtime" data-context="hero">
  <div class="hero__image">
    <img class="hero__logo" src="https://www.sho.com/assets/images/stream-showtime/Showtime_logo.svg" />
      <video
        id="video-player"
        class="video-background video-background--bcplayer js-video-background"
        style="position:absolute;"
        data-account="63128"
        data-player="NzCF8EByd"
        data-embed="default"
        data-video-id="6182276208001"
        data-age-gate="0"
        data-full-episode="false" 
        controls="false"
        loop
        autoplay
        muted
        playsinline
        poster="https://www.sho.com/site/image-bin/images/1032815_3_0/1032815_3_0_trl01_1280x640.jpg">
    </video>
  </div>
  <div class="hero__inner">
    <div class="hero__body">
      <h1 class="hero__headline js-format-symbols">STREAM THE CHI NOW</h1>
      <h3 class="hero__copy js-format-symbols">Start your 7-day free trial, then only $10.99/month. Cancel anytime. </h3>
      <a class="hero__cta" target="_blank" rel="noopener noreferrer" href="https://www.showtime.com/#signup?i_cid=int-default-14589" data-track data-context="hero" data-label="provider lead" data-provider-id="114"> Start Your Free Trial</a>
    </div>
  </div>
</section>    

<style type="text/css">
  .site-sidebar,
  .site-sidebar-toggle {
    display: none;
  }
  

  .site-main {
  }
  
  .site-content {
  }
</style>