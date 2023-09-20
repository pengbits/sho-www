import "babel-polyfill";
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
import AbandonedCartModal from "../styleguide/abandoned-cart-modal"
import StreamingModal from "../styleguide/streaming-modal";
import TvProvidersModal from "../styleguide/tv-providers-modal";
import TermsModal from "../../src/terms-modal";
import Slideshow from "../styleguide/slideshow";
import HashChange from "../styleguide/hash-change";
import MegaStrip  from "../styleguide/hero-megastrip";
import Notification from "../styleguide/notification";
import ProviderPseudoTable from "../styleguide/provider-pseudo-table"
import Slider from '../styleguide/slider'
import ScheduleDateSelector from "../styleguide/schedule-date-selector";
import ScheduleGrid from "../styleguide/schedule-grid";
import CountdownWidget from "../styleguide/countdown-widget";
import EmailSignup from "../styleguide/email-signup";
import FormPreviewModal from "../styleguide/form-preview-modal";
import ContactModal from "../styleguide/contact-modal";
import VideoPlayer from '../styleguide/video-player';
import VideoPlay7r from '../styleguide/video-player7';
import VideoBackground from '../styleguide/video-background';
import VideoPlayerSimple from "../styleguide/video-player-simple";
import Variations from "../styleguide/variations"
import VariationControls from "../styleguide/variations/controls"
import decorateSymbols from "../styleguide/decorated-symbols"
import sideBar from "./sidebar";
import decorations from "./decorations";
import FauxRadios from "./faux-radios";
import * as LazySizesSupport from "../styleguide/responsive-images";



var sliders = document.querySelectorAll('.js-slider');
[].forEach.call(sliders, function (el) {
  var slider = new Slider({
    el: el
  });
});


// simulate peformanceAllowed event for the legacy video-player
// so that heartbeat events can be tested
// const peformanceAllowed = () => {
//   var e = document.createEvent('Event')
//   e.initEvent('performanceAllowed', false, true)
//   document.dispatchEvent(e)
// }

// legacy player
var videoplayers = document.querySelectorAll('.js-video-player');
[].forEach.call(videoplayers, function (el) {
  // peformanceAllowed() TODO throw video-player:created here
  var videoplayer = new VideoPlayer({
    el: el
  });
});

// BEGIN v7 VIDEO PLAYER RECODE
const onVideoCtaClick = (e) => {
  const el = $(e.currentTarget);
  const {
    videoId,
    mode,
    target,
    ...attrs
  } = $(el).data()
  const id = videoId

  if (id && target) {
    console.log('attempt playback of ' + id)
    VideoPlay7r.attemptPlayback({ id, el: $(target)[0], ...attrs})
  } else {  
    if(mode == 'destroy'){
      console.log('destroy active player')
      const result = VideoPlay7r.destroy()
    }
    if(mode == 'modal'){
      console.log('open video in modal')
      e.preventDefault(); e.stopPropagation();
      VideoPlay7r.modal({id, ...attrs})
    }
  }
}

var videoPlay7rCtas = document.querySelectorAll('.js-video-play7r-cta');
[].forEach.call(videoPlay7rCtas, function (el) {
  $(el).on('click', onVideoCtaClick)
})

var videoPlay7rPlaceholders = document.querySelectorAll('.js-video-play7r');
[].forEach.call(videoPlay7rPlaceholders, function (el) {
  if(el.dataset.background) console.log('|index| bg video found')
  VideoPlay7r.decorate({el})
})

// TODO drop this
var videoPlay7rModalsWithEagerLoad = document.querySelectorAll('.js-video-play7r-modal');
[].forEach.call(videoPlay7rModalsWithEagerLoad, function(el){
  VideoPlay7r.eager()
})

var videoBackgrounds = document.querySelectorAll('.js-video-background');
[].forEach.call(videoBackgrounds, function (el) {
  console.log('video bg found')
  var videoBackground = new VideoBackground({
    el,
    audioControlsContainer: 'parents(.hero) .hero__inner',
    audioControlsPosition: 'top',
    loadScripts: true
  });
})



// END v7 VIDEO PLAYER RECODE



var el = document.querySelector('.js-sample-component');
if (!!el) {
  var slider = new SampleComponent({
    el: el
  });
}

var dateSelectorEl = document.querySelector('.js-schedule-date-selector');
if (!!dateSelectorEl) {
  var date = dateSelectorEl.dataset.startDate;
  var dateSelector = new ScheduleDateSelector({
    el: dateSelectorEl,
    date: date
  });
}

var globalnavigations = document.querySelectorAll('.js-global-nav');
[].forEach.call(globalnavigations, function (el) {
  var globalnav = new GlobalNavigation({
    el: el
  });
})

var selectnavigations = document.querySelectorAll('.js-select-navigation');
[].forEach.call(selectnavigations, function (el) {
  var selectnav = new SelectNavigation({
    el: el
  });
})

var countdownWidgets = document.querySelectorAll('.js-countdown-widget');
for (var i = 0; i < countdownWidgets.length; i++) {
  var countdownWidget = new CountdownWidget({
    el: countdownWidgets[i],
  });
}

var scrollpanes = document.querySelectorAll('.js-scroll-pane');
[].forEach.call(scrollpanes, function (el) {
  new ScrollPane({
    el: el
  });
})

