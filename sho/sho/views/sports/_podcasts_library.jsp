{{!
---
name: "all podcasts library"
notes: this is based off the slider js component, but remains a static grid on mobie sizes
}}
<section class="all-podcasts section section--pad-more" data-context="promo group:{{heading}}">
    <div class="promo-group-header">
      <h3 class="promo-group-header__title">{{heading}}</h3>
    </div>  
    <div class="slider">              
      <ul class="promo-group promo-group--to-three-up podcast-lib">
        {{#tileList}}
          <li class="promo promo--docked promo--square promo--large slider__item podcast-lib--item">
            <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
            </div>
            <div class="promo__body">
              <h3 class="promo__headline">{{{title}}}</h3>
              {{#subTitle}}<p class="promo__copy">{{{subTitle}}}</p>{{/subTitle}}
            </div>
            <a class="promo__link" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{title}}" data-location="tile {{iter.index}}">{{title}}</a>
          </li>
        {{/tileList}}
      </ul>          
    </div>
  </section>