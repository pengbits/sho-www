---
name:  Slider
collection: components
---
# Slider

In previous versions of the slider, slidable content was manipulated with JavaScript only. In this updated version, we have pivoted to let the user make use of horizontal scrolling via `overflow-x: scroll` on both desktop and mobile. The use of side arrows to control scrolling via JS still exists on desktop/tablet in addition to the horizontal swipe behavior. 

A Slider should
- provide a simple pagination strategy for a horizontal 'band' of content, by swiping horizontally OR by clicking/tapping on an arrow you reveal content that is offscreen
- Sliders should be swipe-able/side-scrollable on both desktop and mobile. 
- Control arrows should only be seen on desktop and tablets
- Control arrows should cause the slider to “snap to grid”, even when the starting position is not snapped to grid due to previous scrolling
- In instances where the browser width is small but controls still exists, “previous” scrolling will most likely only scroll back one image at a time. This is due to the calculations involved scrolling back too far if the initial position was not snapped to grid (ie, some promos were overlooked) 
- the default rotation style is none
- to add the behavior where a grid is drawn at higher breakpoints add the attribute `data-grid-at=768` where the supplied integer is the window size above which the grid should be drawn
- _TODO_ add infinite rotation if configured with `data-rotate=infinite`
- _TODO_ handle differently sized cards (be agnostic about contents)


```html
<div class="slider js-slider">
  <a href="#" class="slider__control slider__control--prev">
    <span class="slider__control__label">previous</span>
  </a>
  <div class="slider__container">
    <div class="slider__content">
      <ul class="slider__items">
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 1</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 2</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 3</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 4</h5>
        </li>
      </ul>
    </div>
  </div>
  <a href="#" class="slider__control slider__control--next">
    <span class="slider__control__label">next</span>
  </a>
</div>
```

## Standard Slider

<div class="slider js-slider slider--example" data-debug="Standard">
  <a href="#" class="slider__control slider__control--prev">
    <span class="slider__control__label">previous</span>
  </a>
  <div class="slider__container">
    <div class="slider__content">
      <ul class="slider__items">
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 1</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 2</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 3</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 4</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 5</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 6</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 7</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 8</h5>
        </li>

      </ul>
    </div>
  </div>
  <a href="#" class="slider__control slider__control--next">
    <span class="slider__control__label">next</span>
  </a>
</div>


## Slider with a few items

<div class="slider js-slider slider--example">
  <a href="#" class="slider__control slider__control--prev">
    <span class="slider__control__label">previous</span>
  </a>
  <div class="slider__container">
    <div class="slider__content">
      <ul class="slider__items">
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 1</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 2</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 3</h5>
        </li>
      </ul>
    </div>
  </div>
  <a href="#" class="slider__control slider__control--next">
    <span class="slider__control__label">next</span>
  </a>
</div>

## Slider with Grid-At Behavior
Set a breakpoint after which the slider will transform into an unconstrained container without scrolling (grid), typically combined with a grid-like layout for the content. Used extensively in homepage.
```
<div data-step="page" data-grid-at="768"
  class="slider js-slider slider--example slider--example-grid-at" 
>
  ...
</div>
```

<div class="slider js-slider slider--example slider--example-grid-at" data-step="page" data-grid-at="768">
  <a href="#" class="slider__control slider__control--prev">
    <span class="slider__control__label">previous</span>
  </a>
  <div class="slider__container">
    <div class="slider__content">
      <ul class="slider__items">
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 1</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 2</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 3</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 4</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 5</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 6</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 7</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 8</h5>
        </li>

      </ul>
    </div>
  </div>
  <a href="#" class="slider__control slider__control--next">
    <span class="slider__control__label">next</span>
  </a>
</div>


## Slider with Grid-Until Behavior
The inverse of above example. Slider content will be unconstrained with block-level (ie stacked) display _until the specified breakpoint is reached.

```
<div data-step="page" data-grid-until="768"
  class="slider js-slider slider--example slider--example-grid-until" 
>
  ...
</div>
```

<div class="slider js-slider slider--example slider--example-grid-until" data-step="page" data-grid-until="768">
  <a href="#" class="slider__control slider__control--prev">
    <span class="slider__control__label">previous</span>
  </a>
  <div class="slider__container">
    <div class="slider__content">
      <ul class="slider__items">
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 1</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 2</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 3</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 4</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 5</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 6</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 7</h5>
        </li>
        <li class="slider__item slider-example__item">
          <em class="slider-example__image"></em>
          <h5>item 8</h5>
        </li>
      </ul>
    </div>
  </div>
  <a href="#" class="slider__control slider__control--next">
    <span class="slider__control__label">next</span>
  </a>
