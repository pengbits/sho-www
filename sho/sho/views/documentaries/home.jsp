{{!--
  # documentaries home page
--}}

{{< layouts/default }}
    {{$classnames}}documentaries{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>SHOWTIME Documentary Films | SHOWTIME</title>
        <meta property="og:title" content="SHOWTIME Documentary Films | SHOWTIME" />
        <meta name="description" content="Choose from an extensive collection of ground-breaking documentaries on SHOWTIME." />
        <meta property="og:description" content="Choose from an extensive collection of ground-breaking documentaries on SHOWTIME." />
        <meta name="page-tracking" content="sho:documentaries" />
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

        {{#docsTileGroup}}
          {{#if tileList.size}}
            {{< partials/_promo_group_with_header}}
              {{$sectionId}}documentary-collection{{/sectionId}}
            {{/ partials/_promo_group_with_header}}
          {{/if}}
        {{/docsTileGroup}}    

        {{#promotedTileGroup}}
          {{#if tileList.size}}
            {{< partials/_promo_group_with_header}}
              {{$sectionId}}documentary-series{{/sectionId}}
            {{/ partials/_promo_group_with_header}}
          {{/if}}
        {{/promotedTileGroup}}

        <section class="section--large documentaries__browse-all">
            <a class="button--outline-white" href="/movies/documentary" data-track data-context="promo group:documentaries" data-label="browse all documentaries">Browse All Documentaries</a>
        </section>

      {{/page}}

    {{/content}}
{{/ layouts/default}}
