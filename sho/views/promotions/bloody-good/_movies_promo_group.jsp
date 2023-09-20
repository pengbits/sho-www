{{#if tileList.size}}
<section class="section section--large" data-context="promo group:{{heading}}">
  <div class="promo-group-header">
    <h3 class="promo-group-header__title">{{heading}}</h3>
  </div>
  <div class="slider slider--portrait slider--from-stack slider--from-two-col slider--no-shaders js-slider" data-grid-until="768" data-step="page">
    <a href="#" class="slider__control slider__control--prev">
      <span class="slider__control__label">previous</span>
    </a>
    <div class="slider__container">
      <div class="slider__content">
        <ul class="slider__items">
          {{#tileList}}
          <li class="slider__item">
            <figure class="promo promo--portrait promo--docked promo--large">
              <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
              </div>
              <div class="promo__body">
                {{#subTitle}}<p class="promo__copy">{{{subTitle}}}</p>{{/subTitle}}
              </div>
              <a class="promo__link" href="{{ctaLink}}" data-track data-label="{{{title}}}"
                data-location="tile {{iter.index}}">{{{title}}}</a>
            </figure>
          </li>
          {{/tileList}}
        </ul>
      </div>
    </div>
    <a href="#" class="slider__control slider__control--next">
      <span class="slider__control__label">next</span>
    </a>
  </div>
</section>
{{/if}}