{{!
---
name: Series Drawer
source: /styleguide/src/series-drawer/index.md
note: added the clearfix classname below for 7.194.2 because for some reason,
the clearfix that bourbon's outer container applies wasn't working on qa, 
and the full width button was colliding with the collapsed grid SITE-21144
}}

<div class="series-drawer">
  {{#navigationSeriesFlyout}}
  <div class="series-drawer__inner clearfix">
    <div class="catalog-grid">
    {{#featuredSeries}}
    <a class="catalog-grid__image" href="{{ctaLink}}" data-track data-label="series flyout:{{title}}" data-location="featured:tile {{iter.index}}">
      <figure>
        <span class="catalog-grid__image-shim" style="background-image:url({{smallImageUrl}})"></span>
        <p class="catalog-grid__copy">{{{title}}}</p>
      </figure>
    </a>
    {{/featuredSeries}}
    {{/navigationSeriesFlyout}}
    </div>
  </div>
  <div class="series-drawer__see-all-cntr">
    <a class="button--outline-white" href="/series" data-track data-label="series flyout:see all">VIEW ALL SERIES</a>
  </div>
</div>