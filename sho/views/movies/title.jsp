{{!--
  # movies title page
--}}

{{< layouts/default }}
  {{$classnames}}movie-title{{/classnames}}
  {{$meta}}
    {{#page}}
      <title>{{#titleView}}{{titleHero.title}} {{#releaseYear}}({{titleView.releaseYear}}){{/releaseYear}}{{/titleView}} | SHOWTIME</title>
      <meta property="og:title" content="{{meta.titleTracking}} | SHOWTIME" />
      <meta name="description" content="{{meta.titleTracking}} on SHOWTIME{{#meta.description}} - {{meta.description}}{{/meta.description}}"/>
      <meta property="og:description" content="{{meta.titleTracking}} on SHOWTIME{{#meta.description}} - {{meta.description}}{{/meta.description}}" />
      <meta name="page-tracking" content="sho:title:{{meta.titleTracking}}" />
      {{#meta.valueMap}}
        <meta property="og:image" content="{{ogImageUrl}}" />
        <meta name="sho:image" content="{{ogImageUrl}}" />
        <meta name="streaming-modal-image" content="{{streamingModalImage}}" />
      {{/meta.valueMap}}
    {{/page}}
  {{/meta}}

  {{$content}}
    {{#page.titleCtaView.streamCta}}
      {{> partials/_movie_streaming_json}}
    {{/page.titleCtaView.streamCta}}

    {{#page}}
    	{{#titleView}}
		    <section class="hero hero--detail">
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
		        {{#if tileList.size}}
              {{> partials/_promo_group_large}}
            {{/if}}
		      {{/videoTiles}}
          <section class="section--inner">
            {{> partials/_title_metadata}}
          </section>
	      </section>
      {{/titleView}}

      {{#popularSeriesGroup}}
        {{> series/partials/_series_slider}}
      {{/popularSeriesGroup}}

    {{/page}}

  {{/content}}
{{/layouts/default}}
