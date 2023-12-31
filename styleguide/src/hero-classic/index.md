---
name: Hero Classic
collection: components
---

# Hero Classic
 
Note: due to the delicacy of media queries in play on the hero component, it is best viewed without the styleguide sidebar visible. Below the medium breakpoint, the hero image aspect ratio goes from 8:5 to 4:3. 

The hero component generally expects content to be added at the bottom of it (i.e. a promo group), in order to give proper vertical space for the background image to extend down into.

The h1 elements used on the hero headlines are for SEO purposes.

<h3>Hero</h3>
<section class="hero">
  <a class="hero__image lazyload"  data-bgset="https://www.sho.com/assets/images/styleguide/promos/804_5_0_prm-carries5_568x426.jpg [--small] |  https://www.sho.com/site/image-bin/images/804_5_0/804_5_0_prm-carries5_1024x640.jpg">
  </a>
  
  <div class="hero__inner">
    <div class="hero__body">
      <h1 class="hero__headline">Homeland</h1>
      <p class="hero__copy">Season 6 Coming Soon to Showtime</p>
      <a class="hero__cta" href="#">Watch the Season 1 Premiere for Free</a>
    </div>
  </div>
  <div class="promo-group promo-group--to-three-up section--inner">
    <figure class="promo promo--video">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_pro12_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Catch Up on Homeland</h3>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
    <figure class="promo promo--video promo--split-right">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/804_5_3422772/804_5_3422772_14_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Homeland Returns</h3>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
    <figure class="promo promo--video promo--split-right">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/804_5_0/804_5_0_trl01_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Watch the Official Season 5 Trailer</h3>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
  </div>
</section>  

```
<section class="hero">
  <a class="hero__image lazyload"  data-bgset="https://www.sho.com/assets/images/styleguide/promos/804_5_0_prm-carries5_568x426.jpg [--small] |  https://www.sho.com/site/image-bin/images/804_5_0/804_5_0_prm-carries5_1024x640.jpg">
  </a>
  <div class="hero__inner">
    <div class="hero__body">
      <h1 class="hero__headline">Homeland</h1>
      <p class="hero__copy">Season 6 Coming Soon to Showtime</p>
      <a class="hero__cta" href="#">Watch the Season 1 Premiere for Free</a>
    </div>
  </div>
  <div class="promo-group promo-group--to-three-up section--inner">
    <figure class="promo promo--video">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_pro12_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Catch Up on Homeland</h3>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
    <figure class="promo promo--video promo--split-right">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/804_5_3422772/804_5_3422772_14_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Homeland Returns</h3>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
    <figure class="promo promo--video promo--split-right">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/804_5_0/804_5_0_trl01_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Watch the Official Season 5 Trailer</h3>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
  </div>
</section>
```  

<h3>Hero with light background</h3>
<section class="hero">
  <a class="hero__image lazyload"  data-bgset="https://www.sho.com/site/image-bin/images/1031103_0_0/1031103_0_0_97_568x426.jpg [--small] |  https://www.sho.com/site/image-bin/images/1031103_0_0/1031103_0_0_97_1024x640.jpg">
  </a>
  <div class="hero__inner">
    <div class="hero__body">
      <h1 class="hero__headline">The Affair</h1>
      <p class="hero__copy">Season 6 Coming Soon to Showtime</p>
      <a class="hero__cta" href="#">Watch the Season 1 Premiere for Free</a>
    </div>
  </div>
  <div class="promo-group promo-group--to-three-up section--inner">
    <figure class="promo promo--video">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1031103_1_3406307/1031103_1_3406307_nxt01_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Next on Episode 12</h3>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
    <figure class="promo promo--video promo--split-right">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1031103_2_0/1031103_2_0_pro01_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Watch the Season Premiere For Free</h3>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
    <figure class="promo promo--video promo--split-right">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1031103_2_0/1031103_2_0_bsc02_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Behind the Scenes with Joshua Jackson</h3>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
  </div>
</section>

