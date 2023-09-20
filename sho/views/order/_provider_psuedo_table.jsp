{{#page}}
<section class="pseudo-table-container js-provider-pseudo-table section--inner {{$className}}{{/className}}">
  {{#featuredProviders.0}}<h3 class="header pseudo-table__header">Just Want SHOWTIME:</h3>{{/featuredProviders.0}}
  <div class="pseudo-table pseudo-table--primary">
    {{#featuredProviders}}
    <div class="pt-provider pt-provider--primary pt-provider--{{providerId}}">
      <div class="pt-provider__sub-container">
        <img class="pt-provider__img" alt="{{name}}" src="https://www.sho.com{{$logo_prefix}}/assets/images/order/tray/provider-logos/{{/logo_prefix}}{{providerId}}.png"/>
        <h4 class="pt-provider__name">{{{name}}}</h4>
        <div class="pt-provider__copy">
          <p>{{{description}}}</p>
        </div>
      </div>
      <div class="pt-provider__sub-container">
        {{#providerLeadUrl}}
        <a target="_blank" rel="noopener noreferrer" href="{{providerLeadUrl}}" class="pt-provider__button" data-track data-context="provider list:featured" data-label="provider lead" data-provider-id="{{providerId}}">{{providerLeadText}}</a>
        {{/providerLeadUrl}}
      </div>
    </div>
    {{/featuredProviders}}
  </div>
  {{#providers.0}}
  <div class="pseudo-table__toggle pseudo-table__toggle--top">
    <a class="pseudo-table__toggle-button js-toggle-button" data-track data-context="provider list:additional" data-label="see more">
      See Even More Ways to Buy
    </a>
  </div>
  <div class="pseudo-table pseudo-table--secondary" data-context="provider list:additional">
    {{#providers}}
    <div class="pt-provider pt-provider--secondary">
      <div class="pt-provider__sub-container">
        <img class="pt-provider__img" alt={{name}} src="https://www.sho.com{{$logo_prefix}}/assets/images/order/tray/provider-logos/black-and-white/{{/logo_prefix}}{{providerId}}_BW.png"/>
        <h4 class="pt-provider__name">{{{name}}}</h4>
        <div class="pt-provider__copy">
          <p>{{{description}}}</p>
        </div>
      </div>
      <div class="pt-provider__sub-container">
        {{#providerLeadUrl}}
        <a target="_blank" rel="noopener noreferrer" href="{{providerLeadUrl}}" class="pt-provider__button" data-track data-label="provider lead" data-provider-id="{{providerId}}">{{providerLeadText}}</a>
        {{/providerLeadUrl}}
      </div>
    </div>
    {{/providers}}
    <div class="pseudo-table__toggle pseudo-table__toggle--bottom">
      <a class="pseudo-table__toggle-button js-toggle-button" data-track data-label="see less">
        See Less
      </a>
    </div>
  </div>
  {{/providers.0}}
</section>
{{/page}}