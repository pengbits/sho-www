{{!--
  # schedules home/grid
--}}

{{< layouts/default }}
  {{$classnames}}schedule has-nav-solid has-breadcrumb-solid{{/classnames}}

  {{$meta}}
    {{#page}}
      <title>SHOWTIME Daily Schedule | SHOWTIME</title>
      <meta property="og:title" content="SHOWTIME Daily Schedule | SHOWTIME" />
      <meta name="description" content="What's on SHOWTIME? View the daily schedule and tune in to award-winning Original Series, hit movies, action-packed sports and more." />
      <meta property="og:description" content="What's on SHOWTIME? View the daily schedule and tune in to award-winning Original Series, hit movies, action-packed sports and more." />
      <meta name="page-tracking" content="sho:schedule:home" />
      <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
      <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
    {{/page}}
  {{/meta}}

	{{$nav}}
    {{< partials/_global_navigation }}
       {{$secondaryNav}}
	      <nav class="secondary-nav" data-context="schedule navigation">
	       	<div class="secondary-nav__inner secondary-nav--red-always">
	       		<div class="secondary-nav__content">
	       			<div class="date-picker js-schedule-date-selector" data-start-date="{{page.meta.date}}"></div>
	       			<a href="/on-demand/series" class="secondary-nav__link" data-track data-label="schedule:on demand">On Demand</a>
	       		</div>
	       	</div>
	      </nav>
	      <nav class="schedule-grid__nav">
	    		<div class="schedule-grid__nav-inner" data-context="schedule grid">
		    		<div class="schedule-grid__nav-shim"></div>
	    			<h5 class="schedule-grid__channels-header">Channels</h5>
	    			<i class="schedule-grid__channel-prev" data-track data-label="arrow" data-location="left"></i>
	    			<i class="schedule-grid__channel-next" data-track data-label="arrow" data-location="right"></i>
	    		</div>
	    	</nav>
       {{/secondaryNav}}
    {{/ partials/_global_navigation }}
  {{/nav}}

  {{$content}}

    {{#page}}
	    <div class="schedule-grid js-schedule-grid" data-grid-url="{{meta.scheduleGridUrl}}">
	    	<div class="schedule-grid__inner"></div>
	    	<div class="secondary-nav secondary-nav--red-always secondary-nav--schedule-next">
	    		<div class="secondary-nav__content"></div>
    		</div>
	    </div>
    {{/page}}

  {{/content}}
{{/layouts/default}}
