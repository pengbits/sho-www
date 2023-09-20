import { trigger, player_event_names } from "./factory"
// a wrapper around the videojs player class
// there isn't much handling of drawing/asserting the bc script, 
// and we aren't parsing a lot of data-attrs from a container,
// because this player will be initialized in a factory, that sits closer to those concerns
const ERROR_CODES = [
  'VIDEO_CLOUD_ERR_VIDEO_NOT_FOUND',
  'PLAYER_ERR_GEO_RESTRICTED'
]

const ERROR_MESSAGES = {
  'VIDEO_CLOUD_ERR_VIDEO_NOT_FOUND': 'The designated resource was not found.',
  'PLAYER_ERR_GEO_RESTRICTED': 'Access to this resource is forbidden by access policy.'
}

class VideoPlay7r {

  //
  // startup
  // ---------------------------------------------------------------------------
  constructor({player,id, autoplay, fullscreen}) {
    this.player = player
    this.videoId = id
    this.autoplay = autoplay == undefined ? true : autoplay
    this.shouldAttemptFullscreen = fullscreen
    console.log(`|play7r| hello from VideoPlay7r videoId:${id} fs:${this.shouldAttemptFullscreen}`)
    this.isFullscreen = undefined
    this.setHandlers()
  }

  setHandlers(){
    this.onPlayerReady            = this.onPlayerReady.bind(this)
    this.onMetadataLoaded         = this.onMetadataLoaded.bind(this)
    this.onMetadataLoadedSuccess  = this.onMetadataLoadedSuccess.bind(this)
    this.onMetadataLoadedFailure  = this.onMetadataLoadedFailure.bind(this)
    this.onPlayerEnded            = this.onPlayerEnded.bind(this)
    this.onPlayerFullScreenChanged= this.onPlayerFullScreenChanged.bind(this)
    this.onPlayerError            = this.onPlayerError.bind(this)
    this.player.ready(this.onPlayerReady)
  }

  onPlayerReady() {
    this.player.on('ended', this.onPlayerEnded)
    this.player.on('error', this.onPlayerError)
    this.player.on('fullscreenchange', this.onPlayerFullScreenChanged)
    this.autoplay && this.attemptAutoplay()
  }
  
  attemptAutoplay() {
    this.player.muted(true) 
    // the play attempt returns a promise which can be used to infer if autoplay was succesful
    // ie to hide big play button 
    // https://videojs.com/blog/autoplay-best-practices-with-video-js/
    this.player.on('loadedmetadata', this.onMetadataLoaded)
  }

  onMetadataLoaded() {
    const promise = this.player.play()
    if (promise === undefined) { 
      console.log('|play7r| autoplay failed: promise unsupported - uncloak modal so user can initiate playback')
      trigger(player_event_names.metadata_rejected)
    } else {
      try {
        promise.then(this.onMetadataLoadedSuccess, this.onMetadataLoadedFailure)
      } catch(e) {
        console.log(`|play7r| error caught in onMetadataLoaded`, e)
      }
    }
  }

  onMetadataLoadedSuccess() {
    const player = this.player
    console.log(`|play7r| autoplay succeeded but are we paused? ${player.paused()}`)
    this.player.muted(false)
    trigger(player_event_names.metadata_loaded)
    this.attemptFullScreen()
  }

  onMetadataLoadedFailure(e) {
    console.log('|play7r| autoplay failed in promise, metadata load failure', e)
    this.player.muted(false)
    trigger(player_event_names.metadata_rejected)
  }

  onPlayerError(event){
    let e
    const error   = (this.player.error() || {})
    const {code}  = (error || {})
    if(error && code && ERROR_CODES.includes(code)){
      e = { code, message:ERROR_MESSAGES[code] }
    } else {
      e = {...error, message: 'An Unkown Error has occurred'}
    }
    trigger(player_event_names.error, e)
  }

  attemptFullScreen(){
    if(!this.shouldAttemptFullscreen) return

    const p = this.player.requestFullscreen()
    if (p === undefined){
      console.log('|play7r| attemptFullscreen failed: promise unsupported', e)
      // trigger(player_event_names.fullscreen_change_rejected)
    } else {
      try {
        p.then(function(){
          console.log(`|play7r| attemptFullScreen was successful`)
        })
      } catch (e) {
        console.log(`|play7r| error caught in attemptFullScreen`, e)
      }
    }
  }

  stop(){
    this.player.pause()
  }

  setVideo({ id }) {
    if (!this.player) {
      throw new Error('setVideo called before player reference was obtained')
    }

    this.player.catalog.getVideo(id, (error, data) => {
      if(error) {   // if there was an error, the second argument will be an array of error-like objects, instead of video data
        console.log('|play7r| catalog.getVideo encountered an error')
        const message = data.reduce((str,e) => `${str}${e.message}\n`, '')
        throw new Error(message) // this doesn't seem to fire even when there is an error?
      }

      this.player.catalog.load(data)
      // should there be a this.player.muted(true) here ?
      // are we bypassing the muted state that made stuff work before?
      // this.player.muted(true)
      this.player.play()
    })

  }

  onPlayerEnded(e) {
    console.log('|play7r| video ended!')
    trigger(player_event_names.ended)//, {'isFullscreen': this.isFullscreen})
  }

  onPlayerFullScreenChanged(e){
    const {target} = e
    const {player} = target || {}
    console.log('|play7r| fullscreen state has changed')

    if (target && player) {
      const isFullscreen = player.isFullscreen();
      if(this.isFullscreen && !isFullscreen ) {
        console.log('|play7r| fullscreen closed, if native=true and isMobile=true, treat this as video ended!')
        trigger(player_event_names.fullscreen_changed, {isFullscreen})
      }
      this.isFullscreen = isFullscreen
    } else {
      throw new Error('couldn\'t capture fullscreen state from player')
    }
  }

  destroy(){
    this.player.dispose()
    return {success:true, id:this.videoId} // {...playerProp: this.player.someProp} 
    // I dont want to just casually throw this complex object around 
    // but we could pluck some properties out if interested
  }

}
  //
export default VideoPlay7r 