import $ from 'jquery';
import enquire from 'enquire.js';
import VideoPlay7r from '../video-player7';
import VideoPlayerAgeGate from './age-gate-react/';
import cookies from '../utils/cookies';

const ORDER_TRAY_OR_MODAL_CLOSED = 'closed';
const ORDER_TRAY_OPEN            = 'order:opened';
const PLAYER_READY               = 'loadedmetadata'
const PLAYER_PAUSE               = 'pause';
const PLAYER_PLAY                = 'play';
const PLAYER_ENDED               = 'ended';
const PLAYER_CATALOG_ERROR       = 'bc-catalog-error';
const AGE_GATE_SUCCESS           = 'videoAgeGateSuccess';
const FULL_SCREEN_CHANGE         = 'fullscreenchange';

class VideoPlayer {

  //
  // startup
  // ---------------------------------------------------------------------------
  constructor(cfg) {
    const el    = $(cfg.el);
    const query = (key) => el.find('.video-playr__'+key)
    // todo - rename these oddball elements to `video-player__${key}`

    this.breakpoints = {
      'medium': 768,
      'large' : 992
    }

    this.error_messages = {
      'CLIENT_GEO' : 'The video you are trying to watch cannot be viewed from your current country or location'
    }

    // cache useful elements
    Object.assign(this, {
      el                : el,
      ageGateCntr       : query('age-gate-container'),
      errorMessageCntr  : query('error-message'),
      video             : query('video__embed'),
      promoCover        : el.find('.promo--cover')
    })

    // grab api pointers
    const id = this.video.attr('id')
    if(id == 'video-player') throw new Error('generic player id "video-player" is no longer supported due to erractic behavior when there is more than one player instance in the same page')
    console.log(`|playr| initializing player with id: ${id}`)
    Object.assign(this, {                    // there are two api-like references with two different methods for obtaining them, but the distinction is unclear:
      bcPlayer          : window.bc(id),     // this is probably just an older way of retrieving the same bc player instance as the videojs method below:
      api               : window.videojs(id) // and even this has been updated in current docs to be more of an asnyc thing: 
    })                                       // videojs.getPlayer(id).ready(function () { myPlayer = this }
                                             // myplayer === bcPlayer === api // these are all the same!

    Object.assign(this, {
      // was hasAutoPlay=!safari, but seems like there is no longer any reason 
      // to exclude safari from at least attempting synthetic autoplay after clearing age-gate/email widget
      hasPreRoll      : false, // suspending pre-roll .. when full episodes get preroll and short form do not the value of this key was `isFullEpisode`. See SITE-22917 
      preRollPlaying  : false,
      disabledCards   : false,
      age             : this.video.attr('data-age-gate'),
      isFirstRun      : true,
      captionsEnabled : false
    })

    // fire play7r-compatible  event for heartbeat to work
    console.log('|playr| video-player:creared {instanceId:'+id+'}')
    VideoPlay7r.trigger('created', { instanceId: id })

    //console.log(`|playr| age=${this.age}`)
    this.setPlayerReadyHandler()
    this.initPreRollPlugin()
    this.setPreRollHandlers()
    this.setPlayerCatalogErrorHandler()
    this.setGlobalEventHandlers()

    this.setAgeGate()
    this.promoCover[0] && this.setPromoCoverHandler()
}

  setPlayerReadyHandler(){
    // make sure the player is ready before moving forward
    // ...
    // note - pretty sure this can be swapped out for player.ready()
    // https://docs.brightcove.com/brightcove-player/current-release/Player.html#ready
    if(this.bcPlayer.readyState() > 0) {
      this.onMetadataLoaded();
    }
    else {
      this.bcPlayer.on(PLAYER_READY, () => this.onMetadataLoaded());
    }
  }

  onMetadataLoaded() {
    console.log(`|playr| onMetadataLoaded`)
  }

  setPlayerCatalogErrorHandler() {
    this.api.one(PLAYER_CATALOG_ERROR,  this.onCatalogError.bind(this));
  }

  // if video player is embedded in a hero we'll need to pause when switching from mobile -> desktop
  setPromoCoverHandler(){
    this.setFullScreenChangeHandler();

    enquire.register(`screen and (min-width:${(this.breakpoints.large-1)}px)`, {
      'match' : () => {
        if(!this.bcPlayer.paused() && !this.bcPlayer.isFullscreen()) {
          // pause if video is playing and window is stretched passed large breakpoint unless fullscreen
          this.stop();
        }
      }
    })

    this.bcPlayer.on(PLAYER_ENDED, () => {
      // when video completes, re-hide video player and show video promo
      // also exit fullscreen if in fullscreen
      this.togglePromoCover();
      if(this.bcPlayer.isFullscreen()) this.bcPlayer.exitFullscreen();
    })
    
    const promoLink = this.el.find('.promo__link');
    promoLink.on('click', event => {
      event.preventDefault();
      this.togglePromoCover();

      if(!this.isAgeGated()) {
        this.play();
      }
    });
  }

  togglePromoCover() {
    this.promoCover.toggle();
    this.el.find('.video-player__video').toggle();
  }

  setFullScreenChangeHandler(){
    this.bcPlayer.on(FULL_SCREEN_CHANGE, () => this.onFullScreenChange());
  }

  onFullScreenChange() {
    let isFullscreen = this.bcPlayer.isFullscreen();
    // ensure that video player is not hidden by large-width media queries
    // when small-width video is made full screen
    this.el.toggleClass("video-player--fullscreen", isFullscreen);
  }

