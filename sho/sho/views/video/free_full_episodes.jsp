{{!--
  # video full episodes
--}}

{{< layouts/default }}
  {{$classnames}}full-episodes{{/classnames}}

  {{$meta}}
    {{#page}}
      <title>Watch Free Full Episodes | SHOWTIME</title>
      <meta property="og:title" content="Watch Free Full Episodes | SHOWTIME" />
      <meta name="description" content="Watch free episodes of SHOWTIME originals, including Billions, Dexter: New Blood, Yellowjackets, Your Honor and more." />
      <meta property="og:description" content="Watch free episodes of SHOWTIME originals, including Billions, Dexter: New Blood, Yellowjackets, Your Honor and more." />
      <meta name="page-tracking" content="sho:video:full episodes" />
      <meta property="og:image" content="https://www.sho.com/site/image-bin/images/2_2022_0/2_2022_0_prm-Generic16x9rev1_1920x1080.jpg" />
      <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/2_2022_0/2_2022_0_prm-Generic16x9rev1_1920x1080.jpg" />
    {{/page}}
  {{/meta}}

  {{$content}}
    {{#page}}

     {{#freeFullEpisodesView}}
        <section class="hero hero--no-accent hero--no-subtitle  {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}">
          {{#heroView}}
            {{> partials/hero/_hero_refresh_inner}}
          {{/heroView}}
          <div class="promo-group-header">
            <h3 class="promo-group-header__title">{{tileGroup.heading}}</h3>
          </div>
          <div class="promo-group promo-group--one-two-three section--inner" data-context="promo group:{{tileGroup.heading}}">
            {{#tileGroup.tileList}}
              {{#isOrder}}
              {{/isOrder}}
              {{^isOrder}}
                {{> partials/_promo_landscape }}
              {{/isOrder}}
            {{/tileGroup.tileList}}
          </div>
        
          {{#page.orderTile}}
            {{> partials/order/_order_banner}}
          {{/page.orderTile}}

          {{#promoTileGroup}}
            {{#tileList.0}}
              <section class="section--gradient" id="secondary-promos">
                {{#tileList.0}}
                  <div class="promo-group-header">
                    <h3 class="promo-group-header__title">{{heading}}</h3>
                  </div>
                {{/tileList.0}}
                  <div class="promo-group promo-group--one-two-three section--inner" data-context="promo group:{{tileGroup.heading}}">
                    {{#tileList}}
                      {{#isOrder}}
                      {{/isOrder}}
                      {{^isOrder}}
                        {{> partials/_promo_landscape }}
                      {{/isOrder}}
                    {{/tileList}}
                  </div>
                </section>
              {{/tileList.0}}
						{{/promoTileGroup}}
        </section>
      {{/freeFullEpisodesView}}

    {{/page}}
  {{/content}}
{{/ layouts/default}}
