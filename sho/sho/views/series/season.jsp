{{< layouts/default }}
  {{$classnames}}season-detail{{/classnames}}

  {{$meta}}
    {{#page.meta}}
      <title>{{series.shortTitle}} Season {{threePartKey.seasonNumber}}: Watch Episodes Online | SHOWTIME</title>
      <meta property="og:title" content="{{series.shortTitle}} Season {{threePartKey.seasonNumber}}: Watch Episodes Online | SHOWTIME" />
      {{#valueMap.pageDescription}}
        <meta name="description" content="{{valueMap.pageDescription}}" />
        <meta property="og:description" content="{{valueMap.pageDescription}}" />
      {{/valueMap.pageDescription}}
      {{^valueMap.pageDescription}}
        <meta name="description" content="Watch Season {{page.meta.threePartKey.seasonNumber}} of {{page.meta.series.shortTitle}} on SHO.com, where you can stream episodes of your favorite original series, movies, documentaries, boxing matches, stand-up comedy, and more." />
        <meta property="og:description" content="Watch Season {{page.meta.threePartKey.seasonNumber}} of {{page.meta.series.shortTitle}} on SHO.com, where you can stream episodes of your favorite original series, movies, documentaries, boxing matches, stand-up comedy, and more." />
      {{/valueMap.pageDescription}}
      {{#valueMap.pageTracking}}
        <meta name="page-tracking" content="{{valueMap.pageTracking}}" />
      {{/valueMap.pageTracking}}
      {{^valueMap.pageTracking}}
        <meta name="page-tracking" content="sho:series:{{{titleTracking}}}:season:{{threePartKey.seasonNumber}}" />
      {{/valueMap.pageTracking}}
      <meta property="og:image" content="{{valueMap.ogImageUrl}}" />
			<meta name="sho:image" content="{{valueMap.ogImageUrl}}" />
    {{/page.meta}}
  {{/meta}}

  {{$content}}
	{{> series/partials/_schema_json_series_season}}
    {{#page}}
    <section class="hero hero--detail {{#primaryHero.panelLink}}hero--panel-link{{/primaryHero.panelLink}}" data-context="hero">
			{{#primaryHero}}
				{{> partials/hero/_hero_inner}}
			{{/primaryHero}}
			{{#seasonCtaView}}
				<div class="hero__ctas" data-context="hero">
			{{#streamCta}}
				<a class="button--primary cta--item"
					{{#meta.valueMap.intStreamingSeasonHeroCampaign}}
						{{#isEq type "stream" }}
							href="#/stream/episode/{{meta.episodeId}}/{{meta.valueMap.intStreamingSeasonHeroCampaign}}"
						{{/isEq}}
						{{#isNotEq type "stream" }}
							href="{{ctaLink}}"
						{{/isNotEq}}
					{{/meta.valueMap.intStreamingSeasonHeroCampaign}}
					{{^meta.valueMap.intStreamingSeasonHeroCampaign}}
						href="{{ctaLink}}"
					{{/meta.valueMap.intStreamingSeasonHeroCampaign}}
					data-track data-label="{{type}}">
					{{ctaLabel}}
				</a>
			{{/streamCta}}
					{{#episodeCta}}
					<a class="button--secondary cta--item button--video"
						href="{{ctaLink}}"
					data-track data-label="{{type}}">{{ctaLabel}}
					</a>
					{{/episodeCta}}
					{{#trailerCta}}
						<a class="cta--item button--secondary button--video" href="{{ctaLink}}" data-track data-context="hero" data-label="preview video">{{ctaLabel}}
						</a>
					{{/trailerCta}}
				</div>
			{{/seasonCtaView}}


			<div class="promo-group promo-season-group section--inner" data-context="hero">
				{{#page.episodeTileGroupView.episodeTileList}}
					<figure class="promo">
						<div class="promo__image lazyload" data-bgset="{{smallImageUrl}} [--small] |  {{imageUrl}}"></div>
						<a class="promo__link" href="{{url}}" data-track data-context="episode list" data-label="episode detail:{{meta.series.shortTitle}}:season:{{meta.threePartKey.seasonNumber}}:episode:{{episodeNbr}}" data-location="tile {{iter.index}}">{{{title}}}</a>
					</figure>
					<div class ="promo__body">
						<a class="promo__headline" href="{{url}}" data-track data-context="episode list" data-label="episode detail:{{meta.series.shortTitle}}:season:{{meta.threePartKey.seasonNumber}}:episode:{{episodeNbr}}">Episode {{episodeNbr}}: {{{title}}}</a>
						{{#originalAirDate}}<p class="promo__date_time">Original Air Date: {{originalAirDate}}</p>{{/originalAirDate}}
						<p class="promo__copy">{{{description}}}</p>
						{{#streamCta}}
							<a class="promo__stream-btn" data-episode-id="{{episodeId}}" data-streaming-image="{{imageUrl}}"
								{{#meta.valueMap.intStreamingEpisodeListCampaign}}
									{{#isEq type "stream" }}
										href="#/stream/episode/{{episodeId}}/{{meta.valueMap.intStreamingEpisodeListCampaign}}"
									{{/isEq}}
									{{#isNotEq type "stream" }}
										href="{{ctaLink}}"
									{{/isNotEq}}
									{{/meta.valueMap.intStreamingEpisodeListCampaign}}
									{{^meta.valueMap.intStreamingEpisodeListCampaign}}
										href="{{ctaLink}}"
							{{/meta.valueMap.intStreamingEpisodeListCampaign}}
							data-track data-label="{{type}}:{{meta.series.shortTitle}}:season:{{meta.threePartKey.seasonNumber}}:episode:{{episodeNbr}}">
								{{ctaLabel}}</a>
						{{/streamCta}}
						{{#videoCta}}
							<a class="promo__watch-btn button--video {{^streamCta}}promo__watch-btn--first{{/streamCta}}" href="{{ctaLink}}" 	data-track data-label="{{type}}:{{meta.series.shortTitle}}:season:{{meta.threePartKey.seasonNumber}}:episode:{{episodeNbr}}">{{ctaLabel}}</a>
						{{/videoCta}}
					</div>
				{{/page.episodeTileGroupView.episodeTileList}}
        </div>
    </section>
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
			{{#meta.valueMap}}
				{{> series/partials/_series_legal}}
			{{/meta.valueMap}}
		{{#popularSeriesGroup}}
    		{{> series/partials/_series_slider}}
  		{{/popularSeriesGroup}}
      
    {{/page}}

  {{/content}}
{{/ layouts/default}}
