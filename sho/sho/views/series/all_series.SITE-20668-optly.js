// from https://work.sho.com/jira/browse/SITE-20668
// just adding a snapshot of the variation code needed to support this to git

// https://app.optimizely.com/v2/projects/16939480261/experiments/19044650925 
// in variation 1
console.log ("hello from optly grids series");
$( document ).ready(function() {
  $('#featured-series-slider').hide();
  $('#featured-series-grid').show();
  $('#comming-soon-series-slider').hide();
  $('#comming-soon-series-grid').show();
  $('#all-series-slider').hide();
  $('#all-series-grid').show();
});

// in variation 2
$( document ).ready(function() {
  console.log ('variation2 19044650925/variations/19059790745');
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
});
