<section class="section-header--hero">
  <h2 class="section-header--hero__inner">{{$sectionName}}{{/sectionName}}</h2>
</section>

{{^hasVideoBackground}}
  {{#isNotNull smallImageUrl imageUrl logic="and"}}
  <a class="refresh-hero__image lazyload" {{#panelLink}}href="{{panelLink}}" {{#isPanelLinkTypeExternal}}data-no-redirect="true" target="_blank" rel="noreferrer"{{/isPanelLinkTypeExternal}}  data-track data-label="{{#panelLinkType}}{{panelLinkType}}:{{/panelLinkType}}{{title}}" data-location="panel link" {{/panelLink}} data-bgset="{{smallImageUrl}} [--small] | {{imageUrl}}"></a>
  {{/isNotNull}}
{{/hasVideoBackground}}
{{#hasVideoBackground}}
  <div class="refresh-hero__image">
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
{{/hasVideoBackground}}

{{!-- 
# with image
.refresh-hero__body > .refresh-hero__headline__container > .refresh-hero__headline__container__image 

# without
.refresh-hero__body > .refresh-hero__headline.refresh-hero__headline__link
--}}

<div class="refresh-hero__inner">
  <div class="refresh-hero__body__container"> 
    <div class="refresh-hero__body"> 
      {{$showtimeAttribution}}  {{/showtimeAttribution}} 
      {{#panelLink}}<a href="{{panelLink}}" {{#isPanelLinkTypeExternal}}data-no-redirect="true" target="_blank" rel="noreferrer"{{/isPanelLinkTypeExternal}} data-track data-label="{{#panelLinkType}}{{panelLinkType}}:{{/panelLinkType}}{{title}}" data-location="headline link">{{/panelLink}}
        {{^titleImageUrl}}
        <{{$hero_headline_element}}h1{{/hero_headline_element}} class="refresh-hero__headline {{#panelLink}}hero__headline__link{{/panelLink}}">{{{title}}}</{{$hero_headline_element}}h1{{/hero_headline_element}}>
        {{/titleImageUrl}}
        {{#titleImageUrl}}
          <div class="refresh-hero__headline__container">
            <img class="refresh-hero__headline__container__image" src="{{titleImageUrl}}" alt="{{title}}">
          </div>
        {{/titleImageUrl}}
      {{#panelLink}}</a>
      {{/panelLink}}
      {{$seriesDescriptor}}{{/seriesDescriptor}} 
      {{#subTitle}}<div class="refresh-hero__info">{{{subTitle}}}</div>{{/subTitle}}
      {{#topLine}}<div class="refresh-hero__detail">{{{topLine}}}</div>{{/topLine}}
      {{#description}}{{#isNotEq description "<p><br></p>"}}<div class="refresh-hero__detail read-more read-more--clamp read-more--truncated js-read-more" data-mode="inline""><div class="read-more__inner">{{{description}}}</div></div>{{/isNotEq}}{{/description}}
    </div>
  </div>
  {{> /partials/hero/_hero_refresh_ctas }}
</div>