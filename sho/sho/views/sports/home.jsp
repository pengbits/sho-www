{{!--
  # sports home page
--}}

{{< layouts/default }}
  {{$classnames}}sports-home{{/classnames}}

  {{$meta}}
    {{#page}}
      <title>SHOWTIME Sports: Boxing, Football, MMA &amp; More | SHOWTIME</title>
      <meta property="og:title" content="SHOWTIME Sports: Boxing, Football, MMA &amp; More | SHOWTIME" />
      <meta name="description" content="Take a deep dive into sports with Original Series like Inside the NFL, 60 Minutes Sports and All Access. Plus watch SHOWTIME Championship Boxing live." />
      <meta property="og:description" content="Take a deep dive into sports with Original Series like Inside the NFL, 60 Minutes Sports and All Access. Plus watch SHOWTIME Championship Boxing live." />
      <meta name="page-tracking" content="sho:sports:home" />
      <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsports_1280x640.jpg" />
      <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsports_1280x640.jpg" />
    {{/page}}
  {{/meta}}

  {{$content}}
    {{#page}}

      {{#primaryHero}}
        <section class="refresh-hero {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero">
          {{#heroView}}
            {{> partials/hero/_hero_refresh_inner}}
          {{/heroView}}        
      {{/primaryHero}}

        {{#boxingTileGroup}}
            <section class="section" data-context="promo group:{{heading}}">
              <div class="promo-group-header">
                <h3 class="promo-group-header__title promo-group-header__title--large">{{heading}}</h3>
              </div>
              <a class="section-header section-header--more" href="/sports/fights" data-track data-label="view all">
              See All Fights
              </a>
              <div class="promo-group promo-group--to-three-up section--inner" data-context="promo group:{{tileGroup.heading}}">
                {{#tileList}}
                <figure 
                  class="promo {{#type}}promo--{{.}}{{/type}} promo--valign promo--docked promo--landscape-to-square {{^iter.isFirst}}promo--split-right{{/iter.isFirst}}">
                  <div class="promo__image lazyload" data-bgset="{{smallImageUrl}} [--small] |  {{imageUrl}}">
                  </div>
                  <figcaption class="promo__body">
                    <div class="promo__details">
                      <h3 class="promo__headline">{{{title}}}</h3>
                      {{#subTitle}}<p class="promo__copy">{{{subTitle}}}</p>{{/subTitle}}
                    </div>
                  </figcaption>
                  <a class="promo__link" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{title}}" data-location="tile {{iter.index}}"></a>
                </figure>
                {{/tileList}}
              </div>
            </section>
        {{/boxingTileGroup}}
        </section> 

      {{#page.orderTile}}
        {{< partials/order/_order_banner_legacy}}
          {{$className}}order-banner--{{description}} section--inner{{/className}}
        {{/partials/order/_order_banner_legacy}}
      {{/page.orderTile}}

      {{#primaryHero}}
      {{#heroView}}
      <section class="section">
        <div class="promo-group-header">
          <h3 class="promo-group-header__title">{{tileGroup.heading}}</h3>
        </div>
        <div class="promo-group promo-group--to-three-up section--inner" data-context="promo group:{{tileGroup.heading}}">
          {{#tileGroup.tileList}}
            {{> partials/_promo_landscape }}
          {{/tileGroup.tileList}}
        </div>
      </section>
      {{/heroView}}
      {{/primaryHero}}
      
      {{#seriesHero}}
        <section class="section refresh-hero {{#seriesHero.heroView.videoTile}}hero--promo-video{{/seriesHero.heroView.videoTile}} {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero:series">
        {{#seriesHero.heroView}}
          {{> partials/hero/_hero_refresh_inner}}
        {{/seriesHero.heroView}}
          <div class="section section--pad-more">
            {{> partials/slider/_slider_square_grid}}
          </div>
        </section>
      {{/seriesHero}}

      {{#docsHero}}
        <section class="section refresh-hero {{#docsHero.heroView.videoTile}}hero--promo-video{{/docsHero.heroView.videoTile}} {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero:documentaries">
          {{#docsHero.heroView}}
            {{> partials/hero/_hero_refresh_inner}}
          {{/docsHero.heroView}}
         <div class="section--pad-more">
            {{> partials/slider/_slider_square_grid}}
         <div>
        </section>
      {{/docsHero}}

    {{/page}}
  {{/content}}
{{/ layouts/default}}
