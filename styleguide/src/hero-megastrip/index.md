---
name: Hero MegaStrip
collection: components
---

<h1>Hero MegaStrip</h1>

from [SITE-19823](https://work.sho.com/jira/browse/SITE-19823)
  
The concept for the animated Hero that Keith Landon explored in [DESIGN-17934](https://work.sho.com/jira/browse/DESIGN-17934) ended up being too elaborate/heavy to implement as an animated gif, but before rejecting outright, we will try to build something similar in html+css+js. since the concept is just a slow pan over a very wide "breath-of-content/itunes store" style strip of artworks, it may be possible to recreate the same effect without the prohibitive file sizes that come with the giant animated gif, for use in the stream showtime page.

if possible, this animated hero would work for both desktop + mobile (but not for the amp page)

_because the vieport is used to calculate the extra-padding on the inner container, at desktop, this component looks best with developer tools docked to the right_

<section style="background-color:#000">
<div class="megastrip js-megastrip" style="display:none;">
      <ul class="megastrip__inner">
        <li class="megastrip__item megastrip__item-1"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/01.jpg?wibble)"  
      data-index="1" alt="Desus and Mero" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    <li class="megastrip__item megastrip__item-2"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/02.jpg?wobble)"  
      data-index="2" alt="Billions" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    <li class="megastrip__item megastrip__item-3"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/03.jpg?foo)"  
      data-index="3" alt="Dexter: New Blood" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    <li class="megastrip__item megastrip__item-4"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/04.jpg?baz)"  
      data-index="4" alt="Yellowjackets" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    <li class="megastrip__item megastrip__item-5"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/05.jpg)"  
      data-index="5" alt="The Chi" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    <li class="megastrip__item megastrip__item-6"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/06.jpg)"  
      data-index="6" alt="American Rust" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    <li class="megastrip__item megastrip__item-7"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/07.jpg)"  
      data-index="7" alt="Ziwe" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    <li class="megastrip__item megastrip__item-8"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/08.jpg)"  
      data-index="8" alt="City on a Hill" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    <li class="megastrip__item megastrip__item-9"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/09.jpg)"  
      data-index="9" alt="The L Word: Generation Q" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    <li class="megastrip__item megastrip__item-10"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/10.jpg)"  
      data-index="10" alt="Couples Therapy" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    <li class="megastrip__item megastrip__item-11"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/11.jpg)"  
      data-index="11" alt="Flatbush Misdemeanors" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    <li class="megastrip__item megastrip__item-12"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/12.jpg)"  
      data-index="12" alt="Your Honor" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
    <li class="megastrip__item megastrip__item-13"><img 
      class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/10/13.jpg)"  
      data-index="13" alt="The Circus" 
      src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" 
    /></li>
  </ul>
</div>
<div class="hero__inner">
  <h1 class="stream-showtime__hero-header">Stream Showtime<sup><span class="stream-showtime--reg">®</span></sup> Now</h1>
  <h3 class="stream-showtime__hero-copy"> 
    Try free for 7 days, then only $10.99/month. Cancel anytime.
  </h3>
</div>
</section>

<p style="400px">&nbsp;</p>
```
<section class="hero hero--megastrip" data-context="hero">      
  <img class="hero__logo" src="https://www.sho.com/assets/images/stream-showtime/Showtime_logo.svg">  
    <div class="megastrip js-megastrip">
      <ul class="megastrip__inner">
        <li class="megastrip__item megastrip__item-1 "><em class="badge">1 </em><img alt="Ray Donovan"  class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/07/01.jpg?foo)"   src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" /></li>
        <li class="megastrip__item megastrip__item-2 "><em class="badge">2 </em><img alt="Billions"     class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/07/02.jpg?baz)"   src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" /></li>
        <li class="megastrip__item megastrip__item-3 "><em class="badge">3 </em><img alt="Your Honor"   class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/07/03.jpg?wibble)"   src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" /></li>
        <li class="megastrip__item megastrip__item-4 "><em class="badge">4 </em><img alt="Shameless"    class="megastrip__image" style="background-image:url(https://www.sho.com/assets/images/stream-showtime/megastrip/07/04.jpg?wobble)"   src="https://www.sho.com/assets/images/stream-showtime/clear_200x300.gif" /></li>
        ...
      </ul>
    </div>
  <div class="hero__inner">
    <p>headline + copy goes here</p>
  </div>
</section>
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
    padding: 10px;
  }
</style>