{{!--
  # shoplace home
--}}

{{< layouts/shoplace }}
  {{$classnames}}shoplace-programming{{/classnames}}  
  {{$pagename}}Programming{{/pagename}}
  {{$pageurl}}programming{{/pageurl}}  
  {{$content}}
    {{#shoPlaceGroupViewList}}
    <section class="container__inner container__inner--one-of-many">
      <h3 class="section-header section-header--border">
        {{#iter.isFirst}}
        <div class="section-header__left">
          <span class="section-header__title">{{name}}</span>
          <!--span class="section-header__aside"></span-->
        </div>
        <a class="section-header__button button--outline-light-grey button--small" href="https://www.sho.com/assets/pdf/shoplace/Showtime_showtime_Sales_Tools.zip">
          Download PDFs
        </a>
        {{/iter.isFirst}}
        {{^iter.isFirst}}
        <div class="section-header__left">
          <span class="section-header__title">{{name}}</span>
        </div>
        {{/iter.isFirst}}  
      </h3>
      <div class="row">
        {{#itemViewList}}
        <div class="col-6--at-medium col-4--from-large">
          <div class="promo promo--tune-in promo--all-caps">
            <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
            </div>
            <div class="promo__body">
              <h3 class="promo__headline">{{headline}}</h3>
              <p class="promo__tune-in">{{tuneInString}}</p>
              <p class="promo__copy">{{{description}}}</p>
              {{#leadline}}<p class="promo__lead">{{leadline}}</p>{{/leadline}}
            </div>
          </div>
        </div>
        {{/itemViewList}}
      </div>
    </section>
    {{/shoPlaceGroupViewList}}
  {{/content}}
{{/ layouts/shoplace }}
