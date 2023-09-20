{{!--
  # series cast page
--}}

{{< layouts/default }}
    {{$classnames}}series-cast{{/classnames}}

    {{$meta}}
      {{#page}}
        <title>{{{primaryHero.heroView.title}}} {{{primaryHero.heroView.subTitle}}}{{#primaryHero.heroView.subTitle}}{{/primaryHero.heroView.subTitle}} - {{{meta.series.shortTitle}}} | SHOWTIME</title>
        <meta property="og:title" content="{{{primaryHero.heroView.title}}} {{{primaryHero.heroView.subTitle}}}{{#primaryHero.heroView.subTitle}}{{/primaryHero.heroView.subTitle}} - {{{meta.series.shortTitle}}} | SHOWTIME" />
        <meta name="description" content="Learn more about {{{primaryHero.talentView.name}}}{{#primaryHero.characterView.name}} in the role of {{{primaryHero.characterView.name}}}{{/primaryHero.characterView.name}} on the SHOWTIME Original Series {{{meta.series.shortTitle}}}." />
        <meta property="og:description" content="Learn more about {{{primaryHero.talentView.name}}}{{#primaryHero.characterView.name}} in the role of {{{primaryHero.characterView.name}}}{{/primaryHero.characterView.name}} on the SHOWTIME Original Series {{{meta.series.shortTitle}}}." />
        <meta name="page-tracking" content="sho:series:{{{meta.titleTracking}}}:cast:{{{primaryHero.heroView.title}}}" />
        <meta property="og:image" content="{{meta.valueMap.ogImageUrl}}" />
        <meta name="sho:image" content="{{meta.valueMap.ogImageUrl}}" />
      {{/page}}
    {{/meta}}

    {{$content}}
      {{> series/partials/_schema_json_series_cast}}
      {{#page}}
        {{#primaryHero}}
          <section class="hero hero--cast {{#heroView.panelLink}}hero--panel-link{{/heroView.panelLink}}" data-context="hero">
            {{#heroView}}
              {{> partials/hero/_hero_inner}}
            {{/heroView}}
            <div class="section--large section--inner">
              <div class="cast__information">
                {{#characterView}}
                    <div class="cast__details__small">
                      <div class="cast__character">
                        <h1 class="cast__character__name">
                          {{characterView.name}}
                        </h1>
                        {{{characterView.description}}}
                        {{^talentView.biography}}
                          {{#characterView.description}}<br/>{{/characterView.description}}
                          {{{primaryHero.heroView.subTitle}}}
                        {{/talentView.biography}}
                      </div>
                    </div>
                    {{#characterView.description}}
                    <div class="cast__details__large">
                      <div class="cast__character">
                        {{{characterView.description}}}
                      </div>
                    </div>
                    {{/characterView.description}}
                {{/characterView}}
                {{#talentView.biography}}
                <div class="cast__talent">
                  <h2 class="cast__talent__name {{#isCharacterThemSelf}}cast__talent__name--is-themself{{/isCharacterThemSelf}}">{{talentView.name}}</h2>
                  {{{talentView.biography}}}
                </div>
                {{/talentView.biography}}
              </div>
              {{#if tileGroup.tileList.size}}
              <div class="cast__media" data-context="promo group:related videos">
                <h3 class="cast__media__headline section-header section-header--border">Related Videos</h3>
                {{#tileGroup.tileList}}
                  {{> partials/_promo_landscape }}
                {{/tileGroup.tileList}}
              </div>
              {{/if}}
            </div>
          </section>
        {{/primaryHero}}

        {{#talentNavigation}}
          {{> series/partials/_cast_slider}}
        {{/talentNavigation}}
        
        {{#meta.valueMap}}
          {{> series/partials/_series_legal}}
        {{/meta.valueMap}}

        {{#popularSeriesGroup}}
          {{> series/partials/_series_slider}}
        {{/popularSeriesGroup}}

      {{/page}}

    {{/content}}
{{/ layouts/default}}
