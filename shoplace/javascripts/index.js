// import all JS from the styleguides index.js
import $ from 'jquery';   
window.$ = $; 
window.jQuery = $;
import Analytics from '../styleguide/analytics'
import Slider 	 from '../styleguide/slider' // maybe dont need this?
import * as LazySizesSupport from "../styleguide/responsive-images";
import ConsoleLogSettings from '../styleguide/console-log-settings';
import VideoPlayer from '../styleguide/video-player';
import enquire from 'enquire.js'
const breakpoints = {'large' : 992}

// we can't instantiate analytics at dom ready, only inside onetrust ready event
// console.log('|index.js| setting performanceAllowed listener')
// analytics should log events to console unless explicitly disabled in settings
// see http://localhost:4000/styleguide/console-log-settings/

document.addEventListener('performanceAllowed', function(e){		
	console.log('|index.js| hello - category 2 ready');
	console.log('|index.js| window.s:       '+(typeof s));
	var debug=true; if(ConsoleLogSettings.getState && ConsoleLogSettings.getState('analytics') === false) {debug=false}
	var analytics = new Analytics({debug});
})



var sliders = document.querySelectorAll('.js-slider');
[].forEach.call(sliders, function(el){
  var slider = new Slider({
    el: el
  });
})

var toggleNav = function(mode, el, e){
	if(e){
		e.preventDefault()
	}
	el.toggleClass('primary-nav--active', (mode == 'on'))
}


// handling for the mobile nav
$('.js-primary-nav').each(function(){
	var el = $(this); 
	el.find('.primary-nav__closer').on('click', toggleNav.bind(window, 'off', el))
	el.find('.primary-nav__toggle').on('click', toggleNav.bind(window, 'on', el))
})

// handle case where user opens the nav on small and then switches/rotates to large, maybe a tablet orientation change?
$(document).on('ready', () => { 
	enquire.register(`screen and (min-width: ${(breakpoints.large)}px)`, {
		match: () => {
			const el = $(document).find('.js-primary-nav')
			el && toggleNav('off', el)
		}
	})
})

document.addEventListener('brightcove:script-ready', function (e) {
  console.log('|index.js| brightcove:script-ready')
  if (window.bc && typeof window.bc == 'function') {
    [].forEach.call(document.querySelectorAll('.js-video-player'), function (el) {
      new VideoPlayer({ el: el, schema:false })
    });
  } else {
    console.log('|index.js| brightcove:script-ready fired, but window.bc is undefined')
  }
}, true)

import '../stylesheets/shoplace.scss'