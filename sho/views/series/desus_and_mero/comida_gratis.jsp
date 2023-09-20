{{!--
  # custom page for desus and mero: comida gratis
--}}

{{< layouts/default }}
    {{$classnames}}series-home{{/classnames}}

    {{$meta}}
      {{#page}}
        {{#meta.valueMap}}
          <title>DESUS &amp; MERO - Comida Gratis | SHOWTIME</title>
          <meta property="og:title" content="DESUS &amp; MERO - Comida Gratis | SHOWTIME" />
          <meta name="description" content="SHOWTIME and DESUS &amp; MERO are partnering with City Harvest and NY Forever to fill community fridges to raise awareness about food insecurity." />
          <meta property="og:description" content="SHOWTIME and DESUS &amp; MERO are partnering with City Harvest and NY Forever to fill community fridges to raise awareness about food insecurity." />
          <meta name="page-tracking" content="sho:series:desus & mero:comida gratis" />
          <meta property="og:image" content="{{ogImageUrl}}" />
          <meta name="sho:image" content="{{ogImageUrl}}" />
          <meta name="streaming-modal-image" content="{{streamingModalImage}}" />
        {{/meta.valueMap}}
      {{/page}}
    {{/meta}}

    {{$content}}
      <section class="hero hero--no-description {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero">
        {{#page.primaryHero.heroView}}
          {{> partials/hero/_hero_inner}}
        {{/page.primaryHero.heroView}}
        <style>.hero__body { padding-bottom: 20px; }
          .press-release__copy {  color:#fff; }
          </style>
          <section class="section section--inner" style="margin-bottom:0px">  
            <p class="press-release__copy">Nearly 1.5 million New Yorkers, including one in five children, don’t know where their next meal will come from.</p>
            <p class="press-release__copy">Even before the pandemic, far too many New Yorkers were struggling with food insecurity. Over the past 18 months, the situation has only become even more dire with food insecurity rates increasing 36% overall in NYC and an alarming 46% among NYC children.</p>
            <p class="press-release__copy">New Yorkers have been hard at work organizing within their communities to provide support to their neighbors, including a growing network of volunteer-led fridges offering free, nutritious food at all hours of the day. Set up in highly-trafficked locations and working in partnership with local businesses and organizations, these community fridges allow all community members to take what they can without judgement or proof of need and leave what they can. The fridges provide thousands of New Yorkers direct support, heightening the visibility of food insecurity across all five boroughs and offering an innovative solution to reduce unnecessary food waste.</p>
            <p class="press-release__copy">This is New York at its best. Neighbors helping neighbors.</p>     
            <p class="press-release__copy">Starting the week of October 11th SHOWTIME®, Desus & Mero, City Harvest and NY Forever are partnering to fill 80+ refrigerators across NYC to raise awareness of the food insecurity crisis in NYC.</p>
            <p class="press-release__copy">No New Yorker—no matter who they are or where they come from— should have to worry about where to find their next meal.</p>     
            <p class="press-release__copy">City Harvest has been combatting food insecurity every day since 1982, rescuing and delivering more than 1 billion pounds of food, free of charge, to New Yorkers in need -- including more than 200 million pounds since the start of the pandemic.</p>
            <p class="press-release__copy">NY Forever is a non-profit committed to championing New York City and getting every New Yorker engaged in its recovery. Take the <a href="https://www.nyforever.nyc/pledge">NYForever pledge</a> and commit to New York's future, because New York is worth it.</p>
          </section>
        <div class="promo-group promo-group--to-three-up section--inner" data-context="hero">
          {{#page.primaryHero.tileGroup.tileList}}
            <figure class="promo promo--{{type}} promo--docked {{^iter.isFirst}}promo--split-right{{/iter.isFirst}}">
              <div class="promo__image lazyload" data-bgset="{{smallImageUrl}} [--small] |  {{imageUrl}}">
              </div>
              <figcaption class="promo__body">
                <h3 class="promo__headline">{{{title}}}</h3>
              </figcaption>
              <a class="promo__link" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{title}}" data-location="tile {{iter.index}}">{{{title}}}</a>
            </figure>
          {{/page.primaryHero.tileGroup.tileList}}
        </div>
      </section>
      {{#page}}
        {{#popularSeriesGroup}}
          {{> series/partials/_series_slider}}
        {{/popularSeriesGroup}}
      {{/page}}
    {{/content}}
{{/ layouts/default}}
