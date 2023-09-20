{{!--
  # movies genre page
--}}

{{< layouts/default }}
    {{$classnames}}movies-genre{{/classnames}}

    {{$meta}}
      {{#page}}
        {{#switch meta.genre}}
          {{#case "Adult" break=true}}
            <title>Adult Movies: Erotic Movies &amp; Full Length Adult Films | SHOWTIME</title>
            <meta property="og:title" content="Adult Movies: Erotic Movies &amp; Full Length Adult Films | SHOWTIME" />
          {{/case}}
          {{#case "Music" break=true}}
            <title>Musicals &amp; Music Movies On Demand | SHOWTIME</title>
            <meta property="og:title" content="Musicals &amp; Music Movies On Demand | SHOWTIME" />
          {{/case}}
          {{#case "Sci-Fi/Fantasy" break=true}}
            <title>Sci-Fi and Fantasy Movies On Demand | SHOWTIME</title>
            <meta property="og:title" content="Sci-Fi and Fantasy Movies On Demand | SHOWTIME" />
          {{/case}}
          {{#default}}
            <title>{{meta.genre}} Movies On Demand | SHOWTIME</title>
            <meta property="og:title" content="{{meta.genre}} Movies On Demand | SHOWTIME" />
          {{/default}}
        {{/switch}}
        <meta name="description" content="Watch a huge selection of {{meta.genre}} movies on SHOWTIME." />
        <meta property="og:description" content="Watch a huge selection of {{meta.genre}} movies on SHOWTIME." />
        <meta name="page-tracking" content="sho:movies:{{meta.genre}}" />
        <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
        <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
        {{#moviesPagination.paginationCta.previousCta}}
          <link rel="prev" href="https://www.sho.com{{moviesPagination.paginationCta.previousCta.ctaLink}}">
        {{/moviesPagination.paginationCta.previousCta}}
        {{#moviesPagination.paginationCta.nextCta}}
          <link rel="next" href="https://www.sho.com{{moviesPagination.paginationCta.nextCta.ctaLink}}">
        {{/moviesPagination.paginationCta.nextCta}}
      {{/page}}
    {{/meta}}

    {{$nav}}
      {{< partials/_global_navigation }}
         {{$secondaryNav}}
          {{#page.moviesNav}}
            <nav class="secondary-nav" data-context="movies navigation">
              <div class="secondary-nav__content">
                <select class="secondary-nav__dropdown select-navigation js-select-navigation">
                  <option selected="selected" disabled="disabled">Genres</option>
                   {{#page.moviesNav.itemList}}
                    <option value="{{ctaLink}}" data-context="movies navigation" data-label="{{ctaLabel}}">{{ctaLabel}}</option>
                   {{/page.moviesNav.itemList}}
                </select>
                  <ul class="secondary-nav__list">
                {{#page.moviesNav.itemList}}
                  <li class="secondary-nav__item {{#active}}secondary-nav__item--active{{/active}}">{{^active}}<a href="{{ctaLink}}" data-track data-label="{{ctaLabel}}">{{/active}}{{ctaLabel}}{{^active}}</a>{{/active}}</li>
                {{/page.moviesNav.itemList}}
                  </ul>
              </div>
          </nav>
          {{/page.moviesNav}}
        {{/secondaryNav}}
        {{/ partials/_global_navigation }}
      {{/nav}}

    {{$content}}
      {{#page}}

      <section class="hero {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero">
      	{{#heroView}}
          {{> partials/hero/_hero_inner}}
        {{/heroView}}    
    		<section class="movies-gallery" data-context="title grid:{{page.meta.genre}}">
    			<div class="movies-gallery__inner">
    				{{#moviesPagination.tileList}}
    				<a class="movies-gallery__item" href="{{ctaLink}}" data-track data-label="title page link:{{ctaLabel}}">
    					<div class="movies-gallery__item__image" style="background-image: url({{imageUrl}});"></div>
    					<div class="movies-gallery__title">{{ctaLabel}}</div>
    				</a>
    				{{/moviesPagination.tileList}}
    			</div>
  		</section>

      <section class="section">
  			{{#moviesPagination.paginationCta.rangeCtaList.1}}
				{{#moviesPagination.paginationCta}}
  					{{> partials/_pagination}}
				{{/moviesPagination.paginationCta}}
  			{{/moviesPagination.paginationCta.rangeCtaList.1}}
      </section>
		</section>

    {{#genreTileGroup}}
      {{> movies/_slider_genres}}
    {{/genreTileGroup}}

      {{/page}}
    {{/content}}

{{/ layouts/default}}