var readMores = document.querySelectorAll('.js-read-more');
[].forEach.call(readMores, function (el) {
  var readmore = new ReadMore({
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

[].forEach.call(document.querySelectorAll('.js-provider-pseudo-table'), function (el) {
  new ProviderPseudoTable({ 'el': el });
});

[].forEach.call(document.querySelectorAll('.js-notification'), function (el) {
  new Notification({ 'el': el });
})

var scheduleGridEl = document.querySelector('.js-schedule-grid');
if (!!scheduleGridEl) {
  var scheduleGrid = new ScheduleGrid({ el: scheduleGridEl });
}

var castDetailsGrids = document.querySelectorAll('.js-dropdown-menu');
[].forEach.call(castDetailsGrids, function (el) {
  var castDetailsGrid = new CastDetailsGrid({
    el: el
  });
});

// analytics should log events to console unless explicitly disabled in settings
// see http://localhost:4000/styleguide/console-log-settings/
var debug = true; if (ConsoleLogSettings.getState && ConsoleLogSettings.getState('analytics') === false) { debug = false }
var analytics = new Analytics({ debug });
$('.analytics-example a').on('click', function (e) {
  e.preventDefault();
});

[].forEach.call(document.querySelectorAll('.js-console-log-settings'), function (el) {
  new ConsoleLogSettings({ el })
})


var tvprovidersModal = new TvProvidersModal();
var streamingModal = new StreamingModal();
var slideshow = new Slideshow();
new FormPreviewModal({ message: '.form-preview-message', name: '.form-preview-name' });
new ContactModal();
// HashChange needs to be instantiated after components such as Slideshow, that respond to hash changes,
// so that they can work properly when linking directly to a url containing a hash fragment that triggers such a component.
// this is because components like the Slideshow listen for an event emitted by Hashchange, and that listener has to be set before HashChange fires the event, dig?

// listen for hash changes
var hashChange = new HashChange();

var galleryEl = document.querySelector('.js-gallery');
if (!!galleryEl) {
  var gallery = new Gallery();
}

// sidebar toggle
sideBar();

// decorations
decorations();

// widget for toggling variations cookie
[].forEach.call(document.querySelectorAll('.js-variation-controls'), function (el) {
  new VariationControls({ 'el': el });
});

[].forEach.call(document.querySelectorAll('.js-faux-radios'), function (el) {
  new FauxRadios({
    'el': el
  })
});

[].forEach.call(document.querySelectorAll('.js-scrollbar-dimensions'), function (el) {
  var component = ScrollbarDimensions.instance();
  console.log('scrollbar width: ' + component.width());
  el.innerHTML = ('scrollbar width: ' + component.width())
});

// refactored order-tray
[].forEach.call(document.querySelectorAll('.js-order-tray-redux'), function (el) {
  OrderTray.Factory.instance({
    useRoutes: true,
    base: "/styleguide/order-tray-with-better-seo",
    el
  })
});

// stream showtime page
[].forEach.call(document.querySelectorAll('.js-megastrip'), function (el) {
  new MegaStrip({ el })
});

[].forEach.call(document.querySelectorAll('.js-provider-groups'), function (el) {
  new ProviderGroups({ 'el': el })
});

[].forEach.call(document.querySelectorAll('.js-sample-react-component'), function (el) {
  SampleReactComponent.factory(el)
});

[].forEach.call(document.querySelectorAll('.js-react-email-signup'), function (el) {
  EmailSignup.factory(el)
});



// this handler checks abandoned cart modal proof-of-concept SITE-21586
Variations.on('variation:detected:sho', function (e, data) {
  decorateSymbols('styleguide:variation')

  if (data.abandoned_cart) {
    console.log(`|index.js| variation detected ${JSON.stringify(data.abandoned_cart)}`);

    var layout = data.abandoned_cart.layout || 'modal'
    var theme = data.abandoned_cart.theme
    var delay = (Number(data.abandoned_cart.delay || 0) * 1000)

    setTimeout(function () {
      console.log(`|index.js| draw abandoned_cart with layout='${layout}' theme='${theme}' delay='${delay}'`)
      // $.event.trigger({
      //   type: 'cart:opened',
      //   layout,
      //   theme
      // })

      AbandonedCartModal.open({
        layout,
        theme
      })

    }, delay)
  }
});

// export Abandoned Cart Modal publicly for debugging (and other uses?)
window.AbandonedCart = {
  'modal': ((cfg) => {
    if (cfg) {
      AbandonedCartModal.open(cfg) // {"layout":"modal","theme":"yourhonor"} 
    } else if (cfg == false) {
      AbandonedCartModal.close()
    }
  })
}

// ditto for Terms Modal
window.Terms = {
  'modal': ((cfg={}) => {
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

const onBrightcoveScriptReady = function (e) {
  console.log('|index.js| brightcove:script-ready')
  if (window.bc && typeof window.bc == 'function') {
    [].forEach.call(document.querySelectorAll('.js-video-player-simple'), function (el) {
      new VideoPlayerSimple({el})
    });
  } else {
    console.log('|index.js| brightcove:script-ready fired, but window.bc is undefined')
  }
}

if (!window.brightcove_loaded) {
  document.addEventListener('brightcove:script-ready', onBrightcoveScriptReady, true)
} else {
  onBrightcoveScriptReady()
}

// Terms Modal auto-open limited to one page
[].forEach.call(document.querySelectorAll('.terms-modal-auto-open-trigger'), function(el){
  setTimeout(window.Terms.modal, 0)
})

import '../stylesheets/styleguide.scss'
