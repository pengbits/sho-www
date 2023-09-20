{{!--
  # movies home page
--}}

{{< layouts/default }}
    {{$classnames}}movies{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>Showtime Feature Movies &amp; Films | SHOWTIME</title>
        <meta property="og:title" content="Showtime Feature Movies &amp; Films | SHOWTIME" />
        <meta name="description" content="Watch a huge selection of hit movies, from riveting dramas to hilarious comedies and thrilling action, on SHOWTIME." />
        <meta property="og:description" content="Watch a huge selection of hit movies, from riveting dramas to hilarious comedies and thrilling action, on SHOWTIME." />
        <meta name="page-tracking" content="sho:movies:home" />
        <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
        <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
      {{/page}}
    {{/meta}}

    {{$content}}
      {{#page}}

        {{#featuredHero}}
          <section class="refresh-hero  {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero">
            {{#heroView}}
              {{> partials/hero/_hero_refresh_inner}}
            {{/heroView}}
            {{#tileGroup}}
            {{#if tileList.size}}
              {{> partials/_promo_group_with_header}}
            {{/if}}
            {{/tileGroup}}
        {{/featuredHero}}
        
        {{#orderTile}}
          {{> partials/order/_order_banner}}
        {{/orderTile}}
          
        {{#libraryTileGroup}}
          {{#if tileList.size}}
            {{< partials/_promo_group_with_header}}
              {{$sectionId}}secondary-promos{{/sectionId}}
            {{/ partials/_promo_group_with_header}}
          {{/if}}
        {{/libraryTileGroup}}

        {{#promoTileGroup}}
          {{#if tileList.size}}
            <div id="promo-tile-group">
              {{< partials/_promo_group_with_header}}
                {{$sectionClasses}}section--gradient{{/sectionClasses}}
                {{$sectionId}}secondary-promos-promo-group{{/sectionId}}
              {{/ partials/_promo_group_with_header}}
            </div>
          {{/if}}
        {{/promoTileGroup}}

        {{#groupTileGroup}}
          {{#if tileList.size}}
            <div id="group-tile-group">
              {{< partials/_promo_group_with_header}}
                {{$sectionId}}secondary-promos-group-group{{/sectionId}}
              {{/ partials/_promo_group_with_header}}
            </div>
          {{/if}}
        {{/groupTileGroup}}

        {{#moviesTileGroup}}
          {{#if tileList.size}}
            <div id="movies-tile-group">
              {{< partials/_promo_group_with_header}}
                {{$sectionId}}secondary-promos-movies-group{{/sectionId}}
              {{/ partials/_promo_group_with_header}}
            </div>
          {{/if}}
        {{/moviesTileGroup}}
      </section>
        {{! this slider of genres is always present }}
        {{#genreTileGroup}}{{> movies/_slider_genres}}{{/genreTileGroup}}

      {{/page}}

    {{/content}}
{{/ layouts/default}}
