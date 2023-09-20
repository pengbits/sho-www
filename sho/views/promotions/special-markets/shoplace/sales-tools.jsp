{{!--
  # shoplace sales-tools
--}}

{{< layouts/shoplace }}
  {{$classnames}}shoplace-sales-tools sales-tools{{/classnames}}  
  {{$pagename}}Sales Tools{{/pagename}} 
  {{$pageurl}}sales-tools{{/pageurl}}
  {{$content}}
    {{#data}}
      <section class="container__inner">
          <div class="row">
            {{#promotionList}}
            <div class="col-6--at-medium col-4--from-large">
              <div class="promo">
                <div class="promo__image lazyload" data-bgset="{{imageUrl}}"></div>
                <div class="promo__body">
                  <h5 class="promo__headline">{{headline}}</h3>
                  <p class="promo__copy">{{{subHeadline}}}</p>
                </div>
                <a class="promo__link" href="{{link}}" data-track data-context="promo group" data-label="{{headline}}" data-location="tile {{iter.index}}"></a>
              </div>
            </div>
            {{/promotionList}}
          </div>
      </section>
      {{/data}}
  {{/content}}
{{/layouts/shoplace}}