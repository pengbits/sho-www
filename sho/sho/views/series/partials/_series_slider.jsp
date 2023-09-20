<section class="popular-series" data-context="slider:series">
  <h3 class="section-header section-header--border">{{heading}}</h3>
  <div class="slider slider--portrait slider--dark-grey js-slider" data-step="page">
    <a href="#" class="slider__control slider__control--prev">
      <span class="slider__control__label">previous</span>
    </a>
    <div class="slider__container">
      <div class="slider__content">
        <ul class="slider__items">
          {{#tileList}}
          <li class="slider__item">
            <figure class="promo promo--portrait promo--no-overlay">
              <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
              </div>
              <a class="promo__link" href="{{ctaLink}}" data-track data-context="slider:series" data-label="{{title}}" data-location="tile {{iter.index}}">{{{title}}}</a>
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