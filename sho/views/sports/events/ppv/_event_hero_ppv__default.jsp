{{!--
  _event_hero_ppv__default
  hero view for ppv event with purchase link
  provider groups are
  - featured providers grid
  - all providers list
--}}
<div class="hero event-hero--centered">
  <div class="hero__image event-hero__image lazyload" data-bgset="{{eventView.imageUrl}}"></div>
  <div class="hero__inner event-hero__inner">
    <div class="event-hero__body section--inner">
      {{#isNotEq eventView.id 5904 }}
      <span class="event-hero__logo">Showtime PPV</span>
      {{/isNotEq}}
      {{!-- BEGIN alternate headline - only shown if partner logo and text are both null --}}
      {{#isEq eventView.partnerImageUrl "" }}
      {{#isEq eventView.partnerText "" }}
        {{#alternateHeadlineTileGroup}}
          {{#if tileList.size}}{{#tileList}}
            {{#iter.isFirst}}<h2 class="event-hero__bout">{{{title}}}</h2>{{/iter.isFirst}}
          {{/tileList}}{{/if}}
        {{/alternateHeadlineTileGroup}}
      {{/isEq}}
      {{/isEq}}
      {{!-- END alternate headline --}}

      <h1 class="event-hero__title">{{eventView.title}}</h1>

      {{!-- BEGIN partner text & logo --}}
      <h2 class="event-hero__bout event-hero__bout--betting-partner {{#isNotEq eventView.partnerText ''}}event-hero__bout--betting-partner-with-text{{/isNotEq}} {{#isEq eventView.partnerText ''}}event-hero__bout--betting-partner-with-blank-text{{/isEq}} {{#isNotEq eventView.partnerImageUrl ''}}event-hero__bout--betting-partner-with-logo{{/isNotEq}}">
        {{#isNotEq eventView.partnerText ""}}
          <span class="event-hero__betting-partner-text">{{eventView.partnerText}}</span>
        {{/isNotEq}}
        {{#isNotEq eventView.partnerImageUrl ""}}
          {{#isNotEq eventView.partnerDestinationUrl "" }}<a class="event-hero__betting-partner-logo" style="background-image:url({{eventView.partnerImageUrl}})" href="{{eventView.partnerDestinationUrl}}"></a>{{/isNotEq}}
          {{#isEq eventView.partnerDestinationUrl "" }}<span class="event-hero__betting-partner-logo" style="background-image:url({{eventView.partnerImageUrl}})">{{/isEq}}</span>
        {{/isNotEq}}
      </h2>
      {{!-- END partner text & logo --}}

      <h3 class="event-hero__sub-title">{{eventView.eventTime}}</h3>
      <p class="event-hero__description">{{eventView.description}}</p>
      {{#isNotEq eventView.id 5904 }}
      <p>
        <a class="event-hero__big-button event-hero__big-button--provider-lead" href="{{eventView.orderButtonCtaLink}}"
          data-track data-context="ppv hero" data-label="order"
          data-location="ppv provider grid">{{eventView.orderButtonCtaLabel}}</a>
      </p>
      <p class="event-hero__mandatory">
        SHOWTIME subscription is not required/included
      </p>  
      <div class="event-hero__footer">
        {{< /sports/events/ppv/_ways_to_order }}
          {{$ways-to-order-modifier}}{{#eventView.displayProviders}}{{#if featuredProviderTileGroup.tileList.size}} ways-to-order--clear-footer {{/if}}{{#if allProviderTileGroup.tileList.size}} ways-to-order--clear-footer {{/if}}{{/eventView.displayProviders}}{{/ways-to-order-modifier}}
        {{/ /sports/events/ppv/_ways_to_order }}
      </div>
    {{/isNotEq}}
    </div>
    {{#isEq eventView.id 5904 }}
    <aside class="event-provider-group">
      <div class="promo-group-header promo-group-header--no-accent promo-group-header--with-callout">
        <h3 class="promo-group-header__title">How to Buy</h3>
      </div>
      <div class="provider-grid provider-grid--two-up section--inner">
        <div class="provider-grid__inner">
          <figure class="provider-grid__entry provider-grid__entry--sho-ppv">
            <a href="{{eventView.orderButtonCtaLink}}"
             data-track
             data-context="ppv providers"
             data-label="order"
             data-location="ppv provider grid">
            <img class="provider-grid__entry__image"
              alt="{{eventView.orderButtonCtaLabel}}" 
              src="https://www.sho.com/assets/images/showtimeanytime/provider_logos/showtime-ppv-red.png" />
            </a>
          </figure>
          <figure class="provider-grid__entry">
            <a href="https://www.dazn.com"
             data-track
             data-context="ppv providers"
             data-label="dazn sports"
             data-location="ppv provider grid">
            <img class="provider-grid__entry__image"
              src="https://www.sho.com/assets/images/showtimeanytime/provider_logos/dazn-ppv-gold.jpg">
          </a>
          </figure>
        </div>
      </div>
    </aside>
    {{/isEq}}
    {{#if eventView.displayProviders}}
    <aside class="event-provider-group">
      {{#if featuredProviderTileGroup.tileList.size}}
      {{#featuredProviderTileGroup}}{{> sports/events/ppv/_provider_grid }}{{/featuredProviderTileGroup}}
      {{/if }}
      {{#if allProviderTileGroup.tileList.size}}
      {{#allProviderTileGroup}}{{> sports/events/ppv/_provider_list }}{{/allProviderTileGroup}}
      {{/if }}
    </aside>
    {{/if}}
  </div>
</div>