{{!--
  # webisodes page
--}}

{{< layouts/default }}
  {{$content}}
  {{#page}}
    <section class="hero {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}">
      {{#heroView}}
        {{> partials/hero/_hero_inner}}
      {{/heroView}}

      {{#tileGroupList}}
        <div class="promo-group-header">
          <h3 class="promo-group-header__title">{{heading}}</h3>
        </div>
        <div class="promo-group promo-group--to-three-up section--inner" data-context="promo group:{{heading}}">
          {{#tileList}}
            {{> partials/_promo_landscape }}
          {{/tileList}}
        </div>
      {{/tileGroupList}}
    </section>

    {{#meta.valueMap}}
      {{> series/partials/_series_legal}}
    {{/meta.valueMap}}

    {{#popularSeriesGroup}}
      {{> series/partials/_series_slider}}
    {{/popularSeriesGroup}}

  {{/page}}
  {{/content}}
{{/ layouts/default}}
