{{!
---
name: Footer (nav)
source: /styleguide/src/footer/index.md
}}
<footer class="footer" data-context="footer">
	<div class="footer__schedule-section">
		<div class="footer__inner">
			<div class="footer__logo"></div>
			<div class="footer-order-promo">
				<h5 class="footer-order-promo__header">Have Showtime?</h5>
				<a href="#/stream/home/int-default-3671" data-track data-label="stream"><h3 class="footer-order-promo__link">Stream Now</h3></a>
				{{#global.globalNavigation.calloutList}}
					<h5 class="footer-order-promo__header">Want Showtime?</h5>
					<a href="/order?i_cid=int-default-8491" data-track data-label="{{ctaLabel}}" class="js-metrics-footer__free-trial-cta"><h3 class="footer-order-promo__link">{{ctaLabel}}</h3></a>
				{{/global.globalNavigation.calloutList}}	
			</div>
			<div class="footer-schedule">
				<h4 class="footer-schedule__header">Tonight on Showtime</h4>
				<ul class="footer-schedule__list">
          {{#schedule.tuneInList}}
					<li class="footer-schedule__list-item">
							<div class="footer-schedule__program-time"><h4>{{tuneIn}}</h4></div>
							<div class="footer-schedule__meta">
								<a class="footer-schedule__program-title" {{#link}}href="{{link}}" {{/link}} data-track data-label="schedule:{{title}} {{subTitle}}" data-location="tile {{iter.index}}">{{{title}}}</a>
								<a class="footer-schedule__program-title--subtitle" {{#link}}href="{{link}}" {{/link}} data-track data-label="schedule:{{title}} {{subTitle}}">{{{subTitle}}}</a>
							</div>
					</li>
          {{/schedule.tuneInList}}
					<li class="footer-schedule__list-item">
						<div class="footer-schedule__program-time"><h4></h4><h5></h5></div>
						<a href="/schedule" class="js-metrics-footer__schedule" data-track data-label="schedule:linear"><h4 class="footer-schedule__cta">See Schedule</h4></a>
					</li>
					<li class="footer-schedule__list-item">
						<div class="footer-schedule__program-time"><h4></h4><h5></h5></div>
						<a href="/channel-listings" data-track data-label="channel listings"><h4 class="footer-schedule__cta">Channel Listings</h4></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	{{$footer_nav}}
		{{> partials/_footer_nav }}
	{{/footer_nav}}
</footer>
