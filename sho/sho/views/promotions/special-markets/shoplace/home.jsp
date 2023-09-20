{{!--
  # shoplace home
--}}

{{< layouts/shoplace }}
{{$pagename}}Home{{/pagename}} 
{{$pageurl}}{{/pageurl}}
  {{$content}}
    {{#data}}
    <section class="container__inner">
        <!-- tier1 -->
        <div class="row">
          {{#primaryPromoList}}
          <div class="col-6--from-medium">
            <div class="promo">
              <div class="promo__image lazyload" data-bgset="{{imageUrl}}"></div>
              <div class="promo__body">
                <h5 class="promo__headline">{{headline}}</h3>
                <p class="promo__copy">{{{subHeadline}}}</p>
              </div>
              <a class="promo__link" href="{{link}}" data-track data-context="promo group" data-label="{{headline}}" data-location="tile {{iter.index}}"></a>
            </div>
          </div>
          {{/primaryPromoList}}
        </div>
        <!-- tier2 -->  
        <div class="row">
          {{#secondaryPromoList}}
          <div class="col-4--from-medium">
            <div class="promo">
              <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
              </div>
              <div class="promo__body">
                <h3 class="promo__headline">{{headline}}</h3>
                <p class="promo__copy">{{{subHeadline}}}</p>
              </div>
              <a class="promo__link" href="{{link}}" data-track data-context="promo group" data-label="{{headline}}" data-location="tile {{iter.index}}">Sales Tools</a>
            </div>
          </div>
          {{/secondaryPromoList}}
        </div>
      </section>
      {{/data}}
  {{/content}}
{{/layouts/shoplace}}