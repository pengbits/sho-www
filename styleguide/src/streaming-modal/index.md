---
name:  Streaming Modal
collection: order
---
# Streaming Modal

Due to the media query aspect of this component, this is best viewed with the styleguide navigation toggled off.

## Basic
<div class="streaming-modal-example">
  <div class="streaming-modal modal-open streaming-modal--order-promo " data-context="streaming modal">
    <div class="streaming-modal__order-promo">
      <div class="streaming-modal__headline">START STREAMING NOW ON <span class="streaming-modal__logo">PARAMOUNT+</span></div>
      <p class="streaming-modal__copy">The streaming home of SHOWTIME</p>
      <a class="button--solid-white streaming-modal__order-promo-button" href="https://www.paramountplus.com/?cbscidmt=showtimebundle&ftag=PPM-22-10bdd2f" data-track="" data-label="order">START YOUR FREE TRIAL</a>
    </div>
    <div class="streaming-modal__headline">ALREADY HAVE PARAMOUNT+ WITH SHOWTIME?</div>
    <div class="streaming-modal__option streaming-modal__option--pplus">
      <a class="streaming-modal__button" href="https://www.paramountplus.com/account/signin/?ftag=PPM-22-10bdd2f" data-track="" data-label="paramount plus">SIGN IN</a>
    </div>
    <div class="streaming-modal__headline">ONLY HAVE SHOWTIME?</div>
    <div class="streaming-modal__option streaming-modal__option--showtime">
      <p class="streaming-modal__copy">For subscribers who signed up through the SHOWTIME website or the SHOWTIME app.</p>
      <a class="streaming-modal__button" href="https://www.showtime.com/#/series/1003223" data-track="" data-label="standalone">SIGN IN</a>
    </div>
    <div class="streaming-modal__option streaming-modal__option--showtime-anytime">
      <p class="streaming-modal__copy">For subscribers who signed up through a cable, satellite, telco or streaming service provider.</p>
      <a class="streaming-modal__button" href="https://www.showtimeanytime.com/#/series/1003223" data-track="" data-label="anytime">SIGN IN</a>
    </div>
  </div>
</div>

## With Image
Appears on series-home, movie-title, episode-detail & sports-event pages. Requires one of those classnames and a meta tag named `streaming-modal-image` with image url content to appear on the page.

<div class="streaming-modal-example">
<div class="streaming-modal modal-open streaming-modal--order-promo streaming-modal--with-image"
    data-context="streaming modal">
    <div class="streaming-modal__image">
      <div class="streaming-modal__image-container">
        <div class="streaming-modal__image-container__shim"></div>
        <img src="https://www.sho.com/site/image-bin/images/1034344_2_0/1034344_2_0_01h_640x360.jpg" alt="">
      </div>
    </div>
    <div class="streaming-modal__order-promo">
      <div class="streaming-modal__headline">START STREAMING NOW ON <span class="streaming-modal__logo">PARAMOUNT+</span></div>
      <p class="streaming-modal__copy">The streaming home of SHOWTIME</p>
      <a class="button--solid-white streaming-modal__order-promo-button" href="https://www.paramountplus.com/?cbscidmt=showtimebundle&ftag=PPM-22-10bdd2f" data-track="" data-label="order">START YOUR FREE TRIAL</a>
    </div>
    <div class="streaming-modal__headline">ALREADY HAVE PARAMOUNT+ WITH SHOWTIME?</div>
    <div class="streaming-modal__option streaming-modal__option--pplus">
      <a class="streaming-modal__button" href="https://www.paramountplus.com/account/signin/?ftag=PPM-22-10bdd2f" data-track="" data-label="paramount plus">SIGN IN</a>
    </div>
    <div class="streaming-modal__headline">ONLY HAVE SHOWTIME?</div>
    <div class="streaming-modal__option streaming-modal__option--showtime">
      <p class="streaming-modal__copy">For subscribers who signed up through the SHOWTIME website or the SHOWTIME app.</p>
      <a class="streaming-modal__button" href="https://www.showtime.com/#/series/1002742?i_cid=int-ray-6194" data-track="" data-label="standalone">SIGN IN</a>
    </div>
    <div class="streaming-modal__option streaming-modal__option--showtime-anytime">
      <p class="streaming-modal__copy">For subscribers who signed up through a cable, satellite, telco or streaming service provider.</p>
      <a class="streaming-modal__button" href="https://www.showtimeanytime.com/#/series/1002742?i_cid=int-ray-6194" data-track=""
        data-label="anytime">SIGN IN</a>
    </div>
  </div>

