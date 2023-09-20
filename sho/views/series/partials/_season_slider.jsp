<section class="section section--large">
  <h3 class="section-header section-header--border">{{heading}}</h3>
  <div class="slider slider--season js-slider" data-step="page">
    <a href="#" class="slider__control slider__control--prev">
      <span class="slider__control__label">previous</span>
    </a>
    <div class="slider__container">
      <div class="slider__content">
        <ul class="slider__items">
          {{#tileList}}
          <li class="slider__item">
            <figure class="promo promo--season">
              <div class="promo__image lazyload" data-bgset="{{smallImageUrl}} [--small] |  {{imageUrl}}">
              </div>
              <figcaption class="promo__body">
                <h3 class="promo__headline">{{{title}}}</h3>
                <p class="promo__copy">{{{subTitle}}}</p>
              </figcaption>
              <a class="promo__link" href="{{ctaLink}}" data-track data-context="slider:season" data-label="{{title}}" data-location="tile {{iter.index}}">{{{title}}}</a>
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
