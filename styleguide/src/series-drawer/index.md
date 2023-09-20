---
name:  Series Drawer
collection: components
---

# Series Drawer

The series drawer is used in the global navigtion, in desktop contexts only. It provides links to the series sites that are enough of an editorial priority that they should be surfaced in the nav. It's treated in a similar fashion as the Schedule Drawer, in that it's a child of the Flyout Container and is only visible (animated in from above) when the series link is clicked

In earlier versions, the series content was rendered as both visual promos with key art, and as a text list of series names. With this version we are moving to a visual grid of all the series, in a treatment similar to that of the series-drawer/order page. In fact the inner content is ripe for a refactor, and will likely be extracted into a new component that can be used in both contexts

Note: because of the full-width media query demands of this component's presentation, it is only viewed accurately here when the left side styleguide navigation is hidden. 

<div class="series-drawer">
  <div class="series-drawer__inner">
    <div class="catalog-grid">
    <a class="catalog-grid__image" href="/homeland" data-track data-label="series flyout:Homeland" data-location="featured:tile 1">
    <figure>
      <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/804_0_0/804_0_0_01h_210x118.jpg)"></span>
      <p class="catalog-grid__copy">Homeland</p>
    </figure></a>
    <a class="catalog-grid__image" href="/kidding" data-track data-label="series flyout:Kidding" data-location="featured:tile 2">
    <figure>
      <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1033027_0_0/1033027_0_0_01h_210x118.jpg)"></span>
      <p class="catalog-grid__copy">Kidding</p>
    </figure></a>
    <a class="catalog-grid__image" href="/desus-and-mero" data-track data-label="series flyout:Desus & Mero" data-location="featured:tile 3">
    <figure>
      <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1034411_0_0/1034411_0_0_01h_210x118.jpg)"></span>
      <p class="catalog-grid__copy">DESUS & MERO</p>
    </figure></a>
    <a class="catalog-grid__image" href="/black-monday" data-track data-label="series flyout:Black Monday" data-location="featured:tile 4">
    <figure>
      <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1030224_0_0/1030224_0_0_01h_210x118.jpg)"></span>
      <p class="catalog-grid__copy">Black Monday</p>
    </figure></a>
    <a class="catalog-grid__image" href="/billions" data-track data-label="series flyout:Billions" data-location="featured:tile 5">
    <figure>
      <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1032076_0_0/1032076_0_0_01h_210x118.jpg)"></span>
      <p class="catalog-grid__copy">Billions</p>
    </figure></a>
    <a class="catalog-grid__image" href="/the-chi" data-track data-label="series flyout:The Chi" data-location="featured:tile 6">
    <figure>
      <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1032815_0_0/1032815_0_0_01h_210x118.jpg)"></span>
      <p class="catalog-grid__copy">The Chi</p>
    </figure></a>
    <a class="catalog-grid__image" href="/the-circus-inside-the-greatest-political-show-on-earth" data-track data-label="series flyout:The Circus" data-location="featured:tile 7">
    <figure>
      <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1032991_0_0/1032991_0_0_01h_210x118.jpg)"></span>
      <p class="catalog-grid__copy">The Circus</p>
    </figure></a>
    <a class="catalog-grid__image" href="/the-l-word-generation-q" data-track data-label="series flyout:The L Word: Generation Q" data-location="featured:tile 8">
    <figure>
      <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1034809_0_0/1034809_0_0_01h_210x118.jpg)"></span>
      <p class="catalog-grid__copy">The L Word: Generation Q</p>
    </figure></a>
    <a class="catalog-grid__image" href="/on-becoming-a-god-in-central-florida" data-track data-label="series flyout:On Becoming a God in Central Florida" data-location="featured:tile 9">
    <figure>
      <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1035023_0_0/1035023_0_0_01h_210x118.jpg)"></span>
      <p class="catalog-grid__copy">On Becoming a God in Central Florida</p>
    </figure></a>
    <a class="catalog-grid__image" href="/our-cartoon-president" data-track data-label="series flyout:Our Cartoon President" data-location="featured:tile 10">
    <figure>
      <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1033856_0_0/1033856_0_0_01h_210x118.jpg)"></span>
      <p class="catalog-grid__copy">Our Cartoon President</p>
    </figure></a>
    <a class="catalog-grid__image" href="/shameless" data-track data-label="series flyout:Shameless" data-location="featured:tile 11">
    <figure>
      <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/408_0_0/408_0_0_01h_210x118.jpg)"></span>
      <p class="catalog-grid__copy">Shameless</p>
    </figure></a>
    <a class="catalog-grid__image" href="/the-trade" data-track data-label="series flyout:The Trade" data-location="featured:tile 12">
    <figure>
      <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1034118_0_0/1034118_0_0_01h_210x118.jpg)"></span>
      <p class="catalog-grid__copy">The Trade</p>
    </figure></a>
    </div>
  </div>
  <div class="series-drawer__see-all-cntr">
    <a class="button--outline-white" href="/series" data-track data-label="series flyout:see all">View All Series</a>
  </div>
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