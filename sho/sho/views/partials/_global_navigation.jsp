{{!
---
name: Global Navigation
source: /styleguide/src/global-navigation/index.md
}}

{{#global.globalNavigation}}
<nav class="global-nav js-global-nav {{#page.meta}}{{#valueMap}}{{#navigationSectionName}}global-nav--has-breadcrumb{{/navigationSectionName}}{{/valueMap}}{{/page.meta}}" data-context="global navigation">
  <div class="global-nav__gradient"></div>
  <div class="global-nav__inner">
    <div class="global-nav__menu-toggle">
      <div class="global-nav__menu-icon" data-track data-label="menu open">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
    <ul class="global-nav__list global-nav__breadcrumb">
			{{#page.meta.valueMap.navigationSectionName}}
				<li class="global-nav__item">
					{{#page.meta.valueMap.hasNavigationSectionLink}}{{#page.meta.valueMap.navigationSectionLink}}<a href="{{page.meta.valueMap.navigationSectionLink}}" data-track data-location="breadcrumb" data-label="{{{page.meta.valueMap.navigationSectionName}}}">{{/page.meta.valueMap.navigationSectionLink}}{{/page.meta.valueMap.hasNavigationSectionLink}}
						{{{page.meta.valueMap.navigationSectionName}}}
					{{#page.meta.valueMap.hasNavigationSectionLink}}{{#page.meta.valueMap.navigationSectionLink}}</a>{{/page.meta.valueMap.navigationSectionLink}}{{/page.meta.valueMap.hasNavigationSectionLink}}
				</li>
			{{/page.meta.valueMap.navigationSectionName}}
			{{#page.meta.valueMap.navigationPageName}}
				{{^page.meta.valueMap.navigationSubSectionLink}}
					<li class="global-nav__item">{{{page.meta.valueMap.navigationPageName}}}</li>
				{{/page.meta.valueMap.navigationSubSectionLink}}
				{{#page.meta.valueMap.navigationSubSectionLink}}
					<li class="global-nav__item">
						<a href="{{page.meta.valueMap.navigationSubSectionLink}}" data-track data-location="breadcrumb" data-label="{{page.meta.valueMap.navigationPageName}}">{{page.meta.valueMap.navigationPageName}}</a>
					</li>
				{{/page.meta.valueMap.navigationSubSectionLink}}
			{{/page.meta.valueMap.navigationPageName}}
    </ul>
		<{{$nav_logo_element}}span{{/nav_logo_element}} class="global-nav__logo__wrapper">
    	<a class="global-nav__logo" data-track data-label="home" data-location="logo" href="/">Showtime</a>
		</{{$nav_logo_element}}span{{/nav_logo_element}}>
		<div class="global-nav__menu__wrapper">
      <div class="global-nav__menu global-nav__menu--desktop">
        <ul class="global-nav__list global-nav__list--primary">
					{{#primaryList}}
						<li class="global-nav__item global-nav__item--{{treatment}}">
							<a class="global-nav__link {{#seriesDrawer}}global-nav__flyout global-nav__flyout--series-drawer{{/seriesDrawer}}" data-track data-location="primary" data-label="{{ctaLabel}}" {{#this.providerId}}data-provider-id="{{.}}"{{/this.providerId}} {{^seriesDrawer}}href="{{ctaLink}}"{{/seriesDrawer}}>{{ctaLabel}}</a>
						</li>
					{{/primaryList}}
        </ul>
        <ul class="global-nav__list global-nav__list--promotional">
					{{#promotionList}}
						<li class="global-nav__item global-nav__item--{{treatment}}">
							<a class="global-nav__link" data-track data-location="promotional" data-label="{{ctaLabel}}" {{#this.providerId}}data-provider-id="{{.}}"{{/this.providerId}} href="{{ctaLink}}">{{ctaLabel}}</a>
						</li>
					{{/promotionList}}
        </ul>
      </div>
    </div>
		<ul class="global-nav__list global-nav__list--utility">
			{{#reversedUtilityList}}
				<li class="global-nav__item global-nav__item--{{treatment}}">
					<a class="global-nav__link" data-track data-location="utility" data-label="{{ctaLabel}}" {{#this.providerId}}data-provider-id="{{.}}"{{/this.providerId}} href="{{ctaLink}}">{{ctaLabel}}</a>
				</li>
			{{/reversedUtilityList}}
    </ul>
		<ul class="global-nav__list global-nav__list--callout">
			{{#calloutList}}
				<li class="global-nav__item global-nav__item--{{treatment}}">
					<a class="global-nav__link" data-track data-location="callout" data-label="{{ctaLabel}}" {{#this.providerId}}data-provider-id="{{.}}"{{/this.providerId}} href="{{ctaLink}}">{{ctaLabel}}</a>
				</li>
			{{/calloutList}}
    </ul>
		<div class="global-nav__search-bar">
      <form id="results-search-form" class="form--dark" action="/search" method="GET">
        <input class="global-nav__search-field" id="searchField" name="q" value="" placeholder="Search" type="text" class="text">
      </form>
    </div>
    <div class="global-nav__search-icon">
      <span class="global-nav__circle"></span>
      <span class="global-nav__handle"></span>
    </div>
  </div>
	<div class="global-nav__menu global-nav__menu--mobile">
		<ul class="global-nav__list global-nav__list--primary">
			{{#primaryList}}
				<li class="global-nav__item global-nav__item--{{treatment}}">
					<a class="global-nav__link" data-track data-location="primary" data-label="{{ctaLabel}}" {{#this.providerId}}data-provider-id="{{.}}"{{/this.providerId}} href="{{ctaLink}}">{{ctaLabel}}</a>
				</li>
			{{/primaryList}}
		</ul>
		<ul class="global-nav__list global-nav__list--promotional">
			{{#promotionList}}
				<li class="global-nav__item global-nav__item--{{treatment}}">
					<a class="global-nav__link" data-track data-location="promotional" data-label="{{ctaLabel}}" {{#this.providerId}}data-provider-id="{{.}}"{{/this.providerId}} href="{{ctaLink}}">{{ctaLabel}}</a>
				</li>
			{{/promotionList}}
		</ul>
		<ul class="global-nav__list global-nav__list--utility">
			{{#utilityList}}
				<li class="global-nav__item global-nav__item--{{treatment}}">
					<a class="global-nav__link" data-track data-location="utility" data-label="{{ctaLabel}}" {{#this.providerId}}data-provider-id="{{.}}"{{/this.providerId}} href="{{ctaLink}}">{{ctaLabel}}</a>
				</li>
			{{/utilityList}}
		</ul>
	</div>
	{{#page.meta.valueMap.navigationSectionName}}
  	<div class="global-nav__breadcrumb__background"></div>
	{{/page.meta.valueMap.navigationSectionName}}
	{{> /partials/_flyout_container}}
</nav>
{{/global.globalNavigation}}
{{$secondaryNav}}
{{/secondaryNav}}