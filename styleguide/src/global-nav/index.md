---
name: Global Nav
collection: components
---

# Global Navigation

The Global Navigation component has various modifier classes: 
--has-nav-exposed
--open
--stuck
--solid-when-stuck
--search-open 

It also responds to two classes placed higher up in the DOM:
has-breadcrumb-solid
has-nav-solid

These classes are applied to the main nav container or body element to invoke the proper state. The Styleguide side menu must be closed to view the proper responsive behavior.

More documentation on this revised navigation component is [here](https://work.sho.com/confluence/display/PROJ/Customizable+Global+Navigation)



There is also a secondary level of navigation contained in a drawer, that is hidden by default and animated in when activated by clicking on the 'Series' link. Any such drawers are wrapped in '_flyout_container', and the inner content for each context is documented as components like [Series Drawer](../series-drawer).


### Transparent nav with exposed menu (sho.com home page), solid with stuck


<nav class="global-nav global-nav--solid-when-stuck js-global-nav has-nav-exposed" data-context="global navigation" style="z-index: 300;">
  <div class="global-nav__gradient"></div>
  <div class="global-nav__inner">
    <div class="global-nav__menu-toggle">
      <div class="global-nav__menu-icon" data-label="menu open">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
    <h1 class="global-nav__logo__wrapper">
      <a class="global-nav__logo" data-track data-label="home" data-location="logo" href="/">Showtime</a>
    </h1>
    <div class="global-nav__menu__wrapper">
      <div class="global-nav__menu global-nav__menu--desktop">
        <ul class="global-nav__list global-nav__list--primary">
          <li class="global-nav__item">
            <a class="global-nav__link global-nav__flyout global-nav__flyout--series-drawer" data-track data-label="Series" href="#">Series</a>
          </li>
          <li class="global-nav__item">
            <a class="global-nav__link" data-track data-label="Movies" href="#">Movies</a>
          </li>
          <li class="global-nav__item">
            <a class="global-nav__link" data-track data-label="Sports" href="#">Sports</a>
          </li>
          <li class="global-nav__item">
            <a class="global-nav__link" data-track data-label="Documentaries" href="#">Documentaries</a>
          </li>
        </ul>
        <ul class="global-nav__list global-nav__list--promotional">
          <li class="global-nav__item global-nav__item--highlight">
            <a class="global-nav__link" data-track data-label="Bloody Good" href="#">Bloody Good</a>
          </li>
        </ul>
      </div>
    </div>
    <ul class="global-nav__list global-nav__list--utility">
      <li class="global-nav__item global-nav__item--red">
        <a class="global-nav__link" data-track data-label="Start Your Free Trial" href="#">Start Your Free Trial</a>
      </li>
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="Schedule" href="#">Schedule</a>
      </li>
    </ul>
    <ul class="global-nav__list global-nav__list--callout">
      <li class="global-nav__item global-nav__item--red">
        <a class="global-nav__link" data-track data-label="Try 30 Days Free" href="#">Try 30 Days Free</a>
      </li>
    </ul>
    <div class="global-nav__search-bar">
      <form id="results-search-form" class="form--dark" action="/search" method="GET">
        <input class="global-nav__search-field" id="searchField" name="q" value="" placeholder="Search" type="text" class="text">
      </form>
    </div>
    <div class="global-nav__search-icon">
      <span class="global-nav__circle"></span>
      <span class="global-nav__handle"></span>
    </div>
  </div>
  <div class="flyout-container">
		<div class="flyout-container__inner">
			<div class="series-drawer">
        <div class="series-drawer__inner clearfix">
          <div class="catalog-grid">
            <a class="catalog-grid__image" href="/american-gigolo" data-track data-label="series flyout:American Gigolo" data-location="featured:tile 1">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1033331_0_0/1033331_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">American Gigolo</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/city-on-a-hill" data-track="" data-label="series flyout:City on a Hill" data-location="featured:tile 2">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1033334_2_0/1033334_2_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">City on a Hill</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/the-chi" data-track="" data-label="series flyout:The Chi" data-location="featured:tile 3">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1032815_5_0/1032815_5_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">The Chi</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/the-circus-inside-the-greatest-political-show-on-earth" data-track="" data-label="series flyout:The Circus: Inside the Greatest Political Show on Earth" data-location="featured:tile 4">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1032991_0_0/1032991_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">The Circus: Inside the Greatest Political Show on Earth</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/let-the-right-one-in" data-track="" data-label="series flyout:Let The Right One In" data-location="featured:tile 5">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1032577_0_0/1032577_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">Let The Right One In</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="https://www.sho.com/the-lincoln-project" data-track="" data-label="series flyout:The Lincoln Project" data-location="featured:tile 6">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1036145_0_0/1036145_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">The Lincoln Project</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/your-honor" data-track="" data-label="series flyout:Your Honor" data-location="featured:tile 7">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1033985_0_0/1033985_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">Your Honor</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/yellowjackets" data-track="" data-label="series flyout:Yellowjackets" data-location="featured:tile 8">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1034344_0_0/1034344_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">Yellowjackets</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/vice" data-track="" data-label="series flyout:Vice " data-location="featured:tile 9">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1035479_0_0/1035479_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">Vice </p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/flatbush-misdemeanors" data-track="" data-label="series flyout:Flatbush Misdemeanors" data-location="featured:tile 10">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1036034_0_0/1036034_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">Flatbush Misdemeanors</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/i-love-that-for-you" data-track="" data-label="series flyout:I Love That For You " data-location="featured:tile 11">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1034383_1_0/1034383_1_0_prm-keyart_210x118.jpg)"></span>
                <p class="catalog-grid__copy">I Love That For You </p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/the-man-who-fell-to-earth" data-track="" data-label="series flyout:The Man Who Fell to Earth " data-location="featured:tile 12">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1040800_1_0/1040800_1_0_prm-keyart_210x118.jpg)"></span>
                <p class="catalog-grid__copy">The Man Who Fell to Earth </p>
              </figure>
            </a>
          </div>
        </div>
        <div class="series-drawer__see-all-cntr">
          <a class="button--outline-white" href="/series" data-track="" data-label="series flyout:see all">VIEW ALL SERIES</a>
        </div>
      </div>
    </div>
	</div>
  <div class="global-nav__menu global-nav__menu--mobile">
    <ul class="global-nav__list global-nav__list--primary">
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="Series" href="#">Series</a>
      </li>
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="Movies" href="#">Movies</a>
      </li>
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="Sports" href="#">Sports</a>
      </li>
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="Documentaries" href="#">Documentaries</a>
      </li>
    </ul>
    <ul class="global-nav__list global-nav__list--promotional">
      <li class="global-nav__item global-nav__item--highlight">
        <a class="global-nav__link" data-track data-label="Bloody Good" href="#">Bloody Good</a>
      </li>
    </ul>
    <ul class="global-nav__list global-nav__list--utility">
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="Schedule" href="#">Schedule</a>
      </li>
      <li class="global-nav__item global-nav__item--red">
        <a class="global-nav__link" data-track data-label="Start Your Free Trial" href="#">Start Your Free Trial</a>
      </li>
    </ul>
		<div class="global-nav__menu__shadow"></div>
  </div>
</nav>

<div style="width: 100%; height: 500px; background: blue; margin-bottom: 200px;"></div>


### Transparent nav with menu and breadcrumb (inner pages)

<nav class="global-nav js-global-nav" data-context="global navigation" style="z-index: 301;">
  <div class="global-nav__gradient"></div>
  <div class="global-nav__inner">
    <div class="global-nav__menu-toggle">
      <div class="global-nav__menu-icon" data-label="menu open">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
    <ul class="global-nav__list global-nav__breadcrumb">
      <li class="global-nav__item"><a data-track data-label="The L Word: Generation Q" data-location="breadcrumb" href="#">The L Word: Generation Q</a></li>
      <li class="global-nav__item">Season 3</li>
    </ul>
    <span class="global-nav__logo__wrapper">
      <a class="global-nav__logo" data-track data-label="home" data-location="logo" href="/">Showtime</a>
    </span>
    <div class="global-nav__menu__wrapper">
      <div class="global-nav__menu global-nav__menu--desktop">
        <ul class="global-nav__list global-nav__list--primary">
          <li class="global-nav__item">
            <a class="global-nav__link global-nav__flyout global-nav__flyout--series-drawer" data-track data-label="Series" href="#">Series</a>
          </li>
          <li class="global-nav__item">
            <a class="global-nav__link" data-track data-label="Movies" href="#">Movies</a>
          </li>
          <li class="global-nav__item">
            <a class="global-nav__link" data-track data-label="Sports" href="#">Sports</a>
          </li>
          <li class="global-nav__item">
            <a class="global-nav__link" data-track data-label="Documentaries" href="#">Documentaries</a>
          </li>
        </ul>
        <ul class="global-nav__list global-nav__list--promotional">
          <li class="global-nav__item global-nav__item--highlight">
            <a class="global-nav__link" data-track data-label="Bloody Good" href="#">Bloody Good</a>
          </li>
        </ul>
      </div>
    </div>
    <ul class="global-nav__list global-nav__list--utility">
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="Schedule" href="#">Schedule</a>
      </li>
      <li class="global-nav__item global-nav__item--red">
        <a class="global-nav__link" data-track data-label="Start Your Free Trial" href="#">Start Your Free Trial</a>
      </li>
    </ul>
    <ul class="global-nav__list global-nav__list--callout">
      <li class="global-nav__item global-nav__item--red">
        <a class="global-nav__link" data-track data-label="Try 30 Days Free" href="#">Try 30 Days Free</a>
      </li>
    </ul>
    <div class="global-nav__search-bar">
      <form id="results-search-form" class="form--dark" action="/search" method="GET">
        <input class="global-nav__search-field" id="searchField" name="q" value="" placeholder="Search" type="text" class="text">
      </form>
    </div>
    <div class="global-nav__search-icon">
      <span class="global-nav__circle"></span>
      <span class="global-nav__handle"></span>
    </div>
  </div>
  <div class="flyout-container">
		<div class="flyout-container__inner">
			<div class="series-drawer">
        <div class="series-drawer__inner clearfix">
          <div class="catalog-grid">
            <a class="catalog-grid__image" href="/american-gigolo" data-track data-label="series flyout:American Gigolo" data-location="featured:tile 1">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1033331_0_0/1033331_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">American Gigolo</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/city-on-a-hill" data-track="" data-label="series flyout:City on a Hill" data-location="featured:tile 2">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1033334_2_0/1033334_2_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">City on a Hill</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/the-chi" data-track="" data-label="series flyout:The Chi" data-location="featured:tile 3">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1032815_5_0/1032815_5_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">The Chi</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/the-circus-inside-the-greatest-political-show-on-earth" data-track="" data-label="series flyout:The Circus: Inside the Greatest Political Show on Earth" data-location="featured:tile 4">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1032991_0_0/1032991_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">The Circus: Inside the Greatest Political Show on Earth</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/let-the-right-one-in" data-track="" data-label="series flyout:Let The Right One In" data-location="featured:tile 5">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1032577_0_0/1032577_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">Let The Right One In</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="https://www.sho.com/the-lincoln-project" data-track="" data-label="series flyout:The Lincoln Project" data-location="featured:tile 6">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1036145_0_0/1036145_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">The Lincoln Project</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/your-honor" data-track="" data-label="series flyout:Your Honor" data-location="featured:tile 7">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1033985_0_0/1033985_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">Your Honor</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/yellowjackets" data-track="" data-label="series flyout:Yellowjackets" data-location="featured:tile 8">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1034344_0_0/1034344_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">Yellowjackets</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/vice" data-track="" data-label="series flyout:Vice " data-location="featured:tile 9">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1035479_0_0/1035479_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">Vice </p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/flatbush-misdemeanors" data-track="" data-label="series flyout:Flatbush Misdemeanors" data-location="featured:tile 10">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1036034_0_0/1036034_0_0_01h_210x118.jpg)"></span>
                <p class="catalog-grid__copy">Flatbush Misdemeanors</p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/i-love-that-for-you" data-track="" data-label="series flyout:I Love That For You " data-location="featured:tile 11">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1034383_1_0/1034383_1_0_prm-keyart_210x118.jpg)"></span>
                <p class="catalog-grid__copy">I Love That For You </p>
              </figure>
            </a>
            <a class="catalog-grid__image" href="/the-man-who-fell-to-earth" data-track="" data-label="series flyout:The Man Who Fell to Earth " data-location="featured:tile 12">
              <figure>
                <span class="catalog-grid__image-shim" style="background-image:url(https://www.sho.com/site/image-bin/images/1040800_1_0/1040800_1_0_prm-keyart_210x118.jpg)"></span>
                <p class="catalog-grid__copy">The Man Who Fell to Earth </p>
              </figure>
            </a>
          </div>
        </div>
        <div class="series-drawer__see-all-cntr">
          <a class="button--outline-white" href="/series" data-track="" data-label="series flyout:see all">VIEW ALL SERIES</a>
        </div>
      </div>
    </div>
	</div>
  <div class="global-nav__menu global-nav__menu--mobile">
    <ul class="global-nav__list global-nav__list--primary">
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="home" data-location="mobile menu" href="/">Home</a>
      </li>
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="Series" href="#">Series</a>
      </li>
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="Movies" href="#">Movies</a>
      </li>
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="Sports" href="#">Sports</a>
      </li>
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="Documentaries" href="#">Documentaries</a>
      </li>
    </ul>
    <ul class="global-nav__list global-nav__list--promotional">
      <li class="global-nav__item global-nav__item--highlight">
        <a class="global-nav__link" data-track data-label="Bloody Good" href="#">Bloody Good</a>
      </li>
    </ul>
    <ul class="global-nav__list global-nav__list--utility">
      <li class="global-nav__item">
        <a class="global-nav__link" data-track data-label="Schedule" href="#">Schedule</a>
      </li>
      <li class="global-nav__item global-nav__item--red">
        <a class="global-nav__link" data-track data-label="Start Your Free Trial" href="#">Start Your Free Trial</a>
      </li>
    </ul>
		<div class="global-nav__menu__shadow"></div>
  </div>
  <div class="global-nav__breadcrumb__background"></div>
</nav>

<div style="width: 100%; height: 300px; background: blue; margin-bottom: 200px;"></div>
