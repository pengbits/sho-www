---
name: Promos
collection: components
---

# Promos

### Standard Promo

All promos have a semi-transparent gradient overlay on top of the image. Landscape is the default orientation. Link elements are stretched over the entire promo to avoid multiple links (when text is not docked over image.)

<section class="promo-examples">
  <figure class="promo">
    <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_pro12_640x360.jpg)">
    </div>
    <figcaption class="promo__body">
      <div class="promo__details">
        <h3 class="promo__headline">Homeland</h3>
        <p class="promo__copy">New Episode Airs Tonight at 10PM ET/PT</p>
      </div>
    </figcaption>
    <a class="promo__link">Homeland</a>
  </figure>
</section>

```
<figure class="promo">
  <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_pro12_640x360.jpg)">
  </div>
  <figcaption class="promo__body">
    <div class="promo__details">
      <h3 class="promo__headline">Homeland</h3>
      <p class="promo__copy">New Episode Airs Tonight at 10PM ET/PT</p>
    </div>
  </figcaption>
  <a class="promo__link">Homeland</a>
</figure>
```  

### Promo with Spotify Player in it

<section class="promo-examples">
<div class="promo promo--docked promo--landscape">
  <div class="promo__image" style="background-color:purple"></div>
    <div class="promo__body">
      <iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/6JihB3z7CClETggkGDnFPg?utm_source=generator" width="100%" height="250" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
    </div>
  </div>
</div>
</section>

### Docked, Square, Large

Text elements are absolutely positioned over the image (docked), square aspect ratio (landscape is default), large text.

<section class="promo-examples">
  <figure class="promo promo--square promo--docked promo--large">
    <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_pro12_640x360.jpg)">
    </div>
    <figcaption class="promo__body">
      <div class="promo__details">
        <h3 class="promo__headline">Homeland</h3>
        <p class="promo__copy">New Episode Airs Tonight at 10PM ET/PT</p>
      </div>
    </figcaption>
    <a class="promo__link">Homeland</a>
  </figure>
</section>

```
<figure class="promo promo--square promo--docked promo--large">
  <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_pro12_640x360.jpg)">
  </div>
  <figcaption class="promo__body">
    <div class="promo__details">
      <h3 class="promo__headline">Homeland</h3>
      <p class="promo__copy">New Episode Airs Tonight at 10PM ET/PT</p>
    </div>
  </figcaption>
  <a class="promo__link">Homeland</a>
</figure>
```

### Docked, Square, Large (mostly white image)

Testing out overlay gradient effectiveness in rendering text legible over light background.

<section class="promo-examples">
  <figure class="promo promo--square promo--docked promo--large">
    <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/1003223_2_0/1003223_2_0_20_640x360.jpg)">
    <figcaption class="promo__body">
      <div class="promo__details">
        <h3 class="promo__headline">Penny Dreadful</h3>
        <p class="promo__copy">New Episode Airs Tonight at 10PM ET/PT</p>
      </div>
    </figcaption>
    <a class="promo__link">Penny Dreadful</a>
  </figure>
</section>  

### Docked, Large

Text elements are absolutely positioned over the image (docked), landscape aspect ratio remains default, large text.

<section class="promo-examples--large">
  <figure class="promo promo--docked promo--large">
    <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_5_3422770/804_5_3422770_01_640x360.jpg)">
    </div>
    <figcaption class="promo__body">
      <div class="promo__details">
        <h3 class="promo__headline">Watch Homeland from the Beginning</h3>
        <p class="promo__copy">Catch up now on any device</p>
      </div>
    </figcaption>
    <a class="promo__link"></a>
  </figure>  
</section>

```
<figure class="promo promo--docked promo--large">
  <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_5_3422770/804_5_3422770_01_640x360.jpg)">
  </div>
  <figcaption class="promo__body">
    <div class="promo__details">
      <h3 class="promo__headline">Watch Homeland from the Beginning</h3>
      <p class="promo__copy">Catch up now on any device</p>
    </div>
  </figcaption>
  <a class="promo__link"></a>
</figure>  
```

### Docked, Large, Play Icon

<section class="promo-examples--large">
  <figure class="promo promo--valign promo--docked promo--icon promo--icon--play promo--large">
    <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_5_3422770/804_5_3422770_01_640x360.jpg)">
    </div>
    <figcaption class="promo__body">
      <div class="promo__details">
        <h3 class="promo__headline">Watch Homeland from the Beginning</h3>
        <p class="promo__copy">Catch up now on any device</p>
      </div>
    </figcaption>
    <a class="promo__link"></a>
  </figure>
</section>  

