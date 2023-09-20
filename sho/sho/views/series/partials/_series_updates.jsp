<div class="about-the-series__updates" data-context="{{heading}}">
  <h2 class="block-container__headline">{{heading}}</h2>
  <ul class="block-list block-list--icons-medium">
    {{#tileList}}
    <li class="block-list__item">
      <a href="{{ctaLink}}" {{#isCtaTypeExternal}}data-no-redirect="true" target="_blank" rel="noreferrer"{{/isCtaTypeExternal}} data-track data-label="{{ctaLabel}}">
        <span class="block-list__icon"><i class="icon icon--medium {{#isEq ctaType 'article link'}}icon--text-document-out{{/isEq}}{{#isNotEq ctaType 'article link'}}icon--arrow-up-right{{/isNotEq}}"></i></span>
        <p>{{ctaLabel}}</p>
      </a>
    </li>
    {{/tileList}}
  </ul>
</div>