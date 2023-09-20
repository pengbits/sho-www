<section data-context="hero" class="hero hero--stream-showtime hero--video-bg">
  {{$hero_logo}}
  <a class="hero__logo-link" href="/" data-track data-context="global navigation" data-label="home">
    <img class="hero__logo" src="/www/sho/lib/assets/svg/showtime-logo-red.svg" />
  </a>
  {{/hero_logo}}
  {{#page.hero}}
    {{^hasVideoBackground}}
    <div class="hero__image lazyload" data-bgset="{{page.hero.smallImageUrl}} [--small] |  {{page.hero.imageUrl}}"></div>
    {{/hasVideoBackground}}
    {{#hasVideoBackground}}
    <div class="hero__image">
      <video id="video-player-{{page.hero.description}}" 
        class="video-background video-background--bcplayer js-video-background" 
        style="position:absolute;"
        data-account="63128" 
        data-player="NzCF8EByd" 
        data-embed="default" 
        data-video-id="{{page.hero.description}}" 
        data-age-gate="0"
        data-full-episode="false" 
        controls="false" 
        loop 
        autoplay 
        muted 
        playsinline 
        poster="{{page.hero.imageUrl}}">
      </video>
    </div>
    {{/hasVideoBackground}}
  {{/page.hero}}
  <div class="stream-showtime__hero hero__inner">
    <h1 class="hero__headline stream-showtime__hero-header js-format-symbols">{{$hero_title}}{{{page.hero.title}}}{{/hero_title}}</h1>
    <h3 class="stream-showtime__hero-copy js-format-symbols">{{$hero_subTitle}}{{page.hero.subTitle}}{{/hero_subTitle}}</h3>
  </div>
</section>