<section class="section section--pad-more {{$classNames}}{{/classNames}}" id="{{$sectionId}}{{/sectionId}}"  data-context="promo group:{{heading}}">
    <div class="promo-group-header">
      <h3 class="promo-group-header__title">{{heading}}</h3>
    </div>
    <div class="promo-group-no-slider">
      <div class="promo-group promo-group--to-three-up">
        {{#tileList}}
          <div class="promo promo--docked promo--square promo--large">
            <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
            </div>
            <div class="promo__body">
              <h3 class="promo__headline">{{{title}}}</h3>
              {{#subTitle}}<p class="promo__copy">{{{subTitle}}}</p>{{/subTitle}}
            </div>
            <a class="promo__link" href="{{ctaLink}}" {{#isCtaTypeExternal}}data-no-redirect="true" target="_blank" rel="noreferrer"{{/isCtaTypeExternal}} data-track data-label="{{ctaType}}:{{title}}" data-location="tile {{iter.index}}">{{title}}</a>
          </div>
        {{/tileList}}
      </div>
    </div>
  </section>