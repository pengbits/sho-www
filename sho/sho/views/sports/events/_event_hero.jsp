<div class="event-hero lazyload" data-bgset="https://www.sho.com/assets/images/styleguide/event-hero/event-hero-bg-1440x850.png [--from-medium]">
  <div class="event-hero__inner">
    <div class="event-hero__image-container">
      <img class="event-hero__image" src="{{eventView.imageUrl}}">
      <div class="countdown-widget js-countdown-widget" data-date="{{eventView.countdownTime}}" data-title="Countdown"></div>
    </div>
    <div class="event-hero__copy">
      <img class="event-hero__logo" src="{{eventView.franchiseImageUrl}}">
      <h1 class="event-hero__title">{{eventView.title}}</h1>
      <h3 class="event-hero__sub-title">{{eventView.eventTime}}</h3>
      {{#eventView.mainCardTuneIn}}
        <div class="event-hero__detail">
          <h4 class="event-hero__detail-title">Main Card</h4>
          <p class="event-hero__detail-info">{{eventView.mainCardTuneIn}}</p>
        </div>
      {{/eventView.mainCardTuneIn}}
      {{#eventView.underCardTuneIn}}
        <div class="event-hero__detail">
          <h4 class="event-hero__detail-title">Under Card</h4>
          <p class="event-hero__detail-info">{{eventView.underCardTuneIn}}</p>
        </div>
      {{/eventView.underCardTuneIn}}
      <!-- calreplay x rokt start -->
      {{#eventView.isOriginalAirDateInFuture}}
      <br>
      <div class="event-hero__detail" data-context="hero">
        {{< partials/_add_to_calendar}}
          {{$calendarUrl}}https://showtime.roktcalendar.com/showtime-championship-boxing{{/calendarUrl}}
        {{/ partials/_add_to_calendar}}
      </div>
      {{/eventView.isOriginalAirDateInFuture}}
      <!-- calreply x rokt end -->
      {{#eventView.replay}}
        <div class="event-hero__detail">
          <h4 class="event-hero__detail-title">Replay</h4>
          <p class="event-hero__detail-info">{{eventView.replay}}</p>
        </div>
      {{/eventView.replay}}
        <p class="event-hero__description">{{eventView.description}}</p>
      {{#eventView.streamCta}}
        <div class="ways-to-watch__stream__button ways-to-watch__event__button">
          <a class="ways-to-watch__button" href="{{eventView.streamCta.ctaLink}}" data-track data-context="hero" data-label="stream"> {{eventView.streamCta.ctaLabel}}</a>
        </div>
      {{/eventView.streamCta}}
    </div>
    <div class="countdown-widget js-countdown-widget" data-date="{{eventView.countdownTime}}" data-title="Countdown"></div>
  </div>
</div>