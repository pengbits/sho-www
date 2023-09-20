{{!--
  # shoplace cox showtime-highlights
--}}

{{< layouts/shoplace }}
  {{$classnames}}showtime-highlights{{/classnames}}  
  {{$pagename}}Showtime Highlights{{/pagename}}
  {{$pageurl}}showtime-highlights{{/pageurl}}  
  {{$nav-contents}}
    {{#global.nav}}
    <div class="showtime-highlights-nav">
      <div class="showtime-highlights-nav__inner">
        <img class="showtime-highlights-nav__logo" src="{{primaryLogo.url}}" alt="{{primaryLogo.text}}" />
      </div>
    </div>
    {{/global.nav}}
  {{/nav-contents}}
  {{$header}} 
    <div class="masthead__img--{{global.partner.toLowerCase}}"></div>
    <h3 class="masthead__copy">Be sure to check out the SHOWTIME programming below and participate in the weekly SHOWTIME quizzes for a chance to win Amplifi points!</h3>
  {{/header}}
  {{$content}}
    {{#shoPlaceGroupViewList}}
    <section class="container__inner container__inner--one-of-many">
  		<h3 class="section-header section-header--border">
        <div class="section-header__left">
          <span class="section-header__title">{{name}}</span>
          {{#iter.isFirst}}
          <!--span class="section-header__aside"></span-->
          {{/iter.isFirst}}
        </div>
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
  {{$footer-contents}}
  {{#global.footer}}
    <div class="showtime-highlights-footer">
      <aside class="footer__legal">
        <section class="footer__inner">
          <p>{{legalLine}}</p>
        </section>
      </aside>
    </div>
  {{/global.footer}}
{{/footer-contents}}
{{/ layouts/shoplace }}