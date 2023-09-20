<section class="{{$className}}{{/className}} refresh-order-banner section--inner">
  <div class="refresh-order-banner__inner" data-context="order banner">
    <a href="{{ctaLink}}{{$intStreamingCampaign}}{{/intStreamingCampaign}}" class="refresh-order-banner__image-wrapper" data-track 
      {{#this.videoId}}data-label="provider lead" data-provider-id="{{.}}"{{/this.videoId}}
      {{^this.videoId}}data-label="order"{{/this.videoId}}
    >
      <div class="refresh-order-banner__image lazyload" data-bgset="{{imageUrl}}">
      </div>
    </a>
    <div class="refresh-order-banner__body">
      {{#topLine}}<div class="refresh-order-banner__topline">{{{topLine}}}</div>{{/topLine}}
      <h3 class="refresh-order-banner__headline">{{{title}}}</h3> 
      <a href="{{ctaLink}}{{$intStreamingCampaign}}{{/intStreamingCampaign}}" class="refresh-order-banner__button" data-track 
        {{#this.videoId}}data-label="provider lead" data-provider-id="{{.}}"{{/this.videoId}}
        {{^this.videoId}}data-label="order"{{/this.videoId}}
      >{{ctaLabel}}</a>
      {{#subTitle}}<div class="refresh-order-banner__legal">{{{subTitle}}}</div>{{/subTitle}}
    </div>
  </div>
</section>