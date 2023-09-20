<section class="section">
  <div class="slider slider--cast js-slider" data-step="page">
    <a href="#" class="slider__control slider__control--prev">
      <span class="slider__control__label">previous</span>
    </a>
    <div class="slider__container">
      <div class="slider__content">
        <ul class="slider__items">
          {{#tileList}}
          <li class="slider__item">
            <figure class="promo promo--portrait promo--no-overlay">
              <div class="promo__image lazyload" data-bgset="{{smallImageUrl}} [--small] |  {{imageUrl}}">
              </div>
              <span class="promo__link" href="{{ctaLink}}">{{{title}}}</span>
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