</div>

## Slider of Season Cards


<div class="slider js-slider slider--season  slider--tall-example" data-step="page">
  <a href="#" class="slider__control slider__control--prev">
    <span class="slider__control__label">previous</span>
  </a>
  <div class="slider__container">
    <div class="slider__content">
      <ul class="slider__items">
        <li class="slider__item">
          <figure class="promo promo--season">
            <div class="promo__image lazyload"  data-bgset="https://www.sho.com/site/image-bin/images/804_5_0/804_5_0_01_300x300.jpg [--small] |  https://www.sho.com/site/image-bin/images/804_5_0/804_5_0_01_480x270.jpg">
            </div>
            <figcaption class="promo__body">
              <h3 class="promo__headline">Season 5</h3>
              <p class="promo__copy">Volatile CIA agent Carrie Mathison investigates and ultimately becomes obsessed with returned POW marine Nicholas Brody, who may or may not be an al-Qaeda-trained terrorist; Brody struggles to resume his domestic life with his wife and two children whom he barely knows; Saul tries his best to support his bipolar protégé while pursuing leads of his own and trying to hold his crumbling marriage together.</p>
            </figcaption>
            <a class="promo__link" href="#">Season 5</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--season">
            <div class="promo__image lazyload"  data-bgset="https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_01_300x300.jpg [--small] |  https://www.sho.com/site/image-bin/images/804_4_0/804_4_0_01_480x270.jpg">
            </div>
            <figcaption class="promo__body">
              <h3 class="promo__headline">Season 4</h3>
              <p class="promo__copy">Carrie goes to extraordinary lengths to solve the latest crisis at the CIA while dealing with a deeply personal secret; Brody struggles to survive; Saul must walk a tightrope and play many opposing sides to keep his job at the CIA and try to revive his troubled marriage; Quinn has a crisis of faith.</p>
            </figcaption>
            <a class="promo__link" href="#">Season 4</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--season">
            <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/804_3_0/804_3_0_01_300x300.jpg [--small] |  https://www.sho.com/site/image-bin/images/804_3_0/804_3_0_01_480x270.jpg">
            </div>
            <figcaption class="promo__body">
              <h3 class="promo__headline">Season 3</h3>
              <p class="promo__copy">Carrie goes to extraordinary lengths to solve the latest crisis at the CIA while dealing with a deeply personal secret; Brody struggles to survive; Saul must walk a tightrope and play many opposing sides to keep his job at the CIA and try to revive his troubled marriage; Quinn has a crisis of faith.</p>
            </figcaption>
            <a class="promo__link" href="#">Season 3</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--season">
            <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/804_2_0/804_2_0_01_300x300.jpg [--small] |  https://www.sho.com/site/image-bin/images/804_2_0/804_2_0_01_480x270.jpg">
            </div>
            <figcaption class="promo__body">
              <h3 class="promo__headline">Season 2</h3>
              <p class="promo__copy">Carrie's CIA career takes off when she becomes an overseas station chief, but every drone strike and tactical raid comes at a cost and she quickly learns the true price of power. Saul fights to stay in the intelligence game.</p>
            </figcaption>
            <a class="promo__link" href="#">Season 2</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--season">
            <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/804_1_0/804_1_0_01_300x300.jpg [--small] |  https://www.sho.com/site/image-bin/images/804_1_0/804_1_0_01_480x270.jpg">
            </div>
            <figcaption class="promo__body">
              <h3 class="promo__headline">Season 1</h3>
              <p class="promo__copy">The game has changed for Carrie Mathison. Out of the CIA and living in Berlin, Carrie is trying to start a new life but realizes now she's the one with a target on her back. As the danger intensifies, and without Saul and Quinn to rely on, one thing becomes clear  she's never been at greater risk or with more to lose.</p>
            </figcaption>
            <a class="promo__link" href="#">Season 1</a>
          </figure>
        </li>
      </ul>
    </div>
  </div>
  <a href="#" class="slider__control slider__control--next">
    <span class="slider__control__label">next</span>
  </a>
</div>


## Genre Slider
A collection of genres, represented by portrait aspect artworks, found in the movies page

