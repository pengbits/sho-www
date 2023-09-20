{{!
---
name: Search Results - Super SERP
source: /styleguide/src/search-results-super-serp/index.md
}}
<div class="super-serp">
	<h1 class="super-serp__header">{{primarySerp.title}}</h1>
	<picture class="super-serp__image">
		<source media="(max-width: 991px)"
		data-srcset="{{imageUrl}}">
		<source media="(min-width: 992px)"
		data-srcset="{{smallImageUrl}}">
		<img class="lazyload" alt="{{primarySerp.title}}" src="https://www.sho.com/assets/images/lib/blank.gif">
		{{#waysToWatch.streaming.startDate}}
		<div class="super-serp__button-container">
			<a class="super-serp__button button--secondary" href="{{waysToWatch.streaming.ctaLink}}" data-track data-search-term="{{searchedWord}}" data-context="search results:series:{{primarySerp.shortTitle}}" data-label="stream">Watch Now</a>
		</div>
		{{/waysToWatch.streaming.startDate}}
	</picture>
	<div class="super-serp__links">
		{{#link}}
		<a class="super-serp__link" href="{{link}}" data-track data-search-term="{{searchedWord}}" data-context="search results:series:{{primarySerp.shortTitle}}" data-label="about">
			<div class="super-serp__link-text">
				<h4 class="super-serp__link-title">About</h4>
			</div>
		</a>
		{{/link}}
		{{#episodeUrl}}
		<a class="super-serp__link" href="{{episodeUrl}}" data-track data-search-term="{{searchedWord}}" data-context="search results:series:{{primarySerp.shortTitle}}" data-label="episode guide">
			<div class="super-serp__link-text">
				<h4 class="super-serp__link-title">Episode Guide</h4>
			</div>	
		</a>
		{{/episodeUrl}}
		{{#castUrl}}
		<a class="super-serp__link" href="{{castUrl}}" data-track data-search-term="{{searchedWord}}" data-context="search results:series:{{primarySerp.shortTitle}}" data-label="cast">
			<div class="super-serp__link-text">
				<h4 class="super-serp__link-title">Cast</h4>
			</div>	
		</a>
		{{/castUrl}}
		{{#fullEpisode}}
		<a class="super-serp__link" href="{{link}}" data-track data-search-term="{{searchedWord}}" data-context="search results:series:{{primarySerp.shortTitle}}" data-label="free full episode">
			<div class="super-serp__link-video lazyload" data-bgset="{{imageUrl}}"></div>
			<div class="super-serp__link-text">
				<h4 class="super-serp__link-title">Free Full Episode</h4>
			</div>
		</a>
		{{/fullEpisode}}
		{{#trailer}}
		<a class="super-serp__link" href="{{link}}" data-track data-search-term="{{searchedWord}}" data-context="search results:series:{{primarySerp.shortTitle}}" data-label="trailer video">
			<div class="super-serp__link-video lazyload" data-bgset="{{imageUrl}}"></div>
			<div class="super-serp__link-text">
				<h4 class="super-serp__link-title">Trailer</h4>
			</div>
		</a>
		{{/trailer}}
	</div>
</div>