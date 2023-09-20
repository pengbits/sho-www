{{!--
  # bloody-good home page
--}}
{{< layouts/default }} 
  {{$classnames}}bloody-good{{/classnames}}
  {{$meta}}
    {{#page}}
      <title>Showtime Presents Bloody Good</title>
      <meta property="og:title" content="Showtime Presents Bloody Good" />
      <meta name="description" content="Bloody Good shows & movies are on SHOWTIME this Halloween. Try it Free. " />
      <meta property="og:description" content="Bloody Good shows & movies are on SHOWTIME this Halloween. Try it Free. " />
      <meta name="page-tracking" content="sho:bloody good" />
      <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
      <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
    {{/page}}
  {{/meta}}

  {{$content}}
    {{#page}}
      {{#featuredHero}}
        <section class="refresh-hero {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero">
          {{> partials/hero/_hero_refresh_inner}}
        </section>
      {{/featuredHero}}

      {{#seriesTileGroup}}
        {{> promotions/bloody-good/_promo_group}}
      {{/seriesTileGroup}}

      {{#episodeTileGroup}}
        {{> promotions/bloody-good/_promo_group}}
      {{/episodeTileGroup}}

      {{#movieTileGroup}}
        {{> promotions/bloody-good/_movies_promo_group}}
      {{/movieTileGroup}}

      <section class="bloody-good__footer">
        <div class="section--inner bloody-good__legal">
          {{#page}}{{#legalTile}}<p>{{{subTitle}}}</p>{{/legalTile}}{{/page}}
        </div>
      </section>

    {{/page}} 
  {{/content}}

  {{$entireShoLibrary}}{{/entireShoLibrary}}
{{/layouts/default}}