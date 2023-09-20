import "babel-polyfill";
// expose jquery and  lodash to window for debugging in console, and for use by Optimizely
import $ from 'jquery'; window.$ = $; window.jQuery = $;

import Analytics from '../styleguide/analytics'
import ConsoleLogSettings from '../styleguide/console-log-settings'
import GlobalNavigation from "../styleguide/global-nav";
import SelectNavigation from "../styleguide/select-navigation";
import ReadMore from "../styleguide/read-more";
import StickyBanner from "../styleguide/sticky-banner";
import PeekABooBanner from "../styleguide/peek-a-boo-banner";
import CastDetailsGrid from "../styleguide/cast-details-grid";
import EndlessScroll from "../styleguide/endless-scroll";
import StreamingModal from "../styleguide/streaming-modal";
import TvProvidersModal from "../styleguide/tv-providers-modal";
import Slideshow from "../styleguide/slideshow";
import HashChange from "../styleguide/hash-change";
import Notification from "../styleguide/notification";
import Slider from '../styleguide/slider'
import ScheduleDateSelector from "../styleguide/schedule-date-selector";
import ScheduleGrid from "../styleguide/schedule-grid";
import CountdownWidget from "../styleguide/countdown-widget";
import EmailSignup from "../styleguide/email-signup";
import FormPreviewModal from "../styleguide/form-preview-modal";
import ContactModal from "../styleguide/contact-modal";
import VideoPlayer from '../styleguide/video-player';
import VideoPlay7r from '../styleguide/video-player7';
import VideoPlayerSimple from "../styleguide/video-player-simple";
import VideoBackground from '../styleguide/video-background';
import Variations from "../styleguide/variations";
import { MegaStrip } from "../styleguide/hero-megastrip";
import AbandonedCartModal from "../../styleguide/src/abandoned-cart-modal";
import TermsModal from "../../styleguide/src/terms-modal";

import * as LazySizesSupport from "../styleguide/responsive-images";
import { ProviderPseudoTable } from "../styleguide/provider-pseudo-table"