<h3>Hero with lengthy headline</h3>
<section class="hero">
  <a class="hero__image lazyload"  data-bgset="https://www.sho.com/site/image-bin/images/2006630_0_0/2006630_0_0_01_568x426.jpg [--small] |  https://www.sho.com/site/image-bin/images/2006630_0_0/2006630_0_0_01_1024x640.jpg">
  </a>
  <div class="hero__inner">
    <div class="hero__body">
      <h1 class="hero__headline">Oliver Stone's Untold History of the United States</h1>
      <p class="hero__copy">"A stunningly different take on history" -- Tribune's Zap2It.com</p>
      <a class="hero__cta" href="#">Watch the Season 1 Premiere for Free</a>
    </div>
  </div>
  <div class="promo-group promo-group--to-three-up section--inner">
    <figure class="promo promo--video">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1002822_1_3364056/1002822_1_3364056_08_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Watch the Season Premiere For Free</h3>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
    <figure class="promo promo--video promo--split-right">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1002822_1_3364059/1002822_1_3364059_01_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Next on Episode 12</h3>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
    <figure class="promo promo--docked promo--split-right">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1002822_1_3364055/1002822_1_3364055_eps01_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Educator Resources</h3>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
  </div>
</section>

<h3>Hero with lengthy copy, and pre-treated image (darkened on left)</h3>
<section class="hero">
  <a class="hero__image lazyload"  data-bgset="https://www.sho.com/site/image-bin/images/0_0_3406318/0_0_3406318_06_568x426.jpg [--small] | https://www.sho.com/site/image-bin/images/0_0_3406318/0_0_3406318_prm-imitgame_1024x640.jpg">
  </a>
  <div class="hero__inner">
    <div class="hero__body">
      <h1 class="hero__headline">The Imitation Game</h1>
      <p class="hero__copy">Benedict Cumberbatch stars in this tale based on the true story of Alan Turing, a genius British mathematician, who works against the clock to crack Germany's infamously unbreakable codes during World War II and defies convention in his personal life.</p>
      <a class="hero__cta" href="#">Watch Trailer</a>
    </div>
  </div>
  <div class="promo-group promo-group--to-three-up section--inner">
    <figure class="promo promo--square promo--docked promo--large">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3418438/0_0_3418438_02_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">King Kong</h3>
        <p class="promo__copy">359 mins</p>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
    <figure class="promo promo--square promo--docked promo--large">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3338/0_0_3338_20_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Good Morning, Vietnam</h3>
        <p class="promo__copy">159 mins</p>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
    <figure class="promo promo--square promo--docked promo--large">
      <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3420985/0_0_3420985_01_640x360.jpg">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Spring Breakers</h3>
        <p class="promo__copy">89 mins</p>
      </figcaption>
      <a class="promo__link" href="#"></a>
    </figure>
  </div>
</section>

<h3>Hero with blurred background, poster art, copy aligned at bottom next to poster</h3>
<section class="hero hero--blur hero--detail hero--poster">
  <div class="hero__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3393610/0_0_3393610_12_640x360.jpg [--small] |  https://www.sho.com/site/image-bin/images/0_0_3393610/0_0_3393610_12_1024x640.jpg">
  </div>
  <div class="hero__inner">
    <div class="hero__body">
      <picture class="hero__poster">
        <source media="(max-width: 767px)"
          data-srcset="https://www.sho.com/site/image-bin/images/0_0_3393610/0_0_3393610_00_300x450.jpg">
        <source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3393610/0_0_3393610_00_300x450.jpg">
        <img class="lazyload" alt="The Aviator" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==">
      </picture>
      <div class="hero__body__inner">
        <h1 class="hero__headline">The Aviator</h1>
        <p class="hero__copy">Director Martin Scorsese's biopic of Howard Hughes, portraying his career from the late 1920s to the mid-1940s during which time Hughes became a successful film producer and an aviation magnate while simultaneously growing unstable due to severe obsessive-compulsive disorder. Stars Leonardo DiCaprio, Cate Blanchett and Kate Beckinsale.</p>
      </div>
    </div>
  </div>
  <div class="hero__links">
    <button class="button--stream button--fixed-width">
        <div class="button--stream__icon"></div>
        <h5 class="button--stream__label">stream this movie</h5>
    </button>
  </div>
</section>

