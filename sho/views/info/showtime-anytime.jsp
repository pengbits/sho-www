{{!--
  # showtime anytime info page
--}}

{{< layouts/default}}

  {{$classnames}}showtime-anytime{{/classnames}}
    {{$meta}}
      {{#page}}
        <title>SHOWTIME ANYTIME Streaming &amp; App Information | SHOWTIME</title>
        <meta property="og:title" content="SHOWTIME ANYTIME Streaming &amp; App Information | SHOWTIME" />
        <meta name="description" content="Watch SHOWTIME wherever and whenever you want - FREE with your SHOWTIME subscription through participating providers." />
        <meta property="og:description" content="Watch SHOWTIME wherever and whenever you want - FREE with your SHOWTIME subscription through participating providers." />
        <meta name="page-tracking" content="sho:showtime anytime:info page" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-oganytime_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-oganytime_1280x640.jpg" />
      {{/page}}
    {{/meta}}
    {{$content}}
      <!-- hero -->
      <section class="hero showtime-anytime__hero">
        <a class="hero__image lazyload"  
        data-bgset="https://www.sho.com/assets/about/aboutpagehero_568x426.jpg [--small] | https://www.sho.com/assets/about/aboutpagehero_1024x640.jpg"></a>
        <div class="hero__inner">
          <div class="hero__body">
            <img id="showtime-anytime-logo" src="https://www.sho.com/assets/images/showtimeanytime/showtime-anytime.svg" />
            <h1 class="hero__headline">Free with your Showtime subscription.</h1>
            <p class="hero__copy hero__copy--subheadline">Through participating TV providers and streaming services</p>
            <p class="hero__copy">Get instant and unlimited access to commercial-free, award-winning SHOWTIME original series, can't miss movies, groundbreaking documentaries, laugh-out-loud comedy specials, hard-hitting sports and much more. Watch live TV or catch up on-demand on your TV, tablet, phone or computer. Plus, you can download full episodes and movies to your favorite mobile devices and watch them offline, whenever and wherever.</p>
            <a class="button--secondary" href="https://www.showtimeanytime.com/?s_cid=int-default-7767" data-track data-context="hero" data-label="anytime">Start Watching Now</a>
          </div>
        </div>
        <!-- participating providers -->
        <section class="section">
        {{> info/_provider_grid}}
        </section>
        <!-- end participating providers -->
      </section>
      <!-- end hero -->
      <!-- view all providers -->
      <sections>
        {{> info/_provider_list}}
      </section>
      <!-- end view all providers -->
      <!-- ways to watch -->
        <section class="section">
          <div class="promo-group-header showtime-anytime__ways-to-watch">
            <h3 class="promo-group-header__title">Ways to Watch</h3>
          </div>
          <div class="section--inner">
            <a class="hero__cta" href="https://www.showtimeanytime.com/activate?s_cid=int-default-7769" data-track data-context="ways to watch" data-label="anytime">Activate your devices</a>
            <p class="hero__copy activate-devices">Log in at SHOWTIMEANYTIME.com to activate your device(s) and start watching now</p>
            <div class="showtime-anytime-watch-options">
              <div class="ways-to-watch__option ways-to-watch__app">
                  <h5>Download the Mobile App</h5>
                  <ul class="ways-to-watch__option-list">
                    <li class="ways-to-watch__option-list--item">Apple Devices</li>
                    <li class="ways-to-watch__option-list--item">Android Devices</li>
                    <li class="ways-to-watch__option-list--item">Amazon Devices</li>
                  </ul>
              </div>
              <div class="ways-to-watch__option ways-to-watch__tv">
                  <h5>Stream to Your TV</h5>
                  <ul class="ways-to-watch__option-list">
                    <li class="ways-to-watch__option-list--item"><img src="https://www.sho.com/assets/images/showtimeanytime/device_logos/Amazon_Fire_TV.svg"></li>
                    <li class="ways-to-watch__option-list--item">Android TV</li>
                    <li class="ways-to-watch__option-list--item">Apple TV</li>
                    <li class="ways-to-watch__option-list--item"><img src="https://www.sho.com/assets/images/showtimeanytime/device_logos/Chromecast-white.png"></li>
                    <li class="ways-to-watch__option-list--item"><img class="ways-to-watch__option-list--item--lg" src="https://www.sho.com/assets/images/showtimeanytime/device_logos/LG_Logo_ShoAnytime.svg"></li>
                    <li class="ways-to-watch__option-list--item"><img class="ways-to-watch__option-list--item--roku" src="https://www.sho.com/assets/images/showtimeanytime/device_logos/Roku_v1.svg"></li>
                    <li class="ways-to-watch__option-list--item"><img src="https://www.sho.com/assets/images/showtimeanytime/device_logos/Samsung.svg"></li>
                    <li class="ways-to-watch__option-list--item"><img src="https://www.sho.com/assets/images/showtimeanytime/device_logos/xbox-one.png"></li>
                  </ul>
              </div>
              <div class="ways-to-watch__option ways-to-watch__computer">
                  <h5>On Your Computer</h5>
                  <ul class="ways-to-watch__option-list">
                    <li class="ways-to-watch__option-list--item">ShowtimeAnytime.com</li>
                  </ul>
              </div>
            </div>
          </div>
        </section>
        <!-- end ways to watch -->
    {{/content}}
{{/ layouts/default}}
