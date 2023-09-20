{{!--
  # series-specific home page template
--}}

{{< layouts/default }}
    {{$classnames}}series-home has-breadcrumb-on-desktop{{/classnames}}

    {{$meta}}
      {{#page}}
        {{! allow for custom title from series XML, otherwise template --}}
        {{#meta.valueMap}}
          {{#pageTitle}}
          <title>{{{pageTitle}}}</title>
          <meta property="og:title" content="{{{pageTitle}}}" />
          {{/pageTitle}}
          {{^pageTitle}}
          <title>{{{meta.series.shortTitle}}} (Official Series Site) Watch on Showtime</title>
          <meta property="og:title" content="{{{meta.series.shortTitle}}} (Official Series Site) Watch on Showtime" />
          {{/pageTitle}}
          {{! allow for custom description from series XML, otherwise template --}}
          {{#pageDescription}}
          <meta name="description" content="{{pageDescription}}" />
          <meta property="og:description" content="{{pageDescription}}" />
          {{/pageDescription}}
          {{^pageDescription}}
          <meta name="description" content="The official site of the SHOWTIME Original Series {{{meta.series.shortTitle}}}. Find out about new episodes, watch previews, go behind the scenes and more." />
          <meta property="og:description" content="The official site of the SHOWTIME Original Series {{{meta.series.shortTitle}}}. Find out about new episodes, watch previews, go behind the scenes and more." />
          {{/pageDescription}}
          <meta name="page-tracking" content="sho:series:{{{meta.titleTracking}}}:home" />
          <meta property="og:image" content="{{ogImageUrl}}" />
          <meta name="sho:image" content="{{ogImageUrl}}" />
          <meta name="streaming-modal-image" content="{{streamingModalImage}}" />
        {{/meta.valueMap}}
      {{/page}}
    {{/meta}}

    {{$content}}
      {{> series/partials/_schema_json_series_home}}

      <section class="refresh-hero" data-context="hero">
        {{#page.primaryHero.heroView}}
          {{< partials/hero/_hero_refresh_inner}}
            {{$showtimeAttribution}} 
              {{#page.meta.valueMap.showtimeAttribution}}<div class="refresh-hero__attribution">{{page.meta.valueMap.showtimeAttribution}}</div>{{/page.meta.valueMap.showtimeAttribution}}
            {{/showtimeAttribution}}
            {{$seriesDescriptor}} 
              {{#page.seriesDescriptor}}<div class="refresh-hero__descriptor">{{{page.seriesDescriptor}}}</div>{{/page.seriesDescriptor}}
            {{/seriesDescriptor}}
          {{/ partials/hero/_hero_refresh_inner}}
        {{/page.primaryHero.heroView}}

        {{#if page.primaryHero.tileGroup.tileList.size}}
          <div class="promo-group promo-group--to-three-up section--inner" data-context="hero">
            {{#page.primaryHero.tileGroup.tileList}}
              {{> partials/_promo_landscape }}
            {{/page.primaryHero.tileGroup.tileList}}
          </div>
        {{/if}}

        {{#page.aboutTile.subTitle}}
          {{!-- draw modifiers for hide/show of inner content based on availability of content:
          .about-the-series--has-updates
          .about-the-series--has-next-on
          .about-the-series--has-next-on.about-the-series--has-updates
          .about-the-series--has-synapsis-only
          --}}
        <section class="about-the-series-section {{#isEq page.updatesTileGroup.tileList.size 0}}{{^page.nextEpisode}} about-the-series-section--has-synapsis-only {{/page.nextEpisode}}{{/isEq}}">
          <div class="about-the-series {{#isEq page.updatesTileGroup.tileList.size 0}}{{^page.nextEpisode}} about-the-series--has-synapsis-only {{/page.nextEpisode}}{{/isEq}}{{#if page.updatesTileGroup.tileList.size}} about-the-series--has-updates {{/if}}{{#page.nextEpisode}} about-the-series--has-next-on {{/page.nextEpisode}}">
            <div class="about-the-series__synapsis">
              <h2 class="block-container__headline">{{{page.aboutTile.title}}}</h2>
              <p class="body-text">{{{page.aboutTile.subTitle}}}</p>
            </div>

            {{#if page.updatesTileGroup.tileList.size }}
              {{#page.updatesTileGroup}}
              {{> series/partials/_series_updates }}
              {{/page.updatesTileGroup}}
            {{/if}}

            {{#page.nextEpisode}}
              {{> series/partials/_next_episode }}
            {{/page.nextEpisode}}

            <section class="about-the-series__order-promo">
            {{#page.orderTile}}
              {{< partials/order/_order_banner}}
                {{$className}}refresh-order-banner--no-image{{/className}}
                {{$intStreamingCampaign}}{{#page.meta.valueMap.intStreamingCampaign}}?i_cid={{page.meta.valueMap.intStreamingCampaign}}{{/page.meta.valueMap.intStreamingCampaign}}{{/intStreamingCampaign}}
              {{/ partials/order/_order_banner}}
            {{/page.orderTile}}
            </section>  
          </div>
        </section>

        <section class="section section--large order-banner-section">
          {{#page.orderTile}}
            {{< partials/order/_order_banner}}
              {{$intStreamingCampaign}}{{#page.meta.valueMap.intStreamingCampaign}}?i_cid={{page.meta.valueMap.intStreamingCampaign}}{{/page.meta.valueMap.intStreamingCampaign}}{{/intStreamingCampaign}}
            {{/ partials/order/_order_banner}}
          {{/page.orderTile}}
        </section>
      </section>

      {{/page.aboutTile.subTitle}}
      {{^page.aboutTile.subTitle}}
        {{#page.orderTile}}
          {{< partials/order/_order_banner}}
            {{$intStreamingCampaign}}{{#page.meta.valueMap.intStreamingCampaign}}?i_cid={{page.meta.valueMap.intStreamingCampaign}}{{/page.meta.valueMap.intStreamingCampaign}}{{/intStreamingCampaign}}
          {{/ partials/order/_order_banner}}
        {{/page.orderTile}}
      {{/page.aboutTile.subTitle}}

      {{#page}}
        {{#if promoTileGroup.tileList.size}}
          {{#promoTileGroup}}
            {{> partials/_promo_group_slider_from_stack}}
          {{/promoTileGroup}}
        {{/if}}

        {{#if exploreTileGroup.tileList.size}}
          {{#exploreTileGroup}}
            {{> partials/_promo_group_slider_from_stack}}
          {{/exploreTileGroup}}
        {{/if}}

        {{#meta.valueMap.spotifyPlaylistId}}
          {{> partials/_spotify_embed }}
        {{/meta.valueMap.spotifyPlaylistId}}

        {{#switch meta.series.id}}
          {{#case 1033477}}
          {{/case}}
          {{#case 1032477 break="true"}}
            {{!-- twin peaks the return --}}
            {{> series/twin_peaks/partials/_season_slider}}
          {{/case}}
          {{#default}}
            {{#seasonNavigation}}
              {{> series/partials/_season_slider}}
            {{/seasonNavigation}}
          {{/default}}
        {{/switch}}


        {{#talentNavigation}}
          {{> series/partials/_cast_slider}}
        {{/talentNavigation}}

        {{#meta.valueMap}}
          {{> series/partials/_series_legal}}
        {{/meta.valueMap}}
      
      {{#popularSeriesGroup}}
        {{> series/partials/_series_slider}}
      {{/popularSeriesGroup}}

    {{/page}}

  {{/content}}

{{/ layouts/default}}
