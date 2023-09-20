{{!--
  # all series page
--}}

{{< layouts/default }}
    {{$classnames}}all-series{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>SHOWTIME Original Series &amp; TV Shows | SHOWTIME</title>
        <meta property="og:title" content="SHOWTIME Original Series &amp; TV Shows | SHOWTIME" />
        <meta name="description" content="Find out more about SHOWTIME Original Series, including Yellowjackets, Billions, Dexter: New Blood, The Chi and more." />
        <meta property="og:description" content="Find out more about SHOWTIME Original Series, including Yellowjackets, Billions, Dexter: New Blood, The Chi and more." />
        <meta name="page-tracking" content="sho:series:home" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogseries_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogseries_1280x640.jpg" />
      {{/page}}
    {{/meta}}

    {{$content}}
      {{#page}}
        {{#featuredHero}}
          <section class="refresh-hero {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero">
            {{#heroView}}
              {{> partials/hero/_hero_refresh_inner}}
            {{/heroView}}
            {{#tileGroup}}
            {{#if tileList.size}}
            {{< partials/_promo_group_with_header}}
              {{$sectionId}}featured-series-slider{{/sectionId}}
            {{/ partials/_promo_group_with_header}}
            {{/if}}
            {{/tileGroup}}
         
        {{/featuredHero}}

        {{#orderTile}}
          {{< partials/order/_order_banner}}
            {{$intStreamingCampaign}}?i_cid=int-default-26164{{/intStreamingCampaign}}
          {{/ partials/order/_order_banner}}
        {{/orderTile}}

        {{#comingSoonTilesGroup}}
          {{#if tileList.size}}
            {{< partials/_promo_group_with_header}}
              {{$sectionId}}coming-soon-series-slider{{/sectionId}}
            {{/ partials/_promo_group_with_header}}
          {{/if}}
        {{/comingSoonTilesGroup}}

        {{#classicTilesGroup}}
          {{#if tileList.size}}
            <section class="section section--pad-more" data-context="promo group:{{heading}}">
              <div class="promo-group-header">
                <h3 class="promo-group-header__title">{{heading}}</h3>
              </div>
              <div class="promo-group-no-slider">
                <div class="promo-group promo-group--to-three-up promo-group--from-list promo-group--from-list-small">
                  {{#tileList}}
                    <div class="promo promo--docked promo--square promo--large">
                      <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
                      </div>
                      <div class="promo__body">
                        <h3 class="promo__headline">{{{title}}}</h3>
                        {{#subTitle}}<p class="promo__copy">{{{subTitle}}}</p>{{/subTitle}}
                      </div>
                      <a class="promo__link" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{title}}">{{{title}}}</a>
                    </div>
                  {{/tileList}}
                  </div>
              </div>
            </section>
          {{/if}}
        {{/classicTilesGroup}}
      </section>
      
      {{/page}}

    {{/content}}
{{/ layouts/default}}
