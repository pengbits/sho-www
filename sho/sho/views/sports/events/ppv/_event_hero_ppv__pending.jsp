{{!--
  _event_hero_ppv__pending
  hero view for ppv event without a purchase link (if orderButtonCtaLink is null or "")
--}}
<div class="hero event-hero--centered event-hero--pending">
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
      
      {{!-- BEGIN partner text & logo --}}
      <h2 class="event-hero__bout event-hero__bout--betting-partner {{#isNotEq eventView.partnerText ''}}event-hero__bout--betting-partner-with-text{{/isNotEq}} {{#isEq eventView.partnerText ''}}event-hero__bout--betting-partner-with-blank-text{{/isEq}} {{#isNotEq eventView.partnerImageUrl ''}}event-hero__bout--betting-partner-with-logo{{/isNotEq}}">
        {{#isNotEq eventView.partnerText ""}}
        <span class="event-hero__betting-partner-text">{{eventView.partnerText}}</span>
        {{/isNotEq}}
        {{#isNotEq eventView.partnerImageUrl ""}}
        {{#isNotEq eventView.partnerDestinationUrl "" }}<a class="event-hero__betting-partner-logo"
          style="background-image:url({{eventView.partnerImageUrl}})"
          href="{{eventView.partnerDestinationUrl}}"></a>{{/isNotEq}}
        {{#isEq eventView.partnerDestinationUrl "" }}<span class="event-hero__betting-partner-logo"
          style="background-image:url({{eventView.partnerImageUrl}})">{{/isEq}}</span>
        {{/isNotEq}}
      </h2>
      {{!-- END partner text & logo --}}

      <h3 class="event-hero__sub-title">{{eventView.eventTime}}</h3>
      <p class="event-hero__description">{{eventView.description}}</p>
    </div>
  </div>
</div>    
