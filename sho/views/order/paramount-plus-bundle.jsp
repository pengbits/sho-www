{{!-- 
  paramount plus bundle page 
  /paramount-plus-bundle
--}}
{{< layouts/default }}

  {{$classnames}}pplus-bundle{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>Bundle SHOWTIME and Paramount+</title>
        <meta property="og:title" content="Bundle SHOWTIME and Paramount+" />
        <meta name="description" content="The biggest shows & movies are on Paramount+ and SHOWTIME. Everything you want. Now together. Try it Free." />
        <meta property="og:description" content="The biggest shows & movies are on Paramount+ and SHOWTIME. Everything you want. Now together. Try it Free." />
        <meta name="page-tracking" content="sho:order:paramount-plus-bundle" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsho_1280x640.jpg" />
      {{/page}}
    {{/meta}}

    {{$nav}}{{/nav}}
    {{$content}}   
    {{#page}}
      {{#hero}}
        {{> order/pplus_bundle/_peekaboo_banner }}
      {{/hero}}

      <section class="hero hero--no-accent pplus-hero pplus-hero--featured {{#hero.panelLink}}hero--panel-link{{/hero.panelLink}}" data-context="hero">
        {{#hero}}
        <!-- hardcoded this instead of using the partial because we need to include provider-lead which is not used in the hero partial -->
          {{#navigationLink}}
            <div class="hero__navigation-container">
              {{#previous}}
              <a class="hero__navigation hero__navigation--previous" href="{{previous.ctaLink}}" data-track data-label="arrow" data-location="left">
                <i class="icon icon--medium icon--prev-medium"></i>
                <span class="hero__navigation__detail">{{#previous.headerCtaLabel}}{{previous.headerCtaLabel}}<br/>{{/previous.headerCtaLabel}}{{previous.ctaLabel}}</span>
              </a>
              {{/previous}}
              {{#next}}
              <a class="hero__navigation hero__navigation--next" href="{{next.ctaLink}}" data-track data-label="arrow" data-location="right">
                <span class="hero__navigation__detail">{{#next.headerCtaLabel}}{{next.headerCtaLabel}}<br/>{{/next.headerCtaLabel}}{{next.ctaLabel}}</span>
                <i class="icon icon--medium icon--next-medium"></i>
              </a>
              {{/next}}
            </div>
          {{/navigationLink}}
          
          {{^hasVideoBackground}}
            {{#isNotNull smallImageUrl imageUrl logic="and"}}
              <a class="hero__image lazyload" {{#panelLink}}href="{{panelLink}}" data-track data-label="{{#panelLinkType}}{{panelLinkType}}:{{/panelLinkType}}{{title}}" data-location="panel link" {{/panelLink}}  data-bgset="{{smallImageUrl}} [--small] |  {{imageUrl}}">
              </a>
            {{/isNotNull}}
          {{/hasVideoBackground}}
          {{#hasVideoBackground}}
            <div class="hero__image">
              <video id="video-player-{{videoId}}" 
                class="video-background video-background--bcplayer js-video-background"
                style="position:absolute;" 
                data-account="63128" 
                data-player="NzCF8EByd" 
                data-embed="default" 
                data-video-id="{{videoId}}"
                data-age-gate="0" 
                data-full-episode="false" 
                controls="false" 
                loop 
                autoplay 
                muted 
                playsinline
                poster="{{imageUrl}}">
              </video>
            </div>
          {{/hasVideoBackground}}
          
          <div class="hero__inner{{#isNull smallImageUrl imageUrl logic="or"}}--short{{/isNull}}">
            <div class="hero__body">
              {{$hero__headers}}
                {{#topLine}}<div class="hero__top-line">{{{topLine}}}</div>{{/topLine}}
                <{{$hero_headline_element}}h1{{/hero_headline_element}} class="hero__headline">
                  {{#panelLink}}<a class="hero__headline__link" href="{{panelLink}}" data-track data-label="{{#panelLinkType}}{{panelLinkType}}:{{/panelLinkType}}{{title}}" data-location="panel link">{{/panelLink}}{{{title}}}{{#panelLink}}</a>
                  {{/panelLink}}
                </{{$hero_headline_element}}h1{{/hero_headline_element}}>
              {{/hero__headers}}
          
              {{#subTitle}}<p class="hero__subtitle">{{{subTitle}}}</p>{{/subTitle}}
              {{#description}}<div class="hero__description">{{^hasVideoBackground}}{{{description}}}{{/hasVideoBackground}}</div>{{/description}}
              {{#ctaLink}}{{#ctaLabel}}<a class="hero__cta" href="{{ctaLink}}" data-track data-label="{{ctaLabel}}" data-provider-id="198" data-location="cta" {{#isCtaTypeExternal}}data-no-redirect="true" target="_blank" rel="noreferrer"{{/isCtaTypeExternal}}>{{ctaLabel}}</a>{{/ctaLabel}}{{/ctaLink}}
            </div>
            {{#panelLink}}
            <a class="hero__shim" href="{{panelLink}}" data-track data-label="{{#panelLinkType}}{{panelLinkType}}:{{/panelLinkType}}{{title}}" data-location="panel link"></a>
            {{/panelLink}}
          </div>
        <span class="peek-a-boo--trigger"></span>
          {{#tileGroup}}
            {{> order/pplus_bundle/_promo_group}}
          {{/tileGroup}}
          {{^tileGroup}}
            <div class="slider-placeholder">
              <div class="slider-placeholder__item"></div>
            </div>
          {{/tileGroup}}
        {{/hero}}
      </section>

      {{#showtimeHero}}
      <section class="hero hero--no-accent pplus-hero pplus-hero--showtime {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero:{{#tileGroup}}{{heading}}{{/tileGroup}}">
        {{#heroView}}
        {{> partials/hero/_hero_inner}}
        {{/heroView}}
        {{#tileGroup}}
        {{> order/pplus_bundle/_promo_group}}
        {{/tileGroup}}
      </section>
      {{/showtimeHero}}
      
      {{#paramountHero}}
      <section class="hero hero--no-accent pplus-hero pplus-hero--paramount {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero:{{#tileGroup}}{{heading}}{{/tileGroup}}">
        {{#heroView}}
        {{> partials/hero/_hero_inner}}
        {{/heroView}}
        {{#tileGroup}}
        {{> order/pplus_bundle/_promo_group}}
        {{/tileGroup}}
      </section>
      {{/paramountHero}}
    
      <section class="pplus-bundle__footer">
      {{> /order/pplus_bundle/_legal }}
      </section>
    
      {{/page}}
  {{/content}}   

{{/ layouts/default }}