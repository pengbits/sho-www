{{!
---
name: Search Results List
source: /styleguide/src/search-results-list/index.md
}}
<li class="search-results__list-item search-results__list-item--{{type}}">
	<div class="search-results__image">
		<a class="search-results__link" href="{{link}}" data-track data-search-term="{{searchedWord}}" data-context="search results" data-label="{{#isEq type 'video'}}video:{{/isEq}}{{title}}">
			<img src="{{imageUrl}}">
			{{#time}}<h6 class="search-results__video-duration">{{time}}</h6>{{/time}}
		</a>
	</div>
	<div class="search-results__text">
		<a class="search-results__link" href="{{link}}" data-track data-search-term="{{searchedWord}}" data-context="search results" data-label="{{#isEq type 'video'}}video:{{/isEq}}{{title}}">
			<h4 class="search-results__title">{{{title}}}</h4>
		</a>
		<h5 class="search-results__price"><span class="search-results__price--sale"></span> </h5>
		<p class="search-results__description">{{{description}}}</p>
	</div>
</li>