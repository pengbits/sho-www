{{!
---
name: Link Banner
source: /styleguide/src/link-banner/index.md
note: data-context MUST be defined higher in DOM, in calling context, for analytics to work 
}}

<div class="link-banner">
  <a class="link-banner__link  {{#iter.isLast}}link-banner__link--last{{/iter.isLast}} {{^ctaLink}}link-banner__link--no-link{{/ctaLink}}" {{#ctaLink}} href="{{ctaLink}}" {{/ctaLink}} data-track data-label="{{ctaType}}:{{title}}:{{subTitle}}" data-location="tile {{iter.index}}">
    <img class="link-banner__image" src="{{imageUrl}}">
    <div class="link-banner__title-container">
      <h3 class="link-banner__title">{{{title}}}</h3>
      <h4 class="link-banner__sub-title">{{{subTitle}}}</h4>
    </div>
    <h5 class="link-banner__availability">{{scheduleCallOut}}</h5>
    <h4 class="link-banner__info link-banner__info--highlight">{{ctaLabel}}</h4>
  <i class="link-banner__more"></i>
  </a>
</div> 