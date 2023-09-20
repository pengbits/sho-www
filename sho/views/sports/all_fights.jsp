{{!--
  # sports all fights
--}}

{{< layouts/default }}
  {{$classnames}}sports-all-fights{{/classnames}}
  {{$meta}}
    {{#page}}
      <title>Showtime Boxing: Fights &amp; Pay Per Views | SHOWTIME</title>
      <meta property="og:title" content="Showtime Boxing: Fights &amp; Pay Per Views | SHOWTIME" />
      <meta name="description" content="Watch the biggest names in boxing now on your computer, tablet, mobile devices and stream to your TV - free with your SHOWTIME subscription." />
      <meta property="og:description" content="Watch the biggest names in boxing now on your computer, tablet, mobile devices and stream to your TV - free with your SHOWTIME subscription." />
      <meta name="page-tracking" content="sho:sports:fights:home" />
      <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsports_1280x640.jpg" />
      <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogsports_1280x640.jpg" />
    {{/page}}
  {{/meta}}
  {{$content}}
    {{#page}}
      {{#primaryHero}}
        <section class="hero {{#primaryHero.panelLink}}hero--panel-link{{/primaryHero.panelLink}}" data-context="hero">
      {{> partials/hero/_hero_inner}}
      {{/primaryHero}}
      {{#upcomingFights}}
        {{#if tileList.size}}
        <section class="section {{$sectionClasses}}{{/sectionClasses}} all-fights--upcoming" data-context="promo group:{{heading}}">
          <div class="promo-group-header">
            <h3 class="promo-group-header__title">{{heading}}</h3>
          </div>
          <div class="slider js-slider slider--from-square slider--no-shaders" data-step="page" data-grid-at="767">
            <a href="#" class="slider__control slider__control--prev">
              <span class="slider__control__label">previous</span>
            </a>
            <div class="slider__container">
              <div class="slider__content">
                <ul class="slider__items promo-group promo-group--to-three-up {{#tileList}}{{#isOrder}}slider__items--order-promo{{/isOrder}}{{/tileList}}">
                  {{#tileList}}
                  {{^isOrder}}
                    <li class="promo promo--docked promo--square promo--large slider__item">
                      <div class="promo__image lazyload" data-bgset="{{imageUrl}}"></div>
                      <div class="promo__body">
                        <h3 class="promo__headline">{{{title}}}</h3>
                        {{#subTitle}}<p class="promo__copy">{{{subTitle}}}</p>{{/subTitle}}
                      </div>
                      <a class="promo__link" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{title}}" data-location="tile {{iter.index}}">{{{title}}}</a>
                    </li>
                  {{/isOrder}}
                  {{/tileList}}
                </ul>
              </div>
            </div>
            <a href="#" class="slider__control slider__control--next">
              <span class="slider__control__label">next</span>
            </a>
          </div>
        </section>
        {{#isOrder}}
        <div class="until-medium">
          {{> partials/order/_order_banner}}
        </div>
        {{/isOrder}}
        {{/if}}
      {{/upcomingFights}}
      </section>
      {{#pastFightsFirstGroup}}
      {{#if tileList.size}}
      <section class="section section--gradient js-read-more" data-mode="block" data-context="promo group:{{heading}}">
        <div class="promo-group-header">
          <h3 class="promo-group-header__title">{{heading}}</h3>
        </div>
        <div class="section--inner promo-group promo-group--from-list promo-group--to-three-up {{#pastFightsMoreGroup.tileList.0}}promo-group--read-more{{/pastFightsMoreGroup.tileList.0}}">
          {{#pastFightsFirstGroup}}
          {{#tileList}}
          <figure class="promo promo--square promo--docked promo--large promo--list-view">
            <div class="promo__image lazyload" data-bgset="{{imageUrl}}"></div>
            <figcaption class="promo__body">
              <h3 class="promo__headline">{{{title}}}</h3>
              {{#subTitle}}<p class="promo__copy">{{{subTitle}}}</p>{{/subTitle}}
            </figcaption>
            <a class="promo__link" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{{title}}}" data-location="tile {{iter.index}}"></a>
            <a class="promo--list-view__item" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{{title}}}" data-location="tile {{iter.index}}">
              <h5 class="promo--list-view__item__title promo--list-view__item__title--ellipsis">{{{title}}}</h5>
              {{#subTitle}}<h6 class="promo--list-view__item__sub-title">{{{subTitle}}}</h6>{{/subTitle}}
              <i class="promo--list-view__item__more"></i>
            </a>
          </figure>
          {{/tileList}}
          {{/pastFightsFirstGroup}}
        </div>
        {{#if pastFightsMoreGroup.tileList.size}}
        <div class="section--inner promo-group promo-group--from-list promo-group--to-three-up promo-group--read-more read-more__content" data-context="promo group:{{heading}} more">
          {{#pastFightsMoreGroup}}
          {{#tileList}}
          <figure class="promo promo--square promo--docked promo--large promo--list-view">
            <div class="promo__image lazyload" data-bgset="{{imageUrl}}"></div>
            <figcaption class="promo__body">
              <h3 class="promo__headline">{{{title}}}</h3>
              {{#subTitle}}<p class="promo__copy">{{{subTitle}}}</p>{{/subTitle}}
            </figcaption>
            <a class="promo__link" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{{title}}}" data-location="tile {{iter.index}}"></a>
            <a class="promo--list-view__item" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{{title}}}" data-location="tile {{iter.index}}">
              <h5 class="promo--list-view__item__title">{{{title}}}</h5>
              {{#subTitle}}<h6 class="promo--list-view__item__sub-title">{{{subTitle}}}</h6>{{/subTitle}}
              <i class="promo--list-view__item__more"></i>
            </a>
          </figure>
          {{/tileList}}
          {{/pastFightsMoreGroup}}
        </div>
        <div class="read-more"> <a class="read-more__toggle" data-track data-label="view more">View More</a></div>
        {{/if}}
      </section>
      {{/if}}
      {{/pastFightsFirstGroup}}

    {{/page}}
  {{/content}}
{{/ layouts/default}}
