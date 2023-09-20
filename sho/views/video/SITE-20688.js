// SITE-20688 - create a two-column layout for video player, move related videos to right column
// excluding full episodes from test due  to complexity involved in rendering email-signup into new two-col layout
// this might mean we need to check fallback styles when removing `--two-col`
$(document).ready(function(){
  var MAX_VIDEOS   = 1; // set to any number to cap the related vieos
  var el           = $('.video-player');
  var video        = el.find('video[data-full-episode]');
  var videoCntr    = el.find('.video-player__video');
  var primary      = el.find('.video-player__primary');
  var secondary    = el.find('.video-player__secondary');
  var fullEpBanner;
  var orderBanner;
  var metaCntr;
  var relatedVideos;
  
  // 1)
  if(video.data('full-episode')) { return false; }
  
  // 2)
  el.addClass('video-player--two-col');
  
  // 3) n/a add video-player__primary column in html-
  // 4) n/a
  // 5) insert free full episode banner if present 
  $('.full-episode-banner').each(function(){
    fullEpBanner = $(this).remove().removeClass('section--inner');
    fullEpBanner.css({ 'marginTop':'15px' });
    videoCntr.after(fullEpBanner);
  });
  
  // 6) insert the metadata into the primary column, unsetting the inner-container margins 
  // alternatively, we could just clone the child content from & > .video-metadata
  $('.video-metadata-section').each(function(){
    metaCntr = $(this).remove();
    metaCntr.css({
      'display'      : 'block',
      'borderWidth'  : '0',
      'marginBottom' : '10px'
      });
    metaCntr.find('.video-metadata')
      .css({
        'marginRight'     : 0,
        'float'           : 'none',
        'backgroundColor' : 'transparent',
        'width'           : '100%',
      });
    metaCntr.find('.video-metadata__inner')
      .css({ 
        'backgroundColor' : 'transparent', 
        'paddingLeft'     : 0,
        'paddingRight'    : 0
      });
    // 7 remove order-promo
    metaCntr.find('.order-promo').remove();
    // 8 insert the order-banner into primary column, tweaking styles for the full-width context.
    // TODO alternatively roll a order-banner--full-width variation in styleguide?
    orderBanner = metaCntr.find('.order-banner')
      .removeClass('.section--inner')
      .removeClass('.js-sticky-banner')
      .css({
        'display' : 'block'
      });
    metaCntr.find('.order-banner__inner')
      .css({
        'display'   :'block',
        'width'     : '100%',
        'textAlign' : 'center'
      });
    metaCntr.find('.order-banner__body')
      .css({
        'width' : '100%'
      });
    
    (!!fullEpBanner ? fullEpBanner : videoCntr)
      .after(metaCntr);
  });
  
  // 9 remove related videos header and render replacement in secondary
  $('.section-header--related-videos').remove();
  secondary.append('<h3 class="video-player__secondary__header">Related Videos</h3>');
  
  // 10 remove related videos and insert into secondary
  relatedVideos = $('.promo-group--related-videos').remove();
  relatedVideos.removeClass('promo-group--to-three-up');
  relatedVideos.removeClass('section--inner');
  
  // limit related videos as needed
  if(!!MAX_VIDEOS) {
    relatedVideos.find('.promo').each(function(idx) {
      if(idx > (MAX_VIDEOS-1)) $(this).remove()
    });
    
  }
  secondary.append(relatedVideos);
});
