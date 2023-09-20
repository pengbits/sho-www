{{!
---
name: ways to order
desc: A sister component to the ways-to-watch module that was introduced for the custom wilder vs fury event page. The component shows 3 different device categorys and outlines the ways to order a ppv event on each
source: /styleguide/src/ways-to-watch/index.md
note:	 uncomment this component and remove the &nbsp; when it is safe to do so
}}

<figure class="ways-to-order {{$ways-to-order-modifier}}{{/ways-to-order-modifier}}">
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