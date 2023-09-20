<div class="hero__ctas" data-context="hero">
	{{!--
	  If a meta.valueMap.intStreamingCampaign value is passed from the XML, and the streamCta.type is "stream", then create new streaming modal link using that XML value.
		Otherwise, just use the streamCta.ctaLink provided by the back end.
	--}}
	{{#streamCta}}
		<a
			{{#meta.valueMap.intStreamingCampaign}}
				{{#isEq type "stream" }}
				class="button--primary cta--item"
					href="#/stream/episode/{{meta.episode.id}}/{{meta.valueMap.intStreamingCampaign}}"
				{{/isEq}}
				{{#isNotEq type "stream" }}
					class="button--secondary button--video cta--item"
					href="{{ctaLink}}"
				{{/isNotEq}}
			{{/meta.valueMap.intStreamingCampaign}}
			{{^meta.valueMap.intStreamingCampaign}}		
				class="button--primary cta--item"		
				href="{{ctaLink}}"
			{{/meta.valueMap.intStreamingCampaign}}
			data-track data-label="{{type}}">{{ctaLabel}}
		</a>
	{{/streamCta}}
	{{#videoCta}}
	<a class="button--secondary cta--item button--video" href="{{ctaLink}}" data-track data-label="preview video">{{ctaLabel}}</a>
	{{/videoCta}}

	<!-- calreply x rokt start -->
	{{#page.meta.valueMap.hasCalReply}}	
	  {{#page.titleView.isOriginalAirDateInFuture}}
      {{< partials/_add_to_calendar}}
        {{$calendarUrl}}{{page.meta.valueMap.calReplyCalendarUrl}}{{/calendarUrl}}
      {{/ partials/_add_to_calendar}}
    {{/page.titleView.isOriginalAirDateInFuture}}
	{{/page.meta.valueMap.hasCalReply}}
	<!-- calreply x rokt end -->

	{{#galleryCta}}
	<a class="cta--item cta--gallery" href="{{ctaLink}}" data-track data-label="photo gallery">{{ctaLabel}}</a>
	{{/galleryCta}}
</div>
