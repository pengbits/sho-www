{{!
---
name: "ways to watch"
source: /styleguide/src/ways-to-watch/index.md
}}
<div class="section--large section--inner">
  <div class="ways-to-watch ways-to-watch--stream-first" data-context="ways to watch">
    <div class="ways-to-watch__section ways-to-watch__stream">
      <div class="ways-to-watch__stream__headline">
        <h4 class="ways-to-watch__headline">{{streaming.tuneIn}}</h4>
      </div>
      {{#streaming.ctaLink}}
    	<div class="ways-to-watch__stream__button">
        <a class="ways-to-watch__button" href="{{streaming.ctaLink}}" data-track data-label="{{$promoType}}{{/promoType}}">{{streaming.ctaLabel}}</a>
      </div>
      {{/streaming.ctaLink}}
    </div>
    <div class="ways-to-watch__section ways-to-watch__section--linear">
      <h4 class="ways-to-watch__headline">{{linear.source}}</h4>
      <p class="ways-to-watch__date_time">{{linear.tuneIn}}</p>
      <p class="ways-to-watch__copy">{{linear.copy}}</p>
      <a class="ways-to-watch__link ways-to-watch__link--linear" href="/schedule" data-track data-label="schedule:linear">See TV Schedule</a>
    </div>
    <div class="ways-to-watch__section ways-to-watch__section--on-demand">
      <h4 class="ways-to-watch__headline">{{onDemand.source}}</h4>
      <p class="ways-to-watch__copy">{{onDemand.tuneIn}}</p>
      <a class="ways-to-watch__link ways-to-watch__link--on-demand" href="/on-demand/series" data-track data-label="schedule:on demand">See Schedule</a>
    </div>
  </div>
</div>
