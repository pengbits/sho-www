<div class="about-the-series__next-on" data-context="Next Episode">
  <h2 class="block-container__headline">Next Episode</h2>
  <figure class="promo promo--landscape promo--docked">
    <div class="promo__image"
      style="background-image:url({{imageUrl}})">
    </div>
    <figcaption class="promo__body">
      <h3 class="promo__headline">S{{seasonNumber}} E{{episodeNumber}}</h3>
      <p class="promo__copy">
        {{#if streamingDate}}Streaming: {{streamingDate}}<br />{{/if}}
        {{#if premiereDateTime}}Airing: {{premiereDateTime}}{{/if}}
      </p>
    </figcaption>
    <a class="promo__link" data-track data-label="S{{seasonNumber}} E{{episodeNumber}}" href="{{url}}">S{{seasonNumber}} E{{episodeNumber}}</a>
  </figure>
</div>