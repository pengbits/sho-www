{{!--
  # sports event page
--}}

{{< layouts/default }}
  {{$classnames}}sports-event{{#page}}{{^eventView.isPPV}} has-nav-solid{{/eventView.isPPV}}{{/page}}{{/classnames}}

  {{$meta}}
    {{#page}}
    {{#eventView.isPPV}}
      <title>{{eventView.title}} - Pay-Per-view Fight | SHOWTIME</title>
      <meta property="og:title" content="{{eventView.title}} - Pay-Per-view Fight  | SHOWTIME" />
      <meta name="description" content="Find out how to order {{eventView.title}} on SHOWTIME & stream across devices - plus see fighter stats, bonus videos and more." />
      <meta property="og:description" content="Find out how to order {{eventView.title}} on SHOWTIME & stream across devices - plus see fighter stats, bonus videos and more." />
    {{/eventView.isPPV}}
    {{^eventView.isPPV}}
      <title>{{eventView.title}} - Fight | SHOWTIME</title>
      <meta property="og:title" content="{{eventView.title}} - Fight | SHOWTIME" />
      <meta name="description" content="Find out about the {{eventView.title}} fight on SHOWTIME, including ways to watch, fighter stats, bonus videos and more." />
      <meta property="og:description" content="Find out about the {{eventView.title}} fight on SHOWTIME, including ways to watch, fighter stats, bonus videos and more." />
    {{/eventView.isPPV}}
      <meta name="page-tracking" content="sho:sports:fights:{{eventView.title}}" />
      <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsports_1280x640.jpg" />
      <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsports_1280x640.jpg" />
    {{#meta.valueMap}}
      <meta name="streaming-modal-image" content="{{streamingModalImage}}" />
    {{/meta.valueMap}}
    {{/page}}
  {{/meta}}


  {{$content}}
    {{> sports/partials/_schema_json_sports_event }}
    {{#page}}      
  	  <section class="section section--large">
        {{#eventView}}
          {{#isPPV}}
            {{^isAlternate}}
              {{#orderButtonCtaLink}}
              {{#isNotEq ""}}
                {{> /sports/events/ppv/_event_hero_ppv__default}}
              {{/isNotEq}}
              {{#isEq ""}}
                {{> /sports/events/ppv/_event_hero_ppv__pending }}   
              {{/isEq}}
              {{/orderButtonCtaLink}}
            {{/isAlternate}}
            {{#isAlternate}}
                {{> /sports/events/ppv/_event_hero_ppv__alternate }}  
            {{/isAlternate}}
          {{/isPPV}}
          {{^isPPV}}
            {{> /sports/events/_event_hero }}
          {{/isPPV}}
        {{/eventView}}

				{{> sports/events/_fight_cards }}
	      
        <div class="promo-group promo-group--one-beside-two section--inner" data-context="promo group">
          {{#promoTileGroup.tileList}}
            {{> partials/_promo_landscape }}
          {{/promoTileGroup.tileList}}
        </div>					
      </section> 
      
      {{#waysToWatch}}
        {{#available}}
        <section class="section section--large">
  	      {{< partials/_ways_to_watch_stream_first }}
            {{$promoType}}order{{/promoType}}
          {{/ partials/_ways_to_watch_stream_first }}
  		   </section>
        {{/available}}
      {{/waysToWatch}}
      
      {{#eventView.isPPV}}
        {{!-- cheeky css to hide undesired content on ppv pages --}}
        <style type="text/css">
        .global-navigation__get-showtime-mobile-menu,
        .global-navigation__right-menu,
        .global-navigation__search-icon,
        .entire-sho-library,
        .footer__schedule-section { display:none }
        </style>
      {{/eventView.isPPV}}
        
    {{/page}}
  {{/content}}
  

{{/ layouts/default}}
