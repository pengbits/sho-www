// grab jquery and export as global so optanon/ot bootstrap can function
import $ from 'jquery'; window.$ = $; window.jQuery = $;
import * as LazySizesSupport from "../styleguide/responsive-images";

// import component js from the styleguide's index.js
import { Analytics } from "../styleguide/analytics"
import ConsoleLogSettings from "../styleguide/console-log-settings"
import { TvProvidersModal } from '../styleguide/tv-providers-modal'
import HashChange from "../styleguide/hash-change/"
import { ProviderPseudoTable } from "../styleguide/provider-pseudo-table"
import ReadMore from "../styleguide/read-more"
import { PeekABooBanner } from "../styleguide/peek-a-boo-banner"
import { MegaStrip } from "../styleguide/hero-megastrip"
import VideoBackground from "../styleguide/video-background"
import VideoPlayerSimple from '../../styleguide/src/video-player-simple';
import Variations from "../styleguide/variations";
import TermsModal from "../styleguide/terms-modal";

document.addEventListener('performanceAllowed', function (e) {
  var gs = ConsoleLogSettings.getState;
  var debug1 = (gs && gs('analytics') === false) ? false : true
  new Analytics({ 'debug': debug1 });

  var tvProvidersModal = new TvProvidersModal();
  var hashChange = new HashChange();

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
});

// END terms modal

[].forEach.call(document.querySelectorAll('.js-provider-pseudo-table'), function (el) {
  new ProviderPseudoTable({ el });
});

[].forEach.call(document.querySelectorAll('.js-read-more'), function (el) {
  new ReadMore({ el });
});

[].forEach.call(document.querySelectorAll('.js-peek-a-boo-banner'), function (el) {
  new PeekABooBanner({ el });
});

[].forEach.call(document.querySelectorAll('.js-megastrip'), function (el) {
  new MegaStrip({ el })
});

var initVideoBackground = function (el) {
  new VideoBackground({
    el,
    // in the order context, one audio toggle is drawn into the hero__image element, and a second into the hero (parent) element
    audioControlsContainer: 'parents(.hero) .hero__image',
    // in order context, the toggle is pinned to the bottom of the footprint, except at the smallest size
    audioControlsPosition: 'bottom',
    // bc library is already in page 
    loadScripts: false
  })
};

const initSimpleVideoPlayer = function(el){
  let scrollToStart, data = Variations.getVariationMap('sho')
  if(data && data['video-scroll-to-start']) scrollToStart = true;
  new VideoPlayerSimple({
    scrollToStart,
    el
  })
}

const onBrightcoveScriptReady = function (e) {
  console.log('|index.js| brightcove:script-ready')
  if (window.bc && typeof window.bc == 'function') {
    [].forEach.call(document.querySelectorAll('.js-video-background'), initVideoBackground);
    [].forEach.call(document.querySelectorAll('.js-video-player-simple'), initSimpleVideoPlayer);
  } else {
    console.log('|index.js| brightcove:script-ready fired, but window.bc is undefined')
  }
}

if (!window.brightcove_loaded) {
  document.addEventListener('brightcove:script-ready', onBrightcoveScriptReady, true)
} else {
  onBrightcoveScriptReady()
}

// this is the handler for optimizely integrations with components that are conditionally initialized in the codebase
// if the optimizely data is already present on window at startup, it'll be accessible as `window.sho_variations`
// if the data has not loaded yet, use the variations manager to register a callback
var onVariationDataReady = data => {
  if (data['video-scroll-to-start']) {
    console.log('|index| variationDataReady() video-scroll-to-start √')
  }
}

if (Variations.foundShoVariation()) {
  console.log('|index| variation found at init time')
  onVariationDataReady(Variations.getVariationMap('sho'))
} else {
  Variations.on('variation:detected:sho', (e, data) => onVariationDataReady(data))
}

// video-background not playing on back-button navigate in ios:
// https://gomakethings.com/fixing-safaris-back-button-browser-cache-issue-with-vanilla-js/
window.onpageshow = function (event) {
  if (event.persisted) {
    window.location.reload();
  }
}

import '../stylesheets/stream_showtime.scss'