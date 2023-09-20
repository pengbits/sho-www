<div class="slider js-slider slider--square slider--inline" data-step="page">
  <a href="#" class="slider__control slider__control--prev">
    <span class="slider__control__label">previous</span>
  </a>
  <div class="slider__container">
    <div class="slider__content">
      <ul class="slider__items">
        {{#tileGroup.tileList}}
          <li class="promo promo--docked promo--square promo--large slider__item">
            <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
            </div>
            <div class="promo__body">
              <h3 class="promo__headline">{{{title}}}</h3>
              {{#subTitle}}<p class="promo__copy">{{{subTitle}}}</p>{{/subTitle}}
            </div>
            {{#ctaLink}}{{#ctaLabel}}<a class="promo__link" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{title}}" data-location="promo {{iter.index}}">{{title}}</a>}{{/ctaLabel}}{{/ctaLink}}
          </li>
        {{/tileGroup.tileList}}
      </ul>
    </div>
  </div>
  <a href="#" class="slider__control slider__control--next">
    <span class="slider__control__label">next</span>
  </a>
</div>