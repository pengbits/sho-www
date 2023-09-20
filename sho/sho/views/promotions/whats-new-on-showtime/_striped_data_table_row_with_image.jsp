<div class='striped-data-table__row'>
  <div class='striped-data-table__item'>
    {{#seriesTile}}
    <span>
    <a href="{{ctaLink}}">
      <img class="whats-new__img" src="{{imageUrl}}">
    </a>
    <p class="whats-new__sub-title"> {{{title}}}</p>
    </span>
    {{/seriesTile}}					
  </div>
  <div class='striped-data-table__item'>
    {{#titleTileList}}
    <span><a href={{ctaLink}}>{{{title}}} ({{{subTitle}}})</a></span>
    {{/titleTileList}}
  </div>
</div>		