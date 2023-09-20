{{!
---
name: entire sho library
source: /styleguide/src/promo-group/index.md
}}

<!-- the last promo returned is expected to be an order promo -->
<section class="entire-sho-library">
  <h3 class="section-header">{{heading}}</h3>
  <section class="promo-group promo-group--from-list promo-group--to-three-up">
    {{#tileList}}
      {{^isOrder}}
        <figure class="promo promo--square promo--docked promo--large">
          <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
          </div>
          <figcaption class="promo__body">
            <h3 class="promo__headline">{{{title}}}</h3>
          </figcaption>
          <a class="promo__link" href="{{ctaLink}}" data-track data-context="library footer" data-label="{{title}}:{{subTitle}}" data-location="tile {{iter.index}}">{{title}}</a>
        </figure>
      {{/isOrder}}
      {{#isOrder}}
        <section class="refresh-order-banner--promo refresh-order-banner--no-image refresh-order-banner section--inner">
          <div class="refresh-order-banner__inner" data-context="library footer">
            <div class="refresh-order-banner__body">
              <h3 class="refresh-order-banner__headline">{{{title}}}</h3>
              {{#subTitle}}<p class="order-promo__copy">{{{subTitle}}}</p>{{/subTitle}}
              <a href="{{ctaLink}}" data-track data-label="order" class="refresh-order-banner__button">{{ctaLabel}}</a>
            </div>
          </div>
        </section>
      {{/isOrder}}
    {{/tileList}}
  </section>
</section>
