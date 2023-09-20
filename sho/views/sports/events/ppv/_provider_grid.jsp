{{!
  ---
  name: ppv provider grid (dynamic)
  desc: modified instance of provider grid for use in ppv pages
  source: /styleguide/src/provider-grid/index.md
  }}
  <div class="promo-group-header promo-group-header--no-accent promo-group-header--with-callout">
    {{#heading}}
      {{#isEq "Featured Providers" }}
      <h3 class="promo-group-header__title">Other Ways to Buy <em class="promo-group-header__callout">(Prices Vary)</em></h3>
      {{/isEq}}
      {{#isEq "Streaming Providers" }}
      <h3 class="promo-group-header__title">Streaming</h3>
      <h3 class="promo-group-header__sub-title">Buy online for $74.99 and stream on all your devices <em class="promo-group-header__callout">(Varies by Partner)</em></h3>              
      {{/isEq}}
      {{#isEq "TV Providers" }}
      <h3 class="promo-group-header__title">TV Providers</h3>
      <h3 class="promo-group-header__sub-title">Available in SD & HD <em class="promo-group-header__callout">(Prices Vary)</em></h3>              
      {{/isEq}}
    {{/heading}}
    {{^heading}}
      <h3 class="promo-group-header__title">Ways to Buy <em class="promo-group-header__callout">(Prices Vary)</em></h3>
    {{/heading}}
  </div>
  <div class="provider-grid section--inner">
    <div class="provider-grid__inner" data-context="ppv providers">
      {{#tileList}}
      <figure class="provider-grid__entry">
        <a {{#ctaLink}} href="{{ctaLink}}" {{/ctaLink}}
          data-track 
          data-context="ppv providers" 
          data-label="{{#isEq title "Showtime"}}order{{/isEq}}{{#isNotEq title "Showtime"}}{{{title}}}{{/isNotEq}}" 
          data-location="ppv provider grid">
          <img src="{{imageUrl}}" />
        </a>
      </figure>
      {{/tileList}}
    </div>  
    {{#heading}}
    {{#isEq "Streaming Providers" }}
    <div class="provider-grid__footer">
      <h4 class="provider-grid__footer__headline">No cable or subscriptions needed</h4>
      <p class="provider-grid__footer__legal">*Available through the SHOWTIME app on Amazon Fire TV, Android TV, Apple TV (4th Gen+), Roku, Xbox One, iPhone, Android phones and tablets, and at SHOWTIME.com</p>
    </div>
    {{/isEq}}
    {{/heading}}
    </div>