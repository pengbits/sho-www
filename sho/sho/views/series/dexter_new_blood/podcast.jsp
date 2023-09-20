{{!--
# dexter new blood podcast page
--}}

{{< layouts/default }} {{$classnames}}podcast-home{{/classnames}} 
  {{$meta}} 
  {{#page}} 
  <title>{{meta.valueMap.navigationPageName}} - Official Podcast Page | SHOWTIME</title>
  <meta property="og:title" content="{{meta.valueMap.navigationPageName}} - Official Podcast Page | SHOWTIME" />
  <meta name="description" content="{{primaryHero.description}}" />
  <meta property="og:description" content="{{primaryHero.description}}" />
  <meta name="page-tracking" content="sho:series:podcasts:dexter new blood wrap-up with scott reynolds" />
  <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_01_1280x640.jpg" />
  <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_01_1280x640.jpg" />
  <link type="application/rss+xml" rel="alternate" title="{{meta.valueMap.navigationPageName}}"
    {{#subscriptionsTileGroupView.tileList}} {{#iter.isLast}} href="{{ctaLink}}" {{/iter.isLast}}
    {{/subscriptionsTileGroupView.tileList}}>
  {{/page}}
  {{/meta}}

  {{$content}}
  {{#page}}

  <section
    class="hero hero--no-accent {{#primaryHero.heroView.panelLink}}hero--panel-link{{/primaryHero.heroView.panelLink}}"
    data-context="hero">
    {{#primaryHero}}
    {{> partials/hero/_hero_inner}}
    {{/primaryHero}}

    {{#subscriptionsTileGroupView}}
    <section class="section section--large section--inner">
      <div class="subscription-list" data-track data-context="podcasts:subscribe">
        <div class="subscription-list__item--headline">Subscribe</div>
        {{#tileList}}
        <a href="{{ctaLink}}"
          class="subscription-list__item--img subscription-list__item--feed-{{subTitle}} button--solid-dark-blue"
          data-label="{{ctaLabel}}" style="background-image:url({{smallImageUrl}})"></a>
        {{/tileList}}
      </div>
    </section>
    {{/subscriptionsTileGroupView}}

    {{#episodesTileGroupView}}
    <h3 id="podcasts-episodes" class="section-header section-header--border">Episodes</h3>
    <section class="section section--large section--inner">
      <div class="podcast-list">
        {{#tileList}}
        <div class="podcast-list__item data-track" data-context="podcasts:episodes">
          <div class="podcast-list__item__field--title">
            <a {{#ctaLink}}href="{{ctaLink}}" {{/ctaLink}} class="podcast-list__item__field--link"
              data-label="{{title}}">{{{title}}}</a>
          </div>
          <div class="podcast-list__item__field--date">{{{topLine}}}<span class="podcast-list__item--separator">| </span>
          </div>
          <div class="podcast-list__item__field--time">{{{subTitle}}}</div>
        </div>
        <div class="podcast-list__divider"></div>
        {{/tileList}}
      </div>
    </section>
    {{/episodesTileGroupView}}
  </section>
  
  {{/page}}
  {{/content}}
  {{/ layouts/default}}