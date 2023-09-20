<!-- NOTE: TV Rating and Advisory will always be displayed together -->

{{#legal}}
<!-- Display TV Rating, Advisory, and Legal copy if all three are available -->
{{#advisories}}
<div class="series-legal section--inner section--large">
  {{#isNotEq tvRating ''}}<div class="series-legal__icon {{tvRating}}"></div>{{/isNotEq}}
  <h6 class="series-legal__advisories">
    <div class="series-legal__advisories--ratings">{{advisories}}</div>
    <div class="series-legal__advisories--copyright">{{legal}}</div>
  </h6>
</div>
{{/advisories}}

<!-- Only display legal copy if TV Rating and Advisory are not available -->
{{^advisories}}
<div class="series-legal section--inner section--large">
  <h6 class="series-legal__advisories">
    <div class="series-legal__advisories--copyright">{{legal}}</div>
  </h6>
</div>
{{/advisories}}
{{/legal}}

<!-- Only display TV Rating and Advisory if legal copy is not available -->
{{^legal}}
{{#advisories}}
<div class="series-legal section--inner section--large">
  <div class="series-legal__icon {{tvRating}}"></div>
  <h6 class="series-legal__advisories">
    <div class="series-legal__advisories--ratings">{{advisories}}</div>
  </h6>
</div>
{{/advisories}}
{{/legal}}