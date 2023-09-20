{{!--
_event_hero_ppv__pending
hero view for alternate version of ppv event with a purchase link, reachable by appending `/alternate` to url
provider groups are:
  - streaming providers grid
  - tv providers grid
  - all providers list
--}}
<div class="hero event-hero--centered {{^eventView.displayProviders}} event-hero--no-providers {{/eventView.displayProviders}}">
  <div class="hero__image event-hero__image lazyload" data-bgset="{{eventView.imageUrl}}"></div>
  <div class="hero__inner event-hero__inner">
    <div class="event-hero__body section--inner">
      <span class="event-hero__logo">Showtime PPV</span>
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
      
      {{!-- BEGIN partner logo --}}
      <h2 class="event-hero__bout event-hero__bout--betting-partner {{#isNotEq eventView.partnerText ''}}event-hero__bout--betting-partner-with-text{{/isNotEq}} {{#isNotEq eventView.partnerImageUrl ''}}event-hero__bout--betting-partner-with-logo{{/isNotEq}}">
        {{#isNotEq eventView.partnerText ""}}
          <span class="event-hero__betting-partner-text">{{eventView.partnerText}}</span>
        {{/isNotEq}}
        {{#isNotEq eventView.partnerImageUrl ""}}
          {{#isNotEq eventView.partnerDestinationUrl "" }}<a class="event-hero__betting-partner-logo" style="background-image:url({{eventView.partnerImageUrl}})" href="{{eventView.partnerDestinationUrl}}"></a>{{/isNotEq}}
          {{#isEq eventView.partnerDestinationUrl "" }}<span class="event-hero__betting-partner-logo" style="background-image:url({{eventView.partnerImageUrl}})">{{/isEq}}</span>
        {{/isNotEq}}
      </h2>
      {{!-- END partner logo --}}
      
    <h3 class="event-hero__sub-title">{{eventView.eventTime}}</h3>
    <p class="event-hero__description">{{eventView.description}}</p>
    </div>
    {{#if eventView.displayProviders}}
    <aside class="event-provider-group">
      <h3 class="section-header section-header--border">How to Buy</h3>
      {{#if streamingProviderTileGroup.tileList.size}}
      {{#streamingProviderTileGroup}}{{> sports/events/ppv/_provider_grid }}{{/streamingProviderTileGroup}}
      {{/if }}
    </aside>
    <aside class="event-provider-group">
      {{#if tvProviderTileGroup.tileList.size}}
      {{#tvProviderTileGroup}}{{> sports/events/ppv/_provider_grid }}{{/tvProviderTileGroup}}
      {{/if }}
      {{#if allProviderTileGroup.tileList.size}}
      {{#allProviderTileGroup}}{{> sports/events/ppv/_provider_list }}{{/allProviderTileGroup}}
      {{/if }}
    </aside>
    {{/if}}
  </div>
</div>