```
<!-- required for image -->
<meta name="streaming-modal-image" content="https://www.sho.com/site/image-bin/images/1002742_5_0/1002742_5_0_01h_640x360.jpg" />
<!-- custom order button label -->
<a href="#" class="global-nav__item--red" data-location="utility">Get It Now</a>
<div class="series-home">
<!-- END required for image -->
<div class="streaming-modal modal-open streaming-modal--order-promo streaming-modal--with-image"
    data-context="streaming modal">
    <div class="streaming-modal__image">
      <div class="streaming-modal__image-container">
        <div class="streaming-modal__image-container__shim"></div>
        <img src="https://www.sho.com/site/image-bin/images/1034344_2_0/1034344_2_0_01h_640x360.jpg" alt="">
      </div>
    </div>
    <div class="streaming-modal__order-promo">
      <div class="streaming-modal__headline">START STREAMING NOW ON <span class="streaming-modal__logo">PARAMOUNT+ WITH SHOWTIME</span></div>
      <a class="button--solid-white streaming-modal__order-promo-button" href="https://www.paramountplus.com/?cbscidmt=showtimebundle&ftag=PPM-22-10bdd2f" data-track="" data-label="order">START YOUR FREE TRIAL</a>
    </div>
    <div class="streaming-modal__headline">ALREADY HAVE PARAMOUNT+ WITH SHOWTIME?</div>
    <div class="streaming-modal__option streaming-modal__option--pplus">
      <a class="streaming-modal__button" href="https://www.paramountplus.com/account/signin/?ftag=PPM-22-10bdd2f" data-track="" data-label="paramount plus">SIGN IN</a>
    </div>
    <div class="streaming-modal__headline">ONLY HAVE SHOWTIME?</div>
    <div class="streaming-modal__option streaming-modal__option--showtime">
      <p class="streaming-modal__copy">For subscribers who signed up through the SHOWTIME website or the SHOWTIME app.</p>
      <a class="streaming-modal__button" href="https://www.showtime.com/#/series/1002742?i_cid=int-ray-6194" data-track="" data-label="standalone">SIGN IN</a>
    </div>
    <div class="streaming-modal__option streaming-modal__option--showtime-anytime">
      <p class="streaming-modal__copy">For subscribers who signed up through a cable, satellite, telco or streaming service provider.</p>
      <a class="streaming-modal__button" href="https://www.showtimeanytime.com/#/series/1002742?i_cid=int-ray-6194" data-track=""
        data-label="anytime">SIGN IN</a>
    </div>
  </div>
```

The JavaScript aspect of this modal has some minor complexities. The URL hash gets transformed into slugs that can be appended to the two outgoing links in the modal as working deep links to those two services. Also, an i_cid in the hash (if present) is transformed into a query parameter on both outgoing links. 

<table class="streaming-modal-example-buttons">
  <tr>
    <td>Series example #/stream/series/1003223</td>
    <td><a class="button--primary" href="#/stream/series/1003223">Stream this series</a></td>
  </tr>
  <tr>
    <td>Episode example #/stream/episode/1231231 </td>
    <td><a class="button--primary" href="#/stream/episode/1231231">Stream this episode</a> </td>
  </tr>
  <tr>
    <td>Movie example #/stream/movie/45345 </td>
    <td><a class="button--primary" href="#/stream/movie/45345">Stream this movie</a> </td>
  </tr>
  <tr>
    <td>Home example #/stream/home </td>
    <td><a class="button--primary" href="#/stream/home">Stream All</a> </td>
  </tr>
  <tr>
    <td>Series example with i_cid value at end #/stream/series/1003223/testSeries </td>
    <td><a class="button--primary" href="#/stream/series/1003223/testSeries">Stream this series</a> </td>
  </tr>
  <tr>
    <td>Episode example with i_cid value at end #/stream//episode/1231231/testEpisode </td>
    <td><a class="button--primary" href="#/stream/episode/1231231/testEpisode">Stream this episode</a> </td>
  </tr>
  <tr>
    <td>Movie example with i_cid value at end #/stream/movie/45345/testMovie </td>
    <td><a class="button--primary" href="#/stream/movie/45345/testMovie">Stream this movie</a> </td>
  </tr>
  <tr>
    <td>Home example with i_cid value at end #/stream/home/testHome </td>
    <td><a class="button--primary" href="#/stream/home/testHome">Stream All</a></td>
  </tr>
</table>
