{{!
---
name: Hero
source: /styleguide/src/hero/index.md
notes: data-context MUST be defined higher in DOM, in calling context, for analytics to work.
--}}

{{#navigationLink}}
<div class="hero__navigation-container">
	{{#previous}}
	<a class="hero__navigation hero__navigation--previous" href="{{previous.ctaLink}}" data-track data-label="arrow" data-location="left">
	  <i class="icon icon--medium icon--prev-medium"></i>
	  <span class="hero__navigation__detail">{{#previous.headerCtaLabel}}{{previous.headerCtaLabel}}<br/>{{/previous.headerCtaLabel}}{{previous.ctaLabel}}</span>
	</a>
	{{/previous}}
	{{#next}}
	<a class="hero__navigation hero__navigation--next" href="{{next.ctaLink}}" data-track data-label="arrow" data-location="right">
	  <span class="hero__navigation__detail">{{#next.headerCtaLabel}}{{next.headerCtaLabel}}<br/>{{/next.headerCtaLabel}}{{next.ctaLabel}}</span>
	  <i class="icon icon--medium icon--next-medium"></i>
	</a>
	{{/next}}
</div>
{{/navigationLink}}

{{^hasVideoBackground}}
  {{#isNotNull smallImageUrl imageUrl logic="and"}}
    <a class="hero__image lazyload" {{#panelLink}}href="{{panelLink}}" data-track data-label="{{#panelLinkType}}{{panelLinkType}}:{{/panelLinkType}}{{{title}}}" data-location="panel link" {{/panelLink}}  data-bgset="{{smallImageUrl}} [--small] |  {{imageUrl}}">
    </a>
  {{/isNotNull}}
{{/hasVideoBackground}}
{{#hasVideoBackground}}
  <div class="hero__image">
    <video id="video-player-{{description}}" 
      class="video-background video-background--bcplayer js-video-background"
      style="position:absolute;" 
      data-account="63128" 
      data-player="NzCF8EByd" 
      data-embed="default" 
      data-video-id="{{description}}"
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

<div class="hero__inner{{#isNull smallImageUrl imageUrl logic="or"}}--short{{/isNull}}">
  <div class="hero__body">
    {{$hero__headers}}
      {{#topLine}}<div class="hero__top-line">{{{topLine}}}</div>{{/topLine}}
      <{{$hero_headline_element}}h1{{/hero_headline_element}} class="hero__headline">
        {{#panelLink}}<a class="hero__headline__link" href="{{panelLink}}" data-track data-label="{{#panelLinkType}}{{panelLinkType}}:{{/panelLinkType}}{{title}}" data-location="panel link">{{/panelLink}}{{{title}}}{{#panelLink}}</a>
        {{/panelLink}}
      </{{$hero_headline_element}}h1{{/hero_headline_element}}>
    {{/hero__headers}}
    {{#subTitle}}<p class="hero__subtitle">{{{subTitle}}}</p>{{/subTitle}}
    {{#tuneIn}}<div class="hero__info">{{tuneIn}}</div>{{/tuneIn}}
    {{#description}}{{#isNotEq description "<p><br></p>"}}<div class="hero__description">{{^hasVideoBackground}}{{{description}}}{{/hasVideoBackground}}</div>{{/isNotEq}}{{/description}}
    <!--{{#ctaLink}}{{#ctaLabel}}<a class="button--secondary  button--{{type}}" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{ctaLabel}}" data-location="cta">{{ctaLabel}}</a>{{/ctaLabel}}{{/ctaLink}}-->
  </div>
  {{#panelLink}}
  <a class="hero__shim" href="{{panelLink}}" data-track data-label="{{#panelLinkType}}{{panelLinkType}}:{{/panelLinkType}}{{title}}" data-location="panel link"></a>
  {{/panelLink}}
</div>

