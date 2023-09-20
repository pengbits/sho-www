{{!
---
name: Promo Group Slider from Stack
source: /styleguide/src/promo-group/index.md
description: originally used in the bloody-good page, this promo-group presents as a simple stack of landscape promos on mobile and a slider on desktop 
}}

<section class="section {{$sectionClasses}}{{/sectionClasses}} section--pad-more" id="{{$sectionId}}{{/sectionId}}" data-context="promo group:{{heading}}">
  <div class="promo-group-header">
    <h3 class="promo-group-header__title">{{heading}}</h3>
  </div>
  <div class="slider js-slider slider--season slider--from-stack slider--no-shaders" data-grid-until="768" data-debug="false" data-step="page">
    <a href="#" class="slider__control slider__control--prev">
      <span class="slider__control__label">previous</span>
    </a>
    <div class="slider__container">
      <div class="slider__content">
        <ul class="slider__items">
          {{#tileList}}
            <li class="slider__item">
              {{> partials/_promo_landscape }}
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