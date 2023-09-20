{{!--
  # sho.com home
--}}

{{< layouts/default }}
    {{!-- sho-home body classname required for Adobe DTM --}}
    {{$classnames}}sho-home has-nav-exposed has-nav-solid-when-stuck js-notification{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>SHOWTIME Official Site</title>
        <meta property="og:title" content="SHOWTIME Official Site" />
        <meta name="description" content="SHOWTIME official site, featuring Yellowjackets, Billions, Dexter: New Blood, The Chi, and other popular original series. Schedule, episode guides, videos and more." />
        <meta property="og:description" content="SHOWTIME official site, featuring Yellowjackets, Billions, Dexter: New Blood, The Chi, and other popular original series. Schedule, episode guides, videos and more." />
        <meta name="page-tracking" content="sho:home" />
        <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
        <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
      {{/page}}
    {{/meta}}
    
    {{$nav_logo_element}}h1{{/nav_logo_element}}
    {{$hero_headline_element}}div{{/hero_headline_element}}

    {{$content}}
      {{#page}}
          <section class="refresh-hero {{#page.featuredHeroTileView.heroView.panelLink}}hero--panel-link{{/page.featuredHeroTileView.heroView.panelLink}}" data-context="hero">
            {{#page.featuredHeroTileView.heroView}}
              {{> partials/hero/_hero_refresh_inner}}
            {{/page.featuredHeroTileView.heroView}}
            {{#page.featuredHeroTileView.tileGroup.tileList}}
              {{< partials/order/_order_banner}}
                {{$intStreamingCampaign}}?i_cid=int-default-26163{{/intStreamingCampaign}}
              {{/ partials/order/_order_banner}}
            {{/page.featuredHeroTileView.tileGroup.tileList}}
          </section>

        {{#seriesHeroTileView}}
          <section class="refresh-hero refresh-hero--has-header {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero:series">
            {{#heroView}}
              {{< partials/hero/_hero_refresh_inner}}
                {{$sectionName}}Series{{/sectionName}}
              {{/ partials/hero/_hero_refresh_inner}}
            {{/heroView}}
            <div class="section section--extra-large">
              <a class="section-header section-header--more" href="/series" data-track data-label="view all">
                See All Series
              </a>
              {{> partials/slider/_slider_square_grid}}
            </div>
          </section>
        {{/seriesHeroTileView}}

        {{#moviesHeroTileView}}
          <section class="refresh-hero refresh-hero--has-header {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero:movies">
            {{#heroView}}
              {{< partials/hero/_hero_refresh_inner}}
                {{$sectionName}}Movies{{/sectionName}}
              {{/ partials/hero/_hero_refresh_inner}}
            {{/heroView}}
            <div class="section section--extra-large">
              <a class="section-header section-header--more" href="/movies" data-track data-label="view all">
                See All Movies
              </a>
              {{> partials/slider/_slider_square_grid}}
            </div>
          </section>
        {{/moviesHeroTileView}}

        {{#sportsHeroTileView}}
          <section class="refresh-hero refresh-hero--has-header {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero:sports">
            {{#heroView}}
              {{< partials/hero/_hero_refresh_inner}}
                {{$sectionName}}Sports{{/sectionName}}
              {{/ partials/hero/_hero_refresh_inner}}
            {{/heroView}}
            <div class="section section--extra-large">
              <a class="section-header section-header--more" href="/sports" data-track data-label="view all">
                See All Sports
              </a>
              {{> partials/slider/_slider_square_grid}}
            </div>
          </section>
        {{/sportsHeroTileView}}

        {{#documentariesHeroTileView}}
          <section class="refresh-hero refresh-hero--has-header {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero:documentaries">
            {{#heroView}}
              {{< partials/hero/_hero_refresh_inner}}
                {{$sectionName}}Documentaries{{/sectionName}}
              {{/ partials/hero/_hero_refresh_inner}}
            {{/heroView}}
            <div class="section section--extra-large">
              <a class="section-header section-header--more" href="/documentaries" data-track data-label="view all">
                See All Documentaries
              </a>
              {{> partials/slider/_slider_square_grid}}
            </div>
          </section>
        {{/documentariesHeroTileView}}

        {{#comedyHeroTileView}}
          <section class="refresh-hero refresh-hero--has-header {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero:comedy">
            {{#heroView}}
              {{< partials/hero/_hero_refresh_inner}}
                {{$sectionName}}Comedy{{/sectionName}}
              {{/ partials/hero/_hero_refresh_inner}}
            {{/heroView}}
            <div class="section section--large">
              <a class="section-header section-header--more" href="/comedy" data-track data-label="view all">
                See All Comedy
              </a>
              {{> partials/slider/_slider_square_grid}}
            </div>
          </section>
        {{/comedyHeroTileView}}

      {{/page}}

    {{/content}}

    {{$jsFooter}}
      <script type="text/javascript">
      // window.sho_notification = {'message' : 'Our <a href="/terms">Terms of Use</a> have changed effective as of July 12, 2016. By using our services, you consent to the updated <a href="/terms">Terms of Use</a>'}
      </script>
      <script type="application/ld+json">
        {
          "@context": "https://schema.org/",
          "@type": "Organization",
          "name": "Showtime",
          "url": "https://www.sho.com/",
          "logo": "https://www.sho.com/assets/images/lib/showtime-logo-red_160x160.jpg",
          "sameAs": [
            "https://www.facebook.com/showtime",
            "https://twitter.com/Showtime",
            "https://www.instagram.com/showtime",
            "https://www.youtube.com/user/SHOWTIME"
          ]
        }
      </script>
    {{/jsFooter}}
{{/ layouts/default}}
