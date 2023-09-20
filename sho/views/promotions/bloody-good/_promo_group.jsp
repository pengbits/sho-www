{{!
---
name: Promo Group with Header
source: /styleguide/src/promo-group/index.md
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
              {{#type}}
              <div class="promo {{#isEq type "video"}}promo--video{{/isEq}}{{#isNotEq type "video"}}promo--docked promo--landscape{{/isNotEq}}">
              {{/type}}
              {{^type}}
              <div class="promo promo--docked promo--landscape">           
              {{/type}}
                <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
                </div>
                <div class="promo__body">
                  <h3 class="promo__headline">{{{title}}}</h3>
                  {{#subTitle}}<p class="promo__copy">{{{subTitle}}}</p>{{/subTitle}}
                </div>
                {{#ctaLink}}<a class="promo__link" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{title}}" data-location="tile {{iter.index}}">{{title}}</a>{{/ctaLink}}
                {{^ctaLink}}<span class="promo__link">{{title}}</span>{{/ctaLink}}
              </div>  
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