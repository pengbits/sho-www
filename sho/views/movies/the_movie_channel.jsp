{{!--
  # The Movie Channel 
--}}

{{< layouts/default }}
    {{$classnames}}tmc has-nav-transparent{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>The Movie Channel </title>
        <meta property="og:title" content="The Movie Channel Official Site" />
        <meta name="description" content="The Movie Channel is the destination for the best drama, comedy, action, and horror movies – all commercial-free. Find out what's new or browse the full library here." />
        <meta property="og:description" content="The Movie Channel is the destination for the best drama, comedy, action, and horror movies – all commercial-free. Find out what's new or browse the full library here." />
        <meta name="page-tracking" content="sho:the movie channel:home" />
        <meta property="og:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogtmc_1280x640.jpg" />
        <meta name="sho:image" content="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-ogtmc_1280x640.jpg" />
      {{/page}}
    {{/meta}}

    {{$content}}

      {{#page}}
    
        <section class="hero hero--no-accent {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}} 
          {{#genreTileGroup}}{{^tileList}}hero--tmc-no-body-content{{/tileList}}{{/genreTileGroup}}" data-context="hero">
          <a class="hero__image" {{#panelLink}}href="{{panelLink}}" data-track data-label="{{#panelLinkType}}{{panelLinkType}}:{{/panelLinkType}}{{title}}" data-location="panel link" {{/panelLink}}>
          </a>
          <div class="hero__inner--short">
            <div class="hero__body">
              <h1 class="hero__headline hero__headline--tmc">        </h1>
              <p class="hero__description">If you've got a passion for movies and everything about them, THE MOVIE CHANNEL&#8482; is your one-stop, commercial-free movie destination. From outrageous comedies and heart-stopping dramas to the most explosive action hits, THE MOVIE CHANNEL&#8482; has 'em all. </p>
            </div>
          </div>
            {{#genreTileGroup}}{{#tileList.0}}
              {{> partials/_promo_group_with_header}}
            {{/tileList.0}}{{/genreTileGroup}} 
      </section>

      <section class="section movies-gallery js-endless-scroll" data-page-url="{{page.moviesPagination.paginationCta.nextCta.ctaLink}}" data-context="title grid:{{page.meta.genre}}">
        <div class="promo-group-header">
          <h3 class="promo-group-header__title">TMC’S FULL MOVIE LIBRARY</h3>
        </div>
        <div class="movies-gallery__inner">
          {{#moviesPagination.tileList}}
          <a class="movies-gallery__item" href="{{ctaLink}}" data-track data-label="title page link:{{ctaLabel}}">
            <div class="movies-gallery__image">
              <picture>
                <source data-srcset="{{imageUrl}}"
                  srcset="{{imageUrl}}">
                <img class="lazyload" alt="{{ctaLabel}}" src="https://www.sho.com/assets/images/lib/blank.gif">
              </picture>
            </div>
            <div class="movies-gallery__title">{{ctaLabel}}</div>
          </a>
          {{/moviesPagination.tileList}}
           
        </div>
       <div class="loading-animation loading-animation--scrolling"></div>
      </section>
      <section class="section--large">
        <p class="legal legal--tmc">&copy; {{global.copyrightYear}} Showtime Networks Inc. and Showtime Digital Inc. THE MOVIE CHANNEL and related marks are registered trademarks of Showtime Networks Inc., a Paramount Global Company. All rights reserved.
          </p>
      </section>
        {{/page}}

    {{/content}}
{{/ layouts/default}}
