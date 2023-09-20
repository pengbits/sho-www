---
name: Buttons
collection: elements
---

# Buttons

## Primary and Secondary Buttons

Primary buttons (solid red) are meant for prime acquisition placements (i.e. global navigation, footer, order page main CTA).
Secondary buttons (solid white) are in use on hero component CTAs.

<div class="styleguide-panel">
  <button class="button--primary">
    Get Showtime
  </button>

  <button class="button--secondary">
    Learn More
  </button>
</div>

```html
<button class="button--primary">
  Get Showtime
</button>

<button class="button--secondary">
  Learn More
</button>
```

## Video Button

Video buttons should only be used when their link is directly to a video, not for more generic "Watch Now" actions that may lead anywhere else, i.e. the streaming modal or a title/episode page.

<div class="styleguide-panel">
  <button class="button--secondary button--video">
    watch the trailer
  </button>
  <span>&nbsp;</span>
  <button class="button--outline-white button--video">
    Watch the Trailer for Season 2 
  </button>
</div>

```html
<button class="button--secondary button--video">
  watch the trailer
</button>
```


## Outlined Buttons

Outlined buttons are in use for utility-type actions on the site, and also currently in the order banner/promos.

<div class="styleguide-panel">
  <button class="button--outline-red">
    Sign up now
  </button>

  <button class="button--outline-black">
    Sign up now
  </button>

  <button class="button--outline-white">
    Sign up now
  </button>
  
  <p></p>

  <button class="button--outline-white button--video">
    Watch the Trailer for Season 2 
  </button>
</div>

```html
<button class="button--outline-red">
  Sign up now
</button>

<button class="button--outline-black">
  Sign up now
</button>

<button class="button--outline-white">
  Sign up now
</button>
```
