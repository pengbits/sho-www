import $ from 'jquery';
import Variations from '../../../sho/styleguide/variations';
const GENERIC_PLAYER_ID_MESSAGE = 'generic player id "video-player" is no longer supported due to erractic behavior when there is more than one player instance in the same page'

class VideoPlayerSimple {

  //
  // startup
  // ---------------------------------------------------------------------------
  constructor(cfg) {
    this.el         = $(cfg.el);
    this.video      = this.el.find('.video-player-simple__embed')
    this.autoplay   = !!this.video.attr('autoplay') 
    this.shouldMute = !!this.video.data('should-mute') // all embeds are assumed to have muted=true in order to suppress the "...haven't interacted with dom first" warnings
    this.isMuted    = !!this.video.attr('muted')
    this.scrollToStart = (this.el.data('scrollToStart') || cfg.scrollToStart)
    this.initAPI()
    this.correctMuteSetting()
    this.setScrollHandler()
    this.setVariationsHandler()
  }

  initAPI(){
    const id = this.video.attr('id')
    if(id == 'video-player') throw new Error(GENERIC_PLAYER_ID_MESSAGE)
    console.log(`|player-simple| initializing player with id: ${id} should-mute=${this.shouldMute} is-mute=${this.isMuted} scroll-to-start=${!!this.scrollToStart} autoplay=${this.autoplay}`)
    this.api = window.videojs(id)
    
    // if(!this.api.paused()) {
    //   console.log(`|player-simple| autoplay=true and player isn't paused, so call pause()`)
    //   this.api.pause()
    // }
  }
  
  correctMuteSetting(){
    // the muted attribute is set to true to support the autoplay + scroll-to-start cases
    // in some scenarious, when autoplay isn't needed, we may prefer to correct the mute setting
    if(this.isMuted && !this.shouldMute){
      console.log(`|player-simple| muted but muted isnt desired`)
      if(this.scrollToStart || this.autoplay) {
        return
      } else {
        console.log(`|player-simple| no scroll-to-start or autoplay, so correct mute`)
        this.unmute()
      }
    }
  }

  setVariationsHandler(){
    if(this.scrollToStart) {
      console.log('|player-simple| already configured with scroll-to-start, no need to inspect variation data')
      return
    }

    if (Variations.foundShoVariation()) {
      console.log('|player-simple| found variations at startup time')
      this.onVariationDataReady(Variations.getVariationMap('sho'))
    } else {
      console.log('|player-simple| no variations found at startup time, setting listener')
      Variations.on('variation:detected:sho', (e, data) => this.onVariationDataReady(data))
    }
  }

  onVariationDataReady(data){
    console.log('|player-simple| onVariationReady()')
    if(data['scroll-to-start'] && !this.scrollHandlersSet){
      this.scrollToStart = true;
      this.setScrollHandler()
    }
  }

  setScrollHandler() {
    if (!this.scrollToStart || this.scrollHandlersSet) return

    this.scrollHandlersSet = true
    $(window).scroll(this.onScroll.bind(this))
  }

  onScroll(e) {
    if (this.isScrolledIntoView()) {
      // console.log(`in view`)
      this.play()
    } else {
      // console.log('out of view')
      this.stop()
    }
  }

  isScrolledIntoView() {
    var docViewTop = $(window).scrollTop();
    var docViewBottom = docViewTop + $(window).height();

    var elemTop = this.el.offset().top;
    var elemBottom = elemTop + this.el.height();

    return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
  }

  play() {
    try { // the try/catch is for 'havent interacted with dom first' errors
      this.api.play()
    }
    catch (e) {
      console.log(e)
    }
  }

  unmute(){
    this.api.muted(false)
  }

  stop() {
    this.api.paused() || this.api.pause()
  }

}

export default VideoPlayerSimple


// TODO
// either the 'bc ready' event or 'variationDataReady' event could fire first - we must handle either possibility
// in local environment, variation data is ready first, but simulating bc ready first can be achieved
// by wrapping the Variations#fire method in a setTimeout of 5s or so
//
// a) BC FIRST
// 1. bc ready event fires
// 2. init components in stream-showtime.index
// 3. check for presence of optly data in stream-showtime.index - nothing, standard simple player is initialized
// 4. in simple player.index (this file), check for optly data and set optly variation listener
// 5. optly data ready - scroll-to-start found, set scroll listeners after the fact
//
// b) OPTLY FIRST -
// 1. optly variation data ready 
// 2. init components in stream-showtime.index
// 3. set config options in video player simple to {{scrollToStart:true}}
// 4. simple player is initialized with scroll to start config option 