<div class="slider slider--portrait slider--example slider--extra-tall-example slider--no-shaders js-slider" data-step="page">
  <a href="#" class="slider__control slider__control--prev" style="display: none;">
    <span class="slider__control__label">previous</span>
  </a>
  <div class="slider__container">
    <div class="slider__content">
      <ul class="slider__items">
        <li class="slider__item">
          <figure class="promo promo--portrait promo--docked promo--large">
            <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3452660/0_0_3452660_02_300x450.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3452660/0_0_3452660_02_300x450.jpg&quot;);">
            <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3452660/0_0_3452660_02_300x450.jpg" sizes="246px" srcset="https://www.sho.com/site/image-bin/images/0_0_3452660/0_0_3452660_02_300x450.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="246px"></picture></div>
            <div class="promo__body">
              <h3 class="promo__headline">Action</h3>
              <p class="promo__copy">See All</p>
            </div>
            <a class="promo__link" href="/movies/action" data-track="" data-label="Action" data-location="tile 1">Action</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--portrait promo--docked promo--large">
            <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3499364/0_0_3499364_07_300x450.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3499364/0_0_3499364_07_300x450.jpg&quot;);">
            <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3499364/0_0_3499364_07_300x450.jpg" sizes="246px" srcset="https://www.sho.com/site/image-bin/images/0_0_3499364/0_0_3499364_07_300x450.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="246px"></picture></div>
            <div class="promo__body">
              <h3 class="promo__headline">Adult</h3>
              <p class="promo__copy">See All</p>
            </div>
            <a class="promo__link" href="/movies/adult" data-track="" data-label="Adult" data-location="tile 2">Adult</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--portrait promo--docked promo--large">
            <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3482006/0_0_3482006_05_300x450.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3482006/0_0_3482006_05_300x450.jpg&quot;);">
            <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3482006/0_0_3482006_05_300x450.jpg" sizes="246px" srcset="https://www.sho.com/site/image-bin/images/0_0_3482006/0_0_3482006_05_300x450.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="246px"></picture></div>
            <div class="promo__body">
              <h3 class="promo__headline">Comedy</h3>
              <p class="promo__copy">See All</p>
            </div>
            <a class="promo__link" href="/movies/comedy" data-track="" data-label="Comedy" data-location="tile 3">Comedy</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--portrait promo--docked promo--large">
            <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3437264/0_0_3437264_01_300x450.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3437264/0_0_3437264_01_300x450.jpg&quot;);">
            <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3437264/0_0_3437264_01_300x450.jpg" sizes="246px" srcset="https://www.sho.com/site/image-bin/images/0_0_3437264/0_0_3437264_01_300x450.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="246px"></picture></div>
            <div class="promo__body">
              <h3 class="promo__headline">Documentary</h3>
              <p class="promo__copy">See All</p>
            </div>
            <a class="promo__link" href="/movies/documentary" data-track="" data-label="Documentary" data-location="tile 4">Documentary</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--portrait promo--docked promo--large">
            <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3475579/0_0_3475579_01_300x450.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3475579/0_0_3475579_01_300x450.jpg&quot;);">
            <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3475579/0_0_3475579_01_300x450.jpg" sizes="246px" srcset="https://www.sho.com/site/image-bin/images/0_0_3475579/0_0_3475579_01_300x450.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="246px"></picture></div>
            <div class="promo__body">
              <h3 class="promo__headline">Drama</h3>
              <p class="promo__copy">See All</p>
            </div>
            <a class="promo__link" href="/movies/drama" data-track="" data-label="Drama" data-location="tile 5">Drama</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--portrait promo--docked promo--large">
            <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_125003/0_0_125003_07_300x450.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_125003/0_0_125003_07_300x450.jpg&quot;);">
            <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_125003/0_0_125003_07_300x450.jpg" sizes="246px" srcset="https://www.sho.com/site/image-bin/images/0_0_125003/0_0_125003_07_300x450.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="246px"></picture></div>
            <div class="promo__body">
              <h3 class="promo__headline">Family</h3>
              <p class="promo__copy">See All</p>
            </div>
            <a class="promo__link" href="/movies/family" data-track="" data-label="Family" data-location="tile 6">Family</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--portrait promo--docked promo--large">
            <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3469111/0_0_3469111_03_300x450.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3469111/0_0_3469111_03_300x450.jpg&quot;);">
            <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3469111/0_0_3469111_03_300x450.jpg" sizes="246px" srcset="https://www.sho.com/site/image-bin/images/0_0_3469111/0_0_3469111_03_300x450.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="246px"></picture></div>
            <div class="promo__body">
              <h3 class="promo__headline">Horror</h3>
              <p class="promo__copy">See All</p>
            </div>
            <a class="promo__link" href="/movies/horror" data-track="" data-label="Horror" data-location="tile 7">Horror</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--portrait promo--docked promo--large">
            <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3433528/0_0_3433528_01_300x450.jpg">
            </div>
            <div class="promo__body">
              <h3 class="promo__headline">Music</h3>
              <p class="promo__copy">See All</p>
            </div>
            <a class="promo__link" href="/movies/music" data-track="" data-label="Music" data-location="tile 8">Music</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--portrait promo--docked promo--large">
            <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3481996/0_0_3481996_05_300x450.jpg">
            </div>
            <div class="promo__body">
              <h3 class="promo__headline">Sci Fi/Fantasy</h3>
              <p class="promo__copy">See All</p>
            </div>
            <a class="promo__link" href="/movies/sci-fi-fantasy" data-track="" data-label="Sci Fi/Fantasy" data-location="tile 9">Sci Fi/Fantasy</a>
          </figure>
        </li>
        <li class="slider__item">
          <figure class="promo promo--portrait promo--docked promo--large">
            <div class="promo__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3481969/0_0_3481969_02_300x450.jpg">
            </div>
            <div class="promo__body">
              <h3 class="promo__headline">Suspense</h3>
              <p class="promo__copy">See All</p>
            </div>
            <a class="promo__link" href="/movies/suspense" data-track="" data-label="Suspense" data-location="tile 10">Suspense</a>
          </figure>
        </li>
      </ul>
    </div>
  </div>
  <a href="#" class="slider__control slider__control--next">
    <span class="slider__control__label">next</span>
  </a>
