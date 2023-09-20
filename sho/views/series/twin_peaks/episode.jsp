{{!-- for /twin-peaks/the-return episodes only --}}

{{< layouts/default }}
  {{$classnames}}episode-detail{{/classnames}}

  {{$meta}}
    {{#page.meta}}
      {{#switch episode.id}}
        {{#case 3447479 break=true}}
          <title>Twin Peaks - The Return, Parts 1 &amp; 2 | SHOWTIME</title>
          <meta property="og:title" content="Twin Peaks - The Return, Parts 1 &amp; 2 | SHOWTIME" />
          <meta name="description" content="Watch previews, find out ways to watch, go behind the scenes, and learn more about Parts 1 &amp; 2 of the SHOWTIME Limited Event Series Twin Peaks." />
          <meta property="og:description" content="Watch previews, find out ways to watch, go behind the scenes, and learn more about Parts 1 &amp; 2 of the SHOWTIME Limited Event Series Twin Peaks." />
        {{/case}}
        {{#case 3447845 break=true}}
          <title>Twin Peaks - The Return, Parts 3 &amp; 4 | SHOWTIME</title>
          <meta property="og:title" content="Twin Peaks - The Return, Parts 3 &amp; 4 | SHOWTIME" />
          <meta name="description" content="Watch previews, find out ways to watch, go behind the scenes, and learn more about Parts 3 &amp; 4 of the SHOWTIME Limited Event Series Twin Peaks." />
          <meta property="og:description" content="Watch previews, find out ways to watch, go behind the scenes, and learn more about Parts 3 &amp; 4 of the SHOWTIME Limited Event Series Twin Peaks." />
        {{/case}}
        {{#default}}
          <title>Twin Peaks - The Return, Part {{episode.number}} | SHOWTIME</title>
          <meta property="og:title" content="Twin Peaks - The Return, Part {{episode.number}} | SHOWTIME" />
          <meta name="description" content="Watch previews, find out ways to watch, go behind the scenes, and learn more about Part {{episode.number}} of the SHOWTIME Limited Event Series Twin Peaks." />
          <meta property="og:description" content="Watch previews, find out ways to watch, go behind the scenes, and learn more about Part {{episode.number}} of the SHOWTIME Limited Event Series Twin Peaks." />
        {{/default}}
      {{/switch}}
      <meta name="page-tracking" content="sho:series:{{{titleTracking}}}:season:3:episode:{{episode.number}}" />
      <meta property="og:image" content="https://www.sho.com/site/image-bin/images/{{series.id}}_{{episode.seasonNumber}}_{{episode.id}}/{{series.id}}_{{episode.seasonNumber}}_{{episode.id}}_01_1280x640.jpg" />
      <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/{{series.id}}_{{episode.seasonNumber}}_{{episode.id}}/{{series.id}}_{{episode.seasonNumber}}_{{episode.id}}_01_1280x640.jpg" />
    {{/page.meta}}
  {{/meta}}

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
            {{#castInfo.actors.length}}
              {{> partials/_title_metadata}}
            {{/castInfo.actors.length}}

            {{#if audioProductList.size}}
				<div class="episode-detail__music-list">
					{{> series/partials/_music_list}}
				</div>
			{{/if}}

        	</section>
				</section>
			{{/titleView}}

			{{#seasonNavigation}}
          {{!-- twin peaks hard-coded exception --}}
          {{> series/twin_peaks/partials/_season_slider}}
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
