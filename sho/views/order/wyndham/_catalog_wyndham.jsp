<section class="stream-showtime__catalog">
  {{#page.seriesTileGroup}}
  <div class="section--inner">
    <h2 class="stream-showtime__catalog-headline">{{heading}}</h2>
    <div class="catalog-grid">
      {{#tileList}}
      <figure class="catalog-grid__image">
        <img src="{{imageUrl}}">
        <p class="catalog-grid__copy">{{{title}}}</p>
      </figure>
      {{/tileList}}
    </div>
  </div>
  {{/page.seriesTileGroup}}
  {{#page.moviesTileGroup}}
  <div class="section--inner">
    <h2 class="stream-showtime__catalog-headline">{{heading}}</h2>
    <div class="catalog-grid">
      {{#tileList}}
      <figure class="catalog-grid__image">
        <img src="{{imageUrl}}">
        <p class="catalog-grid__copy">{{{title}}}</p>
      </figure>
      {{/tileList}}
    </div>
  </div>
  {{/page.moviesTileGroup}}
  {{#page.sportsTileGroup}}
  <div class="section--inner">
    <h2 class="stream-showtime__catalog-headline">{{heading}}</h2>
    <div class="catalog-grid">
      {{#tileList}}
      <figure class="catalog-grid__image">
        <img src="{{imageUrl}}">
        <p class="catalog-grid__copy">{{{title}}}</p>
      </figure>
      {{/tileList}}
    </div>
  </div>
  {{/page.sportsTileGroup}}
</section>