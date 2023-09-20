{{< layouts/default }}
  {{$classnames}}episode-detail{{/classnames}}

  {{$meta}}
    {{#page.meta}}
      <title>{{{series.shortTitle}}} - Season {{episode.seasonNumber}} Episode {{episode.number}}, {{episode.displayTitle}} | SHOWTIME</title>
      <meta property="og:title" content="{{{series.shortTitle}}} - Season {{episode.seasonNumber}} Episode {{episode.number}}, {{episode.displayTitle}} | SHOWTIME" />
      {{#valueMap.pageDescription}}
        <meta name="description" content="{{valueMap.pageDescription}}" />
        <meta property="og:description" content="{{valueMap.pageDescription}}" />
      {{/valueMap.pageDescription}}
      {{^valueMap.pageDescription}}
        <meta name="description" content="Watch previews, find out ways to watch, go behind the scenes, and more of Season {{episode.seasonNumber}} Episode {{episode.number}} of the SHOWTIME Original Series {{series.shortTitle}}." />
        <meta property="og:description" content="Watch previews, find out ways to watch, go behind the scenes, and more of Season {{episode.seasonNumber}} Episode {{episode.number}} of the SHOWTIME Original Series {{series.shortTitle}}." />
      {{/valueMap.pageDescription}}
      <meta name="page-tracking" content="sho:series:{{{titleTracking}}}:season:{{episode.seasonNumber}}:episode:{{episode.number}}" />
      <meta property="og:image" content="{{episodeOgImageUrl}}" />
      <meta name="sho:image" content="{{episodeOgImageUrl}}" />
      {{#valueMap}}
        <meta name="streaming-modal-image" content="{{streamingModalImage}}" />
      {{/valueMap}}
    {{/page.meta}}
  {{/meta}}

  {{$hero__headers}}
  <h1 class="hero__headline hero__headline--episode">
    {{#topLine}}<span class="hero__top-line">{{{topLine}}}</span>{{/topLine}}
    {{#panelLink}}<a class="hero__headline__link" href="{{panelLink}}" data-track data-label="{{#panelLinkType}}{{panelLinkType}}:{{/panelLinkType}}{{title}}" data-location="panel link">{{/panelLink}}<span>{{{title}}}</span>{{#panelLink}}</a>
    {{/panelLink}}
  </h1>
  {{/hero__headers}}

  {{$content}}
    {{> series/partials/_schema_json_series_episode}}
    {{#page}}

			{{#titleView}}
				<section class="hero hero--detail {{#titleHero.panelLink}}hero--panel-link{{/titleHero.panelLink}}" data-context="hero">
					{{#titleHero}}
						{{> partials/hero/_hero_inner}}
					{{/titleHero}}
					{{#titleCtaView}}
						{{> partials/hero/_hero_ctas}}
					{{/titleCtaView}}
          {{#waysToWatch}}
						{{< partials/_ways_to_watch}}
              {{$promoType}}order{{/promoType}}
  					{{/ partials/_ways_to_watch}}
          {{/waysToWatch}}
          {{#videoTiles}}
            <section class="promo-group promo-group--one-beside-two section--inner" data-context="promo group">
              {{#tileList}}
                {{> partials/_promo_landscape }}
              {{/tileList}}
            </section>
          {{/videoTiles}}
          {{#recapTileGroup}}
            <section class="section section--inner">
              {{> series/partials/_press_recap}}
            </section>
          {{/recapTileGroup}}

          <section class="section section--inner">
            {{#castInfo}}
              {{> partials/_title_metadata}}
            {{/castInfo}}

            {{#if audioProductList.size}}
				<div class="episode-detail__music-list">
					{{> series/partials/_music_list}}
				</div>
			{{/if}}

        	</section>
				</section>
			{{/titleView}}

			{{#seasonNavigation}}
        {{#numExpr meta.series.id 1033477 op="eq"}}
          {{!-- twin peaks hard-coded exception --}}
          {{> series/twin_peaks/partials/_season_slider}}
        {{/numExpr}}

        {{#numExpr meta.series.id 1033477 op="neq"}}
          {{> series/partials/_season_slider}}
        {{/numExpr}}
      {{/seasonNavigation}}

      {{#meta.valueMap}}
        {{> series/partials/_series_legal}}
      {{/meta.valueMap}}

      {{#popularSeriesGroup}}
        {{> series/partials/_series_slider}}
      {{/popularSeriesGroup}}

    {{/page}}

  {{/content}}
{{/ layouts/default}}
