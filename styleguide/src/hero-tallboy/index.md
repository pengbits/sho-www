---
name: Hero TallBoy
collection: components
---

<h1>Hero TallBoy</h1>

from [SITE-21992](https://work.sho.com/jira/browse/SITE-21992)
  
this component, introduced for the wyndham landing page [DESIGN-23988](https://work.sho.com/jira/browse/DESIGN-23988) borrows heavily from the Hero in the stream-showtime page, but with different responsive behavior. Unlike the order context, in which the headline text stacks under the image, in an inverted color-way, this version has the text contained within the hero footprint, but with the hero stretching to new heights to accommodate the change, hence 'tallboy'.

<div class="wyndham-hero-container">
<section data-context="hero" class="hero hero--stream-showtime hero--tallboy">
  <a class="hero__logo-link" href="/" data-track="" data-context="global navigation" data-label="home">
    <img class="hero__logo hero__logo--directv-hospitality" src="https://www.sho.com/assets/images/bulk/wyndham2021/directv-hospitality.min.svg">
  </a><div class="hero__image lazyload" data-bgset="https://www.sho.com/assets/images/bulk/wyndham-hero_1440x722.jpg [--small] |  https://www.sho.com/assets/images/bulk/wyndham-hero_1440x722.jpg"></div>
  <div class="hero__inner">
    <h1 class="hero__headline js-format-symbols">Save with SHOWTIME on DirecTV and meet your brand standards</h1>
    <h3 class="hero__copy js-format-symbols">Ask how to get SHOWTIME with DIRECTV for your property. Call 888-301-3522 for more information.</h3>
  </div>
</section><!-- don't let markdown create a br here --><div 
  class="hero__popover">
  <h1 class="hero__headline js-format-symbols">Save with SHOWTIME on DirecTV and meet your brand standards</h1>
  <h3 class="hero__copy js-format-symbols">Ask how to get SHOWTIME with DIRECTV for your property. Call 888-301-3522 for more information.</h3>
</div>
  <figure class="wyndham-badge">
    <figcaption class="wyndham-badge__alt-text">Wyndham Hotels & Resorts Approved Supplier</figcaption>
  </figure>
</div>
<div style="height:600px"></div>


<style type="text/css">
  .hero > br {
    display:none
  }
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