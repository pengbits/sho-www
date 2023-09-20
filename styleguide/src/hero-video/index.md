---
name: Hero Video
collection: components
---

# Hero Video
Primary Hero promotion that converts a video link CTA into an in-page video promo card, which plays the video in-page once initiated. This is only visible below the 'large' breakpoint. Larger views will display the same UI as always for now; all information that follows only applies to mobile/tablet/until-large breakpoint views.

#### Design alterations to existing hero component
<p>The hero video component, when visible, hides the original hero image background, and renders a video promo card (landscape, with CTA text and video icon), using the original CTA text and link from the hero promotion coming from Paige. The other text elements (topline, headline, subtitle) from the Paige hero promotion are pushed below the video promo.</p>

<p>If the user plays the video to its end, the video promo card is once again shown in place of the video player, resetting the UI. At this time, there are no player overlays i.e. order SHO calls-to-action. Also, the age gate is not fully implemented.</p>

#### Problems/workarounds
<p>Having different components appear depending on breakpoint results in some possibly confusing behavior if a desktop user shrinks or expands the browser window while the video is playing back. Since there is no large-breakpoint UI for this in-page video promotion, if the user expands from a small breakpoint to a large breakpoint, the UI simply reverts to the large desktop view, hiding the video player. Consideration has been implemented so that if the video is playing back at that time, the video will pause when transitioning back to the large view (otherwise, it would be unable to pause, without shrinking the window back down.) This includes a user transitioning from portrait to landscape view on certain tablets. This is admittedly odd, but is seen at this time as an edge case, considering how low tablet traffic is, how mobile traffic is so dominant. The odds of a user encountering this small-to-large view transition on desktop during video playback seem ignorable for now.</p>

<p>A little more interesting is what may happen if a desktop user is viewing the in-page video (while necessarily having their browser narrow), and then that user clicks to go full screen. Consideration has been implemented here also, so that this should work as expected, with the video playing fullscreen, despite the browser expanding past the larger breakpoints while in fullscreen mode.</p>

#### Requirements for this implementation
<p>When the ctaLink in the primary hero Paige promotion is a video (Telly) ID, an additional videoTile object is passed to the page, which includes these properties needed to render the video and to implement the same Heartbeat video analytics as seen on regular video pages:</p>
  
- Brightcove (vendor) video asset ID
- Telly video asset title
- Telly video asset type

The smallImageUrl field value coming from the primary hero promotion in Paige is used for the video promo cover.

#### Other Considerations

 - The inclusion of the video in-page should not affect the page's SEO schema, intentionally, as this is not a promoted video's canonical home. 
 - Some context is lost by presenting the video outside of the full video player page (i.e. full description of video, related videos, etc.) But the hope is that enough context regarding what the video can be contained with the brief CTA text that is overlaid on the promo, and the series home page generally provides the rest of the context/navigation.

<style>
  p.hero__subtitle {
    margin-bottom: 0 !important; // override styleguide defaults
  }
</style>

<section class="hero hero--no-description hero--promo-video" data-context="hero">
  <a class="hero__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1034344_1_0/1034344_1_0_prm-keyartv2_640x360.jpg [--small] |  https://www.sho.com/site/image-bin/images/1034344_1_0/1034344_1_0_prm-keyartv2_1700x1063.jpg"></a>
  <div class="video-player js-video-player">
    <figure class="promo promo--video promo--cover">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1034344_1_0/1034344_1_0_prm-keyartv2_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">WATCH THE FIRST EPISODE FOR FREE</h3>
      </figcaption>
      <a class="promo__link" href="https://www.sho.com/video/76634/yellowjackets-series-premiere-tvma" data-no-redirect="true" data-track data-label="trailer video:Watch the first episode for free" data-location="cta"></a>
    </figure>
    <div class="video-player__video">
      <div class="video-player__video__inner">
        <video
          id="video-player"
          class="video-playr__video__embed video-js"
          style="position:absolute; top:0; bottom:0; right:0; left:0; width:100%; height:100%;"
          data-account="63128"
          data-asset-id="76634"
          data-player="NzCF8EByd"
          data-embed="default"
          data-video-id="6278938301001"
          data-full-episode="true"
          controls
          poster="https://www.sho.com/site/image-bin/images/1034344_1_0/1034344_1_0_prm-keyartv2_640x360.jpg">
        </video> 
        <div class="video-playr__error-message"></div>
        <div class="video-playr__age-gate-container"></div>
      </div>
    </div>
  </div>
  <div class="hero__inner">
    <div class="hero__body">
      <div class="hero__top-line">Season one now streaming</div>
      <h1 class="hero__headline">Yellowjackets</h1>
      <p class="hero__subtitle">Wildly talented high school girls' soccer players descend into savage clans after their plane crashes in the remote northern wilderness. Twenty-five years later, they discover that what began in the wild is far from over.</p>
      <a class="hero__cta" href="/video/76634/yellowjackets-series-premiere-tvma" data-track="" data-label="trailer video:Watch the first episode for free" data-location="cta">Watch the first episode for free</a>
    </div>
  </div>
</section>

```html
<section class="hero hero--no-description hero--promo-video" data-context="hero">
  <a class="hero__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1034344_1_0/1034344_1_0_prm-keyartv2_640x360.jpg [--small] |  https://www.sho.com/site/image-bin/images/1034344_1_0/1034344_1_0_prm-keyartv2_1700x1063.jpg"></a>
  <div class="video-player js-video-player">
    <figure class="promo promo--video promo--cover">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1034344_1_0/1034344_1_0_prm-keyartv2_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">WATCH THE FIRST EPISODE FOR FREE</h3>
      </figcaption>
      <a class="promo__link" href="https://www.sho.com/video/76634/yellowjackets-series-premiere-tvma" data-no-redirect="true" data-track data-label="trailer video:Watch the first episode for free" data-location="cta"></a>
    </figure>
    <div class="video-player__video">
      <div class="video-player__video__inner">
        <video
          id="video-player"
          class="video-playr__video__embed video-js"
          style="position:absolute; top:0; bottom:0; right:0; left:0; width:100%; height:100%;"
          data-account="63128"
          data-asset-id="76634"
          data-player="NzCF8EByd"
          data-embed="default"
          data-video-id="6278938301001"
          data-age-gate="0"
          data-full-episode="true"
          controls
          poster="https://www.sho.com/site/image-bin/images/1034344_1_0/1034344_1_0_prm-keyartv2_640x360.jpg">
        </video> 
        <div class="video-playr__error-message"></div>
        <div class="video-playr__age-gate-container"></div>
      </div>
    </div>
  </div>
  <div class="hero__inner">
    <div class="hero__body">
      <div class="hero__top-line">Season one now streaming</div>
      <h1 class="hero__headline">Yellowjackets</h1>
      <p class="hero__subtitle">Wildly talented high school girls' soccer players descend into savage clans after their plane crashes in the remote northern wilderness. Twenty-five years later, they discover that what began in the wild is far from over.</p>
      <a class="hero__cta" href="/video/76634/yellowjackets-series-premiere-tvma" data-track="" data-label="trailer video:Watch the first episode for free" data-location="cta">Watch the first episode for free</a>
    </div>
  </div>
</section>
<script src="//players.brightcove.net/63128/NzCF8EByd_default/index.min.js"><script>
```

<script src="//players.brightcove.net/63128/NzCF8EByd_default/index.min.js"><script>