```
<section class="hero hero--blur hero--detail hero--poster">
  <div class="hero__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3393610/0_0_3393610_12_640x360.jpg [--small] |  https://www.sho.com/site/image-bin/images/0_0_3393610/0_0_3393610_12_1024x640.jpg">
  </div>
  <div class="hero__inner">
    <div class="hero__body">
      <picture class="hero__poster">
        <source media="(max-width: 767px)"
          data-srcset="https://www.sho.com/site/image-bin/images/0_0_3393610/0_0_3393610_00_300x450.jpg">
        <source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3393610/0_0_3393610_00_300x450.jpg">
        <img class="lazyload" alt="The Aviator" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==">
      </picture>
      <div class="hero__body__inner">
        <h1 class="hero__headline">The Aviator</h1>
        <p class="hero__copy">Director Martin Scorsese's biopic of Howard Hughes, portraying his career from the late 1920s to the mid-1940s during which time Hughes became a successful film producer and an aviation magnate while simultaneously growing unstable due to severe obsessive-compulsive disorder. Stars Leonardo DiCaprio, Cate Blanchett and Kate Beckinsale.</p>
      </div>
    </div>
  </div>
  <div class="hero__links">
    <button class="button--stream button--fixed-width">
        <div class="button--stream__icon"></div>
        <h5 class="button--stream__label">stream this movie</h5>
    </button>
  </div>
</section>
```

<h3>Hero with previous/next navigation, more metadata</h3>
<section class="hero hero--no-bottom-padding hero--detail">
  <div class="hero__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/408_6_3419778/408_6_3419778_01_640x360.jpg [--small] |  https://www.sho.com/site/image-bin/images/408_6_3419778/408_6_3419778_01_1024x640.jpg">
  </div>
  <a class="hero__navigation hero__navigation--previous" href="#">
    <i class="icon icon--medium icon--prev-medium"></i>
    <span class="hero__navigation__detail">S6<br/>Ep6</span>
  </a>
  <a class="hero__navigation hero__navigation--next" href="#">
    <span class="hero__navigation__detail">S6<br/>Ep8</span>
    <i class="icon icon--medium icon--next-medium"></i>
  </a>
  <div class="hero__inner">
    <div class="hero__body">
      <div class="hero__top-line">S6, Ep7</div>
      <h1 class="hero__headline">Pimp's Paradise</h1>
      <p class="hero__copy--metadata">Original Air Date: Feb 22, 2016</p>
      <p class="hero__copy">Carl struggles with Nick's absence, continuing to put up false hood bravado. He takes over the Gallagher home, remaking it as his "crib" and inviting his friends over to party and make music. Frank and Queenie rule the house - and Debbie returns when she's let go by Erica and Tyler.</p>
    </div>
  </div>
  <div class="hero__links">
    <button class="button--stream button--fixed-width">
        <div class="button--stream__icon"></div>
        <h5 class="button--stream__label">stream this episode</h5>
    </button>
  </div>
  <div class="section--inner">
    <div class="ways-to-watch">
      <div class="ways-to-watch__section ways-to-watch__linear">
        <h4 class="ways-to-watch__date">THURSDAY, NOV 12</h4>
        <h4 class="ways-to-watch__time">9 PM ET/PT</h4>
        <p class="ways-to-watch__copy">Episode 3, Season 5 replay on</p>
        <h4 class="ways-to-watch__channel">SHOWTIME</h4>
      </div>
      <div class="ways-to-watch__section ways-to-watch__on-demand">
        <h4 class="ways-to-watch__headline">NOW AVAILABLE ON DEMAND</h4>
        <p class="ways-to-watch__copy">All Episodes for Seasons 1-4 available</p>
        <a class="ways-to-watch__link" href="#">SEE SCHEDULE</a>
      </div>
      <div class="ways-to-watch__section ways-to-watch__stream">
        <h4 class="ways-to-watch__headline">Every season and episode available instantly</h4>
        <div class="ways-to-watch__stream__button">
          <button class="ways-to-watch__button button--stream">
            <div class="button--stream__icon"></div>
            <h5 class="button--stream__label">stream this episode</h5>
          </button>
        </div>
      </div>
    </div>
  </div>
</section>

