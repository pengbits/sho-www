{{#page.meta.valueMap}}
  {{#pageTitle}}
    <title>{{{pageTitle}}}</title>
    <meta property="og:title" content="{{{pageTitle}}}" />
  {{/pageTitle}}
  {{#pageDescription}}
    <meta name="description" content="{{pageDescription}}" />
    <meta property="og:description" content="{{pageDescription}}" />
  {{/pageDescription}}
  {{#pageTracking}}<meta name="page-tracking" content="{{{pageTracking}}}" />{{/pageTracking}}
  {{#ogImageUrl}}
    <meta property="og:image" content="{{ogImageUrl}}" />
    <meta name="sho:image" content="{{ogImageUrl}}" />
  {{/ogImageUrl}}
{{/page.meta.valueMap}}
