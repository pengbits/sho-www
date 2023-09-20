
  {{!-- IF not order-showtime --}}
  {{!-- the properties in the footer can be overridden for desus_and_mero/hive, default case is just to draw data from Paige --}}
  {{$bonus_footer}}
    {{$device_logos_footer}}<!-- device logos footer -->{{/device_logos_footer}}
    <section class="stream-showtime__red-banner section--inner">
      {{$red_banner_sub_header}}{{/red_banner_sub_header}}
      <h1 class="stream-showtime__red-banner__header">{{$red_banner_headline}}{{page.footerBanner.title}}{{/red_banner_headline}}</h1>
      <h3 class="stream-showtime__red-banner__copy">{{$red_banner_copy}}{{page.footerBanner.subTitle}}{{/red_banner_copy}}</h3>
      <a target="_blank" rel="noopener noreferrer" class="stream-showtime__red-banner__cta" 
          href="{{$red_banner_url}}{{page.footerBanner.ctaLink}}{{/red_banner_url}}" data-track data-context="footer" data-label="provider lead" data-provider-id="114">
          <div class="stream-showtime__red-banner__cta-button">{{$red_banner_cta}}{{page.footerBanner.ctaLabel}}{{/red_banner_cta}}</div>
      </a>
    </section>
  {{/bonus_footer}}
  {{!-- END IF --}}
  
  <section class="stream-showtime__footer">
    <div class="section--inner stream-showtime__legal">
      {{$legal_asterisks}}
      <p>*You will not be charged for the SHOWTIME streaming service during the free trial period. TO CANCEL YOUR SUBSCRIPTION AND AVOID BEING CHARGED, YOU MUST CANCEL BEFORE THE END OF THE FREE TRIAL PERIOD. Free trial, price and device availability may vary by participating subscription providers. Free trial is available to new customers only. <br />
        <a class="stream-showtime__legal-notice-link" href="/about/legal-notices" data-track data-context="footer" data-label="legal notices">LEGAL NOTICES</a></p>
      {{/legal_asterisks}}
      {{#page}}{{#legalBanner}}<p>{{{description}}}</p>{{/legalBanner}}{{/page}}
      <div class="stream-showtime__footer-links">
        <a class="stream-showtime__footer-links__alt" href="https://www.viacomcbsprivacy.com/policy" data-context="footer" data-track data-label="privacy policy">Privacy Policy</a>|
        <a class="stream-showtime__footer-links__alt" href="/about/terms" data-context="footer" data-track data-label="terms of use"> Terms of Use</a>|
        <a class="stream-showtime__footer-links__alt" href="/about/closed-captioning" data-context="footer" data-track data-label="closed captioning"> Closed Captioning</a>|
        <a class="stream-showtime__footer-links__alt" href="https://privacy.paramount.com/en/policy#additional-information-us-states" data-track data-label="california notice"> California Notice</a>|
        <a class="stream-showtime__footer-links__alt ot-sdk-show-settings" style="cursor: pointer;" data-track data-label="CA Do Not Sell My Info">Do Not Sell My Personal Information</a>
      </div>
    </div>
  </section>
  