```
<section class="hero hero--no-bottom-padding hero--detail">
  <div class="hero__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/408_6_3419778/408_6_3419778_01_640x360.jpg [--small] |  https://www.sho.com/site/image-bin/images/408_6_3419778/408_6_3419778_01_1024x640.jpg">
  </div>
  <a class="hero__navigation hero__navigation--previous" href="#">
    <i class="icon icon--medium icon--prev-medium"></i>
    <span class="hero__navigation__detail">S6<br/>Ep6</span>
  </a>
  <a class="hero__navigation hero__navigation--next" href="#">
    <span class="hero__navigation__detail">S6<br/>Ep8</span>
    <i class="icon icon--medium icon--next-medium"></i>
  </a>
  <div class="hero__inner">
    <div class="hero__body">
      <div class="hero__top-line">S6, Ep7</div>
      <h1 class="hero__headline">Pimp's Paradise</h1>
      <p class="hero__copy--metadata">Original Air Date: Feb 22, 2016</p>
      <p class="hero__copy">Carl struggles with Nick's absence, continuing to put up false hood bravado. He takes over the Gallagher home, remaking it as his "crib" and inviting his friends over to party and make music. Frank and Queenie rule the house - and Debbie returns when she's let go by Erica and Tyler.</p>
    </div>
  </div>
  <div class="hero__links">
    <button class="button--stream button--fixed-width">
        <div class="button--stream__icon"></div>
        <h5 class="button--stream__label">stream this episode</h5>
    </button>
  </div>
  <div class="ways-to-watch section--inner">
    <div class="ways-to-watch__linear">
      <h4 class="ways-to-watch__date">THURSDAY, NOV 12</h4>
      <h4 class="ways-to-watch__time">9 PM ET/PT</h4>
      <p class="ways-to-watch__copy">Episode 3, Season 5 replay on</p>
      <h4 class="ways-to-watch__channel">SHOWTIME</h4>
    </div>
    <div class="ways-to-watch__on-demand">
      <h4 class="ways-to-watch__headline">NOW AVAILABLE ON DEMAND</h4>
      <p class="ways-to-watch__copy">All Episodes for Seasons 1-4 available</p>
      <a class="ways-to-watch__link" href="#">SEE SCHEDULE</a>
    </div>
    <div class="ways-to-watch__stream">
      <h4 class="ways-to-watch__headline">Every season and episode available instantly</h4>
      <div class="ways-to-watch__button-wrapper">
        <button class="ways-to-watch__button button--stream">
          <div class="button--stream__icon"></div>
          <h5 class="button--stream__label">stream this episode</h5>
        </button>
      </div>
    </div>
  </div>
</section>
```

<h3>Hero with panel link</h3>
<p>Hero image and headline link to main panel link; calls-to-action are separate, different links</p>
<section class="hero hero--panel-link">
  <a class="hero__image lazyload" href="#" data-bgset="https://www.sho.com/site/image-bin/images/1003223_3_0/1003223_3_0_01_568x426.jpg [--small] |  https://www.sho.com/site/image-bin/images/1003223_3_0/1003223_3_0_01_1024x640.jpg">
  </a>
  <div class="hero__inner">
    <div class="hero__body">
      <div class="hero__top-line">Featured</div>
      <h1 class="hero__headline">
        <a class="hero__headline__link" href="#">Penny Dreadful</a>
      </h1>
      <a class="hero__cta" href="#">Watch the Official Season 3 Trailer</a>
    </div>
    <a class="hero__shim" href="#"></a>
  </div>
</section>  

```     
<section class="hero hero--panel-link">
  <a class="hero__image lazyload" href="#" data-bgset="https://www.sho.com/site/image-bin/images/1003223_3_0/1003223_3_0_01_568x426.jpg [--small] |  https://www.sho.com/site/image-bin/images/1003223_3_0/1003223_3_0_01_1024x640.jpg">
  </a>
  <div class="hero__inner">
    <div class="hero__body">
      <div class="hero__top-line">Featured</div>
      <h1 class="hero__headline">
        <a class="hero__headline__link" href="#">Penny Dreadful</a>
      </h1>
      <a class="hero__cta" href="#">Watch the Official Season 3 Trailer</a>
    </div>
    <a class="hero__shim" href="#"></a>
  </div>
</section>
```

