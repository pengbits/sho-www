{{!-- draw the cta item partial for either a single entry or an array of multiple ctas --}}
<div class="refresh-hero__cta-list">
  {{^ctaList}}{{#ctaLink}}{{#ctaLabel}}{{> /partials/hero/_hero_refresh_cta}}{{/ctaLabel}}{{/ctaLink}}{{/ctaList}}
  {{#ctaList}}{{> /partials/hero/_hero_refresh_cta}}{{/ctaList}}
</div>