{{#videoViewList}}
  <div class="col-4--at-medium col-3--from-large " data-context="promo group">
    <div class="promo video-thumbnail">
      <div class="promo__image lazyload" data-bgset="{{image.fullPath}}">
      </div>
      <figcaption class="promo__body">
        <h3 class="promo__copy">{{{title}}} </h3>
      </figcaption>
      <a class="promo__link" href="?vid={{id}}" data-track data-label="{{title}}" data-location="tile {{iter.index}}"></a>
    </div>
  </div>
{{/videoViewList}}