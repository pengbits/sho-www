{{!
---
name: Store Banner
source: /styleguide/src/store-banner/index.md
}}
<div class="store-banner" data-context="banner">
  <div class="store-banner__inner">
    <div class="store-banner__body">
      <h3 class="store-banner__headline">{{{title}}}</h3>
      <div class="store-banner__button">
        <a href="{{ctaLink}}"{{#isCtaTypeExternal}}data-no-redirect="true" target="_blank" rel="noreferrer"{{/isCtaTypeExternal}} class="button--outline-black js-metrics__shop-promo" data-track data-label="shop">
          {{#ctaLabel}}{{ctaLabel}}{{/ctaLabel}}
          {{^ctaLabel}}SHOP NOW{{/ctaLabel}}
        </a>
      </div>
    </div>
    <div class="store-banner__image lazyload" data-bgset="{{imageUrl}}"></div>

  </div>
</div>