<h3>Hero "small" variation (lower content is pulled up higher on top of hero image), with panel link and section link</h3>
<section class="hero hero--small hero--panel-link">
  <a class="hero__image lazyload" href="#" data-bgset="https://www.sho.com/site/image-bin/images/805_5_0/805_5_0_01_568x426.jpg [--small] |  https://www.sho.com/site/image-bin/images/805_5_0/805_5_0_01_1024x640.jpg">
  </a>
  <div class="hero__inner">
    <div class="hero__body" href="#">
        <h1 class="hero__headline">
           <a class="hero__headline__link" href="#">House of Lies</a>
        </h1>
        <a class="hero__cta" href="#">Watch the Official Season 5 Trailer</a>
    </div>
    <a class="hero__shim" href="#"></a>
  </div>
  <div class="section--inner">
    <a class="section-header section-header--more" href="#">
      See All Series
    </a>
    <div class="promo-group promo-group--three-up">
      <figure class="promo promo--docked promo--square promo--large">
        <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/804_0_0/804_0_0_01_568x568.jpg">
        </div>
        <figcaption class="promo__body">
          <h3 class="promo__headline">Homeland</h3>
          <p class="promo__copy">Sundays at 10PM ET/PT</p>
        </figcaption>
        <a class="promo__link" href="#">Homeland</a>
      </figure>
      <figure class="promo promo--docked promo--square promo--large">
        <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/408_0_0/408_0_0_01_568x568.jpg">
        </div>
        <figcaption class="promo__body">
          <h3 class="promo__headline">Shameless</h3>
          <p class="promo__copy">Sundays at 10PM ET/PT</p>
        </figcaption>
        <a class="promo__link" href="#">Shameless</a>
      </figure>
      <figure class="promo promo--docked promo--square promo--large">
        <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1031103_0_0/1031103_0_0_01_568x568.jpg">
        </div>
        <figcaption class="promo__body">
          <h3 class="promo__headline">The Affair</h3>
          <p class="promo__copy">Sundays at 10PM ET/PT</p>
        </figcaption>
        <a class="promo__link" href="#">The Affair</a>
      </figure>
    </div>
  </div>
</section>  