</div>

## Movies slider from two col
Promos with portrait aspect-ratio art, two column layout on mobile and slider for desktop

<div class="slider slider--portrait slider--example slider--extra-tall-example slider--from-stack slider--from-two-col slider--no-shaders js-slider slider--grid" data-grid-until="768" data-step="page">
    <a href="#" class="slider__control slider__control--prev" style="display: none;">
      <span class="slider__control__label">previous</span>
    </a>
    <div class="slider__container">
      <div class="slider__content">
        <ul class="slider__items">
          <li class="slider__item">
            <figure class="promo promo--portrait promo--docked promo--large">
              <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3500701/0_0_3500701_00_200x300.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3500701/0_0_3500701_00_200x300.jpg&quot;);">
              <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3500701/0_0_3500701_00_200x300.jpg" sizes="168px" srcset="https://www.sho.com/site/image-bin/images/0_0_3500701/0_0_3500701_00_200x300.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="168px"></picture></div>
              <div class="promo__body"> 
              </div>
              <a class="promo__link" href="/titles/3500701/scream" data-track="" data-label="Scream" data-location="tile 1">Scream</a>
            </figure>
          </li>
          <li class="slider__item">
            <figure class="promo promo--portrait promo--docked promo--large">
              <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3482014/0_0_3482014_00_200x300.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3482014/0_0_3482014_00_200x300.jpg&quot;);">
              <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3482014/0_0_3482014_00_200x300.jpg" sizes="168px" srcset="https://www.sho.com/site/image-bin/images/0_0_3482014/0_0_3482014_00_200x300.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="168px"></picture></div>
              <div class="promo__body">
              </div>
              <a class="promo__link" href="/titles/3482014/it-comes-at-night" data-track="" data-label="It comes at night" data-location="tile 2">It comes at night</a>
            </figure>
          </li>
          <li class="slider__item">
            <figure class="promo promo--portrait promo--docked promo--large">
              <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3473616/0_0_3473616_00_200x300.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3473616/0_0_3473616_00_200x300.jpg&quot;);">
              <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3473616/0_0_3473616_00_200x300.jpg" sizes="168px" srcset="https://www.sho.com/site/image-bin/images/0_0_3473616/0_0_3473616_00_200x300.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="168px"></picture></div>
              <div class="promo__body">
              </div>
              <a class="promo__link" href="/titles/3473616/hereditary" data-track="" data-label="Hereditary" data-location="tile 3">Hereditary</a>
            </figure>
          </li>
          <li class="slider__item">
            <figure class="promo promo--portrait promo--docked promo--large">
              <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3418268/0_0_3418268_00_200x300.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3418268/0_0_3418268_00_200x300.jpg&quot;);">
              <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3418268/0_0_3418268_00_200x300.jpg" sizes="168px" srcset="https://www.sho.com/site/image-bin/images/0_0_3418268/0_0_3418268_00_200x300.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="168px"></picture></div>
              <div class="promo__body">
              </div>
              <a class="promo__link" href="/titles/3418268/da-sweet-blood-of-jesus" data-track="" data-label="Da Sweet Blood of Jesus" data-location="tile 4">Da Sweet Blood of Jesus</a>
            </figure>
          </li>
          <li class="slider__item">
            <figure class="promo promo--portrait promo--docked promo--large">
              <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3504294/0_0_3504294_00_200x300.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3504294/0_0_3504294_00_200x300.jpg&quot;);">
              <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3504294/0_0_3504294_00_200x300.jpg" sizes="168px" srcset="https://www.sho.com/site/image-bin/images/0_0_3504294/0_0_3504294_00_200x300.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="168px"></picture></div>
              <div class="promo__body">
              </div>
              <a class="promo__link" href="/titles/3504294/true-grit" data-track="" data-label="True Grit" data-location="tile 5">True Grit</a>
            </figure>
          </li>
          <li class="slider__item">
            <figure class="promo promo--portrait promo--docked promo--large">
              <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3500701/0_0_3500701_00_200x300.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3500701/0_0_3500701_00_200x300.jpg&quot;);">
              <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3500701/0_0_3500701_00_200x300.jpg" sizes="168px" srcset="https://www.sho.com/site/image-bin/images/0_0_3500701/0_0_3500701_00_200x300.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="168px"></picture></div>
              <div class="promo__body">         
              </div>
              <a class="promo__link" href="/titles/3500701/scream" data-track="" data-label="Scream" data-location="tile 6">Scream</a>
            </figure>
          </li>
          <li class="slider__item">
            <figure class="promo promo--portrait promo--docked promo--large">
              <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3482014/0_0_3482014_00_200x300.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3482014/0_0_3482014_00_200x300.jpg&quot;);">
              <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3482014/0_0_3482014_00_200x300.jpg" sizes="168px" srcset="https://www.sho.com/site/image-bin/images/0_0_3482014/0_0_3482014_00_200x300.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="168px"></picture></div>
              <div class="promo__body">             
              </div>
              <a class="promo__link" href="/titles/3482014/it-comes-at-night" data-track="" data-label="It comes at night" data-location="tile 7">It comes at night</a>
            </figure>
          </li>
          <li class="slider__item">
            <figure class="promo promo--portrait promo--docked promo--large">
              <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3473616/0_0_3473616_00_200x300.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3473616/0_0_3473616_00_200x300.jpg&quot;);">
              <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3473616/0_0_3473616_00_200x300.jpg" sizes="168px" srcset="https://www.sho.com/site/image-bin/images/0_0_3473616/0_0_3473616_00_200x300.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="168px"></picture></div>
              <div class="promo__body">
              </div>
              <a class="promo__link" href="/titles/3473616/hereditary" data-track="" data-label="Hereditary" data-location="tile 8">Hereditary</a>
            </figure>
          </li>
          <li class="slider__item">
            <figure class="promo promo--portrait promo--docked promo--large">
              <div class="promo__image lazyloaded" data-bgset="https://www.sho.com/site/image-bin/images/0_0_3418268/0_0_3418268_00_200x300.jpg" style="background-image: url(&quot;https://www.sho.com/site/image-bin/images/0_0_3418268/0_0_3418268_00_200x300.jpg&quot;);">
              <picture style="display: none;"><source data-srcset="https://www.sho.com/site/image-bin/images/0_0_3418268/0_0_3418268_00_200x300.jpg" sizes="168px" srcset="https://www.sho.com/site/image-bin/images/0_0_3418268/0_0_3418268_00_200x300.jpg"><img alt="" class="lazyautosizes lazyloaded" data-sizes="auto" data-parent-fit="cover" sizes="168px"></picture></div>
              <div class="promo__body">         
              </div>
              <a class="promo__link" href="/titles/3418268/da-sweet-blood-of-jesus" data-track="" data-label="Da Sweet Blood of Jesus" data-location="tile 9">Da Sweet Blood of Jesus</a>
            </figure>
          </li>
        </ul>
      </div>
    </div>
    <a href="#" class="slider__control slider__control--next" style="display: none;">
      <span class="slider__control__label">next</span>
    </a>
  </div>

  <style type="text/css">
  .site-sidebar,
  .site-sidebar-toggle {
    display: none;
	}

  </style>