{{!-- 
  /affiliate
  Page for the Subscription Marketing Team's Affiliate Marketing Program
--}}  
{{< layouts/default }}
  {{$classnames}}affiliate{{/classnames}}

  {{$meta}}
    <title>Affiliate Program | SHOWTIME</title>
    <meta property="og:title" content="Affiliate Program | SHOWTIME" />
    <meta name="description" content="Partner with SHOWTIME and get paid a commission with each new subscriber that comes from your platform. Your platform attracts users that value content. SHOWTIME is a commercial-free, award-winning streaming service featuring original series, can't-miss movies, groundbreaking documentaries, hard-hitting sports, and much more. Apply now to join its Affiliate Marketing Partner program." />
    <meta property="og:description" content="Partner with SHOWTIME and get paid a commission with each new subscriber that comes from your platform. Your platform attracts users that value content. SHOWTIME is a commercial-free, award-winning streaming service featuring original series, can't-miss movies, groundbreaking documentaries, hard-hitting sports, and much more. Apply now to join its Affiliate Marketing Partner program." />
    <meta name="page-tracking" content="sho:marketing:info:affiliate program" />
    <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
    <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
  {{/meta}}

  {{$nav}}{{/nav}}{{!-- null out the primary navigation --}}

  {{$content}}
  <section class="affiliate__top-banner">
    <img class="affiliate__top-banner__logo" src="https://www.sho.com/assets/images/stream-showtime/Showtime_logo.svg" />
  </section>
  <div class="affiliate--inner-content section--inner">
    <section class="affiliate__hero hero  section--inner">
      <h1 class="affiliate__hero__header">AFFILIATE MARKETING <br/>PROGRAM</h1>
      <h3 class="affiliate__hero__sub-header">Partner with Paramount+ to sell SHOWTIME and generate revenue from each subscription that comes from your platform.</h3>
      <p class="affiliate__hero__copy">SHOWTIME can now be purchased with Paramount+ and is eligible within the Paramount+ Affiliate Program. Please consider promoting Paramount+ and SHOWTIME via the Paramount+ Affiliate Program, which can also be found on the Impact Radius platform.</p>
      <p class="affiliate__hero__copy">Click the button below to visit the Paramount+ Affiliate Program page or email <a class="affiliate__hero__link" href="mailto:affiliates-cbsi@cbsinteractive.com">affiliates-cbsi@cbsinteractive.com</a> for more information.</p>
     
      <div class="affiliate__hero__cta">
        <a target="_blank" rel="noopener noreferrer"  
          href="https://www.paramountplus.com/affiliate-faq" data-track data-context="hero" data-label="apply"
          class="affiliate__hero__cta-button">Paramount+ Affiliate Program</a>
      </div>
    </section>
    {{#page}}
    {{#videoTile}}
      <section class="affiliate__video-section section--inner">
        <div class="video-player-simple js-video-player-simple">
          <div class="video-player-simple__inner">
            <video
              id="video-player-{{vendorId}}"
              class="video-player-simple__embed video-js"
              style="width:100%; height:100%;"            
              data-account="63128"
              data-asset-id="{{videoId}}"
              data-asset-title="{{title}}"
              data-player-name="sho.com affiliate"
              data-player="NzCF8EByd"
              data-video-id="{{vendorId}}"
              data-embed="default"
              data-age-gate="{{videoTile.ageGate}}"
              data-full-episode="{{videoTile.isFullEpisode}}"
              controls
              muted="false"
              poster="{{imageUrl}}">
            </video> 
          </div>
        </div>
      </section>
    {{/videoTile}}
    {{/page}}
  </div>
  <section class="stream-showtime__footer">
    <div class="section--inner stream-showtime__legal">
      <div class="stream-showtime__footer-links" data-context="footer" >
        <a class="stream-showtime__footer-links__main" href="https://www.showtime.com/?i_cid=int-default-1010" data-track data-label="showtime.com">SHOWTIME.com</a>
        <a class="stream-showtime__footer-links__main" href="/?i_cid=int-default-14592" data-track data-label="sho.com">SHO.com</a>
      </div>
      <div class="stream-showtime__footer-links" data-context="footer">
        <a class="stream-showtime__footer-links__alt" href="https://www.viacomcbsprivacy.com/policy" data-track data-label="privacy policy">Privacy Policy</a>|
        <a class="stream-showtime__footer-links__alt" href="/about/terms" data-track data-label="terms of use"> Terms of Use</a>|
        <a class="stream-showtime__footer-links__alt" href="/about/closed-captioning" data-track data-label="closed captioning"> Closed Captioning</a>|
        <a class="stream-showtime__footer-links__alt" href="https://privacy.paramount.com/en/policy#additional-information-us-states" data-track data-label="california notice"> California Notice</a>
        <br/>
        <a class="stream-showtime__footer-links__alt ot-sdk-show-settings" style="cursor: pointer;" data-track data-label="CA Do Not Sell My Info">Do Not Sell My Personal Information</a>
      </div>
      <p>© 2023 Showtime Networks Inc., a Paramount Global Company. SHOWTIME and related marks are trademarks of Showtime Networks Inc. Individual programs, devices and marks are the property of their respective owners. All Rights Reserved. SHOWTIME is accessible for viewing solely in the United States and its territories and possessions. Minimum high-speed broadband connection is required for viewing.</p>
    </div>
  </section>
  {{/content}}
  {{$brightcove_js}}
    {{> /partials/_assets_footer_brightcove }}
  {{/brightcove_js}}

{{/ layouts/default}}