```
<section class="hero hero--small hero--panel-link">
  <a class="hero__image lazyload" href="#" data-bgset="https://www.sho.com/site/image-bin/images/805_5_0/805_5_0_01_568x426.jpg [--small] |  https://www.sho.com/site/image-bin/images/805_5_0/805_5_0_01_1024x640.jpg">
  </a>
  <div class="hero__inner">
    <div class="hero__body" href="#">
        <h1 class="hero__headline">
           <a class="hero__headline__link" href="#">House of Lies</a>
        </h1>
        <a class="hero__cta" href="#">Watch the Official Season 5 Trailer</a>
    </div>
    <a class="hero__shim" href="#"></a>
  </div>
  <div class="section--inner">
    <a class="section-header section-header--more" href="#">
      See All Series
    </a>
    <div class="promo-group promo-group--three-up">
      <figure class="promo promo--docked promo--square promo--large">
        <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/804_0_0/804_0_0_01_568x568.jpg">
        </div>
        <figcaption class="promo__body">
          <h3 class="promo__headline">Homeland</h3>
          <p class="promo__copy">Sundays at 10PM ET/PT</p>
        </figcaption>
        <a class="promo__link" href="#">Homeland</a>
      </figure>
      <figure class="promo promo--docked promo--square promo--large">
        <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/408_0_0/408_0_0_01_568x568.jpg">
        </div>
        <figcaption class="promo__body">
          <h3 class="promo__headline">Shameless</h3>
          <p class="promo__copy">Sundays at 10PM ET/PT</p>
        </figcaption>
        <a class="promo__link" href="#">Shameless</a>
      </figure>
      <figure class="promo promo--docked promo--square promo--large">
        <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1031103_0_0/1031103_0_0_01_568x568.jpg">
        </div>
        <figcaption class="promo__body">
          <h3 class="promo__headline">The Affair</h3>
          <p class="promo__copy">Sundays at 10PM ET/PT</p>
        </figcaption>
        <a class="promo__link" href="#">The Affair</a>
      </figure>
    </div>
  </div>
</section>
```
### Hero --short hero(as seen on The Movie Channel)
 <section class="hero hero--no-accent" data-context="hero">
          <a class="hero__image lazyload"  data-location="panel link" {{/panelLink}}  data-bgset="https://www.sho.com/assets/images/tmc/tmc_blue_bg.jpg [--small] |  https://www.sho.com/assets/images/tmc/tmc_blue_bg.jpg">
          </a>
          <div class="hero__inner--short">
            <div class="hero__body">
              <h1 class="hero__headline hero__headline--tmc">        </h1>
              <p class="hero__description">If you've got a passion for movies and everything about them, THE MOVIE CHANNELâ¢ is your one-stop, commercial-free movie destination. From outrageous comedies and heart-stopping dramas to the most explosive action hits, THE MOVIE CHANNELâ¢ has 'em all. </p>
            </div>
            <a class="hero__shim" href="/titles/3421866/free-state-of-jones" data-track="" data-label="title page link:Free State of Jones" data-location="panel link"></a>
          </div>
            {{#genreTileGroup}}
              {{> partials/_promo_group_with_header}}
            {{/genreTileGroup}}          
      </section>

```
<section class="hero hero--no-accent" data-context="hero">
  <a class="hero__image lazyload"  data-location="panel link" {{/panelLink}}  data-bgset="https://www.sho.com/assets/images/tmc/tmc_blue_bg.jpg [--small] |  https://www.sho.com/assets/images/tmc/tmc_blue_bg.jpg">
  </a>
  <div class="hero__inner--short">
    <div class="hero__body">
      <h1 class="hero__headline hero__headline--tmc">        </h1>
      <p class="hero__description">If you've got a passion for movies and everything about them, THE MOVIE CHANNELâ¢ is your one-stop, commercial-free movie destination. From outrageous comedies and heart-stopping dramas to the most explosive action hits, THE MOVIE CHANNELâ¢ has 'em all. </p>
    </div>
    <a class="hero__shim" href="/titles/3421866/free-state-of-jones" data-track="" data-label="title page link:Free State of Jones" data-location="panel link"></a>
  </div>
    {{#genreTileGroup}}
      {{> partials/_promo_group_with_header}}
    {{/genreTileGroup}}          
</section>
```
### Hero --multi-headline (as seen on /bulk)
<section class="hero hero--multi-headline">
  <a class="hero__image lazyload"  data-bgset="https://www.sho.com/assets/images/bulk/images/bulk_hero-1117_568x426.jpg [--small] | https://www.sho.com/assets/images/bulk/images/bulk_hero-1117_1700x1063.jpg">
  </a>
  <div class="hero__inner">
    <div class="hero__body"> 
      <div class="hero__top-line hero__top-line--logo"></div>
      <h1 class="hero__headline">SHOWTIME PAYS BIG TIME!<br>Add SHOWTIME in bulk and receive up to <span class="hero__headline-emphasis">$9/unit</span> to launch or <span class="hero__headline-emphasis">$7/unit</span> to renew.</h1>
    </div>
  </div>
  <div class="hero__ctas" data-context="hero">
    <a class="button--stream button--fixed-width"
    href="https://www.sho.com/assets/images/bulk/2017_Direct-to-Property_Form.pdf"
    data-track data-context="hero" data-label="download form">
    <h5 class="button--stream__label">Download Incentive Form</h5>
  </a>
  <a class="cta--item cta--contact" href="mailto:shobulkcontact@showtime.net" data-track data-context="hero" data-label="contact">Contact Us</a>
  </div>
  <div class="hero__inner hero__inner--headline-2">
    <div class="hero__body"> 
      <h3 class="hero__headline">OFFER YOUR VIEWERS EXCEPTIONAL ENTERTAINMENT WITH SHOWTIME!</h3>
      <p class="hero__copy">Your viewers will enjoy access to award-winning original series, can't miss movies, groundbreaking documentaries, laugh-out-loud comedy specials, hard-hitting sports and much more.</p>
    </div>
  </div>
</section>

### Hero with top line, logo, sections

<section class="hero hero--no-accent">
  <div class="hero__image lazyload" data-bgset="https://www.sho.com/assets/images/bulk/images/hotel-app/showtime-hotel-app-hero-568x426.jpg [--small] | https://www.sho.com/assets/images/bulk/images/hotel-app/showtime-hotel-app-hero-1700x1063.jpg">
  </div>
  <div class="hero__inner">
    <div class="hero__body">
      <div class="hero__top-line">Introducing</div>
      <div class="hero__top-line hero__top-line--logo"></div>
    </div>
  </div>
  <div class="section section--inner">
    <h3 class="section__header">No login. No password. No hassle</h3>
    <p class="section__description">Give your guests the revolutionary new way to experience premium entertainment with the <strong>SHOWTIME HOTEL APP</strong>. Guests can enjoy FREE instant access to stream 1,000s of titles -- groundbreaking Original Series, star-studded Movies, action-packed Sports, compelling Documentaries, laugh-out-loud Comedies and more -- all on the in-room television. No guest credentials required.</p>
  </div>
  <div class="section--large section--inner">
    <h3 class="section__header">Additional features</h3>
    <p class="section__description"><strong>Convenience and Control:</strong> Guests watch what they want, when they want with the ability to pause, fast-forward and rewind.</p>
    <p class="section__description"><strong>High Definition Resolution:</strong> Guests can watch their favorite series in crystal-clear HD.</p>
    <p class="section__description"><strong>Privacy:</strong> No personal information is collected from guests, and all viewing data is automatically cleared from the <strong>SHOWTIME HOTEL APP</strong> upon check out. </p>
  </div>
</section>

### Hero --video

This appears on /order. Note, the width of hero__body is different in the /order context.

**_NOTE_**: This video player MUST have a 'muted' attribute, otherwise autoplay is inconsistent due to browsers blocking autoplay of non-silent videos

<div class="asymmetrical-hero-container">
	<section class="hero hero--no-accent hero--video js-hero-video">
		<a class="hero__image lazyload"  data-bgset="https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-varietyhero0118_568x426.jpg [--small] |  https://www.sho.com/site/image-bin/images/0_0_0/0_0_0_prm-varietyhero0118_1700x1063.jpg">
		</a>
		<main class="video-player-standard">
      <div class="video-player">
        <div class="video-player__video">
          <div class="video-player__video__inner">
            <video
              id="video-player"
              class="video-playr__video__embed video-js"
              style="position:absolute; top:0; bottom:0; right:0; left:0; width:100%; height:100%;"
              data-account="63128"
              data-player="NzCF8EByd"
              data-embed="default"
              data-video-id="5727276252001"
              data-age-gate="0"
              data-full-episode="false"
              controls="false"
              loop 
              muted
              autoplay
              poster="https://www.sho.com/assets/images/images/optimizely/sizzle-reel-poster.jpg">
            </video>
            <script src="//players.brightcove.net/63128/NzCF8EByd_default/index.min.js"></script>
          </div>
        </div>
      </div>
		</main>
		<div class="hero__inner">
			<div class="hero__body">
				<h1 class="hero__headline">
					START WATCHING SHOWTIME
				</h1>
				<p class="hero__copy">Get instant access to commercial-free, award-winning SHOWTIME original series, can&#39;t-miss movies, groundbreaking documentaries, laugh-out-loud comedy specials, hard-hitting sports and much more. Watch live TV or catch up on-demand on your TV, tablet, phone or computer. Plus, you can download full episodes and movies to your favorite mobile devices and watch them offline, whenever and wherever.</p>
			</div>
		</div>
	</section>
</div>
																																																																																																																																																														
<style type="text/css">
  .site-sidebar,
  .site-sidebar-toggle {
    display: none;
  }
  
  .order-home-container {
    width: 100%;
    overflow: hidden;
  }
  
  .site-main {
    padding: 0;
  }
  
  .site-content {
    max-width: none;
  }
</style>
<jsp-partials>styleguide/hero/_hero_inner.jsp.md</jsp-partials>
<jsp-partials>styleguide/hero/_hero_order.jsp.md</jsp-partials>
