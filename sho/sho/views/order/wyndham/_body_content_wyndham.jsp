{{!--
    _body_content.jsp
    temporarily hijacking for use in wyndham 2021 page development
    lifted from the _body_content partial that houses content for both stream-showtime and order-showtime pages

    contents
    00. hero
    01. block-text 'give your guests...'
    02. bundle offers x glossy-cards
    03. video-player
    04. block-text 'An upgrade your guests will never...'
    05. feature-blocks aka magazine-layout content
    06. red-banner 'Ask how to get SHOWTIME with DIRECTV...'
    07. showtime catalog-grid
    08. red-banner 'Save with SHOWTIME on DirecTV and help meet...'
    09. legal
    10. footer
    
    --}}
    {{$hero_partial}}
      {{> order/_hero_wyndham }}
    {{/hero_partial}}

  {{$hero_extra_copy}}{{/hero_extra_copy}}
  <section class="section--inner wyndham-block-text wyndham-block-text--first">
    <h2 class="wyndham-block-text__headline">GIVE YOUR GUESTS SHOWTIME ON DIRECTV AND CHOOSE HOW TO SAVE</h2>
  </section>

    <section class="section--inner wyndham-block-text">
      <h3 class="wyndham-block-text__copy">Add one of the SHOWTIME Packages on DIRECTV for a Low Monthly Bulk Rate:</h3>
    </section>
    <div class="bundle-offers">
      <aside class="glossy-card bundle-offer">
        <div class="glossy-card__header">
          <h2 class="glossy-card__headline">SHOWTIME Standard <span>Package <sup class="glossy-card__symbol">§1</sup></span></h2>
        </div>
        <div class="glossy-card__body">
          <div class="glossy-card__price">
            <h3 class="glossy-card__price__point"><em>$1.99</em><sup>USD</sup></h3>
            <h3 class="glossy-card__price__sub">Per room, per month</h3>
          </div>
          <p class="glossy-card__copy">13 Premium Channels of SHOWTIME with HD Access</p>
          <p class="glossy-card__copy glossy-card__copy--emphasis">Over $9,500 USD* in savings for eligible existing DIRECTV customers!</p>
          <p class="glossy-card__legal">*Calculations based on 100-room properties compared to another premium channel rate on a 5-year contract. 
          </p>     
        </div>
      </aside>
      
      <aside class="glossy-card bundle-offer">
        <div class="glossy-card__header">
          <h2 class="glossy-card__headline">SHOWTIME as a Second <span>Premium <sup class="glossy-card__symbol">§2</sup></span></h2>
        </div>
        <div class="glossy-card__body">
          <div class="glossy-card__price">
            <h3 class="glossy-card__price__point"><em>$0.99</em><sup>USD</sup></h3>
            <h3 class="glossy-card__price__sub">Per room, per month</h3>
          </div>
          <p class="glossy-card__copy">13 Premium Channels of SHOWTIME with HD Access
          <p class="glossy-card__copy glossy-card__copy--emphasis">Over $11,000 USD* in saving for eligible existing DIRECTV customers!</p> </p>
          <p class="glossy-card__legal">*Calculations based on 100-room properties compared to another premium channel rate and the addition of a second premium channel on a 5-year contract. 
          </p>     
        </div>
      </aside>
    </div>
    <figure class="wyndham-badge">
      <figcaption class="wyndham-badge__alt-text">Wyndham Hotels & Resorts Approved Supplier</figcaption>
    </figure>
  </section>

  <section class="stream-showtime__video-section section--inner">
    <div class="video-player-simple js-video-player-simple">
    <div class="video-player-simple__inner">
      <video id="video-player-bulk-wyndham" 
        class="video-player-simple__embed video-js"  
        style="margin: 0 auto; width: 100%; height:100%;" 
        data-account="63128"
        data-asset-id="78721"
        data-asset-title="Hit Series All Year Long"
        data-embed="default" 
        data-age-gate="0" 
        data-player-name="sho.com" 
        data-player="NzCF8EByd" 
        data-full-episode="false"
        data-video-id="6309845774112"
        controls 
        loop
        poster="https://www.sho.com/site/image-bin/images/2_2023_1/2_2023_1_ext01_1280x640.jpg"
      >
      </video>
    </div>
    </div>
    <h4 class="stream-showtime__video-section__header">From award-winning original series and star-studded movies to hard-hitting sports, groundbreaking documentaries and
    outrageous comedy, SHOWTIME has it all.</h4>
    {{#page}}
    {{/page}}
  </section>

  <section class="section--inner wyndham-block-text wyndham-block-text--last">
    <h2 class="wyndham-block-text__headline upcase">An upgrade your guests will never forget</h2>
    <h3 class="wyndham-block-text__copy wyndham-block-text__copy--sub">DIRECTV’S full suite of free-to-guest solutions will help transform your properties, help reduce servicing costs and
    provide the ultimate entertainment experience for all your guests.</h3>
  </section>

  <section class="section--inner">
    <div class="wyndham-feature-block wyndham-feature-block--pull-right">
      <img class="wyndham-feature-block__image" src="https://www.sho.com/assets/images/bulk/images/dtv/DTV-COMM_LI_K104807_2023_DRE_SHO_UserScreen_Update_4R.png" />
      <div class="wyndham-feature-block__body">
        <h4 class="wyndham-feature-block__headline">THE ULTIMATE HD ENTERTAINMENT EXPERIENCE</h4>
        <p class="wyndham-feature-block__copy">
          The DIRECTV Residential Experience (DRE) provides the best interactive HD entertainment for a consistent in-room guest
          experience across the country. Properties benefit with technology that’s easy, flexible and compatible with most TVs and
          wiring. Guests benefit from the full residential lineup with access to over 100 HD channels††. Plus, add the SHOWTIME
          Package as your premium channel brand standard at a low rate.
        </p>
        </div>
    </div>
    <div class="wyndham-feature-block">
      <img class="wyndham-feature-block__image" src="https://downloads.sho.com/bulk/images/wyndham-feature-block_575x245.jpg" />
      <div class="wyndham-feature-block__body">
        <h4 class="wyndham-feature-block__headline">BIG ENTERTAINMENT FOR ANY SIZE HOTEL</h4>
        <p class="wyndham-feature-block__copy">
          DIRECTV HOSPITALITY sets the industry standard for equipment features and product reliability with the COM3000,
          DIRECTV’s third-generation HD and 4K^ headend video solution. Packing the most channels into the smallest footprint in
          the industry‡, DIRECTV’s COM3000 supports up to 138 HD channels, including 4K^ programming, the industry’s best picture
          format. Available for any size property over most wiring schemes, the COM3000 is ideal for properties with large room
          counts where property owners don’t want a receiver for each TV.
        </p>
      </div>
    </div>
  </section>

  <section class="stream-showtime__red-banner section--inner">
    <h1 class="stream-showtime__red-banner__header">GET SHOWTIME WITH DIRECTV <span class="hidden-line-break"><br></span>FOR YOUR PROPERTY</h1>
    <h3 class="stream-showtime__red-banner__copy">Call DIRECTV at 800-391-7199 for more information.</h3>
  </section>
  
  <section class="section--inner wyndham-block-text">
    <h2 class="wyndham-block-text__headline">SHOWTIME ON DIRECTV IS THE DESTINATION FOR PREMIUM IN-ROOM ENTERTAINMENT</h2>
  </section>

  {{$catalog_partial}}
    {{> /order/wyndham/_catalog_wyndham  }}
  {{/catalog_partial}}

  <section class="stream-showtime__red-banner stream-showtime__red-banner--subdued section--inner">
    <h1 class="stream-showtime__red-banner__header">SAVE WITH SHOWTIME<sup><small><span class="symbol symbol--reg">®</span></small></sup> ON DIRECTV</h1>
    <h3 class="stream-showtime__red-banner__sub">Get SHOWTIME with DIRECTV for your property. <br />Call DIRECTV at 800-391-7199 for more information.</h3>
  </section>

    
  <section class="stream-showtime__footer">
    <div class="section--inner stream-showtime__legal">
      {{$legal_asterisks}}
      <p>SHOWTIME and related marks are trademarks of Showtime Networks Inc., a Paramount Company. Individual programs, devices
        and marks are the property of their respective owners. All Rights Reserved.<br>
        Visit SHO.COM/BULK for more details on the above offers.<br>
        †2022 Hotel Study among Business and Pleasure guests.<br></p>
     <p><b><u>§1 SHOWTIME<span class="symbol symbol--reg">&reg;</span> PACKAGE:</u></b> <b>Subject to change and may be discontinued at any time.</b> Available to qualifying new or existing DIRECTV subscribers with a 3- or 5-year programming agreement that must not have received SHOWTIME programming at a greater retail value (i.e. $2.50 or more) from DIRECTV or any other distributor during the 6 months prior to activation.  Monthly rate is ($1.99/room/mo.) and requires subscription to FAMILY™ ($3.50 room/mo) or above (with DRE or COM). <b>SHOWTIME PACKAGE (Existing Customers):</b>  Available to existing DIRECTV subscribers with a 3- or 5-year programming agreement that have not received SHOWTIME programming from DIRECTV or any other distributor within 6 months prior to activation.  Monthly charge is ($2.50/room/mo) and requires subscription to FAMILY™ ($3.50/room/mo) or above (with DRE or COM).  <b>IN THE EVENT YOU FAIL TO MAINTAIN YOUR PROGRAMMING AGREEMENT, YOU AGREE THAT DIRECTV MAY CHARGE YOU AN EARLY CANCELLATION FEE. CANCELLATION FEES ARE BASED ON PROGRAMMING PACKAGE SELECTION AND COMMITMENT PERIOD.</b> In certain markets, programming/pricing may vary. Void where prohibited or restricted. Hardware and programming available separately. Taxes not included. DIRECTV programming, hardware, pricing, terms and conditions subject to change at any time.

      <p><b><u>§2 SHOWTIME OFFER: </u></b>  <b>Subject to change and may be discontinued at any time.</b>  The SHOWTIME programming offer ($0.99/room/mo.) is available only as a 2nd Premium add-on. Offer available to qualifying new or existing Hospitality accounts with a 3- or 5-year programming agreement and must not have received SHOWTIME programming from DIRECTV or any other distributor at a greater retail value (i.e. $1.99 or more) from DIRECTV or any other distributor during the 24 months preceding the date of activation of the SHOWTIME Package.  Customer must also subscribe to FAMILY™ ($3.50 room/mo) or above (with DRE or COM).  After the applicable promotional period (3- or 5-years) ends, then-prevailing rate for SHOWTIME applies unless canceled or changed by customer calling 1.888.388.4249 prior to end of the promotional period. Offer may not be combined with any other SHOWTIME offer.</p>

      <p>©2023 DIRECTV. DIRECTV and all other DIRECTV marks are trademarks of DIRECTV, LLC.  All other marks are the property of their respective owners. †† To access DIRECTV HD service, HD equipment req’d. Number of HD channels
        varies based on package selection. ‡U.S. domestic satellite TV industry. ^Limited programming available. Professional
        install. req’d. To watch in 4K HDR req’s 4K HDR compatible equipment and 4K account authorization. If 4K TV does not
        support HDR, content will be viewable in standard 4K. Req’d programming: SELECT™, ENTERTAINMENT, XTRA or ULTIMATE™.
        Other system limits and requirements may apply.</p>
      <p>All products and services are provided by SHOWTIME and not Wyndham Hotels & Resorts, Inc. (WH&R) of its subsidiaries.
        Neither WH&R nor its subsidiaries are responsible for the accuracy or completeness of any statements made in this
        advertisement, the content of this advertisement (including the text, representations and illustrations) or any
        material on the SHOWTIME website to which the advertisement provides a link or a reference. Your access to and use of
        such third party websites and applications, and any correspondence or transactions that you may enter thereon, are
        exclusively governed by the terms of use and policies of those websites and applications. We provide links to third
        party websites and applications for your convenience and information only, and you use them at your own risk. Please
        refer to the applicable brand specifications for your property prior to purchasing products or services. SHOWTIME<span class="symbol symbol--reg">®</span> is an optional upgrade for Super 8<span class="symbol symbol--reg">®</span> by Wyndham, Howard Johnson<span class="symbol symbol--reg">®</span> by Wyndham and Travelodge<span class="symbol symbol--reg">®</span> by Wyndham.</p>
      <p><a class="stream-showtime__legal-notice-link" href="/about/legal-notices" data-track data-context="footer" data-label="legal notices">LEGAL NOTICES</a></p>
      <p>&nbsp;</p>
      {{/legal_asterisks}}
      <div class="stream-showtime__footer-links" data-context="footer">
        <a class="stream-showtime__footer-links__main" href="https://www.showtime.com" data-track data-label="showtime.com">SHOWTIME.com</a>
        <a class="stream-showtime__footer-links__main" href="/" data-track data-label="sho.com">SHO.com</a>
      </div>
      <div class="stream-showtime__footer-links" data-context="footer">
        <a class="stream-showtime__footer-links__alt" href="https://www.viacomcbsprivacy.com/policy" data-track data-label="privacy policy">Privacy Policy</a>|
        <a class="stream-showtime__footer-links__alt" href="/about/terms" data-track data-label="terms of use"> Terms of Use</a>|
        <a class="stream-showtime__footer-links__alt" href="/about/closed-captioning" \data-track data-label="closed captioning"> Closed Captioning</a>|
        <a class="stream-showtime__footer-links__alt" href="https://privacy.paramount.com/en/policy#additional-information-us-states" data-track data-label="california notice"> California Notice</a>|
        <a class="stream-showtime__footer-links__alt ot-sdk-show-settings" style="cursor: pointer;" data-track data-label="CA Do Not Sell My Info">Do Not Sell My Personal Information</a>
      </div>
    </div>
  </section>
  