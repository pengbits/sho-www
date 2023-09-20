{{!--
  # shoplace directv-now
--}}

{{< layouts/shoplace }}
  {{$classnames}}shoplace-directv-now{{/classnames}}  
  {{$pagename}}DirecTV Now{{/pagename}}
  {{$pageurl}}directv-now{{/pageurl}}  
  {{$header}}
    <div class="masthead__img--{{global.partner.toLowerCase}}"></div>
  {{/header}}
  {{$content}}
    {{#data}}
    <section class="container__inner">
      <div class="row">
        {{#promotionList}}
        <div class="col-6--at-medium col-4--from-large">
          <div class="promo promo--tune-in">
            <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
            </div>
            <div class="promo__body">
              <h3 class="promo__headline">{{headline}}</h3>
              <p class="promo__copy">{{{subHeadline}}}</p>
            </div>
            <a class="promo__link" href="{{link}}" data-track data-context="promo group" data-label={{headline}} data-location="tile {{iter.index}}"></a>
          </div>
        </div>
        {{/promotionList}}
      </div>
    </section>
    {{/data}}
  {{/content}}
{{/ layouts/shoplace }}
