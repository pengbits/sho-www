{{!--
    This alternate markup is part of the All Featured Series A/B test
    It is defined in the html layer so it can be populated with data from backend, but hidden
    The component is made visible in optimizely with javascript calls to change the display to block. 
    Mobile Only Audience
    Description of Variation 1: One series promo per row, scroll down through the six featured series, can see up to three series promos at a time
    Manipulating IDs in 
    $('#featured-series-slider').hide();
    $('#featured-series-grid').show();
    $('#coming-soon-series-slider').hide();
    $('#coming-soon-series-grid').show();
    $('#all-series-slider').hide();
    $('#all-series-grid').show();

    Description of Variation 2: Two series promos per row, scroll down through the featured series, can see all six on your mobile device at once

    $('#featured-series-slider').hide();
    $('#featured-series-grid').show();
    $('#all-series-slider').hide();
    $('#coming-soon-series-grid').show();
    $('#coming-soon-series-slider').hide();
    $('#all-series-grid').show();
    $("#all-series-grid > .promo-group-no-slider > .promo-group").addClass("promo-group--from-list promo-group--from-list-small");
    $("#all-series-grid > .promo-group-no-slider > .promo-group").removeClass("promo-group--from-two-up");
    $("#featured-series-grid > .promo-group-no-slider > .promo-group").addClass("promo-group--from-two-up");
    $("#coming-soon-series-grid > .promo-group-no-slider > .promo-group").addClass("promo-group--from-two-up");
      
    see more at https://work.sho.com/jira/browse/SITE-20668
    --}}
<section class="section section--pad-more {{$classNames}}{{/classNames}}" id="{{$sectionId}}{{/sectionId}}"  data-context="promo group:{{heading}}">
    <div class="promo-group-header">
      <h3 class="promo-group-header__title">{{heading}}</h3>
    </div>
    <div class="promo-group-no-slider">
      <div class="promo-group">
        {{#tileList}}
          <div class="promo promo--docked">
            <div class="promo__image lazyload" data-bgset="{{imageUrl}}">
            </div>
            <div class="promo__body promo__body--docked-under">
              <h3 class="promo__headline">{{{title}}}</h3>
              {{#subTitle}}<p class="promo__copy">{{{subTitle}}}</p>{{/subTitle}}
            </div>
            <a class="promo__link" href="{{ctaLink}}" data-track data-label="{{ctaType}}:{{title}}" data-location="tile {{iter.index}}">{{{title}}}</a>
          </div>
        {{/tileList}}
        </div>
    </div>
  </section>