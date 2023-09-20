{{!--
  # hip-hop-50 home page
--}}

{{< layouts/default }}
    {{$classnames}}hiphop{{/classnames}}

    {{$meta}}
      {{#page}}
      <title>SHOWTIME | Hip Hop 50</title>
      <meta property="og:title" content="SHOWTIME | Hip Hop 50" />
      <meta property="description" content="SHOWTIME presents Hip Hop 50: a 3-year celebration with original series, films & experiences, leading up to the 50th anniversary of Hip Hop in 2023." />
      <meta property="og:description" content="SHOWTIME presents Hip Hop 50: a 3-year celebration with original series, films & experiences, leading up to the 50th anniversary of Hip Hop in 2023." />
      <meta name="page-tracking" content="sho:documentaries:hip hop 50" />
      <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
      <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
      <meta name="description" content="SHOWTIME presents Hip Hop 50: a 3-year celebration with original series, films & experiences, leading up to the 50th anniversary of Hip Hop in 2023." />
      {{/page}}
    {{/meta}}

    {{$content}}
      {{#page}}

        {{#featuredHero}}
          <section class="hero hero--no-accent {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero">
            {{#heroView}}
              {{> partials/hero/_hero_inner}}
            {{/heroView}}
            {{#tileGroup}}
            {{> partials/_promo_group_no_slider}}
            {{/tileGroup}}
          </section>
        {{/featuredHero}} 
          
        {{#libraryTileGroup}}
          {{#if tileList.size}}
            {{< partials/_promo_group_with_header}}
              {{$sectionClasses}}section--gradient{{/sectionClasses}}
              {{$sectionId}}secondary-promos{{/sectionId}}
            {{/ partials/_promo_group_with_header}}
          {{/if}}
        {{/libraryTileGroup}}
 
        {{! this slider of genres is always present }}
        {{#genreTileGroup}}{{> movies/_slider_genres}}{{/genreTileGroup}}

      {{/page}}

    {{/content}}
{{/ layouts/default}}