```
<figure class="promo promo--valign promo--docked promo--icon promo--icon--play promo--large">
  <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_5_3422770/804_5_3422770_01_640x360.jpg)">
  </div>
  <figcaption class="promo__body">
    <div class="promo__details">
      <h3 class="promo__headline">Watch Homeland from the Beginning</h3>
      <p class="promo__copy">Catch up now on any device</p>
    </div>
  </figcaption>
  <a class="promo__link"></a>
</figure>
```

### Docked, Large, Audio Icon

<section class="promo-examples--large">
  <figure class="promo promo--docked promo--icon promo--icon--audio">
    <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/1032815_4_0/1032815_4_0_pro01_640x360.jpg)">
    </div>
    <figcaption class="promo__body">
      <div class="promo__details">
        <h3 class="promo__headline">Listen to the official series playlist </h3>
      </div>
    </figcaption>
    <a class="promo__link"></a>
  </figure>
</section>  

```
<section class="promo-examples--large">
  <figure class="promo promo--docked promo--icon promo--icon--play promo--large">
    <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/1032815_4_0/1032815_4_0_pro01_640x360.jpg)">
    </div>
    <figcaption class="promo__body">
      <div class="promo__details">
        <h3 class="promo__headline">Listen to the official series playlist </h3>
      </div>
    </figcaption>
    <a class="promo__link"></a>
  </figure>
</section>  
<!-- or more simply -->
<figure class="promo promo--audio">
```


### Docked, Split-Right

At breakpoints below small, image is reduced to 50% width and text is placed to the right.

<section class="promo-examples">
  <figure class="promo promo--split-right promo--docked">
    <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_pro12_640x360.jpg">
    </div>
    <figcaption class="promo__body">
      <div class="promo__details">
        <h3 class="promo__headline">Season 5 Look Ahead</h3>
      </div>
    </figcaption>
    <a class="promo__link">Season 5 Look Ahead</a>
  </figure>  
</section>

```
<figure class="promo promo--split-right promo--docked">
  <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_pro12_640x360.jpg">
  </div>
  <figcaption class="promo__body">
    <div class="promo__details">
      <h3 class="promo__headline">Season 5 Look Ahead</h3>
    </div>
  </figcaption>
  <a class="promo__link">Season 5 Look Ahead</a>
</figure>
```

### Docked, Split-Right, Square

Same as split-right above, but resolves to square instead of landscape

<section class="promo-examples">
  <figure class="promo promo--split-right promo--docked promo--landscape-to-square">
    <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_01s_300x300.jpg">
    </div>
    <figcaption class="promo__body">
      <h3 class="promo__headline">Homeland</h3>
    </figcaption>
    <a class="promo__link"></a>
  </figure>  
</section>

```
<figure class="promo promo--split-right promo--docked promo--landscape-to-square">
  <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_01s_300x300.jpg">
  </div>
  <figcaption class="promo__body">
    <h3 class="promo__headline">Homeland</h3>
  </figcaption>
  <a class="promo__link"></a>
</figure>  
```

### Video (Docked, Play Icon), Split-Right
Play icon remains over image when text is placed to the right below small breakpoint. This is a very common variant in use in sho.com, ie in series homepages. For convience there is simple a promo--video modifier.

<section class="promo-examples">
  <figure class="promo promo--video promo--split-right">
    <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_5_0/804_5_0_trl01_640x360.jpg">
    </div>
    <figcaption class="promo__body">
      <div class="promo__details">
        <h3 class="promo__headline">Homeland Season 1 Premiere</h3>
      </div>
    </figcaption>
    <a class="promo__link"></a>
  </figure>  
</section>

```
<figure class="promo promo--video promo--split-right">
  <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_5_0/804_5_0_trl01_640x360.jpg">
  </div>
  <figcaption class="promo__body">
    <div class="promo__details">
      <h3 class="promo__headline">Homeland Season 1 Premiere</h3>
    </div>
  </figcaption>
  <a class="promo__link"></a>
</figure>
```


### Video v2 (Vertically-Aligned, Docked, Play Icon), Split-Right
Same as above, but with  vertically-aligned inner content at desktop

<section class="promo-examples">
<figure class="promo promo--video promo--valign promo--docked promo--split-right">
  <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1034344_2_0/1034344_2_0_pro05_640x360.jpg [--small] |  https://www.sho.com/site/image-bin/images/1034344_2_0/1034344_2_0_pro05_640x360.jpg">
  </div>
  <figcaption class="promo__body">
    <div class="promo__details">
      <h3 class="promo__headline">Simone Kessell Talks Joining Yellowjackets Cast as  Adult Lottie</h3>
    </div>
  </figcaption>
  <a class="promo__link" href="/video/80692/simone-kessell-is-adult-lottie-%7C-yellowjackets-season-2" data-track data-label="series promo video:Simone Kessell Talks Joining Yellowjackets Cast as  Adult Lottie" data-location="tile 3">Simone Kessell Talks Joining Yellowjackets Cast as  Adult Lottie</a>
