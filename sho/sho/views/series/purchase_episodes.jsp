{{!--
  # series EST page
--}}

{{< layouts/default }}
    {{$meta}}
      {{#page}}
        <title>Purchase Episodes of {{meta.series.shortTitle}} | SHOWTIME</title>
        <meta property="og:title" content="Purchase Episodes of {{meta.series.shortTitle}} | SHOWTIME" />
        <meta name="description" content="Purchase episodes of {{meta.series.shortTitle}} from SHOWTIME and watch now." />
        <meta property="og:description" content="Purchase episodes of {{meta.series.shortTitle}} from SHOWTIME and watch now." />
        <meta name="page-tracking" content="sho:series:{{meta.titleTracking}}:est" />
        <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
        <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
      {{/page}}
    {{/meta}}

    {{$content}}
      {{#page}}

	    	{{#primaryHero}}
          <section class="hero" data-context="hero">
	          {{> partials/hero/_hero_inner}}
    	      <section class="section--large">
    		      {{#productGroup}}
    		      	{{#tileList}}
    			      <div class="link-banner" data-context="est links">
    			      	<a class="link-banner__link--est" href="{{ctaLink}}" data-track data-label="{{title}}" data-location="tile {{iter.index}}">
    			      		<div class="link-banner__title-container--est">
    			      			<h3 class="link-banner__title--est">{{{title}}}</h3>
    			      		</div>
    			      		<i class="link-banner__more--est"></i>
    			      	</a>
    			      </div>
    		      	{{/tileList}}
    		      {{/productGroup}}
    	      </section>
          </section>
	      {{/primaryHero}}

				{{#meta.valueMap}}
          {{> series/partials/_series_legal}}
        {{/meta.valueMap}}

        {{#popularSeriesGroup}}
          {{> series/partials/_series_slider}}
        {{/popularSeriesGroup}}

	    {{/page}}
    {{/content}}
{{/ layouts/default}}
