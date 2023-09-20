{{!--
  # series cast details page
--}}

{{< layouts/default }}
    {{$classnames}}series-cast-details has-nav-solid{{/classnames}}

    {{$meta}}
      {{#page.meta}}
        {{#series}}
        <title>{{series.shortTitle}} Cast - All Characters & Cast by Season | SHOWTIME</title>
        <meta property="og:title" content="{{shortTitle}} Cast - All Characters & Cast by Season | SHOWTIME" />
        <meta name="description" content="Official cast and character information for all seasons of {{shortTitle}} on SHOWTIME. Watch and stream episodes of {{shortTitle}} and more of your favorite series." />
        <meta property="og:description" content="Official cast and character information for all seasons of {{shortTitle}} on SHOWTIME. Watch and stream episodes of {{shortTitle}} and more of your favorite series." />
        <meta name="page-tracking" content="sho:series:{{page.meta.titleTracking}}:cast" />
        {{/series}}
        {{#valueMap}}
        <meta property="og:image" content="{{ogImageUrl}}" />
        <meta name="sho:image" content="{{ogImageUrl}}" />
        {{/valueMap}}
      {{/page.meta}}
    {{/meta}}

    {{$content}}
      {{#page}}

      <section class="cast-details section--inner">
        <div class="dropdown-menu js-dropdown-menu" data-context="cast navigation">
          {{#page.castGroupList}}{{#isEq iter.index 2}}<h4 class="dropdown-menu__title">Jump To <span class="dropdown-menu__arrow"></span></h4>{{/isEq}}{{/page.castGroupList}}
          <div class="dropdown-menu__item-list">
            {{#castGroupList}}
            {{^iter.isFirst}}
            <a class="dropdown-menu__item" data-track data-label="{{heading}}">{{heading}}</a>
            {{/iter.isFirst}}
            {{/castGroupList}}
          </div>
        </div>

      {{#castGroupList}}
        <h1 class="cast-details__heading">{{heading}}</h1>
        <div class="grid-container" data-context="cast grid">
          {{#tileList}}
          <div class="grid-item">
            <a href="{{ctaLink}}" data-track data-label="{{{title}}}" data-location="{{heading}}">
              <span class="grid-item__image" style="background-image:url({{smallImageUrl}})"></span>
            </a>
            <a href="{{ctaLink}}" data-track data-label="{{{title}}}" data-location="{{heading}}"><h3 class="grid-item__title">{{{title}}}</h3></a>
            <h5 class="grid-item__subtitle">{{{subTitle}}}</h5>
            <p class="grid-item__copy js-grid-item__copy--shortened">{{nonHTMLDescription}}</p>
          </div>
          {{/tileList}}
        </div>

      {{/castGroupList}}
      </section>

      {{#meta.valueMap}}
        {{> series/partials/_series_legal}}
      {{/meta.valueMap}}
      
      {{/page}}
    {{/content}}
{{/ layouts/default}}
