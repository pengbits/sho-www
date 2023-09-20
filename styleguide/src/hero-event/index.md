---
name: Hero Event Page
collection: components
---

# Event Hero

### pre event (includes countdown widget)

<div class="event-hero lazyload" data-bgset="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-bg-1440x850.png [--from-medium]">
	<div class="event-hero__inner">
		<div class="event-hero__image-container">
			<img class="event-hero__image" src="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-400x400.png">
			<div class="countdown-widget js-countdown-widget" data-date="2018-01-16T21:00-0500" data-title="Countdown"></div>
		</div>
		<div class="event-hero__copy">
			<img class="event-hero__logo" src="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-logo-168x35.png">
			<h1 class="event-hero__title">Wilder vs. Szpilka</h1>
			<h3 class="event-hero__sub-title">Saturday, March 5th</h3>
			<div class="event-hero__detail">
				<h4 class="event-hero__detail-title">Main Card</h4>
				<p class="event-hero__detail-info">10 pm on SHOWTIME</p>
			</div>
			<div class="event-hero__detail">
				<h4 class="event-hero__detail-title">Under Card</h4>
				<p class="event-hero__detail-info">11 pm on SHO EXTREME</p>
			</div>
			<p class="event-hero__description">Undefeated world champion Deontay 'Bronze Bomber' Wilder defends his heavyweight title against Polish bad boy - and fellow knockout artist - southpaw Artur Szpilka. Live from Brooklyn's Barclays Center.</p>
        </div>
		<div class="countdown-widget js-countdown-widget" data-date="2018-01-16T21:00-0500" data-title="Countdown"></div>
	</div>
</div>

```html
<div class="event-hero">
	<img class="event-hero__bg" src="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-bg-1440x850.png">
	<div class="event-hero__inner">
		<div class="event-hero__image-container">
			<img class="event-hero__image" src="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-400x400.png">
			<div class="countdown-widget js-countdown-widget" data-date="2018-01-16T21:00-0500" data-title="Countdown"></div>
		</div>
		<div class="event-hero__copy">
			<img class="event-hero__logo" src="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-logo-168x35.png">
			<h1 class="event-hero__title">Wilder vs. Szpilka</h1>
			<h3 class="event-hero__sub-title">Saturday, March 5th</h3>
			<div class="event-hero__detail">
				<h4 class="event-hero__detail-title">Main Card</h4>
				<p class="event-hero__detail-info">10 pm on SHOWTIME</p>
			</div>
			<div class="event-hero__detail">
				<h4 class="event-hero__detail-title">Under Card</h4>
				<p class="event-hero__detail-info">11 pm on SHO EXTREME</p>
			</div>
			<p class="event-hero__description">Undefeated world champion Deontay 'Bronze Bomber' Wilder defends his heavyweight title against Polish bad boy - and fellow knockout artist - southpaw Artur Szpilka. Live from Brooklyn's Barclays Center.</p>
        </div>
		<div class="countdown-widget js-countdown-widget" data-date="2018-01-16T21:00-0500" data-title="Countdown"></div>
	</div>
</div>
```

### post event (countdown widget disappears; optionally has a stream button)

<div class="event-hero lazyload" data-bgset="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-bg-1440x850.png [--from-medium]">
	<div class="event-hero__inner">
		<div class="event-hero__image-container">
			<img class="event-hero__image" src="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-400x400.png">
			<div class="countdown-widget js-countdown-widget" data-date="2016-01-16T21:00-0500"></div>
		</div>
		<div class="event-hero__copy">
			<img class="event-hero__logo" src="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-logo-168x35.png">
			<h1 class="event-hero__title">Wilder vs. Szpilka</h1>
			<h3 class="event-hero__sub-title">Saturday, March 5th</h3>
          	<div class="event-hero__detail">
             	<h4 class="event-hero__detail-title">Replay</h4>
              	<p class="event-hero__detail-info">March 21st at 11 pm on SHO EXTREME</p>
          	</div>
			<p class="event-hero__description">Undefeated world champion Deontay 'Bronze Bomber' Wilder defends his heavyweight title against Polish bad boy - and fellow knockout artist - southpaw Artur Szpilka. Live from Brooklyn's Barclays Center.</p>
			<!-- stream button -->
			<a class="button--fixed-width button--solid-red" href="#">
			Stream This Event
			</a>
        </div>
		<div class="countdown-widget js-countdown-widget" data-date="2016-01-16T21:00-0500"></div>
	</div>
</div>

