{{!--
  # comedy home page
--}}

{{< layouts/default }}
    {{$classnames}}comedy{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>Comedy Specials from the best standup comedians | SHOWTIME</title>
        <meta property="og:title" content="Comedy Specials from the best standup comedians | SHOWTIME" />
        <meta name="description" content="Watch hilarious comedy and stand up specials on SHOWTIME." />
        <meta property="og:description" content="Watch hilarious comedy and stand up specials on SHOWTIME." />
        <meta name="page-tracking" content="sho:comedy" />
        <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
        <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
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
              {{> partials/_promo_group_with_header}}
            {{/tileGroup}}
          </section>
        {{/featuredHero}}
        
        {{#orderTile}}
          {{> partials/order/_order_banner}}
        {{/orderTile}}

        {{#promotedTileGroup}}
          {{#if tileList.size}}
            {{> partials/_promo_group_with_header}}
          {{/if}}
        {{/promotedTileGroup}}

      {{/page}}

    {{/content}}
{{/ layouts/default}}
