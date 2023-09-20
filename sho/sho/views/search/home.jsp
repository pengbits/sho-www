{{!--
  # search page results
--}}

{{< layouts/default }}
    {{$classnames}}search has-nav-solid has-nav-exposed{{/classnames}}

    {{$meta}}
      {{#page}}
      	<title>Search Results</title>
      	{{#searchView}}
	      	<meta name="page-tracking" content="sho:search:results" />
      	{{/searchView}}
      	{{#isLogin}}
	      	<meta name="page-tracking" content="sho:search:results" />
      	{{/isLogin}}
      	{{^isLogin}}
	      	{{^searchView}}
		      	<meta name="page-tracking" content="sho:search:no results" />
	      	{{/searchView}}
      	{{/isLogin}}
      {{/page}}
      <meta name="robots" content="noindex">
    {{/meta}}

	{{$content}}
      {{#page}}
				<section class="section">
					{{^isActivation}}
						{{^isLogin}}
							{{^searchView}}
								<div class="search-results search-results--no-results">
									<h5 class="search-results__header">Sorry we couldn't find any results for <span class="search-results__header--keyword">"{{searchedWord}}"</span></h5>
									{{! <h5 class="search-results__suggestion">Did you mean: <span class="search-results__suggestion--keyword"></span>?</h5>}}
								</div>
							{{/searchView}}

							{{#searchView}}
								<div class="search-results">
									<h5 class="search-results__header">Search results for <span class="search-results__header--keyword">"{{searchedWord}}"</span></h5>

									{{#primarySerp}}
										{{> partials/search/_super_serp}}
									{{/primarySerp}}

									{{#serpList.0}}
										<ul class="search-results__list">
									{{/serpList.0}}

										{{#serpList}}
											{{^isOrder}}
												{{> partials/search/_serp_list_item}}
											{{/isOrder}}
											{{#isOrder}}
												{{> partials/search/_order}}
											{{/isOrder}}
										{{/serpList}}

									{{#serpList.0}}
										</ul>
									{{/serpList.0}}

								</div>
							{{/searchView}}
						{{/isLogin}}
					{{/isActivation}}
					{{#isLogin}}
						<div class="search-results">
							<h5 class="search-results__header">Search results for <span class="search-results__header--keyword">"{{searchedWord}}"</span></h5>
							{{> partials/search/_login}}
						</div>
					{{/isLogin}}
          {{#isActivation}}
            <div class="search-results">
              <h5 class="search-results__header">Search results for <span class="search-results__header--keyword">"{{searchedWord}}"</span></h5>
							{{> partials/search/_activate}}
            </div>
          {{/isActivation}}
				</section>

				{{#popularSeriesGroup}}
          {{> series/partials/_series_slider}}
        {{/popularSeriesGroup}}

      {{/page}}
    {{/content}}
{{/ layouts/default}}