  setClosedCaptionsHandlers() {
    const fn = this.onCaptionsMenuItemClicked.bind(this)
    $('.vjs-subs-caps-button .vjs-menu-item').on('click',fn)
  }
  
  onCaptionsMenuItemClicked(e){
    const el = e.currentTarget
    const item = $(el).find('.vjs-menu-item-text') 
    const text = item ? item.html().toLowerCase() : ' off'
    const state = this.getCaptionsStateFromItemText(text)
    if(state == 1){
      this.setCaptionsEnabled(true)
    } else if(state == 0){
      this.setCaptionsEnabled(false)
    } else {
      // no change
    }
  } 

  // the clicked element contains a span at .vjs-menu-item-text, it's content text will be one of the following:
  // 'captions (en-us)' OR 'cc1 <span>[1]</span><span>captions</span>'
  // 'captions off'
  // 'captions settings' // not available in Safari
  getCaptionsStateFromItemText(text){
    if(text.indexOf(' settings') > -1){
      return null
    }
    else if(text.indexOf(' off') > -1){
      return 0
    }
    else {
      return 1
    }
  }

  setCaptionsEnabled(enabled){
    this.captionsEnabled = enabled
    this.el.toggleClass('video-player--cc-enabled', enabled)
  }

  setGlobalEventHandlers() {
    $(window).on(ORDER_TRAY_OPEN, (e) => {
      // console.log(`|playr| global event fired '${e.type}'`)
      this.stop()
    })

    $(window).on(ORDER_TRAY_OR_MODAL_CLOSED, (e) => {
      // console.log(`|playr| global event fired '${e.type}'`)
      if(!this.isFirstRun) this.play()
    })

    $(window).on(AGE_GATE_SUCCESS, (e) => {
      console.log(`|playr| global event fired '${e.type}' isFirstRun=${this.isFirstRun}`)
      // note that we can't simulate autoplay consistently by invoking api.play(),
      // because it's not honored if the user hasn't interacted with dom yet...
      // so this is really only here to handle the email signup and age-gate form submission cases
      this.play()
    })
  }
  
  initPreRollPlugin(){
    if(!this.hasPreRoll) return
    if(!this.bcPlayer.ima3 || typeof this.bcPlayer.ima3 !== 'function') {console.log(`|playr| can't init preroll because ima3 plugin is not ready`); return}

    // configure ima plugins
    // previously these were defined in the html layer but moving here for onetrust integration
    this.bcPlayer.ima3({
      serverUrl: 'https://www.sho.com/assets/xml/vast/pre-roll.xml',
      timeout: 4000,
      hardTimeouts: false,
      adTechOrder: ["html5", "flash"]
    })
  }
  
  setPreRollHandlers() {
    if(!this.hasPreRoll) return

    //console.log('|playr| setting pre-roll handlers')
    this.onPreRollEvent('ads-ad-started', true )
    this.onPreRollEvent('ads-play',       true )
    this.onPreRollEvent('ads-ad-ended',   false)
    this.onPreRollEvent('ima3error',      false)
    this.onPreRollEvent('ima3-ad-error',  false)
    this.onPreRollEvent('ads-pause',      false)
    $(window).on(ORDER_TRAY_OPEN,             () => this.bcPlayer.ima3.adPlayer.pause());
    $(window).on(ORDER_TRAY_OR_MODAL_CLOSED,  () => this.bcPlayer.ima3.adPlayer.play());
  }

  setAgeGate(){
    this.ageGateSetting = parseInt(this.age);
    if(this.isAgeGated()){
      this.initAgeGate();
    }
  }

  onPreRollEvent(eventName, isPlaying) {
    this.bcPlayer.on(eventName, () => {
      //console.log(`|playr| pre-roll event '${eventName}' -> setPreRollPlaying(${isPlaying})`)
      this.setPreRollPlaying(isPlaying)
    })
  }

  setPreRollPlaying(isPlaying) {
    this.preRollPlaying = isPlaying; // where is this flag even used?
  }



  //
  // runtime
  // ---------------------------------------------------------------------------
  onCatalogError() {
    const error = this.api.catalog.error;
    const hasLockoutCookie = !!cookies.get('email_lockout');
    if (!!error && error.data.length && !hasLockoutCookie) {
      this.renderError(error.data[0]);
    }
  }

  play() {
    //console.log(`|playr| play()`)
    this.api.play();
    this.isFirstRun = false
  }

  stop() {
    //console.log(`|playr| stop()`)
    this.api.paused() || this.api.pause();
  }


  renderError(error) {
    this.setMasked(true);
    let error_message = error.message ? error.message: "An unknown error has encountered"
    this.errorMessageCntr.html(
      `<div class="video-playr__error">
          <h5 class="h5 video-playr__error__message"> ${error_message}</h5>
        </div>`
    );
  }

  setMasked(isMasked) {
    this.el.toggleClass('video-playr--is-masked', isMasked);
  }

  
  //
  // age-gate, utils
  // ---------------------------------------------------------------------------
  isAgeGated() {
    return !!this.ageGateSetting;
  }

  initAgeGate() {
    this.setMasked(true);
    this.setGlobalEventHandlers();
    var root = this.ageGateCntr[0]; // Obtaining the HTMLDivElement object - in this case is video-playr__age-gate
    VideoPlayerAgeGate.factory(root, this.age);
    console.log(`initAgeGate: ${this.age}`)
    if (!this.api.paused()) {
      this.stop();
    }
  }
}

export default VideoPlayer;