</figure>
</section>

### External Link Promo v2
This promo is showing an example of a refreshed icon. (Article Link External). For more, see the [icons](/icons/index.html).


<section class="promo-examples">
<div class="promo promo--valign promo--article_out promo--docked promo--landscape">
  <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/1034344_2_0/1034344_2_0_dmc02_640x360.jpg">
  </div>
  <div class="promo__body">
    <div class="promo__details">
      <h3 class="promo__headline">First Glimpse of Elijah Wood as Walter</h3>
    </div>
  </div>
  <a class="promo__link" href="https://www.vulture.com/2023/01/yellowjackets-season-2-elijah-wood-first-look.html" data-no-redirect="true" target="_blank" rel="noreferrer"  data-track data-label="article link:First Glimpse of Elijah Wood as Walter" data-location="tile 1">First Glimpse of Elijah Wood as Walter</a>
</div>
</section>

### Reveal, Docked, Square

Reveals promo copy on rollover, additional overlay darkens image (from small breakpoints and up)

<section class="promo-examples">
  <figure class="promo promo--reveal promo--docked promo--square">
    <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_pro12_640x360.jpg)">
    </div>
    <figcaption class="promo__body">
      <h3 class="promo__headline">Homeland</h3>
      <p class="promo__copy">Homeland is an edge-of-your-seat sensation. CIA officer Carrie Mathison is volatile and unpredictable. With the help of her mentor Saul Berenson, she fearlessly risks everything, including her sanity, at every turn.</p>
    </figcaption>
    <a class="promo__link">Homeland</a>
  </figure>  
</section>

```
<figure class="promo promo--reveal promo--docked promo--square">
  <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_pro12_640x360.jpg)">
  </div>
  <figcaption class="promo__body">
    <h3 class="promo__headline">Homeland</h3>
    <p class="promo__copy">Homeland is an edge-of-your-seat sensation. CIA officer Carrie Mathison is volatile and unpredictable. With the help of her mentor Saul Berenson, she fearlessly risks everything, including her sanity, at every turn.</p>
  </figcaption>
  <a class="promo__link">Homeland</a>
</figure>  
```

### Portrait at all sizes
<section class="promo-examples">
  <figure class="promo promo--portrait">
    <div class="promo__image" style="background-image:url(https://www.sho.com/assets/images/order/pplus-bundle/bundle-showtime-row-01.jpg">
    </div>
    <figcaption class="promo__body">
      <h3 class="promo__headline">The Chi</h3>
    </figcaption>
    <a class="promo__link"></a>
  </figure>  
</section>

```
  <figure class="promo promo--portrait">
    <div class="promo__image" style="background-image:url(https://www.sho.com/assets/images/order/pplus-bundle/bundle-showtime-row-01.jpg">
    </div>
    <figcaption class="promo__body">
      <h3 class="promo__headline">The Chi</h3>
    </figcaption>
    <a class="promo__link"></a>
  </figure>  
  ```

### Docked Square but becomes List View on Mobile

<div class="section--inner promo-group promo-group--from-list promo-group--to-three-up">
  <figure class="promo promo--square promo--docked promo--large promo--list-view">
    <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/860_0_3429737/860_0_3429737_97_568x426.jpg" s>
    </div>
    <figcaption class="promo__body">
      <h3 class="promo__headline">Lee vs. Saunders</h3>
      <p class="promo__copy">Not Currently Available</p>
    </figcaption>
    <a class="promo__link" href="/3429737/Lee-vs-Saunders"></a>
    <a class="promo--list-view__item" href="/3429737/Lee-vs-Saunders"><h5 class="promo--list-view__item__title">Lee vs. Saunders</h5>
      <h6 class="promo--list-view__item__sub-title">Not Currently Available </h6>
      <i class="promo--list-view__item__more"></i>  
    </a>  
  </figure>
</div>

```
<div class="section--inner promo-group promo-group--from-list promo-group--to-three-up">             
  <figure class="promo promo--square promo--docked promo--large promo--list-view">
    <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
    </div>
    <figcaption class="promo__body">
      <h3 class="promo__headline">Title</h3>
      {{#subTitle}}<p class="promo__copy">Subtitle</p>{{/subTitle}}
    </figcaption>
    <a class="promo__link" href="/3429737/Lee-vs-Saunders"></a>
     <a class="promo--list-view__item" href="{{ctaLink}}"><h5 class="promo--list-view__item__title">Title</h5>
    <h6 class="promo--list-view__item__sub-title">subTitle</h6>
     <i class="promo--list-view__item__more"></i>  
     </a>  
  </figure>
</div>

```
