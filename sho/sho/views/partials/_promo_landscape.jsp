{{#type}}
<div class="promo promo--valign promo--{{type}} promo--docked promo--landscape">
{{/type}}
{{^type}}
<div class="promo promo--docked promo--landscape">           
{{/type}}
  <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
  </div>
  <div class="promo__body">
    <div class="promo__details">
      <h3 class="promo__headline">{{{title}}}</h3>
      {{#this.subTitle}}<p class="promo__copy">{{{.}}}</p>{{/this.subTitle}}
      {{#this.topLine}}<p class="promo__topline">{{{.}}}</p>{{/this.topLine}}
    </div>
  </div>
  {{#ctaLink}}<a class="promo__link" href="{{ctaLink}}" {{#isCtaTypeExternal}}data-no-redirect="true" target="_blank" rel="noreferrer"{{/isCtaTypeExternal}}  data-track data-label="{{ctaType}}:{{title}}" data-location="tile {{iter.index}}">{{title}}</a>{{/ctaLink}}
  {{^ctaLink}}<span class="promo__link">{{title}}</span>{{/ctaLink}}
</div>  