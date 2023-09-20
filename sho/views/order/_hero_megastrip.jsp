<section class="hero hero--stream-showtime" data-context="hero">      
  {{!-- [$hero_logo] 
  <a class="hero__logo-link" href="/" data-track data-context="global navigation" data-label="home">
    <img class="hero__logo" src="/www/sho/lib/assets/svg/showtime-logo-red.svg" />
  </a>
  [/hero_logo] --}}
  {{#page.megastripTileGroup}}
  <div class="hero__image">
    {{> /order/_megastrip }}
  </div>
  {{/page.megastripTileGroup}}
  <div class="stream-showtime__hero hero__inner">
    <div class="hero__body">
      <h1 class="hero__headline stream-showtime__hero-header">{{$hero_title}}{{{page.hero.title}}}{{/hero_title}}</h1>
      <h3 class="hero__subtitle stream-showtime__hero-copy">{{$hero_subTitle}}{{{page.hero.subTitle}}}{{/hero_subTitle}}</h3>
    </div>
  </div>
</section> 