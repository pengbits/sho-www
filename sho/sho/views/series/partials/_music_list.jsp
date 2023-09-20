<div id="music" class="music-list" data-context="music">
  <div class="music-list__headline">
    Music from this episode
  </div>
  {{#audioProductList}}
    <dl class="music-list__item">
      <dt class="music-list__title">{{{title}}}</dt>
      <dd class="music-list__artist {{#link}}music-list__artist--link{{/link}}">{{artist}}</dd>
    </dl>
  {{/audioProductList}}
</div>
