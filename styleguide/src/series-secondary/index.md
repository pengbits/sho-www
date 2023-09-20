---
name:  Series Secondary
collection: components
---

# Series Secondary

This is just a sandbox for working through the series below-the-fold refresh.

We are making use of a 2-3 column adaptive layout in order to handle different availabilities of the secondary content in the series footer. (Only applicable to desktop, on mobile all content is full width)

the different possible cases are:

- with series updates but no next-on
- with next-on but no series updates
- with series updates and next-on
- no series updates or next on

<table border="1">
  <tr><td colspan="2">about </td><td>updates</td><td>a</td></tr>
  <tr><td colspan="2">about </td><td>next on</td><td>b</td></tr>
  <tr><td>about</td><td>updates</td><td>next on     </td><td>c</td></tr>
  <tr><td colspan="2">about </td><td> order  </td><td>d</td></tr>
</table>

```
.about-the-series--has-updates // a
.about-the-series--has-next-on // b
.about-the-series--has-next-on.about-the-series--has-updates // c 
.about-the-series--has-synapsis-only // d
```

<div class="series-footer-variation-select">
  <select class="js-series-footer-variation-select">
    <option>Choose a variant</option>
    <option selected value="about-the-series--has-updates about-the-series--has-next-on">Has Updates & Has Next On</option>
    <option value="about-the-series--has-next-on"> Has Next On</option>
    <option value="about-the-series--has-updates">Has Updates</option>
    <option value="about-the-series--has-synapsis-only">Has Synapsis only</option>
  </select>
</div>
<div class="series-footer-example">
<section class="about-the-series-section">
  <div class="about-the-series about-the-series--has-updates about-the-series--has-next-on">  
    <div class="about-the-series__synapsis">
      <h2 class="block-container__headline">About The Series</h2>
      <p class="body-text">Part survival epic, part psychological horror and part coming-of-age drama, this is the story of a team of wildly talented high school girls' soccer players who survive a plane crash deep in the remote northern wilderness. The series chronicles their descent from a complicated but thriving team to savage clans, while also tracking the lives they’ve attempted to piece back together 25 years later. What began in the wilderness is far from over. Starring Melanie Lynskey, Tawny Cypress, with Christina Ricci and Juliette Lewis.</p>
    </div>
    <div class="about-the-series__updates" data-context="Latest News">
    <h2 class="block-container__headline">Latest News</h2>
      <ul class="block-list block-list--icons-medium">
        <li class="block-list__item">
          <a href="#" data-track data-label="TBD">
            <span class="block-list__icon"><i class="icon icon--large icon--text-document-out"></i></span>
            <p>Slappy frontside air helipop handplant Slap full-cab speed wobbles grind.</p>
          </a>
        </li>
        <li class="block-list__item">
          <a href="#" data-track data-label="TBD">
            <span class="block-list__icon"><i class="icon icon--large icon--text-document-out"></i></span>
            <p>Willy Santos smith grind full-cab fakie street bearings dude.</p>
          </a>
        </li>
        <li class="block-list__item">
          <a href="#" data-track data-label="TBD">
            <span class="block-list__icon"><i class="icon icon--large icon--text-document-out"></i></span>
            <p>Rocket air feeble crooked grind poseur Christ air rip grip skate key Andy Takakjian. </p>
          </a>
        </li>
        <li class="block-list__item">
          <a href="#" data-track data-label="TBD">
            <span class="block-list__icon"><i class="icon icon--large icon--text-document-out"></i></span>
            <p>Skate ipsum dolor sit amet, soul skate 1080 pop shove-it gnar bucket deck bone air downhill.</p>
          </a>
        </li>
      </ul>
    </div>
    <div class="about-the-series__next-on" data-context="Next Episode">
    <h2 class="block-container__headline">Next Episode</h2>
    <figure class="promo promo--landscape promo--docked">
      <div class="promo__image" style="background-image:url(https://www.sho.com/site/image-bin/images/1033985_2_3517296/1033985_2_3517296_01_568x426.jpg)">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__headline">Ep 1</h3>
        <p class="promo__copy">Streaming: Jan 3<br />Airing: Jan 5 at 9p</p>
      </figcaption>
      <a class="promo__link" data-track data-label="Ep 1" href="/your-honor/season/1/episode/1/pilot">Ep 1</a>
    </figure>
    </div>
    <div class="about-the-series__order-promo">
      <section class="refresh-order-banner refresh-order-banner--no-image" style="max-width: 500px">
        <div class="refresh-order-banner__inner" data-context="banner">
          <a href="{{ctaLink}}" data-track data-label="order" class="refresh-order-banner__image-wrapper">
            <div class="refresh-order-banner__image lazyload" data-bgset="https://www.sho.com/assets/images/refresh/refresh-order-banner-no-borders_960x180.jpg">
            </div>
          </a>
          <div class="refresh-order-banner__body">
            <div class="refresh-order-banner__topline">Limited Time Offer</div>
            <h3 class="refresh-order-banner__headline">$3.99/MO FOR 3 MONTHS<sup>&#42;</sup></h3>
            <a href="{{ctaLink}}" data-track data-label="order" class="refresh-order-banner__button">try 30 days free</a>
            <div class="refresh-order-banner__legal">&#42;Terms apply.</div>
          </div>
        </div>
      </section>
    </div>
  </div>
</section>
</div>

also, if we are in case d, and neither next-episode or updates are present, we need to hide the standard order-promo directly under this section (it's redundant because we are using an order-promo to fill the gap)

```
about-the-series.about-the-series--has-synapsis-only 
+
refresh-order-banner [display:none]
```

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
.site-content > h1,
.site-content > p, 
.site-content > ul {
  padding:0px 15px 0px 15px;
}
.site-content > ul,
.site-content > table {
  margin-left:20px;
}
table td {
  padding: 10px
}
.about-the-series {
  margin-top:20px;
  padding-top:40px;
}
.series-footer-variation-select {
  margin-left:20px;
}
@media only screen and (max-width:992px){
  .series-footer-variation-select {display:none}
}
.series-footer-example {
  background-color:#000000
}
.about-the-series br {
  display:none
}
.about-the-series__next-on br {
  display:block
}
.about-the-series__next-on p {
  margin-bottom:0;
}
.about-the-series .block-list {
  padding:0
}
</style>

<script type="text/javascript">
  var select,
  options,
  container,
  selected,
  variationClassName,
  className
  ;

  window.addEventListener('DOMContentLoaded', (e) => {
    select    = $('.js-series-footer-variation-select');
    options   = select.find('option')
    container = $('.about-the-series')
    ;
    select.on('change', function(e){
      selected = select[0].selectedIndex
      var variationClassName = options.eq(selected).attr('value')
      if(!variationClassName) return 
      var className = 'about-the-series '+variationClassName
      container[0].className = className
    })
  });
</script>

