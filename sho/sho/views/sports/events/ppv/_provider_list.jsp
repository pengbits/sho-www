{{!
---
name: ppv provider list (dynamic)
desc: modified instance of provider list for use in ppv pages
source: /styleguide/src/provider-grid/index.md
}}

<div class="section--inner provider-list-container">
  <div class="js-read-more" data-mode="block">
    <div class="read-more__content">
      <ul class="provider-list" style="text-transform:uppercase;" data-context="ppv providers">
        {{#tileList}}
        <li class="provider-list__item">
          <a {{#ctaLink}} href="{{ctaLink}}" {{/ctaLink}}
            data-track data-context="ppv providers" 
            data-label="{{#isEq title "Showtime"}}order{{/isEq}}{{#isNotEq title "Showtime"}}{{title}}{{/isNotEq}}" 
            data-location="ppv provider full list">
            {{title}}
          </a>
        {{/tileList}}
        </li>
      </ul>
    </div>
    <div class="read-more">
      <a class="read-more__toggle header--epsilon" data-track data-label="see more" data-context="ppv providers" data-location="ppv provider full list">See More Participating TV Providers</a>
    </div>
  </div>
</div>
