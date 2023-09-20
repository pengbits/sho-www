{{#hasVideoBackground}}
  <div class="refresh-hero__image refresh-hero__image--video">
    <video id="video-player-{{videoId}}" 
      class="video-background video-background--bcplayer js-video-background"
      style="position:absolute;" 
      data-account="63128" 
      data-player="NzCF8EByd" 
      data-embed="default" 
      data-video-id="{{videoId}}"
      data-age-gate="0" 
      data-full-episode="false" 
      controls="false" 
      loop 
      autoplay 
      muted 
      playsinline
      poster="{{imageUrl}}">
    </video>
  </div>
  {{$hero_image}}{{/hero_image}}
{{/hasVideoBackground}}
<div class="refresh-hero__inner">
  <div class="refresh-hero__body">   
    <h1 class="refresh-hero__headline">{{{title}}}</h1>
    <div class="refresh-hero__detail">
      {{#subTitle}}<div class="refresh-hero__subtitle">{{{subTitle}}}</div>{{/subTitle}}
      {{#description}}{{#isNotEq description "<p><br></p>"}}<div class="refresh-hero__description"><div class="read-more__inner">{{{description}}}</div></div>{{/isNotEq}}{{/description}}
      <a class="refresh-hero__cta button--secondary button--link" href="{{ctaLink}}" data-track data-location="hero" data-label="{{ctaLabel}}" data-provider-id="198" {{#isCtaTypeExternal}}data-no-redirect="true" target="_blank" rel="noreferrer"{{/isCtaTypeExternal}}>{{ctaLabel}}</a>
    </div>
  </div>
</div>