```html
<div class="event-hero">
	<img class="event-hero__bg" src="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-bg-1440x850.png">
	<div class="event-hero__inner">
		<div class="event-hero__image-container">
			<img class="event-hero__image" src="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-400x400.png">
			<div class="countdown-widget js-countdown-widget" data-date="2016-01-16T21:00-0500"></div>
		</div>
		<div class="event-hero__copy">
			<img class="event-hero__logo" src="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-logo-168x35.png">
			<h1 class="event-hero__title">Wilder vs. Szpilka</h1>
			<h3 class="event-hero__sub-title">Saturday, March 5th</h3>
          	<div class="event-hero__detail">
             	<h4 class="event-hero__detail-title">Replay</h4>
              	<p class="event-hero__detail-info">March 21st at 11 pm on SHO EXTREME</p>
          	</div>
			<p class="event-hero__description">Undefeated world champion Deontay 'Bronze Bomber' Wilder defends his heavyweight title against Polish bad boy - and fellow knockout artist - southpaw Artur Szpilka. Live from Brooklyn's Barclays Center.</p>
			<!-- stream button -->
			<button class="button--stream button--fixed-width">
				<div class="button--stream__icon"></div>
				<h5 class="button--stream__label">stream replay now</h5>
			</button>
        </div>
		<div class="countdown-widget js-countdown-widget" data-date="2016-01-16T21:00-0500"></div>
	</div>
</div>
```

## Event Hero Centered

Once the event page is brought into PPV state, we get a different, centered big-hero-style layout
 <div class="hero event-hero--centered">
<div class="hero__image event-hero__image lazyload" data-bgset="https://www.sho.com/site/image-bin/images/46_0_3523166/46_0_3523166_prm-0325fight_1700x1063.jpg"></div>
<div class="hero__inner event-hero__inner">
<div class="event-hero__body section--inner">
  <span class="event-hero__logo">Showtime PPV</span>
  <h1 class="event-hero__title">Benavidez vs. Plant</h1>
  <h2 class="event-hero__bout event-hero__bout--betting-partner  event-hero__bout--betting-partner-with-blank-text ">
  </h2>
  <h3 class="event-hero__sub-title">Saturday, March 25, 2023 9p ET / 6p PT</h3>
  <p class="event-hero__description"></p>
  <p>
    <a class="event-hero__big-button event-hero__big-button--provider-lead" href="https://www.showtime.com/#ppv/payment?i_cid=int-ppv-20960"
      data-track data-context="ppv hero" data-label="order"
      data-location="ppv provider grid">Order Now for $74.99</a>
  </p>
  <p class="event-hero__mandatory">
    SHOWTIME subscription is not required/included
  </p>  
  <div class="event-hero__footer">
<figure class="ways-to-order  ways-to-order--clear-footer ">
	<h3 class="ways-to-order__headline">
		<i class="icon icon--sho-app-logo"></i> Buy online and stream live from the showtime app on all supported devices
	</h3>
	<div class="ways-to-order__devices-lockup">
		<span class="ways-to-order__devices-lockup__icon"><i class="icon icon--sho-app-logo"></i></span>
		<span class="ways-to-order__devices-lockup__pipe">|</span> 
		<img class="ways-to-order__devices-lockup__image" src="/www/sho/lib/assets/svg/devices-xl-lockup.svg" />
	</div>
	<figcaption class="ways-to-order__body">
		<div class="ways-to-order__device-group">
			<span class="ways-to-order__device-group__icon"><i class="icon icon--devices-xl-tv"></i></span>
			<h3 class="ways-to-order__device-group__name">TV & Streaming Devices</h4>
			<p class="ways-to-order__device-group__devices">Amazon Fire TV, Select Google and Android TVs, Apple TV, Chromecast (2015+), LG Smart TV, Roku, Samsung Smart TV, Xfinity Flex, Wireless 4k Contour Box (Xi6), Xbox</p>
		</div>
		<div class="ways-to-order__device-group">
			<span class="ways-to-order__device-group__icon"><i class="icon icon--devices-xl-computer"></i></span>
			<h3 class="ways-to-order__device-group__name">Computer</h4>
			<p class="ways-to-order__device-group__devices">SHOWTIME.com</p>
		</div>
		<div class="ways-to-order__device-group">
			<span class="ways-to-order__device-group__icon"><i class="icon icon--devices-xl-mobile"></i></span>
			<h3 class="ways-to-order__device-group__name">Mobile & Tablet</h4>
			<p class="ways-to-order__device-group__devices">iPhone, iPad, Android phones and tablets</p>
		</div>
	</figcaption>
</figure>
</div>
</div>