document.addEventListener('performanceAllowed', function (e) {		
  var gs = ConsoleLogSettings.getState;
  var debug1 = (gs && gs('analytics') === false) ? false : true
  new Analytics({ 'debug': debug1 });

  var streamingModal = new StreamingModal();
  var tvProvidersModal = new TvProvidersModal();
  var slideshow = new Slideshow();


  // BEGIN terms modal auto-open
  window.Terms = {
    'modal': ((cfg = {}) => {
      if (cfg) {
        TermsModal.open(cfg) // {???}
      } else if (cfg == false) {
        TermsModal.close()
      }
    }),

    'accept': (() => {
      TermsModal.accept()
    })
  }
  
  setTimeout(window.Terms.modal, 0);
  // END terms modal

  var sliders = document.querySelectorAll('.js-slider');
  [].forEach.call(sliders, function (el) {

    var slider = new Slider({
      el: el
    });
  })

  var el = document.querySelector('.js-global-nav');
  if (!!el) {
    var globalnav = new GlobalNavigation({
      el: el
    });
  }

  var el = document.querySelector('.js-select-navigation');
  if (!!el) {
    var selectnav = new SelectNavigation({
      el: el
    });
  }
  
  [].forEach.call(document.querySelectorAll('.js-megastrip'), function (el) {
    new MegaStrip({ el })
  });

  var initVideoBackground = function (el) {
    const parent    = $(el).parents('section')
    const isRefresh = parent && parent.hasClass('refresh-hero')
  
    new VideoBackground({
      el,
      // in sho.com context, there is only one audio toggle, and it's appended to hero__inner
      audioControlsContainer: isRefresh ? 'parents(.refresh-hero) .refresh-hero__inner' : 'parents(.hero) .hero__inner',
      // in sho.com context, the toggle is pinned to the top of the footprint
      audioControlsPosition: 'top',
      loadScripts: true // assumes this is only used in homepage, not video page, where bc lib is present
    })
  };

  // init the video background normally, outside the brightcove script ready event listener
  // as this component can be drawn into any page, not just video pages,
  // and it will grab its own copy of the brightcove script tag if it's missing from the page
  [].forEach.call(document.querySelectorAll('.js-video-background'), initVideoBackground);
  
  const initSimpleVideoPlayer = function (el) {
    let scrollToStart, data = Variations.getVariationMap('sho')
    if (data && data['video-scroll-to-start']) scrollToStart = true;
    new VideoPlayerSimple({
      scrollToStart,
      el
    })
  }


  // BEGIN v7 VIDEO PLAYER RECODE
  const onVideoCtaClick = (e) => {
    const el = $(e.currentTarget);
    const {
      videoId,
      mode,
      ...attrs
    } = $(el).data()

    if (videoId && mode && (mode == 'modal')) {
      e.preventDefault(); e.stopPropagation();
      VideoPlay7r.modal({ id:videoId, ...attrs })
    }
  };

  var videoPlay7rCtas = document.querySelectorAll('.js-video-play7r-cta');
  [].forEach.call(videoPlay7rCtas, function (el) {
    $(el).on('click', onVideoCtaClick)
  })

  var videoPlay7rPlaceholders = document.querySelectorAll('.js-video-play7r');
  [].forEach.call(videoPlay7rPlaceholders, function (el) {
    VideoPlay7r.decorate({ el })
  })

  const onBrightcoveScriptReady = function (e) {
    console.log('|index.js| brightcove:script-ready')
    if (window.bc && typeof window.bc == 'function') {
      [].forEach.call(document.querySelectorAll('.js-video-player'), initFullVideoPlayer);
      [].forEach.call(document.querySelectorAll('.js-video-player-simple'), initSimpleVideoPlayer)
    } else {
      console.log('|index.js| brightcove:script-ready fired, but window.bc is undefined')
    }
  }
  
  if (!window.brightcove_loaded){
    document.addEventListener('brightcove:script-ready', onBrightcoveScriptReady, true)
  } else {
    onBrightcoveScriptReady() 
  }

  // this is the handler for optimizely integrations with components that are conditionally initialized in the codebase
  // if the optimizely data is already present on window at startup, it'll be accessible as `window.sho_variations`
  // if the data has not loaded yet, use the variations manager to register a callback
  var onVariationDataReady = data => {
    if (data.hero_megastrip) {
      var el = document.querySelector('.megastrip')
      if(!el) throw new Error('megastrip variation found, but element is missing')
      else new MegaStrip({ el })
    }
    if (data.abandoned_cart) {
      var layout = data.abandoned_cart.layout || 'modal'
      var theme = data.abandoned_cart.theme
      var delay = (Number(data.abandoned_cart.delay || 0) * 1000)

      setTimeout(function () {
        console.log(`|index.js| draw abandoned_cart with layout='${layout}' theme='${theme}' delay='${delay}'`)
        AbandonedCartModal.open({
          layout,
          theme
        })

      }, delay)
    }
  }

  if (Variations.foundShoVariation()) {
    onVariationDataReady(Variations.getVariationMap('sho'))
  } else {
    Variations.on('variation:detected:sho', (e, data) => onVariationDataReady(data))
  }




  var readmoreblocks = document.querySelectorAll('.js-read-more');
  [].forEach.call(readmoreblocks, function (el) {
    // if there is a logo image in the hero, we need to set a callback
    // to set the width to its initial size before toggling the read-more to avoid a glitch
    var heroHeadlineImage = $(el)
      .parents('.refresh-hero__body')
         .find('.refresh-hero__headline__container__image')
    ;
    var readmore = new ReadMore({
      el: el,
      optsOnShowTruncatedText: function(){
        !!heroHeadlineImage && heroHeadlineImage.width(heroHeadlineImage.width())
      }
    });
  })

  var stickyBanners = document.querySelectorAll('.js-sticky-banner');
  [].forEach.call(stickyBanners, function (el) {
    var stickybanner = new StickyBanner({
      el: el
    });
  });

  var peekABooBanners = document.querySelectorAll('.js-peek-a-boo-banner');
  [].forEach.call(peekABooBanners, function (el) {
    var peekaboobanner = new PeekABooBanner({
      el: el
    });
  });

  var castDetailsGrids = document.querySelectorAll('.js-dropdown-menu');
  [].forEach.call(castDetailsGrids, function (el) {
    var castDetailsGrid = new CastDetailsGrid({
      el: el
    });
  });

  let endlessScrolls = document.querySelectorAll('.js-endless-scroll');
  [].forEach.call(endlessScrolls, function (el) {
    const { baseUrl, pageUrl } = el.dataset
    const endlessscroll = new EndlessScroll({
      el,
      baseUrl,
      pageUrl
    });
  });


  // HashChange needs to be instantiated after components such as Slideshow, that respond to hash changes,
  // so that they can work properly when linking directly to a url containing a hash fragment that triggers such a component.
  // this is because components like the Slideshow listen for an event emitted by Hashchange, and that listener has to be set before HashChange fires the event, dig?
  var hashChange = new HashChange();

  var dateSelectorEl = document.querySelector('.js-schedule-date-selector');
  if (!!dateSelectorEl) {
    var date = dateSelectorEl.dataset.startDate;
    var dateSelector = new ScheduleDateSelector({
      el: dateSelectorEl,
      date: date // optional date should be iso string
    });
  }

  // uncomment to force notification to appear without optinizely test (all pages!)
  // Notification.prototype.check_for_optimizely = false;
  [].forEach.call(document.querySelectorAll('.js-notification'), function (el) {
    new Notification({ 'el': el });
  })


  var scheduleGridEl = document.querySelector('.js-schedule-grid');
  if (!!scheduleGridEl) {
    var scheduleGrid = new ScheduleGrid({ el: scheduleGridEl });
  }

  var countdownWidget = document.querySelectorAll('.js-countdown-widget');
  for (var i = 0; i < countdownWidget.length; i++) {
    var dateSelector = new CountdownWidget({
      title: "Countdown",
      el: countdownWidget[i],
      timeUnits: ['days', 'hrs', 'mins', 'secs']
    });
  }

  
  [].forEach.call(document.querySelectorAll('.js-react-email-signup'), function (el) {
    EmailSignup.factory(el)
    // sho = window.sho || {};  // export helper function for cookied state
    // sho.userAlreadySignedUp = EmailSignup.userAlreadySignedUp
    // sho.userIsLockedOut = EmailSignup.userIsLockedOut
  });

  // holiday card form preview modal
  var preview = $('.holiday-card__sample');
  if (preview.length > 0) {
    new FormPreviewModal({ name: 'input[name="fromName"]', message: '.holiday-card__form__textarea' });
  }

  var contact = document.getElementById('contact');
  if (contact) {
    new ContactModal();
  }

  // alternate order page
  [].forEach.call(document.querySelectorAll('.js-provider-pseudo-table'), function (el) {
    new ProviderPseudoTable({ el });
  });
})


import '../stylesheets/sho.scss'
