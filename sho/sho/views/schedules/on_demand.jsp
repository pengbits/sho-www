{{!--
  # schedules on demand
--}}

{{< layouts/default }}
  {{$classnames}}on-demand has-nav-solid{{/classnames}}

  {{$meta}}
    {{#page}}
      {{#switch meta.categoryName}}
        {{#case "Adult" break=true}}
          <title>Streaming, On Demand Adult Movies &amp; After Hours Series | SHOWTIME</title>
          <meta property="og:title" content="Streaming, On Demand Adult Movies &amp; After Hours Series | SHOWTIME" />
        {{/case}}
        {{#default}}
          <title>Streaming, On Demand {{meta.categoryName}} | SHOWTIME</title>
          <meta property="og:title" content="Streaming, On Demand {{meta.categoryName}} | SHOWTIME" />
        {{/default}}
      {{/switch}}
      <meta name="description" content="Watch {{meta.categoryName}} and more whenever you want with SHOWTIME On Demand, SHOWTIME ANYTIME, and the SHOWTIME app." />
      <meta property="og:description" content="Watch {{meta.categoryName}} and more whenever you want with SHOWTIME On Demand, SHOWTIME ANYTIME, and the SHOWTIME app." />
      <meta name="page-tracking" content="sho:schedules:on demand:{{meta.categoryName}}" />
      <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
      <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
      {{#onDemandPagination.paginationCta.previousCta}}
        <link rel="prev" href="https://www.sho.com{{onDemandPagination.paginationCta.previousCta.ctaLink}}">
      {{/onDemandPagination.paginationCta.previousCta}}
      {{#onDemandPagination.paginationCta.nextCta}}
        <link rel="next" href="https://www.sho.com{{onDemandPagination.paginationCta.nextCta.ctaLink}}">
      {{/onDemandPagination.paginationCta.nextCta}}
    {{/page}}
  {{/meta}}

  {{$nav}}
    {{< partials/_global_navigation }}
      {{$secondaryNav}}
        <nav class="secondary-nav secondary-nav--red-from-medium" data-context="schedule navigation">
          <div class="secondary-nav__content">
            <select class="secondary-nav__dropdown select-navigation js-select-navigation">
              {{#page.onDemandNav.itemList}}
                <option {{#active}}selected="selected"{{/active}} data-context="schedule navigation" data-label="{{ctaLabel}}" value="{{ctaLink}}">{{ctaLabel}}</option>
              {{/page.onDemandNav.itemList}}
            </select>
            <ul class="secondary-nav__list">
              {{#page.onDemandNav.itemList}}
                <li class="secondary-nav__item {{#active}}secondary-nav__item--active{{/active}}">{{^active}}<a href="{{ctaLink}}" data-track data-label="{{ctaLabel}}">{{/active}}{{ctaLabel}}{{^active}}</a>{{/active}}</li>
              {{/page.onDemandNav.itemList}}
            </ul>
            <a href="/schedule" class="secondary-nav__link" data-track data-label="schedule:linear">See Schedule</a>
          </div>
        </nav>
      {{/secondaryNav}}
    {{/partials/_global_navigation }}
  {{/nav}}

  {{$content}}
    {{#page}}
      {{#if featured.tileList.size}}
        <section class="section--large" data-context="on demand links:{{featured.heading}}">
          <div class="promo-group-header">
            <h3 class="promo-group-header__title">{{featured.heading}}</h3>
          </div>
          {{#featured.tileList}}
            {{> partials/_link_banner}}
          {{/featured.tileList}}
        </section>
      {{/if}}

      {{#if availableNow.tileList.size}}
        <section class="section--large" data-context="on demand links:{{featured.heading}}">
          <div class="promo-group-header">
            <h3 class="promo-group-header__title">{{availableNow.heading}}</h3>
          </div>
          {{#availableNow.tileList}}
            {{> partials/_link_banner}}
          {{/availableNow.tileList}}
        </section>
      {{/if}}

      {{#onDemandPagination.heading}}
        <section class="section" data-context="on demand links:{{featured.heading}}">
          <div class="promo-group-header">
            <h3 class="promo-group-header__title">{{onDemandPagination.heading}}</h3>
          </div>
        {{#onDemandPagination.tileList}}
          {{> partials/_link_banner}}
        {{/onDemandPagination.tileList}}
        </section>
      {{/onDemandPagination.heading}}

      {{#onDemandPagination.paginationCta.rangeCtaList.1}}
      {{#onDemandPagination.paginationCta}}
        <section class="section">
          {{> partials/_pagination}}
        </section>
      {{/onDemandPagination.paginationCta}}
      {{/onDemandPagination.paginationCta.rangeCtaList.1}}

    {{/page}}
  {{/content}}
{{/ layouts/default}}
